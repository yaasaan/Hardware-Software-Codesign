SetActiveLib -work
comp -include "$dsn\src\ControlUnit.vhd" 
comp -include "$dsn\src\TestBench\controlunit_TB.vhd" 
asim +access +r TESTBENCH_FOR_controlunit 
wave 
wave -noreg clock
wave -noreg rst
wave -noreg ZR0
wave -noreg ZR1
wave -noreg ZR2
wave -noreg ZR3
wave -noreg ROUT_IR
wave -noreg LD0
wave -noreg LD1
wave -noreg LD2
wave -noreg LD3
wave -noreg LD_PC
wave -noreg LD_IR
wave -noreg Sel0
wave -noreg Sel1
wave -noreg BusSelect
wave -noreg ALU_CMD
wave -noreg INC
wave -noreg CLR
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\controlunit_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_controlunit 
