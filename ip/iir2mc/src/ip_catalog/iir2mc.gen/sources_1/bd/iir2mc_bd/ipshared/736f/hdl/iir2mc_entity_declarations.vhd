-------------------------------------------------------------------
-- Vitis Model Composer version 2023.2 VHDL source file.
--
-- Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
-- Copyright(C) 2022-2023 by Advanced Micro Devices, Inc. All rights reserved.
--
-- This text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.
-------------------------------------------------------------------

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

--$Header: /devl/xcs/repo/env/Jobs/sysgen/src/xbs/hdl_pkg/xlpassthrough.vhd,v 1.1 2005/07/11 00:50:55 alexc Exp $
---------------------------------------------------------------------
--
--  Filename      : xlpassthrough.vhd
--
--  Created       : 07/09/05
--
--  Description   : VHDL description of a passthrough block
--
---------------------------------------------------------------------


---------------------------------------------------------------------
--
--  Entity        : xlpassthrough
--
--  Architecture  : passthrough_arch
--
--  Description   : Top level VHDL description of passthrough block. 
--
---------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity xlpassthrough is
    generic (
        din_width    : integer := 16;            -- Width of input
        dout_width   : integer := 16             -- Width of output
        );
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlpassthrough;

architecture passthrough_arch of xlpassthrough is
begin
  dout <= din;
end passthrough_arch;


library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlceprobe.vhd
--
--  Description   : VHDL description of system clock enable probe.
--                  This block assigns the clock enable signal to
--                  the output port.
--  Mod. History  : Added beffer so the the ce nets would not get renamed
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on


entity iir2mc_xlceprobe is
    generic (d_width  : integer := 8;
             q_width  : integer := 1);
    port (d       : in std_logic_vector (d_width-1 downto 0);
          ce      : in std_logic;
          clk     : in std_logic;
          q       : out std_logic_vector (q_width-1 downto 0));
end iir2mc_xlceprobe;

architecture behavior of iir2mc_xlceprobe is
    component BUF
        port(
            O  :        out   STD_ULOGIC;
            I  :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of BUF : component is true;
    attribute fpga_dont_touch of BUF : component is "true";
    signal ce_vec : std_logic_vector(0 downto 0);
begin
    buf_comp : buf port map(i => ce, o => ce_vec(0));
     -- use the clock enable signal to drive the output port
    q <= ce_vec;
end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_delay_1027dfc7fc is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_delay_1027dfc7fc;
architecture behavior of sysgen_delay_1027dfc7fc
is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  signal en_1_25: std_logic;
  signal rst_1_29: std_logic;
  signal op_mem_0_8_24_next: std_logic_vector((32 - 1) downto 0);
  signal op_mem_0_8_24: std_logic_vector((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal op_mem_0_8_24_rst: std_logic;
  signal op_mem_0_8_24_en: std_logic;
  signal op_mem_0_join_10_5: std_logic_vector((32 - 1) downto 0);
  signal op_mem_0_join_10_5_en: std_logic;
  signal op_mem_0_join_10_5_rst: std_logic;
begin
  d_1_22 <= d;
  en_1_25 <= en(0);
  rst_1_29 <= rst(0);
  proc_op_mem_0_8_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_0_8_24_rst = '1')) then
        op_mem_0_8_24 <= "00000000000000000000000000000000";
      elsif ((ce = '1') and (op_mem_0_8_24_en = '1')) then 
        op_mem_0_8_24 <= op_mem_0_8_24_next;
      end if;
    end if;
  end process proc_op_mem_0_8_24;
  proc_if_10_5: process (d_1_22, en_1_25, rst_1_29)
  is
  begin
    if rst_1_29 = '1' then
      op_mem_0_join_10_5_rst <= '1';
    elsif en_1_25 = '1' then
      op_mem_0_join_10_5_rst <= '0';
    else 
      op_mem_0_join_10_5_rst <= '0';
    end if;
    if en_1_25 = '1' then
      op_mem_0_join_10_5_en <= '1';
    else 
      op_mem_0_join_10_5_en <= '0';
    end if;
    op_mem_0_join_10_5 <= d_1_22;
  end process proc_if_10_5;
  op_mem_0_8_24_next <= d_1_22;
  op_mem_0_8_24_rst <= op_mem_0_join_10_5_rst;
  op_mem_0_8_24_en <= op_mem_0_join_10_5_en;
  q <= op_mem_0_8_24;
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xldsamp.vhd
--
--  Description   : VHDL description of a block that is inserted into the
--                  data path to down sample the data betwen two blocks
--                  where the period is different between two blocks.
--
--  Mod. History  : Changed clock timing on the down sampler.  The
--                  destination enable is delayed by one system clock
--                  cycle and held until the next consecutive source
--                  enable pulse.  This change allows downsampler data
--                  transitions to occur on the rising clock edge when
--                  the destination ce is asserted.
--                : Added optional latency is the downsampler.  Note, if
--                  the latency is greater than 0, no shutter is used.
--                : Removed valid bit logic from wrapper
--
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on

entity iir2mc_xldsamp is
  generic (
    d_width: integer := 12;
    d_bin_pt: integer := 0;
    d_arith: integer := xlUnsigned;
    q_width: integer := 12;
    q_bin_pt: integer := 0;
    q_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    ds_ratio: integer := 2;
    phase: integer := 0;
    latency: integer := 1
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    src_clk: in std_logic;
    src_ce: in std_logic;
    src_clr: in std_logic;
    dest_clk: in std_logic;
    dest_ce: in std_logic;
    dest_clr: in std_logic;
    en: in std_logic_vector(en_width - 1 downto 0);
    rst: in std_logic_vector(rst_width - 1 downto 0);
    q: out std_logic_vector(q_width - 1 downto 0)
  );
end iir2mc_xldsamp;

architecture struct of iir2mc_xldsamp is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component; -- end synth_reg

  component synth_reg_reg
     generic (width       : integer;
              latency     : integer);
     port (i       : in std_logic_vector(width-1 downto 0);
           ce      : in std_logic;
           clr     : in std_logic;
           clk     : in std_logic;
           o       : out std_logic_vector(width-1 downto 0));
  end component;

  component fdse
    port (
      q: out   std_ulogic;
      d: in    std_ulogic;
      c: in    std_ulogic;
      s: in    std_ulogic;
      ce: in    std_ulogic
    );
  end component; -- end fdse
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";

  signal adjusted_dest_ce: std_logic;
  signal adjusted_dest_ce_w_en: std_logic;
  signal dest_ce_w_en: std_logic;
  signal smpld_d: std_logic_vector(d_width-1 downto 0);
  signal sclr:std_logic;
begin
  -- An 'adjusted' destination clock enable signal must be generated for
  -- the zero latency and double registered down-sampler implementations.
  -- For both cases, it is necassary to adjust the timing of the clock
  -- enable so that it is asserted at the start of the sample period,
  -- instead of the end.  This is realized using an fdse prim. to register
  -- the destination clock enable.  The fdse itself is enabled with the
  -- source clock enable.  Enabling the fdse holds the adjusted CE high
  -- for the duration of the fast sample period and is needed to satisfy
  -- the multicycle constraint if the input data is running at a non-system
  -- rate.
  adjusted_ce_needed: if ((latency = 0) or (phase /= (ds_ratio - 1))) generate
    dest_ce_reg: fdse
      port map (
        q => adjusted_dest_ce,
        d => dest_ce,
        c => src_clk,
        s => sclr,
        ce => src_ce
      );
  end generate; -- adjusted_ce_needed

  -- A shutter (mux/reg pair) is used to implement a 0 latency downsampler.
  -- The shutter uses the adjusted destination clock enable to select between
  -- the current input and the sampled input.
  latency_eq_0: if (latency = 0) generate
    shutter_d_reg: synth_reg
      generic map (
        width => d_width,
        latency => 1
      )
      port map (
        i => d,
        ce => adjusted_dest_ce,
        clr => sclr,
        clk => src_clk,
        o => smpld_d
      );

    -- Mux selects current input value or register value.
    shutter_mux: process (adjusted_dest_ce, d, smpld_d)
    begin
	  if adjusted_dest_ce = '0' then
        q <= smpld_d;
      else
        q <= d;
      end if;
    end process; -- end select_mux
  end generate; -- end latency_eq_0

  -- A more efficient downsampler can be implemented if a latency > 0 is
  -- allowed.  There are two possible implementations, depending on the
  -- requested sampling phase.  A double register downsampler is needed
  -- for all cases except when the sample phase is the last input frame
  -- of the sample period.  In this case, only one register is needed.

  latency_gt_0: if (latency > 0) generate
    -- The first register in the double reg implementation is used to
    -- sample the correct frame (phase) of the input data.  Both the
    -- data and valid bit must be sampled.
    dbl_reg_test: if (phase /= (ds_ratio-1)) generate
        smpl_d_reg: synth_reg_reg
          generic map (
            width => d_width,
            latency => 1
          )
          port map (
            i => d,
            ce => adjusted_dest_ce_w_en,
            clr => sclr,
            clk => src_clk,
            o => smpld_d
          );
    end generate; -- end dbl_reg_test

    sngl_reg_test: if (phase = (ds_ratio -1)) generate
      smpld_d <= d;
    end generate; -- sngl_reg_test

    -- The latency pipe captures the sampled data and the END of the sample
    -- period.  Note that if the requested sample phase is the last input
    -- frame in the period, the first register (smpl_reg) is not needed.
    latency_pipe: synth_reg_reg
      generic map (
        width => d_width,
        latency => latency
      )
      port map (
        i => smpld_d,
        ce => dest_ce_w_en,
        clr => sclr,
        clk => dest_clk,
        o => q
      );
  end generate; -- end latency_gt_0

  -- Signal assignments
  dest_ce_w_en <= dest_ce and en(0);
  adjusted_dest_ce_w_en <= adjusted_dest_ce and en(0);
  sclr <= (src_clr or rst(0)) and dest_ce;
end architecture struct;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

----------------------------------------------------------------------------
--
--  Filename      : xlusamp.vhd
--
--  Description   : VHDL description of an up sampler.  The input signal
--                  has a larger period than the output signal's period
--                  and the blocks's period is set on the Simulink mask
--                  GUI.
--
--  Assumptions   : Input size, bin_pt, etc. are the same as the output
--
--  Mod. History  : Removed the shutter from the upsampler.  A mux is used
--                  to zero pad the data samples.  The mux select line is
--                  generated by registering the source enable signal
--                  when the destination ce is asserted.
--                : Removed valid bits from wrapper.
--
----------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on

entity iir2mc_xlusamp is

    generic (
             d_width      : integer := 5;          -- Width of d input
             d_bin_pt     : integer := 2;          -- Binary point of input d
             d_arith      : integer := xlUnsigned; -- Type of arith of d input
             q_width      : integer := 5;          -- Width of q output
             q_bin_pt     : integer := 2;          -- Binary point of output q
             q_arith      : integer := xlUnsigned; -- Type of arith of output
             en_width     : integer := 1;
             en_bin_pt    : integer := 0;
             en_arith     : integer := xlUnsigned;
             sampling_ratio     : integer := 2;
             latency      : integer := 1;
             copy_samples : integer := 0);         -- if 0, output q = 0
                                                   -- when ce = 0, else sample
                                                   -- is held until next clk

    port (
          d        : in std_logic_vector (d_width-1 downto 0);
          src_clk  : in std_logic;
          src_ce   : in std_logic;
          src_clr  : in std_logic;
          dest_clk : in std_logic;
          dest_ce  : in std_logic;
          dest_clr : in std_logic;
          en       : in std_logic_vector(en_width-1 downto 0);
          q        : out std_logic_vector (q_width-1 downto 0)
         );
end iir2mc_xlusamp;

architecture struct of iir2mc_xlusamp is
    component synth_reg
      generic (
        width: integer := 16;
        latency: integer := 5
      );
      port (
        i: in std_logic_vector(width - 1 downto 0);
        ce: in std_logic;
        clr: in std_logic;
        clk: in std_logic;
        o: out std_logic_vector(width - 1 downto 0)
      );
    end component; -- end synth_reg

    component FDSE
        port (q  : out   std_ulogic;
              d  : in    std_ulogic;
              c  : in    std_ulogic;
              s  : in    std_ulogic;
              ce : in    std_ulogic);
    end component; -- end FDSE

    attribute syn_black_box of FDSE : component is true;
    attribute fpga_dont_touch of FDSE : component is "true";

    signal zero    : std_logic_vector (d_width-1 downto 0);
    signal mux_sel : std_logic;
    signal sampled_d  : std_logic_vector (d_width-1 downto 0);
    signal internal_ce : std_logic;

begin


   -- If zero padding is required, a mux is used to switch between data input
   -- and zeros.  The mux select is generated by registering the source enable
   -- signal.  This register is enabled by the destination enable signal. This
   -- has the effect of holding the select line high until the next consecutive
   -- destination enable pulse, and thereby satisfying the timing constraints.
   -- Signal assignments

   -- register the source enable signal with the register enabled
   -- by the destination enable
   sel_gen : FDSE
       port map (q  => mux_sel,
           d  => src_ce,
            c  => src_clk,
            s  => src_clr,
            ce => dest_ce);
  -- Generate the user enable
  internal_ce <= src_ce and en(0);

  copy_samples_false : if (copy_samples = 0) generate

      -- signal assignments
      zero <= (others => '0');

      -- purpose: latency is 0 and copy_samples is 0
      -- type   : combinational
      -- inputs : mux_sel, d, zero
      -- outputs: q
      gen_q_cp_smpls_0_and_lat_0: if (latency = 0) generate
        cp_smpls_0_and_lat_0: process (mux_sel, d, zero)
        begin  -- process cp_smpls_0_and_lat_0
          if (mux_sel = '1') then
            q <= d;
          else
            q <= zero;
          end if;
        end process cp_smpls_0_and_lat_0;
      end generate; -- end gen_q_cp_smpls_0_and_lat_0

      gen_q_cp_smpls_0_and_lat_gt_0: if (latency > 0) generate
        sampled_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => latency
          )

          port map (
            i => d,
            ce => internal_ce,
            clr => src_clr,
            clk => src_clk,
            o => sampled_d
          );

        gen_q_check_mux_sel: process (mux_sel, sampled_d, zero)
        begin
          if (mux_sel = '1') then
            q <= sampled_d;
          else
            q <= zero;
          end if;
        end process gen_q_check_mux_sel;
      end generate; -- end gen_q_cp_smpls_0_and_lat_gt_0
   end generate; -- end copy_samples_false

   -- If zero padding is not required, we can short the upsampler data inputs
   -- to the upsampler data outputs when latency is 0.
   -- This option uses no hardware resources.

   copy_samples_true : if (copy_samples = 1) generate

     gen_q_cp_smpls_1_and_lat_0: if (latency = 0) generate
       q <= d;
     end generate; -- end gen_q_cp_smpls_1_and_lat_0

     gen_q_cp_smpls_1_and_lat_gt_0: if (latency > 0) generate
       q <= sampled_d;
       sampled_d_reg2: synth_reg
         generic map (
           width => d_width,
           latency => latency
         )

         port map (
           i => d,
           ce => internal_ce,
           clr => src_clr,
           clk => src_clk,
           o => sampled_d
         );
     end generate; -- end gen_q_cp_smpls_1_and_lat_gt_0
   end generate; -- end copy_samples_true
end architecture struct;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity iir2mc_xlfpaddsub is 
   generic (
     core_name0: string := "";
     a_width: integer := 32;
     a_bin_pt: integer := 24;
     a_arith: integer := xlFloat;
     b_width: integer := 32;
     b_bin_pt: integer := 24;
     b_arith: integer := xlFloat;
     s_width: integer := 32;
     s_bin_pt: integer := 24;
     s_arith: integer := xlFloat;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     a_tdata_width: integer := 32; --byte_roundup of a_width
     s_tdata_width: integer := 32; --byte_roundup of s_width
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0
   );
   port (
     a   : in std_logic_vector(a_width - 1 downto 0);
     b   : in std_logic_vector(b_width - 1 downto 0);
     ce  : in std_logic;
     clr : in std_logic := '0';
     clk : in std_logic;
     rst : in std_logic_vector(rst_width - 1 downto 0) := "0";
     en  : in std_logic_vector(en_width - 1 downto 0) := "1";
     s   : out std_logic_vector(s_width - 1 downto 0)
   );
 end iir2mc_xlfpaddsub;
 
 architecture behavior of iir2mc_xlfpaddsub is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 signal a_tvalid_net:std_logic := '1';
 signal a_tdata: std_logic_vector(a_tdata_width - 1 downto 0) := (others => '0');
 signal b_tvalid_net:std_logic := '1';
 signal b_tdata: std_logic_vector(a_tdata_width - 1 downto 0) := (others => '0');
 signal result_tdata:std_logic_vector(s_tdata_width - 1 downto 0);
 signal result_tvalid_net:std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal result: std_logic_vector(s_width - 1 downto 0);


 component iir2mc_floating_point_v7_1_i0
    port ( 
    s_axis_a_tvalid: in std_logic;
    s_axis_a_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    s_axis_b_tvalid: in std_logic;
    s_axis_b_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    m_axis_result_tvalid: out std_logic;
    m_axis_result_tdata: out std_logic_vector(32- 1 downto 0) :=(others=>'0') 
 		  ); 
 end component;

 component iir2mc_floating_point_v7_1_i1
    port ( 
    s_axis_a_tvalid: in std_logic;
    s_axis_a_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    s_axis_b_tvalid: in std_logic;
    s_axis_b_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    m_axis_result_tvalid: out std_logic;
    m_axis_result_tdata: out std_logic_vector(32- 1 downto 0) :=(others=>'0') 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 --operation_tdata(0) <= mode(0);
 
 addsub_process: process (a, b, result_tdata)
 begin
 -- TODO: need to revisit this part later
 a_tdata(a_width - 1 downto 0) <= a(a_width - 1 downto 0);
 b_tdata(b_width - 1 downto 0) <= b(b_width - 1 downto 0);
 result(s_width - 1 downto 0) <= result_tdata(s_width - 1 downto 0);
 end process addsub_process;


 comp0: if ((core_name0 = "iir2mc_floating_point_v7_1_i0")) generate 
  core_instance0:iir2mc_floating_point_v7_1_i0
   port map ( 
         s_axis_a_tvalid => a_tvalid_net,
         s_axis_a_tdata => a_tdata,
         s_axis_b_tvalid => b_tvalid_net,
         s_axis_b_tdata => b_tdata,
         m_axis_result_tvalid => result_tvalid_net,
         m_axis_result_tdata => result_tdata
  ); 
   end generate;

 comp1: if ((core_name0 = "iir2mc_floating_point_v7_1_i1")) generate 
  core_instance1:iir2mc_floating_point_v7_1_i1
   port map ( 
         s_axis_a_tvalid => a_tvalid_net,
         s_axis_a_tdata => a_tdata,
         s_axis_b_tvalid => b_tvalid_net,
         s_axis_b_tdata => b_tdata,
         m_axis_result_tvalid => result_tvalid_net,
         m_axis_result_tdata => result_tdata
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => s_width,
 latency => extra_registers
 )
 port map (
 i => result,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => s
 );
 end generate;
 
 latency_eq_0: if (extra_registers = 0) generate
 s <= result;
 end generate;
 
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;
 
entity iir2mc_xlfpconvert is 
   generic (
     core_name0: string := "";
     din_width: integer := 32;
     din_bin_pt: integer := 24;
     din_arith: integer := xlFloat;
     dout_width: integer := 32;
     dout_bin_pt: integer := 24;
     dout_arith: integer := xlFloat;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     din_tdata_width: integer := 32; --byte_roundup of din_width
     dout_tdata_width: integer := 32; --byte_roundup of dout_width
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0
   );
   port (
     din  : in std_logic_vector(din_width - 1 downto 0);
     ce   : in std_logic;
     clr  : in std_logic := '0';
     clk  : in std_logic;
     rst : in std_logic_vector(rst_width - 1 downto 0) := "0";
     en   : in std_logic_vector(en_width - 1 downto 0) := "1";
     dout : out std_logic_vector(dout_width - 1 downto 0)
   );
 end iir2mc_xlfpconvert;
 
 architecture behavior of iir2mc_xlfpconvert is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 signal a_tvalid_net:std_logic := '1';
 signal a_tdata: std_logic_vector(din_tdata_width - 1 downto 0) := (others => '0');
 signal result_tdata:std_logic_vector(dout_tdata_width - 1 downto 0);
 signal result_tvalid_net:std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal result: std_logic_vector(dout_width - 1 downto 0);


 component iir2mc_floating_point_v7_1_i2
    port ( 
    s_axis_a_tvalid: in std_logic;
    s_axis_a_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    m_axis_result_tvalid: out std_logic;
    m_axis_result_tdata: out std_logic_vector(32- 1 downto 0) :=(others=>'0') 
 		  ); 
 end component;

 component iir2mc_floating_point_v7_1_i3
    port ( 
    s_axis_a_tvalid: in std_logic;
    s_axis_a_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    m_axis_result_tvalid: out std_logic;
    m_axis_result_tdata: out std_logic_vector(32- 1 downto 0) :=(others=>'0') 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 
 convert_process: process (din, result_tdata)
 begin
 -- TODO: need to revisit this part later
 a_tdata(din_width - 1 downto 0) <= din(din_width - 1 downto 0);
 result(dout_width - 1 downto 0) <= result_tdata(dout_width - 1 downto 0);
 end process convert_process;


 comp0: if ((core_name0 = "iir2mc_floating_point_v7_1_i2")) generate 
  core_instance0:iir2mc_floating_point_v7_1_i2
   port map ( 
         s_axis_a_tvalid => a_tvalid_net,
         s_axis_a_tdata => a_tdata,
         m_axis_result_tvalid => result_tvalid_net,
         m_axis_result_tdata => result_tdata
  ); 
   end generate;

 comp1: if ((core_name0 = "iir2mc_floating_point_v7_1_i3")) generate 
  core_instance1:iir2mc_floating_point_v7_1_i3
   port map ( 
         s_axis_a_tvalid => a_tvalid_net,
         s_axis_a_tdata => a_tdata,
         m_axis_result_tvalid => result_tvalid_net,
         m_axis_result_tdata => result_tdata
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => dout_width,
 latency => extra_registers
 )
 port map (
 i => result,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => dout
 );
 end generate;
 
 latency_eq_0: if (extra_registers = 0) generate
 dout <= result;
 end generate;
 
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity iir2mc_xlfpmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 32;
     a_bin_pt: integer := 24;
     a_arith: integer := xlFloat;
     b_width: integer := 32;
     b_bin_pt: integer := 24;
     b_arith: integer := xlFloat;
     p_width: integer := 32;
     p_bin_pt: integer := 24;
     p_arith: integer := xlFloat;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     a_tdata_width: integer := 32; --byte_roundup of a_width
     p_tdata_width:integer := 32; --byte_roundup of p_width
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0
   );
   port (
     a   : in std_logic_vector(a_width - 1 downto 0);
     b   : in std_logic_vector(b_width - 1 downto 0);
     ce  : in std_logic;
     clr : in std_logic := '0';
     clk : in std_logic;
     rst : in std_logic_vector(rst_width - 1 downto 0) := "0";
     en  : in std_logic_vector(en_width - 1 downto 0) := "1";
     p   : out std_logic_vector(p_width - 1 downto 0)
   );
 end iir2mc_xlfpmult;
 
 architecture behavior of iir2mc_xlfpmult is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 signal a_tvalid_net:std_logic := '1';
 signal a_tdata: std_logic_vector(a_tdata_width - 1 downto 0) := (others => '0');
 signal b_tvalid_net:std_logic := '1';
 signal b_tdata: std_logic_vector(a_tdata_width - 1 downto 0) := (others => '0');
 signal result_tdata:std_logic_vector(p_tdata_width - 1 downto 0);
 signal result_tvalid_net:std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal result: std_logic_vector(p_width - 1 downto 0);


 component iir2mc_floating_point_v7_1_i4
    port ( 
    s_axis_a_tvalid: in std_logic;
    s_axis_a_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    s_axis_b_tvalid: in std_logic;
    s_axis_b_tdata: in std_logic_vector(32 - 1 downto 0) :=(others=>'0');
    m_axis_result_tvalid: out std_logic;
    m_axis_result_tdata: out std_logic_vector(32- 1 downto 0) :=(others=>'0') 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 
 mult_process: process (a, b, result_tdata)
 begin
 -- TODO: need to revisit this part later
 a_tdata(a_width - 1 downto 0) <= a(a_width - 1 downto 0);
 b_tdata(b_width - 1 downto 0) <= b(b_width - 1 downto 0);
 result(p_width - 1 downto 0) <= result_tdata(p_width - 1 downto 0);
 end process mult_process;


 comp0: if ((core_name0 = "iir2mc_floating_point_v7_1_i4")) generate 
  core_instance0:iir2mc_floating_point_v7_1_i4
   port map ( 
         s_axis_a_tvalid => a_tvalid_net,
         s_axis_a_tdata => a_tdata,
         s_axis_b_tvalid => b_tvalid_net,
         s_axis_b_tdata => b_tdata,
         m_axis_result_tvalid => result_tvalid_net,
         m_axis_result_tdata => result_tdata
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => result,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 
 latency_eq_0: if (extra_registers = 0) generate
 p <= result;
 end generate;
 
 end architecture behavior;

