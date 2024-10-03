`timescale 1ns / 1ps



module tb_axi_simulation;

    bit axi_aclk;
    bit axi_aresetn;

    // AW Channel
    bit axi_awvalid;
    bit axi_awready;
    bit [31:0] axi_awaddr;
    
 
    // W Channel
    bit axi_wvalid;
    bit axi_wready;
    bit [31:0] axi_wdata;
    bit [3:0] axi_wstrb;
    
    // B Channel
    bit axi_bvalid;
    bit axi_bready;
    bit [1:0] axi_bresp;
 
    // AR Channel
    bit axi_arvalid;
    bit axi_arready;
    bit [31:0] axi_araddr;
 
    // R Channel
    bit axi_rvalid;
    bit axi_rready;
    bit [31:0] axi_rdata;
    bit [1:0]  axi_rresp;

    // user signal
    bit write;
    bit read;
    bit [31:0] user_waddr;
    bit [31:0] user_wdata;
    bit [31:0] user_raddr;
    bit [31:0] user_rdata;
    bit wr_ready;
    bit rd_ready;
    
    axi_master u_axi_master (
        .ACLK(axi_aclk),
        .ARESET(!axi_aresetn),
        .AWREADY(axi_awready),
        .AWVALID(axi_awvalid),
        .AWADDR(axi_awaddr),
        .WREADY(axi_wready),
        .WVALID(axi_wvalid),
        .WDATA(axi_wdata),
        .WSTRB(axi_wstrb),
        .BVALID(axi_bvalid),
        .BREADY(axi_bready),
        .BRESP(axi_bresp),
        .ARVALID(axi_arvalid),
        .ARADDR(axi_araddr),
        .ARREADY(axi_arready),
        .RVALID(axi_rvalid),
        .RREADY(axi_rready),
        .RDATA(axi_rdata),
        .RRESP(axi_rresp),
        .valid(write),
        .read_valid(read),
        .aw_addr(user_waddr),
        .w_data(user_wdata),
        .w_strb(axi_wstrb),
        .ar_addr(user_raddr),
        .ready(wr_ready)
    );
    
    axi_slave u_axi_slave (
        .ACLK(axi_aclk),
        .ARESET(!axi_aresetn),
        .AWVALID(axi_awvalid),
        .AWADDR(axi_awaddr),
        .AWREADY(axi_awready),
        .WVALID(axi_wvalid),
        .WDATA(axi_wdata),
        .WSTRB(axi_wstrb),
        .WREADY(axi_wready),
        .BREADY(axi_bready),
        .BVALID(axi_bvalid),
        .BRESP(axi_bresp),
        .ARVALID(axi_arvalid),
        .ARADDR(axi_araddr),
        .ARREADY(axi_arready),
        .RREADY(axi_rready),
        .RVALID(axi_rvalid),
        .RDATA(axi_rdata),
        .RRESP(axi_rresp),
        .valid(write),
        .aw_addr(user_waddr),
        .w_data(user_wdata),
        .w_strb(axi_wstrb),
        .read_valid(read),
        .ready(rd_ready)
    );
    
    always #5 axi_aclk = ~axi_aclk;

    initial begin
        axi_aclk = 1'b1;
        axi_aresetn = 1'b0;
        axi_awvalid = 1'b0;
        axi_wvalid = 1'b0;
        axi_bready = 1'b0;
        axi_arvalid = 1'b0;
        axi_rready = 1'b0;
        write = 1'b0;
        read = 1'b0;
        user_waddr = 32'h0000_0000; 
        user_wdata = 32'hDEADBEEF;  
        axi_wstrb = 4'b1111; 
        
        #10 axi_aresetn = 1'b1;
        
        #10;
        write = 1'b1; 
        axi_awvalid = 1'b1;
        axi_awaddr = user_waddr; 
        
        wait(axi_awready);
        #10 axi_awvalid = 1'b0;
        
        axi_wvalid = 1'b1;
        #10;
        
        wait(axi_wready);
        axi_wvalid = 1'b0;
        #10;
        
        wait(axi_bvalid);
        axi_bready = 1'b1;
        #10;
        
        axi_bready = 1'b0;
        
        write = 1'b0;
         
        #10;
        read = 1'b1; 
        axi_arvalid = 1'b1; 
        axi_araddr = user_waddr; 
        
        wait(axi_arready);
        #10 axi_arvalid = 1'b0;
        
        wait(axi_rvalid);
        axi_rready = 1'b1;
        
        #10; 
        axi_rready = 1'b0; 
        read = 1'b0;
        
        #100;
        $finish;
    end
endmodule
