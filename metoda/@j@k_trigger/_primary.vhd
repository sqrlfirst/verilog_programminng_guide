library verilog;
use verilog.vl_types.all;
entity JK_trigger is
    port(
        J               : in     vl_logic;
        K               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end JK_trigger;
