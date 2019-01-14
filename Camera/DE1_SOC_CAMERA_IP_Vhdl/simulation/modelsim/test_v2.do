add wave -position insertpoint  \
sim:/image_process/IMG \
sim:/image_process/VGA_CLK \
sim:/image_process/VGA_HS \
sim:/image_process/VGA_VS \
sim:/image_process/X_Cont \
sim:/image_process/Y_Cont \
sim:/image_process/b \
sim:/image_process/g \
sim:/image_process/r \
sim:/image_process/reset \
sim:/image_process/b_out \
sim:/image_process/g_out \
sim:/image_process/r_out 
force -freeze sim:/image_process/VGA_CLK 1 0, 0 {50 ps} -r 100
force -drive sim:/image_process/reset 0 0
run 100ns
force -drive sim:/image_process/reset 1 0
force -drive sim:/image_process/r 01010100 0
force -drive sim:/image_process/g 10010100 0
force -drive sim:/image_process/b 11010100 0
run 500ns
force -drive sim:/image_process/IMG 1 0
force -drive sim:/image_process/X_Cont 010101010 0
force -drive sim:/image_process/Y_Cont 010101010 0
run 500ns
force -drive sim:/image_process/X_Cont 110101010 0
run 500ns
force -drive sim:/image_process/Y_Cont 110101010 0
run 500ns
force -drive sim:/image_process/X_Cont 000101010 0
run 500ns
