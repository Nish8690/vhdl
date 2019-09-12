library ieee;
use ieee.std_logic_1164.all;

entity adder4bit_2 is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : in std_logic;
        o_s : out std_logic_vector(3 downto 0);
        o_c : out std_logic
    );
end entity;

architecture behavorial of adder4bit_2 is
component fulladder is
    port(
        i_a : in std_logic;
        i_b : in std_logic;
        i_c : in std_logic;
        o_s : out std_logic;
        o_c : out std_logic
    );
end component;
signal c1, c2, c3 : std_logic;
begin
    u1 : fulladder port map(i_a(0), i_b(0), i_c, o_s(0), c1);
    u2 : fulladder port map(i_a(1), i_b(1), c1, o_s(1), c2);
    u3 : fulladder port map(i_a(2), i_b(2), c2, o_s(2), c3);
    u4 : fulladder port map(i_a(3), i_b(3), c3, o_s(3), o_c);
end architecture;
