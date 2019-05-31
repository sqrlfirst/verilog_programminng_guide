module mux_case
    (
        input  din_0 ,  // Первый вход мультиплексора
        input  din_1 ,  // Второй вход мультиплексора
        input  sel ,    // Выбор входа
        output mux_out  // Выход мультиплексора
    );

    always @* begin 
        case(sel )
            1'b0 : mux_out = din_0;
            1'b1 : mux_out = din_1;
        endcase
    end
endmodule