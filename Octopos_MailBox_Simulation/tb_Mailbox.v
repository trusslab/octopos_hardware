// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 10:31:00 PM
// Design Name: 
// Module Name: tb_Mailbox
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


module tb_Mailbox	//Parameters
	#(
		// Parameters of Axi contrl Buses Interfaces
		parameter integer C_S_ctrl_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_ctrl_AXI_ADDR_WIDTH	= 4
	)();
// MailBox Main Signals
reg clk;
reg resetn;
// Ctrl0 AXI port
reg  s_ctrl0_axi_aclk;
reg  s_ctrl0_axi_aresetn;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl0_axi_awaddr;
reg [2 : 0] s_ctrl0_axi_awprot;
reg  s_ctrl0_axi_awvalid;
wire  s_ctrl0_axi_awready;
reg [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl0_axi_wdata;
reg [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl0_axi_wstrb;
reg  s_ctrl0_axi_wvalid;
wire  s_ctrl0_axi_wready;
wire [1 : 0] s_ctrl0_axi_bresp;
wire  s_ctrl0_axi_bvalid;
reg  s_ctrl0_axi_bready;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl0_axi_araddr;
reg [2 : 0] s_ctrl0_axi_arprot;
reg  s_ctrl0_axi_arvalid;
wire  s_ctrl0_axi_arready;
wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl0_axi_rdata;
wire [1 : 0] s_ctrl0_axi_rresp;
wire  s_ctrl0_axi_rvalid;
reg  s_ctrl0_axi_rready;
// Ctrl1 AXI port
reg  s_ctrl1_axi_aclk;
reg  s_ctrl1_axi_aresetn;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl1_axi_awaddr;
reg [2 : 0] s_ctrl1_axi_awprot;
reg  s_ctrl1_axi_awvalid;
wire  s_ctrl1_axi_awready;
reg [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl1_axi_wdata;
reg [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl1_axi_wstrb;
reg  s_ctrl1_axi_wvalid;
wire  s_ctrl1_axi_wready;
wire [1 : 0] s_ctrl1_axi_bresp;
wire  s_ctrl1_axi_bvalid;
reg  s_ctrl1_axi_bready;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl1_axi_araddr;
reg [2 : 0] s_ctrl1_axi_arprot;
reg  s_ctrl1_axi_arvalid;
wire  s_ctrl1_axi_arready;
wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl1_axi_rdata;
wire [1 : 0] s_ctrl1_axi_rresp;
wire  s_ctrl1_axi_rvalid;
reg  s_ctrl1_axi_rready;
// Ctrl2 AXI port
reg  s_ctrl2_axi_aclk;
reg  s_ctrl2_axi_aresetn;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl2_axi_awaddr;
reg [2 : 0] s_ctrl2_axi_awprot;
reg  s_ctrl2_axi_awvalid;
wire  s_ctrl2_axi_awready;
reg [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl2_axi_wdata;
reg [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl2_axi_wstrb;
reg  s_ctrl2_axi_wvalid;
wire  s_ctrl2_axi_wready;
wire [1 : 0] s_ctrl2_axi_bresp;
wire  s_ctrl2_axi_bvalid;
reg  s_ctrl2_axi_bready;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl2_axi_araddr;
reg [2 : 0] s_ctrl2_axi_arprot;
reg  s_ctrl2_axi_arvalid;
wire  s_ctrl2_axi_arready;
wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl2_axi_rdata;
wire [1 : 0] s_ctrl2_axi_rresp;
wire  s_ctrl2_axi_rvalid;
reg  s_ctrl2_axi_rready;
// Ctrl_fixed AXI port
reg  s_ctrl_fixed_axi_aclk;
reg  s_ctrl_fixed_axi_aresetn;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl_fixed_axi_awaddr;
reg [2 : 0] s_ctrl_fixed_axi_awprot;
reg  s_ctrl_fixed_axi_awvalid;
wire  s_ctrl_fixed_axi_awready;
reg [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl_fixed_axi_wdata;
reg [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl_fixed_axi_wstrb;
reg  s_ctrl_fixed_axi_wvalid;
wire  s_ctrl_fixed_axi_wready;
wire [1 : 0] s_ctrl_fixed_axi_bresp;
wire  s_ctrl_fixed_axi_bvalid;
reg  s_ctrl_fixed_axi_bready;
reg [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl_fixed_axi_araddr;
reg [2 : 0] s_ctrl_fixed_axi_arprot;
reg  s_ctrl_fixed_axi_arvalid;
wire  s_ctrl_fixed_axi_arready;
wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl_fixed_axi_rdata;
wire [1 : 0] s_ctrl_fixed_axi_rresp;
wire  s_ctrl_fixed_axi_rvalid;
reg  s_ctrl_fixed_axi_rready;
// data0 AXI port
reg S0_data0_AXI_ACLK;
reg S0_data0_AXI_ARESETN;
reg [31 : 0] S0_data0_AXI_AWADDR;
reg S0_data0_AXI_AWVALID;
wire S0_data0_AXI_AWREADY;
reg [31 : 0] S0_data0_AXI_WDATA;
reg [3 : 0] S0_data0_AXI_WSTRB;
reg S0_data0_AXI_WVALID;
wire S0_data0_AXI_WREADY;
wire [1 : 0] S0_data0_AXI_BRESP;
wire S0_data0_AXI_BVALID;
reg S0_data0_AXI_BREADY;
reg [31 : 0] S0_data0_AXI_ARADDR;
reg S0_data0_AXI_ARVALID;
wire S0_data0_AXI_ARREADY;
wire [31 : 0] S0_data0_AXI_RDATA;
wire [1 : 0] S0_data0_AXI_RRESP;
wire S0_data0_AXI_RVALID;
reg S0_data0_AXI_RREADY;
// data1 AXI port
reg S0_data1_AXI_ACLK;
reg S0_data1_AXI_ARESETN;
reg [31 : 0] S0_data1_AXI_AWADDR;
reg S0_data1_AXI_AWVALID;
wire S0_data1_AXI_AWREADY;
reg [31 : 0] S0_data1_AXI_WDATA;
reg [3 : 0] S0_data1_AXI_WSTRB;
reg S0_data1_AXI_WVALID;
wire S0_data1_AXI_WREADY;
wire [1 : 0] S0_data1_AXI_BRESP;
wire S0_data1_AXI_BVALID;
reg S0_data1_AXI_BREADY;
reg [31 : 0] S0_data1_AXI_ARADDR;
reg S0_data1_AXI_ARVALID;
wire S0_data1_AXI_ARREADY;
wire [31 : 0] S0_data1_AXI_RDATA;
wire [1 : 0] S0_data1_AXI_RRESP;
wire S0_data1_AXI_RVALID;
reg S0_data1_AXI_RREADY;
// data2 AXI port
reg S0_data2_AXI_ACLK;
reg S0_data2_AXI_ARESETN;
reg [31 : 0] S0_data2_AXI_AWADDR;
reg S0_data2_AXI_AWVALID;
wire S0_data2_AXI_AWREADY;
reg [31 : 0] S0_data2_AXI_WDATA;
reg [3 : 0] S0_data2_AXI_WSTRB;
reg S0_data2_AXI_WVALID;
wire S0_data2_AXI_WREADY;
wire [1 : 0] S0_data2_AXI_BRESP;
wire S0_data2_AXI_BVALID;
reg S0_data2_AXI_BREADY;
reg [31 : 0] S0_data2_AXI_ARADDR;
reg S0_data2_AXI_ARVALID;
wire S0_data2_AXI_ARREADY;
wire [31 : 0] S0_data2_AXI_RDATA;
wire [1 : 0] S0_data2_AXI_RRESP;
wire S0_data2_AXI_RVALID;
reg S0_data2_AXI_RREADY;
// data_fixed AXI port
reg S1_data_fixed_AXI_ACLK;
reg S1_data_fixed_AXI_ARESETN;
reg [31 : 0] S1_data_fixed_AXI_AWADDR;
reg S1_data_fixed_AXI_AWVALID;
wire S1_data_fixed_AXI_AWREADY;
reg [31 : 0] S1_data_fixed_AXI_WDATA;
reg [3 : 0] S1_data_fixed_AXI_WSTRB;
reg S1_data_fixed_AXI_WVALID;
wire S1_data_fixed_AXI_WREADY;
wire [1 : 0] S1_data_fixed_AXI_BRESP;
wire S1_data_fixed_AXI_BVALID;
reg S1_data_fixed_AXI_BREADY;
reg [31 : 0] S1_data_fixed_AXI_ARADDR;
reg S1_data_fixed_AXI_ARVALID;
wire S1_data_fixed_AXI_ARREADY;
wire [31 : 0] S1_data_fixed_AXI_RDATA;
wire [1 : 0] S1_data_fixed_AXI_RRESP;
wire S1_data_fixed_AXI_RVALID;
reg S1_data_fixed_AXI_RREADY;
// Interrupt lines
wire Interrupt_0;
wire Interrupt_1;
wire Interrupt_2;
wire Inetrrupt_fixed;

Octopos_MailBox_v1_0 #
	//Parameters
	(
		// Parameters of Axi contrl Buses Interfaces
		.C_S_ctrl_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_ctrl_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	)
	//Ports
	(
		// MailBox Main Signals
		.clk(clk ),
		.resetn(resetn ),
		// Ctrl0 AXI port
		.s_ctrl0_axi_aclk(s_ctrl0_axi_aclk),
		.s_ctrl0_axi_aresetn( s_ctrl0_axi_aresetn),
		.s_ctrl0_axi_awaddr(s_ctrl0_axi_awaddr),
		.s_ctrl0_axi_awprot(s_ctrl0_axi_awprot ),
		.s_ctrl0_axi_awvalid(s_ctrl0_axi_awvalid ),
		.s_ctrl0_axi_awready(s_ctrl0_axi_awready ),
		.s_ctrl0_axi_wdata(s_ctrl0_axi_wdata ),
		.s_ctrl0_axi_wstrb(s_ctrl0_axi_wstrb ),
		.s_ctrl0_axi_wvalid(s_ctrl0_axi_wvalid ),
		.s_ctrl0_axi_wready(s_ctrl0_axi_wready ),
		.s_ctrl0_axi_bresp(s_ctrl0_axi_bresp ),
		.s_ctrl0_axi_bvalid(s_ctrl0_axi_bvalid ),
		.s_ctrl0_axi_bready(s_ctrl0_axi_bready ),
		.s_ctrl0_axi_araddr(s_ctrl0_axi_araddr ),
		.s_ctrl0_axi_arprot(s_ctrl0_axi_arprot ),
		.s_ctrl0_axi_arvalid(s_ctrl0_axi_arvalid ),
		.s_ctrl0_axi_arready(s_ctrl0_axi_arready ),
		.s_ctrl0_axi_rdata(s_ctrl0_axi_rdata ),
		.s_ctrl0_axi_rresp(s_ctrl0_axi_rresp ),
		.s_ctrl0_axi_rvalid(s_ctrl0_axi_rvalid ),
		.s_ctrl0_axi_rready(s_ctrl0_axi_rready ),
		// Ctrl1 AXI port
		.s_ctrl1_axi_aclk(s_ctrl1_axi_aclk ),
		.s_ctrl1_axi_aresetn(s_ctrl1_axi_aresetn ),
		.s_ctrl1_axi_awaddr(s_ctrl1_axi_awaddr ),
		.s_ctrl1_axi_awprot(s_ctrl1_axi_awprot ),
		.s_ctrl1_axi_awvalid(s_ctrl1_axi_awvalid ),
		.s_ctrl1_axi_awready(s_ctrl1_axi_awready ),
		.s_ctrl1_axi_wdata(s_ctrl1_axi_wdata ),
		.s_ctrl1_axi_wstrb(s_ctrl1_axi_wstrb ),
		.s_ctrl1_axi_wvalid(s_ctrl1_axi_wvalid ),
		.s_ctrl1_axi_wready(s_ctrl1_axi_wready ),
		.s_ctrl1_axi_bresp(s_ctrl1_axi_bresp ),
		.s_ctrl1_axi_bvalid(s_ctrl1_axi_bvalid ),
		.s_ctrl1_axi_bready(s_ctrl1_axi_bready ),
		.s_ctrl1_axi_araddr(s_ctrl1_axi_araddr ),
		.s_ctrl1_axi_arprot(s_ctrl1_axi_arprot ),
		.s_ctrl1_axi_arvalid(s_ctrl1_axi_arvalid ),
		.s_ctrl1_axi_arready(s_ctrl1_axi_arready ),
		.s_ctrl1_axi_rdata(s_ctrl1_axi_rdata ),
		.s_ctrl1_axi_rresp(s_ctrl1_axi_rresp ),
		.s_ctrl1_axi_rvalid(s_ctrl1_axi_rvalid ),
		.s_ctrl1_axi_rready(s_ctrl1_axi_rready ),
		// Ctrl2 AXI port
		.s_ctrl2_axi_aclk(s_ctrl2_axi_aclk ),
		.s_ctrl2_axi_aresetn(s_ctrl2_axi_aresetn ),
		.s_ctrl2_axi_awaddr(s_ctrl2_axi_awaddr ),
		.s_ctrl2_axi_awprot(s_ctrl2_axi_awprot ),
		.s_ctrl2_axi_awvalid(s_ctrl2_axi_awvalid ),
		.s_ctrl2_axi_awready(s_ctrl2_axi_awready ),
		.s_ctrl2_axi_wdata(s_ctrl2_axi_wdata ),
		.s_ctrl2_axi_wstrb(s_ctrl2_axi_wstrb ),
		.s_ctrl2_axi_wvalid(s_ctrl2_axi_wvalid ),
		.s_ctrl2_axi_wready(s_ctrl2_axi_wready ),
		.s_ctrl2_axi_bresp(s_ctrl2_axi_bresp ),
		.s_ctrl2_axi_bvalid(s_ctrl2_axi_bvalid ),
		.s_ctrl2_axi_bready(s_ctrl2_axi_bready ),
		.s_ctrl2_axi_araddr(s_ctrl2_axi_araddr ),
		.s_ctrl2_axi_arprot(s_ctrl2_axi_arprot ),
		.s_ctrl2_axi_arvalid(s_ctrl2_axi_arvalid ),
		.s_ctrl2_axi_arready(s_ctrl2_axi_arready ),
		.s_ctrl2_axi_rdata(s_ctrl2_axi_rdata ),
		.s_ctrl2_axi_rresp(s_ctrl2_axi_rresp ),
		.s_ctrl2_axi_rvalid(s_ctrl2_axi_rvalid ),
		.s_ctrl2_axi_rready(s_ctrl2_axi_rready ),
		// Ctrl_fixed AXI port
		.s_ctrl_fixed_axi_aclk(s_ctrl_fixed_axi_aclk ),
		.s_ctrl_fixed_axi_aresetn(s_ctrl_fixed_axi_aresetn ),
		.s_ctrl_fixed_axi_awaddr(s_ctrl_fixed_axi_awaddr ),
		.s_ctrl_fixed_axi_awprot(s_ctrl_fixed_axi_awprot ),
		.s_ctrl_fixed_axi_awvalid(s_ctrl_fixed_axi_awvalid ),
		.s_ctrl_fixed_axi_awready(s_ctrl_fixed_axi_awready ),
		.s_ctrl_fixed_axi_wdata(s_ctrl_fixed_axi_wdata ),
		.s_ctrl_fixed_axi_wstrb(s_ctrl_fixed_axi_wstrb ),
		.s_ctrl_fixed_axi_wvalid(s_ctrl_fixed_axi_wvalid ),
		.s_ctrl_fixed_axi_wready(s_ctrl_fixed_axi_wready ),
		.s_ctrl_fixed_axi_bresp(s_ctrl_fixed_axi_bresp ),
		.s_ctrl_fixed_axi_bvalid(s_ctrl_fixed_axi_bvalid ),
		.s_ctrl_fixed_axi_bready(s_ctrl_fixed_axi_bready ),
		.s_ctrl_fixed_axi_araddr(s_ctrl_fixed_axi_araddr ),
		.s_ctrl_fixed_axi_arprot(s_ctrl_fixed_axi_arprot ),
		.s_ctrl_fixed_axi_arvalid(s_ctrl_fixed_axi_arvalid ),
		.s_ctrl_fixed_axi_arready(s_ctrl_fixed_axi_arready ),
		.s_ctrl_fixed_axi_rdata(s_ctrl_fixed_axi_rdata ),
		.s_ctrl_fixed_axi_rresp(s_ctrl_fixed_axi_rresp ),
		.s_ctrl_fixed_axi_rvalid(s_ctrl_fixed_axi_rvalid ),
		.s_ctrl_fixed_axi_rready(s_ctrl_fixed_axi_rready ),
		// data0 AXI port
		.S0_data0_AXI_ACLK(S0_data0_AXI_ACLK ),
		.S0_data0_AXI_ARESETN(S0_data0_AXI_ARESETN ),
		.S0_data0_AXI_AWADDR(S0_data0_AXI_AWADDR ),
		.S0_data0_AXI_AWVALID(S0_data0_AXI_AWVALID ),
		.S0_data0_AXI_AWREADY(S0_data0_AXI_AWREADY),
		.S0_data0_AXI_WDATA(S0_data0_AXI_WDATA ),
		.S0_data0_AXI_WSTRB(S0_data0_AXI_WSTRB ),
		.S0_data0_AXI_WVALID(S0_data0_AXI_WVALID ),
		.S0_data0_AXI_WREADY(S0_data0_AXI_WREADY ),
		.S0_data0_AXI_BRESP(S0_data0_AXI_BRESP ),
		.S0_data0_AXI_BVALID(S0_data0_AXI_BVALID ),
		.S0_data0_AXI_BREADY(S0_data0_AXI_BREADY ),
		.S0_data0_AXI_ARADDR(S0_data0_AXI_ARADDR ),
		.S0_data0_AXI_ARVALID(S0_data0_AXI_ARVALID ),
		.S0_data0_AXI_ARREADY(S0_data0_AXI_ARREADY ),
		.S0_data0_AXI_RDATA(S0_data0_AXI_RDATA ),
		.S0_data0_AXI_RRESP(S0_data0_AXI_RRESP ),
		.S0_data0_AXI_RVALID(S0_data0_AXI_RVALID ),
		.S0_data0_AXI_RREADY(S0_data0_AXI_RREADY ),
		// data1 AXI port
		.S0_data1_AXI_ACLK(S0_data1_AXI_ACLK ),
		.S0_data1_AXI_ARESETN(S0_data1_AXI_ARESETN ),
		.S0_data1_AXI_AWADDR(S0_data1_AXI_AWADDR ),
		.S0_data1_AXI_AWVALID(S0_data1_AXI_AWVALID ),
		.S0_data1_AXI_AWREADY(S0_data1_AXI_AWREADY ),
		.S0_data1_AXI_WDATA(S0_data1_AXI_WDATA ),
		.S0_data1_AXI_WSTRB(S0_data1_AXI_WSTRB ),
		.S0_data1_AXI_WVALID(S0_data1_AXI_WVALID ),
		.S0_data1_AXI_WREADY(S0_data1_AXI_WREADY ),
		.S0_data1_AXI_BRESP(S0_data1_AXI_BRESP ),
		.S0_data1_AXI_BVALID(S0_data1_AXI_BVALID ),
		.S0_data1_AXI_BREADY(S0_data1_AXI_BREADY ),
		.S0_data1_AXI_ARADDR(S0_data1_AXI_ARADDR ),
		.S0_data1_AXI_ARVALID(S0_data1_AXI_ARVALID ),
		.S0_data1_AXI_ARREADY(S0_data1_AXI_ARREADY ),
		.S0_data1_AXI_RDATA(S0_data1_AXI_RDATA ),
		.S0_data1_AXI_RRESP(S0_data1_AXI_RRESP ),
		.S0_data1_AXI_RVALID(S0_data1_AXI_RVALID ),
		.S0_data1_AXI_RREADY(S0_data1_AXI_RREADY ),
		// data2 AXI port
		.S0_data2_AXI_ACLK(S0_data2_AXI_ACLK ),
		.S0_data2_AXI_ARESETN(S0_data2_AXI_ARESETN ),
		.S0_data2_AXI_AWADDR(S0_data2_AXI_AWADDR ),
		.S0_data2_AXI_AWVALID(S0_data2_AXI_AWVALID ),
		.S0_data2_AXI_AWREADY(S0_data2_AXI_AWREADY ),
		.S0_data2_AXI_WDATA(S0_data2_AXI_WDATA ),
		.S0_data2_AXI_WSTRB(S0_data2_AXI_WSTRB ),
		.S0_data2_AXI_WVALID(S0_data2_AXI_WVALID ),
		.S0_data2_AXI_WREADY(S0_data2_AXI_WREADY),
		.S0_data2_AXI_BRESP(S0_data2_AXI_BRESP ),
		.S0_data2_AXI_BVALID(S0_data2_AXI_BVALID ),
		.S0_data2_AXI_BREADY(S0_data2_AXI_BREADY ),
		.S0_data2_AXI_ARADDR(S0_data2_AXI_ARADDR ),
		.S0_data2_AXI_ARVALID(S0_data2_AXI_ARVALID ),
		.S0_data2_AXI_ARREADY(S0_data2_AXI_ARREADY ),
		.S0_data2_AXI_RDATA(S0_data2_AXI_RDATA ),
		.S0_data2_AXI_RRESP(S0_data2_AXI_RRESP ),
		.S0_data2_AXI_RVALID(S0_data2_AXI_RVALID ),
		.S0_data2_AXI_RREADY(S0_data2_AXI_RREADY ),
		// data_fixed AXI port
		.S1_data_fixed_AXI_ACLK(S1_data_fixed_AXI_ACLK ),
		.S1_data_fixed_AXI_ARESETN(S1_data_fixed_AXI_ARESETN ),
		.S1_data_fixed_AXI_AWADDR(S1_data_fixed_AXI_AWADDR ),
		.S1_data_fixed_AXI_AWVALID(S1_data_fixed_AXI_AWVALID ),
		.S1_data_fixed_AXI_AWREADY(S1_data_fixed_AXI_AWREADY ),
		.S1_data_fixed_AXI_WDATA(S1_data_fixed_AXI_WDATA ),
		.S1_data_fixed_AXI_WSTRB(S1_data_fixed_AXI_WSTRB ),
		.S1_data_fixed_AXI_WVALID(S1_data_fixed_AXI_WVALID ),
		.S1_data_fixed_AXI_WREADY(S1_data_fixed_AXI_WREADY ),
		.S1_data_fixed_AXI_BRESP(S1_data_fixed_AXI_BRESP ),
		.S1_data_fixed_AXI_BVALID(S1_data_fixed_AXI_BVALID ),
		.S1_data_fixed_AXI_BREADY(S1_data_fixed_AXI_BREADY ),
		.S1_data_fixed_AXI_ARADDR(S1_data_fixed_AXI_ARADDR ),
		.S1_data_fixed_AXI_ARVALID(S1_data_fixed_AXI_ARVALID ),
		.S1_data_fixed_AXI_ARREADY(S1_data_fixed_AXI_ARREADY ),
		.S1_data_fixed_AXI_RDATA(S1_data_fixed_AXI_RDATA ),
		.S1_data_fixed_AXI_RRESP(S1_data_fixed_AXI_RRESP ),
		.S1_data_fixed_AXI_RVALID(S1_data_fixed_AXI_RVALID ),
		.S1_data_fixed_AXI_RREADY(S1_data_fixed_AXI_RREADY ),
		// Interrupt lines
		.Interrupt_0(Interrupt_0 ),
		.Interrupt_1(Interrupt_1 ),
		.Interrupt_2(Interrupt_2 ),
		.Inetrrupt_fixed(Inetrrupt_fixed )
	);//Ports def end
endmodule
