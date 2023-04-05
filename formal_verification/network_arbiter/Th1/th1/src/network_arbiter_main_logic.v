// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2021 02:41:32 PM
// Design Name: 
// Module Name: network_arbiter_main_logic
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


module network_arbiter_main_logic(
    input CLK,
    input RESETN,
    input [31:0] WRITE_STATE_VALUE,
    output TRUSTED
    );
    
//Constant defenitions
`define STATE_REG_TRUSTED 32'b0
`define STATE_REG_UNTRUSTED 32'hF0F0F0F0

	reg trusted;
	reg [31:0] state_reg;
    	wire clk;
    	wire resetn;
	assign clk = CLK;
	assign resetn = RESETN;
	assign TRUSTED = trusted;
   
	//Multiplexer for Mailbox programable port 
	always @(*)
	begin
		case(state_reg)
			`STATE_REG_TRUSTED:
				trusted =1'b1;			
			`STATE_REG_UNTRUSTED:
				trusted =1'b0;
			 default:
			    trusted = 1'b1;	
		endcase
	end//for always @(*)	    
    
    	//FlipFlops for the main state_reg and stack ( and the main Multiplexer chain)
	always @( posedge clk )
	begin
		if( resetn == 1'b0 )
            		state_reg <= 32'b0;		  
		else
			state_reg <= WRITE_STATE_VALUE;			
	end
endmodule

