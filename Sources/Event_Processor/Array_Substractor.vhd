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

        i_Rst_n         : in  std_logic;
        i_CLOCK_100_MHZ : in  std_logic;
        -- data science input

        -- Ready flag input

        i_Rdy           : in  std_logic;
        -- Data input
        i_sum_array_N   : in  Array_8x31_type;
        i_sum_array_M   : in  Array_8x31_type;
        i_id            : in  unsigned(id_size downto 0);
        -- output 
        o_out_temp      : out Array_8x31_type
    );
end Array_Substractor;

architecture Behavioral of Array_Substractor is

begin

    --    GEN_REG : for I in 0 to (pipeline_size - 1) generate
    --        o_out_temp(I) <= i_sum_array_M(I) - i_sum_array_N(I);
    --    end generate GEN_REG;

    -----------------------------------------
    -- Process: comput substractor
    -----------------------------------------
    process(i_Rst_n, i_CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
            o_out_temp <= (others => (others => '0'));
        else
            if rising_edge(i_CLOCK_100_MHZ) then

                if i_Rdy = '1' then
                o_out_temp(to_integer(i_id-5)) <= i_sum_array_N(to_integer(i_id-5)) - i_sum_array_M(to_integer(i_id-5));
                end if;

            end if;
        end if;
    end process;

   

end;

