`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/26 15:09:06
// Design Name: 
// Module Name: clock_library
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


module clock_div_100(
    input clk, reset_p,
    output clk_div_100,
    output cp_div_100
    );

    reg [6:0] count_sysclk;
    
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) count_sysclk = 0;
        else begin
            if (count_sysclk >= 99) begin 
                count_sysclk = 0;
                end
            else begin
                count_sysclk = count_sysclk +1;
            end
        end
    end
    
    assign cp_div_100 = (count_sysclk < 50) ? 0 : 1;
    
 edge_detector_n  edge_usec (.clk(clk), .reset_p(reset_p), .cp(cp_div_100), .n_edge(clk_div_100));
    

endmodule

module clock_div_1000(
    input clk, reset_p,
    input clk_source,
    output cp_div_1000_nedge
    );
    
    wire nedge_source;

 edge_detector_n  edge_usec0 (.clk(clk), .reset_p(reset_p), .cp(clk_source), .n_edge(nedge_source));


    reg [9:0] count_clk_source;
    
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) count_clk_source = 0;
        else if (nedge_source)begin
            if (count_clk_source >= 999) begin 
                count_clk_source = 0;
                end
            else begin
                count_clk_source = count_clk_source +1;
            end
        end
    end
    
    wire cp_div_1000;
    
    assign cp_div_1000 = (count_clk_source < 500) ? 0 : 1;
    
 edge_detector_n  edge_usec1 (.clk(clk), .reset_p(reset_p), .cp(cp_div_1000), .n_edge(cp_div_1000_nedge));
 
endmodule

module clock_div_60(
    input clk, reset_p,
    input clk_source,
    output cp_div_60_nedge
    );
    
    wire nedge_source, cp_div_60;

 edge_detector_n  edge_usec0 (.clk(clk), .reset_p(reset_p), .cp(clk_source), .n_edge(nedge_source));


    reg [5:0] count_clk_source;
    
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) count_clk_source = 0;
        else if (nedge_source)begin
            if (count_clk_source >= 59) begin 
                count_clk_source = 0;
                end
            else begin
                count_clk_source = count_clk_source +1;
            end
        end
    end
    
    assign cp_div_60 = (count_clk_source < 59) ? 0 : 1;
    
    edge_detector_n  edge_usec1 (.clk(clk), .reset_p(reset_p), .cp(cp_div_60), .n_edge(cp_div_60_nedge));

endmodule

module colck_msec(
    input clk, reset_p,
    output cp_msec, clk_msec
);

    reg [9:0] count_sysclk;
    wire clk_msec_100;

clock_div_100 clk_msec0 (
    .clk(clk), .reset_p(reset_p),
    .clk_div_100(clk_msec_100)
    );
    
 
    always @ (posedge clk, posedge reset_p) begin
        if (reset_p) count_sysclk = 0;
        else begin
            if (clk_msec_100) begin
                if (count_sysclk >= 999) begin 
                    count_sysclk = 0;
                    end
                else begin
                    count_sysclk = count_sysclk +1;
                end
            end
        end
    end
    
assign cp_msec = (count_sysclk < 500) ? 0 : 1;
    
 edge_detector_n  edge_msec (.clk(clk), .reset_p(reset_p), .cp(cp_msec), .n_edge(clk_msec));

endmodule


module counter_bcd_60(
    input clk, reset_p,
    input   clk_time,
    output  reg [3:0] bcd10, bcd1 );
    
    wire counter_clk_n_edge;

     edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_time), .n_edge(counter_clk_n_edge));

    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin 
            bcd10 = 0;
            bcd1 = 0;
        end
        else if (counter_clk_n_edge) begin
            if (bcd1 >=9) begin
                bcd1 = 0;
                if(bcd10 >= 5) bcd10 = 0;
                else bcd10 = bcd10 +1;
            end
            else bcd1 = bcd1 + 1;
        end
    end


endmodule

module loadable_counter_bcd_60(
    input clk, reset_p,
    input   clk_time,
    input load_enable,
    input [3:0] load_bcd10, load_bcd1,
    output  reg [3:0] bcd10, bcd1 );
    
    wire counter_clk_n_edge;

     edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_time), .n_edge(counter_clk_n_edge));



    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin 
            bcd10 = 0;
            bcd1 = 0;
        end
        else 
                if(load_enable) begin
                    bcd10 = load_bcd10 ;
                    bcd1 =  load_bcd1;
                end
                else if (counter_clk_n_edge) begin
                    if (bcd1 >=9) begin
                        bcd1 = 0;
                        if(bcd10 >= 5) bcd10 = 0;
                        else bcd10 = bcd10 +1;
                    end
                   else bcd1 = bcd1 + 1;
              end
         end
    




endmodule

module clock_div_10(
    input clk, reset_p,
    input clk_source,
    output cp_div_10_nedge
    );
    
    wire nedge_source, cp_div_10;

 edge_detector_n  edge_usec0 (.clk(clk), .reset_p(reset_p), .cp(clk_source), .n_edge(nedge_source));


    reg [3:0] count_clk_source;    
     
         
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) count_clk_source = 0;
        else if (nedge_source)begin
            if (count_clk_source >= 9) begin 
                count_clk_source = 0;
                end
            else begin
                count_clk_source = count_clk_source +1;
            end
        end
    end
    
    assign cp_div_10 = (count_clk_source < 5) ? 0 : 1;
    
 edge_detector_n  edge_usec1 (.clk(clk), .reset_p(reset_p), .cp(cp_div_10), .n_edge(cp_div_10_nedge));
 
endmodule


module counter_bcd_100(
    input clk, reset_p,
    input   clk_time,
    output  reg [3:0] bcd10, bcd1 );
    
    wire counter_clk_n_edge;

     edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_time), .n_edge(counter_clk_n_edge));

    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin 
            bcd10 = 0;
            bcd1 = 0;
        end
        else if (counter_clk_n_edge) begin
          if (bcd1 >=9) begin
                bcd1 = 0;
                if(bcd10 >= 9) begin
                    bcd10 = 0;
                end
                else bcd10 = bcd10 +1;
            end
          else bcd1 = bcd1 + 1;
        end
    end


endmodule

module loadable_down_counter_bcd_60(
    input clk, reset_p,
    input   clk_time,
    input load_enable,
    input [3:0] load_bcd10, load_bcd1,
    output  reg [3:0] bcd10, bcd1,
    output reg dec_clk );
    
    wire counter_clk_n_edge;


    always @ (posedge clk, posedge reset_p) begin
        
        if(reset_p) begin 
            bcd10 = 0;
            bcd1 = 0;
            dec_clk = 0;
        end
        else  begin
                if(load_enable) begin
                    bcd10 = load_bcd10 ;
                    bcd1 =  load_bcd1;
                end
                else if (clk_time) begin
                    if (bcd1 == 0) begin
                        bcd1 = 9;
                        if(bcd10 == 0) begin
                                dec_clk = 1;
                                 bcd10 = 5;
                                
                         end
                        else bcd10 = bcd10 -1;
                    end
                   else bcd1 = bcd1 - 1;
              end
              else dec_clk = 0;
         end
    end


endmodule



module clock_div_58(
    input clk, reset_p,
    input clk_source,
    input clk_e,
    output cp_div_58_nedge
    );
    




    reg [9:0] count_clk_source;
    
    
    always @ (negedge clk, posedge reset_p) begin
        if (reset_p) count_clk_source = 0;
        else if (clk_source && clk_e)begin
            if (count_clk_source >= 58) begin 
                count_clk_source = 0;
                end
            else begin
                count_clk_source = count_clk_source +1;
            end
        end
    end
    
    wire cp_div_58;
    
    assign cp_div_58 = (count_clk_source < 29) ? 0 : 1;
    
 edge_detector_n  edge_usec1 (.clk(clk), .reset_p(reset_p), .cp(cp_div_58), .n_edge(cp_div_58_nedge));
 
endmodule





module loadable_counter_bcd_input_value(
    input clk, reset_p,
    input   clk_time,
    input load_enable,
    input [15:0] load_value,
    output  reg [15:0] value );
    
    wire counter_clk_n_edge;

     edge_detector_n  clk_source (.clk(clk), .reset_p(reset_p), .cp(clk_time), .n_edge(counter_clk_n_edge));



    always @ (posedge clk, posedge reset_p) begin
        if(reset_p) begin 
            value = 0;
        end
        else 
                if(load_enable) begin
                    value = load_value;
                end
                else if (counter_clk_n_edge) begin
                    value = value -1;
              end
         end
    




endmodule





