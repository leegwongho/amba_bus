module axi_master_fsm(
    input               M_ACLK,
    input               M_ARESET_N,

    // AW channel
    input               S_AWREADY,
    output reg          M_AWVALID,
    output reg [31:0]   M_AWADDR,

    // W channel 
    input               S_WREADY,
    output reg          M_WVALID,
    output reg [31:0]   M_WDATA,
    output reg [3:0]    M_WSTRB,

    // B channel 
    input       [1:0]   S_BRESP,
    input               S_BVALID,
    output reg          M_BREADY,

    // AR channel
    input               S_ARREADY,
    output reg          M_ARVALID,
    output reg [31:0]   M_ARADDR,

    // R channel
    input      [31:0]   S_RDATA,
    input               S_RVALID,
    output reg  [3:0]   M_BLEN,
    output reg          M_RREADY,

    // user write control bit
    input               U_WVALID,
    input      [31:0]   U_AWADDR,
    input      [31:0]   U_WDATA,
    input      [3:0]    U_STRB,

    // user read control bit
    input               U_RVALID,
    input       [31:0]  U_ARADDR,
    input       [3:0]   U_BLEN,
    output reg  [31:0]  U_RDATA       
);

    parameter IDLE = 9'b000000001;
    parameter STATE_ARADDR = 9'b000000010;
    parameter STATE_AWADDR = 9'b000000100;
    parameter STATE_READ_READY = 9'b000001000;
    parameter STATE_WRITE_READY = 9'b000010000;
    parameter STATE_READ = 9'b000100000;
    parameter STATE_WRITE = 9'b001000000;
    parameter STATE_READ_COMPLETE = 9'b010000000;
    parameter STATE_WRITE_COMPLETE = 9'b100000000;
    
    reg [7:0] state, state_next;
    reg [31:0] araddr_reg, araddr_reg_next;
    reg [31:0] awaddr_reg, awaddr_reg_next;
    reg [31:0] read_data_reg, read_data_reg_next;
    reg [31:0] write_data_reg, write_data_reg_next;
    reg [3:0] strb_reg, strb_reg_next;
    reg [3:0] burst_lenth, burst_lenth_next;

    always @ (posedge M_ACLK) begin
        if(!M_ARESET_N) begin
            state = IDLE;
            araddr_reg = 0;
            read_data_reg = 0;
            awaddr_reg = 0;
            write_data_reg = 0;
            strb_reg = 0;
            burst_lenth = 0;
        end
        else begin
            state = state_next;
            araddr_reg = araddr_reg_next;
            read_data_reg = read_data_reg_next;
            awaddr_reg = awaddr_reg_next;
            write_data_reg = write_data_reg_next;
            strb_reg = strb_reg_next;
            burst_lenth = burst_lenth_next;
        end
    end

    always @ (posedge M_ACLK) begin
        state_next = state;
        araddr_reg_next = araddr_reg;
        awaddr_reg_next = awaddr_reg;
        read_data_reg_next = read_data_reg;
        write_data_reg_next = write_data_reg;
        strb_reg_next = strb_reg;
        burst_lenth_next = burst_lenth;
        case (state)
            IDLE : begin
               araddr_reg_next = U_ARADDR;
               burst_lenth_next = U_BLEN;
               read_data_reg_next = S_RDATA;
               M_ARADDR = araddr_reg;
               M_BLEN = burst_lenth;
               U_RDATA = read_data_reg;
               if (U_RVALID) begin
                    state_next = STATE_ARADDR;
                    M_ARVALID = 1'b1;
                    M_RREADY = 1'b1;
               end

               write_data_reg_next = U_WDATA;
               strb_reg_next = U_STRB;
               awaddr_reg_next = U_AWADDR;
               if (U_WVALID) begin
                    state_next = STATE_AWADDR;
                    M_AWVALID = 1'b1;
                    M_AWADDR = awaddr_reg;
                    M_WVALID = 1'b1;
                    M_WDATA = write_data_reg;
                    M_WSTRB = strb_reg;
               end 
            end
            STATE_ARADDR : begin
                
                
                if (S_ARREADY) begin
                    M_ARVALID = 0;
                    
                    state_next = STATE_READ_READY;
                end
            end
            STATE_AWADDR : begin
                
                
                
                if (S_AWREADY) begin
                    M_AWVALID = 0;
                    state_next = STATE_WRITE_READY;
                    
                end
            end
            STATE_READ_READY : begin
                
                if (S_RVALID) begin
                    M_RREADY = 1'b0;
                    state_next = IDLE;
                end
            end
            STATE_WRITE_READY : begin
                
                if (S_WREADY) begin
                    M_WVALID = 1'b0;
                    state_next = IDLE;
                end
            end
            // STATE_READ : begin
                
            //     state_next = IDLE;
            // end
            // STATE_WRITE : begin
                
            //     state_next = IDLE;
            // end
            // STATE_READ_COMPLETE : begin
                
            // end
            // STATE_WRITE_COMPLETE : begin
                
            // end 
            default: ;
        endcase
    end


endmodule