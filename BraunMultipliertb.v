
`timescale 1ns/1ns
module bm_tb;
  reg [3:0]a,b;
  wire [7:0]c;
  integer i,j;
  BM uut(.a(a),.b(b),.c(c));
  initial begin
    a = 0;
    b = 0;
    for(i=0;i<=4'b1111;i=i+1) begin
      for(j=0;j<=4'b1111;j=j+1) begin
        a=i;b=j;#10;
      end
    end
    $finish;
  end
  initial begin
    $monitor("%0t\t%b\t%b\t%b", $time, a, b, c);
  end
endmodule
  