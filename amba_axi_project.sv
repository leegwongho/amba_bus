`timescale 1ns / 1ps







module axilite_s(
    // Global signal
    input  wire         s_axi_aclk,
    input  wire         s_axi_aresetn,

    // AW Channel
    input  wire         s_axi_awvalid,
    output reg          s_axi_awready,
    input  wire [31: 0] s_axi_awaddr,

    // W Channel
    input  wire         s_axi_wvalid,
    output reg          s_axi_wready,
    input  wire [31: 0] s_axi_wdata,

    // B Channel
    output reg          s_axi_bvalid,
    input  wire         s_axi_bready,
    output reg  [1: 0]  s_axi_bresp,

    // AR Channel
    input  wire         s_axi_arvalid,
    output reg          s_axi_arready,
    input  wire [31: 0] s_axi_araddr,

    // R Channel
    output reg          s_axi_rvalid,
    input  wire         s_axi_rready,
    output reg [31: 0]  s_axi_rdata,
    output reg  [1: 0]  s_axi_rresp
);

localparam idle            = 0, 
           send_wready     = 1,
           send_wdata      = 2,
           update_mem      = 3,
           send_wr_resp    = 4,
           send_wr_err     = 5,
           check_araddr    = 6,
           pop_data        = 7,
           send_rd_err     = 8;

reg [3:0] state      = idle;
reg [3:0] next_state = idle;
reg [1:0] count    = 0;
reg [31:0] waddr, raddr, wdata, rdata;

reg [31:0] mem [128];

always @(posedge s_axi_aclk) begin
    if (s_axi_aresetn == 1'b0) begin
        state <= idle;
        for (int i = 0; i < 128; i++) begin
            mem[i] <= 0;
        end
        s_axi_awready <= 0;
        s_axi_wready  <= 0;
        s_axi_bvalid  <= 0;
        s_axi_bresp   <= 0;
        s_axi_arready <= 0;
        s_axi_rvalid  <= 0;
        s_axi_rdata   <= 0;
        s_axi_rresp   <= 0;
        waddr         <= 0;
        raddr         <= 0;
        wdata         <= 0;
        rdata         <= 0;
    end else begin
        case (state)
            idle: begin
                s_axi_awready <= 0;
                s_axi_wready  <= 0;
                s_axi_bvalid  <= 0;
                s_axi_bresp   <= 0;
                s_axi_arready <= 0;
                s_axi_rvalid  <= 0;
                s_axi_rdata   <= 0;
                s_axi_rresp   <= 0;
                waddr         <= 0;
                raddr         <= 0;
                wdata         <= 0;
                rdata         <= 0;
                count         <= 0;
                s_axi_rvalid  <= 1'b0;
                
                if (s_axi_awvalid == 1'b1) begin
                    state         <= send_wready;
                    waddr         <= s_axi_awaddr;
                    s_axi_awready <= 1'b1;
                end else if (s_axi_arvalid == 1'b1) begin
                    state         <= check_araddr;
                    raddr         <= s_axi_araddr;
                    s_axi_arready <= 1'b1;
                end else begin
                    state         <= idle;
                end
            end
            
            send_wready: begin
                s_axi_awready <= 1'b0;
                if (s_axi_wvalid) begin
                    wdata        <= s_axi_wdata;
                    s_axi_wready <= 1'b1;
                    state        <= send_wdata;
                end else begin
                    state        <= send_wready;
                end
            end

            send_wdata: begin
                s_axi_wready <= 1'b0;
                if (waddr < 128) begin
                    state      <= update_mem;
                    mem[waddr] <= wdata;
                end else begin
                    state        <= send_wr_err;
                    s_axi_bresp  <= 2'b11;
                    s_axi_bvalid <= 1'b1;
                end
            end

            update_mem: begin
                mem[waddr] <= wdata;
                state      <= send_wr_resp;
            end

            send_wr_resp: begin
                s_axi_bresp  <= 2'b00;
                s_axi_bvalid <= 1'b1;
                if (s_axi_bready) begin
                    s_axi_bvalid <= 1'b0;
                    state <= idle;
                end else begin
                    state <= send_wr_resp;
                end
            end

            send_wr_err: begin
                if (s_axi_bready) begin
                    state <= idle;
                end else begin
                    state <= send_wr_err;
                end
            end
////////////////////////// write complete
            check_araddr: begin
                s_axi_arready <= 1'b0;
                if (raddr < 128) begin
                    state <= pop_data;
                end else begin
                    s_axi_rvalid <= 1'b1;  
                    state        <= send_rd_err;
                    s_axi_rdata  <= 0;
                    s_axi_rresp  <= 2'b11;
                end
            end

            pop_data: begin
                if (count < 2) begin
                    rdata <= mem[raddr];
                    state <= pop_data;
                    count <= count + 1;
                end else begin
                    s_axi_rvalid <= 1'b1;  
                    s_axi_rdata  <= rdata; 
                    s_axi_rresp  <= 2'b00;
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                        s_axi_rdata  <= 0;
                        state <= idle;
                    end else begin
                        state <= pop_data;
                    end
                end
            end

            send_rd_err: begin
                if (s_axi_rready) begin
                    state <= idle;
                end else begin
                    state <= send_rd_err;
                end
            end

            default: state <= idle;
        endcase
    end
end

endmodule
 

module axilite_m(
    // Global signal
    input  wire        m_axi_aclk,
    input  wire        m_axi_aresetn,

    // AW Channel
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,
    output reg [31: 0] m_axi_awaddr,
 
    // W Channel
    output reg         m_axi_wvalid,
    input  wire        m_axi_wready,
    output reg [31: 0] m_axi_wdata,
 
    // B Channel
    input  wire       m_axi_bvalid,
    output reg        m_axi_bready,
    input  [1: 0]     m_axi_bresp,
 
    // AR Channel
    output reg         m_axi_arvalid,
    input   wire       m_axi_arready,
    output reg [31: 0] m_axi_araddr,
 
    // R Channel
    input  wire        m_axi_rvalid,
    output reg         m_axi_rready,
    input wire [31: 0] m_axi_rdata,
    input wire [1: 0]  m_axi_rresp,

    // user signal
    input wire write,
    input wire read,
    input wire [31:0] user_waddr,
    input wire [31:0] user_wdata,
    input wire [31:0] user_raddr,
    output reg [31:0] user_rdata,
    output reg wr_error,
    output reg rd_error,
    output reg wr_ready,
    output reg rd_ready 
);

localparam idle            = 0, 
           send_awvalid    = 1,
           send_wvalid     = 2,
           send_bready     = 3,
           rcv_wr_err      = 4,
           send_arvalid    = 5,
           rcv_arready     = 6,
           send_rready     = 7,
           send_rdata      = 8,
           rcv_rd_err      = 9;

           
reg [3:0] state      = idle;
reg [3:0] next_state = idle;
reg [31:0] waddr, raddr, wdata, rdata;
reg wr_flag, rd_flag; 
reg [31:0] mem [128];

always @(posedge m_axi_aclk) begin
    if (m_axi_aresetn == 1'b0) begin
        state <= idle;
        for (int i = 0; i < 128; i = i + 1) begin
            mem[i] <= 0;
        end
        m_axi_awvalid  <= 0;
        m_axi_awaddr   <= 0;
        m_axi_wvalid   <= 0;
        m_axi_wdata    <= 0;
        m_axi_bready   <= 0;
        m_axi_arvalid  <= 0;
        m_axi_araddr   <= 0;
        m_axi_rready   <= 0;
        user_rdata     <= 0;
        wr_flag        <= 0;
        rd_flag        <= 0;
        waddr          <= 0;
        raddr          <= 0;
        wdata          <= 0;
        rdata          <= 0;
        wr_error       <= 0;
        rd_error       <= 0;
        wr_ready       <= 0;
        rd_ready       <= 0;
    end else begin
        case (state)
        idle: begin
            m_axi_awvalid  <= 0;
            m_axi_awaddr   <= 0;
            m_axi_wvalid   <= 0;
            m_axi_wdata    <= 0;
            m_axi_bready   <= 0;
            m_axi_arvalid  <= 0;
            m_axi_araddr   <= 0;
            m_axi_rready   <= 0;
            user_rdata     <= 0;
            wr_flag        <= 0;
            rd_flag        <= 0;
            waddr          <= 0;
            raddr          <= 0;
            wdata          <= 0;
            rdata          <= 0;
            wr_error       <= 0;
            rd_error       <= 0;
            wr_ready       <= 0;
            rd_ready       <= 0;
            
            if (write == 1'b1) begin
                wr_flag   <= 1'b1;
                waddr     <= user_waddr; 
                wdata     <= user_wdata;
                state     <= send_awvalid;
            end else if (read == 1'b1) begin
                rd_flag   <= 1'b1;
                raddr     <= user_raddr;
                state     <= send_arvalid;
            end else begin
                state     <= idle;
            end
        end
        
        send_awvalid: begin
            if (wr_flag == 1'b1) begin
                wr_flag       <= 1'b0;
                m_axi_awvalid <= 1'b1;
                m_axi_awaddr  <= waddr;
                state <= send_wvalid;
            end
                else begin
                    state <= send_awvalid;
                end
            
        end

        // W channel
        send_wvalid: begin
          if (m_axi_awready == 1'b1) begin
                m_axi_awvalid <= 1'b0;
                m_axi_wvalid  <= 1'b1;
                m_axi_awaddr  <= 0;
            m_axi_wdata  <= wdata;
            end 
            if (m_axi_wready == 1'b1) begin
                m_axi_wvalid <= 1'b0;
                m_axi_wdata  <= 0;
                state <= send_bready;
            end
        end

        send_bready: begin
            if (m_axi_bvalid == 1'b1) begin
                m_axi_bready <= 1'b1;

                if (m_axi_bresp == 2'b00) begin
                    wr_ready     <= 1'b1;
                    state <= idle; 
                end 
                else if (m_axi_bresp == 2'b11) begin
                    state <= rcv_wr_err; 
                end 
                else begin 
                    state <= send_bready;  // m_axi_bresp가 안 온 경우
                end
            end 
            else begin
                state <= send_bready;  // m_axi_bvalid가 0이면 계속 대기
            end
        end


        rcv_wr_err : begin
          if(m_axi_bvalid == 1'b1) begin
          wr_error    <= 1'b1;
          wr_ready    <= 1'b1;
          state       <= idle;
          end
        end

//////////////////////////////////write complete
        send_arvalid: begin
            if (rd_flag == 1'b1) begin
                rd_flag       <= 1'b0;
                m_axi_arvalid <= 1'b1;
                m_axi_araddr  <= raddr;
                state <= rcv_arready;
            end 
            else state <= idle;
        end

        rcv_arready: begin
                if (m_axi_arready == 1'b1) begin
                    m_axi_arvalid <= 1'b0;
                    m_axi_araddr  <= 0;
                    state         <= send_rready;
                end else begin
                    state <= rcv_arready;
                end
        end

        send_rready: begin
            if (m_axi_rvalid == 1'b1) begin
                m_axi_rready <= 1'b1;
                rdata <= m_axi_rdata;
                if(m_axi_rresp == 2'b00) begin
                    state <= send_rdata;
                end 
                else if (m_axi_rresp == 2'b11) begin
                    state <= rcv_rd_err;
                end
                else begin
                    state <= send_rready;
                end
            end 
            
            else begin
                state <= send_rready;
            end
        end

        send_rdata: begin
            m_axi_rready <= 1'b0;
            rd_ready <= 1'b1;
            user_rdata <= rdata;
            state <= idle;
        end


        rcv_rd_err : begin
            rd_error <= 1'b1;
            rd_ready <= 1'b1;
            state       <= idle;
        end

        default: state <= idle; 

        endcase
    end
end

endmodule


module top_axi_potato(
    input axi_aclk,
    input axi_aresetn,

    input write,
    input read,
    input [31:0] user_waddr,
    input [31:0] user_wdata,
    input [31:0] user_raddr,
    output [31:0] user_rdata,
    
    output [15:0] led
);



    // AW Channel
    wire              axi_awvalid;
    wire              axi_awready;
    wire      [31: 0] axi_awaddr;
 
    // W Channel
     wire         axi_wvalid;
     wire         axi_wready;
     wire [31: 0] axi_wdata;
 
    // B Channel
    wire        axi_bvalid;
    wire         axi_bready;
    wire [1: 0]    axi_bresp;
 
    // AR Channel
    wire         axi_arvalid;
    wire       axi_arready;
    wire [31: 0] axi_araddr;
 
    // R Channel
    wire         axi_rvalid;
    wire         axi_rready;
    wire [31: 0] axi_rdata;
    wire [1: 0]  axi_rresp;


    // user signal
    // wire wr_error;
    // wire rd_error;
    // wire wr_ready;
    // wire rd_ready;



axilite_m m_dut(

                        .m_axi_aclk(axi_aclk),
                        .m_axi_aresetn(axi_aresetn),
                        .m_axi_awvalid(axi_awvalid),
                        .m_axi_awready(axi_awready),
                        .m_axi_awaddr(axi_awaddr),
                        .m_axi_wvalid(axi_wvalid),
                        .m_axi_wready(axi_wready),
                        .m_axi_wdata(axi_wdata),
                        .m_axi_bvalid(axi_bvalid),
                        .m_axi_bready(axi_bready),
                        .m_axi_bresp(axi_bresp),
                        .m_axi_arvalid(axi_arvalid),
                        .m_axi_arready(axi_arready),
                        .m_axi_araddr(axi_araddr),
                        .m_axi_rvalid(axi_rvalid),
                        .m_axi_rready(axi_rready),
                        .m_axi_rdata(axi_rdata),
                        .m_axi_rresp(axi_rresp),
                        .write(write),
                        .read(read),
                        .user_waddr(user_waddr),
                        .user_wdata(user_wdata),
                        .user_raddr(user_raddr),
                        .user_rdata(user_rdata)
                        // .wr_error(wr_error),
                        // .rd_error(rd_error),
                        // .wr_ready(wr_ready),
                        // .rd_ready(rd_ready) 
);

axilite_s s_dut(
             .s_axi_aclk(axi_aclk),
             .s_axi_aresetn(axi_aresetn),
             .s_axi_awvalid(axi_awvalid),
             .s_axi_awready(axi_awready),
             .s_axi_awaddr(axi_awaddr),
             .s_axi_wvalid(axi_wvalid),
             .s_axi_wready(axi_wready),
             .s_axi_wdata(axi_wdata),
             .s_axi_bvalid(axi_bvalid),
             .s_axi_bready(axi_bready),
             .s_axi_bresp(axi_bresp),
             .s_axi_arvalid(axi_arvalid),
             .s_axi_arready(axi_arready),
             .s_axi_araddr(axi_araddr),
             .s_axi_rvalid(axi_rvalid),
             .s_axi_rready(axi_rready),
             .s_axi_rdata(axi_rdata),
             .s_axi_rresp(axi_rresp),
             .led(led)
);



endmodule






`timescale 1ns / 1ps







module axilite_s_for_ct_ip(
    // Global signal
    input  wire         s_axi_aclk,
    input  wire         s_axi_aresetn,

    // AW Channel
    input  wire         s_axi_awvalid,
    output reg          s_axi_awready,
    input  wire [31: 0] s_axi_awaddr,

    // W Channel
    input  wire         s_axi_wvalid,
    output reg          s_axi_wready,
    input  wire [31: 0] s_axi_wdata,

    // B Channel
    output reg          s_axi_bvalid,
    input  wire         s_axi_bready,
    output reg  [1: 0]  s_axi_bresp,

    // AR Channel
    input  wire         s_axi_arvalid,
    output reg          s_axi_arready,
    input  wire [31: 0] s_axi_araddr,

    // R Channel
    output reg          s_axi_rvalid,
    input  wire         s_axi_rready,
    output reg [31: 0]  s_axi_rdata,
    output reg  [1: 0]  s_axi_rresp,
    output reg  [15:0]  led
);

localparam idle            = 0, 
           send_wready     = 1,
           send_wdata      = 2,
           update_mem      = 3,
           send_wr_resp    = 4,
           send_wr_err     = 5,
           check_araddr    = 6,
           pop_data        = 7,
           send_rd_err     = 8;

reg [3:0] state      = idle;
reg [3:0] next_state = idle;
reg [1:0] count    = 0;
reg [31:0] waddr, raddr, wdata, rdata;

reg [31:0] mem [128];

always @(posedge s_axi_aclk) begin
    if (s_axi_aresetn == 1'b0) begin
        state <= idle;
        for (int i = 0; i < 128; i++) begin
            mem[i] <= 0;
        end
        s_axi_awready <= 0;
        s_axi_wready  <= 0;
        s_axi_bvalid  <= 0;
        s_axi_bresp   <= 0;
        s_axi_arready <= 0;
        s_axi_rvalid  <= 0;
        s_axi_rdata   <= 0;
        s_axi_rresp   <= 0;
        waddr         <= 0;
        raddr         <= 0;
        wdata         <= 0;
        rdata         <= 0;
    end else begin
        case (state)
            idle: begin
                s_axi_awready <= 0;
                s_axi_wready  <= 0;
                s_axi_bvalid  <= 0;
                s_axi_bresp   <= 0;
                s_axi_arready <= 0;
                s_axi_rvalid  <= 0;
                s_axi_rdata   <= 0;
                s_axi_rresp   <= 0;
                waddr         <= 0;
                raddr         <= 0;
                wdata         <= 0;
                rdata         <= 0;
                count         <= 0;
                s_axi_rvalid  <= 1'b0;
                
                if (s_axi_awvalid == 1'b1) begin
                    state         <= send_wready;
                    waddr         <= s_axi_awaddr;
                    s_axi_awready <= 1'b1;
                end else if (s_axi_arvalid == 1'b1) begin
                    state         <= check_araddr;
                    raddr         <= s_axi_araddr;
                    s_axi_arready <= 1'b1;
                end else begin
                    state         <= idle;
                end
            end
            
            send_wready: begin
                s_axi_awready <= 1'b0;
                if (s_axi_wvalid) begin
                    wdata        <= s_axi_wdata;
                    s_axi_wready <= 1'b1;
                    state        <= send_wdata;
                end else begin
                    state        <= send_wready;
                end
            end

            send_wdata: begin
                s_axi_wready <= 1'b0;
                if (waddr < 128) begin
                    state      <= update_mem;
                    mem[waddr] <= wdata;
                end else begin
                    state        <= send_wr_err;
                    s_axi_bresp  <= 2'b11;
                    s_axi_bvalid <= 1'b1;
                end
            end

            update_mem: begin
                mem[waddr] <= wdata;
                state      <= send_wr_resp;
            end

            send_wr_resp: begin
                s_axi_bresp  <= 2'b00;
                s_axi_bvalid <= 1'b1;
                if (s_axi_bready) begin
                    state <= idle;
                end else begin
                    state <= send_wr_resp;
                end
            end

            send_wr_err: begin
                if (s_axi_bready) begin
                    state <= idle;
                end else begin
                    state <= send_wr_err;
                end
            end
////////////////////////// write complete
            check_araddr: begin
                s_axi_arready <= 1'b0;
                if (raddr < 128) begin
                    state <= pop_data;
                end else begin
                    s_axi_rvalid <= 1'b1;  // rvalid가 3clk이 켜져있는 것은 여기 state에 아래있는 code를 다른 state로 넣고 거기서 rvalid를 0으로 주면 해결될 것 같다.
                    state        <= send_rd_err;
                    s_axi_rdata  <= 0;
                    s_axi_rresp  <= 2'b11;
                end
            end

            pop_data: begin
                if (count < 2) begin
                    rdata <= mem[raddr];
                    state <= pop_data;
                    count <= count + 1;
                end else begin
                    s_axi_rvalid <= 1'b1;  // rvalid가 3clk이 켜져있는 것은 여기 state에 아래있는 code를 다른 state로 넣고 거기서 rvalid를 0으로 주면 해결될 것 같다.
                    s_axi_rdata  <= rdata; 
                    s_axi_rresp  <= 2'b00;
                    if (s_axi_rready) begin
                        state <= idle;
                    end else begin
                        state <= pop_data;
                    end
                end
            end

            send_rd_err: begin
                if (s_axi_rready) begin
                    state <= idle;
                end else begin
                    state <= send_rd_err;
                end
            end

            default: state <= idle;
        endcase
    end
end

    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            led = 0;
        end
        else begin
            led = mem[0][15:0];
        end
    end

endmodule
 

module axilite_m_for_ct_ip(
    // Global signal
    input  wire        m_axi_aclk,
    input  wire        m_axi_aresetn,

    // AW Channel
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,
    output reg [31: 0] m_axi_awaddr,
 
    // W Channel
    output reg         m_axi_wvalid,
    input  wire        m_axi_wready,
    output reg [31: 0] m_axi_wdata,
 
    // B Channel
    input  wire       m_axi_bvalid,
    output reg        m_axi_bready,
    input  [1: 0]     m_axi_bresp,
 
    // AR Channel
    output reg         m_axi_arvalid,
    input   wire       m_axi_arready,
    output reg [31: 0] m_axi_araddr,
 
    // R Channel
    input  wire        m_axi_rvalid,
    output reg         m_axi_rready,
    input wire [31: 0] m_axi_rdata,
    input wire [1: 0]  m_axi_rresp,

    // user signal
    input wire write,
    input wire read,
    input wire [31:0] user_waddr,
    input wire [31:0] user_wdata,
    input wire [31:0] user_raddr,
    output reg [31:0] user_rdata,
    output reg wr_error,
    output reg rd_error,
    output reg wr_ready,
    output reg rd_ready 
);

localparam idle            = 0, 
           send_awvalid    = 1,
           send_wvalid     = 2,
           send_bready     = 3,
           rcv_wr_err      = 4,
           send_arvalid    = 5,
           rcv_arready     = 6,
           send_rready     = 7,
           send_rdata      = 8,
           rcv_rd_err      = 9;

           
reg [3:0] state      = idle;
reg [3:0] next_state = idle;
reg [31:0] waddr, raddr, wdata, rdata;
reg wr_flag, rd_flag; 
reg [31:0] mem [128];

always @(posedge m_axi_aclk) begin
    if (m_axi_aresetn == 1'b0) begin
        state <= idle;
        for (int i = 0; i < 128; i = i + 1) begin
            mem[i] <= 0;
        end
        m_axi_awvalid  <= 0;
        m_axi_awaddr   <= 0;
        m_axi_wvalid   <= 0;
        m_axi_wdata    <= 0;
        m_axi_bready   <= 0;
        m_axi_arvalid  <= 0;
        m_axi_araddr   <= 0;
        m_axi_rready   <= 0;
        user_rdata     <= 0;
        wr_flag        <= 0;
        rd_flag        <= 0;
        waddr          <= 0;
        raddr          <= 0;
        wdata          <= 0;
        rdata          <= 0;
        wr_error       <= 0;
        rd_error       <= 0;
        wr_ready       <= 0;
        rd_ready       <= 0;
    end else begin
        case (state)
        idle: begin
            m_axi_awvalid  <= 0;
            m_axi_awaddr   <= 0;
            m_axi_wvalid   <= 0;
            m_axi_wdata    <= 0;
            m_axi_bready   <= 0;
            m_axi_arvalid  <= 0;
            m_axi_araddr   <= 0;
            m_axi_rready   <= 0;
            user_rdata     <= 0;
            wr_flag        <= 0;
            rd_flag        <= 0;
            waddr          <= 0;
            raddr          <= 0;
            wdata          <= 0;
            rdata          <= 0;
            wr_error       <= 0;
            rd_error       <= 0;
            wr_ready       <= 0;
            rd_ready       <= 0;
            
            if (write == 1'b1) begin
                wr_flag   <= 1'b1;
                waddr     <= user_waddr; 
                wdata     <= user_wdata;
                state     <= send_awvalid;
            end else if (read == 1'b1) begin
                rd_flag   <= 1'b1;
                raddr     <= user_raddr;
                state     <= send_arvalid;
            end else begin
                state     <= idle;
            end
        end
        
        send_awvalid: begin
            if (wr_flag == 1'b1) begin
                wr_flag       <= 1'b0;
                m_axi_awvalid <= 1'b1;
                m_axi_awaddr  <= waddr;
                state <= send_wvalid;
            end
                else begin
                    state <= send_awvalid;
                end
            
        end

        // W channel
        send_wvalid: begin
          if (m_axi_awready == 1'b1) begin
                m_axi_awvalid <= 1'b0;
                m_axi_wvalid <= 1'b1;
            m_axi_wdata  <= wdata;
            end 
            if (m_axi_wready == 1'b1) begin
                m_axi_wvalid <= 1'b0;
                state <= send_bready;
            end
        end

        send_bready: begin
            if (m_axi_bvalid == 1'b1) begin
                m_axi_bready <= 1'b1;
            // bready가 3clk이 켜져있는 것은 여기 state에 아래있는 code를 다른 state로 넣고 거기서 bready를 0으로 주면 해결될 것 같다.
                if (m_axi_bresp == 2'b00) begin
                    wr_ready     <= 1'b1;
                    state <= idle; 
                end 
                else if (m_axi_bresp == 2'b11) begin
                    state <= rcv_wr_err; 
                end 
                else begin 
                    state <= send_bready;  // m_axi_bresp가 안 온 경우
                 // 만약 m_axi_bresp == 2'bz가 오면 idle로 보내야 하나?
                end
            end 
            else begin
                state <= send_bready;  // m_axi_bvalid가 0이면 계속 대기
            end
        end


        rcv_wr_err : begin
          if(m_axi_bvalid == 1'b1) begin
          wr_error    <= 1'b1;
          wr_ready    <= 1'b1;
          state       <= idle;
          end
        end

//////////////////////////////////write complete
        send_arvalid: begin
            if (rd_flag == 1'b1) begin
                rd_flag       <= 1'b0;
                m_axi_arvalid <= 1'b1;
                m_axi_araddr  <= raddr;
                state <= rcv_arready;
            end 
            else state <= idle;
        end

        rcv_arready: begin
                if (m_axi_arready == 1'b1) begin
                    m_axi_arvalid <= 1'b0;
                    state         <= send_rready;
                end else begin
                    state <= rcv_arready;
                end
        end

        send_rready: begin
            if (m_axi_rvalid == 1'b1) begin
                m_axi_rready <= 1'b1;
                rdata <= m_axi_rdata;
                if(m_axi_rresp == 2'b00) begin
                    state <= send_rdata;
                end 
                else if (m_axi_rresp == 2'b11) begin
                    state <= rcv_rd_err;
                end
                else begin
                    state <= send_rready;
                end
            end 
            
            else begin
                state <= send_rready;
            end
        end

        send_rdata: begin
            m_axi_rready <= 1'b0;
            rd_ready <= 1'b1;
            user_rdata <= rdata;
            state <= idle;
        end


        rcv_rd_err : begin
            rd_error <= 1'b1;
            rd_ready <= 1'b1;
            state       <= idle;
        end

        default: state <= idle; 

        endcase
    end
end

endmodule