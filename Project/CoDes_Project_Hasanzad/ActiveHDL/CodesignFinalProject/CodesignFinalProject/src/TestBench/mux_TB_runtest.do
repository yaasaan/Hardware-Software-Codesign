SetActiveLib -work
comp -include "$dsn\src\MUX.vhd" 
comp -include "$dsn\src\TestBench\mux_TB.vhd" 
asim +access +r TESTBENCH_FOR_mux 
wave 
wave -noreg i0
wave -noreg i1
wave -noreg i2
wave -noreg i3
wave -noreg i4
wave -noreg i5
wave -noreg i6
wave -noreg i7
wave -noreg Mdata
wave -noreg ALURes
wave -noreg S0
wave -noreg S1
wave -noreg bus_sel
wave -noreg mux_bus
wave -noreg mux0
wave -noreg mux1
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\mux_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_mux 
