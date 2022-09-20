module MM(clk,i,j,reset,read,write,index,read_data,write_data,finish);
	parameter n=20;
	
	input reset,clk;
	input [n-1:0]read_data;
	
	output [n-1:0]i,j;
	output read,write,index,finish;
	output [2*n-1:0]write_data;

	reg [2:0]state,next_state; // read scale -> read data -> write data
	reg [n-1:0]scale[3:0];
	reg read,write,index;
	reg next_read,next_write,next_index;
	reg [n-1:0]next_i,next_j;
	reg [n-1:0]i,j;

	reg	signed[n-1:0]fir_data[n-1:0][n-1:0];
	reg signed[n-1:0]sec_data[n-1:0][n-1:0];
	reg signed[n*2-1:0]new_data[n-1:0][n-1:0];
 	reg	signed[n-1:0]next_fir_data;
	reg signed[n-1:0]next_sec_data;

	integer loop_i,loop_j;
    
	wire signed[n*2-1:0]mul_data[19:0];	
	wire signed[n*2-1:0]add_data[20:0];
	wire [n-1:0]last_i,last_j;
	wire last_index;
	reg flag,next_flag ;
	reg [2*n-1:0]write_data;


	always@(posedge clk)begin

	if (reset==1) begin
		flag = 0;
		state = 0;	
		i =  0;
		j =  0;
		index = 0;
		for (loop_i=0;loop_i<n;loop_i=loop_i+1)begin 
			for (loop_j=0;loop_j<n;loop_j=loop_j+1)begin
				fir_data[loop_i][loop_j] = 0;
    	    	sec_data[loop_i][loop_j] = 0;
			end
		end
	end
	else begin
		state = next_state;	
		i = next_i;
		j = next_j;
		index = next_index;
    flag = next_flag;
    sec_data[last_i][last_j] =((last_index==1&&state==1)||(state==2))&&flag == 0? read_data : sec_data[last_i][last_j];
    fir_data[last_i][last_j] =(last_index==0&&state==1)&& flag == 0? read_data : fir_data[last_i][last_j];
	end
	end
	
	always@(*)begin
		next_index = index;
	  next_flag = flag;
		next_write = write;
		next_read = read;
  	case(state)

			0:begin
				read = 1;
				write = 1;
				next_i = (i+1 <  3)? i+1 : 0; 
				next_j = 0;
				next_state = (i == 2) ? 1 : 0;
				scale[0] [n-1:0] = (state == 0 && i == 0)? read_data:scale[0] ;
				scale[1] [n-1:0] = (state == 0 && i == 1)? read_data:scale[1] ;
				scale[2] [n-1:0] = (state == 0 && i == 2)? read_data:scale[2] ;
			end
			
			1:begin 
				read = 1;
				write = 0; 
				next_index = (index==0 && i == scale[0]-1 && j ==scale[1]-1) ? 1 :(index==1 &&  i == scale[1]-1 && j ==scale[2]-1 ) ? 0 : index;  
				next_state = (index==1 && i == scale[1]-1 && j ==scale[2]-1) ? 2 : 1 ;
				next_i = (index==0 && i == scale[0]-1)|| (index==1 && i == scale[1]-1) ? 0 : i+1;
				next_j = (index==0 && i == scale[0]-1)|| (index==1 && i == scale[1]-1) ?(index==0&&j==scale[1]-1 ||index==1&&j==scale[2]-1? 0 : j+1) : j ;
				next_fir_data=read_data;
			end 

			2:begin 
				read = 1;
				write = 1;
				next_fir_data=read_data;
				next_state = 3;
		end	

			3:begin 
				read = 0;
				write = 0;
				next_i =(i==scale[0]-1&&j == scale[2]-1)? 0 : ((j == scale[2]-1) ? i+1:i) ;
				next_j =(j < scale[2]-1) ? j+1:0;
				next_state =(i ==scale[0]-1 && j ==scale[2]-1) ? 4 : 3;			
			    next_flag = 1;
				new_data [i][j]= add_data[scale[1]];
			end
			4:begin 
				
				read = 0;
				write = 1;
				next_j =(j < scale[2]-1) ? j+1:0;
				next_i = ((j == scale[2]-1) ? i+1:i) ;
				next_state = 4;			
			    next_flag = 1;
				write_data = new_data[i][j];
			end
			default:begin
				read = 0;
				write = 0;
			end				
		endcase
	end
 
	assign finish = (state==4 && i==scale[0]) ? 1 : 0;

	assign last_i = (next_i==0)  ?((next_j == 0)? (next_index==1? scale[0]-1   :scale[1]-1 ) : (next_index==1? scale[1]-1   :scale[0]-1 )) : next_i-1;
	assign last_j = (next_i==0)  ?((next_j == 0)? (next_index==1? scale[1]-1   :scale[2]-1   ) : next_j-1) : next_j ;
	assign last_index = (next_i==0 && next_j==0) ? ~next_index : next_index;



	genvar gv;
	generate 
		for (gv = 0; gv<n/2 ; gv=gv+1)begin
				assign mul_data[gv] = fir_data[i][gv] * sec_data[gv][j];
				assign add_data[gv+1] = add_data[gv] + mul_data[gv];
		end
	endgenerate		

	assign add_data[0]= 0;	
	
endmodule
