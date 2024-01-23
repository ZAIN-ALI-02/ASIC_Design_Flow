`timescale 1ns/1ns

module tb_inverter;

    reg in;
    wire out;

    inverter dut (
        .in (in),
        .out (out)
    );

    initial begin
        $dumpfile("./temp/tb_inverter.vcd");
        $dumpvars(0,tb_inverter);
    end

    initial begin
        #10 in = 0;
        #10 in = 1;
        #10 $finish;
    end

endmodule