entity comparator_conf is
	port(a0, a1, b0, b1: in bit; out1: out bit);
end;

architecture synth of comparator_conf is
	component nor_gate
		port(a, b: in bit; y: out bit);
	end component;
signal not_a0, not_a1, not_b0, not_b1: bit;
signal s1, s2, s3, s4, s5, s6: bit;
begin
    not_a0 <= not a0;
    not_a1 <= not a1;
    not_b0 <= not b0;
    not_b1 <= not b1;
    
    n1: nor_gate generic map(N) port map(a0, not_b0, s1);
    n2: nor_gate generic map(N) port map(not_a0, b0, s2);
    n3: nor_gate generic map(N) port map(not_a1, b1, s3);
    n4: nor_gate generic map(N) port map(a1, not_b1, s4);
    n5: nor_gate generic map(N) port map(s1, s2, s5);
    n6: nor_gate generic map(N) port map(s3, s4, s6);
    
    out1 <= not (not s5 or not s6);
end architecture synth;