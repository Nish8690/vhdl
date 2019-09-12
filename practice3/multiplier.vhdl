library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity multiplier is
    port(
        i_a : in std_logic_vector(3 downto 0);
        i_b : in std_logic_vector(3 downto 0);
        i_c : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of multiplier is
begin
    i_c <= i_a * i_b;
end architecture;
