library ieee;
use ieee.std_logic_1164.all;

entity example_and_tb is
end entity;

architecture behave of example_and_tb is
component example_and is
    port(
        inputA : in std_logic;
        inputB : in std_logic;
        outputF : out std_logic
    );
end component;

signal inA, inB, outF : std_logic;

begin
    mapping : example_and port map(inA, inB, outF);

    process begin
        inA <= '0';
        inB <= '0';
        wait for 10 ns;

        inA <= '0';
        inB <= '1';
        wait for 10 ns;

        inA <= '1';
        inB <= '0';
        wait for 10 ns;

        inA <= '1';
        inB <= '1';
        wait for 10 ns;
    end process;
end architecture;
