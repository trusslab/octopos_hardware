//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
//Date        : Wed Dec  2 08:51:55 2020
//Host        : hymns-1 running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_8bits_tri_o,
    reset,
    uart2_pl_rxd,
    uart2_pl_txd,
    uart_rtl_rxd,
    uart_rtl_txd);
  output [7:0]led_8bits_tri_o;
  input reset;
  input uart2_pl_rxd;
  output uart2_pl_txd;
  input uart_rtl_rxd;
  output uart_rtl_txd;

  wire [7:0]led_8bits_tri_o;
  wire reset;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;

  design_1 design_1_i
       (.led_8bits_tri_o(led_8bits_tri_o),
        .reset(reset),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd));
endmodule
