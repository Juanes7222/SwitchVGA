module screen_ram (
    input wire [11:0] address,  // Dirección para seleccionar el texto fijo
	 input we,
	 input [7:0] data_write,
	 input clk,
    output reg [7:0] data      // Código ASCII del carácter
);
    (* ramstyle = "block" *) reg [7:0] screenRam [0:4095];
	 
	 initial begin
		$readmemh("screen_ram.hex", screenRam);
       screenRam[2467] = "V";
		 screenRam[2468] = "a";
		 screenRam[2469] = "l";
		 screenRam[2470] = "o";
		 screenRam[2471] = "r";
		 screenRam[2472] = " ";
		 screenRam[2473] = "i";
		 screenRam[2474] = "n";
		 screenRam[2475] = "g";
		 screenRam[2476] = "r";
		 screenRam[2477] = "e";
		 screenRam[2478] = "s";
		 screenRam[2479] = "a";
		 screenRam[2480] = "d";
		 screenRam[2481] = "o";
		 screenRam[2482] = " ";
		 screenRam[2483] = "=";
		 screenRam[2484] = " ";
    end
	 
	 always @(posedge clk) begin
		if (we) begin
			screenRam[2485] <= data_write;
		end
			
		data = screenRam[address];
		
	 end
	 
endmodule
