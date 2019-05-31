module rom 
    (
    input  [7:0]  address ,  // Адресный вход
    input         read_en ,  // Разрешение чтения
    input         ce         // Выбор блока
    output [7:0]  data ,     // Выход данных
    );

    reg [7:0] mem [0:255] ;

    assign data = (ce && read_en) ? mem[address] : 8'b0;
    
    initial begin
        $readmemb("memory.list", mem); // memory_list – это файл с содержимым // ROM
    end
endmodule