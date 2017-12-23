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
read_ip -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.xci
set_property is_locked true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1 -new_name detector_bd_pwm_verilog_0_0 -ip [get_ips detector_bd_pwm_verilog_0_0]]

if { $cached_ip eq {} } {

synth_design -top detector_bd_pwm_verilog_0_0 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix detector_bd_pwm_verilog_0_0_ detector_bd_pwm_verilog_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ detector_bd_pwm_verilog_0_0_stub.v
 lappend ipCachedFiles detector_bd_pwm_verilog_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ detector_bd_pwm_verilog_0_0_stub.vhdl
 lappend ipCachedFiles detector_bd_pwm_verilog_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ detector_bd_pwm_verilog_0_0_sim_netlist.v
 lappend ipCachedFiles detector_bd_pwm_verilog_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ detector_bd_pwm_verilog_0_0_sim_netlist.vhdl
 lappend ipCachedFiles detector_bd_pwm_verilog_0_0_sim_netlist.vhdl

 config_ip_cache -add -dcp detector_bd_pwm_verilog_0_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips detector_bd_pwm_verilog_0_0]
}

rename_ref -prefix_all detector_bd_pwm_verilog_0_0_

write_checkpoint -force -noxdef detector_bd_pwm_verilog_0_0.dcp

catch { report_utilization -file detector_bd_pwm_verilog_0_0_utilization_synth.rpt -pb detector_bd_pwm_verilog_0_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0.dcp /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0.dcp /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0_stub.v /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0_stub.vhdl /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0_sim_netlist.v /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/detector_bd_pwm_verilog_0_0_synth_1/detector_bd_pwm_verilog_0_0_sim_netlist.vhdl /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.ip_user_files/ip/detector_bd_pwm_verilog_0_0]} {
  catch { 
    file copy -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.v /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.ip_user_files/ip/detector_bd_pwm_verilog_0_0
  }
}

if {[file isdir /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.ip_user_files/ip/detector_bd_pwm_verilog_0_0]} {
  catch { 
    file copy -force /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0_stub.vhdl /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.ip_user_files/ip/detector_bd_pwm_verilog_0_0
  }
}
