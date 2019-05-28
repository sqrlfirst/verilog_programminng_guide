module parl_posl
    (
        input wire          clk,
        input wire [7:0]    data_in,
        input wire          enable,
        input wire          reset,       
        output wire          data_out
    );

    reg [7:0]   rdata_in;

    always @(posedge clk) begin
        if (enable) begin
            rdata_in    <= data_in;
        end
        else if (reset) data_in <= 8'b0;
        else begin
            data_in    <= data_in << 1; 
        end
    end
    
    assign data_out = data_in[7];

endmodule 
    