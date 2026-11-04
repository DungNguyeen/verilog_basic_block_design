`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyen Ngoc Dung
// 
// Create Date: 11/03/2026 10:08:25 AM
// Design Name: tb_half_adder
// Module Name: tb_half_adder
// Project Name: tb_half_adder
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


module tb_half_adder;
    reg i_a;
    reg i_b;
    wire o_sum;
    wire o_carry;
    
    half_adder dut (.i_a(i_a),.i_b(i_b),.o_sum(o_sum),.o_carry(o_carry));
    
initial begin
    #10
    i_a=0; i_b=0;
    #50
    i_b=1;
    #50
    i_a=1; i_b=0;
    #50
    i_b=1;
    #50;
end
endmodule
