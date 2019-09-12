library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
    port(
        i_data1 : in std_logic;
        i_data2 : in std_logic;
        i_data3 : in std_logic;
        i_data4 : in std_logic;
        i_select1 : in std_logic;
        i_select2 : in std_logic;
        o_data : out std_logic
    );
end entity;

architecture behavioral of multiplexer is
signal w_data : std_logic;
