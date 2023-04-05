// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`include "./Octopos_MailBox_Main_logic.v"
`include "./Octopos_MailBox_Ctrl_Interface_Manager.v"
module testbench(
	input clk,
	input aresetn,
	input interrupt_clear,
	input limit_req,
	input time_req,
	output internal_mailbox_resetn,
	output reg [31:0] state_reg,
	//interface 0
	input write_req_0,
	input [31:0] write_state_0,
	input interrupt_clear_0,
	output reg [31:0] read_state_0,
	output reg interrupt_0,
	//interface 1
	input write_req_1,
	input [31:0] write_state_1,
	input interrupt_clear_1,
	output reg [31:0] read_state_1,
	output reg interrupt_1,
	//interface 2
	input write_req_2,
	input [31:0] write_state_2,
	input interrupt_clear_2,
	output reg [31:0] read_state_2,
	output reg interrupt_2,
	//interface fixed
	input write_req_fixed,
	input [31:0] write_state_fixed,
	input interrupt_clear_fixed,
	output reg [31:0] read_state_fixed,
	output reg interrupt_fixed,


);

wire [7:0] owner_id;
assign owner_id = state_reg[31:24];

  Octopos_MailBox_Main_Logic uut (
    .S_CLK(clk),
    .S_ARESETN(aresetn),
    .S_SYSTEM_STATE_REG(state_reg),
    .S_LIMIT_REQ(limit_req),
    .S_TIME_REQ(time_req),
    .S_INTERNAL_MAILBOX_RESETN(internal_mailbox_resetn),
    // ctrl interface 0
    .S_WRITE_REQ_0(write_req_0),
    .S_WRITE_STATE_VALUE_0(write_state_0),
    .S_INTERRUPT_CLEAR_0(interrupt_clear_0),
    .S_READ_STATE_VALUE_0(read_state_0),
    .S_INTERRUPT_0(interrupt_0),
    // ctrl interface 1
    .S_WRITE_REQ_1(write_req_1),
    .S_WRITE_STATE_VALUE_1(write_state_1),
    .S_INTERRUPT_CLEAR_1(interrupt_clear_1),
    .S_READ_STATE_VALUE_1(read_state_1),
    .S_INTERRUPT_1(interrupt_1),
    // ctrl interface 2
    .S_WRITE_REQ_2(write_req_2),
    .S_WRITE_STATE_VALUE_2(write_state_2),
    .S_INTERRUPT_CLEAR_2(interrupt_clear_2),
    .S_READ_STATE_VALUE_2(read_state_2),
    .S_INTERRUPT_2(interrupt_2),
    // ctrl interface fixed
    .S_WRITE_REQ_fixed(write_req_fixed),
    .S_WRITE_STATE_VALUE_fixed(write_state_2),
    .S_INTERRUPT_CLEAR_fixed(interrupt_clear_fixed),
    .S_READ_STATE_VALUE_fixed(read_state_fixed),
    .S_INTERRUPT_fixed(interrupt_fixed)
    );
  reg init = 1;
  always @(posedge clk) begin
    if (init) assume (!aresetn);
    if (aresetn) begin
	case(owner_id)
		`ID0: begin
		     assert(read_state_1 == `NO_ACCESS);	
		     assert(read_state_2 == `NO_ACCESS);	
		end
		`ID1: begin
		     assert(read_state_0 == `NO_ACCESS);	
		     assert(read_state_2 == `NO_ACCESS);	
		end
		`ID2: begin
		     assert(read_state_0 == `NO_ACCESS);	
		     assert(read_state_1 == `NO_ACCESS);	
		end
		default: begin
		end
	endcase
    end
    init <= 0;
  end

endmodule
