// =============================================================================
// Filename: csla_64bit_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for csla_64bit.
// =============================================================================

`timescale 1 ns / 1 ps

module csla_64bit_tb;

// ----------------------------------
// Interface of the module
// ----------------------------------
reg		[63:0]	a, b;
reg 			cin;
wire 	[63:0]	sum;
wire			cout;

// ----------------------------------
// Instantiate the module
// ----------------------------------
csla_64bit uut (
	.a(a),
	.b(b), 
	.cin(cin), 
	.sum(sum),
	.cout(cout)
);

// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin
	// Input stimulus 1: 8+48+0
	a    = 64'd8;
	b    = 64'd48;
	cin  = 1'b0;
	#10;
	$display("%0d + %0d + %0d: sum = %0d, cout = %0d, This should be 56.", a, b, cin, sum, cout);

	// Input stimulus 2: 15+123+1
	a    = 64'd15;
	b    = 64'd123;
	cin  = 1'b1;
	#10;
	$display("%0d + %0d + %0d: sum = %0d, cout = %0d, This should be 139.", a, b, cin, sum, cout);

	// Input stimulus 3: 4444+9537+0
	a    = 64'd4444;
	b    = 64'd9537;
	cin  = 1'b0;
	#10;
	$display("%0d + %0d + %0d: sum = %0d, cout = %0d, This should be 13921.", a, b, cin, sum, cout);

	// Input stimulus 4: 555555+3456789+1
	a    = 64'd555555;
	b    = 64'd3456789;
	cin  = 1'b1;
	#10;
	$display("%0d + %0d + %0d: sum = %0d, cout = %0d, This should be 4012345.", a, b, cin, sum, cout);

	// Input stimulus 5: 33445566778899+87658898797465+1
	a    = 64'd33445566778899;
	b    = 64'd87658898797465;
	cin  = 1'b1;
	#10;
	$display("%0d + %0d + %0d: sum = %0d, cout = %0d, This should be 121104465576365.", a, b, cin, sum, cout);

	$finish;
end

endmodule
