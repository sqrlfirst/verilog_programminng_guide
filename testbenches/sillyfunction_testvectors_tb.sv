`timescale 1 ns/10 ps // timescale
module sillyfunction_using_testvectors_tb();
    reg         clk, reset;
    reg         a, b, c, y_exp;
    wire        y;
    reg  [31:0] vectornum, errors;
    reg  [3:0]  testvectors[10000:0];

    sillyfunction dut(.a(a), .b(b), .c(c), .y(y));

    // generate clock
    always
    begin 
      clk = 1; #5; clk = 0; #5;
    end

    // read values from example.tv
    initial
    begin 
      $readmemb("example.tv", testvectors);
      vectornum = 0; errors = 0;
      reset = 1; #27; reset = 0;
    end

    always @(posedge clk)
    begin 
      #1; {a, b, c, y_exp} = testvectors[vectornum]; // there is a pause between clk and signal
    end

    always @(negedge clk)
     if (~reset)
       begin 
          if (y !== y_exp)
            begin 
              $display("Error: inputs = %b", {a, b, c});
              $display(" outputs = %b (%b expected)", y, y_exp);
            end
          vectornum = vectornum + 1;
          if (testvectors[vectornum] === 4'bx)
          begin
            $display("%d tests completed with %d errors", vectornum, errors); 
            $finish;
          end
        end     
endmodule // sillyfunction_using_testvectotb