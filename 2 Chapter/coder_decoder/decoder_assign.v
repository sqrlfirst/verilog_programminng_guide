module decoder_assign 
    (
        input [3:0]   binary_in ,    // 4-х битный вход
        input         enable         // Разрешение работы шифратора
        output [15:0] decoder_out ,  // 16-ти битный выход
    );
    
    assign decoder_out = (enable) ? (1 << binary_in) : 16'b0 ;
endmodule