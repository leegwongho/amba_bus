module AXI_SLAVE(
    // CLK, RESET
    input ACLK,
    input ARESETN,
    
    //addr write
    output reg        AWREADY,
    input             AWVALID,
    input      [31:0] AWADDR,
    
    //write data
    output reg        WREADY,
    input             WVALID,
    input      [31:0] WDATA,
    input      [3:0 ] WSTRB,
    
    // write response
    output reg       BVALID,
    output reg [1:0] BRESP,
    input            BREADY,

    // read address
    output reg       ARREADY,
    input            ARVALID,
    input     [31:0] ARADDR,

    // read response
    output reg      RREADY,
    input           RVALID,
    output  [31:0]  RDATA
    );



    
 //////////////////////////////////////////////////////////////////////////////////////   
    
    //aw_channel
    
    //aw param
    parameter   AW_IDLE     =    2'b01;
    parameter   AW_VALID    =    2'b10;
    
    
    //aw reg
    reg      [1:0 ]  AW_STATE, AW_NEXT_STATE;
    reg      [31:0]  AW_ADDR_SAVE_DATA;
    
    
    // AW_rotate_state
    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            AW_STATE <= AW_IDLE;
        end
        else begin
            AW_STATE <= AW_NEXT_STATE;
        end    
    end
    
    
    // AW_CHANNEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            AW_NEXT_STATE <= AW_IDLE;
            AWREADY       <= 0;
            AW_ADDR_SAVE_DATA <= 0;
        end
        else begin
            case (AW_STATE)
                AW_IDLE : begin
                    AWREADY <= 0;
                    if (AWVALID) begin
                        AW_NEXT_STATE <= AW_VALID;
                    end
                end
                AW_VALID : begin
                    AWREADY <= 1;
                    if ( AWVALID && AWREADY ) begin
                        AW_NEXT_STATE <= AW_IDLE;
                        AW_ADDR_SAVE_DATA <= AWADDR;
                        AWREADY       <= 0;
                    end
                end
            endcase
        end
    end
////////////////////////////////////////////////////////////////////////////////////////
    
    //w param
    parameter   W_IDLE     =    3'b001;
    parameter   W_VALID    =    3'b010;
    parameter   W_SAVE     =    3'b100;

    // w reg
    reg      [2:0]  W_STATE, W_NEXT_STATE;
    reg      [31:0] W_SAVE_DATA;
    reg      [3:0]  W_STRB_REG;
    reg      [7:0] slave_mem [0:31];

    // W_rotate_state
        always @(posedge ACLK or negedge ARESETN) begin
            if(!ARESETN) begin
                W_STATE <= W_IDLE;
            end
            else begin
                W_STATE <= W_NEXT_STATE;
            end
        end

    // W_CHALLEL
    always @(negedge ACLK) begin
        if (!ARESETN) begin
            W_NEXT_STATE <= W_IDLE;
            W_SAVE_DATA  <= 0;
            W_STRB_REG        <= 0;
        end
        else begin
            case (W_STATE)
                W_IDLE : begin
                    WREADY   <= 0;
                    if (WVALID) begin
                        W_NEXT_STATE <= W_VALID;
                    end
                end
                
                W_VALID : begin
                    WREADY   <= 1;
                    if (WVALID && WREADY) begin
                        WREADY   <= 0;
                        W_NEXT_STATE <= W_SAVE;
                        W_SAVE_DATA  <= WDATA;
                        W_STRB_REG <= WSTRB;
                    end
                end
                W_SAVE : begin
                    if(W_STRB_REG[0]) begin
                    slave_mem[AW_ADDR_SAVE_DATA    ] <= W_SAVE_DATA[7:0];    // LSB
                    end
                    if(W_STRB_REG[1]) begin
                    slave_mem[AW_ADDR_SAVE_DATA + 1] <= W_SAVE_DATA[15:8];   // 2nd byte
                    end
                    if(W_STRB_REG[2]) begin
                    slave_mem[AW_ADDR_SAVE_DATA + 2] <= W_SAVE_DATA[23:16];  // 3rd byte
                    end
                    if(W_STRB_REG[3]) begin
                    slave_mem[AW_ADDR_SAVE_DATA + 3] <= W_SAVE_DATA[31:24];  // MSB
                    end
                    if (!WREADY) begin
                        W_NEXT_STATE <= W_IDLE;
                    end
                end
            
            endcase
        end
    end

////////////////////////////////////////////////////////////////////////////////////////
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
            BVALID       <= 0;
            B_DATA       <= 0;
        end
        else begin
            case (B_STATE)
                B_IDLE : begin
                    BVALID   <= 0;
                    if (WVALID && WREADY) begin
                        B_NEXT_STATE <= B_VALID;
                        BRESP <= 2'b00;
                    end
                end
                
                B_VALID : begin
                    BVALID   <= 1;
                    if (BVALID && BREADY) begin
                        B_NEXT_STATE <= B_IDLE;
                    end
                end

            endcase
        end
    end
/////////////////////////////////////////////////////////////////////////////////////////////
    //ar param
    parameter   AR_IDLE     =   2'b01;
    parameter   AR_VALID    =   2'b10;

    // ar reg
    reg         [1:0]  AR_STATE, AR_NEXT_STATE;
    reg         [31:0] AR_ADDR_SAVE_DATA;

    // ar rotate state
    always @(posedge ACLK or negedge ARESETN) begin
        if(!ARESETN) begin
            AR_STATE <= AR_IDLE;
        end
        else begin
            AR_STATE <= AR_NEXT_STATE;
        end
    end

    // AR_CHANNEL
    always @(negedge ACLK) begin
        if(!ARESETN) begin
            AR_NEXT_STATE <= AR_IDLE;
            AR_ADDR_SAVE_DATA <= 0;
        end
        else begin
            case(AR_STATE)
                AR_IDLE : begin
                    ARREADY <= 0;
                    if(ARVALID)begin
                        AR_NEXT_STATE <= AR_VALID;
                        AR_ADDR_SAVE_DATA <= ARADDR;
                    end
                end
                
                AR_VALID : begin
                    ARREADY <= 1;
                    if(ARVALID && ARREADY) begin
                        
                        AR_NEXT_STATE <= AR_IDLE;
                        ARREADY <= 0;
                    end
                end
            endcase
        end
    end

//////////////////////////////////////////////////////////////////////////////////////////////////
    // r param
    parameter   R_IDLE      =   3'b001;
    parameter   R_VALID     =   3'b010;
    parameter   R_SAVE      =   3'b010;

    // r reg
    reg             [2:0]  R_STATE, R_NEXT_STATE;
    reg             [31:0] R_SAVE_DATA;

    assign RDATA = R_SAVE_DATA;  // RDATA에 slave_mem 데이터 할당
    // r rotate state
    always @(posedge ACLK or negedge ARESETN) begin
        if(!ARESETN) begin
            R_STATE <= R_IDLE;
        end
        else begin
            R_STATE <= R_NEXT_STATE;
        end
    end

    // r_channel
    always @(negedge ACLK or negedge ARESETN) begin
        if(!ARESETN) begin
            R_NEXT_STATE <= R_IDLE;
            RREADY <= 0;
        end
        else begin
            case(R_STATE)
                R_IDLE : begin
                RREADY <= 0;
                    if(RVALID) begin
                        R_NEXT_STATE <= R_VALID;
                    end
                end

                R_VALID: begin
                RREADY <= 1;
                    if (RVALID && RREADY) begin
                        R_SAVE_DATA <= {slave_mem[AR_ADDR_SAVE_DATA + 3],
                                        slave_mem[AR_ADDR_SAVE_DATA + 2],
                                        slave_mem[AR_ADDR_SAVE_DATA + 1],
                                        slave_mem[AR_ADDR_SAVE_DATA]};
                        RREADY <= 0;
                        R_NEXT_STATE <= R_IDLE;
                    end
                end
            endcase
        end

    end
endmodule
