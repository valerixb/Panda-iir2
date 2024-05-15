-- Generated from Simulink block notch_tb_varTs/iir2mc_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iir2mc_struct is
  port (
    a0 : in std_logic_vector( 32-1 downto 0 );
    a1 : in std_logic_vector( 32-1 downto 0 );
    a2 : in std_logic_vector( 32-1 downto 0 );
    b1 : in std_logic_vector( 32-1 downto 0 );
    b2 : in std_logic_vector( 32-1 downto 0 );
    ce : in std_logic_vector( 1-1 downto 0 );
    in_x0 : in std_logic_vector( 32-1 downto 0 );
    res : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_125 : in std_logic;
    ce_125 : in std_logic;
    ce_output : out std_logic_vector( 1-1 downto 0 );
    out_x0 : out std_logic_vector( 32-1 downto 0 )
  );
end iir2mc_struct;
architecture structural of iir2mc_struct is 
  signal down_sample3_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult10_p_net : std_logic_vector( 32-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 32-1 downto 0 );
  signal res_net : std_logic_vector( 1-1 downto 0 );
  signal src_clk_net : std_logic;
  signal src_ce_net : std_logic;
  signal a1_net : std_logic_vector( 32-1 downto 0 );
  signal a2_net : std_logic_vector( 32-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub11_s_net : std_logic_vector( 32-1 downto 0 );
  signal a0_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal b1_net : std_logic_vector( 32-1 downto 0 );
  signal b2_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal in_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub9_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample4_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample12_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample13_q_net : std_logic_vector( 1-1 downto 0 );
  signal assert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
begin
  a0_net <= a0;
  a1_net <= a1;
  a2_net <= a2;
  b1_net <= b1;
  b2_net <= b2;
  ce_net_x0 <= ce;
  ce_output <= clock_enable_probe_q_net;
  in_net <= in_x0;
  out_x0 <= up_sample_q_net;
  res_net <= res;
  src_clk_net <= clk_1;
  src_ce_net <= ce_1;
  clk_net <= clk_125;
  ce_net <= ce_125;
  addsub10 : entity xil_defaultlib.iir2mc_xlfpaddsub 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i0",
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    quantization => 2,
    s_arith => xlFloat,
    s_bin_pt => 24,
    s_tdata_width => 32,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub8_s_net,
    b => addsub11_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub10_s_net
  );
  addsub11 : entity xil_defaultlib.iir2mc_xlfpaddsub 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i1",
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    quantization => 2,
    s_arith => xlFloat,
    s_bin_pt => 24,
    s_tdata_width => 32,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult8_p_net,
    b => mult10_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub11_s_net
  );
  addsub8 : entity xil_defaultlib.iir2mc_xlfpaddsub 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i1",
    extra_registers => 0,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlFloat,
    s_bin_pt => 24,
    s_tdata_width => 32,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub9_s_net,
    b => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  addsub9 : entity xil_defaultlib.iir2mc_xlfpaddsub 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i1",
    extra_registers => 0,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlFloat,
    s_bin_pt => 24,
    s_tdata_width => 32,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub9_s_net
  );
  assert_x0 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => delay1_q_net,
    dout => assert_dout_net
  );
  clock_enable_probe : entity xil_defaultlib.iir2mc_xlceprobe 
  generic map (
    d_width => 32,
    q_width => 1
  )
  port map (
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe_q_net
  );
  convert1 : entity xil_defaultlib.iir2mc_xlfpconvert 
  generic map (
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i2",
    din_arith => xlSigned,
    din_bin_pt => 31,
    din_tdata_width => 32,
    din_width => 32,
    dout_arith => xlFloat,
    dout_bin_pt => 24,
    dout_tdata_width => 32,
    dout_width => 32,
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    quantization => 1
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.iir2mc_xlfpconvert 
  generic map (
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i3",
    din_arith => xlFloat,
    din_bin_pt => 24,
    din_tdata_width => 32,
    din_width => 32,
    dout_arith => xlSigned,
    dout_bin_pt => 31,
    dout_tdata_width => 32,
    dout_width => 32,
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    quantization => 2
  )
  port map (
    clr => '0',
    en => "1",
    din => assert_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay1 : entity xil_defaultlib.sysgen_delay_1027dfc7fc 
  port map (
    clr => '0',
    d => addsub10_s_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay11 : entity xil_defaultlib.sysgen_delay_1027dfc7fc 
  port map (
    clr => '0',
    d => assert_dout_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay11_q_net
  );
  delay2 : entity xil_defaultlib.sysgen_delay_1027dfc7fc 
  port map (
    clr => '0',
    d => convert1_dout_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay8 : entity xil_defaultlib.sysgen_delay_1027dfc7fc 
  port map (
    clr => '0',
    d => delay9_q_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.sysgen_delay_1027dfc7fc 
  port map (
    clr => '0',
    d => delay2_q_net,
    rst => down_sample12_q_net,
    en => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net
  );
  down_sample1 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 31,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlSigned,
    q_bin_pt => 31,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => in_net,
    rst => down_sample12_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample12 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => res_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample12_q_net
  );
  down_sample13 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => ce_net_x0,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample13_q_net
  );
  down_sample2 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlFloat,
    d_bin_pt => 24,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlFloat,
    q_bin_pt => 24,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => a0_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  down_sample3 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlFloat,
    d_bin_pt => 24,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlFloat,
    q_bin_pt => 24,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => a1_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample3_q_net
  );
  down_sample4 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlFloat,
    d_bin_pt => 24,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlFloat,
    q_bin_pt => 24,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => a2_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample4_q_net
  );
  down_sample5 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlFloat,
    d_bin_pt => 24,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlFloat,
    q_bin_pt => 24,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => b1_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample5_q_net
  );
  down_sample6 : entity xil_defaultlib.iir2mc_xldsamp 
  generic map (
    d_arith => xlFloat,
    d_bin_pt => 24,
    d_width => 32,
    ds_ratio => 125,
    latency => 1,
    phase => 124,
    q_arith => xlFloat,
    q_bin_pt => 24,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => b2_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample6_q_net
  );
  mult10 : entity xil_defaultlib.iir2mc_xlfpmult 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i4",
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    p_arith => xlFloat,
    p_bin_pt => 24,
    p_tdata_width => 32,
    p_width => 32,
    quantization => 2
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample6_q_net,
    b => delay11_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult10_p_net
  );
  mult5 : entity xil_defaultlib.iir2mc_xlfpmult 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i4",
    extra_registers => 0,
    latency => 0,
    overflow => 1,
    p_arith => xlFloat,
    p_bin_pt => 24,
    p_tdata_width => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample2_q_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult5_p_net
  );
  mult7 : entity xil_defaultlib.iir2mc_xlfpmult 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i4",
    extra_registers => 0,
    latency => 0,
    overflow => 1,
    p_arith => xlFloat,
    p_bin_pt => 24,
    p_tdata_width => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample3_q_net,
    b => delay9_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.iir2mc_xlfpmult 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i4",
    extra_registers => 0,
    latency => 0,
    overflow => 2,
    p_arith => xlFloat,
    p_bin_pt => 24,
    p_tdata_width => 32,
    p_width => 32,
    quantization => 2
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample5_q_net,
    b => assert_dout_net,
    clk => clk_net,
    ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.iir2mc_xlfpmult 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    b_arith => xlFloat,
    b_bin_pt => 24,
    b_width => 32,
    c_latency => 0,
    core_name0 => "iir2mc_floating_point_v7_1_i4",
    extra_registers => 0,
    latency => 0,
    overflow => 1,
    p_arith => xlFloat,
    p_bin_pt => 24,
    p_tdata_width => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample4_q_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult9_p_net
  );
  up_sample : entity xil_defaultlib.iir2mc_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlSigned,
    d_bin_pt => 31,
    d_width => 32,
    latency => 1,
    q_arith => xlSigned,
    q_bin_pt => 31,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => convert2_dout_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => src_clk_net,
    dest_ce => src_ce_net,
    q => up_sample_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iir2mc_default_clock_driver is
  port (
    iir2mc_sysclk : in std_logic;
    iir2mc_sysce : in std_logic;
    iir2mc_sysclr : in std_logic;
    iir2mc_clk1 : out std_logic;
    iir2mc_ce1 : out std_logic;
    iir2mc_clk125 : out std_logic;
    iir2mc_ce125 : out std_logic
  );
end iir2mc_default_clock_driver;
architecture structural of iir2mc_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => iir2mc_sysclk,
    sysce => iir2mc_sysce,
    sysclr => iir2mc_sysclr,
    clk => iir2mc_clk1,
    ce => iir2mc_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 125,
    log_2_period => 7
  )
  port map (
    sysclk => iir2mc_sysclk,
    sysce => iir2mc_sysce,
    sysclr => iir2mc_sysclr,
    clk => iir2mc_clk125,
    ce => iir2mc_ce125
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iir2mc is
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
end iir2mc;
architecture structural of iir2mc is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "iir2mc,sysgen_core_2023_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z030,speed=-1,package=sbg485,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=1,clock_period=8,system_simulink_period=8e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.001,addsub=4,assert=1,ceprobe=1,convert=2,delay=5,dsamp=8,mult=5,usamp=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_125_net : std_logic;
  signal ce_125_net : std_logic;
begin
  iir2mc_default_clock_driver : entity xil_defaultlib.iir2mc_default_clock_driver 
  port map (
    iir2mc_sysclk => clk,
    iir2mc_sysce => '1',
    iir2mc_sysclr => clr,
    iir2mc_clk1 => clk_1_net,
    iir2mc_ce1 => ce_1_net,
    iir2mc_clk125 => clk_125_net,
    iir2mc_ce125 => ce_125_net
  );
  iir2mc_struct : entity xil_defaultlib.iir2mc_struct 
  port map (
    a0 => a0,
    a1 => a1,
    a2 => a2,
    b1 => b1,
    b2 => b2,
    ce => ce,
    in_x0 => in_x0,
    res => res,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_125 => clk_125_net,
    ce_125 => ce_125_net,
    ce_output => ce_output,
    out_x0 => out_x0
  );
end structural;
