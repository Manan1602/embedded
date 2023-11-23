module mux(
	input a,b,c,d,s1,s2,
	output o
);

assign o = (~s1&~s2&d) | (~s1&s2&c) | (s1&~s2&b)| (s1&s2&a);

endmodule