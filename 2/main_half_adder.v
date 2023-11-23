module main;
	reg x;
	reg y;
	wire adder,carry;
	
	half_adder ha(x,y,adder,carry);

initial begin
x = 0;
y = 0;
#5 y = 1;
#5 x = 1;
#5 y = 0;
end
initial begin
	$monitor("x = %d, y = %d, add = %d, carry = %d \n",x,y,adder,carry);
end
endmodule