library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package nxPackage is

-- IOM

constant IOM_LINK_DES_CHAIN_IN          : integer := 0;
constant IOM_LINK_SER_FCK_FABRIC        : integer := 1;
constant IOM_LINK_CTCK_FABRIC           : integer := 2;
constant IOM_LINK_SPW_TX_SO             : integer := 3;
constant IOM_LINK_DES_FCK_FABRIC        : integer := 4;
constant IOM_LINK_SPW_TX_OUT_CONFIG     : integer := 5;
constant IOM_LINK_SER_WPTR              : integer := 6;
constant IOM_LINK_SER_SCK_IOM           : integer := 7;
constant IOM_LINK_FZ                    : integer := 8;
constant IOM_LINK_SPW_RX_RCK            : integer := 9;
constant IOM_LINK_SER_CHAIN_IN          : integer := 10;
constant IOM_LINK_SER_RPTR              : integer := 11;
constant IOM_LINK_DES_SCK_IOM           : integer := 12;
constant IOM_LINK_DELAY_VALUE_IN_LAST   : integer := 13;
constant IOM_LINK_DELAY_VALUE_IN_FIRST  : integer := 18;
constant IOM_LINK_SPW_RX_DI             : integer := 19;
constant IOM_LINK_DCK                   : integer := 20;
constant IOM_LINK_DWR                   : integer := 21;
constant IOM_LINK_DES_RPTR              : integer := 22;
constant IOM_LINK_SER_SCK_FABRIC        : integer := 23;
constant IOM_LINK_DELAY_SELECT_LAST     : integer := 24;
constant IOM_LINK_DELAY_SELECT_FIRST    : integer := 25;
constant IOM_LINK_SPW_RX_IN_CONFIG      : integer := 26;
constant IOM_LINK_DES_WPTR              : integer := 27;
constant IOM_LINK_DES_SCK_FABRIC        : integer := 28;
constant IOM_LINK_SPW_TX_DO             : integer := 29;
constant IOM_LINK_SPW_RX_DATA           : integer := 30;
constant IOM_LINK_DES_CHAIN_OUT         : integer := 31;
constant IOM_LINK_DELAY_VALUE_OUT_LAST  : integer := 32;
constant IOM_LINK_DELAY_VALUE_OUT_FIRST : integer := 37;
constant IOM_LINK_FLD                   : integer := 38;
constant IOM_LINK_SER_CHAIN_OUT         : integer := 39;
constant IOM_LINK_FLG                   : integer := 40;
constant IOM_LINK_SIZE                  : integer := 41;
constant IOM_LINK_OUTPUT_MAX            : integer := 29;

-- HSSL

constant CRX_LINK_SIZE                  : integer := 10;

constant CTX_LINK_SIZE                  : integer := 20;

component NX_IOB_I is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I	: in std_logic := '0';
    C	: in std_logic := '0';
    T	: in std_logic := '0';
    IO	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_IOB_I;

component NX_IOB_O is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I	: in std_logic := '0';
    C	: in std_logic := '0';
    T	: in std_logic := '0';
    O	: out std_logic := '0';
    IO	: out std_logic := '0'
);
end component NX_IOB_O;

component NX_IOB is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I	: in std_logic := '0';
    C	: in std_logic := '0';
    T	: in std_logic := '0';
    O	: out std_logic := '0';
    IO	: inout std_logic := '0'
);
end component NX_IOB;

component NX_IOM is
generic (
    mode_side1   : integer := 0;
    sel_clkw_rx1 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx1 : bit := '0';
    div_tx1      : bit_vector(3 downto 0) := "0000";
    div_rx1      : bit_vector(3 downto 0) := "0000";
--  inv_di_fclk1 : bit := '0';
--  latency1     : bit := '0';
    mode_side2   : integer := 0;
    sel_clkw_rx2 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx2 : bit := '0';
    div_tx2      : bit_vector(3 downto 0) := "0000";
    div_rx2      : bit_vector(3 downto 0) := "0000";
--  inv_di_fclk2 : bit := '0';
--  latency2     : bit := '0';
--  sel_clk_out2 : bit_vector(1 downto 0) := "00";
--  sel_clk_out3 : bit_vector(1 downto 0) := "00";
    sel_clk_out1 : bit := '0';
    sel_clk_out2 : bit := '0';
    mode_io_cal  : bit := '0';
    pads_dict    : string := "";
    pads_path    : string := ""
);
port (
    RTCK1	: in std_logic := '0';
    RRCK1	: in std_logic := '0';
    WTCK1	: in std_logic := '0';
    WRCK1	: in std_logic := '0';
    RTCK2	: in std_logic := '0';
    RRCK2	: in std_logic := '0';
    WTCK2	: in std_logic := '0';
    WRCK2	: in std_logic := '0';
    CTCK	: in std_logic := '0';
    CCK	: in std_logic := '0';
    DCK	: in std_logic := '0';

    C1TW	: in std_logic := '0';
    C1TS	: in std_logic := '0';
    C1RW1	: in std_logic := '0';
    C1RW2	: in std_logic := '0';
    C1RW3	: in std_logic := '0';
    C1RNE	: in std_logic := '0';
    C1RS	: in std_logic := '0';
    C2TW	: in std_logic := '0';
    C2TS	: in std_logic := '0';
    C2RW1	: in std_logic := '0';
    C2RW2	: in std_logic := '0';
    C2RW3	: in std_logic := '0';
    C2RNE	: in std_logic := '0';
    C2RS	: in std_logic := '0';
    FA1	: in std_logic := '0';
    FA2	: in std_logic := '0';
    FA3	: in std_logic := '0';
    FA4	: in std_logic := '0';
    FA5	: in std_logic := '0';
    FZ	: in std_logic := '0';
    DC	: in std_logic := '0';
    DRI1	: in std_logic := '0';
    DRI2	: in std_logic := '0';
    DRI3	: in std_logic := '0';
    DRI4	: in std_logic := '0';
    DRI5	: in std_logic := '0';
    DRI6	: in std_logic := '0';
    DRA1	: in std_logic := '0';
    DRA2	: in std_logic := '0';
    DRA3	: in std_logic := '0';
    DRA4	: in std_logic := '0';
    DRA5	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DOS	: in std_logic := '0';
    DOG	: in std_logic := '0';
    DIS	: in std_logic := '0';
    DIG	: in std_logic := '0';
    DPAS	: in std_logic := '0';
    DPAG	: in std_logic := '0';
    DQSS	: in std_logic := '0';
    DQSG	: in std_logic := '0';
    DS1	: in std_logic := '0';
    DS2	: in std_logic := '0';
    CAD1	: in std_logic := '0';
    CAD2	: in std_logic := '0';
    CAD3	: in std_logic := '0';
    CAD4	: in std_logic := '0';
    CAD5	: in std_logic := '0';
    CAD6	: in std_logic := '0';
    CAP1	: in std_logic := '0';
    CAP2	: in std_logic := '0';
    CAP3	: in std_logic := '0';
    CAP4	: in std_logic := '0';
    CAN1	: in std_logic := '0';
    CAN2	: in std_logic := '0';
    CAN3	: in std_logic := '0';
    CAN4	: in std_logic := '0';
    CAT1	: in std_logic := '0';
    CAT2	: in std_logic := '0';
    CAT3	: in std_logic := '0';
    CAT4	: in std_logic := '0';

    FLD	: out std_logic := '0';
    FLG	: out std_logic := '0';
    C1RED	: out std_logic := '0';
    C2RED	: out std_logic := '0';
    DRO1	: out std_logic := '0';
    DRO2	: out std_logic := '0';
    DRO3	: out std_logic := '0';
    DRO4	: out std_logic := '0';
    DRO5	: out std_logic := '0';
    DRO6	: out std_logic := '0';
    CAL	: out std_logic := '0';

    P1CI1	: in std_logic := '0';
    P1CL	: in std_logic := '0';
    P1CR	: in std_logic := '0';
    P1CO	: out std_logic := '0';
    P1CTI	: in std_logic := '0';
    P1CTO	: out std_logic := '0';
    P1EI1	: in std_logic := '0';
    P1EI2	: in std_logic := '0';
    P1EI3	: in std_logic := '0';
    P1EI4	: in std_logic := '0';
    P1EI5	: in std_logic := '0';
    P1EL	: in std_logic := '0';
    P1ER	: in std_logic := '0';
    P1EO	: out std_logic := '0';
    P1RI	: in std_logic := '0';
    P1RL	: in std_logic := '0';
    P1RR	: in std_logic := '0';
    P1RO1	: out std_logic := '0';
    P1RO2	: out std_logic := '0';
    P1RO3	: out std_logic := '0';
    P1RO4	: out std_logic := '0';
    P1RO5	: out std_logic := '0';

    P2CI1	: in std_logic := '0';
    P2CL	: in std_logic := '0';
    P2CR	: in std_logic := '0';
    P2CO	: out std_logic := '0';
    P2CTI	: in std_logic := '0';
    P2CTO	: out std_logic := '0';
    P2EI1	: in std_logic := '0';
    P2EI2	: in std_logic := '0';
    P2EI3	: in std_logic := '0';
    P2EI4	: in std_logic := '0';
    P2EI5	: in std_logic := '0';
    P2EL	: in std_logic := '0';
    P2ER	: in std_logic := '0';
    P2EO	: out std_logic := '0';
    P2RI	: in std_logic := '0';
    P2RL	: in std_logic := '0';
    P2RR	: in std_logic := '0';
    P2RO1	: out std_logic := '0';
    P2RO2	: out std_logic := '0';
    P2RO3	: out std_logic := '0';
    P2RO4	: out std_logic := '0';
    P2RO5	: out std_logic := '0';

    P3CI1	: in std_logic := '0';
    P3CL	: in std_logic := '0';
    P3CR	: in std_logic := '0';
    P3CO	: out std_logic := '0';
    P3CTI	: in std_logic := '0';
    P3CTO	: out std_logic := '0';
    P3EI1	: in std_logic := '0';
    P3EI2	: in std_logic := '0';
    P3EI3	: in std_logic := '0';
    P3EI4	: in std_logic := '0';
    P3EI5	: in std_logic := '0';
    P3EL	: in std_logic := '0';
    P3ER	: in std_logic := '0';
    P3EO	: out std_logic := '0';
    P3RI	: in std_logic := '0';
    P3RL	: in std_logic := '0';
    P3RR	: in std_logic := '0';
    P3RO1	: out std_logic := '0';
    P3RO2	: out std_logic := '0';
    P3RO3	: out std_logic := '0';
    P3RO4	: out std_logic := '0';
    P3RO5	: out std_logic := '0';

    P4CI1	: in std_logic := '0';
    P4CL	: in std_logic := '0';
    P4CR	: in std_logic := '0';
    P4CO	: out std_logic := '0';
    P4CTI	: in std_logic := '0';
    P4CTO	: out std_logic := '0';
    P4EI1	: in std_logic := '0';
    P4EI2	: in std_logic := '0';
    P4EI3	: in std_logic := '0';
    P4EI4	: in std_logic := '0';
    P4EI5	: in std_logic := '0';
    P4EL	: in std_logic := '0';
    P4ER	: in std_logic := '0';
    P4EO	: out std_logic := '0';
    P4RI	: in std_logic := '0';
    P4RL	: in std_logic := '0';
    P4RR	: in std_logic := '0';
    P4RO1	: out std_logic := '0';
    P4RO2	: out std_logic := '0';
    P4RO3	: out std_logic := '0';
    P4RO4	: out std_logic := '0';
    P4RO5	: out std_logic := '0';

    P5CI1	: in std_logic := '0';
    P5CI2	: in std_logic := '0';
    P5CI3	: in std_logic := '0';
    P5CI4	: in std_logic := '0';
    P5CI5	: in std_logic := '0';
    P5CL	: in std_logic := '0';
    P5CR	: in std_logic := '0';
    P5CO	: out std_logic := '0';
    P5CTI	: in std_logic := '0';
    P5CTO	: out std_logic := '0';
    P5EI1	: in std_logic := '0';
    P5EI2	: in std_logic := '0';
    P5EI3	: in std_logic := '0';
    P5EI4	: in std_logic := '0';
    P5EI5	: in std_logic := '0';
    P5EL	: in std_logic := '0';
    P5ER	: in std_logic := '0';
    P5EO	: out std_logic := '0';
    P5RI	: in std_logic := '0';
    P5RL	: in std_logic := '0';
    P5RR	: in std_logic := '0';
    P5RO1	: out std_logic := '0';
    P5RO2	: out std_logic := '0';
    P5RO3	: out std_logic := '0';
    P5RO4	: out std_logic := '0';
    P5RO5	: out std_logic := '0';

    P6CI1	: in std_logic := '0';
    P6CL	: in std_logic := '0';
    P6CR	: in std_logic := '0';
    P6CO	: out std_logic := '0';
    P6CTI	: in std_logic := '0';
    P6CTO	: out std_logic := '0';
    P6EI1	: in std_logic := '0';
    P6EI2	: in std_logic := '0';
    P6EI3	: in std_logic := '0';
    P6EI4	: in std_logic := '0';
    P6EI5	: in std_logic := '0';
    P6EL	: in std_logic := '0';
    P6ER	: in std_logic := '0';
    P6EO	: out std_logic := '0';
    P6RI	: in std_logic := '0';
    P6RL	: in std_logic := '0';
    P6RR	: in std_logic := '0';
    P6RO1	: out std_logic := '0';
    P6RO2	: out std_logic := '0';
    P6RO3	: out std_logic := '0';
    P6RO4	: out std_logic := '0';
    P6RO5	: out std_logic := '0';

    P7CI1	: in std_logic := '0';
    P7CL	: in std_logic := '0';
    P7CR	: in std_logic := '0';
    P7CO	: out std_logic := '0';
    P7CTI	: in std_logic := '0';
    P7CTO	: out std_logic := '0';
    P7EI1	: in std_logic := '0';
    P7EI2	: in std_logic := '0';
    P7EI3	: in std_logic := '0';
    P7EI4	: in std_logic := '0';
    P7EI5	: in std_logic := '0';
    P7EL	: in std_logic := '0';
    P7ER	: in std_logic := '0';
    P7EO	: out std_logic := '0';
    P7RI	: in std_logic := '0';
    P7RL	: in std_logic := '0';
    P7RR	: in std_logic := '0';
    P7RO1	: out std_logic := '0';
    P7RO2	: out std_logic := '0';
    P7RO3	: out std_logic := '0';
    P7RO4	: out std_logic := '0';
    P7RO5	: out std_logic := '0';

    P8CI1	: in std_logic := '0';
    P8CL	: in std_logic := '0';
    P8CR	: in std_logic := '0';
    P8CO	: out std_logic := '0';
    P8CTI	: in std_logic := '0';
    P8CTO	: out std_logic := '0';
    P8EI1	: in std_logic := '0';
    P8EI2	: in std_logic := '0';
    P8EI3	: in std_logic := '0';
    P8EI4	: in std_logic := '0';
    P8EI5	: in std_logic := '0';
    P8EL	: in std_logic := '0';
    P8ER	: in std_logic := '0';
    P8EO	: out std_logic := '0';
    P8RI	: in std_logic := '0';
    P8RL	: in std_logic := '0';
    P8RR	: in std_logic := '0';
    P8RO1	: out std_logic := '0';
    P8RO2	: out std_logic := '0';
    P8RO3	: out std_logic := '0';
    P8RO4	: out std_logic := '0';
    P8RO5	: out std_logic := '0';

    P9CI1	: in std_logic := '0';
    P9CL	: in std_logic := '0';
    P9CR	: in std_logic := '0';
    P9CO	: out std_logic := '0';
    P9CTI	: in std_logic := '0';
    P9CTO	: out std_logic := '0';
    P9EI1	: in std_logic := '0';
    P9EI2	: in std_logic := '0';
    P9EI3	: in std_logic := '0';
    P9EI4	: in std_logic := '0';
    P9EI5	: in std_logic := '0';
    P9EL	: in std_logic := '0';
    P9ER	: in std_logic := '0';
    P9EO	: out std_logic := '0';
    P9RI	: in std_logic := '0';
    P9RL	: in std_logic := '0';
    P9RR	: in std_logic := '0';
    P9RO1	: out std_logic := '0';
    P9RO2	: out std_logic := '0';
    P9RO3	: out std_logic := '0';
    P9RO4	: out std_logic := '0';
    P9RO5	: out std_logic := '0';

    P10CI1	: in std_logic := '0';
    P10CL	: in std_logic := '0';
    P10CR	: in std_logic := '0';
    P10CO	: out std_logic := '0';
    P10CTI	: in std_logic := '0';
    P10CTO	: out std_logic := '0';
    P10EI1	: in std_logic := '0';
    P10EI2	: in std_logic := '0';
    P10EI3	: in std_logic := '0';
    P10EI4	: in std_logic := '0';
    P10EI5	: in std_logic := '0';
    P10EL	: in std_logic := '0';
    P10ER	: in std_logic := '0';
    P10EO	: out std_logic := '0';
    P10RI	: in std_logic := '0';
    P10RL	: in std_logic := '0';
    P10RR	: in std_logic := '0';
    P10RO1	: out std_logic := '0';
    P10RO2	: out std_logic := '0';
    P10RO3	: out std_logic := '0';
    P10RO4	: out std_logic := '0';
    P10RO5	: out std_logic := '0';

    P11CI1	: in std_logic := '0';
    P11CL	: in std_logic := '0';
    P11CR	: in std_logic := '0';
    P11CO	: out std_logic := '0';
    P11CTI	: in std_logic := '0';
    P11CTO	: out std_logic := '0';
    P11EI1	: in std_logic := '0';
    P11EI2	: in std_logic := '0';
    P11EI3	: in std_logic := '0';
    P11EI4	: in std_logic := '0';
    P11EI5	: in std_logic := '0';
    P11EL	: in std_logic := '0';
    P11ER	: in std_logic := '0';
    P11EO	: out std_logic := '0';
    P11RI	: in std_logic := '0';
    P11RL	: in std_logic := '0';
    P11RR	: in std_logic := '0';
    P11RO1	: out std_logic := '0';
    P11RO2	: out std_logic := '0';
    P11RO3	: out std_logic := '0';
    P11RO4	: out std_logic := '0';
    P11RO5	: out std_logic := '0';

    P12CI1	: in std_logic := '0';
    P12CL	: in std_logic := '0';
    P12CR	: in std_logic := '0';
    P12CO	: out std_logic := '0';
    P12CTI	: in std_logic := '0';
    P12CTO	: out std_logic := '0';
    P12EI1	: in std_logic := '0';
    P12EI2	: in std_logic := '0';
    P12EI3	: in std_logic := '0';
    P12EI4	: in std_logic := '0';
    P12EI5	: in std_logic := '0';
    P12EL	: in std_logic := '0';
    P12ER	: in std_logic := '0';
    P12EO	: out std_logic := '0';
    P12RI	: in std_logic := '0';
    P12RL	: in std_logic := '0';
    P12RR	: in std_logic := '0';
    P12RO1	: out std_logic := '0';
    P12RO2	: out std_logic := '0';
    P12RO3	: out std_logic := '0';
    P12RO4	: out std_logic := '0';
    P12RO5	: out std_logic := '0';

    P13CI1	: in std_logic := '0';
    P13CL	: in std_logic := '0';
    P13CR	: in std_logic := '0';
    P13CO	: out std_logic := '0';
    P13CTI	: in std_logic := '0';
    P13CTO	: out std_logic := '0';
    P13EI1	: in std_logic := '0';
    P13EI2	: in std_logic := '0';
    P13EI3	: in std_logic := '0';
    P13EI4	: in std_logic := '0';
    P13EI5	: in std_logic := '0';
    P13EL	: in std_logic := '0';
    P13ER	: in std_logic := '0';
    P13EO	: out std_logic := '0';
    P13RI	: in std_logic := '0';
    P13RL	: in std_logic := '0';
    P13RR	: in std_logic := '0';
    P13RO1	: out std_logic := '0';
    P13RO2	: out std_logic := '0';
    P13RO3	: out std_logic := '0';
    P13RO4	: out std_logic := '0';
    P13RO5	: out std_logic := '0';

    P14CI1	: in std_logic := '0';
    P14CL	: in std_logic := '0';
    P14CR	: in std_logic := '0';
    P14CO	: out std_logic := '0';
    P14CTI	: in std_logic := '0';
    P14CTO	: out std_logic := '0';
    P14EI1	: in std_logic := '0';
    P14EI2	: in std_logic := '0';
    P14EI3	: in std_logic := '0';
    P14EI4	: in std_logic := '0';
    P14EI5	: in std_logic := '0';
    P14EL	: in std_logic := '0';
    P14ER	: in std_logic := '0';
    P14EO	: out std_logic := '0';
    P14RI	: in std_logic := '0';
    P14RL	: in std_logic := '0';
    P14RR	: in std_logic := '0';
    P14RO1	: out std_logic := '0';
    P14RO2	: out std_logic := '0';
    P14RO3	: out std_logic := '0';
    P14RO4	: out std_logic := '0';
    P14RO5	: out std_logic := '0';

    P15CI1	: in std_logic := '0';
    P15CL	: in std_logic := '0';
    P15CR	: in std_logic := '0';
    P15CO	: out std_logic := '0';
    P15CTI	: in std_logic := '0';
    P15CTO	: out std_logic := '0';
    P15EI1	: in std_logic := '0';
    P15EI2	: in std_logic := '0';
    P15EI3	: in std_logic := '0';
    P15EI4	: in std_logic := '0';
    P15EI5	: in std_logic := '0';
    P15EL	: in std_logic := '0';
    P15ER	: in std_logic := '0';
    P15EO	: out std_logic := '0';
    P15RI	: in std_logic := '0';
    P15RL	: in std_logic := '0';
    P15RR	: in std_logic := '0';
    P15RO1	: out std_logic := '0';
    P15RO2	: out std_logic := '0';
    P15RO3	: out std_logic := '0';
    P15RO4	: out std_logic := '0';
    P15RO5	: out std_logic := '0';

    P16CI1	: in std_logic := '0';
    P16CL	: in std_logic := '0';
    P16CR	: in std_logic := '0';
    P16CO	: out std_logic := '0';
    P16CTI	: in std_logic := '0';
    P16CTO	: out std_logic := '0';
    P16EI1	: in std_logic := '0';
    P16EI2	: in std_logic := '0';
    P16EI3	: in std_logic := '0';
    P16EI4	: in std_logic := '0';
    P16EI5	: in std_logic := '0';
    P16EL	: in std_logic := '0';
    P16ER	: in std_logic := '0';
    P16EO	: out std_logic := '0';
    P16RI	: in std_logic := '0';
    P16RL	: in std_logic := '0';
    P16RR	: in std_logic := '0';
    P16RO1	: out std_logic := '0';
    P16RO2	: out std_logic := '0';
    P16RO3	: out std_logic := '0';
    P16RO4	: out std_logic := '0';
    P16RO5	: out std_logic := '0';

    P17CI1	: in std_logic := '0';
    P17CL	: in std_logic := '0';
    P17CR	: in std_logic := '0';
    P17CO	: out std_logic := '0';
    P17CTI	: in std_logic := '0';
    P17CTO	: out std_logic := '0';
    P17EI1	: in std_logic := '0';
    P17EI2	: in std_logic := '0';
    P17EI3	: in std_logic := '0';
    P17EI4	: in std_logic := '0';
    P17EI5	: in std_logic := '0';
    P17EL	: in std_logic := '0';
    P17ER	: in std_logic := '0';
    P17EO	: out std_logic := '0';
    P17RI	: in std_logic := '0';
    P17RL	: in std_logic := '0';
    P17RR	: in std_logic := '0';
    P17RO1	: out std_logic := '0';
    P17RO2	: out std_logic := '0';
    P17RO3	: out std_logic := '0';
    P17RO4	: out std_logic := '0';
    P17RO5	: out std_logic := '0';

    P18CI1	: in std_logic := '0';
    P18CL	: in std_logic := '0';
    P18CR	: in std_logic := '0';
    P18CO	: out std_logic := '0';
    P18CTI	: in std_logic := '0';
    P18CTO	: out std_logic := '0';
    P18EI1	: in std_logic := '0';
    P18EI2	: in std_logic := '0';
    P18EI3	: in std_logic := '0';
    P18EI4	: in std_logic := '0';
    P18EI5	: in std_logic := '0';
    P18EL	: in std_logic := '0';
    P18ER	: in std_logic := '0';
    P18EO	: out std_logic := '0';
    P18RI	: in std_logic := '0';
    P18RL	: in std_logic := '0';
    P18RR	: in std_logic := '0';
    P18RO1	: out std_logic := '0';
    P18RO2	: out std_logic := '0';
    P18RO3	: out std_logic := '0';
    P18RO4	: out std_logic := '0';
    P18RO5	: out std_logic := '0';

    P19CI1	: in std_logic := '0';
    P19CL	: in std_logic := '0';
    P19CR	: in std_logic := '0';
    P19CO	: out std_logic := '0';
    P19CTI	: in std_logic := '0';
    P19CTO	: out std_logic := '0';
    P19EI1	: in std_logic := '0';
    P19EI2	: in std_logic := '0';
    P19EI3	: in std_logic := '0';
    P19EI4	: in std_logic := '0';
    P19EI5	: in std_logic := '0';
    P19EL	: in std_logic := '0';
    P19ER	: in std_logic := '0';
    P19EO	: out std_logic := '0';
    P19RI	: in std_logic := '0';
    P19RL	: in std_logic := '0';
    P19RR	: in std_logic := '0';
    P19RO1	: out std_logic := '0';
    P19RO2	: out std_logic := '0';
    P19RO3	: out std_logic := '0';
    P19RO4	: out std_logic := '0';
    P19RO5	: out std_logic := '0';

    P20CI1	: in std_logic := '0';
    P20CL	: in std_logic := '0';
    P20CR	: in std_logic := '0';
    P20CO	: out std_logic := '0';
    P20CTI	: in std_logic := '0';
    P20CTO	: out std_logic := '0';
    P20EI1	: in std_logic := '0';
    P20EI2	: in std_logic := '0';
    P20EI3	: in std_logic := '0';
    P20EI4	: in std_logic := '0';
    P20EI5	: in std_logic := '0';
    P20EL	: in std_logic := '0';
    P20ER	: in std_logic := '0';
    P20EO	: out std_logic := '0';
    P20RI	: in std_logic := '0';
    P20RL	: in std_logic := '0';
    P20RR	: in std_logic := '0';
    P20RO1	: out std_logic := '0';
    P20RO2	: out std_logic := '0';
    P20RO3	: out std_logic := '0';
    P20RO4	: out std_logic := '0';
    P20RO5	: out std_logic := '0';

    P21CI1	: in std_logic := '0';
    P21CL	: in std_logic := '0';
    P21CR	: in std_logic := '0';
    P21CO	: out std_logic := '0';
    P21CTI	: in std_logic := '0';
    P21CTO	: out std_logic := '0';
    P21EI1	: in std_logic := '0';
    P21EI2	: in std_logic := '0';
    P21EI3	: in std_logic := '0';
    P21EI4	: in std_logic := '0';
    P21EI5	: in std_logic := '0';
    P21EL	: in std_logic := '0';
    P21ER	: in std_logic := '0';
    P21EO	: out std_logic := '0';
    P21RI	: in std_logic := '0';
    P21RL	: in std_logic := '0';
    P21RR	: in std_logic := '0';
    P21RO1	: out std_logic := '0';
    P21RO2	: out std_logic := '0';
    P21RO3	: out std_logic := '0';
    P21RO4	: out std_logic := '0';
    P21RO5	: out std_logic := '0';

    P22CI1	: in std_logic := '0';
    P22CL	: in std_logic := '0';
    P22CR	: in std_logic := '0';
    P22CO	: out std_logic := '0';
    P22CTI	: in std_logic := '0';
    P22CTO	: out std_logic := '0';
    P22EI1	: in std_logic := '0';
    P22EI2	: in std_logic := '0';
    P22EI3	: in std_logic := '0';
    P22EI4	: in std_logic := '0';
    P22EI5	: in std_logic := '0';
    P22EL	: in std_logic := '0';
    P22ER	: in std_logic := '0';
    P22EO	: out std_logic := '0';
    P22RI	: in std_logic := '0';
    P22RL	: in std_logic := '0';
    P22RR	: in std_logic := '0';
    P22RO1	: out std_logic := '0';
    P22RO2	: out std_logic := '0';
    P22RO3	: out std_logic := '0';
    P22RO4	: out std_logic := '0';
    P22RO5	: out std_logic := '0';

    P23CI1	: in std_logic := '0';
    P23CL	: in std_logic := '0';
    P23CR	: in std_logic := '0';
    P23CO	: out std_logic := '0';
    P23CTI	: in std_logic := '0';
    P23CTO	: out std_logic := '0';
    P23EI1	: in std_logic := '0';
    P23EI2	: in std_logic := '0';
    P23EI3	: in std_logic := '0';
    P23EI4	: in std_logic := '0';
    P23EI5	: in std_logic := '0';
    P23EL	: in std_logic := '0';
    P23ER	: in std_logic := '0';
    P23EO	: out std_logic := '0';
    P23RI	: in std_logic := '0';
    P23RL	: in std_logic := '0';
    P23RR	: in std_logic := '0';
    P23RO1	: out std_logic := '0';
    P23RO2	: out std_logic := '0';
    P23RO3	: out std_logic := '0';
    P23RO4	: out std_logic := '0';
    P23RO5	: out std_logic := '0';

    P24CI1	: in std_logic := '0';
    P24CL	: in std_logic := '0';
    P24CR	: in std_logic := '0';
    P24CO	: out std_logic := '0';
    P24CTI	: in std_logic := '0';
    P24CTO	: out std_logic := '0';
    P24EI1	: in std_logic := '0';
    P24EI2	: in std_logic := '0';
    P24EI3	: in std_logic := '0';
    P24EI4	: in std_logic := '0';
    P24EI5	: in std_logic := '0';
    P24EL	: in std_logic := '0';
    P24ER	: in std_logic := '0';
    P24EO	: out std_logic := '0';
    P24RI	: in std_logic := '0';
    P24RL	: in std_logic := '0';
    P24RR	: in std_logic := '0';
    P24RO1	: out std_logic := '0';
    P24RO2	: out std_logic := '0';
    P24RO3	: out std_logic := '0';
    P24RO4	: out std_logic := '0';
    P24RO5	: out std_logic := '0';

    P25CI1	: in std_logic := '0';
    P25CI2	: in std_logic := '0';
    P25CI3	: in std_logic := '0';
    P25CI4	: in std_logic := '0';
    P25CI5	: in std_logic := '0';
    P25CL	: in std_logic := '0';
    P25CR	: in std_logic := '0';
    P25CO	: out std_logic := '0';
    P25CTI	: in std_logic := '0';
    P25CTO	: out std_logic := '0';
    P25EI1	: in std_logic := '0';
    P25EI2	: in std_logic := '0';
    P25EI3	: in std_logic := '0';
    P25EI4	: in std_logic := '0';
    P25EI5	: in std_logic := '0';
    P25EL	: in std_logic := '0';
    P25ER	: in std_logic := '0';
    P25EO	: out std_logic := '0';
    P25RI	: in std_logic := '0';
    P25RL	: in std_logic := '0';
    P25RR	: in std_logic := '0';
    P25RO1	: out std_logic := '0';
    P25RO2	: out std_logic := '0';
    P25RO3	: out std_logic := '0';
    P25RO4	: out std_logic := '0';
    P25RO5	: out std_logic := '0';

    P26CI1	: in std_logic := '0';
    P26CL	: in std_logic := '0';
    P26CR	: in std_logic := '0';
    P26CO	: out std_logic := '0';
    P26CTI	: in std_logic := '0';
    P26CTO	: out std_logic := '0';
    P26EI1	: in std_logic := '0';
    P26EI2	: in std_logic := '0';
    P26EI3	: in std_logic := '0';
    P26EI4	: in std_logic := '0';
    P26EI5	: in std_logic := '0';
    P26EL	: in std_logic := '0';
    P26ER	: in std_logic := '0';
    P26EO	: out std_logic := '0';
    P26RI	: in std_logic := '0';
    P26RL	: in std_logic := '0';
    P26RR	: in std_logic := '0';
    P26RO1	: out std_logic := '0';
    P26RO2	: out std_logic := '0';
    P26RO3	: out std_logic := '0';
    P26RO4	: out std_logic := '0';
    P26RO5	: out std_logic := '0';

    P27CI1	: in std_logic := '0';
    P27CL	: in std_logic := '0';
    P27CR	: in std_logic := '0';
    P27CO	: out std_logic := '0';
    P27CTI	: in std_logic := '0';
    P27CTO	: out std_logic := '0';
    P27EI1	: in std_logic := '0';
    P27EI2	: in std_logic := '0';
    P27EI3	: in std_logic := '0';
    P27EI4	: in std_logic := '0';
    P27EI5	: in std_logic := '0';
    P27EL	: in std_logic := '0';
    P27ER	: in std_logic := '0';
    P27EO	: out std_logic := '0';
    P27RI	: in std_logic := '0';
    P27RL	: in std_logic := '0';
    P27RR	: in std_logic := '0';
    P27RO1	: out std_logic := '0';
    P27RO2	: out std_logic := '0';
    P27RO3	: out std_logic := '0';
    P27RO4	: out std_logic := '0';
    P27RO5	: out std_logic := '0';

    P28CI1	: in std_logic := '0';
    P28CL	: in std_logic := '0';
    P28CR	: in std_logic := '0';
    P28CO	: out std_logic := '0';
    P28CTI	: in std_logic := '0';
    P28CTO	: out std_logic := '0';
    P28EI1	: in std_logic := '0';
    P28EI2	: in std_logic := '0';
    P28EI3	: in std_logic := '0';
    P28EI4	: in std_logic := '0';
    P28EI5	: in std_logic := '0';
    P28EL	: in std_logic := '0';
    P28ER	: in std_logic := '0';
    P28EO	: out std_logic := '0';
    P28RI	: in std_logic := '0';
    P28RL	: in std_logic := '0';
    P28RR	: in std_logic := '0';
    P28RO1	: out std_logic := '0';
    P28RO2	: out std_logic := '0';
    P28RO3	: out std_logic := '0';
    P28RO4	: out std_logic := '0';
    P28RO5	: out std_logic := '0';

    P29CI1	: in std_logic := '0';
    P29CL	: in std_logic := '0';
    P29CR	: in std_logic := '0';
    P29CO	: out std_logic := '0';
    P29CTI	: in std_logic := '0';
    P29CTO	: out std_logic := '0';
    P29EI1	: in std_logic := '0';
    P29EI2	: in std_logic := '0';
    P29EI3	: in std_logic := '0';
    P29EI4	: in std_logic := '0';
    P29EI5	: in std_logic := '0';
    P29EL	: in std_logic := '0';
    P29ER	: in std_logic := '0';
    P29EO	: out std_logic := '0';
    P29RI	: in std_logic := '0';
    P29RL	: in std_logic := '0';
    P29RR	: in std_logic := '0';
    P29RO1	: out std_logic := '0';
    P29RO2	: out std_logic := '0';
    P29RO3	: out std_logic := '0';
    P29RO4	: out std_logic := '0';
    P29RO5	: out std_logic := '0';

    P30CI1	: in std_logic := '0';
    P30CL	: in std_logic := '0';
    P30CR	: in std_logic := '0';
    P30CO	: out std_logic := '0';
    P30CTI	: in std_logic := '0';
    P30CTO	: out std_logic := '0';
    P30EI1	: in std_logic := '0';
    P30EI2	: in std_logic := '0';
    P30EI3	: in std_logic := '0';
    P30EI4	: in std_logic := '0';
    P30EI5	: in std_logic := '0';
    P30EL	: in std_logic := '0';
    P30ER	: in std_logic := '0';
    P30EO	: out std_logic := '0';
    P30RI	: in std_logic := '0';
    P30RL	: in std_logic := '0';
    P30RR	: in std_logic := '0';
    P30RO1	: out std_logic := '0';
    P30RO2	: out std_logic := '0';
    P30RO3	: out std_logic := '0';
    P30RO4	: out std_logic := '0';
    P30RO5	: out std_logic := '0'
);
end component NX_IOM;

component NX_IOM_CONTROL is
generic (
    mode_side1   : integer := 0;
    sel_clkw_rx1 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx1 : bit := '0';
    div_tx1      : bit_vector(3 downto 0) := "0000";
    div_rx1      : bit_vector(3 downto 0) := "0000";
    inv_di_fclk1 : bit := '0';
    latency1     : bit := '0';
    mode_side2   : integer := 0;
    sel_clkw_rx2 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx2 : bit := '0';
    div_tx2      : bit_vector(3 downto 0) := "0000";
    div_rx2      : bit_vector(3 downto 0) := "0000";
    inv_di_fclk2 : bit := '0';
    latency2     : bit := '0';
    sel_clk_out1 : bit := '0';
    sel_clk_out2 : bit := '0';
    mode_rpath   : string := "";
    mode_epath   : string := "";
    mode_cpath   : string := "";
    mode_tpath   : string := "";
    mode_io_cal  : bit    := '0';
    location  : string    := ""
);
port (
    RTCK1	: in std_logic := '0';
    RRCK1	: in std_logic := '0';
    WTCK1	: in std_logic := '0';
    WRCK1	: in std_logic := '0';
    RTCK2	: in std_logic := '0';
    RRCK2	: in std_logic := '0';
    WTCK2	: in std_logic := '0';
    WRCK2	: in std_logic := '0';
    CTCK	: in std_logic := '0';

    C1TW	: in std_logic := '0';
    C1TS	: in std_logic := '0';
    C1RW1	: in std_logic := '0';
    C1RW2	: in std_logic := '0';
    C1RW3	: in std_logic := '0';
    C1RNE	: in std_logic := '0';
    C1RS	: in std_logic := '0';
    C2TW	: in std_logic := '0';
    C2TS	: in std_logic := '0';
    C2RW1	: in std_logic := '0';
    C2RW2	: in std_logic := '0';
    C2RW3	: in std_logic := '0';
    C2RNE	: in std_logic := '0';
    C2RS	: in std_logic := '0';
    FA1	: in std_logic := '0';
    FA2	: in std_logic := '0';
    FA3	: in std_logic := '0';
    FA4	: in std_logic := '0';
    FA5	: in std_logic := '0';
    FA6	: in std_logic := '0';
    FZ	: in std_logic := '0';
    DC	: in std_logic := '0';
    CCK	: in std_logic := '0';
    DCK	: in std_logic := '0';
    DRI1	: in std_logic := '0';
    DRI2	: in std_logic := '0';
    DRI3	: in std_logic := '0';
    DRI4	: in std_logic := '0';
    DRI5	: in std_logic := '0';
    DRI6	: in std_logic := '0';
    DRA1	: in std_logic := '0';
    DRA2	: in std_logic := '0';
    DRA3	: in std_logic := '0';
    DRA4	: in std_logic := '0';
    DRA5	: in std_logic := '0';
    DRA6	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DOS	: in std_logic := '0';
    DOG	: in std_logic := '0';
    DIS	: in std_logic := '0';
    DIG	: in std_logic := '0';
    DPAS	: in std_logic := '0';
    DPAG	: in std_logic := '0';
    DQSS	: in std_logic := '0';
    DQSG	: in std_logic := '0';
    DS1	: in std_logic := '0';
    DS2	: in std_logic := '0';
    CAD1	: in std_logic := '0';
    CAD2	: in std_logic := '0';
    CAD3	: in std_logic := '0';
    CAD4	: in std_logic := '0';
    CAD5	: in std_logic := '0';
    CAD6	: in std_logic := '0';
    CAP1	: in std_logic := '0';
    CAP2	: in std_logic := '0';
    CAP3	: in std_logic := '0';
    CAP4	: in std_logic := '0';
    CAN1	: in std_logic := '0';
    CAN2	: in std_logic := '0';
    CAN3	: in std_logic := '0';
    CAN4	: in std_logic := '0';
    CAT1	: in std_logic := '0';
    CAT2	: in std_logic := '0';
    CAT3	: in std_logic := '0';
    CAT4	: in std_logic := '0';

    FLD	: out std_logic := '0';
    FLG	: out std_logic := '0';
    C1RED	: out std_logic := '0';
    C2RED	: out std_logic := '0';
    DRO1	: out std_logic := '0';
    DRO2	: out std_logic := '0';
    DRO3	: out std_logic := '0';
    DRO4	: out std_logic := '0';
    DRO5	: out std_logic := '0';
    DRO6	: out std_logic := '0';
    CAL	: out std_logic := '0';

    LINK1	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK2	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK3	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK4	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK5	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK6	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK7	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK8	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK9	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK10	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK11	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK12	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK13	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK14	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK15	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK16	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK17	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK18	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK19	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK20	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK21	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK22	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK23	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK24	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK25	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK26	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK27	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK28	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK29	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK30	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK31	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK32	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK33	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0');
    LINK34	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0')
);
end component NX_IOM_CONTROL;

component NX_IOM_DRIVER is
generic (
    epath_edge      : bit := '0';
    epath_init      : bit := '0';
    epath_load      : bit := '0';
    epath_mode      : bit_vector(3 downto 0) := "0000";
    epath_sync      : bit := '0';
    epath_dynamic   : bit := '0'; --0: off/fixed delay, 1: dynamic delay

    rpath_edge      : bit := '0';
    rpath_init      : bit := '0';
    rpath_load      : bit := '0';
    rpath_mode      : bit_vector(3 downto 0) := "0000";
    rpath_sync      : bit := '0';
    rpath_dynamic   : bit := '0'; --0: off/fixed delay, 1: dynamic delay

    cpath_edge      : bit := '0';
    cpath_init      : bit := '0';
    cpath_load      : bit := '0';
    cpath_mode      : bit_vector(3 downto 0) := "0000";
    cpath_sync      : bit := '0';
    cpath_inv       : bit := '0';

    tpath_mode      : bit_vector(1 downto 0) := "00";

    location        : string := "";
    chained         : bit    := '0';
    symbol          : string := ""
);
port (
    EI1	: in std_logic := '0';
    EI2	: in std_logic := '0';
    EI3	: in std_logic := '0';
    EI4	: in std_logic := '0';
    EI5	: in std_logic := '0';
    EL	: in std_logic := '0';
    ER	: in std_logic := '0';
    CI1	: in std_logic := '0';
    CI2	: in std_logic := '0';
    CI3	: in std_logic := '0';
    CI4	: in std_logic := '0';
    CI5	: in std_logic := '0';
    CL	: in std_logic := '0';
    CR	: in std_logic := '0';
    CTI	: in std_logic := '0';
    RI	: in std_logic := '0';
    RL	: in std_logic := '0';
    RR	: in std_logic := '0';
    CO	: out std_logic := '0';
    EO	: out std_logic := '0';
    RO1	: out std_logic := '0';
    RO2	: out std_logic := '0';
    RO3	: out std_logic := '0';
    RO4	: out std_logic := '0';
    RO5	: out std_logic := '0';
    CTO	: out std_logic := '0';
    LINK	: inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0) := (others => '0')
);
end component NX_IOM_DRIVER;

component NX_IOM_SERDES is
generic (
    data_size : integer range 2 to 10 := 5;
    location  : string := ""
);
port (
    RTCK	: in std_logic := '0';
    WRCK	: in std_logic := '0';
    WTCK	: in std_logic := '0';
    RRCK	: in std_logic := '0';
    TRST	: in std_logic := '0';
    RRST	: in std_logic := '0';
    CTCK	: in std_logic := '0';
    DCK	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DIG	: in std_logic := '0';
    DS	: in std_logic_vector(1 downto 0) := (others => '0');
    DRA	: in std_logic_vector(5 downto 0) := (others => '0');
    DRI	: in std_logic_vector(5 downto 0) := (others => '0');
    FZ	: in std_logic := '0';
    DRO	: out std_logic_vector(5 downto 0) := (others => '0');
    DID	: out std_logic_vector(5 downto 0) := (others => '0');
    FLD	: out std_logic := '0';
    FLG	: out std_logic := '0';
    LINKN	: inout std_logic_vector(IOM_LINK_SIZE-1 downto 0) := (others => '0');
    LINKP	: inout std_logic_vector(IOM_LINK_SIZE-1 downto 0) := (others => '0')
);
end component NX_IOM_SERDES;

component NX_LUT is
generic (
    lut_table : bit_vector(15 downto 0) := B"0000000000000000" -- truthTable t15 ... t0
);
port (
    I1	: in std_logic := '0';
    I2	: in std_logic := '0';
    I3	: in std_logic := '0';
    I4	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_LUT;

component NX_DFF is
generic (
    dff_edge   : bit := '0';
    dff_init   : bit := '0';
    dff_load   : bit := '0';
    dff_sync   : bit := '0';
    dff_ctxt   : std_logic := 'U'
);
port (
    I	: in std_logic := '0';
    CK	: in std_logic := '0';
    L	: in std_logic := '0';
    R	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_DFF;

component NX_BFF is
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_BFF;

component NX_DFR is
generic (
    location   : string := "";
    iobname    : string := "";
    path       : integer := 0;
    mode       : integer := 0;
    ring       : integer := 0;
    dff_edge   : bit := '0';
    dff_init   : bit := '0';
    dff_load   : bit := '0';
    dff_sync   : bit := '0'
);
port (
    I	: in std_logic := '0';
    CK	: in std_logic := '0';
    L	: in std_logic := '0';
    R	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_DFR;

component NX_BFR is
generic (
    location   : string := "";
    iobname    : string := "";
    path       : integer := 0;
    mode       : integer := 0;
    ring       : integer := 0
);
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_BFR;

component NX_CY is
generic (
    add_carry  : integer := 0      -- 0: low - 1: high - 2: propagate
);
port (
    A1	: in std_logic := '0';
    A2	: in std_logic := '0';
    A3	: in std_logic := '0';
    A4	: in std_logic := '0';
    B1	: in std_logic := '0';
    B2	: in std_logic := '0';
    B3	: in std_logic := '0';
    B4	: in std_logic := '0';
    CI	: in std_logic := '0';
    CO	: out std_logic := '0';
    S1	: out std_logic := '0';
    S2	: out std_logic := '0';
    S3	: out std_logic := '0';
    S4	: out std_logic := '0'
);
end component NX_CY;

component NX_RFB is
generic (
    rck_edge  : bit := '0';   -- 0: read clock rising edge - 1: read clock falling edge
    wck_edge  : bit := '0';   -- 0: write clock rising edge - 1: write clock falling edge
    mem_ctxt  : string := "" -- memory initial context
);
port (
    RCK	: in std_logic := '0';
    WCK	: in std_logic := '0';
    I1	: in std_logic := '0';
    I2	: in std_logic := '0';
    I3	: in std_logic := '0';
    I4	: in std_logic := '0';
    I5	: in std_logic := '0';
    I6	: in std_logic := '0';
    I7	: in std_logic := '0';
    I8	: in std_logic := '0';
    I9	: in std_logic := '0';
    I10	: in std_logic := '0';
    I11	: in std_logic := '0';
    I12	: in std_logic := '0';
    I13	: in std_logic := '0';
    I14	: in std_logic := '0';
    I15	: in std_logic := '0';
    I16	: in std_logic := '0';
    COR	: out std_logic := '0';
    ERR	: out std_logic := '0';
    O1	: out std_logic := '0';
    O2	: out std_logic := '0';
    O3	: out std_logic := '0';
    O4	: out std_logic := '0';
    O5	: out std_logic := '0';
    O6	: out std_logic := '0';
    O7	: out std_logic := '0';
    O8	: out std_logic := '0';
    O9	: out std_logic := '0';
    O10	: out std_logic := '0';
    O11	: out std_logic := '0';
    O12	: out std_logic := '0';
    O13	: out std_logic := '0';
    O14	: out std_logic := '0';
    O15	: out std_logic := '0';
    O16	: out std_logic := '0';
    RA1	: in std_logic := '0';
    RA2	: in std_logic := '0';
    RA3	: in std_logic := '0';
    RA4	: in std_logic := '0';
    RA5	: in std_logic := '0';
    RA6	: in std_logic := '0';
    RE	: in std_logic := '0';
    WA1	: in std_logic := '0';
    WA2	: in std_logic := '0';
    WA3	: in std_logic := '0';
    WA4	: in std_logic := '0';
    WA5	: in std_logic := '0';
    WA6	: in std_logic := '0';
    WE	: in std_logic := '0'
);
end component NX_RFB;

component NX_RFB_WRAP is
generic (
    rck_edge  : bit := '0';   -- 0: read clock rising edge - 1: read clock falling edge
    wck_edge  : bit := '0';   -- 0: write clock rising edge - 1: write clock falling edge
    mem_ctxt  : string := "" -- memory initial context
);
port (
    RCK	: in std_logic := '0';
    WCK	: in std_logic := '0';
    I	: in std_logic_vector(15 downto 0) := (others => '0');
    COR	: out std_logic := '0';
    ERR	: out std_logic := '0';
    O	: out std_logic_vector(15 downto 0) := (others => '0');
    RA	: in std_logic_vector(5 downto 0) := (others => '0');
    RE	: in std_logic := '0';
    WA	: in std_logic_vector(5 downto 0) := (others => '0');
    WE	: in std_logic := '0'
);
end component NX_RFB_WRAP;

component NX_CKS is
port (
    CKI	: in std_logic := '0';
    CMD	: in std_logic := '0';
    CKO	: out std_logic := '0'
);
end component NX_CKS;

component NX_DSP is
generic (
    std_mode    : string := ""; -- standard mode [ADD36, SUB36, SMUL18, UMUL18, ...] empty for raw
    raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";        -- MUX
    raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";         -- PRC
    raw_config2 : bit_vector(12 downto 0) := B"0000000000000";               -- PRR
    raw_config3 : bit_vector( 6 downto 0) := B"0000000"                      -- ALU
);
port (
    A1	: in std_logic := '0';
    A2	: in std_logic := '0';
    A3	: in std_logic := '0';
    A4	: in std_logic := '0';
    A5	: in std_logic := '0';
    A6	: in std_logic := '0';
    A7	: in std_logic := '0';
    A8	: in std_logic := '0';
    A9	: in std_logic := '0';
    A10	: in std_logic := '0';
    A11	: in std_logic := '0';
    A12	: in std_logic := '0';
    A13	: in std_logic := '0';
    A14	: in std_logic := '0';
    A15	: in std_logic := '0';
    A16	: in std_logic := '0';
    A17	: in std_logic := '0';
    A18	: in std_logic := '0';
    A19	: in std_logic := '0';
    A20	: in std_logic := '0';
    A21	: in std_logic := '0';
    A22	: in std_logic := '0';
    A23	: in std_logic := '0';
    A24	: in std_logic := '0';

    B1	: in std_logic := '0';
    B2	: in std_logic := '0';
    B3	: in std_logic := '0';
    B4	: in std_logic := '0';
    B5	: in std_logic := '0';
    B6	: in std_logic := '0';
    B7	: in std_logic := '0';
    B8	: in std_logic := '0';
    B9	: in std_logic := '0';
    B10	: in std_logic := '0';
    B11	: in std_logic := '0';
    B12	: in std_logic := '0';
    B13	: in std_logic := '0';
    B14	: in std_logic := '0';
    B15	: in std_logic := '0';
    B16	: in std_logic := '0';
    B17	: in std_logic := '0';
    B18	: in std_logic := '0';

    C1	: in std_logic := '0';
    C2	: in std_logic := '0';
    C3	: in std_logic := '0';
    C4	: in std_logic := '0';
    C5	: in std_logic := '0';
    C6	: in std_logic := '0';
    C7	: in std_logic := '0';
    C8	: in std_logic := '0';
    C9	: in std_logic := '0';
    C10	: in std_logic := '0';
    C11	: in std_logic := '0';
    C12	: in std_logic := '0';
    C13	: in std_logic := '0';
    C14	: in std_logic := '0';
    C15	: in std_logic := '0';
    C16	: in std_logic := '0';
    C17	: in std_logic := '0';
    C18	: in std_logic := '0';
    C19	: in std_logic := '0';
    C20	: in std_logic := '0';
    C21	: in std_logic := '0';
    C22	: in std_logic := '0';
    C23	: in std_logic := '0';
    C24	: in std_logic := '0';
    C25	: in std_logic := '0';
    C26	: in std_logic := '0';
    C27	: in std_logic := '0';
    C28	: in std_logic := '0';
    C29	: in std_logic := '0';
    C30	: in std_logic := '0';
    C31	: in std_logic := '0';
    C32	: in std_logic := '0';
    C33	: in std_logic := '0';
    C34	: in std_logic := '0';
    C35	: in std_logic := '0';
    C36	: in std_logic := '0';

    CAI1	: in std_logic := '0';
    CAI2	: in std_logic := '0';
    CAI3	: in std_logic := '0';
    CAI4	: in std_logic := '0';
    CAI5	: in std_logic := '0';
    CAI6	: in std_logic := '0';
    CAI7	: in std_logic := '0';
    CAI8	: in std_logic := '0';
    CAI9	: in std_logic := '0';
    CAI10	: in std_logic := '0';
    CAI11	: in std_logic := '0';
    CAI12	: in std_logic := '0';
    CAI13	: in std_logic := '0';
    CAI14	: in std_logic := '0';
    CAI15	: in std_logic := '0';
    CAI16	: in std_logic := '0';
    CAI17	: in std_logic := '0';
    CAI18	: in std_logic := '0';

    CAO1	: out std_logic := '0';
    CAO2	: out std_logic := '0';
    CAO3	: out std_logic := '0';
    CAO4	: out std_logic := '0';
    CAO5	: out std_logic := '0';
    CAO6	: out std_logic := '0';
    CAO7	: out std_logic := '0';
    CAO8	: out std_logic := '0';
    CAO9	: out std_logic := '0';
    CAO10	: out std_logic := '0';
    CAO11	: out std_logic := '0';
    CAO12	: out std_logic := '0';
    CAO13	: out std_logic := '0';
    CAO14	: out std_logic := '0';
    CAO15	: out std_logic := '0';
    CAO16	: out std_logic := '0';
    CAO17	: out std_logic := '0';
    CAO18	: out std_logic := '0';

    CBI1	: in std_logic := '0';
    CBI2	: in std_logic := '0';
    CBI3	: in std_logic := '0';
    CBI4	: in std_logic := '0';
    CBI5	: in std_logic := '0';
    CBI6	: in std_logic := '0';
    CBI7	: in std_logic := '0';
    CBI8	: in std_logic := '0';
    CBI9	: in std_logic := '0';
    CBI10	: in std_logic := '0';
    CBI11	: in std_logic := '0';
    CBI12	: in std_logic := '0';
    CBI13	: in std_logic := '0';
    CBI14	: in std_logic := '0';
    CBI15	: in std_logic := '0';
    CBI16	: in std_logic := '0';
    CBI17	: in std_logic := '0';
    CBI18	: in std_logic := '0';

    CBO1	: out std_logic := '0';
    CBO2	: out std_logic := '0';
    CBO3	: out std_logic := '0';
    CBO4	: out std_logic := '0';
    CBO5	: out std_logic := '0';
    CBO6	: out std_logic := '0';
    CBO7	: out std_logic := '0';
    CBO8	: out std_logic := '0';
    CBO9	: out std_logic := '0';
    CBO10	: out std_logic := '0';
    CBO11	: out std_logic := '0';
    CBO12	: out std_logic := '0';
    CBO13	: out std_logic := '0';
    CBO14	: out std_logic := '0';
    CBO15	: out std_logic := '0';
    CBO16	: out std_logic := '0';
    CBO17	: out std_logic := '0';
    CBO18	: out std_logic := '0';

    CCI	: in std_logic := '0';
    CCO	: out std_logic := '0';
    CI	: in std_logic := '0';
    CK	: in std_logic := '0';
    CO	: out std_logic := '0';
    CO37	: out std_logic := '0';
    CO49	: out std_logic := '0';

    CZI1	: in std_logic := '0';
    CZI2	: in std_logic := '0';
    CZI3	: in std_logic := '0';
    CZI4	: in std_logic := '0';
    CZI5	: in std_logic := '0';
    CZI6	: in std_logic := '0';
    CZI7	: in std_logic := '0';
    CZI8	: in std_logic := '0';
    CZI9	: in std_logic := '0';
    CZI10	: in std_logic := '0';
    CZI11	: in std_logic := '0';
    CZI12	: in std_logic := '0';
    CZI13	: in std_logic := '0';
    CZI14	: in std_logic := '0';
    CZI15	: in std_logic := '0';
    CZI16	: in std_logic := '0';
    CZI17	: in std_logic := '0';
    CZI18	: in std_logic := '0';
    CZI19	: in std_logic := '0';
    CZI20	: in std_logic := '0';
    CZI21	: in std_logic := '0';
    CZI22	: in std_logic := '0';
    CZI23	: in std_logic := '0';
    CZI24	: in std_logic := '0';
    CZI25	: in std_logic := '0';
    CZI26	: in std_logic := '0';
    CZI27	: in std_logic := '0';
    CZI28	: in std_logic := '0';
    CZI29	: in std_logic := '0';
    CZI30	: in std_logic := '0';
    CZI31	: in std_logic := '0';
    CZI32	: in std_logic := '0';
    CZI33	: in std_logic := '0';
    CZI34	: in std_logic := '0';
    CZI35	: in std_logic := '0';
    CZI36	: in std_logic := '0';
    CZI37	: in std_logic := '0';
    CZI38	: in std_logic := '0';
    CZI39	: in std_logic := '0';
    CZI40	: in std_logic := '0';
    CZI41	: in std_logic := '0';
    CZI42	: in std_logic := '0';
    CZI43	: in std_logic := '0';
    CZI44	: in std_logic := '0';
    CZI45	: in std_logic := '0';
    CZI46	: in std_logic := '0';
    CZI47	: in std_logic := '0';
    CZI48	: in std_logic := '0';
    CZI49	: in std_logic := '0';
    CZI50	: in std_logic := '0';
    CZI51	: in std_logic := '0';
    CZI52	: in std_logic := '0';
    CZI53	: in std_logic := '0';
    CZI54	: in std_logic := '0';
    CZI55	: in std_logic := '0';
    CZI56	: in std_logic := '0';

    CZO1	: out std_logic := '0';
    CZO2	: out std_logic := '0';
    CZO3	: out std_logic := '0';
    CZO4	: out std_logic := '0';
    CZO5	: out std_logic := '0';
    CZO6	: out std_logic := '0';
    CZO7	: out std_logic := '0';
    CZO8	: out std_logic := '0';
    CZO9	: out std_logic := '0';
    CZO10	: out std_logic := '0';
    CZO11	: out std_logic := '0';
    CZO12	: out std_logic := '0';
    CZO13	: out std_logic := '0';
    CZO14	: out std_logic := '0';
    CZO15	: out std_logic := '0';
    CZO16	: out std_logic := '0';
    CZO17	: out std_logic := '0';
    CZO18	: out std_logic := '0';
    CZO19	: out std_logic := '0';
    CZO20	: out std_logic := '0';
    CZO21	: out std_logic := '0';
    CZO22	: out std_logic := '0';
    CZO23	: out std_logic := '0';
    CZO24	: out std_logic := '0';
    CZO25	: out std_logic := '0';
    CZO26	: out std_logic := '0';
    CZO27	: out std_logic := '0';
    CZO28	: out std_logic := '0';
    CZO29	: out std_logic := '0';
    CZO30	: out std_logic := '0';
    CZO31	: out std_logic := '0';
    CZO32	: out std_logic := '0';
    CZO33	: out std_logic := '0';
    CZO34	: out std_logic := '0';
    CZO35	: out std_logic := '0';
    CZO36	: out std_logic := '0';
    CZO37	: out std_logic := '0';
    CZO38	: out std_logic := '0';
    CZO39	: out std_logic := '0';
    CZO40	: out std_logic := '0';
    CZO41	: out std_logic := '0';
    CZO42	: out std_logic := '0';
    CZO43	: out std_logic := '0';
    CZO44	: out std_logic := '0';
    CZO45	: out std_logic := '0';
    CZO46	: out std_logic := '0';
    CZO47	: out std_logic := '0';
    CZO48	: out std_logic := '0';
    CZO49	: out std_logic := '0';
    CZO50	: out std_logic := '0';
    CZO51	: out std_logic := '0';
    CZO52	: out std_logic := '0';
    CZO53	: out std_logic := '0';
    CZO54	: out std_logic := '0';
    CZO55	: out std_logic := '0';
    CZO56	: out std_logic := '0';

    D1	: in std_logic := '0';
    D2	: in std_logic := '0';
    D3	: in std_logic := '0';
    D4	: in std_logic := '0';
    D5	: in std_logic := '0';
    D6	: in std_logic := '0';
    D7	: in std_logic := '0';
    D8	: in std_logic := '0';
    D9	: in std_logic := '0';
    D10	: in std_logic := '0';
    D11	: in std_logic := '0';
    D12	: in std_logic := '0';
    D13	: in std_logic := '0';
    D14	: in std_logic := '0';
    D15	: in std_logic := '0';
    D16	: in std_logic := '0';
    D17	: in std_logic := '0';
    D18	: in std_logic := '0';

    OVF	: out std_logic := '0';
    R	: in std_logic := '0';
    RZ	: in std_logic := '0';
    WE	: in std_logic := '0';

    Z1	: out std_logic := '0';
    Z2	: out std_logic := '0';
    Z3	: out std_logic := '0';
    Z4	: out std_logic := '0';
    Z5	: out std_logic := '0';
    Z6	: out std_logic := '0';
    Z7	: out std_logic := '0';
    Z8	: out std_logic := '0';
    Z9	: out std_logic := '0';
    Z10	: out std_logic := '0';
    Z11	: out std_logic := '0';
    Z12	: out std_logic := '0';
    Z13	: out std_logic := '0';
    Z14	: out std_logic := '0';
    Z15	: out std_logic := '0';
    Z16	: out std_logic := '0';
    Z17	: out std_logic := '0';
    Z18	: out std_logic := '0';
    Z19	: out std_logic := '0';
    Z20	: out std_logic := '0';
    Z21	: out std_logic := '0';
    Z22	: out std_logic := '0';
    Z23	: out std_logic := '0';
    Z24	: out std_logic := '0';
    Z25	: out std_logic := '0';
    Z26	: out std_logic := '0';
    Z27	: out std_logic := '0';
    Z28	: out std_logic := '0';
    Z29	: out std_logic := '0';
    Z30	: out std_logic := '0';
    Z31	: out std_logic := '0';
    Z32	: out std_logic := '0';
    Z33	: out std_logic := '0';
    Z34	: out std_logic := '0';
    Z35	: out std_logic := '0';
    Z36	: out std_logic := '0';
    Z37	: out std_logic := '0';
    Z38	: out std_logic := '0';
    Z39	: out std_logic := '0';
    Z40	: out std_logic := '0';
    Z41	: out std_logic := '0';
    Z42	: out std_logic := '0';
    Z43	: out std_logic := '0';
    Z44	: out std_logic := '0';
    Z45	: out std_logic := '0';
    Z46	: out std_logic := '0';
    Z47	: out std_logic := '0';
    Z48	: out std_logic := '0';
    Z49	: out std_logic := '0';
    Z50	: out std_logic := '0';
    Z51	: out std_logic := '0';
    Z52	: out std_logic := '0';
    Z53	: out std_logic := '0';
    Z54	: out std_logic := '0';
    Z55	: out std_logic := '0';
    Z56	: out std_logic := '0'
);
end component NX_DSP;

component NX_DSP_WRAP is
generic (
    std_mode    : string := "";
    raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";        -- MUX
    raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";         -- PRC
    raw_config2 : bit_vector(12 downto 0) := B"0000000000000";               -- PRR
    raw_config3 : bit_vector( 6 downto 0) := B"0000000"                      -- ALU
);
port (
    A	: in std_logic_vector(23 downto 0) := (others => '0');
    B	: in std_logic_vector(17 downto 0) := (others => '0');
    C	: in std_logic_vector(35 downto 0) := (others => '0');

    CAI	: in std_logic_vector(17 downto 0) := (others => '0');
    CAO	: out std_logic_vector(17 downto 0) := (others => '0');
    CBI	: in std_logic_vector(17 downto 0) := (others => '0');
    CBO	: out std_logic_vector(17 downto 0) := (others => '0');

    CCI	: in std_logic := '0';
    CCO	: out std_logic := '0';
    CI	: in std_logic := '0';
    CK	: in std_logic := '0';
    CO	: out std_logic := '0';
    CO37	: out std_logic := '0';
    CO49	: out std_logic := '0';

    CZI	: in std_logic_vector(55 downto 0) := (others => '0');
    CZO	: out std_logic_vector(55 downto 0) := (others => '0');

    D	: in std_logic_vector(17 downto 0) := (others => '0');

    OVF	: out std_logic := '0';
    R	: in std_logic := '0';
    RZ	: in std_logic := '0';
    WE	: in std_logic := '0';

    Z	: out std_logic_vector(55 downto 0) := (others => '0')
);
end component NX_DSP_WRAP;

component NX_DSP_SPLIT is
generic (
-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config0" (cfg_mode). Defines :
------------------------------------------------------------------------- 
   SIGNED_MODE          : bit                    := '0';
   PRE_ADDER_OP         : bit                    := '0';       -- '0' = Additon, '1' = Subraction
   MUX_A                : bit                    := '0';       -- '0' = A input, '1' = CAI input
   MUX_B                : bit                    := '0';       -- '0' = B input, '1' = CBI input
   MUX_P                : bit                    := '0';       -- '0' for PRE_ADDER, '0' for B input
   MUX_X                : bit_vector(1 downto 0) := B"00";     -- Select X operand   "00" = C,
                                                               --                    "01" = CZI,
                                                               --                    "11" = SHFT(CZI) & C(11:0),
                                                               --                    "10" Select Z feedback
   MUX_Y                : bit                    := '0';       -- '0' Select MULT output, '1' for (B & A)
   MUX_CI               : bit                    := '0';       -- Select fabric input (not cascade)
   MUX_Z                : bit                    := '0';       -- Select ALU output
                                                               -- (not ALU input operand coming from PR_Y)

   Z_FEEDBACK_SHL12     : bit                    := '0';       -- '0' for No shift, '1' for 12-bit left shift
   ENABLE_SATURATION    : bit                    := '0';       -- '0' for Disable,  '1' for Enable
   SATURATION_RANK      : bit_vector(5 downto 0) := B"000000"; -- Weight of useful MSB
                                                               --        on Z and CZO result
                                                               --(to define saturation and overflow)

   ALU_DYNAMIC_OP       : bit                    := '0';       -- '0' for Static,
                                                               -- '1' for Dynamic
                                                               -- (D6 ... D1 is not used for dynamic operation)
   CO_SEL               : bit                    := '0';       -- '0' for C0 = ALU(36), '1' for CO = ALU(48)

-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config1" (cfg_pipe_mux)
-------------------------------------------------------------------------
   PR_A_MUX                : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        on A input
   PR_A_CASCADE_MUX        : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        for CAO output
   PR_B_MUX                : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        on B input
   PR_B_CASCADE_MUX        : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        for CAO output

   PR_C_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_D_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_CI_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_P_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg (Pre-adder)
   PR_X_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_Y_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg

   PR_MULT_MUX             : bit                    := '0';   -- No pipe reg  -- Register inside MULT
   PR_ALU_MUX              : bit                    := '0';   -- No pipe reg  -- Register inside ALU
   PR_Z_MUX                : bit                    := '0';   -- Registered output

   PR_CO_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_OV_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg

-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config2" (cfg_pipe_rst)
-------------------------------------------------------------------------
   ENABLE_PR_A_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_B_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_C_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_D_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_CI_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_P_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_X_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_Y_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_MULT_RST      : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_ALU_RST       : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_Z_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_CO_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_OV_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 

-------------------------------------------------------------------------
-- Constants declaration to define the "cfg_pipe_rst" -- raw_config3(6 downto 0)
-------------------------------------------------------------------------
   ALU_OP                  : bit_vector(5 downto 0) := B"000000"; -- Addition = "000000", Subtract = "001010"
   ALU_MUX                 : bit                    := '0'        -- '0' for Don't swap ALU operands,
                                                                  -- '1' for ALU Swap operands
    );
port (
    CK	: IN std_logic := '0';
    R	: IN std_logic := '0';
    RZ	: IN std_logic := '0';
    WE	: IN std_logic := '0';

    CI	: IN std_logic := '0';
    A	: IN std_logic_vector(23 downto 0) := (others => '0');
    B	: IN std_logic_vector(17 downto 0) := (others => '0');
    C	: IN std_logic_vector(35 downto 0) := (others => '0');
    D	: IN std_logic_vector(17 downto 0) := (others => '0');
    CAI	: IN std_logic_vector(17 downto 0) := (others => '0');
    CBI	: IN std_logic_vector(17 downto 0) := (others => '0');
    CZI	: IN std_logic_vector(55 downto 0) := (others => '0');
    CCI	: IN std_logic := '0';

    Z	: out std_logic_vector(55 downto 0) := (others => '0');
    CO	: OUT std_logic := '0';
    CO36	: OUT std_logic := '0';
    CO48	: OUT std_logic := '0';
    OVF	: OUT std_logic := '0';
    CAO	: OUT std_logic_vector(17 downto 0) := (others => '0');
    CBO	: OUT std_logic_vector(17 downto 0) := (others => '0');
    CZO	: OUT std_logic_vector(55 downto 0) := (others => '0');
    CCO	: OUT std_logic := '0'
  );
end component NX_DSP_SPLIT;

component NX_PLL is
generic (
    location     : string := "";

    vco_range    : integer   range 0 to 2 := 0;   -- 0 to 3
    ref_div_on   : bit := '0';                    -- bypass :: %2
    fbk_div_on   : bit := '0';                    -- bypass :: %2
    ext_fbk_on   : bit := '0';                    -- 0: disabled - 1: enabled

    fbk_intdiv   : integer   range 1 to 31 := 2;  -- 0 to 31  (%1 to %32)

    fbk_delay_on : bit := '0';                    -- 0: no delay - 1: delay
    fbk_delay    : integer   range 0 to 63 := 0;  -- 0 to 63

    clk_outdiv1  : integer   range 0 to 7 := 0;   -- 0 to 7   (%1 to %2^7)
    clk_outdiv2  : integer   range 0 to 7 := 0;   -- 0 to 7   (%1 to %2^7)
    clk_outdiv3  : integer   range 0 to 7 := 0    -- 0 to 7   (%1 to %2^7)
);
port (
    REF	: in std_logic := '0';
    FBK	: in std_logic := '0';

    VCO	: out std_logic := '0';

    D1	: out std_logic := '0';
    D2	: out std_logic := '0';
    D3	: out std_logic := '0';
    OSC	: out std_logic := '0';

    RDY	: out std_logic := '0'
);
end component NX_PLL;

component NX_WFG is
generic (
    location    : string := "";

    wfg_edge    : bit := '0';                              -- 0: no invert / Rising
    mode        : bit := '0';                              -- 0: no pattern - 1: pattern

    pattern_end : integer   range 0 to 15 := 1;            -- 0: to 15 (1 step to 16 steps)
    pattern     : bit_vector(0 to 15) := (others => '0');  -- pattern p0 ... p15

    delay_on    : bit := '0';                              -- 0: no delay - 1: delay
    delay       : integer   range 0 to 63 := 0             -- 0 to 63 (1 unit to 64 unit)
);
port (
    SI	: in std_logic := '0';
    ZI	: in std_logic := '0';
    RDY	: in std_logic := '1';
    SO	: out std_logic := '0';
    ZO	: out std_logic := '0'
);
end component NX_WFG;

-- beware following components are only intended for internal use. Do not try to instantiate them.
component NX_BUFFER is
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_BUFFER;

component NX_CSC is
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_CSC;

component NX_SCC is
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_SCC;

component NX_syn_tp is
port (
    I	: in std_logic := '0'
);
end component NX_syn_tp;

component NX_BD is
generic (
    system: bit := '1'
);
port (
    I	: in std_logic := '0';
    O	: out std_logic := '0'
);
end component NX_BD;

component NX_SER is
generic (
    data_size            : integer range 2 to 10 := 5;	-- Number of serialization factor
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0") or differential ("1")
    slewRate             : string := "";		-- Slow, Medium or Fast
    outputDelayLine      : string := "";		-- "0_to_63_delay_value"
    outputCapacity       : string := "";		-- 0 to 40 (value in pF)
    -- Delay Control
    spath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay

);
port (
    FCK	: in std_logic := '0';
    SCK	: in std_logic := '0';
    R	: in std_logic := '0';
    I	: in std_logic_vector(data_size - 1 downto 0) := (others => '0');
    IO	: out std_logic := '0';
    -- Delay Control
    DCK	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DS	: in std_logic_vector(1 downto 0) := (others => '0');
    DRA	: in std_logic_vector(5 downto 0) := (others => '0');
    DRI	: in std_logic_vector(5 downto 0) := (others => '0');
    DRO	: out std_logic_vector(5 downto 0) := (others => '0');
    DID	: out std_logic_vector(5 downto 0) := (others => '0')
);
end component NX_SER;

component NX_DES is
generic (
    data_size            : integer range 2 to 10 := 5;	-- -- Pad locationNumber of deserialization factor
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0") or differential ("1")
    termination          : string := "";		-- Input impedance adaptatio    terminationReference : string := "";
    terminationReference : string := "";		-- "floating" or "VTT"
    turbo                : string := "";		-- Input impedance adaptation
    weakTermination      : string := "";		-- "floating" or "VTT"
    inputDelayLine       : string := "";		-- "0_to_63_delay_value"
    inputSignalSlope     : string := "";		-- Decimal value "0.5" to "20" (value in V/ns)
    -- Delay Control
    dpath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay

);
port (
    FCK	: in std_logic := '0';
    SCK	: in std_logic := '0';
    R	: in std_logic := '0';
    IO	: in std_logic := '0';
    O	: out std_logic_vector(data_size - 1 downto 0) := (others => '0');
    -- Delay Control
    DCK	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DIG	: in std_logic := '0';
    DS	: in std_logic_vector(1 downto 0) := (others => '0');
    DRA	: in std_logic_vector(5 downto 0) := (others => '0');
    DRI	: in std_logic_vector(5 downto 0) := (others => '0');
    FZ	: in std_logic := '0';
    DRO	: out std_logic_vector(5 downto 0) := (others => '0');
    DID	: out std_logic_vector(5 downto 0) := (others => '0');
    FLD	: out std_logic := '0';
    FLG	: out std_logic := '0'
);
end component NX_DES;

component NX_SERDES is
generic (
    data_size            : integer range 2 to 10 := 5;	-- Serialiser/deserializer factor 
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0" or differential ("1")
    slewRate             : string := "";		-- Slow, Medium or Fast
    termination          : string := "";		-- Input impedance adaptation
    terminationReference : string := "";		-- "floating" or "VTT"
    turbo                : string := "";		-- "true" or "false"
    weakTermination      : string := "";		-- "PullUp" or "None"
    inputDelayLine       : string := "";		-- "O_to_63_delay_value"
    outputDelayLine      : string := "";		-- "O_to_63_delay_value"
    inputSignalSlope     : string := "";		-- Decimal value "0.5" to "20" (value in V/ns)
    outputCapacity       : string := "";		-- "0" to "40" (value in pF)
    cpath_registered     : bit := '0';			-- Use Register in Enable Path ('1')
    -- Delay Control
    spath_dynamic        : bit := '0';			-- 0: off/fixed delay, 1: dynamic delay
    dpath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay
);
port (
    FCK	: in std_logic := '0';
    SCK	: in std_logic := '0';
    RTX	: in std_logic := '0';
    RRX	: in std_logic := '0';
    CI	: in std_logic := '0';
    CCK	: in std_logic := '0';
    CL	: in std_logic := '0';
    CR	: in std_logic := '0';
    I	: in std_logic_vector(data_size - 1 downto 0) := (others => '0');
    IO	: inout std_logic := '0';
    O	: out std_logic_vector(data_size - 1 downto 0) := (others => '0');
    -- Delay Control
    DCK	: in std_logic := '0';
    DRL	: in std_logic := '0';
    DIG	: in std_logic := '0';
    DS	: in std_logic_vector(1 downto 0) := (others => '0');
    DRA	: in std_logic_vector(5 downto 0) := (others => '0');
    DRI	: in std_logic_vector(5 downto 0) := (others => '0');
    FZ	: in std_logic := '0';
    DRO	: out std_logic_vector(5 downto 0) := (others => '0');
    DID	: out std_logic_vector(5 downto 0) := (others => '0');
    FLD	: out std_logic := '0';
    FLG	: out std_logic := '0'
);
end component NX_SERDES;

component NX_RAM is
generic (
   std_mode     : string := ""; -- standard mode [FAST_2kx18, SLOW_2kx18, NOECNOECC24, ...] empty for raw
   mcka_edge    : bit := '0';   -- 0: rising edge for port A clock - 1: falling edge
   mckb_edge    : bit := '0';   -- 0: rising edge for port B clock - 1: falling edge
   pcka_edge    : bit := '0';   -- 0: rising edge for pipe A clock - 1: falling edge
   pckb_edge    : bit := '0';   -- 0: rising edge for pipe B clock - 1: falling edge
   pipe_ia      : bit := '0';   -- 0: no pipe on port A input  - 1: pipe on port A input
   pipe_ib      : bit := '0';   -- 0: no pipe on port B input  - 1: pipe on port B input
   pipe_oa      : bit := '0';   -- 0: no pipe on port A output - 1: pipe on port A output
   pipe_ob      : bit := '0';   -- 0: no pipe on port B output - 1: pipe on port B output

   raw_config0  : bit_vector( 3 downto 0) := B"0000";			-- PRC
   raw_config1  : bit_vector(15 downto 0) := B"0000000000000000";	-- MOD

   -- For specific NG_LARGE Extended Features
   raw_l_enable : bit := '0';                         -- '0' for NG-MEDIUM, '1' for NG-LARGE extended modes (NO_ECC x3 & x6) + scrubbing, test...
   raw_l_extend : bit_vector( 3 downto 0) := B"0000"; -- Extended modes for NG-LARGE (Scrubbing, test... )

   mem_ctxt     : string := ""                        -- context initialization
   );
port (
    ACK	: in std_logic := '0';
    ACKC	: in std_logic := '0';
    ACKD	: in std_logic := '0';
    ACKR	: in std_logic := '0';
    BCK	: in std_logic := '0';
    BCKC	: in std_logic := '0';
    BCKD	: in std_logic := '0';
    BCKR	: in std_logic := '0';

    AI1	: in std_logic := '0';
    AI2	: in std_logic := '0';
    AI3	: in std_logic := '0';
    AI4	: in std_logic := '0';
    AI5	: in std_logic := '0';
    AI6	: in std_logic := '0';
    AI7	: in std_logic := '0';
    AI8	: in std_logic := '0';
    AI9	: in std_logic := '0';
    AI10	: in std_logic := '0';
    AI11	: in std_logic := '0';
    AI12	: in std_logic := '0';
    AI13	: in std_logic := '0';
    AI14	: in std_logic := '0';
    AI15	: in std_logic := '0';
    AI16	: in std_logic := '0';

    AI17	: in std_logic := '0';
    AI18	: in std_logic := '0';
    AI19	: in std_logic := '0';
    AI20	: in std_logic := '0';
    AI21	: in std_logic := '0';
    AI22	: in std_logic := '0';
    AI23	: in std_logic := '0';
    AI24	: in std_logic := '0';

    BI1	: in std_logic := '0';
    BI2	: in std_logic := '0';
    BI3	: in std_logic := '0';
    BI4	: in std_logic := '0';
    BI5	: in std_logic := '0';
    BI6	: in std_logic := '0';
    BI7	: in std_logic := '0';
    BI8	: in std_logic := '0';
    BI9	: in std_logic := '0';
    BI10	: in std_logic := '0';
    BI11	: in std_logic := '0';
    BI12	: in std_logic := '0';
    BI13	: in std_logic := '0';
    BI14	: in std_logic := '0';
    BI15	: in std_logic := '0';
    BI16	: in std_logic := '0';

    BI17	: in std_logic := '0';
    BI18	: in std_logic := '0';
    BI19	: in std_logic := '0';
    BI20	: in std_logic := '0';
    BI21	: in std_logic := '0';
    BI22	: in std_logic := '0';
    BI23	: in std_logic := '0';
    BI24	: in std_logic := '0';

    ACOR	: out std_logic := '0';
    AERR	: out std_logic := '0';
    BCOR	: out std_logic := '0';
    BERR	: out std_logic := '0';

    AO1	: out std_logic := '0';
    AO2	: out std_logic := '0';
    AO3	: out std_logic := '0';
    AO4	: out std_logic := '0';
    AO5	: out std_logic := '0';
    AO6	: out std_logic := '0';
    AO7	: out std_logic := '0';
    AO8	: out std_logic := '0';
    AO9	: out std_logic := '0';
    AO10	: out std_logic := '0';
    AO11	: out std_logic := '0';
    AO12	: out std_logic := '0';
    AO13	: out std_logic := '0';
    AO14	: out std_logic := '0';
    AO15	: out std_logic := '0';
    AO16	: out std_logic := '0';

    AO17	: out std_logic := '0';
    AO18	: out std_logic := '0';
    AO19	: out std_logic := '0';
    AO20	: out std_logic := '0';
    AO21	: out std_logic := '0';
    AO22	: out std_logic := '0';
    AO23	: out std_logic := '0';
    AO24	: out std_logic := '0';

    BO1	: out std_logic := '0';
    BO2	: out std_logic := '0';
    BO3	: out std_logic := '0';
    BO4	: out std_logic := '0';
    BO5	: out std_logic := '0';
    BO6	: out std_logic := '0';
    BO7	: out std_logic := '0';
    BO8	: out std_logic := '0';
    BO9	: out std_logic := '0';
    BO10	: out std_logic := '0';
    BO11	: out std_logic := '0';
    BO12	: out std_logic := '0';
    BO13	: out std_logic := '0';
    BO14	: out std_logic := '0';
    BO15	: out std_logic := '0';
    BO16	: out std_logic := '0';

    BO17	: out std_logic := '0';
    BO18	: out std_logic := '0';
    BO19	: out std_logic := '0';
    BO20	: out std_logic := '0';
    BO21	: out std_logic := '0';
    BO22	: out std_logic := '0';
    BO23	: out std_logic := '0';
    BO24	: out std_logic := '0';

    AA1	: in std_logic := '0';
    AA2	: in std_logic := '0';
    AA3	: in std_logic := '0';
    AA4	: in std_logic := '0';
    AA5	: in std_logic := '0';
    AA6	: in std_logic := '0';

    AA7	: in std_logic := '0';
    AA8	: in std_logic := '0';
    AA9	: in std_logic := '0';
    AA10	: in std_logic := '0';
    AA11	: in std_logic := '0';
    AA12	: in std_logic := '0';
    AA13	: in std_logic := '0';
    AA14	: in std_logic := '0';
    AA15	: in std_logic := '0';
    AA16	: in std_logic := '0';

    ACS	: in std_logic := '0';
    AWE	: in std_logic := '0';
    AR	: in std_logic := '0';

    BA1	: in std_logic := '0';
    BA2	: in std_logic := '0';
    BA3	: in std_logic := '0';
    BA4	: in std_logic := '0';
    BA5	: in std_logic := '0';
    BA6	: in std_logic := '0';

    BA7	: in std_logic := '0';
    BA8	: in std_logic := '0';
    BA9	: in std_logic := '0';
    BA10	: in std_logic := '0';
    BA11	: in std_logic := '0';
    BA12	: in std_logic := '0';
    BA13	: in std_logic := '0';
    BA14	: in std_logic := '0';
    BA15	: in std_logic := '0';
    BA16	: in std_logic := '0';

    BCS	: in std_logic := '0';
    BWE	: in std_logic := '0';
    BR	: in std_logic := '0'
);
end component NX_RAM;

component NX_RAM_WRAP is
generic (
   std_mode     : string := ""; -- standard mode [FAST_2kx18, SLOW_2kx18, NOECNOECC24, ...] empty for raw
   mcka_edge    : bit := '0';   -- 0: rising edge for port A clock - 1: falling edge
   mckb_edge    : bit := '0';   -- 0: rising edge for port B clock - 1: falling edge
   pcka_edge    : bit := '0';   -- 0: rising edge for pipe A clock - 1: falling edge
   pckb_edge    : bit := '0';   -- 0: rising edge for pipe B clock - 1: falling edge

   pipe_ia      : bit := '0';   -- 0: no pipe on port A input  - 1: pipe on port A input
   pipe_ib      : bit := '0';   -- 0: no pipe on port B input  - 1: pipe on port B input
   pipe_oa      : bit := '0';   -- 0: no pipe on port A output - 1: pipe on port A output
   pipe_ob      : bit := '0';   -- 0: no pipe on port B output - 1: pipe on port B output

   raw_config0  : bit_vector( 3 downto 0) := B"0000";			-- PRC
   raw_config1  : bit_vector(15 downto 0) := B"0000000000000000";	-- MOD

   -- For specific NG_LARGE Extended Features
   raw_l_enable : bit := '0';                          -- '0' for NG-MEDIUM, '1' for NG-LARGE extended modes (NO_ECC x3 & x6) + scrubbing, test...
   raw_l_extend : bit_vector( 3 downto 0) := B"0000";  -- Extended modes for NG-LARGE (Scrubbing, test... )

   mem_ctxt     : string := ""                         -- context initialization
);
port (
    ACK	: in std_logic := '0';
    ACKD	: in std_logic := '0';
    ACKR	: in std_logic := '0';
    BCK	: in std_logic := '0';
    BCKD	: in std_logic := '0';
    BCKR	: in std_logic := '0';

    AI	: in std_logic_vector(23 downto 0) := (others => '0');
    BI	: in std_logic_vector(23 downto 0) := (others => '0');

    ACOR	: out std_logic := '0';
    AERR	: out std_logic := '0';
    BCOR	: out std_logic := '0';
    BERR	: out std_logic := '0';

    AO	: out std_logic_vector(23 downto 0) := (others => '0');
    BO	: out std_logic_vector(23 downto 0) := (others => '0');
    AA	: in std_logic_vector(15 downto 0) := (others => '0');

    ACS	: in std_logic := '0';
    AWE	: in std_logic := '0';
    AR	: in std_logic := '0';

    BA	: in std_logic_vector(15 downto 0) := (others => '0');

    BCS	: in std_logic := '0';
    BWE	: in std_logic := '0';
    BR	: in std_logic := '0'
);
end component NX_RAM_WRAP;

component NX_ECC is
port (
    CKD	: in std_logic := '0';
    CHK	: in std_logic := '0';
    COR	: out std_logic := '0';
    ERR	: out std_logic := '0'
    );
end component NX_ECC;


end nxPackage;
-- =================================================================================================
--   NX_IOB definition                                                                  2017/09/04
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_IOB_I is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I  : in  std_logic;
    C  : in  std_logic;
    T  : in  std_logic;
    IO : in  std_logic;
    O  : out std_logic
);
end NX_IOB_I;

architecture NX_RTL of NX_IOB_I is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOB";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_IOB_O is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I  : in  std_logic;
    C  : in  std_logic;
    T  : in  std_logic;
    O  : out std_logic;
    IO : out std_logic
);
end NX_IOB_O;

architecture NX_RTL of NX_IOB_O is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOB";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_IOB is
generic (
    location             : string := "";
    standard             : string := "";
    drive                : string := "";
    differential         : string := "";
    slewRate             : string := "";
    termination          : string := "";
    terminationReference : string := "";
    turbo                : string := "";
    weakTermination      : string := "";
    inputDelayOn         : string := "";
    inputDelayLine       : string := "";
    outputDelayOn        : string := "";
    outputDelayLine      : string := "";
    inputSignalSlope     : string := "";
    outputCapacity       : string := "";
    locked               : bit    := '0'
);
port (
    I  : in    std_logic;
    C  : in    std_logic;
    T  : in    std_logic;
    O  : out   std_logic;
    IO : inout std_logic
);
end NX_IOB;

architecture NX_RTL of NX_IOB is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOB";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
M5N3cKoDeYUYAsQAwcvhkCU7Z5jpLnS+xwNEqScvXyveQ1TOLFIv1s19JGYCOShL
gJoDmbAHFxbHYJ5qg1G52HzHMvAUKnpUuy9f1qlJqnr7i3cnSfW4xtr+uH1Bn27O
tbnxVeoRiWlcFEOSJTwrvipAxNV191dmQde94c3F/umerc2URlXaEd4pJIrf4i7l
YKDtRhZ87fNbYXtyq4A9JJ9sCwAwu99gut9UIjREf8sZc34BPjk3HAzyqn5NEcD2
7pUxrOOhL44Z1ZOugSZhyJqi2KZiE10brtPZIXmaBTBgwFhoGEAR31CgjCbsHvjY
m/Et13N92YJXIwwfIgUAOA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 2608)
`protect data_block
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
mi6xKB6uWeoed4N81ZJJ8Q==
`protect end_protected

-- =================================================================================================
--   NX_IOM definition                                                                  2017/09/04
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library NX;
use NX.nxPackage.all;

entity NX_IOM is
generic (
    mode_side1   : integer := 0;
    sel_clkw_rx1 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx1 : bit := '0';
    div_tx1      : bit_vector(3 downto 0) := "0000";
    div_rx1      : bit_vector(3 downto 0) := "0000";
--  inv_di_fclk1 : bit := '0';
--  latency1     : bit := '0';
    mode_side2   : integer := 0;
    sel_clkw_rx2 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx2 : bit := '0';
    div_tx2      : bit_vector(3 downto 0) := "0000";
    div_rx2      : bit_vector(3 downto 0) := "0000";
--  inv_di_fclk2 : bit := '0';
--  latency2     : bit := '0';
--  sel_clk_out2 : bit_vector(1 downto 0) := "00";
--  sel_clk_out3 : bit_vector(1 downto 0) := "00";
    sel_clk_out1 : bit := '0';
    sel_clk_out2 : bit := '0';
    mode_io_cal  : bit := '0';
    pads_dict    : string := "";
    pads_path    : string := ""
);
port(
    RTCK1   : in    std_logic;
    RRCK1   : in    std_logic;
    WTCK1   : in    std_logic;
    WRCK1   : in    std_logic;
    RTCK2   : in    std_logic;
    RRCK2   : in    std_logic;
    WTCK2   : in    std_logic;
    WRCK2   : in    std_logic;
    CTCK    : in    std_logic;
    CCK     : in    std_logic;
    DCK     : in    std_logic;

    C1TW    : in    std_logic;
    C1TS    : in    std_logic;
    C1RW1   : in    std_logic;
    C1RW2   : in    std_logic;
    C1RW3   : in    std_logic;
    C1RNE   : in    std_logic;
    C1RS    : in    std_logic;
    C2TW    : in    std_logic;
    C2TS    : in    std_logic;
    C2RW1   : in    std_logic;
    C2RW2   : in    std_logic;
    C2RW3   : in    std_logic;
    C2RNE   : in    std_logic;
    C2RS    : in    std_logic;
    FA1     : in    std_logic;
    FA2     : in    std_logic;
    FA3     : in    std_logic;
    FA4     : in    std_logic;
    FA5     : in    std_logic;
    FZ      : in    std_logic;
    DC      : in    std_logic;
    DRI1    : in    std_logic;
    DRI2    : in    std_logic;
    DRI3    : in    std_logic;
    DRI4    : in    std_logic;
    DRI5    : in    std_logic;
    DRI6    : in    std_logic;
    DRA1    : in    std_logic;
    DRA2    : in    std_logic;
    DRA3    : in    std_logic;
    DRA4    : in    std_logic;
    DRA5    : in    std_logic;
    DRL     : in    std_logic;
    DOS     : in    std_logic;
    DOG     : in    std_logic;
    DIS     : in    std_logic;
    DIG     : in    std_logic;
    DPAS    : in    std_logic;
    DPAG    : in    std_logic;
    DQSS    : in    std_logic;
    DQSG    : in    std_logic;
    DS1     : in    std_logic;
    DS2     : in    std_logic;
    CAD1    : in    std_logic;
    CAD2    : in    std_logic;
    CAD3    : in    std_logic;
    CAD4    : in    std_logic;
    CAD5    : in    std_logic;
    CAD6    : in    std_logic;
    CAP1    : in    std_logic;
    CAP2    : in    std_logic;
    CAP3    : in    std_logic;
    CAP4    : in    std_logic;
    CAN1    : in    std_logic;
    CAN2    : in    std_logic;
    CAN3    : in    std_logic;
    CAN4    : in    std_logic;
    CAT1    : in    std_logic;
    CAT2    : in    std_logic;
    CAT3    : in    std_logic;
    CAT4    : in    std_logic;

    FLD     : out   std_logic;
    FLG     : out   std_logic;
    C1RED   : out   std_logic;
    C2RED   : out   std_logic;
    DRO1    : out   std_logic;
    DRO2    : out   std_logic;
    DRO3    : out   std_logic;
    DRO4    : out   std_logic;
    DRO5    : out   std_logic;
    DRO6    : out   std_logic;
    CAL     : out   std_logic;

    P1CI1   : in    std_logic;
    P1CL    : in    std_logic;
    P1CR    : in    std_logic;
    P1CO    : out   std_logic;
    P1CTI   : in    std_logic;
    P1CTO   : out   std_logic;
    P1EI1   : in    std_logic;
    P1EI2   : in    std_logic;
    P1EI3   : in    std_logic;
    P1EI4   : in    std_logic;
    P1EI5   : in    std_logic;
    P1EL    : in    std_logic;
    P1ER    : in    std_logic;
    P1EO    : out   std_logic;
    P1RI    : in    std_logic;
    P1RL    : in    std_logic;
    P1RR    : in    std_logic;
    P1RO1   : out   std_logic;
    P1RO2   : out   std_logic;
    P1RO3   : out   std_logic;
    P1RO4   : out   std_logic;
    P1RO5   : out   std_logic;

    P2CI1   : in    std_logic;
    P2CL    : in    std_logic;
    P2CR    : in    std_logic;
    P2CO    : out   std_logic;
    P2CTI   : in    std_logic;
    P2CTO   : out   std_logic;
    P2EI1   : in    std_logic;
    P2EI2   : in    std_logic;
    P2EI3   : in    std_logic;
    P2EI4   : in    std_logic;
    P2EI5   : in    std_logic;
    P2EL    : in    std_logic;
    P2ER    : in    std_logic;
    P2EO    : out   std_logic;
    P2RI    : in    std_logic;
    P2RL    : in    std_logic;
    P2RR    : in    std_logic;
    P2RO1   : out   std_logic;
    P2RO2   : out   std_logic;
    P2RO3   : out   std_logic;
    P2RO4   : out   std_logic;
    P2RO5   : out   std_logic;

    P3CI1   : in    std_logic;
    P3CL    : in    std_logic;
    P3CR    : in    std_logic;
    P3CO    : out   std_logic;
    P3CTI   : in    std_logic;
    P3CTO   : out   std_logic;
    P3EI1   : in    std_logic;
    P3EI2   : in    std_logic;
    P3EI3   : in    std_logic;
    P3EI4   : in    std_logic;
    P3EI5   : in    std_logic;
    P3EL    : in    std_logic;
    P3ER    : in    std_logic;
    P3EO    : out   std_logic;
    P3RI    : in    std_logic;
    P3RL    : in    std_logic;
    P3RR    : in    std_logic;
    P3RO1   : out   std_logic;
    P3RO2   : out   std_logic;
    P3RO3   : out   std_logic;
    P3RO4   : out   std_logic;
    P3RO5   : out   std_logic;

    P4CI1   : in    std_logic;
    P4CL    : in    std_logic;
    P4CR    : in    std_logic;
    P4CO    : out   std_logic;
    P4CTI   : in    std_logic;
    P4CTO   : out   std_logic;
    P4EI1   : in    std_logic;
    P4EI2   : in    std_logic;
    P4EI3   : in    std_logic;
    P4EI4   : in    std_logic;
    P4EI5   : in    std_logic;
    P4EL    : in    std_logic;
    P4ER    : in    std_logic;
    P4EO    : out   std_logic;
    P4RI    : in    std_logic;
    P4RL    : in    std_logic;
    P4RR    : in    std_logic;
    P4RO1   : out   std_logic;
    P4RO2   : out   std_logic;
    P4RO3   : out   std_logic;
    P4RO4   : out   std_logic;
    P4RO5   : out   std_logic;

    P5CI1   : in    std_logic;
    P5CI2   : in    std_logic;	-- DQS
    P5CI3   : in    std_logic;	-- DQS
    P5CI4   : in    std_logic;	-- DQS
    P5CI5   : in    std_logic;	-- DQS
    P5CL    : in    std_logic;
    P5CR    : in    std_logic;
    P5CO    : out   std_logic;
    P5CTI   : in    std_logic;
    P5CTO   : out   std_logic;
    P5EI1   : in    std_logic;
    P5EI2   : in    std_logic;
    P5EI3   : in    std_logic;
    P5EI4   : in    std_logic;
    P5EI5   : in    std_logic;
    P5EL    : in    std_logic;
    P5ER    : in    std_logic;
    P5EO    : out   std_logic;
    P5RI    : in    std_logic;
    P5RL    : in    std_logic;
    P5RR    : in    std_logic;
    P5RO1   : out   std_logic;
    P5RO2   : out   std_logic;
    P5RO3   : out   std_logic;
    P5RO4   : out   std_logic;
    P5RO5   : out   std_logic;

    P6CI1   : in    std_logic;
    P6CL    : in    std_logic;
    P6CR    : in    std_logic;
    P6CO    : out   std_logic;
    P6CTI   : in    std_logic;
    P6CTO   : out   std_logic;
    P6EI1   : in    std_logic;
    P6EI2   : in    std_logic;
    P6EI3   : in    std_logic;
    P6EI4   : in    std_logic;
    P6EI5   : in    std_logic;
    P6EL    : in    std_logic;
    P6ER    : in    std_logic;
    P6EO    : out   std_logic;
    P6RI    : in    std_logic;
    P6RL    : in    std_logic;
    P6RR    : in    std_logic;
    P6RO1   : out   std_logic;
    P6RO2   : out   std_logic;
    P6RO3   : out   std_logic;
    P6RO4   : out   std_logic;
    P6RO5   : out   std_logic;

    P7CI1   : in    std_logic;
    P7CL    : in    std_logic;
    P7CR    : in    std_logic;
    P7CO    : out   std_logic;
    P7CTI   : in    std_logic;
    P7CTO   : out   std_logic;
    P7EI1   : in    std_logic;
    P7EI2   : in    std_logic;
    P7EI3   : in    std_logic;
    P7EI4   : in    std_logic;
    P7EI5   : in    std_logic;
    P7EL    : in    std_logic;
    P7ER    : in    std_logic;
    P7EO    : out   std_logic;
    P7RI    : in    std_logic;
    P7RL    : in    std_logic;
    P7RR    : in    std_logic;
    P7RO1   : out   std_logic;
    P7RO2   : out   std_logic;
    P7RO3   : out   std_logic;
    P7RO4   : out   std_logic;
    P7RO5   : out   std_logic;

    P8CI1   : in    std_logic;
    P8CL    : in    std_logic;
    P8CR    : in    std_logic;
    P8CO    : out   std_logic;
    P8CTI   : in    std_logic;
    P8CTO   : out   std_logic;
    P8EI1   : in    std_logic;
    P8EI2   : in    std_logic;
    P8EI3   : in    std_logic;
    P8EI4   : in    std_logic;
    P8EI5   : in    std_logic;
    P8EL    : in    std_logic;
    P8ER    : in    std_logic;
    P8EO    : out   std_logic;
    P8RI    : in    std_logic;
    P8RL    : in    std_logic;
    P8RR    : in    std_logic;
    P8RO1   : out   std_logic;
    P8RO2   : out   std_logic;
    P8RO3   : out   std_logic;
    P8RO4   : out   std_logic;
    P8RO5   : out   std_logic;

    P9CI1   : in    std_logic;
    P9CL    : in    std_logic;
    P9CR    : in    std_logic;
    P9CO    : out   std_logic;
    P9CTI   : in    std_logic;
    P9CTO   : out   std_logic;
    P9EI1   : in    std_logic;
    P9EI2   : in    std_logic;
    P9EI3   : in    std_logic;
    P9EI4   : in    std_logic;
    P9EI5   : in    std_logic;
    P9EL    : in    std_logic;
    P9ER    : in    std_logic;
    P9EO    : out   std_logic;
    P9RI    : in    std_logic;
    P9RL    : in    std_logic;
    P9RR    : in    std_logic;
    P9RO1   : out   std_logic;
    P9RO2   : out   std_logic;
    P9RO3   : out   std_logic;
    P9RO4   : out   std_logic;
    P9RO5   : out   std_logic;

    P10CI1  : in    std_logic;
    P10CL   : in    std_logic;
    P10CR   : in    std_logic;
    P10CO   : out   std_logic;
    P10CTI  : in    std_logic;
    P10CTO  : out   std_logic;
    P10EI1  : in    std_logic;
    P10EI2  : in    std_logic;
    P10EI3  : in    std_logic;
    P10EI4  : in    std_logic;
    P10EI5  : in    std_logic;
    P10EL   : in    std_logic;
    P10ER   : in    std_logic;
    P10EO   : out   std_logic;
    P10RI   : in    std_logic;
    P10RL   : in    std_logic;
    P10RR   : in    std_logic;
    P10RO1  : out   std_logic;
    P10RO2  : out   std_logic;
    P10RO3  : out   std_logic;
    P10RO4  : out   std_logic;
    P10RO5  : out   std_logic;

    P11CI1  : in    std_logic;
    P11CL   : in    std_logic;
    P11CR   : in    std_logic;
    P11CO   : out   std_logic;
    P11CTI  : in    std_logic;
    P11CTO  : out   std_logic;
    P11EI1  : in    std_logic;
    P11EI2  : in    std_logic;
    P11EI3  : in    std_logic;
    P11EI4  : in    std_logic;
    P11EI5  : in    std_logic;
    P11EL   : in    std_logic;
    P11ER   : in    std_logic;
    P11EO   : out   std_logic;
    P11RI   : in    std_logic;
    P11RL   : in    std_logic;
    P11RR   : in    std_logic;
    P11RO1  : out   std_logic;
    P11RO2  : out   std_logic;
    P11RO3  : out   std_logic;
    P11RO4  : out   std_logic;
    P11RO5  : out   std_logic;

    P12CI1  : in    std_logic;
    P12CL   : in    std_logic;
    P12CR   : in    std_logic;
    P12CO   : out   std_logic;
    P12CTI  : in    std_logic;
    P12CTO  : out   std_logic;
    P12EI1  : in    std_logic;
    P12EI2  : in    std_logic;
    P12EI3  : in    std_logic;
    P12EI4  : in    std_logic;
    P12EI5  : in    std_logic;
    P12EL   : in    std_logic;
    P12ER   : in    std_logic;
    P12EO   : out   std_logic;
    P12RI   : in    std_logic;
    P12RL   : in    std_logic;
    P12RR   : in    std_logic;
    P12RO1  : out   std_logic;
    P12RO2  : out   std_logic;
    P12RO3  : out   std_logic;
    P12RO4  : out   std_logic;
    P12RO5  : out   std_logic;

    P13CI1  : in    std_logic;
    P13CL   : in    std_logic;
    P13CR   : in    std_logic;
    P13CO   : out   std_logic;
    P13CTI  : in    std_logic;
    P13CTO  : out   std_logic;
    P13EI1  : in    std_logic;
    P13EI2  : in    std_logic;
    P13EI3  : in    std_logic;
    P13EI4  : in    std_logic;
    P13EI5  : in    std_logic;
    P13EL   : in    std_logic;
    P13ER   : in    std_logic;
    P13EO   : out   std_logic;
    P13RI   : in    std_logic;
    P13RL   : in    std_logic;
    P13RR   : in    std_logic;
    P13RO1  : out   std_logic;
    P13RO2  : out   std_logic;
    P13RO3  : out   std_logic;
    P13RO4  : out   std_logic;
    P13RO5  : out   std_logic;

    P14CI1  : in    std_logic;
    P14CL   : in    std_logic;
    P14CR   : in    std_logic;
    P14CO   : out   std_logic;
    P14CTI  : in    std_logic;
    P14CTO  : out   std_logic;
    P14EI1  : in    std_logic;
    P14EI2  : in    std_logic;
    P14EI3  : in    std_logic;
    P14EI4  : in    std_logic;
    P14EI5  : in    std_logic;
    P14EL   : in    std_logic;
    P14ER   : in    std_logic;
    P14EO   : out   std_logic;
    P14RI   : in    std_logic;
    P14RL   : in    std_logic;
    P14RR   : in    std_logic;
    P14RO1  : out   std_logic;
    P14RO2  : out   std_logic;
    P14RO3  : out   std_logic;
    P14RO4  : out   std_logic;
    P14RO5  : out   std_logic;

    P15CI1  : in    std_logic;
    P15CL   : in    std_logic;
    P15CR   : in    std_logic;
    P15CO   : out   std_logic;
    P15CTI  : in    std_logic;
    P15CTO  : out   std_logic;
    P15EI1  : in    std_logic;
    P15EI2  : in    std_logic;
    P15EI3  : in    std_logic;
    P15EI4  : in    std_logic;
    P15EI5  : in    std_logic;
    P15EL   : in    std_logic;
    P15ER   : in    std_logic;
    P15EO   : out   std_logic;
    P15RI   : in    std_logic;
    P15RL   : in    std_logic;
    P15RR   : in    std_logic;
    P15RO1  : out   std_logic;
    P15RO2  : out   std_logic;
    P15RO3  : out   std_logic;
    P15RO4  : out   std_logic;
    P15RO5  : out   std_logic;

    P16CI1  : in    std_logic;
    P16CL   : in    std_logic;
    P16CR   : in    std_logic;
    P16CO   : out   std_logic;
    P16CTI  : in    std_logic;
    P16CTO  : out   std_logic;
    P16EI1  : in    std_logic;
    P16EI2  : in    std_logic;
    P16EI3  : in    std_logic;
    P16EI4  : in    std_logic;
    P16EI5  : in    std_logic;
    P16EL   : in    std_logic;
    P16ER   : in    std_logic;
    P16EO   : out   std_logic;
    P16RI   : in    std_logic;
    P16RL   : in    std_logic;
    P16RR   : in    std_logic;
    P16RO1  : out   std_logic;
    P16RO2  : out   std_logic;
    P16RO3  : out   std_logic;
    P16RO4  : out   std_logic;
    P16RO5  : out   std_logic;

    P17CI1  : in    std_logic;
    P17CL   : in    std_logic;
    P17CR   : in    std_logic;
    P17CO   : out   std_logic;
    P17CTI  : in    std_logic;
    P17CTO  : out   std_logic;
    P17EI1  : in    std_logic;
    P17EI2  : in    std_logic;
    P17EI3  : in    std_logic;
    P17EI4  : in    std_logic;
    P17EI5  : in    std_logic;
    P17EL   : in    std_logic;
    P17ER   : in    std_logic;
    P17EO   : out   std_logic;
    P17RI   : in    std_logic;
    P17RL   : in    std_logic;
    P17RR   : in    std_logic;
    P17RO1  : out   std_logic;
    P17RO2  : out   std_logic;
    P17RO3  : out   std_logic;
    P17RO4  : out   std_logic;
    P17RO5  : out   std_logic;

    P18CI1  : in    std_logic;
    P18CL   : in    std_logic;
    P18CR   : in    std_logic;
    P18CO   : out   std_logic;
    P18CTI  : in    std_logic;
    P18CTO  : out   std_logic;
    P18EI1  : in    std_logic;
    P18EI2  : in    std_logic;
    P18EI3  : in    std_logic;
    P18EI4  : in    std_logic;
    P18EI5  : in    std_logic;
    P18EL   : in    std_logic;
    P18ER   : in    std_logic;
    P18EO   : out   std_logic;
    P18RI   : in    std_logic;
    P18RL   : in    std_logic;
    P18RR   : in    std_logic;
    P18RO1  : out   std_logic;
    P18RO2  : out   std_logic;
    P18RO3  : out   std_logic;
    P18RO4  : out   std_logic;
    P18RO5  : out   std_logic;

    P19CI1  : in    std_logic;
    P19CL   : in    std_logic;
    P19CR   : in    std_logic;
    P19CO   : out   std_logic;
    P19CTI  : in    std_logic;
    P19CTO  : out   std_logic;
    P19EI1  : in    std_logic;
    P19EI2  : in    std_logic;
    P19EI3  : in    std_logic;
    P19EI4  : in    std_logic;
    P19EI5  : in    std_logic;
    P19EL   : in    std_logic;
    P19ER   : in    std_logic;
    P19EO   : out   std_logic;
    P19RI   : in    std_logic;
    P19RL   : in    std_logic;
    P19RR   : in    std_logic;
    P19RO1  : out   std_logic;
    P19RO2  : out   std_logic;
    P19RO3  : out   std_logic;
    P19RO4  : out   std_logic;
    P19RO5  : out   std_logic;

    P20CI1  : in    std_logic;
    P20CL   : in    std_logic;
    P20CR   : in    std_logic;
    P20CO   : out   std_logic;
    P20CTI  : in    std_logic;
    P20CTO  : out   std_logic;
    P20EI1  : in    std_logic;
    P20EI2  : in    std_logic;
    P20EI3  : in    std_logic;
    P20EI4  : in    std_logic;
    P20EI5  : in    std_logic;
    P20EL   : in    std_logic;
    P20ER   : in    std_logic;
    P20EO   : out   std_logic;
    P20RI   : in    std_logic;
    P20RL   : in    std_logic;
    P20RR   : in    std_logic;
    P20RO1  : out   std_logic;
    P20RO2  : out   std_logic;
    P20RO3  : out   std_logic;
    P20RO4  : out   std_logic;
    P20RO5  : out   std_logic;

    P21CI1  : in    std_logic;
    P21CL   : in    std_logic;
    P21CR   : in    std_logic;
    P21CO   : out   std_logic;
    P21CTI  : in    std_logic;
    P21CTO  : out   std_logic;
    P21EI1  : in    std_logic;
    P21EI2  : in    std_logic;
    P21EI3  : in    std_logic;
    P21EI4  : in    std_logic;
    P21EI5  : in    std_logic;
    P21EL   : in    std_logic;
    P21ER   : in    std_logic;
    P21EO   : out   std_logic;
    P21RI   : in    std_logic;
    P21RL   : in    std_logic;
    P21RR   : in    std_logic;
    P21RO1  : out   std_logic;
    P21RO2  : out   std_logic;
    P21RO3  : out   std_logic;
    P21RO4  : out   std_logic;
    P21RO5  : out   std_logic;

    P22CI1  : in    std_logic;
    P22CL   : in    std_logic;
    P22CR   : in    std_logic;
    P22CO   : out   std_logic;
    P22CTI  : in    std_logic;
    P22CTO  : out   std_logic;
    P22EI1  : in    std_logic;
    P22EI2  : in    std_logic;
    P22EI3  : in    std_logic;
    P22EI4  : in    std_logic;
    P22EI5  : in    std_logic;
    P22EL   : in    std_logic;
    P22ER   : in    std_logic;
    P22EO   : out   std_logic;
    P22RI   : in    std_logic;
    P22RL   : in    std_logic;
    P22RR   : in    std_logic;
    P22RO1  : out   std_logic;
    P22RO2  : out   std_logic;
    P22RO3  : out   std_logic;
    P22RO4  : out   std_logic;
    P22RO5  : out   std_logic;

    P23CI1  : in    std_logic;
    P23CL   : in    std_logic;
    P23CR   : in    std_logic;
    P23CO   : out   std_logic;
    P23CTI  : in    std_logic;
    P23CTO  : out   std_logic;
    P23EI1  : in    std_logic;
    P23EI2  : in    std_logic;
    P23EI3  : in    std_logic;
    P23EI4  : in    std_logic;
    P23EI5  : in    std_logic;
    P23EL   : in    std_logic;
    P23ER   : in    std_logic;
    P23EO   : out   std_logic;
    P23RI   : in    std_logic;
    P23RL   : in    std_logic;
    P23RR   : in    std_logic;
    P23RO1  : out   std_logic;
    P23RO2  : out   std_logic;
    P23RO3  : out   std_logic;
    P23RO4  : out   std_logic;
    P23RO5  : out   std_logic;

    P24CI1  : in    std_logic;
    P24CL   : in    std_logic;
    P24CR   : in    std_logic;
    P24CO   : out   std_logic;
    P24CTI  : in    std_logic;
    P24CTO  : out   std_logic;
    P24EI1  : in    std_logic;
    P24EI2  : in    std_logic;
    P24EI3  : in    std_logic;
    P24EI4  : in    std_logic;
    P24EI5  : in    std_logic;
    P24EL   : in    std_logic;
    P24ER   : in    std_logic;
    P24EO   : out   std_logic;
    P24RI   : in    std_logic;
    P24RL   : in    std_logic;
    P24RR   : in    std_logic;
    P24RO1  : out   std_logic;
    P24RO2  : out   std_logic;
    P24RO3  : out   std_logic;
    P24RO4  : out   std_logic;
    P24RO5  : out   std_logic;

    P25CI1  : in    std_logic;
    P25CI2  : in    std_logic;	-- DQS
    P25CI3  : in    std_logic;	-- DQS
    P25CI4  : in    std_logic;	-- DQS
    P25CI5  : in    std_logic;	-- DQS
    P25CL   : in    std_logic;
    P25CR   : in    std_logic;
    P25CO   : out   std_logic;
    P25CTI  : in    std_logic;
    P25CTO  : out   std_logic;
    P25EI1  : in    std_logic;
    P25EI2  : in    std_logic;
    P25EI3  : in    std_logic;
    P25EI4  : in    std_logic;
    P25EI5  : in    std_logic;
    P25EL   : in    std_logic;
    P25ER   : in    std_logic;
    P25EO   : out   std_logic;
    P25RI   : in    std_logic;
    P25RL   : in    std_logic;
    P25RR   : in    std_logic;
    P25RO1  : out   std_logic;
    P25RO2  : out   std_logic;
    P25RO3  : out   std_logic;
    P25RO4  : out   std_logic;
    P25RO5  : out   std_logic;

    P26CI1  : in    std_logic;
    P26CL   : in    std_logic;
    P26CR   : in    std_logic;
    P26CO   : out   std_logic;
    P26CTI  : in    std_logic;
    P26CTO  : out   std_logic;
    P26EI1  : in    std_logic;
    P26EI2  : in    std_logic;
    P26EI3  : in    std_logic;
    P26EI4  : in    std_logic;
    P26EI5  : in    std_logic;
    P26EL   : in    std_logic;
    P26ER   : in    std_logic;
    P26EO   : out   std_logic;
    P26RI   : in    std_logic;
    P26RL   : in    std_logic;
    P26RR   : in    std_logic;
    P26RO1  : out   std_logic;
    P26RO2  : out   std_logic;
    P26RO3  : out   std_logic;
    P26RO4  : out   std_logic;
    P26RO5  : out   std_logic;

    P27CI1  : in    std_logic;
    P27CL   : in    std_logic;
    P27CR   : in    std_logic;
    P27CO   : out   std_logic;
    P27CTI  : in    std_logic;
    P27CTO  : out   std_logic;
    P27EI1  : in    std_logic;
    P27EI2  : in    std_logic;
    P27EI3  : in    std_logic;
    P27EI4  : in    std_logic;
    P27EI5  : in    std_logic;
    P27EL   : in    std_logic;
    P27ER   : in    std_logic;
    P27EO   : out   std_logic;
    P27RI   : in    std_logic;
    P27RL   : in    std_logic;
    P27RR   : in    std_logic;
    P27RO1  : out   std_logic;
    P27RO2  : out   std_logic;
    P27RO3  : out   std_logic;
    P27RO4  : out   std_logic;
    P27RO5  : out   std_logic;

    P28CI1  : in    std_logic;
    P28CL   : in    std_logic;
    P28CR   : in    std_logic;
    P28CO   : out   std_logic;
    P28CTI  : in    std_logic;
    P28CTO  : out   std_logic;
    P28EI1  : in    std_logic;
    P28EI2  : in    std_logic;
    P28EI3  : in    std_logic;
    P28EI4  : in    std_logic;
    P28EI5  : in    std_logic;
    P28EL   : in    std_logic;
    P28ER   : in    std_logic;
    P28EO   : out   std_logic;
    P28RI   : in    std_logic;
    P28RL   : in    std_logic;
    P28RR   : in    std_logic;
    P28RO1  : out   std_logic;
    P28RO2  : out   std_logic;
    P28RO3  : out   std_logic;
    P28RO4  : out   std_logic;
    P28RO5  : out   std_logic;

    P29CI1  : in    std_logic;
    P29CL   : in    std_logic;
    P29CR   : in    std_logic;
    P29CO   : out   std_logic;
    P29CTI  : in    std_logic;
    P29CTO  : out   std_logic;
    P29EI1  : in    std_logic;
    P29EI2  : in    std_logic;
    P29EI3  : in    std_logic;
    P29EI4  : in    std_logic;
    P29EI5  : in    std_logic;
    P29EL   : in    std_logic;
    P29ER   : in    std_logic;
    P29EO   : out   std_logic;
    P29RI   : in    std_logic;
    P29RL   : in    std_logic;
    P29RR   : in    std_logic;
    P29RO1  : out   std_logic;
    P29RO2  : out   std_logic;
    P29RO3  : out   std_logic;
    P29RO4  : out   std_logic;
    P29RO5  : out   std_logic;

    P30CI1  : in    std_logic;
    P30CL   : in    std_logic;
    P30CR   : in    std_logic;
    P30CO   : out   std_logic;
    P30CTI  : in    std_logic;
    P30CTO  : out   std_logic;
    P30EI1  : in    std_logic;
    P30EI2  : in    std_logic;
    P30EI3  : in    std_logic;
    P30EI4  : in    std_logic;
    P30EI5  : in    std_logic;
    P30EL   : in    std_logic;
    P30ER   : in    std_logic;
    P30EO   : out   std_logic;
    P30RI   : in    std_logic;
    P30RL   : in    std_logic;
    P30RR   : in    std_logic;
    P30RO1  : out   std_logic;
    P30RO2  : out   std_logic;
    P30RO3  : out   std_logic;
    P30RO4  : out   std_logic;
    P30RO5  : out   std_logic
);
end NX_IOM;

architecture NX_RTL of NX_IOM is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOM";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
HFJhSxgNTabnzo3PLPJDFiMbPNIuSW7Vcn56eGD9qzLWUfj9XPQfBnd5LvcVpbcS
ZGSUI9+OVbBxSKP2bQZW8n4RDmwGgH1jbnljGynnSp1+WBxBo4ESxBV4UoKxdwDf
2P1db5p0bAEXlG9DlVKsE42o9AJ46/h8ICRjqGkjnt2czQ2mwYMbx4oTHGLz8ccC
lpyzs4ugU7aexF1vepKp+J5uNpmSMsTjQpgwtwtT6DZw6CHzxAFRh2oUu77PsmRj
mQT2EwlDnxGsC5Luzyun0jeGMcJSVAdwh33sUKjHD5g+i7Q/Z/S1ghQACj6G47aX
FfgWWwJue+PbrLVG8tlfYw==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 26464)
`protect data_block
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
hLocGOjpug/30+pRq0sYBQ==
`protect end_protected


-- =================================================================================================
--   NX_IOM_CONTROL definition                                                            2017/09/04
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library NX;
use NX.nxPackage.all;

entity NX_IOM_CONTROL is
generic (
    mode_side1   : integer := 0;
    sel_clkw_rx1 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx1 : bit := '0';
    div_tx1      : bit_vector(3 downto 0) := "0000";
    div_rx1      : bit_vector(3 downto 0) := "0000";
    inv_di_fclk1 : bit := '0';
    latency1     : bit := '0';
    mode_side2   : integer := 0;
    sel_clkw_rx2 : bit_vector(1 downto 0) := "00";
    sel_clkr_rx2 : bit := '0';
    div_tx2      : bit_vector(3 downto 0) := "0000";
    div_rx2      : bit_vector(3 downto 0) := "0000";
    inv_di_fclk2 : bit := '0';
    latency2     : bit := '0';
    sel_clk_out1 : bit := '0';
    sel_clk_out2 : bit := '0';
    mode_rpath   : string := "";
    mode_epath   : string := "";
    mode_cpath   : string := "";
    mode_tpath   : string := "";
    mode_io_cal  : bit    := '0';
    location  : string    := ""
);
port(
    RTCK1   : in    std_logic;
    RRCK1   : in    std_logic;
    WTCK1   : in    std_logic;
    WRCK1   : in    std_logic;
    RTCK2   : in    std_logic;
    RRCK2   : in    std_logic;
    WTCK2   : in    std_logic;
    WRCK2   : in    std_logic;
    CTCK    : in    std_logic;

    C1TW    : in    std_logic;
    C1TS    : in    std_logic;
    C1RW1   : in    std_logic;
    C1RW2   : in    std_logic;
    C1RW3   : in    std_logic;
    C1RNE   : in    std_logic;
    C1RS    : in    std_logic;
    C2TW    : in    std_logic;
    C2TS    : in    std_logic;
    C2RW1   : in    std_logic;
    C2RW2   : in    std_logic;
    C2RW3   : in    std_logic;
    C2RNE   : in    std_logic;
    C2RS    : in    std_logic;
    FA1     : in    std_logic;
    FA2     : in    std_logic;
    FA3     : in    std_logic;
    FA4     : in    std_logic;
    FA5     : in    std_logic;
    FA6     : in    std_logic;
    FZ      : in    std_logic;
    DC      : in    std_logic;
    CCK     : in    std_logic;
    DCK     : in    std_logic;
    DRI1    : in    std_logic;
    DRI2    : in    std_logic;
    DRI3    : in    std_logic;
    DRI4    : in    std_logic;
    DRI5    : in    std_logic;
    DRI6    : in    std_logic;
    DRA1    : in    std_logic;
    DRA2    : in    std_logic;
    DRA3    : in    std_logic;
    DRA4    : in    std_logic;
    DRA5    : in    std_logic;
    DRA6    : in    std_logic;
    DRL     : in    std_logic;
    DOS     : in    std_logic;
    DOG     : in    std_logic;
    DIS     : in    std_logic;
    DIG     : in    std_logic;
    DPAS    : in    std_logic;
    DPAG    : in    std_logic;
    DQSS    : in    std_logic;
    DQSG    : in    std_logic;
    DS1     : in    std_logic;
    DS2     : in    std_logic;
    CAD1    : in    std_logic;
    CAD2    : in    std_logic;
    CAD3    : in    std_logic;
    CAD4    : in    std_logic;
    CAD5    : in    std_logic;
    CAD6    : in    std_logic;
    CAP1    : in    std_logic;
    CAP2    : in    std_logic;
    CAP3    : in    std_logic;
    CAP4    : in    std_logic;
    CAN1    : in    std_logic;
    CAN2    : in    std_logic;
    CAN3    : in    std_logic;
    CAN4    : in    std_logic;
    CAT1    : in    std_logic;
    CAT2    : in    std_logic;
    CAT3    : in    std_logic;
    CAT4    : in    std_logic;

    FLD     : out   std_logic;
    FLG     : out   std_logic;
    C1RED   : out   std_logic;
    C2RED   : out   std_logic;
    DRO1    : out   std_logic;
    DRO2    : out   std_logic;
    DRO3    : out   std_logic;
    DRO4    : out   std_logic;
    DRO5    : out   std_logic;
    DRO6    : out   std_logic;
    CAL     : out   std_logic;

    LINK1  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK2  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK3  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK4  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK5  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK6  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK7  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK8  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK9  : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK10 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK11 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK12 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK13 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK14 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK15 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK16 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK17 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK18 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK19 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK20 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK21 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK22 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK23 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK24 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK25 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK26 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK27 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK28 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK29 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK30 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK31 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK32 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK33 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
    LINK34 : inout std_logic_vector(IOM_LINK_SIZE - 1 downto 0)
);
end NX_IOM_CONTROL;

architecture NX_RTL of NX_IOM_CONTROL is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOM_CONTROL";
    attribute NX_USE of LINK1  : signal is "LINK";
    attribute NX_USE of LINK2  : signal is "LINK";
    attribute NX_USE of LINK3  : signal is "LINK";
    attribute NX_USE of LINK4  : signal is "LINK";
    attribute NX_USE of LINK5  : signal is "LINK";
    attribute NX_USE of LINK6  : signal is "LINK";
    attribute NX_USE of LINK7  : signal is "LINK";
    attribute NX_USE of LINK8  : signal is "LINK";
    attribute NX_USE of LINK9  : signal is "LINK";
    attribute NX_USE of LINK10 : signal is "LINK";
    attribute NX_USE of LINK11 : signal is "LINK";
    attribute NX_USE of LINK12 : signal is "LINK";
    attribute NX_USE of LINK13 : signal is "LINK";
    attribute NX_USE of LINK14 : signal is "LINK";
    attribute NX_USE of LINK15 : signal is "LINK";
    attribute NX_USE of LINK16 : signal is "LINK";
    attribute NX_USE of LINK17 : signal is "LINK";
    attribute NX_USE of LINK18 : signal is "LINK";
    attribute NX_USE of LINK19 : signal is "LINK";
    attribute NX_USE of LINK20 : signal is "LINK";
    attribute NX_USE of LINK21 : signal is "LINK";
    attribute NX_USE of LINK22 : signal is "LINK";
    attribute NX_USE of LINK23 : signal is "LINK";
    attribute NX_USE of LINK24 : signal is "LINK";
    attribute NX_USE of LINK25 : signal is "LINK";
    attribute NX_USE of LINK26 : signal is "LINK";
    attribute NX_USE of LINK27 : signal is "LINK";
    attribute NX_USE of LINK28 : signal is "LINK";
    attribute NX_USE of LINK29 : signal is "LINK";
    attribute NX_USE of LINK30 : signal is "LINK";
    attribute NX_USE of LINK31 : signal is "LINK";
    attribute NX_USE of LINK32 : signal is "LINK";
    attribute NX_USE of LINK33 : signal is "LINK";
    attribute NX_USE of LINK34 : signal is "LINK";

begin
end NX_RTL;


`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
XaTCu55+iZFlD8BNrSCDYx4Cc19lKrLZSlKuQ92gtekMndv5igAZbSssFidfrcDk
ZfjlkF3v29PcGo4FyBtT1Yc37HNJZoXFeNoGKhGVX7wg5brdPqaKVibuaYbE2/8p
9mt/WINi5/7AJwHA3gN9r3hX71a6E9lKrv60u72RcAgvmGQmkJKvJLJJ8dQQGvz+
LalRq4IK7bFHj7pdlqAEQ7tghxQA6J/3y0G5R3XED5Z1QNZjQCM7Qg1osyaFrOb7
5kZt71QpsmhQ+1D45wgcmqhy1nJ+yGNHWFmOSxtb4p+dkaHAoNDgRuDGRXQm+SEg
YP56tWFvFT1uXIvdCwCBlw==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 10144)
`protect data_block
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
AKzApYOIXW+kg0JVcxCuoA==
`protect end_protected


-- =================================================================================================
--   NX_IOM_DRIVER definition
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library NX;
use NX.nxPackage.all;

entity NX_IOM_DRIVER is
generic (
    epath_edge      : bit := '0';
    epath_init      : bit := '0';
    epath_load      : bit := '0';
    epath_mode      : bit_vector(3 downto 0) := "0000";
    epath_sync      : bit := '0';
    epath_dynamic   : bit := '0'; --0: off/fixed delay, 1: dynamic delay

    rpath_edge      : bit := '0';
    rpath_init      : bit := '0';
    rpath_load      : bit := '0';
    rpath_mode      : bit_vector(3 downto 0) := "0000";
    rpath_sync      : bit := '0';
    rpath_dynamic   : bit := '0'; --0: off/fixed delay, 1: dynamic delay

    cpath_edge      : bit := '0';
    cpath_init      : bit := '0';
    cpath_load      : bit := '0';
    cpath_mode      : bit_vector(3 downto 0) := "0000";
    cpath_sync      : bit := '0';
    cpath_inv       : bit := '0';

    tpath_mode      : bit_vector(1 downto 0) := "00";

    location        : string := "";
    chained         : bit    := '0';
    symbol          : string := ""
);
port (
    EI1  : in  std_logic;
    EI2  : in  std_logic;
    EI3  : in  std_logic;
    EI4  : in  std_logic;
    EI5  : in  std_logic;
    EL   : in  std_logic;
    ER   : in  std_logic;
    CI1  : in  std_logic;
    CI2  : in  std_logic;
    CI3  : in  std_logic;
    CI4  : in  std_logic;
    CI5  : in  std_logic;
    CL   : in  std_logic;
    CR   : in  std_logic;
    CTI  : in  std_logic;
    RI   : in  std_logic;
    RL   : in  std_logic;
    RR   : in  std_logic;
    CO   : out std_logic;
    EO   : out std_logic;
    RO1  : out std_logic;
    RO2  : out std_logic;
    RO3  : out std_logic;
    RO4  : out std_logic;
    RO5  : out std_logic;
    CTO  : out std_logic;
    LINK : inout  std_logic_vector(IOM_LINK_SIZE - 1 downto 0)
);
end NX_IOM_DRIVER;

architecture NX_RTL of NX_IOM_DRIVER is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOM_DRIVER";
    attribute NX_USE of LINK: signal is "LINK";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
mdDHUOM+rBddcSKM9P24/vzXBvwK8zG4W+Z4xkfzLcfw0WPfnTxwLIN3Wbnf1UQt
QlwP06zUlp6ura+idk4uarNIxN4sh2KUkIgdzbHoTaMdG/shJSgPEkmtVeotzr3N
mWvHucE8FZLkh/MOeLY/QiWa8Gml76jVRSUAk7z4BNy+4SjMZbxrlJQEoIK4McKx
VoRugarhTxC0Rk7ygeDNPJXlHnjRkcwQGxH9dp2QpTNLNmktF0vg/NEotwf9TEpE
KT9cZyHX2JPBfY+PL9KQLgF1OCgGJ+VIpYfm60/vwSNfpBBysip+wWC7dhNRBy8j
znRvcIHzeNr43Dj38tcP5A==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 19088)
`protect data_block
+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
`protect end_protected


-- =================================================================================================
--   NX_IOM_SERDES definition                                                             2018/10/15
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library NX;
use NX.nxPackage.all;

entity NX_IOM_SERDES is
generic (
    data_size : integer range 2 to 10 := 5;
    location  : string := ""
);
port (
    RTCK  : in std_logic;
    WRCK  : in std_logic;
    WTCK  : in std_logic;
    RRCK  : in std_logic;
    TRST  : in std_logic;
    RRST  : in std_logic;
    CTCK  : in std_logic;
    DCK   : in std_logic;
    DRL   : in std_logic;
    DIG   : in std_logic;
    DS    : in std_logic_vector(1 downto 0);
    DRA   : in std_logic_vector(5 downto 0);
    DRI   : in std_logic_vector(5 downto 0);
    FZ    : in std_logic;
    DRO   : out std_logic_vector(5 downto 0);
    DID   : out std_logic_vector(5 downto 0);
    FLD   : out std_logic;
    FLG   : out std_logic;
    LINKN : inout std_logic_vector(IOM_LINK_SIZE-1 downto 0);
    LINKP : inout std_logic_vector(IOM_LINK_SIZE-1 downto 0)
);
end NX_IOM_SERDES;

architecture NX_RTL of NX_IOM_SERDES is
    attribute NX_TYPE: string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE: string;
    attribute NX_USE of NX_RTL: architecture is "NX_IOM_SERDES";
    attribute NX_USE of LINKP: signal is "LINK";
    attribute NX_USE of LINKN: signal is "LINK";
begin
end NX_RTL;

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
tIONpriK4A/dbMkFePhIreN4lQVWx740d9dPaQ128KwiAYczVwuN6S9tnFwYU5Rh
TZ/5TSMK4DWtI844aXHx6oDWSB57pxb9+JfyGW2kGSc36tbAQCjKQX+FvvlD25Ly
P0c4MOM3ss8Dt4vEgIzLnBHMBkVydLYG/l9XLxNBKkZ5P/sNn+tldYstCdBZc3du
Y5B4pYvyfktQe6DBhV8xGqQMLfDkXk043hrdM+DodlFpWT8RZ19qm1enpvF38X+c
agJWRt8nWdPe9OAxJVCfNTWeBMbxLtEjjnf6IcL/+nkUDj9HberUdtzAnhAUgum+
3VvJmfetH1qA4hSskgSuHQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 44272)
`protect data_block
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
154Sl81TBb+ar5+GXxUNnkZ0zrC3fe61ETCHzdXBqWKZbbTtQPU+BNddF65ffgar
awvvj3ZXNqSb0ZgLkjsW9JJELViIQLS0WsWiNsv4RO0QtHrdcVXfCFxkOuE6j3ym
fZPVEJn2JnZD5L3suuNJrjDBKMNaEaW04NnGkN9qcraCOZq/lQoQrLlSgdNu8rJx
TaastPIbX6VntVDpxQYDNiVSV91us9LiQ4OA5W8sRqFqRHG73LPFNlTyBXTQjoiT
YYezo0COBPtsUVtCW1LpaZDUOTOD29uIoTBe9JvY1SB1B+j1enqGr1j6qkCxQFfL
4+T8SVyqfYlKiHXvWEd1dnk8//PhzSm3mDJcbQCJP1Gn/0mLRYKtKf3PwXHpeP2E
0iA/v2keI6S36LzdWWqbMjENm6fsPuHb2ZZ5ws317uftXvUIgl3EH/7Ydol7qPOw
Yu6nyoqnr3eRr0q28W9MXqn/7k9p3nzfq4coh0Ozc2b01RpfGwLImijBS6HzXux3
Tf4GgzwVDieLVs0LIQWLrWPbRv/qSqbONvi+CHyXXdv7fTAzocT34OiXxLf11JH+
OmOV+ijLNc35htdZqm6L5epHjAn7Z0b6QKcOmYKVOrWiUszaYsk5KUIVH+j2wx88
8NM63mePrxjW5LNXdYsTpgrS4dbMAp6dx7F6XK4cL9pgfwmCpNeMY8XpM4l2chr5
Kf+JLLOrSi2YoqZ3ySu0JW0RLml7XaakDOV1t6nbQUHW1ZC+Gwp8TWnBikbKO3sM
JIxDOZbi6jNjlOVi0S7ToD8ySugP/yEWJ+rzB8BX5BZmElMW6etEY3ckzsdPjUXs
e0ffv5gy9OgP8vkb0p4mjkYMTL58tb9oxDwjWi+NNnOdCaXqqljXDq5OtNOGRV7E
5acqHPXvWgfxElhl1big311I3lY8GG5jlMb5rijqjPloHClMnevedwo/CJpAL73D
41DlgdFk5oSdMe8RTnU6tAEEqXXEHFySlywPFFjwYQmklY5U7xMD1BNYsmf8qrF9
lSkbS/LdzfnDo657Cc8j0Gu0x0p4+hm104rm1zLlGnbpW77oCESF+yqSpyt6cV+b
xQ5yWNl/guZv9KnUJkJTQOioMb234CX3GWbyff6HGr8wKk7+a5cjkN78WfPokpA4
Z8nHcpVLe/TX8z5HfgeHr70KpmjnuFV5jjtHIXFpDC2IxBebo3nQV7YGLU6EIdxO
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
cK9MJ056GN7f3uPfyUxVYA==
`protect end_protected

-- =================================================================================================
--   NX_LUT definition                                                                  2017/09/04
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_LUT is
generic (
    lut_table : bit_vector(15 downto 0) := B"0000000000000000" -- truthTable t15 ... t0
);
port (
    I1 : in  std_logic;
    I2 : in  std_logic;
    I3 : in  std_logic;
    I4 : in  std_logic;
    O  : out std_logic
);
end NX_LUT;

architecture NX_RTL of NX_LUT is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_LUT";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_DFF is
generic (
    dff_edge   : bit := '0';
    dff_init   : bit := '0';
    dff_load   : bit := '0';
    dff_sync   : bit := '0';
    dff_ctxt   : std_logic := 'U'
);
port (
    I  : in  std_logic;
    CK : in  std_logic;
    L  : in  std_logic;
    R  : in  std_logic;
    O  : out std_logic
);
end NX_DFF;

architecture NX_RTL of NX_DFF is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_DFF";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_BFF is
port (
    I : in  std_logic;
    O : out std_logic
);
end NX_BFF;

architecture NX_RTL of NX_BFF is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_BFF";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_DFR is
generic (
    location   : string := "";
    iobname    : string := "";
    path       : integer := 0;
    mode       : integer := 0;
    ring       : integer := 0;
    dff_edge   : bit := '0';
    dff_init   : bit := '0';
    dff_load   : bit := '0';
    dff_sync   : bit := '0'
);
port (
    I  : in  std_logic;
    CK : in  std_logic;
    L  : in  std_logic;
    R  : in  std_logic;
    O  : out std_logic
);
end NX_DFR;

architecture NX_RTL of NX_DFR is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_DFR";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_BFR is
generic (
    location   : string := "";
    iobname    : string := "";
    path       : integer := 0;
    mode       : integer := 0;
    ring       : integer := 0
);
port (
    I : in  std_logic;
    O : out std_logic
);
end NX_BFR;

architecture NX_RTL of NX_BFR is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_BFR";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
rhIrD7S20210/0uolptQScX2mYmehzyLKr2QJKhm8LR9hPjTp8ioBHpI4mEQ8YBk
BhkRugv49Kh1K9lTKXeztIh31+KKr/cZXu4bJOcjRxQmW5BOGbY4m9WzTuPXrBnu
miZ9p3VtptqgPinpO7AIK+t4lvyUSAeQbdkgc7Q0L4ya7ysEHna4mF4bijmLr7wF
7fM1F5UPj+CDTfhdhVQieK3m/sGeStQNpBk8QV2evOrrndZBgKIEeSY9r7AXN0pQ
pohtlO/uW/F4sspz/4etpkzhJfxeT4Q2t8rLIo0gkOh0tbYiFHiujm+2PQH2fNl0
F2DfLR4RFJ6rRUxBukBiBA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 7216)
`protect data_block
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
zy8FoiVT9h6rbDeKuyE5Eg==
`protect end_protected

-- =================================================================================================
--   NX_CY definition                                                                   2017/09/19
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_CY is
generic (
    add_carry  : integer := 0      -- 0: low - 1: high - 2: propagate
);
port (
    A1 : in  std_logic;
    A2 : in  std_logic;
    A3 : in  std_logic;
    A4 : in  std_logic;
    B1 : in  std_logic;
    B2 : in  std_logic;
    B3 : in  std_logic;
    B4 : in  std_logic;
    CI : in  std_logic;
    CO : out std_logic;
    S1 : out std_logic;
    S2 : out std_logic;
    S3 : out std_logic;
    S4 : out std_logic
);
end NX_CY;

architecture NX_RTL of NX_CY is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_CY";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
jNsDA/AAa58u2VEJWgITK7gHuaBmr7T0Rt7Y9oVzh5/RFUV7izc96jVbC0XMGdTt
fK8rcSRehKSNOHWwJNWBbB0KDkOI4LBL4EbESLPLEC35Q27q9LdciUET9t19I1QF
Vdx2nNq/x0JKVWSXiSnzm79zL3jMx1rFXSt5NHdhCUp8Z/+WMxBTkmFRFE5TQBtd
oFEh4M9FqKFp72WFe2/9K9bNjlY+yH1qGY5iVzzr4+X1yXqcFLdblLE0IhbfHBbP
ikFD8pWZkEnN3DpmBUxGWvdOkeQYjSlnmUH2BTyrYqZz3dTsHXvLy7h58AifvVng
LXFUvTr7RkVtlNvuAMUhkg==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 2576)
`protect data_block
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
`protect end_protected

-- =================================================================================================
--   NX_RFB definition                                                                  2017/09/19
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_RFB is
generic (
    rck_edge  : bit := '0';   -- 0: read clock rising edge - 1: read clock falling edge
    wck_edge  : bit := '0';   -- 0: write clock rising edge - 1: write clock falling edge
    mem_ctxt  : string := "" -- memory initial context
);
port (
    RCK : in  std_logic;
    WCK : in  std_logic;
    I1  : in  std_logic;
    I2  : in  std_logic;
    I3  : in  std_logic;
    I4  : in  std_logic;
    I5  : in  std_logic;
    I6  : in  std_logic;
    I7  : in  std_logic;
    I8  : in  std_logic;
    I9  : in  std_logic;
    I10 : in  std_logic;
    I11 : in  std_logic;
    I12 : in  std_logic;
    I13 : in  std_logic;
    I14 : in  std_logic;
    I15 : in  std_logic;
    I16 : in  std_logic;
    COR : out std_logic;
    ERR : out std_logic;
    O1  : out std_logic;
    O2  : out std_logic;
    O3  : out std_logic;
    O4  : out std_logic;
    O5  : out std_logic;
    O6  : out std_logic;
    O7  : out std_logic;
    O8  : out std_logic;
    O9  : out std_logic;
    O10 : out std_logic;
    O11 : out std_logic;
    O12 : out std_logic;
    O13 : out std_logic;
    O14 : out std_logic;
    O15 : out std_logic;
    O16 : out std_logic;
    RA1 : in  std_logic;
    RA2 : in  std_logic;
    RA3 : in  std_logic;
    RA4 : in  std_logic;
    RA5 : in  std_logic;
    RA6 : in  std_logic;
    RE  : in  std_logic;
    WA1 : in  std_logic;
    WA2 : in  std_logic;
    WA3 : in  std_logic;
    WA4 : in  std_logic;
    WA5 : in  std_logic;
    WA6 : in  std_logic;
    WE  : in  std_logic
);
end NX_RFB;

architecture NX_RTL of NX_RFB is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_RFB";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

-- =================================================================================================
--   NX_RFB_WRAP definition                                                             2017/09/19
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_RFB_WRAP is
generic (
    rck_edge  : bit := '0';   -- 0: read clock rising edge - 1: read clock falling edge
    wck_edge  : bit := '0';   -- 0: write clock rising edge - 1: write clock falling edge
    mem_ctxt  : string := "" -- memory initial context
);
port (
    RCK : in  std_logic;
    WCK : in  std_logic;
    I   : in  std_logic_vector(15 downto 0);
    COR : out std_logic;
    ERR : out std_logic;
    O   : out std_logic_vector(15 downto 0);
    RA  : in  std_logic_vector(5 downto 0);
    RE  : in  std_logic;
    WA  : in  std_logic_vector(5 downto 0);
    WE  : in  std_logic
);
end NX_RFB_WRAP;

architecture NX_RTL of NX_RFB_WRAP is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "WRAPPER";

component NX_RFB
generic (
    rck_edge  : bit := '0';   -- 0: read clock rising edge - 1: read clock falling edge
    wck_edge  : bit := '0';   -- 0: write clock rising edge - 1: write clock falling edge
    mem_ctxt  : string := "" -- memory initial context
);
port (
    RCK : in  std_logic;
    WCK : in  std_logic;
    I1  : in  std_logic;
    I2  : in  std_logic;
    I3  : in  std_logic;
    I4  : in  std_logic;
    I5  : in  std_logic;
    I6  : in  std_logic;
    I7  : in  std_logic;
    I8  : in  std_logic;
    I9  : in  std_logic;
    I10 : in  std_logic;
    I11 : in  std_logic;
    I12 : in  std_logic;
    I13 : in  std_logic;
    I14 : in  std_logic;
    I15 : in  std_logic;
    I16 : in  std_logic;
    COR : out std_logic;
    ERR : out std_logic;
    O1  : out std_logic;
    O2  : out std_logic;
    O3  : out std_logic;
    O4  : out std_logic;
    O5  : out std_logic;
    O6  : out std_logic;
    O7  : out std_logic;
    O8  : out std_logic;
    O9  : out std_logic;
    O10 : out std_logic;
    O11 : out std_logic;
    O12 : out std_logic;
    O13 : out std_logic;
    O14 : out std_logic;
    O15 : out std_logic;
    O16 : out std_logic;
    RA1 : in  std_logic;
    RA2 : in  std_logic;
    RA3 : in  std_logic;
    RA4 : in  std_logic;
    RA5 : in  std_logic;
    RA6 : in  std_logic;
    RE  : in  std_logic;
    WA1 : in  std_logic;
    WA2 : in  std_logic;
    WA3 : in  std_logic;
    WA4 : in  std_logic;
    WA5 : in  std_logic;
    WA6 : in  std_logic;
    WE  : in  std_logic
);
end component NX_RFB;

begin

rfb: NX_RFB generic map (
    rck_edge    => rck_edge,
    wck_edge    => wck_edge,
    mem_ctxt    => mem_ctxt)
port map (
    RCK => RCK,
    WCK => WCK,
    I1  => I(0),
    I2  => I(1),
    I3  => I(2),
    I4  => I(3),
    I5  => I(4),
    I6  => I(5),
    I7  => I(6),
    I8  => I(7),
    I9  => I(8),
    I10 => I(9),
    I11 => I(10),
    I12 => I(11),
    I13 => I(12),
    I14 => I(13),
    I15 => I(14),
    I16 => I(15),
    COR => COR,
    ERR => ERR,
    O1  => O(0),
    O2  => O(1),
    O3  => O(2),
    O4  => O(3),
    O5  => O(4),
    O6  => O(5),
    O7  => O(6),
    O8  => O(7),
    O9  => O(8),
    O10 => O(9),
    O11 => O(10),
    O12 => O(11),
    O13 => O(12),
    O14 => O(13),
    O15 => O(14),
    O16 => O(15),
    RA1 => RA(0),
    RA2 => RA(1),
    RA3 => RA(2),
    RA4 => RA(3),
    RA5 => RA(4),
    RA6 => RA(5),
    RE  => RE,
    WA1 => WA(0),
    WA2 => WA(1),
    WA3 => WA(2),
    WA4 => WA(3),
    WA5 => WA(4),
    WA6 => WA(5),
    WE  => WE
);
end NX_RTL;

----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity NX_CKS is
port (
    CKI : in  std_logic;
    CMD : in  std_logic;
    CKO : out std_logic
);
end NX_CKS;

architecture NX_RTL of NX_CKS is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_CKS";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
lGgz+OsmkJADolc1etfUv3om0iYN+7dImdneTpQGXEnhIME6JTkP4/UXHkOSWeZu
KfZ1Xf2bAAwpv3cVlaei44M5G/koz6TDMFgBGHGLUghqiN5AwI6cGZNxz0hgvWEy
LjLr2i/F5Uqnr/X8ba6CNqG52gPegMNcV+Uwx97nZbnQ+TsFrWvswFxKZ+XzCkbM
Q+lOeA15NHcWXg6YKKhI1XCu58gaWKql5gYCDSt2y29vPc1lgkVQQ+x85aRF1iLM
mhAF01dlzL6zNUY9IlxqoI3TvHJhbybrMjq9Zv7sKMAaU0LVTQMUqRbHW9YsZiC4
/0/BJ3A4tiHIgOxkgD/9aA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 6752)
`protect data_block
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
cbexpJWLhMU+gxJzJqgrx9yk4wkp354ReMSe/2VH6CXlf8vkpR9WqI8Z4cCySK5p
JRPK456OcqPGeY61W0gzXOxmAdxCOj0qwNtaM5nhAOxR7PCleRfxF0lOTJk1GrHO
rQu3rmVBQVRurVbMx4hrg48VPyaOepDp9zVk2eGwoHf+rJji3NzUeLPfRykgt6Xo
m8JxpHJ50/tKbDb7EidjfqJ2Xq8qu9S4TWvm4dySa45tVJ/DBw/YIsUWgvPqsApe
DgPtX/EvQ4kuT3ZMec7hJdX3WwFR02uCGcstq89NohT1feVeTpOYfM7em23ia19N
83aVoWQvttTvwxbNlkSvJ9XPcmwfDaVMtQaNRrz/NczlMHEKpJETIYJMqzpxru1q
LuQKW39am4+lMZ/cus0+q2RHooVuO9Hccfsjd0miqjq4VCWnuwnDJOTqgpul9Slt
j3HScvJL2Jge2i8Fi7D2O8/cP45erVgsUHl+NxyfdhURsWLrPOtJYr0R4S0l+tbE
10hykT4C+4s1WniUhuIPNTXLtgQRCG5bMs7yA7NkVyS6r3KAjKnjK720ayFHZle2
dHAnvy7lZKucRRuRsrEh1Doww8xmIjj7R3WRWhNIalrwfzTjXhqVZUHFbKOMKCLE
aQTUBTUTRQu2YhFO9HSsrQUNYHkNPeSZtM5U9Wy1hbYupUiGfNy2do9cfNHYmKTz
dRoOG6ZLonl5h0ne/fkdi671fHEdwM77F+qheH7kCkgMd83YnfDXMZRw2VAmJ7Xr
AA4vvOPYbFRQxjdo/SC8MzRtl/Ru2g9HjK0IPo1QtXphQWlJTnRXCyIYpmJVuxxw
6AT4gJqVgJh+FyzVMhawcDRoYGGUHc3kTQMTPEo5CbBQeJvvU0C7fQNeK2VedZ0e
CQcll/CGHwrYnxh2NSQ/ax3FUiA5ygVCdIhLR6zInJRMMtxfru0B85X6Iz7svoNL
EWm+q9wXdFaSCHpIzEzKDisL6n/qFDO2+7tNztOinGo1PNCbpp+27RU/WpBKMFmb
NIuxr7J/ZO5M0AAMYR6X2XqYNjmZ00gEdTHGSA3zvdZHSMcT5ivdA3YgjICJyvz1
ammCpUqmuhx+iqUC3A0illVL4kLhdMZDGI/JB2rSTUXVm/O3pP5OCVHXrLVskc0g
ie4Tc1XRHgohY5XMVo4aUYW6f6hUimXIzWClNF4WJB2j6UC11gJeuCSLf6dFeDsF
p+pCic5LxKdMNHBQuESa/fy7K6W9tgPVvlW/aSt8oTBcgxQIx/k9J41YFts/r7+Y
vhNTx0exrZjWn2VPD+eyeHKUuy8OgRor4SoeFAh0cqh/VoCwbJlRa2fBEgW3dJ5P
dLiRpDy8VBiq+2c8dN2lmCUHi+Z7+V20K6m7LMsbA4ohh7SAex13uKKr9P8yiHV/
EuXbG1Qrc+vlaz797rUOKd8Gt+mRJbj7lE9/Nn0yGjpOWObJ+d9l9Cu73ztWyAMW
WOqtMMmrui3gzfgYVSD4pI8hw0UNKB41wYib2Yj0CUaOAFp3UBmo/2xmPYAlVNtj
jJqM/JmHqVx4pQQR5Kteyydhyz5+68hST3WeQ2BQDK4RuVlykIZqxAHZdScBGCYn
cJo2L4vfpfOmrPKbq8Msp0UcHuAO1sd3+gETB0iiQ0RtBWRlNhFdBj8sU+YuP1l0
BLa32lEAyfX/JTCx4pIvBfu/e2c7ruFqgV8puD9BygcZKbnwa4YiBB6lrJ0Ms3R1
+hSmivA7Z9MtXteFDqgIyt4QiK009ofvxXV5REVxKNoApwkhE8shW65ZI5J+Dnmk
Of6YlfP4LVpnR9zv1J+2T2ES1S91F00eab/GKcALd+1+WxR644B/qDvNL+WYegzM
U5DJRtDUHyofgq+YwLsHyLs0OZPSNZ9mzvZfpIJzb86tvHYS4U7DHBO1G4PvG7Z7
kJskhtcWXlxqUFAlKnB19NjJvSQ7ca/bjKmV97NZsljOutnIiAgwk7DGZL5PC4KL
ceK/CipFP7oCXzqj52oL2DAAwHAAr0NPoWMcXXn4Kl+SNT0gOTBtDEHsd2KW4cY5
bKs4aCXq1Pthvb4qd23VG7xZ4cxr9W7Q1ZUfi+Nyv9czywutqio3l52+8iTnNPWJ
uw52E9P9d5BNijczyFOQ0FWhJPJX6YzAeG5DKzpGlqMz7naZPKnaDWoa8eN7WUbe
U5CRofaowU2OuJxkMWtVlkPD2Hs1Eak2cGvr0qnUt+1xAPQLBX2CAvROnXh/iL5n
61X/0qXlLHCwAvUxWnhZ8PDBcYkRwlPGmXdrY5hXXwNx9LnfebmmnFC4hi4FgFLU
pKvV5l2jZeh50Xy7+tzRFRrXBrxZfIhzwEIUq0q2XdlsqOmhyBXJq37/wr03UBFG
+EXmIt6iLKxCu1UsHth8qrWB/GY4cb0OZUDtqhSKSfsPnN5mneFXVvLsQlGjdAIN
w+RChRvQmXrJbB8UygYyVWU6B9pfmlBkRI1e2N97AO0UDx7BC5k96hkKTWE4E6si
JKh+dnCMftvJeU51KLa2rhULu/zk2rp8S8L1Zn8ekUwCPvWzm3efXGeLiwuh2Geu
MbkrCFS5UFuEiuUERT01ATx/aIctknh1YaPQgqA0A+z2nDud+qpLnkwtdKnVlmE1
eGTTHGyfGQKEa3LwwYWl5cdwHCM8/78jMB82RRqsPGq2DCjjuJUg/YN2jxMmTrFF
81BHLzWPm+ZoW3ApyJF4me6ANJIpTccU5Ujq6QbwgF1v3P3BXgE+gbNArC2BXzAm
OFj1FNXFz8p0kyn9w8hJVA5YnqKopfCoqhPyuvDSJ1IIrYD1hUYgCLsHKy804wTU
xQ+JTZvp3gjQjDCcsx4tH5ellkkErvvBi2EsnF2VIDy0jjP3vtIWPK3SeQwMXL4h
ZNz1v4VzFR+Xk/lIHXAPQLA3RSzWTz1CvrIkwk9dqKqBsKI6JXKxTAsApracTzBc
Hj0NQdD2+kZPpTZAZH7JtrV3D8v6lhaKlAtL628YylPsiKxCAhyIyTR+nfKDTdOu
kIpzMc7V7QBv6zW41jmc3YeuFygxgf2G0AAoNlFwssQuytYdgMjgSQWY7MLaUZ6D
weAdqMDEARVrn/XWG2HHIYmHHq89l2zvRHlkJjdRHbJY4OcbylF5FQwZQzjEb0P0
oBwP4G60cSfruAruSAUvfKeU+VzCGIGz1zG3TrVNKjhjcCDAp501cZmBA9Op77PH
5hfvg7NpcSE97fJzqDpwh7KQoLD92muzv5tCTqffBs6OyP6mbFA2U2KXpe15ty6P
Ps7q9xOb0sLviKWseviLt55o70X4ed09fv3ih6TK2Cjxg+ahZHPTLBjXAOQNYbv4
WAMUGpw4K9SDnQA/pXy0KbOZ4IBm5+EslUvbGPvLman5FdJxFdD3d5BqWjj2WRre
y1zP51t3s9OsTfUHUbDk/ETpBXFDXrKUUljzSxUUiwcHWhy5aArWWIYJHzOWlXZG
ubHw1z7IUifjNA2WodHuhJE1FsJnt10ameOy711idiXpbRxzy1JupFq6YdjaHBti
bGIYWn+9VLsVJr+blZ+jOtTwHq5X0r4GgNsaEiqwFTd/EvJ8qJyrmT3znQ+ja6+P
nyQ+7cl+FYiPpnC4BSr1cFIflbonsb0/fpga6v7wvd1UxIUPdKHdyTun87vbf8Vx
ICxGEHs00VDgqCccADqOokgyMi8b0noQf3NSh+HJZHG19JQG8KyBGZSqFTS9jtir
NViC/YVYWUNtoXxIt8uAdS9/yHZO1Hm3IYr1f+kpsvuKi7V0K9p1FNqHLav7bL3G
fC8OE+KMWihmphUYJJ7QtpkTz4fGu/5NGlj7OqSSRE42+Ctj1/ez2eRfZhXhufZB
cy17TnueQn1vmpM+G4nyBpirs5qoSeQMYPA7De5ztmhOEYrCFQHMDGSGI1ks2baS
mneWc5jODnuQiD0W6YwhV7/iA/EfL3ade3zWH5XqGc+J8fexUBNoWyINIPAucRPc
Kbk+BXkNw6Aa6ai5v0DnmZgo6+csCoEHhDb+c6y38+6f1rhH5s+Gwr3kTH9u9gTo
+/Frw3dNKLnNA7NNrnvTBk+B1t3lSV+QpDnEllVJd1Wl8/03s6w9sTPNhxvfcB9M
LzNeXJkI7ouoFQqlHuMxZIEEiePKuB3KqLx7pv5IH8M=
`protect end_protected

-- =================================================================================================
--   NX_DSP definition                                                                  2018/11/30
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_DSP is
generic (
    std_mode    : string := ""; -- standard mode [ADD36, SUB36, SMUL18, UMUL18, ...] empty for raw
    raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";        -- MUX
    raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";         -- PRC
    raw_config2 : bit_vector(12 downto 0) := B"0000000000000";               -- PRR
    raw_config3 : bit_vector( 6 downto 0) := B"0000000"                      -- ALU
);
port (
    A1    : in  std_logic;
    A2    : in  std_logic;
    A3    : in  std_logic;
    A4    : in  std_logic;
    A5    : in  std_logic;
    A6    : in  std_logic;
    A7    : in  std_logic;
    A8    : in  std_logic;
    A9    : in  std_logic;
    A10   : in  std_logic;
    A11   : in  std_logic;
    A12   : in  std_logic;
    A13   : in  std_logic;
    A14   : in  std_logic;
    A15   : in  std_logic;
    A16   : in  std_logic;
    A17   : in  std_logic;
    A18   : in  std_logic;
    A19   : in  std_logic;
    A20   : in  std_logic;
    A21   : in  std_logic;
    A22   : in  std_logic;
    A23   : in  std_logic;
    A24   : in  std_logic;

    B1    : in  std_logic;
    B2    : in  std_logic;
    B3    : in  std_logic;
    B4    : in  std_logic;
    B5    : in  std_logic;
    B6    : in  std_logic;
    B7    : in  std_logic;
    B8    : in  std_logic;
    B9    : in  std_logic;
    B10   : in  std_logic;
    B11   : in  std_logic;
    B12   : in  std_logic;
    B13   : in  std_logic;
    B14   : in  std_logic;
    B15   : in  std_logic;
    B16   : in  std_logic;
    B17   : in  std_logic;
    B18   : in  std_logic;

    C1    : in  std_logic;
    C2    : in  std_logic;
    C3    : in  std_logic;
    C4    : in  std_logic;
    C5    : in  std_logic;
    C6    : in  std_logic;
    C7    : in  std_logic;
    C8    : in  std_logic;
    C9    : in  std_logic;
    C10   : in  std_logic;
    C11   : in  std_logic;
    C12   : in  std_logic;
    C13   : in  std_logic;
    C14   : in  std_logic;
    C15   : in  std_logic;
    C16   : in  std_logic;
    C17   : in  std_logic;
    C18   : in  std_logic;
    C19   : in  std_logic;
    C20   : in  std_logic;
    C21   : in  std_logic;
    C22   : in  std_logic;
    C23   : in  std_logic;
    C24   : in  std_logic;
    C25   : in  std_logic;
    C26   : in  std_logic;
    C27   : in  std_logic;
    C28   : in  std_logic;
    C29   : in  std_logic;
    C30   : in  std_logic;
    C31   : in  std_logic;
    C32   : in  std_logic;
    C33   : in  std_logic;
    C34   : in  std_logic;
    C35   : in  std_logic;
    C36   : in  std_logic;

    CAI1  : in  std_logic;
    CAI2  : in  std_logic;
    CAI3  : in  std_logic;
    CAI4  : in  std_logic;
    CAI5  : in  std_logic;
    CAI6  : in  std_logic;
    CAI7  : in  std_logic;
    CAI8  : in  std_logic;
    CAI9  : in  std_logic;
    CAI10 : in  std_logic;
    CAI11 : in  std_logic;
    CAI12 : in  std_logic;
    CAI13 : in  std_logic;
    CAI14 : in  std_logic;
    CAI15 : in  std_logic;
    CAI16 : in  std_logic;
    CAI17 : in  std_logic;
    CAI18 : in  std_logic;

    CAO1  : out std_logic;
    CAO2  : out std_logic;
    CAO3  : out std_logic;
    CAO4  : out std_logic;
    CAO5  : out std_logic;
    CAO6  : out std_logic;
    CAO7  : out std_logic;
    CAO8  : out std_logic;
    CAO9  : out std_logic;
    CAO10 : out std_logic;
    CAO11 : out std_logic;
    CAO12 : out std_logic;
    CAO13 : out std_logic;
    CAO14 : out std_logic;
    CAO15 : out std_logic;
    CAO16 : out std_logic;
    CAO17 : out std_logic;
    CAO18 : out std_logic;

    CBI1  : in  std_logic;
    CBI2  : in  std_logic;
    CBI3  : in  std_logic;
    CBI4  : in  std_logic;
    CBI5  : in  std_logic;
    CBI6  : in  std_logic;
    CBI7  : in  std_logic;
    CBI8  : in  std_logic;
    CBI9  : in  std_logic;
    CBI10 : in  std_logic;
    CBI11 : in  std_logic;
    CBI12 : in  std_logic;
    CBI13 : in  std_logic;
    CBI14 : in  std_logic;
    CBI15 : in  std_logic;
    CBI16 : in  std_logic;
    CBI17 : in  std_logic;
    CBI18 : in  std_logic;

    CBO1  : out std_logic;
    CBO2  : out std_logic;
    CBO3  : out std_logic;
    CBO4  : out std_logic;
    CBO5  : out std_logic;
    CBO6  : out std_logic;
    CBO7  : out std_logic;
    CBO8  : out std_logic;
    CBO9  : out std_logic;
    CBO10 : out std_logic;
    CBO11 : out std_logic;
    CBO12 : out std_logic;
    CBO13 : out std_logic;
    CBO14 : out std_logic;
    CBO15 : out std_logic;
    CBO16 : out std_logic;
    CBO17 : out std_logic;
    CBO18 : out std_logic;

    CCI   : in  std_logic;
    CCO   : out std_logic;
    CI    : in  std_logic;
    CK    : in  std_logic;
    CO    : out std_logic;
    CO37  : out std_logic;
    CO49  : out std_logic;

    CZI1  : in  std_logic;
    CZI2  : in  std_logic;
    CZI3  : in  std_logic;
    CZI4  : in  std_logic;
    CZI5  : in  std_logic;
    CZI6  : in  std_logic;
    CZI7  : in  std_logic;
    CZI8  : in  std_logic;
    CZI9  : in  std_logic;
    CZI10 : in  std_logic;
    CZI11 : in  std_logic;
    CZI12 : in  std_logic;
    CZI13 : in  std_logic;
    CZI14 : in  std_logic;
    CZI15 : in  std_logic;
    CZI16 : in  std_logic;
    CZI17 : in  std_logic;
    CZI18 : in  std_logic;
    CZI19 : in  std_logic;
    CZI20 : in  std_logic;
    CZI21 : in  std_logic;
    CZI22 : in  std_logic;
    CZI23 : in  std_logic;
    CZI24 : in  std_logic;
    CZI25 : in  std_logic;
    CZI26 : in  std_logic;
    CZI27 : in  std_logic;
    CZI28 : in  std_logic;
    CZI29 : in  std_logic;
    CZI30 : in  std_logic;
    CZI31 : in  std_logic;
    CZI32 : in  std_logic;
    CZI33 : in  std_logic;
    CZI34 : in  std_logic;
    CZI35 : in  std_logic;
    CZI36 : in  std_logic;
    CZI37 : in  std_logic;
    CZI38 : in  std_logic;
    CZI39 : in  std_logic;
    CZI40 : in  std_logic;
    CZI41 : in  std_logic;
    CZI42 : in  std_logic;
    CZI43 : in  std_logic;
    CZI44 : in  std_logic;
    CZI45 : in  std_logic;
    CZI46 : in  std_logic;
    CZI47 : in  std_logic;
    CZI48 : in  std_logic;
    CZI49 : in  std_logic;
    CZI50 : in  std_logic;
    CZI51 : in  std_logic;
    CZI52 : in  std_logic;
    CZI53 : in  std_logic;
    CZI54 : in  std_logic;
    CZI55 : in  std_logic;
    CZI56 : in  std_logic;

    CZO1  : out std_logic;
    CZO2  : out std_logic;
    CZO3  : out std_logic;
    CZO4  : out std_logic;
    CZO5  : out std_logic;
    CZO6  : out std_logic;
    CZO7  : out std_logic;
    CZO8  : out std_logic;
    CZO9  : out std_logic;
    CZO10 : out std_logic;
    CZO11 : out std_logic;
    CZO12 : out std_logic;
    CZO13 : out std_logic;
    CZO14 : out std_logic;
    CZO15 : out std_logic;
    CZO16 : out std_logic;
    CZO17 : out std_logic;
    CZO18 : out std_logic;
    CZO19 : out std_logic;
    CZO20 : out std_logic;
    CZO21 : out std_logic;
    CZO22 : out std_logic;
    CZO23 : out std_logic;
    CZO24 : out std_logic;
    CZO25 : out std_logic;
    CZO26 : out std_logic;
    CZO27 : out std_logic;
    CZO28 : out std_logic;
    CZO29 : out std_logic;
    CZO30 : out std_logic;
    CZO31 : out std_logic;
    CZO32 : out std_logic;
    CZO33 : out std_logic;
    CZO34 : out std_logic;
    CZO35 : out std_logic;
    CZO36 : out std_logic;
    CZO37 : out std_logic;
    CZO38 : out std_logic;
    CZO39 : out std_logic;
    CZO40 : out std_logic;
    CZO41 : out std_logic;
    CZO42 : out std_logic;
    CZO43 : out std_logic;
    CZO44 : out std_logic;
    CZO45 : out std_logic;
    CZO46 : out std_logic;
    CZO47 : out std_logic;
    CZO48 : out std_logic;
    CZO49 : out std_logic;
    CZO50 : out std_logic;
    CZO51 : out std_logic;
    CZO52 : out std_logic;
    CZO53 : out std_logic;
    CZO54 : out std_logic;
    CZO55 : out std_logic;
    CZO56 : out std_logic;

    D1    : in  std_logic;
    D2    : in  std_logic;
    D3    : in  std_logic;
    D4    : in  std_logic;
    D5    : in  std_logic;
    D6    : in  std_logic;
    D7    : in  std_logic;
    D8    : in  std_logic;
    D9    : in  std_logic;
    D10   : in  std_logic;
    D11   : in  std_logic;
    D12   : in  std_logic;
    D13   : in  std_logic;
    D14   : in  std_logic;
    D15   : in  std_logic;
    D16   : in  std_logic;
    D17   : in  std_logic;
    D18   : in  std_logic;

    OVF   : out std_logic;
    R     : in  std_logic;
    RZ    : in  std_logic;
    WE    : in  std_logic;

    Z1    : out std_logic;
    Z2    : out std_logic;
    Z3    : out std_logic;
    Z4    : out std_logic;
    Z5    : out std_logic;
    Z6    : out std_logic;
    Z7    : out std_logic;
    Z8    : out std_logic;
    Z9    : out std_logic;
    Z10   : out std_logic;
    Z11   : out std_logic;
    Z12   : out std_logic;
    Z13   : out std_logic;
    Z14   : out std_logic;
    Z15   : out std_logic;
    Z16   : out std_logic;
    Z17   : out std_logic;
    Z18   : out std_logic;
    Z19   : out std_logic;
    Z20   : out std_logic;
    Z21   : out std_logic;
    Z22   : out std_logic;
    Z23   : out std_logic;
    Z24   : out std_logic;
    Z25   : out std_logic;
    Z26   : out std_logic;
    Z27   : out std_logic;
    Z28   : out std_logic;
    Z29   : out std_logic;
    Z30   : out std_logic;
    Z31   : out std_logic;
    Z32   : out std_logic;
    Z33   : out std_logic;
    Z34   : out std_logic;
    Z35   : out std_logic;
    Z36   : out std_logic;
    Z37   : out std_logic;
    Z38   : out std_logic;
    Z39   : out std_logic;
    Z40   : out std_logic;
    Z41   : out std_logic;
    Z42   : out std_logic;
    Z43   : out std_logic;
    Z44   : out std_logic;
    Z45   : out std_logic;
    Z46   : out std_logic;
    Z47   : out std_logic;
    Z48   : out std_logic;
    Z49   : out std_logic;
    Z50   : out std_logic;
    Z51   : out std_logic;
    Z52   : out std_logic;
    Z53   : out std_logic;
    Z54   : out std_logic;
    Z55   : out std_logic;
    Z56   : out std_logic
);
end NX_DSP;

architecture NX_RTL of NX_DSP is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_DSP";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

-- =================================================================================================
--   NX_DSP_WRAP definition                                                             2017/09/25
-- =================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NX_DSP_WRAP is
generic (
    std_mode    : string := "";
    raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";        -- MUX
    raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";         -- PRC
    raw_config2 : bit_vector(12 downto 0) := B"0000000000000";               -- PRR
    raw_config3 : bit_vector( 6 downto 0) := B"0000000"                      -- ALU
);
port (
    A    : in  std_logic_vector(23 downto 0);
    B    : in  std_logic_vector(17 downto 0);
    C    : in  std_logic_vector(35 downto 0);

    CAI  : in  std_logic_vector(17 downto 0);
    CAO  : out std_logic_vector(17 downto 0);
    CBI  : in  std_logic_vector(17 downto 0);
    CBO  : out std_logic_vector(17 downto 0);

    CCI  : in  std_logic;
    CCO  : out std_logic;
    CI   : in  std_logic;
    CK   : in  std_logic;
    CO   : out std_logic;
    CO37 : out std_logic;
    CO49 : out std_logic;

    CZI  : in  std_logic_vector(55 downto 0);
    CZO  : out std_logic_vector(55 downto 0);

    D    : in  std_logic_vector(17 downto 0);

    OVF  : out std_logic;
    R    : in  std_logic;
    RZ   : in  std_logic;
    WE   : in  std_logic;

    Z    : out std_logic_vector(55 downto 0)
);
end NX_DSP_WRAP;

-- architecture NXP_ARCH of NX_DSP_WRAP#{{{#
architecture NXP_ARCH of NX_DSP_WRAP is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NXP_ARCH: architecture is "WRAPPER";

component NX_DSP
generic (
    std_mode    : string := "";
    raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";      -- MUX
    raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";       -- PRC
    raw_config2 : bit_vector(12 downto 0) := B"0000000000000";             -- PRR
    raw_config3 : bit_vector( 6 downto 0) := B"0000000"                    -- ALU
);
port (
    A1    : in  std_logic;
    A2    : in  std_logic;
    A3    : in  std_logic;
    A4    : in  std_logic;
    A5    : in  std_logic;
    A6    : in  std_logic;
    A7    : in  std_logic;
    A8    : in  std_logic;
    A9    : in  std_logic;
    A10   : in  std_logic;
    A11   : in  std_logic;
    A12   : in  std_logic;
    A13   : in  std_logic;
    A14   : in  std_logic;
    A15   : in  std_logic;
    A16   : in  std_logic;
    A17   : in  std_logic;
    A18   : in  std_logic;
    A19   : in  std_logic;
    A20   : in  std_logic;
    A21   : in  std_logic;
    A22   : in  std_logic;
    A23   : in  std_logic;
    A24   : in  std_logic;

    B1    : in  std_logic;
    B2    : in  std_logic;
    B3    : in  std_logic;
    B4    : in  std_logic;
    B5    : in  std_logic;
    B6    : in  std_logic;
    B7    : in  std_logic;
    B8    : in  std_logic;
    B9    : in  std_logic;
    B10   : in  std_logic;
    B11   : in  std_logic;
    B12   : in  std_logic;
    B13   : in  std_logic;
    B14   : in  std_logic;
    B15   : in  std_logic;
    B16   : in  std_logic;
    B17   : in  std_logic;
    B18   : in  std_logic;

    C1    : in  std_logic;
    C2    : in  std_logic;
    C3    : in  std_logic;
    C4    : in  std_logic;
    C5    : in  std_logic;
    C6    : in  std_logic;
    C7    : in  std_logic;
    C8    : in  std_logic;
    C9    : in  std_logic;
    C10   : in  std_logic;
    C11   : in  std_logic;
    C12   : in  std_logic;
    C13   : in  std_logic;
    C14   : in  std_logic;
    C15   : in  std_logic;
    C16   : in  std_logic;
    C17   : in  std_logic;
    C18   : in  std_logic;
    C19   : in  std_logic;
    C20   : in  std_logic;
    C21   : in  std_logic;
    C22   : in  std_logic;
    C23   : in  std_logic;
    C24   : in  std_logic;
    C25   : in  std_logic;
    C26   : in  std_logic;
    C27   : in  std_logic;
    C28   : in  std_logic;
    C29   : in  std_logic;
    C30   : in  std_logic;
    C31   : in  std_logic;
    C32   : in  std_logic;
    C33   : in  std_logic;
    C34   : in  std_logic;
    C35   : in  std_logic;
    C36   : in  std_logic;

    CAI1  : in  std_logic;
    CAI2  : in  std_logic;
    CAI3  : in  std_logic;
    CAI4  : in  std_logic;
    CAI5  : in  std_logic;
    CAI6  : in  std_logic;
    CAI7  : in  std_logic;
    CAI8  : in  std_logic;
    CAI9  : in  std_logic;
    CAI10 : in  std_logic;
    CAI11 : in  std_logic;
    CAI12 : in  std_logic;
    CAI13 : in  std_logic;
    CAI14 : in  std_logic;
    CAI15 : in  std_logic;
    CAI16 : in  std_logic;
    CAI17 : in  std_logic;
    CAI18 : in  std_logic;

    CAO1  : out std_logic;
    CAO2  : out std_logic;
    CAO3  : out std_logic;
    CAO4  : out std_logic;
    CAO5  : out std_logic;
    CAO6  : out std_logic;
    CAO7  : out std_logic;
    CAO8  : out std_logic;
    CAO9  : out std_logic;
    CAO10 : out std_logic;
    CAO11 : out std_logic;
    CAO12 : out std_logic;
    CAO13 : out std_logic;
    CAO14 : out std_logic;
    CAO15 : out std_logic;
    CAO16 : out std_logic;
    CAO17 : out std_logic;
    CAO18 : out std_logic;

    CBI1  : in  std_logic;
    CBI2  : in  std_logic;
    CBI3  : in  std_logic;
    CBI4  : in  std_logic;
    CBI5  : in  std_logic;
    CBI6  : in  std_logic;
    CBI7  : in  std_logic;
    CBI8  : in  std_logic;
    CBI9  : in  std_logic;
    CBI10 : in  std_logic;
    CBI11 : in  std_logic;
    CBI12 : in  std_logic;
    CBI13 : in  std_logic;
    CBI14 : in  std_logic;
    CBI15 : in  std_logic;
    CBI16 : in  std_logic;
    CBI17 : in  std_logic;
    CBI18 : in  std_logic;

    CBO1  : out std_logic;
    CBO2  : out std_logic;
    CBO3  : out std_logic;
    CBO4  : out std_logic;
    CBO5  : out std_logic;
    CBO6  : out std_logic;
    CBO7  : out std_logic;
    CBO8  : out std_logic;
    CBO9  : out std_logic;
    CBO10 : out std_logic;
    CBO11 : out std_logic;
    CBO12 : out std_logic;
    CBO13 : out std_logic;
    CBO14 : out std_logic;
    CBO15 : out std_logic;
    CBO16 : out std_logic;
    CBO17 : out std_logic;
    CBO18 : out std_logic;

    CCI   : in  std_logic;
    CCO   : out std_logic;
    CI    : in  std_logic;
    CK    : in  std_logic;
    CO    : out std_logic;
    CO37  : out std_logic;
    CO49  : out std_logic;

    CZI1  : in  std_logic;
    CZI2  : in  std_logic;
    CZI3  : in  std_logic;
    CZI4  : in  std_logic;
    CZI5  : in  std_logic;
    CZI6  : in  std_logic;
    CZI7  : in  std_logic;
    CZI8  : in  std_logic;
    CZI9  : in  std_logic;
    CZI10 : in  std_logic;
    CZI11 : in  std_logic;
    CZI12 : in  std_logic;
    CZI13 : in  std_logic;
    CZI14 : in  std_logic;
    CZI15 : in  std_logic;
    CZI16 : in  std_logic;
    CZI17 : in  std_logic;
    CZI18 : in  std_logic;
    CZI19 : in  std_logic;
    CZI20 : in  std_logic;
    CZI21 : in  std_logic;
    CZI22 : in  std_logic;
    CZI23 : in  std_logic;
    CZI24 : in  std_logic;
    CZI25 : in  std_logic;
    CZI26 : in  std_logic;
    CZI27 : in  std_logic;
    CZI28 : in  std_logic;
    CZI29 : in  std_logic;
    CZI30 : in  std_logic;
    CZI31 : in  std_logic;
    CZI32 : in  std_logic;
    CZI33 : in  std_logic;
    CZI34 : in  std_logic;
    CZI35 : in  std_logic;
    CZI36 : in  std_logic;
    CZI37 : in  std_logic;
    CZI38 : in  std_logic;
    CZI39 : in  std_logic;
    CZI40 : in  std_logic;
    CZI41 : in  std_logic;
    CZI42 : in  std_logic;
    CZI43 : in  std_logic;
    CZI44 : in  std_logic;
    CZI45 : in  std_logic;
    CZI46 : in  std_logic;
    CZI47 : in  std_logic;
    CZI48 : in  std_logic;
    CZI49 : in  std_logic;
    CZI50 : in  std_logic;
    CZI51 : in  std_logic;
    CZI52 : in  std_logic;
    CZI53 : in  std_logic;
    CZI54 : in  std_logic;
    CZI55 : in  std_logic;
    CZI56 : in  std_logic;

    CZO1  : out std_logic;
    CZO2  : out std_logic;
    CZO3  : out std_logic;
    CZO4  : out std_logic;
    CZO5  : out std_logic;
    CZO6  : out std_logic;
    CZO7  : out std_logic;
    CZO8  : out std_logic;
    CZO9  : out std_logic;
    CZO10 : out std_logic;
    CZO11 : out std_logic;
    CZO12 : out std_logic;
    CZO13 : out std_logic;
    CZO14 : out std_logic;
    CZO15 : out std_logic;
    CZO16 : out std_logic;
    CZO17 : out std_logic;
    CZO18 : out std_logic;
    CZO19 : out std_logic;
    CZO20 : out std_logic;
    CZO21 : out std_logic;
    CZO22 : out std_logic;
    CZO23 : out std_logic;
    CZO24 : out std_logic;
    CZO25 : out std_logic;
    CZO26 : out std_logic;
    CZO27 : out std_logic;
    CZO28 : out std_logic;
    CZO29 : out std_logic;
    CZO30 : out std_logic;
    CZO31 : out std_logic;
    CZO32 : out std_logic;
    CZO33 : out std_logic;
    CZO34 : out std_logic;
    CZO35 : out std_logic;
    CZO36 : out std_logic;
    CZO37 : out std_logic;
    CZO38 : out std_logic;
    CZO39 : out std_logic;
    CZO40 : out std_logic;
    CZO41 : out std_logic;
    CZO42 : out std_logic;
    CZO43 : out std_logic;
    CZO44 : out std_logic;
    CZO45 : out std_logic;
    CZO46 : out std_logic;
    CZO47 : out std_logic;
    CZO48 : out std_logic;
    CZO49 : out std_logic;
    CZO50 : out std_logic;
    CZO51 : out std_logic;
    CZO52 : out std_logic;
    CZO53 : out std_logic;
    CZO54 : out std_logic;
    CZO55 : out std_logic;
    CZO56 : out std_logic;

    D1    : in  std_logic;
    D2    : in  std_logic;
    D3    : in  std_logic;
    D4    : in  std_logic;
    D5    : in  std_logic;
    D6    : in  std_logic;
    D7    : in  std_logic;
    D8    : in  std_logic;
    D9    : in  std_logic;
    D10   : in  std_logic;
    D11   : in  std_logic;
    D12   : in  std_logic;
    D13   : in  std_logic;
    D14   : in  std_logic;
    D15   : in  std_logic;
    D16   : in  std_logic;
    D17   : in  std_logic;
    D18   : in  std_logic;

    OVF   : out std_logic;
    R     : in  std_logic;
    RZ    : in  std_logic;
    WE    : in  std_logic;

    Z1    : out std_logic;
    Z2    : out std_logic;
    Z3    : out std_logic;
    Z4    : out std_logic;
    Z5    : out std_logic;
    Z6    : out std_logic;
    Z7    : out std_logic;
    Z8    : out std_logic;
    Z9    : out std_logic;
    Z10   : out std_logic;
    Z11   : out std_logic;
    Z12   : out std_logic;
    Z13   : out std_logic;
    Z14   : out std_logic;
    Z15   : out std_logic;
    Z16   : out std_logic;
    Z17   : out std_logic;
    Z18   : out std_logic;
    Z19   : out std_logic;
    Z20   : out std_logic;
    Z21   : out std_logic;
    Z22   : out std_logic;
    Z23   : out std_logic;
    Z24   : out std_logic;
    Z25   : out std_logic;
    Z26   : out std_logic;
    Z27   : out std_logic;
    Z28   : out std_logic;
    Z29   : out std_logic;
    Z30   : out std_logic;
    Z31   : out std_logic;
    Z32   : out std_logic;
    Z33   : out std_logic;
    Z34   : out std_logic;
    Z35   : out std_logic;
    Z36   : out std_logic;
    Z37   : out std_logic;
    Z38   : out std_logic;
    Z39   : out std_logic;
    Z40   : out std_logic;
    Z41   : out std_logic;
    Z42   : out std_logic;
    Z43   : out std_logic;
    Z44   : out std_logic;
    Z45   : out std_logic;
    Z46   : out std_logic;
    Z47   : out std_logic;
    Z48   : out std_logic;
    Z49   : out std_logic;
    Z50   : out std_logic;
    Z51   : out std_logic;
    Z52   : out std_logic;
    Z53   : out std_logic;
    Z54   : out std_logic;
    Z55   : out std_logic;
    Z56   : out std_logic
);
end component;

begin

dsp: NX_DSP generic map (
    std_mode    => std_mode,
    raw_config0 => raw_config0,
    raw_config1 => raw_config1,
    raw_config2 => raw_config2,
    raw_config3 => raw_config3)
port map (
    A1    => A(0),
    A2    => A(1),
    A3    => A(2),
    A4    => A(3),
    A5    => A(4),
    A6    => A(5),
    A7    => A(6),
    A8    => A(7),
    A9    => A(8),
    A10   => A(9),
    A11   => A(10),
    A12   => A(11),
    A13   => A(12),
    A14   => A(13),
    A15   => A(14),
    A16   => A(15),
    A17   => A(16),
    A18   => A(17),
    A19   => A(18),
    A20   => A(19),
    A21   => A(20),
    A22   => A(21),
    A23   => A(22),
    A24   => A(23),

    B1    => B(0),
    B2    => B(1),
    B3    => B(2),
    B4    => B(3),
    B5    => B(4),
    B6    => B(5),
    B7    => B(6),
    B8    => B(7),
    B9    => B(8),
    B10   => B(9),
    B11   => B(10),
    B12   => B(11),
    B13   => B(12),
    B14   => B(13),
    B15   => B(14),
    B16   => B(15),
    B17   => B(16),
    B18   => B(17),

    C1    => C(0),
    C2    => C(1),
    C3    => C(2),
    C4    => C(3),
    C5    => C(4),
    C6    => C(5),
    C7    => C(6),
    C8    => C(7),
    C9    => C(8),
    C10   => C(9),
    C11   => C(10),
    C12   => C(11),
    C13   => C(12),
    C14   => C(13),
    C15   => C(14),
    C16   => C(15),
    C17   => C(16),
    C18   => C(17),
    C19   => C(18),
    C20   => C(19),
    C21   => C(20),
    C22   => C(21),
    C23   => C(22),
    C24   => C(23),
    C25   => C(24),
    C26   => C(25),
    C27   => C(26),
    C28   => C(27),
    C29   => C(28),
    C30   => C(29),
    C31   => C(30),
    C32   => C(31),
    C33   => C(32),
    C34   => C(33),
    C35   => C(34),
    C36   => C(35),

    CAI1  => CAI(0),
    CAI2  => CAI(1),
    CAI3  => CAI(2),
    CAI4  => CAI(3),
    CAI5  => CAI(4),
    CAI6  => CAI(5),
    CAI7  => CAI(6),
    CAI8  => CAI(7),
    CAI9  => CAI(8),
    CAI10 => CAI(9),
    CAI11 => CAI(10),
    CAI12 => CAI(11),
    CAI13 => CAI(12),
    CAI14 => CAI(13),
    CAI15 => CAI(14),
    CAI16 => CAI(15),
    CAI17 => CAI(16),
    CAI18 => CAI(17),

    CAO1  => CAO(0),
    CAO2  => CAO(1),
    CAO3  => CAO(2),
    CAO4  => CAO(3),
    CAO5  => CAO(4),
    CAO6  => CAO(5),
    CAO7  => CAO(6),
    CAO8  => CAO(7),
    CAO9  => CAO(8),
    CAO10 => CAO(9),
    CAO11 => CAO(10),
    CAO12 => CAO(11),
    CAO13 => CAO(12),
    CAO14 => CAO(13),
    CAO15 => CAO(14),
    CAO16 => CAO(15),
    CAO17 => CAO(16),
    CAO18 => CAO(17),

    CBI1  => CBI(0),
    CBI2  => CBI(1),
    CBI3  => CBI(2),
    CBI4  => CBI(3),
    CBI5  => CBI(4),
    CBI6  => CBI(5),
    CBI7  => CBI(6),
    CBI8  => CBI(7),
    CBI9  => CBI(8),
    CBI10 => CBI(9),
    CBI11 => CBI(10),
    CBI12 => CBI(11),
    CBI13 => CBI(12),
    CBI14 => CBI(13),
    CBI15 => CBI(14),
    CBI16 => CBI(15),
    CBI17 => CBI(16),
    CBI18 => CBI(17),

    CBO1  => CBO(0),
    CBO2  => CBO(1),
    CBO3  => CBO(2),
    CBO4  => CBO(3),
    CBO5  => CBO(4),
    CBO6  => CBO(5),
    CBO7  => CBO(6),
    CBO8  => CBO(7),
    CBO9  => CBO(8),
    CBO10 => CBO(9),
    CBO11 => CBO(10),
    CBO12 => CBO(11),
    CBO13 => CBO(12),
    CBO14 => CBO(13),
    CBO15 => CBO(14),
    CBO16 => CBO(15),
    CBO17 => CBO(16),
    CBO18 => CBO(17),

    CCI   => CCI,
    CCO   => CCO,
    CI    => CI,
    CK    => CK,
    CO    => CO,
    CO37  => CO37,
    CO49  => CO49,

    CZI1  => CZI(0),
    CZI2  => CZI(1),
    CZI3  => CZI(2),
    CZI4  => CZI(3),
    CZI5  => CZI(4),
    CZI6  => CZI(5),
    CZI7  => CZI(6),
    CZI8  => CZI(7),
    CZI9  => CZI(8),
    CZI10 => CZI(9),
    CZI11 => CZI(10),
    CZI12 => CZI(11),
    CZI13 => CZI(12),
    CZI14 => CZI(13),
    CZI15 => CZI(14),
    CZI16 => CZI(15),
    CZI17 => CZI(16),
    CZI18 => CZI(17),
    CZI19 => CZI(18),
    CZI20 => CZI(19),
    CZI21 => CZI(20),
    CZI22 => CZI(21),
    CZI23 => CZI(22),
    CZI24 => CZI(23),
    CZI25 => CZI(24),
    CZI26 => CZI(25),
    CZI27 => CZI(26),
    CZI28 => CZI(27),
    CZI29 => CZI(28),
    CZI30 => CZI(29),
    CZI31 => CZI(30),
    CZI32 => CZI(31),
    CZI33 => CZI(32),
    CZI34 => CZI(33),
    CZI35 => CZI(34),
    CZI36 => CZI(35),
    CZI37 => CZI(36),
    CZI38 => CZI(37),
    CZI39 => CZI(38),
    CZI40 => CZI(39),
    CZI41 => CZI(40),
    CZI42 => CZI(41),
    CZI43 => CZI(42),
    CZI44 => CZI(43),
    CZI45 => CZI(44),
    CZI46 => CZI(45),
    CZI47 => CZI(46),
    CZI48 => CZI(47),
    CZI49 => CZI(48),
    CZI50 => CZI(49),
    CZI51 => CZI(50),
    CZI52 => CZI(51),
    CZI53 => CZI(52),
    CZI54 => CZI(53),
    CZI55 => CZI(54),
    CZI56 => CZI(55),

    CZO1  => CZO(0),
    CZO2  => CZO(1),
    CZO3  => CZO(2),
    CZO4  => CZO(3),
    CZO5  => CZO(4),
    CZO6  => CZO(5),
    CZO7  => CZO(6),
    CZO8  => CZO(7),
    CZO9  => CZO(8),
    CZO10 => CZO(9),
    CZO11 => CZO(10),
    CZO12 => CZO(11),
    CZO13 => CZO(12),
    CZO14 => CZO(13),
    CZO15 => CZO(14),
    CZO16 => CZO(15),
    CZO17 => CZO(16),
    CZO18 => CZO(17),
    CZO19 => CZO(18),
    CZO20 => CZO(19),
    CZO21 => CZO(20),
    CZO22 => CZO(21),
    CZO23 => CZO(22),
    CZO24 => CZO(23),
    CZO25 => CZO(24),
    CZO26 => CZO(25),
    CZO27 => CZO(26),
    CZO28 => CZO(27),
    CZO29 => CZO(28),
    CZO30 => CZO(29),
    CZO31 => CZO(30),
    CZO32 => CZO(31),
    CZO33 => CZO(32),
    CZO34 => CZO(33),
    CZO35 => CZO(34),
    CZO36 => CZO(35),
    CZO37 => CZO(36),
    CZO38 => CZO(37),
    CZO39 => CZO(38),
    CZO40 => CZO(39),
    CZO41 => CZO(40),
    CZO42 => CZO(41),
    CZO43 => CZO(42),
    CZO44 => CZO(43),
    CZO45 => CZO(44),
    CZO46 => CZO(45),
    CZO47 => CZO(46),
    CZO48 => CZO(47),
    CZO49 => CZO(48),
    CZO50 => CZO(49),
    CZO51 => CZO(50),
    CZO52 => CZO(51),
    CZO53 => CZO(52),
    CZO54 => CZO(53),
    CZO55 => CZO(54),
    CZO56 => CZO(55),

    D1    => D(0),
    D2    => D(1),
    D3    => D(2),
    D4    => D(3),
    D5    => D(4),
    D6    => D(5),
    D7    => D(6),
    D8    => D(7),
    D9    => D(8),
    D10   => D(9),
    D11   => D(10),
    D12   => D(11),
    D13   => D(12),
    D14   => D(13),
    D15   => D(14),
    D16   => D(15),
    D17   => D(16),
    D18   => D(17),

    OVF   => OVF,
    R     => R,
    RZ    => RZ,
    WE    => WE,

    Z1    => Z(0),
    Z2    => Z(1),
    Z3    => Z(2),
    Z4    => Z(3),
    Z5    => Z(4),
    Z6    => Z(5),
    Z7    => Z(6),
    Z8    => Z(7),
    Z9    => Z(8),
    Z10   => Z(9),
    Z11   => Z(10),
    Z12   => Z(11),
    Z13   => Z(12),
    Z14   => Z(13),
    Z15   => Z(14),
    Z16   => Z(15),
    Z17   => Z(16),
    Z18   => Z(17),
    Z19   => Z(18),
    Z20   => Z(19),
    Z21   => Z(20),
    Z22   => Z(21),
    Z23   => Z(22),
    Z24   => Z(23),
    Z25   => Z(24),
    Z26   => Z(25),
    Z27   => Z(26),
    Z28   => Z(27),
    Z29   => Z(28),
    Z30   => Z(29),
    Z31   => Z(30),
    Z32   => Z(31),
    Z33   => Z(32),
    Z34   => Z(33),
    Z35   => Z(34),
    Z36   => Z(35),
    Z37   => Z(36),
    Z38   => Z(37),
    Z39   => Z(38),
    Z40   => Z(39),
    Z41   => Z(40),
    Z42   => Z(41),
    Z43   => Z(42),
    Z44   => Z(43),
    Z45   => Z(44),
    Z46   => Z(45),
    Z47   => Z(46),
    Z48   => Z(47),
    Z49   => Z(48),
    Z50   => Z(49),
    Z51   => Z(50),
    Z52   => Z(51),
    Z53   => Z(52),
    Z54   => Z(53),
    Z55   => Z(54),
    Z56   => Z(55)
);

end NXP_ARCH;
-- #}}}#

----------------------------------------------------------------------------------------------------

-- =================================================================================================
--   NX_DSP_SPLIT definition                                                             2017/09/25
-- =================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_signed.ALL;

entity NX_DSP_SPLIT is
generic (
-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config0" (cfg_mode). Defines :
------------------------------------------------------------------------- 
   SIGNED_MODE          : bit                    := '0';
   PRE_ADDER_OP         : bit                    := '0';       -- '0' = Additon, '1' = Subraction
   MUX_A                : bit                    := '0';       -- '0' = A input, '1' = CAI input
   MUX_B                : bit                    := '0';       -- '0' = B input, '1' = CBI input
   MUX_P                : bit                    := '0';       -- '0' for PRE_ADDER, '0' for B input
   MUX_X                : bit_vector(1 downto 0) := B"00";     -- Select X operand   "00" = C,
                                                               --                    "01" = CZI,
                                                               --                    "11" = SHFT(CZI) & C(11:0),
                                                               --                    "10" Select Z feedback
   MUX_Y                : bit                    := '0';       -- '0' Select MULT output, '1' for (B & A)
   MUX_CI               : bit                    := '0';       -- Select fabric input (not cascade)
   MUX_Z                : bit                    := '0';       -- Select ALU output
                                                               -- (not ALU input operand coming from PR_Y)

   Z_FEEDBACK_SHL12     : bit                    := '0';       -- '0' for No shift, '1' for 12-bit left shift
   ENABLE_SATURATION    : bit                    := '0';       -- '0' for Disable,  '1' for Enable
   SATURATION_RANK      : bit_vector(5 downto 0) := B"000000"; -- Weight of useful MSB
                                                               --        on Z and CZO result
                                                               --(to define saturation and overflow)

   ALU_DYNAMIC_OP       : bit                    := '0';       -- '0' for Static,
                                                               -- '1' for Dynamic
                                                               -- (D6 ... D1 is not used for dynamic operation)
   CO_SEL               : bit                    := '0';       -- '0' for C0 = ALU(36), '1' for CO = ALU(48)

-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config1" (cfg_pipe_mux)
-------------------------------------------------------------------------
   PR_A_MUX                : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        on A input
   PR_A_CASCADE_MUX        : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        for CAO output
   PR_B_MUX                : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        on B input
   PR_B_CASCADE_MUX        : bit_vector(1 downto 0) := B"00"; -- Number of pipe reg levels
                                                              --        for CAO output

   PR_C_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_D_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_CI_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_P_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg (Pre-adder)
   PR_X_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_Y_MUX                : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg

   PR_MULT_MUX             : bit                    := '0';   -- No pipe reg  -- Register inside MULT
   PR_ALU_MUX              : bit                    := '0';   -- No pipe reg  -- Register inside ALU
   PR_Z_MUX                : bit                    := '0';   -- Registered output

   PR_CO_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg
   PR_OV_MUX               : bit                    := '0';   -- '0' for No pipe reg, '1' for 1 pipe reg

-------------------------------------------------------------------------
-- Generic declaration to define the "raw_config2" (cfg_pipe_rst)
-------------------------------------------------------------------------
   ENABLE_PR_A_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_B_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_C_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_D_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_CI_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_P_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_X_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_Y_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_MULT_RST      : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_ALU_RST       : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_Z_RST         : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_CO_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 
   ENABLE_PR_OV_RST        : bit                    := '0';   -- '0' for Disable, '1' for Enable 

-------------------------------------------------------------------------
-- Constants declaration to define the "cfg_pipe_rst" -- raw_config3(6 downto 0)
-------------------------------------------------------------------------
   ALU_OP                  : bit_vector(5 downto 0) := B"000000"; -- Addition = "000000", Subtract = "001010"
   ALU_MUX                 : bit                    := '0'        -- '0' for Don't swap ALU operands,
                                                                  -- '1' for ALU Swap operands
    );
port(
   CK   : IN  std_logic;
   R    : IN  std_logic;
   RZ   : IN  std_logic;
   WE   : IN  std_logic;

   CI   : IN  std_logic;     -- cy_i
   A    : IN  std_logic_vector(23 downto 0);
   B    : IN  std_logic_vector(17 downto 0);
   C    : IN  std_logic_vector(35 downto 0);
   D    : IN  std_logic_vector(17 downto 0);
   CAI  : IN  std_logic_vector(17 downto 0);
   CBI  : IN  std_logic_vector(17 downto 0);
   CZI  : IN  std_logic_vector(55 downto 0);
   CCI  : IN  std_logic;  -- ccy_i

   Z    : out  std_logic_vector(55 downto 0);
   CO   : OUT  std_logic;  -- cy_o
   CO36 : OUT  std_logic;  -- cy36_o
   CO48 : OUT  std_logic;  -- cy48_o
   OVF  : OUT  std_logic;
   CAO  : OUT  std_logic_vector(17 downto 0);
   CBO  : OUT  std_logic_vector(17 downto 0);
   CZO  : OUT  std_logic_vector(55 downto 0);
   CCO  : OUT  std_logic  -- ccy_o
  );
end NX_DSP_SPLIT;

-- architecture NX_RTL of NX_DSP_SPLIT#{{{#
architecture NX_RTL of NX_DSP_SPLIT is

----------------------------------------------------------
-- Internal signals to be mapped to the NX_DSP component
----------------------------------------------------------
signal A1         : std_logic := '0';
signal A2         : std_logic := '0';
signal A3         : std_logic := '0';
signal A4         : std_logic := '0';
signal A5         : std_logic := '0';
signal A6         : std_logic := '0';
signal A7         : std_logic := '0';
signal A8         : std_logic := '0';
signal A9         : std_logic := '0';
signal A10        : std_logic := '0';
signal A11        : std_logic := '0';
signal A12        : std_logic := '0';
signal A13        : std_logic := '0';
signal A14        : std_logic := '0';
signal A15        : std_logic := '0';
signal A16        : std_logic := '0';
signal A17        : std_logic := '0';
signal A18        : std_logic := '0';
signal A19        : std_logic := '0';
signal A20        : std_logic := '0';
signal A21        : std_logic := '0';
signal A22        : std_logic := '0';
signal A23        : std_logic := '0';
signal A24        : std_logic := '0';

signal B1         : std_logic := '0';
signal B2         : std_logic := '0';
signal B3         : std_logic := '0';
signal B4         : std_logic := '0';
signal B5         : std_logic := '0';
signal B6         : std_logic := '0';
signal B7         : std_logic := '0';
signal B8         : std_logic := '0';
signal B9         : std_logic := '0';
signal B10        : std_logic := '0';
signal B11        : std_logic := '0';
signal B12        : std_logic := '0';
signal B13        : std_logic := '0';
signal B14        : std_logic := '0';
signal B15        : std_logic := '0';
signal B16        : std_logic := '0';
signal B17        : std_logic := '0';
signal B18        : std_logic := '0';
         
signal C1         : std_logic := '0';
signal C2         : std_logic := '0';
signal C3         : std_logic := '0';
signal C4         : std_logic := '0';
signal C5         : std_logic := '0';
signal C6         : std_logic := '0';
signal C7         : std_logic := '0';
signal C8         : std_logic := '0';
signal C9         : std_logic := '0';
signal C10        : std_logic := '0';
signal C11        : std_logic := '0';
signal C12        : std_logic := '0';
signal C13        : std_logic := '0';
signal C14        : std_logic := '0';
signal C15        : std_logic := '0';
signal C16        : std_logic := '0';
signal C17        : std_logic := '0';
signal C18        : std_logic := '0';
signal C19        : std_logic := '0';
signal C20        : std_logic := '0';
signal C21        : std_logic := '0';
signal C22        : std_logic := '0';
signal C23        : std_logic := '0';
signal C24        : std_logic := '0';
signal C25        : std_logic := '0';
signal C26        : std_logic := '0';
signal C27        : std_logic := '0';
signal C28        : std_logic := '0';
signal C29        : std_logic := '0';
signal C30        : std_logic := '0';
signal C31        : std_logic := '0';
signal C32        : std_logic := '0';
signal C33        : std_logic := '0';
signal C34        : std_logic := '0';
signal C35        : std_logic := '0';
signal C36        : std_logic := '0';

signal CAI1       : std_logic := '0';
signal CAI2       : std_logic := '0';
signal CAI3       : std_logic := '0';
signal CAI4       : std_logic := '0';
signal CAI5       : std_logic := '0';
signal CAI6       : std_logic := '0';
signal CAI7       : std_logic := '0';
signal CAI8       : std_logic := '0';
signal CAI9       : std_logic := '0';
signal CAI10      : std_logic := '0';
signal CAI11      : std_logic := '0';
signal CAI12      : std_logic := '0';
signal CAI13      : std_logic := '0';
signal CAI14      : std_logic := '0';
signal CAI15      : std_logic := '0';
signal CAI16      : std_logic := '0';
signal CAI17      : std_logic := '0';
signal CAI18      : std_logic := '0';

signal CAO1       : std_logic := '0';
signal CAO2       : std_logic := '0';
signal CAO3       : std_logic := '0';
signal CAO4       : std_logic := '0';
signal CAO5       : std_logic := '0';
signal CAO6       : std_logic := '0';
signal CAO7       : std_logic := '0';
signal CAO8       : std_logic := '0';
signal CAO9       : std_logic := '0';
signal CAO10      : std_logic := '0';
signal CAO11      : std_logic := '0';
signal CAO12      : std_logic := '0';
signal CAO13      : std_logic := '0';
signal CAO14      : std_logic := '0';
signal CAO15      : std_logic := '0';
signal CAO16      : std_logic := '0';
signal CAO17      : std_logic := '0';
signal CAO18      : std_logic := '0';

signal CBI1       : std_logic := '0';
signal CBI2       : std_logic := '0';
signal CBI3       : std_logic := '0';
signal CBI4       : std_logic := '0';
signal CBI5       : std_logic := '0';
signal CBI6       : std_logic := '0';
signal CBI7       : std_logic := '0';
signal CBI8       : std_logic := '0';
signal CBI9       : std_logic := '0';
signal CBI10      : std_logic := '0';
signal CBI11      : std_logic := '0';
signal CBI12      : std_logic := '0';
signal CBI13      : std_logic := '0';
signal CBI14      : std_logic := '0';
signal CBI15      : std_logic := '0';
signal CBI16      : std_logic := '0';
signal CBI17      : std_logic := '0';
signal CBI18      : std_logic := '0';

signal CBO1       : std_logic := '0';
signal CBO2       : std_logic := '0';
signal CBO3       : std_logic := '0';
signal CBO4       : std_logic := '0';
signal CBO5       : std_logic := '0';
signal CBO6       : std_logic := '0';
signal CBO7       : std_logic := '0';
signal CBO8       : std_logic := '0';
signal CBO9       : std_logic := '0';
signal CBO10      : std_logic := '0';
signal CBO11      : std_logic := '0';
signal CBO12      : std_logic := '0';
signal CBO13      : std_logic := '0';
signal CBO14      : std_logic := '0';
signal CBO15      : std_logic := '0';
signal CBO16      : std_logic := '0';
signal CBO17      : std_logic := '0';
signal CBO18      : std_logic := '0';

signal CO37       : std_logic := '0';
signal CO49       : std_logic := '0';

signal CZI1       : std_logic := '0';
signal CZI2       : std_logic := '0';
signal CZI3       : std_logic := '0';
signal CZI4       : std_logic := '0';
signal CZI5       : std_logic := '0';
signal CZI6       : std_logic := '0';
signal CZI7       : std_logic := '0';
signal CZI8       : std_logic := '0';
signal CZI9       : std_logic := '0';
signal CZI10      : std_logic := '0';
signal CZI11      : std_logic := '0';
signal CZI12      : std_logic := '0';
signal CZI13      : std_logic := '0';
signal CZI14      : std_logic := '0';
signal CZI15      : std_logic := '0';
signal CZI16      : std_logic := '0';
signal CZI17      : std_logic := '0';
signal CZI18      : std_logic := '0';
signal CZI19      : std_logic := '0';
signal CZI20      : std_logic := '0';
signal CZI21      : std_logic := '0';
signal CZI22      : std_logic := '0';
signal CZI23      : std_logic := '0';
signal CZI24      : std_logic := '0';
signal CZI25      : std_logic := '0';
signal CZI26      : std_logic := '0';
signal CZI27      : std_logic := '0';
signal CZI28      : std_logic := '0';
signal CZI29      : std_logic := '0';
signal CZI30      : std_logic := '0';
signal CZI31      : std_logic := '0';
signal CZI32      : std_logic := '0';
signal CZI33      : std_logic := '0';
signal CZI34      : std_logic := '0';
signal CZI35      : std_logic := '0';
signal CZI36      : std_logic := '0';
signal CZI37      : std_logic := '0';
signal CZI38      : std_logic := '0';
signal CZI39      : std_logic := '0';
signal CZI40      : std_logic := '0';
signal CZI41      : std_logic := '0';
signal CZI42      : std_logic := '0';
signal CZI43      : std_logic := '0';
signal CZI44      : std_logic := '0';
signal CZI45      : std_logic := '0';
signal CZI46      : std_logic := '0';
signal CZI47      : std_logic := '0';
signal CZI48      : std_logic := '0';
signal CZI49      : std_logic := '0';
signal CZI50      : std_logic := '0';
signal CZI51      : std_logic := '0';
signal CZI52      : std_logic := '0';
signal CZI53      : std_logic := '0';
signal CZI54      : std_logic := '0';
signal CZI55      : std_logic := '0';
signal CZI56      : std_logic := '0';

signal CZO1       : std_logic := '0';
signal CZO2       : std_logic := '0';
signal CZO3       : std_logic := '0';
signal CZO4       : std_logic := '0';
signal CZO5       : std_logic := '0';
signal CZO6       : std_logic := '0';
signal CZO7       : std_logic := '0';
signal CZO8       : std_logic := '0';
signal CZO9       : std_logic := '0';
signal CZO10      : std_logic := '0';
signal CZO11      : std_logic := '0';
signal CZO12      : std_logic := '0';
signal CZO13      : std_logic := '0';
signal CZO14      : std_logic := '0';
signal CZO15      : std_logic := '0';
signal CZO16      : std_logic := '0';
signal CZO17      : std_logic := '0';
signal CZO18      : std_logic := '0';
signal CZO19      : std_logic := '0';
signal CZO20      : std_logic := '0';
signal CZO21      : std_logic := '0';
signal CZO22      : std_logic := '0';
signal CZO23      : std_logic := '0';
signal CZO24      : std_logic := '0';
signal CZO25      : std_logic := '0';
signal CZO26      : std_logic := '0';
signal CZO27      : std_logic := '0';
signal CZO28      : std_logic := '0';
signal CZO29      : std_logic := '0';
signal CZO30      : std_logic := '0';
signal CZO31      : std_logic := '0';
signal CZO32      : std_logic := '0';
signal CZO33      : std_logic := '0';
signal CZO34      : std_logic := '0';
signal CZO35      : std_logic := '0';
signal CZO36      : std_logic := '0';
signal CZO37      : std_logic := '0';
signal CZO38      : std_logic := '0';
signal CZO39      : std_logic := '0';
signal CZO40      : std_logic := '0';
signal CZO41      : std_logic := '0';
signal CZO42      : std_logic := '0';
signal CZO43      : std_logic := '0';
signal CZO44      : std_logic := '0';
signal CZO45      : std_logic := '0';
signal CZO46      : std_logic := '0';
signal CZO47      : std_logic := '0';
signal CZO48      : std_logic := '0';
signal CZO49      : std_logic := '0';
signal CZO50      : std_logic := '0';
signal CZO51      : std_logic := '0';
signal CZO52      : std_logic := '0';
signal CZO53      : std_logic := '0';
signal CZO54      : std_logic := '0';
signal CZO55      : std_logic := '0';
signal CZO56      : std_logic := '0';

signal D1         : std_logic := '0';
signal D2         : std_logic := '0';
signal D3         : std_logic := '0';
signal D4         : std_logic := '0';
signal D5         : std_logic := '0';
signal D6         : std_logic := '0';
signal D7         : std_logic := '0';
signal D8         : std_logic := '0';
signal D9         : std_logic := '0';
signal D10        : std_logic := '0';
signal D11        : std_logic := '0';
signal D12        : std_logic := '0';
signal D13        : std_logic := '0';
signal D14        : std_logic := '0';
signal D15        : std_logic := '0';
signal D16        : std_logic := '0';
signal D17        : std_logic := '0';
signal D18        : std_logic := '0';

signal Z1         : std_logic := '0';
signal Z2         : std_logic := '0';
signal Z3         : std_logic := '0';
signal Z4         : std_logic := '0';
signal Z5         : std_logic := '0';
signal Z6         : std_logic := '0';
signal Z7         : std_logic := '0';
signal Z8         : std_logic := '0';
signal Z9         : std_logic := '0';
signal Z10        : std_logic := '0';
signal Z11        : std_logic := '0';
signal Z12        : std_logic := '0';
signal Z13        : std_logic := '0';
signal Z14        : std_logic := '0';
signal Z15        : std_logic := '0';
signal Z16        : std_logic := '0';
signal Z17        : std_logic := '0';
signal Z18        : std_logic := '0';
signal Z19        : std_logic := '0';
signal Z20        : std_logic := '0';
signal Z21        : std_logic := '0';
signal Z22        : std_logic := '0';
signal Z23        : std_logic := '0';
signal Z24        : std_logic := '0';
signal Z25        : std_logic := '0';
signal Z26        : std_logic := '0';
signal Z27        : std_logic := '0';
signal Z28        : std_logic := '0';
signal Z29        : std_logic := '0';
signal Z30        : std_logic := '0';
signal Z31        : std_logic := '0';
signal Z32        : std_logic := '0';
signal Z33        : std_logic := '0';
signal Z34        : std_logic := '0';
signal Z35        : std_logic := '0';
signal Z36        : std_logic := '0';
signal Z37        : std_logic := '0';
signal Z38        : std_logic := '0';
signal Z39        : std_logic := '0';
signal Z40        : std_logic := '0';
signal Z41        : std_logic := '0';
signal Z42        : std_logic := '0';
signal Z43        : std_logic := '0';
signal Z44        : std_logic := '0';
signal Z45        : std_logic := '0';
signal Z46        : std_logic := '0';
signal Z47        : std_logic := '0';
signal Z48        : std_logic := '0';
signal Z49        : std_logic := '0';
signal Z50        : std_logic := '0';
signal Z51        : std_logic := '0';
signal Z52        : std_logic := '0';
signal Z53        : std_logic := '0';
signal Z54        : std_logic := '0';
signal Z55        : std_logic := '0';


constant raw_config0_gen : bit_vector(19 downto 0)
    := CO_SEL & ALU_DYNAMIC_OP & SATURATION_RANK & ENABLE_SATURATION & Z_FEEDBACK_SHL12 & MUX_Z &
       MUX_CI & MUX_Y & MUX_X & MUX_P & MUX_B & MUX_A & PRE_ADDER_OP & SIGNED_MODE;

constant raw_config1_gen : bit_vector(18 downto 0)
    := PR_OV_MUX & PR_CO_MUX & PR_Z_MUX & PR_ALU_MUX & PR_MULT_MUX & PR_Y_MUX & PR_X_MUX &
       PR_P_MUX & PR_CI_MUX & PR_D_MUX & PR_C_MUX & PR_B_CASCADE_MUX & PR_B_MUX & PR_A_CASCADE_MUX &
       PR_A_MUX;

constant raw_config2_gen : bit_vector(12 downto 0)
    := ENABLE_PR_OV_RST & ENABLE_PR_CO_RST & ENABLE_PR_Z_RST & ENABLE_PR_ALU_RST &
       ENABLE_PR_MULT_RST & ENABLE_PR_Y_RST & ENABLE_PR_X_RST & ENABLE_PR_P_RST & ENABLE_PR_CI_RST &
       ENABLE_PR_D_RST & ENABLE_PR_C_RST & ENABLE_PR_B_RST & ENABLE_PR_A_RST;

constant raw_config3_gen : bit_vector(6 downto 0) := ALU_MUX & ALU_OP;


----------------------------------------------------------
-- NX_DSP declaration
----------------------------------------------------------
component NX_DSP
generic (
   std_mode    : string := ""; -- standard mode [ADD36, SUB36, SMUL18, UMUL18, ...] empty for raw
   raw_config0 : bit_vector(19 downto 0) := B"00000000000000000000";        -- MUX
   raw_config1 : bit_vector(18 downto 0) := B"0000000000000000000";         -- PRC
   raw_config2 : bit_vector(12 downto 0) := B"0000000000000";               -- PRR
   raw_config3 : bit_vector( 6 downto 0) := B"0000000"                      -- ALU
   );
port (
   A1         : in std_logic := '0';
   A2         : in std_logic := '0';
   A3         : in std_logic := '0';
   A4         : in std_logic := '0';
   A5         : in std_logic := '0';
   A6         : in std_logic := '0';
   A7         : in std_logic := '0';
   A8         : in std_logic := '0';
   A9         : in std_logic := '0';
   A10        : in std_logic := '0';
   A11        : in std_logic := '0';
   A12        : in std_logic := '0';
   A13        : in std_logic := '0';
   A14        : in std_logic := '0';
   A15        : in std_logic := '0';
   A16        : in std_logic := '0';
   A17        : in std_logic := '0';
   A18        : in std_logic := '0';
   A19        : in std_logic := '0';
   A20        : in std_logic := '0';
   A21        : in std_logic := '0';
   A22        : in std_logic := '0';
   A23        : in std_logic := '0';
   A24        : in std_logic := '0';

   B1         : in std_logic := '0';
   B2         : in std_logic := '0';
   B3         : in std_logic := '0';
   B4         : in std_logic := '0';
   B5         : in std_logic := '0';
   B6         : in std_logic := '0';
   B7         : in std_logic := '0';
   B8         : in std_logic := '0';
   B9         : in std_logic := '0';
   B10        : in std_logic := '0';
   B11        : in std_logic := '0';
   B12        : in std_logic := '0';
   B13        : in std_logic := '0';
   B14        : in std_logic := '0';
   B15        : in std_logic := '0';
   B16        : in std_logic := '0';
   B17        : in std_logic := '0';
   B18        : in std_logic := '0';

   C1         : in std_logic := '0';
   C2         : in std_logic := '0';
   C3         : in std_logic := '0';
   C4         : in std_logic := '0';
   C5         : in std_logic := '0';
   C6         : in std_logic := '0';
   C7         : in std_logic := '0';
   C8         : in std_logic := '0';
   C9         : in std_logic := '0';
   C10        : in std_logic := '0';
   C11        : in std_logic := '0';
   C12        : in std_logic := '0';
   C13        : in std_logic := '0';
   C14        : in std_logic := '0';
   C15        : in std_logic := '0';
   C16        : in std_logic := '0';
   C17        : in std_logic := '0';
   C18        : in std_logic := '0';
   C19        : in std_logic := '0';
   C20        : in std_logic := '0';
   C21        : in std_logic := '0';
   C22        : in std_logic := '0';
   C23        : in std_logic := '0';
   C24        : in std_logic := '0';
   C25        : in std_logic := '0';
   C26        : in std_logic := '0';
   C27        : in std_logic := '0';
   C28        : in std_logic := '0';
   C29        : in std_logic := '0';
   C30        : in std_logic := '0';
   C31        : in std_logic := '0';
   C32        : in std_logic := '0';
   C33        : in std_logic := '0';
   C34        : in std_logic := '0';
   C35        : in std_logic := '0';
   C36        : in std_logic := '0';

   CAI1       : in std_logic := '0';
   CAI2       : in std_logic := '0';
   CAI3       : in std_logic := '0';
   CAI4       : in std_logic := '0';
   CAI5       : in std_logic := '0';
   CAI6       : in std_logic := '0';
   CAI7       : in std_logic := '0';
   CAI8       : in std_logic := '0';
   CAI9       : in std_logic := '0';
   CAI10      : in std_logic := '0';
   CAI11      : in std_logic := '0';
   CAI12      : in std_logic := '0';
   CAI13      : in std_logic := '0';
   CAI14      : in std_logic := '0';
   CAI15      : in std_logic := '0';
   CAI16      : in std_logic := '0';
   CAI17      : in std_logic := '0';
   CAI18      : in std_logic := '0';

   CAO1       : out std_logic := '0';
   CAO2       : out std_logic := '0';
   CAO3       : out std_logic := '0';
   CAO4       : out std_logic := '0';
   CAO5       : out std_logic := '0';
   CAO6       : out std_logic := '0';
   CAO7       : out std_logic := '0';
   CAO8       : out std_logic := '0';
   CAO9       : out std_logic := '0';
   CAO10      : out std_logic := '0';
   CAO11      : out std_logic := '0';
   CAO12      : out std_logic := '0';
   CAO13      : out std_logic := '0';
   CAO14      : out std_logic := '0';
   CAO15      : out std_logic := '0';
   CAO16      : out std_logic := '0';
   CAO17      : out std_logic := '0';
   CAO18      : out std_logic := '0';

   CBI1       : in std_logic := '0';
   CBI2       : in std_logic := '0';
   CBI3       : in std_logic := '0';
   CBI4       : in std_logic := '0';
   CBI5       : in std_logic := '0';
   CBI6       : in std_logic := '0';
   CBI7       : in std_logic := '0';
   CBI8       : in std_logic := '0';
   CBI9       : in std_logic := '0';
   CBI10      : in std_logic := '0';
   CBI11      : in std_logic := '0';
   CBI12      : in std_logic := '0';
   CBI13      : in std_logic := '0';
   CBI14      : in std_logic := '0';
   CBI15      : in std_logic := '0';
   CBI16      : in std_logic := '0';
   CBI17      : in std_logic := '0';
   CBI18      : in std_logic := '0';

   CBO1       : out std_logic := '0';
   CBO2       : out std_logic := '0';
   CBO3       : out std_logic := '0';
   CBO4       : out std_logic := '0';
   CBO5       : out std_logic := '0';
   CBO6       : out std_logic := '0';
   CBO7       : out std_logic := '0';
   CBO8       : out std_logic := '0';
   CBO9       : out std_logic := '0';
   CBO10      : out std_logic := '0';
   CBO11      : out std_logic := '0';
   CBO12      : out std_logic := '0';
   CBO13      : out std_logic := '0';
   CBO14      : out std_logic := '0';
   CBO15      : out std_logic := '0';
   CBO16      : out std_logic := '0';
   CBO17      : out std_logic := '0';
   CBO18      : out std_logic := '0';

   CCI        : in std_logic := '0';
   CCO        : out std_logic := '0';
   CI         : in std_logic := '0';
   CK         : in std_logic := '0';
   CO         : out std_logic := '0';
   CO37       : out std_logic := '0';
   CO49       : out std_logic := '0';

   CZI1       : in std_logic := '0';
   CZI2       : in std_logic := '0';
   CZI3       : in std_logic := '0';
   CZI4       : in std_logic := '0';
   CZI5       : in std_logic := '0';
   CZI6       : in std_logic := '0';
   CZI7       : in std_logic := '0';
   CZI8       : in std_logic := '0';
   CZI9       : in std_logic := '0';
   CZI10      : in std_logic := '0';
   CZI11      : in std_logic := '0';
   CZI12      : in std_logic := '0';
   CZI13      : in std_logic := '0';
   CZI14      : in std_logic := '0';
   CZI15      : in std_logic := '0';
   CZI16      : in std_logic := '0';
   CZI17      : in std_logic := '0';
   CZI18      : in std_logic := '0';
   CZI19      : in std_logic := '0';
   CZI20      : in std_logic := '0';
   CZI21      : in std_logic := '0';
   CZI22      : in std_logic := '0';
   CZI23      : in std_logic := '0';
   CZI24      : in std_logic := '0';
   CZI25      : in std_logic := '0';
   CZI26      : in std_logic := '0';
   CZI27      : in std_logic := '0';
   CZI28      : in std_logic := '0';
   CZI29      : in std_logic := '0';
   CZI30      : in std_logic := '0';
   CZI31      : in std_logic := '0';
   CZI32      : in std_logic := '0';
   CZI33      : in std_logic := '0';
   CZI34      : in std_logic := '0';
   CZI35      : in std_logic := '0';
   CZI36      : in std_logic := '0';
   CZI37      : in std_logic := '0';
   CZI38      : in std_logic := '0';
   CZI39      : in std_logic := '0';
   CZI40      : in std_logic := '0';
   CZI41      : in std_logic := '0';
   CZI42      : in std_logic := '0';
   CZI43      : in std_logic := '0';
   CZI44      : in std_logic := '0';
   CZI45      : in std_logic := '0';
   CZI46      : in std_logic := '0';
   CZI47      : in std_logic := '0';
   CZI48      : in std_logic := '0';
   CZI49      : in std_logic := '0';
   CZI50      : in std_logic := '0';
   CZI51      : in std_logic := '0';
   CZI52      : in std_logic := '0';
   CZI53      : in std_logic := '0';
   CZI54      : in std_logic := '0';
   CZI55      : in std_logic := '0';
   CZI56      : in std_logic := '0';

   CZO1       : out std_logic := '0';
   CZO2       : out std_logic := '0';
   CZO3       : out std_logic := '0';
   CZO4       : out std_logic := '0';
   CZO5       : out std_logic := '0';
   CZO6       : out std_logic := '0';
   CZO7       : out std_logic := '0';
   CZO8       : out std_logic := '0';
   CZO9       : out std_logic := '0';
   CZO10      : out std_logic := '0';
   CZO11      : out std_logic := '0';
   CZO12      : out std_logic := '0';
   CZO13      : out std_logic := '0';
   CZO14      : out std_logic := '0';
   CZO15      : out std_logic := '0';
   CZO16      : out std_logic := '0';
   CZO17      : out std_logic := '0';
   CZO18      : out std_logic := '0';
   CZO19      : out std_logic := '0';
   CZO20      : out std_logic := '0';
   CZO21      : out std_logic := '0';
   CZO22      : out std_logic := '0';
   CZO23      : out std_logic := '0';
   CZO24      : out std_logic := '0';
   CZO25      : out std_logic := '0';
   CZO26      : out std_logic := '0';
   CZO27      : out std_logic := '0';
   CZO28      : out std_logic := '0';
   CZO29      : out std_logic := '0';
   CZO30      : out std_logic := '0';
   CZO31      : out std_logic := '0';
   CZO32      : out std_logic := '0';
   CZO33      : out std_logic := '0';
   CZO34      : out std_logic := '0';
   CZO35      : out std_logic := '0';
   CZO36      : out std_logic := '0';
   CZO37      : out std_logic := '0';
   CZO38      : out std_logic := '0';
   CZO39      : out std_logic := '0';
   CZO40      : out std_logic := '0';
   CZO41      : out std_logic := '0';
   CZO42      : out std_logic := '0';
   CZO43      : out std_logic := '0';
   CZO44      : out std_logic := '0';
   CZO45      : out std_logic := '0';
   CZO46      : out std_logic := '0';
   CZO47      : out std_logic := '0';
   CZO48      : out std_logic := '0';
   CZO49      : out std_logic := '0';
   CZO50      : out std_logic := '0';
   CZO51      : out std_logic := '0';
   CZO52      : out std_logic := '0';
   CZO53      : out std_logic := '0';
   CZO54      : out std_logic := '0';
   CZO55      : out std_logic := '0';
   CZO56      : out std_logic := '0';

   D1         : in std_logic := '0';
   D2         : in std_logic := '0';
   D3         : in std_logic := '0';
   D4         : in std_logic := '0';
   D5         : in std_logic := '0';
   D6         : in std_logic := '0';
   D7         : in std_logic := '0';
   D8         : in std_logic := '0';
   D9         : in std_logic := '0';
   D10        : in std_logic := '0';
   D11        : in std_logic := '0';
   D12        : in std_logic := '0';
   D13        : in std_logic := '0';
   D14        : in std_logic := '0';
   D15        : in std_logic := '0';
   D16        : in std_logic := '0';
   D17        : in std_logic := '0';
   D18        : in std_logic := '0';

   OVF        : out std_logic := '0';
   R          : in std_logic := '0';
   RZ         : in std_logic := '0';
   WE         : in std_logic := '0';

   Z1         : out std_logic := '0';
   Z2         : out std_logic := '0';
   Z3         : out std_logic := '0';
   Z4         : out std_logic := '0';
   Z5         : out std_logic := '0';
   Z6         : out std_logic := '0';
   Z7         : out std_logic := '0';
   Z8         : out std_logic := '0';
   Z9         : out std_logic := '0';
   Z10        : out std_logic := '0';
   Z11        : out std_logic := '0';
   Z12        : out std_logic := '0';
   Z13        : out std_logic := '0';
   Z14        : out std_logic := '0';
   Z15        : out std_logic := '0';
   Z16        : out std_logic := '0';
   Z17        : out std_logic := '0';
   Z18        : out std_logic := '0';
   Z19        : out std_logic := '0';
   Z20        : out std_logic := '0';
   Z21        : out std_logic := '0';
   Z22        : out std_logic := '0';
   Z23        : out std_logic := '0';
   Z24        : out std_logic := '0';
   Z25        : out std_logic := '0';
   Z26        : out std_logic := '0';
   Z27        : out std_logic := '0';
   Z28        : out std_logic := '0';
   Z29        : out std_logic := '0';
   Z30        : out std_logic := '0';
   Z31        : out std_logic := '0';
   Z32        : out std_logic := '0';
   Z33        : out std_logic := '0';
   Z34        : out std_logic := '0';
   Z35        : out std_logic := '0';
   Z36        : out std_logic := '0';
   Z37        : out std_logic := '0';
   Z38        : out std_logic := '0';
   Z39        : out std_logic := '0';
   Z40        : out std_logic := '0';
   Z41        : out std_logic := '0';
   Z42        : out std_logic := '0';
   Z43        : out std_logic := '0';
   Z44        : out std_logic := '0';
   Z45        : out std_logic := '0';
   Z46        : out std_logic := '0';
   Z47        : out std_logic := '0';
   Z48        : out std_logic := '0';
   Z49        : out std_logic := '0';
   Z50        : out std_logic := '0';
   Z51        : out std_logic := '0';
   Z52        : out std_logic := '0';
   Z53        : out std_logic := '0';
   Z54        : out std_logic := '0';
   Z55        : out std_logic := '0';
   Z56        : out std_logic := '0'
   );
end component;

begin

----------------------------------------------------------
-- Instantiation the NX_DSP component
----------------------------------------------------------
DSP_INST : NX_DSP
generic map (
   std_mode    => "", -- standard mode [ADD36, SUB36, SMUL18, UMUL18, ...] empty for raw
   raw_config0 => raw_config0_gen, -- MODE and MUXes
   raw_config1 => raw_config1_gen, -- Pipeline Registers
   raw_config2 => raw_config2_gen, -- Reset Enable for internal registers
   raw_config3 => raw_config3_gen   -- ALU modes
   )
port map (
   A1         => A(0),
   A2         => A(1),
   A3         => A(2),
   A4         => A(3),
   A5         => A(4),
   A6         => A(5),
   A7         => A(6),
   A8         => A(7),
   A9         => A(8),
   A10        => A(9),
   A11        => A(10),
   A12        => A(11),
   A13        => A(12),
   A14        => A(13),
   A15        => A(14),
   A16        => A(15),
   A17        => A(16),
   A18        => A(17),
   A19        => A(18),
   A20        => A(19),
   A21        => A(20),
   A22        => A(21),
   A23        => A(22),
   A24        => A(23),

   B1         => B(0),
   B2         => B(1),
   B3         => B(2),
   B4         => B(3),
   B5         => B(4),
   B6         => B(5),
   B7         => B(6),
   B8         => B(7),
   B9         => B(8),
   B10        => B(9),
   B11        => B(10),
   B12        => B(11),
   B13        => B(12),
   B14        => B(13),
   B15        => B(14),
   B16        => B(15),
   B17        => B(16),
   B18        => B(17),

   C1         => C(0),
   C2         => C(1),
   C3         => C(2),
   C4         => C(3),
   C5         => C(4),
   C6         => C(5),
   C7         => C(6),
   C8         => C(7),
   C9         => C(8),
   C10        => C(9),
   C11        => C(10),
   C12        => C(11),
   C13        => C(12),
   C14        => C(13),
   C15        => C(14),
   C16        => C(15),
   C17        => C(16),
   C18        => C(17),
   C19        => C(18),
   C20        => C(19),
   C21        => C(20),
   C22        => C(21),
   C23        => C(22),
   C24        => C(23),
   C25        => C(24),
   C26        => C(25),
   C27        => C(26),
   C28        => C(27),
   C29        => C(28),
   C30        => C(29),
   C31        => C(30),
   C32        => C(31),
   C33        => C(32),
   C34        => C(33),
   C35        => C(34),
   C36        => C(35),

   CAI1       => CAI(0),
   CAI2       => CAI(1),
   CAI3       => CAI(2),
   CAI4       => CAI(3),
   CAI5       => CAI(4),
   CAI6       => CAI(5),
   CAI7       => CAI(6),
   CAI8       => CAI(7),
   CAI9       => CAI(8),
   CAI10      => CAI(9),
   CAI11      => CAI(10),
   CAI12      => CAI(11),
   CAI13      => CAI(12),
   CAI14      => CAI(13),
   CAI15      => CAI(14),
   CAI16      => CAI(15),
   CAI17      => CAI(16),
   CAI18      => CAI(17),

   CAO1       => CAO(0),
   CAO2       => CAO(1),
   CAO3       => CAO(2),
   CAO4       => CAO(3),
   CAO5       => CAO(4),
   CAO6       => CAO(5),
   CAO7       => CAO(6),
   CAO8       => CAO(7),
   CAO9       => CAO(8),
   CAO10      => CAO(9),
   CAO11      => CAO(10),
   CAO12      => CAO(11),
   CAO13      => CAO(12),
   CAO14      => CAO(13),
   CAO15      => CAO(14),
   CAO16      => CAO(15),
   CAO17      => CAO(16),
   CAO18      => CAO(17),

   CBI1       => CBI(0),
   CBI2       => CBI(1),
   CBI3       => CBI(2),
   CBI4       => CBI(3),
   CBI5       => CBI(4),
   CBI6       => CBI(5),
   CBI7       => CBI(6),
   CBI8       => CBI(7),
   CBI9       => CBI(8),
   CBI10      => CBI(9),
   CBI11      => CBI(10),
   CBI12      => CBI(11),
   CBI13      => CBI(12),
   CBI14      => CBI(13),
   CBI15      => CBI(14),
   CBI16      => CBI(15),
   CBI17      => CBI(16),
   CBI18      => CBI(17),

   CBO1       => CBO(0),
   CBO2       => CBO(1),
   CBO3       => CBO(2),
   CBO4       => CBO(3),
   CBO5       => CBO(4),
   CBO6       => CBO(5),
   CBO7       => CBO(6),
   CBO8       => CBO(7),
   CBO9       => CBO(8),
   CBO10      => CBO(9),
   CBO11      => CBO(10),
   CBO12      => CBO(11),
   CBO13      => CBO(12),
   CBO14      => CBO(13),
   CBO15      => CBO(14),
   CBO16      => CBO(15),
   CBO17      => CBO(16),
   CBO18      => CBO(17),

   CCI        => CCI,
   CCO        => CCO,
   CI         => CI,
   CK         => CK,
   CO         => CO,
   CO37       => CO36,
   CO49       => CO48,

   CZI1       => CZI(0),
   CZI2       => CZI(1),
   CZI3       => CZI(2),
   CZI4       => CZI(3),
   CZI5       => CZI(4),
   CZI6       => CZI(5),
   CZI7       => CZI(6),
   CZI8       => CZI(7),
   CZI9       => CZI(8),
   CZI10      => CZI(9),
   CZI11      => CZI(10),
   CZI12      => CZI(11),
   CZI13      => CZI(12),
   CZI14      => CZI(13),
   CZI15      => CZI(14),
   CZI16      => CZI(15),
   CZI17      => CZI(16),
   CZI18      => CZI(17),
   CZI19      => CZI(18),
   CZI20      => CZI(19),
   CZI21      => CZI(20),
   CZI22      => CZI(21),
   CZI23      => CZI(22),
   CZI24      => CZI(23),
   CZI25      => CZI(24),
   CZI26      => CZI(25),
   CZI27      => CZI(26),
   CZI28      => CZI(27),
   CZI29      => CZI(28),
   CZI30      => CZI(29),
   CZI31      => CZI(30),
   CZI32      => CZI(31),
   CZI33      => CZI(32),
   CZI34      => CZI(33),
   CZI35      => CZI(34),
   CZI36      => CZI(35),
   CZI37      => CZI(36),
   CZI38      => CZI(37),
   CZI39      => CZI(38),
   CZI40      => CZI(39),
   CZI41      => CZI(40),
   CZI42      => CZI(41),
   CZI43      => CZI(42),
   CZI44      => CZI(43),
   CZI45      => CZI(44),
   CZI46      => CZI(45),
   CZI47      => CZI(46),
   CZI48      => CZI(47),
   CZI49      => CZI(48),
   CZI50      => CZI(49),
   CZI51      => CZI(50),
   CZI52      => CZI(51),
   CZI53      => CZI(52),
   CZI54      => CZI(53),
   CZI55      => CZI(54),
   CZI56      => CZI(55),

   CZO1       => CZO(0),
   CZO2       => CZO(1),
   CZO3       => CZO(2),
   CZO4       => CZO(3),
   CZO5       => CZO(4),
   CZO6       => CZO(5),
   CZO7       => CZO(6),
   CZO8       => CZO(7),
   CZO9       => CZO(8),
   CZO10      => CZO(9),
   CZO11      => CZO(10),
   CZO12      => CZO(11),
   CZO13      => CZO(12),
   CZO14      => CZO(13),
   CZO15      => CZO(14),
   CZO16      => CZO(15),
   CZO17      => CZO(16),
   CZO18      => CZO(17),
   CZO19      => CZO(18),
   CZO20      => CZO(19),
   CZO21      => CZO(20),
   CZO22      => CZO(21),
   CZO23      => CZO(22),
   CZO24      => CZO(23),
   CZO25      => CZO(24),
   CZO26      => CZO(25),
   CZO27      => CZO(26),
   CZO28      => CZO(27),
   CZO29      => CZO(28),
   CZO30      => CZO(29),
   CZO31      => CZO(30),
   CZO32      => CZO(31),
   CZO33      => CZO(32),
   CZO34      => CZO(33),
   CZO35      => CZO(34),
   CZO36      => CZO(35),
   CZO37      => CZO(36),
   CZO38      => CZO(37),
   CZO39      => CZO(38),
   CZO40      => CZO(39),
   CZO41      => CZO(40),
   CZO42      => CZO(41),
   CZO43      => CZO(42),
   CZO44      => CZO(43),
   CZO45      => CZO(44),
   CZO46      => CZO(45),
   CZO47      => CZO(46),
   CZO48      => CZO(47),
   CZO49      => CZO(48),
   CZO50      => CZO(49),
   CZO51      => CZO(50),
   CZO52      => CZO(51),
   CZO53      => CZO(52),
   CZO54      => CZO(53),
   CZO55      => CZO(54),
   CZO56      => CZO(55),

   D1         => D(0),
   D2         => D(1),
   D3         => D(2),
   D4         => D(3),
   D5         => D(4),
   D6         => D(5),
   D7         => D(6),
   D8         => D(7),
   D9         => D(8),
   D10        => D(9),
   D11        => D(10),
   D12        => D(11),
   D13        => D(12),
   D14        => D(13),
   D15        => D(14),
   D16        => D(15),
   D17        => D(16),
   D18        => D(17),

   OVF        => OVF,
   R          => R,
   RZ         => RZ,
   WE         => WE,

   Z1         => Z(0),
   Z2         => Z(1),
   Z3         => Z(2),
   Z4         => Z(3),
   Z5         => Z(4),
   Z6         => Z(5),
   Z7         => Z(6),
   Z8         => Z(7),
   Z9         => Z(8),
   Z10        => Z(9),
   Z11        => Z(10),
   Z12        => Z(11),
   Z13        => Z(12),
   Z14        => Z(13),
   Z15        => Z(14),
   Z16        => Z(15),
   Z17        => Z(16),
   Z18        => Z(17),
   Z19        => Z(18),
   Z20        => Z(19),
   Z21        => Z(20),
   Z22        => Z(21),
   Z23        => Z(22),
   Z24        => Z(23),
   Z25        => Z(24),
   Z26        => Z(25),
   Z27        => Z(26),
   Z28        => Z(27),
   Z29        => Z(28),
   Z30        => Z(29),
   Z31        => Z(30),
   Z32        => Z(31),
   Z33        => Z(32),
   Z34        => Z(33),
   Z35        => Z(34),
   Z36        => Z(35),
   Z37        => Z(36),
   Z38        => Z(37),
   Z39        => Z(38),
   Z40        => Z(39),
   Z41        => Z(40),
   Z42        => Z(41),
   Z43        => Z(42),
   Z44        => Z(43),
   Z45        => Z(44),
   Z46        => Z(45),
   Z47        => Z(46),
   Z48        => Z(47),
   Z49        => Z(48),
   Z50        => Z(49),
   Z51        => Z(50),
   Z52        => Z(51),
   Z53        => Z(52),
   Z54        => Z(53),
   Z55        => Z(54),
   Z56        => Z(55)
   );

end NX_RTL;
-- #}}}#

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
iyx4VWp0lAHwoY25X2U+kZKIArv87cRW6VTTlIfWDdzIOC9PjWzfUDivFxla+nLY
pKPeIUBP/wH3EUSm9pe9KiVvMb4pYsyu9H9M0fKoQq0EH15zZQ4vWMmGXpL4vK1R
qHf7oguFVXaj/ZJdB9FGvPiAqZnKGfFS0BWpOp6WeN7H4iSNopFQSk64CIVpG6LS
vpLaEnRYoerKbeg03aciiDhTjhjZDoz4mTHgZ+uTVws+uRKZpCQ5RXObm9+EvFT2
ET8eMOadG19wQ9zWmoIs/GjQ3oruAidCS1nvNsZqq4PdEMeFFcCm4Wwb1XMAB7aV
WAT2gCa71HkxlQY799Eztg==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 40256)
`protect data_block
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
`protect end_protected

-- =================================================================================================
--   NX_PLL definition                                                                  2017/09/19
-- =================================================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity NX_PLL is
generic (
    location     : string := "";

    vco_range    : integer   range 0 to 2 := 0;   -- 0 to 3
    ref_div_on   : bit := '0';                    -- bypass :: %2
    fbk_div_on   : bit := '0';                    -- bypass :: %2
    ext_fbk_on   : bit := '0';                    -- 0: disabled - 1: enabled

    fbk_intdiv   : integer   range 1 to 31 := 2;  -- 0 to 31  (%1 to %32)

    fbk_delay_on : bit := '0';                    -- 0: no delay - 1: delay
    fbk_delay    : integer   range 0 to 63 := 0;  -- 0 to 63

    clk_outdiv1  : integer   range 0 to 7 := 0;   -- 0 to 7   (%1 to %2^7)
    clk_outdiv2  : integer   range 0 to 7 := 0;   -- 0 to 7   (%1 to %2^7)
    clk_outdiv3  : integer   range 0 to 7 := 0    -- 0 to 7   (%1 to %2^7)
);
port (
    REF : in  std_logic;
    FBK : in  std_logic;

    VCO : out std_logic;

    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    OSC : out std_logic;

    RDY : out std_logic
);
end NX_PLL;

architecture NX_RTL of NX_PLL is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_PLL";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity NX_WFG is
generic (
    location    : string := "";

    wfg_edge    : bit := '0';                              -- 0: no invert / Rising
    mode        : bit := '0';                              -- 0: no pattern - 1: pattern

    pattern_end : integer   range 0 to 15 := 1;            -- 0: to 15 (1 step to 16 steps)
    pattern     : bit_vector(0 to 15) := (others => '0');  -- pattern p0 ... p15

    delay_on    : bit := '0';                              -- 0: no delay - 1: delay
    delay       : integer   range 0 to 63 := 0             -- 0 to 63 (1 unit to 64 unit)
);
port (
    SI  : in  std_logic;
    ZI  : in  std_logic;
    RDY : in  std_logic := '1';
    SO  : out std_logic;
    ZO  : out std_logic
);
end NX_WFG;

architecture NX_RTL of NX_WFG is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_WFG";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
fNsNLzusXUSjSPVCOZkq7WeR/hDRCdDyJB58pI/VVqDC8bDcBRbuZHoSehLb/m6C
iW+hvFVSKZ0i+INviBZ9Omt1pMM1pNutgKyC+xmnRlqI1LpOA6mwx4627heVZ3g7
CiLkCZ1q6Jpv3XoVlmCQp+zlmd60MxGVU4uGg0ti7UkILOrxEh2Vy/Al0DNZRh+H
GZgxM0tY7wdspkbC7aqKbb3ZpZjbkJHIC2pGg+V68GNRPBy+06CusHr705ks74ub
s3b0YJupWHV5w+EbxWYqwEsaXopHDzOzTv1bpoWLS2xRGR9OGRTb0nKON2YeKEGc
/7fn1zYfOMeVGogNeCwlhw==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 15632)
`protect data_block
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
`protect end_protected

-- beware following components are only intended for internal use. Do not try to instantiate them.

-- =================================================================================================
--   NX_BUFFER definition                                                               2017/09/11
-- =================================================================================================

-- NX_BUFFER#{{{#
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity NX_BUFFER is
port (
    I : in  std_logic;
    O : out std_logic
);
end NX_BUFFER;

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
nD5ESUf22YrNhhBkMoPbY6PySMOFzWMY9MQV2A7E6oIc0on5vEHEAPbKAWNsmdh9
0MUrNX9wUo5URUcHFKDe+z7AZnWVBUj4sfttGP9FOm2oPEMbbWYlDKGE7UwzYIYE
zw3tdIVkkmksP8un1imTFhH1D4fOvyJ7S85GlqEdLrjVlYbo3bqy4lrwIfsGeF+u
NGUpRrnxvINhKTiRsJc4gi7UMin8GH2vVNSEmSf1agtBmiMVZmWZp47U5s4xTrAY
/oKs5elYW+QDf9Ac4qoTk/UTO6OQOJn/Stb/iQB6gJk5RwOnFp5rbhYbHggPQcSD
Ed/XfsJ6uNXer61vCg88zw==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 240)
`protect data_block
SLzjTc2CmJt25zRN892WVgKCeBaJmieNfnA8gR7U+uBijokfFPE2ZeAyJgZ+Xbfv
mF6kPalscXvzXyK7zcOItiLYwPrEuaH2isQMeufqhqFiXV4p6CI7e7CVZz+J80Gk
b8C695dq0G0F64EYIvjhvwZG3glOVFXA2jAUW+aTl7g3XFYeD7TpWPKul732S4nz
aZEp/oHhNplkMwxXfH72zt6KRLf4njehFAobssFqgS2T51olmBC2/tDGNDG5nHcx
5T/hWmjxDcIMomvWFJSclnV18OQu7/NBzFBqOFC0KF3E48JyPLsLYLTVsia4u/qH
`protect end_protected

-- #}}}#

-- =================================================================================================
--   NX_CSC definition                                                                  2017/09/26
-- =================================================================================================

-- NX_CSC#{{{#
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity NX_CSC is
port (
    I  : in  std_logic;
    O  : out std_logic
);
end NX_CSC;

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
QfWDt9nrcYF7X2rMaUb7l/G7U1b0dZdYJLEZ2bFo1EQnl88X/C9X7bf/m7lZ9IUc
8i4AYw+svrsmOcOdlls5AI2C74CLRw5O0ekzIysk5pV5TEbzMGcVeQTHimtozO5q
Pp6hsbZKAszO3HHT71XpiWg2RZshy8iK9/q8P+ygDdavXn8DrNvmnhwJ+qmG5EMy
0xq2x3VhrAz0gJYdUwyUcUq+7jwnOeqfLdrpJpWRod4CxFu2RZeD6PbYR28+308Y
9+kN2G6H896zeSJRY5akb+f4xVx7juPbfm9mBsM2LGyzgP7YzljzADL5JiQEk8f+
EVriVfAB6zEF2om6XYcMxQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 240)
`protect data_block
Z2HOZ07V/AZt6YCUyoXtRMXhRCfJfwQdC2d1/9wwIeAxHyYINU1hPSf4r0baugWo
0CpqEPD59PfqLO90n/z6gqso2a2keYS9Q+CKb3+4SP276VKWAtxOxaQVSYhf5uC2
JhuepuTIkCkt0vFSHQqo6Pr3+IS6F9RdPp8k/Fam2gOiM1RU799eirrFDP+w+kFC
tZ1gNXkFWBH+8UMzt6YSfCt1MxpGKq1OeE5kdxXPu3Mn/vRHsWzMcq45ic5qHKgk
RUxu1v1DFKpBncluU5EKo7P0oB6wchWvzACph44ckDOKdVDM/SiTBHKXKh2gIKo9
`protect end_protected

-- #}}}#

-- =================================================================================================
--   NX_SCC definition                                                                  2017/09/26
-- =================================================================================================

-- NX_SCC#{{{#
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity NX_SCC is
port (
    I : in  std_logic;
    O : out std_logic
);
end NX_SCC;

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
r4vh/EfivMjRU1jItX4+iMiYRKoL0PFDn+M8D85pD9mqmuOPla2Ai8MlBdPSrqjR
XrTM+XGqpEFukQ/kbWa4ESJoSJqd/QUU6isalJfWhql4neyI6YbMMaVd2x/MGhCy
wpRMhAHDtG66ElD1tKya6FUtZCoISjdoWaR3fPoLcYtBNz/MbN6xMmTMi4wMHP3v
gbKfxZYUyd5jtAfuKWO44vkWbM1Wy0inMHLgjprmPUr5thJqqMnO4FwXz0Hm8K4j
9F/mIr9Nkzn+GCzgy9ADMcqFr/RTIH0EH65ed3VAVGU2bqhRBxrfFGYsQiYTAHiC
HRBKE1yMRVoDCrSYwN4eBA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 240)
`protect data_block
tyNXpqOjQmLD1o6fnx7W/WVwnS2XIIXtpqfTQEBoJToqD/fy6ILUnxvk17VNIf1d
U4OlwKG0Io2Drbnu5qmszcsXJPUMPAz9Xdgw8O4jNpkpFQFzNjK64I5wZQfCOzEC
ns6F7T0A7arklPF8uD/jEQpdyoJnfqMH30ghYIUmtu0auW+ROLU7IHbYBN6i7I+f
pbz4dgTURDYzf0nzctNIJplyISc9WKOLOl5N7VsZ/7mlpOd9QoZe6HilKPKtl6pO
00TXT3wIJIOqGkOtJVFRZwz+qsDXktcDX6jcRuJiGYwUtXVTWGhqRG0QAKL44aa4
`protect end_protected

-- #}}}#

-- =================================================================================================
--   NX_syn_tp definition                                                               2017/09/11
-- =================================================================================================

-- NX_syn_tp#{{{#
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity NX_syn_tp is
port (
    I : in  std_logic
);
end NX_syn_tp;

architecture NX_RTL of NX_syn_tp is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_syn_tp";
begin
end NX_RTL;

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
i9bMLeTuReeAeZLCf+c6KXqxklUQnlPeSOh+Od8Wt9OESIKbd+UalifcdBkHDSw2
4lhjNZqiX2TN0GTpUTplOSfIiBX7mP7SoaL1vc5Ms1UfpZ5Z59uNIu7fhkt+zLCC
Py3NfHPK2dZwWF13ymGL+M1TqZqcQ2OWd237WWDi9PpITGPlSHRwplHxbVwIW72p
+xzT0NKvFHGaD18t3ONQ1D5oyw+uB7bbPsPguEZKb2+8rWQsbV2N11IvORmyFC7I
ttfUsc8qrb4RQ2d0MASuXdNzVs6W6yw+Bm+5AwfAxjl1FQw7WbMT0WJIPQeJoZ15
e5zBMksWFZzkeKWBoi0f4Q==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 208)
`protect data_block
STaxk4G78ix6LQZyyEvT/XBP4C9nWtGheylUQW1iqqIgW0pV3iOjVqsxzr5rDcC4
uP01ztPeytNhMotQ28LDMaUj0wFPdz63KBYD6BRqXpqEgiw8rU6EW27jgMc0eYYX
IevoH+BR9Isgvn8XsmUSA6J74NnKZDttNb8oc5om5D1+0II+jEd/viYaEBSH1SaC
KTcktS5YG/LVpGHnOCb/tRu6QPYCOiisY2gsAbXRMhidPa5BW3MK0hKmRNnjchcu
7e+Oe+P9n38DtIkG/y1hbQ==
`protect end_protected

-- #}}}#

-- =================================================================================================
--   NX_BD definition                                                                   2018/06/19
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_BD is
generic (
    system: bit := '1'
);
port (
    I : in  std_logic;
    O : out std_logic
);
end NX_BD;

architecture NX_RTL of NX_BD is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_BD";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
k0ETr6cQKLv1ESwU38cZscBcQz9EcOWDu5R2GHilih4tUxdABX0fmHZihyG5tVG/
jhzIm3s8H+zckPoM4CXaXalW5JpZUFd5YH8HwFgY/S4xCjKHf7hM3AM0hDU6SDvm
mmw85OMShTv8Wktdxhgq5oiIp2Mght/pbzXLDmRE7/tW0IAsFEAcoQPilONLF2fS
T3m7pAZRlMnPULXU6Yha4HfDr02y1Dqcv/nLyYGOvqxaGoztyoHYewlZXGYMtIws
1fH83YWSRFMPd3pSN1mw5ve12ACekEL2mAPGLkesgVqWggCrV1i24RpkUNIqQ39E
gETWAbCLltf5e22lmmTQsQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 240)
`protect data_block
FxQrcVd4rI0X6zg4g7e363SNUOkBza3DQt1HCMxKZbdyXHhz1F13CUGvvTEv7lRs
CGq/Ygvc4vok0/OijcRWAnpTLsaIEb/FKakM5jTj5WNUc8jXjFo2c/AK4QYL4GHr
1afFJ7L4Gav0ulVTYbd+XxmrxObm7YRQ3qeVUE6VoWB+iWCRzeOSKTH+X8aDN/8A
t09i3Wn3Wj5QPbbR66+sTqiKepXPcea2I685YhrWzibEakI+i9o7r9RutAh6liWm
kkALtr3rqHE4OpHfNvJ0sIQgoDqQu8DIz4mHEFAqmARUE7OZKFLYWllRhnfDNYGN
`protect end_protected

-- =================================================================================================
--   NX_SER definition                                                                  2018/10/15
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

library NX;
use NX.nxPackage.all;

entity NX_SER is
generic (
    data_size            : integer range 2 to 10 := 5;	-- Number of serialization factor
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0") or differential ("1")
    slewRate             : string := "";		-- Slow, Medium or Fast
    outputDelayLine      : string := "";		-- "0_to_63_delay_value"
    outputCapacity       : string := "";		-- 0 to 40 (value in pF)
    -- Delay Control
    spath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay

);
port (
    FCK   : in  std_logic;
    SCK   : in  std_logic;
    R     : in  std_logic;
    I     : in  std_logic_vector(data_size - 1 downto 0);
    IO    : out std_logic;
    -- Delay Control
    DCK   : in std_logic;
    DRL   : in std_logic;
    DS    : in std_logic_vector(1 downto 0);
    DRA   : in std_logic_vector(5 downto 0);
    DRI   : in std_logic_vector(5 downto 0);
    DRO   : out std_logic_vector(5 downto 0);
    DID   : out std_logic_vector(5 downto 0)
);
end NX_SER;

-- =================================================================================================
--   NX_DES definition                                                                  2018/10/15
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

library NX;
use NX.nxPackage.all;

entity NX_DES is
generic (
    data_size            : integer range 2 to 10 := 5;	-- -- Pad locationNumber of deserialization factor
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0") or differential ("1")
    termination          : string := "";		-- Input impedance adaptatio    terminationReference : string := "";
    terminationReference : string := "";		-- "floating" or "VTT"
    turbo                : string := "";		-- Input impedance adaptation
    weakTermination      : string := "";		-- "floating" or "VTT"
    inputDelayLine       : string := "";		-- "0_to_63_delay_value"
    inputSignalSlope     : string := "";		-- Decimal value "0.5" to "20" (value in V/ns)
    -- Delay Control
    dpath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay

);
port (
    FCK   : in  std_logic;
    SCK   : in  std_logic;
    R     : in  std_logic;
    IO    : in  std_logic;
    O     : out std_logic_vector(data_size - 1 downto 0);
    -- Delay Control
    DCK   : in std_logic;
    DRL   : in std_logic;
    DIG   : in std_logic;
    DS    : in std_logic_vector(1 downto 0);
    DRA   : in std_logic_vector(5 downto 0);
    DRI   : in std_logic_vector(5 downto 0);
    FZ    : in std_logic;
    DRO   : out std_logic_vector(5 downto 0);
    DID   : out std_logic_vector(5 downto 0);
    FLD   : out std_logic;
    FLG   : out std_logic
);
end NX_DES;

-- =================================================================================================
--   NX_SERDES definition                                                               2018/10/16
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

library NX;
use NX.nxPackage.all;

entity NX_SERDES is
generic (
    data_size            : integer range 2 to 10 := 5;	-- Serialiser/deserializer factor 
    location             : string := "";		-- Pad location
    standard             : string := "";		-- Pad electrical standard
    drive                : string := "";		-- Pad electrical drive
    differential         : string := "";		-- Single ended ("0" or differential ("1")
    slewRate             : string := "";		-- Slow, Medium or Fast
    termination          : string := "";		-- Input impedance adaptation
    terminationReference : string := "";		-- "floating" or "VTT"
    turbo                : string := "";		-- "true" or "false"
    weakTermination      : string := "";		-- "PullUp" or "None"
    inputDelayLine       : string := "";		-- "O_to_63_delay_value"
    outputDelayLine      : string := "";		-- "O_to_63_delay_value"
    inputSignalSlope     : string := "";		-- Decimal value "0.5" to "20" (value in V/ns)
    outputCapacity       : string := "";		-- "0" to "40" (value in pF)
    cpath_registered     : bit := '0';			-- Use Register in Enable Path ('1')
    -- Delay Control
    spath_dynamic        : bit := '0';			-- 0: off/fixed delay, 1: dynamic delay
    dpath_dynamic        : bit := '0'			-- 0: off/fixed delay, 1: dynamic delay
);
port (
    FCK   : in    std_logic;
    SCK   : in    std_logic;
    RTX   : in    std_logic;
    RRX   : in    std_logic;
    CI    : in    std_logic;
    CCK   : in    std_logic;
    CL    : in    std_logic;
    CR    : in    std_logic;
    I     : in    std_logic_vector(data_size - 1 downto 0);
    IO    : inout std_logic;
    O     : out   std_logic_vector(data_size - 1 downto 0);
    -- Delay Control
    DCK   : in std_logic;
    DRL   : in std_logic;
    DIG   : in std_logic;
    DS    : in std_logic_vector(1 downto 0);
    DRA   : in std_logic_vector(5 downto 0);
    DRI   : in std_logic_vector(5 downto 0);
    FZ    : in std_logic;
    DRO   : out std_logic_vector(5 downto 0);
    DID   : out std_logic_vector(5 downto 0);
    FLD   : out std_logic;
    FLG   : out std_logic
);
end NX_SERDES;

-- NX_SER#{{{#
----------------------------------------------------------------------------------------------------
architecture NX_RTL of NX_SER is

signal I_pad : std_logic;
signal O_pad : std_logic;
signal C_pad : std_logic;
signal sync  : std_logic;
signal I_int : std_logic_vector(9 downto 0);
signal LINKN : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
signal LINKP : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);

function BOOL_TO_STR(X : boolean)
  return string is
begin
  if X then
    return "true";
  else
    return "false";
  end if;
end BOOL_TO_STR;

constant spath_delay_on : string := BOOL_TO_STR((outputDelayLine /= "") or (spath_dynamic = '1'));

attribute syn_noprune : boolean;

begin

I_net: for j in 0 to (data_size - 1) generate
    I_int(j) <= I(j);
end generate;

I_dummy: for j in data_size to 9 generate
    I_int(j) <= '0';
end generate;

single_ser: if (data_size <= 5) generate
attribute syn_noprune of iodx : label is true;
begin

    iobx: NX_IOB_O generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, slewRate             => slewRate
	, outputDelayOn        => spath_delay_on
	, outputDelayLine      => outputDelayLine
	, outputCapacity       => outputCapacity
	, locked               => '1'
    )
		   port map (I => I_pad, C => C_pad, IO => IO);

    iodx: NX_IOM_DRIVER generic map (
		   epath_mode      => b"0100"
		 , cpath_mode      => b"0001"
		 , location        => location
		 , symbol          => "SER"
		 )
		 port map (
			   EI1  => I_int(0)
			 , EI2  => I_int(1)
			 , EI3  => I_int(2)
			 , EI4  => I_int(3)
			 , EI5  => I_int(4)
			 , RI   => OPEN
			 , EO   => I_pad
			 , CO   => C_pad
			 , LINK => LINKP
		);
end generate;

large_ser: if (5 < data_size) generate
attribute syn_noprune of iodp : label is true;
attribute syn_noprune of iodn : label is true;
begin


    iobp: NX_IOB_O generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, slewRate             => slewRate
	, outputDelayOn        => spath_delay_on
	, outputDelayLine      => outputDelayLine
	, outputCapacity       => outputCapacity
	, locked               => '1'
    )
		   port map (I => I_pad, C => C_pad, IO => IO);

    iodp: NX_IOM_DRIVER generic map (
		   epath_init      => '1'
		 , epath_mode      => b"0100"
		 , cpath_mode      => b"0001"
		 , location        => location
		 , symbol          => "SER"
		 )
		 port map (
			    EI1  => I_int(0)
			  , EI2  => I_int(1)
			  , EI3  => I_int(2)
			  , EI4  => I_int(3)
			  , EI5  => I_int(4)
			  , RI   => OPEN
			  , EO   => I_pad
			  , CO   => C_pad
			  , LINK => LINKP
		);

    iodn: NX_IOM_DRIVER generic map (
		   epath_init      => '1'
		 , epath_mode      => b"0100"
		 , cpath_mode      => b"0001"
		 , chained         => '1'
		 , symbol          => "SER_C"
		 )
		 port map (
			    EI1  => I_int(5)
			  , EI2  => I_int(6)
			  , EI3  => I_int(7)
			  , EI4  => I_int(8)
			  , EI5  => I_int(9)
			  , RI   => OPEN
			  , EO   => OPEN
			  , CO   => OPEN
			  , LINK => LINKN
		);
end generate;

iom: NX_IOM_SERDES generic map (data_size => data_size, location => location)
		   port map (
			      RTCK  => FCK	    -- ECK
			    , WTCK  => SCK
			    , TRST  => R	    -- ER
			    , LINKN => LINKN
			    , LINKP => LINKP
			    , DCK   => DCK
			    , DRL   => DRL
			    , DS    => DS
			    , DRA   => DRA
			    , DRI   => DRI
			    , DRO   => DRO
			    , DID   => DID
		   );

end NX_RTL;
-- #}}}#

-- NX_DES#{{{#
----------------------------------------------------------------------------------------------------
architecture NX_RTL of NX_DES is

signal I_pad : std_logic;
signal O_pad : std_logic;
signal C_pad : std_logic;
signal sync  : std_logic;
signal O_int : std_logic_vector(9 downto 0);
signal LINKN : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
signal LINKP : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);

function BOOL_TO_STR(X : boolean)
  return string is
begin
  if X then
    return "true";
  else
    return "false";
  end if;
end BOOL_TO_STR;

constant dpath_delay_on : string := BOOL_TO_STR((inputDelayLine /= "") or (dpath_dynamic = '1'));

begin

O_net: for j in 0 to (data_size - 1) generate
    O(j) <= O_int(j);
end generate;

single_des: if (data_size <= 5) generate
    iobx: NX_IOB_I generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, termination          => termination
	, terminationReference => terminationReference
	, turbo                => turbo
	, weakTermination      => weakTermination
	, inputDelayOn         => dpath_delay_on
	, inputDelayLine       => inputDelayLine
	, inputSignalSlope     => inputSignalSlope
	, locked               => '1'
    )
		   port map (I => I_pad, O => O_pad, C => C_pad, IO => IO);

    iodx: NX_IOM_DRIVER generic map (
		   rpath_init      => '1'
		 , rpath_mode      => b"0100"
		 , rpath_dynamic   => dpath_dynamic
		 , cpath_mode      => b"0000"
		 , location        => location
		 , symbol          => "DES_D"
		 )
		 port map (
			    RO1  => O_int(4)
			  , RO2  => O_int(3)
			  , RO3  => O_int(2)
			  , RO4  => O_int(1)
			  , RO5  => O_int(0)
			  , RI   => O_pad
			  , EO   => I_pad
			  , CO   => C_pad
			  , LINK => LINKP
		);
end generate;

large_des: if (5 < data_size) generate
    iobp: NX_IOB_I generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, termination          => termination
	, terminationReference => terminationReference
	, turbo                => turbo
	, weakTermination      => weakTermination
	, inputDelayOn         => dpath_delay_on
	, inputDelayLine       => inputDelayLine
	, inputSignalSlope     => inputSignalSlope
	, locked               => '1'
    )
		   port map (I => I_pad, O => O_pad, C => C_pad, IO => IO);

    iodp: NX_IOM_DRIVER generic map (
		   rpath_init      => '1'
		 , rpath_mode      => b"0100"
		 , rpath_dynamic   => dpath_dynamic
		 , cpath_mode      => b"0000"
		 , location        => location
		 , symbol          => "DES_D"
		 )
		 port map (
			    RO1  => O_int(9)
			  , RO2  => O_int(8)
			  , RO3  => O_int(7)
			  , RO4  => O_int(6)
			  , RO5  => O_int(5)
			  , RI   => O_pad
			  , EO   => I_pad
			  , CO   => C_pad
			  , LINK => LINKP
		);

    iodn: NX_IOM_DRIVER generic map (
		  rpath_init       => '1'
		, rpath_mode       => b"0100"
		, cpath_mode       => b"0000"
		, chained          => '1'
		, symbol           => "DES_DC"
		)
		port map (
			   RO1  => O_int(4)
			 , RO2  => O_int(3)
			 , RO3  => O_int(2)
			 , RO4  => O_int(1)
			 , RO5  => O_int(0)
			 , RI   => OPEN
			 , EO   => OPEN
			 , CO   => OPEN
			 , LINK => LINKN
		);
end generate;

iom: NX_IOM_SERDES generic map (data_size => data_size, location => location)
		   port map (
			      RRCK  => SCK
			    , WRCK  => FCK	    -- RCK
			    , RRST  => R	    -- RR
			    , LINKN => LINKN
			    , LINKP => LINKP
			    , DCK   => DCK
			    , DRL   => DRL
			    , DIG   => DIG
			    , DS    => DS
			    , DRA   => DRA
			    , DRI   => DRI
			    , FZ    => FZ
			    , DRO   => DRO
			    , DID   => DID
			    , FLD   => FLD
			    , FLG   => FLG
		   );

end NX_RTL;
-- #}}}#

-- NX_SERDES#{{{#
----------------------------------------------------------------------------------------------------
architecture NX_RTL of NX_SERDES is

signal I_pad : std_logic;
signal O_pad : std_logic;
signal C_pad : std_logic;
signal sync  : std_logic;
signal I_int : std_logic_vector(9 downto 0);
signal O_int : std_logic_vector(9 downto 0);
signal LINKN : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);
signal LINKP : std_logic_vector(IOM_LINK_SIZE - 1 downto 0);

type switch_mode is array(bit) of bit_vector(3 downto 0);
constant switch : switch_mode := ('0' => b"0010", '1' => b"0011");
constant cpath_mode : bit_vector(3 downto 0) := switch(cpath_registered);

function BOOL_TO_STR(X : boolean)
  return string is
begin
  if X then
    return "true";
  else
    return "false";
  end if;
end BOOL_TO_STR;

constant spath_delay_on : string := BOOL_TO_STR((outputDelayLine /= "") or (spath_dynamic = '1'));
constant dpath_delay_on : string := BOOL_TO_STR((inputDelayLine  /= "") or (dpath_dynamic = '1'));

begin

I_net: for j in 0 to (data_size - 1) generate
    I_int(j) <= I(j);
end generate;

I_dummy: for j in (data_size - 1) to 9 generate
    I_int(j) <= '0';
end generate;

O_net: for j in 0 to (data_size - 1) generate
    O(j) <= O_int(j);
end generate;

single_serdes: if (data_size <= 5) generate
    iobx: NX_IOB generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, slewRate             => slewRate
	, termination          => termination
	, terminationReference => terminationReference
	, turbo                => turbo
	, weakTermination      => weakTermination
	, inputDelayOn         => dpath_delay_on
	, outputDelayOn        => spath_delay_on
	, inputDelayLine       => inputDelayLine
	, outputDelayLine      => outputDelayLine
	, inputSignalSlope     => inputSignalSlope
	, outputCapacity       => outputCapacity
	, locked               => '1'
    )
		 port map (I => I_pad, O => O_pad, C => C_pad, IO => IO);

    iodx: NX_IOM_DRIVER generic map (
			       epath_init      => '1'
			     , epath_mode      => b"0100"
			     , rpath_init      => '1'
			     , rpath_mode      => b"0100"
			     , rpath_dynamic   => dpath_dynamic
			     , cpath_mode      => cpath_mode
			     , location        => location
			     , symbol          => "SD_DR"
		)
		port map (
			   EI1  => I_int(0)
			 , EI2  => I_int(1)
			 , EI3  => I_int(2)
			 , EI4  => I_int(3)
			 , EI5  => I_int(4)
			 , RO1  => O_int(4)
			 , RO2  => O_int(3)
			 , RO3  => O_int(2)
			 , RO4  => O_int(1)
			 , RO5  => O_int(0)
			 , CI1  => CI
			 , CL   => CL
			 , CR   => CR
			 , RI   => O_pad
			 , EO   => I_pad
			 , CO   => C_pad
			 , LINK => LINKP
		);
end generate;

large_serdes: if (5 < data_size) generate
    iobp: NX_IOB_I generic map (
	  location             => location
	, standard             => standard
	, drive                => drive
	, differential         => differential
	, slewRate             => slewRate
	, termination          => termination
	, terminationReference => terminationReference
	, turbo                => turbo
	, weakTermination      => weakTermination
	, inputDelayOn         => dpath_delay_on
	, outputDelayOn        => spath_delay_on
	, inputDelayLine       => inputDelayLine
	, outputDelayLine      => outputDelayLine
	, inputSignalSlope     => inputSignalSlope
	, outputCapacity       => outputCapacity
	, locked               => '1'
    )
		   port map (I => I_pad, O => O_pad, C => C_pad, IO => IO);

    iodp: NX_IOM_DRIVER generic map (
			       epath_init      => '1'
			     , epath_mode      => b"0100"
			     , rpath_init      => '1'
			     , rpath_mode      => b"0100"
			     , rpath_dynamic   => dpath_dynamic
			     , cpath_mode      => cpath_mode
			     , location        => location
			     , symbol          => "SD_DR"
		)
		port map (
			   EI1  => I_int(5)
			 , EI2  => I_int(6)
			 , EI3  => I_int(7)
			 , EI4  => I_int(8)
			 , EI5  => I_int(9)
			 , RO1  => O_int(9)
			 , RO2  => O_int(8)
			 , RO3  => O_int(7)
			 , RO4  => O_int(6)
			 , RO5  => O_int(5)
			 , CI1  => CI
			 , CL   => CL
			 , CR   => CR
			 , RI   => O_pad
			 , EO   => I_pad
			 , CO   => C_pad
			 , LINK => LINKP
		);

    iodn: NX_IOM_DRIVER generic map (
			       epath_init      => '1'
			     , epath_mode      => b"0100"
			     , rpath_init      => '1'
			     , rpath_mode      => b"0100"
			     , cpath_mode      => cpath_mode
			     , chained         => '1'
			     , symbol          => "SD_DRC"
		)
		port map (
			   EI1  => I_int(0)
			 , EI2  => I_int(1)
			 , EI3  => I_int(2)
			 , EI4  => I_int(3)
			 , EI5  => I_int(4)
			 , RO1  => O_int(4)
			 , RO2  => O_int(3)
			 , RO3  => O_int(2)
			 , RO4  => O_int(1)
			 , RO5  => O_int(0)
			 , CI1  => CI
			 , CL   => CL
			 , CR   => CR
			 , RI   => OPEN
			 , EO   => OPEN
			 , CO   => OPEN
			 , LINK => LINKN
		);
end generate;

iom: NX_IOM_SERDES generic map (data_size => data_size, location => location)
		   port map (
			      RTCK  => FCK	    -- ECK
			    , WTCK  => SCK
			    , RRCK  => SCK
			    , WRCK  => FCK	    -- RCK
			    , TRST  => RTX	    -- ER
			    , RRST  => RRX	    -- RR
			    , CTCK  => CCK	    -- CCK
			    , LINKN => LINKN
			    , LINKP => LINKP
			    , DCK   => DCK
			    , DRL   => DRL
			    , DIG   => DIG
			    , DS    => DS
			    , DRA   => DRA
			    , DRI   => DRI
			    , FZ    => FZ
			    , DRO   => DRO
			    , DID   => DID
			    , FLD   => FLD
			    , FLG   => FLG
		   );

end NX_RTL;
-- #}}}#



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NX_RAM is
generic (
   std_mode     : string := ""; -- standard mode [FAST_2kx18, SLOW_2kx18, NOECNOECC24, ...] empty for raw
   mcka_edge    : bit := '0';   -- 0: rising edge for port A clock - 1: falling edge
   mckb_edge    : bit := '0';   -- 0: rising edge for port B clock - 1: falling edge
   pcka_edge    : bit := '0';   -- 0: rising edge for pipe A clock - 1: falling edge
   pckb_edge    : bit := '0';   -- 0: rising edge for pipe B clock - 1: falling edge
   pipe_ia      : bit := '0';   -- 0: no pipe on port A input  - 1: pipe on port A input
   pipe_ib      : bit := '0';   -- 0: no pipe on port B input  - 1: pipe on port B input
   pipe_oa      : bit := '0';   -- 0: no pipe on port A output - 1: pipe on port A output
   pipe_ob      : bit := '0';   -- 0: no pipe on port B output - 1: pipe on port B output

   raw_config0  : bit_vector( 3 downto 0) := B"0000";			-- PRC
   raw_config1  : bit_vector(15 downto 0) := B"0000000000000000";	-- MOD

   -- For specific NG_LARGE Extended Features
   raw_l_enable : bit := '0';                         -- '0' for NG-MEDIUM, '1' for NG-LARGE extended modes (NO_ECC x3 & x6) + scrubbing, test...
   raw_l_extend : bit_vector( 3 downto 0) := B"0000"; -- Extended modes for NG-LARGE (Scrubbing, test... )

   mem_ctxt     : string := ""                        -- context initialization
   );
port (
   ACK   : in  std_logic;
   ACKC  : in  std_logic;
   ACKD  : in  std_logic;
   ACKR  : in  std_logic;
   BCK   : in  std_logic;
   BCKC  : in  std_logic;
   BCKD  : in  std_logic;
   BCKR  : in  std_logic;

   AI1   : in  std_logic;
   AI2   : in  std_logic;
   AI3   : in  std_logic;
   AI4   : in  std_logic;
   AI5   : in  std_logic;
   AI6   : in  std_logic;
   AI7   : in  std_logic;
   AI8   : in  std_logic;
   AI9   : in  std_logic;
   AI10  : in  std_logic;
   AI11  : in  std_logic;
   AI12  : in  std_logic;
   AI13  : in  std_logic;
   AI14  : in  std_logic;
   AI15  : in  std_logic;
   AI16  : in  std_logic;

   AI17  : in  std_logic;
   AI18  : in  std_logic;
   AI19  : in  std_logic;
   AI20  : in  std_logic;
   AI21  : in  std_logic;
   AI22  : in  std_logic;
   AI23  : in  std_logic;
   AI24  : in  std_logic;

   BI1   : in  std_logic;
   BI2   : in  std_logic;
   BI3   : in  std_logic;
   BI4   : in  std_logic;
   BI5   : in  std_logic;
   BI6   : in  std_logic;
   BI7   : in  std_logic;
   BI8   : in  std_logic;
   BI9   : in  std_logic;
   BI10  : in  std_logic;
   BI11  : in  std_logic;
   BI12  : in  std_logic;
   BI13  : in  std_logic;
   BI14  : in  std_logic;
   BI15  : in  std_logic;
   BI16  : in  std_logic;

   BI17  : in  std_logic;
   BI18  : in  std_logic;
   BI19  : in  std_logic;
   BI20  : in  std_logic;
   BI21  : in  std_logic;
   BI22  : in  std_logic;
   BI23  : in  std_logic;
   BI24  : in  std_logic;

   ACOR  : out std_logic;
   AERR  : out std_logic;
   BCOR  : out std_logic;
   BERR  : out std_logic;

   AO1   : out std_logic;
   AO2   : out std_logic;
   AO3   : out std_logic;
   AO4   : out std_logic;
   AO5   : out std_logic;
   AO6   : out std_logic;
   AO7   : out std_logic;
   AO8   : out std_logic;
   AO9   : out std_logic;
   AO10  : out std_logic;
   AO11  : out std_logic;
   AO12  : out std_logic;
   AO13  : out std_logic;
   AO14  : out std_logic;
   AO15  : out std_logic;
   AO16  : out std_logic;

   AO17  : out std_logic;
   AO18  : out std_logic;
   AO19  : out std_logic;
   AO20  : out std_logic;
   AO21  : out std_logic;
   AO22  : out std_logic;
   AO23  : out std_logic;
   AO24  : out std_logic;

   BO1   : out std_logic;
   BO2   : out std_logic;
   BO3   : out std_logic;
   BO4   : out std_logic;
   BO5   : out std_logic;
   BO6   : out std_logic;
   BO7   : out std_logic;
   BO8   : out std_logic;
   BO9   : out std_logic;
   BO10  : out std_logic;
   BO11  : out std_logic;
   BO12  : out std_logic;
   BO13  : out std_logic;
   BO14  : out std_logic;
   BO15  : out std_logic;
   BO16  : out std_logic;

   BO17  : out std_logic;
   BO18  : out std_logic;
   BO19  : out std_logic;
   BO20  : out std_logic;
   BO21  : out std_logic;
   BO22  : out std_logic;
   BO23  : out std_logic;
   BO24  : out std_logic;

   AA1   : in  std_logic;
   AA2   : in  std_logic;
   AA3   : in  std_logic;
   AA4   : in  std_logic;
   AA5   : in  std_logic;
   AA6   : in  std_logic;

   AA7   : in  std_logic;
   AA8   : in  std_logic;
   AA9   : in  std_logic;
   AA10  : in  std_logic;
   AA11  : in  std_logic;
   AA12  : in  std_logic;
   AA13  : in  std_logic;
   AA14  : in  std_logic;
   AA15  : in  std_logic;
   AA16  : in  std_logic;

   ACS   : in  std_logic;
   AWE   : in  std_logic;
   AR    : in  std_logic;

   BA1   : in  std_logic;
   BA2   : in  std_logic;
   BA3   : in  std_logic;
   BA4   : in  std_logic;
   BA5   : in  std_logic;
   BA6   : in  std_logic;

   BA7   : in  std_logic;
   BA8   : in  std_logic;
   BA9   : in  std_logic;
   BA10  : in  std_logic;
   BA11  : in  std_logic;
   BA12  : in  std_logic;
   BA13  : in  std_logic;
   BA14  : in  std_logic;
   BA15  : in  std_logic;
   BA16  : in  std_logic;

   BCS   : in  std_logic;
   BWE   : in  std_logic;
   BR    : in  std_logic
);
end NX_RAM;

architecture NX_RTL of NX_RAM is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_RAM";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------

-- =================================================================================================
--   NX_RAM_WRAP definition                                                             2017/09/25
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NX_RAM_WRAP is
generic (
   std_mode     : string := ""; -- standard mode [FAST_2kx18, SLOW_2kx18, NOECNOECC24, ...] empty for raw
   mcka_edge    : bit := '0';   -- 0: rising edge for port A clock - 1: falling edge
   mckb_edge    : bit := '0';   -- 0: rising edge for port B clock - 1: falling edge
   pcka_edge    : bit := '0';   -- 0: rising edge for pipe A clock - 1: falling edge
   pckb_edge    : bit := '0';   -- 0: rising edge for pipe B clock - 1: falling edge

   pipe_ia      : bit := '0';   -- 0: no pipe on port A input  - 1: pipe on port A input
   pipe_ib      : bit := '0';   -- 0: no pipe on port B input  - 1: pipe on port B input
   pipe_oa      : bit := '0';   -- 0: no pipe on port A output - 1: pipe on port A output
   pipe_ob      : bit := '0';   -- 0: no pipe on port B output - 1: pipe on port B output

   raw_config0  : bit_vector( 3 downto 0) := B"0000";			-- PRC
   raw_config1  : bit_vector(15 downto 0) := B"0000000000000000";	-- MOD

   -- For specific NG_LARGE Extended Features
   raw_l_enable : bit := '0';                          -- '0' for NG-MEDIUM, '1' for NG-LARGE extended modes (NO_ECC x3 & x6) + scrubbing, test...
   raw_l_extend : bit_vector( 3 downto 0) := B"0000";  -- Extended modes for NG-LARGE (Scrubbing, test... )

   mem_ctxt     : string := ""                         -- context initialization
);
port (
   ACK  : in  std_logic;
   ACKD : in  std_logic;
   ACKR : in  std_logic;
   BCK  : in  std_logic;
   BCKD : in  std_logic;
   BCKR : in  std_logic;

   AI   : in  std_logic_vector(23 downto 0);
   BI   : in  std_logic_vector(23 downto 0);

   ACOR : out std_logic;
   AERR : out std_logic;
   BCOR : out std_logic;
   BERR : out std_logic;

   AO   : out std_logic_vector(23 downto 0);
   BO   : out std_logic_vector(23 downto 0);
   AA   : in  std_logic_vector(15 downto 0);

   ACS  : in  std_logic;
   AWE  : in  std_logic;
   AR   : in  std_logic;

   BA   : in  std_logic_vector(15 downto 0);

   BCS  : in  std_logic;
   BWE  : in  std_logic;
   BR   : in  std_logic
);
end NX_RAM_WRAP;


`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
eupgkhygYEphHqpqPsdhdvMLDa2cdYP/6Cety0ZPzSswYspDs67SSa5pbGUb6BPR
a5q0e5Xp5LL+n1HqCgzVYGrvx//7Zlz+b+PPoEomjNWmyaUHxx+OtNjIGw6gQ7pI
PRmEuwPeNRSJtF23kAFowp+gt/CUatYF/RFDmGfRukk2RNovaCAZ7kcIgZo1YBZf
VMGeyp0fXyCyqCS9I/f4dwSAPmDtw079SV8RepdZo/SC79ry5DqgASxRP9UVpPWu
0pX2E1RmZ1xS+QXv5K9xb4FA0FiYjPHBK5z3OOYOd9RhZ8ut06jEHni1txD4/fva
ZUI3fZm0ZOP2iW0Nsh3hrg==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 8672)
`protect data_block
9sFlqBtNtRSjj9yf6TfMK+2GYylAIVIQZK2xm0BxLlH+sgKrwgEIc9qWIXEonGOf
96ORC5GeGzt7QFoK5CDRY4f04/F+84ToIQMoDdGaiIrJtGgu1v+YmI8BnscL7FlA
WJg/uuJwj+kbUJqgySk98cBzjU4xZEXE36Hsxgg0hPSNgvE+tpcBa9WS4ueFuX1d
7S5H6knPDRwxZMULEoe8elGqM8lFSw4ZZzpCrtIQCP/Dej4n5llOhwpHE7ba2GPR
Lx3EYes4+LGZ1iwMZlVOJaILbyBgug+XjwdWWfJSmWisbQG6Hfbnsiz7dbZn0nrd
7AKDWqyWBlPyipXCMa7yo8p4vNVjnFLZdeYXd7+KYLXDBRzvxJsf39wF04NsMwMe
yBBxRoqprFYG/U4vSDzQasW03iHH73Dl6KnGJAwyyo36Ft3kQ+5EnJ/NUv8pv8lY
iJVv6hHLDstz4FCmlCJsi9QqlWzCOuCciprWS651zpktZs0iOyUxu1H4YkGMos9d
e/V5BHK3XvzjFgT/sQwsDhCxY490JwoWg10elilHLToK63vadO0emFJhL4nLn9Jy
OWEM7d1i6AbGVB4I6nCdkoG+1ko5lSiT3r/xnzOU6ttZ1PpnSMrqPSfAQR7M9f2Q
J7tMoVPcDnVOmcQz1m4cv8wWjn4k9MYnoljizu11DJ6BnLshoq3TLI4neSAsj/Cn
uQa9AgBkcDvaRChjzlUaFEi1AMmn8ry1n1bpsfy1ZulXiNlx/VPO0UviHI+qbXJ/
3pNrzvSPa5Xz3ptIoTzUyDKvJGV4Yf4HwhHQg1bHv6C/3lXchr1swLAzLOtBt64b
NPFIVlJGq/EPPxzTgMy+M0+5XqBuFS5MLPZWYD4gVxEGX87bhmL974vszVQtqfFD
tc2ViVFCFCaJDyahRUSTpaI2gEBzhgANVngaazVR6QaoH4MtVuBMHXqXKwR+4B7B
liHMJMD+Z9jw7g9GvYzaNFi7hUHB5E+9QN8XU5nK/0lbNBgBTJftV8VwCXcwel0J
BHziXJsdKxci2IuJFxrK6Cu4MHMKKipEX1HQaUlvddm+26+PN5mFQrhKcC+sdrjJ
zreimhyZCj8hga2NKnULoI+BYpRAdviiFPSGRQKTmcQdBKODrF/INxHGS27ttEzw
wvWKpFYpw+tPsnHs5VYntEQxTvX4hnp7R5YNJW28oeukc1fBI91nc1YxqE3zpYzH
GXanDp6OgxxNsNKww5ipgo7ZepvpNx6G4/uA9f0FlDbbZhzOcLbboyzNL2HzzuRR
oVL9BeB4XZeLyiLPRDakEYjgDVQ/qzPFCpqnBhHDBPPwSuOVJZkUePX0NyUtsHFr
VAK4Q/179DsdEoEr8sJLnODy9Y4Ah0bJUG1NRqP6ZoRSs88j/E7byXLl1jpyngTC
rTI3+K+dJYan8c2/vPb7HHSvpuGnbIP9gKrnvZu4WjOebaDjgoGayG/L14M2h8i7
SKJmLB/OpAF+owBX6dwxb1rpEbGUxaqnxvtOlLnbZkSoZHktxsWZT6fHqzJYL6nj
c9KURTwXVx2TSAQVr2pGzTVJj1+H/nGBk8uIDTdoRsGDIvVXc5Msx1Eb11ba3GGZ
KhWKulSLagDcIHYIZ8BRkf7ViOZ4v37c5pA0o2pTJigr/DpyUofk53OnIryACw/K
WahYEau15heElZgbZI1K6Yv3TPUzJqqrUmDOAPvS4AHCQ+XgvdsZ1U1508sTnXVi
H4szKvHZICIcQ6XigJXJJQIM63wuLBn/IgWndruPb34empr9bIPifLiv5GRTfX2Q
DQDBZPSBPWWgpk9UkJqjflEuAafVSr56eFkrgXOD+GvBCJLNMLgk6lQKaf51otZZ
jj6popekRM6tz/3Tj8R8XNtACmXR+r8T8lxej0rvPNzAag3Vrql0lK0dITxSoI9b
LAIfy643pV3Pb/9roGcuH+jTFus/QR4AJ29h4f1BXkRDdeTY9A1TfdfGFKWaGsI/
aDN2VSrZr/NJHyRCfj+WeDj7DRuiMRoWTOH7s2EWfVhpZebZk+hjFvIsWV7rOl/t
MuflRG0EsYiTxCZJpAEKmKyipYf63o9JsF7wfiWY7SXV/zdPJFWdgFei3x5F9NNv
Y385laSSmby+RaB8lYiogtfYEd2/qKTfS62qerP9QOBKcBBMNiZ2/CROrqefO4Sv
+tTBKb5Wrh+CgPVKTDr4O1qQeeF0ypLFuf99CoWq1Q5OVjMcxGQTQabSceMwmPyS
TEBo7JjlJ8BeIzN+Q698V3Ela1JH60o36blQGIYi6Nomxid0xDEQOHee+tvDmHLR
vPifFG9d5cCbN1GTYUDm65UlN0MGM06/KIKfR/GCqKR+kaXvJystsoOZFEhYfaC8
BOUu81XqR7vmkWhAHiU5PByNq0AFQva+HFXfRRbJfflH+VGEqs2kW/a6IRLDwdPx
9pon6M3UovMO9y0GTpi/A2Pv1hH0JwjgvzaI4FQBenReGaaUb5JkBl4K+Pm29pMr
rpVsCDb2hQ6slfzYk/+yW2C0qmf+jGPqqj9jZkYjIsLgAtN02nziZi7fI0bSseDm
eJQ7Rf623HI43MJWFLhvGwQ8N90TWRiICrUhKmJACtoTQ4jTFgWMjL4YIYwCUmKe
LIRZtLDkDlfONoU1k3QaV9hEs0vxK0w3gZrjJK/LL1aiv9dHgGkQOKjqwrkoZbrx
0rk1jyCNSwkHfn1Uvq7n0freJwSefuqZ1dXBu71DM+IwkM7XFFSL+8xkBf+BN5Rc
hdM8ctBk2u/HnU7AfQWof0Frb7XUP/BCgvg30LoBJ22nf39ZP9aCnjXUOK/NlVIg
35Hcct//bfudJO6JeLmStJQzHRoVsOFj75WcuuGVJY96O3LZVnV9VmGWqWrGorYr
LhUAxFAsfFcFYuRMfqgvFLPS1+yrLjBsSFaR3WB92NrL+osLB8zuoZI0lAWd9Dcr
WtaXZf2SlfXkdQyYARjtGtikrYRWspKwYilSJnTeblGs4HpYUgjxU5iJ/0oNz/4V
tq0Xg6WSFrBysBgZdUXbEA/3YKOBaXJ+0agxQIiY5Cibx4dWl6KM9JTLSEBllCOB
GybIwhjL4UzOTi48DMOnPuC4imDs+nUDAX9wElxRSyB4d0wenRxeSi0BPnY6SKri
04jh9fI9RpAgGKWXYKQutNgTZSkdrhnMJvIYKnwAXJdeVOmVKynWNYpCXOFtRIqs
ypOpSdfEEh3Rv3RfQ3ybt8Q7mtY7eLnka9HtU236w4mlrn9WjcftukY8e6+NGq4i
XgEQySegbbrfUR0Vl1OY1sQeGFL9woxfd61l3J+Fg45GHJZ1uFpgsrAGDnlSvayE
JcxdLOnw4qx6pwIUPZRqXdLUwNOwNKMsMPvTmzKamZhhM5taBC6VO69LKArnjY2o
GAaqvaBS0Ws8do15aqG1Wolw8EmZWdi4wVtiZbgBlr9RveejFXYRwhCUbjCM7Qge
Vhqv2ZcLdcVBbtD0G9BCk2AuqtO9umPM492VCSenKA5AZ2S8RBsEDkhi4wVRSsc7
GL38CK96sczkeSLI0kT/s+kT2pwXLSEuKJkcrO8C5cPN23gga6TTm2mLpbCg0n4h
sBnZ0VGHb17AzqIX0wVITSVINmdDPjXk6S3qWN1o7CiX+ot+w7nRcbtZ413+SoTZ
TxaiIvv21VI20PexPWVdboJANisICbh6TZJOSUhbCihK0lv9sdANsTifE5xEdqMi
/QtF/b56CnDXGqUXaHb5rDCj6mhNGG8NdE9VrUlhjVSjv8ozoeZmY1DdW+6ZdiQh
ivTpuWMd0iznTlEp6iAAamtmRsW4TsbJMLB5Xe8hJsQA4xW0gWrl3vO+HRNHWzbO
ou141xKIrC4/ahIWEm8JT1o35y4Q46XpgB51KCfqxtcdWbm7Dg2DF9i5iMhN+xrY
fQaFRyLZwf8h3+RAFeCXVuEYtYEkeipmtXC1DTOYKoXr3L12Pf3Op+Hbi+jIRaP5
nuhLpDNaUgGKoQZJtUp9CgGqUAO8E4Fep536wHsogpG/m4xr4kWwzG7aw9s/w2zz
ETYlhRBTYyZ8UohH/Y2dTWQfKVurjWmVa87SEtMVW/TxCOoPtMBXjdQaV0otJeNm
UpyXrQ+i1Tb7CPgN3+dkdxt63nbXxA1no6xxIKNes608yp7NOGnr7OyH8eGVs1pG
RVGJXtxjVSyodDMUy1Sn5p6RkzEr8jplL/oQAmU5g6BXGWpWmkMeo6BXp+hAfZyP
q0+tzhlQ26f2PJoNUDnbnWFq2IcbXWqznejDoleYSiBKxzFeI6VJCbk+pDelP/zT
oboZCO0IPIboOeeFrZJAZQntTFjmyZQJgYFoCH+MCU9JTt3LtDB8gWl+G4EI1Vcq
8OSPDCFGJK4VzpqAAfee9ay2HFQ73fbpkhNW8wy8WAydtkjh3L4VmGEo6vFnY4IZ
BI2eG5jWEPP6EQKKC8NJg8qn4V3+woSkWEcdlVis2csPJ4m2ga7/+IcUowRCPEvr
SS6PVsQOeSUGSAa2sE1l410IRmeqUjdFOtF/uKV4sN7oT0UsedZe9Z8M4HYekdNw
Jt+O+d4qRFV2udlVhhb6ba5jZ9xhnjfqOlti9oWjehooGODfo08qmQxKolXx1MRn
JHaUY1ObIAPt4dl8S/Agnk/WzTAmh+W6scPZ1k4KKRkgPirpK5/lo5qMe6/xqREx
xmqItX+aWqTuVyOtEweP73Aun70JhX88O2a9AI4kp7FlFXUaUPPfaJBxQ7HPMaQ2
FP5lhqFdNcX1oq6YD8HASVFAdde+ZdBvNPw12magYOYZzwrUS9h1tkazT11b88Dy
3rl8kJ0Ia3P64rIg1XLxGjuQ2XPw6IDHpYHAxzxkN/tgQEZqoy2Ew6CWb81mgw3c
OJlDHGp9ix4ZscT81bMdh6j0r2JniHcmAvo5NibGiHkcM9c6m0E3EjrohSECnHFL
/tf79XI9CW4/FQBXkz2HmpDVoUbcH0fFe9KlNCzYRIYRygKbuh2Eru7l+zKtyXZo
BGem7WCyZpF2U6ot6sE2WkXxY1snI9s1OkvVHmjSdnGh/bFxUDI1q4Bqnh/qw+qx
xgKtyyWjeBMr8K+jBtjyPbeOs1SrwLsTaJeibSDMMuj0aW+oUnURZK95tVaURv5B
0NVTA+MYwBAifyG4KClQswgeA4S1BJRPYpR3vaeQsONdcLXMiDDVXXVmQgzQAI7f
raA3wOCpTVTrPCujuGt62Mc51ibj0anrsQeU9zogWbeTA5YPf1JumDGyMhwwFHzo
x83LhijswzhEyKfTXitILeKP95ImE7XWwUZ5vD8fOChoDf2NOF1cLVQtan4gOZOd
clAAYAXSIDLWp0+uILDhP9xLszT3lrVsoNPxe15ayVrvpZiW4aCAeKbXzxRnq9eH
Rx3q2NuAVw0WUMOJZqGQzFdlKxw9g40SuzmqIf/gifMdF3jpxrcmKtmJY3Pled2r
JBHJOBLo0t5LP/JejhdsVJWtM7N0+rPLv+T+h8i5iwdhAzozjYuOcPbUFHcnMic5
3IsIT2I+kqXTbIhAz1c6aPXx81QWHP1E8GQFpHFYtlNcskWuneMMKmqRMQkUz5Bz
wDbsFC7jpWB4yKl6MDF2YYAWwHmFuooqHHTPOGLKe+RLe9y4/1KRuPbqzmd1lv1n
ZOb61gfCQgAh8bTwW5SZA1o3ttGPBBT4pdw3/nEGuZuqTmMhNXXVV3PUQDJmS9mn
yk4CKBLNsPk7e1XuGuoIDX3TcZ2BASDMsRjAaNXxrzKlb0LBQFbfBlPe63xYWyti
8Tv1sxfDQXhIMZMP/Eb2K72bxWR2Qp73FR1h2a9JQxMS4iIFEl/QtFIHO/KJoV51
jCiJo1xQeXP96tACpSMQTJqM7kKW8tUwDo0tRuj+nXYkUC3kr8kdtyKRNm2xHkcj
fLLuW9Jb69Rs7xRtlp2aX2usWhWOBqhahBy1yoGbMj4Nfr3GEhyZZCEei+4eIwzb
smFMpmGVoCW2t4b0x/1QamUAMsnglaHQWFlH8XfZ9v7u0GUQjgVhJ/M+1CEQdag7
c2BfCS+d8ChPH2KnnC8gN2pF1xXzjyqzOP43Jnu7rjkhdahSUhteDpLRijOACo5f
Cxjle8xNJ6WQnt1y8LOBgxHI27Q5BvtrR4SFNsUmzraTKqrx1MOjjGFLWM4e02DP
XcYm4BUxydcSNkgUrh47Pf2iZjLV1oTxUGwLYeca4AX/U4gLNZz3d9a8LINZ4pgh
1QzD5vnhHySqpkCJLW/Xs7Ne8NV6xNgkbDEp7OfdPEm38lHrFmOO5+F1q7PLJP27
lps7k8SZVMB2eaXlhHagD+EFDuFsuICOuBjYcylBPLmKqDZmKisD6z56DASMk7Jl
6eMPz5t+mJ623Km1Hd8TC3n+Rtmi0Pw5tILx7dmrS2mnGyEJLKJgkVLlC1bzwZTn
Iavzkzc9ealJha2WaYbGlzT8AFVc0ksfbRCHHNkkj9AMZenZrNDbbrGzsSrKamO2
JUZE5Yih38sAbEkB/caDqRg23K4nXnKavdQUePk5H+zJy2deCE1mz9oI6hN4OybG
rv7Lgb1Th5mgKkxlQan0ZGh+4kTHc822z6pHtL3TYWTQflVUqMxG33YQ2Mrvi8o5
MRO7LIanQxr2Jhfourdz7N5dC95j9i/naAbHHIG/snZNJlawPNgs6cqJJIYzdlmL
W8qj17eyeshy8ExqZEDVZLROCLvQV5t/A/67w+j9PwcAwUt331Bf08/1ZypK8Vla
P5YuWZlsWpqzFsK8rXXvepj1/e2kblhT1zs6kNPQGzPvGVB/cvCjuGIbtmXOHbuD
LR1Wpy3ilkPjrEGBfNXIE3IFfpEuSHZOgjaDERJ5lpLwE1UCuvsOuNXBTIh4IJ8Q
5vmj+oy7UKJnQYSGqYSoGhb1dDT8LK4U1c5TYJoz9SgPBr/xJOz4T01n/hH0GaKG
c5e+ktfEuIZe2rHFiH6a6nKSzRzkpFpii3FQsUrF8Tm8dkWYFE8WCMRsMy3LIUpe
rXKLuNTHXi5cg9zWF+EcPzq9gqbIOmX0bQ97KrZkc5XUZDyDik0gQRd/dzVV3bhM
epsR4RWrsVVnfcQt5L0Qf0t4XWMNDMz857URmgi0nyQ3BYXciUeVndjV6pPViPJ+
nPZFgN86bFLem6zIIMr6Z2tQBRzb+QHmh6YZGd6N0huU10VMJNclxTRLDdl9/jhr
OqyMSD/Q2TSvkar9rGrT+JKqapqOQsot0SnGr22xaDQb/JLMd3c+GQqDFDBiWUaR
xGpQDldBjJxY6c2FK9BcRvgm47i4E/jXMladvrdfweYtjB8RzOaVPpO8apKBvdLF
Nix72OjbNLVaFvYK/dfhdXhpoBSJyeJ9JzxDTovC+DBnrQrLM+86DtsJOAp4iXV0
+iSOx0yvgY4Ns55rm+/FlBkrO4PtmXAi1OK9EmiA6o/WZuy9l/HHlvbiZrbKJNsS
DrCQ8duJT/6fZNYHUEg2E3tRSlf2WjjDdy9SGsZ3pc69rzZb7JWXz0oYeIoMGlGU
99TpH5gJ5qU46XrjOzPCFT5Jch7gqvNh5xxfO8o+y+5nxjftWykPAjKCE0PVNjaa
d+z92P5DMIB7h63Dn11mcWtfdelRxRZ1Et1fKec+5oiiZd0cDoF6FnKTg8xt961p
hROFpAF4rL7BJtywSCAkpw3ENmcixDVu/QLEINfHjz41DRCFCu4P+m5ChBq5fJK/
6uNuH+4oZT92pyk9CNNgOlplQrE7njPy8NKTVXpQ1blOpHRcssZxaXRULjqKTLGP
Zz8hQL61TkzpHFQGNdKomSOByRtxIo8XYjn3uYNZhkmgORaUGF5+QMkJxdkll1TP
fzBHiTNyhl6PJu2X8Jf99afZRA2oBA/i56fhWTl8A3jnjS3x4S3jowWp7yQgf9Fj
0sCMbsVQXYLHIN6XtrIxg+hwwWDhL2GcblRBShwHbLA1fRPNVfmCT5s9DLQMs25d
KY62B4EsjykJD0wdU96o/kGh8P43TnqLGemzyyvNZXeHt7/lZ98hWwbZvGa5lQfr
JY8Ex1yY2GgFd4njOkpKP6vHUMIoH9uWk4eR9LUFFl1Fm59TO+PkHPooD2kfrQOE
UQoD3GttbaKY6zclZJk/mSPhUU6nGZD7gO6fcS7u0TwYcecaIafnx3nLlFrenuP2
mjO9DBEdou1tzVLOD40llrUpSECtJaM2vJEC+qONdoAv1QIGQarVyArcYQX902y9
DlaiBib+dUzHDbaT/n7rihHM8d1Y4hgm9yyDOYGA/6i0hX7RSNBXD0RQYngXmIGq
PWSLTeyYJOBqDz0dUOW9UKpMyprpxybDXqynjgLdQfbzoOxe/FuEm5WrKyyIzzgS
l4KGAAm+n8ZPJHszUxK5z8UM7A5JmIc9Z6xSzvp3IypMNtcDcxUuvK+a86ZKC/th
H+ExAHIPyBnP1TEOs+H4FKckVzC023VqSNMojDnge5FIZDo9I5AKTij/4oMgTPNx
+Mxewdtbe7z8xjK8t+MwLmj4ppSYh3UWg8xD6PAmB/ZmO7llQ5LvAlCHCGhsR8Oa
+eLCKC/IOW/tEsF20f87WVQCCLohBQHHQRzxRzMR7BUY6qlARTgQVTA/yc10WuO5
K3RTAt+q32cPbjGEMWhZDo298hKBn+2QlMDxcUSTalAwPLRqPjG5ByYBnBvY6s7A
QGEMCgbPfaANT4FiCvP4YXGRfadndh5sJLGLzd+0U12XD5FFp/JBkNhBs7VxTboM
9VjzdBK2W1PnzZ3Z7OhydrL2urmfjmk9Hcp7khubOqonadgLcdvRSDLaHp1jSCkE
dRBIymVRcmzwY/XSTwta+oQoeZSV9lkTofdnEhXtxofGPgXgtGIFqjCkaqBZRIsb
zx4v1DX0BWlrm1IjeUMq3eYj3SBWFiMBEIOfaXF31/9sW6ijFEQgEwN1RQr1uB0B
+Sec5pJYTBHnbxV3QZGRYCZgMsJefy9P2OZAW++FY96OfIpK/3YeUEjYdECkAtZg
Fj5mJU857wEZFWXGmdMcuyKughV7tO5wfLBOFs2pDM/v7NAPeIUJ4kN9tVt5ayUX
V/Ou4q1okDjdagbyt3nkVMklRWxue/H0Nu4XPGPnkLhsNXAm+AL9PDVFdvhms4O0
X3ALreWaSH5p3LsNYePfOAM35KuXAA+bPYiNJfpHMKxkYgQq1vSn1WXZ3iVIt05k
6tvK2vh58VOS17Cx9JG9XQHccEJqUTQ5lBz/+VX+Azk8tPvtmqEuminUSIrqBNcB
jQ40ThcJr8Qov0Dj6SGM6oxqvJDQ339ny/XwgVaNJbVhzQ+PnakJABo5lEEBTxFn
Sc4nwBWrC05skIRoo8v1f8riEj9SqYEvvgVCLtYWO4UPYhbtqya3yV7OgE9fnl2q
3lUgZo0ztsoJLaBg5J/Cd2sFAgNqI1Ibgo1Ur26zjnIO1wzI8yEH7c51iEIhdwr2
npIZz60NYiHGJxeFvi9nxtIh43d/Kh9hsfxSBBxrp+ztnoHHbXk8zUKOuK4sxIv2
TCETgcHtcRwer0zaAo3MQ8844nSVjXc2cu81as1V6khPpM0syNOE/+m63PMmHbWh
GO/8t3BucIgyRi0zTa7TgVaHntOujdt/fVctMQBxoUlA+WZx/0+9Rdh7Ki8MB3q+
i3cnVVOfzWHKnV91a/gkOMIgJina6qXL5ros3nIRH46G0TiVB2SX/iIvqsIiiaA0
QTCvNrsOFfYk1SHes/DWTJfNRITuFfk2DLvA4v3Z19N7qoNR0iMPCbt+oxSIC5ac
Ef6i4MFfvfZhK8FagzFE0w7BsQ7iNarqsgB0OnWcfrzab2NIXaJoyalJNErhqQUM
KtrJpTAvf9vnMEPRojPv+6SkQc88//k+rxuH7ZtxWCQ8vQ4YnP/dH1bsHuF+pdGX
TNRDudLPDUeArJC/PYH8Y6sf9Q3MvAuh7EtRnI/gYnMqOgHUZOai1zy5uMD21eOi
YVtr1nn67/m1CXEfox6wJDLtzpxKX8FjqsOAdWAjvRhDHIxv9LkrM0NkPLlM0EGa
ZM7Q+lamkLNfX3YW1CgImWmqbO7u1YHcgBRuXx7reCHEpus442/1AWuIpbKc4ypz
4EKqUV/WvWcHU5/+FaQiCSTv9EnMOCIcAMEoRyO5WOzuyU0FsdsFJyyBXZkqcGMK
a5m1SvNt71fIgkXUrr1UmAjxHt2b+O5gZDazPCIaWjMxE08XBAkqNW89arwaigNl
RVI3d7shZpeHZvYbkw0VpNBsu5hAkk32LZMIMiZYuKvLdhhIeg59L6RlPT/JNMfB
vAEu8mXxnc8l5GeTHyjVsVUpdCQDnEt6/ly9G2YWqSKMUTOkzG7bD7iUFGet6hnp
WTr+khwskrR0tEAv8BYPCdqsEnJ7i9ho7mKFa1aDf+jzFoxes34Vz/bwW19wWwp4
QUp6JxCK036UKYo5IDxPAPdJhkZ8mguwKCA0g+RYcxKd5kWaqOb1xHCGbi6el1ul
5zjOtiPdFA+4KLo7uBzusw+ngOQoaZNMx9mxxQDyRT8FwZFLu2wpR39oB6g4NuGg
9y5Xnimcrd7ymi+llhpyQaDlquE+ddMqyp4eINCbgu9VLP7I04MM/BPj9hB0z2xN
9g04iylr7GeSsrkEG+/D3mW3/CpZ2+ZiferdDqoYIceqLRh3ljzA7DPb9rxFni2p
mLOCU5XlKaQZzWwIpKRM47gtwmKHoatLTwXPSa69TO/L1XYNzkAmSDWH/YzPjzBQ
33EUKlKOdBJ95GktUI+Vidj1zIqwSe9Ko+3AUV8RwWMna+EHuLrfb8a5JSSQM5DA
iQJAFBLioosUFy9B56eM5tVd5XY+nXbul97+pcQG23tm+cqYGj8NInn94T0Qk2rL
lbF8+eHWktETSCzXcUxvMcAlULiSy+MgmAgcRoNDCWiZBfd3vz7Z3cXWFzem9wB+
Bu1ufCAthRV91wfD46s268ZgTS7jdBO++UsWt/Nq1TJkKndL6Cy4vp6inZaE1Qfu
6mlvHt2JdMDxYd/9HsGEDGIgjavbSsYtbmQnwRtwtMqt3XFVej3GfdmiyHCoJlKi
STV4H0wyB67U45xOGEiphgwyJdy/qi9R55B03b0d6x4YTAHaxP+T6l2HvIwhRq+T
6s4x6U1J1+FCXFgDppdAnEw7Z7uP9eWcUKJZ2nPD2KPL1KUSetET9xIWyXf/qbwz
T3NZKENBJ4pvRXZKsDOz9cJ3SE50EDEjIC5ZA+G80MA58v29vlJm01x60dfCutVG
6/tms4C5e65DyNxUslyKiX/XMt/eatnwgCtZFcp4X+LHsYJQzcu9kA/xNYpAeFHd
c+CWFA9uzHTdI9KhZIgnGjfTOZmCVC/JdOMdW4zFdSaRUZ/WWsSz3Og2T1/Gu0BZ
0yrvYiEvTTz0vcob3PR4/qBng2WP3j86yoZmO7KgW03+3hdXoQBbhJ+rTTvPy782
m97yXWo3gC94pJdBhAJQJsfMG3o/UgsRmIScoo1nxFqDDvwkLQDoo52EiKLgyJkv
eW1I5bramAaniL8AMSrMGYWdUmR4oyynDfgOaCvLpLi9czd8pGpRsoMXAHtt+yU3
MeVWEjAWQQOhiaG1DtP+/I0X8LTMSMRCr0Ag2pT5+IY=
`protect end_protected


architecture NX_RTL of NX_RAM_WRAP is
   attribute NX_TYPE :string;
   attribute NX_TYPE of NX_RTL: architecture is "WRAPPER";

component NX_RAM
generic (
   std_mode     : string := ""; -- standard mode [FAST_2kx18, SLOW_2kx18, NOECNOECC24, ...] empty for raw
   mcka_edge    : bit := '0';   -- 0: rising edge for port A clock - 1: falling edge
   mckb_edge    : bit := '0';   -- 0: rising edge for port B clock - 1: falling edge
   pcka_edge    : bit := '0';   -- 0: rising edge for pipe A clock - 1: falling edge
   pckb_edge    : bit := '0';   -- 0: rising edge for pipe B clock - 1: falling edge

   pipe_ia      : bit := '0';   -- 0: no pipe on port A input  - 1: pipe on port A input
   pipe_ib      : bit := '0';   -- 0: no pipe on port B input  - 1: pipe on port B input
   pipe_oa      : bit := '0';   -- 0: no pipe on port A output - 1: pipe on port A output
   pipe_ob      : bit := '0';   -- 0: no pipe on port B output - 1: pipe on port B output

   raw_config0  : bit_vector( 3 downto 0) := B"0000";			-- PRC
   raw_config1  : bit_vector(15 downto 0) := B"0000000000000000";	-- MOD

   raw_l_enable : bit := '0';                         -- '0' for NG-MEDIUM, '1' for NG-LARGE extended modes (NO_ECC x3 & x6) + scrubbing, test...
   raw_l_extend : bit_vector( 3 downto 0) := B"0000"; -- Extended modes for NG-LARGE (Scrubbing, test... )

   mem_ctxt     : string := ""                        -- context initialization
);
port (
   ACK   : in  std_logic;
   ACKC  : in  std_logic;
   ACKD  : in  std_logic;
   ACKR  : in  std_logic;
   BCK   : in  std_logic;
   BCKC  : in  std_logic;
   BCKD  : in  std_logic;
   BCKR  : in  std_logic;

   AI1   : in  std_logic;
   AI2   : in  std_logic;
   AI3   : in  std_logic;
   AI4   : in  std_logic;
   AI5   : in  std_logic;
   AI6   : in  std_logic;
   AI7   : in  std_logic;
   AI8   : in  std_logic;
   AI9   : in  std_logic;
   AI10  : in  std_logic;
   AI11  : in  std_logic;
   AI12  : in  std_logic;
   AI13  : in  std_logic;
   AI14  : in  std_logic;
   AI15  : in  std_logic;
   AI16  : in  std_logic;

   AI17  : in  std_logic;
   AI18  : in  std_logic;
   AI19  : in  std_logic;
   AI20  : in  std_logic;
   AI21  : in  std_logic;
   AI22  : in  std_logic;
   AI23  : in  std_logic;
   AI24  : in  std_logic;

   BI1   : in  std_logic;
   BI2   : in  std_logic;
   BI3   : in  std_logic;
   BI4   : in  std_logic;
   BI5   : in  std_logic;
   BI6   : in  std_logic;
   BI7   : in  std_logic;
   BI8   : in  std_logic;
   BI9   : in  std_logic;
   BI10  : in  std_logic;
   BI11  : in  std_logic;
   BI12  : in  std_logic;
   BI13  : in  std_logic;
   BI14  : in  std_logic;
   BI15  : in  std_logic;
   BI16  : in  std_logic;

   BI17  : in  std_logic;
   BI18  : in  std_logic;
   BI19  : in  std_logic;
   BI20  : in  std_logic;
   BI21  : in  std_logic;
   BI22  : in  std_logic;
   BI23  : in  std_logic;
   BI24  : in  std_logic;

   ACOR  : out std_logic;
   AERR  : out std_logic;
   BCOR  : out std_logic;
   BERR  : out std_logic;

   AO1   : out std_logic;
   AO2   : out std_logic;
   AO3   : out std_logic;
   AO4   : out std_logic;
   AO5   : out std_logic;
   AO6   : out std_logic;
   AO7   : out std_logic;
   AO8   : out std_logic;
   AO9   : out std_logic;
   AO10  : out std_logic;
   AO11  : out std_logic;
   AO12  : out std_logic;
   AO13  : out std_logic;
   AO14  : out std_logic;
   AO15  : out std_logic;
   AO16  : out std_logic;

   AO17  : out std_logic;
   AO18  : out std_logic;
   AO19  : out std_logic;
   AO20  : out std_logic;
   AO21  : out std_logic;
   AO22  : out std_logic;
   AO23  : out std_logic;
   AO24  : out std_logic;

   BO1   : out std_logic;
   BO2   : out std_logic;
   BO3   : out std_logic;
   BO4   : out std_logic;
   BO5   : out std_logic;
   BO6   : out std_logic;
   BO7   : out std_logic;
   BO8   : out std_logic;
   BO9   : out std_logic;
   BO10  : out std_logic;
   BO11  : out std_logic;
   BO12  : out std_logic;
   BO13  : out std_logic;
   BO14  : out std_logic;
   BO15  : out std_logic;
   BO16  : out std_logic;

   BO17  : out std_logic;
   BO18  : out std_logic;
   BO19  : out std_logic;
   BO20  : out std_logic;
   BO21  : out std_logic;
   BO22  : out std_logic;
   BO23  : out std_logic;
   BO24  : out std_logic;

   AA1   : in  std_logic;
   AA2   : in  std_logic;
   AA3   : in  std_logic;
   AA4   : in  std_logic;
   AA5   : in  std_logic;
   AA6   : in  std_logic;

   AA7   : in  std_logic;
   AA8   : in  std_logic;
   AA9   : in  std_logic;
   AA10  : in  std_logic;
   AA11  : in  std_logic;
   AA12  : in  std_logic;
   AA13  : in  std_logic;
   AA14  : in  std_logic;
   AA15  : in  std_logic;
   AA16  : in  std_logic;

   ACS   : in  std_logic;
   AWE   : in  std_logic;
   AR    : in  std_logic;

   BA1   : in  std_logic;
   BA2   : in  std_logic;
   BA3   : in  std_logic;
   BA4   : in  std_logic;
   BA5   : in  std_logic;
   BA6   : in  std_logic;

   BA7   : in  std_logic;
   BA8   : in  std_logic;
   BA9   : in  std_logic;
   BA10  : in  std_logic;
   BA11  : in  std_logic;
   BA12  : in  std_logic;
   BA13  : in  std_logic;
   BA14  : in  std_logic;
   BA15  : in  std_logic;
   BA16  : in  std_logic;

   BCS   : in  std_logic;
   BWE   : in  std_logic;
   BR    : in  std_logic
);
end component;

begin

ram: NX_RAM generic map (
   std_mode     => std_mode,
   mcka_edge    => mcka_edge,
   mckb_edge    => mckb_edge,
   pcka_edge    => pcka_edge,
   pckb_edge    => pckb_edge,
   pipe_ia      => pipe_ia,
   pipe_ib      => pipe_ib,
   pipe_oa      => pipe_oa,
   pipe_ob      => pipe_ob,
   raw_config0  => raw_config0,
   raw_config1  => raw_config1,
   raw_l_enable => raw_l_enable,
   raw_l_extend => raw_l_extend,
   mem_ctxt     => mem_ctxt
)
port map(
   ACK   => ACK,
   ACKC  => ACK,
   ACKD  => ACKD,
   ACKR  => ACKR,
   BCK   => BCK,
   BCKC  => BCK,
   BCKD  => BCKD,
   BCKR  => BCKR,

   AI1   => AI(0),
   AI2   => AI(1),
   AI3   => AI(2),
   AI4   => AI(3),
   AI5   => AI(4),
   AI6   => AI(5),
   AI7   => AI(6),
   AI8   => AI(7),
   AI9   => AI(8),
   AI10  => AI(9),
   AI11  => AI(10),
   AI12  => AI(11),
   AI13  => AI(12),
   AI14  => AI(13),
   AI15  => AI(14),
   AI16  => AI(15),

   AI17  => AI(16),
   AI18  => AI(17),
   AI19  => AI(18),
   AI20  => AI(19),
   AI21  => AI(20),
   AI22  => AI(21),
   AI23  => AI(22),
   AI24  => AI(23),

   BI1   => BI(0),
   BI2   => BI(1),
   BI3   => BI(2),
   BI4   => BI(3),
   BI5   => BI(4),
   BI6   => BI(5),
   BI7   => BI(6),
   BI8   => BI(7),
   BI9   => BI(8),
   BI10  => BI(9),
   BI11  => BI(10),
   BI12  => BI(11),
   BI13  => BI(12),
   BI14  => BI(13),
   BI15  => BI(14),
   BI16  => BI(15),

   BI17  => BI(16),
   BI18  => BI(17),
   BI19  => BI(18),
   BI20  => BI(19),
   BI21  => BI(20),
   BI22  => BI(21),
   BI23  => BI(22),
   BI24  => BI(23),

   ACOR  => ACOR,
   AERR  => AERR,
   BCOR  => BCOR,
   BERR  => BERR,

   AO1   => AO(0),
   AO2   => AO(1),
   AO3   => AO(2),
   AO4   => AO(3),
   AO5   => AO(4),
   AO6   => AO(5),
   AO7   => AO(6),
   AO8   => AO(7),
   AO9   => AO(8),
   AO10  => AO(9),
   AO11  => AO(10),
   AO12  => AO(11),
   AO13  => AO(12),
   AO14  => AO(13),
   AO15  => AO(14),
   AO16  => AO(15),

   AO17  => AO(16),
   AO18  => AO(17),
   AO19  => AO(18),
   AO20  => AO(19),
   AO21  => AO(20),
   AO22  => AO(21),
   AO23  => AO(22),
   AO24  => AO(23),

   BO1   => BO(0),
   BO2   => BO(1),
   BO3   => BO(2),
   BO4   => BO(3),
   BO5   => BO(4),
   BO6   => BO(5),
   BO7   => BO(6),
   BO8   => BO(7),
   BO9   => BO(8),
   BO10  => BO(9),
   BO11  => BO(10),
   BO12  => BO(11),
   BO13  => BO(12),
   BO14  => BO(13),
   BO15  => BO(14),
   BO16  => BO(15),

   BO17  => BO(16),
   BO18  => BO(17),
   BO19  => BO(18),
   BO20  => BO(19),
   BO21  => BO(20),
   BO22  => BO(21),
   BO23  => BO(22),
   BO24  => BO(23),

   AA1   => AA(0),
   AA2   => AA(1),
   AA3   => AA(2),
   AA4   => AA(3),
   AA5   => AA(4),
   AA6   => AA(5),

   AA7   => AA(6),
   AA8   => AA(7),
   AA9   => AA(8),
   AA10  => AA(9),
   AA11  => AA(10),
   AA12  => AA(11),
   AA13  => AA(12),
   AA14  => AA(13),
   AA15  => AA(14),
   AA16  => AA(15),

   ACS   => ACS,
   AWE   => AWE,
   AR    => AR,

   BA1   => BA(0),
   BA2   => BA(1),
   BA3   => BA(2),
   BA4   => BA(3),
   BA5   => BA(4),
   BA6   => BA(5),

   BA7   => BA(6),
   BA8   => BA(7),
   BA9   => BA(8),
   BA10  => BA(9),
   BA11  => BA(10),
   BA12  => BA(11),
   BA13  => BA(12),
   BA14  => BA(13),
   BA15  => BA(14),
   BA16  => BA(15),

   BCS   => BCS,
   BWE   => BWE,
   BR    => BR
   );

end NX_RTL;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
FatPjD0qbO2J5VY/VcsAPRX2X6Y/NS7SatLd+KwPK+gBsOsCR0nq7cWrEVMMsotS
+CzY320pvvCU7XiXmtjjD4Wqm+y3Du7Y7imLxt1n4e2yfj4a0NTgmcTTZ+/gRW1f
oGnoD3eO2LXGF0CIak4poU1C8f+QaKgb/ULyKfDFlaF+AohnnB1vv0l9ewW0wbtK
5vIwDPRfcVBljXfIiIcLmFQokTzOpcBUr1CxhIiFeKqUS4/fn1Mhn6ekynEHFL+P
hFW5LkWWsb0zhZ9DdZYicjqXydKWS3Qm8YX4GDlnnvDANi11zYa5eSPWAsJMm9YL
9A4QUcLhiimTnPaOD1IazA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 7808)
`protect data_block
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
`protect end_protected

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
L78ITjZYn0niXX+lbXvCjZ2Se9P8+TzOirJcslEgVEOJ3bdO/vXoSghQLwLKKQIO
l+oWMxX5Rl8NYKGPffuIscjgcjkeKUYaaxKS/8k7SSQBryf6SAaDzvNoADIgLiAe
EKyptCxNgJivLstLsMO/h0TOKKZ/sebhuL1LqIA5o4JhuMo8X7bhVdW0YQ1oE0z8
d1A4CbuOLeQUTG3UWaYh34qH/5zNN21Pbt2Uow4CiHcO2tF8hOA5Gt3lDpkDkSby
aTuIoCutgxPRGS+EtUK2RI10i72zzgu4cxXxRMdYcgiRONXSQHjjBVEMRt5jNWMl
r86TTh/kGIh/QuyvYPW6Og==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 13664)
`protect data_block
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
`protect end_protected

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
JlZj6JMq28bauQUA2t+cWg7VnepD8+ORZaWfrPaBGYFDTBg/b9MgNIteF/kprRP3
8qJNkLfTs484lPAlHce3l8zZtvnjNGyMhGEt0WdX/DIZPjiYLxVsban6gYVJHDWd
TEk1lkQZtSha3SSh4HrJeCjZR9m2RCgkceyXA9lxCbbKr/DLLFwp2V0xJhastbA1
cigZampfMakzqaJ+8rSmneXMrVb0m9F3UwsRTUO0FNiJQT7xguEHRprWxtHm9rff
dBeho5M/HgHKCYGKaCbHBkSK0qKHdgVXad6fa4wX2r81qpFUuPKO0ZteHRnksFmG
i/ryZVUqZToeE+Dsw3ugLA==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 10352)
`protect data_block
v935wsTMkVu0gI1sZWXuq2JVAqm2iftmZryVY/wUjTuPO5Ya0347Nk3IRpGQEYXw
wdR2Cc3QaqDEm8EC2C6lZeSsyF78o16rNEEFoKP8TMUrAAW6FBVkA4IFXbIspRh5
Vx6qid0wqrqmbeWTnGThj5gcckJpWi+uVhwjVzfynE9K5k/ytMgtuN97af4v9nnc
wfIcHE6Cz51nxMzSXEy6Dr9QJ4Ew0ckqB/TXYib/KO/w4ZLkzaTV//fDDJxw085h
YHuh2Xx44hovA1Aw2Hmfw7b6lT20kVhi7V+Iy/LsKPzH4WquhLlEUArpMfNVQ9H0
mfljwRGEGVlOoRW11KP3L62d5ZS2hIOfpJE7bMNASdUvbsr/VApiKGtemSuIhKTg
p79ovJswofCiAyiBerP3cur+E3RrpAGiFTVd8IQkJ+2LAQe6YsuVP9B6NFYX1Tu3
IW3IzOiL8T0ODMvwbsbQMpBrd06s7FJqzsrPt7qIauA9T3yC/WIxfqFCipNA9ZbZ
iQqxzCuzESwpV/zAAP+N3xOnVCsF603OMfqmaA5hujjEW14zccz3WUFfFjbguOif
x9zY2VDBa+uR4fMiA0hLB9ad/LqEPudISJK7NNE9EbRjSEecSFZ+wkpWh7gUZBM9
1Oj9qrMuhQ++U+vQXpTrJtbBnWQPsLG6IyigDavsSMtMWtv8CL0vtJOzdb3R/awB
Vyai/Jv1yQYY0XvKcvUqz42jGPPfmVrw21EobtGDywy5CCIMeEB3UaytWnTQDjNm
Cmm8jvRzTyVfipixSL7y0IdN2WbqN/dNF94eeXuL4vY6IuoW1g84SbVs9IfOSpLe
GI2u3hj26pMM0fyd1ZeUfSVRREgj8bSi6ty5yhHsReO0XG0GG/sQXshU78A/hml7
3lUa9p9DV+vAZ28B4hNgLu2Z8fXydH1ej3qdxGzE9gmaDm9QY9HOWvxK+ZYjjgmY
GXIq6BI1EEhgNpJd49TrrL+MUbz2tIbo3uOh77PXdk12LVl4oVMF4fMS9GT0QKEE
Culx00H29ErJknsYiYfBpiCUScsUJtfv79qK3tWK7EKWelRkKZv1MDB07MPJzgsL
hyJhKDEHQDNxUis+2tq1t1FvX8YBK8mrjfWSU2IfQuSYblwmsDMpuq65XewxviiN
PQgCz4aXEoTa8wrLjv9w4Mo+8fAimeoYqEAslncy8m9A173TPcgnRbsZd4aQwd98
PefNVfj+genSZcNrSmsdBriXNXP0s/fQO6WJt3bX/VkrPY69tDbFDAW69fmypgdO
JItXm3ngWzMG4kDH7lK1GxERvKgr3D6QWmSoPMJopUEkMXe4cG0wzeeBUdFSkK1u
sR99jI0CYkEj7MwWybgIol2JJIkXr722F97RxEalBXkKlZocIT8ur6NTCGBt4SmR
s9NQZHST2PCTDoQVlJF/3ovDHGFZf6Qtnc8nNNKRqGc08nOSNwt0nMeFNLeJ/e5z
r+j2MIerW50AQoS8iZ+3iJaJPOF258HqLF6ICDUG/snMd3x3SvrHROCz+VfOY/6p
/HI/G3MPia9h9Z92C0DtnA5KcMGqCRFmsTNEM/KFqs/WKnPRgqKam+Jt+onNkNc9
/RJUIN1BYGiqeTb/Cz+Oj2EaxGRZhM/y9NBfTmwjS5pcB/qzZGemC6psL1CqvdnB
teXkBlYtdTBdOHGCaOnrk06J+ZM4KQiYdogo7dIh7ap30Uhk8iTijpiXOC/FeHYU
K8UYQAgbh1EKTpgmZoq+FUChV9NrVMhPPXp49uTDz3bPXciLICgWz/uar1OjCGaG
y7DDx0te2i7lUsBD9uDnv5j1gNuHhN4DfHQBAgYTPniYKfX8oO9YphbkjxGEaTo+
YkDBJN71ahM2olf8bRL+S3rQ0hg0Vcte003lQdAc0Fmri9EUVqktxoKuLwUgDHBB
zwXr/HKKxEnFbk+Ki/iJj0twtl3hB15sAMH6CLsuiXAXXbw+EDyC3ezS9GGzPaMH
vs5z2HNytxlsP1LVpKbf14Aa5SL536HOPpyePIe/B9vXYDEPnyHffpJMuc9Pxj3J
OIU8bvpJRX7U3HfClnpeml2eoGJh1vNHkJc7QsLGG1pDFjuJLTPsnKRBm4FGE6sg
C81/2HqNS3dM9EgNEHlrn8hhfwLXtyQg6s/vrouS6g2/idWasxaqmYssGsH6aimJ
xxF182b4TEzlOp7yeTnYjiYW956LHMFf7u9W9oCsZAD8xjaRR0xVlOoUOiRVituV
bwHCv4vqARog2IkQ5N3RBZqK8ZzZGFvO+DZccG/v0jWrr0l3PE4JOuA9rZREZHOo
C4bLJRBXt1TVmLN1g9wDb+VA/ETB5ISgd3KxvANPp0DgUbvcQe2aLvhcUgXPB04D
09bo2MjvdJr6SSMfwb0KueI38hS6iECOI1UNQ5uqYlaqfSLKfasW6EuFcVd/YQU2
S4XUQX38A2KDTLpY/2cDp88FqizWXT9Uj2PsfC/8m+v/Jv1juRt6SGZzZy44wpIo
ASc8qCNltYfaFBKhXpNAKkk2uaWgbidgyocsMsEjgHLYbx0wEoZmnARPSPvINIuA
lLE6uj+5MugiTWFdQ5ObcV0CzN6zP9agmZ30/myBDgvIe1ywwA8gQWrEgUSnZt5B
aDTUE970nyDMNQRdDQes3nDsNVsqIl5Ejy3OgMPTOlYS/DEXhADpakezaFbwxWo4
QS00kdixC44ORNdVYUIgH5UGASLIPCyH0z3cejzYM2VdnZuXBMkeHUp3M0Rl4xLX
cCW1/5Ud3bCAHKc5/BKWmQW2VToYZpOuI7U7MZ36VEn3kjw6Oh/fU25eOyXsefOy
YN1flQjm6xs3Y1yPkUsFSkaBCi37r9TUNvlMr0dXUmZlq99uHLD+lEbXPf3TdBI+
LtNdYuj1SN8kst3KKZDnbetDD7bSFRBtdarfmAxUFDmqwYjvnVVQhkBqkb9+K3kf
TgrBWc9qypmEHKAONiiQyy4VMXtsEm9iyTI9smFQ5Pz3uM22a65YsbuGbC1+pMUH
xVTWzfJsKMNRVDUE9v8RYuM1acyAgciHTS5sDrMTElook+nvbR8vIGVuD4zj4E9r
zpwzcgUsvdkCoI9iBMlu2ubjO4pN5UBhcpqO7s9ijNTiMSKU9Ri0L28ypWTIwIXr
52XdiJIO3hnaDG/vqWBWtWnzBdCShAAanDw4mxfYDkIhDmLH5MZ9FLvjlkzjAoCn
fAW0kMQPYuJNzy3AeFtzOdWqxqaBNDgWfVQgjyvM62HU0sJW6Dn2lOlneykzi+j9
Gq3uxuBfAuHKpLY9zOLAvPiXMHbhUR+AfCCGat8KV2V5PX1wckIqvtkXSFFCaaC5
rgaZRR1bhwnmJlRQcLzDtW00KzeR8pChfvm13pns1a61qP/yO/V5ey9KWGT9LHNs
on6VHePi52byTVqGNXqSlDSuy43KIdG65lPbHRsU6H3M8SGGbCKZ5VMFFCJzKQ/2
8vSfc0o4Q5LejuUUyVYtp41bzuzaj5lOFe6rCystJcGR+g3Eg6rHgBDjsDmn8jht
7FN2ggXBs4fl8q0TffaRGZNxNtG3r6DoUMeGO777GGvIp5OAEc07EuL6/oskyWOb
CAvpnrEk0fh+Xw9Tva+JYgYZobPnGtEK1yegWAqDrN50dfSyo1hFxeSQjW9niktn
gp4lO9HNAJp231ebxJJUuOegpkF+ng94+JZlF8PLRbqKQ8VJsOjmsfQ1R1hbLeb3
8xQM0R1INcnIUJBYciFPdiWQH1stSqwwLpMX6w1qeK42vfB4MAzB/eNrrmOQ+8Br
RlxeC5dGsIwB7ZYimQJeohv8rVeIjsB9LHVMeiDMFKYI81Sqwg8Q6JcuUyTCIlhY
ksGvbHaZ5YP4YOHUGtGmwzB2vp+cSgty+bq190lLnZrFoSLSBVDo24ZghKq5D4Hb
4mVQJRNTtSf5DQRVAfblOalG991tGR8pgFA1krRqOThMXZ/uGDFL4DLEYLjuPCUJ
fpOwQZP91pkh8dv3/2G+3cMg4bMIjrFyf/BNDDD7tFF6KsFIL6yVfWj2DiXYgmF+
pNSoZfvE38fenibGBFznhZzmsN/2sY14hteQ13Wp/nmhQDuvXBvSMzZG9xqMpSE5
iZv57Znah4GmPBnNq4NNdZW3HYWyoygrK9PEIofEHmox3Upt9wyQmc4xegiCc8Dx
5t1QlwWd9Eh23ISstM8KYXvjDTK4psPrGzcOba++jeITGnK6DvnD6SCL73JGwPuu
QPV2PARH53h+jXvOH2BQiqKBcxjNexMCwtLycZRnY2foLiAfaLfD3hKdT4SDbJ/h
ysvIWXI6ooMdAKoD5u3cok6vs1QjqyiLzn+pAcXiaZDpq7rNZ6UFiszLJgZj6Lwd
qC6BiJlJWKoiP53FmIuIJZATrWdfagGl9cu1aCJk/QNATXng4n7XNLwusgtIbSPo
UaKJ7SH0g/q6akUSeC7i0CELH7uzQTbXR1LysxH1lGPeKgyBi2NyRvZT35jXvYTv
nEW+yElMCCWJeTQkvH1v7lV8KLEN8ZpQfAq4f9PJhjCr1tqig6pRep2RaoqGsaDX
G01/Begrhw5Zu3L/ZbIxgq6UVAQ+S+ZYbWYP+QdBKmHqcJBSP/Mvf3WaWj1tBe1i
v23mtfk4EzxzWuLH1g1JUubPKGT9AvtT6JtHQmE2FtEYCJvgwkZi9+mwS0mlg2Gn
3bD4uVA6TEK0BQ6LwP1lKpyXbtyQjyOQzQQfFioasKUPcZ2pV+NBlFGo81vwRIHT
pQlx1gSoQNGgqJeFsi763IxPveP8EBANoNGeaywqM3w8lA0eqYNpRArkzH/aiZM5
j6LepVVxqJq5w3G+hYyp5M7taH0YTn4uK8AtdYg9sfoYEDDngAN/RZ+wkesVAPwW
RtxqjR5wj/QJne4cwgTYFjAO0CjA9xL3fQfvZU3pPXX/nEqlkDslUMzGWIIb5Geh
3SZYlazJT8w7uMnXV0mG8ns8mtcK9GuOxYK6FRgKr4f3Fhi7kC0BwxmXORne4uqn
o5voDpX/vukqnaqmJspgkUn5SYq68i2VWdrVlrvvhcVU74EM/3awWs5yFWx0UZTj
tsQCy0ko+ie1roaW/1mmZMA61K9yjzcrVVwMJMVHpMjKx5QKlpc3lVAHFVZd8kJ/
DtezigZdeU+jLAVh/TKA/AxzEFUWDkuWfQc+LIKp2vvgPRz4u1H/kUa4Qf5jhy10
pjeG5c96XkM3Fsi0/R97aHCBOFgJOD+rFOSEi5JuCGDH2/ZoR9weO50z7O/CHHzZ
7XWckIwIUkPcjZzG9ytCTHeIcx/bsxrANAZQYDSamfR+Fx2OHAXYdPHpQFldjFOT
P3DZaqmfDsZ5bkMI6nhSS86jDfmDA0QVhAfeR5AbHXDcdJAMQ/n5Bf4ym7ppQrgU
UbtWYNXeZaEuSlSxSsJYd1MWYZdSc94/FvFg+t/2arruaBHkqYNNjS+4xwi5XAxh
lHjng/Eko2TKypOOrZR7lM52xEIYq67Jmtu/PuySc2X2HKH+dav0OfFG5w5DgEbI
hail/GxCxa+RsoVtxNhRBrafMyT0A8EzDPxoFwxnN8iOBPwx9kD4XQQNa8NRLhd4
dtfDSdPuOQ2aKfr81RlGJWfXzLhActtU4MO2Rb3PausSNm9bVxHyNDWCoOQuySmT
LNMt8BWSv81kAyJXsDL9xXJriuREsVMj21X8apYkXxOqVhLw4XjzHNt+VFUuCr/g
KV5DmcTB6hurdSGtHpDmOhX50BKRroShuJwV3nZSxvHWqpm2mi1fjMblftGYljp4
ajw/V7icHpcNcyHhwuqolcJWpOsMH5mjskgXNMc72MFyfgO4jxm8piXazB2PfVeq
0zYiWgJq/8VCtV1i9ybDo46aSOEBegRZeaKxhBZ1jlwRqQZx0akoEvKVYxagslbB
fpRTmNqrk6lb+8lwzu+JodQ5EISGqhF216d1gm2vtI2D6xVFdEPMx9QISSBHriRk
b61t9C8SugEUcRQGU60Jrn9h/nDv7OTEgmehQ6mxnMnAlwupo6Vk/zqhULii2HpW
Twtt2xqw/1rW1cZkYQmm0tSi4bYj0Im9k4I5eQ5VY8k1rkjdocaA9JYlEm5597E9
c0ev5Fkn3zpYeF67CRYOEtX8zdpCJ2FL9krw2DhtPOG03axTEAF7GTIGpm0OnJnm
eNEqLXvETwxTmjOpbgHOJ62OCGVrRGiCFjdtNOdmy2HBUYsyX9XdOAzVjnVL7YFj
rdKKuIZKeKPDfgVr+MoSFnm1QAQREa5sqCt9DIwjWaTcLlM9g6ar7W+hEqZ+RAAI
22PJVxXHx/unHvimUl59s4ILQ9ZD3KITT6HR8ZXeXBSi6ijW/ceT0nuNR3ZgpQ4b
3fcPQS2ap4o8f3EVMBf65pKVvklGKeLnWJ6zmehlx6EtEOeoY3/C76cMkpdyqGTk
4MwMcEVDY7h9Rf7tar/HV7lL2bBZSjW5phHfjY9X9xLYGqy3zrdC7ZjcKLnIY366
s3aFQ4YJeIJKDxG0p/hn1jv1ngGD6pjPiaR5u+N7T81UPcYLF3X710GXmaD7Fr0t
vfhFZZR3QLJoq6OzXroStDlpEFmOj9SxUekxUJB0Sbz0hGTmWn9jamBizQMZFgyI
8HV6quZaxCeDLT2TynJyjvTnys0JqF1d9Xi3B9YnSiiZPtD9JgPTS8w9bq1B450k
JmoJhDRdoWqsaGQsdRZR0Zw2UwhlsePa+2Tyzc6SgFQS6ZpZ8qh/T+c540+yjPrH
ulNufa7mnqoFmHxhgpOFzVS5YPhI8YGK8zRg/7QiMxJf5SvEQpVusKM5OUrUcvHA
sc2mM+0G8NgVzMsm0VCesRYlcyR2EUGS2Iy5jsa4WONEZT7V6iP3bo6zzf5lRQoO
EeR4kQWxryNp4CKMOAyZE5sAAO0kbJZTTErGavfkN9PfIOLW6FWMHkokxmGDNCcs
UY06b4f0m8KhQR4vbKTR+Ii85/cuAhj8txpQ883Cn8j1IAKRik1AXr6Bp+1FG/a3
hfZsE34afJe26n+yp6oE3nDBmmU8mcRNaJlsXpB14XhLXqcQP3kELNXFL5Ro+Wmo
BGvgDQBSB2uWWzxVeTtMLpsdn0/XKdwAJfKkjTJVfeORmN4cwwTjlzp62P5+/aTP
sEoRn/l7CqxodjYlg2nlEZjBxV5U+hmT1t0hgmAL5zIiLq38D71mkMcvFDFBi2cQ
VzGO7/jZN+Gxo7fp6UF0UeNJfd9Ly4o5p0W97O9Q/5YsbQ/U+PjjDLTGrpryeJu+
PBduLW5bZHYulH7sq3c2S/Ql61qB5l9049fh07N1HPkrzqIJjTAhsM0umRBCtAQl
SUAmepW0ekaQExOCVSOGfeGIEf3F2Q8VuTk1cJ+ALFDs6V/tW2VCDVEimA/aVYSv
4hADoZBMj4WrDPlRKKrNjLVpPkW15cAb+Nd8xpcGgkvI7Wm8G8v2gfktZ8/LKWK5
deBwsOeTxU560fIyBRNF6WsWLWp224jn/dd/1O5v58M17T/b4bA0WcTn+tbngdUG
OnWv1CXtmLVGPbBl9Umu57KYl9Yg7Yii36sxYEjgn2esr/Bg7kjnwlo/RV1u2Pae
VXqfRUmKT4JdDO3lPbZBIkLYZKyOBp9TtSoNHOX3cBp3LH1qVaPnsEB/fceW9Arc
Fxt10x3mw197Z07IR2JKA7SUkTnrNG0+Rcbzs4GRoe5zGpJ/JdSz376fPcwPQJT+
nsde6TTTM9F1CYj3vZJDB9Z/gn7xgzlXNoQRrTuy6qD33EYyV03uieNgiApavcgF
sASzSwVjsZVvXr42z0HBWqtmtW4BJnilIfVjTf4FeIN5hOjfAVxJvumonWTTo9IE
PwsfMVJ/cJsJDu+PPGma28u+rjqLjVI5hah+jBdXHCP1jPzYtA+I0fCIzi2q6zGJ
W1E+IsQahMSyP3HmnKHhY4JONdh5/qabbT3eDrLE6CzgPb36moTMLCUJ6tF+RBTs
mjilYHhOh+QL5Mz//YgnvTseOfUVIlC/ga/u6Xwgnuxb3o3TBiq0L+t7UMwEBkwq
uqeMRFnxBwPT9ZsRxDfGVvX/nVwCIU4BEJxLvw8Vlj1L0IO06zvp+Af/1Q4hAgc2
sfcvQKixitdEmm804l+OBfM/2A7L2DPXpft7xJntBs9qQSwfYOjVi6uxwI01efOp
ZusIBQYN3fIfFwrofDqQZi0O/zsAD0+Zrx5SFitcWAZ/qKX+6r37Xv/nQ8LfWZLX
o7znWj8rOL6E+DWntfd0inoZOP61u9wyynBmnr0lsIgGF39T253ilOuUg4M/zdpP
khpkGzokBSAx6lbGflJST5WEEGv87k4keazia1lWKATsWlFU6PWysV2LEVYr+6oG
FuBesAlS2nMG+Cj3W6SDWDrvP7O2WQxM4pZghNheXG3MvbDLaNnK/FYcp+p/gu6o
bkPNe8tNnPI8Tuw1u8gVqb5W8o8eA+r4ZwNgxbdJWzse0c3VpOt5vW9B0kHwD+yU
YJV/pd37tms/1UxiNcygUTeOuqUFoHy4nHQaktzL2ruMKZyKVTajiFrNcmvJNc85
7jyoMGdwi+G1oe3Diido80up6NJ3AoM9zuq/W0BqDuzq4fO5Fo+TU+XtzRC1Lw9J
iNuA7ap/87n4g46m/jG5UuW6fVy5xmGg/qdGXu7FkzQGKvLswjHCV2ucCVvdK5nN
aLUKKwswRc1LCM7Otoan8TOtRmvcep97JhNBZLSV3PHT50TD5Z1Y4xOy+rNFZEuc
nRTBYO56bFy9uTM//4dIhV807mZL6hG27+PWGg/Yvn+ejEZl6S2JDGVzL3/y+h2i
iiococPSaWQ5aNjcu1Sw4cbGJ1dh9hdBSM4FG7KEdgRBPIdRkFu+ZM2KuAdJzggx
neHeCJaqHWdBOUQAfXSdx4rw5KdhR2SV5Cq3U020JaRdg2Ke4CZWhMmwEOvK3iyd
Sry/BEyamEP2h6+VbMdc3oFPStqZsbKbXedlF6XkE/r+JH/G501mGcEtgcOO/1CY
ei7D2bBw3GCI7I6PnQHDomHoNL7gNaoEd4BYKHooOYQgtutBN3OZd6D6rw9JVEvO
tuepwVgRUatPaRZ/Z2dLHI2Ax8B/cdqh1i+11YqNp1cy+KYse5WRDXwcNaZZvQn7
PfIFIagck3UEqd6RUwao+PiY5lXlx1LeH0Brh3F9JCJcaGApjXPVAwPqc4DyDnDm
+yXxNiTCW2mE5vnKfEYTeMgetcW1hajvHD6FDPdyifD6Xlf6ZqZfoj4TJQedYxrC
yJu3oJjPzG3K6oXLMsLUlJXTtbhvDxZTI6BHpUNS5JyiEnSuZ9LXF76twgU/8Mn7
EdIXVov09nZspbgZn48OA4DfDNShC47MpHy/Foqp5PFANc+JpUzKvp0dWiDAJqdg
HpIe6R6K+wj5D7e2wML/3AEPK1kgrMCD+Oia65UmBDSyiR8IEkAO+kPP07cadndm
2oxDaUgKxmej+Aa4MXXIFI0TmhxX5h6a/5Go4nWwKvGzuna04wWrHEaVNimOwCsg
S3cD3eUQA8E7/W822qYvlKRuUkyH8e8Ka6eUcfLZQi68+TdBOAshtKKLq+kHHYzG
NMj8gs6tuqUZfJYfjZTblz2XWVhuip8W4sScbq2yVi/q2hdAxzWi4iPyPnKTK3/E
wCmV9Dz1B9CtpTIdlZzrCUWocKA0e8B2XU4JPVnMLk3horU1NyawK+X4Q/qFy8yJ
Rf4llioK4q7j5Q7mLd3oFaYGe7K5TulO3nYkzBWohi2xfXhkjAkabwa7F0KDosYQ
0mjsgfIeA+5RCNvl20DGVxdDe1ghd1mmjc+fIJifAqiwyT77n4KNcFT0VUQcKHry
er9uV5bQ7ccumGfonXsggJkUFh/DXmsMSnLwdZoTuDYIOWbcg4a99GMozM+rh7te
+48Kjt1qU9WFKHT2KSUV9AEew3QBNqFBeBjILmTJUsotln4cMSyvd2Xu5yWrM9gP
HKTuFP1fs+nJoTOmnKMDyZSP4969B+yODNsKTeM7x8Mu79LBuOAQM2UiPkXtgHCl
WIW2TNYRmwVGClKysN0NgcMiQxzWIj2ocXLzqc+sD9/sRNm1CThdPTUoOfVikhPB
w9qI9IlqsdOZTp1IEAM+xyM8Eo9HiXC+2w8KrOiHsAqcYvIeF86Fd+nmoFi3Fk0C
7LSj4WvhwRyeyCOajsxtHQrG0H0lEW09Ny2SCX7ObD1Cz31XnIXwEPKEViju8EEc
2MQkyUvI1WU8R8kgpkir2a+HmrPVY+QHIaInC6GGuBAg7Mlev5HgclyS85ot6dX0
R+yhK4nY1RJ2nQajyeFSR2gW3Tm9uHqwKh7bUB0lbhgt2+vLyqIkZkBFTxqFBZcg
XGh5/BPywmW6xEyJng2hFBegwBIdSKbSV4skGwm58GAx/YhPnJi1m0wFiDwXQzXb
MAGX0VY0uWaAXogHFwXq2Tv9jmCO7EE39kRo/c2UXmdkpB+DsT49Qenmflz+15JB
G0pTvTZ+Y648nxLGmotnX33emNMhB/0hhnt5F41uV6xcDGOgxHBfVwaVT5bTKFDe
wNb260mSqDnpxug7AlB1THrzfx9XkapgwO2mkV52dmUn3UtLeVSEU04AsnI85VGf
ru21dpoUi2r/N5P94Sh3BQha6+7N43X+DUSnMDxJQunfLGzU+ztPZaeYv7zkELYP
R8P2lbsnMJaoRHIxz6ls80DlDmZi6Q7pt2j5T1931jLr2CNK6JnJc1QPnZTIV/oH
Cu/s0bWyJVi73bfvBp8yvjNrfdSjwM59HVxSbJBwGpgODqBosh+RObbiKas5RCO3
GsDmZsQtKMqIJzh6bGXMQo0/sc5OshLlewpGnx0C99s7BiAsGpED1C97W0EW66m6
qHfEhv6lm/P++bNPzV8PVsObITysxppMiN8PsTvbd95tkLR7PBGrXpgtr69dorwR
gtaFyAWICJ460snsdluGJdBjleXVIf0RGRcmWLvC10JRObslwq3NRm1P4x/Ce6vA
MjhklmMHwF7V0RGBK8zfO8Arsxa/a5mGP6sAkqZEm+3l+VZcPdYVD9LU1O3lRrN8
55+Z48OvuAOtwx9oJEd53uuZg5i/KFrczgYTzYJW52N7Bta/9Cg+DWREyr6OzAGY
WevPPylVc44kTqlROBr0ApkW4SaLwQ3scd9Y3+lErZi0ryP7u/pFuUCSaT4ocJOx
RsVwhCKrWTfcLgJ4sZc6MsoCV0tsFv/JszGWGy8v/xqmLZJkrpimy9BTpQn1dzT8
wztXgPmg4sptwhoQTV6L6fDOR0MP/FCRVXxn2r0h7ssFU4XfRW/5Kpz0UuVHkEO8
SsyY0cl/mk7jGRsHQahFf+Dg/Ctu4MuIpGpb1AB3dkr+mwN1nZ4lIx50qLF733VI
ToL7rvBjwBvq5vjvZ97J+rqEJODEFL0W5CmUmir1wFShWNSIUuNzdF0cjFEpSeLZ
fQUjou4m1+CtVYXxvbHt+k+JCd8wLw2rYXDUhAL4kP9D/v/XLugw/qH5ICYpybeS
0ctgIPw9cNium21bePMU/xlHy9uixszbMw66uwuLoRknsQO3bcC+JXxzuz2+oDFd
ZwBWHFBvI14/qhXQRCti20O0hzUzRoAHXHRzePhooVNOQJfWZaaP6Tw7VjzIvRLm
iDgLsplt8jQBvcYNkCOpQC1qJMjYoJEGf7LXQnY11Z58W8gMD017ZmkWn4MuubsL
ii2m5ubdFv0K6VHkc6qZDx3WlhYLxYzG/IaFbn+UrVgZ+wu2HOvvNPoOsT8RczP9
QijO1fuI/XzM+q1M9ZSIVYMtPAwUE9zsvlVoEDEqN1IeLTYP4VFwSpIWdxXJu1Pk
rBSKMWPKd29pQTjWleLydxsZhnUvMLKRJIqNUpPFhBto5tvTq4zFZiszQMeqjirS
dyY902y9GroZjlOfbWDNlpvySAiMYrRzTi8o2DG9K5t08g2Nsao5TrPT6cNNZnDr
ht9VoP6lU4fToedTRp+X4dvzW3jb1mAVEbW6ZjDr1oGO+u23k8ze3K5l/aSUBeVQ
VNEBKbD3D1mWt2vOJe26bMVNLuEpOV76Q3eyU+F7JejgzGBAYJvVnV1qRiI1xPn1
shSwM299kbUR2cZsjaGvO1zmJtEJYa0K1XK8GAzdG+aKbTGkhzL0DKorIk8QyuBi
xEnWdW54gUn2bSNkOXg+Y1lu1En0EMwRf6mDMgulDQ768zi/syOf9mFJEaSa+Fbl
K5pUKQ+1adosxW1xlhLmFyfKD8Uhtc3/Zw74BWc8H4lHSfjBf9jfTzJvBCS40mFv
rH9S0UNRqsD25k14iFomaWGm7amntN3VdKF6bO2OwPLdceFerPZ09AyVWG3ud9QU
G7xlKRkIMe51oRWAOliGanZ+x+TGvgmm9s97b72n+STU+hKIgPcYGi0+cBWD7Rf6
+GlpAY3a/Cv1DCXx7wCqj9tEByS4Zz94kCgQhhyI7NZ9T+zWgMiLLoy71K4i1STc
XUjZMTYSwIMR9wrLfkEpE0o1Q2uOV54zC+4nKC0Xg5zlyt+5aeeM0eIVExCt13Pg
f6zn5TDUI0CnuDSoEbslPlHmPQWxBGV82ESubdcWf6sWa/1Asmmb0bftk6VMbQdZ
0eFbLHM0IpT3R7II/fRY7w9ZDAOo2pyTrzmMtFDmwkGTgHRHTcAzv9X4F0EGNCY8
ESPzBwZUU9lzqC2Do31Jcic5577cZxeQUFUpeaEDiw5MaLK54DS+O0bkG81LBmNW
gUYjnPwae2KzUAQmrrLw/YR3GUSccLvh3bg/Cpfw845qV6XQ2VMvRrtlWIKQbNoU
uhu7B9I3tuxGMStXnlgln24oDknwSQefBSnsJBrBohl7pu+Sf+nezreXiNqWUm65
a1WZQS/igyIKoNO+Y5vsziB00yGxWjaDQ5XXZNIleT8P0lAPCOwlQ99PEn6lmL+e
gGfo5jV3uEU07vjMkae7OnwiYySX0ZNBOKMi46RA6jq23Osew9CX8b8tt4ZgcUBb
d2NQXxY1kYvtgPCbfUW9yyFXFM/X1UOVYI0rWRTZTpTewD4fJrh5CUduZJmNj75t
3qN/RL4js1RUGzErm00tT4NJgmKvUASDjwAE15jpjVCfp5qNs0089tHm/BIQ5aex
a/nid3WG1jCTo7ZCs+tWIaze8e0FKbt3iyYEZh794I4DpmGjgoZEQJNuyTD/ok5f
I/tQ4WsL2aDbcur8CXKPIkB1O9U94GKmXQIIqKW1+NOodnXJmbq7foxt4BzMm3nH
eWBeaGwdkjSzfvKSLm4lsftEgW4zboes9/SdDUZlP5yswM66KTNPQY91Za05faPI
GNWMktFB1vmYssIj3UBilNRvsCV8NerlIoHImDOIYzinuL4hY7AC3HgiQDbzj6EQ
7L7NGOydIXTGLX+ooEQGv73KvB4p7k9552ixDgiWuNb1t4hkf2o7EKw8hEjD9xlu
73S7ClYuaL0IM5atDUXkM9kJ0aMQ6WBheI8gVmJfdI0QPkcBzgjpEDokU+OJTgQx
FfCDvz194WYYmpAjQaUNM8bLuxJco2rYkyW2Ol5yendA/dojzjwyEr3n/UbszwMY
wWWxUnGqkI7kL8aPZTGa18I80Dnuy6miHFIXt6eISuQAAl8nWFT0ZR/nLGKOkCua
xKYc2G+hXMri7JONSG7NMZacXRzvL4+OQLoXqmzwmqiH5gQjqtr2LWJY23xIItRB
nYGvERHXhCT53F+tiEns5ZiV3AGrSEnsfFYttXaxS11rvU2+zTYLztK1qmJgxsk9
M3/KSGN3oTo2ZMXOwacQe3u0V7mpNpEwPfwnnyCv4SgxqeVfAnfXhEyR4/ZqGtZd
UE3qnACEExF41IZBNTJhbTXOk6hNoJ5xTkwOSrXH9sA=
`protect end_protected

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
LKnHFKOpmnJUYIOlfoyydUVuTGj5XZ0YCUjN8AK7EPbYbOP4X206o1PXXN3oxowe
A8wPzINZ2puMGoX+9mKU6m6ZuIf6sBE5qY/RjoTmdbZNCWp5v2SYv8sAeLcyZ3qI
vTxDtJnzKrtes21dZw/SOW+qUPse8f9DaYTVAqPXrrA9mMKePzo6W3DIolQvVUxG
pgQKxGIUDiLvCEvw9pvRbMRu7V6g+4Lce3Nq5+qLNR/TPMF3zSqzmkKDtvojxFIY
h0DQCvTr9bJ6oADhRiNDYrPeF7a3b/2ew9WCcDbBNTr8/jLyA5/wlU5EXtgibTfY
ybM/ieAgdIr8V5eLinOCVQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 1888)
`protect data_block
3cZ4dum1mNAZ7lP2mjhM84gTJE5GSxrRZYcfgtjopaii/Sl7qtdx/Gt6P+REfcMX
eJIaFsuqlHItOvC2YSxFl6IAfbYgO75Fx9UUEPZxq2+tzcadHjO4PP1KmoJssgmW
3kT76pHJXE99XXz0IrpREb6uyZDY6ZL8E/7PtFq5ZZrTPp1B26GEgjTjaybXSEry
uK7XfHVAkM2yqC2GL/sIbcPTZVi2/AEpoxxS7UrTGuhrG9NuNXH7P+tR3pzHnnLa
kC1a52ryhHPq9xyW4c728un0SGrmCmL/w3MxWQ/Jnd+onYthD2KoV7pbCWZjn/qY
N9KIFrsjnp4/0IPsOOkQoQ90UW2iqWQq/LXUeWFK2l6XcuWDWhpLxA+PR9lpXdwn
Tvuj08MH79b5+z+ONh1gXeKeHxA8MIrRIS9UhXp5Bnqhae2lX4usXR2kwOENJKdC
CJ9U3sx2Gf2nKlFoUhpx8JyeYlwumIptHiko5YIXxJTOckL4j9f8pK025pn8G+K/
kcWwEEX9HmK1swOcqUtAAMyJNuzLhpdZ7QHOrjJiszKoA2O77gmBPUNnk2a/GgJ8
pGFq6OcFkUCJyVfG0G8rX4NRgmzIU3P324P016rMAQgUIFkPxwPhfsbjut0yJWXF
8hYXBS9vU/gtm+48j20jdc+nQxVHWfX3lY/rxQ4MGT6Y9lc3wsI/n7hwrsENFplT
/EdMizndughbpRj0JNW7o4taJ7uGGYUMa697ZOBgZs+U7WHNLVXkFmE6FpnZcPSy
MSVLkbNKQonW/wdJi40rU6Ek5TErWRMPZFTHz6mszgekU34EZ87xFXaNlkdgcoXE
M4JI4AnB8tqwgt/3BleYksbHm+ATxSbV7M+Iu/puXEUJHsNA4tnKLuB8GcGkMmkt
B2oanjuADBJq/AEBp7AKamL4xpX/UqTfc6oLNvBih8DaY50k5fShzOudiEPlUmc1
Wm9FkaMnm7tnMzHIyHoeSacT5vAeEjpzYm8CI4XLl72ckGP89IEMX1exZlq3CMBp
s9l5jBL+lc7wTIssDciMNaHrvukAU7qwDntGQhStU0QbGnNy47jxWfAzbZqzTn+n
Tezb65ZNsXf4ty3xLWsRAeLITGgchT7mG4SKaXc31wO34UdCvdyrq8pKCZLjSwO7
Srqmm9eRGgTPAphfMVxfxM1KveDo5y0psvplx7XYWtZZQnIqhil/YzmhY8qcyMGv
PWLiPEjKS6MDIYmxfZTSsm4xjth7+ISt8vwAzpKatO8SSdsTrdlnr+Gt1+ubmkH4
lkNja4lR9wkEWgtD+D0X/joz5NhtqemJwir5XatOD3sEoMOZujqqqQZAA2Mml8Cs
75Z3wBsCGGLLRiKKupLYtNBE3n2W1ylDCf4d1WA9QcYj5XdZpYSBNxBme11jqMLL
cWcfXXGczj6TFggc3tI0XeOu4JghLZoOpH90BYzXz3DaVqOBaH5XnlE9dXbUFPT1
9e6gNgASq9riUnFQeDzn91/ygq3LF8/EYToLijqQFJLsJGT/xi607LYVElzKtnZz
2K9W6xlGISSGozPneCX67EBvrOcyA/3kBfVXasROeoKPOsBzxsqp3rVmIcPXhljd
WX/Phr8K+GMeFDPaY5ff6KLZ+v+E1+jsT0UgTOOOj+OMCzH7z2l7m0lQRvZqUA8b
GKKylhBoh/Dg85EVoA00p0dMNm94+4Pu+mMe9i/tDVn2rt4A9gp1L4In/iD840bc
Z+nuHZkPHK+MYNG9P8rmvayQU4k4HfyZCR2BjiJZih6i5yGY7qd3+j+5stvw1mdD
DaYwNqpDXEf5KAOPeE4w8bZIelfxar//XMY0JTeInLG3UFcVLsLAKsrdGAXOL+gn
eyZwS+BmGsqSbsu7ypG92X/lPYEo0MJRIK7VPnY3k8wt45q2D/kzl4XYt3fQrqv1
6DsSV3CM3plDniVf2b3f1eyd+E+CAqGD3cx9fOQ+f7vrwE7sx9j3lbSr/P7oSOlS
v5PsuNPJbeG0SaeZusBNvH3V8eCGQbc3HuyyUr7a/dS6TUSQPIEMpcli/qpFYShu
0Ydr+GrkKUJ2BZh4/uaOlmBVfX0V6TNheBSy8DF/86C8vCaT1lJYqg5lr5n3bSF2
pSa7UgjwIEDL3kB+aMZRSUT0ekRKzFsrlNptGqu6FvIrOYrVuuZ0TONJkO2Sm4Zf
b0d/M6O67hR+5zUX007S4yLGd+9ZeyCiVpTlc81U2gG43AlK/sohW6L94l7wNq6A
ouw1fkM+96MUNwArOlkWlrSE+Y2i453YVHTcM3Qama1AB2BAuVrzR9Z82AD0M4Gl
w7SG870q2Rr7o5HTLXiYNNJtdfgN19vuqMZ5JnwlS61Pnfk35IUxjbWT/ls9ApT6
ib+5lCOdgII+49aLLaVkrDBfzn4eoT67v2qo+jMiS6JjZkafsJT74tyOF3WUkadc
sW1FLj10Gv6MFSzz0pYZXULGVGHifjEgwsdza3JHcICFIXTlkjmGhdybcQNRIN+D
nb86c+TjFqMPuZv60mk+rg==
`protect end_protected

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
B9jmOE136LIn44LJysaahUU8RQxJZc+LBcxLcqjOQORzQk776q60EIsMIuRQlO4j
9rJ9MHE9yICEy255G7eGYximz5y7xjck91YpPasUjpZClv+oAG0AAz7PNOGiim1K
86fBerPtHamQ6lv0+2/WXQPkQy2mugkmQgCr+Eao0KJkv4HeH4nodKrWkjffLGPn
pVr/GTy661I3zHBeKwCSjDyHLhXytuNJ+6Oz+s7x9YPe69H68BOPTu48lgrQuzPc
fdjnnmzFwO+8o+63PSd1EoyvUG5zcsmawXdaL8VmqzF4HuX3m2SxBx3ZBiPfgriu
CKRWNjR1CK13GXi67PVmfQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 1680)
`protect data_block
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
`protect end_protected

`protect begin_protected
`protect version = 1
`protect encrypt_agent = "NanoXplore"
`protect key_keyowner = "Mentor Graphics Corporation", key_keyname = "MGC-VERIF-SIM-RSA-2", key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 256)
`protect key_block
iRr3RIvVeqbB4Quu3eGE/Izrf2VVy5jJPdwM4hX8vIowOimhczyqNFQ0LJvT+AMF
R8iRgHyvz3MZIWhlnGlznQAmAz0F47iaz+zgvEQeGTBjh2wk87JyAP3pQ+Y/8ekv
GAGVjFLjQOhur5yvPvjAZb5rG9K4JAJHHcfyBrf0433mZIhyIlOPdAUy19wQOoh7
ZDGr3ig5wiCI+pgAyEmQU1t9k5FYG3N/AQPkpQ8TIO16lMWYmTgz0fDfx5Sg29Kq
C6h7xftEZBgU92qNXma4rABLqlCiZPAzhms/5jw6qebgFX39bfWqM1pJjT4OBZ0T
lXFYph6ZNw53c2zXuogAvQ==
`protect data_method = "aes256-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 12624)
`protect data_block
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
`protect end_protected

-- =================================================================================================
--   NX_ECC definition                                                                  2020/05/12
-- =================================================================================================

library ieee;
use ieee.std_logic_1164.all;

entity NX_ECC is
    port(
	CKD : in std_logic;
	CHK : in std_logic;
	COR : out std_logic;
	ERR : out std_logic
    );
end NX_ECC;

architecture NX_RTL of NX_ECC is
    attribute NX_TYPE :string;
    attribute NX_TYPE of NX_RTL: architecture is "PHY";

    attribute NX_USE :string;
    attribute NX_USE of NX_RTL: architecture is "NX_ECC";
begin
end NX_RTL;

----------------------------------------------------------------------------------------------------
