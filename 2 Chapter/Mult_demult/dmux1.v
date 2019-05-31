module dmux1
    (
      input wire signal,
      input wire [1:0]addr,
      output reg [3:0]out
    );

    always @*
      out = signal << addr;

endmodule
