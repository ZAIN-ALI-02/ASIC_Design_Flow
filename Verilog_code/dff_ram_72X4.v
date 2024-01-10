module RAM_72x4 (
  input wire clk,
  input wire [1:0] address,
  input wire en, // Active low enable
  input wire wr, // Active low write

  input wire [71:0] data_in,
  output reg [71:0] data_out
);

  reg [71:0] memory [3:0];

  always @(posedge clk) begin
    if (!en) begin
      if (!wr) begin
        // Write operation
        memory[address] <= data_in;
      end else begin
         if (!en)
        // Read operation
        data_out <= memory[address];
      end
    end
  end

endmodule