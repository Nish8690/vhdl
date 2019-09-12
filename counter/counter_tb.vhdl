library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end entity;

architecture dut of counter_tb is
component counter is
    port(
        rst : in std_logic;
        clk : in std_logic;
        outF : out std_logic_vector(3 downto 0)
    );
end component;

signal rst_sim, clk_sim : std_logic;
signal outF_sim : std_logic_vector(3 downto 0);
constant clock_period : time := 20 ns;

begin
    mapping : counter port map(rst_sim, clk_sim, outF_sim);

    clock_process : process begin
        clk_sim <= '0';
        wait for clock_period/2;
        clk_sim <= '1';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        rst_sim <= '1';
        wait for clock_period * 2;
        rst_sim <= '0';
        wait;
    end process;
end architecture;
