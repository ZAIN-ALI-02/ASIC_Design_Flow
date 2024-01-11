`timescale 1ns/1ns

module tb_dff_ram_4x72;

    reg clk;
    reg [1:0] address;
    reg en_n;
    reg wr;
    reg [71:0] wdata;
    wire [71:0] rdata;

    dff_ram_4x72 dut (
        .clk (clk),
        .address (address),
        .en_n (en_n),
        .wr (wr),
        .wdata (wdata),
        .rdata (rdata)
    );

    initial begin
        $dumpfile("./temp/tb_dff_ram_4x72.vcd");
        $dumpvars(0,tb_dff_ram_4x72);
    end

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // // Directed Test
        // en_n = 1'b0;
        // #10 wr = 1'b0; address = 2'b00; wdata = $random;
        // #10 wr = 1'b0; address = 2'b01; wdata = $random;
        // #10 wr = 1'b0; address = 2'b10; wdata = $random;
        // #10 wr = 1'b0; address = 2'b11; wdata = $random;
        // #10 wr = 1'b1; address = 2'b00; wdata = $random;
        // #10 wr = 1'b1; address = 2'b01; wdata = $random;
        // #10 wr = 1'b1; address = 2'b10; wdata = $random;
        // #10 wr = 1'b1; address = 2'b11; wdata = $random;
        // // Random Test
        // for (integer i = 1; i <= 50; i = i + 1) begin
        //     #10 address = $random; en_n = $random; wr = $random; wdata = $random;
        // end
        #50 $finish;
    end

endmodule