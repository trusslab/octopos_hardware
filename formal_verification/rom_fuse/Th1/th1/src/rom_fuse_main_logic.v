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

