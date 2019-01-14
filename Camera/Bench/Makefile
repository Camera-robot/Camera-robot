ifdef gui
  mode = -gui
endif


compil:
	rm -rf ../Lib
	vlib  ../Lib
	vmap ../Lib
	vcom -93 -work Lib ../VHD/gensync.vhd
	vcom -93 -work Lib ../VHD/image_process.vhd
	vcom -93 -work Lib ../VHD/barycentre.vhd
	vcom -93 -work Lib ../VHD/Top_camera.vhd
	vcom -93 -work ../Lib ../Bench/tb_barycentre.vhd
	vlog -sv -work ../Lib ../Bench/tbench_top.sv

simu_top:
	vsim -do script.tcl

clean_mm:
	-rm -rf ../Lib vsim.wlf transcript

clean:
	-rm -rf *bmp irun* waves* INCA* *diag
