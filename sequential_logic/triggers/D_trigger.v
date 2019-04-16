module D_trigger 
    (
        input wire D,
        input wire clk,
        output reg q   
    );

    always @(posedge clk) 
        q <= D;
endmodule 
