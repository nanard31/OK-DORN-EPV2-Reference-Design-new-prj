----------------------------------------------------------------------------------
-- Company: CNRS IRAP
-- Engineer: Jeremy GUILLERMAND (on behalf of Alten SO)
--
-- Create Date:     03/05/2021
-- Design Units:    RAM_Generic_NOECC_2kx24.vhd (Entity and architecture)
-- Depedencies:     NX.nxPackage (NX_RAM_WRAP)
-- Project Name:    Generic module, originally created for DORN project
-- Target Devices:  NanoXplore NG-Medium NX1H35AS
-- Tool versions:   nxmap-3.2020.3.3/bin/nxpython3
--
-- Description:     Generic RAM module using Embedded Dual-Port NX_RAM_WRAP (IPcore)
--                  Default Standard Mode = NOECC_2kx24
--                  Writing on Port A, Reading on Port B
--                  Working on RAM falling edge to avoid one clock tick delay (can be changed for other application)
--                  Optional pipeline registers on inputs and/or outputs, working on rising edge
--                  No 90° Phase Shifted clock input for ECC
--
-- Revision 0.01 - File Created
-- Additional Comments: Complete and tested on FUSIO RT Development Kit: 3DEV0754
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library nx;
use NX.nxPackage.all;

entity RAM_Generic_NOECC is
    generic(
        G_STD_MODE        : string := "NOECC_2kx24"; -- Default organization
        -- NOECC_2kx24  "0000101101101101"  => G_WIDTH = 24 // G_DEPTH = 11
        -- NOECC_4kx12  "0000100100100100"  => G_WIDTH = 12 // G_DEPTH = 12
        -- NOECC_6kx8   "0000011011011011"  => G_WIDTH =  8 // G_DEPTH = 13
        -- NOECC_12kx4  "0000010010010010"  => G_WIDTH =  4 // G_DEPTH = 14
        -- NOECC_24kx2  "0000001001001001"  => G_WIDTH =  2 // G_DEPTH = 15
        -- NOECC_48kx1  "0000000000000000"  => G_WIDTH =  1 // G_DEPTH = 16
        G_WIDTH           : integer range 1 to 24; -- Read/Write data width
        G_DEPTH           : integer range 1 to 16; -- RAM depth, 2**depth values
        G_PIPELINE_INPUT  : bit    := '0';        -- 0: No pipeline, 1: Insert a pipeline register at the inputs of the A port
        G_PIPELINE_OUTPUT : bit    := '0';        -- 0: No pipeline, 1: Insert a pipeline register at the outputs of the B port
        G_RAM_Init_Data   : string := ""          -- default is empty
    );
    port(
        -- Reset and Clock
        i_Rst_n    : in  std_logic;
        i_Clk      : in  std_logic;
        -- Data Input
        i_Wr_En    : in  std_logic;
        i_Wr_Adr   : in  std_logic_vector(G_DEPTH - 1 downto 0);
        i_Din_RAM  : in  std_logic_vector(G_WIDTH - 1 downto 0);
        -- Data Output
        i_Rd_Adr   : in  std_logic_vector(G_DEPTH - 1 downto 0);
        o_Dout_RAM : out std_logic_vector(G_WIDTH - 1 downto 0)
    );
end entity RAM_Generic_NOECC;

architecture RTL of RAM_Generic_NOECC is

    -- NX_RAM interface
    signal ACKR : std_logic;
    signal BCKR : std_logic;

    signal RAM_address_A : std_logic_vector(15 downto 0);
    signal RAM_address_B : std_logic_vector(15 downto 0);

    signal RAM_data_to_write : std_logic_vector(23 downto 0);
    signal RAM_data_read     : std_logic_vector(23 downto 0);

begin
    ---------------------------------------------------------------------------------------------
    --
    -- Pipeline registers clocks
    --
    ---------------------------------------------------------------------------------------------

    gen_Pipeline_Input_Clock : if G_PIPELINE_INPUT = '1' generate
        ACKR <= i_Clk;
    else generate
        ACKR <= '0';
    end generate gen_Pipeline_Input_Clock;

    gen_Pipeline_Output_Clock : if G_PIPELINE_OUTPUT = '1' generate
        BCKR <= i_Clk;
    else generate
        BCKR <= '0';
    end generate gen_Pipeline_Output_Clock;

    ---------------------------------------------------------------------------------------------
    --
    -- RAM Address
    --
    ---------------------------------------------------------------------------------------------

    gen_RAM_Address_Formatting : if G_DEPTH = 16 generate
        RAM_address_A(G_DEPTH - 1 downto 0) <= i_Wr_Adr; -- All bits are used
        RAM_address_B(G_DEPTH - 1 downto 0) <= i_Rd_Adr; -- All bits are used
    else generate
        RAM_address_A(15 downto G_DEPTH)    <= (others => '0'); -- Set unused MSB at 0
        RAM_address_A(G_DEPTH - 1 downto 0) <= i_Wr_Adr; -- Get useful data into the LSB

        RAM_address_B(15 downto G_DEPTH)    <= (others => '0'); -- Set unused MSB at 0
        RAM_address_B(G_DEPTH - 1 downto 0) <= i_Rd_Adr; -- Get useful data into the LSB
    end generate gen_RAM_Address_Formatting;

    ---------------------------------------------------------------------------------------------
    --
    -- RAM Data
    --
    ---------------------------------------------------------------------------------------------

    gen_RAM_Data_Formatting : if G_WIDTH = 24 generate
        RAM_data_to_write(G_WIDTH - 1 downto 0) <= i_Din_RAM; -- All bits are used
    else generate
        RAM_data_to_write(23 downto G_WIDTH)    <= (others => '0'); -- Set unused MSB at 0
        RAM_data_to_write(G_WIDTH - 1 downto 0) <= i_Din_RAM; -- Get useful data into the LSB
    end generate gen_RAM_Data_Formatting;

    o_Dout_RAM <= RAM_data_read(G_WIDTH - 1 downto 0); -- Unused MSB are discarded

    ---------------------------------------------------------------------------------------------
    --
    -- NX_RAM_WRAP (IPcore)
    --
    ---------------------------------------------------------------------------------------------

    inst_NX_RAM_WRAP : entity nx.NX_RAM_WRAP
        generic map(                              -- @suppress "Generic map uses default values. Missing optional actuals: raw_config0, raw_config1, raw_l_enable, raw_l_extend"
            std_mode  => G_STD_MODE,              -- raw_config1
            mcka_edge => '1',                     -- Port A clock edge, 0 : rising, 1 : falling
            mckb_edge => '1',                     -- Port B clock edge, 0 : rising, 1 : falling
            pcka_edge => '0',                     -- Port A pipeline register clock edge, 0 : rising, 1 : falling
            pckb_edge => '0',                     -- Port B pipeline register clock edge, 0 : rising, 1 : falling
            pipe_ia   => G_PIPELINE_INPUT,        -- 0: No pipeline, 1: Insert a pipeline register at the inputs of the A port
            pipe_ib   => '0',                     -- No input on Port B
            pipe_oa   => '0',                     -- No output on Port A
            pipe_ob   => G_PIPELINE_OUTPUT,       -- 0: No pipeline, 1: Insert a pipeline register at the outputs of the B port
            mem_ctxt  => G_RAM_Init_Data          -- RAM values initialization, string constant
        )
        port map(
            -- Clocks
            ACK  => i_Clk,                        -- Main clock
            ACKD => '0',                          -- Main clock 90° Phase Shifted for ECC, = '0' if no ECC
            ACKR => ACKR,                         -- Optional clock for pipeline on Port A
            BCK  => i_Clk,                        -- Main clock
            BCKD => '0',                          -- Main clock 90° Phase Shifted for ECC, = '0' if no ECC
            BCKR => BCKR,                         -- Optional clock for pipeline on Port B
            -- RAM data input
            AI   => RAM_data_to_write,            -- Unused MSB at 0
            BI   => (others => '0'),              -- Do not write on Port B
            -- Error Code Correction (ECC) flags
            ACOR => open,                         -- HIGH when an error has been detected and corrected on port A
            AERR => open,                         -- HIGH when multiple errors have been detected on port A
            BCOR => open,                         -- HIGH when an error has been detected and corrected on port B
            BERR => open,                         -- HIGH when multiple errors have been detected on port B
            -- RAM data output
            AO   => open,                         -- Do not read on Port A
            BO   => RAM_data_read,                -- Unused MSB at 0
            -- RAM Port A settings, writing only
            AA   => RAM_address_A,                -- Unused MSB at 0
            ACS  => i_Rst_n,                      -- Select Port A when not reset
            AWE  => i_Wr_En,                      -- Enable writing only when FIFO is not full to avoid reading the last written value if pointers are equal
            AR   => '0',                          -- No optional pipeline on Port A
            -- RAM Port B settings, reading only
            BA   => RAM_address_B,                -- Unused MSB at 0
            BCS  => i_Rst_n,                      -- Select Port B when not reset
            BWE  => '0',                          -- Never write on Port B
            BR   => '0'                           -- No optional pipeline on Port B
        );

end architecture RTL;
