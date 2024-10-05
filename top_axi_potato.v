module top_axi_potato(
    input axi_aclk,
    input axi_aresetn,

    input write,
    input read,
    input [31:0] user_waddr,
    input [31:0] user_wdata,
    input [31:0] user_raddr,
    output [31:0] user_rdata,
    
    output [15:0] led
);



    // AW Channel
    wire              axi_awvalid;
    wire              axi_awready;
    wire      [31: 0] axi_awaddr;
 
    // W Channel
     wire         axi_wvalid;
     wire         axi_wready;
     wire [31: 0] axi_wdata;
 
    // B Channel
    wire        axi_bvalid;
    wire         axi_bready;
    wire [1: 0]    axi_bresp;
 
    // AR Channel
    wire         axi_arvalid;
    wire       axi_arready;
    wire [31: 0] axi_araddr;
 
    // R Channel
    wire         axi_rvalid;
    wire         axi_rready;
    wire [31: 0] axi_rdata;
    wire [1: 0]  axi_rresp;


    // user signal
    // wire wr_error;
    // wire rd_error;
    // wire wr_ready;
    // wire rd_ready;



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
                        .user_rdata(user_rdata)
                        // .wr_error(wr_error),
                        // .rd_error(rd_error),
                        // .wr_ready(wr_ready),
                        // .rd_ready(rd_ready) 
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
             .s_axi_rresp(axi_rresp),
             .led(led)
);



endmodule