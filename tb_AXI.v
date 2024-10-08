
module tb_AXI_Memory ();

    // Global Signal
    reg        ACLK;
    reg        ARESET;

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
    integer        aw_addr;
    integer        w_data;
    reg        valid;
    reg         valid_r;
    integer     ar_addr;
    reg [3:0]        w_strb;
    wire        ready;
    wire [31:0] r_data;
    wire [3:0]  BLEN;
    reg [3:0] blen;

    // AR channel
    wire               ARVALID;
    wire      [31:0]   ARADDR;
    wire           ARREADY;

    // R channel
    wire               RREADY;
    wire     [31:0]   RDATA;
  //  output  reg         RLAST,  // 데이터 여러개 요청 구현할때 추가
    wire         RVALID;


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
                            .S_RDATA(RDATA));


    // axi_master DUT_MASTER(  ACLK,
    //                         ARESET,
    //                         AWREADY,
    //                         AWVALID,
    //                         AWADDR,
    //                         WREADY,
    //                         WVALID,
    //                         WDATA,
    //                         WSTRB, 
    //                         BRESP,
    //                         BVALID,
    //                         BREADY,
    //                         ARREADY,
    //                         ARVALID,
    //                         ARADDR,
    //                         RDATA,
    //                         RVALID,
    //                         RREADY,
    //                         valid_r,
    //                         valid,
    //                         ar_addr,
    //                         aw_addr,
    //                         w_data,
    //                         w_strb,
    //                         r_data,
    //                         ready);


    // axi_slave DUT_slave(    ACLK,
    //                         ARESET,
    //                         AWADDR,
    //                         AWVALID,
    //                         AWREADY,
    //                         WDATA,
    //                         WVALID,
    //                         WSTRB,
    //                         WREADY,
    //                         ARVALID,
    //                         ARADDR,
    //                         ARREADY,
    //                         RREADY,
    //                         RDATA,
    //                         RVALID,
    //                         BREADY,
    //                         BRESP,
    //                         BVALID);


    always #5 ACLK = ~ACLK;

    initial begin
        ACLK = 1'b1;
        ARESET = 1'b0;
        #10 ARESET = 1'b1;
        // 첫번째 트랜젝션
        #20
        aw_addr = 32'd0;
        w_data  = 32'h12345678;
        w_strb  = 4'b0001;
        #10
        valid   = 1'b1;
        #10
        valid   = 1'b0;

        #100
        // 두번째 트랜젝션
        #20
        aw_addr = 32'd1;
        w_data  = 32'h87654321;
        w_strb  = 4'b0011;
        #10
        valid   = 1'b1;
        #10
        valid   = 1'b0;

        #100
        // 세번째 트랜잭션 덮어쓰기
        #20
        aw_addr = 32'd1;
        w_data  = 32'h45758264;
        w_strb  = 4'b0111;
        #10
        valid   = 1'b1;
        #10
        valid   = 1'b0;

        #100
        // 네번째 트랜잭션
        #20
        aw_addr = 32'd10;
        w_data  = 32'h12345678;
        w_strb  = 4'b1111;
        #10
        valid   = 1'b1;
        #10
        valid   = 1'b0;

        // @(posedge ACLK) begin
        //     aw_addr = 32'd0;            //addr 0번지부터 작성하라
        //     w_data  = 32'h12345678;
        //     w_strb  = 4'b0001;          // lsb 1바이트 h'78 write 됨 Little Endian
        //     valid   = 1'b1;
        // end
        // @(posedge ACLK);
        // valid = 1'b0;
        
        // @(posedge ready)begin
        //     aw_addr = 32'd0;            
        //     w_data  = 32'h0;
        //     w_strb  = 4'b0000;          
        //     valid   = 1'b0;
        // end  // wait for ready signal

        // #100;
        // 두번째 트랜잭션
        
        // @(posedge ACLK);
        // aw_addr = 32'd1;                //addr 1번부터 
        // w_data  = 32'h12345678;
        // w_strb  = 4'b0011;              // 78 56 write
        // valid   = 1'b1;
        // #1

        // @(posedge ACLK);
        // valid = 1'b0;
        // @(posedge ready)begin
        //     aw_addr = 32'd0;            
        //     w_data  = 32'h0;
        //     w_strb  = 4'b0000;          
        //     valid   = 1'b0;
        // end  // wait for ready signal
        
        //세번째 트랜잭션
        // #100;
        // @(posedge ACLK);
        // aw_addr = 32'd3;                //addr 3번부터
        // w_data  = 32'h12345678;
        // w_strb  = 4'b1101;              // 78 43 21 write
        // valid   = 1'b1;

        // @(posedge ACLK);
        // valid = 1'b0;
        // // @(posedge ready)begin
        // //     aw_addr = 32'd0;            
        // //     w_data  = 32'h0;
        // //     w_strb  = 4'b0000;          
        // //     valid   = 1'b0;
        // // end  // wait for ready signal

        // // 네번째 트랜잭션
        // #100;
        // @(posedge ACLK);
        // aw_addr = 32'd7;                //addr 7번부터
        // w_data  = 32'h12345678;
        // w_strb  = 4'b1111;              //78 56 43 21 write
        // valid   = 1'b1;

        // @(posedge ACLK);
        // valid = 1'b0;
        // @(posedge ready)begin
        //     aw_addr = 32'd0;            
        //     w_data  = 32'h0;
        //     w_strb  = 4'b0000;          
        //     valid   = 1'b0;
        // end  // wait for ready signal
        
        // 다섯 번째 트랜잭션
        ar_addr = 32'd0;
        blen = 4'b0011;
        #200;
        valid_r = 1'b1;
        

        #20;
        valid_r = 1'b0;
        // @(posedge ACLK);
        // valid_r = 1'b1;
        // blen = 4'b0001;
        // ar_addr = 32'd0;

        // @(posedge ACLK);
        // valid_r = 1'b0;
        // @(posedge RVALID);

        // 여섯번째 트랜잭션
        blen = 4'b0001;
        ar_addr = 32'd2;
        #100;
        valid_r = 1'b1;

        #20;
        valid_r = 1'b0;

        // @(posedge ACLK);
        // valid_r = 1'b1;
        // blen = 4'b1111;
        // ar_addr = 32'd2;

        // @(posedge ACLK);
        // valid_r = 1'b0;
        // @(posedge RVALID);    
    end
endmodule