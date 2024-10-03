module axi_master(
    // clk, reset 
    input ACLK,
    input ARESET,
    
    // AW(address write) CHANNEL
    input AWREADY,
    output reg AWVALID,
    output reg [31:0] AWADDR,

    // W(write) CHANNEL
    input WREADY,
    output reg WVALID,
    output reg [31:0] WDATA,
    output reg [3:0] WSTRB, 

    // B CHANNEL (write response)
    input [1:0] BRESP,
    input BVALID,
    output reg BREADY,
    
    // AR(address read) CHANNEL
    output reg ARVALID,
    output reg [31:0] ARADDR,
    input ARREADY,

    // R (read) CHANNEL
    input RVALID,
    input [31:0] RDATA,
    input [1:0] RRESP,
    output reg RREADY,

    // user control master bit
    input valid,
    input read_valid, 
    input [31:0] aw_addr,
    input [31:0] w_data,
    input [3:0]  w_strb,
    input [31:0] ar_addr,    
    output reg ready
);

    // aw channel //
    reg [31:0] aw_addr_reg, aw_addr_reg_next;

    parameter AW_IDLE = 2'b01;
    parameter AW_VALID = 2'b10;

    reg [1:0] aw_state, aw_state_next;

    always @(posedge ACLK , negedge ARESET) begin
        if (!ARESET) begin
            aw_state = AW_IDLE;
            aw_addr_reg = 0;
        end 
        else begin
            aw_state = aw_state_next;
            aw_addr_reg = aw_addr_reg_next;
        end 
    end

    always @ (posedge ACLK) begin
        if (!ARESET) begin
            aw_state_next = AW_IDLE;
            AWVALID = 1'b0;
            aw_addr_reg_next = 0;
        end
        else begin
            AWVALID = 1'b0;
            aw_addr_reg_next = aw_addr_reg;
            case (aw_state) 
                AW_IDLE : begin
                    AWVALID = 1'b0; 
                    if (valid) begin 
                        aw_state_next = AW_VALID;
                        aw_addr_reg_next = aw_addr;  
                    end                
                end
                AW_VALID : begin
                    AWVALID = 1'b1; 
                    AWADDR = aw_addr_reg;
                    if (AWVALID && AWREADY) begin
                        aw_state_next = AW_IDLE;
                    end
                end
                default: aw_state_next = AW_IDLE;
            endcase
        end
    end

    // write channel //
    reg [31:0] w_data_reg, w_data_reg_next;
    reg [3:0] w_strb_reg, w_strb_reg_next;

    parameter W_IDLE = 2'b01;
    parameter W_VALID = 2'b10;

    reg [1:0] w_state, w_state_next;

    always @ (posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            w_state = W_IDLE;
            w_strb_reg = 0;
            w_data_reg = 0;
        end
        else begin
            w_state = w_state_next;
            w_strb_reg = w_strb_reg_next;
            w_data_reg = w_data_reg_next;
        end
    end

    always @(posedge ACLK) begin
        if (!ARESET) begin
            w_state_next = W_IDLE;
            WVALID = 1'b0;
        end
        else begin
            w_strb_reg_next = w_strb_reg;
            w_data_reg_next = w_data_reg;
            case (w_state)
                W_IDLE :  begin
                    WVALID = 1'b0;
                    if (valid) begin
                        w_state_next = W_VALID;
                        w_data_reg_next = w_data;
                        w_strb_reg_next = w_strb;
                    end
                end
                W_VALID : begin
                    WVALID = 1'b1;
                    WDATA = w_data_reg;
                    WSTRB = w_strb_reg;
                    if (WVALID && WREADY) begin
                        w_state_next = W_IDLE;
                    end
                end
                default: w_state_next = W_IDLE;
            endcase
        end
    end

    // write response //
    reg [31:0] response_reg, response_reg_next;

    parameter RESP_IDLE = 2'b01;
    parameter RESP_READY = 2'b10;

    reg [1:0] resp_state, resp_state_next;

    always @ (posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            resp_state = RESP_IDLE;
        end
        else begin
            resp_state = resp_state_next;
            response_reg = response_reg_next;
        end
    end

    always @(posedge ACLK) begin
        if (!ARESET) begin
            resp_state_next = RESP_IDLE;
            response_reg_next = 0;
            BREADY = 1'b0;
            ready = 1'b0;
        end
        else begin
            response_reg_next = response_reg;
            ready = 1'b0;
            case (resp_state)
                RESP_IDLE :  begin
                    BREADY = 1'b0;
                    if (WVALID) begin
                        resp_state_next = RESP_READY;
                    end
                end
                RESP_READY : begin
                    BREADY = 1'b1;
                    if (BVALID && BREADY) begin
                        resp_state_next = RESP_IDLE;
                        response_reg_next = BRESP;
                        ready = 1'b1;
                    end
                end
                default: ;
            endcase
        end
    end

    // read address channel //
    reg [31:0] ar_addr_reg, ar_addr_reg_next;
    
    parameter AR_IDLE = 2'b01;
    parameter AR_VALID = 2'b10;
    
    reg [1:0] ar_state, ar_state_next;
    
    always @(posedge ACLK , negedge ARESET) begin
        if (!ARESET) begin
            ar_state = AR_IDLE;
            ar_addr_reg = 0;
        end 
        else begin
            ar_state = ar_state_next;
            ar_addr_reg = ar_addr_reg_next;
        end 
    end
    
    always @ (posedge ACLK) begin
        if (!ARESET) begin
            ar_state_next = AR_IDLE;
            ARVALID = 1'b0;
            ar_addr_reg_next = 0;
        end
        else begin
            ARVALID = 1'b0;
            ar_addr_reg_next = ar_addr_reg;
            case (ar_state) 
                AR_IDLE : begin
                    ARVALID = 1'b0; 
                    if (read_valid) begin 
                        ar_state_next = AR_VALID;
                        ar_addr_reg_next = ar_addr;  
                    end                
                end
                AR_VALID : begin
                    ARVALID = 1'b1; 
                    ARADDR = ar_addr_reg;
                    if (ARREADY && ARVALID) begin
                        ar_state_next = AR_IDLE;
                    end
                end
                default: ar_state_next = AR_IDLE;
            endcase
        end
    end

    // read data channel //
    reg [31:0] r_data_reg;
    
    parameter R_IDLE = 2'b01;
    parameter R_VALID = 2'b10;
    
    reg [1:0] r_state, r_state_next;
    
    always @(posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            r_state = R_IDLE;
            RREADY = 1'b0;
        end
        else begin
            r_state = r_state_next;
            case (r_state)
                R_IDLE : begin
                    RREADY = 1'b0;
                    if (ARVALID && ARREADY) begin 
                        r_state_next = R_VALID;
                    end
                end
                R_VALID : begin
                    RREADY = 1'b1; 
                    if (RVALID && RREADY) begin
                        r_state_next = R_IDLE;
                        r_data_reg = RDATA;
                    end
                end
                default: r_state_next = R_IDLE;
            endcase
        end
    end

endmodule
