module Register64Bit(q_out, data, reset, load, clk);

	input [63:0] data;
	input clk;
	input reset;
	input load;
	output reg[63:0] q_out;

	initial begin
		q_out <= 0;
	
	end

	always@(posedge clk or posedge reset) begin
		if(reset) begin
			q_out <= 0;
		end else if(load) begin
			q_out <= data;
		end else begin
			q_out <= q_out;
		end
		
	end

endmodule