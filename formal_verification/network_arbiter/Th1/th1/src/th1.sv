// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`include "./Network_arbitter_simple.v"
`include "./network_arbiter_main_logic.v"

module testbench(
	input clk,
	input resetn,
	input [31:0]write_state_value,
	output trusted
);

reg should_be_trusted;

  network_arbiter_main_logic uut (
    .CLK(clk),
    .RESETN(resetn),
    .WRITE_STATE_VALUE(write_state_value),
    .TRUSTED(trusted)
    );

  reg  init = 1;
  always @(posedge clk) begin
    if (init) assume (resetn == 1'b0);
    if (resetn) begin
	if ( write_state_value == `STATE_REG_UNTRUSTED)
		should_be_trusted <= 0;
	else 
		should_be_trusted <= 1;

	assert(should_be_trusted == trusted);

    end else begin
	should_be_trusted <=1;	    
    end
    init <= 0;
  end

endmodule
