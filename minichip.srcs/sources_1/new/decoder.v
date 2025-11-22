`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/21/2025 02:20:45 PM
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


module decoder(
    input clk,
    output reg [15:0] instr
    );
    reg [15:0] program_size;
    reg [15:0] rom_memory [1023:0];

    integer i;
    initial begin
        $readmemh("mem.mem", rom_memory);
        i = 0;
    end

    always @(posedge clk) begin
        instr = rom_memory[i];
        i = i+1;
    end
endmodule
