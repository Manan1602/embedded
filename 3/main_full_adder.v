module main;
	reg x;
	reg y;
	reg z;
	wire adder,carry;
	
	full_adder fa(x,y,z,adder,carry);

initial begin

x = 0;
y = 0;
z = 0;
#5 
x = 0; y= 0; z = 1;
#5 
x = 0; y = 1; z = 0;
#5 
x = 0; y = 1; z = 1;
#5 
x = 1; y = 0; z = 0;
#5 
x = 1; y = 0; z = 1;
#5 
x = 1; y = 1; z = 0;
#5
x = 1; y = 1; z = 1;
end

initial begin
	$monitor("x = %d, y = %d, z = %d, sum = %d, carry = %d",x,y,z,adder,carry);
end
endmodule
