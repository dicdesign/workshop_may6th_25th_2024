#!/bin/bash

# Set your design and top module name
DESIGN="if single file use just that file name else if multiple verilog files then use *"
TOP_DESIGN="Name of the top module"
TOP_MODULE_NAME="Name of the top module"

# Use the variables in the script
yosys -p "
read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ${DESIGN}.v
synth -top ${TOP_MODULE_NAME}
dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
clean
write_verilog -noattr ${TOP_DESIGN}.netlist.v
tee -o ${TOP_DESIGN}.rpt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
write_json ${TOP_DESIGN}.json
"

# Generate SVG using netlistsvg
!netlistsvg ${TOP_DESIGN}.json -o ${TOP_DESIGN}.svg

# Open SVG with Inkscape
!inkscape ${TOP_DESIGN}.svg
