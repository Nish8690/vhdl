library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter2 is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(4 downto 0);
        o_en : out std_logic
    );
end entity;

architecture behave2 of counter2 is
signal w_data : std_logic_vector(4 downto 0);

begin
    counter2_process : process(i_clk, i_rst) begin
        if i_rst = '1' then
            w_data <= "00000";
        elsif rising_edge(i_clk) then
            if i_en = '1' then
                w_data <= w_data + 1;
            end if;
        end if;
    end process;
    o_en <= '1' when w_data = "00111" else '0';
    o_data <= w_data;
end architecture;
