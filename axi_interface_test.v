// 명령의 시작부터 명령 처리 종료까지의 한 묶음의 처리를
// 트랜잭션(transaction)라고 부르고 있다. 예를 들면
// 읽기 처리의 경우, 읽기 명령을 시작하고 나서 데이터를 읽어낼 때
// 까지를 가리킨다.

module axi_interface_test #(
    parameter integer DATA_WIDTH        = 32,
    parameter integer ADDR_WIDTH        = 5
)(
    // 클럭 신호
    input axi_clk,
    // 리셋
    input axi_reset,
    // 쓰기 주소 
    input [ADDR_WIDTH - 1 : 0] axi_addr,
    // 트랜젝션이 데이터 접근인지 명령어 접근인지를 알려준다. 
    input [2:0] axi_awprot,
    // 마스터가 유효한 쓰기 주소를 보낸다는것을 알려준다.
    input axi_awvalid,
    // 슬레이브가 주소 및 관련 제어 신호를 수신할 준비가 되었다는것을 알려준다.
    output axi_awready,
    // 데이터 작성, 마스터가 송신 슬레이브가 수신
    input [DATA_WIDTH - 1 : 0] aix_wdata,
    // Write strobes, 이 신호는 쓰기 전송중에 업데이트할 바이트 레인을 나타냅니다.  
    // 쓰기데이터 8bit마다 하나의 Strobe가 있어서 PSTRB [n]은 PWDATA [(8n + 7) :( 8n)]
    // 에 해당합니다. 읽기 전송 중에는 쓰기 스트로브가 활성화되지 않아야 합니다.
    input [(DATA_WIDTH/8) - 1 : 0] axi_wstrb,
    // 유효한 쓰기 데이터와 스트로브를 사용할수있음을 알려준다.
    input axi_wvalid,
    // 슬레이브가 쓰기데이터를 받을수있음을 나타낸다.
    output aix_wready,
    // 쓰기 트랜젝션의 상태를 나타낸다.
    output [1:0] aix_bresp,
    // 채널이 유효한 쓰기 응답을 보내고있음을 알려준다.
    output axi_bvalid,
    // 응답 준비완료 마스터가 쓰기 응답에 수신할수있다. - 마스터가 하고있는 일이없다?
    input axi_bready,
    // 읽기 주소 마스터 송신, 슬레이브 수신,
    input [ADDR_WIDTH - 1 : 0] axi_araddr,
    // 트랜젝션이 데이터 접근인지, 명령어 접근인지 알려준다.
    input [2:0] axi_arprot,
    // 유효한 읽기 주소를 보낸다는것을 알려준다. 
    input aix_arvalid,
    // 슬레이브가 주소 및 관련 제어 신호를 수신할 준비가 되었다는것을 알려준다.
    output axi_arready,
    // 데이터 읽기 슬레이브 송신
    output [DATA_WIDTH - 1 : 0] axi_rdata,
    // 트랜젝션의 상태를 나타낸다.
    output [1:0] axi_rresp,
    // 채널이 필요한 읽기 데이터에 대한 신호를 보내고있음을 나타낸다.
    output axi_rvalid
    // 마스터가 읽기 데이터 및 응답 정보를 수신할수있음을 나타냄
);





endmodule