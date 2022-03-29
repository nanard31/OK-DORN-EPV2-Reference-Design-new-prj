----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2021 10:31:49
-- Design Name: 
-- Module Name: Filter_FAST_coef - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use work.DORN_EP_Package.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sum is
		port(
		
		-- Reset and Clock
		
		i_Rst_n            		:	in  std_logic;
		i_CLOCK_100_MHZ     	:	in  std_logic;
		
		-- Param
		
		i_size					:	in unsigned(5 downto 0);
			
		-- data science input
		
		-- Ready flag input
		i_Rdy					:	in std_logic_vector(0 to pipeline_size-1);
		
		-- Data input
		i_Din 					:	in 	Array_8x16_type;
	
		-- output to another Sum block

		o_out					:	out		Array_8x16_type;
		o_rdy					:	out 	std_logic_vector(0 to pipeline_size-1);

		
		-- sum	
		
		o_sum					:	inout Array_8x31_type
				
		
	);
end Sum;

architecture Behavioral of Sum is
	
	--	FSM
	type FSM_ReadState is (load_ram_wait_rdy, load_ram_manage_ptr, wait_rdy, manage_ptr);
	signal case_FSM_ReadState : FSM_ReadState;	
	
	--	RAM0B coef 
	signal wea		: std_logic_vector(0 downto 0);
	
	signal dina		: unsigned(15 downto 0);
	signal douta	: std_logic_vector(15 downto 0);
	
	
	signal dinb		: unsigned(15 downto 0);
	signal doutb	: std_logic_vector(15 downto 0);

	--pointer
	signal ptr_wr	: unsigned(5 downto 0);	
	signal ptr_rd	: unsigned(5 downto 0);
	
	--debug
	signal view_sum		: signed(31 downto 0);
	signal view_i_Din	: signed(15 downto 0);
	signal view_doutb	: signed(15 downto 0);

	

	signal doutb_array	:	Array_8x16_type;
	
	-- Ready flag buffers
	signal Rdy_concat   : std_logic_vector(pipeline_size-1 downto 0);
	signal DU_ADC_Ready_100_back_concat	: std_logic_vector(pipeline_size-1 downto 0);
	

	 -- id
	signal	i_id		: std_logic_vector(2 downto 0);
	signal save_i_id	: std_logic_vector(2 downto 0);
	signal addra	: unsigned(8 downto 0);
	signal addrb	: unsigned(8 downto 0);
	
	
	-- -- id
	-- signal	i_id		: std_logic_vector(1 downto 0);
	-- signal save_i_id	: std_logic_vector(1 downto 0);
	-- signal addra	: unsigned(7 downto 0);
	-- signal addrb	: unsigned(7 downto 0);




	
begin
  
    -----------------------------------------
	-- RAM0B coef 
	-----------------------------------------  
  
	label_RAM_sum : entity work.RAM_sum
		port map(
		clka  => i_CLOCK_100_MHZ ,--
		wea   => wea,--
		addra => std_logic_vector(addra),
		dina  => std_logic_vector(dina),
		douta => open,
		clkb  => i_CLOCK_100_MHZ,--
		web   => "0",
		addrb => std_logic_vector(addrb),--
		dinb  => x"0000",--	
		doutb => doutb
		);

  
	-----------------------------------------
	-- Process: compute SUM  
	-----------------------------------------
	case_FSM_ReadState_process : process(i_Rst_n, i_CLOCK_100_MHZ)
	
	begin
		if i_Rst_n = '0' then
		
		--	FSM

		case_FSM_ReadState <=  load_ram_wait_rdy;
		
		--	RAM coef 
		wea		<= (others => '0');
		addra	<= (others => '0');
		dina	<= (others => '0');
		douta	<= (others => '0');
		
		addrb	<= (others => '0');
		dinb	<= (others => '0');
		
		
		--pointer
		ptr_wr	<= (others => '0');	
		ptr_rd	<= (others => '0');	
	
		
		--sum	
		o_sum		<= (others =>(others => '0'));	


		-----------------debug
		view_sum 	<= (others => '0');	
		view_i_Din		<= (others => '0');	
		view_doutb	<= (others => '0');	
		-------------------------------------------------------------------------------------

		-- out science event

		o_out		<= (others =>(others => '0'));	
		o_rdy			<= (others => '0');	
		
		
		doutb_array	<= (others =>(others => '0'));	
		
		else
		
			if rising_edge(i_CLOCK_100_MHZ) then
			
			wea		<= "0";
			o_rdy	<= (others => '0');	
			
				case case_FSM_ReadState is
				
					when load_ram_wait_rdy =>
					
						if i_Rdy(To_integer(unsigned(i_id))) = '1' then -- test before loading ram 
						
						save_i_id <= i_id; 
						
						wea		<= "1";
						dina	<= 	unsigned(i_Din(To_integer(unsigned(i_id))));		-- write data RAM
						addra	<=	unsigned(i_id)&ptr_wr;	-- set write RAM add 
						
						case_FSM_ReadState <=  load_ram_manage_ptr;	
						
						end if;
						
					
					
					when load_ram_manage_ptr =>
					
						if 	unsigned(save_i_id) = pipeline_size-1 and ptr_wr < i_size then 	-- set deep A0......A7
						
						-- case increment pointer and continous RAM  loading
						ptr_wr	<= ptr_wr + 1;
						case_FSM_ReadState <=  load_ram_wait_rdy;
						
						else
							
							if 	ptr_wr >= i_size then 
							
							-- ram  loading finish
							case_FSM_ReadState <=  wait_rdy;
							
							else
							
							case_FSM_ReadState <=  load_ram_wait_rdy;
							
							end if;
						
						end if;	
						
				
					when wait_rdy =>
												
						if i_Rdy(To_integer(unsigned(i_id))) = '1' then -- test before each sum
						
						save_i_id <= i_id; 
						
						doutb_array(To_integer(unsigned(i_id)+pipeline_size-1))	<=	doutb;
						
						-- write data RAM
						wea		<= "1";
						dina	<= 	unsigned(i_Din(To_integer(unsigned(i_id))));	
						
						addra	<=	unsigned(i_id)&ptr_wr;	-- set write RAM add 
						addrb	<=	unsigned(i_id)&ptr_rd;	-- set read	RAM add 
						
						-- out component
						o_out	<=	doutb_array;
							
						o_rdy(To_integer(unsigned(i_id)))<=	'1';
						
						-- sum
						o_sum(To_integer(unsigned(i_id)))	<=	o_sum(To_integer(unsigned(i_id))) + signed(i_Din(To_integer(unsigned(i_id)))) - signed(doutb_array(To_integer(unsigned(i_id))));  
							
						-- -----------------debug-----------------------------------------------------------------
						-- view_sum 	<= o_sum(To_integer(unsigned(i_id))) + signed(i_Din(To_integer(unsigned(i_id))));-- - signed(doutb(To_integer(unsigned(i_id))));
						-- view_i_Din	<= signed(i_Din(To_integer(unsigned(i_id))));
						-- view_doutb	<= signed(doutb_array(To_integer(unsigned(i_id))));
						-- -------------------------------------------------------------------------------------
						
							--if 	unsigned(i_id) = 3 then			-- set deep A0......A7
							
							case_FSM_ReadState <=  manage_ptr;
										
							--end if;

						end if;
						
					when manage_ptr =>
					
						-- treat pointer sum i 
						if 	unsigned(save_i_id) = pipeline_size-1 then	
							if 	ptr_rd < i_size and ptr_wr < i_size   then -- case of increment all pointer
							
							ptr_wr	<= ptr_wr + 1;	
							ptr_rd	<= ptr_rd + 1;
							
							else
							
								if 	ptr_rd >= i_size    then -- case reset Read pointer 
								ptr_wr	<= ptr_wr + 1;	
								ptr_rd	<= (others => '0');
								else
								
									if 	ptr_wr >= i_size    then -- case reset Write pointer 
									
									ptr_wr <= (others => '0');
									ptr_rd	<= ptr_rd + 1;
									
									end if;
								end if;
							end if;
						end if;
						
						case_FSM_ReadState <=  wait_rdy;
						
															
                    when others => null; 
					
				end case;
				
			end if;
		end if;
		
	end process;
--------------------
--	decode id from Rdy
--------------------	

all_instrument: if pipeline_size=8 generate
Rdy_concat <= (i_Rdy(7)&i_Rdy(6)&i_Rdy(5)&i_Rdy(4))&(i_Rdy(3)&i_Rdy(2)&i_Rdy(1)&i_Rdy(0)); 	
i_id		<=	"000" when	Rdy_concat = "00000001" else
				"001" when	Rdy_concat = "00000010" else
				"010" when	Rdy_concat = "00000100" else
				"011" when	Rdy_concat = "00001000" else
				"100" when	Rdy_concat = "00010000" else
				"101" when	Rdy_concat = "00100000" else
				"110" when	Rdy_concat = "01000000" else
				"111" when	Rdy_concat = "10000000" else
				"000";			
end generate all_instrument;
	
dispatch: if pipeline_size=4 generate	
Rdy_concat <= i_Rdy(3)&i_Rdy(2)&i_Rdy(1)&i_Rdy(0);				
				
i_id		<=	"00" when	Rdy_concat = "0001" else
				"01" when	Rdy_concat = "0010" else
				"10" when	Rdy_concat = "0100" else
				"11" when	Rdy_concat = "1000" else
				"00";
end generate dispatch;				
	
end;

