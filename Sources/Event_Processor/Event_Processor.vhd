--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: TOUCHARD Pierre-Emmanuel Jérémy Noël André René Samuel Richard Serge Eric-Sophie José Lucile-Henry de la Maison Chauve
-- :
-- Create Date:    08:30:00 01/04/2020 
-- Design Name: 
-- Module Name:    Dorn_Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is the top entity
--
-- Dependencies: 
--
-- Revision: Huile/essuie glace à l'italienne
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------------------
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;

use work.DORN_EP_Package.ALL;

--use work.EP_Package.ALL;
--use work.FRONTPANEL.all;

--Library UNISIM;
--use UNISIM.vcomponents.all;

entity Event_Processor is
    port(
	
        i_Rst_n						: in  std_logic;
		
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                 		: in  std_logic; -- 100 MHz
                 		
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------
 
		-- Ready flag buffers
		i_DU_ADC_Ready_100_front	:	in std_logic_vector(0 to pipeline_size-1);
		i_DU_ADC_Ready_100_back 	:	in std_logic_vector(0 to pipeline_size-1);
		
		-- DU_ADC Data
		DU_ADC_Front_Dout 		:	in Array_8x16_type;
		DU_ADC_Back_Dout	 	:	in Array_8x16_type;	
		        
        -------------------------------
        -- Out event processor
        -------------------------------
		
		o_Event_B					: out std_logic_vector(31 downto 0);
		o_Event_A					: out std_logic_vector(31 downto 0);
		
		o_Event_Energy 				: out std_logic_vector(77 downto 0);
		o_A_B         				: out signed(63 downto 0);
		
		o_Energy_corrected_edge		: out std_logic;	
		o_Energy_corrected			: out std_logic;			
		
 
        o_Phase_enable       	 	: out std_logic;
        o_div_read            		: out std_logic;

		EP_Capture_Filter_A_w	    : inout Array_8x31_type;
	    EP_Capture_Filter_B_w	    : inout Array_8x31_type;		        
        --------------------------------------------------------------------------------------------
        -- FROM UNIVERSAL GENERATOR SIGNALS
        --------------------------------------------------------------------------------------------
		
        i_Data_in					: in STD_LOGIC_VECTOR (15 downto 0);  
        i_Address					: in STD_LOGIC_VECTOR (15 downto 0);  
        i_Write  					: in STD_LOGIC;

		buffer_B_A_division_start	: out std_logic
   
               
    );

end Event_Processor;

architecture Behavioral of Event_Processor is
     	
		
		-- to another Sum block

signal o_out_j					:	Array_8x16_type;
signal o_rdy_j					:	std_logic_vector(0 to pipeline_size-1);

		
		--sum	
		
signal o_sum_j					:	Array_8x31_type;

		-- to another Sum block

signal o_out_i					:	Array_8x16_type;
signal o_rdy_i					:	std_logic_vector(0 to pipeline_size-1);

		
		--sum	
		
signal o_sum_i					:	Array_8x31_type;


		-- out A filter		
	

--signal EP_Capture_Filter_A_w		:	Array_8x31_type;	
signal EP_Capture_Filter_A_w_ready	:	std_logic_vector(0 to pipeline_size-1);
	
	
begin

		
    -----------------------------------------------------------------
    -- Filter_Front
    -----------------------------------------------------------------


    -- Inst_Filter_Front : entity work.Filter_Front
        -- port map(
		
            -- i_Rst_n				=> i_Rst_n,
            -- i_CLOCK_100_MHZ		=> i_Clk,
			
			-- -- Param

			-- i_size				=>	to_unsigned(7-1,6),
			

		
			-- -- data science input
			
			-- i_Din               =>  i_Din,
			-- i_Din_RDY           =>	i_Din_RDY&'0'&'0'&'0'&'0'&'0'&'0'&'0',
			-- i_id				=>	"111",
			
			-- -- to another Sum block

			-- o_out				=>	open,
			-- o_rdy				=>	open,
			-- o_id				=>	open,
			
			-- --sum	
		
			-- sum					=>	open
  
        -- );
		
		
    -----------------------------------------------------------------
    -- SUM i
    -----------------------------------------------------------------


    Inst_Sum_i : entity work.Sum
        port map(
		
            i_Rst_n				=> i_Rst_n,
            i_CLOCK_100_MHZ		=> i_Clk,
			
			-- Param

			i_size				=>	to_unsigned(7-1,6),
			

		
			-- data science input
				
			-- Ready flag buffers
			i_Rdy				=>	i_DU_ADC_Ready_100_front,
			
			-- DU_ADC Data
			i_Din 				=>	DU_ADC_Front_Dout,
			
			-- to another Sum block

			o_out				=>	o_out_i,
			o_rdy				=>	o_rdy_i,
			
			
			--sum	
		
			o_sum				=>	o_sum_i
  
        );		
		
    -----------------------------------------------------------------
    -- SUM j
    -----------------------------------------------------------------


    Inst_Sum_j : entity work.Sum
        port map(
		
            i_Rst_n				=> i_Rst_n,
            i_CLOCK_100_MHZ		=> i_Clk,
			
			-- Param

			i_size				=>	to_unsigned(7-1,6),
			

		
			-- data science input
				
			-- Ready flag buffers
			i_Rdy				=>	o_rdy_i,
			
			-- DU_ADC Data
			i_Din 				=>	o_out_i,
			
			-- to another Sum block

			o_out				=>	o_out_j,
			o_rdy				=>	o_rdy_j,
			
			--sum	
		
			o_sum				=>	o_sum_j
  
        );				

		
	Inst_Array_Substractor : entity work. Array_Substractor
		port map(
		
			-- Reset and Clock
			
			i_Rst_n            		=> i_Rst_n,
			i_CLOCK_100_MHZ     	=> i_Clk,
					
			-- data science input
			
			-- Ready flag input
			i_Rdy_i					=>	o_rdy_i,	
			i_Rdy_j					=>	o_Rdy_j,
			
			-- Data input
			i_Din_i 				=> o_sum_i,
			i_Din_j 				=> o_sum_j,
		
			-- output 

			o_out					=> EP_Capture_Filter_A_w,
			o_rdy					=> EP_Capture_Filter_A_w_ready
					
		);
		
		
		
    -----------------------------------------------------------------
    -- Energy correction
    -----------------------------------------------------------------

--	Inst_Energy_correction : entity work.Energy_correction
--		port map(
--		-- Reset and Clock
--		i_Rst_n             	=> i_Rst_n,
--		i_CLOCK_100_MHZ     	=> i_Clk,
--	
--		-- input EP capture filter
--		
--		i_EP_Capture_Filter_A_w	=> x"00000000",--EP_Capture_Filter_A_w,--	energy correction input not array not yet
--		i_EP_Capture_Filter_B_w	=> x"00000000",--EP_Capture_Filter_B_w,--	energy correction input not array not yet
--		
--		--	Event_detect
--		o_Event_A  				=> o_Event_A,		
--		o_Event_B  				=> o_Event_B,	--	energy correction input not array not yet
--	
--		--	output result	
--		o_Event_Energy          => o_Event_Energy,
--		o_A_B          			=> o_A_B,
--
--		-- out
--		o_Energy_corrected_edge	=> o_Energy_corrected_edge,
--		o_Energy_corrected		=> o_Energy_corrected,
--		
--	    o_Phase_enable       	=> o_Phase_enable,	-- digital pulse energy correction is applied
--        o_div_read           	=> o_div_read,		-- means result has been read	
--		buffer_B_A_division_start=> buffer_B_A_division_start 		
--  
--		);
	
end architecture Behavioral;