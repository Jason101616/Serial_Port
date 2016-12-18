transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/OtherDisks/Study/EXPERIENT/VHDL/ZD_Serial_Port/Transmitter.vhd}
vcom -93 -work work {C:/OtherDisks/Study/EXPERIENT/VHDL/ZD_Serial_Port/Top_Module.vhd}
vcom -93 -work work {C:/OtherDisks/Study/EXPERIENT/VHDL/ZD_Serial_Port/Receiver.vhd}
vcom -93 -work work {C:/OtherDisks/Study/EXPERIENT/VHDL/ZD_Serial_Port/Divider.vhd}

vcom -93 -work work {C:/OtherDisks/Study/EXPERIENT/VHDL/ZD_Serial_Port/simulation/modelsim/Top_Module.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone -L rtl_work -L work -voptargs="+acc" Top_Module_vhd_tst

add wave *
view structure
view signals
run 10 ms
