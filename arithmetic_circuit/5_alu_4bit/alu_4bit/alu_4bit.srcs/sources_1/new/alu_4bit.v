`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nguyễn Ngọc Dũng
// 
// Create Date: 11/08/2026 10:53:56 PM
// Design Name: alu_4bit block 
// Module Name: alu_4bit
// Project Name: alu_4bit
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


module alu_4bit(
    input [3:0] i_a,
    input [3:0] i_b,
    input [2:0] i_sel,
    output reg [4:0] o_y,
    output o_zero,
    output reg cout
    );
    reg add_sub_ctrl;
    wire [3:0]add_sub_result;
    wire car_bor_out;
    full_subtractor_4bit u1 (.i_a(i_a),
                             .i_b(i_b),
                             .i_borrow(add_sub_ctrl),
                             .o_sub(add_sub_result),
                             .o_borrow(car_bor_out)
                             );     
    always @(*) begin
        case(i_sel)
           3'b000:begin
                add_sub_ctrl = 1'b0;
                o_y = {car_bor_out, add_sub_result};
                cout = car_bor_out;
           end
           3'b001:begin
                add_sub_ctrl = 1'b1;     
                o_y = {car_bor_out, add_sub_result};   
           end
           3'b010: o_y = {1'b0, i_a & i_b}; 
           3'b011: o_y = {1'b0, i_a | i_b};
           3'b100: o_y = {1'b0, i_a ^ i_b};
           3'b101: o_y = {1'b0, ~i_a};
           3'b110: o_y = (i_a == i_b) ? 5'b1 : 5'b0;
           3'b111: o_y = 5'b0;
           default: begin
                o_y  = 5'b0;
                cout = 1'b0;
                add_sub_ctrl=1'b0;
           end 
        endcase
    end
    assign  o_zero = (o_y==5'b0) ? 1'b1 : 1'b0;
endmodule
