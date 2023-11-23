module gates(
	input x,
	input y,
	output andc,orc,nandc,norc,notcx,notcy,xorc,xnorc
);

assign andc = (x & y);
assign orc = (x & ~y) | (~x & y) | (x & y);
assign nandc = ~(x &y);
assign norc = ~orc;
assign notcx = ~x;
assign notcy = ~y;
assign xorc = nandc & orc;
assign xnorc = norc | andc;
endmodule