`timescale 1ns / 1ps

module testbench();
	
    reg clk;
    
    //CLK Definition
    localparam clk_period = 10; //ns
    
    initial #(clk_period/2) clk = 1;
    
    initial begin
        repeat(1000) #(clk_period/2) clk <= !clk; 
        $finish;
    end

    wire pulse;

    Clk_Divider_Top DIV (
        .clk(clk),
        .pulse(pulse)
    );

endmodule