`timescale 1ns / 1ps










module bfm (
    input  wire        clk,
    input  wire        resetn,

    // user signal
    output reg write,
    output reg read,
    output reg [31:0] user_waddr,
    output reg [31:0] user_wdata,
    output reg [31:0] user_raddr,
    input  wire [31:0] user_rdata,
    input  wire wr_ready,
    input  wire rd_ready,
    input  wire [14:0] sw,
    input  wire sw15,
    output reg [15:0] led
);

    reg [16:0] clk_div;

    // 클럭 분주기
    always @(posedge clk) 
        clk_div <= clk_div + 1;

    wire wr_rd;
    assign wr_rd = sw15 ? 1 : 0;

    always @(posedge clk) begin
        if(resetn == 1'b0) begin
            // 리셋 시 모든 신호 초기화
            write       <= 1'b0;
            read        <= 1'b0;
            user_waddr  <= 32'h0;
            user_wdata  <= 32'h0;
            user_raddr  <= 32'h0;
            led         <= 16'b0;
        end 
        else begin
            if (wr_rd == 1'b1) begin
                // 쓰기 작업
                write      <= 1'b1;
                user_waddr <= 32'h0;         // 주소는 0으로 고정
                user_wdata <= {17'b0, sw};   // sw 신호를 32비트로 변환
            end
            
            if (wr_ready) begin
                // 쓰기 준비 완료 시
                write      <= 1'b0;
                user_waddr <= 32'h0;
            end

            if (wr_rd == 1'b0) begin
                // 읽기 작업
                read       <= 1'b1;
                user_raddr <= 32'h0;
                
                if (rd_ready) begin
                    // 읽기 준비 완료 시 LED에 데이터 출력
                    led <= user_rdata[15:0]; // 하위 16비트만 출력
                end
            end
        end
    end
endmodule
