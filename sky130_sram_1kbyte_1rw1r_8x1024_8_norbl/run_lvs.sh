#!/bin/sh
export OPENRAM_TECH="/home/sacrow/privateram-nochar/technology:/home/sacrow/.local/lib/python3.8/site-packages/openram/technology"
echo "$(date): Starting LVS using Netgen /home/sacrow/privateram-nochar/miniconda/bin/netgen"
/home/sacrow/privateram-nochar/miniconda/bin/netgen -noconsole << EOF
lvs {sky130_sram_1kbyte_1rw1r_8x1024_8_norbl.spice sky130_sram_1kbyte_1rw1r_8x1024_8_norbl} {sky130_sram_1kbyte_1rw1r_8x1024_8_norbl.lvs.sp sky130_sram_1kbyte_1rw1r_8x1024_8_norbl} setup.tcl sky130_sram_1kbyte_1rw1r_8x1024_8_norbl.lvs.report -full -json
quit
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) LVS using Netgen /home/sacrow/privateram-nochar/miniconda/bin/netgen"
exit $magic_retcode
