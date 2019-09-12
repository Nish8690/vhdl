library ieee;
use ieee.std_logic_1164.all;

entity example_and is
    port(
        inputA : in std_logic;
        inputB : in std_logic;
        outputF : out std_logic
    );
end entity;

architecture behave of example_and is
    signal and_gate : std_logic;
    begin
        process(inputA, inputB) begin
            and_gate <= inputA and inputB;
        end process;
        outputF <= and_gate;
end architecture;
