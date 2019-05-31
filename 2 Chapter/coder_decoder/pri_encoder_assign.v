module pri_encoder_assign
    (
    input [15:0] encoder_in ,    // 16-ти битный вход
    input        enable          // Разрешение работы шифратора
    output [3:0] binary_out ,    // 4-х битный двоичный выход
    );
    
    assign binary_out = (!enable) ? 0 : ((encoder_in == 16'bxxxx_xxxx_xxxx_xxx1) ? 0 :
                                         (encoder_in == 16'bxxxx_xxxx_xxxx_xx10) ? 1 :
                                         (encoder_in == 16'bxxxx_xxxx_xxxx_x100) ? 2 :
                                         (encoder_in == 16'bxxxx_xxxx_xxxx_1000) ? 3 :
                                         (encoder_in == 16'bxxxx_xxxx_xxx1_0000) ? 4 :
                                         (encoder_in == 16'bxxxx_xxxx_xx10_0000) ? 5 :
                                         (encoder_in == 16'bxxxx_xxxx_x100_0000) ? 6 :
                                         (encoder_in == 16'bxxxx_xxxx_1000_0000) ? 7 :
                                         (encoder_in == 16'bxxxx_xxx1_0000_0000) ? 8 :
                                         (encoder_in == 16'bxxxx_xx10_0000_0000) ? 9 :
                                         (encoder_in == 16'bxxxx_x100_0000_0000) ? 10 :
                                         (encoder_in == 16'bxxxx_1000_0000_0000) ? 11 :
                                         (encoder_in == 16'bxxx1_0000_0000_0000) ? 12 :
                                         (encoder_in == 16'bxx10_0000_0000_0000) ? 13 :
                                         (encoder_in == 16'bx100_0000_0000_0000) ? 14 : 15);

endmodule
