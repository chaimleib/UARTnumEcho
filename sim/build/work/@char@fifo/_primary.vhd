library verilog;
use verilog.vl_types.all;
entity CharFifo is
    generic(
        DEPTH           : integer := 1024
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        di              : in     vl_logic_vector(7 downto 0);
        diValid         : in     vl_logic;
        diReady         : out    vl_logic;
        do              : out    vl_logic_vector(7 downto 0);
        doValid         : out    vl_logic;
        doReady         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end CharFifo;
