`include "./A2Q1_carry_look_ahead_8bit.v"
module carry_look_ahead_8bit_tb;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;
 
  carry_look_ahead_8bit uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  a=0; b=0; cin=0;
  #5 a=8'd0; b=8'd0; cin=1'd1;
  #5 a=8'd14; b=8'd1; cin=1'd1;
  #5 a=8'd5; b=8'd0; cin=1'd0;
  #5 a=8'd9; b=8'd0; cin=1'd1;
  #5 a=8'd25; b=8'd43; cin=1'd1;
  #5 a=8'd48; b=8'd4; cin=1'd1;
  #5 a=8'd17; b=8'd20; cin=1'd1;
  #5 a=8'd72; b=8'd4; cin=1'd1;
  #5 a=8'd83; b=8'd7; cin=1'd1;
  #5 a=8'd23; b=8'd32; cin=1'd1;
  #5 a=8'd67; b=8'd59; cin=1'd1;
  #5 a=8'd34; b=8'd69; cin=1'd1;
  #5 a=8'd79; b=8'd135; cin=1'd1;
  #5 a=8'd23; b=8'd48; cin=1'd1;
  #5 a=8'd54; b=8'd223; cin=1'd1;
end
 
initial
  $monitor( "time=%d, A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", $time,a,b,cin,sum,cout);
endmodule