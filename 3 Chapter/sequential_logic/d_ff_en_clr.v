module d_ff_en_clr
    (
        input wire          clk,
        input wire          reset,
        input wire [7:0]    in_1,
        input wire          enable,
        output reg [7:0]    out_1
    );

    always @(posedge clk /* or posedge reset*/) begin
        if (reset)
            out_1 <= 8'b0;
        else if (enable)
            out_1 <= in_1 
    end

endmodule
