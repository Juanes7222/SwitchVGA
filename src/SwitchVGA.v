module SwitchVGA (
 	 input [3:0] value,    
	 input wire clk_fpga,
	 input wire reset,
	 output wire [7:0] VGA_R,       // Salida color rojo (8 bits)
	 output wire [7:0] VGA_G,       // Salida color verde (8 bits)
	 output wire [7:0] VGA_B,       // Salida color azul (8 bits)
	 output wire VGA_CLK,           // Reloj VGA
	 output wire VGA_SYNC_N,        // Sincronización VGA (siempre en bajo)
	 output wire VGA_BLANK_N,       // Señal de blanking
	 output wire VGA_HS,            // Sincronización horizontal
	 output wire VGA_VS             // Sincronización vertical
);

	wire video_on;
	wire [9:0] x, y; 

	top_vga_display display(
		.value(value),
		.video_on(video_on),
		.x(x),
		.y(y),
		.clk(VGA_CLK),
		.VGA_R(VGA_R),
		.VGA_G(VGA_G),
		.VGA_B(VGA_B)
	);
	
	 vga_controller vga (
		.clk_50MHz(clk_fpga),
		.reset(reset),
		.video_on(video_on),
		.hsync(VGA_HS),
		.vsync(VGA_VS),
		.clk(VGA_CLK),
		.x(x),
		.y(y)
    );

	 
	 // Señales VGA adicionales
    assign VGA_SYNC_N = 0;          // Sincronización en bajo
    assign VGA_BLANK_N = video_on;  // Señal de blanking

	 
endmodule