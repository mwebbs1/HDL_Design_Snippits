module Clk_Divider
    #(  parameter COUNT_MAX        // Count before each pulse
    )        
    (   input clk,
        output pulse
    );
    
    localparam countSize = $clog2(COUNT_MAX);
	reg [countSize:0]count = 0;
    
    always @(posedge clk) begin
        count <= (count == COUNT_MAX)? 1'b0: count + 1'b1;
    end
    
    assign pulse = (count == 0) ? 1'b1 : 1'b0;
     
endmodule
