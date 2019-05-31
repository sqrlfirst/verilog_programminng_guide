module inc_counter 
    (
        input enable ,          // разрешение счёта
        input clk ,             // Тактовый вход
        input reset,            // Вход сброса
        outout reg [7:0] out ,  // Выходная шина счётчика
    );
    
    always @(posedge clk)
        if (reset) begin        // сброс
            out <= 8'b0;
        end 
        else if (enable) begin  // инкремент
            out <= out + 1;
        end
endmodule
