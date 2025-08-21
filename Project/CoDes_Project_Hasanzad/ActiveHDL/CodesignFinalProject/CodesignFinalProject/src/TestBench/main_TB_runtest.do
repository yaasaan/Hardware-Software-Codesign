SetActiveLib -work
comp -include "$dsn\src\main.vhd" 
comp -include "$dsn\src\TestBench\main_TB.vhd" 
asim +access +r TESTBENCH_FOR_main 
wave 
wave -noreg CLK
wave -noreg RESET_main
wave -noreg BUS_Select
wave -noreg INCREMENTPC
wave -noreg CMD_final
wave -noreg IR_final
wave -noreg LD_final
wave -noreg R_out0
wave -noreg R_out1
wave -noreg R_out2
wave -noreg R_out3
wave -noreg Select0
wave -noreg Select1
wave -noreg ALU_R
wave -noreg busdata_out
wave -noreg MemoryData
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\main_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_main 
