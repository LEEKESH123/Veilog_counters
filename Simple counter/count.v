module counter(clk,res,count);
	input clk,res;
	output reg [3:0]count;

	always@(posedge clk or negedge res) begin
		if(!res)
			count <=0;
		else
			count <= count + 1;
	end
endmodule
