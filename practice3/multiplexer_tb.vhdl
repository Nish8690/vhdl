library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplexer_tb is
end entity;

architecture dut of multiplexer_tb is
component multiplexer is
    port(
        i_d0 : in std_logic;
        i_d1 : in std_logic;
        i_d2 : in std_logic;
        i_d3 : in std_logic;
        i_s : in std_logic_vector(1 downto 0);
        o_data : out std_logic
    );
end component;

signal i_d0_sim, i_d1_sim, i_d2_sim, i_d3_sim, o_data_sim : std_logic;
signal i_s_sim : std_logic_vector(1 downto 0);

begin
    mapping : multiplexer port map(i_d0_sim, i_d1_sim, i_d2_sim, i_d3_sim, i_s_sim, o_data_sim);

    process begin
        i_d0_sim <= '1';
        i_d1_sim <= '0';
        i_d2_sim <= '0';
        i_d3_sim <= '0';
        i_s_sim <= "00";
        wait for 20 ns;

        i_d0_sim <= '0';
        i_d1_sim <= '1';
        i_d2_sim <= '0';
        i_d3_sim <= '0';
        i_s_sim <= "01";
        wait for 20 ns;

        i_d0_sim <= '0';
        i_d1_sim <= '0';
        i_d2_sim <= '1';
        i_d3_sim <= '0';
        i_s_sim <= "10";
        wait for 20 ns;

        i_d0_sim <= '0';
        i_d1_sim <= '0';
        i_d2_sim <= '0';
        i_d3_sim <= '1';
        i_s_sim <= "11";
        wait for 20 ns;
    end process;
end architecture;
