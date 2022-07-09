module Clk_Divider_HZ
    #(  parameter CLK_SPEED_HZ,        // Native Clock Speed
        parameter TARGET_SPEED_HZ      // New Clock Speed, must be whole number factor of CLK_SPEED_HZ
    )        
    (   input clk,
        output pulse
    );
    
    localparam countMax = CLK_SPEED_HZ/TARGET_SPEED_HZ;
    localparam countSize = $clog2(countMax);
	reg [countSize:0]count = 0;
    
    always @(posedge clk) begin
        count <= (count == countMax)? 1'b0: count + 1'b1;
    end
    
    assign pulse = (count == 0) ? 1'b1 : 1'b0;
     
endmodule
