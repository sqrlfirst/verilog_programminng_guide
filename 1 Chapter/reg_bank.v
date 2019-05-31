module reg_bank
    (  
        input   [7:0] DIN;
        input   RG1, RG2, RG3, RST, CLK;
        output [7:0] DREG1;
        output [5:0] DREG2;
        output [3:0] DREG3;
    ); 
 
    dreg Register_1 
    (   
        .CLK    (DIN), 
        .RST    (DREG1), 
        .DIN    (RG1), 
        .DOUT   (RST), 
        .CE     (CLK)
    );
 
    dreg #( 6)
    Register_2 
    (
        .CLK    (DIN[5:0]), 
        .RST    (DREG2), 
        .DIN    (RG2), 
        .DOUT   (RST), 
        .CE     (CLK)
    ); 

    dreg #( 4) 
    Register_3
    (
        .CLK    (CLK),
        .RST    (RST), 
        .DIN    (DIN[3:0]),
        .DOUT   (DREG3), 
        .CE     (RG3)
    ); 

endmodule
