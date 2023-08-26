#!/bin/sh
export OPENRAM_TECH="/home/bonal/PrivateRAM/technology:/home/bonal/.local/lib/python3.8/site-packages/openram/technology"
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell_dummy.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell_replica.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1a.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1a_dummy.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1_ce.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1_replica.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1a_replica.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend_cent.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend_p_cent.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda_cent.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda_p_cent.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_rowend.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_rowenda.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_rowend_replica.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_rowenda_replica.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_corner.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cornera.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cornerb.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrapa.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_ce.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_p_ce.mag .
cp /home/bonal/PrivateRAM/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_p.mag .
echo "$(date): Starting DRC using Magic /home/bonal/PrivateRAM/miniconda/bin/magic"

/home/bonal/PrivateRAM/miniconda/bin/magic -dnull -noconsole << EOF
load sky130_sram_1kbyte_1rw1r_32x256_8 -dereference
puts "Finished loading cell sky130_sram_1kbyte_1rw1r_32x256_8"
cellname delete \(UNNAMED\)
select top cell
expand
puts "Finished expanding"
drc euclidean on
drc check
puts "Finished drc check"
drc catchup
puts "Finished drc catchup"
drc count total
quit -noprompt
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) DRC using Magic /home/bonal/PrivateRAM/miniconda/bin/magic"
exit $magic_retcode
