`timescale 1ns/1ns

module tb_dff_ram_8x72;
    
    reg clk;
    reg [2:0] address;
    reg en_n;
    reg wr;
    reg [71:0] wdata;
    wire [71:0] rdata;

    dff_ram_8x72 dut (
        .clk (clk),
        .address (address),
        .en_n (en_n),
        .wr (wr),
        .wdata (wdata),
        .rdata (rdata)
    );

    initial begin
        $dumpfile("./temp/tb_dff_ram_8x72.vcd");
        $dumpvars(0,tb_dff_ram_8x72);
    end

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // // Directed Test
        // en_n = 1'b0;
        // #20 wr = 1'b0; address = 3'b000; wdata = $random;
        // #20 wr = 1'b1; address = 3'b000; wdata = $random;
        // #20 wr = 1'b0; address = 3'b001; wdata = $random;
        // #20 wr = 1'b1; address = 3'b001; wdata = $random;
        // #20 wr = 1'b0; address = 3'b010; wdata = $random;
        // #20 wr = 1'b1; address = 3'b010; wdata = $random;
        // #20 wr = 1'b0; address = 3'b011; wdata = $random;
        // #20 wr = 1'b1; address = 3'b011; wdata = $random;
        // #20 wr = 1'b0; address = 3'b100; wdata = $random;
        // #20 wr = 1'b1; address = 3'b100; wdata = $random;
        // #20 wr = 1'b0; address = 3'b101; wdata = $random;
        // #20 wr = 1'b1; address = 3'b101; wdata = $random;
        // #20 wr = 1'b0; address = 3'b110; wdata = $random;
        // #20 wr = 1'b1; address = 3'b110; wdata = $random;
        // #20 wr = 1'b0; address = 3'b111; wdata = $random;
        // #20 wr = 1'b1; address = 3'b111; wdata = $random;
        // // Random Test
        // for (integer i = 1; i <= 50; i = i + 1) begin
        //     #10 address = $random; en_n = $random; wr = $random; wdata = $random;
        // end
        #50 $finish;
    end

endmodule