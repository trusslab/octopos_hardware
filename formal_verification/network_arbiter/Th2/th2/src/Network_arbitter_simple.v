`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 10:18:11 PM
// Design Name: 
// Module Name: Netwrok_arbitter
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


module Network_arbitter_simple#
	//Parameters
	(
		// Parameters of Axi contrl Buses Interfaces
		parameter integer C_S_ctrl_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_ctrl_AXI_ADDR_WIDTH	= 4
	)
	//Ports
	(
		// MailBox Main Signals
		(* X_INTERFACE_PARAMETER = "FREQ_HZ 99990005" *)
		input wire S_CLK,
		input wire S_ARESETN,
		// Ctrl0 AXI port
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_ctrl0_axi, FREQ_HZ 99990005" *)
		input wire  s_ctrl0_axi_aclk,
		input wire  s_ctrl0_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl0_axi_awaddr,
		input wire [2 : 0] s_ctrl0_axi_awprot,
		input wire  s_ctrl0_axi_awvalid,
		output wire  s_ctrl0_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl0_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl0_axi_wstrb,
		input wire  s_ctrl0_axi_wvalid,
		output wire  s_ctrl0_axi_wready,
		output wire [1 : 0] s_ctrl0_axi_bresp,
		output wire  s_ctrl0_axi_bvalid,
		input wire  s_ctrl0_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl0_axi_araddr,
		input wire [2 : 0] s_ctrl0_axi_arprot,
		input wire  s_ctrl0_axi_arvalid,
		output wire  s_ctrl0_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl0_axi_rdata,
		output wire [1 : 0] s_ctrl0_axi_rresp,
		output wire  s_ctrl0_axi_rvalid,
		input wire  s_ctrl0_axi_rready,





//Trusted streaming signals
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_txd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_txd_aresetn RST" *)
		input wire T_axi_txd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_txc_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_txc_aresetn RST" *)
		input wire T_axi_txc_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_rxd_aresetn RST" *)
		input wire T_axi_rxd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.T_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.T_axi_rxs_aresetn RST" *)
		input wire T_axi_rxs_aresetn,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TDATA" *)
		input wire [31 : 0] T_s_axis_txc_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TKEEP" *)
		input wire [3 : 0] T_s_axis_txc_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TLAST" *)
		input wire T_s_axis_txc_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TREADY" *)
		output wire T_s_axis_txc_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_s_axis_txc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txc TVALID" *)
		input wire T_s_axis_txc_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TDATA" *)
		input wire [31 : 0] T_s_axis_txd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TKEEP" *)
		input wire [3 : 0] T_s_axis_txd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TLAST" *)
		input wire T_s_axis_txd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TREADY" *)
		output wire T_s_axis_txd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_s_axis_txd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_s_axis_txd TVALID" *)
		input wire T_s_axis_txd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TDATA" *)
		output wire [31 : 0] T_m_axis_rxd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TKEEP" *)
		output wire [3 : 0] T_m_axis_rxd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TLAST" *)
		output wire T_m_axis_rxd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TREADY" *)
		input wire T_m_axis_rxd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_m_axis_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxd TVALID" *)
		output wire T_m_axis_rxd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TDATA" *)
		output wire [31 : 0] T_m_axis_rxs_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TKEEP" *)
		output wire [3 : 0] T_m_axis_rxs_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TLAST" *)
		output wire T_m_axis_rxs_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TREADY" *)
		input wire T_m_axis_rxs_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T_m_axis_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 T_m_axis_rxs TVALID" *)
		output wire T_m_axis_rxs_tvalid,
//Untrusted streaming signals	
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_txd_aresetn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_txd_aresetn RST" *)
		input wire U_axi_txd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_txc_aresetn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_txc_aresetn RST" *)
		input wire U_axi_txc_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_rxd_aresetn RST" *)
		input wire U_axi_rxd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.U_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.U_axi_rxs_aresetn RST" *)
		input wire U_axi_rxs_aresetn,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TDATA" *)
		input wire [31 : 0] U_s_axis_txc_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TKEEP" *)
		input wire [3 : 0] U_s_axis_txc_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TLAST" *)
		input wire U_s_axis_txc_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TREADY" *)
		output wire U_s_axis_txc_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_s_axis_txc, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txc TVALID" *)
		input wire U_s_axis_txc_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TDATA" *)
		input wire [31 : 0] U_s_axis_txd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TKEEP" *)
		input wire [3 : 0] U_s_axis_txd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TLAST" *)
		input wire U_s_axis_txd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TREADY" *)
		output wire U_s_axis_txd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_s_axis_txd, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_s_axis_txd TVALID" *)
		input wire U_s_axis_txd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TDATA" *)
		output wire [31 : 0] U_m_axis_rxd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TKEEP" *)
		output wire [3 : 0] U_m_axis_rxd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TLAST" *)
		output wire U_m_axis_rxd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TREADY" *)
		input wire U_m_axis_rxd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_m_axis_rxd, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxd TVALID" *)
		output wire U_m_axis_rxd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TDATA" *)
		output wire [31 : 0] U_m_axis_rxs_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TKEEP" *)
		output wire [3 : 0] U_m_axis_rxs_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TLAST" *)
		output wire U_m_axis_rxs_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TREADY" *)
		input wire U_m_axis_rxs_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME U_m_axis_rxs, TDATA_NUM_BYTES 4, TDESU_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERU_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 U_m_axis_rxs TVALID" *)
		output wire U_m_axis_rxs_tvalid,
//Output streaming signals		
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_axi_txd_aresetn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 O_axi_txd_aresetn RST" *)
		output wire O_axi_txd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_axi_txc_aresetn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 O_axi_txc_aresetn RST" *)
		output wire O_axi_txc_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 O_axi_rxd_aresetn RST" *)
		output wire O_axi_rxd_aresetn,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 O_axi_rxs_aresetn RST" *)
		output wire O_axi_rxs_aresetn,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TDATA" *)
		output wire [31 : 0] O_s_axis_txc_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TKEEP" *)
		output wire [3 : 0] O_s_axis_txc_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TLAST" *)
		output wire O_s_axis_txc_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TREADY" *)
		input wire O_s_axis_txc_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_s_axis_txc, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txc TVALID" *)
		output wire O_s_axis_txc_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TDATA" *)
		output wire [31 : 0] O_s_axis_txd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TKEEP" *)
		output wire [3 : 0] O_s_axis_txd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TLAST" *)
		output wire O_s_axis_txd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TREADY" *)
		input wire O_s_axis_txd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_s_axis_txd, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_s_axis_txd TVALID" *)
		output wire O_s_axis_txd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TDATA" *)
		input wire [31 : 0] O_m_axis_rxd_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TKEEP" *)
		input wire [3 : 0] O_m_axis_rxd_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TLAST" *)
		input wire O_m_axis_rxd_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TREADY" *)
		output wire O_m_axis_rxd_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_m_axis_rxd, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxd TVALID" *)
		input wire O_m_axis_rxd_tvalid,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TDATA" *)
		input wire [31 : 0] O_m_axis_rxs_tdata,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TKEEP" *)
		input wire [3 : 0] O_m_axis_rxs_tkeep,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TLAST" *)
		input wire O_m_axis_rxs_tlast,
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TREADY" *)
		output wire O_m_axis_rxs_tready,
		(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O_m_axis_rxs, TDATA_NUM_BYTES 4, TDESO_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERO_VIP 0" *)
		(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O_m_axis_rxs TVALID" *)
		input wire O_m_axis_rxs_tvalid,
		output wire trusted	


	);//Ports def end




	//System registers (FlipFlops) defenitions
	wire [31:0] s_ctrl0_write_state_value;
	wire  s_ctrl0_write_req;
	reg [31:0] write_state_value;

	wire clk;
	wire resetn;
	//Connect output wires to temporary regs 
	assign clk = S_CLK;
	assign resetn = S_ARESETN;





//Main arbiter multiplexer
//Output signal multiplexers
assign O_axi_txd_aresetn          = trusted ? T_axi_txd_aresetn      : U_axi_txd_aresetn    ;
assign O_axi_txc_aresetn          = trusted ? T_axi_txc_aresetn      : U_axi_txc_aresetn    ;
assign O_axi_rxd_aresetn          = trusted ? T_axi_rxd_aresetn      : U_axi_rxd_aresetn    ;
assign O_axi_rxs_aresetn          = trusted ? T_axi_rxs_aresetn      : U_axi_rxs_aresetn    ;
assign O_s_axis_txc_tdata       = trusted ? T_s_axis_txc_tdata   : U_s_axis_txc_tdata ;
assign O_s_axis_txc_tkeep       = trusted ? T_s_axis_txc_tkeep   : U_s_axis_txc_tkeep ;
assign O_s_axis_txc_tlast       = trusted ? T_s_axis_txc_tlast   : U_s_axis_txc_tlast ;
assign O_s_axis_txc_tvalid      = trusted ? T_s_axis_txc_tvalid  : U_s_axis_txc_tvalid;
assign O_s_axis_txd_tdata       = trusted ? T_s_axis_txd_tdata   : U_s_axis_txd_tdata ;
assign O_s_axis_txd_tkeep       = trusted ? T_s_axis_txd_tkeep   : U_s_axis_txd_tkeep ;
assign O_s_axis_txd_tlast       = trusted ? T_s_axis_txd_tlast   : U_s_axis_txd_tlast ;
assign O_s_axis_txd_tvalid      = trusted ? T_s_axis_txd_tvalid  : U_s_axis_txd_tvalid;
assign O_m_axis_rxd_tready      = trusted ? T_m_axis_rxd_tready  : U_m_axis_rxd_tready;
assign O_m_axis_rxs_tready      = trusted ? T_m_axis_rxs_tready  : U_m_axis_rxs_tready;


//input signal multiplxers
assign T_m_axis_rxd_tdata   = trusted ? O_m_axis_rxd_tdata      : 32'b0;
assign T_m_axis_rxd_tkeep   = trusted ? O_m_axis_rxd_tkeep      : 4'b0;
assign T_m_axis_rxd_tlast   = trusted ? O_m_axis_rxd_tlast      : 1'b0;
assign T_m_axis_rxd_tvalid  = trusted ? O_m_axis_rxd_tvalid     : 1'b0;
assign T_m_axis_rxs_tdata   = trusted ? O_m_axis_rxs_tdata      : 32'b0;
assign T_m_axis_rxs_tkeep   = trusted ? O_m_axis_rxs_tkeep      : 4'b0;
assign T_m_axis_rxs_tlast   = trusted ? O_m_axis_rxs_tlast      : 1'b0;
assign T_m_axis_rxs_tvalid  = trusted ? O_m_axis_rxs_tvalid     : 1'b0;
assign T_s_axis_txc_tready  = trusted ? O_s_axis_txc_tready     : 1'b0;
assign T_s_axis_txd_tready  = trusted ? O_s_axis_txd_tready     : 1'b0;

assign U_m_axis_rxd_tdata   = !trusted ? O_m_axis_rxd_tdata     : 32'b0;
assign U_m_axis_rxd_tkeep   = !trusted ? O_m_axis_rxd_tkeep     : 4'b0;
assign U_m_axis_rxd_tlast   = !trusted ? O_m_axis_rxd_tlast     : 1'b0;
assign U_m_axis_rxd_tvalid  = !trusted ? O_m_axis_rxd_tvalid    : 1'b0;
assign U_m_axis_rxs_tdata   = !trusted ? O_m_axis_rxs_tdata     : 32'b0;
assign U_m_axis_rxs_tkeep   = !trusted ? O_m_axis_rxs_tkeep     : 4'b0;
assign U_m_axis_rxs_tlast   = !trusted ? O_m_axis_rxs_tlast     : 1'b0;
assign U_m_axis_rxs_tvalid  = !trusted ? O_m_axis_rxs_tvalid    : 1'b0;
assign U_s_axis_txc_tready  = !trusted ? O_s_axis_txc_tready    : 1'b0;
assign U_s_axis_txd_tready  = !trusted ? O_s_axis_txd_tready    : 1'b0;



	//Control AXI buses instantiation
	//Control AXI bus0 instantiation
	Octopos_Arbiter_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_Arbiter_ctrl_AXI_ctrl0_instance (
		.S_AXI_ACLK(s_ctrl0_axi_aclk),
		.S_AXI_ARESETN(s_ctrl0_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl0_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl0_axi_awprot),
		.S_AXI_AWVALID(s_ctrl0_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl0_axi_awready),
		.S_AXI_WDATA(s_ctrl0_axi_wdata),
		.S_AXI_WSTRB(s_ctrl0_axi_wstrb),
		.S_AXI_WVALID(s_ctrl0_axi_wvalid),
		.S_AXI_WREADY(s_ctrl0_axi_wready),
		.S_AXI_BRESP(s_ctrl0_axi_bresp),
		.S_AXI_BVALID(s_ctrl0_axi_bvalid),
		.S_AXI_BREADY(s_ctrl0_axi_bready),
		.S_AXI_ARADDR(s_ctrl0_axi_araddr),
		.S_AXI_ARPROT(s_ctrl0_axi_arprot),
		.S_AXI_ARVALID(s_ctrl0_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl0_axi_arready),
		.S_AXI_RDATA(s_ctrl0_axi_rdata),
		.S_AXI_RRESP(s_ctrl0_axi_rresp),
		.S_AXI_RVALID(s_ctrl0_axi_rvalid),
		.S_AXI_RREADY(s_ctrl0_axi_rready),
		.S_WRITE_STATE_VALUE(s_ctrl0_write_state_value)
	);



	//Octopos Mailbox Main logic

 
	//Combinational logic


	//Multiplexer for write_state_value and write_req 
 	always @(*)
	begin
			write_state_value = s_ctrl0_write_state_value;
	end
	
	reg [31:0] sr;
	network_arbiter_main_logic nam_inst(
	   .CLK(clk),
	   .RESETN(resetn),
	   .WRITE_STATE_VALUE(write_state_value),
	   .TRUSTED(trusted),
	   .state_reg(sr)
	);




endmodule

