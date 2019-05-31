module mux_if
    (
        input   din_0 , // Первый вход мультиплексора
        input   din_1 , // Второй вход мультиплексора
        input   sel ,   // Выбор входа
        output  mux_out // Выход мультиплексора
    );
    always @* begin
        if (sel == 1'b0) begin
            mux_out = din_0;
        end
        else begin
            mux_out = din_1 ;
        end
    end
endmodule