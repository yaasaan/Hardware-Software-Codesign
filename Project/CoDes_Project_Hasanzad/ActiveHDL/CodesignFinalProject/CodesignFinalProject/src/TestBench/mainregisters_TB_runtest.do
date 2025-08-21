SetActiveLib -work
comp -include "$dsn\src\mainRegisters.vhd" 
comp -include "$dsn\src\TestBench\mainregisters_TB.vhd" 
asim +access +r TESTBENCH_FOR_mainregisters 
wave 
wave -noreg RIN0
wave -noreg RIN1
wave -noreg RIN2
wave -noreg RIN3
wave -noreg CLK
wave -noreg LD0
wave -noreg LD1
wave -noreg LD2
wave -noreg LD3
wave -noreg ROUT0
wave -noreg ROUT1
wave -noreg ROUT2
wave -noreg ROUT3
wave -noreg ZR0
wave -noreg ZR1
wave -noreg ZR2
wave -noreg ZR3
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\mainregisters_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_mainregisters 
