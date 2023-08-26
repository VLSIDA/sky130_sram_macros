#!/bin/sh
export OPENRAM_TECH="/home/bonal/PrivateRAM/technology:/home/bonal/.local/lib/python3.8/site-packages/openram/technology"
echo "$(date): Starting LVS using Netgen /home/bonal/PrivateRAM/miniconda/bin/netgen"
/home/bonal/PrivateRAM/miniconda/bin/netgen -noconsole << EOF
lvs {sky130_sram_1kbyte_1rw1r_32x256_8.spice sky130_sram_1kbyte_1rw1r_32x256_8} {sky130_sram_1kbyte_1rw1r_32x256_8.lvs.sp sky130_sram_1kbyte_1rw1r_32x256_8} setup.tcl sky130_sram_1kbyte_1rw1r_32x256_8.lvs.report -full -json
quit
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) LVS using Netgen /home/bonal/PrivateRAM/miniconda/bin/netgen"
exit $magic_retcode
