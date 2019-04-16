library verilog;
use verilog.vl_types.all;
entity RS_trigger is
    port(
        R               : in     vl_logic;
        S               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end RS_trigger;
