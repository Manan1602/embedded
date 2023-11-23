module main;
	reg x;
	reg y;
	wire z1,z2,z3,z4,z5,z6,z7,z8;

	gates g( x,y,z1,z2,z3,z4,z5,z6,z7,z8);
initial begin 
	$dumpfile("manan.vcd");
	$dumpvars(0,main);

x = 0;
y = 0;
#5 y=1;
#5 x=1;
#5 y=0;

end

initial begin
	$monitor("x= %d, y= %d, and= %d, or = %d, nand = %d, nor = %d, notx = %d, noty = %d, xor = %d, xnor = %d\n",x,y,z1,z2,z3,z4,z5,z6,z7,z8);
end
endmodule
