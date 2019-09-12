library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity final_register is
    port(
        i_data : in std_logic_vector(5 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(5 downto 0)
    );
end entity;

architecture behave6 of final_register is
signal w_data : std_logic_vector(5 downto 0);
begin
    process(i_clk, i_rst) begin
        if i_rst = '0' then
            w_data <= "000000";
        elsif rising_edge(i_clk) then
            w_data <= i_data;
        end if;
    end process;
    o_data <= w_data;
end architecture;
