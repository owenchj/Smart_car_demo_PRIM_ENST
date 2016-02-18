// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_Threshold_480_640_0_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V_read,
        src_cols_V_read,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write,
        thresh_dout,
        thresh_empty_n,
        thresh_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] src_rows_V_read;
input  [11:0] src_cols_V_read;
input  [7:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
output  [7:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;
input  [7:0] thresh_dout;
input   thresh_empty_n;
output   thresh_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;
reg dst_data_stream_V_write;
reg thresh_read;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [9:0] p_3_i_reg_110;
reg   [7:0] p_thresh_reg_173;
reg    ap_sig_bdd_53;
wire   [9:0] tmp_fu_121_p1;
reg   [9:0] tmp_reg_178;
wire   [10:0] tmp_112_fu_125_p1;
reg   [10:0] tmp_112_reg_183;
wire   [0:0] exitcond3_i_fu_133_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_67;
wire   [8:0] i_V_fu_138_p2;
reg   [8:0] i_V_reg_192;
wire   [0:0] exitcond_i_fu_148_p2;
reg   [0:0] exitcond_i_reg_197;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_78;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_89;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [9:0] j_V_fu_153_p2;
reg   [8:0] p_i_reg_99;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_114;
wire   [9:0] p_cast_i_fu_129_p1;
wire   [10:0] p_3_cast_i_fu_144_p1;
wire   [0:0] tmp_i_70_fu_159_p2;
reg   [3:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_133_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_148_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_133_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_i_fu_148_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_133_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_148_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_i_fu_148_p2 == ap_const_lv1_0))) begin
        p_3_i_reg_110 <= j_V_fu_153_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_133_p2 == ap_const_lv1_0))) begin
        p_3_i_reg_110 <= ap_const_lv10_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_i_reg_99 <= i_V_reg_192;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_53)) begin
        p_i_reg_99 <= ap_const_lv9_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond_i_reg_197 <= exitcond_i_fu_148_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_192 <= i_V_fu_138_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_53)) begin
        p_thresh_reg_173 <= thresh_dout;
        tmp_112_reg_183 <= tmp_112_fu_125_p1;
        tmp_reg_178 <= tmp_fu_121_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond3_i_fu_133_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_133_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (exitcond3_i_fu_133_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_133_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_78)
begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_67)
begin
    if (ap_sig_bdd_67) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_114)
begin
    if (ap_sig_bdd_114) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// dst_data_stream_V_write assign process. ///
always @ (exitcond_i_reg_197 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_89 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_197 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst_data_stream_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_V_write = ap_const_logic_0;
    end
end

/// src_data_stream_V_read assign process. ///
always @ (exitcond_i_reg_197 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_89 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_197 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src_data_stream_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_V_read = ap_const_logic_0;
    end
end

/// thresh_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_53)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_53)) begin
        thresh_read = ap_const_logic_1;
    end else begin
        thresh_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_53 or exitcond3_i_fu_133_p2 or exitcond_i_fu_148_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_89 or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_53) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond3_i_fu_133_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_148_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_89 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_148_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_114 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_114 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_53 assign process. ///
always @ (ap_start or ap_done_reg or thresh_empty_n)
begin
    ap_sig_bdd_53 = ((thresh_empty_n == ap_const_logic_0) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_67 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_67 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_89 assign process. ///
always @ (src_data_stream_V_empty_n or dst_data_stream_V_full_n or exitcond_i_reg_197)
begin
    ap_sig_bdd_89 = (((src_data_stream_V_empty_n == ap_const_logic_0) & (exitcond_i_reg_197 == ap_const_lv1_0)) | ((exitcond_i_reg_197 == ap_const_lv1_0) & (dst_data_stream_V_full_n == ap_const_logic_0)));
end
assign dst_data_stream_V_din = ((tmp_i_70_fu_159_p2[0:0]===1'b1)? ap_const_lv8_FF: ap_const_lv8_0);
assign exitcond3_i_fu_133_p2 = (p_cast_i_fu_129_p1 == tmp_reg_178? 1'b1: 1'b0);
assign exitcond_i_fu_148_p2 = (p_3_cast_i_fu_144_p1 == tmp_112_reg_183? 1'b1: 1'b0);
assign i_V_fu_138_p2 = (p_i_reg_99 + ap_const_lv9_1);
assign j_V_fu_153_p2 = (p_3_i_reg_110 + ap_const_lv10_1);
assign p_3_cast_i_fu_144_p1 = p_3_i_reg_110;
assign p_cast_i_fu_129_p1 = p_i_reg_99;
assign tmp_112_fu_125_p1 = src_cols_V_read[10:0];
assign tmp_fu_121_p1 = src_rows_V_read[9:0];
assign tmp_i_70_fu_159_p2 = (src_data_stream_V_dout > p_thresh_reg_173? 1'b1: 1'b0);


endmodule //sobel_Threshold_480_640_0_0_s

