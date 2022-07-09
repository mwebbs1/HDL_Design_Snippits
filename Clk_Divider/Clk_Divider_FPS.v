module Clk_Divider_FPS
    #(  parameter CLK_SPEED_HZ,        // Native Clock Speed
        parameter FPS      // New Clock Speed, must be whole number factor of CLK_SPEED_HZ
    )        
    (   input clk,
        output pulse
    );
    
    localparam countMax = CLK_SPEED_HZ/FPS;
    localparam countSize = $clog2(countMax); // Excludes remainder
	reg [countSize:0]count = 0;
    
    always @(posedge clk) begin
        count <= (count == countMax)? 1'b0: count + 1'b1;
    end
    
    assign pulse = (count == 0) ? 1'b1 : 1'b0;
     
endmodule
