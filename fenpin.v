`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:56 11/07/2013 
// Design Name: 
// Module Name:    fenpin 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fenpin(clk,clk_50M,clk_25M,clk_50M1
    );
input clk;
output clk_50M;
output clk_50M1;
output reg clk_25M;

always @(posedge clk)
 clk_25M = ~clk_25M;

assign clk_50M=clk;
assign clk_50M1=clk;

endmodule

