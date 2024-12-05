module AXI_MASTER(
    // CLK, RESET
    input ACLK,
    input ARESETN,
    
    // addr write
    input              AWREADY,
    output reg         AWVALID,
    output reg [31:0]  AWADDR,
    
    // write data
    input              WREADY,
    output reg         WVALID,
    output reg [31:0]  WDATA,
    output reg [3:0 ]  WSTRB,
    
    // write response
    input              BVALID,
    input      [1:0]   BRESP,
    output reg         BREADY,
    output reg         READY,
    
    // read address
    input              ARREADY,
    output reg         ARVALID,
    output reg [31:0]  ARADDR,

    // read response
    input               RREADY,
    output reg          RVALID,
    input      [31:0]   RDATA,
    
    // control signal
    input      [31:0]  C_ADRR,
    input      [31:0]  C_DATA,
    input              C_VALID,
    input              C_VALID_R,
    input      [31:0]  C_ADRR_R,
    output     [31:0]  C_DATA_READ,
    input      [3:0 ]  C_STRB
    //input              C_READY,

    );
/////////////////////////////////////////////////////////////////////////////

    //aw_channel

    //aw param
    parameter   AW_IDLE     =    2'b01;
    parameter   AW_VALID    =    2'b10;
    
    
    //aw reg
    reg      [1:0 ]  AW_STATE, AW_NEXT_STATE;
    reg      [31:0]  AW_DATA;
    
    
    // AW_rotate_state
    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            AW_STATE <= AW_IDLE;
            AW_DATA <= 0;
        end
        else begin
            AW_STATE <= AW_NEXT_STATE;
        end    
    end
    
    
    // AW_CHANNEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            AW_NEXT_STATE <= AW_IDLE;
            AWVALID       <= 0;
            AWADDR        <= 0;
        end
        else begin
            case (AW_STATE)
                AW_IDLE : begin
                    AWVALID <= 0;
                    if (C_VALID) begin
                        AW_NEXT_STATE <= AW_VALID;
                        AW_DATA <= C_ADRR;
                    end
                end
                AW_VALID : begin
                    AWVALID <= 1;
                    AWADDR <= AW_DATA;
                    if ( AWVALID && AWREADY ) begin
                        AW_NEXT_STATE <= AW_IDLE;
                         AWVALID <= 0;
                    end
                end
            endcase
        end
    end
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    //w param
    parameter   W_IDLE     =    2'b01;
    parameter   W_VALID    =    2'b10;
    
   //w reg
    reg      [1:0 ] W_STATE, W_NEXT_STATE;
    reg      [31:0] W_DATA;
    reg      [3: 0] W_STRB;
    // W_rotate_state
        always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            W_STATE     <= W_IDLE;
        end
        else begin
            W_STATE     <= W_NEXT_STATE;
        end    
    end
    
    // W_CHALLEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            W_NEXT_STATE <= W_IDLE;
            WVALID       <= 0;
            WDATA        <= 0;
            WSTRB        <= 0;
        end

        else begin
            case (W_STATE)
                W_IDLE : begin
                    WVALID   <= 0;
                    if (C_VALID) begin
                        W_NEXT_STATE <= W_VALID;
                        W_DATA  <= C_DATA;
                        W_STRB  <= C_STRB;
                    end
                end
                
                W_VALID : begin
                    WVALID   <= 1;
                    WDATA    <= W_DATA;
                    WSTRB    <= W_STRB;
                    if (WVALID && WREADY) begin
                        W_NEXT_STATE <= W_IDLE;
                        WVALID   <= 0;
                    end
                end
            endcase
        end
    end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // b param
    parameter   B_IDLE     =    2'b01;
    parameter   B_VALID    =    2'b10;
    
   // b reg
    reg      [1:0] B_STATE, B_NEXT_STATE;
    reg      [1:0] B_DATA;

    // b_rotate_state
    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            B_STATE      <= B_IDLE;
        end
        else begin
            B_STATE      <= B_NEXT_STATE;
        end    
    end

    // b_CHALLEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            B_NEXT_STATE <= B_IDLE;
            BREADY       <= 0;
            READY        <= 0;
        end
        else begin
            case (B_STATE)
                B_IDLE : begin
                    BREADY   <= 0;
                    if (WVALID) begin
                        B_NEXT_STATE <= B_VALID;
                    end
                end
                B_VALID : begin
                    BREADY   <= 1;
                    if (BVALID && BREADY) begin
                        B_NEXT_STATE <= B_IDLE;
                        B_DATA       <= BRESP;
                        READY        <= 1'b1;
                    end
                end
            endcase
        end
    end
///////////////////////////////////////////////////////////////////////////////////////////////    
    // ar param
    parameter   AR_IDLE     =    2'b01;
    parameter   AR_VALID    =    2'b10;

    // ar reg
    reg         [1:0]  AR_STATE, AR_NEXT_STATE;          
    reg         [31:0] AR_ADDR_SAVE_DATA;

    // ar rotate state
    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            AR_STATE <= AR_IDLE;
        end
        else begin
            AR_STATE <= AR_NEXT_STATE;
        end
    end
    // AR_CHANNEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            AR_NEXT_STATE <= AR_IDLE;
            AR_ADDR_SAVE_DATA <= 0;
        end
        else begin
            case(AR_STATE)
                AR_IDLE : begin
                    ARVALID <= 0;
                    if(C_VALID_R) begin
                        AR_NEXT_STATE <= AR_VALID;
                        AR_ADDR_SAVE_DATA <= C_ADRR_R;
                    end
                end

                AR_VALID : begin
                    ARVALID <= 1;
                    ARADDR <= AR_ADDR_SAVE_DATA;
                    if(ARVALID && ARREADY) begin
                        AR_NEXT_STATE <= AR_IDLE;
                        ARVALID <= 0;
                    end
                end
            endcase
        end
    end

//////////////////////////////////////////////////////////////////////////////////////////////////
    // r param
    parameter   R_IDLE      =   3'b001;
    parameter   R_VALID     =   3'b010;
    parameter   R_SAVE      =   3'b100;

    // r reg
    reg             [2:0]  R_STATE, R_NEXT_STATE;
    reg             [31:0] R_SAVE_DATA;
    reg             [31:0] R_MASTER_DATA;

    // connect
    assign C_DATA_READ = R_MASTER_DATA;

    // r rotate state
    always @(posedge ACLK or negedge ARESETN) begin
        if(!ARESETN)begin
            R_STATE <= R_IDLE;
        end
        else begin
            R_STATE <= R_NEXT_STATE;
        end
    end

    // R_CHANNEL
    always @(negedge ACLK) begin
        if(!ARESETN)begin
            R_NEXT_STATE <= R_IDLE;
            R_SAVE_DATA <= 0;
        end
        else begin
            case(R_STATE)
                R_IDLE : begin
                    RVALID <= 0;
                    R_MASTER_DATA <= R_SAVE_DATA;
                    if(C_VALID_R) begin
                        R_NEXT_STATE <= R_VALID;
                    end
                end

                R_VALID : begin
                    RVALID <= 1;
                    if(RVALID && RREADY) begin
                        R_NEXT_STATE <= R_SAVE;
                        RVALID <= 0;
                    end
                end
                
                R_SAVE : begin
                    R_SAVE_DATA <= RDATA;
                    if(!RVALID) begin
                        R_NEXT_STATE <= R_IDLE;
                    end

                end

            endcase
        end
    end
endmodule
