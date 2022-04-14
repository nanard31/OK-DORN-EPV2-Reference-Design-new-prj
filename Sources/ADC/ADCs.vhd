library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.DORN_EP_Package.ALL;

--library unisim;
--use unisim.vcomponents.all;

entity ADCs is
    port(
        
        --------------------------------------------------------------------------------------------
        -- Reset
        --------------------------------------------------------------------------------------------
        i_Rst_n      : in  std_logic;             -- General Reset, negative polarity
        --------------------------------------------------------------------------------------------
        -- Clocks
        --------------------------------------------------------------------------------------------
        i_Clk        : in  std_logic;             -- SPI Serial Clock reference
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------
 		
		-- Ready flag buffers
		DU_ADC_Ready_100_front 	: out std_logic_vector(0 to pipeline_size-1);
		DU_ADC_Ready_100_back  	: out std_logic_vector(0 to pipeline_size-1);
		
		-- DU_ADC Data
		DU_ADC_Front_Dout 		: out Array_8x16_type;
		DU_ADC_Back_Dout	 	: out Array_8x16_type;
		
 
        --------------------------------------------------------------------------------------------
        -- ADC SPI
        --------------------------------------------------------------------------------------------
		o_ADC_SCK     	: out std_logic_vector(0 to pipeline_size-1);             -- SPI Serial Clock
        o_ADC_CNV_n   	: out std_logic_vector(0 to pipeline_size-1);             -- SPI Convert Input, negative polarity
        i_ADC_SDO_front	: in  std_logic_vector(0 to pipeline_size-1);              -- SPI Slave Data Output (MISO)
		i_ADC_SDO_back	: in  std_logic_vector(0 to pipeline_size-1)              -- SPI Slave Data Output (MISO)
		
		         
    );
end entity ADCs;

architecture RTL of ADCs is
    
signal DU_ADC_Pulse_En : std_logic;



begin

    gen_ADCLTC2311_Driver_Parallel : for i in 0 to pipeline_size-1 generate
        inst_ADCLTC2311_Driver_Front : entity work.ADCLTC2311_Driver
            generic map(
                g_INITIAL_DELAY => to_unsigned(2 * i, 4) -- 2 clock ticks delay between ADC
            )
            port map(
                i_Rst_n          => i_Rst_n,
                i_Clk_100MHz     => i_Clk,
                i_Enable         => DU_ADC_Pulse_En,
                o_Data_Ready_100 => DU_ADC_Ready_100_front(i),
                o_Data_Ready_25  => open,			-- don't use this ready	--DU_ADC_Ready_25_r0(i),
                o_Data_Read      => DU_ADC_Front_Dout(i),
                o_ADC_SCK        => o_ADC_SCK(i),
                o_ADC_CNV_n      => o_ADC_CNV_n(i),
                i_ADC_SDO        => i_ADC_SDO_front(i)
            );

        inst_ADCLTC2311_Driver_Back : entity work.ADCLTC2311_Driver
            generic map(
                g_INITIAL_DELAY => to_unsigned(2 * i, 4) -- 2 clock ticks delay between ADC
            )
            port map(
                i_Rst_n          => i_Rst_n,
                i_Clk_100MHz     => i_Clk,
                i_Enable         => DU_ADC_Pulse_En,	 -- Common to front driver
                o_Data_Ready_100 => DU_ADC_Ready_100_back(i),         -- Common to front driver
                o_Data_Ready_25  => open,         -- don't use this ready -- Common to front driver
                o_Data_Read      => DU_ADC_Back_Dout(i),
                o_ADC_SCK        => open,         -- Common to front driver
                o_ADC_CNV_n      => open,         -- Common to front driver
                i_ADC_SDO        => i_ADC_SDO_back(i)
            );
    end generate gen_ADCLTC2311_Driver_Parallel;
	
    label_enable : process(i_Rst_n, i_Clk) is
    begin
        if i_Rst_n = '0' then                     -- Init array
		DU_ADC_Pulse_En <= '0';
        else
			if rising_edge(i_Clk) then
			DU_ADC_Pulse_En <= '1';
			end if;
        end if;
    end process label_enable;


	
end architecture RTL;
