module RAM   
    (
        input wire              i_clk,
        input wire [4:0]        i_addr_wr,      // adress bus is 5 bit width cause        
        input wire [4:0]        i_addr_r,       // memory has 32 adresses
        input wire              i_write,
        input wire [7:0]        i_data,
        output reg [7:0]        o_data 
    );

    reg [7:0] memory_array [0:31];              //memory contains 32 8 bytes words  

    always @ (posedge i_clk)
    begin
        if(i_write) begin                       // writing to memory
            memory_array[i_addr_wr] <= i_data;
        end 
        o_data <= memory_array[i_addr_r];       // reading from memory     
    end

endmodule
