library ieee;
use ieee.std_logic_1164.all;

entity fsm is
    port(
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_p : in std_logic;
        i_r : out std_logic
    );
end entity;

architecture behavioral of fsm is
type state_type is (A, B, C, D);
signal state : state_type;
begin
    process(i_clk, i_rst) begin
        if i_rst = '1' then
            state <= A;
        elsif rising_edge(i_clk) then
            case state is
                when A =>
                    if i_p = '1' then
                        state <= B;
                    end if;
                when B =>
                    if i_p = '1' then
                        state <= C;
                    end if;
                when C =>
                    if i_p = '1' then
                        state <= D;
                    end if;
                when D =>
                    if i_p = '0' then
                        state <= A;
                    elsif i_p = '1' then
                        state <= B;
                    end if;
                when others =>
                    state <= A;
            end case;
        end if;
    end process;
    i_r <= '1' when state = D else '0';
end architecture;
