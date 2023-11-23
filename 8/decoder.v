module decoder(
	input a1,a2,e,
	output o1,o2,o3,o4
);

assign o4 = e&a1&a2;
assign o3 = e&a1&(~a2);
assign o2 = e&(~a1)&a2;
assign o1 = e&(~a1)&(~a2);

endmodule