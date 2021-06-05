
module bit1adder_0 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n1) );
endmodule


module bit1adder_121 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n3;

  AOI21_X2 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n3) );
  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U4 ( .A(n3), .ZN(count) );
endmodule


module bit1adder_122 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n3;

  AOI21_X2 U1 ( .B1(cin), .B2(p), .A(g), .ZN(n3) );
  INV_X1 U4 ( .A(n3), .ZN(count) );
  XOR2_X1 U2 ( .A(p), .B(cin), .Z(outbit) );
endmodule


module bit1adder_123 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n3;

  INV_X1 U4 ( .A(n3), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n3) );
  XOR2_X1 U1 ( .A(p), .B(cin), .Z(outbit) );
endmodule


module bitNRCAdder_N4_0 ( add1, add2, cin, result, cout );
  input [3:0] add1;
  input [3:0] add2;
  output [3:0] result;
  input cin;
  output cout;
  wire   n1;
  wire   [3:0] p;
  wire   [3:0] g;
  wire   [3:1] c_mid;

  bit1adder_0 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_123 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_122 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_121 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(cout) );
  XOR2_X1 U5 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U6 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U7 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  INV_X2 U3 ( .A(add2[0]), .ZN(n1) );
  AND2_X1 U4 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
  AND2_X1 U9 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U10 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U11 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  XNOR2_X1 U1 ( .A(n1), .B(add1[0]), .ZN(p[0]) );
endmodule


module bitNmux_N4 ( in0, in1, sel, ou1 );
  input [4:0] in0;
  input [4:0] in1;
  output [4:0] ou1;
  input sel;
  wire   n6, n7, n8, n9, n10, n11, n1, n2;

  INV_X1 U1 ( .A(n11), .ZN(ou1[0]) );
  AOI22_X1 U2 ( .A1(n6), .A2(in0[0]), .B1(sel), .B2(in1[0]), .ZN(n11) );
  INV_X1 U3 ( .A(n2), .ZN(n1) );
  INV_X1 U4 ( .A(sel), .ZN(n6) );
  CLKBUF_X1 U5 ( .A(n6), .Z(n2) );
  INV_X1 U6 ( .A(n9), .ZN(ou1[2]) );
  INV_X1 U7 ( .A(n8), .ZN(ou1[3]) );
  INV_X1 U8 ( .A(n7), .ZN(ou1[4]) );
  INV_X1 U9 ( .A(n10), .ZN(ou1[1]) );
  AOI22_X1 U10 ( .A1(in0[1]), .A2(n2), .B1(in1[1]), .B2(n1), .ZN(n10) );
  AOI22_X1 U11 ( .A1(in0[2]), .A2(n2), .B1(in1[2]), .B2(n1), .ZN(n9) );
  AOI22_X1 U12 ( .A1(in0[3]), .A2(n2), .B1(in1[3]), .B2(sel), .ZN(n8) );
  AOI22_X1 U13 ( .A1(in0[4]), .A2(n2), .B1(n1), .B2(in1[4]), .ZN(n7) );
endmodule


module bit1adder_108 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_109 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_110 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_111 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_112 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N5_0 ( add1, add2, cin, result, cout );
  input [4:0] add1;
  input [4:0] add2;
  output [4:0] result;
  input cin;
  output cout;

  wire   [4:0] p;
  wire   [4:0] g;
  wire   [4:1] c_mid;

  bit1adder_112 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_111 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_110 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_109 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_108 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(cout) );
  XOR2_X1 U6 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U7 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U8 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U9 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U10 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U2 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U5 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N5 ( in0, in1, sel, ou1 );
  input [5:0] in0;
  input [5:0] in1;
  output [5:0] ou1;
  input sel;
  wire   n7, n8, n9, n10, n11, n12, n1, n2, n3;

  INV_X1 U1 ( .A(n2), .ZN(n1) );
  INV_X1 U4 ( .A(n11), .ZN(ou1[2]) );
  INV_X1 U5 ( .A(n10), .ZN(ou1[3]) );
  INV_X1 U6 ( .A(n9), .ZN(ou1[4]) );
  INV_X1 U7 ( .A(n8), .ZN(ou1[5]) );
  INV_X1 U8 ( .A(n12), .ZN(ou1[1]) );
  CLKBUF_X1 U9 ( .A(n7), .Z(n2) );
  INV_X1 U10 ( .A(sel), .ZN(n7) );
  AOI22_X1 U11 ( .A1(in0[5]), .A2(n2), .B1(n1), .B2(in1[5]), .ZN(n8) );
  AOI22_X1 U12 ( .A1(in0[4]), .A2(n2), .B1(in1[4]), .B2(sel), .ZN(n9) );
  AOI22_X1 U13 ( .A1(in0[3]), .A2(n2), .B1(in1[3]), .B2(n1), .ZN(n10) );
  AOI22_X1 U14 ( .A1(in0[2]), .A2(n2), .B1(in1[2]), .B2(n1), .ZN(n11) );
  AOI22_X1 U15 ( .A1(in0[1]), .A2(n2), .B1(in1[1]), .B2(n1), .ZN(n12) );
  INV_X1 U2 ( .A(n3), .ZN(ou1[0]) );
  AOI22_X1 U3 ( .A1(in0[0]), .A2(n7), .B1(sel), .B2(in1[0]), .ZN(n3) );
endmodule


module bit1adder_97 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_98 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_99 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_100 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_101 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_102 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N6_0 ( add1, add2, cin, result, cout );
  input [5:0] add1;
  input [5:0] add2;
  output [5:0] result;
  input cin;
  output cout;

  wire   [5:0] p;
  wire   [5:0] g;
  wire   [5:1] c_mid;

  bit1adder_102 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_101 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_100 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_99 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_98 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_97 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(cout) );
  XOR2_X1 U7 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U8 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U9 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U10 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U11 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U12 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U2 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U3 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U4 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U5 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U6 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N6 ( in0, in1, sel, ou1 );
  input [6:0] in0;
  input [6:0] in1;
  output [6:0] ou1;
  input sel;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n1, n2;

  AOI22_X1 U1 ( .A1(in0[0]), .A2(n1), .B1(in1[0]), .B2(sel), .ZN(n15) );
  INV_X1 U2 ( .A(n15), .ZN(ou1[0]) );
  INV_X1 U3 ( .A(sel), .ZN(n1) );
  INV_X1 U4 ( .A(n1), .ZN(n2) );
  INV_X1 U5 ( .A(n2), .ZN(n8) );
  INV_X1 U6 ( .A(n13), .ZN(ou1[2]) );
  INV_X1 U7 ( .A(n12), .ZN(ou1[3]) );
  INV_X1 U8 ( .A(n11), .ZN(ou1[4]) );
  INV_X1 U9 ( .A(n10), .ZN(ou1[5]) );
  INV_X1 U10 ( .A(n9), .ZN(ou1[6]) );
  INV_X1 U11 ( .A(n14), .ZN(ou1[1]) );
  AOI22_X1 U12 ( .A1(in0[6]), .A2(n8), .B1(n2), .B2(in1[6]), .ZN(n9) );
  AOI22_X1 U13 ( .A1(in0[5]), .A2(n8), .B1(in1[5]), .B2(n2), .ZN(n10) );
  AOI22_X1 U14 ( .A1(in0[4]), .A2(n8), .B1(in1[4]), .B2(n2), .ZN(n11) );
  AOI22_X1 U15 ( .A1(in0[3]), .A2(n8), .B1(in1[3]), .B2(n2), .ZN(n12) );
  AOI22_X1 U16 ( .A1(in0[2]), .A2(n8), .B1(in1[2]), .B2(n2), .ZN(n13) );
  AOI22_X1 U17 ( .A1(in0[1]), .A2(n8), .B1(in1[1]), .B2(n2), .ZN(n14) );
endmodule


module bit1adder_84 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_85 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_86 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_87 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_88 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_89 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_90 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N7_0 ( add1, add2, cin, result, cout );
  input [6:0] add1;
  input [6:0] add2;
  output [6:0] result;
  input cin;
  output cout;

  wire   [6:0] p;
  wire   [6:0] g;
  wire   [6:1] c_mid;

  bit1adder_90 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_89 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_88 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_87 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_86 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_85 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_84 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(cout) );
  XOR2_X1 U8 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U9 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U10 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U11 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U12 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U13 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U14 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U2 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U3 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U4 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U5 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U6 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U7 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N7 ( in0, in1, sel, ou1 );
  input [7:0] in0;
  input [7:0] in1;
  output [7:0] ou1;
  input sel;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n1, n2;

  INV_X1 U1 ( .A(n2), .ZN(n1) );
  AOI22_X1 U2 ( .A1(n2), .A2(in0[0]), .B1(sel), .B2(in1[0]), .ZN(n17) );
  INV_X1 U3 ( .A(n15), .ZN(ou1[2]) );
  INV_X1 U4 ( .A(n14), .ZN(ou1[3]) );
  INV_X1 U5 ( .A(n13), .ZN(ou1[4]) );
  INV_X1 U6 ( .A(n12), .ZN(ou1[5]) );
  INV_X1 U7 ( .A(n11), .ZN(ou1[6]) );
  INV_X1 U8 ( .A(n10), .ZN(ou1[7]) );
  INV_X1 U9 ( .A(n16), .ZN(ou1[1]) );
  INV_X1 U10 ( .A(sel), .ZN(n2) );
  INV_X1 U11 ( .A(n1), .ZN(n9) );
  INV_X1 U12 ( .A(n17), .ZN(ou1[0]) );
  AOI22_X1 U13 ( .A1(in0[7]), .A2(n9), .B1(n1), .B2(in1[7]), .ZN(n10) );
  AOI22_X1 U14 ( .A1(in0[6]), .A2(n9), .B1(in1[6]), .B2(n1), .ZN(n11) );
  AOI22_X1 U15 ( .A1(in0[5]), .A2(n9), .B1(in1[5]), .B2(n1), .ZN(n12) );
  AOI22_X1 U16 ( .A1(in0[4]), .A2(n9), .B1(in1[4]), .B2(n1), .ZN(n13) );
  AOI22_X1 U17 ( .A1(in0[3]), .A2(n9), .B1(in1[3]), .B2(n1), .ZN(n14) );
  AOI22_X1 U18 ( .A1(in0[2]), .A2(n9), .B1(in1[2]), .B2(n1), .ZN(n15) );
  AOI22_X1 U19 ( .A1(in0[1]), .A2(n9), .B1(in1[1]), .B2(n1), .ZN(n16) );
endmodule


module bit1adder_69 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_70 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_71 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_72 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_73 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_74 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_75 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_76 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N8_0 ( add1, add2, cin, result, cout );
  input [7:0] add1;
  input [7:0] add2;
  output [7:0] result;
  input cin;
  output cout;

  wire   [7:0] p;
  wire   [7:0] g;
  wire   [7:1] c_mid;

  bit1adder_76 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_75 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_74 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_73 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_72 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_71 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_70 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_69 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(cout) );
  XOR2_X1 U9 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U10 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U11 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U12 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U13 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U14 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U15 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U16 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U2 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U3 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U4 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U5 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U6 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U7 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U8 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N8 ( in0, in1, sel, ou1 );
  input [8:0] in0;
  input [8:0] in1;
  output [8:0] ou1;
  input sel;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n3;

  INV_X1 U1 ( .A(n19), .ZN(ou1[0]) );
  INV_X1 U2 ( .A(n11), .ZN(ou1[8]) );
  INV_X1 U3 ( .A(n17), .ZN(ou1[2]) );
  INV_X1 U4 ( .A(n16), .ZN(ou1[3]) );
  INV_X1 U5 ( .A(n15), .ZN(ou1[4]) );
  INV_X1 U6 ( .A(n14), .ZN(ou1[5]) );
  INV_X1 U7 ( .A(n13), .ZN(ou1[6]) );
  INV_X1 U8 ( .A(n12), .ZN(ou1[7]) );
  INV_X1 U9 ( .A(n18), .ZN(ou1[1]) );
  CLKBUF_X1 U10 ( .A(n10), .Z(n1) );
  INV_X1 U11 ( .A(sel), .ZN(n10) );
  INV_X1 U13 ( .A(n1), .ZN(n3) );
  AOI22_X1 U14 ( .A1(in0[8]), .A2(n1), .B1(n3), .B2(in1[8]), .ZN(n11) );
  AOI22_X1 U15 ( .A1(in0[7]), .A2(n1), .B1(in1[7]), .B2(n3), .ZN(n12) );
  AOI22_X1 U16 ( .A1(in0[6]), .A2(n1), .B1(in1[6]), .B2(n3), .ZN(n13) );
  AOI22_X1 U17 ( .A1(in0[5]), .A2(n1), .B1(in1[5]), .B2(n3), .ZN(n14) );
  AOI22_X1 U18 ( .A1(in0[4]), .A2(n1), .B1(in1[4]), .B2(n3), .ZN(n15) );
  AOI22_X1 U19 ( .A1(in0[3]), .A2(n1), .B1(in1[3]), .B2(n3), .ZN(n16) );
  AOI22_X1 U20 ( .A1(in0[2]), .A2(n1), .B1(in1[2]), .B2(n3), .ZN(n17) );
  AOI22_X1 U21 ( .A1(in0[1]), .A2(n1), .B1(in1[1]), .B2(n3), .ZN(n18) );
  AOI22_X1 U22 ( .A1(in0[0]), .A2(n10), .B1(sel), .B2(in1[0]), .ZN(n19) );
endmodule


module bit1adder_52 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_53 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_54 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_55 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_56 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_57 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_58 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_59 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_60 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N9_0 ( add1, add2, cin, result, cout );
  input [8:0] add1;
  input [8:0] add2;
  output [8:0] result;
  input cin;
  output cout;

  wire   [8:0] p;
  wire   [8:0] g;
  wire   [8:1] c_mid;

  bit1adder_60 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_59 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_58 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_57 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_56 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_55 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_54 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_53 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_52 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(cout) );
  XOR2_X1 U10 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U11 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U12 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U13 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U14 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U15 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U16 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U17 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U18 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
  AND2_X1 U2 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U5 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U6 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U7 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U8 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U9 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N9 ( in0, in1, sel, ou1 );
  input [9:0] in0;
  input [9:0] in1;
  output [9:0] ou1;
  input sel;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n1, n2;

  CLKBUF_X1 U1 ( .A(sel), .Z(n2) );
  INV_X1 U2 ( .A(sel), .ZN(n1) );
  INV_X1 U3 ( .A(n2), .ZN(n11) );
  INV_X1 U4 ( .A(n21), .ZN(ou1[0]) );
  AOI22_X1 U5 ( .A1(in0[0]), .A2(n1), .B1(sel), .B2(in1[0]), .ZN(n21) );
  INV_X1 U6 ( .A(n19), .ZN(ou1[2]) );
  INV_X1 U7 ( .A(n18), .ZN(ou1[3]) );
  INV_X1 U8 ( .A(n17), .ZN(ou1[4]) );
  INV_X1 U9 ( .A(n16), .ZN(ou1[5]) );
  INV_X1 U10 ( .A(n15), .ZN(ou1[6]) );
  INV_X1 U11 ( .A(n14), .ZN(ou1[7]) );
  INV_X1 U12 ( .A(n13), .ZN(ou1[8]) );
  INV_X1 U13 ( .A(n12), .ZN(ou1[9]) );
  INV_X1 U14 ( .A(n20), .ZN(ou1[1]) );
  AOI22_X1 U15 ( .A1(in0[9]), .A2(n11), .B1(n2), .B2(in1[9]), .ZN(n12) );
  AOI22_X1 U16 ( .A1(in0[8]), .A2(n11), .B1(in1[8]), .B2(n2), .ZN(n13) );
  AOI22_X1 U17 ( .A1(in0[7]), .A2(n11), .B1(in1[7]), .B2(n2), .ZN(n14) );
  AOI22_X1 U18 ( .A1(in0[6]), .A2(n11), .B1(in1[6]), .B2(n2), .ZN(n15) );
  AOI22_X1 U19 ( .A1(in0[5]), .A2(n11), .B1(in1[5]), .B2(n2), .ZN(n16) );
  AOI22_X1 U20 ( .A1(in0[4]), .A2(n11), .B1(in1[4]), .B2(n2), .ZN(n17) );
  AOI22_X1 U21 ( .A1(in0[3]), .A2(n11), .B1(in1[3]), .B2(n2), .ZN(n18) );
  AOI22_X1 U22 ( .A1(in0[2]), .A2(n11), .B1(in1[2]), .B2(n2), .ZN(n19) );
  AOI22_X1 U23 ( .A1(in0[1]), .A2(n11), .B1(in1[1]), .B2(n2), .ZN(n20) );
endmodule


module bit1adder_33 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_34 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_35 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_36 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_37 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_38 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_39 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_40 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_41 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_42 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N10_0 ( add1, add2, cin, result, cout );
  input [9:0] add1;
  input [9:0] add2;
  output [9:0] result;
  input cin;
  output cout;

  wire   [9:0] p;
  wire   [9:0] g;
  wire   [9:1] c_mid;

  bit1adder_42 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_41 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_40 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_39 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_38 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_37 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_36 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_35 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_34 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(c_mid[9]) );
  bit1adder_33 block_9__bit1adder_module ( .g(g[9]), .p(p[9]), .cin(c_mid[9]), 
        .outbit(result[9]), .count(cout) );
  XOR2_X1 U11 ( .A(add2[9]), .B(add1[9]), .Z(p[9]) );
  XOR2_X1 U12 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U13 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U14 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U15 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U16 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U17 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U18 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U19 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U20 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[9]), .A2(add1[9]), .ZN(g[9]) );
  AND2_X1 U2 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U5 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U6 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U7 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U8 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U9 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
  AND2_X1 U10 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N10 ( in0, in1, sel, ou1 );
  input [10:0] in0;
  input [10:0] in1;
  output [10:0] ou1;
  input sel;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n1, n2;

  CLKBUF_X1 U1 ( .A(n12), .Z(n1) );
  INV_X1 U2 ( .A(sel), .ZN(n12) );
  INV_X1 U3 ( .A(n23), .ZN(ou1[0]) );
  CLKBUF_X1 U4 ( .A(sel), .Z(n2) );
  AOI22_X1 U5 ( .A1(in0[0]), .A2(n12), .B1(sel), .B2(in1[0]), .ZN(n23) );
  INV_X1 U6 ( .A(n20), .ZN(ou1[2]) );
  INV_X1 U7 ( .A(n19), .ZN(ou1[3]) );
  INV_X1 U8 ( .A(n18), .ZN(ou1[4]) );
  INV_X1 U9 ( .A(n17), .ZN(ou1[5]) );
  INV_X1 U10 ( .A(n16), .ZN(ou1[6]) );
  INV_X1 U11 ( .A(n15), .ZN(ou1[7]) );
  INV_X1 U12 ( .A(n14), .ZN(ou1[8]) );
  INV_X1 U13 ( .A(n13), .ZN(ou1[9]) );
  INV_X1 U14 ( .A(n22), .ZN(ou1[10]) );
  INV_X1 U15 ( .A(n21), .ZN(ou1[1]) );
  AOI22_X1 U16 ( .A1(in0[9]), .A2(n1), .B1(n2), .B2(in1[9]), .ZN(n13) );
  AOI22_X1 U17 ( .A1(in0[8]), .A2(n1), .B1(in1[8]), .B2(n2), .ZN(n14) );
  AOI22_X1 U18 ( .A1(in0[7]), .A2(n1), .B1(in1[7]), .B2(n2), .ZN(n15) );
  AOI22_X1 U19 ( .A1(in0[6]), .A2(n1), .B1(in1[6]), .B2(n2), .ZN(n16) );
  AOI22_X1 U20 ( .A1(in0[5]), .A2(n1), .B1(in1[5]), .B2(n2), .ZN(n17) );
  AOI22_X1 U21 ( .A1(in0[4]), .A2(n1), .B1(in1[4]), .B2(n2), .ZN(n18) );
  AOI22_X1 U22 ( .A1(in0[3]), .A2(n1), .B1(in1[3]), .B2(n2), .ZN(n19) );
  AOI22_X1 U23 ( .A1(in0[2]), .A2(n1), .B1(in1[2]), .B2(n2), .ZN(n20) );
  AOI22_X1 U24 ( .A1(in0[1]), .A2(n1), .B1(in1[1]), .B2(n2), .ZN(n21) );
  AOI22_X1 U25 ( .A1(in0[10]), .A2(n1), .B1(in1[10]), .B2(n2), .ZN(n22) );
endmodule


module bit1adder_12 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_13 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_14 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_15 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_16 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_17 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_18 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_19 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_20 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_21 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_22 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N11_0 ( add1, add2, cin, result, cout );
  input [10:0] add1;
  input [10:0] add2;
  output [10:0] result;
  input cin;
  output cout;

  wire   [10:0] p;
  wire   [10:0] g;
  wire   [10:1] c_mid;

  bit1adder_22 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_21 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_20 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_19 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_18 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_17 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_16 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_15 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_14 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(c_mid[9]) );
  bit1adder_13 block_9__bit1adder_module ( .g(g[9]), .p(p[9]), .cin(c_mid[9]), 
        .outbit(result[9]), .count(c_mid[10]) );
  bit1adder_12 block_10__bit1adder_module ( .g(g[10]), .p(p[10]), .cin(
        c_mid[10]), .outbit(result[10]), .count(cout) );
  XOR2_X1 U12 ( .A(add2[9]), .B(add1[9]), .Z(p[9]) );
  XOR2_X1 U13 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U14 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U15 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U16 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U17 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U18 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U19 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U20 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U21 ( .A(add2[10]), .B(add1[10]), .Z(p[10]) );
  XOR2_X1 U22 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[10]), .A2(add1[10]), .ZN(g[10]) );
  AND2_X1 U2 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U5 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U6 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U7 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U8 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U9 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
  AND2_X1 U10 ( .A1(add2[9]), .A2(add1[9]), .ZN(g[9]) );
  AND2_X1 U11 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bitNmux_N11 ( in0, in1, sel, ou1 );
  input [11:0] in0;
  input [11:0] in1;
  output [11:0] ou1;
  input sel;
  wire   n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n1, n2, n5, n6,
         n7, n8, n10, n11;

  CLKBUF_X1 U1 ( .A(sel), .Z(n1) );
  BUF_X2 U2 ( .A(sel), .Z(n2) );
  INV_X1 U3 ( .A(in0[7]), .ZN(n10) );
  INV_X1 U4 ( .A(in1[7]), .ZN(n11) );
  INV_X1 U5 ( .A(in0[0]), .ZN(n5) );
  INV_X1 U6 ( .A(in1[0]), .ZN(n6) );
  OAI22_X1 U8 ( .A1(n5), .A2(n2), .B1(n6), .B2(n13), .ZN(ou1[0]) );
  INV_X1 U9 ( .A(n22), .ZN(ou1[1]) );
  INV_X1 U10 ( .A(n20), .ZN(ou1[3]) );
  INV_X1 U11 ( .A(n19), .ZN(ou1[4]) );
  INV_X1 U12 ( .A(n18), .ZN(ou1[5]) );
  INV_X1 U13 ( .A(n17), .ZN(ou1[6]) );
  INV_X1 U14 ( .A(n1), .ZN(n7) );
  INV_X1 U15 ( .A(n1), .ZN(n8) );
  INV_X1 U16 ( .A(n1), .ZN(n13) );
  OAI22_X1 U17 ( .A1(n10), .A2(n2), .B1(n11), .B2(n8), .ZN(ou1[7]) );
  INV_X1 U18 ( .A(n15), .ZN(ou1[8]) );
  INV_X1 U19 ( .A(n21), .ZN(ou1[2]) );
  INV_X1 U20 ( .A(n24), .ZN(ou1[10]) );
  INV_X1 U21 ( .A(n23), .ZN(ou1[11]) );
  INV_X1 U22 ( .A(n14), .ZN(ou1[9]) );
  AOI22_X1 U23 ( .A1(n8), .A2(in0[9]), .B1(n2), .B2(in1[9]), .ZN(n14) );
  AOI22_X1 U24 ( .A1(in0[8]), .A2(n7), .B1(in1[8]), .B2(n2), .ZN(n15) );
  AOI22_X1 U25 ( .A1(in0[6]), .A2(n13), .B1(in1[6]), .B2(n2), .ZN(n17) );
  AOI22_X1 U26 ( .A1(in0[5]), .A2(n7), .B1(in1[5]), .B2(n2), .ZN(n18) );
  AOI22_X1 U27 ( .A1(in0[4]), .A2(n7), .B1(in1[4]), .B2(n2), .ZN(n19) );
  AOI22_X1 U28 ( .A1(in0[3]), .A2(n13), .B1(in1[3]), .B2(n2), .ZN(n20) );
  AOI22_X1 U29 ( .A1(in0[2]), .A2(n8), .B1(in1[2]), .B2(n2), .ZN(n21) );
  AOI22_X1 U30 ( .A1(in0[1]), .A2(n13), .B1(in1[1]), .B2(n2), .ZN(n22) );
  AOI22_X1 U31 ( .A1(in0[11]), .A2(n8), .B1(in1[11]), .B2(n2), .ZN(n23) );
  AOI22_X1 U32 ( .A1(in0[10]), .A2(n7), .B1(in1[10]), .B2(n2), .ZN(n24) );
endmodule


module bit1adder_113 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
  AOI21_X1 U1 ( .B1(cin), .B2(p), .A(g), .ZN(n1) );
endmodule


module bit1adder_114 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_115 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_116 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bitNRCAdder_N4_1 ( add1, add2, cin, result, cout );
  input [3:0] add1;
  input [3:0] add2;
  output [3:0] result;
  input cin;
  output cout;
  wire   n1, n2, n3, n4;
  wire   [3:0] p;
  wire   [3:0] g;
  wire   [3:1] c_mid;

  bit1adder_116 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_115 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_114 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_113 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(cout) );
  XOR2_X1 U5 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U6 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U7 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  AND2_X1 U1 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
  AND2_X1 U2 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  NAND2_X1 U3 ( .A1(n2), .A2(add2[0]), .ZN(n3) );
  NAND2_X1 U4 ( .A1(n1), .A2(add1[0]), .ZN(n4) );
  NAND2_X1 U8 ( .A1(n3), .A2(n4), .ZN(p[0]) );
  INV_X1 U9 ( .A(add2[0]), .ZN(n1) );
  INV_X1 U10 ( .A(add1[0]), .ZN(n2) );
  AND2_X1 U11 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U12 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
endmodule


module bit1adder_117 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(cin), .B2(p), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_118 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_119 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_120 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N4_2 ( add1, add2, cin, result, cout );
  input [3:0] add1;
  input [3:0] add2;
  output [3:0] result;
  input cin;
  output cout;

  wire   [3:0] p;
  wire   [3:0] g;
  wire   [3:1] c_mid;

  bit1adder_120 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_119 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_118 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_117 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(cout) );
  XOR2_X1 U5 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U6 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U7 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U8 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U2 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U1 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_103 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_104 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_105 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_106 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n2;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n2), .ZN(count) );
  AOI21_X1 U2 ( .B1(cin), .B2(p), .A(g), .ZN(n2) );
endmodule


module bit1adder_107 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n3;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X2 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n3) );
  INV_X1 U4 ( .A(n3), .ZN(count) );
endmodule


module bitNRCAdder_N5_1 ( add1, add2, cin, result, cout );
  input [4:0] add1;
  input [4:0] add2;
  output [4:0] result;
  input cin;
  output cout;

  wire   [4:0] p;
  wire   [4:0] g;
  wire   [4:1] c_mid;

  bit1adder_107 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_106 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_105 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_104 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_103 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(cout) );
  XOR2_X1 U6 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U7 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U8 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U9 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U10 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U2 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U5 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_91 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_92 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_93 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_94 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_95 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_96 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N6_1 ( add1, add2, cin, result, cout );
  input [5:0] add1;
  input [5:0] add2;
  output [5:0] result;
  input cin;
  output cout;

  wire   [5:0] p;
  wire   [5:0] g;
  wire   [5:1] c_mid;

  bit1adder_96 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_95 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_94 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_93 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_92 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_91 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(cout) );
  XOR2_X1 U7 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U8 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U9 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U10 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U11 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U12 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U2 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U3 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U4 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U5 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U6 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_77 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_78 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_79 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_80 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_81 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_82 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_83 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N7_1 ( add1, add2, cin, result, cout );
  input [6:0] add1;
  input [6:0] add2;
  output [6:0] result;
  input cin;
  output cout;

  wire   [6:0] p;
  wire   [6:0] g;
  wire   [6:1] c_mid;

  bit1adder_83 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_82 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_81 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_80 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_79 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_78 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_77 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(cout) );
  XOR2_X1 U8 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U9 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U10 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U11 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U12 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U13 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U14 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U2 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U3 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U4 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U5 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U6 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U7 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_61 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_62 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_63 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_64 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_65 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  AOI21_X1 U1 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(count) );
endmodule


module bit1adder_66 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_67 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_68 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N8_1 ( add1, add2, cin, result, cout );
  input [7:0] add1;
  input [7:0] add2;
  output [7:0] result;
  input cin;
  output cout;

  wire   [7:0] p;
  wire   [7:0] g;
  wire   [7:1] c_mid;

  bit1adder_68 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_67 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_66 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_65 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_64 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_63 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_62 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_61 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(cout) );
  XOR2_X1 U9 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U10 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U11 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U12 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U13 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U14 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U15 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U16 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U2 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U3 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U4 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U5 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U6 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U7 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U8 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_43 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_44 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_45 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_46 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_47 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_48 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_49 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_50 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_51 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N9_1 ( add1, add2, cin, result, cout );
  input [8:0] add1;
  input [8:0] add2;
  output [8:0] result;
  input cin;
  output cout;

  wire   [8:0] p;
  wire   [8:0] g;
  wire   [8:1] c_mid;

  bit1adder_51 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_50 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_49 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_48 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_47 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_46 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_45 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_44 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_43 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(cout) );
  XOR2_X1 U10 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U11 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U12 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U13 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U14 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U15 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U16 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U17 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U18 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
  AND2_X1 U2 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U3 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U4 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U5 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U6 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U7 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U8 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U9 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
endmodule


module bit1adder_23 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_24 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_25 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_26 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_27 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_28 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_29 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_30 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_31 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_32 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N10_1 ( add1, add2, cin, result, cout );
  input [9:0] add1;
  input [9:0] add2;
  output [9:0] result;
  input cin;
  output cout;

  wire   [9:0] p;
  wire   [9:0] g;
  wire   [9:1] c_mid;

  bit1adder_32 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_31 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_30 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_29 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_28 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_27 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_26 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_25 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_24 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(c_mid[9]) );
  bit1adder_23 block_9__bit1adder_module ( .g(g[9]), .p(p[9]), .cin(c_mid[9]), 
        .outbit(result[9]), .count(cout) );
  XOR2_X1 U11 ( .A(add2[9]), .B(add1[9]), .Z(p[9]) );
  XOR2_X1 U12 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U13 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U14 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U15 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U16 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U17 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U18 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U19 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U20 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[9]), .A2(add1[9]), .ZN(g[9]) );
  AND2_X1 U2 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
  AND2_X1 U3 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U4 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U5 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U6 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U7 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U8 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U9 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U10 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
endmodule


module bit1adder_1 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_2 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_3 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_4 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_5 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_6 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_7 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_8 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_9 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_10 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bit1adder_11 ( g, p, cin, outbit, count );
  input g, p, cin;
  output outbit, count;
  wire   n1;

  XOR2_X1 U3 ( .A(p), .B(cin), .Z(outbit) );
  INV_X1 U1 ( .A(n1), .ZN(count) );
  AOI21_X1 U2 ( .B1(p), .B2(cin), .A(g), .ZN(n1) );
endmodule


module bitNRCAdder_N11_1 ( add1, add2, cin, result, cout );
  input [10:0] add1;
  input [10:0] add2;
  output [10:0] result;
  input cin;
  output cout;

  wire   [10:0] p;
  wire   [10:0] g;
  wire   [10:1] c_mid;

  bit1adder_11 block_0__bit1adder_module ( .g(g[0]), .p(p[0]), .cin(cin), 
        .outbit(result[0]), .count(c_mid[1]) );
  bit1adder_10 block_1__bit1adder_module ( .g(g[1]), .p(p[1]), .cin(c_mid[1]), 
        .outbit(result[1]), .count(c_mid[2]) );
  bit1adder_9 block_2__bit1adder_module ( .g(g[2]), .p(p[2]), .cin(c_mid[2]), 
        .outbit(result[2]), .count(c_mid[3]) );
  bit1adder_8 block_3__bit1adder_module ( .g(g[3]), .p(p[3]), .cin(c_mid[3]), 
        .outbit(result[3]), .count(c_mid[4]) );
  bit1adder_7 block_4__bit1adder_module ( .g(g[4]), .p(p[4]), .cin(c_mid[4]), 
        .outbit(result[4]), .count(c_mid[5]) );
  bit1adder_6 block_5__bit1adder_module ( .g(g[5]), .p(p[5]), .cin(c_mid[5]), 
        .outbit(result[5]), .count(c_mid[6]) );
  bit1adder_5 block_6__bit1adder_module ( .g(g[6]), .p(p[6]), .cin(c_mid[6]), 
        .outbit(result[6]), .count(c_mid[7]) );
  bit1adder_4 block_7__bit1adder_module ( .g(g[7]), .p(p[7]), .cin(c_mid[7]), 
        .outbit(result[7]), .count(c_mid[8]) );
  bit1adder_3 block_8__bit1adder_module ( .g(g[8]), .p(p[8]), .cin(c_mid[8]), 
        .outbit(result[8]), .count(c_mid[9]) );
  bit1adder_2 block_9__bit1adder_module ( .g(g[9]), .p(p[9]), .cin(c_mid[9]), 
        .outbit(result[9]), .count(c_mid[10]) );
  bit1adder_1 block_10__bit1adder_module ( .g(g[10]), .p(p[10]), .cin(
        c_mid[10]), .outbit(result[10]), .count(cout) );
  XOR2_X1 U12 ( .A(add2[9]), .B(add1[9]), .Z(p[9]) );
  XOR2_X1 U13 ( .A(add2[8]), .B(add1[8]), .Z(p[8]) );
  XOR2_X1 U14 ( .A(add2[7]), .B(add1[7]), .Z(p[7]) );
  XOR2_X1 U15 ( .A(add2[6]), .B(add1[6]), .Z(p[6]) );
  XOR2_X1 U16 ( .A(add2[5]), .B(add1[5]), .Z(p[5]) );
  XOR2_X1 U17 ( .A(add2[4]), .B(add1[4]), .Z(p[4]) );
  XOR2_X1 U18 ( .A(add2[3]), .B(add1[3]), .Z(p[3]) );
  XOR2_X1 U19 ( .A(add2[2]), .B(add1[2]), .Z(p[2]) );
  XOR2_X1 U20 ( .A(add2[1]), .B(add1[1]), .Z(p[1]) );
  XOR2_X1 U21 ( .A(add2[10]), .B(add1[10]), .Z(p[10]) );
  XOR2_X1 U22 ( .A(add2[0]), .B(add1[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(add2[10]), .A2(add1[10]), .ZN(g[10]) );
  AND2_X1 U2 ( .A1(add2[0]), .A2(add1[0]), .ZN(g[0]) );
  AND2_X1 U3 ( .A1(add2[1]), .A2(add1[1]), .ZN(g[1]) );
  AND2_X1 U4 ( .A1(add2[2]), .A2(add1[2]), .ZN(g[2]) );
  AND2_X1 U5 ( .A1(add2[3]), .A2(add1[3]), .ZN(g[3]) );
  AND2_X1 U6 ( .A1(add2[4]), .A2(add1[4]), .ZN(g[4]) );
  AND2_X1 U7 ( .A1(add2[5]), .A2(add1[5]), .ZN(g[5]) );
  AND2_X1 U8 ( .A1(add2[6]), .A2(add1[6]), .ZN(g[6]) );
  AND2_X1 U9 ( .A1(add2[7]), .A2(add1[7]), .ZN(g[7]) );
  AND2_X1 U10 ( .A1(add2[8]), .A2(add1[8]), .ZN(g[8]) );
  AND2_X1 U11 ( .A1(add2[9]), .A2(add1[9]), .ZN(g[9]) );
endmodule


module csla_64bit ( a, b, cin, sum, cout );
  input [63:0] a;
  input [63:0] b;
  output [63:0] sum;
  input cin;
  output cout;

  wire   [7:0] selected_c;
  wire   [119:0] mid_sum;
  wire   [15:0] mid_c;

  bitNRCAdder_N4_0 bitNRCAdder1_i1 ( .add1(a[3:0]), .add2(b[3:0]), .cin(cin), 
        .result(sum[3:0]), .cout(selected_c[0]) );
  bitNRCAdder_N4_2 bitNRCAdder1_i2 ( .add1(a[7:4]), .add2(b[7:4]), .cin(1'b0), 
        .result(mid_sum[3:0]), .cout(mid_c[0]) );
  bitNRCAdder_N4_1 bitNRCAdder2_i2 ( .add1(a[7:4]), .add2(b[7:4]), .cin(1'b1), 
        .result(mid_sum[7:4]), .cout(mid_c[1]) );
  bitNmux_N4 bitNmux_i2 ( .in0({mid_sum[3:0], mid_c[0]}), .in1({mid_sum[7:4], 
        mid_c[1]}), .sel(selected_c[0]), .ou1({sum[7:4], selected_c[1]}) );
  bitNRCAdder_N5_0 bitNRCAdder1_i3 ( .add1(a[12:8]), .add2(b[12:8]), .cin(1'b0), .result(mid_sum[12:8]), .cout(mid_c[2]) );
  bitNRCAdder_N5_1 bitNRCAdder2_i3 ( .add1(a[12:8]), .add2(b[12:8]), .cin(1'b1), .result(mid_sum[17:13]), .cout(mid_c[3]) );
  bitNmux_N5 bitNmux_i3 ( .in0({mid_sum[12:8], mid_c[2]}), .in1({
        mid_sum[17:13], mid_c[3]}), .sel(selected_c[1]), .ou1({sum[12:8], 
        selected_c[2]}) );
  bitNRCAdder_N6_0 bitNRCAdder1_i4 ( .add1(a[18:13]), .add2(b[18:13]), .cin(
        1'b0), .result(mid_sum[23:18]), .cout(mid_c[4]) );
  bitNRCAdder_N6_1 bitNRCAdder2_i4 ( .add1(a[18:13]), .add2(b[18:13]), .cin(
        1'b1), .result(mid_sum[29:24]), .cout(mid_c[5]) );
  bitNmux_N6 bitNmux_i4 ( .in0({mid_sum[23:18], mid_c[4]}), .in1({
        mid_sum[29:24], mid_c[5]}), .sel(selected_c[2]), .ou1({sum[18:13], 
        selected_c[3]}) );
  bitNRCAdder_N7_0 bitNRCAdder1_i5 ( .add1(a[25:19]), .add2(b[25:19]), .cin(
        1'b0), .result(mid_sum[36:30]), .cout(mid_c[6]) );
  bitNRCAdder_N7_1 bitNRCAdder2_i5 ( .add1(a[25:19]), .add2(b[25:19]), .cin(
        1'b1), .result(mid_sum[43:37]), .cout(mid_c[7]) );
  bitNmux_N7 bitNmux_i5 ( .in0({mid_sum[36:30], mid_c[6]}), .in1({
        mid_sum[43:37], mid_c[7]}), .sel(selected_c[3]), .ou1({sum[25:19], 
        selected_c[4]}) );
  bitNRCAdder_N8_0 bitNRCAdder1_i6 ( .add1(a[33:26]), .add2(b[33:26]), .cin(
        1'b0), .result(mid_sum[51:44]), .cout(mid_c[8]) );
  bitNRCAdder_N8_1 bitNRCAdder2_i6 ( .add1(a[33:26]), .add2(b[33:26]), .cin(
        1'b1), .result(mid_sum[59:52]), .cout(mid_c[9]) );
  bitNmux_N8 bitNmux_i6 ( .in0({mid_sum[51:44], mid_c[8]}), .in1({
        mid_sum[59:52], mid_c[9]}), .sel(selected_c[4]), .ou1({sum[33:26], 
        selected_c[5]}) );
  bitNRCAdder_N9_0 bitNRCAdder1_i7 ( .add1(a[42:34]), .add2(b[42:34]), .cin(
        1'b0), .result(mid_sum[68:60]), .cout(mid_c[10]) );
  bitNRCAdder_N9_1 bitNRCAdder2_i7 ( .add1(a[42:34]), .add2(b[42:34]), .cin(
        1'b1), .result(mid_sum[77:69]), .cout(mid_c[11]) );
  bitNmux_N9 bitNmux_i7 ( .in0({mid_sum[68:60], mid_c[10]}), .in1({
        mid_sum[77:69], mid_c[11]}), .sel(selected_c[5]), .ou1({sum[42:34], 
        selected_c[6]}) );
  bitNRCAdder_N10_0 bitNRCAdder1_i8 ( .add1(a[52:43]), .add2(b[52:43]), .cin(
        1'b0), .result(mid_sum[87:78]), .cout(mid_c[12]) );
  bitNRCAdder_N10_1 bitNRCAdder2_i8 ( .add1(a[52:43]), .add2(b[52:43]), .cin(
        1'b1), .result(mid_sum[97:88]), .cout(mid_c[13]) );
  bitNmux_N10 bitNmux_i8 ( .in0({mid_sum[87:78], mid_c[12]}), .in1({
        mid_sum[97:88], mid_c[13]}), .sel(selected_c[6]), .ou1({sum[52:43], 
        selected_c[7]}) );
  bitNRCAdder_N11_0 bitNRCAdder1_i9 ( .add1(a[63:53]), .add2(b[63:53]), .cin(
        1'b0), .result(mid_sum[108:98]), .cout(mid_c[14]) );
  bitNRCAdder_N11_1 bitNRCAdder2_i9 ( .add1(a[63:53]), .add2(b[63:53]), .cin(
        1'b1), .result(mid_sum[119:109]), .cout(mid_c[15]) );
  bitNmux_N11 bitNmux_i9 ( .in0({mid_sum[108:98], mid_c[14]}), .in1({
        mid_sum[119:109], mid_c[15]}), .sel(selected_c[7]), .ou1({sum[63:53], 
        cout}) );
endmodule

