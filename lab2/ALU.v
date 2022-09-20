module AND (a, b, out);
	input a, b;
	output out;
	wire w1;

	nand nand1(w1,a,b);
	nand nand2(out,w1,w1);

endmodule


module OR (a, b, out);
	input a, b;
	output out;
	wire w1,w2,w3;	

	nand nand1(w1,a,a);
	nand nand2(w2,b,b);
	nand nand3(out,w1,w2);

endmodule

module NOT (a, out);
	input a;
	output out;

	nand nand1(out,a,a);

endmodule

module NOR (a, b, out);
	input a, b;
	output out;
	wire w1,w2;

	nand nand1 (w1,a,b);
	XOR	nand2 (.a(a),.b(b),.out(w2));
	XOR	nand3 (.a(w1),.b(w2),.out(out));

endmodule

module XOR (a, b, out);
	input a, b;
	output out;
	wire w1,w2;

	nand nand1 (w1,a,b);
	OR	nand2	(.a(a) ,.b(b),.out(w2));
	AND	nand3	(.a(w1) ,.b(w2),.out(out));

endmodule

//////////////////////////////////////////////////

module HalfAdder(a,b,c,s);
	input a,b;
	output c,s;

	and and1 (c,a,b);
	xor xor1 (s,a,b);

endmodule

module FullAdder(a,b,cin,cout,s);
	input a,b,cin;
	output cout,s;

	wire g,p,cp;

	HalfAdder	ha1(.a(a),.b(b),.c(g),.s(p));
	HalfAdder ha2(.a(p),.b(cin),.c(cp),.s(s));
	or or1(cout,g,cp);

endmodule

module AdderSubtractor (A, B, Cin, mode, Cout, Sum);
	input [31:0] A, B;
	input Cin, mode;
	output [31:0] Sum;
	output Cout;
	parameter n = 32;

	wire [31:0] Bw,carry;
	wire sel;		

	assign Bw[31:0] = B[31:0]^ {32{mode}};
	assign carry[0] = mode? 1'b1: Cin;
//	FullAdder #(n-1)  fa(A[n-2:0] , Bw[n-2:0] , carry[n-2:0] , carry[n-1:1] , Sum[n-2:0]); 

	FullAdder fa1 (.a(A[0]) , .b(Bw[0]) , .cin(carry[0]) , .cout(carry[1]) , .s(Sum[0]));
	FullAdder fa2 (.a(A[1]) , .b(Bw[1]) , .cin(carry[1]) , .cout(carry[2]) , .s(Sum[1]));
	FullAdder fa3 (.a(A[2]) , .b(Bw[2]) , .cin(carry[2]) , .cout(carry[3]) , .s(Sum[2]));
	FullAdder fa4 (.a(A[3]) , .b(Bw[3]) , .cin(carry[3]) , .cout(carry[4]) , .s(Sum[3]));
	FullAdder fa5 (.a(A[4]) , .b(Bw[4]) , .cin(carry[4]) , .cout(carry[5]) , .s(Sum[4]));
	FullAdder fa6 (.a(A[5]) , .b(Bw[5]) , .cin(carry[5]) , .cout(carry[6]) , .s(Sum[5]));
	FullAdder fa7 (.a(A[6]) , .b(Bw[6]) , .cin(carry[6]) , .cout(carry[7]) , .s(Sum[6]));
	FullAdder fa8 (.a(A[7]) , .b(Bw[7]) , .cin(carry[7]) , .cout(carry[8]) , .s(Sum[7]));
	FullAdder fa9 (.a(A[8]) , .b(Bw[8]) , .cin(carry[8]) , .cout(carry[9]) , .s(Sum[8]));
	FullAdder fa10(.a(A[9]) , .b(Bw[9]) , .cin(carry[9]) , .cout(carry[10]) , .s(Sum[9]));
	FullAdder fa11(.a(A[10]) , .b(Bw[10]) , .cin(carry[10]) , .cout(carry[11]) , .s(Sum[10]));
	FullAdder fa12(.a(A[11]) , .b(Bw[11]) , .cin(carry[11]) , .cout(carry[12]) , .s(Sum[11]));
	FullAdder fa13(.a(A[12]) , .b(Bw[12]) , .cin(carry[12]) , .cout(carry[13]) , .s(Sum[12]));
	FullAdder fa14(.a(A[13]) , .b(Bw[13]) , .cin(carry[13]) , .cout(carry[14]) , .s(Sum[13]));
	FullAdder fa15(.a(A[14]) , .b(Bw[14]) , .cin(carry[14]) , .cout(carry[15]) , .s(Sum[14]));
	FullAdder fa16(.a(A[15]) , .b(Bw[15]) , .cin(carry[15]) , .cout(carry[16]) , .s(Sum[15]));
	FullAdder fa17(.a(A[16]) , .b(Bw[16]) , .cin(carry[16]) , .cout(carry[17]) , .s(Sum[16]));
	FullAdder fa18(.a(A[17]) , .b(Bw[17]) , .cin(carry[17]) , .cout(carry[18]) , .s(Sum[17]));
	FullAdder fa19(.a(A[18]) , .b(Bw[18]) , .cin(carry[18]) , .cout(carry[19]) , .s(Sum[18]));
	FullAdder fa20(.a(A[19]) , .b(Bw[19]) , .cin(carry[19]) , .cout(carry[20]) , .s(Sum[19]));
	FullAdder fa21(.a(A[20]) , .b(Bw[20]) , .cin(carry[20]) , .cout(carry[21]) , .s(Sum[20]));
	FullAdder fa22(.a(A[21]) , .b(Bw[21]) , .cin(carry[21]) , .cout(carry[22]) , .s(Sum[21]));
	FullAdder fa23(.a(A[22]) , .b(Bw[22]) , .cin(carry[22]) , .cout(carry[23]) , .s(Sum[22]));
	FullAdder fa24(.a(A[23]) , .b(Bw[23]) , .cin(carry[23]) , .cout(carry[24]) , .s(Sum[23]));
	FullAdder fa25(.a(A[24]) , .b(Bw[24]) , .cin(carry[24]) , .cout(carry[25]) , .s(Sum[24]));
	FullAdder fa26(.a(A[25]) , .b(Bw[25]) , .cin(carry[25]) , .cout(carry[26]) , .s(Sum[25]));
	FullAdder fa27(.a(A[26]) , .b(Bw[26]) , .cin(carry[26]) , .cout(carry[27]) , .s(Sum[26]));
	FullAdder fa28(.a(A[27]) , .b(Bw[27]) , .cin(carry[27]) , .cout(carry[28]) , .s(Sum[27]));
	FullAdder fa29(.a(A[28]) , .b(Bw[28]) , .cin(carry[28]) , .cout(carry[29]) , .s(Sum[28]));
	FullAdder fa30(.a(A[29]) , .b(Bw[29]) , .cin(carry[29]) , .cout(carry[30]) , .s(Sum[29]));
	FullAdder fa31(.a(A[30]) , .b(Bw[30]) , .cin(carry[30]) , .cout(carry[31]) , .s(Sum[30]));
	FullAdder fa32(.a(A[31]) , .b(Bw[31]) , .cin(carry[31]) , .cout(Cout) , .s(Sum[31]));

endmodule

//////////////////////extra//////////////////////////
//1 [31] /8 [30:23] /23 [22:0]// dont care about overflow and cout
module floatPointAdder (A,B,C);
	input [31:0] A,B;
	output [31:0] C;

	wire [24:0] man_temp,shift_temp,another;
	wire [7:0]shift;
	wire greater,temp,dif_sign,equ_exp;

	assign dif_sign = A[31]==B[31] ? 1'b0 : 1'b1 ;
	assign greater = A[30:23] > B[30:23] ? 1'b1 : ( equ_exp ?  (A[22:0]>=B[22:0]):1'b0) ;
	assign equ_exp =(A[30:23] == B[30:23]);

	assign shift[7:0] = greater ? A[30:23] - B[30:23] : B[30:23] - A[30:23];
	assign shift_temp[23:0] = greater ? {1'b1,B[22:0]} >> shift [7:0] : {1'b1,A[22:0]} >> shift [7:0];
	assign another[23:0] = greater ? {1'b1,A[22:0]} : {1'b1,B[22:0]};
	assign man_temp [24:0] = dif_sign ? another[23:0] - shift_temp[23:0] : another[23:0] + shift_temp[23:0] ;
	
	assign C[22:0] = man_temp[24] ? man_temp[23:1] : man_temp[22:0];
	assign C[30:23] = man_temp[24] ? (greater ? A[30:23]:B[30:23]) + 1 : (greater ? A[30:23]:B[30:23]) ;
	assign C[31] = dif_sign ? (greater ? A[31]:B[31]) : A[31];
endmodule

module floatPointMul (A,B,C);
	input [31:0] A,B;
	output [31:0] C;

	wire[7:0]exp_temp;
	wire[47:0]man_temp;
	wire sign;

	xor xor1 (C[31],A[31],B[31]);
	
	assign man_temp[47:0] = {1'b1,A[22:0]} * {1'b1,B[22:0]};
	assign C[22:0] = man_temp[47] ? man_temp[46:24] : man_temp[45:23];
	assign exp_temp [7:0] = A [30:23] + B[30:23];
	assign C[30:23] =  man_temp[47]? exp_temp [7:0] + 1'b1 : exp_temp [7:0];
endmodule
//////////////////////////////////////////////////////

module ALU (A, B, sel, Cin, Y, Cout, Negative, Zero, Overflow);
	input [31:0] A, B;
	input [3:0] sel;
	input Cin;
	output [31:0] Y;
	output Cout, Negative, Zero, Overflow;

	reg [31:0]Y; 
	reg	Cout, Negative, Zero, Overflow;
	wire[6:0]gateOutput;
	wire[31:0]add_sum,sub_sum,fadd_out,fmul_out;
	wire add_out,sub_out;



	always @ (*) begin
		if (sel<=5)	begin
			Y[31:1] = {31{1'b0}};
			Cout = 1'b0;
			Negative = 1'b0;
			Overflow = 1'b0;
 
			case (sel)
				4'b0000:begin
					Y[0] = gateOutput[0];
					Zero = ~gateOutput[0];
				end
				4'b0001:begin
					Y[0] = gateOutput[1];
					Zero = ~gateOutput[1];
				end
				4'b0010:begin
					Y[0] = gateOutput[2];
					Zero = ~gateOutput[2];
				end
				4'b0011:begin
					Y[0] = gateOutput[3];
					Zero = ~gateOutput[3];
				end
				4'b0100:begin
					Y[0] = gateOutput[4];
					Zero = ~gateOutput[4];
				end
				4'b0101:begin
					Y[0] = gateOutput[5];
					Zero = ~gateOutput[5];
				end
			endcase
		end

		else begin
			case (sel)
				4'b0110:begin 
					Cout = add_out;
					Negative = add_sum[31];
					Zero = (add_sum[31:0] == 0)? 1'b1 : 1'b0 ;
					Overflow = (~(A[31]^B[31])) & (A[31] != add_sum[31]) ? 1'b1 : 1'b0;
					Y[31:0] = add_sum[31:0];
				end	

				4'b0111:begin
					Cout = 1'b0;
					Negative = sub_sum[31];
					Zero = (sub_sum[31:0] == 0)? 1'b1 : 1'b0 ;
					Overflow = (~(A[31]^(B[31]^{32{1'b1}}))) & (A[31] != sub_sum[31]) ? 1'b1 : 1'b0;
					Y[31:0] = sub_sum[31:0];
				end
				4'b1000:begin 
					Cout = 1'b0;
					Negative = 1'b0;
					Zero = (sub_sum[31:0] == 0)? 1'b1 : 1'b0 ;/*Dont care about absolutor */
					Overflow = (~(A[31]^(B[31]^{32{1'b1}}))) & (A[31] != sub_sum[31]) ? 1'b1 : 1'b0;
					Y[31:0] = (sub_sum[31]==1) ? (sub_sum[31:0]^{32{1'b1}})+1'b1  : (sub_sum[31:0]);
				end
				4'b1001:begin //There are some promble......? 
					Y[31:0] = A[15:0]* B[15:0];
					Cout = 0; // it is impossible to overflow...
					Overflow = 1'b0; //same as above
					Negative = 1'b0; ////////////////////////////////////////////weird!!!!!!!!!!!
					Zero = (Y[31:0]==0)? 1'b1 : 1'b0;
				end
				4'b1010:begin 
					Y[31:0] = A[31:0]<<1;
					Negative = A[30];
					Cout = A[31];
					Zero = (Y[31:0]==0)? 1'b1:1'b0;
					Overflow = Cout? 1'b1:1'b0;
				end
				4'b1011:begin 
					Y[31:0] = A[31:0]<<<1;
					Negative = A[30];
					Cout = A[31];
					Zero = (Y[31:0]==0)? 1'b1:1'b0;
					Overflow = Cout? 1'b1:1'b0;
				end
				4'b1100:begin 
					Y[31:0] = A[31:0]>>1;
					Negative = Y[31];
					Zero = (Y[31:0]==0)? 1'b1:1'b0;
					Cout = 1'b0;
					Overflow = 1'b0;
				end
				4'b1101:begin
					Y[30:0] = A[31:0]>>>1;
					Y[31] = A[31];
					Negative = Y[31];
					Zero = (Y[31:0]==0)? 1'b1:1'b0;
					Overflow = 1'b0;
					Cout = 1'b0;
				end
				4'b1110:begin
					Y[31:0] = fadd_out[31:0];
					Cout = 0 ;
					Overflow =0;
					Negative = Y[31];
					Zero = (Y[22:0]==0)? 1'b1 : 1'b0 ;
				end
				4'b1111:begin
					Y[31:0] = fmul_out[31:0];
					Negative = Y[31];
					Zero = (Y[30:0]==0) ? 1'b1 : 1'b0;
					Cout = 0;
					Overflow =0;
				end
			endcase
		end

	end

	AND	 mod1 (.a(A[0]),.b(B[0]),.out(gateOutput[0]));
	OR	 mod2 (.a(A[0]),.b(B[0]),.out(gateOutput[1]));
	NOT	 mod3 (.a(A[0]),.out(gateOutput[2]));
	NOR	 mod4 (.a(A[0]),.b(B[0]),.out(gateOutput[3]));
	XOR	 mod5 (.a(A[0]),.b(B[0]),.out(gateOutput[4]));
	nand (gateOutput[5],A[0],B[0]);

	AdderSubtractor mod7 (.A(A[31:0]), .B(B[31:0]), .Cin(Cin), .mode(1'b0), .Cout(add_out), .Sum(add_sum[31:0]));
	AdderSubtractor mod8 (.A(A[31:0]), .B(B[31:0]), .Cin(1'b0), .mode(1'b1), .Cout(sub_out), .Sum(sub_sum[31:0]));//ignore Cin
	floatPointMul   mod16 (.A(A[31:0]),.B(B[31:0]),.C(fmul_out));
	floatPointAdder	mod15 (.A(A[31:0]),.B(B[31:0]),.C(fadd_out));
endmodule
