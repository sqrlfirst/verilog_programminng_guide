module decoder_2to4 (
    input wire A,
    input wire B,
    input wire en,
    output reg [3:0] y
);

    always @* begin
        if (en == 1'b1) 
            case ({A,B})
                2'b00: y = 4'b1110; 
                2'b01: y = 4'b1101;
                2'b10: y = 4'b1011;
                2'b11: y = 4'b0111; 
                default: y = 4'bxxxx;
            endcase
        if (en = 1'b0) y = 4'b1111;
    end

endmodule // decoder_2to4