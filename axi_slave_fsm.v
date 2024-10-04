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
                    S_RVALID = 1'b1;
                    state_next = STATE_ARADDR;
                    araddr_reg_next = M_ARADDR;
                    burst_lenth_next = M_BLEN;
                end

                if (M_AWVALID) begin
                    S_AWREADY = 1'b1;
                    S_WREADY = 1'b1;
                    state_next = STATE_AWADDR;
                    awaddr_reg_next = M_AWADDR;
                    strb_reg_next = M_WSTRB;
                    write_data_reg_next = M_WDATA;
                end
            end
            STATE_ARADDR : begin
                S_ARREADY = 1'b0;

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

                if (M_RREADY) begin
                    S_RDATA = read_data_reg;
                    state_next = STATE_READ;
                end
            //    state_next = STATE_READ_READY;
            end
            STATE_AWADDR : begin
                S_AWREADY = 1'b0;
                
                state_next = STATE_WRITE_READY;
            end
            // STATE_READ_READY : begin
                
                
                
                
                
            // end
            STATE_WRITE_READY : begin
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

                if (M_WVALID) begin
                    S_WREADY = 1'b0;
                    state_next = IDLE;
                end
            end 
            STATE_READ : begin
                S_RDATA = read_data_reg;
                S_RVALID = 1'b0;
                state_next = IDLE;
            end
            default: ;
        endcase
    end


endmodule