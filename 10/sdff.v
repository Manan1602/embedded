module Sdff(
	input d,rstn,clk,
	output reg q
);

always@(posedge clk)
	if (!rstn )
		q<=0;
	else
		q<=d;
endmodule
