`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 09:03:16
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb();
reg d,reset,clk;
wire q,qbar;
DFF dut(d,clk,reset,q,qbar);

always
begin
#5
clk=~clk;
end
initial
begin
clk=1'b0;
d=1'b0;
reset=1'b1;
#10
d=1'b1;
reset=1'b0;
#10
reset=1'b1;
#20
reset=1'b1;
end
endmodule
