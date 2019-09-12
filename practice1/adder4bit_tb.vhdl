library ieee;
use ieee.std_logic_1164.all;

entity adder4bit_tb is
end entity;

architecture dut of adder4bit_tb is
component adder4bit is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : in std_logic;
        o_s : out std_logic_vector(3 downto 0);
        o_c : out std_logic
    );
end component;
signal i_a_sim, i_b_sim, o_s_sim : std_logic_vector(3 downto 0);
signal i_c_sim, o_c_sim : std_logic;
begin
    mapping : adder4bit port map(i_a_sim, i_b_sim, i_c_sim, o_s_sim, o_c_sim);
    process begin
        i_a_sim <= "0000";
        i_b_sim <= "0000";
        i_c_sim <= '1';
        wait for 20 ns;

        i_a_sim <= "0010";
        i_b_sim <= "0100";
        i_c_sim <= '1';
        wait for 20 ns;
    end process;
end architecture;
