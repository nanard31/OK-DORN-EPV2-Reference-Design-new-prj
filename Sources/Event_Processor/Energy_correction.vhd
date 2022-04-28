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
        i_Rst_n                   : in  std_logic;
        i_CLOCK_100_MHZ           : in  std_logic;
        -- input EP capture filter

        i_EP_Capture_Filter_A_w   : in  std_logic_vector(31 downto 0);
        i_EP_Capture_Filter_B_w   : in  std_logic_vector(31 downto 0);
        --	Event_detect
        o_Event_A                 : out std_logic_vector(31 downto 0);
        o_Event_B                 : out std_logic_vector(31 downto 0);
        --	output result	
        o_Event_Energy            : out std_logic_vector(77 downto 0);
        o_A_B                     : out signed(63 downto 0);
        o_div_read                : out std_logic -- means result has been read
        
    );
end Energy_correction;

architecture Behavioral of Energy_correction is

    -------------------------------
    -- FSM manage divider
    ------------------------------- 

    type state_type is (Event_detect, Wait_for_PHI, Energy_correction);
    signal state : state_type := Event_detect;

    signal o_EP_Capture_Filter_A_w_old : std_logic_vector(31 downto 0);
    signal o_EP_Capture_Filter_B_w_old : std_logic_vector(31 downto 0);

    signal Shifted_MAX_A : signed(53 downto 0);

    --signal Phase_enable : std_logic;

    signal A_B        : signed(63 downto 0);

    -------------------------------
    -- coef tab
    ------------------------------- 

    signal Coeff_data   : integer range 0 to 131071;
    signal address_coef : unsigned(7 downto 0);

    -------------------------------
    -- divider
    -------------------------------

    signal B_A_division_start : std_logic;
    signal div_read           : std_logic;
    signal Intermediate_A_B   : std_logic_vector(63 downto 0);
    signal division_done      : std_logic;

    signal i_Event_A : std_logic_vector(31 downto 0);
    signal i_Event_B : std_logic_vector(31 downto 0);

begin

    -----------------------------------------------------------------
    -- FSM
    -----------------------------------------------------------------

    fsm_process : process(i_CLOCK_100_MHZ, i_Rst_n) is
        variable Phase_A_B : signed(63 downto 0);
    begin
        if i_Rst_n = '0' then

            state                       <= Event_detect;
            o_EP_Capture_Filter_A_w_old <= (others => '0');
            o_EP_Capture_Filter_B_w_old <= (others => '0');
            i_Event_A                   <= (others => '0');
            i_Event_B                   <= (others => '0');

            B_A_division_start          <= '0';

            --Phase_enable     <= '0';
            div_read         <= '0';
            --division_done_r <= '0';
            Phase_A_B        := x"FFFFFFFFFFFFFFFF";

            A_B              <= (others => '0');
            o_Event_Energy   <= (others => '0');
 
        elsif rising_edge(i_CLOCK_100_MHZ) then

            o_EP_Capture_Filter_A_w_old <= i_EP_Capture_Filter_A_w;
            o_EP_Capture_Filter_B_w_old <= i_EP_Capture_Filter_B_w;
            Shifted_MAX_A               <= signed("000000" & i_Event_A & "0000000000000000");
            --o_Energy_corrected_edge <= Energy_corrected;

            case state is

                when Event_detect =>

                    div_read         <= '0';


                    if signed(o_EP_Capture_Filter_A_w_old) > signed(i_EP_Capture_Filter_A_w) and signed(i_EP_Capture_Filter_A_w) > to_signed(100, 32) then
                        i_Event_A          <= o_EP_Capture_Filter_A_w_old;
                        i_Event_B          <= o_EP_Capture_Filter_B_w_old;
                        B_A_division_start <= '1';
                        state              <= Wait_for_PHI;
                    end if;

                when Wait_for_PHI =>

                    B_A_division_start <= '0';

                    if division_done = '1' then
                        state      <= Energy_correction;
                        --Phase_enable <= '1';
                        Phase_A_B  := signed(Intermediate_A_B);
                        A_B        <= Phase_A_B;
 
                    end if;

                when Energy_correction =>



                    o_Event_Energy <= std_logic_vector(Shifted_MAX_A * to_signed(Coeff_data, 24));

                    if signed(i_EP_Capture_Filter_A_w) < x"00004530" then
                        state    <= Event_detect;
                        div_read <= '1';
                    end if;
            end case;

        end if;
    end process fsm_process;

    o_Event_A                 <= i_Event_A;
    o_Event_B                 <= i_Event_B;
 
    -----------------------------------------------------------------
    -- divider
    -----------------------------------------------------------------	

    SHIFT_divider : entity work.divider
        port map(
            i_Rst_n        => i_Rst_n,  -- : in  std_logic;
            CLOCK_100_MHZ  => i_CLOCK_100_MHZ, -- : in  std_logic;

            Division_start => B_A_division_start, -- : in  std_logic; --process is done
            Div_read       => div_read, -- : in  std_logic; --means result has been read

            A              => i_Event_A,
            B              => i_Event_B,
            Result         => Intermediate_A_B, -- : out std_logic_vector(15 downto 0);std_logic_vector(A_B_16bits), 
            Result_rdy     => division_done -- : out std_logic
        );

    --EP_Event_Rdy <= Phase_enable;
    --le bit de signe de PHI (A_B) est le bit 22 (le 23eme) mais les valeur de phi sont très petites
    -- donc la valeur utile de phi commence à 20 (qui est le bit de signe)
    address_coef <= unsigned(A_B(20 downto 13));
    o_A_B        <= A_B;

    -----------------------------------------------------------------
    -- Phi correction ROM
    -----------------------------------------------------------------	

    Coeff_Table_ROM_instantiation : entity work.Coeff_Table
        port map(
            address => To_integer(address_coef),
            data    => Coeff_data
        );

    --o_Phase_enable <= Phase_enable;     -- digital pulse energy correction is applied
    o_div_read <= div_read;             -- means result has been read

end;
