
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package DORN_EP_Package is

    ----------------------------------------------------------------------------------
    -- Event Processor
    ----------------------------------------------------------------------------------

    constant pipeline_size : integer := 1;
    constant id_size       : integer := 0; 
    
    
--    constant pipeline_size : integer := 8;
--    constant id_size       : integer := 2; 

    type Array_8x6_type is array (0 to pipeline_size - 1) of std_logic_vector(5 downto 0); -- Array 8 x 6
    type Array_8x16_type is array (0 to pipeline_size - 1) of std_logic_vector(15 downto 0); -- Array 8 x 16

    type Array_4x31_type is array (0 to 3) of signed(31 downto 0); -- Array 4 x 31
    type Array_8x31_type is array (0 to pipeline_size - 1) of signed(31 downto 0); -- Array 8 x 16

    type Array_4x16_type is array (0 to 3) of std_logic_vector(15 downto 0); -- Array 4 x 16

end package DORN_EP_Package;
