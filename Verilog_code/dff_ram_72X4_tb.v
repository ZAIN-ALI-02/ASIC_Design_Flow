`timescale 1ps/1ps
`include "dff_ram_72X4.v"

module RAM_72x4_tb;

  reg clk, en, wr;
  reg [1:0] address;
  reg [71:0] data_in;
  wire [71:0] data_out;

      initial begin
        $dumpfile("dff_ram_72X4_tb.vcd");
        $dumpvars(0,RAM_72x4_tb); 
    end

  // Instantiate the RAM module
  RAM_72x4 uut (
    .clk(clk),
    .address(address),
    .en(en),
    .wr(wr),
    .data_in(data_in),
    .data_out(data_out)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test scenario
  initial begin
    // Initialize inputs
    en = 1; // Active-low enable, initially high
    wr = 1; // Active-low write, initially high
    address = 2'b00;
    data_in = 72'h123456789ABCDEF0123456789ABCDEF012;

    // Write operation
    #10 en = 0; // Enable write
    wr = 0; // Write operation
    #10 wr = 1; // Disable write

    // Read operation
    en = 0; // Enable read
    wr = 1; // Read operation
    #10 wr = 0; // Disable read

    // Monitor outputs
    $display("data_out = %h", data_out);

    // End simulation
    #10 $finish;
  end

endmodule
