`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/19/2023 03:51:59 PM// Design Name:
// Module Name: seven_seg
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

module seven_seg(
    input[3:0] Sum,
    output reg[6:0] Display1
    );

    always @(Sum) begin
        case(Sum)
            4'b0000: Display1 = 7'b0000001;
            4'b0001: Display1 = 7'b1001111;
            4'b0010: Display1 = 7'b0010010;
            4'b0011: Display1 = 7'b0000110;
            4'b0100: Display1 = 7'b1001100;
            4'b0101: Display1 = 7'b0100100;
            4'b0110: Display1 = 7'b0100000;
            4'b0111: Display1 = 7'b0001111;
            4'b1000: Display1 = 7'b0000000;
            4'b1001: Display1 = 7'b0000100;
            4'b1010: Display1 = 7'b0000001;
            4'b1011: Display1 = 7'b1001111;
            4'b1100: Display1 = 7'b0010010;
            4'b1101: Display1 = 7'b0000110;
            4'b1110: Display1 = 7'b1001100;
            4'b1111: Display1 = 7'b0100100;
            
        endcase
    end
endmodule