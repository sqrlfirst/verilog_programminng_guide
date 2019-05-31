module gray_counter 
    (
        input enable ,      // Разрешение счёта
        input clk ,         // Такты
        input rst           // Вход сброса лог. «1» - активный сигнал
        output wire out ,   // Выход счётчика
    );

    reg [7:0] count;
    
    always @ (posedge clk)
        if (rst)
            count <= 0;
        else if (enable)
            count <= count + 1;
        
    assign out = { count[7], (count[7] ^ count[6]), (count[6] ^ count[5]),
                             (count[5] ^ count[4]), (count[4] ^ count[3]),
                             (count[3] ^ count[2]), (count[2] ^ count[1]),
                             (count[1] ^ count[0]) };
endmodule