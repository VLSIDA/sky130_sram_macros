#!/bin/sh
export OPENRAM_TECH="/openram/technology"
echo "$(date): Starting LVS using Netgen /usr/local/bin/netgen"
/usr/local/bin/netgen -noconsole << EOF
lvs {sky130_sram_1kbyte_1r1w_8x1024_8.spice sky130_sram_1kbyte_1r1w_8x1024_8} {sky130_sram_1kbyte_1r1w_8x1024_8.lvs.sp sky130_sram_1kbyte_1r1w_8x1024_8} setup.tcl sky130_sram_1kbyte_1r1w_8x1024_8.lvs.report -full -json
quit
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) LVS using Netgen /usr/local/bin/netgen"
exit $magic_retcode
