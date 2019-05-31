module inc_counter_load 
    (
    input      [7:0]    data ,      // Параллельный порт для загрузки данных
    input               load ,      // Разрешение параллельной загрузки данных в счётчик
    input               enable ,    // Разрешение счёта
    input               clk ,       // Тактовый вход
    input               reset       // Вход сброса
    output reg [7:0]    out ,       // Выход счётчика
    );
    
    always @(posedge clk)
        if (reset) begin            // сброс
            out <= 8'b0 ;
        end 
        else if (load) begin        // загрузка
            out <= data;
        end 
        else if (enable) begin      // инкремент
            out <= out + 1;
        end
endmodule
