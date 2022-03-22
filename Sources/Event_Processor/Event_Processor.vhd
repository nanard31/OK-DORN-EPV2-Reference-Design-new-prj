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

use work.DORN_Package.ALL;

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
                 
        -------------------------------
        -- ADC
        -------------------------------
		
		i_Din_RDY 					: in std_logic;
		i_Din						: in std_logic_vector(15 downto 0);
		
		
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------
 
		-- id
		i_id_front				:	in std_logic_vector(1 downto 0);
		i_id_back				:	in std_logic_vector(1 downto 0);
		
		-- Ready flag buffers
		i_DU_ADC_Ready_100_front	:	in std_logic_vector(0 to 3);
		i_DU_ADC_Ready_100_back 	:	in std_logic_vector(0 to 3);
		
		-- DU_ADC Data
		DU_ADC_Front_Dout 		:	in Array_4x16_type;
		DU_ADC_Back_Dout	 	:	in Array_4x16_type;	
		        
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

		EP_Capture_Filter_A_w	    : inout std_logic_vector(31 downto 0);
	    EP_Capture_Filter_B_w	    : inout std_logic_vector(31 downto 0);		        
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
     	
	-------------------------------
    -- Filters
    -------------------------------

--	signal EP_Capture_Filter_A_w	: std_logic_vector(31 downto 0);
--	signal EP_Capture_Filter_B_w	: std_logic_vector(31 downto 0);	
	

	
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
    -- Filter_Front
    -----------------------------------------------------------------


    Inst_Filter_Front_dispatch : entity work.Filter_Front_dispatch
        port map(
		
            i_Rst_n				=> i_Rst_n,
            i_CLOCK_100_MHZ		=> i_Clk,
			
			-- Param

			i_size				=>	to_unsigned(7-1,6),
			

		
			-- data science input
			
			-- id
			i_id					=>	i_id_front,
		
			-- Ready flag buffers
			i_DU_ADC_Ready			=>	i_DU_ADC_Ready_100_front,
			
			-- DU_ADC Data
			i_DU_ADC_Dout 			=>	DU_ADC_Front_Dout,
			
			-- to another Sum block

			o_out				=>	open,
			o_rdy				=>	open,
			o_id				=>	open,
			
			--sum	
		
			sum					=>	open
  
        );		

    -----------------------------------------------------------------
    -- Energy correction
    -----------------------------------------------------------------

	Inst_Energy_correction : entity work.Energy_correction
		port map(
		-- Reset and Clock
		i_Rst_n             	=> i_Rst_n,
		i_CLOCK_100_MHZ     	=> i_Clk,
	
		-- input EP capture filter
		
		i_EP_Capture_Filter_A_w	=> EP_Capture_Filter_A_w,
		i_EP_Capture_Filter_B_w	=> EP_Capture_Filter_B_w,
		
		--	Event_detect
		o_Event_A  				=> o_Event_A,
		o_Event_B  				=> o_Event_B,
	
		--	output result	
		o_Event_Energy          => o_Event_Energy,
		o_A_B          			=> o_A_B,

		-- out
		o_Energy_corrected_edge	=> o_Energy_corrected_edge,
		o_Energy_corrected		=> o_Energy_corrected,
		
	    o_Phase_enable       	=> o_Phase_enable,	-- digital pulse energy correction is applied
        o_div_read           	=> o_div_read,		-- means result has been read	
		buffer_B_A_division_start=> buffer_B_A_division_start 		
  
		);
	
end architecture Behavioral;