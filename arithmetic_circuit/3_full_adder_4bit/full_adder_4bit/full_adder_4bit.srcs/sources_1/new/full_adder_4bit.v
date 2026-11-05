`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyễn Ngọc Dũng
// 
// Create Date: 11/05/2026 09:39:00 AM
// Design Name: full_adder_4bit block 
// Module Name: full_adder_4bit
// Project Name: full_adder_4bit
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


module full_adder_4bit(
    input [3:0] i_a,
    input [3:0] i_b,
    output [3:0] o_sum,
    output o_carry
    );
    wire carry1, carry2, carry3;
    full_adder u1 (.i_a(i_a[0]),
                   .i_b(i_b[0]),
                   .i_carry(1'b0),
                   .o_sum(o_sum[0]),
                   .o_carry(carry1)
                   );
    full_adder u2 (.i_a(i_a[1]),
                   .i_b(i_b[1]),
                   .i_carry(carry1),
                   .o_sum(o_sum[1]),
                   .o_carry(carry2)
                   );
    full_adder u3 (.i_a(i_a[2]),
                   .i_b(i_b[2]),
                   .i_carry(carry2),
                   .o_sum(o_sum[2]),
                   .o_carry(carry3)
                   );
    full_adder u4 (.i_a(i_a[3]),
                   .i_b(i_b[3]),
                   .i_carry(carry3),
                   .o_sum(o_sum[3]),
                   .o_carry(o_carry)
                   );
endmodule
