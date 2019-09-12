library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity adder is
    port(
        i_data1 : in std_logic_vector(2 downto 0);
        i_data2 : in std_logic_vector(4 downto 0);
        o_data : out std_logic_vector(5 downto 0)
    );
end entity;

architecture behave5 of adder is
begin
    o_data <= ext(i_data1) + ext(i_data2);
    o_data <= i_data1 + i_data2;
end architecture;
