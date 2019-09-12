library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter1 is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(2 downto 0);
        o_en : out std_logic;
        o_clk : out std_logic;
        o_rst : out std_logic
    );
end entity;

architecture behave1 of counter1 is
signal w_data : std_logic_vector(2 downto 0);
signal w_clk_divider : std_logic_vector(1 downto 0);

begin
    counter1_process : process(i_clk, i_rst) begin
        if i_rst = '1' then
            w_data <= "000";
            w_clk_divider <= "00";
        elsif rising_edge(i_clk) then
            if i_en = '1' then
                w_data <= w_data + 1;
                w_clk_divider <= w_clk_divider + 1;
            end if;
        end if;
    end process;
    o_en <= '1' when w_data = "101" else '0';
    o_data <= w_data;
    o_clk <= w_clk_divider(0);
    o_rst <= not i_rst;
end architecture;
