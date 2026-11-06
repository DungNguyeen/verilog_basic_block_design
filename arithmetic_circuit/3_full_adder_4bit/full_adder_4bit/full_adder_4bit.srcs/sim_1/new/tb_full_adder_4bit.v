`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyễn Ngọc Dũng
// 
// Create Date: 11/05/2026 08:04:14 PM
// Design Name: tb_full_adder_4bit
// Module Name: tb_full_adder_4bit
// Project Name: tb_full_adder_4bit
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


module tb_full_adder_4bit;
    reg [3:0] a;
    reg [3:0] b;
    reg carryin;
    wire [3:0]  sum;
    wire carryout;
    
    full_adder_4bit dut (.i_a(a),
                         .i_b(b),
                         .i_carry(carryin),
                         .o_sum(sum),
                         .o_carry(carryout)
                         );
    integer i, j;
    initial begin
       #10
        a=4'b0000; b=4'b0000; carryin=1'b0;
        for(i=0; i<=4'd15; i=i+1)begin
            for(j=0; j<=4'd15; j=j+1)begin
                a=i;
                b=j;
                #10;
            end
        end
        #20;
        $finish;
    end
endmodule
