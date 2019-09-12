library ieee;
use ieee.std_logic_1164.all;

entity big_register is
    port(
        i_data : in std_logic_vector(3 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behave of big_register is
signal temp : std_logic_vector(3 downto 0);

begin
    process(i_clk, i_rst) begin
        if i_rst = '1' then
            temp <= "0000";
        elsif rising_edge(i_clk) then
            if i_en = '1' then
                temp <= i_data;
            end if;
        end if;
    end process;
    o_data <= temp;
end architecture;
