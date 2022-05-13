----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: 
-- 
-- Create Date: 16.08.2021 10:31:49
-- Design Name: Bernard BERTRAND
-- Module Name: 
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

entity EP_in_mux is
    port(
        -- Reset and Clock

        i_Rst_n         : in    std_logic;
        i_CLOCK_100_MHZ : in    std_logic;
        -- data science input

        -- Ready flag input
        i_Rdy           : in    std_logic_vector(0 to pipeline_size - 1);
        -- Data input
        i_Din           : in    Array_8x16_type;
        o_Rdy           : out   std_logic;
        o_Din           : out   std_logic_vector(15 downto 0);
        o_id            : out unsigned(id_size downto 0)
    );
end EP_in_mux;

architecture Behavioral of EP_in_mux is

    -- Ready flag buffers
    signal Rdy_concat : std_logic_vector(pipeline_size - 1 downto 0);

    -- id
    signal id : unsigned(id_size downto 0);

begin

    -----------------------------------------
    -- process: comput substractor
    -----------------------------------------

    process(i_Rst_n, i_CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
            o_Rdy <= '0';
            o_Din <= (others => '0');
            o_id  <= (others => '0');
        else
            if rising_edge(i_CLOCK_100_MHZ) then

                if i_Rdy(to_integer(unsigned(id))) = '1' then -- test before loading ram
                    o_Rdy <= '1';
                    
                    o_Din <= i_Din(to_integer(unsigned(id)));
                    o_id  <= id;
                else
                    o_Rdy <= '0';
                    
                end if;

            end if;

        end if;

    end process;



    all_instrument : if pipeline_size = 8 generate
        Rdy_concat <= (i_Rdy(7) & i_Rdy(6) & i_Rdy(5) & i_Rdy(4)) & (i_Rdy(3) & i_Rdy(2) & i_Rdy(1) & i_Rdy(0));
        id         <= "000" when Rdy_concat = "00000001" else
                      "001" when Rdy_concat = "00000010" else
                      "010" when Rdy_concat = "00000100" else
                      "011" when Rdy_concat = "00001000" else
                      "100" when Rdy_concat = "00010000" else
                      "101" when Rdy_concat = "00100000" else
                      "110" when Rdy_concat = "01000000" else
                      "111" when Rdy_concat = "10000000" else
                      "000";
    end generate all_instrument;

    dispatch : if pipeline_size = 4 generate
        Rdy_concat <= i_Rdy(3) & i_Rdy(2) & i_Rdy(1) & i_Rdy(0);
        id         <= "00" when Rdy_concat = "0001" else
                      "01" when Rdy_concat = "0010" else
                      "10" when Rdy_concat = "0100" else
                      "11" when Rdy_concat = "1000" else
                      "00";
    end generate dispatch;

    one : if pipeline_size = 1 generate

        id <= "0";

    end generate one;

end;

