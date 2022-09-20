module fop_G ( in ,out);

	parameter n = 4;

	input [n-1:0] in;
	output out;

	wire not_a,not_b,not_c,not_d;
	wire w1,w2,w3,w4,w5;
	
	//using not gate
	not not1 (not_a,in[3]);
	not not2 (not_b,in[2]);
	not not3 (not_c,in[1]);
	not not4 (not_d,in[0]);

	//using and gate
	and and1 (w1,not_a,not_b);
	and and2 (w2,not_a,in[0]);
	and and3 (w3,not_b,in[1],in[0]);
	and and4 (w4,in[2],not_c,in[0]);
	and and5 (w5,not_b,not_c,not_d);

	or or1 (out,w1,w2,w3,w4,w5);

endmodule

//////////////////////////////////////

module fop_D ( in ,out);

	parameter n = 4;

	input [n-1:0] in;
	output out;

	assign out = (!in[3]&!in[2])|(!in[3]&in[0])|(!in[2]&in[1]&in[0])|(in[2]&!in[1]&in[0])|(!in[2]&!in[1]&!in[0]);

endmodule

/////////////////////////////////////

module fop_B ( in ,out);

	parameter n = 4;
	
	input [n-1:0] in;
	output out;
	reg out;  //focus!!

	always@(*)begin
		case(in)
			0,1,2,3,5,7,8,11,13:begin
				out=1'b1;
			end

			default:begin
				out=1'b0;
			end
		endcase
	end

endmodule
