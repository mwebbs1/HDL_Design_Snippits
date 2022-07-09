module Clk_Divider_Top (
    input clk,
    output pulse
);

Clk_Divider_HZ #(
    .CLK_SPEED_HZ(12),
    .TARGET_SPEED_HZ(3)
) DIV (
    .clk(clk),
    .pulse(pulse)
);

endmodule
