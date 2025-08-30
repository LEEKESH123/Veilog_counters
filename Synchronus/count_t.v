module counter(clk,res,count);
	input clk,res;
	output reg [2:0]count;

	always@(posedge clk) begin
	if(res)
		count <= 3'b000;
	else begin
		count[0] <= ~count[0];
		count[1] <= count[1] ^ count[0];
		count[2] <= count[2] ^ (count[1] & count[0]);
	end
	end
endmodule

