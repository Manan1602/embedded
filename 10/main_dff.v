module main;
	reg d,rstn,clk;
	Adff a(d,rstn,clk,q1);
	Sdff s(d,rstn,clk,q2);

always #5 clk = ~clk;

integer i;
initial begin
	clk = 0;d = 0; rstn = 0;
	#5 rstn = 1;
	
	repeat(6) begin
		d = $urandom_range(0,1);
		#5;
	end
	rstn = 0;
	repeat (6) begin
		d = $urandom_range(0,1);
		#5;
	end
	$finish;
end

initial begin
	$monitor("clk = %d, rstn = %d, d = %d, adff = %d, sdff = %d",clk,rstn,d,q1,q2);
end
endmodule