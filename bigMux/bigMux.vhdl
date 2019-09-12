library ieee;
use ieee.std_logic_1164.all;

entity bigMux is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inC : in std_logic;
        inD : in std_logic;
        inS : in std_logic_vector(1 downto 0);
        outF : out std_logic
    );
end entity;

architecture behave of bigMux is
signal outputF : std_logic;
begin
    outputF <= inA when inS = "00" else
                inB when inS = "01" else
                inC when inS = "10" else
                inD;
    outF <= outputF;
end architecture;
