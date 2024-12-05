module AXI_LITE_PROJ #(
    parameter   ADDRESS     =   32,
    parameter   DATA_WIDTH  =   32
)
(
    input                   clk,
    input                   reset_n,
    input      [31:0]       C_ADRR,
    input      [31:0]       C_DATA,
    input                   C_VALID,
    input                   C_VALID_R,
    input      [31:0]       C_ADRR_R,
    output     [31:0]       C_DATA_READ,
    input      [3:0 ]       C_STRB,
    //input                   C_READY,
    output reg              READY_S
);
 
 wire                       S_AWREADY;
 wire                       M_AWVALID;
 wire          [31: 0]      M_AWADDR;
 wire                       S_WREADY;
 wire                       M_WVALID;
 wire          [31: 0]      M_WDATA;
 wire                       S_BVALID;
 wire          [1 : 0]      S_BRESP;
 wire                       M_BREADY;
 wire                       S_ARREADY;
 wire                       M_ARVALID;
 wire          [31: 0]      M_ARADDR;
 wire                       S_RREADY;
 wire                       M_RVALID;
 wire          [31: 0]      S_RDATA;
 wire          [3 : 0]      M_WSTRB;
 wire                       READY;

always @(*) READY_S = READY;

 AXI_MASTER            AXI_M(
    // CLK, RESET
    .ACLK(clk),
    .ARESETN(reset_n),

    // addr write
    .AWREADY(S_AWREADY),
    .AWVALID(M_AWVALID),
    .AWADDR(M_AWADDR),
    
    // write data
    .WREADY(S_WREADY),
    .WVALID(M_WVALID),
    .WDATA(M_WDATA),
    .WSTRB(M_WSTRB),
    
    // write response
    .BVALID(S_BVALID),
    .BRESP(S_BRESP),
    .BREADY(M_BREADY),
    .READY(READY),
    
    // read address
    .ARREADY(S_ARREADY),
    .ARVALID(M_ARVALID),
    .ARADDR(M_ARADDR),

    // read response
    .RREADY(S_RREADY),
    .RVALID(M_RVALID),
    .RDATA(S_RDATA),
    
    // control signal
    .C_ADRR(C_ADRR),
    .C_DATA(C_DATA),
    .C_VALID(C_VALID),
    .C_VALID_R(C_VALID_R),
    .C_ADRR_R(C_ADRR_R),
    .C_DATA_READ(C_DATA_READ),
    .C_STRB(C_STRB)
    //.C_READY(C_READY),
    //.READY(READY)
    );

AXI_SLAVE               AXI_S(
    // CLK, RESET
    .ACLK(clk),
    .ARESETN(reset_n),
    
    //addr write
    .AWREADY(S_AWREADY),
    .AWVALID(M_AWVALID),
    .AWADDR(M_AWADDR),
    
    //write data
    .WREADY(S_WREADY),
    .WVALID(M_WVALID),
    .WDATA(M_WDATA),
    .WSTRB(M_WSTRB),
    
    // write response
    .BVALID(S_BVALID),
    .BRESP(S_BRESP),
    .BREADY(M_BREADY),

    // read address
    .ARREADY(S_ARREADY),
    .ARVALID(M_ARVALID),
    .ARADDR(M_ARADDR),

    // read response
    .RREADY(S_RREADY),
    .RVALID(M_RVALID),
    .RDATA(S_RDATA)
    );


endmodule
