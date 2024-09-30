module axi_master(
    // clk, reset 
    input               ACLK,
    input               ARESET,
    
    // AW(read)CHANNEL
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
    
    // user control master bit
    input               valid,
    input        [31:0] aw_addr,
    input        [31:0] w_data,
    input        [3:0]  w_strb,
    output  reg         ready);

    // read channel //
    reg [31:0] read_addr_reg, read_addr_reg_next;

    parameter READ_IDLE = 2'b01;
    parameter READ_VALID = 2'b10;

    reg [1:0] read_state, read_state_next;

    always @(posedge ACLK , negedge ARESET) begin
        if (!ARESET) begin
            read_state = READ_IDLE;
            read_addr_reg = 0;
        end 
        else begin
            read_state = read_state_next;
            read_addr_reg = read_addr_reg_next;
        end 
    end

    always @ (*) begin
        if (!ARESET) begin
            read_state_next = READ_IDLE;
            AWVALID = 1'b0;
            read_addr_reg_next = 0;
        end
        else begin
            AWVALID = 1'b0;
            read_addr_reg_next = read_addr_reg;
            case (read_state) 
                READ_IDLE : begin
                    AWVALID = 1'b0; // 데이터 전송을 하지않는것을 slave 에게 알리는 비트
                    if (valid) begin // cpu -> axi 한테 데이터를 요청
                        read_state_next = READ_VALID;
                        read_addr_reg_next = aw_addr;   // cpu가 보낸 주소 
                    end                
                end
                READ_VALID : begin
                    AWVALID = 1'b1; // 데이터 전송중임을 slave 에게 알리는 비트
                    AWADDR = read_addr_reg;
                    if (AWVALID && AWREADY) begin
                        read_state_next = READ_IDLE;
                    end
                end
                default: read_state_next = READ_IDLE;
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

    always @(*) begin
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

    always @(*) begin
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