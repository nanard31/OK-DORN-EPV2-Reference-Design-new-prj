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
        i_Rst_n              : in  std_logic;
        i_Clk                : in  std_logic;
        i_Threshold          : in  std_logic_vector(31 downto 0);
        i_Delta              : in  std_logic_vector(5 downto 0);
        --------------------------------------------------------------------------------------------
        -- ADCs
        --------------------------------------------------------------------------------------------

        i_Din_Rdy            : in  std_logic_vector(0 to pipeline_size - 1);
        i_Front_Din          : in  Array_8x16_type;
        i_Back_Din           : in  Array_8x16_type;
        --------------------------------------------------------------------------------------------
        -- Parameters 
        -------------------------------------------------------------------------------------------
        i_Filter_A_N         : in  std_logic_vector(5 downto 0);
        i_Filter_A_Z         : in  std_logic_vector(5 downto 0);
        i_Filter_A_M         : in  std_logic_vector(5 downto 0);
        i_Filter_B_N         : in  std_logic_vector(5 downto 0);
        i_Filter_B_Z         : in  std_logic_vector(5 downto 0);
        i_Filter_B_M         : in  std_logic_vector(5 downto 0);
        -------------------------------
        -- Front
        -------------------------------

        o_Front_Event_Rdy    : out std_logic; -- from div to start write fifo process before pipe out. 

        o_Front_Event_A      : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Front_Event_B      : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Front_Event_Energy : out std_logic_vector(31 downto 0); -- wide bus energy.
        o_Front_A_B          : out signed(63 downto 0); -- phase (phi).
        o_Front_Filter_A     : out std_logic_vector(31 downto 0);
        o_Front_Filter_B     : out std_logic_vector(31 downto 0);
        -------------------------------
        -- Back
        -------------------------------

        o_Back_Event_Rdy     : out std_logic; -- from div to start write fifo process before pipe out.

        o_Back_Event_A       : out std_logic_vector(31 downto 0); -- max A on pulse peak.
        o_Back_Event_B       : out std_logic_vector(31 downto 0); -- max B on pulse peak.
        o_Back_Event_Energy  : out std_logic_vector(31 downto 0); -- wide bus energy.
        o_Back_A_B           : out signed(63 downto 0); -- phase (phi).

        o_Back_Filter_A      : out std_logic_vector(31 downto 0);
        o_Back_Filter_B      : out std_logic_vector(31 downto 0);
        --------------------------------------------------------------------------------------------
        -- Memory Bus
        --------------------------------------------------------------------------------------------

        i_Base_Address       : in  STD_LOGIC_VECTOR(3 downto 0);
        i_Data               : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Address            : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Wr                 : in  STD_LOGIC
    );

end EP_PM;

architecture Behavioral of EP_PM is

    signal EC_Base_Address : STD_LOGIC_VECTOR(7 downto 0);

    signal Front_ID       : unsigned(id_size downto 0);
    signal Front_Din      : std_logic_vector(15 downto 0);
    signal Front_Din_Rdy  : std_logic;
    signal Front_Filter_A : Array_8x31_type;
    signal Front_Filter_B : Array_8x31_type;

    signal Back_ID       : unsigned(id_size downto 0);
    signal Back_Din      : std_logic_vector(15 downto 0);
    signal Back_Din_Rdy  : std_logic;
    signal Back_Filter_A : Array_8x31_type;
    signal Back_Filter_B : Array_8x31_type;

begin

    ---------------------------------------------------------------------------------------------------------------------
    --
    --Front section
    --
    ----------------------------------------------------------------------------------------------------------------------

    --------------------------------------------------------------------------------------------
    -- front mux
    --------------------------------------------------------------------------------------------

    Front_EP_in_mux : entity work.EP_PM_in_mux
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            i_Rdy           => i_Din_Rdy,
            i_Din           => i_Front_Din,
            o_Rdy           => Front_Din_Rdy,
            o_Din           => Front_Din,
            o_id            => Front_ID
        );

    --------------------------------------------------------------------------------------------
    -- filter front A
    --------------------------------------------------------------------------------------------

    Inst_Front_Filter_A : entity work.EP_PM_Filter
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_N             => i_Filter_A_N,
            i_Z             => i_Filter_A_Z,
            i_M             => i_Filter_A_M,
            i_id            => Front_ID,
            i_Din           => Front_Din,
            i_Rdy           => Front_Din_Rdy,
            o_Fitler_A_Dout => Front_Filter_A,
            o_Fitler_B_Dout => open
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Front_Filter_B : entity work.EP_PM_Filter
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_N             => i_Filter_B_N,
            i_Z             => i_Filter_B_Z,
            i_M             => i_Filter_B_M,
            i_id            => Front_ID,
            i_Din           => Front_Din,
            i_Rdy           => Front_Din_Rdy,
            o_Fitler_A_Dout => open,
            o_Fitler_B_Dout => Front_Filter_B
        );

    o_Front_Filter_A <= std_logic_vector(Front_Filter_A(0));
    o_Front_Filter_B <= std_logic_vector(Front_Filter_B(0)); -- EP_Capture_Filter_front_B_w;

    -----------------------------------------------------------------
    -- Energy correction front
    -----------------------------------------------------------------

    --    EC_Base_Address <= i_Base_Address & X"2";
    --
    --    Inst_Front_Energy_Correction : entity work.Energy_correction
    --        port map(
    --            -- Reset and Clock
    --            i_Rst_n        => i_Rst_n,
    --            i_Clk          => i_Clk,
    --            i_Threshold    => i_Threshold,
    --            i_Delta        => i_Delta,
    --            i_Base_Address => EC_Base_Address,
    --            i_Data         => i_Data,
    --            i_Address      => i_Address,
    --            i_Wr           => i_Wr,
    --            i_Din_Rdy      => Front_Din_Rdy,
    --            i_Filter_A     => std_logic_vector(Front_Filter_A(0)),
    --            i_Filter_B     => std_logic_vector(Front_Filter_B(0)),
    --            o_Debug        => open,
    --            o_Event_A      => o_Front_Event_A,
    --            o_Event_B      => o_Front_Event_B,
    --            o_A_B          => o_Front_A_B,
    --            o_Event_Energy => o_Front_Event_Energy,
    --            o_Event_Rdy    => o_Front_Event_Rdy -- means result has been read
    --
    --        );

    ---------------------------------------------------------------------------------------------------------------------
    --
    --back section
    --
    ----------------------------------------------------------------------------------------------------------------------

    Inst_Back_EP_in_mux : entity work.EP_PM_in_mux
        port map(
            i_Rst_n         => i_Rst_n,
            i_CLOCK_100_MHZ => i_Clk,
            i_Rdy           => i_Din_Rdy,
            i_Din           => i_Back_Din,
            o_Rdy           => Back_Din_Rdy,
            o_Din           => Back_Din,
            o_id            => Back_ID
        );

    --------------------------------------------------------------------------------------------
    -- filter back A
    --------------------------------------------------------------------------------------------

    Inst_Back_Filter_A : entity work.EP_PM_Filter
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_N             => i_Filter_A_N,
            i_Z             => i_Filter_A_Z,
            i_M             => i_Filter_A_M,
            i_id            => Back_ID,
            i_Din           => Back_Din,
            i_Rdy           => Back_Din_Rdy,
            o_Fitler_A_Dout => Back_Filter_A,
            o_Fitler_B_Dout => open
        );

    --------------------------------------------------------------------------------------------
    -- filter front B
    --------------------------------------------------------------------------------------------

    Inst_Filter_back_B : entity work.EP_PM_Filter
        port map(
            i_Rst_n         => i_Rst_n,
            i_Clk           => i_Clk,
            i_N             => i_Filter_B_N,
            i_Z             => i_Filter_B_Z,
            i_M             => i_Filter_B_M,
            i_id            => Back_ID,
            i_Din           => Back_Din,
            i_Rdy           => Back_Din_Rdy,
            o_Fitler_A_Dout => open,
            o_Fitler_B_Dout => Back_Filter_B
        );

    o_Back_Filter_A <= std_logic_vector(Back_Filter_A(0));
    o_Back_Filter_B <= std_logic_vector(Back_Filter_B(0));

    -----------------------------------------------------------------
    -- Energy correction back
    -----------------------------------------------------------------

    --    Inst_Back_Energy_Correction : entity work.Energy_correction
    --        port map(
    --            -- Reset and Clock
    --            i_Rst_n        => i_Rst_n,
    --            i_Clk          => i_Clk,
    --            i_Threshold    => i_Threshold,
    --            i_Delta        => i_Delta,
    --            i_Base_Address => EC_Base_Address,
    --            i_Data         => i_Data,
    --            i_Address      => i_Address,
    --            i_Wr           => i_Wr,
    --            i_Din_Rdy      => Back_Din_Rdy,
    --            i_Filter_A     => std_logic_vector(Back_Filter_A(0)),
    --            i_Filter_B     => std_logic_vector(Back_Filter_B(0)),
    --            o_Debug        => open,
    --            o_Event_A      => o_Back_Event_A,
    --            o_Event_B      => o_Back_Event_B,
    --            o_A_B          => o_Back_A_B,
    --            o_Event_Energy => o_Back_Event_Energy,
    --            o_Event_Rdy    => o_Back_Event_Rdy -- means result has been read
    --
    --        );

end architecture Behavioral;
