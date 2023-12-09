entity Circuit1 is
	port (a0, a1, b0, b1: in bit; out1: out bit);
end Circuit1;

architecture synth of Circuit1 is 
begin
	process
	begin
		wait on a0, a1, b0, b1;
		if (a0 = b0 and a1 = b1) then
			out1 <= '1' after 10 ps;
		else
			out1 <= '0' after 5 ps;
		end if;
	end process;
end synth;