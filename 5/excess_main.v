module main;
	reg a;
	reg b;
	reg c;
	reg d;
	wire w,x,y,z;

	excess e(a,b,c,d,w,x,y,z);

initial begin

a=0;b=0;c=0;d=0;
#5
a=0;b=0;c=0;d=1;
#5
a=0;b=0;c=1;d=0;
#5
a=0;b=0;c=1;d=1;
#5
a=0;b=1;c=0;d=0;
#5
a=0;b=1;c=0;d=1;
#5
a=0;b=1;c=1;d=0;
#5
a=0;b=1;c=1;d=1;
#5
a=1;b=0;c=0;d=0;
#5
a=1;b=0;c=0;d=1;

end

initial begin
	$monitor("bcd = %d%d%d%d,  excess-3 = %d%d%d%d",a,b,c,d,w,x,y,z);
end
endmodule