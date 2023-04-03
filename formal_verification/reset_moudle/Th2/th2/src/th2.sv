`include "./Octopos_reset_module_v1_0_S00_AXI.v"
`include "./Octopos_reset_module.v"

module testbench(
	input wire  s00_axi_aclk,
	input wire  s00_axi_aresetn,
	input wire [31 : 0] s00_axi_awaddr,
	input wire [2 : 0] s00_axi_awprot,
	input wire  s00_axi_awvalid,
	output wire  s00_axi_awready,
	input wire [31 : 0] s00_axi_wdata,
	input wire [3 : 0] s00_axi_wstrb,
	input wire  s00_axi_wvalid,
	output wire  s00_axi_wready,
	output wire [1 : 0] s00_axi_bresp,
	output wire  s00_axi_bvalid,
	input wire  s00_axi_bready,
	input wire [31 : 0] s00_axi_araddr,
	input wire [2 : 0] s00_axi_arprot,
	input wire  s00_axi_arvalid,
	output wire  s00_axi_arready,
	output wire [31 : 0] s00_axi_rdata,
	output wire [1 : 0] s00_axi_rresp,
	output wire  s00_axi_rvalid,
	input wire  s00_axi_rready,
	input wire in_reset_n,
	input wire system_sync_clk,
	input wire mailbox0_busy_n,
	input wire mailbox1_busy_n,
	input wire mailbox2_busy_n,
	input wire mailbox3_busy_n,
	input wire domain0_busy,
	input wire domain1_busy,
	input wire domain2_busy,
	input wire domain3_busy,
	input wire domain4_busy,
	input wire domain5_busy,
	input wire domain6_busy,
	input wire domain7_busy,
	output reg out_reset_n,
	output fr
);

Octopos_reset_module_v1_0 orm_inst(
	s00_axi_aclk,
	s00_axi_aresetn,
	s00_axi_awaddr,
	s00_axi_awprot,
	s00_axi_awvalid,
	s00_axi_awready,
	s00_axi_wdata,
	s00_axi_wstrb,
	s00_axi_wvalid,
	s00_axi_wready,
	s00_axi_bresp,
	s00_axi_bvalid,
	s00_axi_bready,
	s00_axi_araddr,
	s00_axi_arprot,
	s00_axi_arvalid,
	s00_axi_arready,
	s00_axi_rdata,
	s00_axi_rresp,
	s00_axi_rvalid,
	s00_axi_rready,
	in_reset_n,
	system_sync_clk,
	mailbox0_busy_n,
	mailbox1_busy_n,
	mailbox2_busy_n,
	mailbox3_busy_n,
	domain0_busy,
	domain1_busy,
	domain2_busy,
	domain3_busy,
	domain4_busy,
	domain5_busy,
	domain6_busy,
	domain7_busy,
	out_reset_n,
	fr
);


  wire [7:0] domains_busy;
  assign domains_busy[0] = domain0_busy;
  assign domains_busy[1] = domain1_busy;
  assign domains_busy[2] = domain2_busy;
  assign domains_busy[3] = domain3_busy;
  assign domains_busy[4] = domain4_busy;
  assign domains_busy[5] = domain5_busy;
  assign domains_busy[6] = domain6_busy;
  assign domains_busy[7] = domain7_busy;


  reg  init = 1;
  wire clk;
  wire resetn;
  assign clk = s00_axi_aclk;
  assign resetn = s00_axi_aresetn;
  always @(posedge clk) begin
    if (init) assume (resetn == 1'b0);
    if (resetn) begin
	assume(fr == 1'b0);    
	if (domains_busy != 8'b0) begin
		assert(out_reset_n == 1'b1);    
	end
    end else begin
    end
    init <= 0;
  end

endmodule
