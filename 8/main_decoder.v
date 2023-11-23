module main;
	reg a1,a2,e;
	wire o1,o2,o3,o4;

	decoder d(a1,a2,e,o1,o2,o3,o4);
initial begin

a1=0;a2=0;e=0;
#5
a1=0;a2=1;e=0;
#5
a1=0;a2=0;e=1;
#5
a1=0;a2=1;e=1;
#5
a1=1;a2=0;e=1;
#5
a1=1;a2=1;e=1;
end
initial begin
	$monitor("input = %d%d, enable = %d, output = %d%d%d%d",a1,a2,e,o1,o2,o3,o4);
end
endmodule