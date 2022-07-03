module Clk_Divider_FPS
    #(  parameter CLK_SPEED_HZ      = 25_000_000, // Native Clock Speed
        parameter TARGET_SPEED_HZ   = 1_000       // New Clock Speed
    )        
    (   input clk,
        output pulse
    );
    
    localparam countMax = 100_000_000;
    localparam countSize = $clog2(countMax);
	reg [countSize:0]count = 0;
    
    always @(posedge clk) begin
        count <= (count == countMax)? 0: count + 1;
    end
    
    assign pulse = (count == 0) ? 1 : 0;
     
endmodule
