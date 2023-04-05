// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

  T_axi_txd_arstn,
  T_axi_txc_arstn,
  T_axi_rxd_arstn,
  T_axi_rxs_arstn,
  T_s_axis_txc_tdata,
  T_s_axis_txc_tkeep,
  T_s_axis_txc_tlast,
  T_s_axis_txc_tready,
  T_s_axis_txc_tvalid,
  T_s_axis_txd_tdata,
  T_s_axis_txd_tkeep,
  T_s_axis_txd_tlast,
  T_s_axis_txd_tready,
  T_s_axis_txd_tvalid,
  T_m_axis_rxd_tdata,
  T_m_axis_rxd_tkeep,
  T_m_axis_rxd_tlast,
  T_m_axis_rxd_tready,
  T_m_axis_rxd_tvalid,
  T_m_axis_rxs_tdata,
  T_m_axis_rxs_tkeep,
  T_m_axis_rxs_tlast,
  T_m_axis_rxs_tready,
  T_m_axis_rxs_tvalid,
  U_axi_txd_arstn,
  U_axi_txc_arstn,
  U_axi_rxd_arstn,
  U_axi_rxs_arstn,
  U_s_axis_txc_tdata,
  U_s_axis_txc_tkeep,
  U_s_axis_txc_tlast,
  U_s_axis_txc_tready,
  U_s_axis_txc_tvalid,
  U_s_axis_txd_tdata,
  U_s_axis_txd_tkeep,
  U_s_axis_txd_tlast,
  U_s_axis_txd_tready,
  U_s_axis_txd_tvalid,
  U_m_axis_rxd_tdata,
  U_m_axis_rxd_tkeep,
  U_m_axis_rxd_tlast,
  U_m_axis_rxd_tready,
  U_m_axis_rxd_tvalid,
  U_m_axis_rxs_tdata,
  U_m_axis_rxs_tkeep,
  U_m_axis_rxs_tlast,
  U_m_axis_rxs_tready,
  U_m_axis_rxs_tvalid,
  O_axi_txd_arstn,
  O_axi_txc_arstn,
  O_axi_rxd_arstn,
  O_axi_rxs_arstn,
  O_s_axis_txc_tdata,
  O_s_axis_txc_tkeep,
  O_s_axis_txc_tlast,
  O_s_axis_txc_tready,
  O_s_axis_txc_tvalid,
  O_s_axis_txd_tdata,
  O_s_axis_txd_tkeep,
  O_s_axis_txd_tlast,
  O_s_axis_txd_tready,
  O_s_axis_txd_tvalid,
  O_m_axis_rxd_tdata,
  O_m_axis_rxd_tkeep,
  O_m_axis_rxd_tlast,
  O_m_axis_rxd_tready,
  O_m_axis_rxd_tvalid,
  O_m_axis_rxs_tdata,
  O_m_axis_rxs_tkeep,
  O_m_axis_rxs_tlast,
  O_m_axis_rxs_tready,
  O_m_axis_rxs_tvalid,




  
assign  O_axi_txd_arstn  = trusted ?  
assign  O_axi_txc_arstn  = trusted ?  
assign  O_axi_rxd_arstn  = trusted ?  
assign  O_axi_rxs_arstn  = trusted ?  
assign  O_s_axis_txc_tdata  = trusted ?  
assign  O_s_axis_txc_tkeep  = trusted ?  
assign  O_s_axis_txc_tlast  = trusted ?  
assign  O_s_axis_txc_tready  = trusted ?  
assign  O_s_axis_txc_tvalid  = trusted ?  
assign  O_s_axis_txd_tdata  = trusted ?  
assign  O_s_axis_txd_tkeep  = trusted ?  
assign  O_s_axis_txd_tlast  = trusted ?  
assign  O_s_axis_txd_tready  = trusted ?  
assign  O_s_axis_txd_tvalid  = trusted ?  
assign  O_m_axis_rxd_tdata  = trusted ?  
assign  O_m_axis_rxd_tkeep  = trusted ?  
assign  O_m_axis_rxd_tlast  = trusted ?  
assign  O_m_axis_rxd_tready  = trusted ?  
assign  O_m_axis_rxd_tvalid  = trusted ?  
assign  O_m_axis_rxs_tdata  = trusted ?  
assign  O_m_axis_rxs_tkeep  = trusted ?  
assign  O_m_axis_rxs_tlast  = trusted ?  
assign  O_m_axis_rxs_tready  = trusted ?  
assign  O_m_axis_rxs_tvalid  = trusted ?  


(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_txd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_txd_arstn RST" *)
input wire T_axi_txd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_txc_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_txc_arstn RST" *)
input wire T_axi_txc_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_rxd_arstn RST" *)
input wire T_axi_rxd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_rxs_arstn RST" *)
input wire T_axi_rxs_arstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TDATA" *)
input wire [31 : 0] T_s_axis_txc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TKEEP" *)
input wire [3 : 0] T_s_axis_txc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TLAST" *)
input wire T_s_axis_txc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TREADY" *)
output wire T_s_axis_txc_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_s_axis_txc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TVALID" *)
input wire T_s_axis_txc_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TDATA" *)
input wire [31 : 0] T_s_axis_txd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TKEEP" *)
input wire [3 : 0] T_s_axis_txd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TLAST" *)
input wire T_s_axis_txd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TREADY" *)
output wire T_s_axis_txd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_s_axis_txd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TVALID" *)
input wire T_s_axis_txd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TDATA" *)
output wire [31 : 0] T_m_axis_rxd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TKEEP" *)
output wire [3 : 0] T_m_axis_rxd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TLAST" *)
output wire T_m_axis_rxd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TREADY" *)
input wire T_m_axis_rxd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_m_axis_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TVALID" *)
output wire T_m_axis_rxd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TDATA" *)
output wire [31 : 0] T_m_axis_rxs_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TKEEP" *)
output wire [3 : 0] T_m_axis_rxs_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TLAST" *)
output wire T_m_axis_rxs_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TREADY" *)
input wire T_m_axis_rxs_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_m_axis_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TVALID" *)
output wire T_m_axis_rxs_tvalid;



(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_txd_arstn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_txd_arstn RST" *)
input wire U_axi_txd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_txc_arstn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_txc_arstn RST" *)
input wire U_axi_txc_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_rxd_arstn RST" *)
input wire U_axi_rxd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_rxs_arstn RST" *)
input wire U_axi_rxs_arstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TDATA" *)
input wire [31 : 0] U_s_axis_txc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TKEEP" *)
input wire [3 : 0] U_s_axis_txc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TLAST" *)
input wire U_s_axis_txc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TREADY" *)
output wire U_s_axis_txc_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_s_axis_txc, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TVALID" *)
input wire U_s_axis_txc_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TDATA" *)
input wire [31 : 0] U_s_axis_txd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TKEEP" *)
input wire [3 : 0] U_s_axis_txd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TLAST" *)
input wire U_s_axis_txd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TREADY" *)
output wire U_s_axis_txd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_s_axis_txd, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TVALID" *)
input wire U_s_axis_txd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TDATA" *)
output wire [31 : 0] U_m_axis_rxd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TKEEP" *)
output wire [3 : 0] U_m_axis_rxd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TLAST" *)
output wire U_m_axis_rxd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TREADY" *)
input wire U_m_axis_rxd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_m_axis_rxd, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TVALID" *)
output wire U_m_axis_rxd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TDATA" *)
output wire [31 : 0] U_m_axis_rxs_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TKEEP" *)
output wire [3 : 0] U_m_axis_rxs_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TLAST" *)
output wire U_m_axis_rxs_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TREADY" *)
input wire U_m_axis_rxs_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_m_axis_rxs, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TVALID" *)
output wire U_m_axis_rxs_tvalid;


(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.O_axi_txd_arstn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.O_axi_txd_arstn RST" *)
output wire O_axi_txd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.O_axi_txc_arstn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.O_axi_txc_arstn RST" *)
output wire O_axi_txc_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.O_axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.O_axi_rxd_arstn RST" *)
output wire O_axi_rxd_arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.O_axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.O_axi_rxs_arstn RST" *)
output wire O_axi_rxs_arstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TDATA" *)
output wire [31 : 0] O_s_axis_txc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TKEEP" *)
output wire [3 : 0] O_s_axis_txc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TLAST" *)
output wire O_s_axis_txc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TREADY" *)
input wire O_s_axis_txc_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_s_axis_txc, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TVALID" *)
output wire O_s_axis_txc_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TDATA" *)
output wire [31 : 0] O_s_axis_txd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TKEEP" *)
output wire [3 : 0] O_s_axis_txd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TLAST" *)
output wire O_s_axis_txd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TREADY" *)
input wire O_s_axis_txd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_s_axis_txd, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TVALID" *)
output wire O_s_axis_txd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TDATA" *)
input wire [31 : 0] O_m_axis_rxd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TKEEP" *)
input wire [3 : 0] O_m_axis_rxd_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TLAST" *)
input wire O_m_axis_rxd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TREADY" *)
output wire O_m_axis_rxd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_m_axis_rxd, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TVALID" *)
input wire O_m_axis_rxd_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TDATA" *)
input wire [31 : 0] O_m_axis_rxs_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TKEEP" *)
input wire [3 : 0] O_m_axis_rxs_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TLAST" *)
input wire O_m_axis_rxs_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TREADY" *)
output wire O_m_axis_rxs_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_m_axis_rxs, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TVALID" *)
input wire O_m_axis_rxs_tvalid;












//Output signal multiplexers
assign O_axi_txd_arstn		= trusted ? T_axi_txd_arstn	 : U_axi_txd_arstn    ;
assign O_axi_txc_arstn		= trusted ? T_axi_txc_arstn	 : U_axi_txc_arstn    ;
assign O_axi_rxd_arstn		= trusted ? T_axi_rxd_arstn	 : U_axi_rxd_arstn    ;
assign O_axi_rxs_arstn		= trusted ? T_axi_rxs_arstn	 : U_axi_rxs_arstn    ;
assign O_s_axis_txc_tdata	= trusted ? T_s_axis_txc_tdata	 : U_s_axis_txc_tdata ;
assign O_s_axis_txc_tkeep	= trusted ? T_s_axis_txc_tkeep	 : U_s_axis_txc_tkeep ;
assign O_s_axis_txc_tlast	= trusted ? T_s_axis_txc_tlast	 : U_s_axis_txc_tlast ;
assign O_s_axis_txc_tvalid	= trusted ? T_s_axis_txc_tvalid	 : U_s_axis_txc_tvalid;
assign O_s_axis_txd_tdata	= trusted ? T_s_axis_txd_tdata	 : U_s_axis_txd_tdata ;
assign O_s_axis_txd_tkeep	= trusted ? T_s_axis_txd_tkeep 	 : U_s_axis_txd_tkeep ;
assign O_s_axis_txd_tlast	= trusted ? T_s_axis_txd_tlast	 : U_s_axis_txd_tlast ;
assign O_s_axis_txd_tvalid	= trusted ? T_s_axis_txd_tvalid	 : U_s_axis_txd_tvalid;
assign O_m_axis_rxd_tready	= trusted ? T_m_axis_rxd_tready	 : U_m_axis_rxd_tready;
assign O_m_axis_rxs_tready	= trusted ? T_m_axis_rxs_tready	 : U_m_axis_rxs_tready;


//input signal multiplxers
assign T_m_axis_rxd_tdata   = trusted ? O_m_axis_rxd_tdata 	: 32'b0;
assign T_m_axis_rxd_tkeep   = trusted ? O_m_axis_rxd_tkeep 	: 4'b0;
assign T_m_axis_rxd_tlast   = trusted ? O_m_axis_rxd_tlast	: 1'b0;
assign T_m_axis_rxd_tvalid  = trusted ? O_m_axis_rxd_tvalid	: 1'b0;
assign T_m_axis_rxs_tdata   = trusted ? O_m_axis_rxs_tdata	: 32'b0;
assign T_m_axis_rxs_tkeep   = trusted ? O_m_axis_rxs_tkeep	: 4'b0;
assign T_m_axis_rxs_tlast   = trusted ? O_m_axis_rxs_tlast	: 1'b0;
assign T_m_axis_rxs_tvalid  = trusted ? O_m_axis_rxs_tvalid	: 1'b0;
assign T_s_axis_txc_tready  = trusted ? O_s_axis_txc_tready	: 1'b0;
assign T_s_axis_txd_tready  = trusted ? O_s_axis_txd_tready	: 1'b0;

assign U_m_axis_rxd_tdata   = !trusted ? O_m_axis_rxd_tdata 	: 32'b0;
assign U_m_axis_rxd_tkeep   = !trusted ? O_m_axis_rxd_tkeep 	: 4'b0;
assign U_m_axis_rxd_tlast   = !trusted ? O_m_axis_rxd_tlast	: 1'b0;
assign U_m_axis_rxd_tvalid  = !trusted ? O_m_axis_rxd_tvalid	: 1'b0;
assign U_m_axis_rxs_tdata   = !trusted ? O_m_axis_rxs_tdata	: 32'b0;
assign U_m_axis_rxs_tkeep   = !trusted ? O_m_axis_rxs_tkeep	: 4'b0;
assign U_m_axis_rxs_tlast   = !trusted ? O_m_axis_rxs_tlast	: 1'b0;
assign U_m_axis_rxs_tvalid  = !trusted ? O_m_axis_rxs_tvalid	: 1'b0;
assign U_s_axis_txc_tready  = !trusted ? O_s_axis_txc_tready	: 1'b0;
assign U_s_axis_txd_tready  = !trusted ? O_s_axis_txd_tready	: 1'b0;































