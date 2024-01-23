`timescale 1ns/1ns

module tb_d_flip_flip;

    reg clk;
    reg d;
    wire q;

    d_flip_flip dut (
        .clk (clk),
        .d (d),
        .q (q)
    );

    initial begin
        $dumpfile("./temp/tb_d_flip_flip.vcd");
        $dumpvars(0,tb_d_flip_flip);
    end

    initial clk = 0;
    always #10 clk = ~clk;
    
    initial begin
        for (integer i = 1; i <= 10; i = i + 1) begin
            #25 d = $random;
        end
        #25 $finish;
    end

endmodule