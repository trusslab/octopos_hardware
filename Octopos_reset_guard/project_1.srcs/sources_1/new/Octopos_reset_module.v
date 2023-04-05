// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.


`timescale 1 ns / 1 ps

	module Octopos_reset_module_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,
		input wire in_reset_n,
		input wire system_sync_clk,
		input wire mailbox0_busy_n,
		input wire mailbox1_busy_n,
		input wire mailbox2_busy_n,
		input wire mailbox3_busy_n,
		input wire domain0_busy,
		input wire domain1_busy,
		input wire domain2_busy,
		input wire domain3_busy,
		input wire domain4_busy,
		input wire domain5_busy,
		input wire domain6_busy,
		input wire domain7_busy,
		output reg out_reset_n
	);
	wire first_reset;
	wire user_reset;
	wire [3:0] mailboxes_busy;
	wire [7:0] domains_busy;
	reg busy_n;
	wire busy;
	
	assign mailboxes_busy[0] = ~mailbox0_busy_n;
	assign mailboxes_busy[1] = ~mailbox1_busy_n;
	assign mailboxes_busy[2] = ~mailbox2_busy_n;
	assign mailboxes_busy[3] = ~mailbox3_busy_n;
	
	assign domains_busy[0] = domain0_busy;
	assign domains_busy[1] = domain1_busy;
	assign domains_busy[2] = domain2_busy;
	assign domains_busy[3] = domain3_busy;
	assign domains_busy[4] = domain4_busy;
	assign domains_busy[5] = domain5_busy;
	assign domains_busy[6] = domain6_busy;
	assign domains_busy[7] = domain7_busy;

    always @(*)
    begin
        if( (mailboxes_busy == 4'b0) && (domains_busy == 8'b0) )
            busy_n = 1'b1;
        else
            busy_n = 1'b0;
    end
    
    assign busy = ~busy_n;
	
// Instantiation of Axi Bus Interface S00_AXI
	Octopos_reset_module_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Octopos_reset_module_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.USER_RESET(user_reset),
		.FIRST_RESET(first_reset),
		.IN_RESET_N(in_reset_n),
		.BUSY(busy),
		.SYSTEM_SYNC_CLK(system_sync_clk)
	);

    

    always @(*)
    begin
        if (first_reset == 1'b1)
        begin
            out_reset_n = 1'b0;
        end
        else if ( busy == 1)
        begin
            out_reset_n = 1'b1;
        end
        else if ( user_reset == 1'b1)
        begin
            out_reset_n = 1'b0;
        end
        else
        begin
            out_reset_n = in_reset_n;
        end
    end

	endmodule
