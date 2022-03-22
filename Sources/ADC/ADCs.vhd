library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.DORN_Package.ALL;

library unisim;
use unisim.vcomponents.all;

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
 
		-- id
		o_id_front	:	out std_logic_vector(1 downto 0);
		o_id_back	:	out std_logic_vector(1 downto 0);
		
		-- Ready flag buffers
		DU_ADC_Ready_100_front : inout std_logic_vector(0 to 3);
		DU_ADC_Ready_100_back  : inout std_logic_vector(0 to 3);
		
		-- DU_ADC Data
		DU_ADC_Front_Dout 		: out Array_4x16_type;
		DU_ADC_Back_Dout	 	: out Array_4x16_type;
		
 
        --------------------------------------------------------------------------------------------
        -- ADC SPI
        --------------------------------------------------------------------------------------------
		o_ADC_SCK     	: out std_logic_vector(0 to 3);             -- SPI Serial Clock
        o_ADC_CNV_n   	: out std_logic_vector(0 to 3);             -- SPI Convert Input, negative polarity
        i_ADC_SDO_front	: in  std_logic_vector(0 to 3);              -- SPI Slave Data Output (MISO)
		i_ADC_SDO_back	: in  std_logic_vector(0 to 3)              -- SPI Slave Data Output (MISO)
		
		         
    );
end entity ADCs;

architecture RTL of ADCs is
    
-- -- signal iADC_SCK    : std_logic_vector(0 to 7);             -- SPI Serial Clock
-- signal ADC_SCK    : std_logic_vector(0 to 9);              -- SPI Slave Data Output (MISO)
-- signal ADC_CNV_n  : std_logic_vector(0 to 9);         

-- signal iSCK  : std_logic_vector(0 to 9); 
-- signal iSDO  : std_logic_vector(0 to 9); 

signal DU_ADC_Pulse_En : std_logic;

--type Array_4x16_type is array (0 to 3) of std_logic_vector(15 downto 0); -- Array 4 x 16
-- -- DU_ADC Data
-- signal DU_ADC_Front_Dout : Array_4x16_type;
-- signal DU_ADC_Back_Dout	 : Array_4x16_type;

-- Ready flag buffers
signal DU_ADC_Ready_100_front_concat   : std_logic_vector(3 downto 0);
signal DU_ADC_Ready_100_back_concat	: std_logic_vector(3 downto 0);

begin

    gen_ADCLTC2311_Driver_Parallel : for i in 0 to 3 generate
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

DU_ADC_Ready_100_front_concat <= (DU_ADC_Ready_100_front(3)&DU_ADC_Ready_100_front(2)&DU_ADC_Ready_100_front(1)&DU_ADC_Ready_100_front(0)); 	
DU_ADC_Ready_100_back_concat <=  DU_ADC_Ready_100_back(3)&DU_ADC_Ready_100_back(2)&DU_ADC_Ready_100_back(1)&DU_ADC_Ready_100_back(0);	
	
o_id_front	<=	"00" when	DU_ADC_Ready_100_front_concat = "0001" else
				"01" when DU_ADC_Ready_100_front_concat = "0010" else
				"10" when DU_ADC_Ready_100_front_concat = "0100" else
				"11" ;			
o_id_back	<= 	"00" when DU_ADC_Ready_100_back_concat = "0001" else
				"01" when DU_ADC_Ready_100_back_concat = "0010" else
				"10" when DU_ADC_Ready_100_back_concat = "0100" else
				"11" ;	
	
end architecture RTL;
