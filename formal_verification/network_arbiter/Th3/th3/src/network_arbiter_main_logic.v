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
    output TRUSTED,
    output [31:0] state_reg
    );
    
//Constant defenitions
`define STATE_REG_TRUSTED 32'b0
`define STATE_REG_UNTRUSTED 32'hF0F0F0F0
	assign TRUSTED = trusted;
	reg trusted;
	reg [31:0] state_reg;
    wire clk;
    wire resetn;
	assign clk = CLK;
	assign resetn = RESETN;
   
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

