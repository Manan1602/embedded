module half_substractor(
	input x,
	input y,
	output s,c
);

assign s = x^y;
assign c = ~x &y;

endmodule