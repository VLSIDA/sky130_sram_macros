#!/bin/sh
export OPENRAM_TECH="/home/sacrow/privateram-nochar/technology:/home/sacrow/.local/lib/python3.8/site-packages/openram/technology"
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell_dummy.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_dp_cell_replica.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1a.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1a_dummy.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1_ce.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cell_opt1.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1_replica.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_cell_opt1a_replica.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend_cent.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colend_p_cent.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda_cent.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_colenda_p_cent.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_rowend.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_rowenda.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_rowend_replica.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__openram_sp_rowenda_replica.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_corner.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cornera.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_cornerb.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrapa.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_ce.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_p_ce.mag .
cp /home/sacrow/privateram-nochar/technology/sky130/maglef_lib/sky130_fd_bd_sram__sram_sp_wlstrap_p.mag .
echo "$(date): Starting DRC using Magic /home/sacrow/privateram-nochar/miniconda/bin/magic"

/home/sacrow/privateram-nochar/miniconda/bin/magic -dnull -noconsole << EOF
load sky130_sram_1kbyte_1rw1r_8x1024_8_norbl -dereference
puts "Finished loading cell sky130_sram_1kbyte_1rw1r_8x1024_8_norbl"
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
echo "$(date): Finished ($magic_retcode) DRC using Magic /home/sacrow/privateram-nochar/miniconda/bin/magic"
exit $magic_retcode
