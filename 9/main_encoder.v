module main;
	reg a,b,c,d;
	wire x,y;

	encoder e(a,b,c,d,x,y);

initial begin


a=0;b=0;c=0;d=1;
#5
a=0;b=0;c=1;d=0;
#5
a=0;b=1;c=0;d=0;
#5
a=1;b=0;c=0;d=0;

end

initial begin
	$monitor("input = %d%d%d%d output = %d%d",a,b,c,d,x,y);
end
endmodule