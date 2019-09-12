library ieee;
use ieee.std_logic_1164.all;

entity my_register is
    port(
        i_data : in std_logic;
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic
    );
end entity;

architecture behave of my_register is
signal temp : std_logic;
begin
    process(i_clk, i_rst) begin
        if i_rst = '1' then
            temp <= '0';
        elsif rising_edge(i_clk) then
            if i_en = '1' then
                temp <= i_data;
            end if;
        end if;
    end process;
    o_data <= temp;
end architecture;
