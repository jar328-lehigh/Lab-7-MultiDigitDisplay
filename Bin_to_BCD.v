`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:37:27 PM
// Design Name: 
// Module Name: Bin_to_BCD
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


module Bin_to_BCD (
    input  wire [11:0] binary_in,
    output reg  [15:0] bcd_out
);
    integer i;

    always @(*) begin
        bcd_out = 16'd0;
        for (i = 11; i >= 0; i = i - 1) begin
            if (bcd_out[3:0]   >= 4'd5) bcd_out[3:0]   = bcd_out[3:0]   + 4'd3;
            if (bcd_out[7:4]   >= 4'd5) bcd_out[7:4]   = bcd_out[7:4]   + 4'd3;
            if (bcd_out[11:8]  >= 4'd5) bcd_out[11:8]  = bcd_out[11:8]  + 4'd3;
            if (bcd_out[15:12] >= 4'd5) bcd_out[15:12] = bcd_out[15:12] + 4'd3;

            bcd_out = {bcd_out[14:0], binary_in[i]};
        end
    end
endmodule
