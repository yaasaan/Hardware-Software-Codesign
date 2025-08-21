SetActiveLib -work
comp -include "$dsn\src\IR_PC.vhd" 
comp -include "$dsn\src\TestBench\ir_pc_TB.vhd" 
asim +access +r TESTBENCH_FOR_ir_pc 
wave 
wave -noreg RINPC
wave -noreg RINIR
wave -noreg CLK
wave -noreg LDPC
wave -noreg LDIR
wave -noreg INCrement
wave -noreg R_ST
wave -noreg ROUTPC
wave -noreg ROUTIR
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\ir_pc_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_ir_pc 
