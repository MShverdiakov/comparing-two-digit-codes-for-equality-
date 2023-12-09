library IEEE;
use IEEE.std_logic_1164.all;

entity testbench1 is 
end;
architecture sim of testbench1 is
	component n_or
		port (a0, a1, b0, b1: in bit; out1: out bit);
	end component;
signal a_0, a_1, b_0, b_1, o: bit;
begin
	dut: n_or port map(a_0, a_1, b_0, b_1, o);
process begin
	a_0 <= '0'; a_1 <= '0'; b_0 <= '0'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	b_0 <= '1'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	a_1 <= '1'; b_0 <= '0'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	b_0 <= '1'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	a_0 <= '1'; a_1 <= '0'; b_0 <= '0'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	b_0 <= '1'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	a_1 <= '1'; b_0 <= '0'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	b_0 <= '1'; b_1 <= '0'; wait for 100 ps;
	b_1 <= '1'; wait for 100 ps;
	wait;
end process;
end;