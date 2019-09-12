library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        o_c : out std_logic_vector(4 downto 0)
    );
end entity;

architecture rtl of adder is
begin
    o_c <= ('0'&i_a) + ('0'&i_b);
end architecture;
