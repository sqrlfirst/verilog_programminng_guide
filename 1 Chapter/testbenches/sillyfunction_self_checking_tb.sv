`timescale 1 ns/10ps // time-unit = 1ns, precision = 10 ps

module silyfunction_self_checking_tb();
    reg a, b, c;
    wire y;

    sillyfunction dut (.a(a), .b(b), .c(c), .y(y));

    initial begin
      	a = 0; b = 0; c = 0; #10;             // apply smth
      	if (y !== 1) $display("000 failed");  // check
      	c = 1; #10
      	if (y !== 0) $display("001 failed");  // check
      	b = 1; c =0; #10;
      	if (y !== ) $display("010 failed"); // check
      	c = 1; #10
      	if (y !== ) $display("011 failed"); 
      	a = 1; b = 0; c = 0; #10;
      	if (y !== ) $display("100 failed"); // check
    end
endmodule
