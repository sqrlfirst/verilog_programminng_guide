module posl_parl
    (
        input wire          clk,
        input wire          data_in,
        input wire          enable,
        input wire          reset,       
        output reg [7:0]    data_out
    );


    always @(posedge clk) begin
        if (enable) begin
            data_out[0] <= data_in;
            data_out    <= data_out << 1; 
        end
        else (reset) data_out <= 8'b0;
    end

endmodule

