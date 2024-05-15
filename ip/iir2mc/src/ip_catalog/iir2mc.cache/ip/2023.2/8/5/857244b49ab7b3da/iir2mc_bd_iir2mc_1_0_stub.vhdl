-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon May  6 16:22:15 2024
-- Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iir2mc_bd_iir2mc_1_0_stub.vhdl
-- Design      : iir2mc_bd_iir2mc_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a0[31:0],a1[31:0],a2[31:0],b1[31:0],b2[31:0],ce[0:0],in_x0[31:0],res[0:0],clk,clr,ce_output[0:0],out_x0[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "iir2mc,Vivado 2023.2";
begin
end;
