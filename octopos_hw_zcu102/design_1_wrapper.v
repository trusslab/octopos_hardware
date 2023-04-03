//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat Jul  2 21:04:46 2022
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
    pmod_pin10_io,
    pmod_pin1_io,
    pmod_pin2_io,
    pmod_pin3_io,
    pmod_pin4_io,
    pmod_pin7_io,
    pmod_pin8_io,
    pmod_pin9_io,
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
  inout pmod_pin10_io;
  inout pmod_pin1_io;
  inout pmod_pin2_io;
  inout pmod_pin3_io;
  inout pmod_pin4_io;
  inout pmod_pin7_io;
  inout pmod_pin8_io;
  inout pmod_pin9_io;
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
  wire pmod_pin10_i;
  wire pmod_pin10_io;
  wire pmod_pin10_o;
  wire pmod_pin10_t;
  wire pmod_pin1_i;
  wire pmod_pin1_io;
  wire pmod_pin1_o;
  wire pmod_pin1_t;
  wire pmod_pin2_i;
  wire pmod_pin2_io;
  wire pmod_pin2_o;
  wire pmod_pin2_t;
  wire pmod_pin3_i;
  wire pmod_pin3_io;
  wire pmod_pin3_o;
  wire pmod_pin3_t;
  wire pmod_pin4_i;
  wire pmod_pin4_io;
  wire pmod_pin4_o;
  wire pmod_pin4_t;
  wire pmod_pin7_i;
  wire pmod_pin7_io;
  wire pmod_pin7_o;
  wire pmod_pin7_t;
  wire pmod_pin8_i;
  wire pmod_pin8_io;
  wire pmod_pin8_o;
  wire pmod_pin8_t;
  wire pmod_pin9_i;
  wire pmod_pin9_io;
  wire pmod_pin9_o;
  wire pmod_pin9_t;
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
        .pmod_pin10_i(pmod_pin10_i),
        .pmod_pin10_o(pmod_pin10_o),
        .pmod_pin10_t(pmod_pin10_t),
        .pmod_pin1_i(pmod_pin1_i),
        .pmod_pin1_o(pmod_pin1_o),
        .pmod_pin1_t(pmod_pin1_t),
        .pmod_pin2_i(pmod_pin2_i),
        .pmod_pin2_o(pmod_pin2_o),
        .pmod_pin2_t(pmod_pin2_t),
        .pmod_pin3_i(pmod_pin3_i),
        .pmod_pin3_o(pmod_pin3_o),
        .pmod_pin3_t(pmod_pin3_t),
        .pmod_pin4_i(pmod_pin4_i),
        .pmod_pin4_o(pmod_pin4_o),
        .pmod_pin4_t(pmod_pin4_t),
        .pmod_pin7_i(pmod_pin7_i),
        .pmod_pin7_o(pmod_pin7_o),
        .pmod_pin7_t(pmod_pin7_t),
        .pmod_pin8_i(pmod_pin8_i),
        .pmod_pin8_o(pmod_pin8_o),
        .pmod_pin8_t(pmod_pin8_t),
        .pmod_pin9_i(pmod_pin9_i),
        .pmod_pin9_o(pmod_pin9_o),
        .pmod_pin9_t(pmod_pin9_t),
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
  IOBUF pmod_pin10_iobuf
       (.I(pmod_pin10_o),
        .IO(pmod_pin10_io),
        .O(pmod_pin10_i),
        .T(pmod_pin10_t));
  IOBUF pmod_pin1_iobuf
       (.I(pmod_pin1_o),
        .IO(pmod_pin1_io),
        .O(pmod_pin1_i),
        .T(pmod_pin1_t));
  IOBUF pmod_pin2_iobuf
       (.I(pmod_pin2_o),
        .IO(pmod_pin2_io),
        .O(pmod_pin2_i),
        .T(pmod_pin2_t));
  IOBUF pmod_pin3_iobuf
       (.I(pmod_pin3_o),
        .IO(pmod_pin3_io),
        .O(pmod_pin3_i),
        .T(pmod_pin3_t));
  IOBUF pmod_pin4_iobuf
       (.I(pmod_pin4_o),
        .IO(pmod_pin4_io),
        .O(pmod_pin4_i),
        .T(pmod_pin4_t));
  IOBUF pmod_pin7_iobuf
       (.I(pmod_pin7_o),
        .IO(pmod_pin7_io),
        .O(pmod_pin7_i),
        .T(pmod_pin7_t));
  IOBUF pmod_pin8_iobuf
       (.I(pmod_pin8_o),
        .IO(pmod_pin8_io),
        .O(pmod_pin8_i),
        .T(pmod_pin8_t));
  IOBUF pmod_pin9_iobuf
       (.I(pmod_pin9_o),
        .IO(pmod_pin9_io),
        .O(pmod_pin9_i),
        .T(pmod_pin9_t));
endmodule
