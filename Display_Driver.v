`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 01:24:17 PM
// Design Name: 
// Module Name: Display_Driver
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

module Display_Driver (
    input  wire clk_refresh,
    input  wire rstn,
    input  wire [15:0] bcd_in,
    output wire [3:0]  an,
    output wire [6:0]  seg
);
    reg [1:0] refresh_counter;
    wire [3:0] selected_digit;

    always @(posedge clk_refresh or negedge rstn) begin
        if (!rstn)
            refresh_counter <= 2'b00;
        else
            refresh_counter <= refresh_counter + 1'b1;
    end

    Anode_Decoder u_an_dec (
        .sel(refresh_counter),
        .an(an)
    );

    Mux u_mux (
        .bcd_in(bcd_in),
        .sel(refresh_counter),
        .mux_out(selected_digit)
    );

    Seven_Segment_Decoder u_seg_dec (
        .bcd_digit(selected_digit),
        .seg(seg)
    );
endmodule
