`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyễn Ngọc Dũng
// 
// Create Date: 11/08/2026 09:56:05 PM
// Design Name: tb_full_subtractor_4bit
// Module Name: tb_full_subtractor_4bit
// Project Name: tb_full_subtractor_4bit
// Target Devices: EBAZ4205_Zynq7010
// Tool Versions: Vivado 2025.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_full_subtractor_4bit;
    reg [3:0] i_a;
    reg [3:0] i_b;
    reg i_borrow;
    wire [3:0] o_sub;
    wire o_borrow;
    
    full_subtractor_4bit dut (.i_a(i_a),
                              .i_b(i_b),
                              .i_borrow(i_borrow),
                              .o_sub(o_sub),
                              .o_borrow(o_borrow)
                              );
    integer i,j;
    initial begin
        #20;
        i_borrow = 1'b1;
        #20;
        for(i=15; i>=0; i=i-1)begin
            for(j=15; j>=0; j=j-1)begin
                i_a=i;
                i_b=j;
                #10;
            end
        end
        $finish;
    end
endmodule
