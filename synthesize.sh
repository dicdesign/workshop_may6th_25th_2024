#!/bin/bash

# Set your design and top module name
DESIGN="counter"
TOP_MODULE_NAME="counter_top_module_name"

# Use the variables in the script
yosys -p "
read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ${DESIGN}.v
synth -top ${TOP_MODULE_NAME}
dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
clean
write_verilog -noattr ${DESIGN}.netlist.v
tee -o ${DESIGN}.rpt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
write_json ${DESIGN}.json
"

# Generate SVG using netlistsvg
!netlistsvg ${DESIGN}.json -o ${DESIGN}.svg

# Open SVG with Inkscape
!inkscape ${DESIGN}.svg
