----------------------------------------------------------------------------------
-- Company: CNRS IRAP
-- Engineer: Jeremy GUILLERMAND (on behalf of Alten SO)
--
-- Create Date:     17/02/2021
-- Design Units:    Clock_Unit_NanoXplore.vhd (Entity and architecture)
-- Depedencies:     NX.nxPackage (NX_PLL, NX_WFG, NX_BD)
-- Project Name:    Generic module, originally created for DORN project
-- Target Devices:  NanoXplore NG-Medium NX1H35AS
-- Tool versions:   nxmap-3.2020.3.3/bin/nxpython3
--
-- Description:     Generic clock tree module using NanoXplore modules
--                  Use default internal oscillator at 200 MHz using NX_PLL (IPcore)
--                  Create slower clocks at 100MHz and 25MHz using NX_WFG (IPcore)
--                  Synchronize HW reset, negative polarity on slower clock after 4 clock ticks delay
--                  Force internally generated reset signal to be reinjected in low skew routing network using buffer driver circuit NX_BD (IPCore)
--
-- Revision 0.01 - File Created
-- Additional Comments: Complete and tested on FUSIO RT Development Kit: 3DEV0754
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library nx;
use nx.nxPackage.all;

entity Clock_Unit_NanoXplore is
    port(
        i_HW_RESET_n    : in  std_logic;          -- Asynchronous Hardware Reset, negative polarity
        o_Rst_n         : out std_logic;          -- General synchronous Reset, negative polarity
        o_CLOCK_200_MHz : out std_logic;          -- Generated DU_ADC state machine CLOCK at 200 MHz
        o_CLOCK_100_MHz : out std_logic;          -- Generated SDRAM and EP_CLOCK at 100 MHz
        o_CLOCK_25_MHz  : out std_logic           -- Generated MAIN_CLOCK at 25 MHz
    );
end entity Clock_Unit_NanoXplore;

architecture RTL of Clock_Unit_NanoXplore is

    -- Reset management
    signal RDY_DELAY : std_logic_vector(3 downto 0);

    --Clocks managenement
    signal OSC_200_MHz  : std_logic;
    signal CLOCK_25_MHz : std_logic;
    signal SYNC_100     : std_logic;
    signal SYNC_25      : std_logic;

begin

    ---------------------------------------------------------------------------------------------------------------------------------
    --
    -- NX-PLL IpCore (NG-MEDIUM)
    --
    ---------------------------------------------------------------------------------------------------------------------------------

    -- targetFreq_x = (refFreq * (2 * fbk_intdiv)) / (2^clk_outdiv_x))
    inst_NX_PLL : entity nx.NX_PLL
        generic map(
            location     => "",                   -- No location constraint
            vco_range    => 0,                    -- 0 to 3 : : 0 range 200MHz to 425MHz, 1 range 400MHz to 850MHz, 2 range 850MHz to 1200MHz
            ref_div_on   => '0',                  -- 0 : bypass div2 , 1 :div2
            fbk_div_on   => '0',                  -- 0 : bypass      , 1 : div2
            ext_fbk_on   => '0',                  -- 0 : disabled    , 1 : enabled
            fbk_intdiv   => 5,                    -- if fbk_div_on = 0 : (2 to 31) else  (1 to 15)
            fbk_delay_on => '0',                  -- 0: no delay     , 1: delay
            fbk_delay    => 0,                    -- 0 to 63 : steps of 160ps
            clk_outdiv1  => 0,                    -- 0 to 7   (%1 to %2^7)
            clk_outdiv2  => 0,                    -- 0 to 7   (%1 to %2^7)
            clk_outdiv3  => 0                     -- 0 to 7   (%1 to %2^7)
        )
        port map(
            REF => '0',                           -- Reference clock, not used
            FBK => '0',                           -- External feedback, not used
            VCO => open,                          -- VCO output, not used
            D1  => open,                          -- D1 output, generated by frequency division of the VCO output
            D2  => open,                          -- D2 output, generated by frequency division of the VCO output
            D3  => open,                          -- D3 output, generated by frequency division of the VCO output
            OSC => OSC_200_MHz,                   -- Internal 200 MHz oscillator output
            RDY => open                           -- Pll Status, 0 : Pll not locked, 1 : Pll locked
        );

    o_CLOCK_200_MHz <= OSC_200_MHz;

    ---------------------------------------------------------------------------------------------------------------------------------
    --
    -- NX-WFG IpCore (NG-MEDIUM)
    --
    ---------------------------------------------------------------------------------------------------------------------------------

    inst_NX_WFG_CLOCK_100_MHz : entity nx.NX_WFG
        generic map(
            location    => "",                    -- No location constraint
            wfg_edge    => '0',                   -- Input clock is inverted ('1') or not ('0')
            mode        => '1',                   -- WFG pattern is used ('1') or not ('0')
            pattern_end => 1,                     -- Last useful index of the sampling pattern: PATTERN_END+1 first pattern bits are used
            pattern     => "0100000000000000",    -- Sampling pattern, Clock division per 2
            delay_on    => '0',                   -- Generated clock is delayed ('1') or not ('0')
            delay       => 0                      -- Number of delaytaps on generated clock (steps of 160 ps) in range [0:63] + 1
        )
        port map(
            SI  => SYNC_100,                      -- Synchronization input (connected to the synchronization output of the master WFG)
            ZI  => OSC_200_MHz,                   -- Input clock (connected to PLL VCO, D1, D2, D3, or OSC output)
            RDY => '1',                           -- Connected PLL RDY pin, active low reset
            SO  => SYNC_100,                      -- Synchronization output (Master WFG SO is connected to all slave WFGs SI inputs)
            ZO  => o_CLOCK_100_MHz                -- Generated clock, connected to clock tree
        );

    ---------------------------------------------------------------------------------------------------------------------------------
    --
    -- NX-WFG IpCore (NG-MEDIUM)
    --
    ---------------------------------------------------------------------------------------------------------------------------------

    inst_NX_WFG_CLOCK_25_MHz : entity nx.NX_WFG
        generic map(
            location    => "",                    -- No location constraint
            wfg_edge    => '0',                   -- Input clock is inverted ('1') or not ('0')
            mode        => '1',                   -- WFG pattern is used ('1') or not ('0')
            pattern_end => 7,                     -- Last useful index of the sampling pattern: PATTERN_END+1 first pattern bits are used
            pattern     => "0111100000000000",    -- Sampling pattern, Clock division per 8
            delay_on    => '0',                   -- Generated clock is delayed ('1') or not ('0')
            delay       => 0                      -- Number of delaytaps on generated clock (steps of 160 ps) in range [0:63] + 1
        )
        port map(
            SI  => SYNC_25,                       -- Synchronization input (connected to the synchronization output of the master WFG)
            ZI  => OSC_200_MHz,                   -- Input clock (connected to PLL VCO, D1, D2, D3, or OSC output)
            RDY => '1',                           -- Connected PLL RDY pin, active low reset
            SO  => SYNC_25,                       -- Synchronization output (Master WFG SO is connected to all slave WFGs SI inputs)
            ZO  => CLOCK_25_MHz                   -- Generated clock, connected to clock tree
        );

    o_CLOCK_25_MHz <= CLOCK_25_MHz;

    ---------------------------------------------------------------------------------------------------------------------------------
    --
    -- Reset generation, negative polarity, 4 clock ticks delay
    --
    ---------------------------------------------------------------------------------------------------------------------------------
    -- Synchronize general reset on slower clock

    p_Sync_Reset_n : process(CLOCK_25_MHz, i_HW_RESET_n)
    begin
        if i_HW_RESET_n = '0' then
            RDY_DELAY <= (others => '0');
        elsif rising_edge(CLOCK_25_MHz) then
            RDY_DELAY <= RDY_DELAY(2 downto 0) & i_HW_RESET_n;
        end if;
    end process p_Sync_Reset_n;

    ---------------------------------------------------------------------------------------------------------------------------------
    --
    -- NX-BD IpCore (NG-MEDIUM)
    --
    ---------------------------------------------------------------------------------------------------------------------------------
    -- The NX Buffer Driver circuit forces internally generated reset signal to be reinjected in low skew routing network

    inst_NX_BD_Reset_n : entity nx.NX_BD
        -- generic map(
            -- system => '1'
        -- )
        port map(
            I => RDY_DELAY(3),
            O => o_Rst_n
        );

end architecture RTL;
