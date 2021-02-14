module mux32to1(select_bits, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17,
in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, data_out);

	input[4:0] select_bits;
	input[63:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21,
					in22, in23, in24, in25, in26, in27, in28, in29, in30, in31;
	output reg[63:0] data_out;
	
	always@(select_bits) begin
	
		case(select_bits)
			5'b00000: data_out = in0;
			5'b00001: data_out = in1;
			5'b00010: data_out = in2;
			5'b00011: data_out = in3;
			5'b00100: data_out = in4;
			5'b00101: data_out = in5;
			5'b00110: data_out = in6;
			5'b00111: data_out = in7;
			5'b01000: data_out = in8;
			5'b01001: data_out = in9;
			5'b01010: data_out = in10;
			5'b01011: data_out = in11;
			5'b01100: data_out = in12;
			5'b01101: data_out = in13;
			5'b01110: data_out = in14;
			5'b01111: data_out = in15;
			5'b10000: data_out = in16;
			5'b10001: data_out = in17;
			5'b10010: data_out = in18;
			5'b10011: data_out = in19;
			5'b10100: data_out = in20;
			5'b10101: data_out = in21;
			5'b10110: data_out = in22;
			5'b10111: data_out = in23;
			5'b11000: data_out = in24;
			5'b11001: data_out = in25;
			5'b11010: data_out = in26;
			5'b11011: data_out = in27;
			5'b11100: data_out = in28;
			5'b11101: data_out = in29;
			5'b11110: data_out = in30;
			5'b11111: data_out = in31;
		endcase
	end

endmodule 