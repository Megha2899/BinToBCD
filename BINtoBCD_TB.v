`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2023 18:12:00
// Design Name: 
// Module Name: BINtoBCD_TB
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


module BINtoBCD_TB;
reg [7:0] bin;
wire [11:0] bcd;

BINtoBCD dut(bin,bcd);
initial
  begin
     bin='b11001;
     #300;
     bin='d78;
     #300
     $finish;
  end
endmodule
