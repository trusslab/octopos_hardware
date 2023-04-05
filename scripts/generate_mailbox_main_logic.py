# Copyright (c) 2020 - 2023, The OctopOS Authors
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

f = open("Octopos_MailBox_Main_logic.v","w+");
num_of_ports = 4;
manyWriter_OneReader =1;
f.write('`timescale 1 ns / 1 ps\n')

f.write('//////////////////////////////////////////////////////////////////////////////////\n')
f.write('// Company: University of California, Irvine\n')
f.write('// Engineer: Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)\n')
f.write('// \n')
f.write('// Create Date: 11/07/2021 10:35:37 PM\n')
f.write('// Design Name: \n')
f.write('// Module Name: Octopos_MailBox_Main_Logic\n')
f.write('// Project Name: Octopos\n')
f.write('// Target Devices:  Zcu102\n')
f.write('// Tool Versions: \n')
f.write('// Description: \n')
f.write('// \n')
f.write('// Dependencies: \n')
f.write('// \n')
f.write('// Revision:\n')
f.write('// Revision 0.01 - File Created\n')
f.write('// Additional Comments:\n')
f.write('// \n')
f.write('//////////////////////////////////////////////////////////////////////////////////\n')
f.write('\n')

f.write('module Octopos_MailBox_Main_Logic (\n')
f.write('\t// global params\n')
f.write('\t\tinput  S_CLK,\n')
f.write('\t\tinput  S_ARESETN,\n')
f.write('\t\toutput [31:0] S_SYSTEM_STATE_REG,\n')
f.write('\t\tinput  S_LIMIT_REQ,\n')
f.write('\t\tinput  S_TIME_REQ,\n')
f.write('\t\toutput S_INTERNAL_MAILBOX_RESETN,\n')
for i in range(0,num_of_ports):
    f.write('\t// ctrl interface %d\n' % i) # comment
    f.write('\t\tinput  S_WRITE_REQ_%d,\n' % i)
    f.write('\t\tinput  [31:0] S_WRITE_STATE_VALUE_%d,\n' % i)
    f.write('\t\tinput  S_INTERRUPT_CLEAR_%d,\n' % i)
    f.write('\t\toutput [31:0] S_READ_STATE_VALUE_%d,\n' % i)
    f.write('\t\toutput S_INTERRUPT_%d,\n' % i)

i= 'fixed'
f.write('\t// ctrl interface %s\n' % i) # comment
f.write('\t\tinput  S_WRITE_REQ_%s,\n' % i)
f.write('\t\tinput  [31:0] S_WRITE_STATE_VALUE_%s,\n' % i)
f.write('\t\tinput  S_INTERRUPT_CLEAR_%s,\n' % i)
f.write('\t\toutput [31:0] S_READ_STATE_VALUE_%s,\n' % i)
f.write('\t\toutput S_INTERRUPT_%s\n' % i)
f.write(');\n')
f.write('\n')

f.write('wire clk;\n')
f.write('wire resetn;\n')
f.write('assign clk = S_CLK;\n')
f.write('assign resetn = S_ARESETN;\n')

f.write('\n')
f.write('reg deligate_req;\n')
f.write('reg expire_or_yield_req;\n')
f.write('wire timer_req;\n')
f.write('assign timer_req = S_TIME_REQ;\n')
f.write('wire limit_req;\n')
f.write('assign limit_req = S_LIMIT_REQ;\n')
f.write('reg [31:0] write_state_value;\n')
f.write('reg write_req;\n')
f.write('\n')
f.write('reg [31:0] state_reg;\n')
f.write('reg [7:0] owner_id;\n')
f.write('reg [11:0] time_out;\n')
f.write('reg [11:0] limit;\n')
f.write('reg [7:0]  write_state_owner_id;\n')
f.write('reg [11:0] write_state_time_out;\n')
f.write('reg [11:0] write_state_limit;\n')
f.write('reg [11:0] next_time_out;\n')
f.write('reg [11:0] next_limit;\n')

f.write('\n')

f.write('assign  S_SYSTEM_STATE_REG = state_reg;\n') 
	  
f.write('\n')
f.write('reg  Octopos_resetn;\n')
f.write('assign  S_INTERNAL_MAILBOX_RESETN = Octopos_resetn;\n')

f.write('//Copy from main file\n')
f.write('`define ID0 8\'d0\n')
f.write('`define ID1 8\'d1\n')
f.write('`define ID2 8\'d2\n')
f.write('`define ID3 8\'d3\n')
f.write('`define ID4 8\'d4\n')
f.write('`define ID5 8\'d5\n')
f.write('`define ID6 8\'d6\n')
f.write('`define ID7 8\'d7\n')
f.write('`define YIELD_ID 8\'d255\n')
f.write('`define ID_FIXED 9\'b111111111\n')
f.write('`define INFINITY 12\'hFFF\n')
f.write('`define NO_ACCESS 32\'hDEAD_BEEF\n')

f.write('//Combinational logic\n')
f.write('//State register break down\n')
f.write('always @(*)\n')
f.write('begin\n')
f.write('\t//For System State register\n')
f.write('\towner_id = state_reg[31:24];\n')
f.write('\tlimit = state_reg[23:12];\n')
f.write('\ttime_out = state_reg[11:0];\n')
f.write('\t//For to be writtern register\n')
f.write('\twrite_state_owner_id = write_state_value[31:24];\n')
f.write('\twrite_state_limit = write_state_value[23:12];\n')
f.write('\twrite_state_time_out = write_state_value[11:0];\n')
f.write('end\n')


f.write('//Multiplexer for write_state_value and write_req\n')
f.write('always @(*)\n')
f.write('begin\n')
f.write('\tcase(owner_id)\n')
for i in range(0,num_of_ports):
    f.write('\t\t`ID%d: begin\n' % i)
    f.write('\t\t\twrite_state_value = S_WRITE_STATE_VALUE_%d;\n' % i)
    f.write('\t\t\twrite_req = S_WRITE_REQ_%d;\n' % i)
    f.write('\t\tend\n')
    
f.write('\t\tdefault: begin\n')
f.write('\t\t\twrite_state_value = 32\'b0;\n')
f.write('\t\t\twrite_req = 1\'b0;\n')
f.write('\t\tend\n')
f.write('\tendcase\n')
f.write('end\n')

f.write('//Generate a siganl for expired or yield\n')
f.write('always @(*)\n')
f.write('begin\n')
f.write('\tif( (limit == 8\'b0) || (time_out == 12\'b0) || ( (write_req == 1\'b1) && (write_state_owner_id == `YIELD_ID) && (owner_id != `ID0) ) )\n')
f.write('\t\texpire_or_yield_req = 1\'b1;\n')
f.write('\telse\n')
f.write('\t\texpire_or_yield_req = 1\'b0;\n')
f.write('end\n')	
f.write('//Generate a signal to know when resource manager wants to delegate mailbox to another domain\n')
f.write('// only resource manager can do the delegation\n')
f.write('// the domain 0xFF is reserved for yielding and cannot be used as\n')
f.write('// delegation, to ensure availability we do not allow inifint\n')
f.write('// delagation \n')
f.write('always @(*)\n')
f.write('begin\n')
f.write('\tif( (write_req == 1\'b1) && (owner_id == `ID0) && (write_state_owner_id != `YIELD_ID) && (write_state_owner_id != `ID0) && (write_state_time_out != `INFINITY) )\n')
f.write('\t\tdeligate_req = 1\'b1;\n')
f.write('\telse\n')
f.write('\t\tdeligate_req = 1\'b0;\n')
f.write('end\n')

f.write('//Calculate the normal next values for time_out and limit  \n ') #comment
f.write('always @(*)\n')
f.write('begin\n')
f.write('\tif( limit == 0 )\n')
f.write('\t\tnext_limit = 1\'b0;\n')
f.write('\telse if ( limit == `INFINITY)\n')
f.write('\t\tnext_limit  = `INFINITY;\n')
f.write('\telse\n')
f.write('\t\tnext_limit  = limit - 1\'b1;\n')
f.write('end\n')

f.write('always @(*)\n')
f.write('begin\n')
f.write('\tif( time_out == 0 )\n')
f.write('\t\tnext_time_out = 1\'b0;\n')
f.write('\telse if ( time_out == `INFINITY)\n')
f.write('\t\tnext_time_out  = `INFINITY;\n')
f.write('\telse\n')
f.write('\t\tnext_time_out  = time_out - 1\'b1;\n')
f.write('end\n\n')


f.write('//FlipFlops for the main state_reg and  ( and the main Multiplexer chain)\n')
f.write('always @( posedge clk )\n')
f.write('begin\n')
f.write('\tif( resetn == 1\'b0 )\n')
f.write('\tbegin\n')
f.write('\t\t// on reset give the infinit amount of limits to the first enclave\n')
f.write('\t\tstate_reg <= { `ID0 , `INFINITY, `INFINITY};\n')
f.write('\t\tOctopos_resetn <= 1\'b1;\n')
f.write('\tend\n')
f.write('\telse\n')
f.write('\tbegin\n')
f.write('\t\tif( deligate_req == 1\'b1) begin\n')
f.write('\t\t\tstate_reg <= write_state_value;\n')
f.write('\t\t\tOctopos_resetn <= 1\'b0;\n')
f.write('\t\tend\n')
f.write('\t\telse if(expire_or_yield_req == 1\'b1)\n')
f.write('\t\tbegin\n')
f.write('\t\t\tstate_reg <= { `ID0 , `INFINITY, `INFINITY};\n')
f.write('\t\t\tOctopos_resetn <= 1\'b0;\n')
f.write('\t\tend\n')
f.write('\t\telse if ( (limit_req & timer_req) == 1\'b1)\n')
f.write('\t\tbegin\n')
f.write('\t\t\tstate_reg <= {owner_id, next_limit , next_time_out};\n')
f.write('\t\t\tOctopos_resetn <= 1\'b1;\n')
f.write('\t\tend\n')
f.write('\t\telse if (limit_req == 1\'b1)\n')
f.write('\t\tbegin\n')
f.write('\t\t\tstate_reg <= {owner_id, next_limit , time_out};\n')
f.write('\t\t\tOctopos_resetn <= 1\'b1;\n')
f.write('\t\tend\n')
f.write('\t\telse if (timer_req == 1\'b1)\n')
f.write('\t\tbegin\n')
f.write('\t\t\tstate_reg <= {owner_id , limit , next_time_out};\n')
f.write('\t\t\tOctopos_resetn <= 1\'b1;\n')
f.write('\t\tend\n')
f.write('\t\telse\n')
f.write('\t\tbegin\n')
f.write('\t\t\tstate_reg <= state_reg;\n')
f.write('\t\t\tOctopos_resetn <= 1\'b1;\n')
f.write('\t\tend\n')
f.write('\tend\n')
f.write('end\n')

for i in range(0,num_of_ports):
    f.write('//Control Interface %d\n' % i)	    
    f.write('Octopos_MailBox_Ctrl_Interface_Manager  Interface_%d(\n' % i)
    f.write('\t.S_CLK(S_CLK),\n')
    f.write('\t.S_ARESETN(S_ARESETN),\n')
    f.write('\t.S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),\n')
    f.write('\t.S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_%d),\n' % i)
    f.write('\t.S_READ_STATE_VALUE(S_READ_STATE_VALUE_%d),\n' % i)
    f.write('\t.S_INTERRUPT(S_INTERRUPT_%d),\n' % i)
    f.write('\t.S_ID({1\'b0,`ID%d})\n' % i)
    f.write(');\n')

i = 'fixed'
f.write('//Control Interface %s\n' % i)	    
f.write('Octopos_MailBox_Ctrl_Interface_Manager  Interface_%s(\n' % i)
f.write('\t.S_CLK(S_CLK),\n')
f.write('\t.S_ARESETN(S_ARESETN),\n')
f.write('\t.S_SYSTEM_STATE_REG(S_SYSTEM_STATE_REG),\n')
f.write('\t.S_INTERRUPT_CLEAR(S_INTERRUPT_CLEAR_%s),\n' % i)
f.write('\t.S_READ_STATE_VALUE(S_READ_STATE_VALUE_%s),\n' % i)
f.write('\t.S_INTERRUPT(S_INTERRUPT_%s),\n' % i)
f.write('\t.S_ID({1\'b0,`ID_FIXED})\n')
f.write(');\n')

f.write('\n')

f.write('endmodule\n')

