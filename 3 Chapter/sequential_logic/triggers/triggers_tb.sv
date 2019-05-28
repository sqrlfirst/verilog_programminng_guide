module triggers_tb;

    reg clk = 0;
    reg j = 0;
    reg k = 0;
    reg d = 0;
    reg r = 0;
    reg s = 0;
    reg t = 0;
    wire q_d;
    wire q_jk;
    wire q_rs;
    wire q_t;
    

    D_trigger 
    D_trigger_dut
    (
        .D              (d),
        .clk            (clk),
        .q              (q_d)
    );

    JK_trigger 
    JK_trigger_dut
    (
        .J              (j),
        .K              (k),
        .clk            (clk),
        .q              (q_jk)
    );
        
    RS_trigger
    RS_trigger_dut
    (
        .R              (r),
        .S              (s),
        .clk            (clk),
        .q              (q_rs)
    );

    T_trigger
    T_trigger_dut
    (
        .T              (t),
        .clk            (clk),
        .q              (q_t)
    );

    always begin
        #1 clk = ~clk;
    end

    initial begin
        j = 0;
        k = 0;
        d = 0;
        r = 0;
        s = 0;
        t = 0;
        #4 j = 0;
        k = 1;
        r = 0;
        s = 1;
        #4 j = 1;
        k = 0;
        r = 1;
        s = 0;
        d = 1;
        t = 1;
        #4 j = 1;
        k = 1;
        r = 1;
        s = 1;
    end

    initial begin
        #30 $finish();
    end

endmodule
