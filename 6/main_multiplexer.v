module main;
	reg a,b,c,d,s1,s2;
	wire o;
	
	mux m(a,b,c,d,s1,s2,o);

initial begin
a=0; b=0; c=0; d=0; s1=0; s2=0;
#5  a=0; b=0; c=0; d=0; s1=0; s2=0;
#5  a=0; b=0; c=0; d=1; s1=0; s2=1;
#5  a=0; b=0; c=1; d=0; s1=1; s2=0;
#5  a=0; b=0; c=1; d=1; s1=1; s2=1;
#5  a=0; b=1; c=0; d=0; s1=0; s2=0;
#5  a=0; b=1; c=0; d=1; s1=0; s2=1;
#5  a=0; b=1; c=1; d=0; s1=1; s2=0;
#5  a=0; b=1; c=1; d=1; s1=1; s2=0;
#5  a=1; b=0; c=0; d=0; s1=0; s2=1;
#5  a=1; b=0; c=0; d=1; s1=0; s2=0;
end

initial begin
	$monitor("input_lines = %d%d%d%d, selection_lines = %d%d, output = %d",a,b,c,d,s1,s2,o);
end
endmodule