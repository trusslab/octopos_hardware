`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Irvine
// Engineer: Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)
// 
// Create Date: 11/07/2021 10:35:37 PM
// Design Name: 
// Module Name: Octopos_MailBox_Main_Logic
// Project Name: Octopos
// Target Devices:  Zcu102
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


module Octopos_MailBox_Main_Logic(
    input  S_CLK,
    input  S_ARESETN,
    output [31:0] S_SYSTEM_STATE_REG,
    input  S_LIMIT_REQ,
    input  S_TIME_REQ,
    output S_INTERNAL_MAILBOX_RESETN,
    // ctrl interface 0
    input  S_WRITE_REQ_0,
    input  [31:0] S_WRITE_STATE_VALUE_0,
    input  S_INTERRUPT_CLEAR_0,
    output [31:0] S_READ_STATE_VALUE_0,
    output S_INTERRUPT_0,
    // ctrl interface 1
    input  S_WRITE_REQ_1,
    input  [31:0] S_WRITE_STATE_VALUE_1,
    input  S_INTERRUPT_CLEAR_1,
    output [31:0] S_READ_STATE_VALUE_1,
    output S_INTERRUPT_1,
    // ctrl interface 2
    input  S_WRITE_REQ_2,
    input  [31:0] S_WRITE_STATE_VALUE_2,
    input  S_INTERRUPT_CLEAR_2,
    output [31:0] S_READ_STATE_VALUE_2,
    output S_INTERRUPT_2,
    // ctrl interface fixed
    input  S_WRITE_REQ_fixed,
    input  [31:0] S_WRITE_STATE_VALUE_fixed,
    input  S_INTERRUPT_CLEAR_fixed,
    output [31:0] S_READ_STATE_VALUE_fixed,
    output S_INTERRUPT_fixed
    );

    wire clk;
    wire resetn;
    assign clk = S_CLK;
    assign resetn = S_ARESETN;

    reg deligate_req;
    reg expire_or_yield_req;
    wire timer_req;
    assign timer_req = S_TIME_REQ;
    wire limit_req;
    assign limit_req = S_LIMIT_REQ;
    reg [31:0] write_state_value;
    reg write_req;
 
    reg [31:0] state_reg; 
    reg [7:0] owner_id;
    reg [11:0] time_out;
    reg [11:0] limit;
    reg [7:0]  write_state_owner_id;
    reg [11:0] write_state_time_out;
    reg [11:0] write_state_limit;
    reg [11:0] next_time_out;
    reg [11:0] next_limit;
	
    assign  S_SYSTEM_STATE_REG = state_reg; 
	  
    reg  Octopos_resetn;
    assign  S_INTERNAL_MAILBOX_RESETN = Octopos_resetn;
    
//Copy from main file
    `define ID0 8'd0
    `define ID1 8'd1
    `define ID2 8'd2
    `define YIELD_ID 8'd255
    `define ID_FIXED 9'b111111111
    `define INFINITY 12'hFFF
    `define NO_ACCESS 32'hDEAD_BEEF
	
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
				write_state_value = S_WRITE_STATE_VALUE_0;
				write_req = S_WRITE_REQ_0;
			end
			`ID1: begin
				write_state_value = S_WRITE_STATE_VALUE_1;
				write_req = S_WRITE_REQ_1;
			end
			`ID2: begin
				write_state_value = S_WRITE_STATE_VALUE_2;
				write_req = S_WRITE_REQ_2;
			end
			default: begin
				write_state_value = 32'b0;
				write_req = 1'b0;
			end
		endcase
	end

 	always @(*)
	begin
		if( (limit == 8'b0) || (time_out == 12'b0) || ( (write_req == 1'b1) && (write_state_owner_id == `YIELD_ID) && (owner_id != `ID0) ) )
			expire_or_yield_req = 1'b1;
		else
			expire_or_yield_req = 1'b0;
	end	
	//Generate a signal to know when resource manager wants to delegate mailbox to another domain
	// only resource manager can do the delegation
	// the domain 0xFF is reserved for yielding and cannot be used as
	// delegation, to ensure availability we do not allow inifint
	// delagation 
 	always @(*)
	begin
		if( (write_req == 1'b1) && (owner_id == `ID0) && (write_state_owner_id != `YIELD_ID) && (write_state_owner_id != `ID0) && (write_state_time_out != `INFINITY) )
			deligate_req = 1'b1;
		else
			deligate_req = 1'b0;
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



	//FlipFlops for the main state_reg and  ( and the main Multiplexer chain)
	always @( posedge clk )
	begin
		if( resetn == 1'b0 )
		  begin
		  	// on reset give the infinit amount of limits to the first enclave
		  	state_reg <= { `ID0 , `INFINITY, `INFINITY};
		  	Octopos_resetn <= 1'b1;
		  end
		else
		  begin
			if( deligate_req == 1'b1) begin
               			state_reg <= write_state_value;
				Octopos_resetn <= 1'b0;
			  end
			else if(expire_or_yield_req == 1'b1)
			  begin
               			state_reg <= { `ID0 , `INFINITY, `INFINITY};
				Octopos_resetn <= 1'b0;
			  end
			else if ( (limit_req & timer_req) == 1'b1)
			  begin
				state_reg <= {owner_id, next_limit , next_time_out};
				Octopos_resetn <= 1'b1;
			  end
			else if (limit_req == 1'b1)
			  begin
				state_reg <= {owner_id, next_limit , time_out};
				Octopos_resetn <= 1'b1;
			  end
			else if (timer_req == 1'b1)
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


//Control Interface 0	    
    Octopos_MailBox_Ctrl_Interface_Manager  Interface_0(
        .S_CLK(S_CLK),
        .S_ARESETN(S_ARESETN),
        .S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),
        .S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_0),
        .S_READ_STATE_VALUE(S_READ_STATE_VALUE_0),
        .S_INTERRUPT(S_INTERRUPT_0),
        .S_ID({1'b0,`ID0})
    );
//Control Interface 1	    
    Octopos_MailBox_Ctrl_Interface_Manager  Interface_1(
        .S_CLK(S_CLK),
        .S_ARESETN(S_ARESETN),
        .S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),
        .S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_1),
        .S_READ_STATE_VALUE(S_READ_STATE_VALUE_1),
        .S_INTERRUPT(S_INTERRUPT_1),
        .S_ID({1'b0,`ID1})
    );    
//Control Interface 2	    
    Octopos_MailBox_Ctrl_Interface_Manager  Interface_2(
        .S_CLK(S_CLK),
        .S_ARESETN(S_ARESETN),
        .S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),
        .S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_2),
        .S_READ_STATE_VALUE(S_READ_STATE_VALUE_2),
        .S_INTERRUPT(S_INTERRUPT_2),
        .S_ID({1'b0,`ID2})
    );    
//Control Interface fixed	    
    Octopos_MailBox_Ctrl_Interface_Manager  Interface_fixed(
        .S_CLK(S_CLK),
        .S_ARESETN(S_ARESETN),
        .S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),
        .S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_fixed),
        .S_READ_STATE_VALUE(S_READ_STATE_VALUE_fixed),
        .S_INTERRUPT(S_INTERRUPT_fixed),
        .S_ID({1'b0,`ID_FIXED})
    );         
endmodule


