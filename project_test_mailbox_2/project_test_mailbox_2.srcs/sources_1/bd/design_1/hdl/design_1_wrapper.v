//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
//Date        : Fri Jul 17 21:46:24 2020
//Host        : hymns-1 running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ddr4_sdram_act_n,
    ddr4_sdram_adr,
    ddr4_sdram_ba,
    ddr4_sdram_bg,
    ddr4_sdram_ck_c,
    ddr4_sdram_ck_t,
    ddr4_sdram_cke,
    ddr4_sdram_cs_n,
    ddr4_sdram_dm_n,
    ddr4_sdram_dq,
    ddr4_sdram_dqs_c,
    ddr4_sdram_dqs_t,
    ddr4_sdram_odt,
    ddr4_sdram_reset_n,
    reset,
    uart2_pl_rxd,
    uart2_pl_txd,
    uart_rtl_rxd,
    uart_rtl_txd,
    user_si570_sysclk_clk_n,
    user_si570_sysclk_clk_p);
  output ddr4_sdram_act_n;
  output [16:0]ddr4_sdram_adr;
  output [1:0]ddr4_sdram_ba;
  output ddr4_sdram_bg;
  output ddr4_sdram_ck_c;
  output ddr4_sdram_ck_t;
  output ddr4_sdram_cke;
  output ddr4_sdram_cs_n;
  inout [1:0]ddr4_sdram_dm_n;
  inout [15:0]ddr4_sdram_dq;
  inout [1:0]ddr4_sdram_dqs_c;
  inout [1:0]ddr4_sdram_dqs_t;
  output ddr4_sdram_odt;
  output ddr4_sdram_reset_n;
  input reset;
  input uart2_pl_rxd;
  output uart2_pl_txd;
  input uart_rtl_rxd;
  output uart_rtl_txd;
  input user_si570_sysclk_clk_n;
  input user_si570_sysclk_clk_p;

  wire ddr4_sdram_act_n;
  wire [16:0]ddr4_sdram_adr;
  wire [1:0]ddr4_sdram_ba;
  wire ddr4_sdram_bg;
  wire ddr4_sdram_ck_c;
  wire ddr4_sdram_ck_t;
  wire ddr4_sdram_cke;
  wire ddr4_sdram_cs_n;
  wire [1:0]ddr4_sdram_dm_n;
  wire [15:0]ddr4_sdram_dq;
  wire [1:0]ddr4_sdram_dqs_c;
  wire [1:0]ddr4_sdram_dqs_t;
  wire ddr4_sdram_odt;
  wire ddr4_sdram_reset_n;
  wire reset;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;
  wire user_si570_sysclk_clk_n;
  wire user_si570_sysclk_clk_p;

  design_1 design_1_i
       (.ddr4_sdram_act_n(ddr4_sdram_act_n),
        .ddr4_sdram_adr(ddr4_sdram_adr),
        .ddr4_sdram_ba(ddr4_sdram_ba),
        .ddr4_sdram_bg(ddr4_sdram_bg),
        .ddr4_sdram_ck_c(ddr4_sdram_ck_c),
        .ddr4_sdram_ck_t(ddr4_sdram_ck_t),
        .ddr4_sdram_cke(ddr4_sdram_cke),
        .ddr4_sdram_cs_n(ddr4_sdram_cs_n),
        .ddr4_sdram_dm_n(ddr4_sdram_dm_n),
        .ddr4_sdram_dq(ddr4_sdram_dq),
        .ddr4_sdram_dqs_c(ddr4_sdram_dqs_c),
        .ddr4_sdram_dqs_t(ddr4_sdram_dqs_t),
        .ddr4_sdram_odt(ddr4_sdram_odt),
        .ddr4_sdram_reset_n(ddr4_sdram_reset_n),
        .reset(reset),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd),
        .user_si570_sysclk_clk_n(user_si570_sysclk_clk_n),
        .user_si570_sysclk_clk_p(user_si570_sysclk_clk_p));
endmodule
