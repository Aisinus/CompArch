transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Lab13.vo}

vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Desktop/ComArch111/Week13 {C:/Users/xxxau/Desktop/ComArch111/Week13/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Desktop/ComArch111/Week13 {C:/Users/xxxau/Desktop/ComArch111/Week13/control_unit.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
