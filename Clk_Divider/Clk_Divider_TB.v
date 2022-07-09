`timescale 1ns / 1ps

module testbench();
	
    reg clk;
    
    //CLK Definition
    localparam clk_period = 10; //ns
    
    initial #(clk_period/2) clk = 1;
    
    initial begin
        repeat(200000) #(clk_period/2) clk <= !clk; 
        $finish;
    end

    wire pulse, pulse_fps, pulse_hz;

    Clk_Divider_Top DIV (
        .clk(clk),
        .pulse(pulse),
        .pulse_fps(pulse_fps),
        .pulse_hz(pulse_hz)
    );

endmodule