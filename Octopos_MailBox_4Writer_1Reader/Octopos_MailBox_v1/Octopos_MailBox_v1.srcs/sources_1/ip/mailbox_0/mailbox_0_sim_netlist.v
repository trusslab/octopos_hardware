// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 17 12:07:50 2020
// Host        : myles-desktop running 64-bit Ubuntu 19.04
// Command     : write_verilog -force -mode funcsim
//               /home/mohammad/Octopos/from_zephyr/octopos_hardware/Octopos_MailBox_4Writer_1Reader/Octopos_MailBox_v1/Octopos_MailBox_v1.srcs/sources_1/ip/mailbox_0/mailbox_0_sim_netlist.v
// Design      : mailbox_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mailbox_0,mailbox,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mailbox,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module mailbox_0
   (S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    Interrupt_0,
    Interrupt_1);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S0_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S0_AXI_ACLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET S0_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input S0_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S0_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S0_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S0_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S0_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S0_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID" *) input S0_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY" *) output S0_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WDATA" *) input [31:0]S0_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB" *) input [3:0]S0_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WVALID" *) input S0_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WREADY" *) output S0_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BRESP" *) output [1:0]S0_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BVALID" *) output S0_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BREADY" *) input S0_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR" *) input [31:0]S0_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID" *) input S0_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY" *) output S0_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RDATA" *) output [31:0]S0_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RRESP" *) output [1:0]S0_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RVALID" *) output S0_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RREADY" *) input S0_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S1_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S1_AXI_ACLK, ASSOCIATED_BUSIF S1_AXI, ASSOCIATED_RESET S1_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input S1_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S1_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S1_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S1_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S1_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWVALID" *) input S1_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWREADY" *) output S1_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WDATA" *) input [31:0]S1_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WSTRB" *) input [3:0]S1_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WVALID" *) input S1_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WREADY" *) output S1_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BRESP" *) output [1:0]S1_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BVALID" *) output S1_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BREADY" *) input S1_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARADDR" *) input [31:0]S1_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARVALID" *) input S1_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARREADY" *) output S1_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RDATA" *) output [31:0]S1_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RRESP" *) output [1:0]S1_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RVALID" *) output S1_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RREADY" *) input S1_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_0 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT.Interrupt_0, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PortWidth 1" *) output Interrupt_0;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_1 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT.Interrupt_1, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PortWidth 1" *) output Interrupt_1;

  wire Interrupt_0;
  wire Interrupt_1;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWREADY;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire [1:0]S0_AXI_BRESP;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [1:0]S0_AXI_RRESP;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY;
  wire [3:0]S0_AXI_WSTRB;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWREADY;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire [1:0]S1_AXI_BRESP;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [1:0]S1_AXI_RRESP;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY;
  wire [3:0]S1_AXI_WSTRB;
  wire S1_AXI_WVALID;
  wire NLW_U0_M0_AXIS_TLAST_UNCONNECTED;
  wire NLW_U0_M0_AXIS_TVALID_UNCONNECTED;
  wire NLW_U0_M1_AXIS_TLAST_UNCONNECTED;
  wire NLW_U0_M1_AXIS_TVALID_UNCONNECTED;
  wire NLW_U0_S0_AXIS_TREADY_UNCONNECTED;
  wire NLW_U0_S1_AXIS_TREADY_UNCONNECTED;
  wire [31:0]NLW_U0_M0_AXIS_TDATA_UNCONNECTED;
  wire [31:0]NLW_U0_M1_AXIS_TDATA_UNCONNECTED;

  (* C_ASYNC_CLKS = "0" *) 
  (* C_ASYNC_INTERRUPTS = "1" *) 
  (* C_ENABLE_BUS_ERROR = "0" *) 
  (* C_EXT_RESET_HIGH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_IMPL_STYLE = "0" *) 
  (* C_INTERCONNECT_PORT_0 = "2" *) 
  (* C_INTERCONNECT_PORT_1 = "2" *) 
  (* C_M0_AXIS_DATA_WIDTH = "32" *) 
  (* C_M1_AXIS_DATA_WIDTH = "32" *) 
  (* C_MAILBOX_DEPTH = "64" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_S0_AXIS_DATA_WIDTH = "32" *) 
  (* C_S0_AXI_ADDR_WIDTH = "32" *) 
  (* C_S0_AXI_BASEADDR = "-1" *) 
  (* C_S0_AXI_DATA_WIDTH = "32" *) 
  (* C_S0_AXI_HIGHADDR = "0" *) 
  (* C_S1_AXIS_DATA_WIDTH = "32" *) 
  (* C_S1_AXI_ADDR_WIDTH = "32" *) 
  (* C_S1_AXI_BASEADDR = "-1" *) 
  (* C_S1_AXI_DATA_WIDTH = "32" *) 
  (* C_S1_AXI_HIGHADDR = "0" *) 
  mailbox_0_mailbox U0
       (.Interrupt_0(Interrupt_0),
        .Interrupt_1(Interrupt_1),
        .M0_AXIS_ACLK(1'b0),
        .M0_AXIS_TDATA(NLW_U0_M0_AXIS_TDATA_UNCONNECTED[31:0]),
        .M0_AXIS_TLAST(NLW_U0_M0_AXIS_TLAST_UNCONNECTED),
        .M0_AXIS_TREADY(1'b0),
        .M0_AXIS_TVALID(NLW_U0_M0_AXIS_TVALID_UNCONNECTED),
        .M1_AXIS_ACLK(1'b0),
        .M1_AXIS_TDATA(NLW_U0_M1_AXIS_TDATA_UNCONNECTED[31:0]),
        .M1_AXIS_TLAST(NLW_U0_M1_AXIS_TLAST_UNCONNECTED),
        .M1_AXIS_TREADY(1'b0),
        .M1_AXIS_TVALID(NLW_U0_M1_AXIS_TVALID_UNCONNECTED),
        .S0_AXIS_ACLK(1'b0),
        .S0_AXIS_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S0_AXIS_TLAST(1'b0),
        .S0_AXIS_TREADY(NLW_U0_S0_AXIS_TREADY_UNCONNECTED),
        .S0_AXIS_TVALID(1'b0),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARESETN(S0_AXI_ARESETN),
        .S0_AXI_ARREADY(S0_AXI_ARREADY),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWREADY(S0_AXI_AWREADY),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BRESP(S0_AXI_BRESP),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RRESP(S0_AXI_RRESP),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WREADY(S0_AXI_WREADY),
        .S0_AXI_WSTRB(S0_AXI_WSTRB),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .S1_AXIS_ACLK(1'b0),
        .S1_AXIS_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S1_AXIS_TLAST(1'b0),
        .S1_AXIS_TREADY(NLW_U0_S1_AXIS_TREADY_UNCONNECTED),
        .S1_AXIS_TVALID(1'b0),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARESETN(S1_AXI_ARESETN),
        .S1_AXI_ARREADY(S1_AXI_ARREADY),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWREADY(S1_AXI_AWREADY),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BRESP(S1_AXI_BRESP),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RRESP(S1_AXI_RRESP),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WREADY(S1_AXI_WREADY),
        .S1_AXI_WSTRB(S1_AXI_WSTRB),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst(1'b0));
endmodule

(* ORIG_REF_NAME = "Sync_DPRAM" *) 
module mailbox_0_Sync_DPRAM
   (E,
    \FSL_Flag_Handle.fifo_length_i_reg[3] ,
    dpo,
    \FSL_Flag_Handle.write_addr_ptr_reg[0] ,
    SYS_Rst_I,
    Q,
    S0_AXI_ACLK,
    S1_AXI_WDATA,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[28]_0 );
  output [0:0]E;
  output \FSL_Flag_Handle.fifo_length_i_reg[3] ;
  output [31:0]dpo;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  input SYS_Rst_I;
  input [6:0]Q;
  input S0_AXI_ACLK;
  input [31:0]S1_AXI_WDATA;
  input [5:0]\s_axi_rdata_i_reg[28] ;
  input [5:0]\s_axi_rdata_i_reg[28]_0 ;

  wire [0:0]E;
  wire \FSL_Flag_Handle.fifo_length_i_reg[3] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  wire [6:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire SYS_Rst_I;
  wire [31:0]dpo;
  wire [5:0]\s_axi_rdata_i_reg[28] ;
  wire [5:0]\s_axi_rdata_i_reg[28]_0 ;
  wire NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 RAM_reg_0_63_0_6
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S1_AXI_WDATA[0]),
        .DIB(S1_AXI_WDATA[1]),
        .DIC(S1_AXI_WDATA[2]),
        .DID(S1_AXI_WDATA[3]),
        .DIE(S1_AXI_WDATA[4]),
        .DIF(S1_AXI_WDATA[5]),
        .DIG(S1_AXI_WDATA[6]),
        .DIH(1'b0),
        .DOA(dpo[0]),
        .DOB(dpo[1]),
        .DOC(dpo[2]),
        .DOD(dpo[3]),
        .DOE(dpo[4]),
        .DOF(dpo[5]),
        .DOG(dpo[6]),
        .DOH(NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  LUT6 #(
    .INIT(64'h2222222222202222)) 
    RAM_reg_0_63_0_6_i_1__0
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg[0] ),
        .I1(SYS_Rst_I),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(\FSL_Flag_Handle.fifo_length_i_reg[3] ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RAM_reg_0_63_0_6_i_3
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[3] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 RAM_reg_0_63_14_20
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S1_AXI_WDATA[14]),
        .DIB(S1_AXI_WDATA[15]),
        .DIC(S1_AXI_WDATA[16]),
        .DID(S1_AXI_WDATA[17]),
        .DIE(S1_AXI_WDATA[18]),
        .DIF(S1_AXI_WDATA[19]),
        .DIG(S1_AXI_WDATA[20]),
        .DIH(1'b0),
        .DOA(dpo[14]),
        .DOB(dpo[15]),
        .DOC(dpo[16]),
        .DOD(dpo[17]),
        .DOE(dpo[18]),
        .DOF(dpo[19]),
        .DOG(dpo[20]),
        .DOH(NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 RAM_reg_0_63_21_27
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S1_AXI_WDATA[21]),
        .DIB(S1_AXI_WDATA[22]),
        .DIC(S1_AXI_WDATA[23]),
        .DID(S1_AXI_WDATA[24]),
        .DIE(S1_AXI_WDATA[25]),
        .DIF(S1_AXI_WDATA[26]),
        .DIG(S1_AXI_WDATA[27]),
        .DIH(1'b0),
        .DOA(dpo[21]),
        .DOB(dpo[22]),
        .DOC(dpo[23]),
        .DOD(dpo[24]),
        .DOE(dpo[25]),
        .DOF(dpo[26]),
        .DOG(dpo[27]),
        .DOH(NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 RAM_reg_0_63_28_31
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S1_AXI_WDATA[28]),
        .DIB(S1_AXI_WDATA[29]),
        .DIC(S1_AXI_WDATA[30]),
        .DID(S1_AXI_WDATA[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(dpo[28]),
        .DOB(dpo[29]),
        .DOC(dpo[30]),
        .DOD(dpo[31]),
        .DOE(NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 RAM_reg_0_63_7_13
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S1_AXI_WDATA[7]),
        .DIB(S1_AXI_WDATA[8]),
        .DIC(S1_AXI_WDATA[9]),
        .DID(S1_AXI_WDATA[10]),
        .DIE(S1_AXI_WDATA[11]),
        .DIF(S1_AXI_WDATA[12]),
        .DIG(S1_AXI_WDATA[13]),
        .DIH(1'b0),
        .DOA(dpo[7]),
        .DOB(dpo[8]),
        .DOC(dpo[9]),
        .DOD(dpo[10]),
        .DOE(dpo[11]),
        .DOF(dpo[12]),
        .DOG(dpo[13]),
        .DOH(NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
endmodule

(* ORIG_REF_NAME = "Sync_DPRAM" *) 
module mailbox_0_Sync_DPRAM_3
   (E,
    \FSL_Flag_Handle.fifo_length_i_reg[3] ,
    dpo,
    \FSL_Flag_Handle.write_addr_ptr_reg[0] ,
    SYS_Rst_I,
    Q,
    S0_AXI_ACLK,
    S0_AXI_WDATA,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[28]_0 );
  output [0:0]E;
  output \FSL_Flag_Handle.fifo_length_i_reg[3] ;
  output [31:0]dpo;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  input SYS_Rst_I;
  input [6:0]Q;
  input S0_AXI_ACLK;
  input [31:0]S0_AXI_WDATA;
  input [5:0]\s_axi_rdata_i_reg[28] ;
  input [5:0]\s_axi_rdata_i_reg[28]_0 ;

  wire [0:0]E;
  wire \FSL_Flag_Handle.fifo_length_i_reg[3] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  wire [6:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire SYS_Rst_I;
  wire [31:0]dpo;
  wire [5:0]\s_axi_rdata_i_reg[28] ;
  wire [5:0]\s_axi_rdata_i_reg[28]_0 ;
  wire NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 RAM_reg_0_63_0_6
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S0_AXI_WDATA[0]),
        .DIB(S0_AXI_WDATA[1]),
        .DIC(S0_AXI_WDATA[2]),
        .DID(S0_AXI_WDATA[3]),
        .DIE(S0_AXI_WDATA[4]),
        .DIF(S0_AXI_WDATA[5]),
        .DIG(S0_AXI_WDATA[6]),
        .DIH(1'b0),
        .DOA(dpo[0]),
        .DOB(dpo[1]),
        .DOC(dpo[2]),
        .DOD(dpo[3]),
        .DOE(dpo[4]),
        .DOF(dpo[5]),
        .DOG(dpo[6]),
        .DOH(NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  LUT6 #(
    .INIT(64'h2222222222202222)) 
    RAM_reg_0_63_0_6_i_1
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg[0] ),
        .I1(SYS_Rst_I),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(\FSL_Flag_Handle.fifo_length_i_reg[3] ),
        .O(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 RAM_reg_0_63_14_20
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S0_AXI_WDATA[14]),
        .DIB(S0_AXI_WDATA[15]),
        .DIC(S0_AXI_WDATA[16]),
        .DID(S0_AXI_WDATA[17]),
        .DIE(S0_AXI_WDATA[18]),
        .DIF(S0_AXI_WDATA[19]),
        .DIG(S0_AXI_WDATA[20]),
        .DIH(1'b0),
        .DOA(dpo[14]),
        .DOB(dpo[15]),
        .DOC(dpo[16]),
        .DOD(dpo[17]),
        .DOE(dpo[18]),
        .DOF(dpo[19]),
        .DOG(dpo[20]),
        .DOH(NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 RAM_reg_0_63_21_27
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S0_AXI_WDATA[21]),
        .DIB(S0_AXI_WDATA[22]),
        .DIC(S0_AXI_WDATA[23]),
        .DID(S0_AXI_WDATA[24]),
        .DIE(S0_AXI_WDATA[25]),
        .DIF(S0_AXI_WDATA[26]),
        .DIG(S0_AXI_WDATA[27]),
        .DIH(1'b0),
        .DOA(dpo[21]),
        .DOB(dpo[22]),
        .DOC(dpo[23]),
        .DOD(dpo[24]),
        .DOE(dpo[25]),
        .DOF(dpo[26]),
        .DOG(dpo[27]),
        .DOH(NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 RAM_reg_0_63_28_31
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S0_AXI_WDATA[28]),
        .DIB(S0_AXI_WDATA[29]),
        .DIC(S0_AXI_WDATA[30]),
        .DID(S0_AXI_WDATA[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(dpo[28]),
        .DOB(dpo[29]),
        .DOC(dpo[30]),
        .DOD(dpo[31]),
        .DOE(NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 RAM_reg_0_63_7_13
       (.ADDRA(\s_axi_rdata_i_reg[28] ),
        .ADDRB(\s_axi_rdata_i_reg[28] ),
        .ADDRC(\s_axi_rdata_i_reg[28] ),
        .ADDRD(\s_axi_rdata_i_reg[28] ),
        .ADDRE(\s_axi_rdata_i_reg[28] ),
        .ADDRF(\s_axi_rdata_i_reg[28] ),
        .ADDRG(\s_axi_rdata_i_reg[28] ),
        .ADDRH(\s_axi_rdata_i_reg[28]_0 ),
        .DIA(S0_AXI_WDATA[7]),
        .DIB(S0_AXI_WDATA[8]),
        .DIC(S0_AXI_WDATA[9]),
        .DID(S0_AXI_WDATA[10]),
        .DIE(S0_AXI_WDATA[11]),
        .DIF(S0_AXI_WDATA[12]),
        .DIG(S0_AXI_WDATA[13]),
        .DIH(1'b0),
        .DOA(dpo[7]),
        .DOB(dpo[8]),
        .DOC(dpo[9]),
        .DOD(dpo[10]),
        .DOE(dpo[11]),
        .DOF(dpo[12]),
        .DOG(dpo[13]),
        .DOH(NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(S0_AXI_ACLK),
        .WE(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_fsl_error_d1_i_3
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Sync_FIFO" *) 
module mailbox_0_Sync_FIFO
   (read_fsl_error,
    Q,
    FSL0_S_Exists_I,
    write_fsl_error,
    FSL1_M_Full_I,
    \FSL_Flag_Handle.fifo_length_i_reg[6]_0 ,
    DI,
    S,
    dpo,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ,
    SYS_Rst_I,
    rit_detect_d1_reg,
    Bus_RNW_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    S0_AXI_ACLK,
    S1_AXI_WDATA,
    SR);
  output read_fsl_error;
  output [6:0]Q;
  output FSL0_S_Exists_I;
  output write_fsl_error;
  output FSL1_M_Full_I;
  output [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6]_0 ;
  output [2:0]DI;
  output [0:0]S;
  output [31:0]dpo;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ;
  input SYS_Rst_I;
  input [5:0]rit_detect_d1_reg;
  input Bus_RNW_reg_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input S0_AXI_ACLK;
  input [31:0]S1_AXI_WDATA;
  input [0:0]SR;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_0;
  wire [2:0]DI;
  wire FSL0_S_Exists_I;
  wire FSL0_S_Read_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire \FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0 ;
  wire [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6]_0 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_3 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_4 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_5 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_6 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_7 ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4] ;
  wire \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [6:0]Q;
  wire [0:0]S;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ;
  wire [31:0]dpo;
  wire [5:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire read_fsl_error;
  wire read_fsl_error_d1_i_2__0_n_0;
  wire [5:0]rit_detect_d1_reg;
  wire write_fsl_error;
  wire [7:5]\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_CO_UNCONNECTED ;
  wire [7:6]\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.fifo_length_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h34444444)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_1 
       (.I0(\FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0 ),
        .I1(FSL1_M_Write_I),
        .I2(FSL0_S_Exists_I),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555565555)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_10 
       (.I0(Q[1]),
        .I1(\FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0 ),
        .I2(FSL0_S_Read_I),
        .I3(Bus_RNW_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I5(SYS_Rst_I),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_3 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[6]),
        .I3(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_4 
       (.I0(Q[1]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_5__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_6__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_7__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_8__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_9__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0 ));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10 ),
        .Q(Q[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_CO_UNCONNECTED [7:5],\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_3 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_4 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_5 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_6 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,Q[4:1],\FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0 }),
        .O({\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_O_UNCONNECTED [7:6],\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15 }),
        .S({1'b0,1'b0,\FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.read_addr_ptr[0]_i_1 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSL_Flag_Handle.read_addr_ptr[1]_i_1 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .I1(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSL_Flag_Handle.read_addr_ptr[2]_i_1 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .I1(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .I2(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSL_Flag_Handle.read_addr_ptr[3]_i_1 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .I1(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .I2(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ),
        .I3(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSL_Flag_Handle.read_addr_ptr[4]_i_1 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ),
        .I1(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .I2(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .I3(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ),
        .I4(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \FSL_Flag_Handle.read_addr_ptr[5]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(read_fsl_error_d1_i_2__0_n_0),
        .O(FSL0_S_Read_I));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \FSL_Flag_Handle.read_addr_ptr[5]_i_3 
       (.I0(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ),
        .I1(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .I2(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .I3(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ),
        .I4(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4] ),
        .I5(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5] ),
        .O(p_0_in[5]));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[0]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[1]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[2]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[3]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[4]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_S_Read_I),
        .D(p_0_in[5]),
        .Q(\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.write_addr_ptr[0]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSL_Flag_Handle.write_addr_ptr[1]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .I1(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSL_Flag_Handle.write_addr_ptr[2]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .I1(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .I2(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSL_Flag_Handle.write_addr_ptr[3]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .I1(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .I2(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ),
        .I3(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSL_Flag_Handle.write_addr_ptr[4]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ),
        .I1(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .I2(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .I3(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ),
        .I4(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \FSL_Flag_Handle.write_addr_ptr[5]_i_1 
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ),
        .I1(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .I2(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .I3(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ),
        .I4(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4] ),
        .I5(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[0]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[1]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[2]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[3]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[4]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4] ),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_M_Write_I),
        .D(p_0_in__0[5]),
        .Q(\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5] ),
        .R(SR));
  mailbox_0_Sync_DPRAM \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO 
       (.E(FSL1_M_Write_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[3] (\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0] (\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .\s_axi_rdata_i_reg[28] ({\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5] ,\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4] ,\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3] ,\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2] ,\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1] ,\FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0] }),
        .\s_axi_rdata_i_reg[28]_0 ({\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5] ,\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4] ,\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3] ,\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2] ,\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1] ,\FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0] }));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    read_fsl_error_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(read_fsl_error_d1_i_2__0_n_0),
        .O(read_fsl_error));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    read_fsl_error_d1_i_2__0
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(read_fsl_error_d1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_1
       (.I0(Q[4]),
        .I1(rit_detect_d1_reg[4]),
        .I2(rit_detect_d1_reg[5]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_2
       (.I0(Q[2]),
        .I1(rit_detect_d1_reg[2]),
        .I2(rit_detect_d1_reg[3]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_3
       (.I0(Q[0]),
        .I1(rit_detect_d1_reg[0]),
        .I2(rit_detect_d1_reg[1]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    rit_detect_d10_carry_i_4__0
       (.I0(Q[6]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_5
       (.I0(Q[4]),
        .I1(rit_detect_d1_reg[4]),
        .I2(Q[5]),
        .I3(rit_detect_d1_reg[5]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_6
       (.I0(Q[2]),
        .I1(rit_detect_d1_reg[2]),
        .I2(Q[3]),
        .I3(rit_detect_d1_reg[3]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_7
       (.I0(Q[0]),
        .I1(rit_detect_d1_reg[0]),
        .I2(Q[1]),
        .I3(rit_detect_d1_reg[1]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_axi_rdata_i[0]_i_4__0 
       (.I0(read_fsl_error_d1_i_2__0_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .O(FSL0_S_Exists_I));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \s_axi_rdata_i[1]_i_6__0 
       (.I0(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(SYS_Rst_I),
        .O(FSL1_M_Full_I));
  LUT1 #(
    .INIT(2'h1)) 
    sit_detect_d10_carry_i_4
       (.I0(Q[6]),
        .O(S));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    write_fsl_error_d1_i_1__0
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ),
        .I1(SYS_Rst_I),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .O(write_fsl_error));
endmodule

(* ORIG_REF_NAME = "Sync_FIFO" *) 
module mailbox_0_Sync_FIFO_2
   (write_fsl_error,
    Q,
    FSL1_S_Exists_I,
    read_fsl_error,
    FSL0_M_Full_I,
    \FSL_Flag_Handle.fifo_length_i_reg[6]_0 ,
    DI,
    S,
    dpo,
    \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ,
    SYS_Rst_I,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    rit_detect_d1_reg,
    Bus_RNW_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    S0_AXI_ACLK,
    S0_AXI_WDATA,
    SR);
  output write_fsl_error;
  output [6:0]Q;
  output FSL1_S_Exists_I;
  output read_fsl_error;
  output FSL0_M_Full_I;
  output [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6]_0 ;
  output [2:0]DI;
  output [0:0]S;
  output [31:0]dpo;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ;
  input SYS_Rst_I;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [5:0]rit_detect_d1_reg;
  input Bus_RNW_reg_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input S0_AXI_ACLK;
  input [31:0]S0_AXI_WDATA;
  input [0:0]SR;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_0;
  wire [2:0]DI;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire FSL1_S_Exists_I;
  wire FSL1_S_Read_I;
  wire \FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0 ;
  wire \FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0 ;
  wire [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6]_0 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_3 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_4 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_5 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_6 ;
  wire \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_7 ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [6:0]Q;
  wire [0:0]S;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ;
  wire [5:0]a;
  wire [31:0]dpo;
  wire [5:0]dpra;
  wire [5:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire read_fsl_error;
  wire read_fsl_error_d1_i_2_n_0;
  wire [5:0]rit_detect_d1_reg;
  wire write_fsl_error;
  wire [7:5]\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_CO_UNCONNECTED ;
  wire [7:6]\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.fifo_length_i[0]_i_1 
       (.I0(Q[0]),
        .O(\FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_10__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555565555)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_11 
       (.I0(Q[1]),
        .I1(\FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0 ),
        .I2(FSL1_S_Read_I),
        .I3(Bus_RNW_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I5(SYS_Rst_I),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h34444444)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_2 
       (.I0(\FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0 ),
        .I1(FSL0_M_Write_I),
        .I2(FSL1_S_Exists_I),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[6]),
        .I3(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_5 
       (.I0(Q[1]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_6 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_7 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_9 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0 ));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \FSL_Flag_Handle.fifo_length_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(\FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0 ),
        .D(\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10 ),
        .Q(Q[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_CO_UNCONNECTED [7:5],\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_3 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_4 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_5 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_6 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,Q[4:1],\FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0 }),
        .O({\NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_O_UNCONNECTED [7:6],\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14 ,\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15 }),
        .S({1'b0,1'b0,\FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0 ,\FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.read_addr_ptr[0]_i_1__0 
       (.I0(dpra[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSL_Flag_Handle.read_addr_ptr[1]_i_1__0 
       (.I0(dpra[0]),
        .I1(dpra[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSL_Flag_Handle.read_addr_ptr[2]_i_1__0 
       (.I0(dpra[0]),
        .I1(dpra[1]),
        .I2(dpra[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSL_Flag_Handle.read_addr_ptr[3]_i_1__0 
       (.I0(dpra[1]),
        .I1(dpra[0]),
        .I2(dpra[2]),
        .I3(dpra[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSL_Flag_Handle.read_addr_ptr[4]_i_1__0 
       (.I0(dpra[2]),
        .I1(dpra[0]),
        .I2(dpra[1]),
        .I3(dpra[3]),
        .I4(dpra[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \FSL_Flag_Handle.read_addr_ptr[5]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(read_fsl_error_d1_i_2_n_0),
        .O(FSL1_S_Read_I));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \FSL_Flag_Handle.read_addr_ptr[5]_i_2__0 
       (.I0(dpra[3]),
        .I1(dpra[1]),
        .I2(dpra[0]),
        .I3(dpra[2]),
        .I4(dpra[4]),
        .I5(dpra[5]),
        .O(p_0_in[5]));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[0]),
        .Q(dpra[0]),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[1]),
        .Q(dpra[1]),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[2]),
        .Q(dpra[2]),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[3]),
        .Q(dpra[3]),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[4]),
        .Q(dpra[4]),
        .R(SR));
  FDRE \FSL_Flag_Handle.read_addr_ptr_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(FSL1_S_Read_I),
        .D(p_0_in[5]),
        .Q(dpra[5]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSL_Flag_Handle.write_addr_ptr[0]_i_1__0 
       (.I0(a[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSL_Flag_Handle.write_addr_ptr[1]_i_1__0 
       (.I0(a[0]),
        .I1(a[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSL_Flag_Handle.write_addr_ptr[2]_i_1__0 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSL_Flag_Handle.write_addr_ptr[3]_i_1__0 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSL_Flag_Handle.write_addr_ptr[4]_i_1__0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \FSL_Flag_Handle.write_addr_ptr[5]_i_1__0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(p_0_in__0[5]));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[0]),
        .Q(a[0]),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[1]),
        .Q(a[1]),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[2]),
        .Q(a[2]),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[3]),
        .Q(a[3]),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[4]),
        .Q(a[4]),
        .R(SR));
  FDRE \FSL_Flag_Handle.write_addr_ptr_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(FSL0_M_Write_I),
        .D(p_0_in__0[5]),
        .Q(a[5]),
        .R(SR));
  mailbox_0_Sync_DPRAM_3 \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO 
       (.E(FSL0_M_Write_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[3] (\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0] (\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .\s_axi_rdata_i_reg[28] (dpra),
        .\s_axi_rdata_i_reg[28]_0 (a));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    read_fsl_error_d1_i_1__0
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(read_fsl_error_d1_i_2_n_0),
        .O(read_fsl_error));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    read_fsl_error_d1_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(read_fsl_error_d1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_1__0
       (.I0(Q[4]),
        .I1(rit_detect_d1_reg[4]),
        .I2(rit_detect_d1_reg[5]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_2__0
       (.I0(Q[2]),
        .I1(rit_detect_d1_reg[2]),
        .I2(rit_detect_d1_reg[3]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    rit_detect_d10_carry_i_3__0
       (.I0(Q[0]),
        .I1(rit_detect_d1_reg[0]),
        .I2(rit_detect_d1_reg[1]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    rit_detect_d10_carry_i_4
       (.I0(Q[6]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_5__0
       (.I0(Q[4]),
        .I1(rit_detect_d1_reg[4]),
        .I2(Q[5]),
        .I3(rit_detect_d1_reg[5]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_6__0
       (.I0(Q[2]),
        .I1(rit_detect_d1_reg[2]),
        .I2(Q[3]),
        .I3(rit_detect_d1_reg[3]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    rit_detect_d10_carry_i_7__0
       (.I0(Q[0]),
        .I1(rit_detect_d1_reg[0]),
        .I2(Q[1]),
        .I3(rit_detect_d1_reg[1]),
        .O(\FSL_Flag_Handle.fifo_length_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(read_fsl_error_d1_i_2_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .O(FSL1_S_Exists_I));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \s_axi_rdata_i[1]_i_6 
       (.I0(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(SYS_Rst_I),
        .O(FSL0_M_Full_I));
  LUT1 #(
    .INIT(2'h1)) 
    sit_detect_d10_carry_i_4__0
       (.I0(Q[6]),
        .O(S));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    write_fsl_error_d1_i_1
       (.I0(\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 ),
        .I1(SYS_Rst_I),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1 ),
        .O(write_fsl_error));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module mailbox_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    is_read_reg,
    \FSM_onehot_state_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ,
    is_register07_out__0,
    \state_reg[0] ,
    \state_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    Q,
    S1_AXI_ACLK,
    state1__2,
    p_5_in,
    S1_AXI_ARVALID,
    s_axi_rvalid_i_reg,
    S1_AXI_WVALID,
    S1_AXI_AWVALID,
    \FSM_onehot_state_reg[3] ,
    S1_AXI_WDATA,
    SYS_Rst_I,
    full_error_reg,
    FSL1_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2] ,
    empty_error_reg,
    FSL1_S_Exists_I,
    S1_AXI_ARREADY,
    \s_axi_rdata_i_reg[5] ,
    is_register,
    \s_axi_rdata_i_reg[5]_0 ,
    S1_AXI_WREADY,
    S1_AXI_WREADY_0,
    S1_AXI_RREADY,
    s_axi_rvalid_i_reg_0,
    S1_AXI_BREADY,
    s_axi_bvalid_i_reg,
    \s_axi_rdata_i_reg[2]_0 ,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output Bus_RNW_reg_reg_0;
  output [1:0]D;
  output is_read_reg;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output [31:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  output is_register07_out__0;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  input Q;
  input S1_AXI_ACLK;
  input state1__2;
  input p_5_in;
  input S1_AXI_ARVALID;
  input [1:0]s_axi_rvalid_i_reg;
  input S1_AXI_WVALID;
  input S1_AXI_AWVALID;
  input [3:0]\FSM_onehot_state_reg[3] ;
  input [2:0]S1_AXI_WDATA;
  input SYS_Rst_I;
  input full_error_reg;
  input FSL1_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2] ;
  input empty_error_reg;
  input FSL1_S_Exists_I;
  input S1_AXI_ARREADY;
  input [5:0]\s_axi_rdata_i_reg[5] ;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5]_0 ;
  input S1_AXI_WREADY;
  input [4:0]S1_AXI_WREADY_0;
  input S1_AXI_RREADY;
  input s_axi_rvalid_i_reg_0;
  input S1_AXI_BREADY;
  input s_axi_bvalid_i_reg;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input Bus_RNW_reg_reg_1;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;

  wire Bus_RNW_reg_i_1__0_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire FSL1_M_Full_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire [31:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;
  wire Q;
  wire S1_AXI_ACLK;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARREADY_INST_0_i_3_n_0;
  wire S1_AXI_ARREADY_INST_0_i_4_n_0;
  wire S1_AXI_ARVALID;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_RREADY;
  wire [2:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY;
  wire [4:0]S1_AXI_WREADY_0;
  wire S1_AXI_WREADY_INST_0_i_1_n_0;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire [7:1]bus2ip_rdce;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_11;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_9;
  wire [31:0]dpo;
  wire empty_error;
  wire empty_error_reg;
  wire eqOp__3;
  wire full_error_reg;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out__0;
  wire p_5_in;
  wire s_axi_bvalid_i_reg;
  wire \s_axi_rdata_i[0]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[0]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[1]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[1]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[2]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[2]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[31]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[3]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[3]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[4]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[5]_i_4__0_n_0 ;
  wire [0:0]\s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [5:0]\s_axi_rdata_i_reg[5] ;
  wire [5:0]\s_axi_rdata_i_reg[5]_0 ;
  wire [1:0]s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire state1__2;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1__0
       (.I0(Bus_RNW_reg_reg_1),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1__0_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1__0_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_M_Reset_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S1_AXI_WDATA[0]),
        .O(FSL_M_Reset0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_S_Reset_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S1_AXI_WDATA[1]),
        .O(FSL_S_Reset0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(S1_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg[3] [0]),
        .I2(is_read_reg),
        .I3(\FSM_onehot_state_reg[3] [1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(S1_AXI_WVALID),
        .I1(S1_AXI_AWVALID),
        .I2(S1_AXI_ARVALID),
        .I3(\FSM_onehot_state_reg[3] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(\FSM_onehot_state_reg[3] [2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(\FSM_onehot_state_reg[3] [2]),
        .I2(\FSM_onehot_state_reg[3] [1]),
        .I3(is_read_reg),
        .I4(\FSM_onehot_state_reg[3] [3]),
        .I5(state1__2),
        .O(\FSM_onehot_state_reg[2] [2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0 
       (.I0(SYS_Rst_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(is_read_reg),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(S1_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  mailbox_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_11(ce_expnd_i_11));
  mailbox_0_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  mailbox_0_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_0(ce_expnd_i_0));
  mailbox_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  mailbox_0_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_7(ce_expnd_i_7));
  mailbox_0_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_6(ce_expnd_i_6));
  mailbox_0_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  mailbox_0_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_4(ce_expnd_i_4));
  mailbox_0_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  mailbox_0_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_2(ce_expnd_i_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    RAM_reg_0_63_0_6_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    S1_AXI_ARREADY_INST_0
       (.I0(bus2ip_rdce[5]),
        .I1(bus2ip_rdce[4]),
        .I2(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(S1_AXI_ARREADY_INST_0_i_4_n_0),
        .I4(S1_AXI_ARREADY),
        .I5(eqOp__3),
        .O(is_read_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S1_AXI_ARREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S1_AXI_ARREADY_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    S1_AXI_ARREADY_INST_0_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .O(S1_AXI_ARREADY_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    S1_AXI_ARREADY_INST_0_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(S1_AXI_ARREADY_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFAFAEAFAEAFAE)) 
    S1_AXI_WREADY_INST_0
       (.I0(S1_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I4(S1_AXI_WREADY),
        .I5(eqOp__3),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    S1_AXI_WREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(S1_AXI_WREADY_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    S1_AXI_WREADY_INST_0_i_2
       (.I0(S1_AXI_WREADY_0[3]),
        .I1(S1_AXI_WREADY_0[2]),
        .I2(S1_AXI_WREADY_0[4]),
        .I3(S1_AXI_WREADY_0[0]),
        .I4(S1_AXI_WREADY_0[1]),
        .O(eqOp__3));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    empty_error_i_1__0
       (.I0(SYS_Rst_I),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .O(empty_error));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    empty_error_i_2__0
       (.I0(FSL1_S_Exists_I),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(empty_error_reg),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    full_error_i_1__0
       (.I0(FSL1_M_Full_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(full_error_reg),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ie_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \is_register[0]_i_2__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I2(S1_AXI_WDATA[2]),
        .O(is_register07_out__0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rit_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1__0
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_rvalid_i_reg[0]),
        .I3(S1_AXI_BREADY),
        .I4(s_axi_bvalid_i_reg),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h00FE000EFFFEFF0E)) 
    \s_axi_rdata_i[0]_i_1__0 
       (.I0(\s_axi_rdata_i[0]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_3__0_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(empty_error_reg),
        .I5(FSL1_S_Exists_I),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[0]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[5] [0]),
        .I1(is_register[2]),
        .I2(\s_axi_rdata_i_reg[5]_0 [0]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[0]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [0]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[0]),
        .I3(is_register[2]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[10]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[10]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [10]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[11]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[11]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [11]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[12]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[12]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [12]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[13]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[13]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [13]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[14]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[14]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [14]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[15]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[15]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [15]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[16]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[16]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [16]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[17]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[17]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [17]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[18]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[18]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [18]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[19]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[19]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFEFF0E00FE000E)) 
    \s_axi_rdata_i[1]_i_1__0 
       (.I0(\s_axi_rdata_i[1]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_3__0_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(full_error_reg),
        .I5(FSL1_M_Full_I),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[1]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[5] [1]),
        .I1(is_register[1]),
        .I2(\s_axi_rdata_i_reg[5]_0 [1]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[1]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [1]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[1]),
        .I3(is_register[1]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_4__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_5__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[7]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[20]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[20]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [20]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[21]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[21]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [21]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[22]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[22]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [22]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[23]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[23]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [23]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[24]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[24]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [24]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[25]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[25]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [25]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[26]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[26]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [26]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[27]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[27]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [27]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[28]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[28]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [28]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[29]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[29]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [29]));
  LUT6 #(
    .INIT(64'hFFEE0EEE00EE0EEE)) 
    \s_axi_rdata_i[2]_i_1__0 
       (.I0(\s_axi_rdata_i[2]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_3__0_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I5(\s_axi_rdata_i_reg[2] ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[2]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[5] [2]),
        .I1(is_register[0]),
        .I2(\s_axi_rdata_i_reg[5]_0 [2]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[2]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [2]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[2]),
        .I3(is_register[0]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[2]_i_4__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[3]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[30]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[30]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [30]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[31]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[31]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [31]));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \s_axi_rdata_i[31]_i_2__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .O(\s_axi_rdata_i[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEE0EEE00EE0EEE)) 
    \s_axi_rdata_i[3]_i_1__0 
       (.I0(\s_axi_rdata_i[3]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_3__0_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I5(CO),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[3]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[5] [3]),
        .I1(\s_axi_rdata_i_reg[5]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00003070)) 
    \s_axi_rdata_i[3]_i_3__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(dpo[3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    \s_axi_rdata_i[4]_i_1__0 
       (.I0(bus2ip_rdce[2]),
        .I1(dpo[4]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I5(\s_axi_rdata_i[4]_i_2__0_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[4]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[5] [4]),
        .I1(\s_axi_rdata_i_reg[5]_0 [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    \s_axi_rdata_i[5]_i_1__0 
       (.I0(bus2ip_rdce[2]),
        .I1(dpo[5]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I5(\s_axi_rdata_i[5]_i_4__0_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[5]_i_2__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[5]_i_3__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[5]_i_4__0 
       (.I0(\s_axi_rdata_i_reg[5] [5]),
        .I1(\s_axi_rdata_i_reg[5]_0 [5]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[6]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[6]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [6]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[7]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[7]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [7]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[8]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[8]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [8]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[9]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[9]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [9]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1__0
       (.I0(is_read_reg),
        .I1(s_axi_rvalid_i_reg[0]),
        .I2(s_axi_rvalid_i_reg[1]),
        .I3(S1_AXI_RREADY),
        .I4(s_axi_rvalid_i_reg_0),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sit_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1__0 
       (.I0(state1__2),
        .I1(s_axi_rvalid_i_reg[0]),
        .I2(S1_AXI_ARVALID),
        .I3(s_axi_rvalid_i_reg[1]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1__0 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(S1_AXI_ARVALID),
        .I3(s_axi_rvalid_i_reg[1]),
        .I4(s_axi_rvalid_i_reg[0]),
        .I5(is_read_reg),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module mailbox_0_address_decoder_6
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    is_read_reg,
    \FSM_onehot_state_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ,
    is_register07_out,
    \state_reg[0] ,
    \state_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    Q,
    S0_AXI_ACLK,
    state1__2,
    p_5_in,
    S0_AXI_ARVALID,
    s_axi_rvalid_i_reg,
    S0_AXI_WVALID,
    S0_AXI_AWVALID,
    \FSM_onehot_state_reg[3] ,
    S0_AXI_WDATA,
    SYS_Rst_I,
    data1,
    FSL0_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2] ,
    FSL0_S_Exists_I,
    S0_AXI_ARREADY,
    \s_axi_rdata_i_reg[5] ,
    is_register,
    \s_axi_rdata_i_reg[5]_0 ,
    S0_AXI_WREADY,
    S0_AXI_WREADY_0,
    S0_AXI_RREADY,
    s_axi_rvalid_i_reg_0,
    S0_AXI_BREADY,
    s_axi_bvalid_i_reg,
    \s_axi_rdata_i_reg[2]_0 ,
    bus2ip_rnw_i,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output Bus_RNW_reg_reg_0;
  output [1:0]D;
  output is_read_reg;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output [31:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  output is_register07_out;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  input Q;
  input S0_AXI_ACLK;
  input state1__2;
  input p_5_in;
  input S0_AXI_ARVALID;
  input [1:0]s_axi_rvalid_i_reg;
  input S0_AXI_WVALID;
  input S0_AXI_AWVALID;
  input [3:0]\FSM_onehot_state_reg[3] ;
  input [2:0]S0_AXI_WDATA;
  input SYS_Rst_I;
  input [1:0]data1;
  input FSL0_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2] ;
  input FSL0_S_Exists_I;
  input S0_AXI_ARREADY;
  input [5:0]\s_axi_rdata_i_reg[5] ;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5]_0 ;
  input S0_AXI_WREADY;
  input [4:0]S0_AXI_WREADY_0;
  input S0_AXI_RREADY;
  input s_axi_rvalid_i_reg_0;
  input S0_AXI_BREADY;
  input s_axi_bvalid_i_reg;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input bus2ip_rnw_i;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire FSL0_M_Full_I;
  wire FSL0_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire [31:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;
  wire Q;
  wire S0_AXI_ACLK;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARREADY_INST_0_i_3_n_0;
  wire S0_AXI_ARREADY_INST_0_i_4_n_0;
  wire S0_AXI_ARVALID;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_RREADY;
  wire [2:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY;
  wire [4:0]S0_AXI_WREADY_0;
  wire S0_AXI_WREADY_INST_0_i_1_n_0;
  wire S0_AXI_WVALID;
  wire SYS_Rst_I;
  wire [7:1]bus2ip_rdce;
  wire bus2ip_rnw_i;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_11;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_9;
  wire [1:0]data1;
  wire [31:0]dpo;
  wire empty_error;
  wire eqOp__3;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out;
  wire p_5_in;
  wire s_axi_bvalid_i_reg;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_2_n_0 ;
  wire \s_axi_rdata_i[5]_i_4_n_0 ;
  wire [0:0]\s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [5:0]\s_axi_rdata_i_reg[5] ;
  wire [5:0]\s_axi_rdata_i_reg[5]_0 ;
  wire [1:0]s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire state1__2;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_M_Reset_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S0_AXI_WDATA[0]),
        .O(FSL_M_Reset0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_S_Reset_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S0_AXI_WDATA[1]),
        .O(FSL_S_Reset0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S0_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg[3] [0]),
        .I2(is_read_reg),
        .I3(\FSM_onehot_state_reg[3] [1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(S0_AXI_WVALID),
        .I1(S0_AXI_AWVALID),
        .I2(S0_AXI_ARVALID),
        .I3(\FSM_onehot_state_reg[3] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(\FSM_onehot_state_reg[3] [2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(\FSM_onehot_state_reg[3] [2]),
        .I2(\FSM_onehot_state_reg[3] [1]),
        .I3(is_read_reg),
        .I4(\FSM_onehot_state_reg[3] [3]),
        .I5(state1__2),
        .O(\FSM_onehot_state_reg[2] [2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(SYS_Rst_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(is_read_reg),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  mailbox_0_pselect_f_7 \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_11(ce_expnd_i_11));
  mailbox_0_pselect_f__parameterized9_8 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  mailbox_0_pselect_f__parameterized10_9 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_0(ce_expnd_i_0));
  mailbox_0_pselect_f__parameterized1_10 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  mailbox_0_pselect_f__parameterized3_11 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_7(ce_expnd_i_7));
  mailbox_0_pselect_f__parameterized4_12 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_6(ce_expnd_i_6));
  mailbox_0_pselect_f__parameterized5_13 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  mailbox_0_pselect_f__parameterized6_14 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_4(ce_expnd_i_4));
  mailbox_0_pselect_f__parameterized7_15 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  mailbox_0_pselect_f__parameterized8_16 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_2(ce_expnd_i_2));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    S0_AXI_ARREADY_INST_0
       (.I0(bus2ip_rdce[5]),
        .I1(bus2ip_rdce[4]),
        .I2(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(S0_AXI_ARREADY_INST_0_i_4_n_0),
        .I4(S0_AXI_ARREADY),
        .I5(eqOp__3),
        .O(is_read_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S0_AXI_ARREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S0_AXI_ARREADY_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    S0_AXI_ARREADY_INST_0_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .O(S0_AXI_ARREADY_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    S0_AXI_ARREADY_INST_0_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(S0_AXI_ARREADY_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFAFAEAFAEAFAE)) 
    S0_AXI_WREADY_INST_0
       (.I0(S0_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I4(S0_AXI_WREADY),
        .I5(eqOp__3),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    S0_AXI_WREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(S0_AXI_WREADY_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    S0_AXI_WREADY_INST_0_i_2
       (.I0(S0_AXI_WREADY_0[3]),
        .I1(S0_AXI_WREADY_0[2]),
        .I2(S0_AXI_WREADY_0[4]),
        .I3(S0_AXI_WREADY_0[0]),
        .I4(S0_AXI_WREADY_0[1]),
        .O(eqOp__3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    empty_error_i_1
       (.I0(SYS_Rst_I),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .O(empty_error));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    empty_error_i_2
       (.I0(FSL0_S_Exists_I),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(data1[0]),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    full_error_i_1
       (.I0(FSL0_M_Full_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(data1[1]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ie_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \is_register[0]_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I2(S0_AXI_WDATA[2]),
        .O(is_register07_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rit_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_rvalid_i_reg[0]),
        .I3(S0_AXI_BREADY),
        .I4(s_axi_bvalid_i_reg),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h00FE000EFFFEFF0E)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[0]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_3_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(data1[0]),
        .I5(FSL0_S_Exists_I),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\s_axi_rdata_i_reg[5] [0]),
        .I1(is_register[2]),
        .I2(\s_axi_rdata_i_reg[5]_0 [0]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [0]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[0]),
        .I3(is_register[2]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[10]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [10]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[11]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [11]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[12]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [12]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[13]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [13]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[14]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [14]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[15]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [15]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[16]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [16]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[17]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [17]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[18]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [18]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[19]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFEFF0E00FE000E)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[1]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_3_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(data1[1]),
        .I5(FSL0_M_Full_I),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\s_axi_rdata_i_reg[5] [1]),
        .I1(is_register[1]),
        .I2(\s_axi_rdata_i_reg[5]_0 [1]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [1]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[1]),
        .I3(is_register[1]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[7]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[20]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [20]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[21]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [21]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[22]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [22]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[23]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [23]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[24]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [24]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[25]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [25]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[26]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [26]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[27]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [27]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[28]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [28]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[29]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [29]));
  LUT6 #(
    .INIT(64'hFFEE0EEE00EE0EEE)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[2]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I5(\s_axi_rdata_i_reg[2] ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\s_axi_rdata_i_reg[5] [2]),
        .I1(is_register[0]),
        .I2(\s_axi_rdata_i_reg[5]_0 [2]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [2]),
        .I1(bus2ip_rdce[2]),
        .I2(dpo[2]),
        .I3(is_register[0]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[2]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[3]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[30]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [30]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[31]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [31]));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .O(\s_axi_rdata_i[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEE0EEE00EE0EEE)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I5(CO),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\s_axi_rdata_i_reg[5] [3]),
        .I1(\s_axi_rdata_i_reg[5]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00003070)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(dpo[3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(bus2ip_rdce[2]),
        .I1(dpo[4]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I5(\s_axi_rdata_i[4]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\s_axi_rdata_i_reg[5] [4]),
        .I1(\s_axi_rdata_i_reg[5]_0 [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(bus2ip_rdce[2]),
        .I1(dpo[5]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I5(\s_axi_rdata_i[5]_i_4_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[5]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAC00A000)) 
    \s_axi_rdata_i[5]_i_4 
       (.I0(\s_axi_rdata_i_reg[5] [5]),
        .I1(\s_axi_rdata_i_reg[5]_0 [5]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\s_axi_rdata_i[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[6]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [6]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[7]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [7]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[8]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [8]));
  LUT6 #(
    .INIT(64'h0000000000501050)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(dpo[9]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I5(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 [9]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(is_read_reg),
        .I1(s_axi_rvalid_i_reg[0]),
        .I2(s_axi_rvalid_i_reg[1]),
        .I3(S0_AXI_RREADY),
        .I4(s_axi_rvalid_i_reg_0),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sit_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(s_axi_rvalid_i_reg[0]),
        .I2(S0_AXI_ARVALID),
        .I3(s_axi_rvalid_i_reg[1]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(S0_AXI_ARVALID),
        .I3(s_axi_rvalid_i_reg[1]),
        .I4(s_axi_rvalid_i_reg[0]),
        .I5(is_read_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    write_fsl_error_d1_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module mailbox_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    is_register07_out__0,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    S1_AXI_WDATA,
    full_error_reg,
    FSL1_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2] ,
    empty_error_reg,
    FSL1_S_Exists_I,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    Q,
    is_register,
    \s_axi_rdata_i_reg[5] ,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR,
    \s_axi_rdata_i_reg[2]_0 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output is_register07_out__0;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input [2:0]S1_AXI_WDATA;
  input full_error_reg;
  input FSL1_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2] ;
  input empty_error_reg;
  input FSL1_S_Exists_I;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input [5:0]Q;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5] ;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;

  wire Bus_RNW_reg_reg;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSL1_M_Full_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [5:0]Q;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [2:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire [31:0]dpo;
  wire empty_error;
  wire empty_error_reg;
  wire full_error_reg;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out__0;
  wire s_axi_bvalid_i_reg;
  wire [0:0]\s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [5:0]\s_axi_rdata_i_reg[5] ;
  wire s_axi_rvalid_i_reg;

  mailbox_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .CO(CO),
        .E(E),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .empty_error(empty_error),
        .empty_error_reg(empty_error_reg),
        .full_error_reg(full_error_reg),
        .is_read_reg_0(is_read_reg),
        .is_register(is_register),
        .is_register07_out__0(is_register07_out__0),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[2]_1 (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module mailbox_0_axi_lite_ipif_4
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    is_register07_out,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    S0_AXI_WDATA,
    data1,
    FSL0_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2] ,
    FSL0_S_Exists_I,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    Q,
    is_register,
    \s_axi_rdata_i_reg[5] ,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR,
    \s_axi_rdata_i_reg[2]_0 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output is_register07_out;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input [2:0]S0_AXI_WDATA;
  input [1:0]data1;
  input FSL0_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2] ;
  input FSL0_S_Exists_I;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input [5:0]Q;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5] ;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;

  wire Bus_RNW_reg_reg;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSL0_M_Full_I;
  wire FSL0_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [5:0]Q;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [2:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire SYS_Rst_I;
  wire [1:0]data1;
  wire [31:0]dpo;
  wire empty_error;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out;
  wire s_axi_bvalid_i_reg;
  wire [0:0]\s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [5:0]\s_axi_rdata_i_reg[5] ;
  wire s_axi_rvalid_i_reg;

  mailbox_0_slave_attachment_5 I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .CO(CO),
        .E(E),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .data1(data1),
        .dpo(dpo),
        .empty_error(empty_error),
        .is_read_reg_0(is_read_reg),
        .is_register(is_register),
        .is_register07_out(is_register07_out),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[2]_1 (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* ORIG_REF_NAME = "fsl_v20" *) 
module mailbox_0_fsl_v20
   (write_fsl_error,
    Q,
    FSL1_S_Exists_I,
    read_fsl_error,
    FSL0_M_Full_I,
    \FSL_Flag_Handle.fifo_length_i_reg[6] ,
    DI,
    S,
    dpo,
    \FSL_Flag_Handle.write_addr_ptr_reg[0] ,
    SYS_Rst_I,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    rit_detect_d1_reg,
    Bus_RNW_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    S0_AXI_ACLK,
    S0_AXI_WDATA,
    SR);
  output write_fsl_error;
  output [6:0]Q;
  output FSL1_S_Exists_I;
  output read_fsl_error;
  output FSL0_M_Full_I;
  output [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6] ;
  output [2:0]DI;
  output [0:0]S;
  output [31:0]dpo;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  input SYS_Rst_I;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [5:0]rit_detect_d1_reg;
  input Bus_RNW_reg_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input S0_AXI_ACLK;
  input [31:0]S0_AXI_WDATA;
  input [0:0]SR;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_0;
  wire [2:0]DI;
  wire FSL0_M_Full_I;
  wire FSL1_S_Exists_I;
  wire [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [6:0]Q;
  wire [0:0]S;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire [31:0]dpo;
  wire read_fsl_error;
  wire [5:0]rit_detect_d1_reg;
  wire write_fsl_error;

  mailbox_0_Sync_FIFO_2 \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_0(Bus_RNW_reg_0),
        .DI(DI),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[6]_0 (\FSL_Flag_Handle.fifo_length_i_reg[6] ),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 (\FSL_Flag_Handle.write_addr_ptr_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S(S),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .read_fsl_error(read_fsl_error),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .write_fsl_error(write_fsl_error));
endmodule

(* ORIG_REF_NAME = "fsl_v20" *) 
module mailbox_0_fsl_v20_1
   (read_fsl_error,
    Q,
    FSL0_S_Exists_I,
    write_fsl_error,
    FSL1_M_Full_I,
    \FSL_Flag_Handle.fifo_length_i_reg[6] ,
    DI,
    S,
    dpo,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \FSL_Flag_Handle.write_addr_ptr_reg[0] ,
    SYS_Rst_I,
    rit_detect_d1_reg,
    Bus_RNW_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    S0_AXI_ACLK,
    S1_AXI_WDATA,
    SR);
  output read_fsl_error;
  output [6:0]Q;
  output FSL0_S_Exists_I;
  output write_fsl_error;
  output FSL1_M_Full_I;
  output [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6] ;
  output [2:0]DI;
  output [0:0]S;
  output [31:0]dpo;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  input SYS_Rst_I;
  input [5:0]rit_detect_d1_reg;
  input Bus_RNW_reg_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input S0_AXI_ACLK;
  input [31:0]S1_AXI_WDATA;
  input [0:0]SR;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_0;
  wire [2:0]DI;
  wire FSL0_S_Exists_I;
  wire FSL1_M_Full_I;
  wire [3:0]\FSL_Flag_Handle.fifo_length_i_reg[6] ;
  wire \FSL_Flag_Handle.write_addr_ptr_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [6:0]Q;
  wire [0:0]S;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire [31:0]dpo;
  wire read_fsl_error;
  wire [5:0]rit_detect_d1_reg;
  wire write_fsl_error;

  mailbox_0_Sync_FIFO \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_0(Bus_RNW_reg_0),
        .DI(DI),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[6]_0 (\FSL_Flag_Handle.fifo_length_i_reg[6] ),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0]_0 (\FSL_Flag_Handle.write_addr_ptr_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S(S),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .read_fsl_error(read_fsl_error),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .write_fsl_error(write_fsl_error));
endmodule

(* ORIG_REF_NAME = "if_decode" *) 
module mailbox_0_if_decode
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt_0,
    FSL0_S_Reset_I,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \rit_register_reg[0]_0 ,
    SR,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    read_fsl_error,
    write_fsl_error,
    S,
    Q,
    DI,
    rit_detect_d1_reg_0,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    S0_AXI_WDATA,
    FSL0_M_Full_I,
    sit_detect_d1_reg_0,
    dpo,
    FSL0_S_Exists_I,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    FSL1_S_Reset_I,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt_0;
  output FSL0_S_Reset_I;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [5:0]\rit_register_reg[0]_0 ;
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input read_fsl_error;
  input write_fsl_error;
  input [0:0]S;
  input [0:0]Q;
  input [2:0]DI;
  input [3:0]rit_detect_d1_reg_0;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input [5:0]S0_AXI_WDATA;
  input FSL0_M_Full_I;
  input [5:0]sit_detect_d1_reg_0;
  input [31:0]dpo;
  input FSL0_S_Exists_I;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input FSL1_S_Reset_I;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;

  wire Bus_RNW_reg;
  wire [2:0]DI;
  wire FSL0_M_Full_I;
  wire FSL0_M_Reset_I;
  wire FSL0_S_Exists_I;
  wire FSL0_S_Reset_I;
  wire FSL1_S_Reset_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire Interrupt_0;
  wire [0:0]Q;
  wire [0:0]S;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [5:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Use_Async.Interrupt_i_1_n_0 ;
  wire \Using_AXI.AXI4_If_n_12 ;
  wire \Using_AXI.AXI4_If_n_13 ;
  wire \Using_AXI.AXI4_If_n_15 ;
  wire \Using_AXI.AXI4_If_n_16 ;
  wire \Using_AXI.AXI4_If_n_17 ;
  wire [1:0]data1;
  wire [31:0]dpo;
  wire empty_error;
  wire [0:2]ie_register;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out;
  wire \is_register[0]_i_1_n_0 ;
  wire \is_register[1]_i_1_n_0 ;
  wire \is_register[2]_i_1_n_0 ;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rit_detect_d1;
  wire rit_detect_d10_carry_n_5;
  wire rit_detect_d10_carry_n_6;
  wire rit_detect_d10_carry_n_7;
  wire [3:0]rit_detect_d1_reg_0;
  wire [5:0]\rit_register_reg[0]_0 ;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;
  wire sit_detect_d0;
  wire sit_detect_d1;
  wire sit_detect_d10_carry_i_1_n_0;
  wire sit_detect_d10_carry_i_2_n_0;
  wire sit_detect_d10_carry_i_3_n_0;
  wire sit_detect_d10_carry_i_5_n_0;
  wire sit_detect_d10_carry_i_6_n_0;
  wire sit_detect_d10_carry_i_7_n_0;
  wire sit_detect_d10_carry_n_5;
  wire sit_detect_d10_carry_n_6;
  wire sit_detect_d10_carry_n_7;
  wire [5:0]sit_detect_d1_reg_0;
  wire [0:5]sit_register;
  wire write_fsl_error;
  wire write_fsl_error_d1;
  wire [7:4]NLW_rit_detect_d10_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rit_detect_d10_carry_O_UNCONNECTED;
  wire [7:4]NLW_sit_detect_d10_carry_CO_UNCONNECTED;
  wire [7:0]NLW_sit_detect_d10_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSL_Flag_Handle.fifo_length_i[6]_i_1__0 
       (.I0(SYS_Rst_I),
        .I1(FSL0_M_Reset_I),
        .I2(FSL1_S_Reset_I),
        .O(SR));
  FDRE FSL_M_Reset_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_M_Reset0),
        .Q(FSL0_M_Reset_I),
        .R(SYS_Rst_I));
  FDRE FSL_S_Reset_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_S_Reset0),
        .Q(FSL0_S_Reset_I),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Use_Async.Interrupt_i_1 
       (.I0(ie_register[1]),
        .I1(is_register[1]),
        .I2(is_register[0]),
        .I3(ie_register[0]),
        .I4(is_register[2]),
        .I5(ie_register[2]),
        .O(\Use_Async.Interrupt_i_1_n_0 ));
  FDRE \Use_Async.Interrupt_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Use_Async.Interrupt_i_1_n_0 ),
        .Q(Interrupt_0),
        .R(SYS_Rst_I));
  mailbox_0_axi_lite_ipif_4 \Using_AXI.AXI4_If 
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .CO(rit_detect_d0),
        .E(\Using_AXI.AXI4_If_n_15 ),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\Using_AXI.AXI4_If_n_13 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Using_AXI.AXI4_If_n_12 ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\Using_AXI.AXI4_If_n_17 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\Using_AXI.AXI4_If_n_16 ),
        .Q({sit_register[0],sit_register[1],sit_register[2],sit_register[3],sit_register[4],sit_register[5]}),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_WDATA(S0_AXI_WDATA[2:0]),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .data1(data1),
        .dpo(dpo),
        .empty_error(empty_error),
        .is_read_reg(is_read_reg),
        .is_register(is_register),
        .is_register07_out(is_register07_out),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .\s_axi_rdata_i_reg[2] (sit_detect_d0),
        .\s_axi_rdata_i_reg[2]_0 ({ie_register[0],ie_register[1],ie_register[2]}),
        .\s_axi_rdata_i_reg[5] (\rit_register_reg[0]_0 ),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg));
  FDRE empty_error_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_12 ),
        .Q(data1[0]),
        .R(empty_error));
  FDRE full_error_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_13 ),
        .Q(data1[1]),
        .R(empty_error));
  FDRE \ie_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S0_AXI_WDATA[2]),
        .Q(ie_register[0]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S0_AXI_WDATA[1]),
        .Q(ie_register[1]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S0_AXI_WDATA[0]),
        .Q(ie_register[2]),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \is_register[0]_i_1 
       (.I0(read_fsl_error),
        .I1(read_fsl_error_d1),
        .I2(write_fsl_error),
        .I3(write_fsl_error_d1),
        .I4(is_register07_out),
        .I5(is_register[0]),
        .O(\is_register[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[1]_i_1 
       (.I0(rit_detect_d1),
        .I1(rit_detect_d0),
        .I2(S0_AXI_WDATA[1]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[1]),
        .O(\is_register[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[2]_i_1 
       (.I0(sit_detect_d1),
        .I1(sit_detect_d0),
        .I2(S0_AXI_WDATA[0]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[2]),
        .O(\is_register[2]_i_1_n_0 ));
  FDRE \is_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[0]_i_1_n_0 ),
        .Q(is_register[0]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[1]_i_1_n_0 ),
        .Q(is_register[1]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[2]_i_1_n_0 ),
        .Q(is_register[2]),
        .R(SYS_Rst_I));
  FDRE read_fsl_error_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsl_error),
        .Q(read_fsl_error_d1),
        .R(SYS_Rst_I));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 rit_detect_d10_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_rit_detect_d10_carry_CO_UNCONNECTED[7:4],rit_detect_d0,rit_detect_d10_carry_n_5,rit_detect_d10_carry_n_6,rit_detect_d10_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,Q,DI}),
        .O(NLW_rit_detect_d10_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,rit_detect_d1_reg_0}));
  FDRE rit_detect_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(rit_detect_d0),
        .Q(rit_detect_d1),
        .R(1'b0));
  FDRE \rit_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[5]),
        .Q(\rit_register_reg[0]_0 [5]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[4]),
        .Q(\rit_register_reg[0]_0 [4]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[3]),
        .Q(\rit_register_reg[0]_0 [3]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[2]),
        .Q(\rit_register_reg[0]_0 [2]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[1]),
        .Q(\rit_register_reg[0]_0 [1]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S0_AXI_WDATA[0]),
        .Q(\rit_register_reg[0]_0 [0]),
        .R(SYS_Rst_I));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 sit_detect_d10_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_sit_detect_d10_carry_CO_UNCONNECTED[7:4],sit_detect_d0,sit_detect_d10_carry_n_5,sit_detect_d10_carry_n_6,sit_detect_d10_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,sit_detect_d10_carry_i_1_n_0,sit_detect_d10_carry_i_2_n_0,sit_detect_d10_carry_i_3_n_0}),
        .O(NLW_sit_detect_d10_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,S,sit_detect_d10_carry_i_5_n_0,sit_detect_d10_carry_i_6_n_0,sit_detect_d10_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_1
       (.I0(sit_register[1]),
        .I1(sit_detect_d1_reg_0[4]),
        .I2(sit_detect_d1_reg_0[5]),
        .I3(sit_register[0]),
        .O(sit_detect_d10_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_2
       (.I0(sit_register[3]),
        .I1(sit_detect_d1_reg_0[2]),
        .I2(sit_detect_d1_reg_0[3]),
        .I3(sit_register[2]),
        .O(sit_detect_d10_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_3
       (.I0(sit_register[5]),
        .I1(sit_detect_d1_reg_0[0]),
        .I2(sit_detect_d1_reg_0[1]),
        .I3(sit_register[4]),
        .O(sit_detect_d10_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_5
       (.I0(sit_register[1]),
        .I1(sit_detect_d1_reg_0[4]),
        .I2(sit_register[0]),
        .I3(sit_detect_d1_reg_0[5]),
        .O(sit_detect_d10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_6
       (.I0(sit_register[3]),
        .I1(sit_detect_d1_reg_0[2]),
        .I2(sit_register[2]),
        .I3(sit_detect_d1_reg_0[3]),
        .O(sit_detect_d10_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_7
       (.I0(sit_register[5]),
        .I1(sit_detect_d1_reg_0[0]),
        .I2(sit_register[4]),
        .I3(sit_detect_d1_reg_0[1]),
        .O(sit_detect_d10_carry_i_7_n_0));
  FDRE sit_detect_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(sit_detect_d0),
        .Q(sit_detect_d1),
        .R(1'b0));
  FDRE \sit_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[5]),
        .Q(sit_register[0]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[4]),
        .Q(sit_register[1]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[3]),
        .Q(sit_register[2]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[2]),
        .Q(sit_register[3]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[1]),
        .Q(sit_register[4]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[0]),
        .Q(sit_register[5]),
        .R(SYS_Rst_I));
  FDRE write_fsl_error_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(write_fsl_error),
        .Q(write_fsl_error_d1),
        .R(SYS_Rst_I));
endmodule

(* ORIG_REF_NAME = "if_decode" *) 
module mailbox_0_if_decode_0
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt_1,
    FSL1_S_Reset_I,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \rit_register_reg[0]_0 ,
    SR,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    read_fsl_error,
    write_fsl_error,
    S,
    Q,
    DI,
    rit_detect_d1_reg_0,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    S1_AXI_WDATA,
    FSL1_M_Full_I,
    sit_detect_d1_reg_0,
    dpo,
    FSL1_S_Exists_I,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    FSL0_S_Reset_I,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt_1;
  output FSL1_S_Reset_I;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [5:0]\rit_register_reg[0]_0 ;
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input read_fsl_error;
  input write_fsl_error;
  input [0:0]S;
  input [0:0]Q;
  input [2:0]DI;
  input [3:0]rit_detect_d1_reg_0;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input [5:0]S1_AXI_WDATA;
  input FSL1_M_Full_I;
  input [5:0]sit_detect_d1_reg_0;
  input [31:0]dpo;
  input FSL1_S_Exists_I;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input FSL0_S_Reset_I;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;

  wire Bus_RNW_reg;
  wire [2:0]DI;
  wire FSL0_S_Reset_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Reset_I;
  wire FSL1_S_Exists_I;
  wire FSL1_S_Reset_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire Interrupt_1;
  wire [0:0]Q;
  wire [0:0]S;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [5:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Use_Async.Interrupt_i_1__0_n_0 ;
  wire \Using_AXI.AXI4_If_n_12 ;
  wire \Using_AXI.AXI4_If_n_13 ;
  wire \Using_AXI.AXI4_If_n_15 ;
  wire \Using_AXI.AXI4_If_n_16 ;
  wire \Using_AXI.AXI4_If_n_17 ;
  wire [31:0]dpo;
  wire empty_error;
  wire empty_error_reg_n_0;
  wire full_error_reg_n_0;
  wire [0:2]ie_register;
  wire is_read_reg;
  wire [0:2]is_register;
  wire is_register07_out__0;
  wire \is_register[0]_i_1_n_0 ;
  wire \is_register[1]_i_1_n_0 ;
  wire \is_register[2]_i_1_n_0 ;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rit_detect_d1;
  wire rit_detect_d10_carry_n_5;
  wire rit_detect_d10_carry_n_6;
  wire rit_detect_d10_carry_n_7;
  wire [3:0]rit_detect_d1_reg_0;
  wire [5:0]\rit_register_reg[0]_0 ;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;
  wire sit_detect_d0;
  wire sit_detect_d1;
  wire sit_detect_d10_carry_i_1__0_n_0;
  wire sit_detect_d10_carry_i_2__0_n_0;
  wire sit_detect_d10_carry_i_3__0_n_0;
  wire sit_detect_d10_carry_i_5__0_n_0;
  wire sit_detect_d10_carry_i_6__0_n_0;
  wire sit_detect_d10_carry_i_7__0_n_0;
  wire sit_detect_d10_carry_n_5;
  wire sit_detect_d10_carry_n_6;
  wire sit_detect_d10_carry_n_7;
  wire [5:0]sit_detect_d1_reg_0;
  wire \sit_register_reg_n_0_[0] ;
  wire \sit_register_reg_n_0_[1] ;
  wire \sit_register_reg_n_0_[2] ;
  wire \sit_register_reg_n_0_[3] ;
  wire \sit_register_reg_n_0_[4] ;
  wire \sit_register_reg_n_0_[5] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;
  wire [7:4]NLW_rit_detect_d10_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rit_detect_d10_carry_O_UNCONNECTED;
  wire [7:4]NLW_sit_detect_d10_carry_CO_UNCONNECTED;
  wire [7:0]NLW_sit_detect_d10_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSL_Flag_Handle.read_addr_ptr[5]_i_1__0 
       (.I0(SYS_Rst_I),
        .I1(FSL1_M_Reset_I),
        .I2(FSL0_S_Reset_I),
        .O(SR));
  FDRE FSL_M_Reset_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_M_Reset0),
        .Q(FSL1_M_Reset_I),
        .R(SYS_Rst_I));
  FDRE FSL_S_Reset_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_S_Reset0),
        .Q(FSL1_S_Reset_I),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Use_Async.Interrupt_i_1__0 
       (.I0(ie_register[1]),
        .I1(is_register[1]),
        .I2(is_register[0]),
        .I3(ie_register[0]),
        .I4(is_register[2]),
        .I5(ie_register[2]),
        .O(\Use_Async.Interrupt_i_1__0_n_0 ));
  FDRE \Use_Async.Interrupt_reg 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\Use_Async.Interrupt_i_1__0_n_0 ),
        .Q(Interrupt_1),
        .R(SYS_Rst_I));
  mailbox_0_axi_lite_ipif \Using_AXI.AXI4_If 
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .CO(rit_detect_d0),
        .E(\Using_AXI.AXI4_If_n_15 ),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\Using_AXI.AXI4_If_n_13 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Using_AXI.AXI4_If_n_12 ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\Using_AXI.AXI4_If_n_17 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\Using_AXI.AXI4_If_n_16 ),
        .Q({\sit_register_reg_n_0_[0] ,\sit_register_reg_n_0_[1] ,\sit_register_reg_n_0_[2] ,\sit_register_reg_n_0_[3] ,\sit_register_reg_n_0_[4] ,\sit_register_reg_n_0_[5] }),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_WDATA(S1_AXI_WDATA[2:0]),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .empty_error(empty_error),
        .empty_error_reg(empty_error_reg_n_0),
        .full_error_reg(full_error_reg_n_0),
        .is_read_reg(is_read_reg),
        .is_register(is_register),
        .is_register07_out__0(is_register07_out__0),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .\s_axi_rdata_i_reg[2] (sit_detect_d0),
        .\s_axi_rdata_i_reg[2]_0 ({ie_register[0],ie_register[1],ie_register[2]}),
        .\s_axi_rdata_i_reg[5] (\rit_register_reg[0]_0 ),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg));
  FDRE empty_error_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_12 ),
        .Q(empty_error_reg_n_0),
        .R(empty_error));
  FDRE full_error_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_13 ),
        .Q(full_error_reg_n_0),
        .R(empty_error));
  FDRE \ie_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S1_AXI_WDATA[2]),
        .Q(ie_register[0]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S1_AXI_WDATA[1]),
        .Q(ie_register[1]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_16 ),
        .D(S1_AXI_WDATA[0]),
        .Q(ie_register[2]),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \is_register[0]_i_1 
       (.I0(read_fsl_error),
        .I1(read_fsl_error_d1),
        .I2(write_fsl_error),
        .I3(write_fsl_error_d1),
        .I4(is_register07_out__0),
        .I5(is_register[0]),
        .O(\is_register[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[1]_i_1 
       (.I0(rit_detect_d1),
        .I1(rit_detect_d0),
        .I2(S1_AXI_WDATA[1]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[1]),
        .O(\is_register[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[2]_i_1 
       (.I0(sit_detect_d1),
        .I1(sit_detect_d0),
        .I2(S1_AXI_WDATA[0]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[2]),
        .O(\is_register[2]_i_1_n_0 ));
  FDRE \is_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[0]_i_1_n_0 ),
        .Q(is_register[0]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[1]_i_1_n_0 ),
        .Q(is_register[1]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[2]_i_1_n_0 ),
        .Q(is_register[2]),
        .R(SYS_Rst_I));
  FDRE read_fsl_error_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsl_error),
        .Q(read_fsl_error_d1),
        .R(SYS_Rst_I));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 rit_detect_d10_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_rit_detect_d10_carry_CO_UNCONNECTED[7:4],rit_detect_d0,rit_detect_d10_carry_n_5,rit_detect_d10_carry_n_6,rit_detect_d10_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,Q,DI}),
        .O(NLW_rit_detect_d10_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,rit_detect_d1_reg_0}));
  FDRE rit_detect_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(rit_detect_d0),
        .Q(rit_detect_d1),
        .R(1'b0));
  FDRE \rit_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[5]),
        .Q(\rit_register_reg[0]_0 [5]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[4]),
        .Q(\rit_register_reg[0]_0 [4]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[3]),
        .Q(\rit_register_reg[0]_0 [3]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[2]),
        .Q(\rit_register_reg[0]_0 [2]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[1]),
        .Q(\rit_register_reg[0]_0 [1]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_17 ),
        .D(S1_AXI_WDATA[0]),
        .Q(\rit_register_reg[0]_0 [0]),
        .R(SYS_Rst_I));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 sit_detect_d10_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_sit_detect_d10_carry_CO_UNCONNECTED[7:4],sit_detect_d0,sit_detect_d10_carry_n_5,sit_detect_d10_carry_n_6,sit_detect_d10_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,sit_detect_d10_carry_i_1__0_n_0,sit_detect_d10_carry_i_2__0_n_0,sit_detect_d10_carry_i_3__0_n_0}),
        .O(NLW_sit_detect_d10_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,S,sit_detect_d10_carry_i_5__0_n_0,sit_detect_d10_carry_i_6__0_n_0,sit_detect_d10_carry_i_7__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_1__0
       (.I0(\sit_register_reg_n_0_[1] ),
        .I1(sit_detect_d1_reg_0[4]),
        .I2(sit_detect_d1_reg_0[5]),
        .I3(\sit_register_reg_n_0_[0] ),
        .O(sit_detect_d10_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_2__0
       (.I0(\sit_register_reg_n_0_[3] ),
        .I1(sit_detect_d1_reg_0[2]),
        .I2(sit_detect_d1_reg_0[3]),
        .I3(\sit_register_reg_n_0_[2] ),
        .O(sit_detect_d10_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sit_detect_d10_carry_i_3__0
       (.I0(\sit_register_reg_n_0_[5] ),
        .I1(sit_detect_d1_reg_0[0]),
        .I2(sit_detect_d1_reg_0[1]),
        .I3(\sit_register_reg_n_0_[4] ),
        .O(sit_detect_d10_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_5__0
       (.I0(\sit_register_reg_n_0_[1] ),
        .I1(sit_detect_d1_reg_0[4]),
        .I2(\sit_register_reg_n_0_[0] ),
        .I3(sit_detect_d1_reg_0[5]),
        .O(sit_detect_d10_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_6__0
       (.I0(\sit_register_reg_n_0_[3] ),
        .I1(sit_detect_d1_reg_0[2]),
        .I2(\sit_register_reg_n_0_[2] ),
        .I3(sit_detect_d1_reg_0[3]),
        .O(sit_detect_d10_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sit_detect_d10_carry_i_7__0
       (.I0(\sit_register_reg_n_0_[5] ),
        .I1(sit_detect_d1_reg_0[0]),
        .I2(\sit_register_reg_n_0_[4] ),
        .I3(sit_detect_d1_reg_0[1]),
        .O(sit_detect_d10_carry_i_7__0_n_0));
  FDRE sit_detect_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(sit_detect_d0),
        .Q(sit_detect_d1),
        .R(1'b0));
  FDRE \sit_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[5]),
        .Q(\sit_register_reg_n_0_[0] ),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[4]),
        .Q(\sit_register_reg_n_0_[1] ),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[3]),
        .Q(\sit_register_reg_n_0_[2] ),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[2]),
        .Q(\sit_register_reg_n_0_[3] ),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[1]),
        .Q(\sit_register_reg_n_0_[4] ),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[0]),
        .Q(\sit_register_reg_n_0_[5] ),
        .R(SYS_Rst_I));
  FDRE write_fsl_error_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(write_fsl_error),
        .Q(write_fsl_error_d1),
        .R(SYS_Rst_I));
endmodule

(* C_ASYNC_CLKS = "0" *) (* C_ASYNC_INTERRUPTS = "1" *) (* C_ENABLE_BUS_ERROR = "0" *) 
(* C_EXT_RESET_HIGH = "1" *) (* C_FAMILY = "zynquplus" *) (* C_IMPL_STYLE = "0" *) 
(* C_INTERCONNECT_PORT_0 = "2" *) (* C_INTERCONNECT_PORT_1 = "2" *) (* C_M0_AXIS_DATA_WIDTH = "32" *) 
(* C_M1_AXIS_DATA_WIDTH = "32" *) (* C_MAILBOX_DEPTH = "64" *) (* C_NUM_SYNC_FF = "2" *) 
(* C_S0_AXIS_DATA_WIDTH = "32" *) (* C_S0_AXI_ADDR_WIDTH = "32" *) (* C_S0_AXI_BASEADDR = "-1" *) 
(* C_S0_AXI_DATA_WIDTH = "32" *) (* C_S0_AXI_HIGHADDR = "0" *) (* C_S1_AXIS_DATA_WIDTH = "32" *) 
(* C_S1_AXI_ADDR_WIDTH = "32" *) (* C_S1_AXI_BASEADDR = "-1" *) (* C_S1_AXI_DATA_WIDTH = "32" *) 
(* C_S1_AXI_HIGHADDR = "0" *) (* ORIG_REF_NAME = "mailbox" *) 
module mailbox_0_mailbox
   (SYS_Rst,
    S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    M0_AXIS_ACLK,
    M0_AXIS_TLAST,
    M0_AXIS_TDATA,
    M0_AXIS_TVALID,
    M0_AXIS_TREADY,
    S0_AXIS_ACLK,
    S0_AXIS_TLAST,
    S0_AXIS_TDATA,
    S0_AXIS_TVALID,
    S0_AXIS_TREADY,
    M1_AXIS_ACLK,
    M1_AXIS_TLAST,
    M1_AXIS_TDATA,
    M1_AXIS_TVALID,
    M1_AXIS_TREADY,
    S1_AXIS_ACLK,
    S1_AXIS_TLAST,
    S1_AXIS_TDATA,
    S1_AXIS_TVALID,
    S1_AXIS_TREADY,
    Interrupt_0,
    Interrupt_1);
  input SYS_Rst;
  input S0_AXI_ACLK;
  input S0_AXI_ARESETN;
  input [31:0]S0_AXI_AWADDR;
  input S0_AXI_AWVALID;
  output S0_AXI_AWREADY;
  input [31:0]S0_AXI_WDATA;
  input [3:0]S0_AXI_WSTRB;
  input S0_AXI_WVALID;
  output S0_AXI_WREADY;
  output [1:0]S0_AXI_BRESP;
  output S0_AXI_BVALID;
  input S0_AXI_BREADY;
  input [31:0]S0_AXI_ARADDR;
  input S0_AXI_ARVALID;
  output S0_AXI_ARREADY;
  output [31:0]S0_AXI_RDATA;
  output [1:0]S0_AXI_RRESP;
  output S0_AXI_RVALID;
  input S0_AXI_RREADY;
  input S1_AXI_ACLK;
  input S1_AXI_ARESETN;
  input [31:0]S1_AXI_AWADDR;
  input S1_AXI_AWVALID;
  output S1_AXI_AWREADY;
  input [31:0]S1_AXI_WDATA;
  input [3:0]S1_AXI_WSTRB;
  input S1_AXI_WVALID;
  output S1_AXI_WREADY;
  output [1:0]S1_AXI_BRESP;
  output S1_AXI_BVALID;
  input S1_AXI_BREADY;
  input [31:0]S1_AXI_ARADDR;
  input S1_AXI_ARVALID;
  output S1_AXI_ARREADY;
  output [31:0]S1_AXI_RDATA;
  output [1:0]S1_AXI_RRESP;
  output S1_AXI_RVALID;
  input S1_AXI_RREADY;
  input M0_AXIS_ACLK;
  output M0_AXIS_TLAST;
  output [31:0]M0_AXIS_TDATA;
  output M0_AXIS_TVALID;
  input M0_AXIS_TREADY;
  input S0_AXIS_ACLK;
  input S0_AXIS_TLAST;
  input [31:0]S0_AXIS_TDATA;
  input S0_AXIS_TVALID;
  output S0_AXIS_TREADY;
  input M1_AXIS_ACLK;
  output M1_AXIS_TLAST;
  output [31:0]M1_AXIS_TDATA;
  output M1_AXIS_TVALID;
  input M1_AXIS_TREADY;
  input S1_AXIS_ACLK;
  input S1_AXIS_TLAST;
  input [31:0]S1_AXIS_TDATA;
  input S1_AXIS_TVALID;
  output S1_AXIS_TREADY;
  output Interrupt_0;
  output Interrupt_1;

  wire \<const0> ;
  wire FSL0_M_Full_I;
  wire FSL0_S_Exists_I;
  wire FSL0_S_Reset_I;
  wire FSL1_M_Full_I;
  wire FSL1_S_Exists_I;
  wire FSL1_S_Reset_I;
  wire Interrupt_0;
  wire Interrupt_1;
  wire Reset;
  wire Reset_0;
  wire \Rst_Sync.SYS_Rst_I_i_1_n_0 ;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire SYS_Rst_Input;
  (* async_reg = "true" *) wire SYS_Rst_Input_d1;
  (* async_reg = "true" *) wire SYS_Rst_Input_d2;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1 ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2 ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3 ;
  wire \Using_Bus_0.Bus0_If_n_16 ;
  wire \Using_Bus_1.Bus1_If_n_10 ;
  wire \Using_Bus_1.Bus1_If_n_11 ;
  wire \Using_Bus_1.Bus1_If_n_12 ;
  wire \Using_Bus_1.Bus1_If_n_13 ;
  wire \Using_Bus_1.Bus1_If_n_14 ;
  wire \Using_Bus_1.Bus1_If_n_16 ;
  wire \Using_Bus_1.Bus1_If_n_9 ;
  wire [6:0]\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg ;
  wire [6:0]\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5 ;
  wire [31:0]dpo;
  wire fsl_0_to_1_n_11;
  wire fsl_0_to_1_n_12;
  wire fsl_0_to_1_n_13;
  wire fsl_0_to_1_n_14;
  wire fsl_0_to_1_n_15;
  wire fsl_0_to_1_n_16;
  wire fsl_0_to_1_n_17;
  wire fsl_0_to_1_n_18;
  wire fsl_1_to_0_n_11;
  wire fsl_1_to_0_n_12;
  wire fsl_1_to_0_n_13;
  wire fsl_1_to_0_n_14;
  wire fsl_1_to_0_n_15;
  wire fsl_1_to_0_n_16;
  wire fsl_1_to_0_n_17;
  wire fsl_1_to_0_n_18;
  wire fsl_1_to_0_n_19;
  wire fsl_1_to_0_n_20;
  wire fsl_1_to_0_n_21;
  wire fsl_1_to_0_n_22;
  wire fsl_1_to_0_n_23;
  wire fsl_1_to_0_n_24;
  wire fsl_1_to_0_n_25;
  wire fsl_1_to_0_n_26;
  wire fsl_1_to_0_n_27;
  wire fsl_1_to_0_n_28;
  wire fsl_1_to_0_n_29;
  wire fsl_1_to_0_n_30;
  wire fsl_1_to_0_n_31;
  wire fsl_1_to_0_n_32;
  wire fsl_1_to_0_n_33;
  wire fsl_1_to_0_n_34;
  wire fsl_1_to_0_n_35;
  wire fsl_1_to_0_n_36;
  wire fsl_1_to_0_n_37;
  wire fsl_1_to_0_n_38;
  wire fsl_1_to_0_n_39;
  wire fsl_1_to_0_n_40;
  wire fsl_1_to_0_n_41;
  wire fsl_1_to_0_n_42;
  wire fsl_1_to_0_n_43;
  wire fsl_1_to_0_n_44;
  wire fsl_1_to_0_n_45;
  wire fsl_1_to_0_n_46;
  wire fsl_1_to_0_n_47;
  wire fsl_1_to_0_n_48;
  wire fsl_1_to_0_n_49;
  wire fsl_1_to_0_n_50;
  wire read_fsl_error;
  wire read_fsl_error_6;
  wire [0:5]rit_register;
  wire write_fsl_error;
  wire write_fsl_error_4;

  assign M0_AXIS_TDATA[31] = \<const0> ;
  assign M0_AXIS_TDATA[30] = \<const0> ;
  assign M0_AXIS_TDATA[29] = \<const0> ;
  assign M0_AXIS_TDATA[28] = \<const0> ;
  assign M0_AXIS_TDATA[27] = \<const0> ;
  assign M0_AXIS_TDATA[26] = \<const0> ;
  assign M0_AXIS_TDATA[25] = \<const0> ;
  assign M0_AXIS_TDATA[24] = \<const0> ;
  assign M0_AXIS_TDATA[23] = \<const0> ;
  assign M0_AXIS_TDATA[22] = \<const0> ;
  assign M0_AXIS_TDATA[21] = \<const0> ;
  assign M0_AXIS_TDATA[20] = \<const0> ;
  assign M0_AXIS_TDATA[19] = \<const0> ;
  assign M0_AXIS_TDATA[18] = \<const0> ;
  assign M0_AXIS_TDATA[17] = \<const0> ;
  assign M0_AXIS_TDATA[16] = \<const0> ;
  assign M0_AXIS_TDATA[15] = \<const0> ;
  assign M0_AXIS_TDATA[14] = \<const0> ;
  assign M0_AXIS_TDATA[13] = \<const0> ;
  assign M0_AXIS_TDATA[12] = \<const0> ;
  assign M0_AXIS_TDATA[11] = \<const0> ;
  assign M0_AXIS_TDATA[10] = \<const0> ;
  assign M0_AXIS_TDATA[9] = \<const0> ;
  assign M0_AXIS_TDATA[8] = \<const0> ;
  assign M0_AXIS_TDATA[7] = \<const0> ;
  assign M0_AXIS_TDATA[6] = \<const0> ;
  assign M0_AXIS_TDATA[5] = \<const0> ;
  assign M0_AXIS_TDATA[4] = \<const0> ;
  assign M0_AXIS_TDATA[3] = \<const0> ;
  assign M0_AXIS_TDATA[2] = \<const0> ;
  assign M0_AXIS_TDATA[1] = \<const0> ;
  assign M0_AXIS_TDATA[0] = \<const0> ;
  assign M0_AXIS_TLAST = \<const0> ;
  assign M0_AXIS_TVALID = \<const0> ;
  assign M1_AXIS_TDATA[31] = \<const0> ;
  assign M1_AXIS_TDATA[30] = \<const0> ;
  assign M1_AXIS_TDATA[29] = \<const0> ;
  assign M1_AXIS_TDATA[28] = \<const0> ;
  assign M1_AXIS_TDATA[27] = \<const0> ;
  assign M1_AXIS_TDATA[26] = \<const0> ;
  assign M1_AXIS_TDATA[25] = \<const0> ;
  assign M1_AXIS_TDATA[24] = \<const0> ;
  assign M1_AXIS_TDATA[23] = \<const0> ;
  assign M1_AXIS_TDATA[22] = \<const0> ;
  assign M1_AXIS_TDATA[21] = \<const0> ;
  assign M1_AXIS_TDATA[20] = \<const0> ;
  assign M1_AXIS_TDATA[19] = \<const0> ;
  assign M1_AXIS_TDATA[18] = \<const0> ;
  assign M1_AXIS_TDATA[17] = \<const0> ;
  assign M1_AXIS_TDATA[16] = \<const0> ;
  assign M1_AXIS_TDATA[15] = \<const0> ;
  assign M1_AXIS_TDATA[14] = \<const0> ;
  assign M1_AXIS_TDATA[13] = \<const0> ;
  assign M1_AXIS_TDATA[12] = \<const0> ;
  assign M1_AXIS_TDATA[11] = \<const0> ;
  assign M1_AXIS_TDATA[10] = \<const0> ;
  assign M1_AXIS_TDATA[9] = \<const0> ;
  assign M1_AXIS_TDATA[8] = \<const0> ;
  assign M1_AXIS_TDATA[7] = \<const0> ;
  assign M1_AXIS_TDATA[6] = \<const0> ;
  assign M1_AXIS_TDATA[5] = \<const0> ;
  assign M1_AXIS_TDATA[4] = \<const0> ;
  assign M1_AXIS_TDATA[3] = \<const0> ;
  assign M1_AXIS_TDATA[2] = \<const0> ;
  assign M1_AXIS_TDATA[1] = \<const0> ;
  assign M1_AXIS_TDATA[0] = \<const0> ;
  assign M1_AXIS_TLAST = \<const0> ;
  assign M1_AXIS_TVALID = \<const0> ;
  assign S0_AXIS_TREADY = \<const0> ;
  assign S0_AXI_AWREADY = S0_AXI_WREADY;
  assign S0_AXI_BRESP[1] = \<const0> ;
  assign S0_AXI_BRESP[0] = \<const0> ;
  assign S0_AXI_RRESP[1] = \<const0> ;
  assign S0_AXI_RRESP[0] = \<const0> ;
  assign S1_AXIS_TREADY = \<const0> ;
  assign S1_AXI_AWREADY = S1_AXI_WREADY;
  assign S1_AXI_BRESP[1] = \<const0> ;
  assign S1_AXI_BRESP[0] = \<const0> ;
  assign S1_AXI_RRESP[1] = \<const0> ;
  assign S1_AXI_RRESP[0] = \<const0> ;
  assign SYS_Rst_Input = SYS_Rst;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hBF)) 
    \Rst_Sync.SYS_Rst_I_i_1 
       (.I0(SYS_Rst_Input_d2),
        .I1(S0_AXI_ARESETN),
        .I2(S1_AXI_ARESETN),
        .O(\Rst_Sync.SYS_Rst_I_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_I_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Rst_Sync.SYS_Rst_I_i_1_n_0 ),
        .Q(SYS_Rst_I),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_Input_d1_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_Input),
        .Q(SYS_Rst_Input_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_Input_d2_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_Input_d1),
        .Q(SYS_Rst_Input_d2),
        .R(1'b0));
  mailbox_0_if_decode \Using_Bus_0.Bus0_If 
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .DI({fsl_1_to_0_n_15,fsl_1_to_0_n_16,fsl_1_to_0_n_17}),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL0_S_Reset_I(FSL0_S_Reset_I),
        .FSL1_S_Reset_I(FSL1_S_Reset_I),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (S0_AXI_WREADY),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\Using_Bus_0.Bus0_If_n_16 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Interrupt_0(Interrupt_0),
        .Q(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5 [6]),
        .S(fsl_0_to_1_n_18),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR[5:2]),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR[5:2]),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_WDATA(S0_AXI_WDATA[5:0]),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SR(Reset),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo({fsl_1_to_0_n_19,fsl_1_to_0_n_20,fsl_1_to_0_n_21,fsl_1_to_0_n_22,fsl_1_to_0_n_23,fsl_1_to_0_n_24,fsl_1_to_0_n_25,fsl_1_to_0_n_26,fsl_1_to_0_n_27,fsl_1_to_0_n_28,fsl_1_to_0_n_29,fsl_1_to_0_n_30,fsl_1_to_0_n_31,fsl_1_to_0_n_32,fsl_1_to_0_n_33,fsl_1_to_0_n_34,fsl_1_to_0_n_35,fsl_1_to_0_n_36,fsl_1_to_0_n_37,fsl_1_to_0_n_38,fsl_1_to_0_n_39,fsl_1_to_0_n_40,fsl_1_to_0_n_41,fsl_1_to_0_n_42,fsl_1_to_0_n_43,fsl_1_to_0_n_44,fsl_1_to_0_n_45,fsl_1_to_0_n_46,fsl_1_to_0_n_47,fsl_1_to_0_n_48,fsl_1_to_0_n_49,fsl_1_to_0_n_50}),
        .is_read_reg(S0_AXI_ARREADY),
        .read_fsl_error(read_fsl_error_6),
        .rit_detect_d1_reg_0({fsl_1_to_0_n_11,fsl_1_to_0_n_12,fsl_1_to_0_n_13,fsl_1_to_0_n_14}),
        .\rit_register_reg[0]_0 ({rit_register[0],rit_register[1],rit_register[2],rit_register[3],rit_register[4],rit_register[5]}),
        .s_axi_bvalid_i_reg(S0_AXI_BVALID),
        .s_axi_rvalid_i_reg(S0_AXI_RVALID),
        .sit_detect_d1_reg_0(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg [5:0]),
        .write_fsl_error(write_fsl_error));
  mailbox_0_if_decode_0 \Using_Bus_1.Bus1_If 
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1 ),
        .DI({fsl_0_to_1_n_15,fsl_0_to_1_n_16,fsl_0_to_1_n_17}),
        .FSL0_S_Reset_I(FSL0_S_Reset_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL1_S_Reset_I(FSL1_S_Reset_I),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (S1_AXI_WREADY),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\Using_Bus_1.Bus1_If_n_16 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3 ),
        .Interrupt_1(Interrupt_1),
        .Q(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg [6]),
        .S(fsl_1_to_0_n_18),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR[5:2]),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR[5:2]),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_WDATA(S1_AXI_WDATA[5:0]),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SR(Reset_0),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .is_read_reg(S1_AXI_ARREADY),
        .read_fsl_error(read_fsl_error),
        .rit_detect_d1_reg_0({fsl_0_to_1_n_11,fsl_0_to_1_n_12,fsl_0_to_1_n_13,fsl_0_to_1_n_14}),
        .\rit_register_reg[0]_0 ({\Using_Bus_1.Bus1_If_n_9 ,\Using_Bus_1.Bus1_If_n_10 ,\Using_Bus_1.Bus1_If_n_11 ,\Using_Bus_1.Bus1_If_n_12 ,\Using_Bus_1.Bus1_If_n_13 ,\Using_Bus_1.Bus1_If_n_14 }),
        .s_axi_bvalid_i_reg(S1_AXI_BVALID),
        .s_axi_rvalid_i_reg(S1_AXI_RVALID),
        .sit_detect_d1_reg_0(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5 [5:0]),
        .write_fsl_error(write_fsl_error_4));
  mailbox_0_fsl_v20 fsl_0_to_1
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1 ),
        .Bus_RNW_reg_0(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .DI({fsl_0_to_1_n_15,fsl_0_to_1_n_16,fsl_0_to_1_n_17}),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[6] ({fsl_0_to_1_n_11,fsl_0_to_1_n_12,fsl_0_to_1_n_13,fsl_0_to_1_n_14}),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0] (\Using_Bus_0.Bus0_If_n_16 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3 ),
        .Q(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg ),
        .S(fsl_0_to_1_n_18),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SR(Reset),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .read_fsl_error(read_fsl_error),
        .rit_detect_d1_reg({\Using_Bus_1.Bus1_If_n_9 ,\Using_Bus_1.Bus1_If_n_10 ,\Using_Bus_1.Bus1_If_n_11 ,\Using_Bus_1.Bus1_If_n_12 ,\Using_Bus_1.Bus1_If_n_13 ,\Using_Bus_1.Bus1_If_n_14 }),
        .write_fsl_error(write_fsl_error));
  mailbox_0_fsl_v20_1 fsl_1_to_0
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_0(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1 ),
        .DI({fsl_1_to_0_n_15,fsl_1_to_0_n_16,fsl_1_to_0_n_17}),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .\FSL_Flag_Handle.fifo_length_i_reg[6] ({fsl_1_to_0_n_11,fsl_1_to_0_n_12,fsl_1_to_0_n_13,fsl_1_to_0_n_14}),
        .\FSL_Flag_Handle.write_addr_ptr_reg[0] (\Using_Bus_1.Bus1_If_n_16 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5 ),
        .S(fsl_1_to_0_n_18),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SR(Reset_0),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo({fsl_1_to_0_n_19,fsl_1_to_0_n_20,fsl_1_to_0_n_21,fsl_1_to_0_n_22,fsl_1_to_0_n_23,fsl_1_to_0_n_24,fsl_1_to_0_n_25,fsl_1_to_0_n_26,fsl_1_to_0_n_27,fsl_1_to_0_n_28,fsl_1_to_0_n_29,fsl_1_to_0_n_30,fsl_1_to_0_n_31,fsl_1_to_0_n_32,fsl_1_to_0_n_33,fsl_1_to_0_n_34,fsl_1_to_0_n_35,fsl_1_to_0_n_36,fsl_1_to_0_n_37,fsl_1_to_0_n_38,fsl_1_to_0_n_39,fsl_1_to_0_n_40,fsl_1_to_0_n_41,fsl_1_to_0_n_42,fsl_1_to_0_n_43,fsl_1_to_0_n_44,fsl_1_to_0_n_45,fsl_1_to_0_n_46,fsl_1_to_0_n_47,fsl_1_to_0_n_48,fsl_1_to_0_n_49,fsl_1_to_0_n_50}),
        .read_fsl_error(read_fsl_error_6),
        .rit_detect_d1_reg({rit_register[0],rit_register[1],rit_register[2],rit_register[3],rit_register[4],rit_register[5]}),
        .write_fsl_error(write_fsl_error_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f
   (ce_expnd_i_11,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_11;
  input [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_11;

  LUT4 #(
    .INIT(16'h0001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f_7
   (ce_expnd_i_11,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_11;
  input [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_11;

  LUT4 #(
    .INIT(16'h0001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized1
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_9;
  input [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_9;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized10
   (ce_expnd_i_0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_0;
  input [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_0;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized10_9
   (ce_expnd_i_0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_0;
  input [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_0;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized1_10
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_9;
  input [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_9;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized3
   (ce_expnd_i_7,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_7;
  input [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_7;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized3_11
   (ce_expnd_i_7,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_7;
  input [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_7;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized4
   (ce_expnd_i_6,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_6;
  input [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_6;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized4_12
   (ce_expnd_i_6,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_6;
  input [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_6;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized5
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_5;
  input [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_5;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized5_13
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_5;
  input [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_5;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized6
   (ce_expnd_i_4,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_4;
  input [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_4;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized6_14
   (ce_expnd_i_4,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_4;
  input [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_4;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized7
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_3;
  input [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_3;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized7_15
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_3;
  input [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_3;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized8
   (ce_expnd_i_2,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_2;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_2;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .O(ce_expnd_i_2));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized8_16
   (ce_expnd_i_2,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_2;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_2;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .O(ce_expnd_i_2));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized9
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_1;
  input [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_1;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module mailbox_0_pselect_f__parameterized9_8
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_1;
  input [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_1;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module mailbox_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    is_read_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    is_register07_out__0,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    S1_AXI_WDATA,
    full_error_reg,
    FSL1_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2]_0 ,
    empty_error_reg,
    FSL1_S_Exists_I,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    Q,
    is_register,
    \s_axi_rdata_i_reg[5]_0 ,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR,
    \s_axi_rdata_i_reg[2]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output is_read_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output is_register07_out__0;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input [2:0]S1_AXI_WDATA;
  input full_error_reg;
  input FSL1_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2]_0 ;
  input empty_error_reg;
  input FSL1_S_Exists_I;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input [5:0]Q;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5]_0 ;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;
  input [2:0]\s_axi_rdata_i_reg[2]_1 ;

  wire Bus_RNW_reg_reg;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSL1_M_Full_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire I_DECODER_n_14;
  wire I_DECODER_n_15;
  wire I_DECODER_n_16;
  wire I_DECODER_n_17;
  wire I_DECODER_n_18;
  wire I_DECODER_n_19;
  wire I_DECODER_n_20;
  wire I_DECODER_n_21;
  wire I_DECODER_n_22;
  wire I_DECODER_n_23;
  wire I_DECODER_n_24;
  wire I_DECODER_n_25;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_28;
  wire I_DECODER_n_29;
  wire I_DECODER_n_30;
  wire I_DECODER_n_31;
  wire I_DECODER_n_32;
  wire I_DECODER_n_33;
  wire I_DECODER_n_34;
  wire I_DECODER_n_35;
  wire I_DECODER_n_36;
  wire I_DECODER_n_37;
  wire I_DECODER_n_38;
  wire I_DECODER_n_39;
  wire I_DECODER_n_4;
  wire I_DECODER_n_40;
  wire I_DECODER_n_41;
  wire I_DECODER_n_42;
  wire I_DECODER_n_43;
  wire I_DECODER_n_44;
  wire I_DECODER_n_45;
  wire I_DECODER_n_47;
  wire I_DECODER_n_48;
  wire I_DECODER_n_5;
  wire I_DECODER_n_7;
  wire I_DECODER_n_8;
  wire I_DECODER_n_9;
  wire [5:0]Q;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [2:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire \bus2ip_addr_i[2]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[3]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[4]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[5]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[5]_i_2__0_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire bus2ip_rnw_i_reg_n_0;
  wire [31:0]dpo;
  wire empty_error;
  wire empty_error_reg;
  wire full_error_reg;
  wire is_read;
  wire is_read_i_1__0_n_0;
  wire is_read_reg_0;
  wire is_read_reg_n_0;
  wire [0:2]is_register;
  wire is_register07_out__0;
  wire is_write;
  wire is_write_reg_n_0;
  wire p_5_in;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_reg_0;
  wire [0:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [2:0]\s_axi_rdata_i_reg[2]_1 ;
  wire [5:0]\s_axi_rdata_i_reg[5]_0 ;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(S1_AXI_ARVALID),
        .I1(S1_AXI_WVALID),
        .I2(S1_AXI_AWVALID),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(S1_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S1_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_9),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_8),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  mailbox_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(bus2ip_rnw_i_reg_n_0),
        .CO(CO),
        .D({I_DECODER_n_4,I_DECODER_n_5}),
        .E(E),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\FSM_onehot_state_reg[2] ({I_DECODER_n_7,I_DECODER_n_8,I_DECODER_n_9}),
        .\FSM_onehot_state_reg[3] ({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ({I_DECODER_n_14,I_DECODER_n_15,I_DECODER_n_16,I_DECODER_n_17,I_DECODER_n_18,I_DECODER_n_19,I_DECODER_n_20,I_DECODER_n_21,I_DECODER_n_22,I_DECODER_n_23,I_DECODER_n_24,I_DECODER_n_25,I_DECODER_n_26,I_DECODER_n_27,I_DECODER_n_28,I_DECODER_n_29,I_DECODER_n_30,I_DECODER_n_31,I_DECODER_n_32,I_DECODER_n_33,I_DECODER_n_34,I_DECODER_n_35,I_DECODER_n_36,I_DECODER_n_37,I_DECODER_n_38,I_DECODER_n_39,I_DECODER_n_40,I_DECODER_n_41,I_DECODER_n_42,I_DECODER_n_43,I_DECODER_n_44,I_DECODER_n_45}),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ({\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .Q(start2),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARREADY(is_read_reg_n_0),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WREADY(is_write_reg_n_0),
        .S1_AXI_WREADY_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .dpo(dpo),
        .empty_error(empty_error),
        .empty_error_reg(empty_error_reg),
        .full_error_reg(full_error_reg),
        .is_read_reg(is_read_reg_0),
        .is_register(is_register),
        .is_register07_out__0(is_register07_out__0),
        .p_5_in(p_5_in),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg_0),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2]_1 ),
        .\s_axi_rdata_i_reg[5] (Q),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5]_0 ),
        .s_axi_rvalid_i_reg(state),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg_0),
        .state1__2(state1__2),
        .\state_reg[0] (I_DECODER_n_47),
        .\state_reg[1] (I_DECODER_n_48));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1__0 
       (.I0(S1_AXI_ARADDR[0]),
        .I1(S1_AXI_AWADDR[0]),
        .I2(S1_AXI_ARVALID),
        .O(\bus2ip_addr_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1__0 
       (.I0(S1_AXI_ARADDR[1]),
        .I1(S1_AXI_AWADDR[1]),
        .I2(S1_AXI_ARVALID),
        .O(\bus2ip_addr_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1__0 
       (.I0(S1_AXI_ARADDR[2]),
        .I1(S1_AXI_AWADDR[2]),
        .I2(S1_AXI_ARVALID),
        .O(\bus2ip_addr_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[5]_i_1__0 
       (.I0(S1_AXI_ARVALID),
        .I1(S1_AXI_AWVALID),
        .I2(S1_AXI_WVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_2__0 
       (.I0(S1_AXI_ARADDR[3]),
        .I1(S1_AXI_AWADDR[3]),
        .I2(S1_AXI_ARVALID),
        .O(\bus2ip_addr_i[5]_i_2__0_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[5]_i_2__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(S1_AXI_ARVALID),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S1_AXI_BREADY),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(S1_AXI_RREADY),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S1_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S1_AXI_ACLK),
        .CE(is_read_i_1__0_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    is_write_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S1_AXI_ARVALID),
        .I2(S1_AXI_AWVALID),
        .I3(S1_AXI_WVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S1_AXI_ACLK),
        .CE(is_read_i_1__0_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_I),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_48),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_45),
        .Q(S1_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_35),
        .Q(S1_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_34),
        .Q(S1_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_33),
        .Q(S1_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_32),
        .Q(S1_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_31),
        .Q(S1_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_30),
        .Q(S1_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_29),
        .Q(S1_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_28),
        .Q(S1_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_27),
        .Q(S1_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_26),
        .Q(S1_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_44),
        .Q(S1_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_25),
        .Q(S1_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_24),
        .Q(S1_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_23),
        .Q(S1_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_22),
        .Q(S1_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_21),
        .Q(S1_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_20),
        .Q(S1_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_19),
        .Q(S1_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_18),
        .Q(S1_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_17),
        .Q(S1_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_16),
        .Q(S1_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_43),
        .Q(S1_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_15),
        .Q(S1_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_14),
        .Q(S1_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_42),
        .Q(S1_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_41),
        .Q(S1_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_40),
        .Q(S1_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_39),
        .Q(S1_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_38),
        .Q(S1_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_37),
        .Q(S1_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_36),
        .Q(S1_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_47),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S1_AXI_AWVALID),
        .I1(S1_AXI_WVALID),
        .I2(S1_AXI_ARVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2__0 
       (.I0(S1_AXI_AWVALID),
        .I1(S1_AXI_WVALID),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_5),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_4),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module mailbox_0_slave_attachment_5
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    is_read_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    is_register07_out,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    S0_AXI_WDATA,
    data1,
    FSL0_M_Full_I,
    dpo,
    CO,
    \s_axi_rdata_i_reg[2]_0 ,
    FSL0_S_Exists_I,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    Q,
    is_register,
    \s_axi_rdata_i_reg[5]_0 ,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR,
    \s_axi_rdata_i_reg[2]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output is_read_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output is_register07_out;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input [2:0]S0_AXI_WDATA;
  input [1:0]data1;
  input FSL0_M_Full_I;
  input [31:0]dpo;
  input [0:0]CO;
  input [0:0]\s_axi_rdata_i_reg[2]_0 ;
  input FSL0_S_Exists_I;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input [5:0]Q;
  input [0:2]is_register;
  input [5:0]\s_axi_rdata_i_reg[5]_0 ;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;
  input [2:0]\s_axi_rdata_i_reg[2]_1 ;

  wire Bus_RNW_reg_reg;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSL0_M_Full_I;
  wire FSL0_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire I_DECODER_n_14;
  wire I_DECODER_n_15;
  wire I_DECODER_n_16;
  wire I_DECODER_n_17;
  wire I_DECODER_n_18;
  wire I_DECODER_n_19;
  wire I_DECODER_n_20;
  wire I_DECODER_n_21;
  wire I_DECODER_n_22;
  wire I_DECODER_n_23;
  wire I_DECODER_n_24;
  wire I_DECODER_n_25;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_28;
  wire I_DECODER_n_29;
  wire I_DECODER_n_30;
  wire I_DECODER_n_31;
  wire I_DECODER_n_32;
  wire I_DECODER_n_33;
  wire I_DECODER_n_34;
  wire I_DECODER_n_35;
  wire I_DECODER_n_36;
  wire I_DECODER_n_37;
  wire I_DECODER_n_38;
  wire I_DECODER_n_39;
  wire I_DECODER_n_4;
  wire I_DECODER_n_40;
  wire I_DECODER_n_41;
  wire I_DECODER_n_42;
  wire I_DECODER_n_43;
  wire I_DECODER_n_44;
  wire I_DECODER_n_45;
  wire I_DECODER_n_47;
  wire I_DECODER_n_48;
  wire I_DECODER_n_5;
  wire I_DECODER_n_7;
  wire I_DECODER_n_8;
  wire I_DECODER_n_9;
  wire [5:0]Q;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [2:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire SYS_Rst_I;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire bus2ip_rnw_i;
  wire clear;
  wire [1:0]data1;
  wire [31:0]dpo;
  wire empty_error;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_0;
  wire is_read_reg_n_0;
  wire [0:2]is_register;
  wire is_register07_out;
  wire is_write;
  wire is_write_reg_n_0;
  wire [5:2]p_1_in;
  wire p_5_in;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_reg_0;
  wire [0:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [2:0]\s_axi_rdata_i_reg[2]_1 ;
  wire [5:0]\s_axi_rdata_i_reg[5]_0 ;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S0_AXI_ARVALID),
        .I1(S0_AXI_WVALID),
        .I2(S0_AXI_AWVALID),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(S0_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S0_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_9),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_8),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  mailbox_0_address_decoder_6 I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .CO(CO),
        .D({I_DECODER_n_4,I_DECODER_n_5}),
        .E(E),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\FSM_onehot_state_reg[2] ({I_DECODER_n_7,I_DECODER_n_8,I_DECODER_n_9}),
        .\FSM_onehot_state_reg[3] ({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ({I_DECODER_n_14,I_DECODER_n_15,I_DECODER_n_16,I_DECODER_n_17,I_DECODER_n_18,I_DECODER_n_19,I_DECODER_n_20,I_DECODER_n_21,I_DECODER_n_22,I_DECODER_n_23,I_DECODER_n_24,I_DECODER_n_25,I_DECODER_n_26,I_DECODER_n_27,I_DECODER_n_28,I_DECODER_n_29,I_DECODER_n_30,I_DECODER_n_31,I_DECODER_n_32,I_DECODER_n_33,I_DECODER_n_34,I_DECODER_n_35,I_DECODER_n_36,I_DECODER_n_37,I_DECODER_n_38,I_DECODER_n_39,I_DECODER_n_40,I_DECODER_n_41,I_DECODER_n_42,I_DECODER_n_43,I_DECODER_n_44,I_DECODER_n_45}),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ({\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .Q(start2),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARREADY(is_read_reg_n_0),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WREADY(is_write_reg_n_0),
        .S0_AXI_WREADY_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .data1(data1),
        .dpo(dpo),
        .empty_error(empty_error),
        .is_read_reg(is_read_reg_0),
        .is_register(is_register),
        .is_register07_out(is_register07_out),
        .p_5_in(p_5_in),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg_0),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2]_1 ),
        .\s_axi_rdata_i_reg[5] (Q),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5]_0 ),
        .s_axi_rvalid_i_reg(state),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg_0),
        .state1__2(state1__2),
        .\state_reg[0] (I_DECODER_n_47),
        .\state_reg[1] (I_DECODER_n_48));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S0_AXI_ARADDR[0]),
        .I1(S0_AXI_AWADDR[0]),
        .I2(S0_AXI_ARVALID),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S0_AXI_ARADDR[1]),
        .I1(S0_AXI_AWADDR[1]),
        .I2(S0_AXI_ARVALID),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S0_AXI_ARADDR[2]),
        .I1(S0_AXI_AWADDR[2]),
        .I2(S0_AXI_ARVALID),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(S0_AXI_ARVALID),
        .I1(S0_AXI_AWVALID),
        .I2(S0_AXI_WVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_2 
       (.I0(S0_AXI_ARADDR[3]),
        .I1(S0_AXI_AWADDR[3]),
        .I2(S0_AXI_ARVALID),
        .O(p_1_in[5]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(S0_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S0_AXI_BREADY),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(S0_AXI_RREADY),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S0_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S0_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S0_AXI_ARVALID),
        .I2(S0_AXI_AWVALID),
        .I3(S0_AXI_WVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S0_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_I),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_48),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_45),
        .Q(S0_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_35),
        .Q(S0_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_34),
        .Q(S0_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_33),
        .Q(S0_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_32),
        .Q(S0_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_31),
        .Q(S0_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_30),
        .Q(S0_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_29),
        .Q(S0_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_28),
        .Q(S0_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_27),
        .Q(S0_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_26),
        .Q(S0_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_44),
        .Q(S0_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_25),
        .Q(S0_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_24),
        .Q(S0_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_23),
        .Q(S0_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_22),
        .Q(S0_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_21),
        .Q(S0_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_20),
        .Q(S0_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_19),
        .Q(S0_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_18),
        .Q(S0_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_17),
        .Q(S0_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_16),
        .Q(S0_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_43),
        .Q(S0_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_15),
        .Q(S0_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_14),
        .Q(S0_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_42),
        .Q(S0_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_41),
        .Q(S0_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_40),
        .Q(S0_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_39),
        .Q(S0_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_38),
        .Q(S0_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_37),
        .Q(S0_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_36),
        .Q(S0_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_47),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S0_AXI_AWVALID),
        .I1(S0_AXI_WVALID),
        .I2(S0_AXI_ARVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(S0_AXI_AWVALID),
        .I1(S0_AXI_WVALID),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_5),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_4),
        .Q(state[1]),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
