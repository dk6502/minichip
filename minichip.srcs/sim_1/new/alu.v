`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/21/2025 03:43:07 PM
// Design Name:
// Module Name: alu
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


module alu(
    input [15:0] instr,
    output [3:0] out, register
    );
    wire [3:0] op;
    wire [3:0] a;
    wire [3:0] b;
    reg [3:0] result;

    assign register = instr[15:12];
    assign op = instr[11:8];
    assign a = instr[7:4];
    assign b = instr[3:0];
    assign out = result;
    always @(*) begin
        case (op)
        4'h0: result = a + b;
        4'h1: result = a - b;
        4'h2: result = a * b;
        4'h3: result = a / b;
        default: result = a + b;
        endcase
    end
endmodule
