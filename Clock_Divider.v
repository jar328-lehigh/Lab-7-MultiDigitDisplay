`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:34:16 PM
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider #(
    parameter integer DIV_LIMIT = 50_000_000
)(
    input  wire clock_in,
    input  wire rstn,
    output reg  clock_out
);
    reg [31:0] counter;

    always @(posedge clock_in or negedge rstn) begin
        if (!rstn) begin
            counter   <= 32'd0;
            clock_out <= 1'b0;
        end else begin
            if (counter >= (DIV_LIMIT - 1)) begin
                clock_out <= ~clock_out;  
                counter   <= 32'd0;
            end else begin
                counter   <= counter + 1'b1;
            end
        end
    end
endmodule
