library ieee;
use ieee.std_logic_1164.all;

entity example_and is
	port(
		input1 : in std_logic;
		input2 : in std_logic;
		and_result : out std_logic
	);
end entity;

architecture rtl of example_and is
	signal and_gate : std_logic;
begin
		and_gate <= input1 and input2;
		and_result <= and_gate;
end architecture;
