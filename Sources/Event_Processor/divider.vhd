----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:00 09/04/2020
-- Design Name: 
-- Module Name:    Filter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity divider is
    port(
		-- Reset and Clock
        i_Rst_n        : in  std_logic;
        CLOCK_100_MHZ  : in  std_logic;
		
        Division_start : in  std_logic; --process is done
        Div_read       : in  std_logic; --means result has been read
		
        A              : in  std_logic_vector(31 downto 0);
        B              : in  std_logic_vector(31 downto 0);
		
        Result         : out std_logic_vector(63 downto 0);
        Result_rdy     : out std_logic
    );
end divider;

architecture Behavioral of divider is

    type div_state is (div_done, div_start, div_processing, div_standby);
 
    signal step_counter        : integer range 0 to 120;
    signal flag_ready          : std_logic;
    signal negative_sign          : std_logic;
    signal state               : div_state;
    
    signal diviser             : unsigned(21 downto 0);
 
    signal quotient            : unsigned(43 downto 0);-- 64 because calculation of decimals
 
    signal Big_dividende       : unsigned(65 downto 0);--FIXME gdfjhsdfjg
 
    signal substract_wire      : unsigned(43 downto 0); 
    
    

begin

    shift_divider : process(i_Rst_n, CLOCK_100_MHZ)
    begin
        if (i_Rst_n = '0') then
            Big_dividende  <= (others => '0');
            diviser        <= (others => '0');
            quotient       <= (others => '0');
            Result         <= (others => '0');
            step_counter   <=  0;
            flag_ready     <= '0';
            Result_rdy     <= '0';
            negative_sign <= '0';
        else
            if rising_edge(CLOCK_100_MHZ) then
                if (state = div_start) then
                    --writing in registers value to be divided
                    if(B(21) = '1') then
                        negative_sign <= '1';
                    else
                        negative_sign <= '0';
                    end if;
                    
                    Big_dividende <= unsigned("00000000000000000000000000000000000000000000" & abs signed(B(21 downto 0)));
                    diviser       <= unsigned(A(21 downto 0));
                    Result        <= (others => '0');
                    flag_ready    <= '0';
                    Result_rdy    <= '0';
                    quotient      <= (others => '0');
                elsif (state = div_processing) then
                    if (flag_ready = '0') then --writing quotient at each step
                        if (Big_dividende(65 downto 22) >= diviser) then
                            quotient(0)           <= '1';
                            quotient(43 downto 1) <= quotient(42 downto 0);

                            --if dividende is upper or equal to diviser record and shift difference
                            Big_dividende(0)           <= '0';
                            Big_dividende(65 downto 1) <= substract_wire(42 downto 0) & Big_dividende(21 downto 0); --(30 downto 0) because the 31 is lost (32th element of the reg)
                        else
                            quotient(0)                <= '0';
                            quotient(43 downto 1)      <= quotient(42 downto 0);
                            --only shift is diviser is greater than dividende
                            Big_dividende(0)           <= '0';
                            Big_dividende(65 downto 1) <= Big_dividende(64 downto 0);
                        end if;

                        -- counter and flag trigger        
                        if (step_counter < 44) then
                            step_counter <= step_counter + 1;
                        else
                            flag_ready   <= '1';
                            step_counter <= 0;
                        end if;
                    end if;
                elsif (state = div_done) then
                    if negative_sign = '0' then
                        Result     <= "00000000000000000000" & std_logic_vector(quotient);
                    else
                        Result     <= std_logic_vector(resize(- signed(quotient), 64)); 
                        --Result     <= std_logic_vector(resize(signed(x"0000000000000000" - quotient), 64)); 
                    end if;
                    --if(Div_read = '1' ) then
                    --    Result_rdy <= '0';
                    --else
                        Result_rdy <= '1';
                    --end if;
                else
                    Result_rdy <= '0';
                    flag_ready <= '0';
                    Result     <= (others => '0');

                end if;
            end if;
        end if;
    end process;
    --wire that correspond to the difference between MSBs of dividende and the diviser
    --substract_wire <= Big_dividende(63 downto 32) - diviser;
    substract_wire <= Big_dividende(65 downto 22) - diviser;

    shift_division_state_machine : process(i_Rst_n, CLOCK_100_MHZ)
    begin
        if i_Rst_n = '0' then
            state <= div_standby;
        else
            if rising_edge(CLOCK_100_MHZ) then
                case state is

                    when div_standby =>
                        if (Division_start = '1') then
                            state <= div_start;
                        end if;
                    when div_processing =>
                        if (flag_ready = '1') then
                            state <= div_done;
                        end if;
                    when div_done =>
                        if (Div_read = '1' and Division_start = '0') then
                            state <= div_standby;
                        elsif (Div_read = '1' and Division_start = '1') then
                            state <= div_start;
                        else
                            state <= div_done;
                        end if;

                    when div_start =>
                        state <= div_processing;
                end case;
            end if;
        end if;
    end process;
end;