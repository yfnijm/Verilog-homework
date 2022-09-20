module testbench;

    wire out_G,out_D,out_B;
    reg [3:0]in=4'b0000; //both bia- and dec- can used
    integer i;

    initial 
	begin
        for(i=0;i<=15;i=i+1)
		begin
            #(50)
            $display("time=%3d,in=%4b,out_G=%b,out_D=%b,out_B=%b",$time,in,out_G,out_D,out_B); //Unified format

			if((out_G!=out_D)||(out_D!=out_B)||
            	((in==0||in==1||in==2||in==3||in==5||in==7||in==8||in==11||in==13)&&(out_G==0))||
            	((in!=0&&in!=1&&in!=2&&in!=3&&in!=5&&in!=7&&in!=8&&in!=11&&in!=13)&&(out_G==1)))
           	begin
          	    $display("there are some problem in this part.");
       		end
            	in=in+4'b0001;
   		end
        $finish; //seem not necessary
    end

    fop_G output_G(.in(in),.out(out_G));
    fop_D output_D(.in(in),.out(out_D));
	fop_B output_B(.in(in),.out(out_B));

endmodule 
