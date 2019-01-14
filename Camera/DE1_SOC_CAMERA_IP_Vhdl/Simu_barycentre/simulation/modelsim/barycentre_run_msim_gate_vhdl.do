transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {/softslin/altera14_0/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {/softslin/altera14_0/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {/softslin/altera14_0/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {/softslin/altera14_0/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {/softslin/altera14_0/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {/softslin/altera14_0/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {/softslin/altera14_0/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/cycloneiv_hssi
vmap cycloneiv_hssi ./vhdl_libs/cycloneiv_hssi
vcom -93 -work cycloneiv_hssi {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_hssi_components.vhd}
vcom -93 -work cycloneiv_hssi {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_hssi_atoms.vhd}

vlib vhdl_libs/cycloneiv_pcie_hip
vmap cycloneiv_pcie_hip ./vhdl_libs/cycloneiv_pcie_hip
vcom -93 -work cycloneiv_pcie_hip {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_pcie_hip_components.vhd}
vcom -93 -work cycloneiv_pcie_hip {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_pcie_hip_atoms.vhd}

vlib vhdl_libs/cycloneiv
vmap cycloneiv ./vhdl_libs/cycloneiv
vcom -93 -work cycloneiv {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_atoms.vhd}
vcom -93 -work cycloneiv {/softslin/altera14_0/quartus/eda/sim_lib/cycloneiv_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {barycentre_6_1200mv_85c_slow.vho}

