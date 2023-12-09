-- Declare the entity for the testbench
entity nor_gate_tb is
end nor_gate_tb;

-- Define the architecture for the testbench
architecture nor_gate_tb_arch of nor_gate_tb is
  -- Declare the signals for the inputs and output
  signal a, b, y: bit;
  -- Instantiate the NOR gate entity
  component nor_gate
    port (a, b: in bit; y: out bit);
  end component;
begin
  -- Connect the signals to the NOR gate component
  dut: nor_gate port map (a, b, y);
  -- Define the stimulus process
  stimulus: process
  begin
    -- Assign the input values and wait for 100 ps
    a <= '0'; b <= '0'; wait for 100 ps;
    a <= '0'; b <= '1'; wait for 100 ps;
    a <= '1'; b <= '0'; wait for 100 ps;
    a <= '1'; b <= '1'; wait for 100 ps;
    -- Stop the simulation
    wait;
  end process;
end nor_gate_tb_arch;