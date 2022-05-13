----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2021 10:31:49
-- Design Name: 
-- Module Name: Filter_FAST_coef - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Energy_correction is
    port(
        -- Reset and Clock
        i_Rst_n        : in  std_logic;
        i_Clk          : in  std_logic;
        i_Threshold    : in  std_logic_vector(31 downto 0);
        -- Memory bus

        i_Base_Address : in  STD_LOGIC_VECTOR(7 downto 0);
        i_Data         : in  STD_LOGIC_VECTOR(16 downto 0);
        i_Address      : in  STD_LOGIC_VECTOR(15 downto 0);
        i_Wr           : in  STD_LOGIC;
        -- ADC Data Ready

        i_Din_Rdy      : in  std_logic;
        -- input EP capture filter

        i_Filter_A     : in  std_logic_vector(31 downto 0);
        i_Filter_B     : in  std_logic_vector(31 downto 0);
        --	Event_detect

        o_Event_A      : out std_logic_vector(31 downto 0);
        o_Event_B      : out std_logic_vector(31 downto 0);
        o_A_B          : out signed(63 downto 0);
        o_Event_Energy : out std_logic_vector(31 downto 0);
        o_Event_Rdy    : out std_logic
    );
end Energy_correction;

architecture Behavioral of Energy_correction is

    -------------------------------
    -- FSM manage divider
    ------------------------------- 

    type state_type is (IDLE, Wait_for_PHI, Energy_correction, FIND_MAX);
    signal state : state_type := IDLE;

    signal A_Max_FP : signed(47 downto 0);

    signal B_A : signed(63 downto 0);

    -------------------------------
    -- coef tab
    ------------------------------- 

    signal Coef_data   : std_logic_vector(16 downto 0);
    signal Coef_Adress : std_logic_vector(7 downto 0);

    -------------------------------
    -- divider
    -------------------------------

    signal B_A_division_start : std_logic;
    signal Event_Rdy          : std_logic;
    signal FP_B_div_A         : std_logic_vector(63 downto 0);
    signal division_done      : std_logic;

    signal Event_A : std_logic_vector(31 downto 0);
    signal Event_B : std_logic_vector(31 downto 0);

    signal Time : integer range 0 to 60;

begin

    -----------------------------------------------------------------
    -- FSM
    -----------------------------------------------------------------

    fsm_process : process(i_Clk, i_Rst_n) is
        variable Mul : signed(95 downto 0);
    begin
        if i_Rst_n = '0' then

            state <= IDLE;

            Event_A <= (others => '0');
            Event_B <= (others => '0');

            B_A_division_start <= '0';

            Event_Rdy      <= '0';
            B_A            <= (others => '0');
            o_Event_Energy <= (others => '0');

            Time <= 0;

        elsif rising_edge(i_Clk) then

            A_Max_FP <= signed(Event_A & X"0000");

            case state is

                when IDLE =>

                    Event_Rdy <= '0';
                    Time      <= 0;

                    if i_Din_Rdy = '1' then
                        if signed(i_Filter_A) > signed(i_Threshold) then
                            Event_A   <= (others => '0');
                            Event_B   <= (others => '0');
                            state <= FIND_MAX;
                        end if;
                    end if;

                when FIND_MAX =>

                    if i_Din_Rdy = '1' then
                        Time <= Time + 1;

                        if signed(Event_A) < signed(i_Filter_A) then
                            Event_A <= i_Filter_A;
                            Event_B <= i_Filter_B;
                        end if;

                        if Time >= 50 then
                            B_A_division_start <= '1';
                            state              <= Wait_for_PHI;
                        end if;
                    end if;
                    
                when Wait_for_PHI =>

                    B_A_division_start <= '0';

                    if division_done = '1' then
                        state <= Energy_correction;
                        B_A   <= signed(FP_B_div_A);
                    end if;

                when Energy_correction =>

                    ---------------------------------------------------------
                    -- |47    Partie enti�re    16|15  Partie flottante    0|
                    ---------------------------------------------------------

                    Mul            := A_Max_FP * signed(X"0000000" & "000" & signed(Coef_data));
                    o_Event_Energy <= Event_A; -- std_logic_vector(A_Max_FP(47 downto 16)); -- std_logic_vector( Mul(63 downto 32) ); 

                    state     <= IDLE;
                    Event_Rdy <= '1';

            end case;

    end if;
end process fsm_process;

    o_Event_A <= Event_A;
    o_Event_B <= Event_B;

    -----------------------------------------------------------------
    -- divider
    -----------------------------------------------------------------	

    SHIFT_divider : entity work.divider
        port map(
            i_Rst_n        => i_Rst_n,  -- : in  std_logic;
            CLOCK_100_MHZ  => i_Clk,    -- : in  std_logic;

            Division_start => B_A_division_start, -- : in  std_logic; --process is done
            Div_read       => Event_Rdy, -- : in  std_logic; --means result has been read

            A              => Event_A,
            B              => Event_B,
            Result         => FP_B_div_A, -- : out std_logic_vector(15 downto 0);std_logic_vector(A_B_16bits), 
            Result_rdy     => division_done -- : out std_logic
        );

    --EP_Event_Rdy <= Phase_enable;
    --le bit de signe de PHI (A_B) est le bit 22 (le 23eme) mais les valeur de phi sont très petites
    -- donc la valeur utile de phi commence à 20 (qui est le bit de signe)
    Coef_Adress <= std_logic_vector(B_A(20 downto 13));
    o_A_B       <= B_A;

    -----------------------------------------------------------------
    -- Phi correction ROM
    -----------------------------------------------------------------	

    Coeff_Table_ROM_instantiation : entity work.Phi_Corr_Table
        port map(
            i_Clk          => i_Clk,
            i_Base_Address => i_Base_Address,
            i_Data         => i_Data,
            i_Address      => i_Address,
            i_Wr           => i_Wr,
            i_Coef_Adress  => Coef_Adress,
            i_Coef_Data    => Coef_data
        );

    o_Event_Rdy <= Event_Rdy;           -- means result has been read

end;
