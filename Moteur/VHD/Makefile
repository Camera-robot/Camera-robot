#ifdef gui
#  mode = -gui
#endif
		# mettre un \ sur toutes les lignes sauf la dernière
#src_files = ./vhd/mode_switch.vhd \
#            ./bench_MS.vhd

#run:
#	irun $(mode) -incdir . -input input.cmd -v93 -access +rwc $(src_files)

clean:
	-rm -rf lib_trame
#	-rm -rf *bmp irun* waves* INCA* *diag

compil : 
	rm -rf ../lib_trame
	vlib	../lib_trame
	vmap	lib_trame ../lib_trame
	vcom -93 -work lib_trame ../VHD/mode_switch.vhd
	vcom -93 -work lib_trame ../VHD/instruction.vhd
	vcom -93 -work lib_trame ../VHD/checksum.vhd
	vcom -93 -work lib_trame ../VHD/identifier.vhd
	vcom -93 -work lib_trame ../VHD/trame_assembler.vhd
	vcom -93 -work lib_trame ../VHD/coor_to_trame.vhd
	vcom -93 -work lib_trame ../VHD/decode_servo.vhd
	vcom -93 -work lib_trame ../VHD/UART_TX.vhd
	vcom -93 -work lib_trame ../VHD/top_72_to_serial.vhd


clean_mm:
	-rm -rf lib_trame vsim.wlf transcript

#clean_trash:
#	-rm -rf ~/.local/share/Trash/files/





#http://www.engr.newpaltz.edu/~bai/CSE45493/ModelSim%20Tutorial.htm
#tuto modelsim
