-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity iir2mc_stub is
  port (
    a0 : in std_logic_vector( 32-1 downto 0 );
    a1 : in std_logic_vector( 32-1 downto 0 );
    a2 : in std_logic_vector( 32-1 downto 0 );
    b1 : in std_logic_vector( 32-1 downto 0 );
    b2 : in std_logic_vector( 32-1 downto 0 );
    ce : in std_logic_vector( 1-1 downto 0 );
    in_x0 : in std_logic_vector( 32-1 downto 0 );
    res : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    clr : in std_logic;
    ce_output : out std_logic_vector( 1-1 downto 0 );
    out_x0 : out std_logic_vector( 32-1 downto 0 )
  );
end iir2mc_stub;
architecture structural of iir2mc_stub is 
begin
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
end structural;
