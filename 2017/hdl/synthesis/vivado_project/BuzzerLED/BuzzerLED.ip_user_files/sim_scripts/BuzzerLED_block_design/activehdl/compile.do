vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_10

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 activehdl/proc_sys_reset_v5_0_10

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/2527/hdl" "+incdir+../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/7e3a/hdl" "+incdir+../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/2527/hdl" "+incdir+../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/7e3a/hdl" \
"/opt/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"/home/sorina/Desktop/Laboratory/cern_winter_school/hdl/synthesis/vivado_project/BuzzerLED/BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ip/BuzzerLED_block_design_processing_system7_0_0/BuzzerLED_block_design_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/BuzzerLED_block_design/ipshared/c6bd/src/PWM_v1_0_S00_AXI.vhd" \
"../../../bd/BuzzerLED_block_design/ipshared/c6bd/src/PWM_v1_0.vhd" \
"../../../bd/BuzzerLED_block_design/ip/BuzzerLED_block_design_PWM_0_0/sim/BuzzerLED_block_design_PWM_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/BuzzerLED_block_design/ip/BuzzerLED_block_design_rst_ps7_0_50M_0/sim/BuzzerLED_block_design_rst_ps7_0_50M_0.vhd" \
"/home/sorina/Desktop/Laboratory/cern_winter_school/hdl/synthesis/vivado_project/BuzzerLED/BuzzerLED.srcs/sources_1/bd/BuzzerLED_block_design/ip/BuzzerLED_block_design_auto_pc_0/BuzzerLED_block_design_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/BuzzerLED_block_design/hdl/BuzzerLED_block_design.vhd" \

vlog -work xil_defaultlib "glbl.v"

