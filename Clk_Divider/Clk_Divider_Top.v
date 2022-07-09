module Clk_Divider_Top (
    input clk,
    output pulse_hz, 
    output pulse_fps,
    output pulse
);

Clk_Divider_HZ #(
    .CLK_SPEED_HZ(12),
    .TARGET_SPEED_HZ(3)
) DIV_HZ (
    .clk(clk),
    .pulse(pulse_hz)
);

Clk_Divider #(
    .COUNT_MAX(5)
) DIV (
    .clk(clk),
    .pulse(pulse)
);

Clk_Divider_FPS #(
    .CLK_SPEED_HZ(1_000_000),
    .FPS(60)
) DIV_FPS (
    .clk(clk),
    .pulse(pulse_fps)
);

endmodule
