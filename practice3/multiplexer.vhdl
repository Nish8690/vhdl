library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplexer is
    port(
        i_d0: in std_logic;
        i_d1 : in std_logic;
        i_d2 : in std_logic;
        i_d3 : in std_logic;
        i_s : in std_logic_vector(1 downto 0);
        o_data : out std_logic
    );
end entity;

architecture rtl of multiplexer is
begin
    with i_s select
        o_data <= i_d0 when "00",
                  i_d1 when "01",
                  i_d2 when "10",
                  i_d3 when "11",
                  '0' when others;
end architecture;
