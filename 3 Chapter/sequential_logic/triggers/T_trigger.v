module T_trigger
    (
        input wire T,
        input wire clk,
        output reg q = 1'b0
    );

    always @(posedge clk) begin
        if (T) q <=~q; 
    end

endmodule 