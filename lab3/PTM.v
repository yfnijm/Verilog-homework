module PTM(clk , rst , start , data , en , addr , flag , fin , result);
    input clk , rst , start;
    input [9 : 0] data;
    output en , flag , fin;
    output [9 : 0] addr , result;

	reg [2:0]state,next_state;
	reg flag;
	reg [9:0]sum,next_sum;
	reg [9:0]num,next_num;

	assign en = 1'b1; // data can input
/*
	initial begin
		flag = 0;
		sum = 10'b0;
		state = 0;
		next_state = 1;
		num = 10'b11_1111_1111;
		next_num = 1;
		next_sum = 0;
	end
*/ 
	always@(posedge rst or posedge clk)begin
		if (rst == 1'b1)begin
			state = 10'b0;
			sum = 10'b0;
			num = 10'b11_1111_1111; //turn 0 when add 1

		end
//		else if (clk == 1'b1)begin  <- can't write this
		else begin
			state = next_state;
			num = next_num;
			sum = next_sum;
		end
	end

	always@(*)begin
	    next_state = state;
		next_sum = sum; //necessary
		next_num = num + 1; // initial or after rst next num became 0
		if (start == 1)begin
			case(state)
				3'b000:begin
					next_state	= data[0] ? state+1 : 0 ;
					flag = 0;
				end
				3'b001:begin
					next_state	= data[0] ? 1 : state+1 ;
					flag = 0;
				end
				3'b010:begin
					next_state	= data[0] ? state+1 : 0 ;
					flag = 0;
				end
				3'b011:begin
					next_state	= data[0] ? 1 : state+1 ;
					flag = 0;
				end
				3'b100:begin
					next_state	= data[0] ? 3'b011 : state+1 ;
					flag = 0;
				end
				3'b101:begin
					next_state	= data[0] ? state+1 : 0 ;
					flag = 0;
				end
				3'b110:begin
					next_state	= data[0] ? 3'b000 : 3'b100 ; //bonus modify
					flag = data[0] ? 1'b1 : 1'b0;
					next_sum = data[0] ? sum + 1'b1 : sum ;
				end
			endcase

		end
		else begin 
			flag = 0;
		end
	end

	assign addr = num;
	assign fin = (start == 1 && num==1023) ? 1'b1 : 1'b0;
	assign result = (fin==1) ? sum : 0 ; //not sure if output result every turn or just in the last

endmodule
