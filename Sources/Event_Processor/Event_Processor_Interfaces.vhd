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
--use work.FRONTPANEL.all;

--Library UNISIM;
--use UNISIM.vcomponents.all;

entity Event_Processor_Interfaces is
    port(
        i_Rst_n               : in    std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                 : in    std_logic; -- 100 MHz
        i_Clk_200MHz          : in    std_logic; -- 200 MHz

        o_read_Fifo           : out   std_logic;
        ---------------------------------------------------------------------------------------------
        -- Test
        ---------------------------------------------------------------------------------------------

        i_EP_Test_Mode_Enable : in    std_logic;
        ---------------------------------------------------------------------------------------------
        -- EP outputs
        ---------------------------------------------------------------------------------------------

        -------------------------------
        -- Debug
        -------------------------------
        i_wire                : in    std_logic;
        --o_Phase_enable        : out   std_logic;
        o_div_read            : inout std_logic;
        o_Peak_detected       : out   std_logic;
        o_Peak_Value          : out   std_logic_vector(15 downto 0);
        --------------------------------------------------------------------------------------------
        -- Phase Trig
        --------------------------------------------------------------------------------------------
        o_Trig_out            : out   std_logic;
        o_ADC_Generator_mode  : out   std_logic;
        --------------------------------------------------------------------------------------------
        -- UNIVERSAL GENERATOR SIGNALS
        --------------------------------------------------------------------------------------------
        i_Data_in             : in    STD_LOGIC_VECTOR(15 downto 0);
        i_Address             : in    STD_LOGIC_VECTOR(15 downto 0);
        i_Write               : in    STD_LOGIC;
        i_trig_start          : in    std_logic;
        i_delay               : in    std_logic_vector(15 downto 0);
        wr_en_fifo_in         : inout std_logic;
        BigVector             : out   std_logic_vector(255 downto 0);
        --------------------------------------------------------------------------------------------
        -- SUM
        -------------------------------------------------------------------------------------------
        i_sum_plus_A          : in    std_logic_vector(5 downto 0);
        i_sum_zero_A          : in    std_logic_vector(5 downto 0);
        i_sum_minus_A         : in    std_logic_vector(5 downto 0);
        i_sum_plus_B          : in    std_logic_vector(5 downto 0);
        i_sum_zero_B          : in    std_logic_vector(5 downto 0);
        i_sum_minus_B         : in    std_logic_vector(5 downto 0);
        --------------------------------------------------------------------------------------------
        -- ADC SPI
        --------------------------------------------------------------------------------------------
        o_ADC_SCK             : out   std_logic_vector(0 to pipeline_size - 1); -- SPI Serial Clock
        o_ADC_CNV_n           : out   std_logic_vector(0 to pipeline_size - 1); -- SPI Convert Input, negative polarity
        i_ADC_SDO_front       : in    std_logic_vector(0 to pipeline_size - 1); -- SPI Slave Data Output (MISO)
        i_ADC_SDO_back        : in    std_logic_vector(0 to pipeline_size - 1) -- SPI Slave Data Output (MISO)	

    );

end Event_Processor_Interfaces;

architecture Behavioral of Event_Processor_Interfaces is

    -----------------------------------------------------------------
    -- switch pattern ADC OR ramp
    -----------------------------------------------------------------

    constant enable_adc_sequencer : std_logic_vector := "00"; --	"00" Universal_generator, "10" ADCs Fusio

    -----------------------------------------------------------------
    -- ADC Sequencer
    -----------------------------------------------------------------

    signal ADC_Enable : std_logic;
    signal Dout       : std_logic_vector(15 downto 0);
    signal Dout_RDY   : std_logic;

    -------------------------------
    -- Filters
    -------------------------------

    signal o_EP_Capture_Filter_A_w : std_logic_vector(31 downto 0);
    signal o_EP_Capture_Filter_B_w : std_logic_vector(31 downto 0);

    signal filter_reset : std_logic;

    -----------------------------------------------------------------
    -- Energy correction
    -----------------------------------------------------------------

    signal o_Event_B      : std_logic_vector(31 downto 0);
    signal o_Event_A      : std_logic_vector(31 downto 0);
    signal o_EP_o_Event_B : std_logic_vector(31 downto 0);
    signal o_EP_o_Event_A : std_logic_vector(31 downto 0);
    signal o_Event_Energy : std_logic_vector(77 downto 0);
    signal A_B            : signed(63 downto 0);
    --   signal o_Energy_corrected_edge : std_logic;
    --   signal o_Energy_corrected      : std_logic;

    -- -----------------------------------------------------------------
    -- --  buffering data   
    -- -----------------------------------------------------------------	

    signal o_empty : std_logic;

    signal o_rd_data     : std_logic_vector(79 downto 0);
    signal i_wr_data_r   : std_logic_vector(79 downto 0);
    -- OUTPUT 
    signal rd_data_count : STD_LOGIC_VECTOR(6 DOWNTO 0);

    -- -----------------------------------------------------------------
    -- --  Sample Generator   
    -- -----------------------------------------------------------------

    signal i_rd_en    : std_logic;
    signal start_read : std_logic;

    signal o_div_read_lock                   : std_logic;
    signal o_EP_Capture_Filter_A_w_o_rd_data : std_logic_vector(31 downto 0);
    signal o_EP_Capture_Filter_B_w_o_rd_data : std_logic_vector(31 downto 0);
    signal EP_Capture_Data                   : std_logic_vector(15 downto 0);
    --empty

    signal o_EP_Event_Phi           : std_logic_vector(31 downto 0); -- 8
    signal o_EP_Event_Energy_16bits : std_logic_vector(15 downto 0); -- 16
    signal o_EP_Event_Energy_32bits : std_logic_vector(31 downto 0); -- 32

    signal cpt : integer range 0 to 63;

    signal counter   : integer;
    signal delay_end : std_logic;

    -- Ready flag buffers
    signal DU_ADC_Ready_100_front : std_logic_vector(0 to pipeline_size - 1);
    signal DU_ADC_Ready_100_back  : std_logic_vector(0 to pipeline_size - 1);

    signal DU_ADC_Front_Dout : Array_8x16_type;
    signal DU_ADC_Back_Dout  : Array_8x16_type;
    signal sum_plus_A        : std_logic_vector(5 downto 0);
    signal sum_minus_A       : std_logic_vector(5 downto 0);
    signal sum_zero_A        : std_logic_vector(5 downto 0);
    signal sum_plus_B        : std_logic_vector(5 downto 0);
    signal sum_minus_B       : std_logic_vector(5 downto 0);
    signal sum_zero_B        : std_logic_vector(5 downto 0);

begin

    ---------------------------------------------------------------
    -- ADC FUSIO dispatch
    ---------------------------------------------------------------

    ADCs_gen : if enable_adc_sequencer = "10" generate
        label_ADCs : entity work.ADCs
            port map(
                -- Reset

                i_Rst_n                => i_Rst_n,
                -- Clocks
                i_Clk                  => i_Clk, --i_Clk,

                DU_ADC_Ready_100_front => DU_ADC_Ready_100_front,
                DU_ADC_Ready_100_back  => DU_ADC_Ready_100_front,
                -- DU_ADC Data
                DU_ADC_Front_Dout      => DU_ADC_Front_Dout,
                DU_ADC_Back_Dout       => DU_ADC_Back_Dout,
                -- ADC SPI

                o_ADC_SCK              => o_ADC_SCK, -- SPI Serial Clock
                o_ADC_CNV_n            => o_ADC_CNV_n, -- SPI Convert Input, negative polarity
                i_ADC_SDO_front        => i_ADC_SDO_front, -- SPI Slave Data Output (MISO)
                i_ADC_SDO_back         => i_ADC_SDO_back -- SPI Slave Data Output (MISO)

            );
    end generate ADCs_gen;

    -----------------------------------------------------------------
    --  Sample Generator   
    -----------------------------------------------------------------
    generator : if enable_adc_sequencer = "00" generate
        Universal_generator : entity work.Universal_signal_generator
            Port map(
                i_Clk_100Mhz => i_Clk,
                Data_in      => i_Data_in,
                Address      => i_Address,
                i_Write      => i_Write,
                i_trig_start => i_trig_start,
                i_delay      => i_delay,
                i_Rst_n      => i_Rst_n,
                o_Dout       => Dout,   --	i_Din,--------------------------
                o_Dout_rdy   => Dout_RDY, --	i_Din_RDY,----------------------
                o_Trig       => open
            );
    end generate generator;

    label_connection_Universal_signal_generator : if enable_adc_sequencer = "00" generate
        DU_ADC_Front_Dout(0)      <= Dout;
        DU_ADC_Ready_100_front(0) <= Dout_RDY;

        sum_plus_A  <= i_sum_plus_A;
        sum_minus_A <= i_sum_minus_A;
        sum_zero_A  <= i_sum_zero_A;

        sum_plus_B  <= i_sum_plus_B;
        sum_minus_B <= i_sum_minus_B;
        sum_zero_B  <= i_sum_zero_B;

    end generate label_connection_Universal_signal_generator;

    label_connection_ADC : if enable_adc_sequencer = "10" generate
        sum_plus_A  <= std_logic_vector(To_unsigned(14, 6));
        sum_minus_A <= std_logic_vector(To_unsigned(14, 6));
        sum_zero_A  <= std_logic_vector(To_unsigned(1, 6));

        sum_plus_B  <= std_logic_vector(To_unsigned(6, 6));
        sum_minus_B <= std_logic_vector(To_unsigned(6, 6));
        sum_zero_B  <= std_logic_vector(To_unsigned(1, 6));

    end generate label_connection_ADC;

    o_ADC_Generator_mode <= '0' when (i_wire = '0') else '1';

    o_Peak_detected <= '0';             --Peak_detected ; 
    o_Peak_Value    <= x"0000";         --current_max;

    -----------------------------------------------------------------
    -- Event_Processor
    -----------------------------------------------------------------
    filter_reset <= not i_Rst_n;

    Inst_Event_Processor : entity work.Event_Processor
        port map(
            i_Rst_n                       => i_Rst_n,
            i_Clk                         => i_Clk,
            --------------------------------------------------------------------------------------------
            -- input from ADC
            --------------------------------------------------------------------------------------------         
            i_DU_ADC_Ready_100_front      => DU_ADC_Ready_100_front,
            i_DU_ADC_Ready_100_back       => DU_ADC_Ready_100_back,
            i_DU_ADC_Front_Dout           => DU_ADC_Front_Dout,
            i_DU_ADC_Back_Dout            => DU_ADC_Back_Dout,
            --------------------------------------------------------------------------------------------
            -- input param SUM from GSE 
            -------------------------------------------------------------------------------------------
            i_sum_plus_A                  => sum_plus_A,
            i_sum_zero_A                  => sum_zero_A,
            i_sum_minus_A                 => sum_minus_A,
            i_sum_plus_B                  => sum_plus_B,
            i_sum_zero_B                  => sum_zero_B,
            i_sum_minus_B                 => sum_minus_B,
            -------------------------------
            -- Out phase correction FRONT
            -------------------------------
            o_Event_B_front               => o_Event_B, -- max B on pulse peak.
            o_Event_A_front               => o_Event_A, -- max A on pulse peak.
            o_Event_Energy_front          => o_Event_Energy, -- wide bus energy.
            o_A_B_front                   => A_B, -- phase (phi).
            o_div_read_front              => o_div_read, -- from div to start write fifo process before pipe out. 
            -------------------------------
            -- Out filter FRONT
            -------------------------------
            o_EP_Capture_Filter_front_A_w => o_EP_Capture_Filter_A_w, -- analog filter A output 
            o_EP_Capture_Filter_front_B_w => o_EP_Capture_Filter_B_w, -- analog filter B output
            -------------------------------
            -- Out phase correction BACK
            -------------------------------
            o_Event_B_back                => open, -- max B on pulse peak.
            o_Event_A_back                => open,
            o_Event_Energy_back           => open,
            o_A_B_back                    => open,
            o_div_read_back               => open,
            -------------------------------
            -- Out filter BACK
            -------------------------------
            o_EP_Capture_Filter_back_A_w  => open,
            o_EP_Capture_Filter_back_B_w  => open
        );

    -----------------------------------------------------------------
    -- Fifo Raw
    -----------------------------------------------------------------			

    buffering_RAW_128samples : entity work.Buffering_Data
        PORT MAP(
            rst           => filter_reset,
            wr_clk        => i_Clk,
            rd_clk        => i_Clk,
            din           => i_wr_data_r,
            wr_en         => Dout_RDY,
            rd_en         => i_rd_en,
            dout          => o_rd_data,
            full          => open,
            empty         => o_empty,
            --valid			=> valid,
            rd_data_count => rd_data_count,
            wr_data_count => open,
            wr_rst_busy   => open,
            rd_rst_busy   => open
        );

    --	input fifo raw_sampling

    i_wr_data_r(79 downto 64) <= Dout;
    i_wr_data_r(63 downto 32) <= std_logic_vector(resize(signed(o_EP_Capture_Filter_A_w), 32));
    i_wr_data_r(31 downto 0)  <= std_logic_vector(resize(signed(o_EP_Capture_Filter_B_w), 32));

    --	signal read fifo raw sampling

    o_read_Fifo <= i_rd_en;

    --	out EP

    o_EP_Event_Phi <= std_logic_vector(A_B(31 downto 0)); -- 8

    ------------------------------------------------------------------------------------------------
    -- read RAW fifo
    ------------------------------------------------------------------------------------------------		

    fifo_sampling_read_management : process(i_Clk, i_Rst_n)
    begin
        if i_Rst_n = '0' then
            i_rd_en <= '0';
        else
            if rising_edge(i_Clk) then

                if (o_empty = '0' and rd_data_count >= std_logic_vector(to_unsigned(63, 7))) or start_read = '1' then
                    i_rd_en <= '1';     -- read drop or write OK
                else
                    i_rd_en <= '0';
                end if;

            end if;
        end if;
    end process;

    fifo_sampling_start_dump : process(i_Clk, i_Rst_n)
    begin
        if i_Rst_n = '0' then
            start_read                        <= '0';
            wr_en_fifo_in                     <= '0';
            o_EP_Capture_Filter_A_w_o_rd_data <= (others => '0');
            o_EP_Capture_Filter_B_w_o_rd_data <= (others => '0');
            o_div_read_lock                   <= '0';
            cpt                               <= 0;
            counter                           <= 0;
            delay_end                         <= '0';
        else
            if rising_edge(i_Clk) then

                if o_div_read = '1' and start_read = '0' then
                    o_div_read_lock <= '1'; -- start dump
                else
                    if o_div_read_lock = '1' and delay_end = '0' then
                        counter <= counter + 1;
                        if counter = 700 then --old value 600
                            delay_end <= '1';
                        end if;
                    else
                        -- perhaps wait a delay
                        if o_div_read_lock = '1' and rd_data_count >= std_logic_vector(to_unsigned(63, 7)) and start_read = '0' and delay_end = '1' then
                            start_read                        <= '1';
                            wr_en_fifo_in                     <= '1'; --write OK
                            EP_Capture_Data                   <= o_rd_data(79 downto 64);
                            o_EP_Capture_Filter_A_w_o_rd_data <= o_rd_data(63 downto 32);
                            o_EP_Capture_Filter_B_w_o_rd_data <= o_rd_data(31 downto 0);
                            o_EP_Event_Energy_16bits          <= o_Event_Energy(55 downto 40); -- 16
                            o_EP_Event_Energy_32bits          <= o_Event_Energy(55 downto 24);
                            o_EP_o_Event_B                    <= o_Event_B;
                            o_EP_o_Event_A                    <= o_Event_A;
                        else
                            if start_read = '1' and cpt < 63 and i_rd_en = '1' and delay_end = '1' then
                                cpt                               <= cpt + 1;
                                wr_en_fifo_in                     <= '1'; --write OK
                                EP_Capture_Data                   <= o_rd_data(79 downto 64);
                                o_EP_Capture_Filter_A_w_o_rd_data <= o_rd_data(63 downto 32);
                                o_EP_Capture_Filter_B_w_o_rd_data <= o_rd_data(31 downto 0);
                                o_EP_Event_Energy_16bits          <= o_Event_Energy(55 downto 40); -- 16
                                o_EP_Event_Energy_32bits          <= o_Event_Energy(55 downto 24);
                                o_EP_o_Event_B                    <= o_Event_B;
                                o_EP_o_Event_A                    <= o_Event_A;
                            else
                                if start_read = '1' and cpt = 63 then
                                    cpt             <= 0;
                                    wr_en_fifo_in   <= '0';
                                    o_div_read_lock <= '0';
                                    start_read      <= '0';
                                    counter         <= 0;
                                    delay_end       <= '0';
                                end if;
                            end if;

                        end if;

                    end if;
                end if;
            end if;                     --i_Clk
        end if;                         --rst	
    end process;

    BigVector(255 downto 240) <= EP_Capture_Data; --	RAW Signal    // 16 bits
    BigVector(239 downto 232) <= std_logic_vector(to_unsigned(cpt, 8)); -- Cpt_integer, // 8 bits
    BigVector(231 downto 224) <= (x"69");
    BigVector(223 downto 192) <= o_EP_Capture_Filter_A_w_o_rd_data; --//Capture_Filter_A //32 bits
    BigVector(191 downto 160) <= o_EP_Capture_Filter_B_w_o_rd_data; --//Capture_Filter_B //32 bits
    BigVector(159 downto 128) <= o_EP_Event_Energy_32bits;
    BigVector(127 downto 96)  <= o_EP_o_Event_A;
    BigVector(95 downto 64)   <= o_EP_o_Event_B;
    BigVector(63 downto 32)   <= o_EP_Event_Phi;
    BigVector(31 downto 16)   <= x"9600";
    BigVector(15 downto 0)    <= o_EP_Event_Energy_16bits;

end architecture Behavioral;
