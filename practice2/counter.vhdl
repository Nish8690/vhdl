library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0);
        o_en : out std_logic
    );
end entity;

architecture behavioral of counter is
signal w_data : std_logic_vector(3 downto 0);
begin
    process(i_clk, i_rst) begin
        if i_rst = '1' then
            w_data <= "0000";
        elsif rising_edge(i_clk) then
            if i_en = '1' then
                w_data <= w_data + 1;
            end if;
        end if;
    end process;
    o_data <= w_data;
    o_en <= '1' when w_data = "0101" else '0';
end architecture;
