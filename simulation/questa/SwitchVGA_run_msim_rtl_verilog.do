transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/vga_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/clock50_25.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/ascii_test.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/SwitchVGA.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/top_vga_display.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/to_ascii.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/char_rom_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src {C:/Users/corra/OneDrive/Documentos/GitHub/SwitchVGA/src/screen_ram.v}

