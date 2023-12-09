library ieee;
use ieee.std_logic_1164.all;


Entity n_or is
	-- Generic (T10: time := 5 ps; T01: time := 10 ps); 
	Port(a0, a1, b0, b1: in bit; out1 : out bit);
End n_or;
Architecture proc_nor of n_or is
Begin
	-- Process (a0, a1, b0, b1, buf)
	-- begin
		out1 <= (not (a0 or a1 or b0 or b1));
	-- end process;
end proc_nor;