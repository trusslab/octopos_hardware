//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri Apr 21 18:59:49 2023
//Host        : trusslab-Super-Server running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_LED,
    mgt_clk_clk_n,
    mgt_clk_clk_p,
    sfp_rxn,
    sfp_rxp,
    sfp_tx_dis,
    sfp_txn,
    sfp_txp,
    tpm_rx,
    tpm_tx,
    uart2_pl_rxd,
    uart2_pl_txd,
    uart_enclv0_tx,
    uart_enclv1_tx,
    uart_network_tx,
    uart_os_tx,
    uart_serial_out_tx,
    uart_storage_tx);
  output [7:0]GPIO_LED;
  input mgt_clk_clk_n;
  input mgt_clk_clk_p;
  input sfp_rxn;
  input sfp_rxp;
  output [0:0]sfp_tx_dis;
  output sfp_txn;
  output sfp_txp;
  input tpm_rx;
  output tpm_tx;
  input uart2_pl_rxd;
  output uart2_pl_txd;
  output uart_enclv0_tx;
  output uart_enclv1_tx;
  output uart_network_tx;
  output uart_os_tx;
  output uart_serial_out_tx;
  output uart_storage_tx;

  wire [7:0]GPIO_LED;
  wire mgt_clk_clk_n;
  wire mgt_clk_clk_p;
  wire sfp_rxn;
  wire sfp_rxp;
  wire [0:0]sfp_tx_dis;
  wire sfp_txn;
  wire sfp_txp;
  wire tpm_rx;
  wire tpm_tx;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;
  wire uart_enclv0_tx;
  wire uart_enclv1_tx;
  wire uart_network_tx;
  wire uart_os_tx;
  wire uart_serial_out_tx;
  wire uart_storage_tx;

  design_1 design_1_i
       (.GPIO_LED(GPIO_LED),
        .mgt_clk_clk_n(mgt_clk_clk_n),
        .mgt_clk_clk_p(mgt_clk_clk_p),
        .sfp_rxn(sfp_rxn),
        .sfp_rxp(sfp_rxp),
        .sfp_tx_dis(sfp_tx_dis),
        .sfp_txn(sfp_txn),
        .sfp_txp(sfp_txp),
        .tpm_rx(tpm_rx),
        .tpm_tx(tpm_tx),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd),
        .uart_enclv0_tx(uart_enclv0_tx),
        .uart_enclv1_tx(uart_enclv1_tx),
        .uart_network_tx(uart_network_tx),
        .uart_os_tx(uart_os_tx),
        .uart_serial_out_tx(uart_serial_out_tx),
        .uart_storage_tx(uart_storage_tx));
endmodule
