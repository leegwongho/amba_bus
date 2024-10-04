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
    output  reg [31:0]  RDATA,
    output  reg         RVALID,


    // response Channel
    input               BREADY,
    output reg          BRESP,
    output reg          BVALID,
    
    // user code
    output  [15:0]       led);

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
            RDATA = 0;
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
                    RDATA = slave_memory[ar_addr_reg];
                    if (RVALID && RREADY) begin
                        r_state_next = R_IDLE;
                    end
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

    // user //

    assign led = {slave_memory[0], slave_memory[1]};

endmodule


module axi_slave_fsm(
    input S_ACLK,
    input S_ARRESET_N,

    // AW channel
    input               M_AWVALID,
    input       [31:0]  M_AWADDR,
    output reg          S_AWREADY,

    // W channel
    input               M_WVALID,
    input       [31:0]  M_WDATA,
    input       [3:0]   M_WSTRB,
    output reg          S_WREADY,

    // B channel
    input               M_BREADY,
    output reg  [1:0]   S_BRESP,
    output reg          S_BVALID,

    // AR channel
    input               M_ARVALID,
    input       [31:0]  M_ARADDR,
    output reg          S_ARREADY,

    // R channel
    input               M_RREADY,
    input       [3:0]   M_BLEN,
    output reg          S_RVALID,
    output reg  [31:0]  S_RDATA);

    reg [7:0] slave_memory[0:31];

    parameter IDLE = 9'b000000001;
    parameter STATE_ARADDR = 9'b000000010;
    parameter STATE_AWADDR = 9'b000000100;
    parameter STATE_READ_READY = 9'b000001000;
    parameter STATE_WRITE_READY = 9'b000010000;
    parameter STATE_READ = 9'b000100000;
    parameter STATE_WRITE = 9'b001000000;

    reg [7:0] state, state_next;
    reg [31:0] araddr_reg, araddr_reg_next;
    reg [31:0] awaddr_reg, awaddr_reg_next;
    reg [3:0] burst_lenth, burst_lenth_next;
    reg [31:0] read_data_reg, read_data_reg_next;
    reg [31:0] write_data_reg, write_data_reg_next;
    reg [3:0] strb_reg, strb_reg_next;

    always @ (posedge S_ACLK) begin
        if (!S_ARRESET_N) begin
            state = IDLE;
            araddr_reg = 0;
            burst_lenth = 0;
            read_data_reg = 0;
            awaddr_reg = 0;
            write_data_reg = 0;
            strb_reg = 0;
        end
        else begin
            state = state_next;
            araddr_reg = araddr_reg_next;
            burst_lenth = burst_lenth_next;
            read_data_reg = read_data_reg_next;
            awaddr_reg = awaddr_reg_next;
            write_data_reg = write_data_reg_next;
            strb_reg = strb_reg_next;
        end
    end

    always @(posedge S_ACLK) begin
        state_next = state;
        araddr_reg_next = araddr_reg;
        burst_lenth_next = burst_lenth;
        read_data_reg_next = read_data_reg;
        awaddr_reg_next = awaddr_reg;
        write_data_reg_next = write_data_reg;
        strb_reg_next = strb_reg;
        case (state)
            IDLE : begin
                if (M_ARVALID) begin
                    S_ARREADY = 1'b1;
                    state_next = STATE_ARADDR;
                end

                if (M_AWVALID) begin
                    S_AWREADY = 1'b1;
                    state_next = STATE_AWADDR;
                end
            end
            STATE_ARADDR : begin
                S_ARREADY = 1'b0;
                
                araddr_reg_next = M_ARADDR;
                state_next = STATE_READ_READY;
                burst_lenth_next = M_BLEN;
            end
            STATE_AWADDR : begin
                S_AWREADY = 1'b0;
                S_WREADY = 1'b1;
                awaddr_reg_next = M_AWADDR;
                state_next = STATE_WRITE_READY;
            end
            STATE_READ_READY : begin
                // if (M_RREADY) begin
                //     S_RVALID = 1'b1;
                //     read_data_reg_next = slave_memory[araddr_reg];
                // end
                if (M_RREADY) begin

                    S_RVALID = 1'b1;
                    
                    if (burst_lenth[0]) begin
                        read_data_reg_next[7:0] = slave_memory[araddr_reg];
                    end
                    if (burst_lenth[1]) begin
                        read_data_reg_next[15:8] = slave_memory[araddr_reg + 1];
                    end
                    if (burst_lenth[2]) begin
                        read_data_reg_next[23:16] = slave_memory[araddr_reg + 2];
                    end
                    if (burst_lenth[3]) begin
                        read_data_reg_next[31:24] = slave_memory[araddr_reg + 3];
                    end
                end
                state_next = STATE_READ;
            end
            STATE_WRITE_READY : begin
                if (M_WVALID) begin
                    S_WREADY = 1'b0;
                    strb_reg_next = M_WSTRB;
                    write_data_reg_next = M_WDATA;
                    state_next = STATE_WRITE;
                end
            end 
            STATE_READ : begin
                S_RDATA = read_data_reg;
                state_next = IDLE;
            end
            STATE_WRITE : begin
                if (strb_reg[0]) begin
                    slave_memory[awaddr_reg] = write_data_reg[7:0];
                end
                if (strb_reg[1]) begin
                    slave_memory[awaddr_reg + 1] = write_data_reg[15:8];
                end
                if (strb_reg[2]) begin
                    slave_memory[awaddr_reg + 2] = write_data_reg[23:16];
                end
                if (strb_reg[3]) begin
                    slave_memory[awaddr_reg + 3] = write_data_reg[31:24];
                end

                state_next = IDLE;
            end
            default: ;
        endcase
    end


endmodule

