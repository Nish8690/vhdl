library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity design is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data1 : out std_logic_vector(3 downto 0);
        o_data2 : out std_logic_vector(3 downto 0);
        o_en : out std_logic
    );
end entity;

architecture tld of design is
component counter is
    port(
        i_clk : in std_logic;
        i_en :in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0);
        o_en : out std_logic
    );
end component;

signal w_en : std_logic;

begin
    counter1 : counter port map(i_clk, i_en, i_rst, o_data1, w_en);
    counter2 : counter port map(i_clk, w_en, i_rst, o_data2, o_en);
end architecture;
