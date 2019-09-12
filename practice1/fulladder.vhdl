library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port(
		i_a : in std_logic;
		i_b : in std_logic;
		i_c : in std_logic;
		o_s : out std_logic;
		o_c : out std_logic
	);
end entity;

architecture behavorial of fulladder is
begin
	o_s <= i_a xor i_b xor i_c;
	o_c <= (i_a and i_b) or (i_b and i_c) or (i_a and i_c);
end architecture;
