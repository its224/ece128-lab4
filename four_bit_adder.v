`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 01:35:16 PM
// Design Name: 
// Module Name: four_bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module four_bit_adder(
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0]Sum,
    output Couts
    );
  wire[3:0] Co;

  one_bit_adder add0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Co(Co[0]));
  one_bit_adder add1(.A(A[1]), .B(B[1]), .Cin(Co[0]), .Sum(Sum[1]), .Co(Co[1]));
  one_bit_adder add2(.A(A[2]), .B(B[2]), .Cin(Co[1]), .Sum(Sum[2]), .Co(Co[2]));
  one_bit_adder add3(.A(A[3]), .B(B[3]), .Cin(Co[2]), .Sum(Sum[3]), .Co(Co[3]));
  assign Couts = Co[3];
endmodule