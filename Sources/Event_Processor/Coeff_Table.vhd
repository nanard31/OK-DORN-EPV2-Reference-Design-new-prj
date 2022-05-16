Library ieee;
use ieee.std_logic_1164.all;

entity Phi_Corr_Table is
	port(
	    i_Clk : in std_logic;
	    
	    i_Base_Address       : in  STD_LOGIC_VECTOR(7 downto 0);
        i_Data               : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Address            : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Wr                 : in  STD_LOGIC;
        
        i_Coef_Adress        : in STD_LOGIC_VECTOR(8 downto 0);
        i_Coef_Data          : out STD_LOGIC_VECTOR(15 downto 0)
        
	);
end entity Phi_Corr_Table;

architecture behavioral of Phi_Corr_Table is
    CONSTANT BIT_0      : STD_LOGIC_VECTOR:= "0000000000000000";
    CONSTANT BIT0       : std_logic_vector(0 downto 0):= "0";
    signal Wr : std_logic_vector(0 downto 0);
begin

Wr(0) <= i_Wr when i_Address(15 downto 8) = i_Base_Address else '0';
        
    RAM_coef : entity work.Phi_Corr_RAM
        port map(
        clka  => i_Clk ,--: IN STD_LOGIC;
        wea   => BIT0,--: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra => i_Coef_Adress,--: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        dina  => BIT_0  ,--: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        douta => i_Coef_Data ,--: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        clkb  => i_Clk,--: IN STD_LOGIC;
        web   => Wr,--: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addrb => i_Address(8 downto 0) ,--: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        dinb  => i_Data ,--: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        doutb => open
    );
    
end architecture behavioral;
