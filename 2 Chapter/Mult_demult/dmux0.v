module dmux0
    (
      input wire signal,
      input wire [1:0]addr,
      output reg [3:0]out
    );

    always @*
    begin
      case( addr )
       2'd0: out = { 3'b000, signal      };
       2'd1: out = { 2'b00, signal, 1'b0 };
       2'd2: out = { 1'b0, signal, 2'b00 };
       2'd3: out = {      signal, 3'b000 };
      endcase
    end
endmodule 
