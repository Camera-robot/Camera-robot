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


clean_mm:
	-rm -rf ../Lib vsim.wlf transcript
