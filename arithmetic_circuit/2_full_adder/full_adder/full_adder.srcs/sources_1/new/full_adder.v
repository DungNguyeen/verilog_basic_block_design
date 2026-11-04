`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyen Ngoc Dung
// 
// Create Date: 11/03/2026 10:30:22 AM
// Design Name: full_adder block design
// Module Name: full_adder
// Project Name: full_adder
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


module full_adder(
    input i_a,
    input i_b,
    input i_carry,
    output o_sum,
    output o_carry
    );
    wire sum1, carry1;
    wire carry2;
    half_adder u1 (.i_a(i_a),
                   .i_b(i_b),
                   .o_sum(sum1),
                   .o_carry(carry1)
                   );
    half_adder u2 (.i_a(sum1),
                   .i_b(i_carry),
                   .o_sum(o_sum),
                   .o_carry(carry2)
                   );
    //or carry_out (o_carry, carry2, carry1);
    assign o_carry=carry2|carry1;
endmodule
