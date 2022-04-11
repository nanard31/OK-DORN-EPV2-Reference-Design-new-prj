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

        i_Rdy_j         : in  std_logic_vector(0 to pipeline_size - 1);
        -- Data input
        i_Din_i         : in  signed(31 downto 0);
        i_Din_j         : in  signed(31 downto 0);
        i_id_i          : in  std_logic_vector(2 downto 0);
        i_id_j          : in  std_logic_vector(2 downto 0);
        -- output 

        o_out           : out signed(31 downto 0);
        o_rdy           : out std_logic_vector(0 to pipeline_size - 1);
        o_id            : out std_logic_vector(2 downto 0)
    );
end Array_Substractor;

architecture Behavioral of Array_Substractor is

    signal i_Din_i_delayed : Array_8x31_type;

begin

    -----------------------------------------
    -- Process: comput substractor
    -----------------------------------------

    process(i_Rst_n, i_CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
            o_out <= (others => '0');
            o_rdy <= (others => '0');
            o_id  <= (others => '0');
        else
            if rising_edge(i_CLOCK_100_MHZ) then

                o_rdy <= i_Rdy_j;
                o_id  <= i_id_j;

                if i_Rdy_j(To_integer(unsigned(i_id_i))) = '1' and i_Rdy_j(To_integer(unsigned(i_id_j))) = '1' then
                    o_out <= i_Din_i - i_Din_j;
                end if;

            end if;
        end if;
    end process;

end;

