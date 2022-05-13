----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Bernard BERTRAND
-- 
-- Create Date: 16.08.2021 10:31:49
-- Design Name: 
-- Module Name: 
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

use work.DORN_EP_Package.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EP_PM_Sum is
    port(
        -- Reset and Clock

        i_Rst_n     : in  std_logic;
        i_Clk       : in  std_logic;
        -- Param

        i_size      : in  unsigned(5 downto 0);
        -- Ready flag input

        i_Rdy       : in  std_logic;
        --i_id    : in  std_logic_vector(id_size downto 0);
        i_id        : in  unsigned(id_size downto 0);
        -- Data input
        i_Din       : in  std_logic_vector(15 downto 0);
        -- output to another Sum block

--        o_rdy       : out std_logic_vector(0 to pipeline_size - 1);
--        o_id        : out std_logic_vector(id_size downto 0);
        o_out       : out std_logic_vector(15 downto 0);
        -- sum	

        o_sum       : out signed(31 downto 0);
        o_sum_array : out Array_8x31_type
    );
end EP_PM_Sum;

architecture Behavioral of EP_PM_Sum is

    --	FSM
    type FSM_ReadState is (load_ram_zero, set_pointer, wait_rdy, manage_ptr);
    signal case_FSM_ReadState : FSM_ReadState;

    --	RAM0B coef 
    signal wea : std_logic_vector(0 downto 0);

    signal dina : unsigned(15 downto 0);

    signal doutb : std_logic_vector(15 downto 0);

    --pointer
    signal ptr_wr : unsigned(5 downto 0);
    signal ptr_rd : unsigned(5 downto 0);

    -- id

    signal save_i_id : unsigned(id_size downto 0);
    signal addra     : unsigned(id_size + 6 downto 0);
    signal addrb     : unsigned(id_size + 6 downto 0);

    signal sum_array : Array_8x31_type; --debug

begin

    -----------------------------------------
    -- RAM0B coef 
    -----------------------------------------  

    label_RAM_sum : entity work.RAM_sum
        port map(
            clka  => i_Clk,             --
            wea   => wea,               --
            addra => std_logic_vector(addra),
            dina  => std_logic_vector(dina),
            douta => open,
            clkb  => i_Clk,             --
            web   => "0",
            addrb => std_logic_vector(addrb), --
            dinb  => x"0000",           --	
            doutb => doutb
        );

    -----------------------------------------
    -- Process: compute SUM  
    -----------------------------------------
    case_FSM_ReadState_process : process(i_Rst_n, i_Clk)
    begin
        if i_Rst_n = '0' then

            --	FSM

            case_FSM_ReadState <= load_ram_zero;

            --	RAM coef 
            wea   <= (others => '0');
            addra <= (others => '0');
            dina  <= (others => '0');

            addrb <= (others => '0');

            --pointer
            ptr_wr <= (others => '0');
            ptr_rd <= (others => '0');

            --sum	
            sum_array   <= (others => (others => '0'));
            o_sum_array <= (others => (others => '0'));

            --		-----------------debug
            --		view_sum 	<= (others => '0');	
            --		view_i_Din		<= (others => '0');	
            --		view_doutb	<= (others => '0');	
            --		-------------------------------------------------------------------------------------

            -- out science event

            --o_out_array <= (others => (others => '0'));
            --o_rdy <= (others => '0');

            --o_id  <= (others => '0');
            --o_out <= (others => '0');
            o_sum <= (others => '0');

        else

            if rising_edge(i_Clk) then

                wea   <= "0";
                --o_rdy <= (others => '0');

                case case_FSM_ReadState is

                    when load_ram_zero =>

                        wea   <= "1";
                        dina  <= (others => '0'); -- init all data RAM
                        addra <= addra + 1;

                        if addra = (2 ** (addra'high) - 1) then
                            wea                <= "0";
                            case_FSM_ReadState <= set_pointer;
                        end if;

                    when set_pointer =>

                        ptr_wr <= i_size;

                        --if i_Rdy = '1' and to_integer(unsigned(i_id))=pipeline_size-1 then
                        if i_Rdy = '1' and to_integer(i_id) = pipeline_size - 1 then
                            case_FSM_ReadState <= wait_rdy;
                        end if;

                    when wait_rdy =>

                        if i_Rdy = '1' then -- test before each sum
                            --if i_id(0)='1' or i_id(1)='1' or i_id(2)='1' then

                            save_i_id <= i_id;
                            --o_id      <= i_id;

                            -- write data RAM
                            wea  <= "1";
                            dina <= unsigned(i_Din);

                            addra <= (i_id) & ptr_wr; -- set write RAM add 
                            addrb <= (i_id) & ptr_rd; -- set read	RAM add 

                            --debug
                            --o_out_array <= doutb_array;
                            -- out component

                            o_sum <= sum_array(To_integer(i_id));
                            o_sum_array <= sum_array;

                            --o_rdy(To_integer(i_id)) <= '1';

                            sum_array(To_integer(i_id - 1)) <= sum_array(To_integer(i_id - 1)) + signed(dina) - signed(doutb);

                            -- -----------------debug-----------------------------------------------------------------
                            -- view_sum 	<= o_sum(To_integer(unsigned(i_id))) + signed(i_Din(To_integer(unsigned(i_id))));-- - signed(doutb(To_integer(unsigned(i_id))));
                            -- view_i_Din	<= signed(i_Din(To_integer(unsigned(i_id))));
                            -- view_doutb	<= signed(doutb_array(To_integer(unsigned(i_id))));
                            -- -------------------------------------------------------------------------------------

                            --if 	unsigned(i_id) = 3 then			-- set deep A0......A7

                            case_FSM_ReadState <= manage_ptr;

                            --end if;

                        end if;

                    when manage_ptr =>

                        -- treat pointer sum i 
                        if unsigned(save_i_id) = pipeline_size - 1 then

                            ptr_wr <= ptr_wr + 1;
                            ptr_rd <= ptr_rd + 1;

                            if ptr_rd >= i_size then -- case reset Read pointer 
                                ptr_wr <= ptr_wr + 1;
                                ptr_rd <= (others => '0');
                            end if;

                            if ptr_wr >= i_size then -- case reset Write pointer 

                                ptr_wr <= (others => '0');
                                ptr_rd <= ptr_rd + 1;

                            end if;
                        end if;

                        case_FSM_ReadState <= wait_rdy;

                    when others => null;

                end case;

            end if;
        end if;

    end process;
    --------------------
    --	decode id from Rdy
    --------------------	
    o_out <= doutb;

end;

