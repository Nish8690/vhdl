library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end entity;

architecture dut of mux_tb is
component mux is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inS : in std_logic;
        outF : out std_logic
    );
end component;

signal inA_sim, inB_sim, inS_sim, outF_sim : std_logic;

begin
    mapping : mux port map(inA_sim, inB_sim, inS_sim, outF_sim);

    process begin
        inA_sim <= '0';
        inB_sim <= '0';
        inS_sim <= '0';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '1';
        inS_sim <= '0';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '0';
        inS_sim <= '0';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '1';
        inS_sim <= '0';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '0';
        inS_sim <= '1';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '1';
        inS_sim <= '1';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '0';
        inS_sim <= '1';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '1';
        inS_sim <= '1';
        wait for 20 ns;
    end process;
end architecture;
