module dmux2
    (
      input wire signal,
      input wire [1:0]addr,
      output reg [3:0]out
    );

    always @* begin
      if(signal)
       case(addr)
        2'd0: out = 4'b0001;
        2'd1: out = 4'b0010;
        2'd2: out = 4'b0100;
        2'd3: out = 4'b1000;
       endcase
      else
       out = 4'b0000;
    end

endmodule
