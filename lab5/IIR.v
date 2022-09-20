module IIR(clk,rst, load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);
	parameter n=16;
	parameter m=20;
	
	input clk,rst;
	input data_done;
	input [n-1:0]DIn;
	
	output  WEN,load;
	output Finish;
	output [n-1:0]Yn;
	output [m-1:0]RAddr;
	output [m-1:0]WAddr;

	/*
		your design
	*/

	integer i;

	reg signed[24:0]s[0:5];
	reg signed[24:0]next_s[0:4];
	reg signed[24:0]s_new[0:4];
    reg signed[24:0]next_s_new[0:4];
	reg [m-1:0]RAddr,WAddr;
	reg WEN,load;
//	wire signed[24:0]s5;
	wire signed[24:0]a_shift[0:5];
	wire signed[24:0]b_shift[0:4];
	wire signed[24:0]sum;
	reg [1:0]flag;

	parameter a5=	0.0000_0100_1111_1001;
	parameter a4=	0.0000_0101_0110_0111;
    parameter a3=	0.0000_1001_1010_0111;
    parameter a2=	0.0000_1001_1010_0111;
    parameter a1=	0.0000_0101_0110_0111;
    parameter a0=	0.0000_0100_1111_1001;

    parameter b4=	-10.1100_0010_0000_1100;
    parameter b3=	100.0000_0010_1101_0000;
    parameter b2=	-11.0101_1111_0000_0000;
    parameter b1=	1.1010_0111_0111_1001;
    parameter b0=	-0.0110_0001_0010_1100;
/*
	assign a_shift[5] = (s[5]*'b0000_0100_1111_1001) >>> 16;
	assign a_shift[4] = (s[4]*'b0000_0101_0110_0111) >>> 16;
 assign a_shift[3] = (s[3]*'b0000_1001_1010_0111) >>> 16;
 assign a_shift[2] = (s[2]*'b0000_1001_1010_0111) >>> 16;
 assign a_shift[1] = (s[1]*'b0000_0101_0110_0111) >>> 16;
 assign a_shift[0] = (s[0]*'b0000_0100_1111_1001) >>> 16;
 assign b_shift[4] = (s[4]*'b101100_0010_0000_1100) >>> 16;
 assign b_shift[3] = (s[3]*'b1000000_0010_1101_0000) >>> 16;
 assign b_shift[2] = (s[2]*'b110101_1111_0000_0000) >>> 16;
 assign b_shift[1] = (s[0]*'b11010_0111_0111_1001) >>> 16;
 assign b_shift[0] = (s[0]*'b00110_0001_0010_1100) >>> 16;

*/




//	assign a_shift[5] = (s5>>>6) + (s5>>>9) + (s5>>>10) +(s5>>>11) +(s5>>>12) + (s5>>>13)+ (s5>>>16);
	assign a_shift[5] = (s[5]>>>6) + (s[5]>>>9) + (s[5]>>>10) +(s[5]>>>11) +(s[5]>>>12) + (s[5]>>>13)+ (s[5]>>>16);
	assign a_shift[4] = (s[4]>>>6) + (s[4]>>>8) + (s[4]>>>10) +(s[4]>>>11) +(s[4]>>>14) + (s[4]>>>15)+ (s[4]>>>16);
	assign a_shift[3] = (s[3]>>>5) + (s[3]>>>8) + (s[3]>>>9) +(s[3]>>>11) +(s[3]>>>14) + (s[3]>>>15)+ (s[3]>>>16);
	assign a_shift[2] = (s[2]>>>5) + (s[2]>>>8) + (s[2]>>>9) +(s[2]>>>11) +(s[2]>>>14) + (s[2]>>>15)+ (s[2]>>>16);
	assign a_shift[1] = (s[1]>>>6) + (s[1]>>>8) + (s[1]>>>10) + (s[1]>>>11) + (s[1]>>>14) + (s[1]>>>15)+ (s[1]>>>16);
	assign a_shift[0] = (s[0]>>>6) + (s[0]>>>9) + (s[0]>>>10) + (s[0]>>>11) + (s[0]>>>12) + (s[0]>>>13) + (s[0]>>>16);

//	assign b_shift[4] = (s_new[4]<<<1) + (s_new[4]>>>1) + (s_new[4]>>>2) + (s_new[4]>>>7) + (s_new[4]>>>13) + (s_new[4]>>>14) ;
	assign b_shift[4] = -((s_new[4]<<<1) + (s_new[4]>>>1) + (s_new[4]>>>2) + (s_new[4]>>>7) + (s_new[4]>>>13) + (s_new[4]>>>14)) ;

	assign b_shift[3] = (s_new[3]<<<2) + (s_new[3]>>>7) + (s_new[3]>>>9) + (s_new[3]>>>10) + (s_new[3]>>>12) ;

//	assign b_shift[2] = ((s_new[2]<<<1) + (s_new[2]) + (s_new[2]>>>2) + (s_new[2]>>>4) + (s_new[2]>>>5) + (s_new[2]>>>6)+ (s_new[2]>>>7)+ (s_new[2]>>>8)) ;
	assign b_shift[2] = -((s_new[2]<<<1) + (s_new[2]) + (s_new[2]>>>2) + (s_new[2]>>>4) + (s_new[2]>>>5) + (s_new[2]>>>6)+ (s_new[2]>>>7)+ (s_new[2]>>>8)) ;

	assign b_shift[1] = (s_new[1]) + (s_new[1]>>>1) + (s_new[1]>>>3) + (s_new[1]>>>6) + (s_new[1]>>>7) + (s_new[1]>>>8)+ (s_new[1]>>>10)+ (s_new[1]>>>11)+ (s_new[1]>>>12)+ (s_new[1]>>>13)+ (s_new[1]>>>16) ;

//	assign b_shift[0] = ((s_new[0]>>>2) + (s_new[0]>>>3) + (s_new[0]>>>8) + (s_new[0]>>>11) + (s_new[0]>>>13) + (s_new[0]>>>14)) ;
	assign b_shift[0] = -((s_new[0]>>>2) + (s_new[0]>>>3) + (s_new[0]>>>8) + (s_new[0]>>>11) + (s_new[0]>>>13) + (s_new[0]>>>14)) ;




	always@(posedge rst or posedge clk) begin
		if (rst == 1 )begin
			RAddr = 0;
			WAddr = 0;
			flag = 0;
			s[5] = 0 ;
			for (i = 0 ; i<=4 ; i = i+1 )begin
				s[i] = 0 ;
				s_new[i] = 0 ;
			end
		end

		else begin
			RAddr = RAddr+1;
			WAddr = RAddr-1;
			s[0] = next_s[0];
            s[1] = next_s[1];
            s[2] = next_s[2];
            s[3] = next_s[3];
            s[4] = next_s[4];
			s[5] = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			s_new[0] = next_s_new[0];
            s_new[1] = next_s_new[1];
            s_new[2] = next_s_new[2];
            s_new[3] = next_s_new[3];
            s_new[4] = next_s_new[4];
			flag = (data_done == 1)||(flag == 1)? flag+1 : flag;
//			Finish = (data_done == 1)? 1 : 0 ;			
		end 
	end 
 
	always@(*)begin
 
		WEN =  1;
		load = 1;
		next_s[0] = s[1];
		next_s[1] = s[2];
 		next_s[2] = s[3];
		next_s[3] = s[4];
		next_s[4] = s[5];
//		next_s[4] = s5;
		next_s_new[0] = s_new[1];
		next_s_new[1] = s_new[2];
		next_s_new[2] = s_new[3];
		next_s_new[3] = s_new[4];
		next_s_new[4] = {{2{Yn[15]}}, Yn, {7{1'b0}}};
//		flag = (data_done == 1)? 1 : 0 ;
//		next_s_new[4] = sum;
//$display("%b" ,Yn); 
//		if (next_s[0] > 500) $finish ;
	end 
 
	assign sum =  a_shift[5]+ a_shift[4]+ a_shift[3]+ a_shift[2] +a_shift[1]+ a_shift[0]
					- b_shift[4] - b_shift[3] - b_shift[2] - b_shift[1] - b_shift[0];
//a5*s[5] + a4*s[4] + a3*s[3] + a2*s[2] + a1*s[1] + a0*s[0];
//				 - b4*s_new[4] - b3*s_new[3] - b2*s_new[2] - b1*s_new[1] - b0*s_new[0];
 	assign Yn = {sum[24], sum[21:7]};
	assign Finish = (flag==2) ? 1 : 0 ; 



// 	assign s5 =  {{2{DIn[15]}}, DIn, {7{1'b0}}} ;
 
endmodule
