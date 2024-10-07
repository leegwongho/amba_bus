// module bfm(
//     input clk,
//     input reset,
//     input   [31:0]  U_RDATA,
//     input [15:0]    sw,
//     output reg  U_WVALID,
//     output reg  [31:0] U_AWADDR,
//     output reg  [31:0] U_WDATA,
//     output reg  [3:0]  U_STRB,
//     output reg  U_RVALID,
//     output reg  [31:0]  U_ARADDR,
//     output reg  [3:0]   U_BLEN,
//     output reg  [15:0]  led);


//     reg [2:0] flag, flag_r;
//     wire flag_m;
//     assign flag_m = sw[15] ? 1 : 0;
    

//     always @( posedge clk) begin
//         if (!reset)begin
//             U_WVALID = 0;
//             U_AWADDR = 0;
//             U_WDATA = 0;
//             U_STRB = 0;
//             flag = 1;
//             flag_r = 0;
//         end
//         else begin 

//             if (flag_m)begin
//                 if (flag == 1) begin
//                     U_WDATA = sw[14:0];
//                     U_AWADDR = 0;
//                     U_STRB = 4'b1111;
//                     U_WVALID = 1;
//                     flag = 2;
//                     flag_r = 0;
//                 end
//                 else if (flag == 2) begin
//                     U_WVALID = 0;
                    
//                     flag = 3;
                    
//                     flag_r = 0;
//                 end
//                 else if (flag == 3) begin
//                     flag = 4;
//                     flag_r = 0;
//                 end
//                 else if (flag == 4) begin
//                     flag = 0;
//                     flag_r = 0;
//                 end
//                 else if (flag == 0) begin
//                     flag = 1;
//                     flag_r = 0;
//                 end
//             end
//             if (!flag_m) begin
//                 if (flag_r == 0) begin
//                     U_ARADDR = 0;
//                     U_BLEN = 4'b1111;
//                     flag_r = 1;
//                     flag = 1;
//                 end
//                 else if (flag_r == 1) begin
//                     flag_r = 2;
//                     U_RVALID = 1;
//                     flag = 1;
//                 end
//                 else if (flag_r == 2) begin
//                     U_RVALID = 0;
//                     flag_r = 3;
//                     led = U_RDATA[15:0];
//                     flag = 1;
//                 end
//                 else if (flag_r == 3) begin
//                     flag_r = 4;
//                     flag = 1;
//                 end
//                 else if (flag_r == 4) begin
//                     flag_r = 0;
//                     flag = 1;
//                 end
//             end
//     end
//     end




// // endmodule

// module bfm(
//     input clk,
//     input reset,  // High-active reset으로 가정
//     input   [31:0]  U_RDATA,
//     input [15:0]    sw,
//     output reg  U_WVALID,
//     output reg  [31:0] U_AWADDR,
//     output reg  [31:0] U_WDATA,
//     output reg  [3:0]  U_STRB,
//     output reg  U_RVALID,
//     output reg  [31:0]  U_ARADDR,
//     output reg  [3:0]   U_BLEN,
//     output reg  [15:0]  led);

//     reg [2:0] flag, flag_r;
//     wire flag_m;
//     assign flag_m = sw[15] ? 1 : 0;

//     reg [20:0] clk_div;

//     always @ (posedge clk) clk_div = clk_div + 1; 

//     always @(posedge clk) begin
//         if (!reset) begin  
//             U_WVALID <= 0;
//             U_AWADDR <= 0;
//             U_WDATA <= 0;
//             U_STRB <= 0;
//             flag <= 1; 
//         end 
//         else if (flag_m) begin 
//             U_WDATA <= sw[14:0];   // sw[14:0] 값을 쓰기 데이터로 사용
//             U_AWADDR <= 0;         // 주소 0
//             U_STRB <= 4'b1111;     // 전체 4바이트를 모두 쓰기
//             if (clk_div[7]) begin
//                 U_WVALID <= 1;
//             end
//             else begin
//                 U_WVALID <= 0;
//             end
//         end
//     end



//     always @(posedge clk) begin
//         if (!reset) begin
//             flag_r <= 0;
//             U_RVALID <= 0;  // 리셋 시 U_RVALID도 초기화
//             led <= 0;       // 리셋 시 LED도 초기화
//             U_BLEN <= 0;
//         end
//         else if (!flag_m)begin
//                 U_ARADDR <= 0;        // 읽기 주소 0
//                 U_BLEN <= 4'b1111;    // 읽기 길이 설정 (4번 읽기)
//             if (clk_div[7]) begin
//                 U_RVALID <= 1;  // 읽기 유효 신호 설정 
//             end
//             else begin
//                 U_RVALID <= 0; 
//                 led <= U_RDATA[15:0];
//             end
//         end
//     end

// endmodule

// module bfm(
//     input clk,
//     input reset,  // Low-active reset
//     input   [31:0]  U_RDATA,
//     input [15:0]    sw,
//     output reg  U_WVALID,
//     output reg  [31:0] U_AWADDR,
//     output reg  [31:0] U_WDATA,
//     output reg  [3:0]  U_STRB,
//     output reg  U_RVALID,
//     output reg  [31:0]  U_ARADDR,
//     output reg  [3:0]   U_BLEN,
//     output reg  [14:0]  led);

//     wire flag_m;
//     assign flag_m = sw[15] ? 1 : 0;

//     reg [10:0] clk_div;

//     // 클럭 분주기를 리셋 시 초기화
//     always @ (posedge clk or negedge reset) begin
//         if (!reset)
//             clk_div <= 0;   // Reset active 시 clk_div 초기화
//         else
//             clk_div <= clk_div + 1; 
//     end

//     // 쓰기 로직
//     always @(posedge clk or negedge reset) begin
//         if (!reset) begin  // Reset active 시 초기화
//             U_WVALID <= 0;
//             U_AWADDR <= 0;
//             U_WDATA <= 0;
//             U_STRB <= 0;
//         end 
//         else if (clk_div[5]) begin 
//             if (flag_m == 1) begin
//                 U_WDATA <= sw[14:0];   // sw[14:0] 값을 쓰기 데이터로 사용
//                 U_AWADDR <= 0;         // 주소 0
//                 U_STRB <= 4'b1111;     // 전체 4바이트를 모두 쓰기
//                 U_WVALID <= 1;
//             end
//         end
//         else begin
//             U_WVALID <= 0;
//         end
//     end

//     // 읽기 로직
//     always @(posedge clk or negedge reset) begin
//         if (!reset) begin  // Reset active 시 초기화
//             U_RVALID <= 0;  // 리셋 시 U_RVALID도 초기화
//             led <= 0;       // 리셋 시 LED도 초기화
//             U_BLEN <= 0;
//         end
//         else if (clk_div[5]) begin
//             if (flag_m == 0) begin
//                 U_ARADDR <= 0;        // 읽기 주소 0
//                 U_BLEN <= 4'b1111;    // 읽기 길이 설정 (4번 읽기)
//                 U_RVALID <= 1;        // 읽기 유효 신호 설정
//             end
//         end
//         else begin
//             U_RVALID <= 0; 
//             led <= U_RDATA[14:0];
//         end
//     end
// endmodule

// module bfm(
//     input clk,
//     input reset,  // Low-active reset
//     input   [31:0]  U_RDATA,
//     input [15:0]    sw,
//     output reg  U_WVALID,
//     output reg  [31:0] U_AWADDR,
//     output reg  [31:0] U_WDATA,
//     output reg  [3:0]  U_STRB,
//     output reg  U_RVALID,
//     output reg  [31:0]  U_ARADDR,
//     output reg  [3:0]   U_BLEN,
//     output reg  [14:0]  led
// );

//     wire flag_m;
//     assign flag_m = sw[15] ? 1 : 0;

//     reg [10:0] clk_div;

//     // 클럭 분주기를 리셋 시 초기화
//     always @ (posedge clk or negedge reset) begin
//         if (!reset)
//             clk_div <= 0;   // Reset active 시 clk_div 초기화
//         else
//             clk_div <= clk_div + 1; 
//     end

//     // 쓰기 로직
//     always @(posedge clk or negedge reset) begin
//         if (!reset) begin
//             U_WVALID <= 0;
//             U_AWADDR <= 0;
//             U_WDATA <= 0;
//             U_STRB <= 0;
//         end 
//         else if (clk_div[5]) begin 
//             if (flag_m == 1) begin
//                 U_WDATA <= sw[14:0];   // sw[14:0] 값을 쓰기 데이터로 사용
//                 U_AWADDR <= 0;         // 주소 0
//                 U_STRB <= 4'b1111;     // 전체 4바이트를 모두 쓰기
//                 U_WVALID <= 1;
//             end
//         end
//         else begin
//             U_WVALID <= 0;
//         end
//     end

//     // 읽기 로직
//     always @(posedge clk or negedge reset) begin
//         if (!reset) begin
//             U_RVALID <= 0;
//             led <= 0;
//             U_BLEN <= 0;
//         end
//         else begin
//             U_ARADDR <= 0;        // 읽기 주소 0
//             U_BLEN <= 4'b1111;    // 읽기 길이 설정 (4번 읽기)
//             if (flag_m == 0) begin
//                 if (clk_div[5]) begin
//                     U_RVALID <= 1;        // 읽기 유효 신호 설정
//                 end
//                 else begin
//                     U_RVALID <= 0; 
//                     led <= U_RDATA[14:0];
//                 end
//             end
//         end
//     end

// endmodule

module bfm(
    input clk,
    input reset,  
    input   [31:0]  U_RDATA,
    input [15:0]    sw,
    output reg  U_WVALID,
    output reg  [31:0] U_AWADDR,
    output reg  [31:0] U_WDATA,
    output reg  [3:0]  U_STRB,
    output reg  U_RVALID,
    output reg  [31:0]  U_ARADDR,
    output reg  [3:0]   U_BLEN,
    output reg  [14:0]  led
);

    wire flag_m;
    assign flag_m = sw[15] ? 1 : 0;

    reg [10:0] clk_div;

    // 클럭 분주기를 리셋 시 초기화
    always @ (posedge clk) begin
        if (!reset)
            clk_div <= 0;   // Reset active 시 clk_div 초기화
        else
            clk_div <= clk_div + 1; 
    end

    // 쓰기 로직
    always @(posedge clk) begin
        if (!reset) begin
            U_WVALID <= 0;
            U_AWADDR <= 0;
            U_WDATA <= 0;
            U_STRB <= 0;
        end 
        else begin
            U_WDATA <= {16'b0, sw[14:0]}; // sw[14:0]를 쓰기 데이터로 사용
            U_AWADDR <= 0;                // 주소 0
            U_STRB <= 4'b1111;            // 전체 4바이트를 모두 쓰기
            if (flag_m == 1) begin 
                U_WVALID <= 1;
                if (clk_div[1]) begin
                    U_WVALID <= 0;
                end
            end
        end
    end

    // 읽기 로직
    always @(posedge clk) begin
        if (!reset) begin
            U_RVALID <= 0;
            U_BLEN <= 0;
            led = 16'b1000_0000_0000_0000;
        end
        else begin
            U_ARADDR <= 0;            // 읽기 주소 0
            U_BLEN <= 4'b1111;        // 읽기 길이 설정 (4번 읽기)
            
            if (flag_m == 0) begin
                U_RVALID <= 1;      // 읽기 유효 신호 설정
                if (clk_div[1]) begin
                    U_RVALID <= 0; 
                    led <= U_RDATA[14:0];
                end
            end
        end
    end
    
endmodule