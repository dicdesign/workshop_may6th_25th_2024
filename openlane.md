#### To lauch the openlane, form the folder OpenLane open the terminal in the terminal prompt type<br>
cd OpenLane<br>
make mount<br>

#### To create the design type the following command in the terminal<br>
./flow.tcl -design <design_name> -init_design_config -add_to_designs -config_file config.tcl<br>

#### To run the openlane interactively<br>
./flow.tcl -interactive<br>

#### A tcl shell will be opened where the openlane package is automatically sourced:<br>

#### Then type the follwoing<br>

%package require openlane<br>

#### Then, you should be able to run the following main commands:<br>

prep -design <design> -tag <tag> -config <config> -init_design_config -overwrite<br>

run_synthesis<br>
run_floorplan<br>
run_placement<br>
run_cts<br>
run_routing<br>
run_magic<br>
run_magic_spice_export<br>
run_magic_drc<br>
run_lvs<br>
run_antenna_check<br>

#### The above commands can also be written in a file and passed to flow.tcl:<br>
./flow.tcl -interactive -file <file><br>

#### If the design is too small. you try appending these to your configuration file (config.tcl):<br>
set ::env(FP_CORE_UTIL) 5<br>
set ::env(PL_TARGET_DENSITY) 0.5<br>
(low utilization)<br>
