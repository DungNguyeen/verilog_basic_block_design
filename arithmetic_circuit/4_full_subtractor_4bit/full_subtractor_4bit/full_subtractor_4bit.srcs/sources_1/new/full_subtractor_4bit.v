`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyễn Ngọc Dũng
// 
// Create Date: 11/06/2026 08:01:09 AM
// Design Name: full_subtractor_4bit block
// Module Name: full_subtractor_4bit
// Project Name: full_subtractor_4bit
// Target Devices: EBAZ4205_Zynq7010
// Tool Versions: Vivado 2025.2
// Description: 
//  Mạch này có khả tính tổng 4 bit hoặc trừ 4 bit nhờ set giá trị bit cho đầu vào i_borrow
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_subtractor_4bit(
    input [3:0] i_a,
    input [3:0] i_b,
    input i_borrow, // 1: trừ, 0: cộng
    output [3:0] o_sub,
    output o_borrow
    );
    wire [3:0] b_in;
    wire cout;
    assign b_in[0] = i_b[0]^i_borrow;
    assign b_in[1] = i_b[1]^i_borrow;
    assign b_in[2] = i_b[2]^i_borrow;
    assign b_in[3] = i_b[3]^i_borrow;
    full_adder_4bit u1 (.i_a(i_a),
                        .i_b(b_in),
                        .i_carry(i_borrow),
                        .o_sum(o_sub),
                        .o_carry(cout)
                        );
    //Khi a>b thì phép cộng bù 2 sinh ra o_carry = 1. Tương ứng bit mượn thực tế = 0 (Không cần mượn)
    //Khi a<b thì phép cộng bù 2 không sinh ra o_carry (o_carry = 0). Tương ứng bit mượn thực tế = 1 (Có mượn)
    assign o_borrow = i_borrow ? ~cout : cout;
endmodule
