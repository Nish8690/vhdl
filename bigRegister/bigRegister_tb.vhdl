library ieee;
use ieee.std_logic_1164.all;

entity big_register_tb is
end entity;

architecture dut of big_register_tb is
component big_register is
    port(
        i_data : in std_logic_vector(3 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(3 downto 0)
    );
end component;

signal i_en_sim, i_clk_sim, i_rst_sim : std_logic;
signal i_data_sim, o_data_sim : std_logic_vector(3 downto 0);
constant clock_period : time := 20 ns;

begin
    mapping : big_register port map(i_data_sim, i_en_sim, i_clk_sim, i_rst_sim, o_data_sim);

    clock_process : process begin
        i_clk_sim <= '0';
        wait for clock_period/2;
        i_clk_sim <= '1';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        i_data_sim <= "0000";
        i_en_sim <= '0';
        i_rst_sim <= '1';
        wait for clock_period * 5;

        i_data_sim <= "1111";
        i_en_sim <= '1';
        i_rst_sim <= '0';
        wait for clock_period * 20;
    end process;
end architecture;
