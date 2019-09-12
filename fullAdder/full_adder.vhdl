library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inC : in std_logic;
        outS : out std_logic;
        outC : out std_logic
    );
end entity;

architecture behave of full_adder is
signal sum, carry : std_logic;
begin
    sum <= inA xor (inB xor inC);
    carry <= (inA and inB) or (inC and (inA xor inB));
    outS <= sum;
    outC <= carry;
end architecture;
