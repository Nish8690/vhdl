library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fsm_tb is
end entity;

architecture dut of fsm_tb is
component fsm is
    port(
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_p : in std_logic;
        i_r : out std_logic
    );
end component;

signal i_clk_sim, i_rst_sim, i_p_sim, i_r_sim : std_logic;
constant clock_period : time := 20 ns;

begin
    mapping : fsm port map(i_clk_sim, i_rst_sim, i_p_sim, i_r_sim);

    clock_process : process begin
        i_clk_sim <= '0';
        wait for clock_period/2;
        i_clk_sim <= '1';
        wait for clock_period/2;
    end process;

    stimulus_process : process begin
        i_rst_sim <= '1';
        i_p_sim <= '0';
        wait for clock_period * 2;
        i_rst_sim <= '0';
        i_p_sim <= '1';
        wait;
    end process;
end architecture;
