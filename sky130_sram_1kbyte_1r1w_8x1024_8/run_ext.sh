#!/bin/sh
export OPENRAM_TECH="/openram/technology"
echo "$(date): Starting GDS to MAG using Magic /usr/local/bin/magic"

/usr/local/bin/magic -dnull -noconsole << EOF
drc off
set VDD vdd
set GND gnd
set SUB gnd
gds warning default
gds flatglob *_?mos_m*
gds flatten true
gds ordering true
gds readonly true
gds read sky130_sram_1kbyte_1r1w_8x1024_8.gds
puts "Finished reading gds sky130_sram_1kbyte_1r1w_8x1024_8.gds"
load sky130_sram_1kbyte_1r1w_8x1024_8
puts "Finished loading cell sky130_sram_1kbyte_1r1w_8x1024_8"
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
ext2spice sky130_sram_1kbyte_1r1w_8x1024_8
select top cell
feedback why
puts "Finished ext2spice"
quit -noprompt
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) GDS to MAG using Magic /usr/local/bin/magic"
exit $magic_retcode
