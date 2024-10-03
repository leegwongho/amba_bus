module axi_master(
    // clk, reset 
    input               ACLK,
    input               ARESET,
    
    // AW(address write)CHANNEL
    input               AWREADY,
    output  reg         AWVALID,
    output  reg [31:0]  AWADDR,

    // W(write)CHANNEL
    input               WREADY,
    output  reg         WVALID,
    output  reg [31:0]  WDATA,
    output  reg [3:0]   WSTRB, 

    // B CHANNEL (write response)
    input       [1:0]   BRESP,
    input               BVALID,
    output  reg         BREADY,
    
    // AR(address read)CHANNEL
    input               ARREADY,
    output reg          ARVALID,
    output reg  [31:0]  ARADDR,

    // R(read) CHANNEL  
    input       [31:0]  RDATA,
    input               RVALID,
    output reg          RREADY,

    
    // user control master bit
    input               valid_r,
    input               valid,
    input        [31:0] ar_addr,
    input        [31:0] aw_addr,
    input        [31:0] w_data,
    input        [3:0]  w_strb,
    output  reg  [31:0] r_data,
    output  reg         ready);


    // AR channel //
    reg [31:0] ar_addr_reg, ar_addr_reg_next;

    parameter AR_IDLE = 2'b01;
    parameter AR_VALID = 2'b10;

    reg [1:0] ar_state, ar_state_next;

    always @ (posedge ACLK, negedge ARESET) begin
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
            ar_addr_reg_next = 0;
            ARVALID = 0;
        end
        else begin
            ar_addr_reg_next = ar_addr_reg;
            case (ar_state)
                AR_IDLE : begin
                    ARVALID = 1'b0;
                    if (valid_r) begin
                        ar_addr_reg_next = ar_addr;
                        ar_state_next = AR_VALID;
                    end
                end 
                AR_VALID : begin
                    ARVALID = 1'b1;
                    ARADDR = ar_addr_reg;
                    if (ARVALID && ARREADY) begin
                        ar_state_next = AR_IDLE;
                    end
                end
                default: ; 
            endcase
        end
    end

    // R channel no b//
    reg [31:0] r_data_reg, r_data_reg_next;

    parameter R_IDLE = 2'b01;
    parameter R_VALID =  2'b10;

    reg [1:0] r_state, r_state_next;

    always @ (posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            r_state = R_IDLE;
            r_data_reg = 0;
        end
        else begin
            r_state = r_state_next;
            r_data_reg = r_data_reg_next;
        end
    end

    always @(posedge ACLK) begin
        if (!ARESET) begin
            RREADY = 1'b0;
            r_state_next = R_IDLE;
            r_data_reg_next = 0;
        end
        else begin
            r_data_reg_next = r_data_reg;
            case (r_state)
                R_IDLE: begin
                    RREADY = 1'b0;
                    if (valid_r) begin
                        r_state_next = R_VALID; 
                        r_data_reg_next = RDATA;
                    end        
                end 
                R_VALID : begin
                    RREADY = 1'b1;
                    r_data = r_data_reg;
                    if (RVALID && RREADY) begin
                        r_state_next = R_IDLE;
                    end
                end
                default: ;
            endcase
            
        end
    end

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
            aw_addr_reg_next = aw_addr_reg;
            case (aw_state) 
                AW_IDLE : begin
                    AWVALID = 1'b0; // 데이터 전송을 하지않는것을 slave 에게 알리는 비트
                    if (valid) begin // cpu -> axi 한테 데이터를 요청
                        aw_state_next = AW_VALID;
                        aw_addr_reg_next = aw_addr;   // cpu가 보낸 주소 
                    end                
                end
                AW_VALID : begin
                    AWVALID = 1'b1; // 데이터 전송중임을 slave 에게 알리는 비트
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
                    WVALID = 1'b0; // 데이터 전송중임을 slave 에게 알리는 비트 
                    if (valid) begin // cpu -> axi 한테 쓰기를 요청
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
                    if (WVALID) begin // write data 가 전송되면 다음 state로 변경
                        resp_state_next = RESP_READY;
                    end
                end
                RESP_READY : begin
                    BREADY = 1'b1; // ready비트가 먼저 1로 유지하다 valid 신호가 들어오면 전송완료 처리
                    if (BVALID && BREADY) begin
                        resp_state_next = RESP_IDLE;
                        response_reg_next = BRESP;
                        ready = 1'b1; // 작성 트랜잭션이 완료되면 ready 외부로 출력
                    end
                end
                default: ;
            endcase
        end
    end

endmodule