`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyen Ngoc Dung
// 
// Create Date: 11/03/2026 09:58:33 AM
// Design Name: half_adder block design
// Module Name: half_adder
// Project Name: half_adder
// Target Devices: EBAZ4205_Zynq7010
// Tool Versions: Vivado 2025.2
// Description: 
/*
    half adder là mạch số dùng để cộng 2 bit đầu vào a và b. Tạo ra hai đầu ra là tổng sum và bit nhớ carry
    Bảng chân lý mạch half adder
    |  a  |  b  |  sum  |  carry  |
    |  0  |  0  |   0   |    0    |
    |  0  |  1  |   1   |    0    |
    |  1  |  0  |   1   |    0    |  
    |  1  |  1  |   0   |    1    |
     sum = a XOR b
     carry = a AND b
*/
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder(
    input i_a,
    input i_b,
    output o_sum,
    output o_carry
    );
    xor sum (o_sum, i_a, i_b);
    and carry (o_carry, i_a, i_b);
endmodule