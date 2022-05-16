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
use IEEE.NUMERIC_STD.ALL;

use work.DORN_EP_Package.ALL;

entity EP_PM_Filter is
    port(
        i_Rst_n         : in  std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk           : in  std_logic; -- 100 MHz

        --------------------------------------------------------------------------------------------
        -- SUM
        -------------------------------------------------------------------------------------------
        i_N             : in  std_logic_vector(5 downto 0);
        i_Z             : in  std_logic_vector(5 downto 0);
        i_M             : in  std_logic_vector(5 downto 0);
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------

        -- Ready flag buffers
        i_id            : in  unsigned(id_size downto 0);
        -- DU_ADC Data
        i_Din           : in  std_logic_vector(15 downto 0);
        i_Rdy           : in  std_logic;
        -------------------------------
        -- Out event processor
        -------------------------------
        o_Fitler_A_Dout : out Array_8x31_type;
        o_Fitler_B_Dout : out Array_8x31_type
    );
end EP_PM_Filter;

architecture Behavioral of EP_PM_Filter is

    signal Sum_N : signed(31 downto 0);
    signal Sum_Z : signed(31 downto 0);
    signal Sum_M : signed(31 downto 0);

    signal Raw_N       : std_logic_vector(15 downto 0);
    signal Raw_Z       : std_logic_vector(15 downto 0);
    signal Raw_M       : std_logic_vector(15 downto 0); -- @suppress "signal Raw_M is never read"
    signal sum_array_N : Array_8x31_type;
    signal sum_array_M : Array_8x31_type;
    signal sum_array_Z : Array_8x31_type;

begin

    -----------------------------------------------------------------
    -- SUM N
    -----------------------------------------------------------------

    Inst_Sum_N : entity work.EP_PM_FIFO
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_size          => unsigned(i_N),
            i_ADC_ID        => i_id,
            i_Din           => i_Din,
            i_Din_Rdy       => i_Rdy,
            o_Dout          => Raw_N,
            o_Sum           => Sum_N,
            o_sum_array_out => sum_array_N
        );

    -----------------------------------------------------------------
    -- SUM Z
    -----------------------------------------------------------------

    Inst_Sum_Z : entity work.EP_PM_FIFO
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_size          => unsigned(i_Z),
            i_ADC_ID        => i_id - 1,
            i_Din           => Raw_N,
            i_Din_Rdy       => i_Rdy,
            o_Dout          => Raw_Z,
            o_Sum           => Sum_Z,
            o_sum_array_out => sum_array_Z
        );

    -----------------------------------------------------------------
    -- SUM J
    -----------------------------------------------------------------

    Inst_Sum_M : entity work.EP_PM_FIFO
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_size          => unsigned(i_M),
            i_ADC_ID        => i_id - 2,
            i_Din           => Raw_Z,
            i_Din_Rdy       => i_Rdy,
            o_Dout          => Raw_M,
            o_Sum           => Sum_M,
            o_sum_array_out => sum_array_M
        );

    -----------------------------------------------------------------
    -- SUB
    -----------------------------------------------------------------

    o_Fitler_A_Dout(0) <= Sum_N - Sum_M;
    o_Fitler_B_Dout(0) <= Sum_Z - Sum_M;

    Inst_Array_Substractor : entity work.Array_Substractor
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            i_Rdy           => i_Rdy,
            i_sum_array_N   => sum_array_N,
            i_sum_array_M   => sum_array_M,
            i_id            => i_id,
            o_out_temp      => open
        );
        
    Inst_Array_Substractor_B : entity work.Array_Substractor
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            i_Rdy           => i_Rdy,
            i_sum_array_N   => sum_array_Z,
            i_sum_array_M   => sum_array_M,
            i_id            => i_id,
            o_out_temp      => open
        );   
        

end;

