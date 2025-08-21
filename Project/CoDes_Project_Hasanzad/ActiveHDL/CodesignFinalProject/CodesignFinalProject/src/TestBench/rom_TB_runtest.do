SetActiveLib -work
comp -include "$dsn\src\ROM.vhd" 
comp -include "$dsn\src\TestBench\rom_TB.vhd" 
asim +access +r TESTBENCH_FOR_rom 
wave 
wave -noreg Address
wave -noreg Data
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\rom_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_rom 
