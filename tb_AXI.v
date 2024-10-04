module tb_axi_master_slave();

// clk, reset(active low)
    reg ACLK;
    reg ARESET;

    // axi master
    reg valid, read_valid;
    reg [31:0] aw_addr, w_data, ar_addr;
    reg [3:0] w_strb;
    wire AWVALID, WVALID, BREADY, ARVALID, RREADY;
    wire [31:0] AWADDR, WDATA, ARADDR;
    wire [3:0] WSTRB;
    wire [1:0] BRESP, RRESP;
    wire BVALID, RVALID;
    wire ready;
    
    // axi slave
    wire AWREADY, WREADY, ARREADY;
    wire [31:0] RDATA;
    
    axi_master_DONG master (
        .ACLK(ACLK),
        .ARESET(ARESET),
        .AWREADY(AWREADY),
        .AWVALID(AWVALID),
        .AWADDR(AWADDR),
        .WREADY(WREADY),
        .WVALID(WVALID),
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .BREADY(BREADY),
        .ARVALID(ARVALID),
        .ARADDR(ARADDR),
        .ARREADY(ARREADY),
        .RVALID(RVALID),
        .RDATA(RDATA),
        .RRESP(RRESP),
        .RREADY(RREADY),
        .valid(valid),
        .read_valid(read_valid),
        .aw_addr(aw_addr),
        .w_data(w_data),
        .w_strb(w_strb),
        .ar_addr(ar_addr),    
        .ready()
    );

    axi_slave_DONG slave (
        .ACLK(ACLK),
        .ARESET(ARESET),
        .AWVALID(AWVALID),
        .AWADDR(AWADDR),
        .AWREADY(AWREADY),
        .WVALID(WVALID),
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .WREADY(WREADY),
        .BREADY(BREADY),
        .BVALID(BVALID),
        .BRESP(BRESP),
        .ARVALID(ARVALID),
        .ARADDR(ARADDR),
        .ARREADY(ARREADY),
        .RREADY(RREADY),
        .RVALID(RVALID),
        .RDATA(RDATA),
        .RRESP(RRESP),
        .valid(valid),
        .aw_addr(aw_addr),
        .w_data(w_data),
        .w_strb(w_strb),
        .read_valid(read_valid),
        .ready()
    );
    
    always #5 ACLK = ~ACLK;

    
    initial begin
        ACLK = 1'b1;
        ARESET = 1'b1;
       
        @(posedge ACLK) begin
        aw_addr = 32'd0; 
        w_data  = 32'h0;
        w_strb  = 4'b0000; 
        valid   = 1'b1;
        
        @(posedge ACLK);
        valid = 1'b0;

        @(posedge  ready);
        aw_addr = 32'd0; 
        w_data  = 32'h10;
        w_strb  = 4'b0; 
        valid   = 1'b0;
        
        @(posedge ACLK);
        aw_addr = 32'd1; 
        w_data  = 32'h12345678;
        w_strb  = 4'b0011; 
        valid   = 1'b1;
        #1

            
        @(posedge ACLK);
        valid = 1'b0;
        
        @(posedge ready);
        aw_addr = 32'd0; 
        w_data  = 32'h0;
        w_strb  = 4'b0000; 
        valid   = 1'b0;

        @(posedge ACLK);
        aw_addr = 32'd3;                
        w_data  = 32'h12345678;
        w_strb  = 4'b1101;              
        valid   = 1'b1;

        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready)begin
            aw_addr = 32'd0;            
            w_data  = 32'h0;
            w_strb  = 4'b0000;          
            valid   = 1'b0;
        end 
        
         @(posedge ACLK);
        aw_addr = 32'd7;               
        w_data  = 32'h12345678;
        w_strb  = 4'b1111;           
        valid   = 1'b1;

        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready)begin
            aw_addr = 32'd0;            
            w_data  = 32'h0;
            w_strb  = 4'b0000;          
            valid   = 1'b0;
        end  
        
    end
    
endmodule
