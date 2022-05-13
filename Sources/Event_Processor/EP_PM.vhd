--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Bernard BERTRAND
-- :
-- Create Date:    08:30:00 01/04/2020 
-- Design Name: 
-- Module Name:    Event_Processor EPV2
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.DORN_EP_Package.ALL;

entity EP_PM is
    port(
        i_Rst_n                       : in  std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                         : in  std_logic; -- 100 MHz

        i_Threshold                   : in  std_logic_vector(31 downto 0);
        --------------------------------------------------------------------------------------------
        -- input from ADC
        --------------------------------------------------------------------------------------------

        -- Ready flag buffers
        i_DU_ADC_Ready_100_front      : in  std_logic_vector(0 to pipeline_size - 1);
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

        o_Event_A_front               : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Event_B_front               : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Event_Energy_front          : out std_logic_vector(31 downto 0); -- wide bus energy.
        o_A_B_front                   : out signed(63 downto 0); -- phase (phi).
        o_Event_Rdy                   : out std_logic; -- from div to start write fifo process before pipe out. 

        -------------------------------
        -- Out filter FRONT
        -------------------------------

        o_EP_Capture_Filter_front_A_w : out std_logic_vector(31 downto 0);
        o_EP_Capture_Filter_front_B_w : out std_logic_vector(31 downto 0);
        -------------------------------
        -- Out phase correction BACK
        -------------------------------

        o_Event_A_back                : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Event_B_back                : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Event_Energy_back           : out std_logic_vector(31 downto 0); -- wide bus energy.
        o_A_B_back                    : out signed(63 downto 0); -- phase (phi).
        o_Event_Ready_back            : out std_logic; -- from div to start write fifo process before pipe out. 
        -------------------------------
        -- Out filter BACK
        -------------------------------

        o_Raw_Filter_A                : out std_logic_vector(31 downto 0);
        o_Raw_Filter_B                : out std_logic_vector(31 downto 0);
        --------------------------------------------------------------------------------------------
        -- Memory Bus
        --------------------------------------------------------------------------------------------

        i_Base_Address                : in  STD_LOGIC_VECTOR(3 downto 0);
        i_Data                        : in  STD_LOGIC_VECTOR(16 downto 0);
        i_Address                     : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Wr                          : in  STD_LOGIC
    );

end EP_PM;

architecture Behavioral of EP_PM is

    signal Rdy_front, Rdy_back : std_logic;
    signal Din_front, Din_back : std_logic_vector(15 downto 0);
    signal id_front, id_back   : unsigned(id_size downto 0);

    signal o_out_temp_front_A : Array_8x31_type;
    signal o_out_temp_back_A  : Array_8x31_type;
    signal o_out_temp_front_B : Array_8x31_type;
    signal o_out_temp_back_B  : Array_8x31_type;

    signal EP_Capture_Filter_front_A_w : std_logic_vector(31 downto 0);
    signal EP_Capture_Filter_front_B_w : std_logic_vector(31 downto 0);

    signal EP_Capture_Filter_back_A_w : std_logic_vector(31 downto 0);
    signal EP_Capture_Filter_back_B_w : std_logic_vector(31 downto 0);

    signal EC_Base_Address : STD_LOGIC_VECTOR(7 downto 0);
    --signal PH_Event        : std_logic_vector(31 downto 0);

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
            o_Rdy           => Rdy_front,
            o_Din           => Din_front,
            o_id            => id_front
        );

    --------------------------------------------------------------------------------------------
    -- filter front A
    --------------------------------------------------------------------------------------------

    Inst_Filter_front_A : entity work.EP_PM_Filter
        port map(
            i_Rst_n     => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------

            i_Clk       => i_Clk,
            -- conf
            -- sum conf
            i_N  => i_sum_plus_A,
            i_Z  => i_sum_zero_A,
            i_M => i_sum_minus_A,
            
            i_id        => id_front,
            i_Din       => Din_front,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------

            -- Ready flag buffers
            i_Rdy       => Rdy_front,
            -------------------------------
            -- Out filter
            -------------------------------

            o_Dout      => o_out_temp_front_A
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Filter_front_B : entity work.EP_PM_Filter_B
        port map(
            i_Rst_n     => i_Rst_n,
            -------------------------------
            -- CLOCK
            ------------------------------

            i_Clk       => i_Clk,
            -- conf
            -- sum conf
            i_N  => i_sum_plus_B,
            i_Z  => i_sum_zero_B,
            i_M => i_sum_minus_B,
            i_id        => id_front,
            i_Din       => Din_front,
            --------------------------------------------------------------------------------------------
            -- ADC
            --------------------------------------------------------------------------------------------

            -- Ready flag buffers
            i_Rdy       => Rdy_front,
            -------------------------------
            -- Out filter
            -------------------------------

            o_Dout  => o_out_temp_front_B
        );

    EP_Capture_Filter_front_A_w <= std_logic_vector(o_out_temp_front_A(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 
    EP_Capture_Filter_front_B_w <= std_logic_vector(o_out_temp_front_B(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 

    o_EP_Capture_Filter_front_A_w <= EP_Capture_Filter_front_A_w;
    o_EP_Capture_Filter_front_B_w <= EP_Capture_Filter_front_B_w;

    -----------------------------------------------------------------
    -- Energy correction front
    -----------------------------------------------------------------

    EC_Base_Address <= i_Base_Address & X"2";

    Inst_Energy_correction_front : entity work.Energy_correction
        port map(
            -- Reset and Clock
            i_Rst_n        => i_Rst_n,
            i_Clk          => i_Clk,
            i_Threshold    => i_Threshold,
            i_Base_Address => EC_Base_Address,
            i_Data         => i_Data,
            i_Address      => i_Address,
            i_Wr           => i_Wr,
            i_Din_Rdy      => Rdy_front,
            i_Filter_A     => EP_Capture_Filter_front_A_w,
            i_Filter_B     => EP_Capture_Filter_front_B_w,
            o_Event_A      => o_Event_A_front,
            o_Event_B      => o_Event_B_front,
            o_A_B          => o_A_B_front,
            o_Event_Energy => o_Event_Energy_front,
            o_Event_Rdy    => o_Event_Rdy -- means result has been read

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
            o_Rdy           => Rdy_back,
            o_Din           => Din_back,
            o_id            => id_back
        );

    --------------------------------------------------------------------------------------------
    -- filter back A
    --------------------------------------------------------------------------------------------

    Inst_Filter_back_A : entity work.EP_PM_Filter
        port map(
            i_Rst_n     => i_Rst_n,
            i_Clk       => i_Clk,
            
            i_N  => i_sum_plus_A,
            i_Z  => i_sum_zero_A,
            i_M => i_sum_minus_A,
            
            i_id        => id_back,
            i_Din       => Din_back,
            i_Rdy       => Rdy_back,
            
            o_Dout      => o_out_temp_back_A
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Filter_back_B : entity work.EP_PM_Filter_B
        port map(
            i_Rst_n     => i_Rst_n,
            i_Clk       => i_Clk,
            
            i_N  => i_sum_plus_B,
            i_Z  => i_sum_zero_B,
            i_M => i_sum_minus_B,
            
            i_id        => id_back,
            i_Din       => Din_back,
            i_Rdy       => Rdy_back,
            
            o_Dout      => o_out_temp_back_B
        );

    EP_Capture_Filter_back_A_w <= std_logic_vector(o_out_temp_back_A(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 
    EP_Capture_Filter_back_B_w <= std_logic_vector(o_out_temp_back_B(0)); -- temp only with constant pipeline_size : integer := 1; see next step mux phase correction 

    o_Raw_Filter_A <= EP_Capture_Filter_back_A_w;
    o_Raw_Filter_B <= EP_Capture_Filter_back_B_w;

    -----------------------------------------------------------------
    -- Energy correction back
    -----------------------------------------------------------------

    Inst_Energy_correction_back : entity work.Energy_correction
        port map(
            -- Reset and Clock
            i_Rst_n        => i_Rst_n,
            i_Clk          => i_Clk,
            i_Threshold    => i_Threshold,
            i_Base_Address => EC_Base_Address,
            i_Data         => i_Data,
            i_Address      => i_Address,
            i_Wr           => i_Wr,
            i_Din_Rdy      => Rdy_back,
            -- input EP capture filter

            i_Filter_A     => EP_Capture_Filter_back_A_w,
            i_Filter_B     => EP_Capture_Filter_back_B_w,
            --  Event_detect
            o_Event_A      => o_Event_A_back,
            o_Event_B      => o_Event_B_back,
            o_A_B          => o_A_B_back,
            --  output result   
            o_Event_Energy => o_Event_Energy_back,
            o_Event_Rdy    => o_Event_Ready_back -- means result has been read

        );

end architecture Behavioral;
