library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity multiplier_tb is
end entity;

architecture dut of multiplier_tb is
component multiplier is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : out std_logic_vector(7 downto 0)
    );
end component;

signal i_a_sim, i_b_sim : std_logic_vector(3 downto 0);
signal i_c_sim : std_logic_vector(7 downto 0);

begin
    mapping : multiplier port map(i_a_sim, i_b_sim, i_c_sim);
    process begin
        i_a_sim <= "0011";
        i_b_sim <= "1100";
        wait for 20 ns;

        i_a_sim <= "0101";
        i_b_sim <= "0111";
        wait for 20 ns;
    end process;
end architecture;
