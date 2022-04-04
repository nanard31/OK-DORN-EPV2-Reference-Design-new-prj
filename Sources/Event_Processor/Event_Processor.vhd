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
		DU_ADC_Front_Dout 			:	in Array_8x16_type;
		DU_ADC_Back_Dout	 		:	in Array_8x16_type	
		        
        -------------------------------
        -- Out event processor
        -------------------------------
		
--		o_Event_B					: out std_logic_vector(31 downto 0);
--		o_Event_A					: out std_logic_vector(31 downto 0);
--		
--		o_Event_Energy 				: out std_logic_vector(77 downto 0);
--		o_A_B         				: out signed(63 downto 0);
--		
--		o_Energy_corrected_edge		: out std_logic;	
--		o_Energy_corrected			: out std_logic;			
--		
-- 
--        o_Phase_enable       	 	: out std_logic;
--        o_div_read            		: out std_logic;
--
--		EP_Capture_Filter_A_w	    : inout Array_8x31_type;
--	    EP_Capture_Filter_B_w	    : inout Array_8x31_type;		        
--        --------------------------------------------------------------------------------------------
--        -- FROM UNIVERSAL GENERATOR SIGNALS
--        --------------------------------------------------------------------------------------------
--		
--        i_Data_in					: in STD_LOGIC_VECTOR (15 downto 0);  
--        i_Address					: in STD_LOGIC_VECTOR (15 downto 0);  
--        i_Write  					: in STD_LOGIC;
--
--		buffer_B_A_division_start	: out std_logic
   
               
    );

end Event_Processor;

architecture Behavioral of Event_Processor is
     	
		

	
	
begin

		Inst_Filter_front : entity work.Filter
		
			port map(
		
				i_Rst_n	=>	i_Rst_n,
				
				-------------------------------
				-- CLOCK
				------------------------------

				i_Clk	=>	i_Clk,
								
				--------------------------------------------------------------------------------------------
				-- ADC
				--------------------------------------------------------------------------------------------
		 
				-- Ready flag buffers
				i_Rdy	=>	i_DU_ADC_Ready_100_front,

				
				-- DU_ADC Data
				i_Din	=>	DU_ADC_Front_Dout,

						
				-------------------------------
				-- Out event processor
				-------------------------------
				
				o_out	=>	open,
				o_rdy	=>	open
			
			);
			
		Inst_Back_front : entity work.Filter
		
			port map(
		
				i_Rst_n	=>	i_Rst_n,
				
				-------------------------------
				-- CLOCK
				------------------------------

				i_Clk	=>	i_Clk,
								
				--------------------------------------------------------------------------------------------
				-- ADC
				--------------------------------------------------------------------------------------------
		 
				-- Ready flag buffers
				i_Rdy	=>	i_DU_ADC_Ready_100_back,

				
				-- DU_ADC Data
				i_Din	=>	DU_ADC_Back_Dout,

						
				-------------------------------
				-- Out event processor
				-------------------------------
				
				o_out	=>	open,
				o_rdy	=>	open
			
			);	
			
			
	
end architecture Behavioral;