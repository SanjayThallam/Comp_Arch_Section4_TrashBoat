module FivetoThirtyTwoDecoder(select_bits, enabled, returnVal);

	input[4:0] select_bits;
	input enabled;
	output[31:0] returnVal;
	wire[3:0] threeToEightSelector;
	
	TwoToFourDecoder selector(select_bits[4:3], enabled, threeToEightSelector);
	
	ThreeToEightDecoder uno(select_bits[2:0], threeToEightSelector[0], returnVal[7:0]);
	ThreeToEightDecoder dos(select_bits[2:0], threeToEightSelector[1], returnVal[15:8]);
	ThreeToEightDecoder tres(select_bits[2:0], threeToEightSelector[2], returnVal[23:16]);
	ThreeToEightDecoder quatro(select_bits[2:0], threeToEightSelector[3], returnVal[31:24]);

endmodule 
/*
module testBench();

	reg enabled;
	reg[4:0] select_bits;
	wire[31:0] myOut;
	integer i;
	
	FivetoThirtyTwoDecoder uut(select_bits, enabled, myOut);
	initial begin 
	
		select_bits = 5'b00000;
		enabled = 1'b0;
		
		for(i = 0; i < 128; i = i + 1) begin
			enabled = ~ enabled;
			if(i % 2 == 1) begin
				select_bits = select_bits + 1;
			end
			#10;
		end
		$stop;
	end
	
endmodule
*/
module ThreeToEightDecoder(select_bits, enabled, returnVal); // GOing to use 4 to build a 5:32 decoder

	input[2:0] select_bits;
	input enabled;
	output reg[7:0] returnVal;
	
	always@(enabled or select_bits) begin
		
		if(enabled) begin
		
			case(select_bits)
			
				3'b000: returnVal = 8'b00000001;
				3'b001: returnVal = 8'b00000010;
				3'b010: returnVal = 8'b00000100;
				3'b011: returnVal = 8'b00001000;
				3'b100: returnVal = 8'b00010000;
				3'b101: returnVal = 8'b00100000;
				3'b110: returnVal = 8'b01000000;
				3'b111: returnVal = 8'b10000000;
				default: returnVal = 8'b00000000;
			
			endcase
		
		end else begin
			returnVal = 8'b00000000;
		end
	end

endmodule

module TwoToFourDecoder(select_bits, enabled, returnVal); // Going to use to select between the 3:8 decoders 

	input [1:0] select_bits;
	input enabled;
	output reg[3:0] returnVal;
	
	
	always@(enabled or select_bits) begin
	
		if(enabled) begin
		
			case(select_bits)
				
				2'b00: returnVal = 4'b0001;
				2'b01: returnVal = 4'b0010;
				2'b10: returnVal = 4'b0100;
				2'b11: returnVal = 4'b1000;
				default: returnVal = 4'b0000;
				
			endcase
		end else begin
			returnVal = 4'b0000;
		end
	end


endmodule 