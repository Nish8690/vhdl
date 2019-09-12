library ieee;
use ieee.std_logic_1164.all;

entity my_register_tb is
end entity;

architecture dut of my_register_tb is
component my_register is
    port(
        i_data : in std_logic;
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic
    );
end component;

signal i_data_sim, i_en_sim, i_clk_sim, i_rst_sim, o_data_sim : std_logic;
constant clock_period : time := 20 ns;

begin
    mapping : my_register port map(i_data_sim, i_en_sim, i_clk_sim, i_rst_sim, o_data_sim);

    clock_process : process begin
        i_clk_sim <= '0';
        wait for clock_period/2;
        i_clk_sim <= '1';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        i_rst_sim <= '1';
        i_en_sim <= '1';
        i_data_sim <= '0';
        wait for 20 ns;
        i_rst_sim <= '0';
        i_en_sim <= '1';
        i_data_sim <= '1';
        wait for clock_period * 10;
    end process;
end architecture;
