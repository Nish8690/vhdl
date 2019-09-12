library ieee;
use ieee.std_logic_1164.all;

entity flipflop_tb is
end entity;

architecture dut of flipflop_tb is
component flipflop is
    port(
        i_data : in std_logic_vector(3 downto 0);
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0)
    );
end component;

signal i_data_sim, o_data_sim : std_logic_vector(3 downto 0);
signal i_clk_sim, i_en_sim, i_rst_sim : std_logic;
constant clock_period : time := 20 ns;

begin
    mapping : flipflop port map(i_data_sim, i_clk_sim, i_en_sim, i_rst_sim, o_data_sim);

    clock_process: process begin
        i_clk_sim <= '0';
        wait for clock_period/2;
        i_clk_sim <= '1';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        i_data_sim <= "0000";
        i_rst_sim <= '1';
        i_en_sim <= '0';
        wait for clock_period * 2;

        i_data_sim <= "1101";
        i_rst_sim <= '0';
        i_en_sim <= '1';
        wait for clock_period * 4;

        i_data_sim <= "0101";
        i_rst_sim <= '0';
        i_en_sim <= '1';
        wait for clock_period*4;
    end process;
end architecture;
