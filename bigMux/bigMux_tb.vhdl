library ieee;
use ieee.std_logic_1164.all;

entity bigMux_tb is
end entity;

architecture dut of bigMux_tb is
component bigMux is
    port(
        inA : in std_logic;
        inB : in std_logic;
        inC : in std_logic;
        inD : in std_logic;
        inS : in std_logic_vector(1 downto 0);
        outF : out std_logic
    );
end component;

signal inA_sim, inB_sim, inC_sim, inD_sim, outF_sim : std_logic;
signal inS_sim : std_logic_vector(1 downto 0);

begin
    mapping : bigMux port map(inA_sim, inB_sim, inC_sim, inD_sim, inS_sim, outF_sim);

    process begin
        inA_sim <= '1';
        inB_sim <= '0';
        inC_sim <= '0';
        inD_sim <= '0';
        inS_sim <= "00";
        wait for 20 ns;


        inA_sim <= '0';
        inB_sim <= '1';
        inC_sim <= '0';
        inD_sim <= '0';
        inS_sim <= "01";
        wait for 20 ns;


        inA_sim <= '0';
        inB_sim <= '0';
        inC_sim <= '1';
        inD_sim <= '0';
        inS_sim <= "10";
        wait for 20 ns;


        inA_sim <= '0';
        inB_sim <= '0';
        inC_sim <= '0';
        inD_sim <= '1';
        inS_sim <= "11";
        wait for 20 ns;
    end process;
end architecture;
