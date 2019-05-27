module RAM_param
    #(
        parameter DATA_WIDTH = 8,                   // parameters for RAM
                  DEPTH = 3072                      // parameters for RAM
    )(
        input wire                      i_clk,
        input wire [$clog2(DEPTH)-1:0]  i_addr_wr,
        input wire [$clog2(DEPTH)-1:0]  i_addr_r, 
        input wire                      i_write,
        input wire [DATA_WIDTH-1:0]     i_data,
        output reg [DATA_WIDTH-1:0]     o_data 
    );

    reg [DATA_WIDTH-1:0] memory_array [0:DEPTH-1];  // memory register 

    always @ (posedge i_clk)
    begin
        if(i_write) begin                           // synchronous writing to memory
            memory_array[i_addr_wr] <= i_data;
        end
        o_data <= memory_array[i_addr_r];           // synchronous reading from memory 
    end

endmodule
