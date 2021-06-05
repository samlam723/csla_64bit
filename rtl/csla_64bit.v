// =============================================================================
// Filename: csla_adder_64bit.v
// Author: Lam King Sum, Sam
// Email: ksalmaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
// This file implements a Square Root 64-bit Carry-Select (CSL) adder.
// =============================================================================


// ----------------------------------------------------
// Part I: 64-bit CSL adder
// ----------------------------------------------------
// TODO: please implement 64-bit CSL adder here, with 4bit 1st-stage.
module csla_64bit(
	input wire	[63:0]	a,		// operator 1
	input wire	[63:0]	b, 		// operator 2
	input wire			cin, 	// carry in

	output wire	[63:0]	sum,	// sum
	output wire			cout	// carry out
);

wire [8*2-1:0] mid_c;  //guessed carries out: 18 bits as there are 8 next_stage_mux with 2 inputs
wire [127-8:0] mid_sum;   // guessed sum: 120 bits as 8 bits in first stage are neglected 
wire [8:0] selected_c; // selected carries out: 9 bits as there are 9 stages
wire [64-1:0] selected_sum; // selected sum

bitNRCAdder #(.N(4)) bitNRCAdder1_i1(.add1(a[3:0]),.add2(b[3:0]),.cin(cin),.result(selected_sum[3:0]),.cout(selected_c[0])); //.result(mid_sum[3:0]) -> .result(selected_sum[3:0])

bitNRCAdder #(.N(4)) bitNRCAdder1_i2(.add1(a[7:4]),.add2(b[7:4]),.cin(1'b0),.result(mid_sum[3:0]),.cout(mid_c[0])); //For upper FA: Cin=0
bitNRCAdder #(.N(4)) bitNRCAdder2_i2(.add1(a[7:4]),.add2(b[7:4]),.cin(1'b1),.result(mid_sum[7:4]),.cout(mid_c[1]));	//For lower FA: Cin=1
bitNmux 	#(.N(4)) bitNmux_i2(.in0({mid_sum[3:0],mid_c[0]}),.in1({mid_sum[7:4],mid_c[1]}),.sel(selected_c[0]),.ou1({selected_sum[7:4],selected_c[1]})); // 1st input:sum_mux, 2nd input:next_stage_mux

bitNRCAdder #(.N(5)) bitNRCAdder1_i3(.add1(a[12:8]),.add2(b[12:8]),.cin(1'b0),.result(mid_sum[12:8]),.cout(mid_c[2]));
bitNRCAdder #(.N(5)) bitNRCAdder2_i3(.add1(a[12:8]),.add2(b[12:8]),.cin(1'b1),.result(mid_sum[17:13]),.cout(mid_c[3]));
bitNmux 	#(.N(5)) bitNmux_i3(.in0({mid_sum[12:8],mid_c[2]}),.in1({mid_sum[17:13],mid_c[3]}),.sel(selected_c[1]),.ou1({selected_sum[12:8],selected_c[2]}));

bitNRCAdder #(.N(6)) bitNRCAdder1_i4(.add1(a[18:13]),.add2(b[18:13]),.cin(1'b0),.result(mid_sum[23:18]),.cout(mid_c[4]));
bitNRCAdder #(.N(6)) bitNRCAdder2_i4(.add1(a[18:13]),.add2(b[18:13]),.cin(1'b1),.result(mid_sum[29:24]),.cout(mid_c[5]));
bitNmux 	#(.N(6)) bitNmux_i4(.in0({mid_sum[23:18],mid_c[4]}),.in1({mid_sum[29:24],mid_c[5]}),.sel(selected_c[2]),.ou1({selected_sum[18:13],selected_c[3]}));

bitNRCAdder #(.N(7)) bitNRCAdder1_i5(.add1(a[25:19]),.add2(b[25:19]),.cin(1'b0),.result(mid_sum[36:30]),.cout(mid_c[6]));
bitNRCAdder #(.N(7)) bitNRCAdder2_i5(.add1(a[25:19]),.add2(b[25:19]),.cin(1'b1),.result(mid_sum[43:37]),.cout(mid_c[7]));
bitNmux 	#(.N(7)) bitNmux_i5(.in0({mid_sum[36:30],mid_c[6]}),.in1({mid_sum[43:37],mid_c[7]}),.sel(selected_c[3]),.ou1({selected_sum[25:19],selected_c[4]}));

bitNRCAdder #(.N(8)) bitNRCAdder1_i6(.add1(a[33:26]),.add2(b[33:26]),.cin(1'b0),.result(mid_sum[51:44]),.cout(mid_c[8]));
bitNRCAdder #(.N(8)) bitNRCAdder2_i6(.add1(a[33:26]),.add2(b[33:26]),.cin(1'b1),.result(mid_sum[59:52]),.cout(mid_c[9]));
bitNmux 	#(.N(8)) bitNmux_i6(.in0({mid_sum[51:44],mid_c[8]}),.in1({mid_sum[59:52],mid_c[9]}),.sel(selected_c[4]),.ou1({selected_sum[33:26],selected_c[5]}));

bitNRCAdder #(.N(9)) bitNRCAdder1_i7(.add1(a[42:34]),.add2(b[42:34]),.cin(1'b0),.result(mid_sum[68:60]),.cout(mid_c[10]));
bitNRCAdder #(.N(9)) bitNRCAdder2_i7(.add1(a[42:34]),.add2(b[42:34]),.cin(1'b1),.result(mid_sum[77:69]),.cout(mid_c[11]));
bitNmux 	#(.N(9)) bitNmux_i7(.in0({mid_sum[68:60],mid_c[10]}),.in1({mid_sum[77:69],mid_c[11]}),.sel(selected_c[5]),.ou1({selected_sum[42:34],selected_c[6]}));

bitNRCAdder #(.N(10)) bitNRCAdder1_i8(.add1(a[52:43]),.add2(b[52:43]),.cin(1'b0),.result(mid_sum[87:78]),.cout(mid_c[12]));
bitNRCAdder #(.N(10)) bitNRCAdder2_i8(.add1(a[52:43]),.add2(b[52:43]),.cin(1'b1),.result(mid_sum[97:88]),.cout(mid_c[13]));
bitNmux 	#(.N(10)) bitNmux_i8(.in0({mid_sum[87:78],mid_c[12]}),.in1({mid_sum[97:88],mid_c[13]}),.sel(selected_c[6]),.ou1({selected_sum[52:43],selected_c[7]}));

bitNRCAdder #(.N(11)) bitNRCAdder1_i9(.add1(a[63:53]),.add2(b[63:53]),.cin(1'b0),.result(mid_sum[108:98]),.cout(mid_c[14]));
bitNRCAdder #(.N(11)) bitNRCAdder2_i9(.add1(a[63:53]),.add2(b[63:53]),.cin(1'b1),.result(mid_sum[119:109]),.cout(mid_c[15]));
bitNmux 	#(.N(11)) bitNmux_i9(.in0({mid_sum[108:98],mid_c[14]}),.in1({mid_sum[119:109],mid_c[15]}),.sel(selected_c[7]),.ou1({selected_sum[63:53],selected_c[8]}));

assign cout = selected_c[8]; //cout=Last_stage_mux_out
assign sum = selected_sum;	//sum=sum_of_all_lower_mux_out

endmodule

// ----------------------------------------------------


// ----------------------------------------------------
// Part II: 16-bit Square Root CSL adder
// ----------------------------------------------------
module csla_16bit(
	input wire	[15:0]	a,		// operator 1
	input wire	[15:0]	b, 		// operator 2
	input wire			cin, 	// carry in

	output wire	[15:0]	sum,	// sum
	output wire			cout	// carry out
);

	 
wire [4*2-1:0] mid_c;  //guessed carries out
wire [31:0] mid_sum;   // guessed sum
wire [4:0] selected_c; // selected carries out
wire [16-1:0] selected_sum; // selected sum


bitNRCAdder #(.N(2)) bitNRCAdder1_i1(.add1(a[1:0]),.add2(b[1:0]),.cin(cin),.result(selected_sum[1:0]),.cout(selected_c[0]));

bitNRCAdder #(.N(2)) bitNRCAdder1_i2(.add1(a[3:2]),.add2(b[3:2]),.cin(1'b0),.result(mid_sum[5:4]),.cout(mid_c[0]));
bitNRCAdder #(.N(2)) bitNRCAdder2_i2(.add1(a[3:2]),.add2(b[3:2]),.cin(1'b1),.result(mid_sum[7:6]),.cout(mid_c[1]));
bitNmux 	#(.N(2)) bitNmux_i2(.in0({mid_sum[5:4],mid_c[0]}),.in1({mid_sum[7:6],mid_c[1]}),.sel(selected_c[0]),.ou1({selected_sum[3:2],selected_c[1]}));

bitNRCAdder #(.N(3)) bitNRCAdder1_i3(.add1(a[6:4]),.add2(b[6:4]),.cin(1'b0),.result(mid_sum[10:8]),.cout(mid_c[2]));
bitNRCAdder #(.N(3)) bitNRCAdder2_i3(.add1(a[6:4]),.add2(b[6:4]),.cin(1'b1),.result(mid_sum[13:11]),.cout(mid_c[3]));
bitNmux 	#(.N(3)) bitNmux_i3(.in0({mid_sum[10:8],mid_c[2]}),.in1({mid_sum[13:11],mid_c[3]}),.sel(selected_c[1]),.ou1({selected_sum[6:4],selected_c[2]}));

bitNRCAdder #(.N(4)) bitNRCAdder1_i4(.add1(a[10:7]),.add2(b[10:7]),.cin(1'b0),.result(mid_sum[17:14]),.cout(mid_c[4]));
bitNRCAdder #(.N(4)) bitNRCAdder2_i4(.add1(a[10:7]),.add2(b[10:7]),.cin(1'b1),.result(mid_sum[21:18]),.cout(mid_c[5]));
bitNmux 	#(.N(4)) bitNmux_i4(.in0({mid_sum[17:14],mid_c[4]}),.in1({mid_sum[21:18],mid_c[5]}),.sel(selected_c[2]),.ou1({selected_sum[10:7],selected_c[3]}));

bitNRCAdder #(.N(5)) bitNRCAdder1_i5(.add1(a[15:11]),.add2(b[15:11]),.cin(1'b0),.result(mid_sum[26:22]),.cout(mid_c[6]));
bitNRCAdder #(.N(5)) bitNRCAdder2_i5(.add1(a[15:11]),.add2(b[15:11]),.cin(1'b1),.result(mid_sum[31:27]),.cout(mid_c[7]));
bitNmux 	#(.N(5)) bitNmux_i5(.in0({mid_sum[26:22],mid_c[6]}),.in1({mid_sum[31:27],mid_c[7]}),.sel(selected_c[3]),.ou1({selected_sum[15:11],selected_c[4]}));

assign cout = selected_c[4];
assign sum = selected_sum;

endmodule
// ----------------------------------------------------
// Part III: N-bit Ripple Carry Adder by generator
// ----------------------------------------------------
module bitNRCAdder #(parameter N = 4) (

  input wire  [N-1:0]         add1,      //adder1
  input wire  [N-1:0]         add2,      //adder2
  input wire 			   cin,          //carry input

  output wire  [N-1:0]         result,   //sum
  output wire              cout          //carry output
);

wire [N-1:0] p,g; //internal variables
wire [N:0] c_mid; //carry

assign p = add1^add2;
assign g = add1&add2;

genvar i;
generate
	for(i=0;i<N;i=i+1) begin: block
	bit1adder bit1adder_module(.g(g[i]),.p(p[i]),.cin(c_mid[i]),.outbit(result[i]),.count(c_mid[i+1]));
	end
endgenerate

assign c_mid[0] = cin;
assign cout = c_mid[N];

endmodule
// ----------------------------------------------------
// Part IV: N-bit multiplexer
// ----------------------------------------------------
module bitNmux #(parameter N = 5) (
input wire [N:0] in0,in1, // 2-way inputs
input wire sel,             // select

output reg [N:0] ou1      //outputs
);

always@(*) begin
case (sel)
	1'b0:ou1 = in0;
	1'b1:ou1 = in1;
endcase
end

endmodule

// ----------------------------------------------------
// Part V: 1-bit Full Adder
// ----------------------------------------------------
module bit1adder(
input wire g,  // generate
input wire p,  // propagate
input wire cin,  // carry in

output wire outbit, // outbit
output wire count // carry out
);

assign outbit = p^cin; //p xor cin
assign count = g|(cin&p); //g + (cin * p)

endmodule
