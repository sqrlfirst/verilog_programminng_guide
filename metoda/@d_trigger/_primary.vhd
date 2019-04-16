library verilog;
use verilog.vl_types.all;
entity D_trigger is
    port(
        D               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end D_trigger;
