module JK_trigger 
    (
        input wire J,
        input wire K,
        input wire clk,
        output reg q
    );

    always @(posedge clk) begin
        case ({J,K})
            2'b01: q <= 0;
            2'b10: q <= 1;   
            2'b11: q <= ~q;
        endcase
    end

endmodule
