`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 01:26:20 PM
// Design Name: 
// Module Name: Top_Module_tb
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


module Top_Module_tb;
    reg clk;
    reg rstn;
    wire [3:0] an;
    wire [6:0] seg;

   
    Top_Module #(
        .DIV_1HZ_LIMIT(4),  
        .DIV_REF_LIMIT(2)  
    ) uut (
        .clk(clk),
        .rstn(rstn),
        .an(an),
        .seg(seg)
    );

    always #5 clk = ~clk;

    initial begin
        clk  = 1'b0;
        rstn = 1'b0;
        #40;
      
        rstn = 1'b1;
        #800;

        rstn = 1'b0;
        #60;

        rstn = 1'b1;
        #800;

        $finish;
    end
endmodule
