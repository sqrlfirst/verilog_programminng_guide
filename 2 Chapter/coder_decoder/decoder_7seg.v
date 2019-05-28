module decoder_7seg(
    input wire [3:0] data, 
    output reg [6:0] segments 
);

    always @* begin
        case (data)
            4'd0: segments = 7'b0111_111; 
            4'd1: segments = 7'b0000_110;
            4'd2: segments = 7'b1011_011;
            4'd3: segments = 7'b1001_111;
            4'd4: segments = 7'b1100_110;
            4'd5: segments = 7'b1101_101;
            4'd6: segments = 7'b1111_101;
            4'd7: segments = 7'b0000_111;
            4'd8: segments = 7'b1111_111;
            4'd9: segments = 7'b1101_111;
            default: segments = 7'b0000_000;
        endcase
    end

endmodule //decoder_7seg 
