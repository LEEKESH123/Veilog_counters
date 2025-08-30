module counter(clk,res,count);
	input clk,res;
	output reg [2:0]count;

	always@(negedge clk or posedge res)begin
		if(res) 
		count[0] <= 1'b0;
		else count[0] <= ~count[0];
		end

	always@(negedge count[0] or posedge res)begin
		if(res)
		count[1] <= 1'b0;
		else count[1] <= ~count[1];
		end

	always@(negedge count[1] or posedge res)begin
		if(res)
		count[2] <= 1'b0;
		else count[2] <= ~count[2];
		end

	endmodule
