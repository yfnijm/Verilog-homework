module Det(clk,i,j,reset,read,write,read_data,write_data,finish);
	parameter n=20;
	
	input reset,clk;
	input [n-1:0]read_data;
	
	output [n-1:0]i,j;
	output read,write,finish;
	output [2*n-1:0]write_data;
 
 	reg [2:0]state,next_state; // read scale -> read data -> write data
	reg [n-1:0]scale;
	reg read,write;
	reg next_read,next_write;
	reg [n-1:0]next_i,next_j;
	reg [n-1:0]i,j;

	reg signed[n*2-1:0]new_data[n-1:0][n-1:0];
	reg signed[n*2-1:0]next_new_data;
	wire last_i,last_j;
	reg flag,next_flag;
	wire signed[n*2-1:0]output_data[3:0];
	wire signed[n*2-1:0]add_data3[2:0],add_data4[3:0];
	wire signed[n*2-1:0]sub_data3[2:0],sub_data4[3:0];
	wire signed[n*2-1:0]add_data_temp, sub_data_temp;

	reg [2*n-1:0]write_data;	
	integer loop_i,loop_j;

	always@(posedge clk)begin
		if (reset==1) begin
			flag = 0;
			state = 0;	
			i =  0;
			j =  0;
		for (loop_i=0;loop_i<n;loop_i=loop_i+1)begin 
			for (loop_j=0;loop_j<n;loop_j=loop_j+1)begin
				new_data[loop_i][loop_j] = 0;
			end
		end
	end
	else begin
		state = next_state;	
		i = next_i;
		j = next_j;
		new_data[last_i][last_j] =((state==1)||(state==2))&&flag == 0? read_data :new_data[last_i][last_j];
		flag = next_flag;
	end
	end
	
	always@(*)begin
		next_write = write;
		next_read = read;
		next_flag = flag;
  	case(state)

			0:begin
				read = 1;
				write = 1;
				next_i = 0; 
				next_j = 0;
				next_state = 1 ;
				scale = (state == 0 && i == 0)? read_data:scale ;
			end
			
			1:begin 
				read = 1;
				write = 0;
				next_i = ( i == scale-1) ? 0 : i+1;
				next_j = ( i == scale-1) ? (j==scale-1 ? 0 : j+1) : j ;
				next_new_data=read_data;
				next_state = (i == j && i == scale-1 )? 2 : 1 ;
			end 

			2:begin 
				read = 0;
				write =0;
				next_new_data=read_data;
				next_state = 3;
			end	

			3:begin 
				read = 0;
				write = 0;
				next_i = j+1;
				next_j =(j < scale-1) ? j+1:0;
				next_state =(i ==scale-1 && j ==scale-1) ? 4 : 3;			
				next_flag = 1;
			end
			4:begin 
				
				read = 0;
				write = 1;
				write_data = output_data[scale-1];
			end
		endcase
	end
 
	assign finish = (state==4 ) ? 1 : 0;
	assign last_i = (next_i==0) ?((next_j == 0)? scale-1  : scale-1 ) : next_i-1;
	assign last_j = (next_i==0) ?((next_j == 0)? scale-1  : next_j-1) : next_j ;

	assign output_data[0] = new_data[0][0];
	assign output_data[1] = new_data[0][0]*new_data[1][1]- new_data[1][2]*new_data[2][1];
	assign output_data[2] = add_data3[0] +  add_data3[1] + add_data3[2] -sub_data3[0]-sub_data3[1]-sub_data3[2];
	assign output_data[3] = add_data_temp - sub_data_temp;

	genvar gv;
	generate 
		for (gv = 0; gv<3 ; gv=gv+1)begin
			assign	add_data3[gv]= new_data[(gv+0)%3][0]*new_data[(gv+1)%3][1]*new_data[(gv+2)%3][2];
			assign	sub_data3[gv]= new_data[(gv+0)%3][2]*new_data[(gv+1)%3][1]*new_data[(gv+2)%3][0];
		end
		for (gv = 0; gv<4 ; gv=gv+1)begin
			assign	add_data4[gv]= new_data[(gv+0)%4][0]*new_data[(gv+1)%4][1]*new_data[(gv+2)%4][2]*new_data[(gv+3)%4][3];
			assign	sub_data4[gv]= new_data[(gv+0)%4][3]*new_data[(gv+1)%4][2]*new_data[(gv+2)%4][1]*new_data[(gv+3)%4][0];
		end
	endgenerate
	assign	add_data_temp =add_data4[0]+add_data4[1]+add_data4[2]+add_data4[3];
	assign	sub_data_temp =sub_data4[0]+sub_data4[1]+sub_data4[2]+sub_data4[3];

endmodule
