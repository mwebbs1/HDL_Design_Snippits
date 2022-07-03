transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider {C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider/Clk_Divider_Top.v}
vlog -vlog01compat -work work +incdir+C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider {C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider/Clk_Divider_HZ.v}

vlog -vlog01compat -work work +incdir+C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider/CLK_Divider_Quartus/.. {C:/Users/1matt/Desktop/Matthew_Webb/Coding/FPGA/Verilog_Modules/Clk_Divider/CLK_Divider_Quartus/../Clk_Divider_HZ_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxii_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
