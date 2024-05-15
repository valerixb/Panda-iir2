--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon May  6 16:20:29 2024
--Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target iir2mc_bd.bd
--Design      : iir2mc_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity iir2mc_bd is
  port (
    a0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    ce_output : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    in_x0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_x0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    res : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of iir2mc_bd : entity is "iir2mc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=iir2mc_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of iir2mc_bd : entity is "iir2mc_bd.hwdef";
end iir2mc_bd;

architecture STRUCTURE of iir2mc_bd is
  component iir2mc_bd_iir2mc_1_0 is
  port (
    a0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_x0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    ce_output : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_x0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component iir2mc_bd_iir2mc_1_0;
  signal a0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ce_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal clr_1 : STD_LOGIC;
  signal iir2mc_1_ce_output : STD_LOGIC_VECTOR ( 0 to 0 );
  signal iir2mc_1_out_x0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in_x0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal res_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN iir2mc_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clr : signal is "xilinx.com:signal:data:1.0 DATA.CLR DATA";
  attribute X_INTERFACE_PARAMETER of clr : signal is "XIL_INTERFACENAME DATA.CLR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a0 : signal is "xilinx.com:signal:data:1.0 DATA.A0 DATA";
  attribute X_INTERFACE_PARAMETER of a0 : signal is "XIL_INTERFACENAME DATA.A0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a1 : signal is "xilinx.com:signal:data:1.0 DATA.A1 DATA";
  attribute X_INTERFACE_PARAMETER of a1 : signal is "XIL_INTERFACENAME DATA.A1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a2 : signal is "xilinx.com:signal:data:1.0 DATA.A2 DATA";
  attribute X_INTERFACE_PARAMETER of a2 : signal is "XIL_INTERFACENAME DATA.A2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b1 : signal is "xilinx.com:signal:data:1.0 DATA.B1 DATA";
  attribute X_INTERFACE_PARAMETER of b1 : signal is "XIL_INTERFACENAME DATA.B1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b2 : signal is "xilinx.com:signal:data:1.0 DATA.B2 DATA";
  attribute X_INTERFACE_PARAMETER of b2 : signal is "XIL_INTERFACENAME DATA.B2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ce : signal is "xilinx.com:signal:clockenable:1.0 CE.CE CE";
  attribute X_INTERFACE_PARAMETER of ce : signal is "XIL_INTERFACENAME CE.CE, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ce_output : signal is "xilinx.com:signal:data:1.0 DATA.CE_OUTPUT DATA";
  attribute X_INTERFACE_PARAMETER of ce_output : signal is "XIL_INTERFACENAME DATA.CE_OUTPUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of in_x0 : signal is "xilinx.com:signal:data:1.0 DATA.IN_X0 DATA";
  attribute X_INTERFACE_PARAMETER of in_x0 : signal is "XIL_INTERFACENAME DATA.IN_X0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of out_x0 : signal is "xilinx.com:signal:data:1.0 DATA.OUT_X0 DATA";
  attribute X_INTERFACE_PARAMETER of out_x0 : signal is "XIL_INTERFACENAME DATA.OUT_X0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of res : signal is "xilinx.com:signal:data:1.0 DATA.RES DATA";
  attribute X_INTERFACE_PARAMETER of res : signal is "XIL_INTERFACENAME DATA.RES, LAYERED_METADATA undef";
begin
  a0_1(31 downto 0) <= a0(31 downto 0);
  a1_1(31 downto 0) <= a1(31 downto 0);
  a2_1(31 downto 0) <= a2(31 downto 0);
  b1_1(31 downto 0) <= b1(31 downto 0);
  b2_1(31 downto 0) <= b2(31 downto 0);
  ce_1(0) <= ce(0);
  ce_output(0) <= iir2mc_1_ce_output(0);
  clk_1 <= clk;
  clr_1 <= clr;
  in_x0_1(31 downto 0) <= in_x0(31 downto 0);
  out_x0(31 downto 0) <= iir2mc_1_out_x0(31 downto 0);
  res_1(0) <= res(0);
iir2mc_1: component iir2mc_bd_iir2mc_1_0
     port map (
      a0(31 downto 0) => a0_1(31 downto 0),
      a1(31 downto 0) => a1_1(31 downto 0),
      a2(31 downto 0) => a2_1(31 downto 0),
      b1(31 downto 0) => b1_1(31 downto 0),
      b2(31 downto 0) => b2_1(31 downto 0),
      ce(0) => ce_1(0),
      ce_output(0) => iir2mc_1_ce_output(0),
      clk => clk_1,
      clr => clr_1,
      in_x0(31 downto 0) => in_x0_1(31 downto 0),
      out_x0(31 downto 0) => iir2mc_1_out_x0(31 downto 0),
      res(0) => res_1(0)
    );
end STRUCTURE;
