# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a100tcsg324-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Work/Vivado/14.4/Nexys4DDRVGAMouseOverlay/Nexys4DDRVGAMouseOverlay.cache/wt [current_project]
set_property parent.project_path C:/Work/Vivado/14.4/Nexys4DDRVGAMouseOverlay/Nexys4DDRVGAMouseOverlay.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/Ps2Interface.vhd
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/clk_wiz_0_clk_wiz.vhd
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/MouseDisplay.vhd
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/MouseCtl.vhd
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/clk_wiz_0.vhd
  C:/Work/Vivado/14.4/Basys3_Basic_Demo_1/Basys3_Basic_Demo_1/vga_ctrl.vhd
}
read_xdc C:/Work/Vivado/14.4/Nexys4DDRVGAMouseOverlay/Nexys4DDRVGAMouseOverlay.srcs/constrs_1/imports/XDC/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files C:/Work/Vivado/14.4/Nexys4DDRVGAMouseOverlay/Nexys4DDRVGAMouseOverlay.srcs/constrs_1/imports/XDC/Nexys4DDR_Master.xdc]

catch { write_hwdef -file vga_ctrl.hwdef }
synth_design -top vga_ctrl -part xc7a100tcsg324-1
write_checkpoint -noxdef vga_ctrl.dcp
catch { report_utilization -file vga_ctrl_utilization_synth.rpt -pb vga_ctrl_utilization_synth.pb }
