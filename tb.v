module SYNC_FIFO_tb;

    reg clk, rst, wr_en, rd_en;
    reg [3:0] data_in;
    wire [3:0] data_out;
    integer k;

    SYNCHRONOUS_FIFO SYNC_FIFO_DUT (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out)
);

    initial begin
        clk = 1'b0;
        rd_en = 1'b0;
        wr_en = 1'b0;
        rst = 1'b1;
        data_in = 4'b0000;
    end

    always #5 clk = ~clk;

    initial begin

        $monitor($time, " clk = %b, rst = %b, data_in = %h, data_out = %h,", clk, rst, data_in, data_out);

        #2 rst = 0;

        #1 wr_en = 1;

        for(k = 0; k < 8 ; k = k + 1)
        begin
            #10 data_in = k+1;
        end
        
        wr_en = 0;

        #1 rd_en = 1;

        #200 $stop;
    end
endmodule

