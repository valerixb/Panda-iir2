# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set AnalyzeTiming 1
	set AnalyzeTimingNumPaths {10000}
	set AnalyzeTimingPostImplementation 0
	set AnalyzeTimingPostSynthesis 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7z030}
	set DSPFamily {zynq}
	set DSPPackage {sbg485}
	set DSPSpeed {-1}
	set FPGAClockPeriod 8
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {/home/valbas/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {0}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {Panda_ModelComp}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {iir2mc}
	set IP_Revision {345917982}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {MaxIV}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {iir2mc}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{iir2mc_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{iir2mc.vhd} -lib {xil_defaultlib}}
		{{iir2mc_clock.xdc}}
		{{iir2mc.xdc}}
	}
	set SimPeriod 8e-09
	set SimTime 0.001
	set SimulationTime {1000208.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/xilinxworks/sysgen/notch_panda/netlist/ip/iir2mc/src}
	set TopLevelModule {iir2mc}
	set TopLevelSimulinkHandle 32.0001
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface res Name {res}
	dict set TopLevelPortInterface res Type Bool
	dict set TopLevelPortInterface res ArithmeticType xlUnsigned
	dict set TopLevelPortInterface res BinaryPoint 0
	dict set TopLevelPortInterface res Width 1
	dict set TopLevelPortInterface res DatFile {notch_tb_varts_iir2mc_res.dat}
	dict set TopLevelPortInterface res IconText {res}
	dict set TopLevelPortInterface res Direction in
	dict set TopLevelPortInterface res Period 1
	dict set TopLevelPortInterface res Interface 0
	dict set TopLevelPortInterface res InterfaceName {}
	dict set TopLevelPortInterface res InterfaceString {DATA}
	dict set TopLevelPortInterface res ClockDomain {iir2mc}
	dict set TopLevelPortInterface res Locs {}
	dict set TopLevelPortInterface res IOStandard {}
	dict set TopLevelPortInterface in_x0 Name {in_x0}
	dict set TopLevelPortInterface in_x0 Type Fix_32_31
	dict set TopLevelPortInterface in_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface in_x0 BinaryPoint 31
	dict set TopLevelPortInterface in_x0 Width 32
	dict set TopLevelPortInterface in_x0 DatFile {notch_tb_varts_iir2mc_in.dat}
	dict set TopLevelPortInterface in_x0 IconText {in}
	dict set TopLevelPortInterface in_x0 Direction in
	dict set TopLevelPortInterface in_x0 Period 1
	dict set TopLevelPortInterface in_x0 Interface 0
	dict set TopLevelPortInterface in_x0 InterfaceName {}
	dict set TopLevelPortInterface in_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface in_x0 ClockDomain {iir2mc}
	dict set TopLevelPortInterface in_x0 Locs {}
	dict set TopLevelPortInterface in_x0 IOStandard {}
	dict set TopLevelPortInterface ce Name {ce}
	dict set TopLevelPortInterface ce Type Bool
	dict set TopLevelPortInterface ce ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ce BinaryPoint 0
	dict set TopLevelPortInterface ce Width 1
	dict set TopLevelPortInterface ce DatFile {notch_tb_varts_iir2mc_ce.dat}
	dict set TopLevelPortInterface ce IconText {CE}
	dict set TopLevelPortInterface ce Direction in
	dict set TopLevelPortInterface ce Period 1
	dict set TopLevelPortInterface ce Interface 0
	dict set TopLevelPortInterface ce InterfaceName {}
	dict set TopLevelPortInterface ce InterfaceString {DATA}
	dict set TopLevelPortInterface ce ClockDomain {iir2mc}
	dict set TopLevelPortInterface ce Locs {}
	dict set TopLevelPortInterface ce IOStandard {}
	dict set TopLevelPortInterface b2 Name {b2}
	dict set TopLevelPortInterface b2 Type XFloat_8_24
	dict set TopLevelPortInterface b2 ArithmeticType xlFloat
	dict set TopLevelPortInterface b2 BinaryPoint 24
	dict set TopLevelPortInterface b2 Width 32
	dict set TopLevelPortInterface b2 DatFile {notch_tb_varts_iir2mc_b2.dat}
	dict set TopLevelPortInterface b2 IconText {B2}
	dict set TopLevelPortInterface b2 Direction in
	dict set TopLevelPortInterface b2 Period 1
	dict set TopLevelPortInterface b2 Interface 0
	dict set TopLevelPortInterface b2 InterfaceName {}
	dict set TopLevelPortInterface b2 InterfaceString {DATA}
	dict set TopLevelPortInterface b2 ClockDomain {iir2mc}
	dict set TopLevelPortInterface b2 Locs {}
	dict set TopLevelPortInterface b2 IOStandard {}
	dict set TopLevelPortInterface b1 Name {b1}
	dict set TopLevelPortInterface b1 Type XFloat_8_24
	dict set TopLevelPortInterface b1 ArithmeticType xlFloat
	dict set TopLevelPortInterface b1 BinaryPoint 24
	dict set TopLevelPortInterface b1 Width 32
	dict set TopLevelPortInterface b1 DatFile {notch_tb_varts_iir2mc_b1.dat}
	dict set TopLevelPortInterface b1 IconText {B1}
	dict set TopLevelPortInterface b1 Direction in
	dict set TopLevelPortInterface b1 Period 1
	dict set TopLevelPortInterface b1 Interface 0
	dict set TopLevelPortInterface b1 InterfaceName {}
	dict set TopLevelPortInterface b1 InterfaceString {DATA}
	dict set TopLevelPortInterface b1 ClockDomain {iir2mc}
	dict set TopLevelPortInterface b1 Locs {}
	dict set TopLevelPortInterface b1 IOStandard {}
	dict set TopLevelPortInterface a2 Name {a2}
	dict set TopLevelPortInterface a2 Type XFloat_8_24
	dict set TopLevelPortInterface a2 ArithmeticType xlFloat
	dict set TopLevelPortInterface a2 BinaryPoint 24
	dict set TopLevelPortInterface a2 Width 32
	dict set TopLevelPortInterface a2 DatFile {notch_tb_varts_iir2mc_a2.dat}
	dict set TopLevelPortInterface a2 IconText {A2}
	dict set TopLevelPortInterface a2 Direction in
	dict set TopLevelPortInterface a2 Period 1
	dict set TopLevelPortInterface a2 Interface 0
	dict set TopLevelPortInterface a2 InterfaceName {}
	dict set TopLevelPortInterface a2 InterfaceString {DATA}
	dict set TopLevelPortInterface a2 ClockDomain {iir2mc}
	dict set TopLevelPortInterface a2 Locs {}
	dict set TopLevelPortInterface a2 IOStandard {}
	dict set TopLevelPortInterface a1 Name {a1}
	dict set TopLevelPortInterface a1 Type XFloat_8_24
	dict set TopLevelPortInterface a1 ArithmeticType xlFloat
	dict set TopLevelPortInterface a1 BinaryPoint 24
	dict set TopLevelPortInterface a1 Width 32
	dict set TopLevelPortInterface a1 DatFile {notch_tb_varts_iir2mc_a1.dat}
	dict set TopLevelPortInterface a1 IconText {A1}
	dict set TopLevelPortInterface a1 Direction in
	dict set TopLevelPortInterface a1 Period 1
	dict set TopLevelPortInterface a1 Interface 0
	dict set TopLevelPortInterface a1 InterfaceName {}
	dict set TopLevelPortInterface a1 InterfaceString {DATA}
	dict set TopLevelPortInterface a1 ClockDomain {iir2mc}
	dict set TopLevelPortInterface a1 Locs {}
	dict set TopLevelPortInterface a1 IOStandard {}
	dict set TopLevelPortInterface a0 Name {a0}
	dict set TopLevelPortInterface a0 Type XFloat_8_24
	dict set TopLevelPortInterface a0 ArithmeticType xlFloat
	dict set TopLevelPortInterface a0 BinaryPoint 24
	dict set TopLevelPortInterface a0 Width 32
	dict set TopLevelPortInterface a0 DatFile {notch_tb_varts_iir2mc_a0.dat}
	dict set TopLevelPortInterface a0 IconText {A0}
	dict set TopLevelPortInterface a0 Direction in
	dict set TopLevelPortInterface a0 Period 1
	dict set TopLevelPortInterface a0 Interface 0
	dict set TopLevelPortInterface a0 InterfaceName {}
	dict set TopLevelPortInterface a0 InterfaceString {DATA}
	dict set TopLevelPortInterface a0 ClockDomain {iir2mc}
	dict set TopLevelPortInterface a0 Locs {}
	dict set TopLevelPortInterface a0 IOStandard {}
	dict set TopLevelPortInterface ce_output Name {ce_output}
	dict set TopLevelPortInterface ce_output Type Bool
	dict set TopLevelPortInterface ce_output ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ce_output BinaryPoint 0
	dict set TopLevelPortInterface ce_output Width 1
	dict set TopLevelPortInterface ce_output DatFile {notch_tb_varts_iir2mc_ce_output.dat}
	dict set TopLevelPortInterface ce_output IconText {ce_output}
	dict set TopLevelPortInterface ce_output Direction out
	dict set TopLevelPortInterface ce_output Period 1
	dict set TopLevelPortInterface ce_output Interface 0
	dict set TopLevelPortInterface ce_output InterfaceName {}
	dict set TopLevelPortInterface ce_output InterfaceString {DATA}
	dict set TopLevelPortInterface ce_output ClockDomain {iir2mc}
	dict set TopLevelPortInterface ce_output Locs {}
	dict set TopLevelPortInterface ce_output IOStandard {}
	dict set TopLevelPortInterface out_x0 Name {out_x0}
	dict set TopLevelPortInterface out_x0 Type Fix_32_31
	dict set TopLevelPortInterface out_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface out_x0 BinaryPoint 31
	dict set TopLevelPortInterface out_x0 Width 32
	dict set TopLevelPortInterface out_x0 DatFile {notch_tb_varts_iir2mc_out.dat}
	dict set TopLevelPortInterface out_x0 IconText {out}
	dict set TopLevelPortInterface out_x0 Direction out
	dict set TopLevelPortInterface out_x0 Period 1
	dict set TopLevelPortInterface out_x0 Interface 0
	dict set TopLevelPortInterface out_x0 InterfaceName {}
	dict set TopLevelPortInterface out_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface out_x0 ClockDomain {iir2mc}
	dict set TopLevelPortInterface out_x0 Locs {}
	dict set TopLevelPortInterface out_x0 IOStandard {}
	dict set TopLevelPortInterface clr Name {clr}
	dict set TopLevelPortInterface clr Type -
	dict set TopLevelPortInterface clr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clr BinaryPoint 0
	dict set TopLevelPortInterface clr Width 1
	dict set TopLevelPortInterface clr DatFile {}
	dict set TopLevelPortInterface clr IconText {clr}
	dict set TopLevelPortInterface clr Direction in
	dict set TopLevelPortInterface clr Period 1
	dict set TopLevelPortInterface clr Interface 9
	dict set TopLevelPortInterface clr InterfaceName {}
	dict set TopLevelPortInterface clr InterfaceString {CLOCKENABLE_CLEAR}
	dict set TopLevelPortInterface clr ClockDomain {}
	dict set TopLevelPortInterface clr Locs {}
	dict set TopLevelPortInterface clr IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {iir2mc}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project