module main;
	reg x;
	reg y;
	wire s,c;

	half_substractor hs(x,y,s,c);

initial begin

x = 0;
y = 0;
#5 y = 1;
#5 x = 1;
#5 y = 0;

end

initial begin
	$monitor("x = %d, y = %d, sub = %d, carry = %d",x,y,s,c);
end
endmodule