num_of_ports = 4;
manyWriter_OneReader =1;

version = 'v1_0'
suffix = ''
if(manyWriter_OneReader):
    suffix = "%dWriter_1Reader" % num_of_ports
else:
    suffix = "1Writer_%dReader" % num_of_ports

#f = open("sample.v","w+");
f = open("Octopos_MailBox_%s_%s.v" % (suffix,version),"w+");
#for i in 
#range(0,10):
#    f.write("this is a line %d\n" % i);

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
f.write('\tmodule Octopos_MailBox_%s_%s #\n'% (suffix,version))

f.write('\t//Parameters\n')
f.write('\t(\n') # parameter def start
f.write('\t\t// Parameters of Axi contrl Buses Interfaces\n') # comment
f.write('\t\tparameter integer C_S_ctrl_AXI_DATA_WIDTH	= 32,\n')
f.write('\t\tparameter integer C_S_ctrl_AXI_ADDR_WIDTH	= 4\n')
f.write('\t)\n') # parameter def end

f.write('\t//Ports\n')
f.write('\t(\n') # Ports def start
f.write('\t\t// MailBox Main Signals\n') # comment
f.write('\t\tinput wire S_CLK,\n')
f.write('\t\tinput wire S_ARESETN,\n')
for i in range(0,num_of_ports):
    f.write('\t\t// Ctrl%d AXI port\n' % i) # comment
    f.write('\t\tinput wire  s_ctrl%d_axi_aclk,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_aresetn,\n' % i)
    f.write('\t\tinput wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl%d_axi_awaddr,\n' % i)
    f.write('\t\tinput wire [2 : 0] s_ctrl%d_axi_awprot,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_awvalid,\n' % i)
    f.write('\t\toutput wire  s_ctrl%d_axi_awready,\n' % i)
    f.write('\t\tinput wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl%d_axi_wdata,\n' % i)
    f.write('\t\tinput wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl%d_axi_wstrb,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_wvalid,\n' % i)
    f.write('\t\toutput wire  s_ctrl%d_axi_wready,\n' % i)
    f.write('\t\toutput wire [1 : 0] s_ctrl%d_axi_bresp,\n' % i)
    f.write('\t\toutput wire  s_ctrl%d_axi_bvalid,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_bready,\n' % i)
    f.write('\t\tinput wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl%d_axi_araddr,\n' % i)
    f.write('\t\tinput wire [2 : 0] s_ctrl%d_axi_arprot,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_arvalid,\n' % i)
    f.write('\t\toutput wire  s_ctrl%d_axi_arready,\n' % i)
    f.write('\t\toutput wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl%d_axi_rdata,\n' % i)
    f.write('\t\toutput wire [1 : 0] s_ctrl%d_axi_rresp,\n' % i)
    f.write('\t\toutput wire  s_ctrl%d_axi_rvalid,\n' % i)
    f.write('\t\tinput wire  s_ctrl%d_axi_rready,\n' % i)
f.write('\t\t// Ctrl%s AXI port\n' % '_fixed') # comment
f.write('\t\tinput wire  s_ctrl%s_axi_aclk,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_aresetn,\n' % '_fixed')
f.write('\t\tinput wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl%s_axi_awaddr,\n' % '_fixed')
f.write('\t\tinput wire [2 : 0] s_ctrl%s_axi_awprot,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_awvalid,\n' % '_fixed')
f.write('\t\toutput wire  s_ctrl%s_axi_awready,\n' % '_fixed')
f.write('\t\tinput wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl%s_axi_wdata,\n' % '_fixed')
f.write('\t\tinput wire [(C_S_ctrl_AXI_DATA_WIDTH/8)-1 : 0] s_ctrl%s_axi_wstrb,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_wvalid,\n' % '_fixed')
f.write('\t\toutput wire  s_ctrl%s_axi_wready,\n' % '_fixed')
f.write('\t\toutput wire [1 : 0] s_ctrl%s_axi_bresp,\n' % '_fixed')
f.write('\t\toutput wire  s_ctrl%s_axi_bvalid,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_bready,\n' % '_fixed')
f.write('\t\tinput wire [C_S_ctrl_AXI_ADDR_WIDTH-1 : 0] s_ctrl%s_axi_araddr,\n' % '_fixed')
f.write('\t\tinput wire [2 : 0] s_ctrl%s_axi_arprot,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_arvalid,\n' % '_fixed')
f.write('\t\toutput wire  s_ctrl%s_axi_arready,\n' % '_fixed')
f.write('\t\toutput wire [C_S_ctrl_AXI_DATA_WIDTH-1 : 0] s_ctrl%s_axi_rdata,\n' % '_fixed')
f.write('\t\toutput wire [1 : 0] s_ctrl%s_axi_rresp,\n' % '_fixed')
f.write('\t\toutput wire  s_ctrl%s_axi_rvalid,\n' % '_fixed')
f.write('\t\tinput wire  s_ctrl%s_axi_rready,\n' % '_fixed')    
for i in range(0,num_of_ports):
    f.write('\t\t// data%d AXI port\n' % i) # comment
    f.write('\t\tinput wire S0_data%d_AXI_ACLK,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_ARESETN,\n' % i)
    f.write('\t\tinput wire [31 : 0] S0_data%d_AXI_AWADDR,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_AWVALID,\n' % i)
    f.write('\t\toutput wire S0_data%d_AXI_AWREADY,\n' % i)
    f.write('\t\tinput wire [31 : 0] S0_data%d_AXI_WDATA,\n' % i)
    f.write('\t\tinput wire [3 : 0] S0_data%d_AXI_WSTRB,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_WVALID,\n' % i)
    f.write('\t\toutput wire S0_data%d_AXI_WREADY,\n' % i)
    f.write('\t\toutput wire [1 : 0] S0_data%d_AXI_BRESP,\n' % i)
    f.write('\t\toutput wire S0_data%d_AXI_BVALID,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_BREADY,\n' % i)
    f.write('\t\tinput wire [31 : 0] S0_data%d_AXI_ARADDR,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_ARVALID,\n' % i)
    f.write('\t\toutput wire S0_data%d_AXI_ARREADY,\n' % i)
    f.write('\t\toutput wire [31 : 0] S0_data%d_AXI_RDATA,\n' % i)
    f.write('\t\toutput wire [1 : 0] S0_data%d_AXI_RRESP,\n' % i)
    f.write('\t\toutput wire S0_data%d_AXI_RVALID,\n' % i)
    f.write('\t\tinput wire S0_data%d_AXI_RREADY,\n' % i)
f.write('\t\t// data%s AXI port\n' % '_fixed') # comment
f.write('\t\tinput wire S1_data%s_AXI_ACLK,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_ARESETN,\n' % '_fixed')
f.write('\t\tinput wire [31 : 0] S1_data%s_AXI_AWADDR,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_AWVALID,\n' % '_fixed')
f.write('\t\toutput wire S1_data%s_AXI_AWREADY,\n' % '_fixed')
f.write('\t\tinput wire [31 : 0] S1_data%s_AXI_WDATA,\n' % '_fixed')
f.write('\t\tinput wire [3 : 0] S1_data%s_AXI_WSTRB,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_WVALID,\n' % '_fixed')
f.write('\t\toutput wire S1_data%s_AXI_WREADY,\n' % '_fixed')
f.write('\t\toutput wire [1 : 0] S1_data%s_AXI_BRESP,\n' % '_fixed')
f.write('\t\toutput wire S1_data%s_AXI_BVALID,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_BREADY,\n' % '_fixed')
f.write('\t\tinput wire [31 : 0] S1_data%s_AXI_ARADDR,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_ARVALID,\n' % '_fixed')
f.write('\t\toutput wire S1_data%s_AXI_ARREADY,\n' % '_fixed')
f.write('\t\toutput wire [31 : 0] S1_data%s_AXI_RDATA,\n' % '_fixed')
f.write('\t\toutput wire [1 : 0] S1_data%s_AXI_RRESP,\n' % '_fixed')
f.write('\t\toutput wire S1_data%s_AXI_RVALID,\n' % '_fixed')
f.write('\t\tinput wire S1_data%s_AXI_RREADY,\n' % '_fixed')

f.write('\t\t// Busy lines\n') # comment
for i in range(0,8):
    f.write('\t\toutput wire busy%d,\n' %i)      

f.write('\t\t// Interrupt lines\n') # comment
for i in range(0,num_of_ports):
    f.write('\t\toutput wire Interrupt_%d,\n' % i) 
    f.write('\t\toutput wire Interrupt_ctrl%d,\n' % i)
f.write('\t\toutput wire Interrupt_fixed,\n') 
f.write('\t\toutput wire Interrupt_ctrl_fixed\n') 
f.write('\t);//Ports def end\n') # Ports def end

#Id defenitions
f.write('\t//Constant defenitions\n')
for i in range(0,8):
    f.write('\t`define ID%d 8\'d%d\n' % (i,i) )
f.write('\n')    
f.write('\t`define BUSY_PATTERN0 8\'b00000001\n')
f.write('\t`define BUSY_PATTERN1 8\'b00000010\n')
f.write('\t`define BUSY_PATTERN2 8\'b00000100\n')
f.write('\t`define BUSY_PATTERN3 8\'b00001000\n')
f.write('\t`define BUSY_PATTERN4 8\'b00010000\n')
f.write('\t`define BUSY_PATTERN5 8\'b00100000\n')
f.write('\t`define BUSY_PATTERN6 8\'b01000000\n')
f.write('\t`define BUSY_PATTERN7 8\'b10000000\n')
f.write('\n')    
f.write('\t`define TIMER_MAX 32\'hF0000000\n')
f.write('\t//System registers (FlipFlops) defenitions\n')#comment
f.write('\treg [31:0] timer_counter;\n' )

f.write('\t//System wires(Some defined as reg to be used in always blocks)defenitions\n')#comment
f.write('\twire [31:0] state_reg;\n')
f.write('\twire [7:0] owner_id;\n')
f.write('\tassign owner_id = state_reg[31:24];\n')
f.write('\twire Octopos_resetn;\n')
f.write('\treg [7:0] busy;\n')
f.write('\treg timer_req;\n')
f.write('\treg limit_req;\n')
for i in range(0,num_of_ports):
    f.write('\twire [31:0] s_ctrl%d_write_state_value;\n' % i) 
    f.write('\twire [31:0] s_ctrl%d_read_state_value;\n' % i) 
    f.write('\twire  s_ctrl%d_write_req;\n' % i)
f.write('\twire [31:0] s_ctrl%s_write_state_value;\n' % '_fixed') 
f.write('\twire [31:0] s_ctrl%s_read_state_value;\n' % '_fixed') 
f.write('\twire  s_ctrl%s_write_req;\n' % '_fixed')
f.write('\n')    

f.write('\t//Interrupt clear signals\n')#comment
for i in range(0,num_of_ports):
    f.write('\twire Interrupt_clear_ctrl%d;\n' % i)
f.write('\twire Interrupt_clear_ctrl_fixed;\n')
f.write('\n')    

f.write('\t//Internal mailbox programable side signals\n')#comment
f.write('\treg S0_data_AXI_ACLK;\n')
f.write('\treg S0_data_AXI_ARESETN;\n')
f.write('\treg [31 : 0] S0_data_AXI_AWADDR;\n')
f.write('\treg S0_data_AXI_AWVALID;\n')
f.write('\twire S0_data_AXI_AWREADY;\n')
f.write('\treg [31 : 0] S0_data_AXI_WDATA;\n')
f.write('\treg [3 : 0] S0_data_AXI_WSTRB;\n')
f.write('\treg S0_data_AXI_WVALID;\n')
f.write('\twire S0_data_AXI_WREADY;\n')
f.write('\twire [1 : 0] S0_data_AXI_BRESP;\n')
f.write('\twire S0_data_AXI_BVALID;\n')
f.write('\treg S0_data_AXI_BREADY;\n')
f.write('\treg [31 : 0] S0_data_AXI_ARADDR;\n')
f.write('\treg S0_data_AXI_ARVALID;\n')
f.write('\twire S0_data_AXI_ARREADY;\n')
f.write('\twire [31 : 0] S0_data_AXI_RDATA;\n')
f.write('\twire [1 : 0] S0_data_AXI_RRESP;\n')
f.write('\twire S0_data_AXI_RVALID;\n')
f.write('\treg S0_data_AXI_RREADY;\n')
f.write('\twire Interrupt_S0;\n')

f.write('\t//Temporary reg signals for data output wires\n')#comment
f.write('\t//to use them in always blocks\n')#comment
for i in range(0,num_of_ports):
    f.write('\t// Temp regs for port %d\n' %i)
    f.write('\treg S0_data%d_AXI_AWREADY_reg;\n' % i)
    f.write('\treg S0_data%d_AXI_WREADY_reg;\n' % i)
    f.write('\treg [1 : 0] S0_data%d_AXI_BRESP_reg;\n' % i)
    f.write('\treg S0_data%d_AXI_BVALID_reg;\n' % i)
    f.write('\treg S0_data%d_AXI_ARREADY_reg;\n' % i)
    f.write('\treg [31 : 0] S0_data%d_AXI_RDATA_reg;\n' % i)
    f.write('\treg [1 : 0] S0_data%d_AXI_RRESP_reg;\n' % i)
    f.write('\treg S0_data%d_AXI_RVALID_reg;\n' % i)
#    f.write('\treg S0_data%d_AXI_RVALID_reg;\n' % i)
    f.write('\treg Interrupt%d_reg;\n' % i)

f.write('\t//Connect output wires to temporary regs \n')#comment
f.write('\twire clk;\n')
f.write('\twire resetn;\n')
f.write('\tassign clk = S_CLK;\n')
f.write('\tassign resetn = S_ARESETN;\n')
	
for i in range(0,num_of_ports):
    f.write('\t// Assignment for port %d\n' %i)
    f.write('\tassign S0_data%d_AXI_WREADY = S0_data%d_AXI_WREADY_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_BRESP = S0_data%d_AXI_BRESP_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_BVALID = S0_data%d_AXI_BVALID_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_AWREADY = S0_data%d_AXI_AWREADY_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_ARREADY = S0_data%d_AXI_ARREADY_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_RDATA = S0_data%d_AXI_RDATA_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_RRESP = S0_data%d_AXI_RRESP_reg;\n' % (i,i))
    f.write('\tassign S0_data%d_AXI_RVALID = S0_data%d_AXI_RVALID_reg;\n' % (i,i))
    f.write('\tassign Interrupt_%d = Interrupt%d_reg;\n' % (i,i))

f.write('\n')    

f.write('\t// Assignment for busy signals\n')#comment
for i in range(0,8):
    f.write('\tassign busy%d = busy[%d];\n' % (i,i))
f.write('\n')    

f.write('\n\t//Multiplexer for Mailbox programable port \n')#comment
f.write('\talways @(*)\n')
f.write('\tbegin\n')
f.write('\t\tcase(owner_id)\n')
for i in range(0,num_of_ports):
    f.write('\t\t\t`ID%d: begin\n' %i)
# Mailbox input signals
    f.write('\t\t\t\t// Mailbox input signals\n') #comment
    f.write('\t\t\t\tS0_data_AXI_ACLK = S0_data%d_AXI_ACLK;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_ARESETN = S0_data%d_AXI_ARESETN;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_AWADDR = S0_data%d_AXI_AWADDR;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_AWVALID = S0_data%d_AXI_AWVALID;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_WDATA = S0_data%d_AXI_WDATA;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_WSTRB = S0_data%d_AXI_WSTRB;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_WVALID = S0_data%d_AXI_WVALID;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_BREADY = S0_data%d_AXI_BREADY;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_ARADDR = S0_data%d_AXI_ARADDR;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_ARVALID = S0_data%d_AXI_ARVALID;\n' % i )
    f.write('\t\t\t\tS0_data_AXI_RREADY = S0_data%d_AXI_RREADY;\n' % i )
# Mailbox output signals        
    f.write('\t\t\t\t//Mailbox output signals\n') #comment    
    f.write('\t\t\t\t////Outputs for current ID\n') #comment    
    f.write('\t\t\t\tS0_data%d_AXI_RVALID_reg = S0_data_AXI_RVALID;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_RRESP_reg = S0_data_AXI_RRESP;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_RDATA_reg = S0_data_AXI_RDATA;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_ARREADY_reg = S0_data_AXI_ARREADY;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_BVALID_reg = S0_data_AXI_BVALID;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_BRESP_reg = S0_data_AXI_BRESP;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_WREADY_reg = S0_data_AXI_WREADY;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_AWREADY_reg = S0_data_AXI_AWREADY;\n' % i )
    f.write('\t\t\t\tInterrupt%d_reg = Interrupt_S0;\n' % i )
    f.write('\t\t\t\t////Outputs for other IDs\n') #comment
    for j in range(0,num_of_ports):
        if( i!=j):
            f.write('\t\t\t\t//////Outputs for  ID%d\n' % j) #comment
            f.write('\t\t\t\tS0_data%d_AXI_RVALID_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_RRESP_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_RDATA_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_ARREADY_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_BVALID_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_BRESP_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_WREADY_reg = 0;\n' % j )
            f.write('\t\t\t\tS0_data%d_AXI_AWREADY_reg = 0;\n' % j )
            f.write('\t\t\t\tInterrupt%d_reg = 0;\n' % j )
    f.write('\t\t\tend\n')
f.write('\t\t\tdefault: begin\n')
f.write('\t\t\t\t// Mailbox input signals\n') #comment	
f.write('\t\t\t\tS0_data_AXI_ACLK = 0;\n')
f.write('\t\t\t\tS0_data_AXI_ARESETN = 0;\n')
f.write('\t\t\t\tS0_data_AXI_AWADDR = 0;\n')
f.write('\t\t\t\tS0_data_AXI_AWVALID = 0;\n')
f.write('\t\t\t\tS0_data_AXI_WDATA = 0;\n')
f.write('\t\t\t\tS0_data_AXI_WSTRB = 0;\n')
f.write('\t\t\t\tS0_data_AXI_WVALID = 0;\n')
f.write('\t\t\t\tS0_data_AXI_BREADY = 0;\n')
f.write('\t\t\t\tS0_data_AXI_ARADDR = 0;\n')
f.write('\t\t\t\tS0_data_AXI_ARVALID = 0;\n')
f.write('\t\t\t\tS0_data_AXI_RREADY = 0; \n')
f.write('\t\t\t\t//Mailbox output signals\n') #comment    
f.write('\t\t\t\t////Outputs for All IDs\n') #comment
for i in range(0,num_of_ports):
# Mailbox output signals       
    f.write('\t\t\t\t////Outputs for ID%d\n' % i) #comment     
    f.write('\t\t\t\tS0_data%d_AXI_RVALID_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_RRESP_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_RDATA_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_ARREADY_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_BVALID_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_BRESP_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_WREADY_reg = 0;\n' % i )
    f.write('\t\t\t\tS0_data%d_AXI_AWREADY_reg = 0;\n' % i )
    f.write('\t\t\t\tInterrupt%d_reg = 0;\n' % i )	
f.write('\t\t\tend\n')	
f.write('\t\tendcase\n')
f.write('\tend//for always @(*)\n')		

f.write('\n')    

f.write('\n\t//Multiplexer for BUSY signals \n')#comment
f.write('\talways @(*)\n')
f.write('\tbegin\n')
f.write('\t\tcase(owner_id)\n')
for i in range(0,8):
    f.write('\t\t\t`ID%d:\n' %i)
    f.write('\t\t\t\tbusy = `BUSY_PATTERN%d;\n' %i)
f.write('\t\t\tdefault:\n')
f.write('\t\t\t\tbusy = 8\'b0;\n')
f.write('\t\tendcase\n')
f.write('\tend\n')

f.write('\n')

#Internal Mailbox instantiation
f.write('\n\t//Internal MailBox Instantiation\n')
f.write('\tmailbox_0 mb0 (\n')
f.write('\t\t.S0_AXI_ACLK(S0_data_AXI_ACLK),        // input wire S0_AXI_ACLK\n')
f.write('\t\t.S0_AXI_ARESETN(S0_data_AXI_ARESETN & Octopos_resetn),  // input wire S0_AXI_ARESETN\n')
f.write('\t\t.S0_AXI_AWADDR(S0_data_AXI_AWADDR),    // input wire [31 : 0] S0_AXI_AWADDR\n')
f.write('\t\t.S0_AXI_AWVALID(S0_data_AXI_AWVALID),  // input wire S0_AXI_AWVALID\n')
f.write('\t\t.S0_AXI_AWREADY(S0_data_AXI_AWREADY),  // output wire S0_AXI_AWREADY\n')
f.write('\t\t.S0_AXI_WDATA(S0_data_AXI_WDATA),      // input wire [31 : 0] S0_AXI_WDATA\n')
f.write('\t\t.S0_AXI_WSTRB(S0_data_AXI_WSTRB),      // input wire [3 : 0] S0_AXI_WSTRB\n')
f.write('\t\t.S0_AXI_WVALID(S0_data_AXI_WVALID),    // input wire S0_AXI_WVALID\n')
f.write('\t\t.S0_AXI_WREADY(S0_data_AXI_WREADY),    // output wire S0_AXI_WREADY\n')
f.write('\t\t.S0_AXI_BRESP(S0_data_AXI_BRESP),      // output wire [1 : 0] S0_AXI_BRESP\n')
f.write('\t\t.S0_AXI_BVALID(S0_data_AXI_BVALID),    // output wire S0_AXI_BVALID\n')
f.write('\t\t.S0_AXI_BREADY(S0_data_AXI_BREADY),    // input wire S0_AXI_BREADY\n')
f.write('\t\t.S0_AXI_ARADDR(S0_data_AXI_ARADDR),    // input wire [31 : 0] S0_AXI_ARADDR\n')
f.write('\t\t.S0_AXI_ARVALID(S0_data_AXI_ARVALID),  // input wire S0_AXI_ARVALID\n')
f.write('\t\t.S0_AXI_ARREADY(S0_data_AXI_ARREADY),  // output wire S0_AXI_ARREADY\n')
f.write('\t\t.S0_AXI_RDATA(S0_data_AXI_RDATA),      // output wire [31 : 0] S0_AXI_RDATA\n')
f.write('\t\t.S0_AXI_RRESP(S0_data_AXI_RRESP),      // output wire [1 : 0] S0_AXI_RRESP\n')
f.write('\t\t.S0_AXI_RVALID(S0_data_AXI_RVALID),    // output wire S0_AXI_RVALID\n')
f.write('\t\t.S0_AXI_RREADY(S0_data_AXI_RREADY),    // input wire S0_AXI_RREADY\n')
f.write('\t\t.S1_AXI_ACLK(S1_data_fixed_AXI_ACLK),        // input wire S1_AXI_ACLK\n')
f.write('\t\t.S1_AXI_ARESETN(S1_data_fixed_AXI_ARESETN & Octopos_resetn),  // input wire S1_AXI_ARESETN\n')
f.write('\t\t.S1_AXI_AWADDR(S1_data_fixed_AXI_AWADDR),    // input wire [31 : 0] S1_AXI_AWADDR\n')
f.write('\t\t.S1_AXI_AWVALID(S1_data_fixed_AXI_AWVALID),  // input wire S1_AXI_AWVALID\n')
f.write('\t\t.S1_AXI_AWREADY(S1_data_fixed_AXI_AWREADY),  // output wire S1_AXI_AWREADY\n')
f.write('\t\t.S1_AXI_WDATA(S1_data_fixed_AXI_WDATA),      // input wire [31 : 0] S1_AXI_WDATA\n')
f.write('\t\t.S1_AXI_WSTRB(S1_data_fixed_AXI_WSTRB),      // input wire [3 : 0] S1_AXI_WSTRB\n')
f.write('\t\t.S1_AXI_WVALID(S1_data_fixed_AXI_WVALID),    // input wire S1_AXI_WVALID\n')
f.write('\t\t.S1_AXI_WREADY(S1_data_fixed_AXI_WREADY),    // output wire S1_AXI_WREADY\n')
f.write('\t\t.S1_AXI_BRESP(S1_data_fixed_AXI_BRESP),      // output wire [1 : 0] S1_AXI_BRESP\n')
f.write('\t\t.S1_AXI_BVALID(S1_data_fixed_AXI_BVALID),    // output wire S1_AXI_BVALID\n')
f.write('\t\t.S1_AXI_BREADY(S1_data_fixed_AXI_BREADY),    // input wire S1_AXI_BREADY\n')
f.write('\t\t.S1_AXI_ARADDR(S1_data_fixed_AXI_ARADDR),    // input wire [31 : 0] S1_AXI_ARADDR\n')
f.write('\t\t.S1_AXI_ARVALID(S1_data_fixed_AXI_ARVALID),  // input wire S1_AXI_ARVALID\n')
f.write('\t\t.S1_AXI_ARREADY(S1_data_fixed_AXI_ARREADY),  // output wire S1_AXI_ARREADY\n')
f.write('\t\t.S1_AXI_RDATA(S1_data_fixed_AXI_RDATA),      // output wire [31 : 0] S1_AXI_RDATA\n')
f.write('\t\t.S1_AXI_RRESP(S1_data_fixed_AXI_RRESP),      // output wire [1 : 0] S1_AXI_RRESP\n')
f.write('\t\t.S1_AXI_RVALID(S1_data_fixed_AXI_RVALID),    // output wire S1_AXI_RVALID\n')
f.write('\t\t.S1_AXI_RREADY(S1_data_fixed_AXI_RREADY),    // input wire S1_AXI_RREADY\n')
f.write('\t\t.Interrupt_0(Interrupt_S0),        // output wire Interrupt_0\n')
f.write('\t\t.Interrupt_1(Interrupt_fixed)         // output wire Interrupt_1\n')
f.write('\t);\n')
	
f.write('\t//Control AXI buses instantiation\n')
for i in range(0,num_of_ports):    
    f.write('\t//Control AXI bus%d instantiation\n' % i)
    f.write('\tOctopos_MailBox_ctrl_AXI # (\n')
    f.write('\t\t.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),\n')
    f.write('\t\t.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)\n')
    f.write('\t) Octopos_MailBox_ctrl_AXI_ctrl%d_instance (\n' % i)
    f.write('\t\t.S_AXI_ACLK(s_ctrl%d_axi_aclk),\n' % i )
    f.write('\t\t.S_AXI_ARESETN(s_ctrl%d_axi_aresetn),\n' % i )
    f.write('\t\t.S_AXI_AWADDR(s_ctrl%d_axi_awaddr),\n' % i )
    f.write('\t\t.S_AXI_AWPROT(s_ctrl%d_axi_awprot),\n' % i )
    f.write('\t\t.S_AXI_AWVALID(s_ctrl%d_axi_awvalid),\n' % i )
    f.write('\t\t.S_AXI_AWREADY(s_ctrl%d_axi_awready),\n' % i )
    f.write('\t\t.S_AXI_WDATA(s_ctrl%d_axi_wdata),\n' % i )
    f.write('\t\t.S_AXI_WSTRB(s_ctrl%d_axi_wstrb),\n' % i )
    f.write('\t\t.S_AXI_WVALID(s_ctrl%d_axi_wvalid),\n' % i )
    f.write('\t\t.S_AXI_WREADY(s_ctrl%d_axi_wready),\n' % i )
    f.write('\t\t.S_AXI_BRESP(s_ctrl%d_axi_bresp),\n' % i )
    f.write('\t\t.S_AXI_BVALID(s_ctrl%d_axi_bvalid),\n' % i )
    f.write('\t\t.S_AXI_BREADY(s_ctrl%d_axi_bready),\n' % i )
    f.write('\t\t.S_AXI_ARADDR(s_ctrl%d_axi_araddr),\n' % i )
    f.write('\t\t.S_AXI_ARPROT(s_ctrl%d_axi_arprot),\n' % i )
    f.write('\t\t.S_AXI_ARVALID(s_ctrl%d_axi_arvalid),\n' % i )
    f.write('\t\t.S_AXI_ARREADY(s_ctrl%d_axi_arready),\n' % i )
    f.write('\t\t.S_AXI_RDATA(s_ctrl%d_axi_rdata),\n' % i )
    f.write('\t\t.S_AXI_RRESP(s_ctrl%d_axi_rresp),\n' % i )
    f.write('\t\t.S_AXI_RVALID(s_ctrl%d_axi_rvalid),\n' % i )
    f.write('\t\t.S_AXI_RREADY(s_ctrl%d_axi_rready),\n' % i )
    f.write('\t\t.S_WRITE_REQ(s_ctrl%d_write_req),\n' % i )
    f.write('\t\t.S_WRITE_STATE_VALUE(s_ctrl%d_write_state_value),\n' % i )
    f.write('\t\t.S_READ_STATE_VALUE(s_ctrl%d_read_state_value),\n' % i )
    f.write('\t\t.S_INTERRUPT_CLEAR(Interrupt_clear_ctrl%d)\n' % i)
    f.write('\t);\n')

f.write('\t//Control AXI bus%s instantiation\n' % '_fixed')
f.write('\tOctopos_MailBox_ctrl_AXI # (\n')
f.write('\t\t.C_S_AXI_DATA_WIDTH(C_S_ctrl_AXI_DATA_WIDTH),\n')
f.write('\t\t.C_S_AXI_ADDR_WIDTH(C_S_ctrl_AXI_ADDR_WIDTH)\n')
f.write('\t) Octopos_MailBox_ctrl_AXI_ctrl%s_instance (\n' % '_fixed')
f.write('\t\t.S_AXI_ACLK(s_ctrl%s_axi_aclk),\n' % '_fixed' )
f.write('\t\t.S_AXI_ARESETN(s_ctrl%s_axi_aresetn),\n' % '_fixed' )
f.write('\t\t.S_AXI_AWADDR(s_ctrl%s_axi_awaddr),\n' % '_fixed' )
f.write('\t\t.S_AXI_AWPROT(s_ctrl%s_axi_awprot),\n' % '_fixed' )
f.write('\t\t.S_AXI_AWVALID(s_ctrl%s_axi_awvalid),\n' % '_fixed' )
f.write('\t\t.S_AXI_AWREADY(s_ctrl%s_axi_awready),\n' % '_fixed' )
f.write('\t\t.S_AXI_WDATA(s_ctrl%s_axi_wdata),\n' % '_fixed' )
f.write('\t\t.S_AXI_WSTRB(s_ctrl%s_axi_wstrb),\n' % '_fixed' )
f.write('\t\t.S_AXI_WVALID(s_ctrl%s_axi_wvalid),\n' % '_fixed' )
f.write('\t\t.S_AXI_WREADY(s_ctrl%s_axi_wready),\n' % '_fixed' )
f.write('\t\t.S_AXI_BRESP(s_ctrl%s_axi_bresp),\n' % '_fixed' )
f.write('\t\t.S_AXI_BVALID(s_ctrl%s_axi_bvalid),\n' % '_fixed' )
f.write('\t\t.S_AXI_BREADY(s_ctrl%s_axi_bready),\n' % '_fixed' )
f.write('\t\t.S_AXI_ARADDR(s_ctrl%s_axi_araddr),\n' % '_fixed' )
f.write('\t\t.S_AXI_ARPROT(s_ctrl%s_axi_arprot),\n' % '_fixed' )
f.write('\t\t.S_AXI_ARVALID(s_ctrl%s_axi_arvalid),\n' % '_fixed' )
f.write('\t\t.S_AXI_ARREADY(s_ctrl%s_axi_arready),\n' % '_fixed' )
f.write('\t\t.S_AXI_RDATA(s_ctrl%s_axi_rdata),\n' % '_fixed' )
f.write('\t\t.S_AXI_RRESP(s_ctrl%s_axi_rresp),\n' % '_fixed' )
f.write('\t\t.S_AXI_RVALID(s_ctrl%s_axi_rvalid),\n' % '_fixed' )
f.write('\t\t.S_AXI_RREADY(s_ctrl%s_axi_rready),\n' % '_fixed' )
f.write('\t\t.S_WRITE_REQ(s_ctrl%s_write_req),\n' % '_fixed' )
f.write('\t\t.S_WRITE_STATE_VALUE(s_ctrl%s_write_state_value),\n' % '_fixed' )
f.write('\t\t.S_READ_STATE_VALUE(s_ctrl%s_read_state_value),\n' % '_fixed' )
f.write('\t\t.S_INTERRUPT_CLEAR(Interrupt_clear_ctrl%s)\n' % '_fixed')
f.write('\t);\n')

f.write('\n\t//Octopos Mailbox Main logic\n') #comment
f.write('\n')
f.write('\tOctopos_MailBox_Main_Logic  Main_Logic (\n') 
f.write('\t\t.S_CLK(S_CLK),\n') 
f.write('\t\t.S_ARESETN(S_ARESETN),\n') 
f.write('\t\t.S_SYSTEM_STATE_REG(state_reg),\n') 
f.write('\t\t.S_LIMIT_REQ(limit_req),\n') 
f.write('\t\t.S_TIME_REQ(timer_req),\n') 
f.write('\t\t.S_INTERNAL_MAILBOX_RESETN(Octopos_resetn),\n') 
for i in range(0,num_of_ports):    
    f.write('\t\t.S_WRITE_REQ_%d(s_ctrl%d_write_req),\n' % (i,i)) 
    f.write('\t\t.S_WRITE_STATE_VALUE_%d(s_ctrl%d_write_state_value),\n' % (i,i)) 
    f.write('\t\t.S_READ_STATE_VALUE_%d(s_ctrl%d_read_state_value),\n'  % (i,i)) 
    f.write('\t\t.S_INTERRUPT_CLEAR_%d(Interrupt_clear_ctrl%d),\n' % (i,i)) 
    f.write('\t\t.S_INTERRUPT_%d(Interrupt_ctrl%d),\n' % (i,i)) 

f.write('\t\t.S_WRITE_REQ_%s(s_ctrl_%s_write_req),\n' % ('fixed','fixed')) 
f.write('\t\t.S_WRITE_STATE_VALUE_%s(s_ctrl_%s_write_state_value),\n' % ('fixed','fixed')) 
f.write('\t\t.S_READ_STATE_VALUE_%s(s_ctrl_%s_read_state_value),\n' % ('fixed','fixed')) 
f.write('\t\t.S_INTERRUPT_CLEAR_%s(Interrupt_clear_ctrl_%s),\n' % ('fixed','fixed')) 
f.write('\t\t.S_INTERRUPT_%s(Interrupt_ctrl_%s)\n' % ('fixed','fixed')) 
f.write('\t);\n') 



f.write('\n\t//Combinational logic\n\n ') #comment



f.write('\n\t//Generate timer_req and limit_req signals\n ') #comment
if(manyWriter_OneReader == 1):
    f.write('\talways @(*)\n')
    f.write('\tbegin\n')
    f.write('\t\tif((S1_data_fixed_AXI_ARADDR[8:0] == 8\'h08) && (S1_data_fixed_AXI_ARREADY ==1\'b1))\n')
    f.write('\t\t\tlimit_req = 1\'b1;\n')
    f.write('\t\telse\n')
    f.write('\t\t\tlimit_req = 1\'b0;\n')
    f.write('\tend\n')
else:
    f.write('\talways @(*)\n')
    f.write('\tbegin\n')
    f.write('\t\tif((S0_data_AXI_ARADDR[8:0] == 8\'h08) && (S0_data_AXI_ARREADY ==1\'b1))\n')
    f.write('\t\t\tlimit_req = 1\'b1;\n')
    f.write('\t\telse\n')
    f.write('\t\t\tlimit_req = 1\'b0;\n')
    f.write('\tend\n')

f.write('\talways @(*)\n')
f.write('\tbegin\n')
f.write('\t\tif(timer_counter == 32\'b0)\n')
f.write('\t\t\ttimer_req = 1\'b1;\n')
f.write('\t\telse\n')
f.write('\t\t\ttimer_req = 1\'b0;\n')
f.write('\tend\n')


f.write('\n\t//Sequential logic\n\n ') #comment

f.write('\t//TIMER\n') #comment
f.write('\talways @( posedge clk )\n')
f.write('\tbegin\n')
f.write('\t\tif( resetn == 1\'b0 )\n')
f.write('\t\t  begin\n')
f.write('\t\t    timer_counter <= `TIMER_MAX;\n')
f.write('\t\t  end\n')
f.write('\t\telse\n')
f.write('\t\t  begin\n')
f.write('\t\t\tif(timer_counter == 32\'b0)\n')
f.write('\t\t\t\ttimer_counter <= `TIMER_MAX;\n')
f.write('\t\t\telse\n')
f.write('\t\t\t\ttimer_counter <= timer_counter - 1;\n')
f.write('\t\t  end\n')
f.write('\tend\t \n')
f.write('\tendmodule\n') # module end
