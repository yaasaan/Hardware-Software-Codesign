SetActiveLib -work
comp -include "$dsn\src\HT4.vhd" 
comp -include "$dsn\src\TestBench\ht4_TB.vhd" 
asim +access +r TESTBENCH_FOR_ht4 
wave 
wave -noreg input
wave -noreg reset
wave -noreg clock
wave -noreg output
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\ht4_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_ht4 
