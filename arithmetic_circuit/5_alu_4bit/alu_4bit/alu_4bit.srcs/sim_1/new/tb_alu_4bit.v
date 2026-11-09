`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 08:42:24 AM
// Design Name: 
// Module Name: tb_alu_4bit
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


module tb_alu_4bit;
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] SEL;
    wire [4:0] Y;
    wire ZERO;
    wire COUT;
    
    alu_4bit dut (.i_a(A),
                  .i_b(B),
                  .i_sel(SEL),
                  .o_y(Y),
                  .o_zero(ZERO),
                  .cout(COUT)
                  );
    integer i;
    initial begin
        #10;
        A=4'b1000; B=4'b0111;
        #10;
        for(i=0;i<=7;i=i+1)begin
            SEL=i;
            #20;
        end
        #20;
        $finish;
    end
endmodule
