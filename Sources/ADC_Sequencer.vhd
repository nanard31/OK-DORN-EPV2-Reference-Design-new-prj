--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: 
-- :
-- Create Date:    08:30:00 01/04/2020 
-- Design Name: 
-- Module Name:    ADC_Sequencer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is the top entity
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADC_Sequencer is
    port(
        --------------------------------------------------------------------------------------------
        -- RESET
        --------------------------------------------------------------------------------------------

        i_Rst_n             :     std_logic;
        --------------------------------------------------------------------------------------------
        -- Enables
        --------------------------------------------------------------------------------------------

        Enable              : in  std_logic;
        EP_Test_Mode_Enable : in  std_logic;
        --------------------------------------------------------------------------------------------
        -- CLOCK
        --------------------------------------------------------------------------------------------

        CLOCK_100_MHZ       : in  std_logic;
        clk_synchro         : in  std_logic;
        --------------------------------------------------------------------------------------------
        -- ADC 
        --------------------------------------------------------------------------------------------

        Dout                : out std_logic_vector(15 downto 0);
        Dout_RDY            : out std_logic;
        --------------------------------------------------------------------------------------------
        -- ADC Serial Signals
        --------------------------------------------------------------------------------------------

        ADC_Conv_n          : out std_logic;
        ADC_Sck             : out std_logic;
        ADC_SDO             : in  std_logic;
        --------------------------------------------------------------------------------------------
        -- Phase Trig
        --------------------------------------------------------------------------------------------
        o_Trig_out          : out std_logic
    );
end ADC_Sequencer;

architecture Behavioral of ADC_Sequencer is
    signal index_ADC_Read        : integer range 0 to 63;
    signal ADC_SCK_enable        : std_logic;
    signal ADC_Deserialized_Data : signed(15 downto 0);
    type ADC_ReadState is (ADC_Read_Idle, ADC_Conversion_and_Readout);
    signal ADC_Read_State        : ADC_ReadState;
    signal flag_delay_rectifier  : std_logic;
    signal ADC_SCK_enable_r      : std_logic;
    signal ADC_Sck_r             : std_logic;
    signal i_data_counter        : integer range 0 to 20;
    signal Dout_r                : std_logic_vector(15 downto 0);
    signal Dout_RDY_r            : std_logic;
    signal Trig_out_r            : std_logic;
    signal Trig_out_counter      : integer range 0 to 1000;
begin

    -----------------------------------------------------------------
    -- Process: ADC set
    -----------------------------------------------------------------

--    ADC_set_process : process(i_Rst_n, CLOCK_100_MHZ)
--    begin
--        if i_Rst_n = '0' then
--            index_ADC_Read        <= 0;
--            ADC_Conv_n            <= '0';
--            Dout_r                <= (others => '0');
--            Dout_RDY_r            <= '0';
--            ADC_SCK_enable        <= '0';
--            ADC_Sck_r             <= '1';
--            ADC_Deserialized_Data <= (others => '0');
--            Trig_out_r            <= '0';
--            Trig_out_counter      <= 0;
--            ADC_Read_State <= ADC_Conversion_and_Readout;
--        else
--            if rising_edge(CLOCK_100_MHZ) then
--                ADC_SCK_enable_r <= ADC_SCK_enable;
--                Dout_r           <= std_logic_vector(ADC_Deserialized_Data);

----                case ADC_Read_State is
----                    when ADC_Read_Idle =>

----                        Dout_RDY_r     <= '0';
----                        ADC_SCK_enable <= '0';
----                        ADC_Sck_r      <= '1';
----                        if Enable = '1' then
----                            index_ADC_Read <= 0;
----                            ADC_Read_State <= ADC_Conversion_and_Readout;
----                        end if;

----                    when ADC_Conversion_and_Readout =>

                        
--                        if index_ADC_Read = 46 then -- wait minimum 19.4 ns to set conv_n again      
--                            index_ADC_Read <= 0;
--                        else
--                            index_ADC_Read <= index_ADC_Read + 1;
--                        end if;

--                        --------------------
--                        --sck generation
--                        --------------------
--                        if (index_ADC_Read >= 10 and index_ADC_Read <= 41) then
--                            ADC_Sck_r <= not ADC_Sck_r;
--                        else
--                            ADC_Sck_r <= '1';
--                        end if;
--                        --------------------
--                        --trig generation
--                        --------------------
--                        if (index_ADC_Read = 0) then
--                            if (Trig_out_counter = 1000) then
--                                Trig_out_r       <= '1';
--                                Trig_out_counter <= 0;
--                            else
--                                Trig_out_r       <= '0';
--                                Trig_out_counter <= Trig_out_counter + 1;
--                            end if;
--                        end if;

--                        if (index_ADC_Read >= 0 and index_ADC_Read <= 7) then
--                            ADC_Conv_n <= '1';
--                        else
--                            ADC_Conv_n <= '0';
--                        end if;

--                        if (index_ADC_Read = 44 or index_ADC_Read = 45) then
--                            Dout_RDY_r <= '1';
--                        else
--                            Dout_RDY_r <= '0';
--                        end if;

--                        -- if counter is pair between this range the data is sampled and sent from the ADC to serialize the data
--                        -- data is shifted when counter index_ADC_Read is: 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38
--                        --if(index_ADC_Read = 10 or index_ADC_Read = 12 or index_ADC_Read = 14 or index_ADC_Read = 16 or index_ADC_Read = 18 or index_ADC_Read =  20 or index_ADC_Read =  22 or index_ADC_Read =  24 or index_ADC_Read =  26 or index_ADC_Read = 28 or index_ADC_Read = 30 or index_ADC_Read = 32 or index_ADC_Read = 34 or index_ADC_Read = 36 or index_ADC_Read = 38 or index_ADC_Read = 40 )then
--                        if(index_ADC_Read = 11 or index_ADC_Read = 13 or index_ADC_Read = 15 or index_ADC_Read = 17 or index_ADC_Read = 19 or index_ADC_Read = 21 or index_ADC_Read = 23 or index_ADC_Read = 25 or index_ADC_Read = 27 or index_ADC_Read = 29 or index_ADC_Read = 31 or index_ADC_Read = 33 or index_ADC_Read = 35 or index_ADC_Read = 37 or index_ADC_Read = 39 or index_ADC_Read = 41 or index_ADC_Read = 43)then --real version
--                        --if (index_ADC_Read = 11 or index_ADC_Read = 13 or index_ADC_Read = 15 or index_ADC_Read = 17 or index_ADC_Read = 19 or index_ADC_Read = 21 or index_ADC_Read = 23 or index_ADC_Read = 25 or index_ADC_Read = 27 or index_ADC_Read = 29 or index_ADC_Read = 31 or index_ADC_Read = 33 or index_ADC_Read = 35 or index_ADC_Read = 37 or index_ADC_Read = 39 or index_ADC_Read = 41) then --simu version
--                            ADC_Deserialized_Data <= ADC_Deserialized_Data(14 downto 0) & ADC_SDO;
--                        end if;

--                        --IDLE if ADC isn't enabled
----                        if Enable = '0' then
----                            ADC_Read_State <= ADC_Read_Idle;
----                        end if;
----                end case;               --
--            end if;
--        end if;

--    end process;

    ADC_set_process : process(i_Rst_n, clk_synchro)
    begin
        if i_Rst_n = '0' then
            index_ADC_Read        <= 0;
            ADC_Conv_n            <= '0';
            Dout_r                <= (others => '0');
            Dout_RDY_r            <= '0';
            ADC_SCK_enable        <= '0';
            --ADC_Sck_r             <= '1';
            ADC_Deserialized_Data <= (others => '0');
            Trig_out_r            <= '0';
            Trig_out_counter      <= 0;
            ADC_Read_State <= ADC_Conversion_and_Readout;
        else
            if rising_edge(clk_synchro) then
                ADC_SCK_enable_r <= ADC_SCK_enable;
--                Dout_r           <= std_logic_vector(ADC_Deserialized_Data);

--                case ADC_Read_State is
--                    when ADC_Read_Idle =>

--                        Dout_RDY_r     <= '0';
--                        ADC_SCK_enable <= '0';
--                        ADC_Sck_r      <= '1';
--                        if Enable = '1' then
--                            index_ADC_Read <= 0;
--                            ADC_Read_State <= ADC_Conversion_and_Readout;
--                        end if;

--                    when ADC_Conversion_and_Readout =>

                        
                        if index_ADC_Read = 24 then -- wait minimum 19.4 ns to set conv_n again      
                            index_ADC_Read <= 0;
                        else
                            index_ADC_Read <= index_ADC_Read + 1;
                        end if;

                        --------------------
                        --sck generation
                        --------------------
--                        if (index_ADC_Read >= 10 and index_ADC_Read <= 41) then
--                            ADC_Sck_r <= not ADC_Sck_r;
--                        else
--                            ADC_Sck_r <= '1';
--                        end if;
                        --------------------
                        --trig generation
                        --------------------
                        if (index_ADC_Read = 0) then
                            if (Trig_out_counter = 500) then
                                Trig_out_r       <= '1';
                                Trig_out_counter <= 0;
                            else
                                Trig_out_r       <= '0';
                                Trig_out_counter <= Trig_out_counter + 1;
                            end if;
                        end if;

                        if (index_ADC_Read >= 0 and index_ADC_Read <= 2) then
                            ADC_Conv_n <= '1';
                        else
                            ADC_Conv_n <= '0';
                        end if;

                        if (index_ADC_Read = 23) then
                            Dout_RDY_r <= '1';
                            Dout_r     <= std_logic_vector(ADC_Deserialized_Data);
                        else
                            Dout_RDY_r <= '0';
                        end if;

                        -- if counter is pair between this range the data is sampled and sent from the ADC to serialize the data
                        -- data is shifted when counter index_ADC_Read is: 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38
                        --if(index_ADC_Read = 10 or index_ADC_Read = 12 or index_ADC_Read = 14 or index_ADC_Read = 16 or index_ADC_Read = 18 or index_ADC_Read =  20 or index_ADC_Read =  22 or index_ADC_Read =  24 or index_ADC_Read =  26 or index_ADC_Read = 28 or index_ADC_Read = 30 or index_ADC_Read = 32 or index_ADC_Read = 34 or index_ADC_Read = 36 or index_ADC_Read = 38 or index_ADC_Read = 40 )then
                        if(index_ADC_Read >= 4 and index_ADC_Read <= 20)then --real version
--                        if(index_ADC_Read = 11 or index_ADC_Read = 13 or index_ADC_Read = 15 or index_ADC_Read = 17 or index_ADC_Read = 19 or index_ADC_Read = 21 or index_ADC_Read = 23 or index_ADC_Read = 25 or index_ADC_Read = 27 or index_ADC_Read = 29 or index_ADC_Read = 31 or index_ADC_Read = 33 or index_ADC_Read = 35 or index_ADC_Read = 37 or index_ADC_Read = 39 or index_ADC_Read = 41 or index_ADC_Read = 43)then --real version
                        --if (index_ADC_Read = 11 or index_ADC_Read = 13 or index_ADC_Read = 15 or index_ADC_Read = 17 or index_ADC_Read = 19 or index_ADC_Read = 21 or index_ADC_Read = 23 or index_ADC_Read = 25 or index_ADC_Read = 27 or index_ADC_Read = 29 or index_ADC_Read = 31 or index_ADC_Read = 33 or index_ADC_Read = 35 or index_ADC_Read = 37 or index_ADC_Read = 39 or index_ADC_Read = 41) then --simu version
                            ADC_Deserialized_Data <= ADC_Deserialized_Data(14 downto 0) & ADC_SDO;
                        end if;

                        --IDLE if ADC isn't enabled
--                        if Enable = '0' then
--                            ADC_Read_State <= ADC_Read_Idle;
--                        end if;
--                end case;               --
            end if;
        end if;

    end process;
    
    clock_SPI_generation : process(i_Rst_n, CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
             ADC_Sck_r <= '1';
        else
            if rising_edge(CLOCK_100_MHZ) then
                       if (index_ADC_Read >= 4 and index_ADC_Read <= 20) then
                            ADC_Sck_r <= not ADC_Sck_r;
                        else
                            ADC_Sck_r <= '1';
                        end if;
            end if;
        end if;
    end process;
    
    
    o_Trig_out <= Trig_out_r;

    resync_output : process(i_Rst_n, clk_synchro)
    begin
        if i_Rst_n = '0' then
            Dout     <= (others => '0');
            Dout_RDY <= '0';
        else
            if rising_edge(clk_synchro) then
                --Dout     <= Dout_r;
                Dout_RDY <= Dout_RDY_r;
                --if Dout_RDY_r = '1' then
                Dout     <= Dout_r;
                --end if;
            end if;
        end if;
    end process;

    ADC_Sck <= ADC_Sck_r;
    -----------------------------------------------------------------
    -- Process: ADC read process (Nominal and test pattern mode)
    -----------------------------------------------------------------
    --    ADC_Read_process : process(i_Rst_n, ADC_Sck_r)
    --        begin
    --        if i_Rst_n = '0' then
    --            ADC_Deserialized_Data <= (others => '0');
    --            i_data_counter <= 0;
    --        else
    --            if falling_edge(ADC_Sck_r) then
    --            --if rising_edge(ADC_Sck_r) then
    --            --ADC_Deserialized_Data(15)<='0';
    --                if(i_data_counter >=1 and i_data_counter < 16)then
    --                    ADC_Deserialized_Data(14 downto 0)<= ADC_Deserialized_Data(13 downto 0) & ADC_SDO;
    --                end if;

    --                if(i_data_counter = 16)then
    --                    i_data_counter <= 1;
    --                else
    --                    i_data_counter <= i_data_counter+1;
    --                end if;
    --            end if;
    --          end if;
    --          end process;
    --    ADC_Read_process : process(i_Rst_n, CLOCK_100_MHZ)
    --   ADC_Read_process : process(i_Rst_n, CLOCK_100_MHZ)
    --        variable i_pattern    : integer range 0 to 201;
    --        variable pattern_step : signed(15 downto 0);

    --    begin
    --        if i_Rst_n = '0' then
    --            i_pattern             := 0;
    --            pattern_step          := x"0001";
    --            ADC_Deserialized_Data <= (others => '0');
    --        else
    --            if rising_edge(CLOCK_100_MHZ) then
    --                if EP_Test_Mode_Enable = '0' then
    --                    --------------------------------------------------
    --                    -- Nominal mode
    --                    --------------------------------------------------
    --                    if ADC_SCK_enable = '1'  then
    --                        ADC_Deserialized_Data <= ADC_Deserialized_Data(14 downto 0) & ADC_SDO;
    --                    else
    --                        ADC_Deserialized_Data <= (others => '0');
    --                    end if;
    --                else
    --                    --------------------------------------------------
    --                    -- Test Pattern mode
    --                    --------------------------------------------------
    --                    if index_ADC_Read = 19 then
    --                        if i_pattern < 9 then
    --                            ADC_Deserialized_Data <= ADC_Deserialized_Data + pattern_step;
    --                        elsif i_pattern < 17 then
    --                            ADC_Deserialized_Data <= ADC_Deserialized_Data - pattern_step;
    --                        else
    --                            ADC_Deserialized_Data <= (others => '0');
    --                        end if;
    --                        if i_pattern >= 200 then
    --                            i_pattern    := 0;
    --                            pattern_step := pattern_step + 1;
    --                        else
    --                            i_pattern := i_pattern + 1;
    --                        end if;

    --                        if ADC_Deserialized_Data = x"FFFF" then
    --                            pattern_step := (others => '0');
    --                        end if;
    --                    end if;
    --                end if;

    --            end if;
    --        end if;
    --    end process;

end Behavioral;

--    ADC_set_process : process(i_Rst_n, CLOCK_100_MHZ)
--    begin
--        if i_Rst_n = '0' then
--            index_ADC_Read <= 0;
--            ADC_Conv_n     <= '0';
--            Dout           <= (others => '0');
--            Dout_RDY       <= '0';
--            ADC_SCK_enable <= '0';
--            ADC_SCK_enable_r <= '0';--test decalage 1 bit data

--        else
--            if falling_edge(CLOCK_100_MHZ) then
--            ADC_SCK_enable_r<= ADC_SCK_enable;
--                case ADC_Read_State is
--                    when ADC_Read_Idle =>

--                        Dout_RDY       <= '0';
--                        ADC_SCK_enable <= '0';

--                        if Enable = '1' then
--                            index_ADC_Read <= 0;
--                            ADC_Read_State <= ADC_Conversion_and_Readout;
--                        end if;

--                    when ADC_Conversion_and_Readout =>
--                        index_ADC_Read <= index_ADC_Read + 1;

--                        if index_ADC_Read = 0 then -- AQUISITION
--                            ADC_Conv_n <= '1';
--                            Dout_RDY   <= '0';
--                        elsif index_ADC_Read = 3 then -- End of AQUISITION
--                            ADC_Conv_n <= '0';
--                            Dout_RDY   <= '0';
----                        elsif index_ADC_Read = 4 then -- CONVERSION AND READOUT
----                            ADC_SCK_enable <= '1';
----                            Dout_RDY       <= '0';
--                        elsif index_ADC_Read = 5 then -- CONVERSION AND READOUT 5 to let the time
--                            ADC_SCK_enable <= '1';
--                            Dout_RDY       <= '0';
----                        elsif index_ADC_Read = 20 then -- END of CONVERSION AND READOUT
--                        elsif index_ADC_Read = 21 then -- END of CONVERSION AND READOUT
--                            Dout_RDY       <= '1';
--                            Dout           <= std_logic_vector(ADC_Deserialized_Data);  
--                            ADC_SCK_enable <= '0';--to read last word    
--                            ADC_Read_State <= ADC_Conversion_and_Readout;     
--                            index_ADC_Read <= 0;
--                         elsif index_ADC_Read = 22 then -- wait minimum 19.4 ns to set conv_n again
--                             index_ADC_Read <= 0; 
--                             Dout_RDY       <= '0';
--                        end if;

--                        if Enable = '0' then
--                            ADC_Read_State <= ADC_Read_Idle;
--                        end if;

--                end case;
--            end if;
--        end if;

--    end process;

--    ADC_Sck <= CLOCK_100_MHZ when ADC_SCK_enable = '1' and flag_delay_rectifier = '0' else '1';
--    ADC_Sck <= CLOCK_100_MHZ when ADC_SCK_enable = '1' else '1';

--allow to avoid clock glitches because of the falling edge management
--    Half_delay_rectifier : process(i_Rst_n, CLOCK_100_MHZ)
--    begin
--        if i_Rst_n = '0' then
--            flag_delay_rectifier <= '0';
--        else  
--            if rising_edge(CLOCK_100_MHZ) then
--                if(index_ADC_Read = 21)then
--                    flag_delay_rectifier <= '1';
--                else
--                    flag_delay_rectifier <= '0';
--                end if;
--            end if;
--        end if;
--    end process;

--                        if index_ADC_Read = 0 then -- AQUISITION
--                            ADC_Conv_n <= '1';
--                            Dout_RDY   <= '0';
--                            --ADC_Deserialized_Data <= (others => '0');
--                        elsif index_ADC_Read = 6+2 then -- End of AQUISITION
--                            ADC_Conv_n <= '0';
--                            Dout_RDY   <= '0';

--                        elsif index_ADC_Read = 47+2 then -- END of CONVERSION AND READOUT   

--                             Dout_RDY       <= '1';
--                             Dout           <= std_logic_vector(ADC_Deserialized_Data);
--                         elsif index_ADC_Read = 49+2 then -- END of CONVERSION AND READOUT   
--                             Dout_RDY       <= '0';
--                             --Dout           <= std_logic_vector(ADC_Deserialized_Data);         
--                         elsif index_ADC_Read = 49+2+2 then -- wait minimum 19.4 ns to set conv_n again      
--                             index_ADC_Read <= 0; 
--                        end if;