// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`timescale 1 ns / 1 ps
	module Octopos_MailBox_1Writer_7Reader_v1_0 #
	//Parameters
	(
		// Parameters of Axi contrl Buses Interfaces
		parameter integer C_S_ctrl_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_ctrl_AXI_ADDR_WIDTH	= 4
	)
	//Ports
	(
		// MailBox Main Signals
		input wire S_CLK,
		input wire S_ARESETN,
		// Ctrl0 AXI port
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
		// Ctrl1 AXI port
		input wire  s_ctrl1_axi_aclk,
		input wire  s_ctrl1_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl1_axi_awaddr,
		input wire [2 : 0] s_ctrl1_axi_awprot,
		input wire  s_ctrl1_axi_awvalid,
		output wire  s_ctrl1_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl1_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl1_axi_wstrb,
		input wire  s_ctrl1_axi_wvalid,
		output wire  s_ctrl1_axi_wready,
		output wire [1 : 0] s_ctrl1_axi_bresp,
		output wire  s_ctrl1_axi_bvalid,
		input wire  s_ctrl1_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl1_axi_araddr,
		input wire [2 : 0] s_ctrl1_axi_arprot,
		input wire  s_ctrl1_axi_arvalid,
		output wire  s_ctrl1_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl1_axi_rdata,
		output wire [1 : 0] s_ctrl1_axi_rresp,
		output wire  s_ctrl1_axi_rvalid,
		input wire  s_ctrl1_axi_rready,
		// Ctrl2 AXI port
		input wire  s_ctrl2_axi_aclk,
		input wire  s_ctrl2_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl2_axi_awaddr,
		input wire [2 : 0] s_ctrl2_axi_awprot,
		input wire  s_ctrl2_axi_awvalid,
		output wire  s_ctrl2_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl2_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl2_axi_wstrb,
		input wire  s_ctrl2_axi_wvalid,
		output wire  s_ctrl2_axi_wready,
		output wire [1 : 0] s_ctrl2_axi_bresp,
		output wire  s_ctrl2_axi_bvalid,
		input wire  s_ctrl2_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl2_axi_araddr,
		input wire [2 : 0] s_ctrl2_axi_arprot,
		input wire  s_ctrl2_axi_arvalid,
		output wire  s_ctrl2_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl2_axi_rdata,
		output wire [1 : 0] s_ctrl2_axi_rresp,
		output wire  s_ctrl2_axi_rvalid,
		input wire  s_ctrl2_axi_rready,
		// Ctrl3 AXI port
		input wire  s_ctrl3_axi_aclk,
		input wire  s_ctrl3_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl3_axi_awaddr,
		input wire [2 : 0] s_ctrl3_axi_awprot,
		input wire  s_ctrl3_axi_awvalid,
		output wire  s_ctrl3_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl3_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl3_axi_wstrb,
		input wire  s_ctrl3_axi_wvalid,
		output wire  s_ctrl3_axi_wready,
		output wire [1 : 0] s_ctrl3_axi_bresp,
		output wire  s_ctrl3_axi_bvalid,
		input wire  s_ctrl3_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl3_axi_araddr,
		input wire [2 : 0] s_ctrl3_axi_arprot,
		input wire  s_ctrl3_axi_arvalid,
		output wire  s_ctrl3_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl3_axi_rdata,
		output wire [1 : 0] s_ctrl3_axi_rresp,
		output wire  s_ctrl3_axi_rvalid,
		input wire  s_ctrl3_axi_rready,
		// Ctrl4 AXI port
		input wire  s_ctrl4_axi_aclk,
		input wire  s_ctrl4_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl4_axi_awaddr,
		input wire [2 : 0] s_ctrl4_axi_awprot,
		input wire  s_ctrl4_axi_awvalid,
		output wire  s_ctrl4_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl4_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl4_axi_wstrb,
		input wire  s_ctrl4_axi_wvalid,
		output wire  s_ctrl4_axi_wready,
		output wire [1 : 0] s_ctrl4_axi_bresp,
		output wire  s_ctrl4_axi_bvalid,
		input wire  s_ctrl4_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl4_axi_araddr,
		input wire [2 : 0] s_ctrl4_axi_arprot,
		input wire  s_ctrl4_axi_arvalid,
		output wire  s_ctrl4_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl4_axi_rdata,
		output wire [1 : 0] s_ctrl4_axi_rresp,
		output wire  s_ctrl4_axi_rvalid,
		input wire  s_ctrl4_axi_rready,
		// Ctrl5 AXI port
		input wire  s_ctrl5_axi_aclk,
		input wire  s_ctrl5_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl5_axi_awaddr,
		input wire [2 : 0] s_ctrl5_axi_awprot,
		input wire  s_ctrl5_axi_awvalid,
		output wire  s_ctrl5_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl5_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl5_axi_wstrb,
		input wire  s_ctrl5_axi_wvalid,
		output wire  s_ctrl5_axi_wready,
		output wire [1 : 0] s_ctrl5_axi_bresp,
		output wire  s_ctrl5_axi_bvalid,
		input wire  s_ctrl5_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl5_axi_araddr,
		input wire [2 : 0] s_ctrl5_axi_arprot,
		input wire  s_ctrl5_axi_arvalid,
		output wire  s_ctrl5_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl5_axi_rdata,
		output wire [1 : 0] s_ctrl5_axi_rresp,
		output wire  s_ctrl5_axi_rvalid,
		input wire  s_ctrl5_axi_rready,
		// Ctrl6 AXI port
		input wire  s_ctrl6_axi_aclk,
		input wire  s_ctrl6_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl6_axi_awaddr,
		input wire [2 : 0] s_ctrl6_axi_awprot,
		input wire  s_ctrl6_axi_awvalid,
		output wire  s_ctrl6_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl6_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl6_axi_wstrb,
		input wire  s_ctrl6_axi_wvalid,
		output wire  s_ctrl6_axi_wready,
		output wire [1 : 0] s_ctrl6_axi_bresp,
		output wire  s_ctrl6_axi_bvalid,
		input wire  s_ctrl6_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl6_axi_araddr,
		input wire [2 : 0] s_ctrl6_axi_arprot,
		input wire  s_ctrl6_axi_arvalid,
		output wire  s_ctrl6_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl6_axi_rdata,
		output wire [1 : 0] s_ctrl6_axi_rresp,
		output wire  s_ctrl6_axi_rvalid,
		input wire  s_ctrl6_axi_rready,
		// Ctrl_fixed AXI port
		input wire  s_ctrl_fixed_axi_aclk,
		input wire  s_ctrl_fixed_axi_aresetn,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl_fixed_axi_awaddr,
		input wire [2 : 0] s_ctrl_fixed_axi_awprot,
		input wire  s_ctrl_fixed_axi_awvalid,
		output wire  s_ctrl_fixed_axi_awready,
		input wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl_fixed_axi_wdata,
		input wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl_fixed_axi_wstrb,
		input wire  s_ctrl_fixed_axi_wvalid,
		output wire  s_ctrl_fixed_axi_wready,
		output wire [1 : 0] s_ctrl_fixed_axi_bresp,
		output wire  s_ctrl_fixed_axi_bvalid,
		input wire  s_ctrl_fixed_axi_bready,
		input wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl_fixed_axi_araddr,
		input wire [2 : 0] s_ctrl_fixed_axi_arprot,
		input wire  s_ctrl_fixed_axi_arvalid,
		output wire  s_ctrl_fixed_axi_arready,
		output wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl_fixed_axi_rdata,
		output wire [1 : 0] s_ctrl_fixed_axi_rresp,
		output wire  s_ctrl_fixed_axi_rvalid,
		input wire  s_ctrl_fixed_axi_rready,
		// data0 AXI port
		input wire S0_data0_AXI_ACLK,
		input wire S0_data0_AXI_ARESETN,
		input wire [31 : 0] S0_data0_AXI_AWADDR,
		input wire S0_data0_AXI_AWVALID,
		output wire S0_data0_AXI_AWREADY,
		input wire [31 : 0] S0_data0_AXI_WDATA,
		input wire [3 : 0] S0_data0_AXI_WSTRB,
		input wire S0_data0_AXI_WVALID,
		output wire S0_data0_AXI_WREADY,
		output wire [1 : 0] S0_data0_AXI_BRESP,
		output wire S0_data0_AXI_BVALID,
		input wire S0_data0_AXI_BREADY,
		input wire [31 : 0] S0_data0_AXI_ARADDR,
		input wire S0_data0_AXI_ARVALID,
		output wire S0_data0_AXI_ARREADY,
		output wire [31 : 0] S0_data0_AXI_RDATA,
		output wire [1 : 0] S0_data0_AXI_RRESP,
		output wire S0_data0_AXI_RVALID,
		input wire S0_data0_AXI_RREADY,
		// data1 AXI port
		input wire S0_data1_AXI_ACLK,
		input wire S0_data1_AXI_ARESETN,
		input wire [31 : 0] S0_data1_AXI_AWADDR,
		input wire S0_data1_AXI_AWVALID,
		output wire S0_data1_AXI_AWREADY,
		input wire [31 : 0] S0_data1_AXI_WDATA,
		input wire [3 : 0] S0_data1_AXI_WSTRB,
		input wire S0_data1_AXI_WVALID,
		output wire S0_data1_AXI_WREADY,
		output wire [1 : 0] S0_data1_AXI_BRESP,
		output wire S0_data1_AXI_BVALID,
		input wire S0_data1_AXI_BREADY,
		input wire [31 : 0] S0_data1_AXI_ARADDR,
		input wire S0_data1_AXI_ARVALID,
		output wire S0_data1_AXI_ARREADY,
		output wire [31 : 0] S0_data1_AXI_RDATA,
		output wire [1 : 0] S0_data1_AXI_RRESP,
		output wire S0_data1_AXI_RVALID,
		input wire S0_data1_AXI_RREADY,
		// data2 AXI port
		input wire S0_data2_AXI_ACLK,
		input wire S0_data2_AXI_ARESETN,
		input wire [31 : 0] S0_data2_AXI_AWADDR,
		input wire S0_data2_AXI_AWVALID,
		output wire S0_data2_AXI_AWREADY,
		input wire [31 : 0] S0_data2_AXI_WDATA,
		input wire [3 : 0] S0_data2_AXI_WSTRB,
		input wire S0_data2_AXI_WVALID,
		output wire S0_data2_AXI_WREADY,
		output wire [1 : 0] S0_data2_AXI_BRESP,
		output wire S0_data2_AXI_BVALID,
		input wire S0_data2_AXI_BREADY,
		input wire [31 : 0] S0_data2_AXI_ARADDR,
		input wire S0_data2_AXI_ARVALID,
		output wire S0_data2_AXI_ARREADY,
		output wire [31 : 0] S0_data2_AXI_RDATA,
		output wire [1 : 0] S0_data2_AXI_RRESP,
		output wire S0_data2_AXI_RVALID,
		input wire S0_data2_AXI_RREADY,
		// data3 AXI port
		input wire S0_data3_AXI_ACLK,
		input wire S0_data3_AXI_ARESETN,
		input wire [31 : 0] S0_data3_AXI_AWADDR,
		input wire S0_data3_AXI_AWVALID,
		output wire S0_data3_AXI_AWREADY,
		input wire [31 : 0] S0_data3_AXI_WDATA,
		input wire [3 : 0] S0_data3_AXI_WSTRB,
		input wire S0_data3_AXI_WVALID,
		output wire S0_data3_AXI_WREADY,
		output wire [1 : 0] S0_data3_AXI_BRESP,
		output wire S0_data3_AXI_BVALID,
		input wire S0_data3_AXI_BREADY,
		input wire [31 : 0] S0_data3_AXI_ARADDR,
		input wire S0_data3_AXI_ARVALID,
		output wire S0_data3_AXI_ARREADY,
		output wire [31 : 0] S0_data3_AXI_RDATA,
		output wire [1 : 0] S0_data3_AXI_RRESP,
		output wire S0_data3_AXI_RVALID,
		input wire S0_data3_AXI_RREADY,
		// data4 AXI port
		input wire S0_data4_AXI_ACLK,
		input wire S0_data4_AXI_ARESETN,
		input wire [31 : 0] S0_data4_AXI_AWADDR,
		input wire S0_data4_AXI_AWVALID,
		output wire S0_data4_AXI_AWREADY,
		input wire [31 : 0] S0_data4_AXI_WDATA,
		input wire [3 : 0] S0_data4_AXI_WSTRB,
		input wire S0_data4_AXI_WVALID,
		output wire S0_data4_AXI_WREADY,
		output wire [1 : 0] S0_data4_AXI_BRESP,
		output wire S0_data4_AXI_BVALID,
		input wire S0_data4_AXI_BREADY,
		input wire [31 : 0] S0_data4_AXI_ARADDR,
		input wire S0_data4_AXI_ARVALID,
		output wire S0_data4_AXI_ARREADY,
		output wire [31 : 0] S0_data4_AXI_RDATA,
		output wire [1 : 0] S0_data4_AXI_RRESP,
		output wire S0_data4_AXI_RVALID,
		input wire S0_data4_AXI_RREADY,
		// data5 AXI port
		input wire S0_data5_AXI_ACLK,
		input wire S0_data5_AXI_ARESETN,
		input wire [31 : 0] S0_data5_AXI_AWADDR,
		input wire S0_data5_AXI_AWVALID,
		output wire S0_data5_AXI_AWREADY,
		input wire [31 : 0] S0_data5_AXI_WDATA,
		input wire [3 : 0] S0_data5_AXI_WSTRB,
		input wire S0_data5_AXI_WVALID,
		output wire S0_data5_AXI_WREADY,
		output wire [1 : 0] S0_data5_AXI_BRESP,
		output wire S0_data5_AXI_BVALID,
		input wire S0_data5_AXI_BREADY,
		input wire [31 : 0] S0_data5_AXI_ARADDR,
		input wire S0_data5_AXI_ARVALID,
		output wire S0_data5_AXI_ARREADY,
		output wire [31 : 0] S0_data5_AXI_RDATA,
		output wire [1 : 0] S0_data5_AXI_RRESP,
		output wire S0_data5_AXI_RVALID,
		input wire S0_data5_AXI_RREADY,
		// data6 AXI port
		input wire S0_data6_AXI_ACLK,
		input wire S0_data6_AXI_ARESETN,
		input wire [31 : 0] S0_data6_AXI_AWADDR,
		input wire S0_data6_AXI_AWVALID,
		output wire S0_data6_AXI_AWREADY,
		input wire [31 : 0] S0_data6_AXI_WDATA,
		input wire [3 : 0] S0_data6_AXI_WSTRB,
		input wire S0_data6_AXI_WVALID,
		output wire S0_data6_AXI_WREADY,
		output wire [1 : 0] S0_data6_AXI_BRESP,
		output wire S0_data6_AXI_BVALID,
		input wire S0_data6_AXI_BREADY,
		input wire [31 : 0] S0_data6_AXI_ARADDR,
		input wire S0_data6_AXI_ARVALID,
		output wire S0_data6_AXI_ARREADY,
		output wire [31 : 0] S0_data6_AXI_RDATA,
		output wire [1 : 0] S0_data6_AXI_RRESP,
		output wire S0_data6_AXI_RVALID,
		input wire S0_data6_AXI_RREADY,
		// data_fixed AXI port
		input wire S1_data_fixed_AXI_ACLK,
		input wire S1_data_fixed_AXI_ARESETN,
		input wire [31 : 0] S1_data_fixed_AXI_AWADDR,
		input wire S1_data_fixed_AXI_AWVALID,
		output wire S1_data_fixed_AXI_AWREADY,
		input wire [31 : 0] S1_data_fixed_AXI_WDATA,
		input wire [3 : 0] S1_data_fixed_AXI_WSTRB,
		input wire S1_data_fixed_AXI_WVALID,
		output wire S1_data_fixed_AXI_WREADY,
		output wire [1 : 0] S1_data_fixed_AXI_BRESP,
		output wire S1_data_fixed_AXI_BVALID,
		input wire S1_data_fixed_AXI_BREADY,
		input wire [31 : 0] S1_data_fixed_AXI_ARADDR,
		input wire S1_data_fixed_AXI_ARVALID,
		output wire S1_data_fixed_AXI_ARREADY,
		output wire [31 : 0] S1_data_fixed_AXI_RDATA,
		output wire [1 : 0] S1_data_fixed_AXI_RRESP,
		output wire S1_data_fixed_AXI_RVALID,
		input wire S1_data_fixed_AXI_RREADY,
		// Interrupt lines
		output wire Interrupt_0,
		output wire Interrupt_ctrl0,
		output wire Interrupt_1,
		output wire Interrupt_ctrl1,
		output wire Interrupt_2,
		output wire Interrupt_ctrl2,
		output wire Interrupt_3,
		output wire Interrupt_ctrl3,
		output wire Interrupt_4,
		output wire Interrupt_ctrl4,
		output wire Interrupt_5,
		output wire Interrupt_ctrl5,
		output wire Interrupt_6,
		output wire Interrupt_ctrl6,
		output wire Interrupt_fixed,
		output wire Interrupt_ctrl_fixed
	);//Ports def end
	//Constant defenitions
	`define ID0 8'd0
	`define ID1 8'd1
	`define ID2 8'd2
	`define ID3 8'd3
	`define ID4 8'd4
	`define ID5 8'd5
	`define ID6 8'd6
	`define YIELD_ID 8'd255
	`define ID_FIXED 9'b111111111
	`define INFINITY 12'hFFF
	`define STACK_SIZE 16
	`define TIMER_MAX 10000000
	integer i;
	//System registers (FlipFlops) defenitions
	reg [31:0] state_reg;
	reg [7:0] owner_id;
	reg [11:0] time_out;
	reg [11:0] limit;
	reg write_req_latched;
	reg stack_req_latched;
	reg timer_req_latched;
	reg limit_req_latched;
	reg [7:0] stack_pointer;
	reg [31:0] stack_memory [`STACK_SIZE:0];
	reg [31:0] timer_counter;
	reg Octopos_resetn;
	//System wires(Some defined as reg to be used in always blocks)defenitions
	reg [31:0] write_state_value;
	reg [7:0]  write_state_owner_id;
	reg [11:0] write_state_time_out;
	reg [11:0] write_state_limit;
	reg [11:0] next_time_out;
	reg [11:0] next_limit;
	reg write_req;
	reg write_req_valid;
	reg write_req_reset;
	reg stack_req;
	reg stack_req_reset;
	reg timer_req;
	reg timer_req_reset;
	reg limit_req;
	reg limit_req_reset;
	wire [31:0] s_ctrl0_write_state_value;
	wire  s_ctrl0_write_req;
	wire [31:0] s_ctrl1_write_state_value;
	wire  s_ctrl1_write_req;
	wire [31:0] s_ctrl2_write_state_value;
	wire  s_ctrl2_write_req;
	wire [31:0] s_ctrl3_write_state_value;
	wire  s_ctrl3_write_req;
	wire [31:0] s_ctrl4_write_state_value;
	wire  s_ctrl4_write_req;
	wire [31:0] s_ctrl5_write_state_value;
	wire  s_ctrl5_write_req;
	wire [31:0] s_ctrl6_write_state_value;
	wire  s_ctrl6_write_req;
	wire [31:0] s_ctrl_fixed_write_state_value;
	wire  s_ctrl_fixed_write_req;
	//Internal mailbox programable side signals
	reg S0_data_AXI_ACLK;
	reg S0_data_AXI_ARESETN;
	reg [31 : 0] S0_data_AXI_AWADDR;
	reg S0_data_AXI_AWVALID;
	wire S0_data_AXI_AWREADY;
	reg [31 : 0] S0_data_AXI_WDATA;
	reg [3 : 0] S0_data_AXI_WSTRB;
	reg S0_data_AXI_WVALID;
	wire S0_data_AXI_WREADY;
	wire [1 : 0] S0_data_AXI_BRESP;
	wire S0_data_AXI_BVALID;
	reg S0_data_AXI_BREADY;
	reg [31 : 0] S0_data_AXI_ARADDR;
	reg S0_data_AXI_ARVALID;
	wire S0_data_AXI_ARREADY;
	wire [31 : 0] S0_data_AXI_RDATA;
	wire [1 : 0] S0_data_AXI_RRESP;
	wire S0_data_AXI_RVALID;
	reg S0_data_AXI_RREADY;
	wire Interrupt_S0;
	//Temporary reg signals for data output wires
	//to use them in always blocks
	// Temp regs for port 0
	reg S0_data0_AXI_AWREADY_reg;
	reg S0_data0_AXI_WREADY_reg;
	reg [1 : 0] S0_data0_AXI_BRESP_reg;
	reg S0_data0_AXI_BVALID_reg;
	reg S0_data0_AXI_ARREADY_reg;
	reg [31 : 0] S0_data0_AXI_RDATA_reg;
	reg [1 : 0] S0_data0_AXI_RRESP_reg;
	reg S0_data0_AXI_RVALID_reg;
	reg Interrupt0_reg;
	// Temp regs for port 1
	reg S0_data1_AXI_AWREADY_reg;
	reg S0_data1_AXI_WREADY_reg;
	reg [1 : 0] S0_data1_AXI_BRESP_reg;
	reg S0_data1_AXI_BVALID_reg;
	reg S0_data1_AXI_ARREADY_reg;
	reg [31 : 0] S0_data1_AXI_RDATA_reg;
	reg [1 : 0] S0_data1_AXI_RRESP_reg;
	reg S0_data1_AXI_RVALID_reg;
	reg Interrupt1_reg;
	// Temp regs for port 2
	reg S0_data2_AXI_AWREADY_reg;
	reg S0_data2_AXI_WREADY_reg;
	reg [1 : 0] S0_data2_AXI_BRESP_reg;
	reg S0_data2_AXI_BVALID_reg;
	reg S0_data2_AXI_ARREADY_reg;
	reg [31 : 0] S0_data2_AXI_RDATA_reg;
	reg [1 : 0] S0_data2_AXI_RRESP_reg;
	reg S0_data2_AXI_RVALID_reg;
	reg Interrupt2_reg;
	// Temp regs for port 3
	reg S0_data3_AXI_AWREADY_reg;
	reg S0_data3_AXI_WREADY_reg;
	reg [1 : 0] S0_data3_AXI_BRESP_reg;
	reg S0_data3_AXI_BVALID_reg;
	reg S0_data3_AXI_ARREADY_reg;
	reg [31 : 0] S0_data3_AXI_RDATA_reg;
	reg [1 : 0] S0_data3_AXI_RRESP_reg;
	reg S0_data3_AXI_RVALID_reg;
	reg Interrupt3_reg;
	// Temp regs for port 4
	reg S0_data4_AXI_AWREADY_reg;
	reg S0_data4_AXI_WREADY_reg;
	reg [1 : 0] S0_data4_AXI_BRESP_reg;
	reg S0_data4_AXI_BVALID_reg;
	reg S0_data4_AXI_ARREADY_reg;
	reg [31 : 0] S0_data4_AXI_RDATA_reg;
	reg [1 : 0] S0_data4_AXI_RRESP_reg;
	reg S0_data4_AXI_RVALID_reg;
	reg Interrupt4_reg;
	// Temp regs for port 5
	reg S0_data5_AXI_AWREADY_reg;
	reg S0_data5_AXI_WREADY_reg;
	reg [1 : 0] S0_data5_AXI_BRESP_reg;
	reg S0_data5_AXI_BVALID_reg;
	reg S0_data5_AXI_ARREADY_reg;
	reg [31 : 0] S0_data5_AXI_RDATA_reg;
	reg [1 : 0] S0_data5_AXI_RRESP_reg;
	reg S0_data5_AXI_RVALID_reg;
	reg Interrupt5_reg;
	// Temp regs for port 6
	reg S0_data6_AXI_AWREADY_reg;
	reg S0_data6_AXI_WREADY_reg;
	reg [1 : 0] S0_data6_AXI_BRESP_reg;
	reg S0_data6_AXI_BVALID_reg;
	reg S0_data6_AXI_ARREADY_reg;
	reg [31 : 0] S0_data6_AXI_RDATA_reg;
	reg [1 : 0] S0_data6_AXI_RRESP_reg;
	reg S0_data6_AXI_RVALID_reg;
	reg Interrupt6_reg;
	//Connect output wires to temporary regs 
	assign clk = S_CLK;
	assign resetn = S_ARESETN;;
	// Assignment for port 0
	assign S0_data0_AXI_WREADY = S0_data0_AXI_WREADY_reg;
	assign S0_data0_AXI_BRESP = S0_data0_AXI_BRESP_reg;
	assign S0_data0_AXI_BVALID = S0_data0_AXI_BVALID_reg;
	assign S0_data0_AXI_AWREADY = S0_data0_AXI_AWREADY_reg;
	assign S0_data0_AXI_ARREADY = S0_data0_AXI_ARREADY_reg;
	assign S0_data0_AXI_RDATA = S0_data0_AXI_RDATA_reg;
	assign S0_data0_AXI_RRESP = S0_data0_AXI_RRESP_reg;
	assign S0_data0_AXI_RVALID = S0_data0_AXI_RVALID_reg;
	assign Interrupt_0 = Interrupt0_reg;
	// Assignment for port 1
	assign S0_data1_AXI_WREADY = S0_data1_AXI_WREADY_reg;
	assign S0_data1_AXI_BRESP = S0_data1_AXI_BRESP_reg;
	assign S0_data1_AXI_BVALID = S0_data1_AXI_BVALID_reg;
	assign S0_data1_AXI_AWREADY = S0_data1_AXI_AWREADY_reg;
	assign S0_data1_AXI_ARREADY = S0_data1_AXI_ARREADY_reg;
	assign S0_data1_AXI_RDATA = S0_data1_AXI_RDATA_reg;
	assign S0_data1_AXI_RRESP = S0_data1_AXI_RRESP_reg;
	assign S0_data1_AXI_RVALID = S0_data1_AXI_RVALID_reg;
	assign Interrupt_1 = Interrupt1_reg;
	// Assignment for port 2
	assign S0_data2_AXI_WREADY = S0_data2_AXI_WREADY_reg;
	assign S0_data2_AXI_BRESP = S0_data2_AXI_BRESP_reg;
	assign S0_data2_AXI_BVALID = S0_data2_AXI_BVALID_reg;
	assign S0_data2_AXI_AWREADY = S0_data2_AXI_AWREADY_reg;
	assign S0_data2_AXI_ARREADY = S0_data2_AXI_ARREADY_reg;
	assign S0_data2_AXI_RDATA = S0_data2_AXI_RDATA_reg;
	assign S0_data2_AXI_RRESP = S0_data2_AXI_RRESP_reg;
	assign S0_data2_AXI_RVALID = S0_data2_AXI_RVALID_reg;
	assign Interrupt_2 = Interrupt2_reg;
	// Assignment for port 3
	assign S0_data3_AXI_WREADY = S0_data3_AXI_WREADY_reg;
	assign S0_data3_AXI_BRESP = S0_data3_AXI_BRESP_reg;
	assign S0_data3_AXI_BVALID = S0_data3_AXI_BVALID_reg;
	assign S0_data3_AXI_AWREADY = S0_data3_AXI_AWREADY_reg;
	assign S0_data3_AXI_ARREADY = S0_data3_AXI_ARREADY_reg;
	assign S0_data3_AXI_RDATA = S0_data3_AXI_RDATA_reg;
	assign S0_data3_AXI_RRESP = S0_data3_AXI_RRESP_reg;
	assign S0_data3_AXI_RVALID = S0_data3_AXI_RVALID_reg;
	assign Interrupt_3 = Interrupt3_reg;
	// Assignment for port 4
	assign S0_data4_AXI_WREADY = S0_data4_AXI_WREADY_reg;
	assign S0_data4_AXI_BRESP = S0_data4_AXI_BRESP_reg;
	assign S0_data4_AXI_BVALID = S0_data4_AXI_BVALID_reg;
	assign S0_data4_AXI_AWREADY = S0_data4_AXI_AWREADY_reg;
	assign S0_data4_AXI_ARREADY = S0_data4_AXI_ARREADY_reg;
	assign S0_data4_AXI_RDATA = S0_data4_AXI_RDATA_reg;
	assign S0_data4_AXI_RRESP = S0_data4_AXI_RRESP_reg;
	assign S0_data4_AXI_RVALID = S0_data4_AXI_RVALID_reg;
	assign Interrupt_4 = Interrupt4_reg;
	// Assignment for port 5
	assign S0_data5_AXI_WREADY = S0_data5_AXI_WREADY_reg;
	assign S0_data5_AXI_BRESP = S0_data5_AXI_BRESP_reg;
	assign S0_data5_AXI_BVALID = S0_data5_AXI_BVALID_reg;
	assign S0_data5_AXI_AWREADY = S0_data5_AXI_AWREADY_reg;
	assign S0_data5_AXI_ARREADY = S0_data5_AXI_ARREADY_reg;
	assign S0_data5_AXI_RDATA = S0_data5_AXI_RDATA_reg;
	assign S0_data5_AXI_RRESP = S0_data5_AXI_RRESP_reg;
	assign S0_data5_AXI_RVALID = S0_data5_AXI_RVALID_reg;
	assign Interrupt_5 = Interrupt5_reg;
	// Assignment for port 6
	assign S0_data6_AXI_WREADY = S0_data6_AXI_WREADY_reg;
	assign S0_data6_AXI_BRESP = S0_data6_AXI_BRESP_reg;
	assign S0_data6_AXI_BVALID = S0_data6_AXI_BVALID_reg;
	assign S0_data6_AXI_AWREADY = S0_data6_AXI_AWREADY_reg;
	assign S0_data6_AXI_ARREADY = S0_data6_AXI_ARREADY_reg;
	assign S0_data6_AXI_RDATA = S0_data6_AXI_RDATA_reg;
	assign S0_data6_AXI_RRESP = S0_data6_AXI_RRESP_reg;
	assign S0_data6_AXI_RVALID = S0_data6_AXI_RVALID_reg;
	assign Interrupt_6 = Interrupt6_reg;

	//Multiplexer for Mailbox programable port 
	always @(*)
	begin
		case(owner_id)
			`ID0: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data0_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data0_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data0_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data0_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data0_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data0_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data0_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data0_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data0_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data0_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data0_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data0_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data0_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data0_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data0_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data0_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data0_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data0_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data0_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt0_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID1: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data1_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data1_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data1_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data1_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data1_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data1_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data1_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data1_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data1_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data1_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data1_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data1_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data1_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data1_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data1_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data1_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data1_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data1_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data1_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt1_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID2: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data2_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data2_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data2_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data2_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data2_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data2_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data2_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data2_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data2_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data2_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data2_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data2_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data2_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data2_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data2_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data2_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data2_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data2_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data2_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt2_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID3: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data3_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data3_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data3_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data3_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data3_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data3_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data3_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data3_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data3_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data3_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data3_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data3_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data3_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data3_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data3_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data3_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data3_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data3_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data3_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt3_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID4: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data4_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data4_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data4_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data4_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data4_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data4_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data4_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data4_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data4_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data4_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data4_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data4_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data4_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data4_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data4_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data4_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data4_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data4_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data4_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt4_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID5: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data5_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data5_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data5_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data5_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data5_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data5_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data5_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data5_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data5_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data5_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data5_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data5_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data5_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data5_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data5_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data5_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data5_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data5_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data5_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt5_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
			`ID6: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = S0_data6_AXI_ACLK;
				S0_data_AXI_ARESETN = S0_data6_AXI_ARESETN;
				S0_data_AXI_AWADDR = S0_data6_AXI_AWADDR;
				S0_data_AXI_AWVALID = S0_data6_AXI_AWVALID;
				S0_data_AXI_WDATA = S0_data6_AXI_WDATA;
				S0_data_AXI_WSTRB = S0_data6_AXI_WSTRB;
				S0_data_AXI_WVALID = S0_data6_AXI_WVALID;
				S0_data_AXI_BREADY = S0_data6_AXI_BREADY;
				S0_data_AXI_ARADDR = S0_data6_AXI_ARADDR;
				S0_data_AXI_ARVALID = S0_data6_AXI_ARVALID;
				S0_data_AXI_RREADY = S0_data6_AXI_RREADY;
				//Mailbox output signals
				////Outputs for current ID
				S0_data6_AXI_RVALID_reg = S0_data_AXI_RVALID;
				S0_data6_AXI_RRESP_reg = S0_data_AXI_RRESP;
				S0_data6_AXI_RDATA_reg = S0_data_AXI_RDATA;
				S0_data6_AXI_ARREADY_reg = S0_data_AXI_ARREADY;
				S0_data6_AXI_BVALID_reg = S0_data_AXI_BVALID;
				S0_data6_AXI_BRESP_reg = S0_data_AXI_BRESP;
				S0_data6_AXI_WREADY_reg = S0_data_AXI_WREADY;
				S0_data6_AXI_AWREADY_reg = S0_data_AXI_AWREADY;
				Interrupt6_reg = Interrupt_S0;
				////Outputs for other IDs
				//////Outputs for  ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				//////Outputs for  ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				//////Outputs for  ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				//////Outputs for  ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				//////Outputs for  ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				//////Outputs for  ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
			end
			default: begin
				// Mailbox input signals
				S0_data_AXI_ACLK = 0;
				S0_data_AXI_ARESETN = 0;
				S0_data_AXI_AWADDR = 0;
				S0_data_AXI_AWVALID = 0;
				S0_data_AXI_WDATA = 0;
				S0_data_AXI_WSTRB = 0;
				S0_data_AXI_WVALID = 0;
				S0_data_AXI_BREADY = 0;
				S0_data_AXI_ARADDR = 0;
				S0_data_AXI_ARVALID = 0;
				S0_data_AXI_RREADY = 0; 
				//Mailbox output signals
				////Outputs for All IDs
				////Outputs for ID0
				S0_data0_AXI_RVALID_reg = 0;
				S0_data0_AXI_RRESP_reg = 0;
				S0_data0_AXI_RDATA_reg = 0;
				S0_data0_AXI_ARREADY_reg = 0;
				S0_data0_AXI_BVALID_reg = 0;
				S0_data0_AXI_BRESP_reg = 0;
				S0_data0_AXI_WREADY_reg = 0;
				S0_data0_AXI_AWREADY_reg = 0;
				Interrupt0_reg = 0;
				////Outputs for ID1
				S0_data1_AXI_RVALID_reg = 0;
				S0_data1_AXI_RRESP_reg = 0;
				S0_data1_AXI_RDATA_reg = 0;
				S0_data1_AXI_ARREADY_reg = 0;
				S0_data1_AXI_BVALID_reg = 0;
				S0_data1_AXI_BRESP_reg = 0;
				S0_data1_AXI_WREADY_reg = 0;
				S0_data1_AXI_AWREADY_reg = 0;
				Interrupt1_reg = 0;
				////Outputs for ID2
				S0_data2_AXI_RVALID_reg = 0;
				S0_data2_AXI_RRESP_reg = 0;
				S0_data2_AXI_RDATA_reg = 0;
				S0_data2_AXI_ARREADY_reg = 0;
				S0_data2_AXI_BVALID_reg = 0;
				S0_data2_AXI_BRESP_reg = 0;
				S0_data2_AXI_WREADY_reg = 0;
				S0_data2_AXI_AWREADY_reg = 0;
				Interrupt2_reg = 0;
				////Outputs for ID3
				S0_data3_AXI_RVALID_reg = 0;
				S0_data3_AXI_RRESP_reg = 0;
				S0_data3_AXI_RDATA_reg = 0;
				S0_data3_AXI_ARREADY_reg = 0;
				S0_data3_AXI_BVALID_reg = 0;
				S0_data3_AXI_BRESP_reg = 0;
				S0_data3_AXI_WREADY_reg = 0;
				S0_data3_AXI_AWREADY_reg = 0;
				Interrupt3_reg = 0;
				////Outputs for ID4
				S0_data4_AXI_RVALID_reg = 0;
				S0_data4_AXI_RRESP_reg = 0;
				S0_data4_AXI_RDATA_reg = 0;
				S0_data4_AXI_ARREADY_reg = 0;
				S0_data4_AXI_BVALID_reg = 0;
				S0_data4_AXI_BRESP_reg = 0;
				S0_data4_AXI_WREADY_reg = 0;
				S0_data4_AXI_AWREADY_reg = 0;
				Interrupt4_reg = 0;
				////Outputs for ID5
				S0_data5_AXI_RVALID_reg = 0;
				S0_data5_AXI_RRESP_reg = 0;
				S0_data5_AXI_RDATA_reg = 0;
				S0_data5_AXI_ARREADY_reg = 0;
				S0_data5_AXI_BVALID_reg = 0;
				S0_data5_AXI_BRESP_reg = 0;
				S0_data5_AXI_WREADY_reg = 0;
				S0_data5_AXI_AWREADY_reg = 0;
				Interrupt5_reg = 0;
				////Outputs for ID6
				S0_data6_AXI_RVALID_reg = 0;
				S0_data6_AXI_RRESP_reg = 0;
				S0_data6_AXI_RDATA_reg = 0;
				S0_data6_AXI_ARREADY_reg = 0;
				S0_data6_AXI_BVALID_reg = 0;
				S0_data6_AXI_BRESP_reg = 0;
				S0_data6_AXI_WREADY_reg = 0;
				S0_data6_AXI_AWREADY_reg = 0;
				Interrupt6_reg = 0;
			end
		endcase
	end//for always @(*)

	//Internal MailBox Instantiation
	mailbox_0 mb0 (
		.S0_AXI_ACLK(S0_data_AXI_ACLK),        // input wire S0_AXI_ACLK
		.S0_AXI_ARESETN(S0_data_AXI_ARESETN & Octopos_resetn),  // input wire S0_AXI_ARESETN
		.S0_AXI_AWADDR(S0_data_AXI_AWADDR),    // input wire [31 : 0] S0_AXI_AWADDR
		.S0_AXI_AWVALID(S0_data_AXI_AWVALID),  // input wire S0_AXI_AWVALID
		.S0_AXI_AWREADY(S0_data_AXI_AWREADY),  // output wire S0_AXI_AWREADY
		.S0_AXI_WDATA(S0_data_AXI_WDATA),      // input wire [31 : 0] S0_AXI_WDATA
		.S0_AXI_WSTRB(S0_data_AXI_WSTRB),      // input wire [3 : 0] S0_AXI_WSTRB
		.S0_AXI_WVALID(S0_data_AXI_WVALID),    // input wire S0_AXI_WVALID
		.S0_AXI_WREADY(S0_data_AXI_WREADY),    // output wire S0_AXI_WREADY
		.S0_AXI_BRESP(S0_data_AXI_BRESP),      // output wire [1 : 0] S0_AXI_BRESP
		.S0_AXI_BVALID(S0_data_AXI_BVALID),    // output wire S0_AXI_BVALID
		.S0_AXI_BREADY(S0_data_AXI_BREADY),    // input wire S0_AXI_BREADY
		.S0_AXI_ARADDR(S0_data_AXI_ARADDR),    // input wire [31 : 0] S0_AXI_ARADDR
		.S0_AXI_ARVALID(S0_data_AXI_ARVALID),  // input wire S0_AXI_ARVALID
		.S0_AXI_ARREADY(S0_data_AXI_ARREADY),  // output wire S0_AXI_ARREADY
		.S0_AXI_RDATA(S0_data_AXI_RDATA),      // output wire [31 : 0] S0_AXI_RDATA
		.S0_AXI_RRESP(S0_data_AXI_RRESP),      // output wire [1 : 0] S0_AXI_RRESP
		.S0_AXI_RVALID(S0_data_AXI_RVALID),    // output wire S0_AXI_RVALID
		.S0_AXI_RREADY(S0_data_AXI_RREADY),    // input wire S0_AXI_RREADY
		.S1_AXI_ACLK(S1_data_fixed_AXI_ACLK),        // input wire S1_AXI_ACLK
		.S1_AXI_ARESETN(S1_data_fixed_AXI_ARESETN & Octopos_resetn),  // input wire S1_AXI_ARESETN
		.S1_AXI_AWADDR(S1_data_fixed_AXI_AWADDR),    // input wire [31 : 0] S1_AXI_AWADDR
		.S1_AXI_AWVALID(S1_data_fixed_AXI_AWVALID),  // input wire S1_AXI_AWVALID
		.S1_AXI_AWREADY(S1_data_fixed_AXI_AWREADY),  // output wire S1_AXI_AWREADY
		.S1_AXI_WDATA(S1_data_fixed_AXI_WDATA),      // input wire [31 : 0] S1_AXI_WDATA
		.S1_AXI_WSTRB(S1_data_fixed_AXI_WSTRB),      // input wire [3 : 0] S1_AXI_WSTRB
		.S1_AXI_WVALID(S1_data_fixed_AXI_WVALID),    // input wire S1_AXI_WVALID
		.S1_AXI_WREADY(S1_data_fixed_AXI_WREADY),    // output wire S1_AXI_WREADY
		.S1_AXI_BRESP(S1_data_fixed_AXI_BRESP),      // output wire [1 : 0] S1_AXI_BRESP
		.S1_AXI_BVALID(S1_data_fixed_AXI_BVALID),    // output wire S1_AXI_BVALID
		.S1_AXI_BREADY(S1_data_fixed_AXI_BREADY),    // input wire S1_AXI_BREADY
		.S1_AXI_ARADDR(S1_data_fixed_AXI_ARADDR),    // input wire [31 : 0] S1_AXI_ARADDR
		.S1_AXI_ARVALID(S1_data_fixed_AXI_ARVALID),  // input wire S1_AXI_ARVALID
		.S1_AXI_ARREADY(S1_data_fixed_AXI_ARREADY),  // output wire S1_AXI_ARREADY
		.S1_AXI_RDATA(S1_data_fixed_AXI_RDATA),      // output wire [31 : 0] S1_AXI_RDATA
		.S1_AXI_RRESP(S1_data_fixed_AXI_RRESP),      // output wire [1 : 0] S1_AXI_RRESP
		.S1_AXI_RVALID(S1_data_fixed_AXI_RVALID),    // output wire S1_AXI_RVALID
		.S1_AXI_RREADY(S1_data_fixed_AXI_RREADY),    // input wire S1_AXI_RREADY
		.Interrupt_0(Interrupt_S0),        // output wire Interrupt_0
		.Interrupt_1(Interrupt_fixed)         // output wire Interrupt_1
	);
	//Control AXI buses instantiation
	//Control AXI bus0 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl0_instance (
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
		.S_WRITE_REQ(s_ctrl0_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl0_write_state_value),
		.S_ID({1'b0,`ID0}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl0)
	);
	//Control AXI bus1 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl1_instance (
		.S_AXI_ACLK(s_ctrl1_axi_aclk),
		.S_AXI_ARESETN(s_ctrl1_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl1_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl1_axi_awprot),
		.S_AXI_AWVALID(s_ctrl1_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl1_axi_awready),
		.S_AXI_WDATA(s_ctrl1_axi_wdata),
		.S_AXI_WSTRB(s_ctrl1_axi_wstrb),
		.S_AXI_WVALID(s_ctrl1_axi_wvalid),
		.S_AXI_WREADY(s_ctrl1_axi_wready),
		.S_AXI_BRESP(s_ctrl1_axi_bresp),
		.S_AXI_BVALID(s_ctrl1_axi_bvalid),
		.S_AXI_BREADY(s_ctrl1_axi_bready),
		.S_AXI_ARADDR(s_ctrl1_axi_araddr),
		.S_AXI_ARPROT(s_ctrl1_axi_arprot),
		.S_AXI_ARVALID(s_ctrl1_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl1_axi_arready),
		.S_AXI_RDATA(s_ctrl1_axi_rdata),
		.S_AXI_RRESP(s_ctrl1_axi_rresp),
		.S_AXI_RVALID(s_ctrl1_axi_rvalid),
		.S_AXI_RREADY(s_ctrl1_axi_rready),
		.S_WRITE_REQ(s_ctrl1_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl1_write_state_value),
		.S_ID({1'b0,`ID1}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl1)
	);
	//Control AXI bus2 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl2_instance (
		.S_AXI_ACLK(s_ctrl2_axi_aclk),
		.S_AXI_ARESETN(s_ctrl2_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl2_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl2_axi_awprot),
		.S_AXI_AWVALID(s_ctrl2_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl2_axi_awready),
		.S_AXI_WDATA(s_ctrl2_axi_wdata),
		.S_AXI_WSTRB(s_ctrl2_axi_wstrb),
		.S_AXI_WVALID(s_ctrl2_axi_wvalid),
		.S_AXI_WREADY(s_ctrl2_axi_wready),
		.S_AXI_BRESP(s_ctrl2_axi_bresp),
		.S_AXI_BVALID(s_ctrl2_axi_bvalid),
		.S_AXI_BREADY(s_ctrl2_axi_bready),
		.S_AXI_ARADDR(s_ctrl2_axi_araddr),
		.S_AXI_ARPROT(s_ctrl2_axi_arprot),
		.S_AXI_ARVALID(s_ctrl2_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl2_axi_arready),
		.S_AXI_RDATA(s_ctrl2_axi_rdata),
		.S_AXI_RRESP(s_ctrl2_axi_rresp),
		.S_AXI_RVALID(s_ctrl2_axi_rvalid),
		.S_AXI_RREADY(s_ctrl2_axi_rready),
		.S_WRITE_REQ(s_ctrl2_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl2_write_state_value),
		.S_ID({1'b0,`ID2}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl2)
	);
	//Control AXI bus3 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl3_instance (
		.S_AXI_ACLK(s_ctrl3_axi_aclk),
		.S_AXI_ARESETN(s_ctrl3_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl3_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl3_axi_awprot),
		.S_AXI_AWVALID(s_ctrl3_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl3_axi_awready),
		.S_AXI_WDATA(s_ctrl3_axi_wdata),
		.S_AXI_WSTRB(s_ctrl3_axi_wstrb),
		.S_AXI_WVALID(s_ctrl3_axi_wvalid),
		.S_AXI_WREADY(s_ctrl3_axi_wready),
		.S_AXI_BRESP(s_ctrl3_axi_bresp),
		.S_AXI_BVALID(s_ctrl3_axi_bvalid),
		.S_AXI_BREADY(s_ctrl3_axi_bready),
		.S_AXI_ARADDR(s_ctrl3_axi_araddr),
		.S_AXI_ARPROT(s_ctrl3_axi_arprot),
		.S_AXI_ARVALID(s_ctrl3_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl3_axi_arready),
		.S_AXI_RDATA(s_ctrl3_axi_rdata),
		.S_AXI_RRESP(s_ctrl3_axi_rresp),
		.S_AXI_RVALID(s_ctrl3_axi_rvalid),
		.S_AXI_RREADY(s_ctrl3_axi_rready),
		.S_WRITE_REQ(s_ctrl3_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl3_write_state_value),
		.S_ID({1'b0,`ID3}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl3)
	);
	//Control AXI bus4 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl4_instance (
		.S_AXI_ACLK(s_ctrl4_axi_aclk),
		.S_AXI_ARESETN(s_ctrl4_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl4_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl4_axi_awprot),
		.S_AXI_AWVALID(s_ctrl4_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl4_axi_awready),
		.S_AXI_WDATA(s_ctrl4_axi_wdata),
		.S_AXI_WSTRB(s_ctrl4_axi_wstrb),
		.S_AXI_WVALID(s_ctrl4_axi_wvalid),
		.S_AXI_WREADY(s_ctrl4_axi_wready),
		.S_AXI_BRESP(s_ctrl4_axi_bresp),
		.S_AXI_BVALID(s_ctrl4_axi_bvalid),
		.S_AXI_BREADY(s_ctrl4_axi_bready),
		.S_AXI_ARADDR(s_ctrl4_axi_araddr),
		.S_AXI_ARPROT(s_ctrl4_axi_arprot),
		.S_AXI_ARVALID(s_ctrl4_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl4_axi_arready),
		.S_AXI_RDATA(s_ctrl4_axi_rdata),
		.S_AXI_RRESP(s_ctrl4_axi_rresp),
		.S_AXI_RVALID(s_ctrl4_axi_rvalid),
		.S_AXI_RREADY(s_ctrl4_axi_rready),
		.S_WRITE_REQ(s_ctrl4_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl4_write_state_value),
		.S_ID({1'b0,`ID4}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl4)
	);
	//Control AXI bus5 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl5_instance (
		.S_AXI_ACLK(s_ctrl5_axi_aclk),
		.S_AXI_ARESETN(s_ctrl5_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl5_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl5_axi_awprot),
		.S_AXI_AWVALID(s_ctrl5_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl5_axi_awready),
		.S_AXI_WDATA(s_ctrl5_axi_wdata),
		.S_AXI_WSTRB(s_ctrl5_axi_wstrb),
		.S_AXI_WVALID(s_ctrl5_axi_wvalid),
		.S_AXI_WREADY(s_ctrl5_axi_wready),
		.S_AXI_BRESP(s_ctrl5_axi_bresp),
		.S_AXI_BVALID(s_ctrl5_axi_bvalid),
		.S_AXI_BREADY(s_ctrl5_axi_bready),
		.S_AXI_ARADDR(s_ctrl5_axi_araddr),
		.S_AXI_ARPROT(s_ctrl5_axi_arprot),
		.S_AXI_ARVALID(s_ctrl5_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl5_axi_arready),
		.S_AXI_RDATA(s_ctrl5_axi_rdata),
		.S_AXI_RRESP(s_ctrl5_axi_rresp),
		.S_AXI_RVALID(s_ctrl5_axi_rvalid),
		.S_AXI_RREADY(s_ctrl5_axi_rready),
		.S_WRITE_REQ(s_ctrl5_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl5_write_state_value),
		.S_ID({1'b0,`ID5}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl5)
	);
	//Control AXI bus6 instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl6_instance (
		.S_AXI_ACLK(s_ctrl6_axi_aclk),
		.S_AXI_ARESETN(s_ctrl6_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl6_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl6_axi_awprot),
		.S_AXI_AWVALID(s_ctrl6_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl6_axi_awready),
		.S_AXI_WDATA(s_ctrl6_axi_wdata),
		.S_AXI_WSTRB(s_ctrl6_axi_wstrb),
		.S_AXI_WVALID(s_ctrl6_axi_wvalid),
		.S_AXI_WREADY(s_ctrl6_axi_wready),
		.S_AXI_BRESP(s_ctrl6_axi_bresp),
		.S_AXI_BVALID(s_ctrl6_axi_bvalid),
		.S_AXI_BREADY(s_ctrl6_axi_bready),
		.S_AXI_ARADDR(s_ctrl6_axi_araddr),
		.S_AXI_ARPROT(s_ctrl6_axi_arprot),
		.S_AXI_ARVALID(s_ctrl6_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl6_axi_arready),
		.S_AXI_RDATA(s_ctrl6_axi_rdata),
		.S_AXI_RRESP(s_ctrl6_axi_rresp),
		.S_AXI_RVALID(s_ctrl6_axi_rvalid),
		.S_AXI_RREADY(s_ctrl6_axi_rready),
		.S_WRITE_REQ(s_ctrl6_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl6_write_state_value),
		.S_ID({1'b0,`ID6}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl6)
	);
	//Control AXI bus_fixed instantiation
	Octopos_MailBox_ctrl_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)
	) Octopos_MailBox_ctrl_AXI_ctrl_fixed_instance (
		.S_AXI_ACLK(s_ctrl_fixed_axi_aclk),
		.S_AXI_ARESETN(s_ctrl_fixed_axi_aresetn),
		.S_AXI_AWADDR(s_ctrl_fixed_axi_awaddr),
		.S_AXI_AWPROT(s_ctrl_fixed_axi_awprot),
		.S_AXI_AWVALID(s_ctrl_fixed_axi_awvalid),
		.S_AXI_AWREADY(s_ctrl_fixed_axi_awready),
		.S_AXI_WDATA(s_ctrl_fixed_axi_wdata),
		.S_AXI_WSTRB(s_ctrl_fixed_axi_wstrb),
		.S_AXI_WVALID(s_ctrl_fixed_axi_wvalid),
		.S_AXI_WREADY(s_ctrl_fixed_axi_wready),
		.S_AXI_BRESP(s_ctrl_fixed_axi_bresp),
		.S_AXI_BVALID(s_ctrl_fixed_axi_bvalid),
		.S_AXI_BREADY(s_ctrl_fixed_axi_bready),
		.S_AXI_ARADDR(s_ctrl_fixed_axi_araddr),
		.S_AXI_ARPROT(s_ctrl_fixed_axi_arprot),
		.S_AXI_ARVALID(s_ctrl_fixed_axi_arvalid),
		.S_AXI_ARREADY(s_ctrl_fixed_axi_arready),
		.S_AXI_RDATA(s_ctrl_fixed_axi_rdata),
		.S_AXI_RRESP(s_ctrl_fixed_axi_rresp),
		.S_AXI_RVALID(s_ctrl_fixed_axi_rvalid),
		.S_AXI_RREADY(s_ctrl_fixed_axi_rready),
		.S_WRITE_REQ(s_ctrl_fixed_write_req),
		.S_WRITE_STATE_VALUE(s_ctrl_fixed_write_state_value),
		.S_ID({1'b0,`ID_FIXED}),
		.S_SYSTEM_STATE_REG(state_reg),
		.S_INTERRUPT(Interrupt_ctrl_fixed)
	);

	//Octopos Mailbox Main logic

 
	//Combinational logic

 	//State register break down
 	always @(*)
	begin
		//For System State register
 		owner_id = state_reg[31:24];
		limit = state_reg[23:12];
		time_out = state_reg[11:0];
		//For to be writtern register
 		write_state_owner_id = write_state_value[31:24];
		write_state_limit = write_state_value[23:12];
		write_state_time_out = write_state_value[11:0];
	end
	//Multiplexer for write_state_value and write_req 
 	always @(*)
	begin
		case(owner_id)
			`ID0: begin
				write_state_value = s_ctrl0_write_state_value;
				write_req = s_ctrl0_write_req;
			end
			`ID1: begin
				write_state_value = s_ctrl1_write_state_value;
				write_req = s_ctrl1_write_req;
			end
			`ID2: begin
				write_state_value = s_ctrl2_write_state_value;
				write_req = s_ctrl2_write_req;
			end
			`ID3: begin
				write_state_value = s_ctrl3_write_state_value;
				write_req = s_ctrl3_write_req;
			end
			`ID4: begin
				write_state_value = s_ctrl4_write_state_value;
				write_req = s_ctrl4_write_req;
			end
			`ID5: begin
				write_state_value = s_ctrl5_write_state_value;
				write_req = s_ctrl5_write_req;
			end
			`ID6: begin
				write_state_value = s_ctrl6_write_state_value;
				write_req = s_ctrl6_write_req;
			end
			default: begin
				write_state_value = 32'b0;
				write_req = 1'b0;
			end
		endcase
	end
	//Reset generation for req signal latches 
 	always @(*)
	begin
		stack_req_reset = stack_req_latched;
		write_req_reset = (!stack_req_latched) & write_req_latched;
		limit_req_reset = (!stack_req_latched) & (!write_req_latched) & limit_req_latched;
		timer_req_reset = (!stack_req_latched) & (!write_req_latched) & (!limit_req_latched) & timer_req_latched;
	end
	//Generate a signal to know when we need to pop the stack 
 	always @(*)
	begin
		if( (limit == 8'b0) || (time_out == 12'b0) || ( (write_req == 1'b1) && (write_state_owner_id == `YIELD_ID) ) )
			stack_req = 1'b1;
		else
			stack_req = 1'b0;
	end
	//Generate a signal to know when outside ctrl channel can rewrite the state reg 
 	always @(*)
	begin
		if( (write_req == 1'b1)&& (write_state_limit < limit) &&  (write_state_limit != 0) &&(write_state_time_out < time_out) &&(write_state_time_out != 0) && (write_state_owner_id != `YIELD_ID)  )
			write_req_valid = 1'b1;
		else
			write_req_valid = 1'b0;
	end
	//Calculate the normal next values for time_out and limit  
 	always @(*)
	begin
		if( limit == 0 )
			next_limit = 1'b0;
		else if ( limit == `INFINITY)
			next_limit  = `INFINITY;
		else
			next_limit  = limit - 1'b1;
	end
	always @(*)
	begin
		if( time_out == 0 )
			next_time_out = 1'b0;
		else if ( time_out == `INFINITY)
			next_time_out  = `INFINITY;
		else
			next_time_out  = time_out - 1'b1;
	end


	//Generate timer_req and limit_req signals
 	always @(*)
	begin
		if((S0_data_AXI_ARADDR[8:0] == 8'h08) && (S0_data_AXI_ARREADY ==1'b1))
			limit_req = 1'b1;
		else
			limit_req = 1'b0;
	end
	always @(*)
	begin
		if(timer_counter == 32'b0)
			timer_req = 1'b1;
		else
			timer_req = 1'b0;
	end

	//Sequential logic

 	//FlipFlops for Multiplexer Chain selectors latched signals
	always @( posedge clk )
	begin
		if( resetn == 1'b0 )
		  begin
		    stack_req_latched <= 1'b0;
			write_req_latched <= 1'b0; 
			limit_req_latched <= 1'b0;
			timer_req_latched <= 1'b0;
			
		  end
		else
		  begin
		  
			if(stack_req_reset == 1'b1)
			  begin
			    stack_req_latched <= 1'b0;
			  end
			else
			  begin
			    if(stack_req_latched == 1'b0)
					stack_req_latched <= stack_req;
				else
					stack_req_latched <=  stack_req_latched;
			  end
			  
			if(write_req_reset == 1'b1)
			  begin
			    write_req_latched <= 1'b0;
			  end
			else
			  begin
			    if(write_req_latched == 1'b0)
					write_req_latched <= write_req_valid;
				else
					write_req_latched <=  write_req_latched;
			  end
			  
			if(limit_req_reset == 1'b1)
			  begin
			    limit_req_latched <= 1'b0;
			  end
			else
			  begin
			    if(limit_req_latched == 1'b0)
					limit_req_latched <= limit_req;
				else
					limit_req_latched <=  limit_req_latched;
			  end
			  
			if(timer_req_reset == 1'b1)
			  begin
			    timer_req_latched <= 1'b0;
			  end
			else
			  begin
			    if(timer_req_latched == 1'b0)
					timer_req_latched <= timer_req;
				else
					timer_req_latched <=  timer_req_latched;
			  end
				
		  end
	end
	//FlipFlops for the main state_reg and stack ( and the main Multiplexer chain)
	always @( posedge clk )
	begin
		if( resetn == 1'b0 )
		  begin
		    // on reset give the infinit amount of limits to the first enclave
		    state_reg <= { `ID0 , `INFINITY, `INFINITY};
			//stack regs
			stack_pointer <= 0;
			for (i = 0; i < `STACK_SIZE; i = i +1) begin
				stack_memory[i] <= 32'b0;
			end
			Octopos_resetn <= 1'b1;
		  end
		else
		  begin
			if(stack_req_latched == 1'b1)
			  begin
			    //pop the stack and load the data into the state_reg, if it is a yield give the remaining limits to the parent
			    if( (write_req == 1'b1) && (write_state_owner_id == `YIELD_ID) )
				  begin
					if( (stack_memory[stack_pointer -1][23:12] == `INFINITY)&&(stack_memory[stack_pointer -1][11:0]==`INFINITY)) 
						state_reg <= {stack_memory[stack_pointer -1][31:24] , stack_memory[stack_pointer -1][23:12]  , stack_memory[stack_pointer -1][11:0] };
					else if (stack_memory[stack_pointer -1][23:12] == `INFINITY)
						state_reg <= {stack_memory[stack_pointer -1][31:24] , stack_memory[stack_pointer -1][23:12] , stack_memory[stack_pointer -1][11:0]  +time_out};
					else if (stack_memory[stack_pointer -1][11:0]==`INFINITY)
						state_reg <= {stack_memory[stack_pointer -1][31:24] , stack_memory[stack_pointer -1][23:12] + limit , stack_memory[stack_pointer -1][11:0]};
					else
						state_reg <= {stack_memory[stack_pointer -1][31:24] , stack_memory[stack_pointer -1][23:12] + limit , stack_memory[stack_pointer -1][11:0]  +time_out};
				  end
				else
				  begin
					state_reg <= stack_memory[stack_pointer -1 ];
				  end
				stack_pointer <= stack_pointer - 1;  
				Octopos_resetn <= 1'b0;
			  end
			else if (write_req_latched == 1'b1)
			  begin
			    //push the parent remaining permissions to the stack
				if( (limit == `INFINITY) && ( time_out == `INFINITY) ) 
					stack_memory[ stack_pointer ] <= { owner_id , limit , time_out };
				else if (limit == `INFINITY)
					stack_memory[ stack_pointer ] <= { owner_id , limit  , time_out - write_state_time_out};	
				else if ( time_out == `INFINITY)
					stack_memory[ stack_pointer ] <= { owner_id , limit - write_state_limit , time_out};
				else
					stack_memory[ stack_pointer ] <= { owner_id , limit - write_state_limit , time_out - write_state_time_out};
				stack_pointer <= stack_pointer + 1;
				//update the state_reg with new value
				state_reg <= write_state_value;
				Octopos_resetn <= 1'b0;
			  end
			else if (limit_req_latched == 1'b1)
			  begin
				state_reg <= {owner_id, next_limit , time_out};
				Octopos_resetn <= 1'b1;
			  end
			else if (timer_req_latched == 1'b1)
			  begin
				state_reg <= {owner_id , limit , next_time_out};
				Octopos_resetn <= 1'b1;
			  end
			else
			  begin
				state_reg <= state_reg;
				Octopos_resetn <= 1'b1;
			  end
		  end
	end
	//TIMER
	always @( posedge clk )
	begin
		if( resetn == 1'b0 )
		  begin
		    timer_counter <= `TIMER_MAX;
		  end
		else
		  begin
			if(timer_counter == 32'b0)
				timer_counter <= `TIMER_MAX;
			else
				timer_counter <= timer_counter - 1;
		  end
	end	 
	endmodule