`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 09:55:13 AM
// Design Name: tb_full_adder
// Module Name: tb_full_adder
// Project Name: tb_full_adder
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


module tb_full_adder;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    
    full_adder dut (.i_a(a),
                    .i_b(b),
                    .i_carry(cin),
                    .o_sum(sum),
                    .o_carry(cout)
                    );
    initial begin
        #10
        a=0; b=0; cin=0;
        #20
        a=0; b=0; cin=1;
        #20
        a=0; b=1; cin=0;
        #20
        a=0; b=1; cin=1;
        #20
        a=1; b=0; cin=0;
        #20
        a=1; b=0; cin=1;
        #20
        a=1; b=1; cin=0;
        #20
        a=1; b=1; cin=1;
        #30;
        $finish;
    end
endmodule
