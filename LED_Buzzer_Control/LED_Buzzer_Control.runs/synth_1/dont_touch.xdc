# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: /opt/Xilinx/Vivado/2016.3/data/boards/system.xdc

# Block Designs: bd/LED_Buzzer_Control/LED_Buzzer_Control.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control || ORIG_REF_NAME==LED_Buzzer_Control}]

# IP: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_processing_system7_0_0/LED_Buzzer_Control_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_processing_system7_0_0 || ORIG_REF_NAME==LED_Buzzer_Control_processing_system7_0_0}]

# IP: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_ps7_0_axi_periph_0/LED_Buzzer_Control_ps7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_ps7_0_axi_periph_0 || ORIG_REF_NAME==LED_Buzzer_Control_ps7_0_axi_periph_0}]

# IP: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_rst_ps7_0_100M_0/LED_Buzzer_Control_rst_ps7_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0 || ORIG_REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0}]

# IP: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_PWM_0_2/LED_Buzzer_Control_PWM_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_PWM_0_2 || ORIG_REF_NAME==LED_Buzzer_Control_PWM_0_2}]

# IP: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_auto_pc_0/LED_Buzzer_Control_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_auto_pc_0 || ORIG_REF_NAME==LED_Buzzer_Control_auto_pc_0}]

# XDC: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_processing_system7_0_0/LED_Buzzer_Control_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_processing_system7_0_0 || ORIG_REF_NAME==LED_Buzzer_Control_processing_system7_0_0}] {/inst }]/inst ]]

# XDC: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_rst_ps7_0_100M_0/LED_Buzzer_Control_rst_ps7_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0 || ORIG_REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_rst_ps7_0_100M_0/LED_Buzzer_Control_rst_ps7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0 || ORIG_REF_NAME==LED_Buzzer_Control_rst_ps7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_rst_ps7_0_100M_0/LED_Buzzer_Control_rst_ps7_0_100M_0_ooc.xdc

# XDC: bd/LED_Buzzer_Control/ip/LED_Buzzer_Control_auto_pc_0/LED_Buzzer_Control_auto_pc_0_ooc.xdc

# XDC: bd/LED_Buzzer_Control/LED_Buzzer_Control_ooc.xdc