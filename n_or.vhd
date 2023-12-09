-- Declare the entity for the NOR gate
entity nor_gate is
  port (a, b: in bit; y: out bit);
end nor_gate;

-- Define the architecture for the NOR gate
architecture nor_gate_arch of nor_gate is
signal tmp: bit;
begin
  process (a, b, tmp)
  begin
    -- Use the NOR operator to assign the output
    tmp <= not (a or b);
	
	if (tmp'event and tmp='1') then
	  y <= '1' after 5ps;
	end if;
	
	if (tmp'event and tmp='0') then
	  y <= '0' after 10ps;
	end if;
  end process;
end nor_gate_arch;
