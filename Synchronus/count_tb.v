`include "count_t.v"
module tb;
reg clk,res;
wire [2:0]count;

counter dut (
	.clk(clk),
	.res(res),
	.count(count)
	);

initial begin
	clk = 0;
	forever #5 clk = ~clk;
	end

initial begin
	res = 1;
	#10;
	res = 0;

	#200;
	res = 1;
	#10
	res = 0;

	#100;
	$finish;
	end

always@(posedge clk) begin
 #1	$display("time=%t | clk=%b | res=%b | count=%b",$time,clk,res,count);

	end

endmodule

	

