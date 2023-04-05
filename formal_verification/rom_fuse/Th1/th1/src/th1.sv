// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`include "./rom_fuse_main_logic.v"
module testbench(
	input clk,
	input [31:0]reg0,
	output locked
);

  rom_fuse_main_logic uut (
    .CLK(clk),
    .REG0(reg0),
    .LOCKED(locked)
    );

  reg [7:0] init_counter = 0;
  always @(posedge clk) begin
    if ( init_counter == 1 ) assume (reg0 == 32'hDEADDEAD);
    if ( init_counter >2 ) begin
	assert(locked == 1'b1);
    end
    if (init_counter < 100)
    	init_counter <= init_counter + 8'b1;
  end

endmodule
