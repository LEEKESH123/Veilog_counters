`include "count.v"
module tb;
	reg clk,res;
	wire [3:0]count;

	counter dut(
		.clk(clk),
		.res(res),
		.count(count)
    );

	initial begin
	 clk = 0;
	 forever #5 clk = ~clk;
	 end

	initial begin
		res = 0;
		#10;
		res = 1;

		#200;

		res = 0;
		#10;
		res = 1;

		#100;
		$finish;
	end

	always@(posedge clk) begin
	$display("time =%t | clk = %b | res = %b | count = %d " ,$time,clk,res,count);

	end

endmodule



//# End time: 17:28:58 on Aug 30,2025, Elapsed time: 0:00:00
//# Errors: 0, Warnings: 0
//# End time: 17:29:10 on Aug 30,2025, Elapsed time: 0:01:54
//# Errors: 0, Warnings: 0
//# vsim tb 
//# Start time: 17:29:10 on Aug 30,2025
//# Loading work.tb
//# Loading work.counter
//# WARNING: No extended dataflow license exists
//# time =                   5 | clk = 1 | res = 0 | count =  0 
//# time =                  15 | clk = 1 | res = 1 | count =  0 
//# time =                  25 | clk = 1 | res = 1 | count =  1 
//# time =                  35 | clk = 1 | res = 1 | count =  2 
//# time =                  45 | clk = 1 | res = 1 | count =  3 
//# time =                  55 | clk = 1 | res = 1 | count =  4 
//# time =                  65 | clk = 1 | res = 1 | count =  5 
//# time =                  75 | clk = 1 | res = 1 | count =  6 
//# time =                  85 | clk = 1 | res = 1 | count =  7 
//# time =                  95 | clk = 1 | res = 1 | count =  8 
//# time =                 105 | clk = 1 | res = 1 | count =  9 
//# time =                 115 | clk = 1 | res = 1 | count = 10 
//# time =                 125 | clk = 1 | res = 1 | count = 11 
//# time =                 135 | clk = 1 | res = 1 | count = 12 
//# time =                 145 | clk = 1 | res = 1 | count = 13 
//# time =                 155 | clk = 1 | res = 1 | count = 14 
//# time =                 165 | clk = 1 | res = 1 | count = 15 
//# time =                 175 | clk = 1 | res = 1 | count =  0 
//# time =                 185 | clk = 1 | res = 1 | count =  1 
//# time =                 195 | clk = 1 | res = 1 | count =  2 
//# time =                 205 | clk = 1 | res = 1 | count =  3 
//# time =                 215 | clk = 1 | res = 0 | count =  0 
//# time =                 225 | clk = 1 | res = 1 | count =  0 
//# time =                 235 | clk = 1 | res = 1 | count =  1 
//# time =                 245 | clk = 1 | res = 1 | count =  2 
//# time =                 255 | clk = 1 | res = 1 | count =  3 
//# time =                 265 | clk = 1 | res = 1 | count =  4 
//# time =                 275 | clk = 1 | res = 1 | count =  5 
//# time =                 285 | clk = 1 | res = 1 | count =  6 
//# time =                 295 | clk = 1 | res = 1 | count =  7 
//# time =                 305 | clk = 1 | res = 1 | count =  8 
//# time =                 315 | clk = 1 | res = 1 | count =  9 
//# ** Note: $finish    : tb.v(29)
//#    Time: 320 ps  Iteration: 0  Instance: /tb
//# 1
