module dff_ram_8x72 (
    input wire clk,
    input wire [2:0] address,
    input wire en_n,
    input wire wr,
    // Write: 0
    // Read:  1
    input wire [71:0] wdata,
    output reg [71:0] rdata
);
    
    reg en_upper;
    reg en_lower;
    reg [71:0] select_upper;
    reg [71:0] select_lower;
    
    always @(*) begin
        en_upper = 1'b1;
        en_lower = 1'b1;
        select_upper = rdata_upper;
        select_lower = rdata_lower;
        if (address[2] == 1'b0) begin
            en_upper = en_n;
            en_lower = 1'b1;
            rdata = select_upper;
        end
        else begin
            en_upper = 1'b1;
            en_lower = en_n;
            rdata = select_lower;
        end
    end
    
    wire [71:0] rdata_upper;
    
    dff_ram_4x72 uut_upper (
        .clk (clk),
        .address (address[1:0]),
        .en_n (en_upper),
        .wr (wr),
        .wdata (wdata),
        .rdata (rdata_upper)
    );

    wire [71:0] rdata_lower;

    dff_ram_4x72 uut_lower (
        .clk (clk),
        .address (address[2:1]),
        .en_n (en_lower),
        .wr (wr),
        .wdata (wdata),
        .rdata (rdata_lower)
    );

endmodule