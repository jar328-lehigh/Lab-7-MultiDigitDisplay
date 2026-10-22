`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:47:39 PM
// Design Name: 
// Module Name: Anode_Decoder
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


module Anode_Decoder (
    input  wire [1:0] sel,
    output reg  [3:0] an
);
    always @(*) begin
        case (sel)
            2'b00:   an = 4'b1110; 
            2'b01:   an = 4'b1101; 
            2'b10:   an = 4'b1011; 
            2'b11:   an = 4'b0111; 
            default: an = 4'b1111;
        endcase
    end
endmodule
