#!/bin/sh
export OPENRAM_TECH="/home/sacrow/privateram-nochar/technology:/home/sacrow/.local/lib/python3.8/site-packages/openram/technology"
echo "$(date): Starting GDS to MAG using Magic /home/sacrow/privateram-nochar/miniconda/bin/magic"

/home/sacrow/privateram-nochar/miniconda/bin/magic -dnull -noconsole << EOF
drc off
set VDD vdd
set GND gnd
set SUB gnd
gds warning default
gds flatglob *_?mos_m*
gds flatglob sky130_fd_bd_sram__sram_sp_cell_fom_serifs
gds flatglob sky130_fd_bd_sram__sram_sp_cell
gds flatglob sky130_fd_bd_sram__openram_sp_cell_opt1_replica_cell
gds flatglob sky130_fd_bd_sram__openram_sp_cell_opt1a_replica_cell
gds flatglob sky130_fd_bd_sram__sram_sp_cell_opt1_ce
gds flatglob sky130_fd_bd_sram__openram_sp_cell_opt1_replica_ce
gds flatglob sky130_fd_bd_sram__openram_sp_cell_opt1a_replica_ce
gds flatglob sky130_fd_bd_sram__sram_sp_wlstrap_ce
gds flatglob sky130_fd_bd_sram__sram_sp_wlstrap_p_ce
gds flatten true
gds ordering true
gds read sky130_sram_1kbyte_1rw1r_8x1024_8_norbl.gds
puts "Finished reading gds sky130_sram_1kbyte_1rw1r_8x1024_8_norbl.gds"
load sky130_sram_1kbyte_1rw1r_8x1024_8_norbl
puts "Finished loading cell sky130_sram_1kbyte_1rw1r_8x1024_8_norbl"
cellname delete \(UNNAMED\)
writeall force
port makeall
extract style ngspice(si)
extract unique all
extract all
select top cell
feedback why
puts "Finished extract"
ext2spice hierarchy on
ext2spice format ngspice
ext2spice cthresh infinite
ext2spice rthresh infinite
ext2spice renumber off
ext2spice scale off
ext2spice blackbox on
ext2spice subcircuit top on
ext2spice global off
ext2spice format ngspice
ext2spice sky130_sram_1kbyte_1rw1r_8x1024_8_norbl
select top cell
feedback why
puts "Finished ext2spice"
quit -noprompt
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) GDS to MAG using Magic /home/sacrow/privateram-nochar/miniconda/bin/magic"
exit $magic_retcode
