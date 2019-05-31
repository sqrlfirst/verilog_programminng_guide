module decoder_using_case 
    (
        input [3:0]       binary_in ,    // 4-х битный двоичный вход
        input             enable         // Разрешение работы шифратора
        output reg [15:0] decoder_out ,  // 16-ти битный двоичный выход
    );
    
    always @ (enable or binary_in)begin
        decoder_out = 0;
        if (enable) begin
            case (binary_in)
                4'h0 : decoder_out = 16'h0001;
                4'h1 : decoder_out = 16'h0002;
                4'h2 : decoder_out = 16'h0004;
                4'h3 : decoder_out = 16'h0008;
                4'h4 : decoder_out = 16'h0010;
                4'h5 : decoder_out = 16'h0020;
                4'h6 : decoder_out = 16'h0040;
                4'h7 : decoder_out = 16'h0080;
                4'h8 : decoder_out = 16'h0100;
                4'h9 : decoder_out = 16'h0200;
                4'hA : decoder_out = 16'h0400;
                4'hB : decoder_out = 16'h0800;
                4'hC : decoder_out = 16'h1000;
                4'hD : decoder_out = 16'h2000;
                4'hE : decoder_out = 16'h4000;
                4'hF : decoder_out = 16'h8000;
            endcase
        end
    end
endmodule