library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
    port(
        rst : in std_logic;
        clk : in std_logic;
        outF : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behave of counter is
signal temp : std_logic_vector(3 downto 0);
begin
    process(rst, clk) begin
        if rst = '1' then
            temp <= "0000";
        elsif (rising_edge(clk)) then
            temp <= temp + 1;
        end if;
    end process;
    outF <= temp;
end architecture;
