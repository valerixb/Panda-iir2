--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon May  6 16:20:30 2024
--Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target iir2mc_bd_wrapper.bd
--Design      : iir2mc_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity iir2mc_bd_wrapper is
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
end iir2mc_bd_wrapper;

architecture STRUCTURE of iir2mc_bd_wrapper is
  component iir2mc_bd is
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
  end component iir2mc_bd;
begin
iir2mc_bd_i: component iir2mc_bd
     port map (
      a0(31 downto 0) => a0(31 downto 0),
      a1(31 downto 0) => a1(31 downto 0),
      a2(31 downto 0) => a2(31 downto 0),
      b1(31 downto 0) => b1(31 downto 0),
      b2(31 downto 0) => b2(31 downto 0),
      ce(0) => ce(0),
      ce_output(0) => ce_output(0),
      clk => clk,
      clr => clr,
      in_x0(31 downto 0) => in_x0(31 downto 0),
      out_x0(31 downto 0) => out_x0(31 downto 0),
      res(0) => res(0)
    );
end STRUCTURE;
