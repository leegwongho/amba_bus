module axi_slave(
    // clk, reset
    input ACLK,
    input ARESET,

    // aw(address write) channel
    input      [31:0]   AWADDR,
    input               AWVALID,
    output reg          AWREADY,

    // write channel
    input      [31:0]   WDATA,
    input               WVALID,
    input      [3:0]    WSTRB,
    output reg          WREADY,

    // AR channel
    input               ARVALID,
    input      [31:0]   ARADDR,
    output  reg         ARREADY,

    // R channel
    input               RREADY,
    output     [31:0]   RDATA,
  //  output  reg         RLAST,  // 데이터 여러개 요청 구현할때 추가
    output  reg         RVALID,


    // response Channel
    input               BREADY,
    output reg          BRESP,
    output reg          BVALID);

    reg [7:0] slave_memory[0:15];


    // AR channel //
    reg [31:0] ar_addr_reg, ar_addr_reg_next;

    parameter AR_IDLE = 2'b01;
    parameter AR_READY = 2'b10;

    reg [1:0] ar_state, ar_state_next;

    always @(posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            ar_state = AR_IDLE;
            ar_addr_reg = 0;
        end
        else begin
            ar_state = ar_state_next;
            ar_addr_reg = ar_addr_reg_next;
        end
    end

    always @(posedge ACLK) begin
        if (!ARESET) begin
            ar_state_next = AR_IDLE;
            ARREADY = 1'b0;
        end
        else begin
            ARREADY = 1'b0;
            case (ar_state)
                AR_IDLE : begin
                    ARREADY = 1'b0;
                    if (ARVALID) begin
                        ar_state_next = AR_READY;
                    end
                end
                AR_READY : begin
                    ARREADY = 1'b1;
                    ar_addr_reg_next = ARADDR;
                    if (ARREADY && ARVALID) begin
                        ar_state_next = AR_IDLE;
                    end
                end 
                default: ;
            endcase
        end
    end

    // R channel //
    reg [31:0] rdata_reg, rdata_reg_next;

    parameter R_IDLE = 2'b01;
    parameter R_VALID = 2'b10;

    reg [1:0] r_state, r_state_next;

    always @(posedge ACLK, negedge ARESET) begin
        if (!ARESET) begin
            r_state = R_IDLE;
            rdata_reg = 0;
        end
        else begin
            r_state = r_state_next;
            rdata_reg = rdata_reg_next;
        end
    end

    always @(posedge ACLK) begin
        if (!ARESET) begin
            r_state_next = R_IDLE;
            rdata_reg_next = 0;
            RVALID = 1'b0;
        end
        else begin
            case (r_state)
                R_IDLE : begin
                    RVALID = 1'b0;
                    if (ARREADY && RREADY) begin
                        r_state_next = R_VALID;
                    end
                end
                R_VALID : begin
                    RVALID = 1'b1;
                    rdata_reg_next = slave_memory[ar_addr_reg];
                end 
                default: ;
            endcase
        end
    end

    // AW channel //
    reg [31:0] aw_addr_reg, aw_addr_reg_next;

    parameter AW_IDLE = 2'b01;
    parameter AW_READY = 2'b10;

    reg [1:0] aw_state, aw_state_next;

    always @ (posedge ACLK , negedge ARESET) begin
        if(!ARESET) begin
            aw_state = AW_IDLE;
            aw_addr_reg = 0;
        end
        else begin
            aw_state = aw_state_next;
            aw_addr_reg = aw_addr_reg_next;
        end
    end

    always @ (posedge ACLK) begin
        if(!ARESET) begin
            aw_state_next = AW_IDLE;
            AWREADY = 1'b0;
        end
        else begin
            case (aw_state) 
                AW_IDLE: begin
                    AWREADY = 1'b0;
                    if (AWVALID) begin // valid 신호 수신
                        aw_state_next = AW_READY;
                    end
                end 
                AW_READY : begin
                    AWREADY = 1'b1;
                    aw_addr_reg_next = AWADDR;
                    if (AWVALID && AWREADY) begin
                        aw_state_next = AW_IDLE;
                    end
                end
                default: aw_state_next = AW_IDLE;
            endcase
        end
    end

    // write channel //

    reg [31:0] write_data_reg, write_data_reg_next;
    reg [3:0] w_strb_reg, w_strb_reg_next;

    parameter WRITE_IDLE = 2'b01;
    parameter WRITE_READY = 2'b10;

    reg [1:0] write_state, write_state_next;

    always @ (posedge ACLK , negedge ARESET) begin
        if(!ARESET) begin
            write_state = WRITE_IDLE;
            write_data_reg = 0;
            w_strb_reg = 0;
        end
        else begin
            write_state = write_state_next;
            write_data_reg = write_data_reg_next;
            w_strb_reg = w_strb_reg_next;
        end
    end

    always @ (posedge ACLK) begin
        if(!ARESET) begin
            write_state_next = WRITE_IDLE;
            WREADY = 1'b0;
        end
        else begin
            write_data_reg_next = write_data_reg;
            w_strb_reg_next = w_strb_reg;
            case (write_state) 
                WRITE_IDLE: begin
                    WREADY = 1'b0;
                    if (AWREADY && WVALID) begin // 주소를 입력 받았고 valid 신호를 받았을때
                        write_state_next = WRITE_READY;
                        write_data_reg_next = WDATA;
                        w_strb_reg_next = WSTRB;
                    end
                end 
                WRITE_READY : begin
                    WREADY = 1'b1;
                    if (w_strb_reg[0]) begin
                        slave_memory[aw_addr_reg] = write_data_reg[7:0];
                    end
                    if (w_strb_reg[1]) begin
                        slave_memory[aw_addr_reg + 1] = write_data_reg[15:8];
                    end
                    if (w_strb_reg[2]) begin
                        slave_memory[aw_addr_reg + 2] = write_data_reg[23:16];
                    end
                    if (w_strb_reg[3]) begin
                        slave_memory[aw_addr_reg + 3] = write_data_reg[31:24];
                    end
                    
                    if (WVALID && WREADY) begin
                        write_state_next = WRITE_IDLE;
                    end
                end
                default: write_state_next = WRITE_IDLE;
            endcase
        end
    end

    // response channel //

    reg [31:0] response_reg, response_reg_next;

    parameter RESPONSE_IDLE = 2'b01;
    parameter RESPONSE_VALID = 2'b10;

    reg [1:0] response_state, response_state_next;

    always @ (posedge ACLK , negedge ARESET) begin
        if(!ARESET) begin
            response_state = RESPONSE_IDLE;
            response_reg = 0;
        end
        else begin
            response_state = response_state_next;
            response_reg = response_reg_next;
        end
    end

    always @ (posedge ACLK) begin
        if(!ARESET) begin
            response_state_next = RESPONSE_IDLE;
            response_reg = 0;
            BVALID = 1'b0;
        end
        else begin
            response_reg_next = response_reg;
            case (response_state) 
                RESPONSE_IDLE: begin
                    BVALID = 1'b0;
                    if (WVALID && WREADY) begin // write 데이터가 처리되면 response 출력
                        response_state_next = RESPONSE_VALID;
                        response_reg_next = 2'b00; // okay 
                    end
                end 
                RESPONSE_VALID : begin
                    BVALID = 1'b1;
                    BRESP = response_reg;
                    if (BVALID && BREADY) begin
                        response_state_next = RESPONSE_IDLE;
                    end
                end
                default:;
            endcase
        end
    end

endmodule

