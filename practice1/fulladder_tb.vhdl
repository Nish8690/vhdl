library ieee;
use ieee.std_logic_1164.all;

entity fulladder_tb is
end entity;

architecture dut of fulladder_tb is
component fulladder is
    port(
        i_a : in std_logic;
        i_b : in std_logic;
        i_c : in std_logic;
        o_s : out std_logic;
        o_c : out std_logic
    );
end component;

signal i_a_sim, i_b_sim, i_c_sim, o_s_sim, o_c_sim : std_logic;

begin
    mapping : fulladder port map(i_a_sim, i_b_sim, i_c_sim, o_s_sim, o_c_sim);

    process begin
        i_a_sim <= '0';
        i_b_sim <= '0';
        i_c_sim <= '0';
        wait for 20 ns;

        i_a_sim <= '0';
        i_b_sim <= '1';
        i_c_sim <= '0';
        wait for 20 ns;

        i_a_sim <= '1';
        i_b_sim <= '0';
        i_c_sim <= '0';
        wait for 20 ns;

        i_a_sim <= '1';
        i_b_sim <= '1';
        i_c_sim <= '0';
        wait for 20 ns;

        i_a_sim <= '0';
        i_b_sim <= '0';
        i_c_sim <= '1';
        wait for 20 ns;

        i_a_sim <= '0';
        i_b_sim <= '1';
        i_c_sim <= '1';
        wait for 20 ns;

        i_a_sim <= '1';
        i_b_sim <= '0';
        i_c_sim <= '1';
        wait for 20 ns;

        i_a_sim <= '1';
        i_b_sim <= '1';
        i_c_sim <= '1';
        wait for 20 ns;
    end process;
end architecture;
