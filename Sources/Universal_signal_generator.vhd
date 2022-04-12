----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2021 17:53:28
-- Design Name: 
-- Module Name: samples_generator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Universal_signal_generator is
    Port ( i_Clk_100Mhz : in STD_LOGIC;
           Data_in: in STD_LOGIC_VECTOR (15 downto 0);
           Address: in STD_LOGIC_VECTOR (15 downto 0);
           i_Write: in STD_LOGIC;
           i_trig_start: in std_logic;
           i_delay: in std_logic_vector(15 downto 0);
           i_Rst_n: in STD_LOGIC;
           o_Dout : out STD_LOGIC_VECTOR (15 downto 0);
           o_Dout_rdy : out STD_LOGIC;
           o_Trig : out STD_LOGIC);
end Universal_signal_generator;

architecture Behavioral of Universal_signal_generator is

constant enable_simulation : std_logic := '0';

-- ramp generation synchronous on o_Dout_rdy_r
signal count			:	integer range 0 to 15; 
signal count_ampli  	:	integer range 0 to 15; 
signal unsigned_count	:	unsigned(15 downto 0);
signal unsigned_count_gain	:	unsigned(15 downto 0);
signal up				:	std_logic;	
signal delay_inter_ramp	:	integer range 0 to 1000; 
signal Gain_ramp  		:	integer range 0 to 1000;	
signal first_peak_processed : std_logic;
--

signal flag_while_sent: std_logic;
signal flag_generate_sample: unsigned(11 downto 0);
signal Dout_counter: integer range 0 to 120;
signal Time_counter: unsigned ( 27 downto 0);
signal Trig_reg : std_logic;
signal sample_to_send:std_logic_vector(15 downto 0);
signal o_Dout_rdy_r :  STD_LOGIC;

signal i_write_reg: STD_LOGIC;
signal iAddress :unsigned( 15 downto 0);
signal iData_in_reg: std_logic_vector(15 downto 0);   
signal BIT0: std_logic_vector(0 downto 0);   

--type Memory_type is array (0 to 4095) of std_logic_vector(15 downto 0);
--signal My_Memory: Memory_type := (others => (others => '0'));



constant constante        : STD_LOGIC:= '0';
constant constante_1          : STD_LOGIC:= '0';
CONSTANT BIT_0 			: std_logic_vector(0 downto 0):= "0";

signal i_Write_std: std_logic_vector(0 downto 0); 

begin


--to do counter from 0 to 119 (clock of the samples)
Dout_generation_process : process(i_Clk_100Mhz, i_Rst_n)
    begin
        if i_Rst_n = '0' then
            Dout_counter <=0;
            o_Dout_rdy_r <= '0';
        else
            if rising_edge(i_Clk_100Mhz) then
                -- if i_Time_value is x"5F5E100" then sample à sent every 1 second
                --if(Dout_counter = 119)thenwrong we need 240 ns between each sample (not to count 240 it's tooo long)
                if(Dout_counter = 20 or i_trig_start = '1')then
                    Dout_counter <=0;
                    o_Dout_rdy_r <= '1';
                else
                    Dout_counter <= Dout_counter +1;
                    o_Dout_rdy_r <= '0';
                end if;
            end if;            
        end if;
    end process;
    
    o_Dout_rdy <= o_Dout_rdy_r;
    o_Trig <= Trig_reg;

   flag_generator:process(i_Clk_100Mhz, i_Rst_n)
    begin
        if i_Rst_n = '0' then
            flag_while_sent<='0';
            flag_generate_sample <= (others =>'0');
        else
            if rising_edge(i_Clk_100Mhz) then
                if i_trig_start = '1' then
                    flag_generate_sample <= unsigned(i_delay(11 downto 0));
                elsif flag_generate_sample< 4095 then
                    flag_generate_sample <= flag_generate_sample +1;
                end if;
            end if;            
        end if;
    end process;
     
 i_Write_std(0) <= i_Write;   
 
     RAM_Sample: entity work.Generator_RAM 
   PORT map(
     clka    =>  i_Clk_100Mhz,--: IN STD_LOGIC;
     wea     =>  i_Write_std,--: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- Write Address
     addra   =>  Address(11 DOWNTO 0),--: IN STD_LOGIC_VECTOR(11 DOWNTO 0);
     dina    =>  Data_in,--: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
     douta   =>  open,--: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
     clkb    =>  i_Clk_100Mhz,--: IN STD_LOGIC;
     web     =>  BIT_0,--: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
     addrb   =>  std_logic_vector(flag_generate_sample),--: IN STD_LOGIC_VECTOR(11 DOWNTO 0); --READ address
     dinb    =>  Data_in,--: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
     doutb   =>  sample_to_send--: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
   );


--o_Dout <= sample_to_send;
o_Dout			<= sample_to_send when enable_simulation = '0' else std_logic_vector(unsigned_count);

-----------------------------------------------------------------------------------
--ramp generation synchronous on o_Dout_rdy_r
--------------------------------------------------------------------------------------

ramp_generation_synchronous : process(i_Clk_100Mhz, i_Rst_n)
    begin
        if i_Rst_n = '0' then
		count	<=	0;
		up		<=	'0';
		delay_inter_ramp	<=	0;
		Gain_ramp	<= 0;
        else
            if rising_edge(i_Clk_100Mhz) then			
				if o_Dout_rdy_r	= '1' then
				
					if up = '1' then
					count	<=	count + 1;	--ramp rising
						--if count = 33 then	-- test 
						if count = 3 then	-- test
						up		<=	'0';	
						end if;
					else
						if count >= 1 then
						count	<=	count - 1;	-- ramp falling
						else		
							if count = 0 then
							delay_inter_ramp <= delay_inter_ramp + 1;
								if delay_inter_ramp = 500 then	-- detect max inter delay inter ramp
								count	<=	0;
								up		<=	'1';
								--Gain_ramp	<=	Gain_ramp+200;
								Gain_ramp	<=	200;
								delay_inter_ramp	<=	0;
									if	Gain_ramp >= 2000 then	-- detect max gain	--130
									Gain_ramp	<= 0;
									end if;
								end if;
							end if;
						end if;
					end if;

				end if;				
            end if;            
        end if;	
    end process;	
	
count_ampli		<=	count*Gain_ramp;
unsigned_count	<= to_unsigned(count_ampli,unsigned_count'length);



end Behavioral;
