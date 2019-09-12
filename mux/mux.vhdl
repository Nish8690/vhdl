library ieee;
use ieee.std_logic_1164.all;

entity mux is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inS : in std_logic;
        outF : out std_logic
    );
end entity;

architecture behave of mux is
signal outputF : std_logic;
begin
    outputF <= inA when inS = '0' else inB;
    outF <= outputF;
end architecture;
