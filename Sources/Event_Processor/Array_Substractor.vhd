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

entity Array_Substractor is
		port(
		
		-- Reset and Clock
		
		i_Rst_n            		:	in 	std_logic;
		i_CLOCK_100_MHZ     	:	in 	std_logic;
				
		-- data science input
        
        -- Ready flag input
 
        i_Rdy_j                 :   in  std_logic_vector(0 to pipeline_size-1);
        				
		-- Data input
		i_Din_i 				:	in 	Array_8x31_type;
		i_Din_j 				:	in 	Array_8x31_type;
	
		-- output 

		o_out					:	out	Array_8x31_type;
		o_rdy					:	out	std_logic_vector(0 to pipeline_size-1)
					
	);
end Array_Substractor;

architecture Behavioral of Array_Substractor is
	
	
signal i_Din_i_delayed	: Array_8x31_type;

	
begin
    
	-----------------------------------------
	-- Process: comput substractor
	-----------------------------------------
	sub_i: for i in 0 to pipeline_size-1 generate
		process(i_Rst_n, i_CLOCK_100_MHZ)
		begin

			if i_Rst_n = '0' then
			o_out(i)			<=	(others => '0');	
			i_Din_i_delayed(i)	<=	(others => '0');
			o_rdy(i)			<=	'0';	
			else
				if rising_edge(i_CLOCK_100_MHZ) then
				
				i_Din_i_delayed(i)	<=	i_Din_i(i);
				o_out(i)            <=  i_Din_i_delayed(i) - i_Din_j(i);
				o_rdy(i)			<=	i_Rdy_j(i);
				
				end if;
			
			end if;	
			
		end process;
	end generate;  	
	
end;

