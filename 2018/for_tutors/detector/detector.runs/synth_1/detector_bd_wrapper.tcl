# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.cache/wt [current_project]
set_property parent.project_path /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part myir.com:mys-7z010:part0:2.1 [current_project]
set_property ip_repo_paths /home/sorina/Desktop/Laboratory/cern_winter_school/2018/ip [current_project]
set_property ip_output_repo /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/hdl/detector_bd_wrapper.v
add_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/detector_bd.bd
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_processing_system7_0_0_1/detector_bd_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_auto_pc_0/detector_bd_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/detector_bd_ooc.xdc]
set_property is_locked true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/detector_bd.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/sorina/Desktop/Laboratory/cern_winter_school/2018/constraints/nets.xdc
set_property used_in_implementation false [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/constraints/nets.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top detector_bd_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef detector_bd_wrapper.dcp

catch { report_utilization -file detector_bd_wrapper_utilization_synth.rpt -pb detector_bd_wrapper_utilization_synth.pb }
