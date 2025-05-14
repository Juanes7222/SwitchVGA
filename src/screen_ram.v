module screen_ram (
    input wire [11:0] address,  // Dirección para seleccionar el texto fijo
	 input we,
	 input [7:0] data_write,
    output reg [7:0] data      // Código ASCII del carácter
);
    (* ramstyle = "block" *) reg [7:0] screenRam [0:4095];
	 
	 initial begin
		$readmemh("screen_ram.hex", screenRam);
       screenRam[2431] = "V";
		 screenRam[2432] = "a";
		 screenRam[2433] = "l";
		 screenRam[2434] = "o";
		 screenRam[2435] = "r";
		 screenRam[2436] = " ";
		 screenRam[2437] = "i";
		 screenRam[2438] = "n";
		 screenRam[2439] = "g";
		 screenRam[2440] = "r";
		 screenRam[2441] = "e";
		 screenRam[2442] = "s";
		 screenRam[2443] = "a";
		 screenRam[2444] = "d";
		 screenRam[2445] = "o";
		 screenRam[2446] = " ";
		 screenRam[2447] = "=";
		 screenRam[2448] = " ";
    end
	 
	 always @* begin
		if (we) begin
			screenRam[2449] <= data_write;
		end
			
		data = screenRam[address];
		
	 end
	 
endmodule
