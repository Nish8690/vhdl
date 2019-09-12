library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end entity;

architecture dut of adder_tb is
component adder is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        o_c : out std_logic_vector(4 downto 0)
    );
end component;

signal i_a_sim, i_b_sim : std_logic_vector(3 downto 0);
signal o_c_sim : std_logic_vector(4 downto 0);

begin
    mapping : adder port map(i_a_sim, i_b_sim, o_c_sim);

    process begin
        i_a_sim <= "0000";
        i_b_sim <= "0001";
        wait for 20 ns;

        i_a_sim <= "0000";
        i_b_sim <= "0010";
        wait for 20 ns;

        i_a_sim <= "0100";
        i_b_sim <= "0100";
        wait for 20 ns;

        i_a_sim <= "0111";
        i_b_sim <= "1110";
        wait for 20 ns;
    end process;
end architecture;
