
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADCLTC2311_Driver is
    generic(
        g_INITIAL_DELAY : unsigned(3 downto 0) := X"0" -- Number of clock tick delay after Enable
    );
    port(
        -- Reset and Clocks
        i_Rst_n          : in  std_logic;         -- General Reset, negative polarity
        i_Clk_100MHz     : in  std_logic;         -- State Machine clock
        -- Control
        i_Enable         : in  std_logic;         -- Enable flag to allow continuous sampling
        o_Data_Ready_100 : out std_logic;         -- Ready flag when data register is up to date, length 10ns
        o_Data_Ready_25  : out std_logic;         -- Ready flag when data register is up to date, length 40ns
        o_Data_Read      : out std_logic_vector(15 downto 0); -- Output data register from conversion
        -- ADC SPI
        o_ADC_SCK        : out std_logic;         -- SPI Serial Clock
        o_ADC_CNV_n      : out std_logic;         -- SPI Convert Input, negative polarity
        i_ADC_SDO        : in  std_logic          -- SPI Slave Data Output (MISO)
    );
end ADCLTC2311_Driver;

architecture RTL of ADCLTC2311_Driver is

    -- State Machine
    type state_type is (S_Idle, S_Acquisition_and_Conversion);
    signal state : state_type;

    -- ADC Control Registers
    signal ADC_SCK_Gate_Rising_0  : std_logic;    -- Rising edge, idle at 0
    signal ADC_SCK_Gate_Falling_1 : std_logic;    -- Falling edge, idle at 1
    signal ADC_SCK_Gate_Falling_0 : std_logic;    -- Falling edge, idle at 0

    signal SPI_Received_Data : std_logic_vector(15 downto 0); -- 16-bit standard SPI protocol, MSB first
    signal First_Sample      : std_logic;
    signal Master_Count      : unsigned(4 downto 0); -- Max 32 ticks
    signal Wait_Index        : unsigned(1 downto 0); -- Wait for 4 ticks

    signal Initial_Delay_cnt : unsigned(3 downto 0); -- Wait up to 15 clock ticks after an enable to desynchronize the DU_ADC

    -- Metastability
    signal ADC_SDO_r0 : std_logic;
    signal ADC_SDO_r1 : std_logic;

begin

    ------------------------------------------------------------------------------------------------------------------------------------------------------------
    --
    -- ADC SPI Protocol, deserializing data from Slave Data Output (SDO)
    --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------

    p_ADC_SDO_Sampling : process(i_Rst_n, i_Clk_100MHz)
    begin
        if i_Rst_n = '0' then
            ADC_SCK_Gate_Rising_0 <= '0';         -- Disable SCK

            ADC_SDO_r0        <= '0';
            ADC_SDO_r1        <= '0';
            SPI_Received_Data <= (others => '0'); -- Empty buffer
        elsif rising_edge(i_Clk_100MHz) then
            ADC_SCK_Gate_Rising_0 <= ADC_SCK_Gate_Falling_0; -- Follow Clock Generator

            -- ADC_SDO_r0 is METASTABLE, ADC_SDO_r1 is STABLE
            ADC_SDO_r0 <= i_ADC_SDO;
            ADC_SDO_r1 <= ADC_SDO_r0;

            -- 16-bit standard SPI protocol, bits are shifted in descending order from bit #15 to bit #0
            SPI_Received_Data <= SPI_Received_Data(14 downto 0) & ADC_SDO_r1;
        end if;
    end process p_ADC_SDO_Sampling;

    --------------------------------------------------------

    p_ADC_SPI_Protocol : process(i_Rst_n, i_Clk_100MHz)
    begin
        if i_Rst_n = '0' then
            o_Data_Ready_100 <= '0';              -- No new value
            o_Data_Ready_25  <= '0';              -- No new value
            o_Data_Read      <= (others => '0');  -- Clear output
            o_ADC_CNV_n      <= '0';              -- No conversion requested

            First_Sample <= '0';
            Master_Count <= (others => '0');
            Wait_Index   <= "00";
            state        <= S_Idle;
        elsif rising_edge(i_Clk_100MHz) then
            -- FSM
            case state is                         -- FSM_freq = 100MHz, here sampling in 21 clock ticks (223ns) at 4.5 MHz
                when S_Idle =>
                    o_ADC_CNV_n       <= '0';     -- No conversion requested
                    o_Data_Ready_100  <= '0';     -- No new value
                    First_Sample      <= '0';
                    Master_Count      <= (others => '0');
                    Initial_Delay_cnt <= (others => '0');

                    -- Start a new acquisition cycle only if still enable
                    if i_Enable = '1' then
                        if Initial_Delay_cnt >= g_INITIAL_DELAY then
                            Initial_Delay_cnt <= (others => '0');
                            First_Sample      <= '1'; -- Enable flag for first cycle
                            state             <= S_Acquisition_and_Conversion;
                        else
                            Initial_Delay_cnt <= Initial_Delay_cnt + "1";
                        end if;
                    end if;

                    -- Strech Ready_25 pulse during at least 4 clock ticks after last measure
                    if Wait_Index < "11" then
                        Wait_Index <= Wait_Index + "1";
                    else
                        o_Data_Ready_25 <= '0';
                        o_Data_Read     <= (others => '0');
                    end if;
                ----------------------------------------------------------------------------------
                when S_Acquisition_and_Conversion =>
                    Master_Count     <= Master_Count + "1";
                    o_Data_Ready_100 <= '0';      -- Default value

                    case Master_Count is
                        --when 5X"00" =>            -- Start new acquisition, wait for at least 25ns with CNV_n in high state, here 3 cycles
						when "00000" =>
                            if i_Enable = '1' then -- Do not send a CNV_n pulse if it is the last sample
                                o_ADC_CNV_n <= '1';
                            end if;
                        --when 5X"03" =>
						when "00011" =>
                            o_ADC_CNV_n <= '0';   -- End of acquisition, wait for at least 9.5ns, SCK Quiet Time from CNV_n falling edge
                        --when 5X"04" =>
						when "00100" =>
                            if First_Sample = '0' then -- Do not send a ready flag if the first sample has not been completed
                                o_Data_Ready_100 <= '1';
                                o_Data_Ready_25  <= '1';
                                o_Data_Read      <= SPI_Received_Data; -- Full data is read with two clock ticks delay
                            else
                                First_Sample <= '0'; -- Disable flag once the first cycle is completed
                            end if;

                            if i_Enable = '0' then -- Do not start a new acquisition if disable
                                Wait_Index <= "00"; -- Strech Ready_25 pulse during at least 4 clock ticks for last measure
                                state      <= S_Idle;
                            end if;
                        --when 5X"08" =>
						when "01000" =>
                            o_Data_Ready_25 <= '0'; -- No new value
                        --when 5X"14" =>            -- End of conversion and readout, wait for at least 9.1ns, SCK Delay Time to CNV rising edge
						when "10100" =>
                            Master_Count <= (others => '0'); -- Reset counter for a new cycle
                        when others =>            -- Do nothing
                    end case;
                ----------------------------------------------------------------------------------
                when others =>
                    state <= S_Idle;
            end case;
        end if;
    end process p_ADC_SPI_Protocol;

    ------------------------------------------------------------------------------------------------------------------------------------------------------------
    --
    -- ADC SPI Serial Clock (SCK) Generation
    --
    ------------------------------------------------------------------------------------------------------------------------------------------------------------

    p_ADC_SPI_Clock_Falling : process(i_Rst_n, i_Clk_100MHz)
    begin
        if i_Rst_n = '0' then
            ADC_SCK_Gate_Falling_1 <= '1';        -- Disable SCK
            ADC_SCK_Gate_Falling_0 <= '0';        -- Disable SCK
        elsif falling_edge(i_Clk_100MHz) then
            if Master_Count = 0 then
                ADC_SCK_Gate_Falling_1 <= '1';    -- Enable SCK
                ADC_SCK_Gate_Falling_0 <= '0';    -- Enable SCK
            --elsif (Master_Count >= 5X"05" and Master_Count <= 5X"14") then -- 16 clock ticks
			elsif (Master_Count >= "00101" and Master_Count <= "10100") then -- 16 clock ticks
                ADC_SCK_Gate_Falling_1 <= not ADC_SCK_Gate_Falling_1; -- Toggle clock
                ADC_SCK_Gate_Falling_0 <= not ADC_SCK_Gate_Falling_0; -- Toggle clock
            end if;
        end if;
    end process p_ADC_SPI_Clock_Falling;

    -- Xor combinational to recreate a 100MHz frequency clock with two opposing edges at 50MHz
    o_ADC_SCK <= ADC_SCK_Gate_Rising_0 xor ADC_SCK_Gate_Falling_1;

end architecture RTL;
