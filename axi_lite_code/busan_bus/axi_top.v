
module tb_AXI_top (
    input                   ACLK,
    input                   ARESET,
    // w control signal
    input                   valid,
    input   [31:0]          aw_addr,
    input   [3:0]           w_strb,
    input   [31:0]          w_data,

    // r control signal
    input                   valid_r,
    input   [31:0]          ar_addr,    
    input [3:0]             blen,    
    output [31:0]           r_data,
    // user code
    output   [15:0]         led);

    // Global Signal


    // AW Channel
    wire [31:0]        AWADDR;
    wire        AWVALID;
    wire        AWREADY;

    // W Channel
    wire [31:0]        WDATA;
    wire        WVALID;
    wire [3:0]        WSTRB;
    wire        WREADY;

    // B Channel
    wire        BRESP;
    wire        BVALID;
    wire        BREADY;

    // external signal
    

    // AR channel
    wire               ARVALID;
    wire      [31:0]   ARADDR;
    wire           ARREADY;

    // R channel
    wire               RREADY;
    wire     [31:0]   RDATA;
  //  output  reg         RLAST,  // 데이터 여러개 요청 구현할때 추가
    wire         RVALID;
    wire [3:0]  BLEN;

    // AXI_Master dut_master (.*);
    // AXI_Slave_Memory dut_slave (.*);


axi_master_fsm DUT_master(  .M_ACLK(ACLK),
                            .M_ARESET_N(ARESET),

                            .S_AWREADY(AWREADY),
                            .M_AWVALID(AWVALID),
                            .M_AWADDR(AWADDR),

                            .S_WREADY(WREADY),
                            .M_WVALID(WVALID),
                            .M_WDATA(WDATA),
                            .M_WSTRB(WSTRB),

                            // .S_BRESP,
                            // .S_BVALID,
                            // .M_BREADY,

                            .S_ARREADY(ARREADY),
                            .M_ARVALID(ARVALID),
                            .M_ARADDR(ARADDR),

                            .S_RDATA(RDATA),
                            .S_RVALID(RVALID),
                            .M_BLEN(BLEN),
                            .M_RREADY(RREADY),

                            .U_WVALID(valid),
                            .U_AWADDR(aw_addr),
                            .U_WDATA(w_data),
                            .U_STRB(w_strb),

                            .U_RVALID(valid_r),
                            .U_ARADDR(ar_addr),
                            .U_BLEN(blen),
                            .U_RDATA(r_data)       
);


axi_slave_fsm DUT_slave(
                            .S_ACLK(ACLK),
                            .S_ARRESET_N(ARESET),

                            .M_AWVALID(AWVALID),
                            .M_AWADDR(AWADDR),
                            .S_AWREADY(AWREADY),

                            .M_WVALID(WVALID),
                            .M_WDATA(WDATA),
                            .M_WSTRB(WSTRB),
                            .S_WREADY(WREADY),

                            // .M_BREADY(BREADY),
                            // .S_BRESP(BRESP),
                            // .S_BVALID(BVALID),

                            .M_ARVALID(ARVALID),
                            .M_ARADDR(ARADDR),
                            .S_ARREADY(ARREADY),

                            .M_RREADY(RREADY),
                            .M_BLEN(BLEN),
                            .S_RVALID(RVALID),
                            .S_RDATA(RDATA),
                            
                            .led(led));



endmodule