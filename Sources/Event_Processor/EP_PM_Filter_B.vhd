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

entity EP_PM_Filter_B is
    port(
        i_Rst_n : in  std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk   : in  std_logic;        -- 100 MHz

        --------------------------------------------------------------------------------------------
        -- SUM
        -------------------------------------------------------------------------------------------
        i_N     : in  std_logic_vector(5 downto 0);
        i_Z     : in  std_logic_vector(5 downto 0);
        i_M     : in  std_logic_vector(5 downto 0);
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------

        -- Ready flag buffers
        i_id    : in  unsigned(id_size downto 0);
        -- DU_ADC Data
        i_Din   : in  std_logic_vector(15 downto 0);
        i_Rdy   : in  std_logic;
        -------------------------------
        -- Out event processor
        -------------------------------
        o_Dout  : out Array_8x31_type
    );
end EP_PM_Filter_B;

architecture Behavioral of EP_PM_Filter_B is

    -- to another Sum block

    --signal o_out_j					:	Array_8x16_type;
    signal o_rdy_j : std_logic_vector(0 to pipeline_size - 1);

    --sum	

    signal Sum_M : signed(31 downto 0);

    -- to another Sum block

    --signal o_out_array_i			:	Array_8x16_type;
    signal o_rdy_i : std_logic_vector(0 to pipeline_size - 1);

    --sum	

    signal o_sum_i : signed(31 downto 0);
    signal Raw_Z   : std_logic_vector(15 downto 0);
    signal o_id_i  : std_logic_vector(id_size downto 0);

    signal o_id_j      : std_logic_vector(id_size downto 0);
    signal i_Rdy_j     : std_logic_vector(0 to pipeline_size - 1);
    signal i_id_j      : std_logic_vector(id_size downto 0);
    signal i_Din_j     : std_logic_vector(15 downto 0);
    signal o_rdy_zero  : std_logic_vector(0 to pipeline_size - 1);
    signal o_id_zero   : std_logic_vector(id_size downto 0);
    signal Raw_N       : std_logic_vector(15 downto 0);
    signal Sum_N       : signed(31 downto 0);
    signal Sum_Z       : signed(31 downto 0);
    signal sum_array_Z : Array_8x31_type;
    signal sum_array_M : Array_8x31_type;
    signal sum_array_N : Array_8x31_type;

    -- out A filter		

begin

    -----------------------------------------------------------------
    -- SUM N
    -----------------------------------------------------------------

    Inst_Sum_Z : entity work.EP_PM_Sum
        port map(
            i_Rst_n     => i_Rst_n,
            i_Clk       => i_Clk,
            -- Param

            i_size      => unsigned(i_Z),
            -- data science input

            -- Ready flag buffers
            i_Rdy       => i_Rdy,
            i_id        => i_id,
            -- DU_ADC Data
            i_Din       => i_Din,
            -- to another Sum block

            --o_out_array     => open,    --debug
            --            o_rdy           => open,
            --            o_id            => o_id_i,
            o_out       => Raw_Z,
            --sum	
            --o_sum_array     => open,    --debug
            o_sum       => Sum_Z,
            o_sum_array => open
        );

    -----------------------------------------------------------------
    -- SUM zero
    -----------------------------------------------------------------

    Inst_Sum_N : entity work.EP_PM_Sum
        port map(
            i_Rst_n => i_Rst_n,
            i_Clk   => i_Clk,
            -- Param

            i_size  => unsigned(i_N),
            -- data science input

            -- Ready flag buffers
            i_Rdy   => i_Rdy,
            i_id    => (i_id - 1),
            -- DU_ADC Data
            i_Din   => Raw_Z,
            -- to another Sum block

            --o_out_array     => open,    --debug
--            o_rdy   => open,
--            o_id    => o_id_zero,
            o_out   => Raw_N,
            --sum   
            --o_sum_array     => open,    --debug
            o_sum   => Sum_N,
            o_sum_array => sum_array_N
        );

    -----------------------------------------------------------------
    -- SUM j
    -----------------------------------------------------------------

    Inst_Sum_M : entity work.EP_PM_Sum
        port map(
            i_Rst_n => i_Rst_n,
            i_Clk   => i_Clk,
            -- Param

            i_size  => unsigned(i_M),
            -- data science input

            -- Ready flag buffers
            i_Rdy   => i_Rdy,
            i_id    => i_id - 2,
            -- DU_ADC Data
            i_Din   => Raw_N,
            -- to another Sum block

            --o_out_array     => open,    --debug
--            o_rdy   => open,
--            o_id    => o_id_j,
            o_out   => open,
            --sum   
            --o_sum_array     => open,    --debug
            o_sum   => Sum_M,
            o_sum_array => sum_array_M
        );

    -----------------------------------------------------------------
    -- SUB
    -----------------------------------------------------------------

    

    Inst_Array_Substractor : entity work.Array_Substractor_Filter_B
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            
            i_Rdy           => i_Rdy,
            i_sum_array_N   => sum_array_N,
            i_sum_array_M   => sum_array_M,
            i_id            => i_id,
            
            o_out_temp      => open
        );

end;

