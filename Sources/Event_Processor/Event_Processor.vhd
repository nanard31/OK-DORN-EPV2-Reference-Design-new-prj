--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Bernard BERTRAND
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
        i_Rst_n                       : in  std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                         : in  std_logic; -- 100 MHz

        --------------------------------------------------------------------------------------------
        -- input from ADC
        --------------------------------------------------------------------------------------------

        -- Ready flag buffers
        i_DU_ADC_Ready_100_front      : in  std_logic_vector(0 to pipeline_size - 1);
        i_DU_ADC_Ready_100_back       : in  std_logic_vector(0 to pipeline_size - 1);
        -- DU_ADC Data
        i_DU_ADC_Front_Dout           : in  Array_8x16_type;
        i_DU_ADC_Back_Dout            : in  Array_8x16_type;
        --------------------------------------------------------------------------------------------
        -- input param SUM from GSE 
        -------------------------------------------------------------------------------------------
        i_sum_plus_A                  : in  std_logic_vector(5 downto 0);
        i_sum_zero_A                  : in  std_logic_vector(5 downto 0);
        i_sum_minus_A                 : in  std_logic_vector(5 downto 0);
        i_sum_plus_B                  : in  std_logic_vector(5 downto 0);
        i_sum_zero_B                  : in  std_logic_vector(5 downto 0);
        i_sum_minus_B                 : in  std_logic_vector(5 downto 0);
        -------------------------------
        -- Out phase correction FRONT
        -------------------------------

        o_Event_B_front               : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Event_A_front               : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Event_Energy_front          : out std_logic_vector(77 downto 0); -- wide bus energy.
        o_A_B_front                   : out signed(63 downto 0); -- phase (phi).
        o_div_read_front              : out std_logic; -- from div to start write fifo process before pipe out. 

        -------------------------------
        -- Out filter FRONT
        -------------------------------

        o_EP_Capture_Filter_front_A_w : out std_logic_vector(31 downto 0);
        o_EP_Capture_Filter_front_B_w : out std_logic_vector(31 downto 0);
        -------------------------------
        -- Out phase correction BACK
        -------------------------------

        o_Event_B_back                : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Event_A_back                : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Event_Energy_back           : out std_logic_vector(77 downto 0); -- wide bus energy.
        o_A_B_back                    : out signed(63 downto 0); -- phase (phi).
        o_div_read_back               : out std_logic; -- from div to start write fifo process before pipe out. 
        -------------------------------
        -- Out filter BACK
        -------------------------------

        o_EP_Capture_Filter_back_A_w  : out std_logic_vector(31 downto 0);
        o_EP_Capture_Filter_back_B_w  : out std_logic_vector(31 downto 0)
    );

end Event_Processor;

architecture Behavioral of Event_Processor is

    signal o_Rdy_front, o_Rdy_back : std_logic_vector(0 to pipeline_size - 1);
    signal o_Din_front, o_Din_back : std_logic_vector(15 downto 0);
    signal o_id_front, o_id_back   : std_logic_vector(id_size downto 0);

    signal o_out_temp_front_A : Array_8x31_type;
    signal o_out_temp_back_A  : Array_8x31_type;
    signal o_out_temp_front_B : Array_8x31_type;
    signal o_out_temp_back_B  : Array_8x31_type;

    signal EP_Capture_Filter_front_A_w : std_logic_vector(31 downto 0);
    signal EP_Capture_Filter_front_B_w : std_logic_vector(31 downto 0);

    signal EP_Capture_Filter_back_A_w : std_logic_vector(31 downto 0);
    signal EP_Capture_Filter_back_B_w : std_logic_vector(31 downto 0);

begin

    ---------------------------------------------------------------------------------------------------------------------
    --
    --front section
    --
    ----------------------------------------------------------------------------------------------------------------------

    --------------------------------------------------------------------------------------------
    -- front mux
    --------------------------------------------------------------------------------------------

    Inst_EP_in_mux_front : entity work.EP_in_mux
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            --ADC
            i_Rdy           => i_DU_ADC_Ready_100_front,
            i_Din           => i_DU_ADC_Front_Dout,
            --filter
            o_Rdy           => o_Rdy_front,
            o_Din           => o_Din_front,
            o_id            => o_id_front
        );

    --------------------------------------------------------------------------------------------
    -- filter front A
    --------------------------------------------------------------------------------------------

    Inst_Filter_front_A : entity work.Filter
        port map(
            i_Rst_n    => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------

            i_Clk      => i_Clk,
            -- conf
            -- sum conf
            sum_plus   => i_sum_plus_A,
            sum_zero   => i_sum_zero_A,
            sum_minus  => i_sum_minus_A,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------

            -- Ready flag buffers
            i_Rdy      => o_Rdy_front,
            i_id       => o_id_front,
            -- DU_ADC Data
            i_Din      => o_Din_front,
            -------------------------------
            -- Out filter
            -------------------------------

            o_out_temp => o_out_temp_front_A
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Filter_front_B : entity work.Filter
        port map(
            i_Rst_n    => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------

            i_Clk      => i_Clk,
            -- conf
            -- sum conf
            sum_plus   => i_sum_plus_B,
            sum_zero   => i_sum_zero_B,
            sum_minus  => i_sum_minus_B,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------

            -- Ready flag buffers
            i_Rdy      => o_Rdy_front,
            i_id       => o_id_front,
            -- DU_ADC Data
            i_Din      => o_Din_front,
            -------------------------------
            -- Out filter
            -------------------------------

            o_out_temp => o_out_temp_front_B
        );

    EP_Capture_Filter_front_A_w <= std_logic_vector(o_out_temp_front_A(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 
    EP_Capture_Filter_front_B_w <= std_logic_vector(o_out_temp_front_B(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 

    o_EP_Capture_Filter_front_A_w <= EP_Capture_Filter_front_A_w;
    o_EP_Capture_Filter_front_B_w <= EP_Capture_Filter_front_B_w;

    -----------------------------------------------------------------
    -- Energy correction front
    -----------------------------------------------------------------

    Inst_Energy_correction_front : entity work.Energy_correction
        port map(
            -- Reset and Clock
            i_Rst_n                   => i_Rst_n,
            i_CLOCK_100_MHZ           => i_Clk,
            -- input EP capture filter

            i_EP_Capture_Filter_A_w   => EP_Capture_Filter_front_A_w,
            i_EP_Capture_Filter_B_w   => EP_Capture_Filter_front_B_w,
            --  Event_detect
            o_Event_A                 => o_Event_A_front,
            o_Event_B                 => o_Event_B_front,
            --  output result   
            o_Event_Energy            => o_Event_Energy_front,
            o_A_B                     => o_A_B_front,
            -- out
            --o_Energy_corrected_edge   => o_Energy_corrected_edge,
            --o_Energy_corrected        => o_Energy_corrected,
            --o_Phase_enable            => o_Phase_enable, -- digital pulse energy correction is applied
            o_div_read                => o_div_read_front, -- means result has been read   
            buffer_B_A_division_start => open
        );

    ---------------------------------------------------------------------------------------------------------------------
    --
    --back section
    --
    ----------------------------------------------------------------------------------------------------------------------

    --------------------------------------------------------------------------------------------
    -- back mux
    --------------------------------------------------------------------------------------------

    Inst_EP_in_mux_back : entity work.EP_in_mux
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            --ADC
            i_Rdy           => i_DU_ADC_Ready_100_front,
            i_Din           => i_DU_ADC_Back_Dout,
            --filter
            o_Rdy           => o_Rdy_back,
            o_Din           => o_Din_back,
            o_id            => o_id_back
        );

    --------------------------------------------------------------------------------------------
    -- filter back A
    --------------------------------------------------------------------------------------------

    Inst_Filter_back_A : entity work.Filter
        port map(
            i_Rst_n    => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------
            i_Clk      => i_Clk,
            -- conf
            -- sum conf
            sum_plus   => i_sum_plus_A,
            sum_zero   => i_sum_zero_A,
            sum_minus  => i_sum_minus_A,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------
            i_Rdy      => o_Rdy_back,
            i_id       => o_id_back,
            i_Din      => o_Din_back,
            -------------------------------
            -- Out filter
            -------------------------------            
            o_out_temp => o_out_temp_back_A
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Filter_back_B : entity work.Filter
        port map(
            i_Rst_n    => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------

            i_Clk      => i_Clk,
            -- conf
            -- sum conf
            sum_plus   => i_sum_plus_B,
            sum_zero   => i_sum_zero_B,
            sum_minus  => i_sum_minus_B,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------

            -- Ready flag buffers
            i_Rdy      => o_Rdy_back,
            i_id       => o_id_back,
            -- DU_ADC Data
            i_Din      => o_Din_back,
            -------------------------------
            -- Out filter
            -------------------------------

            o_out_temp => o_out_temp_back_B
        );

    EP_Capture_Filter_back_A_w <= std_logic_vector(o_out_temp_back_A(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 
    EP_Capture_Filter_back_B_w <= std_logic_vector(o_out_temp_back_B(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 

    o_EP_Capture_Filter_back_A_w <= EP_Capture_Filter_back_A_w;
    o_EP_Capture_Filter_back_B_w <= EP_Capture_Filter_back_B_w;

    -----------------------------------------------------------------
    -- Energy correction back
    -----------------------------------------------------------------

    Inst_Energy_correction_back : entity work.Energy_correction
        port map(
            -- Reset and Clock
            i_Rst_n                   => i_Rst_n,
            i_CLOCK_100_MHZ           => i_Clk,
            -- input EP capture filter

            i_EP_Capture_Filter_A_w   => EP_Capture_Filter_back_A_w,
            i_EP_Capture_Filter_B_w   => EP_Capture_Filter_back_B_w,
            --  Event_detect
            o_Event_A                 => o_Event_A_back,
            o_Event_B                 => o_Event_B_back,
            --  output result   
            o_Event_Energy            => o_Event_Energy_back,
            o_A_B                     => o_A_B_back,
            -- out
            --o_Energy_corrected_edge   => o_Energy_corrected_edge,
            --o_Energy_corrected        => o_Energy_corrected,
            --o_Phase_enable            => o_Phase_enable, -- digital pulse energy correction is applied
            o_div_read                => o_div_read_back, -- means result has been read   
            buffer_B_A_division_start => open
        );

end architecture Behavioral;
