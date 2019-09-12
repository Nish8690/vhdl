library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_tb is
end entity;

architecture dut of counter_tb is
component counter is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0);
        o_en : out std_logic
    );
end component;

signal i_clk_sim, i_en_sim, i_rst_sim, o_en : std_logic;
signal o_data_sim : std_logic_vector(3 downto 0);
constant clock_period : time := 20 ns;

begin
    mapping :counter port map(i_clk_sim, i_en_sim, i_rst_sim, o_data_sim, o_en);
    clock_process : process begin
        i_clk_sim <= '1';
        wait for clock_period/2;
        i_clk_sim <= '0';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        i_rst_sim <= '1';
        i_en_sim <= '0';
        wait for clock_period;
        i_rst_sim <= '0';
        i_en_sim <= '1';
        wait;
    end process;
end architecture;
