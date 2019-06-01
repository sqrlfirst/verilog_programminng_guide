module fsm_cc1_3oe
    (
        output rd, ds,
        input go, ws, clk, rst_n
    );
    
    parameter IDLE = 3'b0_00,
              READ = 3'b0_01,
              DLY =  3'b1_01,
              DONE = 3'b0_10;
    
    reg [2:0] state, next;
    
    always @(posedge clk or negedge rst_n)
        if (!rst_n) state <= IDLE;
        else state <= next;
    
    always @(state or go or ws) begin
        next = 'bx;
        case (state)
            IDLE : if (go) next = READ;
                   else next = IDLE;
            READ : next = DLY;
            DLY : if (!ws) next = DONE;
                  else next = READ;
            DONE : next = IDLE;
        endcase
    end

    assign {ds,rd} = state[1:0];

endmodule
