module lfsr
    (
        input            enable ,    // Разрешение счёта
        input            clk ,       // Тактовый вход
        input            reset       // Вход сброса
        output reg [7:0] out ,       // Выход счётчика
    );

    wire linear_feedback;

    assign linear_feedback = !(out[7] ^ out[3]);

    always @(posedge clk)
        if (reset) begin        // сброс
            out <= 8'b0 ;
        end 
        else if (enable) begin
            out <= {out[6],out[5],
                    out[4],out[3],
                    out[2],out[1],
                    out[0], linear_feedback};
        end
endmodule