`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/21 10:00:07
// Design Name: 
// Module Name: test_top_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module fnd_test_top( clk, reset_p, com , value, seg_7 );
input clk, reset_p ;
input [15:0] value;
output [3:0] com;
output [7:0] seg_7;
    
    
    fnd_4digit_cntr( clk, reset_p, com , value, seg_7  );
    
    
    
    
    
    
endmodule


module ring_count_16bit_led ( clk, reset_p, led );
input clk, reset_p ;
output [15:0] led;



    ring_counter_16bit r_con(.clk(clk), .reset_p(reset_p),  .q(led));   
    


endmodule


module button_cntr(
    input btn, clk, reset_p,
    output btn_pedge, btn_nedge
);

wire  btn_clk;

reg [16:0] clk_div;

reg debounced_btn;

always @ (posedge clk) clk_div = clk_div  + 1; 

edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .p_edge(btn_clk));


always @(posedge clk, posedge reset_p) begin
    if(reset_p) debounced_btn = 0;
    else if (btn_clk) debounced_btn = btn;
end



 edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(debounced_btn), .p_edge(btn_pedge), .n_edge(btn_nedge)); //Ŭ���� ����ȭ�� ���ؼ� btn_clk�� �ٷ� ���������? �ʴ°ǰ� 
     
endmodule


module watch_top(
input clk, reset_p,
output [7:0] seg_7,
output [3:0] com);

wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;

wire [3:0] w_sec1, w_sec10, w_min1, w_min10;

wire [15:0] w_value;

assign w_value = {w_min10, w_min1,w_sec10,w_sec1};

clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));

clock_div_60 i_m_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_s_clk), .cp_div_60_nedge(w_m_clk) );
    
counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_s_clk) , .bcd10(w_sec10), .bcd1(w_sec1) );

counter_bcd_60 min_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_m_clk) , .bcd10(w_min10), .bcd1(w_min1) );

fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(w_value), .seg_7(seg_7) );

endmodule

module time_set_mode_clock_top(
input clk, reset_p,
input [2:0] btn_ctr,
output [7:0] seg_7,
output [3:0] com,
output mode_led);

wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;

wire [3:0] w_sec1, w_sec10, w_min1, w_min10;

wire [15:0] w_value;

wire w_mode, sec_up_btn, min_up_btn, w_set_watch;

wire w_inc_sec, w_inc_min;

    button_cntr mode_set0( .btn(btn_ctr[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(w_mode)); // btn0 �� ���? �� ���?
 
    button_cntr sec_up( .btn(btn_ctr[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(sec_up_btn));  // btn1�� sec_up���� ���?
 
    button_cntr min_up( .btn(btn_ctr[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(min_up_btn)); // btn2�� sec_up���� ���?

    T_flip_flop_p t_mode( .clk(clk), .reset_p(reset_p), .t(w_mode), .q(w_set_watch));                       //t�ø��÷����� mode �� ���� 

assign w_inc_sec = w_set_watch ? sec_up_btn : w_s_clk;                          // w_inc_sec  ��ġ ���? 1�̸� ��ư �Է°� ���? 0�̸� �ð�

assign w_inc_min = w_set_watch ? min_up_btn : w_m_clk;                        // w_inc_min  ��ġ ���? 1�̸� ��ư �Է°� ���? 0�̸� �ð�

assign mode_led = w_set_watch;                                                                  // mode���� led

assign w_value = {w_min10, w_min1,w_sec10,w_sec1};

clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));

clock_div_60 i_m_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_inc_sec), .cp_div_60_nedge(w_m_clk) );       
    
counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_inc_sec) , .bcd10(w_sec10), .bcd1(w_sec1) );  // w_inc_sec �� ������  clk_time �� ���Ѵ� 

counter_bcd_60 min_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_inc_min) , .bcd10(w_min10), .bcd1(w_min1) );  // w_inc_min �� ������  clk_time �� ���Ѵ� 

fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(w_value), .seg_7(seg_7) );


// �̷��� �����? �ʿ� ���� ��߳�? 59�ʿ� 1���̿ö��� ���� �Ƹ� Ŭ���� ����ؼ�? �ö󰡴µ� �ʿ� �и� ���������� �÷��� �׷���?  ���̶� �ʶ� ���� �����? ���� �ᱹ

// 30�� �̻󿡼� ���? �����? ���� �ö� ������ ���? �����Ҷ�   clk_time �� 1���� 0���� �������µ� �̶� ���� �߻� �� ������ �����ؼ� ���� �ö� 
endmodule

module loadable_time_set_mode_clock_top(
input clk, reset_p,
input [2:0] btn_ctr,
output [7:0] seg_7,
output [3:0] com,
output mode_led
);

wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;

wire [3:0] w_watch_sec1, w_watch_sec10,  w_watch_min1,  w_watch_min10, set_sec10, set_sec1, set_min10, set_min1;

wire [15:0]  w_set_value, set_watch_value, w_watch_value;

wire w_mode, sec_up_btn, min_up_btn, w_set_watch;

wire w_inc_sec; // w_inc_min; �ʿ� ���� 

wire watch_time_load_en, set_time_load_en;

    button_cntr mode_set0( .btn(btn_ctr[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(w_mode)); 
 
    button_cntr sec_up( .btn(btn_ctr[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(sec_up_btn));  
 
    button_cntr min_up( .btn(btn_ctr[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(min_up_btn)); 

    T_flip_flop_p t_mode( .clk(clk), .reset_p(reset_p), .t(w_mode), .q(w_set_watch));             
    
     edge_detector_n  t_p_n_edge (.clk(clk), .reset_p(reset_p), .cp(w_set_watch), .n_edge(watch_time_load_en), .p_edge(set_time_load_en));         

assign w_inc_sec = w_set_watch ? sec_up_btn : w_s_clk;                       

// assign w_inc_min = w_set_watch ? min_up_btn : w_m_clk;              //�ʿ����?        

assign mode_led = w_set_watch;                                                                  

assign w_watch_value = {w_watch_min10 , w_watch_min1,w_watch_sec10, w_watch_sec1};

assign w_set_value = {set_min10, set_min1, set_sec10, set_sec1};

assign set_watch_value = w_set_watch ? w_set_value : w_watch_value;

clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));

clock_div_60 i_m_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_inc_sec), .cp_div_60_nedge(w_m_clk) );       
    
 loadable_counter_bcd_60 sec_watch (.clk(clk), .reset_p(reset_p), .clk_time(w_s_clk), .load_enable(watch_time_load_en),
                                                                   .load_bcd10(set_sec10), .load_bcd1(set_sec1), .bcd10(w_watch_sec10), .bcd1(w_watch_sec1) );

 loadable_counter_bcd_60 min_watch (.clk(clk), .reset_p(reset_p), .clk_time(w_m_clk), .load_enable(watch_time_load_en),
                                                                   .load_bcd10(set_min10), .load_bcd1(set_min1), .bcd10(w_watch_min10), .bcd1(w_watch_min1) );
                                                                   
 loadable_counter_bcd_60 sec_set (.clk(clk), .reset_p(reset_p), .clk_time(sec_up_btn), .load_enable(set_time_load_en),
                                                                   .load_bcd10(w_watch_sec10), .load_bcd1(w_watch_sec1), .bcd10(set_sec10), .bcd1(set_sec1) );

 loadable_counter_bcd_60 min_set (.clk(clk), .reset_p(reset_p), .clk_time(min_up_btn), .load_enable(set_time_load_en),
                                                                   .load_bcd10(w_watch_min10), .load_bcd1(w_watch_min1), .bcd10(set_min10), .bcd1(set_min1));
 

fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(set_watch_value), .seg_7(seg_7) );


endmodule


module stop_watch_msec_sec(
    input clk, reset_p,
    input [1:0]btn_ctr,
    output [7:0] seg_7,
    output [3:0] com,
    output [1:0] led
);
    
    wire btn0_pedge, btn1_pedge, start_stop, lap;
    
    wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
    
    wire [3:0] w_sec1, w_sec10;

    
    button_cntr btn_start( .btn(btn_ctr[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn0_pedge)); 

    T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn0_pedge), .q(start_stop));             

    button_cntr btn_lap( .btn(btn_ctr[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn1_pedge)); 
    
    T_flip_flop_p t_lap ( .clk(clk), .reset_p(reset_p), .t(btn1_pedge), .q(lap)); 
    
    wire clk_start;
    
    assign clk_start = start_stop ? clk: 0;
    
    clock_div_100 i_us_clk( .clk(clk_start), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
    clock_div_1000 i_ms_clk(.clk(clk_start), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
    wire w_10ms_clk;
    
    wire [3:0] w_10msec1, w_10msec10; // wire �����ҋ� ��Ʈ �� Ȯ��, �̸� Ȯ�� �Ұ�! 
    
    clock_div_10 i_10ms_clk( .clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk) , .cp_div_10_nedge(w_10ms_clk));
    
    clock_div_1000 i_s_clk (.clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));


    counter_bcd_100 msec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_10ms_clk) , .bcd10(w_10msec10), .bcd1(w_10msec1) );

    counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_s_clk) , .bcd10(w_sec10), .bcd1(w_sec1) );
    
    wire [15:0] cur_time;
    
    assign cur_time = {w_sec10, w_sec1,w_10msec10,w_10msec1};
    
    reg [15:0] lap_time;
    
    always@ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
                lap_time = 0;
        end
        else if (btn1_pedge) begin
            lap_time = cur_time;
        end
     end
     
    wire [15:0] value;

    assign value = lap ? lap_time : cur_time;
    
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    
    assign led[0] = start_stop;
    assign led[1] = lap;
    
endmodule



module cook_timer (
    input clk, reset_p,
    input [3:0] btn,
    output [7:0] seg_7,
    output [3:0] com,
    output  reg timeout_led,
    output buzz,
    output buzz_clk);
    
        wire [3:0] btn_pedge;
          
        button_cntr btstart( .btn(btn[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[0])); 
        reg start_stop;
    
        wire alarm_off, inc_min, inc_sec, btn_start;
    
        wire load_enable;
    
        
        wire w_us_clk, w_ms_clk, w_s_clk;
    
            
        wire [15:0] value, set_time, cur_time;

        wire [3:0] w_set_sec1, w_set_sec10, w_set_min1, w_set_min10;

        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
    
        wire dec_clk, dec_clk0;
    
        reg [16:0] clk_div;
        
        always @ (posedge clk) clk_div = clk_div +1;
        
        assign buzz_clk = timeout_led ? clk_div[10] : 0;
    
        assign {alarm_off, inc_min, inc_sec, btn_start} = btn_pedge;
    
        assign buzz = timeout_led;
        
        always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                start_stop = 0;
                timeout_led= 0;
                
            end
            else begin 
                if(btn_start) start_stop = ~start_stop;
                else if(cur_time == 0 && start_stop) begin 
                        start_stop = 0;
                         timeout_led =1;
                         
                  end
                 else if (alarm_off) timeout_led = 0; 
            end
        end
    
    
    //T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_pedge[0]), .q(start_stop));             


        button_cntr btn_inc_sec( .btn(btn[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[1])); 
    
        button_cntr btn_inc_min( .btn(btn[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[2])); 
    
        button_cntr btn_inc_alarm_stop( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[3])); 
    
    

        edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(start_stop), .p_edge(load_enable));


        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
    


        counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(inc_sec) , .bcd10(w_set_sec10), .bcd1(w_set_sec1) );

        counter_bcd_60 min_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(inc_min) , .bcd10(w_set_min10), .bcd1(w_set_min1) );


        loadable_down_counter_bcd_60 cur_sec(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(w_s_clk), .load_enable(btn_start),
                                                                .load_bcd10(w_set_sec10), .load_bcd1(w_set_sec1),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 cur_min(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(dec_clk), .load_enable(btn_start),
                                                                .load_bcd10(w_set_min10), .load_bcd1(w_set_min1),
                                                                .bcd10(cur_min10), .bcd1(cur_min1),  .dec_clk(dec_clk0) );

        assign set_time = {w_set_min10,w_set_min1,w_set_sec10,w_set_sec1};

        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};

        assign value = start_stop ? cur_time : set_time;
    
        
        
        
        fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    
    
    
    endmodule




module key_pad_test_top(
    input clk, reset_p,
    input [3:0] row,
    output  [3:0] col,  
    output [7:0] seg_7,
    output [3:0] com,
    output key_valid
);

    wire [3:0] key_value;
 
   

    keypad_cntr_FSM key_pad(clk, reset_p, row,  col, key_value, key_valid);

    wire [15:0] value ;
    assign value = {12'h000,key_value };

    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

endmodule 


module dht11_test_top(
    input clk, reset_p,
    inout dht11_data, 
    output [3:0] com,
    output [7:0]seg_7,
    output [5:0] led);

    
    wire [7:0] humidity,temperature;

    dht11_cntr  test_dht11  (clk, reset_p, dht11_data,
                                               humidity, temperature, led);
    
   
    wire [15:0] bcd_humi, bcd_temper;
    
    bin_to_dec bcd_humi_dec(
 .bin({4'b0000, humidity}),
 .bcd(bcd_humi)
 );
    
bin_to_dec bcd_tem(.bin({4'b0000, temperature}),
 .bcd(bcd_temper)
 );
    
     wire [15:0] value ;
    assign value = {bcd_humi[7:0], bcd_temper[7:0] };

     fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

    
endmodule


module test_HC_SR04(
    input clk, reset_p,
    input pulse_out,
    output TTL,
    output [3:0] com,
    output [7:0] seg_7,
    output [15:0] led
);

    wire [11:0] distance;
    wire [15:0] value;
    
    
    
    bin_to_dec bcd_make(  .bin(distance),
 .bcd(value)    );
    
    
    HC_SR04 test(  clk, reset_p, pulse_out,
                               TTL, distance, led);
    
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );


endmodule

module loadable_time_set_mode_clock_value(
input clk, reset_p,
input [2:0] btn_ctr,
output mode_led,
output [15:0] set_watch_value );

wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;

wire [3:0] w_watch_sec1, w_watch_sec10,  w_watch_min1,  w_watch_min10, set_sec10, set_sec1, set_min10, set_min1;

wire [15:0]  w_set_value, w_watch_value;

wire w_mode, sec_up_btn, min_up_btn, w_set_watch;

wire w_inc_sec; // w_inc_min; �ʿ� ���� 

wire watch_time_load_en, set_time_load_en;

//wire watch_en;

//    assign watch_en = en ? clk : 0;

    button_cntr mode_set0( .btn(btn_ctr[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(w_mode)); 
 
    button_cntr sec_up( .btn(btn_ctr[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(sec_up_btn));  
 
    button_cntr min_up( .btn(btn_ctr[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(min_up_btn)); 

    T_flip_flop_p t_mode( .clk(clk), .reset_p(reset_p), .t(w_mode), .q(w_set_watch));             
    
     edge_detector_n  t_p_n_edge (.clk(clk), .reset_p(reset_p), .cp(w_set_watch), .n_edge(watch_time_load_en), .p_edge(set_time_load_en));         

assign w_inc_sec = w_set_watch ? sec_up_btn : w_s_clk;                       

// assign w_inc_min = w_set_watch ? min_up_btn : w_m_clk;              //�ʿ����?        

assign mode_led = w_set_watch;                                                                  

assign w_watch_value = {w_watch_min10 , w_watch_min1,w_watch_sec10, w_watch_sec1};

assign w_set_value = {set_min10, set_min1, set_sec10, set_sec1};

assign set_watch_value = w_set_watch ? w_set_value : w_watch_value;

clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));

clock_div_60 i_m_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_inc_sec), .cp_div_60_nedge(w_m_clk) );       
    
 loadable_counter_bcd_60 sec_watch (.clk(clk), .reset_p(reset_p), .clk_time(w_s_clk), .load_enable(watch_time_load_en),
                                                                   .load_bcd10(set_sec10), .load_bcd1(set_sec1), .bcd10(w_watch_sec10), .bcd1(w_watch_sec1) );

 loadable_counter_bcd_60 min_watch (.clk(clk), .reset_p(reset_p), .clk_time(w_m_clk), .load_enable(watch_time_load_en),
                                                                   .load_bcd10(set_min10), .load_bcd1(set_min1), .bcd10(w_watch_min10), .bcd1(w_watch_min1) );
                                                                   
 loadable_counter_bcd_60 sec_set (.clk(clk), .reset_p(reset_p), .clk_time(sec_up_btn), .load_enable(set_time_load_en),
                                                                   .load_bcd10(w_watch_sec10), .load_bcd1(w_watch_sec1), .bcd10(set_sec10), .bcd1(set_sec1) );

 loadable_counter_bcd_60 min_set (.clk(clk), .reset_p(reset_p), .clk_time(min_up_btn), .load_enable(set_time_load_en),
                                                                   .load_bcd10(w_watch_min10), .load_bcd1(w_watch_min1), .bcd10(set_min10), .bcd1(set_min1));
 

endmodule

module stop_watch_msec_sec_value(
    input clk, reset_p,
    input [2:0]btn_ctr,
    output [15:0] value
);
    
    wire btn0_pedge, btn1_pedge, start_stop, lap;
    
    wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk, clear;
    
    wire [3:0] w_sec1, w_sec10;

    
    button_cntr btn_start( .btn(btn_ctr[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn0_pedge)); 

    T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn0_pedge), .q(start_stop));             

    button_cntr btn_lap( .btn(btn_ctr[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn1_pedge)); 
    
    button_cntr btn_clear( .btn(btn_ctr[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(clear)); 
    
    T_flip_flop_p t_lap ( .clk(clk), .reset_p(reset_p), .t(btn1_pedge), .q(lap)); 
    
    wire clk_start;
    
   assign clk_start = start_stop ? clk: 0;
    
 
    
    wire clear_0;
    
    assign clear_0 = clear ? 1 : reset_p;
    
    
    clock_div_100 i_us_clk( .clk(clk_start), .reset_p(clear_0), .cp_div_100(w_us_clk));
    
    clock_div_1000 i_ms_clk(.clk(clk_start), .reset_p(clear_0), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
    wire w_10ms_clk;
    

    wire [3:0] w_10msec1, w_10msec10; // wire �����ҋ� ��Ʈ �� Ȯ��, �̸� Ȯ�� �Ұ�! 
    
    clock_div_10 i_10ms_clk( .clk(clk_start), .reset_p(clear_0), .clk_source(w_ms_clk) , .cp_div_10_nedge(w_10ms_clk));
    
    clock_div_1000 i_s_clk (.clk(clk_start), .reset_p(clear_0), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
    

    


    counter_bcd_100 msec_bcd(.clk(clk) , .reset_p(clear_0), .clk_time(w_10ms_clk) , .bcd10(w_10msec10), .bcd1(w_10msec1) );

    counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(clear_0), .clk_time(w_s_clk) , .bcd10(w_sec10), .bcd1(w_sec1) );
    
    wire [15:0] cur_time;
    
    assign cur_time = {w_sec10, w_sec1,w_10msec10,w_10msec1};
    
    
    reg [15:0] lap_time;
    
    always@ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
                lap_time = 0;
        end
        else if (btn1_pedge) begin
            lap_time = cur_time;
        end
        else if (clear) begin
            lap_time = 0;
        end
     end
     


    assign value = lap ? lap_time : cur_time;
    

endmodule

module cook_timer_value (
    input clk, reset_p,
    input [3:0] btn,
    output [15:0] value,
    output  reg timeout_led);
    
        wire [3:0] btn_pedge;
          
        button_cntr btstart( .btn(btn[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[0])); 
        reg start_stop;
    
    //    wire alarm_off, inc_min, inc_sec, btn_start;
    
        wire load_enable;
    
        
        wire w_us_clk, w_ms_clk, w_s_clk;
    
            
        wire [15:0] set_time, cur_time;

        wire [3:0] w_set_sec1, w_set_sec10, w_set_min1, w_set_min10;

        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
    
        wire dec_clk, dec_clk0;
    
    
     //   assign {alarm_off, inc_min, inc_sec, btn_start} = btn_pedge;
    
        
        always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                start_stop = 0;
                timeout_led= 0;
                
            end
            else begin 
                if(btn_pedge[0]) start_stop = ~start_stop;
                else if(cur_time == 0 && start_stop) begin 
                        start_stop = 0;
                         timeout_led =1;
                         
                  end
                 else if (btn[3]) timeout_led = 0; 
            end
        end
    
    
    //T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_pedge[0]), .q(start_stop));             


        button_cntr btn_inc_sec( .btn(btn[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[1])); 
    
        
       
    

        edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(start_stop), .p_edge(load_enable));


        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
    


        counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(btn_pedge[1]) , .bcd10(w_set_sec10), .bcd1(w_set_sec1) );

        counter_bcd_60 min_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(btn[2]) , .bcd10(w_set_min10), .bcd1(w_set_min1) );


        loadable_down_counter_bcd_60 cur_sec(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(w_s_clk), .load_enable(load_enable),
                                                                .load_bcd10(w_set_sec10), .load_bcd1(w_set_sec1),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 cur_min(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(dec_clk), .load_enable(load_enable),
                                                                .load_bcd10(w_set_min10), .load_bcd1(w_set_min1),
                                                                .bcd10(cur_min10), .bcd1(cur_min1),  .dec_clk(dec_clk0) );

        assign set_time = {w_set_min10,w_set_min1,w_set_sec10,w_set_sec1};

        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};

        assign value = start_stop ? cur_time : set_time;
    
        

    
    
    endmodule
    
    
module mode_watch_top(
    input clk, reset_p,
    input [3:0] btn,
    output [15:0] led,
    output [3:0] com,
    output [7:0] seg_7 );
    
    wire [15:0] value;
    
    mode_watch hi( clk, reset_p, btn, value,led);
    
    
   fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

    endmodule


module button_cntr_mode_watch(
    input btn, clk, reset_p,
    output btn_pedge, btn_nedge
);

wire  btn_clk;

reg [16:0] clk_div;

reg debounced_btn;

always @ (posedge clk) clk_div = clk_div  + 1; 

edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .p_edge(btn_clk));


always @(posedge clk, posedge reset_p) begin
    if(reset_p) debounced_btn = 0;
    else if (btn_clk) debounced_btn = btn;
end



 edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(debounced_btn), .p_edge(btn_pedge), .n_edge(btn_nedge)); //Ŭ���� ����ȭ�� ���ؼ� btn_clk�� �ٷ� ���������? �ʴ°ǰ� 
     
endmodule


module mode_watch_top_01(
    input clk, reset_p,
    input [3:0] btn,
    output [15:0] led,
    output [3:0] com,
    output [7:0] seg_7 );
    
    wire [15:0] value;
    
    mode_watch_01 hi( clk, reset_p, btn, value, led);
    

    
   fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

    endmodule


module mode_watch_top_02(
    input clk, reset_p,
    input [3:0] btn,
    input sw,
    output [15:0] led,
    output [3:0] com,
    output [7:0] seg_7 );
    
    wire [15:0] value;
    
    mode_watch_02 hi( clk, reset_p, btn, sw, value, led);
    

    
   fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

    endmodule
    
    
module button_long (
    input  clk,          
    input  reset_p,        
    input  button,       
    output reg short_press,  
    output reg long_press    
);

    parameter LONG_PRESS_COUNT = 27'd100000000;  
    
    reg button_prev;
    reg [31:0] counter;
    
    wire btn_pedge;
    
    button_cntr_long( .btn(button), .clk(clk), .reset_p(reset_p), .btn_long(btn_pedge));
    always @(negedge clk or posedge reset_p) begin
        if (reset_p) begin
            counter <= 0;
            short_press <= 0;
            long_press <= 0;
            button_prev <= 0;
        end 
        else begin
            button_prev <= btn_pedge;
            
            if (btn_pedge == 1 && button_prev == 0) begin
                counter <= 0;
            end 
            else if (btn_pedge && button_prev) begin
                counter <= counter + 1;
            end 
            else if (btn_pedge == 0 && button_prev == 1) begin
                if (counter > LONG_PRESS_COUNT) begin
                    counter <= 0;
                    short_press <= 0;
                    long_press <= 1;
                end 
                else begin
                    counter <=0;
                    short_press <= 1;
                    long_press <= 0;
                end
            end 
            else begin
                short_press <= 0;
                long_press <= 0;
            end
        end
    end

endmodule
    
    
module mode_watch_top_long_key_nedge(
    input clk, reset_p,
    input [3:0] btn,
    output [15:0] led,
    output [3:0] com,
    output [7:0] seg_7 );
    
    wire [15:0] value;
    
    mode_watch_long_key_nedge long_key( clk, reset_p, btn, value, led);
    

    
   fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

endmodule
    
module button_cntr_long(
    input btn, clk, reset_p,
    output btn_long
);

wire  btn_clk;

reg [16:0] clk_div;

reg debounced_btn;

always @ (posedge clk) clk_div = clk_div  + 1; 

edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .p_edge(btn_clk));


always @(posedge clk, posedge reset_p) begin
    if(reset_p) debounced_btn = 0;
    else if (btn_clk) debounced_btn = btn;
end

assign btn_long = debounced_btn;
  
endmodule



module long_key_test(
    input  clk,          
    input  reset_p,        
    input [3:0] btn,       
    output [3:0] com,
    output [7:0] seg_7 
);

    wire short_press, long_press;
  
    btn_long(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .long_key(long_press), .short_key(short_press));
    
    reg [7:0] value_short, value_long;  

    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            value_short = 0;
            value_long = 0;
        end
        else if (short_press) begin
            value_short = value_short +1;
        end
        else if (long_press) begin
            value_long = value_long +1;
        end
    end
    
    wire [15:0] value;
    
    assign value = {value_short,value_long };
    
    

    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );



endmodule

    module long_key(
        input clk, reset_p,
        input  btn,
        output reg long_press, short_press
    );
    
        reg [2:0] state, state_next;
        
        parameter S_IDLE = 3'b001;
        parameter S_PRESS = 3'b010;
        parameter S_LONG = 3'b100;
        
        integer long_press_count;
        
        always @ (negedge clk, posedge reset_p) begin
             if (reset_p) begin
                    state = S_IDLE;
             end
             else begin
                state = state_next;
             end
        end
        
        parameter count = 11'd2000;
        
        wire btn_p_clk;
        
        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        reg [11:0] press_count;
        
        reg clk_e;
        
        always @ (posedge clk, posedge reset_p) begin
            if (reset_p) begin
                press_count =0;
            end
            else if (w_ms_clk && clk_e) begin
                    press_count = press_count +1;
            end
            else if (clk_e ==0) press_count =0;
        end
        
      button_cntr_long long(.btn(btn), .clk(clk), .reset_p(reset_p), .btn_long(btn_p_clk));
        
        always @ (posedge clk, posedge reset_p) begin
            if (reset_p) begin
                state_next = S_IDLE; 
                long_press_count = 0;
                long_press = 0;
                clk_e = 0;
            end
            else begin
                case (state) 
                    S_IDLE : begin
                        if (btn_p_clk) begin
                            state_next = S_PRESS;
                            clk_e = 1;
                        end
                    end
                    S_PRESS: begin
                        if (press_count > count) begin
                            state_next = S_LONG;
                            clk_e = 0;
                        end 
                        else if (!btn_p_clk) begin
                             short_press = 1;
                             clk_e = 0;
                             state_next = S_IDLE;
                        end
                    end
                    S_LONG : begin
                        long_press = 1;
                        state_next = S_IDLE;
                    end
            endcase
        end
        end
        
    
    endmodule

module mode_watch_top_04(
    input clk, reset_p,
    input [3:0] btn,
    output [15:0] led,
    output [3:0] com,
    output [7:0] seg_7 );
    
    wire [15:0] value;
    
    mode_watch_04 hi( clk, reset_p, btn, value, led);
    

    
   fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

endmodule

module button_long_short (
    input  clk,          
    input  reset_p,        
    input  button,       
    output reg short_press,  
    output reg long_press    
);

    parameter LONG_PRESS_COUNT = 27'd100000000;  
    
    reg button_prev;
    reg [27:0] counter;
    
    wire btn_pedge;
    
    button_cntr_long long( .btn(button), .clk(clk), .reset_p(reset_p), .btn_long(btn_pedge));
    
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            counter <= 0;
            short_press <= 0;
            long_press <= 0;
            button_prev <= 0;
        end 
        else begin  
            button_prev <= btn_pedge;
            if (btn_pedge == 1 && button_prev == 0) begin
                counter <= 0;
            end 
            else if (btn_pedge && button_prev) begin
                counter <= counter + 1;
            end 
            else if (btn_pedge == 0 && button_prev == 1) begin
                if (counter > LONG_PRESS_COUNT) begin
                    counter <= 0;
                    short_press <= 0;
                    long_press <= 1;
                end 
                else begin
                    counter <=0;
                    short_press <= 1;
                    long_press <= 0;
                end
            end 
            else begin
                short_press <= 0;
                long_press <= 0;
            end
        end
    end

endmodule


module led_pwm_top(
    input clk, reset_p,
    output led_pwm, led_r, led_g, led_b);
    
    reg[31:0] clk_div;
    always @ (posedge clk) clk_div = clk_div +1 ;
    pwm_128step pwm_led(.clk(clk), .reset_p(reset_p), .duty(clk_div[27:21]), .pwm(led_pwm));

    
    pwm_128step pwm_led_r(.clk(clk), .reset_p(reset_p), .duty(clk_div[29:23]), .pwm(led_r));
    
    pwm_128step pwm_led_g(.clk(clk), .reset_p(reset_p), .duty(clk_div[30:24]), .pwm(led_g));

    pwm_128step pwm_led_b(.clk(clk), .reset_p(reset_p), .duty(clk_div[31:25]), .pwm(led_b));



endmodule

module motor_pwm_top(
    input clk, reset_p,
    output motor_pwm,
    output [3:0] com,
    output [7:0] seg_7);
    
    reg[32:0] clk_div;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            clk_div = 0;
        end 
        else begin
            clk_div = clk_div +1 ;
        end
   end
   
    pwm_128step pwm_motor(.clk(clk), .reset_p(reset_p), .duty(clk_div[32:26]), .pwm(motor_pwm));
    
    wire [15:0] duty_bcd;
    
    bin_to_dec(
            .bin({5'b0 ,clk_div[32:26]} ),
            .bcd(duty_bcd)  );
    
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );

   
endmodule


module top_servo(
    input clk, reset_p,
    input [15:0] sw,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);
    
    reg [6:0] servo_pwm_duty;

//    always @ (posedge clk) servo_pwm_duty = servo_pwm_duty+1;

    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            servo_pwm_duty = 0;
        end
        else begin
                if (sw[0]) begin
                    servo_pwm_duty = 3; // max_90 0.5ms
                end
                else if (sw[1]) begin
                    servo_pwm_duty = 10; // 0
                end
                else if(sw[2]) begin
                    servo_pwm_duty = 16; // max_90 2.5ms
                end  
        end
     end
     
    wire [15:0] duty_bcd;
    bin_to_dec(
            .bin({5'b0 ,servo_pwm_duty} ),
            .bcd(duty_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );

    pwm_128step_servo pwm_servo(.clk(clk), .reset_p(reset_p), .duty(servo_pwm_duty),  .pwm(servo_pwm));



endmodule

module SG90_Control (
    input       wire                    i_clk,
    input       wire                    i_reset,
    input       wire                    i_sw_ccw,
    input       wire                    i_sw_cw,
    input       wire                    i_sw_enable,
    output      wire                    o_led,
    output      wire                    o_pwm
);


    parameter                           PWM_RESOLUTION  =   128;
    parameter                           SERVO_MAX_CW    =   7'd13; // 2ms
    parameter                           SERVO_NEUTRAL   =   7'd10; // 1.5ms
    parameter                           SERVO_MAX_CCW   =   7'd6; // 1ms

    reg [6 : 0]                        r_duty;
    wire                                w_btn_r_posedge;
    wire                                w_btn_l_posedge;
    
    wire [6:0] w_servo_duty; 
    pwm_128step_servo pwm(.clk(i_clk), .reset_p(i_reset),
      .duty(w_servo_duty),
    .pwm(o_pwm));

    

    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_duty <= SERVO_NEUTRAL;
        end
        else begin
            if (i_sw_enable) begin
                // + 90
                if (i_sw_cw == 1 && i_sw_ccw == 0) begin
                    r_duty <= SERVO_MAX_CW;
                end
                // - 90
                else if (i_sw_ccw == 1 && i_sw_cw == 0) begin
                    r_duty <= SERVO_MAX_CCW;
                end
                else if (i_sw_ccw == 0 && i_sw_cw == 0) begin
                    r_duty <= SERVO_NEUTRAL;
                end
            end
            else begin
                r_duty <= SERVO_NEUTRAL;
            end
        end
    end

    assign w_servo_duty = r_duty;
    assign o_led = i_sw_enable;

endmodule


module top_servo_with_f(
    input clk, reset_p,
    input [15:0] sw,
    input [3:0] btn,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);
    
    integer clk_div;
    
    always @ (posedge clk) clk_div = clk_div+1;
    
    integer cnt;
    
    wire clk_div_nedge_26;
    
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[20]), .p_edge(clk_div_nedge_26));
    
    wire down_up;
    
    button_cntr btn_set_watch( .btn(btn[1]), .clk(clk), .reset_p(reset_p),  .btn_nedge(w_btn_set));
    
    T_flip_flop_p(.clk(clk), .reset_p(reset_p), .t(w_btn_set), .q(down_up));    
    
    
    always @ (posedge clk, posedge reset_p ) begin
        if (reset_p) begin
           cnt = 6;
        end
        else if (clk_div_nedge_26) begin
            if (down_up)begin
                if (cnt <= 6) begin
                    cnt = 6;
                end
                else cnt = cnt -1;
            end
            else begin
                if (cnt>= 32) begin
                    cnt = 32;
                end
                else cnt = cnt +1;
            end
        end
    end
    wire long;
    
  //  btn_long_key hi(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_long(long));

     
    wire [15:0] duty_bcd;
    bin_to_dec(
            .bin(cnt ),
            .bcd(duty_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );

    pwm_128step_freq  #(.pwm_freq(50)) pwm_motor(.clk(clk), .reset_p(reset_p),.duty(cnt),.pwm(servo_pwm));


endmodule


module adc_top(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output [3:0] com,
    output [7:0] seg_7);

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    
    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value = 0;
        end
        else if (eoc_out_pedge) begin
            adc_value = do_out[15:4];
        end        
    end
    
    // 256�� ���ϰ� 8�� �콬��Ʈ �ϸ� ������ 8������ ����? 
    
    wire [15:0] adc_value_bcd;
    
    bin_to_dec(
            .bin(adc_value ),
            .bcd(adc_value_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(adc_value_bcd), .seg_7(seg_7) );

   

endmodule 

module led_dimmer_top(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output led_pwm,
    output [3:0] com,
    output [7:0] seg_7);

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    
    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value = 0;
        end
        else if (eoc_out_pedge) begin
            adc_value = do_out[15:4];
        end        
    end
    
    
    pwm_128step pwm_led(.clk(clk), .reset_p(reset_p), .duty(adc_value[11:5]), .pwm(led_pwm));

    
    
    wire [15:0] adc_value_bcd;
    
    bin_to_dec(
            .bin({5'b0, adc_value[11:5]} ),
            .bcd(adc_value_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(adc_value_bcd), .seg_7(seg_7) );

   

endmodule 

module led_water_top(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output led_pwm,
    output [3:0] com,
    output [7:0] seg_7);

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    
    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value = 0;
        end
        else if (eoc_out_pedge) begin
            adc_value = do_out[15:4];
        end        
    end
    
    
    pwm_128step pwm_led(.clk(clk), .reset_p(reset_p), .duty(adc_value), .pwm(led_pwm));

    
    
    wire [15:0] adc_value_bcd;
    
    bin_to_dec(
            .bin({ adc_value} ),
            .bcd(adc_value_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(adc_value_bcd), .seg_7(seg_7) );

   

endmodule 


// ��ư 3�� ù���� ��ư ���? 3��  ���� �ܰ� 3�ܰ� �� �� �� �ܰ迡 ���� led 2���� ��ư ��ǳ�� ���� 3�ܰ� ���? ���� 3���� ��ư Ÿ�̸� 1�ð� 2�ð� 3�ð� led����
// ���� led �ϳ� �� led 7��

// �����? �߰��Ͽ� ��ǳ�� �����? ��ȹ 

module adc_potentiometer_top(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output [15:0] adc_value_output);

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    
    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value = 0;
        end
        else if (eoc_out_pedge) begin
            adc_value = do_out[15:4];
        end        
    end
    
    // 256�� ���ϰ� 8�� �콬��Ʈ �ϸ� ������ 8������ ����? 
    
    wire [15:0] adc_value_bcd;
    
    bin_to_dec(
            .bin({3'b0, adc_value[11:3]}),
            .bcd(adc_value_bcd)  );
    
    
   assign  adc_value_output =  adc_value_bcd;
    
   

endmodule 


module timer_can_set(
    input clk, reset_p,
    input [3:0] btn,
    input vauxn6, vauxp6,
    output [7:0] seg_7,
    output [3:0] com,
    output timeout_led);
    
    wire [11:0] vlaue;
    wire [15:0] value_fnd;
    cook_timer_input_value (.clk(clk), .reset_p(reset_p), .btn(btn[3:0]), .value_input({4'b0,vlaue}), .timeout_led(timeout_led), .value(value_fnd));

    adc_potentiometer_top(.clk(clk), .reset_p(reset_p), .vauxn6(vauxn6), .vauxp6(vauxp6), .adc_value(vlaue));
    
    bin_to_dec(
            .bin(value_fnd[11:0]),
            .bcd(adc_value_bcd)  );
    
    
    
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(adc_value_bcd), .seg_7(seg_7) );

    
endmodule




    
    
    module value_input_loadable_count(
        input clk, reset_p,
        input vauxn6, vauxp6,
        output [7:0] seg_7,
        output [3:0] com);
        
        wire [15:0] value;
        
        adc_potentiometer_top value_test( .clk(clk), .reset_p(reset_p),
                                     .vauxn6(vauxn6), .vauxp6(vauxp6), .adc_value_output(value));
                                     
        
        fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

    
    endmodule
    
    module cook_timer_test (
    input clk, reset_p,
    input [3:0] btn,
    input vauxn6, vauxp6,
    output [7:0] seg_7,
    output [3:0] com,
    output  reg timeout_led);
    
        wire [3:0] btn_pedge;
          
        button_cntr btstart( .btn(btn[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[0])); 
        reg start_stop;
    
        wire alarm_off, inc_min, inc_sec, btn_start;
    
        wire load_enable;
    
        
        wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
    
            
        wire [15:0] value, set_time, cur_time;

        wire [3:0] w_set_sec1, w_set_sec10, w_set_min1, w_set_min10;

        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
    
        wire dec_clk, dec_clk0;
    
        reg [16:0] clk_div;
        
        always @ (posedge clk) clk_div = clk_div +1;
        
        assign buzz_clk = timeout_led ? clk_div[10] : 0;
    
        assign {alarm_off, inc_min, inc_sec, btn_start} = btn_pedge;
    
        assign buzz = timeout_led;
        
        always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                start_stop = 0;
                timeout_led= 0;
                
            end
            else begin 
                if(btn_start) start_stop = ~start_stop;
                else if(cur_time == 0 && start_stop) begin 
                        start_stop = 0;
                         timeout_led =1;
                         
                  end
                 else if (alarm_off) timeout_led = 0; 
            end
        end
    
    
    //T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_pedge[0]), .q(start_stop));             


        button_cntr btn_inc_sec( .btn(btn[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[1])); 
    
        button_cntr btn_inc_min( .btn(btn[2]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[2])); 
    
        button_cntr btn_inc_alarm_stop( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge[3])); 
    
    

        edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(start_stop), .p_edge(load_enable));


        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
        
        clock_div_60 i_m_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_s_clk), .cp_div_60_nedge(w_m_clk) );
    
        wire [15:0] adc_value;

        adc_top_potentiometer value_test( .clk(clk), .reset_p(reset_p),
                                     .vauxn6(vauxn6), .vauxp6(vauxp6), .adc_value_bcd(adc_value));
        


        loadable_down_counter_bcd_60 cur_sec(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(w_m_clk), .load_enable(load_enable),
                                                                .load_bcd10(adc_value[7:4]), .load_bcd1(adc_value[3:0]),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 cur_min(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(dec_clk), .load_enable(load_enable),
                                                                .load_bcd10(adc_value[15:12]), .load_bcd1(adc_value[11:8]),
                                                                .bcd10(cur_min10), .bcd1(cur_min1),  .dec_clk(dec_clk0) );

        assign set_time = adc_value;

        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};

        assign value = start_stop ? cur_time : set_time;
    
        
        
        
        fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    
    
    
    endmodule



    module adc_potentiometer_avr_top(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output [11:0] adc_avr_12
    );

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge, eoc_out_nedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge), .n_edge(eoc_out_nedge));
    
    reg [11:0] adc_value;
    reg [15:0] avr_adc_value;
    reg [4:0] count;
    reg [15:0] adc_avr;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value <= 0;
            count <= 0;
            adc_avr <= 0;
            avr_adc_value <= 0;
        end
        else if (count >= 16) begin
                adc_avr <= avr_adc_value;
                count <= 0;
                avr_adc_value <= 0;
        end
        else if (eoc_out_pedge) begin
            adc_value <= do_out[15:4];
            avr_adc_value <= avr_adc_value + adc_value;
            count <= count +1;
            
        end      
    end


assign adc_avr_12 = adc_avr[15:4];

//    reg [11:0] adc_value_add;
    

//    always @ (posedge clk, posedge reset_p) begin
//        if (reset_p) begin
//            avr_adc_value = 0;
//            adc_value_add = 0;
//            count = 0;
//            adc_avr = 0;
//        end
//        else if (count >= 16) begin
//            adc_avr = avr_adc_value[15:4];
//            count = 0;
//        end
//        else if (eoc_out_pedge) begin
//            adc_value_add = do_out[15:4];
//            avr_adc_value = avr_adc_value + adc_value_add;
//            count = count +1;
//        end
    
//    end
    
    // 256�� ���ϰ� 8�� �콬��Ʈ �ϸ� ������ 8������ ����? 
    
//    wire [15:0] adc_value_bcd;
    
//    bin_to_dec(
//            .bin({3'b0, adc_value[11:3]}),
//            .bcd(adc_value_bcd)  );
   
//   reg [15:0] bcd_avr_adc_value;
   
//   always @ (posedge clk, posedge reset_p) begin
//    if(reset_p) begin
//        bcd_avr_adc_value =0;
//    end
//    else if (adc_value_bcd >= 9'd500 ) begin
//        bcd_avr_adc_value = 9'd500;
//    end
//    else bcd_avr_adc_value = adc_value_bcd;
//   end 
   
//   wire [15:0] adc_value_bcd_15;
   
//   bin_to_dec(.bin({bcd_avr_adc_value}),
//            .bcd(adc_value_bcd_15)  );
   
    
   
   
   

endmodule 

    module adc_potentiometer_avr_top_60(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output [15:0] adc_value_output);

    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_wiz_0   adc_ch6(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    wire eoc_out_pedge, eoc_out_nedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge), .n_edge(eoc_out_nedge));
    
    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value = 0;
        end
        else if (eoc_out_pedge) begin
            adc_value = do_out[15:4];
        end        
    end

    reg [11:0] adc_value_add;
    reg [16:0] avr_adc_value;
    reg [11:0] adc_avr;
    reg [2:0] count;

    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            avr_adc_value <= 0;
            adc_value_add <= 0;
            count <= 0;
            adc_avr <= 0;
        end
        else if (count >= 16) begin
            adc_avr <= avr_adc_value[16:5];
            count <= 0;
        end
        else if (eoc_out_pedge) begin
            adc_value_add <= do_out[15:4];
            avr_adc_value <= avr_adc_value + adc_value_add;
            count <= count +1;
        end
    
    end
    
    // 256�� ���ϰ� 8�� �콬��Ʈ �ϸ� ������ 8������ ����? 
    
    wire [15:0] adc_value_bcd;
    
    bin_to_dec(
            .bin({3'b0, adc_value[11:3]}),
            .bcd(adc_value_bcd)  );
   
   reg [3:0] bcd_avr_adc_value3, bcd_avr_adc_value2, bcd_avr_adc_value1, bcd_avr_adc_value0;
   reg [15:0]bcd_avr_adc_value;
   always @ (posedge clk, posedge reset_p) begin
    if(reset_p) begin
        bcd_avr_adc_value3 =0;
        bcd_avr_adc_value2 = 0;
        bcd_avr_adc_value1 = 0;
        bcd_avr_adc_value0 = 0;
    end
    else begin 
        if ( (bcd_avr_adc_value1 >=5)   &&(bcd_avr_adc_value0 >= 9) ) begin
            bcd_avr_adc_value2 = bcd_avr_adc_value2 +1;
            bcd_avr_adc_value1 = 0;
            bcd_avr_adc_value0 = 0;
        end
        else bcd_avr_adc_value = {bcd_avr_adc_value3, bcd_avr_adc_value2, bcd_avr_adc_value1, bcd_avr_adc_value0};
    end
  end
   
   wire [15:0] adc_value_bcd_15;
   
   //bin_to_dec(.bin({bcd_avr_adc_value}),
   //         .bcd(adc_value_bcd_15)  );
   
   assign  adc_value_output =  bcd_avr_adc_value;
  // assign  adc_value_output =  adc_value_bcd_15;
    
   

endmodule 


module adc_top_potentiometer(
    input clk, reset_p,
    input vauxn6, vauxp6,
    output [15:0] adc_value_bcd);  // �����Ѱ� 


    wire [11:0] adc_value_output;

    adc_potentiometer_avr_top test( clk, reset_p,
                                vauxn6, vauxp6,
                                adc_value_output);

    reg [11:0] hundred_value;
    
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            hundred_value <= 12'd0;
        end 
        else if (adc_value_output >= 59 && adc_value_output < 100) begin
                hundred_value <= 9'd100;
        end 
        else if (adc_value_output >= 159 && adc_value_output < 200) begin
                hundred_value <= 9'd200;
        end 
        else if (adc_value_output >= 12'd259 && adc_value_output < 12'd300) begin
                hundred_value <= 9'd300;
        end
        else if (adc_value_output >= 12'd359 && adc_value_output < 12'd400) begin
                hundred_value <= 9'd400;
        end 
        else if (adc_value_output >= 12'd459) begin
                hundred_value <= 12'd500;
        end
        else hundred_value <= adc_value_output;
        end

    reg [11:0] adc_value;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value <= 0;
        end
        else begin
            adc_value <= hundred_value;
        end
    end
    
 
    
    
    bin_to_dec(
            .bin(adc_value),
            .bcd(adc_value_bcd)  );
   
    
    
    
    
endmodule



module HC_SR04_test_project(
    input clk, reset_p,
    input pulse_out,
    output TTL,
    output reg motor_off);

    wire [11:0] distance;

    HC_SR04  dd( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out), .TTL(TTL), .distance(distance));
    

    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            motor_off = 0;
        end
        else if (distance <= 3) begin
            motor_off = 1;
        end
        else motor_off = 0;
    end

endmodule

module HC_SR04_detector_p(
    input clk, reset_p,
    input btn,
    input [2:0] pulse_out,
    output [2:0] TTL,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);
    
    wire [11:0] distance_left, distance_mid, distance_right;
    
    HC_SR04  left( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .distance(distance_left));
    
    HC_SR04  mid( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[1]), .TTL(TTL[1]), .distance(distance_mid));
    
    HC_SR04  right( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[2]), .TTL(TTL[2]), .distance(distance_right));
    
    integer cnt;
    

 
    pwm_128step_freq  #(.pwm_freq(50)) pwm_motor(.clk(clk), .reset_p(reset_p),.duty(cnt),.pwm(servo_pwm));
    
    integer clk_div;
    
    always @ (posedge clk) clk_div = clk_div+1;
    
    wire clk_div_nedge_20;
    
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[20]), .p_edge(clk_div_nedge_20));
    
    
    reg down, stop, up;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            cnt = 6;
        end
        else if(clk_div_nedge_20) begin
            if (down) begin
                cnt = cnt - 1;
                if (cnt <= 6) begin   
                     cnt = 6;
                end
            end
            else if (stop) begin
                cnt = cnt;
            end
            else if (up) begin
                cnt = cnt + 1;
                if (cnt >= 32) begin
                    cnt = 32;
                end
            end
            else if ((up && down) || (up && stop) || (down && stop)) begin
                if (cnt <= 32) begin
                    cnt = cnt +1;
                end
                else begin
                    cnt = cnt -1;
                end
            end 
        end
    end
    
//    always @ (posedge clk, posedge reset_p ) begin
//        if (reset_p) begin
//           cnt_1 = 6;
//        end
//        else if (clk_div_nedge_20) begin
//            if (cnt_1 <= 6) begin
//                    cnt_1 = 6;
//            end
//            else cnt_1 = cnt_1 -1;
//            end
//        else begin
//            if (cnt_1>= 32) begin
//                    cnt_1 = 32;
//            end
//            else cnt_1 = cnt_1 +1;
//            end
//        end


    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            down = 0;
            stop = 0;
            up = 0;
        end
        else  if (distance_left <= 50) begin
                if (distance_mid <= 50) begin
                    down = 0;
                    stop = 1;
                    up = 0;
                end
                else if (distance_mid >= 50) begin
                    down = 1;
                end
            end
        else if (distance_mid <= 50) begin
                stop =1;
            end 
        else if (distance_right <= 50) begin
                if (distance_mid <= 50) begin
                    stop = 1;
                    up = 0; 
                    down = 0;
                end
                else if (distance_mid >= 50) begin
                    up = 1;
                end
              
         end
    end
     
    wire [15:0] duty_bcd; 

     bin_to_dec(
            .bin(cnt ),
            .bcd(duty_bcd)  );

   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );


endmodule

module down_conter_bcd_pro(
    input clk, reset_p,
    input clk_time,
    input  [7:0] value1,
    input  [3:0] value10,
    input  n_flag, 
    input  p_flag,
    input  up_down,
    output reg dec_clk,
    output reg [7:0] value1_FND,
    output reg [3:0] value10_FND
    );

    always @ (posedge clk, posedge reset_p)begin
        if(reset_p)begin
            value1_FND = 0;
            value10_FND = 0;
            dec_clk = 0;
        end
        else if (p_flag)begin
            value1_FND = value1;
            value10_FND = value10;
        end
        else if(up_down)begin
            if (clk_time) begin
                if (value1_FND[3:0] == 4'b0000) begin
                    value1_FND[3:0] <= 4'b1001;
                    if (value1_FND[7:4] == 4'b0) begin
                        dec_clk <= 1'b1;
                        value1_FND[7:4] <= 4'b0101;
                    end 
                    else begin
                        value1_FND[7:4] <= value1_FND[7:4] - 1;
                    end
                end 
                else begin
                    value1_FND[3:0] <= value1_FND[3:0] - 1;
                end
            end 
                else if (dec_clk) begin
                    value10_FND <= value10_FND - 1;
                    dec_clk <= 1'b0;
                end 

                else begin
                    dec_clk <= 1'b0;
                end
            end
        end


endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module cook_timer_pro(
    input clk, reset_p,
    input btn,
    input alarm_sw,
    output reg time_out_led,
    output reg [2:0] state_led,
    output [15:0] value_FND
);
    parameter S_IDLE_TIMER           = 4'b0001;
    parameter S_MODE_1HOUR           = 4'b0010;
    parameter S_MODE_3HOUR           = 4'b0100;
    parameter S_MODE_5HOUR           = 4'b1000;
    
    wire btn_mode;
    reg [11:0] value;
    button_cntr     b0(.clk(clk), .reset_p(reset_p), .btn(btn), .btn_pedge(btn_mode));   //0�� ��ŸƮ ���� ����
    
    reg flag, up_down;
    wire p_flag, n_flag;
    edge_detector_n ed6(.clk(clk), .reset_p(reset_p), .cp(flag), .p_edge(p_flag), .n_edge(n_flag));
    
    wire clk_usec, clk_msec, clk_sec;
    clock_div_100   u0(.clk(clk), .reset_p(reset_p), .cp_div_100(clk_usec));
    clock_div_1000  u1(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .cp_div_1000_nedge(clk_msec));
    clock_div_1000  u2(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .cp_div_1000_nedge(clk_sec));
    clock_div_60    x6(.clk(clk), .reset_p(reset_p), .clk_source(clk_sec), .cp_div_60_nedge(clk_min));
    
    reg [3:0] state_timer, next_state_timer;   
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            state_timer = S_IDLE_TIMER;
        end
        else state_timer = next_state_timer;
    end 
    wire [3:0] value10_FND;
    wire [7:0] value1_FND;
  //  wire [15:0] value_FND;
    assign value_FND = {4'b0, value10_FND, value1_FND};
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            next_state_timer = S_IDLE_TIMER;
            state_led      = 3'b000;
            value            = 12'b0000_0000_0000;
            flag = 0;
            up_down = 0;
        end
        else begin
            case(state_timer)
                S_IDLE_TIMER : begin
                    if(btn_mode) begin
                        up_down = 1;
                        flag = 1;
                        value = 12'b0001_0000_0000;
                        next_state_timer = S_MODE_1HOUR;
                    end
                    else begin
                        next_state_timer = S_IDLE_TIMER;
                        state_led = 3'b000;
                        flag = 0;
                        up_down = 0;
                        time_out_led = 0;
                    end 
                end
                S_MODE_1HOUR : begin
                    if(btn_mode) begin
                        state_led[0] = 0;
                        up_down = 1;
                        flag = 1;
                        value = 12'b0011_0000_0000;
                        next_state_timer = S_MODE_3HOUR;
                    end
                    else begin
                        if (value_FND == 12'b0000_0000_0000) begin
                            up_down = 0; 
                            time_out_led = 1;
                            next_state_timer = S_IDLE_TIMER;
                        end
                        else begin
                            state_led[0] = 1;
                            flag = 0;
                            up_down = 1;
                            next_state_timer = S_MODE_1HOUR;
                        end
                        end
                end
                S_MODE_3HOUR: begin
                    if(btn_mode) begin
                        state_led[1] = 0;
                        up_down = 1;
                        flag = 1;
                        value = 12'b0101_0000_0000;
                        next_state_timer = S_MODE_5HOUR;
                    end
                    else begin
                        if (value_FND == 12'b0000_0000_0000) begin
                            up_down = 0; 
                            time_out_led = 1;
                            next_state_timer = S_IDLE_TIMER;
                        end
                        else begin
                            state_led[1] = 1;
                            flag = 0;
                            up_down = 1;
                            next_state_timer = S_MODE_3HOUR;
                        end
                    end                     
                end
                 S_MODE_5HOUR: begin
                    if(btn_mode) begin
                        state_led[2] = 0;
                        flag = 0;
                        up_down = 0;
                        value = 12'b0000_0000_0001;
                        next_state_timer = S_IDLE_TIMER;
                    end
                    else begin
                        if (value_FND == 12'b0000_0000_0000) begin
                            up_down = 0; 
                            time_out_led = 1;
                            next_state_timer = S_IDLE_TIMER;
                        end                      
                        else begin
                            state_led[2] = 1;
                            flag = 0;
                            up_down = 1;
                            next_state_timer = S_MODE_5HOUR;
                        end
                    end                     
                end
                default : begin
                    next_state_timer = S_IDLE_TIMER;
                end
            endcase
        end
    end                                 

    wire [7:0] value1;
    wire [3:0] value10;
    assign value10 = value[11:8];
    assign value1 = value[7:0];
    
    wire dec_clk;


    
    down_conter_bcd_pro value_cnt(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .value1(value1), .value10(value10), .n_flag(n_flag), .p_flag(p_flag),
                                  .up_down(up_down), .dec_clk(dec_clk), .value1_FND(value1_FND), .value10_FND(value10_FND));
    
    
    
    
    
endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module fan( 
    input clk, reset_p,
    input btn,
    input motor_stop,
    output reg motor_stop_f,
    output [2:0] led,
    output motor_pwm );
    
      
    parameter S_IDLE_MOTER           = 4'b0001;
    parameter S_MODE_1               = 4'b0010;
    parameter S_MODE_2               = 4'b0100;
    parameter S_MODE_3               = 4'b1000;
    
    wire  btn_mode_moter;
    button_cntr     btn_moter(.clk(clk), .reset_p(reset_p), .btn(btn), .btn_pedge(btn_mode_moter)); //moter ���? ����
    
                                                                                               // 3�� ��ư >> timer �ð� ����
  //  wire motor_stop_p;
   // edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(motor_stop), .p_edge(motor_stop_p));

    integer duty_moter;
    
    reg [3:0] state_moter, next_state_moter;  
    
    
 //   assign motor_stop_p = motor_stop;
    
    
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            state_moter = S_IDLE_MOTER;
        end
        else begin
            state_moter = next_state_moter;
        end
    end 
    
    assign led = state_moter[3:1];


    always @(posedge clk or posedge reset_p) begin  //moter state
        if (reset_p) begin
            next_state_moter <= S_IDLE_MOTER;
            duty_moter <= 0;

        end
        else begin
            case (state_moter)
                S_IDLE_MOTER: begin
                    if (btn_mode_moter) begin
                        next_state_moter <= S_MODE_1;
                        motor_stop_f <= 0;
                    end
                    else begin
                        next_state_moter <= S_IDLE_MOTER;
                        duty_moter <= 0;

                    end
                end
                S_MODE_1: begin
                    if (btn_mode_moter) begin
                        next_state_moter <= S_MODE_2;
                    end
                    else begin
                        if(motor_stop) begin
                            next_state_moter <= S_IDLE_MOTER;
                            motor_stop_f <= 1;
                        end
                        else begin
                            next_state_moter <= S_MODE_1;
                            duty_moter <= 38;
                        end
                    end
                end
                S_MODE_2: begin
                    if (btn_mode_moter) begin
                        next_state_moter <= S_MODE_3;
                    end
                    else begin
                        if(motor_stop) begin
                            next_state_moter <= S_IDLE_MOTER;
                            motor_stop_f <= 1;
                        end
                        else begin
                            next_state_moter <= S_MODE_2;
                            duty_moter <= 76;
                        end
                    end
                end
                S_MODE_3: begin
                    if (btn_mode_moter)begin
                        next_state_moter <= S_IDLE_MOTER;
                    end
                    else begin
                        if(motor_stop) begin
                            next_state_moter <= S_IDLE_MOTER;
                            motor_stop_f <= 1;
                        end
                        else begin
                            next_state_moter <= S_MODE_3;
                            duty_moter <= 115;
                        end
                    end
                end
                default : begin
                    next_state_moter = S_IDLE_MOTER;
                end
            endcase
        end
    end
 
    

    pwm_128step_freq #(.pwm_freq(100), .duty_steps(128)) pwm_motor_spd(.clk(clk), .reset_p(reset_p), .duty(duty_moter),.pwm(motor_pwm));
       
      
     
endmodule

module led_pro(
    input clk, reset_p,
    input btn,
    output pwm_led);

    parameter S_IDLE_LED             = 4'b0001;   // off state
    parameter S_LED_1st              = 4'b0010;   
    parameter S_LED_2nd              = 4'b0100;   
    parameter S_LED_3rd              = 4'b1000;   

    wire btn_mode_led;

    button_cntr     btn_led(.clk(clk), .reset_p(reset_p), .btn(btn), .btn_pedge(btn_mode_led)); 

    integer duty_led;   //30% >>38.4 60% >>76.8 90% >> 115.2

    reg [3:0] state_led, next_state_led;

    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            state_led = S_IDLE_LED;
        end
        else begin
            state_led = next_state_led;
        end
    end 

       
    always @ (posedge clk, posedge reset_p) begin   //led state
        if (reset_p) begin
            next_state_led = S_IDLE_LED;
            duty_led = 0;
        end
        else begin
            case(state_led)
                S_IDLE_LED : begin
                    if(btn_mode_led) begin
                        next_state_led = S_LED_1st;
                    end
                    else begin
                        next_state_led = S_IDLE_LED;
                        duty_led = 0;
                    end 
                end
                S_LED_1st : begin
                    if(btn_mode_led) begin
                        next_state_led = S_LED_2nd;
                    end
                    else begin
                        duty_led = 10;
                        next_state_led = S_LED_1st;
                    end 
                end
                S_LED_2nd: begin
                    if(btn_mode_led) begin
                        next_state_led = S_LED_3rd;               
                    end
                    else begin
                        duty_led = 60;
                        next_state_led = S_LED_2nd;
                    end                     
                end
                S_LED_3rd: begin
                    if(btn_mode_led) begin
                        next_state_led = S_IDLE_LED;                
                    end
                    else begin
                        duty_led = 110;
                        next_state_led = S_LED_3rd;
                    end                     
                end                
                default : begin
                    next_state_led = S_IDLE_LED;
                end
            endcase
        end
    end

    pwm_128step_freq #(.pwm_freq(10000)) led(.clk(clk), .reset_p(reset_p), .duty(duty_led) ,.pwm(pwm_led));

endmodule




module cook_timer_in_project (
    input clk, reset_p,
    input btn,
    output reg motor_stop,
    output [3:0] com,
    output [7:0] seg_7,
    output [3:0] led);
        
    parameter  zero = 4'b0001;
    parameter  time_1 = 4'b0010;
    parameter  time_3 = 4'b0100;
    parameter  time_5 = 4'b1000;
       
    reg [3:0] state, state_next;
    
    assign led = state;
    
        
        wire btn_pedge, btn_nedge;
          
        button_cntr btstart( .btn(btn), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge), .btn_nedge(btn_nedge)); 
        reg start_stop;
    
        wire alarm_off, inc_min, inc_sec, btn_start;
    
        reg load_enable;
      
        wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;

        wire [15:0] value, set_time, cur_time;

        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
    
        wire dec_clk;
    
        wire value_fnd_view;
    
        T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_nedge), .q(value_fnd_view));             

    reg [15:0] load_timer;
      
       //edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(start_stop), .p_edge(load_enable));


        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
        
        clock_div_60    x6(.clk(clk), .reset_p(reset_p), .clk_source(w_s_clk), .cp_div_60_nedge(w_m_clk));
    
    always @ (negedge clk, posedge reset_p) begin
            if (reset_p) begin
                state = zero;
            end
            else begin
                state = state_next;
            end
    end
        
    always @ (posedge clk, posedge reset_p) begin
            if (reset_p) begin
                load_timer <= 0;
                start_stop = 0;
            end
            else begin
                case (state)
                    zero : begin
                        if (btn_pedge) begin
                            state_next <= time_1;
                            load_timer <= 16'b0000_0001_0000_0000;
                            start_stop <= 1;
                        end
                        else start_stop = 0;
                    end
                    time_1 : begin
                        if (btn_pedge) begin
                            state_next <= time_3;

                            load_timer <= 16'b0000_0011_0000_0000;
                            start_stop <= 1;
                        end
                        else if (motor_stop) begin
                            state_next <= zero;
                            start_stop <= 0;
                        end
                    end
                    time_3 : begin                
                        if (btn_pedge) begin
                            state_next <= time_5;
                            load_timer <= 16'b0000_0101_0000_0000;
                            start_stop <= 1;
                        end
                        else if (motor_stop) begin
                            state_next <= zero;
                            start_stop <= 0;
                        end
                    end
                    time_5 : begin
                        if (btn_pedge) begin
                            state_next <= zero;
                            load_timer <= 16'b0000_0000_0000_0000;
                            start_stop <= 1;                   
                        end
                        else if (motor_stop) begin
                            state_next <= zero;
                            start_stop <= 0;
                        end
                    end
                endcase 
            end
        end

        loadable_down_counter_bcd_60 cur_sec(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(w_s_clk), .load_enable(btn_pedge),
                                                                .load_bcd10(load_timer[7:4]), .load_bcd1(load_timer[3:0]),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 cur_min(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(dec_clk), .load_enable(btn_pedge),
                                                                .load_bcd10(load_timer[15:12]), .load_bcd1(load_timer[11:8]),
                                                                .bcd10(cur_min10), .bcd1(cur_min1) );
                                                                
        always @ (posedge clk, posedge reset_p) begin
            if (reset_p) begin
                motor_stop = 0;
            end
            else begin
                motor_stop = 0;
                if ((cur_time == 0) && start_stop ) begin
                    motor_stop = 1;
                end
            end  
          
        end


        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};

        assign value =  cur_time;
    
        
        
        
        fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    
    
    
    endmodule
    
module cook_timer_test_1_3_5 (
    input clk, reset_p,
    input  btn,
    output [7:0] seg_7,
    output [3:0] com,
    output  reg timeout_led,
    output [2:0] led);
    
        wire [3:0] btn_pedge;
          
        button_cntr btstart( .btn(btn), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge)); 
        reg start_stop;
    
        wire alarm_off, inc_min, inc_sec, btn_start;
    
        wire load_enable;
    
        
        wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
    
            
        wire [15:0] value, set_time, cur_time;

        wire [3:0] w_set_sec1, w_set_sec10, w_set_min1, w_set_min10;

        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
    
        wire dec_clk, dec_clk0;
    

        always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                start_stop = 0;
                timeout_led= 0;
                
            end
            else begin 
                if(btn_pedge) begin
                     start_stop = 1;
                     timeout_led = 0;
                end
                else if(cur_time == 0 && start_stop ) begin 
                        start_stop = 0;
                        timeout_led = 1;   // moto stop, set_time reset
                end
//                else begin
//                    timeout_led = 0;
                    
//                end
            end
        end
    
        
        T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_pedge), .q(enable));             


    

        edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(enable), .p_edge(load_enable), .n_edge(load_enable_n));


        clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
        
        clock_div_60 i_m_clk (.clk(clk), .reset_p(reset_p), .clk_source(w_s_clk), .cp_div_60_nedge(w_m_clk) );
    
        wire [15:0] adc_value;
        
        wire non_en;
        
        timer_set_value timer_1_3_5( .clk(clk), .reset_p(reset_p), .btn(btn), .value(adc_value), .led(led), .non_en(non_en));
        
        wire load;
        
        assign load = non_en ? 0 : (load_enable || load_enable_n);

        loadable_down_counter_bcd_60 cur_sec(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(w_s_clk), .load_enable(load),
                                                                .load_bcd10(adc_value[7:4]), .load_bcd1(adc_value[3:0]),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 cur_min(  .clk(clk), .reset_p(reset_p), 
                                                                .clk_time(dec_clk), .load_enable(load),
                                                                .load_bcd10(adc_value[15:12]), .load_bcd1(adc_value[11:8]),
                                                                .bcd10(cur_min10), .bcd1(cur_min1),  .dec_clk(dec_clk0) );


        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};

        assign value = cur_time;
    
        
        
        
        fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    
    
    
    endmodule
    
    module timer_set_value (
        input clk, reset_p,
        input btn,
        input motor_stop_f, motor_off_s,
        input vauxn6, vauxp6,
        output reg motor_stop, motor_stop_r,
        output [2:0] led,
        output [3:0] com,
        output [7:0] seg_7);
        
        parameter STOP = 4'b0001;
        parameter TIME1 = 4'b0010;
        parameter TIME3 = 4'b0100;
        parameter TIME5 = 4'b1000;
        
        reg [3:0] state, state_next;
        
        always @ (negedge clk, posedge reset_p) begin
            if (reset_p) begin
                state = STOP;
            end
            else begin
                state = state_next;
            end
        end

        wire btn_pedge;
        
        reg [15:0] value;
        
        reg start;
        
        wire [15:0] cur_time, cur_time_r;
        
        reg stop_start;
        
        wire btn_long;
        
        reg btn_long_reg;
        
        btn_long(.clk(clk), .reset_p(reset_p), .btn(btn), .long_key(btn_long), .short_key(short_press));
        
        wire  mode;
        
       T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_long), .q(mode));             

        
        

        always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                state_next = STOP;
                value = 0;
                motor_stop =0;
                stop_start = 0;
            end
            else begin
                case (state)
                    STOP : begin
                        if (!mode && short_press) begin
                            state_next = TIME1;
                            stop_start = 0;
                        end
                        else begin
                            value = 16'b0000_0001_0000_0000;
                            stop_start = 1;
                            if (motor_stop_f) begin
                                motor_stop = 0;
                            end
                        end
                    end
                    TIME1 : begin
                        value = 16'b0000_0011_0000_0000;
                        if (!mode && short_press) begin
                            state_next = TIME3;
                        end
                        //else if (!btn_pedge) 
                        else if (cur_time == 0) begin
                            state_next = STOP;
                            motor_stop = 1;
                        end
                        else if (mode) begin
                            state_next = STOP;
                        end
                        else if (motor_off_s) begin
                            state_next = STOP;
                        end
                    end
                    TIME3 : begin
                        value = 16'b0000_0101_0000_0000;
                        if (!mode && short_press) begin

                            state_next = TIME5;
                         end
                        //else if (!btn_pedge) 
                         else if (cur_time == 0) begin
                            state_next = STOP;
                            motor_stop = 1;
                        end
                        else if (mode) begin
                            state_next = STOP;
                        end
                        else if (motor_off_s) begin
                            state_next = STOP;
                        end
                    end
                    TIME5 : begin
                        value = 16'b0000_0000_0000_0001;
                        if(!mode && short_press) begin
                            state_next = STOP;
                        end
                  //      else if (!btn_pedge)
                        else if (cur_time == 0) begin                  
                            state_next = STOP;
                            motor_stop = 1;
                        end
                        else if (mode) begin
                            state_next = STOP;
                        end
                        else if (motor_off_s) begin
                            state_next = STOP;
                        end
                    end

                endcase

            end

        end
            
        assign led = state[3:1];
        
        wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
        
        wire clk_stop;
        
        assign  clk_stop = stop_start ? 1 : reset_p;
        
        clock_div_100 i_us_clk( .clk(clk), .reset_p(clk_stop), .cp_div_100(w_us_clk));
    
        clock_div_1000 i_ms_clk(.clk(clk), .reset_p(clk_stop), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
        clock_div_1000 i_s_clk (.clk(clk), .reset_p(clk_stop), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));
        
        clock_div_60 i_m_clk (.clk(clk), .reset_p(clk_stop), .clk_source(w_s_clk), .cp_div_60_nedge(w_m_clk) );
        
        wire [3:0] cur_sec10, cur_sec1, cur_min10, cur_min1;
        
        wire [3:0] cur_sec10_r, cur_sec1_r, cur_min10_r, cur_min1_r;
        
        wire [15:0] adc_value;

        adc_top_potentiometer value_test( .clk(clk), .reset_p(reset_p),
                                     .vauxn6(vauxn6), .vauxp6(vauxp6), .adc_value_bcd(adc_value));
        

         wire fnd_stop;
         
        assign fnd_stop = mode ? reset_p : 1;
        
        reg fnd_mode; 
        
        wire [15:0] fnd_v;
        

        
        always @ (posedge clk, posedge reset_p) begin
            if (reset_p) begin
                fnd_mode = 0;
                motor_stop_r = 0;
            end
            else if (motor_stop_f) begin
                 motor_stop_r = 0;
            end
            else if (mode && short_press) begin
                fnd_mode = ~fnd_mode;
            end
            else if (cur_time_r == 0 && fnd_mode) begin
                fnd_mode = 0;
                motor_stop_r = 1;
            end
            else if (!mode) begin
                fnd_mode = 0;
            end
            else if (motor_off_s) begin
                fnd_mode = 0;
            end
        end
        
        wire w_us_clk_r, w_ms_clk_r, w_s_clk_r, w_m_clk_r;
        
        wire dec_clk_r, dec_clk0_r, dec_clk, dec_clk0;
        
        wire stop_reset_p;
        
        assign stop_reset_p = mode ? reset_p : 1;
        
        clock_div_100 i_us_clk_r( .clk(clk), .reset_p(stop_reset_p), .cp_div_100(w_us_clk_r));
    
        clock_div_1000 i_ms_clk_r(.clk(clk), .reset_p(stop_reset_p), .clk_source(w_us_clk_r), .cp_div_1000_nedge(w_ms_clk_r));
    
        clock_div_1000 i_s_clk_r (.clk(clk), .reset_p(stop_reset_p), .clk_source(w_ms_clk_r), .cp_div_1000_nedge(w_s_clk_r));
        
        clock_div_60 i_m_clk_r (.clk(clk), .reset_p(stop_reset_p), .clk_source(w_s_clk_r), .cp_div_60_nedge(w_m_clk_r) );
        
        loadable_down_counter_bcd_60 set_time0(  .clk(clk), .reset_p(clk_stop), 
                                                                .clk_time(w_s_clk), .load_enable(short_press),
                                                                .load_bcd10(value[7:4]), .load_bcd1(value[3:0]),
                                                                .bcd10(cur_sec10), .bcd1(cur_sec1),  .dec_clk(dec_clk) );
    
        loadable_down_counter_bcd_60 set_time1(  .clk(clk), .reset_p(clk_stop), 
                                                                .clk_time(dec_clk), .load_enable( short_press),
                                                                .load_bcd10(value[15:12]), .load_bcd1(value[11:8]),
                                                                .bcd10(cur_min10), .bcd1(cur_min1),  .dec_clk(dec_clk0) );

        loadable_down_counter_bcd_60 set_time_r0(  .clk(clk), .reset_p(stop_reset_p), 
                                                                .clk_time(w_s_clk_r), .load_enable(short_press),
                                                                .load_bcd10(adc_value[7:4]), .load_bcd1(adc_value[3:0]),
                                                                .bcd10(cur_sec10_r), .bcd1(cur_sec1_r),  .dec_clk(dec_clk_r) );
    
        loadable_down_counter_bcd_60 set_time_r1(  .clk(clk), .reset_p(stop_reset_p), 
                                                                .clk_time(dec_clk_r), .load_enable(short_press),
                                                                .load_bcd10(adc_value[15:12]), .load_bcd1(adc_value[11:8]),
                                                                .bcd10(cur_min10_r), .bcd1(cur_min1_r),  .dec_clk(dec_clk0_r) );

        
        assign cur_time = {cur_min10,cur_min1,cur_sec10,cur_sec1};
        
        assign cur_time_r = {cur_min10_r,cur_min1_r,cur_sec10_r,cur_sec1_r};
    
      assign fnd_v = fnd_mode ? cur_time_r : mode ? adc_value : 0;
      
      fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(fnd_stop), .com(com) , .value(fnd_v), .seg_7(seg_7) );
    
    
    endmodule
  
  module ultrasonic_wave_detector(
     input clk, reset_p,
     input btn,
     input [2:0] pulse_out,
   //  input [7:0] cnt,
 //    output reg down_up, stop,
     output [2:0] TTL,
     output [3:0] com,
     output [7:0] seg_7,
     output servo_pwm);
     
    parameter S_IDLE =  4'b0001;
    parameter S_LEFT =  4'b0010;
    parameter S_MID  =  4'b0100;
    parameter S_RIGHT = 4'b1000; 
    
    reg [3:0] state, state_next;
    
    wire [11:0] distance [2:0];
  
    HC_SR04  detector0_left( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .distance(distance[0]));
    HC_SR04  detector1_mid( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[1]), .TTL(TTL[1]), .distance(distance[1]));
    HC_SR04  detector2_right( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[2]), .TTL(TTL[2]), .distance(distance[2]));
  
    wire mode;
    
     btn_long(.clk(clk), .reset_p(reset_p), .btn(btn), .long_key(btn_long), .short_key(short_press));
        
     T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_long), .q(mode));             

    wire [7:0] cnt;
    reg down_up, stop;      
    
    top_servo_project servo_motor( .clk(clk), .reset_p(reset_p), .down_up(down_up), .stop(stop), 
                                 .com(com), .seg_7(seg_7), .cnt(cnt),.servo_pwm(servo_pwm));
                                 
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = S_IDLE;
        end
        else begin
            state = state_next;
        end
    end
    
    reg distance_left,distance_mid, distance_right ;
    
    reg [11:0] distance_value_high, distance_value_low, distance_value_middle ;
    


always @ (posedge clk or posedge reset_p) begin
    if (reset_p) begin
        distance_value_low = 12'd0;
        distance_left = 0;
        distance_mid = 0;
        distance_right = 0;
    end
    else begin
        if ((distance[0] <= distance[1]) && (distance[0] <= distance[2])) begin
            distance_value_low = distance[0];
            distance_left = 1;
            distance_mid = 0;
            distance_right = 0;
        end
        else if ((distance[1] <= distance[0]) && (distance[1] <= distance[2])) begin
            distance_value_low = distance[1];
            distance_left = 0;
            distance_mid = 1;
            distance_right = 0;
        end
        else if ((distance[2] <= distance[0]) && (distance[2] <= distance [1]))begin
            distance_value_low = distance[2];
            distance_left = 0;
            distance_mid = 0;
            distance_right = 1;
        end
    end
end
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = S_IDLE;
        end
        else if (mode) begin
            case (state)
                S_IDLE : begin
                    if (distance_left) begin
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        state_next = S_RIGHT;
                    end
                end
                S_LEFT : begin
                    down_up = 1;
                    stop = 0;
                    if (cnt <=6) begin
                        stop = 1;
                    end
                    else if (distance_mid) begin
                        stop = 0;
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        stop = 0;
                        state_next = S_RIGHT;
                    end
                end
                S_MID : begin
                    if (distance_mid) begin
                        stop = 1;
                    end
                    else if (distance_right) begin
                        stop = 0;
                        state_next = S_RIGHT;
                    end
                    else if (distance_left) begin
                        stop = 0;
                        state_next = S_LEFT;
                    end
                end
                S_RIGHT : begin
                    down_up = 0;
                    stop = 0;
                    if (cnt >= 32) begin
                        stop = 1;
                    end
                    else if (distance_left) begin
                        stop = 0;
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        stop = 0;
                        state_next = S_MID;
                    end
                end
            endcase
        end
    end
    
    
    
                                     
  
  endmodule
  
  module top_servo_project(
    input clk, reset_p,
    input down, up, stop,
    output reg [7:0] cnt,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);
    
    integer clk_div;
    
    always @ (posedge clk) clk_div = clk_div+1;
    
    
    wire clk_div_nedge_20;
    
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[20]), .p_edge(clk_div_nedge_20));
    
    
    
    
    
    always @ (posedge clk, posedge reset_p ) begin
        if (reset_p) begin
           cnt = 50;
        end
        else if (clk_div_nedge_20) begin
            if (down)begin
                if (stop) begin
                    cnt = cnt;
                end
                else if (cnt <= 24) begin
                    cnt = 24;
                end
                else cnt = cnt -1;
            end
            else if (up) begin
                if (stop) begin
                    cnt = cnt;
                end
                else if (cnt>= 128) begin
                    cnt = 128;
                end
                else cnt = cnt +1;
            end
        end
    end
    
    wire long;
    
  //  btn_long_key hi(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_long(long));

     
    wire [15:0] duty_bcd;
    bin_to_dec(
            .bin(cnt ),
            .bcd(duty_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );

    pwm_128step_freq  #(.pwm_freq(50), .duty_steps(1024)) pwm_motor(.clk(clk), .reset_p(reset_p),.duty(cnt),.pwm(servo_pwm));


endmodule


  module top_servo_project_v2(
    input clk, reset_p,
    input down_up, stop,
    output reg [7:0] cnt,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);
    
    integer clk_div;
    
    always @ (posedge clk) clk_div = clk_div+1;
    
    
    wire clk_div_nedge_20;
    
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(clk_div[20]), .p_edge(clk_div_nedge_20));
    
    
    
    
    
    always @ (posedge clk, posedge reset_p ) begin
        if (reset_p) begin
           cnt = 50;
        end
        else if (clk_div_nedge_20) begin
            if (down_up)begin
                if (stop) begin
                    cnt = cnt;
                end
                else if (cnt <= 24) begin
                    cnt = 24;
                end
                else cnt = cnt -1;
            end
            else if (!down_up) begin
                if (stop) begin
                    cnt = cnt;
                end
                else if (cnt>= 128) begin
                    cnt = 128;
                end
                else cnt = cnt +1;
            end
        end
    end
    
    wire long;
    
  //  btn_long_key hi(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_long(long));

     
    wire [15:0] duty_bcd;
    bin_to_dec(
            .bin(cnt ),
            .bcd(duty_bcd)  );
    
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(duty_bcd), .seg_7(seg_7) );

    pwm_128step_freq  #(.pwm_freq(50), .duty_steps(1024)) pwm_motor(.clk(clk), .reset_p(reset_p),.duty(cnt),.pwm(servo_pwm));


endmodule
  
  
//module servo_motor_pro(
//    input clk, reset_p,
//    input btn,
//    input [2:0] pulse_out,
//    output [2:0] TTL,
//    output servo_pwm,
//    output [3:0] com,
//    output [7:0] seg_7,
//    output servo_pwm
//);
    
//    ultrasonic_wave_detector de_test(   .clk(clk), .reset_p(reset_p), .btn(btn), .pulse_out(pulse_out), cnt,
//                                        .down_up, stop, .TTL(TTL), .servo_pwm(servo_pwm));


//    top_servo_project(clk, reset_p, down_up, stop,
//    output reg [7:0] cnt,
//    output [3:0] com,
//    output [7:0] seg_7,
//    output servo_pwm);


//endmodule
    
    
module fan_top_project(
    input clk, reset_p,
    input [2:0] btn,
    input vauxn6, vauxp6,
    input [3:0] pulse_out,
    output [3:0] TTL,
    output [6:0] led,
    output motor_pwm,// motor_stop_t, motor_stop_r ,motor_off_s,
    output [3:0] com,
    output [7:0] seg_7);

    wire motor_stop, motor_stop_t, motor_stop_r;
  //  wire [15:0] value; , motor_off_s
    wire motor_stop_f;
    
    wire motor_off_s;

    fan motor_pwm_ctnr(  .clk(clk), .reset_p(reset_p), .btn(btn[0]), .motor_stop_f(motor_stop_f),
                        .motor_stop( (motor_stop_t || motor_stop_r) || motor_off_s), .led(led[5:3]),  .motor_pwm(motor_pwm) );


    led_pro led_pwm_ctnr( .clk(clk), .reset_p(reset_p), .btn(btn[1]), .pwm_led(led[6]));


    timer_set_value cook_timer( .clk(clk), .reset_p(reset_p), .btn(btn[2]), .vauxn6(vauxn6), .vauxp6(vauxp6), .motor_stop(motor_stop_t), 
                                .motor_stop_f(motor_stop_f), .motor_off_s(motor_off_s), .motor_stop_r(motor_stop_r),  .led(led[2:0]), .com(com), .seg_7(seg_7));
                                
  //  cook_timer_test ( .clk(clk), .reset_p(reset_p),  .btn(btn_long), .vauxn6(vauxn6), .vauxp6(vauxp6), .seg_7(seg_7), .com(com), .timeout_led(motor_stop_r));                                

    HC_SR04_test_project motor_off_so( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .motor_off(motor_off_s));
    
    
endmodule

  module ultrasonic_wave_detector_test(
     input clk, reset_p,
     input btn,
     input [2:0] pulse_out,
     output [2:0] TTL,
//     output [3:0] com,
//     output [7:0] seg_7,
//     output servo_pwm
    output [3:0] led);
     
    parameter S_IDLE =  4'b0001;
    parameter S_LEFT =  4'b0010;
    parameter S_MID  =  4'b0100;
    parameter S_RIGHT = 4'b1000; 
    
    reg [3:0] state, state_next;
    assign led = state;
    wire [11:0] distance [2:0];
  
    HC_SR04  detector0_left( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .distance(distance[0]));
    HC_SR04  detector1_mid( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[1]), .TTL(TTL[1]), .distance(distance[1]));
    HC_SR04  detector2_right( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[2]), .TTL(TTL[2]), .distance(distance[2]));
  
    wire mode;
    
     btn_long(.clk(clk), .reset_p(reset_p), .btn(btn), .long_key(btn_long), .short_key(short_press));
        
     T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn_long), .q(mode));             

    wire [7:0] cnt;
    reg down_up, stop;      
    
//    top_servo_project servo_motor( .clk(clk), .reset_p(reset_p), .down_up(down_up), .stop(stop), 
//                                 .com(com), .seg_7(seg_7), .cnt(cnt),.servo_pwm(servo_pwm));
                                 
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = S_IDLE;
        end
        else begin
            state = state_next;
        end
    end
    
    reg distance_left,distance_mid, distance_right ;
    
    reg [11:0] distance_value_high, distance_value_low, distance_value_middle ;
    


always @ (posedge clk or posedge reset_p) begin
    if (reset_p) begin
        distance_value_low = 12'd0;
        distance_left = 0;
        distance_mid = 0;
        distance_right = 0;
    end
    else begin
        if ((distance[0] <= distance[1]) && (distance[0] <= distance[2])) begin
            distance_value_low = distance[0];
            if (distance_value_low <= 50) begin
                distance_left = 1;
                distance_mid = 0;
                distance_right = 0;
            end
        end
        else if ((distance[1] <= distance[0]) && (distance[1] <= distance[2])) begin
            distance_value_low = distance[1];
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 1;
                distance_right = 0;
            end
        end
        else if ((distance[2] <= distance[0]) && (distance[2] <= distance [1]))begin
            distance_value_low = distance[2];
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 1;
            end
        end
    end
end
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = S_IDLE;
        end
        else begin
            case (state)
                S_IDLE : begin
                    if (distance_left) begin
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        state_next = S_RIGHT;
                    end
                end
                S_LEFT : begin
                    down_up = 1;
                    stop = 0;
                    if (cnt <=12) begin
                        stop = 1;
                    end
                    else if (distance_mid) begin
                        stop = 0;
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        stop = 0;
                        state_next = S_RIGHT;
                    end
                end
                S_MID : begin
                    if (distance_mid) begin
                        stop = 1;
                    end
                    else if (distance_right) begin
                        stop = 0;
                        state_next = S_RIGHT;
                    end
                    else if (distance_left) begin
                        stop = 0;
                        state_next = S_LEFT;
                    end
                end
                S_RIGHT : begin
                    down_up = 0;
                    stop = 0;
                    if (cnt >= 64) begin
                        stop = 1;
                    end
                    else if (distance_left) begin
                        stop = 0;
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        stop = 0;
                        state_next = S_MID;
                    end
                end
            endcase
        end
    end
    
    
    
                                     
  
  endmodule
  
    module ultrasonic_wave_detector_test0(
     input clk, reset_p,
     input [2:0] pulse_out,
     input [7:0] cnt,
     output reg down, up, stop, 
     output [2:0] TTL,
     output [3:0] led);
     
    parameter S_IDLE =  4'b0001;
    parameter S_LEFT =  4'b0010;
    parameter S_MID  =  4'b0100;
    parameter S_RIGHT = 4'b1000; 
    
    reg [3:0] state, state_next;
    assign led = state;
    wire [11:0] distance_left_r, distance_mid_r, distance_right_r;
  
    HC_SR04  detector0_left( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .distance(distance_left_r));
    HC_SR04  detector1_mid( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[1]), .TTL(TTL[1]), .distance(distance_mid_r));
    HC_SR04  detector2_right( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[2]), .TTL(TTL[2]), .distance(distance_right_r));
  
 
     
    
                            
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = S_IDLE;
        end
        else begin
            state = state_next;
        end
    end
    
    reg distance_left,distance_mid, distance_right ;
    
    reg [11:0] distance_value_high, distance_value_low, distance_value_middle ;
    


always @ (posedge clk or posedge reset_p) begin
    if (reset_p) begin
        distance_value_low = 12'd0;
        distance_left = 0;
        distance_mid = 0;
        distance_right = 0;
    end
    else begin
        if ((distance_left_r <= distance_mid_r) && (distance_left_r <= distance_right_r)) begin
            distance_value_low = distance_left_r;
            if (distance_value_low <= 50) begin
                distance_left = 1;
                distance_mid = 0;
                distance_right = 0;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
        else if ((distance_mid_r <= distance_left_r) && (distance_mid_r <= distance_right_r)) begin
            distance_value_low = distance_mid_r;
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 1;
                distance_right = 0;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
        else if ((distance_right_r <= distance_left_r) && (distance_right_r <= distance_mid_r))begin
            distance_value_low = distance_right_r;
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 1;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
    end
end
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = S_IDLE;
            
        end
        else begin
            case (state)
                S_IDLE : begin
                    if (distance_left) begin
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        state_next = S_RIGHT;
                    end
                end
                S_LEFT : begin
                    down = 1;
                    stop = 0;
                    if (cnt <=24) begin
                        stop = 1;
                        down = 0;
                        if (!distance_right) begin
                            stop = 0;
                            down = 0;
                            state_next = S_IDLE;
                        end
                    end
                     if (!distance_left) begin
                        stop = 0;
                        down = 0;
                        state_next = S_IDLE;
                    end
                end
                S_MID : begin
                    if (distance_mid) begin
                        stop = 1;
                    end
                    else begin
                        stop = 0;
                        state_next = S_IDLE;
                    end
                end
                S_RIGHT : begin
                    up = 1;
                    stop = 0;
                    if (cnt >= 128) begin
                        up = 0;
                        stop = 1;
                        if (!distance_right) begin
                            up = 0;
                            stop = 0;
                            state_next = S_IDLE;
                        end
                    end
                    else if (!distance_right) begin
                        up = 0;
                        stop = 0;
                        state_next = S_IDLE;
                    end
                end
            endcase
        end
    end
    
    
    
                                     
  
  endmodule
    
 
    module ultrasonic_wave_detector_test0_v2(
     input clk, reset_p,
     input [2:0] pulse_out,
     input [7:0] cnt,
     output reg down_up, stop, 
     output [2:0] TTL,
     output [3:0] led);
     
    parameter S_IDLE =  4'b0001;
    parameter S_LEFT =  4'b0010;
    parameter S_MID  =  4'b0100;
    parameter S_RIGHT = 4'b1000; 
    
    reg [3:0] state, state_next;
    assign led = state;
    wire [11:0] distance_left_r, distance_mid_r, distance_right_r;
  
    HC_SR04  detector0_left( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .distance(distance_left_r));
    HC_SR04  detector1_mid( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[1]), .TTL(TTL[1]), .distance(distance_mid_r));
    HC_SR04  detector2_right( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[2]), .TTL(TTL[2]), .distance(distance_right_r));
  
 
     
    
                            
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = S_IDLE;
        end
        else begin
            state = state_next;
        end
    end
    
    reg distance_left,distance_mid, distance_right ;
    
    reg [11:0] distance_value_high, distance_value_low, distance_value_middle ;
    


always @ (posedge clk or posedge reset_p) begin
    if (reset_p) begin
        distance_value_low = 12'd0;
        distance_left = 0;
        distance_mid = 0;
        distance_right = 0;
    end
    else begin
        if ((distance_left_r <= distance_mid_r) && (distance_left_r <= distance_right_r)) begin
            distance_value_low = distance_left_r;
            if (distance_value_low <= 50) begin
                distance_left = 1;
                distance_mid = 0;
                distance_right = 0;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
        else if ((distance_mid_r <= distance_left_r) && (distance_mid_r <= distance_right_r)) begin
            distance_value_low = distance_mid_r;
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 1;
                distance_right = 0;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
        else if ((distance_right_r <= distance_left_r) && (distance_right_r <= distance_mid_r))begin
            distance_value_low = distance_right_r;
            if (distance_value_low <= 50) begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 1;
            end
            else begin
                distance_left = 0;
                distance_mid = 0;
                distance_right = 0;
            end
        end
    end
end
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = S_IDLE;
            
        end
        else begin
            case (state)
                S_IDLE : begin
                    if (distance_left) begin
                        state_next = S_LEFT;
                    end
                    else if (distance_mid) begin
                        state_next = S_MID;
                    end
                    else if (distance_right) begin
                        state_next = S_RIGHT;
                    end
                end
                S_LEFT : begin
                    down_up = 1;
                    stop = 0;
                    if (cnt <=24) begin
                        stop = 1;
                        if (!distance_right) begin
                            stop = 0;
                            state_next = S_IDLE;
                        end
                    end
                     if (!distance_left) begin
                        stop = 0;
                        state_next = S_IDLE;
                    end
                end
                S_MID : begin
                    if (distance_mid) begin
                        stop = 1;
                    end
                    else begin
                        stop = 0;
                        state_next = S_IDLE;
                    end
                end
                S_RIGHT : begin
                    down_up = 0;
                    stop = 0;
                    if (cnt >= 128) begin
                        stop = 1;
                        if (!distance_right) begin
                            stop = 0;
                            state_next = S_IDLE;
                        end
                    end
                    else if (!distance_right) begin
                        stop = 0;
                        state_next = S_IDLE;
                    end
                end
            endcase
        end
    end
    
    
    
                                     
  
  endmodule   
    
 module servo_motor_detector_v1(
    input clk, reset_p,
    input [2:0] pulse_out,
    input btn,
    output [2:0] TTL,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm,
    output [3:0] led
 );
 
    wire [7:0] cnt;
    
    wire down, up, stop;
    
   wire long_key, start_stop;
    
    assign start_stop = mode?  reset_p : 1; 
    
    btn_long btn_long0( .clk(clk), .reset_p(reset_p), .btn(btn),  .long_key(long_key));
    
    T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(long_key), .q(mode));             

 
    ultrasonic_wave_detector_test0 detector0(.clk(clk), .reset_p(start_stop),  .cnt(cnt), 
                                             .down(down), .up(up), .stop(stop),  .pulse_out(pulse_out), .TTL(TTL), .led(led));
 
    top_servo_project  detector1( .clk(clk), .reset_p(start_stop), .down(down), .up(up), .stop(stop),  .cnt(cnt), .com(com), .seg_7(seg_7), .servo_pwm(servo_pwm));
 
 endmodule
 
 
 
   
 module servo_motor_detector_v2(
    input clk, reset_p,
    input [3:0] pulse_out,
    input btn,
    output [3:0] TTL,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm,
    output [4:0] led
 );
 
    wire [7:0] cnt;
    
    wire down_up, stop;
    wire mode;
    
    
    assign led[0] = mode;
    
    wire long_key, start_stop;
    
    assign start_stop = mode?  reset_p : 1; 
    
    btn_long btn_long0( .clk(clk), .reset_p(reset_p), .btn(btn),  .long_key(long_key));
    
    T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(long_key), .q(mode));             

    
    ultrasonic_wave_detector_test0_v2 detector0(.clk(clk), .reset_p(start_stop),  .cnt(cnt), 
                                             .down_up(down_up), .stop(stop),  .pulse_out(pulse_out), .TTL(TTL), .led(led[4:1]));
 
    top_servo_project_v2  detector1( .clk(clk), .reset_p(start_stop), .down_up(down_up), .stop(stop),  .cnt(cnt), .com(com), .seg_7(seg_7), .servo_pwm(servo_pwm));
 
 endmodule
 
 module fan_top_project_detector_v1(
    input clk, reset_p,
    input [3:0] btn,
    input vauxn6, vauxp6,
    input [3:0] pulse_out,
    output [3:0] TTL,
    output [6:0] led,
    output motor_pwm,
    output [3:0] com,
    output [7:0] seg_7,
    output servo_pwm);

    wire motor_stop, motor_stop_t, motor_stop_r;
  //  wire [15:0] value; , motor_off_s
    wire motor_stop_f;
    


    fan motor_pwm_ctnr(  .clk(clk), .reset_p(reset_p), .btn(btn[0]), .motor_stop_f(motor_stop_f),
                        .motor_stop( (motor_stop_t || motor_stop_r) || motor_off_s), .state_check_led(led[5:3]),  .motor_pwm(motor_pwm) );


    led_pro led_pwm_ctnr( .clk(clk), .reset_p(reset_p), .btn(btn[1]), .pwm_led(led[6]));


    timer_set_value cook_timer( .clk(clk), .reset_p(reset_p), .btn(btn[2]), .vauxn6(vauxn6), .vauxp6(vauxp6), .motor_stop(motor_stop_t), 
                                .motor_stop_f(motor_stop_f), .motor_off_s(motor_off_s), .motor_stop_r(motor_stop_r),  .led(led[2:0]), .com(com), .seg_7(seg_7));
                                
  //  cook_timer_test ( .clk(clk), .reset_p(reset_p),  .btn(btn_long), .vauxn6(vauxn6), .vauxp6(vauxp6), .seg_7(seg_7), .com(com), .timeout_led(motor_stop_r));                                

    HC_SR04_test_project motor_off_so( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[0]), .TTL(TTL[0]), .motor_off(motor_off_s));
    
    servo_motor_detector_v1 ultra( .clk(clk), .reset_p(reset_p), .btn(btn[3]), .pulse_out(pulse_out[3:1]), .TTL(TTL[3:1]), .servo_pwm(servo_pwm) );
    
    // �����ɶ��� �����̴� ����
    
endmodule

module led_dht11_pwm_top(
    input clk,reset_p,
    inout dht11_data,
    output [7:0] seg_7,
    output [3:0] com,
    output led_r,
    output led_g,
    output led_b,
    output [4:0] led_select_mode
);

parameter   IDLE                      = 5'b00001;
parameter   COLD                      = 5'b00010;
parameter   GOOD                      = 5'b00100;
parameter   HOT                       = 5'b01000;
parameter   VERY_HOT                  = 5'b10000;

            reg     [4 : 0]     select_mode;
            reg     [4 : 0]     next_mode;
            reg     [7 : 0]     duty_r,duty_g,duty_b;
            wire    [15 : 0]    value_a;
            

            
dht11_fan_top(
clk, reset_p, dht11_data, value_a
);

pwm_128step pwm_led_r(
.clk(clk),
.reset_p(reset_p),
.duty(duty_r),
.pwm(led_r)
);

pwm_128step pwm_led_g(
.clk(clk),
.reset_p(reset_p),
.duty(duty_g),
.pwm(led_g)
);

pwm_128step pwm_led_b(
.clk(clk),
.reset_p(reset_p),
.duty(duty_b),
.pwm(led_b)
);

    always @(negedge clk or posedge reset_p) begin
        if (reset_p) begin
            select_mode <= IDLE;
        end else begin
            select_mode <= next_mode;
        end
    end

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            next_mode <= IDLE;
            duty_b <= 0;
            duty_r <= 0;
            duty_g <= 0;
        end
        else begin
            case (select_mode)
                IDLE: begin
                    duty_b <= 0;
                    duty_r <= 0;
                    duty_g <= 0;
                    if (value_a < 22) begin
                    next_mode <= COLD;
                    end
                    else if (value_a >= 22 && value_a < 24) begin                     
                    next_mode <= GOOD;
                    end
                    else if (value_a >= 24 && value_a < 26) begin
                    next_mode <= HOT;
                    end
                    else if (value_a >= 26) begin
                    next_mode <= VERY_HOT;
                    end
                end
                COLD: begin
                    if (value_a >= 22) next_mode <= IDLE; //18
                    else begin                     
                    next_mode <= COLD;
                    duty_b <= 255;
                    duty_r <= 0;
                    duty_g <= 0;
                    end
                end
                GOOD: begin
                    if (value_a < 22 || value_a > 23) next_mode <= IDLE; //25
                    else begin                     
                    next_mode <= GOOD;
                    duty_b <= 0;
                    duty_r <= 0;
                    duty_g <= 255;
                    end
                end
                HOT: begin
                    if (value_a < 23 || value_a > 25) next_mode <= IDLE;//31
                    else begin                     
                    next_mode <= HOT;
                    duty_b <= 0;
                    duty_r <= 255;
                    duty_g <= 255;
                    end
                end    
                VERY_HOT: begin
                    if (value_a < 25) next_mode <= IDLE; //31
                    else begin         
                    next_mode <= VERY_HOT;
                    duty_b <= 0;
                    duty_r <= 255;
                    duty_g <= 0;
                    end
                end
            endcase
        end
    end
    
    assign led_select_mode = select_mode;
    wire [15:0] adc_value_bcd;
    bin_to_dec(
            .bin({4'b0, value_a[7:0]}),
            .bcd(adc_value_bcd)  );

//assign led_r = duty_r;
//assign led_g = duty_g;
//assign led_b = duty_b;

 fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(adc_value_bcd), .seg_7(seg_7) );

endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module dht11_fan_top(
    input   clk, 
    input   reset_p,
    inout   dht11_data,
    output  [15:0]value
);
    wire [15:0] led;
    wire [7:0] humidity, temperature;
    dht11_ctrl dht11(
    clk, reset_p,
    dht11_data, humidity, temperature, led);
    
   wire [15:0] bcd_humi, bcd_tmpr;
   
   assign value = {8'b0, temperature};
    
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module dht11_ctrl(
    input clk, reset_p,
    inout dht11_data,
    output reg [7:0] humidity, temperature,
    output [15:0] led
    );

    parameter S_IDLE        = 6'b00_0001;
    parameter S_LOW_18MS    = 6'b00_0010;
    parameter S_HIGH_20US   = 6'b00_0100;
    parameter S_LOW_80US    = 6'b00_1000;
    parameter S_HIGH_80US   = 6'b01_0000;
    parameter S_READ_DATA   = 6'b10_0000;
    
    parameter S_WAIT_PEDGE = 2'b01;
    parameter S_WAIT_NEDGE = 2'b10;
    
    reg [21:0] count_usec;
    wire clk_usec;
    reg count_usec_e;
    wire dht_nedge, dht_pedge;
    reg [5:0] state, next_state;
    reg [1:0] read_state;
    reg [39:0] temp_data;
    reg [5:0] data_count;
    reg dht11_buffer;
    
    
    clock_div_100 us_clk(.clk(clk), .reset_p(reset_p), .clk_div_100(clk_usec));
    
    edge_detector_p ed(
        .clk(clk), .reset_p(reset_p), .cp(dht11_data), 
        .n_edge(dht_nedge), .p_edge(dht_pedge));
    
    // count_usec
    always @(negedge clk or posedge reset_p)begin //posedge�� �ٲٸ� �ȵǴ� ����?
        if(reset_p)count_usec = 0;
        else if(clk_usec && count_usec_e)count_usec = count_usec + 1;
        else if(count_usec_e == 0)count_usec = 0;
    end
    
    // state
    always @(negedge clk or posedge reset_p)begin
        if(reset_p)state = S_IDLE;
        else state = next_state;
    end
    
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)begin
            count_usec_e = 0;
            next_state = S_IDLE;
            read_state = S_WAIT_PEDGE;
            data_count = 0;
            dht11_buffer = 'bz;
        end
        else begin
            case(state)
                S_IDLE: begin
                    if(count_usec < 22'd3_000_000)begin //3_000_000
                        count_usec_e = 1;
                        dht11_buffer = 'bz;
                    end
                    else begin
                        next_state = S_LOW_18MS;
                        count_usec_e = 0;
                    end
                end
                S_LOW_18MS:begin
                    if(count_usec < 22'd18_000)begin
                        dht11_buffer = 0;
                        count_usec_e = 1;
                    end
                    else begin
                        next_state = S_HIGH_20US;
                        count_usec_e = 0;
                        dht11_buffer = 'bz;
                    end
                end
                S_HIGH_20US:begin
                    count_usec_e = 1;
                    if(count_usec > 22'd100_000)begin
                        next_state = S_IDLE;
                        count_usec_e = 0;
                    end
                        if(dht_nedge)begin
                            next_state = S_LOW_80US;
                            count_usec_e = 0;
                        end
                    
                end
                S_LOW_80US:begin
                count_usec_e = 1;
                    if(count_usec > 22'd100_000)begin
                        next_state = S_IDLE;
                        count_usec_e = 0;
                    end
                    if(dht_pedge)begin
                        next_state = S_HIGH_80US;
                    end
                end
                S_HIGH_80US:begin
                    if(dht_nedge)begin
                        next_state = S_READ_DATA;
                    end
                end
                S_READ_DATA:begin
                    case(read_state)
                        S_WAIT_PEDGE:begin
                            if(dht_pedge)read_state = S_WAIT_NEDGE;
                            count_usec_e = 0;
                        end
                        S_WAIT_NEDGE:begin
                            if(dht_nedge)begin
                                if(count_usec < 45)begin
                                    temp_data = {temp_data[38:0], 1'b0};
                                end
                                else begin
                                    temp_data = {temp_data[38:0], 1'b1};
                                end
                                data_count = data_count + 1;
                                read_state = S_WAIT_PEDGE;
                            end
                            else count_usec_e = 1;
                            if(count_usec > 22'd700_000)begin
                                next_state = S_IDLE;
                                count_usec_e = 0;
                                data_count = 0;
                                read_state = S_WAIT_PEDGE;
                            end
                        end
                    endcase
                    if(data_count >= 40)begin
                        data_count = 0;
                        next_state = S_IDLE;
                        if((temp_data[39:32] + temp_data[31:24] +temp_data[23:16]+temp_data[15:8]) == temp_data[7:0])begin
                        humidity = temp_data[39:32];
                        temperature = temp_data[23:16];
                    end
                end
             end
                default:next_state = S_IDLE;
            endcase
        end
    end

    assign led[5:0] = state;
    assign dht11_data = dht11_buffer;
    
endmodule

module fan_top_project_detector_V2(
    input clk, reset_p,
    input [3:0] btn,
    inout dht11_data,
    input vauxn6, vauxp6,
    input [3:0] pulse_out,
    output [3:0] TTL,
    output [11:0] led,
    output motor_pwm,
    output servo_pwm,
    output [3:0] com,
    output [7:0] seg_7,
    output led_r,
    output led_g,
    output led_b);

 //   wire motor_stop, motor_stop_t, motor_stop_r;
  //  wire [15:0] value; , motor_off_s
    wire motor_stop_f;
    


    fan motor_pwm_ctnr(  .clk(clk), .reset_p(reset_p), .btn(btn[0]), .motor_stop_f(motor_stop_f),
                        .motor_stop( (motor_stop_t || motor_stop_r) || motor_off_s), .led(led[5:3]),  .motor_pwm(motor_pwm) );


    led_pro led_pwm_ctnr( .clk(clk), .reset_p(reset_p), .btn(btn[1]), .pwm_led(led[6]));


    timer_set_value cook_timer( .clk(clk), .reset_p(reset_p), .btn(btn[2]), .vauxn6(vauxn6), .vauxp6(vauxp6), .motor_stop(motor_stop_t), 
                                .motor_stop_f(motor_stop_f), .motor_off_s(motor_off_s), .motor_stop_r(motor_stop_r),  .led(led[2:0]), .com(com), .seg_7(seg_7));
                                
  //  cook_timer_test ( .clk(clk), .reset_p(reset_p),  .btn(btn_long), .vauxn6(vauxn6), .vauxp6(vauxp6), .seg_7(seg_7), .com(com), .timeout_led(motor_stop_r));                                

    HC_SR04_test_project motor_off_so( .clk(clk), .reset_p(reset_p), .pulse_out(pulse_out[3]), .TTL(TTL[3]), .motor_off(motor_off_s));
    
    servo_motor_detector_v2 ultra( .clk(clk), .reset_p(reset_p), .btn(btn[3]),.pulse_out(pulse_out[2:0]), .TTL(TTL[2:0]), .servo_pwm(servo_pwm), .led(led[11:7]) );
    

    led_dht11_pwm_top( .clk(clk), .reset_p(reset_p), .dht11_data(dht11_data), .led_r(led_r), .led_g(led_g), .led_b(led_b));
endmodule


module adc_sequence2_top(
    input clk, reset_p,
    input vauxp6, vauxn6, vauxp15, vauxn15,
    output led_r, led_g,  
    output [3:0] com,
    output led,
    output [7:0] seg_7);
    
    assign led = 1;
    
    wire [15:0] do_out;
    wire eoc_out;
    wire [4:0] channel_out;
    xadc_sequencer   adc_seq2(
          .daddr_in({2'b0,channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .vauxp15(vauxp15),
          .vauxn15(vauxn15),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );   

    wire eoc_out_pedge;
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    
    reg [11:0] adc_value_x, adc_value_y;
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            adc_value_x = 0;
            adc_value_y = 0;
        end
        else if (eoc_out_pedge) begin
            case (channel_out[3:0])
                6: adc_value_x = do_out[15:4];
                15: adc_value_y = do_out[15:4];            
            endcase
        end        
    end
    
    pwm_128step pwm_led_r (.clk(clk), .reset_p(reset_p), .duty(adc_value_x[11:5]), .pwm(led_r));

    pwm_128step pwm_led_g (.clk(clk), .reset_p(reset_p), .duty(adc_value_y[11:5]), .pwm(led_g));
   
   
    
    wire [15:0] value, adc_value_bcd_x, adc_value_bcd_y;
    
    bin_to_dec adc_x(   .bin({6'b0, adc_value_x[11:6]} ),
                        .bcd(adc_value_bcd_x)  );
    
    bin_to_dec adc_y(   .bin({6'b0, adc_value_y[11:6]} ),
                        .bcd(adc_value_bcd_y)  );
                        
    assign value = {adc_value_bcd_x[7:0], adc_value_bcd_y[7:0]};
   
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );



endmodule


module I2C_master_top(
    input clk, reset_p,
    input [1:0] btn,
    output sda, scl,
    output [6:0] led);


    reg [7:0] data;
    reg comm_go;

    I2C_master i2c_top(     .clk(clk), .reset_p(reset_p), .addr(7'h27), .data(data),
                            .rd_wr(0), .comm_go(comm_go), .sda(sda), .scl(scl), .led(led));

    wire [1:0] btn_pedge;

    button_cntr btn_0( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[0]));
    button_cntr btn_1( .btn(btn[1]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[1]));

    always @(posedge clk, posedge reset_p) begin
        if (reset_p) begin
            data = 0;
            comm_go = 0;
        end
        else begin
            if(btn_pedge[0])begin
                data = 8'b0000_0000;
                comm_go = 1;
            end
            else if (btn_pedge[1]) begin
                data = 8'b00001000;
                comm_go = 1;
            end
            else comm_go = 0;
        end
    end
    
    

endmodule


module i2c_txtlcd_test_top(
    input clk, reset_p,
    input [3:0] btn,
    output scl, sda
);
    
    parameter IDLE = 6'b00_0001;
    parameter INIT = 6'b00_0010;
    parameter SEND_BYTE = 6'b00_0100;
    parameter SHIFT_RIGHT_DISPLAY = 6'b00_1000;
    parameter SHIFT_LEFT_DISPLAY = 6'b01_0000;
    reg [7:0] send_buffer;

    reg send, rs;

    wire busy;

    idc_lcd_send_byte send_i2c( .clk(clk), .reset_p(reset_p),
                                .addr(7'h27),
                                .send_buffer(send_buffer),
                                .send(send), .rs(rs),
                                .scl(scl), .sda(sda),
                                .busy(busy));



    reg [5:0] state, state_next;

    wire [3:0] btn_pedge;

    button_cntr btn_0( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[0]));
    button_cntr btn_1( .btn(btn[1]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[1]));
    button_cntr btn_2( .btn(btn[2]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[2]));
    button_cntr btn_3( .btn(btn[3]), .clk(clk), .reset_p(reset_p),  .btn_pedge(btn_pedge[3]));

    wire w_us_clk;
    clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .clk_div_100(w_us_clk));
    
    reg [21:0] count_usec;
    reg count_usec_e;

    always @(negedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_usec = 0;
        end
        else begin
            if(w_us_clk && count_usec_e) begin
                count_usec = count_usec +1;
            end
            else if (!count_usec_e) begin
                count_usec = 0;
            end
        end
    end
    

    always @(negedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = IDLE;
        end
        else begin
            state = state_next;
        end
    end

    reg init_flag;
    reg [5:0] cnt_data;

    always @(posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = IDLE;
            init_flag = 0;
            send = 0;
            send_buffer = 0;
            rs = 0;
            count_usec_e = 0;
            cnt_data = 0;
        end
        else begin
            case(state)
                IDLE : begin
                    if (init_flag) begin
                        if (btn_pedge[0]) begin
                            state_next = SEND_BYTE;
                        end
                        else if (btn_pedge[2]) begin
                            state_next = SHIFT_RIGHT_DISPLAY;
                        end
                        else if (btn_pedge[1]) begin
                            state_next = SHIFT_LEFT_DISPLAY;
                        end
                        
                    end
                    else begin
                        if(count_usec <= 22'd80_000) begin
                            count_usec_e = 1;
                        end
                        else begin
                            state_next = INIT;
                            init_flag = 1;
                            count_usec_e = 0;
                        end
                    end
                end
                INIT : begin
                    if (busy) begin
                        send = 0;                       //make rising pulse 
                        if (cnt_data >= 6) begin
                            cnt_data = 0;
                            state_next = IDLE;
                            init_flag = 1;
                        end
                    end
                    else if (send == 0) begin
                        case(cnt_data)
                            0 : send_buffer = 8'h33;
                            1 : send_buffer = 8'h32;
                            2 : send_buffer = 8'h28;  // 0 0 n f (n = 1 line 2) (n = 0 line 1) (f = 1  5_10 dot) (f = 0 5_8 dot)  
                            3 : send_buffer = 8'h0c;  // 08 = display off, 0C = display on
                            4 : send_buffer = 8'h01;   
                            5 : send_buffer = 8'h06;
                        endcase
                        send = 1;
                        cnt_data = cnt_data +1;
                    end

                end
                SEND_BYTE : begin
                    if (busy) begin
                        send = 0;
                        state_next = IDLE;
                        if(cnt_data >= 9) begin
                            cnt_data = 0;
                        end
                        else cnt_data = cnt_data +1;
                    end
                    else begin
                        rs = 1;
                        send_buffer = "0"  + cnt_data;
                        send = 1;
                        
                    end

                end
                SHIFT_RIGHT_DISPLAY: begin
                    if (busy) begin
                        send = 0;
                        state_next = IDLE;
                    end
                    else begin
                        rs = 0;
                        send_buffer = 8'h1c;
                        send = 1;
                        
                    end
                end
                SHIFT_LEFT_DISPLAY : begin
                    if (busy) begin
                        send = 0;
                        state_next = IDLE;
                    end
                    else begin
                        rs = 0;
                        send_buffer = 8'h18;
                        send = 1;
                        
                    end

                end
            endcase
        end
    end
   



endmodule


module top_fnd_hex_bcd (
    input clk,
    input reset_p,
    input [11:0] sw,
    input [3:0] btn,
    output [3:0] com,
    output [7:0] seg_7
);

bcd_fnd_cntr  bfc  (
                clk,
                reset_p,
                sw,
                btn[0],
                com,
                seg_7);


endmodule


module stop_watch_msec_soc_reg(
    input clk, reset_p,
    input [1:0] btn_ctr_reg,
    output [7:0] seg_7,
    output [3:0] com);
    
    wire btn0_pedge, btn1_pedge, start_stop, lap;
    
    wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
    
    wire [3:0] w_sec1, w_sec10;

    assign {start_stop, lap} = btn_ctr_reg;
    
    // button_cntr btn_start( .btn(btn_ctr_reg[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn0_pedge)); 

    // T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn0_pedge), .q(start_stop));             

    // button_cntr btn_lap( .btn(btn_ctr_reg[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn1_pedge)); 
    
    // T_flip_flop_p t_lap ( .clk(clk), .reset_p(reset_p), .t(btn1_pedge), .q(lap)); 
    
    wire lap_pedge;

    
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(lap), .p_edge(lap_pedge));



    wire clk_start;
    
    assign clk_start = start_stop ? clk: 0;
    
    clock_div_100 i_us_clk( .clk(clk_start), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
    clock_div_1000 i_ms_clk(.clk(clk_start), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
    wire w_10ms_clk;
    
    wire [3:0] w_10msec1, w_10msec10; // wire �����ҋ� ��Ʈ �� Ȯ��, �̸� Ȯ�� �Ұ�! 
    
    clock_div_10 i_10ms_clk( .clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk) , .cp_div_10_nedge(w_10ms_clk));
    
    clock_div_1000 i_s_clk (.clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));


    counter_bcd_100 msec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_10ms_clk) , .bcd10(w_10msec10), .bcd1(w_10msec1) );

    counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_s_clk) , .bcd10(w_sec10), .bcd1(w_sec1) );
    
    wire [15:0] cur_time;
    
    assign cur_time = {w_sec10, w_sec1,w_10msec10,w_10msec1};
    
    reg [15:0] lap_time;
    
    always@ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
                lap_time = 0;
        end
        else if (lap_pedge) begin
            lap_time = cur_time;
        end
     end
     
    wire [15:0] value;

    assign value = lap ? lap_time : cur_time;
    
    fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    

    
endmodule

// module stop_watch_msec_soc_reg(
//     input clk, reset_p,
//     input [1:0] btn_ctr_reg,
//     output [7:0] seg_7,
//     output [3:0] com);
    
//     wire btn0_pedge, btn1_pedge, start_stop, lap;
    
//     wire w_us_clk, w_ms_clk, w_s_clk, w_m_clk;
    
//     wire [3:0] w_sec1, w_sec10;

//     assign {start_stop, lap} = btn_ctr_reg;
    
//     // button_cntr btn_start( .btn(btn_ctr_reg[0]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn0_pedge)); 

//     // T_flip_flop_p t_start ( .clk(clk), .reset_p(reset_p), .t(btn0_pedge), .q(start_stop));             

//     // button_cntr btn_lap( .btn(btn_ctr_reg[1]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn1_pedge)); 
    
//     // T_flip_flop_p t_lap ( .clk(clk), .reset_p(reset_p), .t(btn1_pedge), .q(lap)); 
    
//     wire lap_pedge;

    
//     edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(lap), .p_edge(lap_pedge));



//     wire clk_start;
    
//     assign clk_start = start_stop ? clk: 0;
    
//     clock_div_100 i_us_clk( .clk(clk_start), .reset_p(reset_p), .cp_div_100(w_us_clk));
    
//     clock_div_1000 i_ms_clk(.clk(clk_start), .reset_p(reset_p), .clk_source(w_us_clk), .cp_div_1000_nedge(w_ms_clk));
    
//     wire w_10ms_clk;
    
//     wire [3:0] w_10msec1, w_10msec10; // wire �����ҋ� ��Ʈ �� Ȯ��, �̸� Ȯ�� �Ұ�! 
    
//     clock_div_10 i_10ms_clk( .clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk) , .cp_div_10_nedge(w_10ms_clk));
    
//     clock_div_1000 i_s_clk (.clk(clk_start), .reset_p(reset_p), .clk_source(w_ms_clk), .cp_div_1000_nedge(w_s_clk));


//     counter_bcd_100 msec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_10ms_clk) , .bcd10(w_10msec10), .bcd1(w_10msec1) );

//     counter_bcd_60 sec_bcd(.clk(clk) , .reset_p(reset_p), .clk_time(w_s_clk) , .bcd10(w_sec10), .bcd1(w_sec1) );
    
//     wire [15:0] cur_time;
    
//     assign cur_time = {w_sec10, w_sec1,w_10msec10,w_10msec1};
    
//     reg [15:0] lap_time;
    
//     always@ (posedge clk, posedge reset_p) begin
//         if(reset_p) begin
//                 lap_time = 0;
//         end
//         else if (lap_pedge) begin
//             lap_time = cur_time;
//         end
//      end
     
//     wire [15:0] value;

//     assign value = lap ? lap_time : cur_time;
    
//     fnd_4digit_cntr fnd_on ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );
    

    
// endmodule

