`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:38:17 PM
// Design Name: 
// Module Name: Mux
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


module Mux (
    input  wire [15:0] bcd_in,
    input  wire [1:0]  sel,
    output reg  [3:0]  mux_out
);
    always @(*) begin
        case (sel)
            2'b00:   mux_out = bcd_in[3:0];    
            2'b01:   mux_out = bcd_in[7:4];    
            2'b10:   mux_out = bcd_in[11:8];  
            2'b11:   mux_out = bcd_in[15:12];  
            default: mux_out = 4'b0000;
        endcase
    end
endmodule
