module top_vga_display(
	input [3:0] value,
	input video_on,
	input [9:0] x,
	input [9:0] y,
	output [7:0] VGA_R,       // Salida del color rojo
   output [7:0] VGA_G,       // Salida del color verde
   output [7:0] VGA_B        // Salida del color azul
);

	wire data;
	reg we;
	wire [7:0] ascii, ascii_data;
	
	ascii_char ascii_char(
		 .video_on(video_on),
		 .ascii_char(ascii_data),
		 .x(x),
		 .y(y),
		 .reset(reset),
		 .VGA_R(VGA_R),
		 .VGA_G(VGA_G),
		 .VGA_B(VGA_B)
	);
	
	to_ascii to_ascii (
		.hex_digit(value),
		.ascii(ascii)
	);
		
	
	screen_ram screen_ram(
		.address({y[8:4], x[9:3]}),
		.we(1'b1),
		.data_write(ascii),
		.data(ascii_data)
	);


endmodule