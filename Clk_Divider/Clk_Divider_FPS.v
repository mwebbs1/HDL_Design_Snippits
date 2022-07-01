module Clk_Divider_FPS
    #(  parameter CLK_SPEED_HZ = 100_000_000,
        parameter FPS = 1 //easiest if divisible by the clk)
    )        
    ( input clk,
    output pulse
    );
    
//    parameter CLK_SPEED_HZ = 100_000_000;
//    parameter FPS = 1;              //easiest if divisible by the clk
    
    localparam countMax = 100_000_000/FPS;
    localparam countSize = $clog2(countMax);
	reg [countSize:0]count = 0;
    
    always @(posedge clk) begin
        count <= (count == countMax)? 0: count + 1;
        //pulse = (count == 0) ? 1 : 0;
    end
    
    assign pulse = (count == 0) ? 1 : 0;
     
endmodule
