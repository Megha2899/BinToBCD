`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2023 18:00:13
// Design Name: 
// Module Name: BINtoBCD
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


module BINtoBCD( bin, bcd
    );
    input [7:0] bin;
    output reg [11:0] bcd;
    
    integer i; 
    always @(bin)
    begin  bcd=0;
      for(i=0;i<8;i=i+1)
         begin
        
           if(bcd[3:0] >4) bcd[3:0]=bcd[3:0]+3;
           if(bcd[7:4] >4) bcd[7:4]=bcd[7:4]+3;
           if(bcd[11:8] >4) bcd[11:8]=bcd[11:8]+3;
           
           bcd={bcd[10:0],bin[7-i]};
         end
      end
endmodule
