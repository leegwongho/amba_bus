module AXI_BFM(
    input clk,
    input reset_n,
    input [31:0] U_ADRR,
    input [15:0] SW,
    output reg C_VALID,
    output reg [31:0] C_ADRR,
    output reg [31:0] C_DATA,
    output reg [3:0] C_STRB,
    output reg C_VALID_R,
    output reg [31:0] C_ADRR_R,
    output reg [14:0] led
    );

    wire flag_m;
    assign flag_m = SW[15] ? 1 : 0;

    reg [10:0] clk_div;

    always@(posedge clk) begin
        if(!reset_n)
            clk_div <= 0;
        else
            clk_div <= clk_div + 1;
    end

    //WRITE
    always@(posedge clk) begin
        if(!reset_n) begin
            C_VALID <= 0;
            C_ADRR <= 0;
            C_DATA <= 0;
            C_STRB <= 0;
        end
        else begin
            C_DATA <= {16'b0, SW[14:0]}; // sw[14:0]를 쓰기 데이터로 사용
            C_ADRR <= 0;                // 주소 0
            C_STRB <= 4'b1111;            // 전체 4바이트를 모두 쓰기
            if (flag_m == 1) begin 
                C_VALID <= 1;
                if (clk_div[1]) begin
                    C_VALID <= 0;
                end
            end
        end
    end

    // 읽기 로직
    always @(posedge clk) begin
        if (!reset_n) begin
            C_VALID_R <= 0;
            //U_BLEN <= 0;
            led = 16'b1000_0000_0000_0000;
        end
        else begin
            C_ADRR_R <= 0;            // 읽기 주소 0
            //C_STRB <= 4'b1111;        // 읽기 길이 설정 (4번 읽기)
            
            if (flag_m == 0) begin
                C_VALID_R <= 1;      // 읽기 유효 신호 설정
                if (clk_div[1]) begin
                    C_VALID_R <= 0; 
                    led <= U_ADRR[14:0];
                end
            end
        end
    end
    
endmodule
