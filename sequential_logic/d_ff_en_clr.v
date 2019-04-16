module d_ff_en_clr
    (
        input wire           clk,
        input wire          reset,
        input wire          in_1,
        input wire          enable,
        input wire          clear,
        output reg           out_1
    );

    always @(posedge clk or posedge reset) begin
        if (reset)
            out_1 <= 1'b0;
        else if (clear == 1'b0)
            out_1 <= 1'b0;
        else if (enable)
            out_1 <= in_1 
    end

endmodule