module mux_assign
    (
        input din_0 ,   // Первый вход
        input din_1 ,   // Второй вход
        input sel ,     // Выбор входа
        output mux_out  // Выход
    );

    assign mux_out = (sel) ? din_1 : din_0; // выбор значения выхода с помощью 
                                            // тернарного оператора

endmodule