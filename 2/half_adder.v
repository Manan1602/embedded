module half_adder(
	input x,
	input y,
	output adder,carry
);

assign adder = x^y;
assign carry = x&y;

endmodule