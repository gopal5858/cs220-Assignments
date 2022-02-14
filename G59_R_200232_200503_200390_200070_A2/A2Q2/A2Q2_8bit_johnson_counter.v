module johnson_counter( out,reset,clk);
input clk,reset;
output [7:0] out;
 
reg [7:0] q;
 
always @(posedge clk)
begin
 
if(reset)
 q=8'd0;
 else
 	begin 
 		q[7]<=q[6];
  		q[6]<=q[5];
  		q[5]<=q[4];
  		q[4]<=q[3];
  		q[3]<=q[2];
  		q[2]<=q[1];
  		q[1]<=q[0];
   		q[0]<=(~q[7]);
 	end
 end
 
assign out=q;  
endmodule