library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end entity;

architecture dut of full_adder_tb is
component full_adder is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inC : in std_logic;
        outS : out std_logic;
        outC : out std_logic
    );
end component;

signal inA_sim, inB_sim, inC_sim, outS_sim, outC_sim : std_logic;

begin
    mapping : full_adder port map(inA_sim, inB_sim, inC_sim, outS_sim, outC_sim);

    process begin
        inA_sim <= '0';
        inB_sim <= '0';
        inC_sim <= '0';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '1';
        inC_sim <= '0';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '0';
        inC_sim <= '0';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '1';
        inC_sim <= '0';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '0';
        inC_sim <= '1';
        wait for 20 ns;

        inA_sim <= '0';
        inB_sim <= '1';
        inC_sim <= '1';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '0';
        inC_sim <= '1';
        wait for 20 ns;

        inA_sim <= '1';
        inB_sim <= '1';
        inC_sim <= '1';
        wait for 20 ns;
    end process;
end architecture;
