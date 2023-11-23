module full_adder(
	input x,
	input y,
	input z,
	output adder,carry
);

assign adder = x^y^z;
assign carry = (x&y) | (y&z) | (z&x);

endmodule