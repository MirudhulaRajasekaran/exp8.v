module counter(
    input clk,
    input rst,
    output reg [3:0] out
    );

always @ (posedge clk or rst) begin
if (rst)
	out=0;
else if (clk==1) 
	out=out+1;
end
	
endmodule


TESTBENCH

module tb_counter;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10;
		rst=0;
        
		// Add stimulus here

	end
always #20 clk=~clk;     
endmodule
