// Copyright (c) 2020 - 2023, The OctopOS Authors
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

module Octopos_MailBox_Ctrl_Interface_Manager(
    input  S_CLK,
    input  S_ARESETN,
    input  [31:0] S_SYSTEM_STATE_REG,
    // ctrl interface 
    input  S_INTERRUPT_CLEAR,
    output reg [31:0] S_READ_STATE_VALUE,
    output  S_INTERRUPT,
    input [8:0] S_ID
    );

    `define ID0 8'd0
    `define ID_FIXED 9'b111111111
    `define INFINITY 12'hFFF
    `define NO_ACCESS 32'hDEAD_BEEF
	  
    reg [31:0] system_reg_previous;
    reg interrupt_line;
    wire interrupt_should_clear;
    wire [7:0] owner_id;
    wire [7:0] owner_id_previous;

    assign  interrupt_should_clear = S_INTERRUPT_CLEAR;
    assign S_INTERRUPT = interrupt_line;

    assign owner_id = S_SYSTEM_STATE_REG[31:24];
    assign owner_id_previous = system_reg_previous[31:24];

// Access control on reading the state register
    always @(*)
    begin
     // The logic for attestation access control is here
          if( (S_ID == {1'b0,owner_id}) || (S_ID == `ID_FIXED) )
            begin
    	      S_READ_STATE_VALUE <= S_SYSTEM_STATE_REG;
            end    
          else
            begin
    	      S_READ_STATE_VALUE <= `NO_ACCESS;
            end
    end       



// Logic to handle change of ownership interrupt	 
    //Octopos: Save the value of previous system state in  system_reg_previous
    always @( posedge S_CLK )
    begin
      if ( S_ARESETN == 1'b0 )
        begin
            system_reg_previous <= { `ID0 , `INFINITY, `INFINITY};
        end 
      else
        begin
    	    system_reg_previous <= S_SYSTEM_STATE_REG;
        end
    end
    //Octopos: When the owner_id changes the new Owner and the FIXed Part recives an interrupt
    always @( posedge S_CLK )
    begin
      if ( S_ARESETN == 1'b0 )
        begin
            interrupt_line <= 1'b0;
        end 
      else
        begin
           if(interrupt_should_clear == 1'b1) 
	     begin
    	        interrupt_line <= 1'b0;
             end else if( (S_ID == owner_id) || (S_ID == `ID_FIXED) )
	     begin
    	        if( owner_id_previous != owner_id )
    	            interrupt_line <= 1'b1;
             end
        end
    end		
endmodule
