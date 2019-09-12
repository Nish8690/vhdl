library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter1_tb is
end entity;

architecture dut of counter1_tb is
component counter1 is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(2 downto 0);
        o_en : out std_logic;
        o_clk : out std_logic;
        o_rst : out std_logic
    );
end component;

component counter2 is
    port(
        i_clk : in std_logic;
        i_en : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(4 downto 0);
        o_en : out std_logic
    );
end component;

component flipflop1 is
    port(
        i_data : in std_logic_vector(2 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(2 downto 0)
    );
end component;

component flipflop2 is
    port(
        i_data : in std_logic_vector(4 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(4 downto 0)
    );
end component;

component adder is
    port(
        i_data1 : in std_logic_vector(2 downto 0);
        i_data2 : in std_logic_vector(4 downto 0);
        o_data : out std_logic_vector(5 downto 0)
    );
end component;

component final_register is
    port(
        i_data : in std_logic_vector(5 downto 0);
        i_en : in std_logic;
        i_clk : in std_logic;
        i_rst : in std_logic;
        o_data : out std_logic_vector(5 downto 0)
    );
end component;

signal i_clk_sim, i_en_sim, i_rst_sim, o_en1_sim, o_en2_sim, o_clk_sim, o_rst_sim : std_logic;
signal o_data1_sim : std_logic_vector(2 downto 0);
signal o_data2_sim : std_logic_vector(4 downto 0);
signal o_data3_sim : std_logic_vector(2 downto 0);
signal o_data4_sim : std_logic_vector(4 downto 0);
signal o_data5_sim : std_logic_vector(5 downto 0);
signal o_final_sim : std_logic_vector(5  downto 0);

constant clock_period : time := 20 ns;

begin
    mapping1 : counter1 port map(i_clk_sim, i_en_sim, i_rst_sim, o_data1_sim, o_en1_sim, o_clk_sim, o_rst_sim);
    mapping2 : counter2 port map(i_clk_sim, o_en1_sim, i_rst_sim, o_data2_sim, o_en2_sim);
    mapping3 : flipflop1 port map(o_data1_sim, o_en2_sim, o_clk_sim, o_rst_sim, o_data3_sim);
    mapping4 : flipflop2 port map(o_data2_sim, o_en2_sim, o_clk_sim, o_rst_sim, o_data4_sim);
    mapping5 : adder port map(o_data3_sim, o_data4_sim, o_data5_sim);
    mapping6 : final_register port map(o_data5_sim, o_en2_sim, o_clk_sim, o_rst_sim, o_final_sim);

    clock_process : process begin
        i_clk_sim <= '0';
        wait for clock_period/2;
        i_clk_sim <= '1';
        wait for clock_period/2;
    end process;

    simulation_process : process begin
        i_rst_sim <= '1';
        i_en_sim <= '0';
        wait for clock_period * 2;
        i_rst_sim <= '0';
        i_en_sim <= '1';
        wait;
    end process;
end architecture;
