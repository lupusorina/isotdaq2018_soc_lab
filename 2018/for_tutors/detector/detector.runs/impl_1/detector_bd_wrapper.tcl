proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part myir.com:mys-7z010:part0:2.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.cache/wt [current_project]
  set_property parent.project_path /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.xpr [current_project]
  set_property ip_repo_paths /home/sorina/Desktop/Laboratory/cern_winter_school/2018/ip [current_project]
  set_property ip_output_repo /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.runs/synth_1/detector_bd_wrapper.dcp
  add_files -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.dcp
  set_property netlist_only true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_pwm_verilog_0_0_1/detector_bd_pwm_verilog_0_0.dcp]
  add_files -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_processing_system7_0_0_1/detector_bd_processing_system7_0_0.dcp
  set_property netlist_only true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_processing_system7_0_0_1/detector_bd_processing_system7_0_0.dcp]
  add_files -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0.dcp
  set_property netlist_only true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0.dcp]
  add_files -quiet /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_auto_pc_0/detector_bd_auto_pc_0.dcp
  set_property netlist_only true [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_auto_pc_0/detector_bd_auto_pc_0.dcp]
  read_xdc -ref detector_bd_processing_system7_0_0 -cells inst /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_processing_system7_0_0_1/detector_bd_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_processing_system7_0_0_1/detector_bd_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref detector_bd_rst_ps7_0_50M_0 -cells U0 /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0_board.xdc]
  read_xdc -ref detector_bd_rst_ps7_0_50M_0 -cells U0 /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0.xdc
  set_property processing_order EARLY [get_files /home/sorina/Desktop/Laboratory/cern_winter_school/2018/detector/detector.srcs/sources_1/bd/detector_bd/ip/detector_bd_rst_ps7_0_50M_0/detector_bd_rst_ps7_0_50M_0.xdc]
  read_xdc /home/sorina/Desktop/Laboratory/cern_winter_school/2018/constraints/nets.xdc
  link_design -top detector_bd_wrapper -part xc7z010clg400-1
  write_hwdef -file detector_bd_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force detector_bd_wrapper_opt.dcp
  report_drc -file detector_bd_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force detector_bd_wrapper_placed.dcp
  report_io -file detector_bd_wrapper_io_placed.rpt
  report_utilization -file detector_bd_wrapper_utilization_placed.rpt -pb detector_bd_wrapper_utilization_placed.pb
  report_control_sets -verbose -file detector_bd_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force detector_bd_wrapper_routed.dcp
  report_drc -file detector_bd_wrapper_drc_routed.rpt -pb detector_bd_wrapper_drc_routed.pb -rpx detector_bd_wrapper_drc_routed.rpx
  report_methodology -file detector_bd_wrapper_methodology_drc_routed.rpt -rpx detector_bd_wrapper_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file detector_bd_wrapper_timing_summary_routed.rpt -rpx detector_bd_wrapper_timing_summary_routed.rpx
  report_power -file detector_bd_wrapper_power_routed.rpt -pb detector_bd_wrapper_power_summary_routed.pb -rpx detector_bd_wrapper_power_routed.rpx
  report_route_status -file detector_bd_wrapper_route_status.rpt -pb detector_bd_wrapper_route_status.pb
  report_clock_utilization -file detector_bd_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force detector_bd_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  catch { write_mem_info -force detector_bd_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile detector_bd_wrapper.bit 
  catch { write_sysdef -hwdef detector_bd_wrapper.hwdef -bitfile detector_bd_wrapper.bit -meminfo detector_bd_wrapper.mmi -file detector_bd_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

