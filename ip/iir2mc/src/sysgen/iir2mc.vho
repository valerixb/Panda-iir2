  sysgen_dut : entity xil_defaultlib.iir2mc 
  port map (
    a0 => a0,
    a1 => a1,
    a2 => a2,
    b1 => b1,
    b2 => b2,
    ce => ce,
    in_x0 => in_x0,
    res => res,
    clk => clk,
    clr => clr,
    ce_output => ce_output,
    out_x0 => out_x0
  );
