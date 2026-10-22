`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:35:55 PM
// Design Name: 
// Module Name: Counter
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


module Counter (
    input  wire clk,
    input  wire rstn,
    output reg  [11:0] count
);
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            count <= 12'd0;
        end else begin
            if (count == 12'd4095)
                count <= 12'd0;
            else
                count <= count + 1'b1;
        end
    end
endmodule
