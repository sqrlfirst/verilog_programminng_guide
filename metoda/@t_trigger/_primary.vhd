library verilog;
use verilog.vl_types.all;
entity T_trigger is
    port(
        T               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end T_trigger;
