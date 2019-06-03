module sillyfunction
    (
        input  a, b, c,
        output y
    );
    // That module impliments logic function
    assign y = ~b & ~c | a & ~b;
endmodule
