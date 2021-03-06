///////////////////////////////////////////////////////////////////////////////
//Kehnin Dyer
//20120208
//Homework 2
//
///////////////////////////////////////////////////////////////////////////////
module TWOsConvert
(
	input		[4:0]	IN,
	output	reg	[4:0]	OUT
);

always@(*)
begin
	if(IN[4])
	OUT = {IN[4], (~IN[3:0]) + 1'b1};
	else
	OUT = IN;
end

endmodule

