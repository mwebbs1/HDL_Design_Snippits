module SevenSegmentDisplay (
	input [3:0] num, 
	output reg [6:0] Display);
	
	// num is as binary number up to 15
	
	// Note: This implementation is for a common anode
	// 		Hence the ~
	always @(*)
		case (num)
			4'b0000: Display = ~7'b0111111; // 0
			4'b0001: Display = ~7'b0000110; // 1
			4'b0010: Display = ~7'b1011011; // 2
			4'b0011: Display = ~7'b1001111; // 3
			4'b0100: Display = ~7'b1100110; // 4
			4'b0101: Display = ~7'b1101101; // 5
			4'b0110: Display = ~7'b1111101; // 6
			4'b0111: Display = ~7'b0000111; // 7
			4'b1000: Display = ~7'b1111111; // 8
			4'b1001: Display = ~7'b1101111; // 9
			4'b1010: Display = ~7'b1110111; // A
			4'b1011: Display = ~7'b1111100; // b
			4'b1100: Display = ~7'b0111001; // C
			4'b1101: Display = ~7'b1011110; // d
			4'b1110: Display = ~7'b1111001; // E
			4'b1111: Display = ~7'b1110001; // F
			default: Display = ~7'b0000000; // 
		endcase
endmodule
