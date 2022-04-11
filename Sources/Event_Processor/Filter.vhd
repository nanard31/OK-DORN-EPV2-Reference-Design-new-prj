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

entity Filter is
    port(
        i_Rst_n : in    std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk   : in    std_logic;      -- 100 MHz

        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------

        -- Ready flag buffers
        i_Rdy   : in    std_logic_vector(0 to pipeline_size - 1);
        i_id    : in    std_logic_vector(2 downto 0);
        -- DU_ADC Data
        i_Din   : in    std_logic_vector(15 downto 0);
        -------------------------------
        -- Out event processor
        -------------------------------

        o_out   : inout Array_8x31_type;
        o_rdy   : out   std_logic_vector(0 to pipeline_size - 1)
    );
end Filter;

architecture Behavioral of Filter is

    -- to another Sum block

    --signal o_out_j					:	Array_8x16_type;
    signal o_rdy_j : std_logic_vector(0 to pipeline_size - 1);

    --sum	

    signal o_sum_j : signed(31 downto 0);

    -- to another Sum block

    --signal o_out_array_i			:	Array_8x16_type;
    signal o_rdy_i : std_logic_vector(0 to pipeline_size - 1);

    --sum	

    signal o_sum_i : signed(31 downto 0);
    signal o_out_i : std_logic_vector(15 downto 0);
    signal o_id_i  : std_logic_vector(2 downto 0);

    signal o_id_j : std_logic_vector(2 downto 0);

    -- out A filter		

begin

    -----------------------------------------------------------------
    -- SUM i
    -----------------------------------------------------------------

    Inst_Sum_i : entity work.Sum
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            -- Param

            i_size          => to_unsigned(7 - 1, 6),
            -- data science input

            -- Ready flag buffers
            i_Rdy           => i_Rdy,
            i_id            => i_id,
            -- DU_ADC Data
            i_Din           => i_Din,
            -- to another Sum block

            --o_out_array     => open,    --debug
            o_rdy           => o_rdy_i,
            o_id            => o_id_i,
            o_out           => o_out_i,
            --sum	
            --o_sum_array     => open,    --debug
            o_sum           => o_sum_i
        );

    -----------------------------------------------------------------
    -- SUM j
    -----------------------------------------------------------------

    Inst_Sum_j : entity work.Sum
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            -- Param

            i_size          => to_unsigned(7 - 1, 6),
            -- data science input

            -- Ready flag buffers
            i_Rdy           => o_rdy_i,
            i_id            => o_id_i,
            -- DU_ADC Data
            i_Din           => o_out_i,
            -- to another Sum block

            --o_out_array     => open,    --debug
            o_rdy           => o_rdy_j,
            o_id            => o_id_j,
            o_out           => open,
            --sum   
            --o_sum_array     => open,    --debug
            o_sum           => o_sum_j
        );

    -----------------------------------------------------------------
    -- SUB
    -----------------------------------------------------------------

    Inst_Array_Substractor : entity work.Array_Substractor
        port map(
            -- global
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            -- input
            i_Rdy_j         => o_rdy_j,
            i_Din_i         => o_sum_i,
            i_Din_j         => o_sum_j,
            i_id_i          => o_id_i,
            i_id_j          => o_id_j,
            --out
            o_out           => open,
            o_rdy           => open,
            o_id            => open
        );

end;

