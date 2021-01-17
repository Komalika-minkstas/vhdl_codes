module generate_test;
   
 reg [15:0] x, y;
 wire [15:0] out;

xor_bitwise G (.f(out),.a(x),.b(y));

initial
  begin
    $monitor ("x: %b, y: %b, Out: %b", x, y, out);
    x = 16'haaaa; y=16'h00ff;
    #10 x=16'h0f0f; y=16'h3333;
    #20 $finish;
  end
endmodule