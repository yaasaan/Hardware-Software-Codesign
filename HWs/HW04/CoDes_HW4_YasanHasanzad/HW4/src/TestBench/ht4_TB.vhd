library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity ht4_tb is
end ht4_tb;

architecture TB_ARCHITECTURE of ht4_tb is
	-- Component declaration of the tested unit
	component ht4
	port(
		input : in STD_LOGIC;
		reset : in STD_LOGIC;
		clock : in STD_LOGIC;
		output : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal input : STD_LOGIC;
	signal reset : STD_LOGIC;
	signal clock : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : ht4
		port map (
			input => input,
			reset => reset,
			clock => clock,
			output => output
		);

	-- Add your stimulus here ...
	reset <= '1' , '0' after 1ns ;
	process
	begin 
		clock <= '0';
		wait for 1ns;
		clock <= '1';
		wait for 1ns;
	end process;
	
	process
	begin
		
		wait until reset = '0';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '0';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '0';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '0';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '1';
		wait until rising_edge(clock); input <= '0';
		
		
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_ht4 of ht4_tb is
	for TB_ARCHITECTURE
		for UUT : ht4
			use entity work.ht4(ht4);
		end for;
	end for;
end TESTBENCH_FOR_ht4;

