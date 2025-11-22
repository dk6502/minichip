`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/21/2025 03:11:24 PM
// Design Name:
// Module Name: root_tb
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


module root_tb;
    reg clk = 1;
    always #1 clk = ~clk;
    wire [15:0] instr;
    wire [3:0] out;
    wire [3:0] register;
    reg [3:0] reg1;
    reg [3:0] reg2;
    decoder decode(clk, instr);
    alu alu1(instr, out, register);
    always @(*) begin
        case (register)
        4'h0: reg1 = out;
        4'h1: reg2 = out;
        default;
        endcase
    end
endmodule
