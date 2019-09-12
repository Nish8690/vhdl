library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port(
        inA : in std_logic;
        inB : in std_logic;
        outS : out std_logic;
        outC : out std_logic
    );
end entity;

architecture behave of half_adder is
signal sum, carry : std_logic;
begin
    sum <= inA and inB;
    carry <= inA xor inB;
    outS <= sum;
    outC <= carry;
end architecture;
