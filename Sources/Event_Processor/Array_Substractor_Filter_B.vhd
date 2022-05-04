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

entity Array_Substractor_Filter_B is
    port(
        -- Reset and Clock

        i_Rst_n         : in  std_logic;
        i_CLOCK_100_MHZ : in  std_logic;
        -- data science input

        -- Ready flag input

        i_Rdy_j         : in  std_logic_vector(0 to pipeline_size - 1);
        i_Rdy_i         : in  std_logic_vector(0 to pipeline_size - 1);
        -- Data input
        i_Din_i         : in  signed(31 downto 0);
        i_Din_j         : in  signed(31 downto 0);
        i_id_i          : in  std_logic_vector(id_size downto 0);
        i_id_j          : in  std_logic_vector(id_size downto 0);
        -- output 
        o_out_temp      : out Array_8x31_type

    );
end Array_Substractor_Filter_B;

architecture Behavioral of Array_Substractor_Filter_B is

    signal i_Din_i_delayed   : Array_8x31_type;
    signal i_Din_i_delayed_2 : Array_8x31_type;
    signal i_Din_i_o         : Array_8x31_type;
    signal i_Din_j_o         : Array_8x31_type;
    
begin

    -----------------------------------------
    -- Process: comput substractor
    -----------------------------------------
    process(i_Rst_n, i_CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
 
            i_Din_i_o         <= (others => (others => '0'));
            i_Din_i_delayed   <= (others => (others => '0'));
            i_Din_i_delayed_2 <= (others => (others => '0'));
        else
            if rising_edge(i_CLOCK_100_MHZ) then
                
                i_Din_i_delayed   <= i_Din_i_o;
                i_Din_i_delayed_2 <= i_Din_i_delayed; -- to compensate delay of sum zero
                
                if i_Rdy_i(To_integer(unsigned(i_id_i))) = '1' then
                    i_Din_i_o(To_integer(unsigned(i_id_i))) <= i_Din_i;
                end if;

            end if;
        end if;
    end process;

    process(i_Rst_n, i_CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
            i_Din_j_o <= (others => (others => '0'));
        else
            if rising_edge(i_CLOCK_100_MHZ) then
                if i_Rdy_j(To_integer(unsigned(i_id_j))) = '1' then
                    i_Din_j_o(To_integer(unsigned(i_id_j))) <= i_Din_j;
                end if;

            end if;
        end if;
    end process;
   
-- GEN_REG : for I in 0 to (pipeline_size - 1) generate
    -- o_out_temp(I) <= i_Din_i_delayed_2(I) - i_Din_j_o(I);
-- end generate GEN_REG;

 --      GEN_REG : for I in 0 to (pipeline_size - 1) generate
           process(i_Rst_n, i_CLOCK_100_MHZ)
           begin
               if i_Rst_n = '0' then
                   o_out_temp <= (others => (others => '0'));
               else
                   if rising_edge(i_CLOCK_100_MHZ) then
                       o_out_temp(0) <= i_Din_i_delayed(0) - i_Din_j_o(0);
   --                    o_out_temp(1) <= i_Din_i_o(1) - i_Din_j_o(1);
   --                    o_out_temp(2) <= i_Din_i_o(2) - i_Din_j_o(2);
   --                    o_out_temp(3) <= i_Din_i_o(3) - i_Din_j_o(3);
   --                    o_out_temp(4) <= i_Din_i_o(4) - i_Din_j_o(4);
   --                    o_out_temp(5) <= i_Din_i_o(5) - i_Din_j_o(5);
   --                    o_out_temp(6) <= i_Din_i_o(6) - i_Din_j_o(6);
   --                    o_out_temp(7) <= i_Din_i_o(7) - i_Din_j_o(7);
                   end if;
               end if;
           end process;
 --      end generate GEN_REG;

end;

