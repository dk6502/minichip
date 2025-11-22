`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/21/2025 07:44:45 PM
// Design Name:
// Module Name: root
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


module root(
    input clk,
    output [3:0] led1, led2
    );
    wire [15:0] instr;
    wire [3:0] out;
    wire [3:0] register;
    reg [3:0] led1;
    reg [3:0] led2;
    decoder decode(clk, instr);
    alu alu1(instr, out, register);
    always @(*) begin
        case (register)
        4'h0: led1 = out;
        4'h1: led2 = out;
        default;
        endcase
    end
endmodule
