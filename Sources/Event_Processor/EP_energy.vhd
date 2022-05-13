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
use IEEE.NUMERIC_STD.ALL;

entity EP_energy is
    port(
        -- Reset and Clock

        i_Rst_n     : in std_logic;
        i_Clk       : in std_logic;
        
        i_Threshold : in std_logic_vector(31 downto 0);
        
        i_Din_Rdy   : in std_logic;
        PH_Sum      : in signed(31 downto 0);
        
        o_Current_Valmax : out std_logic_vector(31 downto 0);
        PH_Event_Rdy : out std_logic;
        PH_Event     : out std_logic_vector(31 downto 0)
    );
end EP_energy;

architecture Behavioral of EP_energy is
    
signal val_max : signed(31 downto 0);

begin
    -----------------------------------------------------------------
    -- Peak & hold FSM
    -----------------------------------------------------------------

    fsm_process : process(i_Clk, i_Rst_n) is
        type state_type is (IDLE, FIND_MAX);
        variable state : state_type := IDLE;
    begin
        if i_Rst_n = '0' then
            state    := IDLE;
            val_max      <= (others => '0');
            PH_Event_Rdy <= '0';
            PH_Event <= (others => '0');

        elsif rising_edge(i_Clk) then
            case state is

                when IDLE =>

                    val_max      <= (others => '0');
                    PH_Event_Rdy <= '0';
                    if i_Din_Rdy = '1' and PH_Sum > signed(i_Threshold) then
                        state := FIND_MAX;
                    end if;

                when FIND_MAX =>

                    if i_Din_Rdy = '1' then

                        if val_max < PH_Sum then
                            val_max <= PH_Sum;
                        end if;

                        if PH_Sum < signed(i_Threshold) then
                            PH_Event     <= std_logic_vector(val_max);
                            PH_Event_Rdy <= '1';
                            state        := IDLE;
                        end if;
                    end if;

            end case;
        end if;
    end process;

o_Current_Valmax <= std_logic_vector(val_max);

end;
