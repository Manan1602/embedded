module excess(
	input a,
	input b,
	input c,
	input d,
	output w,x,y,z
);

assign w = a | (b&d) | (b&c);
assign x = ~b&(c|d) | b&(~c)&(~d); 
assign y = ~(c^d);
assign z = ~d;
endmodule