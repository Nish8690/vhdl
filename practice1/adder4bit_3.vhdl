library ieee;
use ieee.std_logic_1164.all;

entity adder4bit_3 is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : in std_logic;
        o_s : out std_logic_vector(3 downto 0);
        o_c : out std_logic
    );
end entity;

architecture behave of adder4bit_3 is
component fulladder is
    port(
        i_a : in std_logic;
        i_b : in std_logic;
        i_c : in std_logic;
        o_s : out std_logic;
        o_c : out std_logic
    );
end component;

signal w_c : std_logic_vector(4 downto 0);

begin
    gen : for i in 0 to 3 generate
        uut : fulladder port map(i_a(i), i_b(i), w_c(i), o_s(i), w_c(i+1));
    end generate;

    w_c(0) <= i_c;
    o_c <= w_c(4);
end architecture;
