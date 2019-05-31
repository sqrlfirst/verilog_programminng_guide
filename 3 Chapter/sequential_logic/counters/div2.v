module div2 // делитель на 2
    (
        input  clk_in,
        input  enable,
        input  reset, 
        output reg clk_out
    );

always @ (posedge clk_in)
    if (reset) begin
        clk_out <= 1'b0;
    end
    else if (enable) begin
        clk_out <= !clk_out ;
    end

endmodule 
