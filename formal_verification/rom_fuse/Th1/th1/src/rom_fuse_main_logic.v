// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2021 01:09:35 PM
// Design Name: 
// Module Name: rom_fuse_main_logic
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


module rom_fuse_main_logic(
    input CLK,
    input [31:0] REG0,
    output reg LOCKED
    );

	reg [31:0] random_fuse;
    
    always @( posedge CLK )
	begin
    if ( random_fuse  != 32'hDEADBEEF )
        begin
            LOCKED <= 1'b0;
        end
    else
        begin
            LOCKED <=1'b1;
        end
	end



always @( posedge CLK )
	begin
	   if( random_fuse == 32'hDEADBEEF)
	       begin
	           random_fuse <= random_fuse;
	       end
	   else
	       begin
	           if(REG0 == 32'hDEADDEAD)
	               begin
	                   random_fuse <= 32'hDEADBEEF;
	               end
	           else
	               begin
	                   random_fuse <= 32'h00000000;
	               end    
	 
	       end
	  
	 end
    
    
endmodule

