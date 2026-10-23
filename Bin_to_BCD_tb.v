`timescale 1ns / 1ps

module Bin_to_BCD_tb;
    reg  [11:0] binary_in;
    wire [15:0] bcd_out;

    Bin_to_BCD uut (
        .binary_in(binary_in),
        .bcd_out(bcd_out)
    );

    initial begin
        binary_in = 12'd0;
        #20;
        
        binary_in = 12'd9;
        #20;

        binary_in = 12'd42;
        #20;

        binary_in = 12'd789;
        #20;

        binary_in = 12'd2048;
        #20;

        binary_in = 12'd4095;
        #20;

        $finish;
    end
endmodule
