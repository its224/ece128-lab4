module project_4( );
    reg [3:0]A;
    reg [3:0]B;
    reg Cin;
    reg S; 
    wire [6:0]Display1;
    project_4 uut(.A(A),.B(B),.Cin(Cin),.S(S),.Display1(Display1));

    initial begin
        #10 A = 0; B = 0; Cin = 0; S = 0;
        #10 A = 1; B = 1;
        #10 A = 2; B = 2;
        #10 A = 3; B = 3;
        #10 A = 4; B = 4;
        #10 A = 5; B = 5;
        #10 A = 6; B = 6;
        #10 A = 7; B = 7;
        #10 A = 8; B = 8;
        #10 A = 9; B = 9;
        #10 A = 10; B = 10;
        #10 A = 11; B = 11;
        #10 A = 12; B = 12;
        #10 A = 13; B = 13;
        #10 A = 14; B = 14;
        #10 A = 15; B = 15;
        #10 A = 0; B = 0; Cin = 1; S = 1;
        #10 A = 1; B = 1;
        #10 A = 2; B = 2;
        #10 A = 3; B = 3;
        #10 A = 4; B = 4;
        #10 A = 5; B = 5;
        #10 A = 6; B = 6;
        #10 A = 7; B = 7;
        #10 A = 8; B = 8;
        #10 A = 9; B = 9;
        #10 A = 10; B = 10;
        #10 A = 11; B = 11;
        #10 A = 12; B = 12;
        #10 A = 13; B = 13;
        #10 A = 14; B = 14;
        #10 A = 15; B = 15;
        #10 $stop;
    end
endmodule
