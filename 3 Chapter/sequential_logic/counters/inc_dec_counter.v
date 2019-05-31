module inc_dec_counter 
    (
        input            up_down , // Установка направления счёта
        input            clk , // Тактовый вход
        input            reset // Вход сброса
        output reg [7:0] out , // Выход счётчика
    );

    always @(posedge clk)
        if (reset) begin // active high reset
            out <= 8'b0 ;
        end
        else if (up_down) begin // направление счета
            out <= out + 1;     // инкремент
        end 
        else begin
            out <= out - 1;     // декремент
        end
endmodule
