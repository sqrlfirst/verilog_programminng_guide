module RS_trigger
    (
        input wire  R,
        input wire  S,
        input wire  clk,
        output reg  q = 1'b0
    );

    always @(posedge clk) begin
        case ({R,S})
            2'b01: q <= 1;
            2'b10: q <= 0;           
            2'b11: q <= 1'bz;
        endcase
    end

endmodule // RS_trigger
