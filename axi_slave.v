module axi_slave(
    // clk, reset
    input ACLK,
    input ARESET,
        
    // AW(address write) CHANNEL
    input AWVALID,
    input [31:0] AWADDR,
    output reg AWREADY,

    // W(write) CHANNEL
    input WVALID,
    input [31:0] WDATA,
    input [3:0] WSTRB,
    output reg WREADY,

    // B CHANNEL (write response)
    input BREADY,
    output reg BVALID,
    output reg [1:0] BRESP,
    
    // AR(address read) channel
    input ARVALID,
    input [31:0] ARADDR,
    output reg ARREADY,
    
    // R channel (read channel)
    input RREADY,
    output reg RVALID,
    output reg [31:0] RDATA,
    output reg [1:0] RRESP,
    
    // user control master bit
    input valid,
    input [31:0] aw_addr,
    input [31:0] w_data,
    input [3:0] w_strb,
    input read_valid,
    output reg ready
);    
    
    reg [31:0] memory [0:255];
    
    // AW(address write)CHANNEL
    reg aw_state;
    
    parameter AW_IDLE = 1'b0;
    parameter AW_VALID = 1'b1;
    
    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            AWREADY = 1'b0;
            aw_state = AW_IDLE;
        end 
        else begin
            case (aw_state)
                AW_IDLE: begin
                    AWREADY = 1'b1;
                    if (AWVALID) begin
                        AWREADY = 1'b0;
                        aw_state = AW_VALID;
                    end
                end
                AW_VALID: begin
                    if (BREADY) begin
                        aw_state = AW_IDLE;
                    end
                end
            endcase
        end
    end

    // W(write)CHANNEL
    reg w_state;
    
    parameter W_IDLE = 1'b0;
    parameter W_VALID = 1'b1;

    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            WREADY = 1'b0;
            w_state = W_IDLE;
        end 
        else begin
            case (w_state)
                W_IDLE: begin
                    WREADY = 1'b1;
                    if (WVALID) begin
                        if (valid) begin
                            if (WSTRB[0]) memory[aw_addr[7:0]] = w_data;  
                            if (WSTRB[1]) memory[aw_addr[7:0] + 1] = w_data;  
                            if (WSTRB[2]) memory[aw_addr[7:0] + 2] = w_data;  
                            if (WSTRB[3]) memory[aw_addr[7:0] + 3] = w_data;  
                        end
                        WREADY = 1'b0;  
                        w_state = W_VALID;
                    end
                end
                W_VALID: begin
                    if (BREADY) begin
                        w_state = W_IDLE;  
                    end
                end
            endcase
        end
    end
    
    // B CHANNEL (write response)
    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            BVALID = 1'b0;
            BRESP = 2'b00;  
        end 
        else begin
            if (WREADY && WVALID) begin
                BVALID = 1'b1;  
                BRESP = 2'b00;  
            end 
            else if (BREADY && BVALID) begin
                BVALID = 1'b0; 
            end
        end
    end
    
    // AW(address read)CHANNEL
    reg ar_state;
    
    parameter AR_IDLE = 1'b0;
    parameter AR_VALID = 1'b1;

    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            ARREADY = 1'b0;
            ar_state = AR_IDLE;
        end else begin
            case (ar_state)
                AR_IDLE: begin
                    ARREADY = 1'b1;
                    if (ARVALID) begin
                        ARREADY = 1'b0;
                        ar_state = AR_VALID;
                    end
                end
                AR_VALID: begin
                    if (RREADY) begin
                        ar_state = AR_IDLE;
                    end
                end
            endcase
        end
    end
    
    // R(read)CHANNEL
    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            RVALID = 1'b0;
            RDATA = 32'b0;
            RRESP = 2'b00; 
        end 
        else begin
            if (ARREADY && ARVALID) begin
                RVALID = 1'b1;  
                RDATA = memory[ARADDR[7:0]];  
                RRESP = 2'b00; 
            end 
            else if (RREADY && RVALID) begin
                RVALID = 1'b0;  
            end
        end
    end
    
    always @(posedge ACLK or negedge ARESET) begin
        if (!ARESET) begin
            ready = 1'b0;
        end 
        else begin
            ready = 1'b0;  
            if (WREADY && WVALID) begin
                ready = 1'b1;  
            end
            if (ARREADY && ARVALID) begin
                ready = 1'b1;  
            end
        end
    end

endmodule
