`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/20 10:38:17
// Design Name: 
// Module Name: exam_02
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


module D_flip_flop_n(                                 
    input d,                                          
    input clk,                                        
    input reset_p,                                    
    input enable,                                     
    output reg q);                                    
     
    always @(negedge clk or posedge reset_p)begin     
        if(reset_p)q =0;                              
        else if(enable) q = d;                        
    end                                               
        
endmodule                                             
 
module D_flip_flop_p(                                 
    input d,                                          
    input clk,                                        
    input reset_p,                                    
    input enable,                                     
    output reg q);                                    
     
    always @(posedge clk or posedge reset_p)begin     
        if(reset_p)q =0;                              
        else if(enable) q = d;                        
    end                                               
        
endmodule                                             
 
module T_flip_flop_n(                                 
    input clk, reset_p,                               
    input t,                                          
    output reg q);                                    
     
    always @(negedge clk, posedge  reset_p)begin      
        if(reset_p)q = 0;                             
        else begin                                    
            if(t) q = ~q;                             
            else q = q;                               
        end                                           
    end                                               
     
endmodule                                             

module T_flip_flop_p(                                 
    input clk, reset_p,                               
    input t,                                          
    output reg q);                                    
    
    reg clk_en;
    
    always @(posedge clk, posedge  reset_p)begin      
        if(reset_p)q <= 0;                            
        else if(clk_en) q <= ~q;                                                                                                    
    end 
    
    always @(*) begin
        clk_en = t;
    end                                              
   
endmodule                                             



module counter_as(clk, reset_p, q);
input  clk, reset_p;
output [3:0]   q;

T_flip_flop_n t_ff0(.clk(clk),  .reset_p(reset_p), .t(1),   .q(q[0]));
T_flip_flop_n t_ff1(.clk(q[0]),  .reset_p(reset_p), .t(1),   .q(q[1]));
T_flip_flop_n t_ff2(.clk(q[1]),  .reset_p(reset_p), .t(1),   .q(q[2]));
T_flip_flop_n t_ff3(.clk(q[2]),  .reset_p(reset_p), .t(1),   .q(q[3]));

endmodule

module  down_count_as(clk, reset_p, q);
input  clk, reset_p;
output [3:0]   q;

T_flip_flop_p t_ff0(.clk(clk),  .reset_p(reset_p), .t(1),   .q(q[0]));
T_flip_flop_p t_ff1(.clk(q[0]),  .reset_p(reset_p), .t(1),   .q(q[1]));
T_flip_flop_p t_ff2(.clk(q[1]),  .reset_p(reset_p), .t(1),   .q(q[2]));
T_flip_flop_p t_ff3(.clk(q[2]),  .reset_p(reset_p), .t(1),   .q(q[3]));


endmodule


module up_count_p (clk, reset_p, count, enable);
input clk, reset_p, enable;
output reg [3:0] count;
    
    always @(posedge clk or posedge reset_p)begin        
        if(reset_p)count =0;                                
        else if(enable) count = count + 1;                        
    end  


endmodule


module down_count_p (clk, reset_p, count, enable);
input clk, reset_p, enable;
output reg [3:0] count;
    
    always @(posedge clk or posedge reset_p)begin        
        if(reset_p)count =0;                                
        else if(enable) count = count - 1;                        
    end  
    
endmodule


module bcd_up_count_p (clk, reset_p, count, enable);
input clk, reset_p, enable;
output reg [3:0] count;
    
    always @(posedge clk or posedge reset_p)begin        
        if(reset_p)count =0;                                
        else if(enable) begin
             count = count + 1;               
             if(count >= 10) count = 0; 
        end                        
    end  


endmodule

module bcd_down_count_p (clk, reset_p, count, enable);
input clk, reset_p, enable;
output reg [3:0] count;
    
    always @(posedge clk or posedge reset_p)begin        
        if(reset_p)count =0;                                
        else if(enable) begin
             count = count - 1;               
             if(count >= 10) count = 9; 
        end                        
    end  


endmodule


module up_down_count_p(clk, reset_p, count, enable, up_down_set);
input clk, reset_p, enable, up_down_set;
output reg [3:0] count;


always @ (posedge clk, posedge reset_p) begin
        if (reset_p) count <= 4'b0000;
        else  if (enable) begin
            if (up_down_set) begin
                     count = count +1;                                    
            end
            else begin                    
                    count = count - 1;                   
            end
        end
  end
endmodule 

module up_down_bcd_count_p(clk, reset_p, count, enable, up_down_set);
input clk, reset_p, enable, up_down_set;
output reg [3:0] count;


always @ (posedge clk, posedge reset_p) begin
        if (reset_p) count <= 4'b0000;
        else  if (enable) begin
            if (up_down_set) begin
                    if (count >= 9) count = 0;
                     else count = count +1;                                    
            end
            else begin  
                    if((count ==  0) || (count>= 10)) count = 9;                  
                    else count = count - 1;                   
            end
        end
  end

endmodule


 module   ring_count (clk, reset_p,  q);
input clk, reset_p;
output  reg [3:0] q;

always @(posedge clk, posedge reset_p)begin
    if(reset_p) q <= 4'b0001;
    else q <= {q[2:0], q[3]};
    end 
    
endmodule


module ring_count_0(clk, reset_p, q);
input clk, reset_p;
output reg [3:0] q;


always @(posedge clk, posedge reset_p)begin
           if (reset_p) q = 4'b0001;
           else begin
                    if(q == 4'b0001) q = 4'b0010;
                    else if(q == 4'b0010) q = 4'b0100;
                    else if(q == 4'b0100) q = 4'b1000;
                    else  q = 4'b0001;
           end
    end

endmodule


module ring_count_case(clk, reset_p, q);
input clk, reset_p;
output reg [3:0] q;

always @(posedge clk, posedge reset_p)begin
           if (reset_p) q = 4'b0001;
           else begin
                    case(q)
                    4'b0001: q = 4'b0010;
                    4'b0010: q = 4'b0100;
                    4'b0100: q = 4'b1000;
                    4'b1000: q = 4'b0001;
                    default :  q = 4'b0001;
                    endcase
                    
           end
    end

endmodule

module ring_count_shift(clk, reset_p, q);
input clk, reset_p;
output reg [3:0] q;


    always @(posedge clk, posedge reset_p)begin
           if (reset_p) q = 4'b0001;
           else begin
                   if(q == 4'b1000) q = 4'b0001;
                   else q = q<<1; 
            end
     end
     
endmodule

module edge_detector_n (clk, reset_p, cp, p_edge, n_edge);
input clk, reset_p, cp;
output   p_edge, n_edge;

 reg ff_cur, ff_old;       


    always @ (negedge clk, posedge reset_p) begin
            if(reset_p) begin
                ff_cur <= 0;
                ff_old <= 0;
            end
            else begin
                ff_cur <= cp;                   
                ff_old <= ff_cur;
            end

    end

    assign p_edge = ({ff_cur, ff_old} == 2'b10) ? 1: 0;
    
    assign n_edge = ({ff_cur, ff_old} == 2'b01) ? 1: 0;


endmodule


 module   ring_counter_bcd (clk, reset_p,  q);
input clk, reset_p;
output  reg [3:0] q;

    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div +1;                        
   wire  clk_div_16_p;
   
    edge_detector_n de_clk (.clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .p_edge(clk_div_16_p));

always @(posedge clk , posedge reset_p)begin                        
    if(reset_p) q = 4'b1110;                                                          
    else if (clk_div_16_p)  
               if (q == 4'b0111) q = 4'b1110;
               else q = {q[2:0], 1'b1};
    end 
    
endmodule


module   ring_counter_16bit (clk, reset_p,  q);
input clk, reset_p;
output  reg [15:0] q;

reg [20:0] clk_div;
wire clk_div_20;

always @(posedge clk) clk_div = clk_div+1;

 edge_detector_n de_clk (.clk(clk), .reset_p(reset_p), .cp(clk_div[20]), .p_edge(clk_div_20));        // 0.0110485760 

always @(posedge clk, posedge reset_p)begin
    if(reset_p) q <= 4'h0007;
    else  if (clk_div_20) q <= {q[14:0], q[15]};      
    end 
    
endmodule

module edge_detector_p (clk, reset_p, cp, p_edge, n_edge);
input clk, reset_p, cp;
output   p_edge, n_edge;

 reg ff_cur, ff_old;       


    always @ (posedge clk, posedge reset_p) begin
            if(reset_p) begin
                ff_cur <= 0;
                ff_old <= 0;
            end
            else begin
                ff_cur <= cp;                   
                ff_old <= ff_cur;
            end

    end

    assign p_edge = ({ff_cur, ff_old} == 2'b10) ? 1: 0;
    
     assign n_edge = ({ff_cur, ff_old} == 2'b01) ? 1: 0;


endmodule


module shift_register_siso_n(           
    input clk, reset_p,
    input d,
    output q
);

    reg [3:0] siso_reg;
    
    always @ (negedge clk, posedge reset_p) begin
                if (reset_p) siso_reg <= 0;
                else begin
                    siso_reg[3]<= d;
                    siso_reg[2]<= siso_reg[3];
                    siso_reg[1]<= siso_reg[2];
                    siso_reg[0]<= siso_reg[1];
                                
                end
    
    end 


assign q = siso_reg[0];


endmodule



module shift_register_sipo_n(          
    input clk, reset_p,
    input d, rd_en,
    output [3:0] q
);

    reg [3:0] sipo_reg;

    always @ (negedge clk, posedge reset_p ) begin
                if (reset_p) sipo_reg = 0;
                else sipo_reg = {d, sipo_reg[3:1]};

    end

assign q = rd_en ? 4'bz  :  sipo_reg;

endmodule




module shift_register_piso_p(
    input clk, reset_p,
    input [3:0] d,
    input shift_load,
    output q);

    reg [3:0] piso_reg;

    always @ (posedge clk, posedge reset_p)begin
        if(reset_p) piso_reg = 0;    
        else  begin
            if  (shift_load) piso_reg = {1'b0, piso_reg[3:1]};
            else piso_reg = d;
        end
    end
    
    assign q =  piso_reg[0] ;           
    

endmodule 



module register_pipo_p #(parameter N = 8)(
    input clk, wr_en, reset_p, rd_en, 
    input [N-1 : 0] in,
    output  [N - 1:0] q
);

    reg [N-1:0] register;

    always @  (negedge clk, posedge reset_p) begin
        if(reset_p)  register = 0;
        else if (wr_en) register = in;
    end
    
    assign q = rd_en ?  register : 'bz;
    
    endmodule
    


module sram_8bit_1024(
    input clk,  
    input wr_en, rd_en,
    input [9:0] addr,
    inout [7:0] data   
);

    reg [7:0] mem [0:1023];
    
    always @(posedge clk) begin
        if(wr_en) begin
                mem[addr] = data;
        end
    end



assign data = rd_en ? mem[addr] : 'bz;

endmodule 






