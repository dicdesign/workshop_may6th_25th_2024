#!/bin/bash

# Set your design and top module name
DESIGN="counter"
TOP_MODULE_NAME="counter_top_module_name"

# Specify the Verilog files
VERILOG_FILES="file1.v file2.v file3.v" # Add all your Verilog files here

# Convert the VERILOG_FILES variable into individual read_verilog commands
READ_VERILOG_CMDS=""
for FILE in $VERILOG_FILES; do
    READ_VERILOG_CMDS+="read_verilog $FILE; "
done

# Use the variables in the script
yosys -p "
read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib;
$READ_VERILOG_CMDS
synth -top ${TOP_MODULE_NAME};
dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib;
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib;
clean;
write_verilog -noattr ${DESIGN}.netlist.v;
tee -o ${DESIGN}.rpt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib;
write_json ${DESIGN}.json;
"

# Generate SVG using netlistsvg
netlistsvg ${DESIGN}.json -o ${DESIGN}.svg

# Open SVG with Inkscape
inkscape ${DESIGN}.svg
