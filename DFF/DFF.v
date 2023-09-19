`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 08:58:02
// Design Name: 
// Module Name: DFF
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


module DFF(d,clk,reset,q,qbar);
input d;
input clk;
input reset;
output reg q;
output  qbar;
always@(posedge clk)
begin
if(reset)
begin
q<=0;
end
else
q<=d;
end
assign qbar=~q;
endmodule