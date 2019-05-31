module dmux3
    (
      input wire signal,
      input wire [1:0]addr,
      output reg [3:0]out
    );

    always @* begin
      case( {~signal,addr} )
       3'd0: out = 4'b0001;
       3'd1: out = 4'b0010;
       3'd2: out = 4'b0100;
       3'd3: out = 4'b1000;
      default:
       out = 4'b0000;
      endcase
    end

endmodule
