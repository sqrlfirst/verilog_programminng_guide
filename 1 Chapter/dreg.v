module dreg
    #(
        parameter NBRB = 8;
    )(
        input [NBRB – 1:0] DIN;
        input CE, RST, CLK;
        output reg [NBRB – 1:0 ] DOUT;
    );
    
    ----
    <dreg statements>       // logic blocks
    ----
 
endmodule
