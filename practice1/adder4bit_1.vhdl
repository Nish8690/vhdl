library ieee;
use ieee.std_logic_1164.all;

entity adder4bit is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : in std_logic;
        o_s : out std_logic_vector(3 downto 0);
        o_c : out std_logic
    );
end entity;

architecture behavorial of adder4bit is
signal c1, c2, c3 : std_logic;
begin
    o_s(0) <= i_a(0) xor i_b(0) xor i_c;
    c1 <= (i_a(0) and i_b(0)) or (i_b(0) and i_c) or (i_a(0) and i_c);

    o_s(1) <= i_a(1) xor i_b(1) xor c1;
    c2 <= (i_a(1) and i_b(1)) or (i_b(1) and c1) or (i_a(1) and c1);

    o_s(2) <= i_a(2) xor i_b(2) xor c2;
    c3 <= (i_a(2) and i_b(2)) or (i_b(2) and c2) or (i_a(2) and c2);

    o_s(3) <= i_a(3) xor i_b(3) xor c3;
    o_c <= (i_a(3) and i_b(3)) or (i_b(3) and c3) or (i_a(3) and c3);
end architecture;
