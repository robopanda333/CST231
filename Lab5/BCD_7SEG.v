//-----------------------------------------------------------------------------
//University: OIT - CSET
//Class: CST 231
//Author: Kehnin Dyer
//Date: 2012 01 28
//Dependancies: None
//-----------------------------------------------------------------------------
//Takes a number in BCD and converts it to the proper format for a 7 seg
//display. If the number is outside the bounds of BCD (for example, 10) it will
//display nothing.
//-----------------------------------------------------------------------------
module BCD_7SEG
(
	input		[3:0]	BCD,
	output	reg	[6:0]	SEG_7
);
	always@(*)
	case(BCD)
		4'h0:SEG_7 = 0;//blarg
		4'h1:SEG_7 = 7'b1111110; //0
		4'h2:SEG_7 = 7'b0110111; //Help
		4'h3:SEG_7 = 7'b1001111; //Enter
		
		4'h4:SEG_7 = 7'b1110000; //7
		4'h5:SEG_7 = 7'b1111111; //8
		4'h6:SEG_7 = 7'b1111011; //9
		4'h7:SEG_7 = 7'b0000001; //-
		
		4'h8:SEG_7 = 7'b0110011; //4
		4'h9:SEG_7 = 7'b1011011; //5
		4'hA:SEG_7 = 7'b1011111;//6
		4'hB:SEG_7 = 7'b0001001;//Down'Arrow'
		
		4'hC:SEG_7 = 7'b0110000;//1
		4'hD:SEG_7 = 7'b1101101;//2
		4'hE:SEG_7 = 7'b1111001;//3
		4'hF:SEG_7 = 7'b1000001;//Up'Arrow'
		
		default: SEG_7 = 0; //whatever.
	endcase
endmodule
