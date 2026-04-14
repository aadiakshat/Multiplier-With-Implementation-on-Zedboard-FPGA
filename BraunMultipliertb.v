
`timescale 1ns/1ns
module ha_tb;
  reg [3:0]a,b;
  wire [7:0]c;
  integer i,j;
  BM uut(.a(a),.b(b),.c(c));
  initial begin
    for(i=0;i<=4'b1111;i++)begin
      for(j=0;j<=4'b1111;j++)begin
        a=i;b=j;#10;
      end
    end
    $finish;
  end
  initial begin
    $monitor("%0t\t%b\t%b\t%b", $time, a, b, c);
  end
endmodule
  