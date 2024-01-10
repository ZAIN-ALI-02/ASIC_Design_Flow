`include "dff_ram_72X4.v"


module RAM_72x8 (
  input wire clk,
  input wire [2:0] address,
  input wire en, // Active low enable
  input wire wr, // Active low write

  input wire [71:0] data_in,
  output reg [71:0] data_out
);

  reg [71:0] data_upper;
  reg [71:0] data_lower;

  wire [71:0] lower_data_out;
  wire [71:0] upper_data_out;

  RAM_72x4 ram_upper (
    .clk(clk),
    .address(address[1:0]),
    .en(en),
    .wr(wr),
    .data_in(data_upper),
    .data_out(upper_data_out)
  );

  RAM_72x4 ram_lower (
    .clk(clk),
    .address(address[1:0]),
    .en(en),
    .wr(wr),
    .data_in(data_lower),
    .data_out(lower_data_out)
  );

 always @(*)begin
    if (address[2]) begin
       data_upper = data_in;
       data_lower = data_lower;
       data_out  = upper_data_out;
    end
    else begin
       data_upper = data_upper;
       data_lower = data_in; 
       data_out  = lower_data_out;
    end



 end



endmodule