library ieee;
use ieee.std_logic_1164.all;

entity example_and_tb is
end entity;

architecture rtl of example_and_tb is
    component example_and is
        port(
            input1 : in std_logic;
            input2 : in std_logic;
            and_result : out std_logic
        );
    end component;

    signal inA, inB, outF : std_logic;

begin
    mapping : example_and port map(inA, inB, outF);

    process begin
        inA <= '0';
        inB <= '0';
        wait for 15 ns;

        inA <= '0';
        inB <= '1';
        wait for 15 ns;

        inA <= '1';
        inB <= '0';
        wait for 15 ns;

        inA <= '1';
        inB <= '1';
        wait for 15 ns;
    end process;
end architecture;
