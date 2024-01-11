module dff_ram_4x72 (
    input wire clk,
    input wire [1:0] address,
    input wire en_n,
    input wire wr,
    // Write: 0
    // Read:  1
    input wire [71:0] wdata,
    output reg [71:0] rdata
);
    
    reg [71:0] data [0:3];

    always @(posedge clk) begin
        if (!en_n) begin
            // Write
            if (!wr) begin
                data[address] <= wdata;
            end
            // Read
            else begin
                rdata <= data[address];
            end
        end
        else begin
            data[address] <= data[address];
            rdata <= rdata;
        end
    end
    
    // reg [71:0] data0;
    // reg [71:0] data1;
    // reg [71:0] data2;
    // reg [71:0] data3;

    // always @(posedge clk) begin
    //     if (rst) begin
    //         data0 <= 0;
    //         data1 <= 0;
    //         data2 <= 0;
    //         data3 <= 0;
    //         rdata <= 0;
    //     end
    //     else begin
    //         if (!en_n) begin
    //             // Write
    //             if (!wr) begin
    //                 case (address)
    //                     2'b00: data0 <= wdata;
    //                     2'b01: data1 <= wdata;
    //                     2'b10: data2 <= wdata;
    //                     2'b11: data3 <= wdata;
    //                     // default: 
    //                 endcase
    //                 rdata <= rdata;
    //             end
    //             // Read
    //             else begin
    //                 data0 <= data0;
    //                 data1 <= data1;
    //                 data2 <= data2;
    //                 data3 <= data3;
    //                 case (address)
    //                     2'b00: rdata <= data0;
    //                     2'b01: rdata <= data1;
    //                     2'b10: rdata <= data2;
    //                     2'b11: rdata <= data3;
    //                     // default: 
    //                 endcase
    //             end
    //         end
    //         else begin
    //             data0 <= data0;
    //             data1 <= data1;
    //             data2 <= data2;
    //             data3 <= data3;
    //             rdata <= rdata;
    //         end
    //     end
    // end

endmodule