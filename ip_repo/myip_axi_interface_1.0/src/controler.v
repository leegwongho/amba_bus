`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/21 09:18:46
// Design Name: 
// Module Name: test_top
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


module fnd_4digit_cntr( clk, reset_p, com , value, seg_7 );
input clk, reset_p ;
input [15:0] value;
output [3:0] com;
output [7:0] seg_7;

reg [3:0] hex_value;

    ring_counter_bcd com_0 (.clk(clk), .reset_p(reset_p), . q(com));    
    
    decoder_7seg_behavioral  seg0(  .hex_value(hex_value),  .seg_7(seg_7));    

    always @ (posedge clk) begin                        
               case(com)
                        4'b1110: hex_value = value[3:0];
                        4'b1101: hex_value = value[7:4];
                        4'b1011: hex_value = value[11:8];
                        4'b0111: hex_value = value[15:12];
               endcase
    end


endmodule


module keypad_cntr_ring_count(
    input clk, reset_p,
    input [3:0] row, 
    output reg  [3:0]  col,
    output reg [3:0] key_value);
   
   reg [19:0] clk_div;
   always @ (posedge clk) clk_div = clk_div +1;
   
   wire clk_8msec_n, clk_8msec_p;
   
    edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_div[19]), .pedge(clk_8msec_p),.n_edge(clk_8msec_n));

   
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            col = 4'b0001;
        end
        else if(clk_8msec_n) begin
            case(col)
                4'b0001: col = 4'b0010;
                4'b0010: col = 4'b0100;
                4'b0100: col = 4'b1000;
                4'b1000: col = 4'b0001;
                default : col = 4'b0001 ;
            endcase
        end
    end
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            key_value = 0;
        end
        else if (clk_8msec_p)begin
            case({col,row})
                8'b0001_0001: key_value = 4'h0;
                8'b0001_0010: key_value = 4'h1;
                8'b0001_0100: key_value = 4'h2;
                8'b0001_1000: key_value = 4'h3;
                8'b0010_0001: key_value = 4'h4;
                8'b0010_0010: key_value = 4'h5;
                8'b0010_0100: key_value = 4'h6;
                8'b0010_1000: key_value = 4'h7;
                8'b0100_0001: key_value = 4'h8;
                8'b0100_0010: key_value = 4'h9;
                8'b0100_0100: key_value = 4'hA;
                8'b0100_1000: key_value = 4'hb;
                8'b1000_0001: key_value = 4'hc;
                8'b1000_0010: key_value = 4'hd;
                8'b1000_0100: key_value = 4'hE;
                8'b1000_1000: key_value = 4'hf;
                default ;
            endcase
        end
    end
    



endmodule

module keypad_cntr_FSM(
    input clk, reset_p,
    input [3:0] row, 
    output reg  [3:0]  col,
    output reg [3:0] key_value,
    output reg key_valid);
    
    parameter SCAN_0                = 5'b00001;
    parameter SCAN_1                = 5'b00010;
    parameter SCAN_2                = 5'b00100;
    parameter SCAN_3                = 5'b01000;
    parameter KEY_PROCESS     = 5'b10000;
    
    reg [4:0] state, state_next;
    
    wire clk_8msec_n, clk_8msec_p;
   
    
    always @ * begin
        case(state)
            SCAN_0: begin
                    if(row == 0) state_next = SCAN_1;
                    else state_next = KEY_PROCESS;
            end
            SCAN_1: begin
                    if(row == 0) state_next = SCAN_2;
                    else state_next = KEY_PROCESS;
             end
           SCAN_2: begin
                    if(row == 0) state_next = SCAN_3;
                    else state_next = KEY_PROCESS;
            end
             SCAN_3: begin
                    if(row == 0) state_next = SCAN_0;
                    else state_next = KEY_PROCESS;     
            end 
            KEY_PROCESS: begin
                    if(row == 0) state_next = SCAN_0;
                    else state_next = KEY_PROCESS;
            end
            default ;
            endcase

    end
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            state <= SCAN_0;
        end
        else if (clk_8msec_p) begin
            state <= state_next;
        end
    end
    

   reg [19:0] clk_div;
   always @ (posedge clk) clk_div = clk_div +1;
   

    edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_div[19]), .p_edge(clk_8msec_p),.n_edge(clk_8msec_n));

   
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            col = 4'b0001;
            key_valid  = 0;
            key_value = 0;
        end
        else if (clk_8msec_n)  begin
            case(state)
                SCAN_0: begin col = 4'b0001;  key_valid = 0; end
                SCAN_1: begin col = 4'b0010;  key_valid = 0; end
                SCAN_2: begin col = 4'b0100;  key_valid = 0; end
                SCAN_3: begin col = 4'b1000;  key_valid = 0; end
                KEY_PROCESS: begin
                    key_valid = 1;
                    case({col,row})
                        8'b0001_0001: key_value = 4'hA;
                        8'b0001_0010: key_value = 4'hb;
                        8'b0001_0100: key_value = 4'hE;
                        8'b0001_1000: key_value = 4'hd;
                        8'b0010_0001: key_value = 4'h3;
                        8'b0010_0010: key_value = 4'h6;
                        8'b0010_0100: key_value = 4'h9;
                        8'b0010_1000: key_value = 4'hF; //7
                        8'b0100_0001: key_value = 4'h2;
                        8'b0100_0010: key_value = 4'h5;
                        8'b0100_0100: key_value = 4'h8;
                        8'b0100_1000: key_value = 4'h0; // 0
                        8'b1000_0001: key_value = 4'h1;
                        8'b1000_0010: key_value = 4'h4;
                        8'b1000_0100: key_value = 4'h7;
                        8'b1000_1000: key_value = 4'hc; // f
                        default ;
                    endcase
                 end
              endcase
           end
end
        
    
//    always @ (posedge clk, posedge reset_p) begin
//        if(reset_p) begin
//            key_value = 0;
//        end
//        else if (clk_8msec_p)begin
//            case({col,row})
//                8'b0001_0001: key_value = 4'h0;
//                8'b0001_0010: key_value = 4'h1;
//                8'b0001_0100: key_value = 4'h2;
//                8'b0001_1000: key_value = 4'h3;
//                8'b0010_0001: key_value = 4'h4;
//                8'b0010_0010: key_value = 4'h5;
//                8'b0010_0100: key_value = 4'h6;
//                8'b0010_1000: key_value = 4'h7;
//                8'b0100_0001: key_value = 4'h8;
//                8'b0100_0010: key_value = 4'h9;
//                8'b0100_0100: key_value = 4'hA;
//                8'b0100_1000: key_value = 4'hb;
//                8'b1000_0001: key_value = 4'hc;
//                8'b1000_0010: key_value = 4'hd;
//                8'b1000_0100: key_value = 4'hE;
//                8'b1000_1000: key_value = 4'hf;
//                default ;
//            endcase
//        end
//    end
    

endmodule


module dht11_cntr(
    input clk, reset_p,
    inout dht11_data,
    output reg [7:0] humidity, temperature,
    output [5:0] d);

    parameter S_IDLE = 6'b00_0001;
    parameter S_LOW_18MS = 6'b00_0010;
    parameter S_HIGH_20US = 6'b00_0100;
    parameter S_LOW_80US = 6'b00_1000;
    parameter S_HIGH_80US = 6'b01_0000;
    parameter S_READ_DATA = 6'b10_0000;

    parameter S_WAIT_PEDGE = 2'b01;
    parameter S_WAIT_NEDGE = 2'b10;

    
    
    reg [24:0] count_usec;
    
    wire clk_us;
    
    reg count_usec_e;
    
    clock_div_100 us_clk (.clk(clk),  .reset_p(reset_p),  .clk_div_100(clk_us) );
    
    always @ (negedge clk, posedge reset_p) begin
        if(reset_p) begin
            count_usec = 0;
        end
        else if (clk_us && count_usec_e) begin
            count_usec = count_usec +1;
        end
        else if (count_usec_e == 0) begin
            count_usec = 0;
        end
    end
    
    wire  dht_nedge, dht_pedge;
    
    edge_detector_p  clk_source (.clk(clk), .reset_p(reset_p), .cp(dht11_data), .p_edge(dht_pedge),.n_edge(dht_nedge));

    reg [5:0] state, state_next;
    reg [1:0] read_state;
    
    always @(negedge clk, posedge reset_p) begin
        if(reset_p) begin
            state = S_IDLE;
        end
        else begin
            state = state_next;
        end
    end

    reg [39:0] temp_data;
    reg [5:0] data_count;
    reg dht11_buffer;
    
    assign dht11_data = dht11_buffer;
    
    always @ (posedge clk, posedge reset_p)begin
        if (reset_p) begin
            count_usec_e = 0;
            state_next = S_IDLE;
            read_state = S_WAIT_PEDGE;
            data_count = 0;
            dht11_buffer = 'bz;
        end
        else begin
            case(state)
                S_IDLE : begin 
                    if(count_usec < 23'd3000000) begin //3000000
                        count_usec_e = 1;
                        dht11_buffer = 'bz;
                    end
                    else begin
                        state_next = S_LOW_18MS;
                        count_usec_e = 0;
                    end
                end
                S_LOW_18MS : begin
                    if (count_usec < 22'd18000) begin
                        dht11_buffer = 0;
                        count_usec_e = 1;
                    end
                    else begin
                        state_next  = S_HIGH_20US;
                        count_usec_e = 0;
                        dht11_buffer = 'bz;
                    end
                end
                S_HIGH_20US : begin
                    count_usec_e = 1;
                    if (count_usec > 22'd100) begin
                        state_next = S_IDLE;
                        count_usec_e = 0;
                    end
                    if (dht_nedge) begin
                        state_next = S_LOW_80US;
                        count_usec_e = 0;
                    end
                end
                S_LOW_80US : begin
                      count_usec_e = 1;
                    if (count_usec > 22'd1000) begin
                        state_next = S_IDLE;
                        count_usec_e = 0;
                    end
                    if(dht_pedge) begin
                        state_next = S_HIGH_80US;
                        count_usec_e = 0;
                    end
                        
                end
                S_HIGH_80US : begin
                    if(dht_nedge) begin
                        state_next = S_READ_DATA;
                    end
                end
                S_READ_DATA : begin
                     case(read_state)
                        S_WAIT_PEDGE: begin
                                if(dht_pedge) begin
                                     read_state =  S_WAIT_NEDGE;
                                     count_usec_e = 0;
                                 end
                        end
                        S_WAIT_NEDGE : begin
                                if(dht_nedge) begin 
                                    if (count_usec < 45)begin
                                        temp_data = {temp_data[38:0],1'b0};                                 
                                    end
                                    else begin
                                        temp_data = {temp_data[38:0],1'b1};
                                    end
                                    data_count = data_count +1;
                                    read_state = S_WAIT_PEDGE;
                              end
                              else count_usec_e = 1;
                              if(count_usec > 22'd700) begin
                                    state_next = S_IDLE;
                                    count_usec_e = 0;
                                    data_count = 0;
                                    read_state = S_WAIT_PEDGE;
                              end
                           end
                     endcase
                     if(data_count >= 40) begin
                            data_count = 0;
                            state_next = S_IDLE;
                            if (((temp_data[39:32] + temp_data[31:24]) +( temp_data[23:16] + temp_data[15:8])) == temp_data[7:0] ) begin
                                humidity = temp_data[39:32];
                                temperature = temp_data[23:16];
                            end
                    end
                end
             default : state_next = S_IDLE; 
            endcase
        end
    end
    
    assign d= state;



endmodule


module HC_SR04(
    input clk, reset_p,
    input pulse_out,
    output reg TTL,
    output reg [11:0] distance,
    output [3:0] d);
    

    
    
    

    
    
    parameter S_IDLE = 3'b001;
    parameter S_TRIGGER = 3'b010;
    parameter S_ECHO = 3'b100;
    
        
    wire pulse_pedge, pulse_nedge, cm_count_nedge;
    
    edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(pulse_out), .p_edge(pulse_pedge),.n_edge(pulse_nedge));

    
    reg [19:0] count_sec;
    
    reg [2:0] state, state_next;
    
    reg count_sec_e;
    
    clock_div_100 us_clk (.clk(clk),  .reset_p(reset_p),  .clk_div_100(clk_us) );
    
    always @ (negedge clk, posedge reset_p ) begin
        if (reset_p) begin
            count_sec = 0;
        end
        else if (clk_us && count_sec_e) begin
            count_sec = count_sec +1;
         end
         else if (count_sec_e == 0) count_sec = 0;
    end 

    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = S_IDLE;
        end
         else begin
            state = state_next;
         end
    end
    
    reg clk_count_start;

    
    reg clk_e;
    
    reg [8:0] cm_count;
    
    clock_div_58 div_58( .clk(clk), .reset_p(reset_p), .clk_source(clk_us), .clk_e(clk_e), .cp_div_58_nedge(cm_count_nedge)  );
       
    always @ (negedge clk, posedge reset_p ) begin
        if (reset_p) begin
            cm_count = 0;
        end
        else if (cm_count_nedge) begin
            cm_count = cm_count +1;
         end
         else if (clk_e == 0) cm_count = 0;
    end 
     
        
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = S_IDLE;
            TTL = 0;
            count_sec_e = 0;
            clk_e = 0;
            clk_count_start = 0;
        end
        else begin
            case(state)
                S_IDLE : begin
                        if (count_sec > 20'd600000) begin
                                state_next = S_TRIGGER;
                                count_sec_e = 0;
                        end
                        else  begin
                            count_sec_e = 1;
                        end
                end
                S_TRIGGER : begin
                    count_sec_e = 1;
                    TTL = 1;
                    if (count_sec > 15'd11) begin
                        TTL = 0;
                        state_next = S_ECHO;
                        count_sec_e = 0;
                        
                    end
                end
                S_ECHO : begin 
                            if (pulse_pedge) begin
                                count_sec_e = 1;
                                clk_e = 1;
                                clk_count_start = 1;
                            end
                            else if (pulse_nedge) begin
                                distance = cm_count;
                                count_sec_e = 0;
                                clk_e = 0;
                                clk_count_start = 0;
                                state_next = S_IDLE; 
                            end
                        end
                default : state_next = S_IDLE;
            endcase
        end
    end
    
    assign d = state;
    

endmodule



module  mode_watch(
    input clk, reset_p,
    input [3:0] btn,
    output reg [15:0] value,
    output [15:0] led
);
    
    parameter S_WATCH = 3'b001;
    parameter S_STOP_WATCH = 3'b010;
    parameter S_COOK_TIMER = 3'b100;
    
    wire w_btn_mode, w_btn_set, w_inc_sec, w_inc_min;

    button_cntr btn_mode_set( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_mode));
    

    reg [2:0] mode, mode_next;
//    reg [2:0] btn_ctr_mode;
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            mode = S_WATCH;
        end
        else begin 
            mode = mode_next;
        end
    end
    
    
    assign led[2:0] = mode;
    
    button_cntr btn_set_watch( .btn(btn[1]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_set));
    
    button_cntr btn_inc_sec( .btn(btn[2]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_inc_sec));
    
    button_cntr btn_inc_min( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge) ,  .btn_nedge(w_inc_min));
    
//    reg [2:0] btn_mode_watch;
    
//    reg [2:0] btn_mode_stop;
    
//    reg [3:0] btn_mode_cook;
    
    wire clk_us, clk_ms, clk_s;
    
    clock_div_100 us_clk (.clk(clk),  .reset_p(reset_p),  .clk_div_100(clk_us) );
    
    clock_div_1000 ms_clk( .clk(clk), .reset_p(reset_p), .clk_source(clk_us), .cp_div_1000_nedge(clk_ms));
    
    clock_div_1000 s_clk( .clk(clk), .reset_p(reset_p), .clk_source(clk_ms), .cp_div_1000_nedge(clk_s));
    
    reg [4:0] cm_count;
    
    reg clk_e;
    
    always @ (negedge clk, posedge reset_p ) begin
        if (reset_p) begin
            cm_count = 0;
        end
        else if (clk_s) begin
            cm_count = cm_count +1;
         end
         else if (clk_e == 0) cm_count = 0;
    end 
    
    reg btn3_3sec;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            btn3_3sec = 0;
            clk_e =0;
        end
        else if (cm_count > 3) begin
            btn3_3sec = 1;
        end
        else begin
            if  (btn_pedge) begin   
                clk_e = 1;
            end
            else if(w_inc_min) begin
                clk_e = 0;
            end
        end
    end
    
    
    
//    always @ (posedge clk, posedge reset_p) begin
//        if (reset_p) begin
//            btn_mode_watch = 0;
//            btn_mode_stop = 0;
//            btn_mode_cook = 0;
//        end
//        else if (btn_ctr_mode[1])begin
//            btn_mode_watch = {btn_pedge, w_inc_sec, w_btn_set};
//        end
//        else if (btn_ctr_mode[2]) begin
//            btn_mode_stop = {btn_pedge,w_inc_sec, w_btn_set};
//        end
//        else if (btn_ctr_mode[3]) begin
//            btn_mode_cook = {btn3_3sec, btn_pedge, w_inc_sec, w_btn_set};
//        end
    
//    end
    
//    wire [15:0] set_watch_value, stop_watch_value, cook_timer_value;
    
//    loadable_time_set_mode_clock_en watch( .clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_watch),  .set_watch_value(set_watch_value) );
    
  
    
//     stop_watch_msec_sec_value stop_watch(.clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_stop), .value(stop_watch_value));
     
//     cook_timer_value cook_timer( .clk(clk), .reset_p(reset_p), .btn(btn_mode_cook), .value(cook_timer_value), .timeout_led(led));
    
    always @ (posedge clk, posedge reset_p) begin
          if (reset_p) begin 
        //    value = set_watch_value;
            mode_next = S_WATCH;
         end
        else begin
            case(mode)
                S_WATCH: begin
                    if (w_btn_mode) begin
                        mode_next = S_STOP_WATCH;
                    end
      //              else value = set_watch_value;
                end
                S_STOP_WATCH : begin
                    if (w_btn_mode) begin
                        mode_next = S_COOK_TIMER;
                    end
    //                else value = stop_watch_value;
                end
                S_COOK_TIMER : begin
                    if (w_btn_mode) begin
                        mode_next = S_WATCH;
                    end
     //               else value = cook_timer_value;
                end
            endcase
        end
            
    end

    

endmodule



module  mode_watch_01(
    input clk, reset_p,
    input [3:0] btn,
    output reg [15:0] value,
    output [15:0] led
);
    
    parameter S_WATCH = 3'b001;
    parameter S_STOP_WATCH = 3'b010;
    parameter S_COOK_TIMER = 3'b100;
    
    reg btn3_2sec;
    
    wire w_btn_mode, w_btn_set, w_inc_sec, w_inc_min;

    wire [15:0] set_watch_value, stop_watch_value, cook_timer_value;
    
    reg [2:0] btn_mode_watch, btn_mode_stop;
    
    reg [2:0] btn_mode_cook;

    reg [10:0] cm_m_count;
    

    
    
    button_cntr btn_mode_set( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_mode));
    
    loadable_time_set_mode_clock_en watch( .clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_watch),  .set_watch_value(set_watch_value));
    
    stop_watch_msec_sec_value stop_watch(.clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_stop), .value(stop_watch_value));
    
     cook_timer_value cook_timer( .clk(clk), .reset_p(reset_p), .btn({btn3_2sec , btn_mode_cook}), .value(cook_timer_value), .timeout_led(led[15]));
    
    reg [2:0] mode, mode_next;
    
    wire clk_us, clk_ms;
    
    clock_div_100 us_clk (.clk(clk),  .reset_p(reset_p),  .clk_div_100(clk_us) );
    
    clock_div_1000 ms_clk( .clk(clk), .reset_p(reset_p), .clk_source(clk_us), .cp_div_1000_nedge(clk_ms));
    
    


    
    reg [2:0] btn_ctr_mode;
    

    button_cntr btn_inc_min( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge) ,  .btn_nedge(w_inc_min));
    

  edge_detector_p  ed0 (.clk(clk), .reset_p(reset_p), .cp(btn[3]), .p_edge(btn_p_clk), .n_edge(btn_n_clk));  
   

  

    
   
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            mode = S_WATCH;
        end
        else begin 
            mode = mode_next;
        end
    end
    


    always @ (posedge clk, posedge reset_p) begin
          if (reset_p) begin 
            mode_next = S_WATCH;
            value = set_watch_value;
            btn_ctr_mode[2:0] = 0;
         end
        else begin
            case(mode)
                S_WATCH: begin
                    if (w_btn_mode) begin
                        mode_next = S_STOP_WATCH;
                    end
                    else begin
                         value = set_watch_value;
                          btn_mode_watch = {btn[3], btn[2],btn[1]};
                     end
                end
                S_STOP_WATCH : begin
                    if (w_btn_mode) begin
                        mode_next = S_COOK_TIMER;
                    end
                    else begin 
                        value = stop_watch_value;
                        btn_mode_stop = {btn[3], btn[2],btn[1]};
                    end
                end
                S_COOK_TIMER : begin
                    if (w_btn_mode) begin
                        mode_next = S_WATCH;
                    end
                    else begin 
                        value = cook_timer_value;
                        btn_mode_cook = {btn[3],btn[2],btn[1]};       
                    end
                end
            endcase
        end
           
    end

    

endmodule


module  mode_watch_02(
    input clk, reset_p,
    input [3:0] btn,
    input sw,
    output reg [15:0] value,
    output [15:0] led
);
    
    parameter S_WATCH = 3'b001;
    parameter S_STOP_WATCH = 3'b010;
    parameter S_COOK_TIMER = 3'b100;
    
    wire w_btn_mode, w_btn_set, w_inc_sec, w_inc_min;

    wire [15:0] set_watch_value, stop_watch_value, cook_timer_value;
    
    reg [2:0] btn_mode_watch, btn_mode_stop;
    
    reg [2:0] btn_mode_cook;

    button_cntr btn_mode_set( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_mode));
    
    loadable_time_set_mode_clock_en watch( .clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_watch),  .set_watch_value(set_watch_value));
    
    stop_watch_msec_sec_value stop_watch(.clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_stop), .value(stop_watch_value));
    
     cook_timer_value cook_timer( .clk(clk), .reset_p(reset_p), .btn({sw , btn_mode_cook}), .value(cook_timer_value), .timeout_led(led[15]));
    
    reg [2:0] mode, mode_next;
    
    wire clk_us, clk_ms;
    

    
    reg [2:0] btn_ctr_mode;
    

    button_cntr btn_inc_min( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge) ,  .btn_nedge(w_inc_min));

    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            mode = S_WATCH;
        end
        else begin 
            mode = mode_next;
        end
    end
    
    always @ (posedge clk, posedge reset_p) begin
          if (reset_p) begin 
            mode_next = S_WATCH;
            value = set_watch_value;
            btn_ctr_mode[2:0] = 0;
         end
        else begin
            case(mode)
                S_WATCH: begin
                    if (w_btn_mode) begin
                        mode_next = S_STOP_WATCH;
                    end
                    else begin
                         value = set_watch_value;
                          btn_mode_watch = {btn[3], btn[2],btn[1]};
                     end
                end
                S_STOP_WATCH : begin
                    if (w_btn_mode) begin
                        mode_next = S_COOK_TIMER;
                    end
                    else begin 
                        value = stop_watch_value;
                        btn_mode_stop = {btn[3], btn[2],btn[1]};
                    end
                end
                S_COOK_TIMER : begin
                    if (w_btn_mode) begin
                        mode_next = S_WATCH;
                    end
                    else begin 
                        value = cook_timer_value;
                        btn_mode_cook = {btn[3],btn[2],btn[1]};       
                    end
                end
            endcase
        end
           
    end

    

endmodule

module  mode_watch_long_key_nedge(
    input clk, reset_p,
    input [3:0] btn,
    output reg [15:0] value,
    output [15:0] led
);
    
    parameter S_WATCH = 3'b001;
    parameter S_STOP_WATCH = 3'b010;
    parameter S_COOK_TIMER = 3'b100;
    
    wire w_btn_mode;

    wire [15:0] set_watch_value, stop_watch_value, cook_timer_value;
    
    reg [2:0] btn_mode_watch, btn_mode_stop;
    
    reg [2:0] btn_mode_cook;

    wire long_press, short_press;
    

    button_cntr btn_mode_set( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_mode));
    
    loadable_time_set_mode_clock_value watch( .clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_watch),  .set_watch_value(set_watch_value));
    
    stop_watch_msec_sec_value stop_watch(.clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_stop), .value(stop_watch_value));
    
     cook_timer_value cook_timer( .clk(clk), .reset_p(reset_p), .btn({long_press , btn_mode_cook}), .value(cook_timer_value), .timeout_led(led[15]));
    
    reg [2:0] mode, mode_next;
    
                

    button_long_short long(.clk(clk), .reset_p(reset_p), .button(btn[3]), .short_press(short_press),.long_press(long_press) );
    reg [2:0] btn_ctr_mode;
    

    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            mode = S_WATCH;
        end
        else begin 
            mode = mode_next;
        end
    end
    
    always @ (posedge clk, posedge reset_p) begin
          if (reset_p) begin 
            mode_next = S_WATCH;
            value = set_watch_value;
            btn_ctr_mode[2:0] = 0;
         end
        else begin
            case(mode)
                S_WATCH: begin
                    if (w_btn_mode) begin
                        mode_next = S_STOP_WATCH;
                    end
                    else begin
                         value = set_watch_value;
                          btn_mode_watch = {btn[3], btn[2],btn[1]};
                     end
                end
                S_STOP_WATCH : begin
                    if (w_btn_mode) begin
                        mode_next = S_COOK_TIMER;
                    end
                    else begin 
                        value = stop_watch_value;
                        btn_mode_stop = {btn[3], btn[2],btn[1]};
                    end
                end
                S_COOK_TIMER : begin
                    if (w_btn_mode) begin
                        mode_next = S_WATCH;
                    end
                    else begin 
                        value = cook_timer_value;
                        btn_mode_cook = {short_press,btn[2],btn[1]};       
                    end
                end
            endcase
        end
           
    end

    

endmodule

module  mode_watch_04(
    input clk, reset_p,
    input [3:0] btn,
    output reg [15:0] value,
    output [15:0] led
);
    
    parameter S_WATCH = 3'b001;
    parameter S_STOP_WATCH = 3'b010;
    parameter S_COOK_TIMER = 3'b100;
    
    wire w_btn_mode, w_btn_set, w_inc_sec, w_inc_min;

    wire [15:0] set_watch_value, stop_watch_value, cook_timer_value;
    
    reg [2:0] btn_mode_watch, btn_mode_stop;
    
    reg [2:0] btn_mode_cook;

    wire long_press, short_press;
    

    button_cntr btn_mode_set( .btn(btn[0]), .clk(clk), .reset_p(reset_p),  .btn_pedge(w_btn_mode));
    
    loadable_time_set_mode_clock_en watch( .clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_watch),  .set_watch_value(set_watch_value));
    
    stop_watch_msec_sec_value stop_watch(.clk(clk), .reset_p(reset_p), .btn_ctr(btn_mode_stop), .value(stop_watch_value));
    
     cook_timer_value cook_timer( .clk(clk), .reset_p(reset_p), .btn({long_press , btn_mode_cook}), .value(cook_timer_value), .timeout_led(led[15]));
    
    reg [2:0] mode, mode_next;
    
    wire clk_us, clk_ms;
    

    long_key long_key(.clk(clk), .reset_p(reset_p), .btn(btn[3]), .long_press(long_press), .short_press(short_press) );
    
    reg [2:0] btn_ctr_mode;
    

    button_cntr btn_inc_min( .btn(btn[3]), .clk(clk), .reset_p(reset_p), .btn_pedge(btn_pedge) ,  .btn_nedge(w_inc_min));

    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) begin
            mode = S_WATCH;
        end
        else begin 
            mode = mode_next;
        end
    end
    
    always @ (posedge clk, posedge reset_p) begin
          if (reset_p) begin 
            mode_next = S_WATCH;
            value = set_watch_value;
            btn_ctr_mode[2:0] = 0;
         end
        else begin
            case(mode)
                S_WATCH: begin
                    if (w_btn_mode) begin
                        mode_next = S_STOP_WATCH;
                    end
                    else begin
                         value = set_watch_value;
                          btn_mode_watch = {btn[3], btn[2],btn[1]};
                     end
                end
                S_STOP_WATCH : begin
                    if (w_btn_mode) begin
                        mode_next = S_COOK_TIMER;
                    end
                    else begin 
                        value = stop_watch_value;
                        btn_mode_stop = {btn[3], btn[2],btn[1]};
                    end
                end
                S_COOK_TIMER : begin
                    if (w_btn_mode) begin
                        mode_next = S_WATCH;
                    end
                    else begin 
                        value = cook_timer_value;
                        btn_mode_cook = {short_press,btn[2],btn[1]};       
                    end
                end
            endcase
        end
           
    end

    

endmodule




module pwm_128step(
    input clk, reset_p,
    input [6:0] duty,
    output reg pwm);
    
    
    parameter sys_clk_freq = 100_000_000;
    parameter pwm_freq = 10000; 
    parameter duty_steps = 128; 
    parameter pwm_clk = sys_clk_freq / pwm_freq /duty_steps ;
    parameter pwm_clk_half = pwm_clk /2;
    integer cnt;
    
    reg pwm_freqx128;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            pwm_freqx128 = 0;
            cnt = 0;
        end
        else begin
            if(cnt >= (pwm_clk - 1)) begin
                cnt = 0;
            end
            else  begin
                cnt = cnt + 1 ;
            end
            if (cnt < pwm_clk_half)pwm_freqx128 = 0;
            else pwm_freqx128 = 1;
        end
    end
    
    wire pwm_freq_nedge;
   edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(pwm_freqx128), .n_edge(pwm_freq_nedge));  
   
    
    
    reg [6:0] count_duty;
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_duty = 0;
            pwm = 0;
        end
        else if(pwm_freq_nedge) begin
            count_duty = count_duty+1;
            if(count_duty < duty) pwm =1;
            else pwm = 0;
        end
    end
    
    

endmodule

module long_key_detector (
    input       wire        i_clk,
    input       wire        i_reset,
    input       wire        i_cp,       // Level (Q of T FF, after buttonControl)
    output      wire        o_long_key, // Edge
    output      wire        o_short_key // Edge
);

    localparam  [25 : 0]    LONG_KEY_TH = 26'h2FAF080; // .5 sec

    reg [25 : 0]            r_count;
    reg                     r_long_key;
    reg                     r_long_key_z;
    reg                     r_long_key_zz;
    wire                    w_short_key;

    edge_detector_n         ED_OUTPUT_LONG_KEY(
        .i_clk              (i_clk),
        .i_reset            (i_reset),
        .i_cp               (r_long_key),
        .o_posedge          (o_long_key),
        .o_negedge          ()
    );

    edge_detector_n         ED_OUTPUT_SHORT_KEY(
        .i_clk              (i_clk),
        .i_reset            (i_reset),
        .i_cp               (i_cp),
        .o_posedge          (),
        .o_negedge          (w_short_key)
    );

    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_count     <= 0;
            r_long_key  <= 0;
        end
        else begin
            if (i_cp) begin
                if (r_count >= LONG_KEY_TH) begin
                    r_count      <= 0;
                    r_long_key   <= 1;
                end
                else begin
                    r_count <= r_count + 1;
                end
            end
            else begin
                r_count      <= 0;
                r_long_key   <= 0;
            end
        end
    end

    always @(negedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_long_key_z <= 0;
            r_long_key_zz <= 0;
        end
        else begin
            r_long_key_z <= r_long_key;
            r_long_key_zz <= r_long_key_z;
        end
    end

    assign o_short_key = ~r_long_key_zz & w_short_key;
endmodule


module pwm_128step_servo(
    input clk, reset_p,
    input [6:0] duty,
    output reg pwm);
    
    
    parameter sys_clk_freq = 100_000_000;
    parameter pwm_freq = 50; 
    parameter duty_steps = 128; 
    parameter pwm_clk = sys_clk_freq / pwm_freq /duty_steps ;
    parameter pwm_clk_half = pwm_clk /2;
    integer cnt;
    
    reg pwm_freqx128;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            pwm_freqx128 = 0;
            cnt = 0;
        end
        else begin
            if(cnt >= (pwm_clk - 1)) begin
                cnt = 0;
            end
            else  begin
                cnt = cnt + 1 ;
            end
            if (cnt < pwm_clk_half)pwm_freqx128 = 0;
            else pwm_freqx128 = 1;
        end
    end
    
    wire pwm_freq_nedge;
   edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(pwm_freqx128), .n_edge(pwm_freq_nedge));  
   
    
    
    reg [6:0] count_duty;
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_duty = 0;
            pwm = 0;
        end
        else if(pwm_freq_nedge) begin
            count_duty = count_duty+1;
            if(count_duty < duty) pwm =1;
            else pwm = 0;
        end
    end
    
    

endmodule

module pwm_128step_freq   //pwm_freq =  50 - servo moter, 100 - motor, 10000 - led
    #(parameter sys_clk_freq = 100_000_000,
    parameter pwm_freq = 50, 
    parameter duty_steps = 256, 
    parameter pwm_clk = sys_clk_freq / pwm_freq /duty_steps,
    parameter pwm_clk_half = pwm_clk /2)
(
    input clk, reset_p,
    input [31:0] duty,
    output reg pwm);
    
    
    
    integer cnt;
    
    reg pwm_freqx128;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            pwm_freqx128 = 0;
            cnt = 0;
        end
        else begin
            if(cnt >= (pwm_clk - 1)) begin
                cnt = 0;
            end
            else  begin
                cnt = cnt + 1 ;
            end
            if (cnt < pwm_clk_half)pwm_freqx128 = 0;
            else pwm_freqx128 = 1;
        end
    end
    
    wire pwm_freq_nedge;
   edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(pwm_freqx128), .n_edge(pwm_freq_nedge));  
   
    
    integer count_duty;
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_duty = 0;
            pwm = 0;
        end
        else if(pwm_freq_nedge) begin
            if (count_duty >=duty_steps-1) begin
                count_duty = 0;
            end
            else count_duty = count_duty+1;
            if(count_duty < duty) pwm =1;
            else pwm = 0;
        end
    end
    
    

endmodule

module btn_long(
    input clk, reset_p,
    input btn,
    output  long_key,
    output short_key);
    
    parameter LONG_PRESS_COUNT = 26'd50000000;
    
    reg [26:0] count;
    reg long_key_reg;
    
    wire w_short_key;
    
    button_cntr_long long( .btn(btn), .clk(clk), .reset_p(reset_p), .btn_long(btn_pedge));
    
    edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(btn), .n_edge(w_short_key));  
   
    edge_detector_n  ed1 (.clk(clk), .reset_p(reset_p), .cp(long_key_reg), .p_edge(long_key));  
   
    
    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin
            long_key_reg = 0;
        end
        else begin
            if (btn_pedge) begin
                count = count +1;
                if (count >= LONG_PRESS_COUNT) begin
                    long_key_reg = 1;
                    count = 0;
                end
            end
            else begin
                long_key_reg = 0;
                count = 0;
            end
        end
    end

    assign short_key = ~long_key_reg & w_short_key;

endmodule

module I2C_master(
    input  clk, reset_p,
    input [6:0] addr,
    input [7:0] data,
    input rd_wr, comm_go,
    output reg sda, scl,
    output reg [6:0] led);

    
    parameter IDLE = 7'b0000001;
    parameter COMM_START = 7'b0000010;
    parameter SEND_ADDR = 7'b0000100;
    parameter RD_ACK = 7'b0001000;
    parameter SEND_DATA = 7'b0010000;
    parameter SCL_STOP = 7'b0100000;
    parameter COMM_STOP = 7'b1000000;

    wire [7:0] addr_rw;
    assign addr_rw = {addr, rd_wr};

    wire w_us_clk;

    clock_div_100 i_us_clk( .clk(clk), .reset_p(reset_p), .clk_div_100(w_us_clk));
    
    reg [2:0] count_usec5;

    reg scl_e;

    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_usec5 = 0;
            scl = 1;
        end
        else if (scl_e) begin
            if (w_us_clk) begin
                if(count_usec5 >= 4) begin
                    count_usec5 = 0;
                    scl = ~scl;
                end
                else count_usec5 = count_usec5 +1;
            end
        end
        else if (!scl_e) begin
            count_usec5 = 0;
            scl = 1;
        end
    end

    wire comm_go_pedge;
    edge_detector_n  edge_usec0 (.clk(clk), .reset_p(reset_p), .cp(comm_go), .p_edge(comm_go_pedge));

    wire scl_nedge, scl_pedge;
    edge_detector_n  edge_usec1 (.clk(clk), .reset_p(reset_p), .cp(scl), .p_edge(scl_pedge), .n_edge(scl_nedge));

    reg [6:0] state, next_state;

    always @ (negedge clk, posedge reset_p) begin
        if(reset_p) begin
            state = IDLE;
        end
        else begin
            state = next_state;
        end
    end

    reg [2:0] cnt_bit;
    reg stop_flag;

    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            next_state = IDLE;
            scl_e = 0;
            sda = 1;
            cnt_bit = 7;
            stop_flag = 0;
            led = 0;
        end
        else begin
            case(state)
                IDLE : begin
                    led[0] = 1;
                    scl_e = 0;
                    sda = 1;
                    if(comm_go_pedge) next_state = COMM_START;
                end
                COMM_START : begin
                    led[1] = 1;
                    sda = 0;
                    scl_e = 1;
                    next_state = SEND_ADDR;
                end
                SEND_ADDR : begin
                    led[2] = 1;
                    if (scl_nedge) begin
                        sda = addr_rw[cnt_bit];
                    end
                    if (scl_pedge) begin
                        if(cnt_bit == 0) begin
                            cnt_bit = 7;
                            next_state = RD_ACK;
                        end
                        else cnt_bit = cnt_bit -1;
                    end
                end
                RD_ACK : begin
                    led[3] = 1;
                    if (scl_nedge) begin
                        sda = 'bz;
                    end
                    else if (scl_pedge) begin
                        if(stop_flag) begin
                            stop_flag = 0;
                            next_state = SCL_STOP;
                        end
                        else begin
                            stop_flag = 1;
                            next_state = SEND_DATA;
                        end
                    end
                end
                SEND_DATA : begin
                    led[4] = 1;
                    if (scl_nedge) begin
                        sda = data[cnt_bit];
                    end
                    if (scl_pedge) begin
                        if(cnt_bit == 0) begin
                            cnt_bit = 7;
                            next_state = RD_ACK;
                        end
                        else cnt_bit = cnt_bit -1;
                    end
                end
                SCL_STOP : begin
                    led[5] = 1;
                    if(scl_nedge) begin
                        sda = 0;
                    end
                    else if (scl_pedge) begin
                        next_state = COMM_STOP;
                    end
                end
                COMM_STOP : begin
                    led[6] = 1;
                    if (count_usec5 >=3) begin
                        scl_e = 0;
                        sda = 1;
                        next_state = IDLE;
                    end
                end

            endcase
        end
        
    end


endmodule



module idc_lcd_send_byte(
    input clk, reset_p,
    input [6:0] addr,
    input [7:0] send_buffer,
    input send, rs,
    output scl, sda,
    output reg busy);

    parameter IDLE = 6'b000001;
    parameter SEND_HIGH_NIBBLE_DISABLE = 6'b000010;
    parameter SEND_HIGH_NIBBLE_ENABLE = 6'b000100;
    parameter SEND_LOW_NIBBLE_DISABLE = 6'b001000;
    parameter SEND_LOW_NIBBLE_ENABLE = 6'b010000;
    parameter DISABLE = 6'b100000;


    reg [7:0] data;
    reg comm_go;

    wire send_pedge;
    edge_detector_n  send_edge (.clk(clk), .reset_p(reset_p), .cp(send), .p_edge(send_pedge));



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


    reg [5:0] state, state_next;

    always @(negedge clk, posedge reset_p) begin
        if (reset_p) begin
            state = IDLE;
        end
        else begin
            state = state_next;
        end
    end


    always @(posedge clk, posedge reset_p) begin
        if (reset_p) begin
            state_next = IDLE;
            count_usec_e = 0;
            busy = 0;
        end
        else begin
            case(state)
                IDLE: begin
                    if (send_pedge) begin
                        state_next = SEND_HIGH_NIBBLE_DISABLE;
                        busy = 1;
                    end
                end
                SEND_HIGH_NIBBLE_DISABLE: begin
                    if (count_usec <= 22'd200) begin
                        data = {send_buffer[7:4], 3'b100, rs};          // [d7, d6, d5, d4], [BL, EN, RW], [RS]
                        comm_go = 1;
                        count_usec_e = 1;    
                    end
                    else begin
                        state_next = SEND_HIGH_NIBBLE_ENABLE;
                        count_usec_e = 0;
                        comm_go = 0;
                    end
                end
                SEND_HIGH_NIBBLE_ENABLE: begin
                    if (count_usec <= 22'd200) begin
                        data = {send_buffer[7:4], 3'b110, rs};           // [d7, d6, d5, d4], [BL, EN, RW], [RS]
                        comm_go = 1;
                        count_usec_e = 1;    
                    end
                    else begin
                        state_next = SEND_LOW_NIBBLE_DISABLE;
                        count_usec_e = 0;
                        comm_go = 0;
                    end
                end
                SEND_LOW_NIBBLE_DISABLE: begin
                    if (count_usec <= 22'd200) begin
                        data = {send_buffer[3:0], 3'b100, rs};           // [d7, d6, d5, d4], [BL, EN, RW], [RS]
                        comm_go = 1;
                        count_usec_e = 1;    
                    end
                    else begin
                        state_next = SEND_LOW_NIBBLE_ENABLE;
                        count_usec_e = 0;
                        comm_go = 0;
                    end                    
                end
                SEND_LOW_NIBBLE_ENABLE: begin
                    if (count_usec <= 22'd200) begin
                        data = {send_buffer[3:0], 3'b110, rs};           // [d7, d6, d5, d4], [BL, EN, RW], [RS]
                        comm_go = 1;
                        count_usec_e = 1;    
                    end
                    else begin
                        state_next = DISABLE;
                        count_usec_e = 0;
                        comm_go = 0;
                    end                         
                end
                DISABLE: begin
                    if (count_usec <= 22'd200) begin
                        data = {send_buffer[3:0], 3'b100, rs};           // [d7, d6, d5, d4], [BL, EN, RW], [RS]
                        comm_go = 1;
                        count_usec_e = 1;    
                    end
                    else begin
                        state_next = IDLE;
                        count_usec_e = 0;
                        comm_go = 0;
                        busy = 0;
                    end                            
                end
                default state_next = IDLE;
            endcase
        end
    end






    I2C_master i2c_top(     .clk(clk), .reset_p(reset_p), .addr(addr), .data(data),
                            .rd_wr(0), .comm_go(comm_go), .sda(sda), .scl(scl), .led(led));




endmodule

module bcd_fnd_cntr(
    input clk,
    input reset_p,
    input [11:0] hex_value,
    input hex_bcd,
    output [3:0] com,
    output [7:0] seg_7);


    wire [15:0] bcd, value;

    bin_to_dec fnd_in_bcd(  .bin(hex_value),
                            .bcd(bcd));

    assign value = hex_bcd ? {4'b0, hex_value} : bcd;

    fnd_4digit_cntr fnd ( .clk(clk), .reset_p(reset_p), .com(com) , .value(value), .seg_7(seg_7) );

endmodule



module pwm_128step_freq_soc   //pwm_freq =  50 - servo moter, 100 - motor, 10000 - led
    #(parameter sys_clk_freq = 100_000_000,
    parameter pwm_freq = 50, 
    parameter duty_steps = 256, 
    parameter pwm_clk = sys_clk_freq / pwm_freq /duty_steps,
    parameter pwm_clk_half = pwm_clk /2)
(
    input clk, reset_p,
    input [31:0] duty,
    output reg pwm);
    
    
    
    integer cnt;
    
    reg pwm_freqx128;
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            pwm_freqx128 = 0;
            cnt = 0;
        end
        else begin
            if(cnt >= (pwm_clk - 1)) begin
                cnt = 0;
            end
            else  begin
                cnt = cnt + 1 ;
            end
            if (cnt < pwm_clk_half)pwm_freqx128 = 0;
            else pwm_freqx128 = 1;
        end
    end
    
    wire pwm_freq_nedge;
   edge_detector_n  ed0 (.clk(clk), .reset_p(reset_p), .cp(pwm_freqx128), .n_edge(pwm_freq_nedge));  
   
    
    integer count_duty;
    
    
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) begin
            count_duty = 0;
            pwm = 0;
        end
        else if(pwm_freq_nedge) begin
            if (count_duty >=duty_steps-1) begin
                count_duty = 0;
            end
            else count_duty = count_duty+1;
            if(count_duty < duty) pwm =1;
            else pwm = 0;
        end
    end
    
    

endmodule