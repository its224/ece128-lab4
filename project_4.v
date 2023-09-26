`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/19/2023 03:53:48 PM
// Design Name:
// Module Name: project_lab3_2
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
 
module project_4(
    input[3:0]A,
    input[3:0]B,
    input Cin,
    input S,
    output[6:0]Display1
    );
    wire Couts;
    wire [3:0]new_Couts;
    wire [3:0]Sum;
    reg [3:0]F;
   
    

    four_bit_adder add(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Couts(Couts));
    assign new_Couts = {3'b0, Couts};
    always @ (A,B,Cin,S)
    begin
        if (S == 1)
        begin
            F = new_Couts;
        end
        else 
        begin
            F = Sum;
        end
    end    
    seven_seg display(.Sum(F), .Display1(Display1));
endmodule