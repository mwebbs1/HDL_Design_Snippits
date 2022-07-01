module Sequence_Detector_Shift_Reg(
	input clk, 
  	input data_stream,
  	output pulse
	);
  	
  localparam bits = 8;
  reg [(bits-1):0]data_shift_reg = 8'd0;
  reg [7:0]seq = 8'b0110_1010;
  
  always @(posedge clk) begin
    data_shift_reg <= {data_shift_reg[7:0], data_stream};
  end
  
  assign pulse = (data_shift_reg == seq) ? 1 : 0;
  
  
endmodule