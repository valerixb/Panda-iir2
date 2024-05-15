-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: MaxIV:Panda_ModelComp:iir2mc:1.0
-- IP Revision: 345917982

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.iir2mc;

ENTITY iir2mc_bd_iir2mc_1_0 IS
  PORT (
    a0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ce : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_x0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    res : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    ce_output : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_x0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END iir2mc_bd_iir2mc_1_0;

ARCHITECTURE iir2mc_bd_iir2mc_1_0_arch OF iir2mc_bd_iir2mc_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF iir2mc_bd_iir2mc_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT iir2mc IS
    PORT (
      a0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      a1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      a2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      b1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      b2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ce : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_x0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      res : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      clk : IN STD_LOGIC;
      clr : IN STD_LOGIC;
      ce_output : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_x0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT iir2mc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF iir2mc_bd_iir2mc_1_0_arch: ARCHITECTURE IS "iir2mc,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF iir2mc_bd_iir2mc_1_0_arch : ARCHITECTURE IS "iir2mc_bd_iir2mc_1_0,iir2mc,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF iir2mc_bd_iir2mc_1_0_arch: ARCHITECTURE IS "sysgen";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF a0: SIGNAL IS "XIL_INTERFACENAME a0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF a0: SIGNAL IS "xilinx.com:signal:data:1.0 a0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF a1: SIGNAL IS "XIL_INTERFACENAME a1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF a1: SIGNAL IS "xilinx.com:signal:data:1.0 a1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF a2: SIGNAL IS "XIL_INTERFACENAME a2, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF a2: SIGNAL IS "xilinx.com:signal:data:1.0 a2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF b1: SIGNAL IS "XIL_INTERFACENAME b1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF b1: SIGNAL IS "xilinx.com:signal:data:1.0 b1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF b2: SIGNAL IS "XIL_INTERFACENAME b2, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF b2: SIGNAL IS "xilinx.com:signal:data:1.0 b2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ce: SIGNAL IS "XIL_INTERFACENAME ce, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF ce: SIGNAL IS "xilinx.com:signal:clockenable:1.0 ce CE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ce_output: SIGNAL IS "XIL_INTERFACENAME ce_output, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF ce_output: SIGNAL IS "xilinx.com:signal:data:1.0 ce_output DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN iir2mc_bd_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clr: SIGNAL IS "XIL_INTERFACENAME clr, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF clr: SIGNAL IS "xilinx.com:signal:data:1.0 clr DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_x0: SIGNAL IS "XIL_INTERFACENAME in_x0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF in_x0: SIGNAL IS "xilinx.com:signal:data:1.0 in_x0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_x0: SIGNAL IS "XIL_INTERFACENAME out_x0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF out_x0: SIGNAL IS "xilinx.com:signal:data:1.0 out_x0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF res: SIGNAL IS "XIL_INTERFACENAME res, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF res: SIGNAL IS "xilinx.com:signal:data:1.0 res DATA";
BEGIN
  U0 : iir2mc
    PORT MAP (
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
END iir2mc_bd_iir2mc_1_0_arch;
