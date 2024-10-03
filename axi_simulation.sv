`timescale 1ns / 1ps



module tb_axi_simulation();

    bit        axi_aclk;
    bit        axi_aresetn;

    // AW Channel
    bit              axi_awvalid;
    bit              axi_awready;
    bit      [31: 0] axi_awaddr;
 
    // W Channel
     bit         axi_wvalid;
     bit         axi_wready;
     bit [31: 0] axi_wdata;
 
    // B Channel
    bit        axi_bvalid;
    bit         axi_bready;
    bit [1: 0]    axi_bresp;
 
    // AR Channel
    bit         axi_arvalid;
    bit       axi_arready;
    bit [31: 0] axi_araddr;
 
    // R Channel
    bit         axi_rvalid;
    bit         axi_rready;
    bit [31: 0] axi_rdata;
    bit [1: 0]  axi_rresp;

    // user signal
    bit write;
    bit read;
    bit [31:0] user_waddr;
    bit [31:0] user_wdata;
    bit [31:0] user_raddr;
    bit [31:0] user_rdata;
    bit wr_error;
    bit rd_error;
    bit wr_ready;
    bit rd_ready;



axilite_m m_dut(

                        .m_axi_aclk(axi_aclk),
                        .m_axi_aresetn(axi_aresetn),
                        .m_axi_awvalid(axi_awvalid),
                        .m_axi_awready(axi_awready),
                        .m_axi_awaddr(axi_awaddr),
                        .m_axi_wvalid(axi_wvalid),
                        .m_axi_wready(axi_wready),
                        .m_axi_wdata(axi_wdata),
                        .m_axi_bvalid(axi_bvalid),
                        .m_axi_bready(axi_bready),
                        .m_axi_bresp(axi_bresp),
                        .m_axi_arvalid(axi_arvalid),
                        .m_axi_arready(axi_arready),
                        .m_axi_araddr(axi_araddr),
                        .m_axi_rvalid(axi_rvalid),
                        .m_axi_rready(axi_rready),
                        .m_axi_rdata(axi_rdata),
                        .m_axi_rresp(axi_rresp),
                        .write(write),
                        .read(read),
                        .user_waddr(user_waddr),
                        .user_wdata(user_wdata),
                        .user_raddr(user_raddr),
                        .user_rdata(user_rdata),
                        .wr_error(wr_error),
                        .rd_error(rd_error),
                        .wr_ready(wr_ready),
                        .rd_ready(rd_ready) 
);


axilite_s s_dut(
             .s_axi_aclk(axi_aclk),
             .s_axi_aresetn(axi_aresetn),
             .s_axi_awvalid(axi_awvalid),
             .s_axi_awready(axi_awready),
             .s_axi_awaddr(axi_awaddr),
             .s_axi_wvalid(axi_wvalid),
             .s_axi_wready(axi_wready),
             .s_axi_wdata(axi_wdata),
             .s_axi_bvalid(axi_bvalid),
             .s_axi_bready(axi_bready),
             .s_axi_bresp(axi_bresp),
             .s_axi_arvalid(axi_arvalid),
             .s_axi_arready(axi_arready),
             .s_axi_araddr(axi_araddr),
             .s_axi_rvalid(axi_rvalid),
             .s_axi_rready(axi_rready),
             .s_axi_rdata(axi_rdata),
             .s_axi_rresp(axi_rresp)
);




    always #5 axi_aclk = ~axi_aclk;

    initial begin
axi_aclk = 1'b1;
axi_aresetn = 1'b0;
wr_ready = 1'b0;
rd_ready = 1'b0;
#40 axi_aresetn = 1'b1; // 더 긴 reset 기간 후 트랜잭션 시작


        @(posedge axi_aclk) begin
            user_waddr = 32'h87;            
            user_wdata  = 32'h12345678;         
            write   = 1'b1;
        end
        
        @(posedge wr_ready)begin
            user_waddr = 32'h87;            
            write   = 1'b0;
        end  // wait for ready signal


        @(posedge axi_aclk) begin
            user_waddr = 32'd15;            
            user_wdata  = 32'hC0DE1234;         
            write   = 1'b1;
        end
        
        @(posedge wr_ready)begin
            user_waddr = 32'd15;            
            write   = 1'b0;
        end  // wait for ready signal


      

        @(posedge axi_aclk);
        read = 1'b1;
        user_raddr = 32'h87;
        @(posedge rd_ready)begin
           read = 1'b0;
        user_raddr = 32'h87;
        end  // wait for ready signal

        @(posedge axi_aclk);
        read = 1'b1;
        user_raddr = 32'd15;
        @(posedge rd_ready)begin
           read = 1'b0;
        user_raddr = 32'd15;
        end  // wait for ready signal

        
        
        
    end

    initial begin
             #400;
            $stop;
    end
endmodule