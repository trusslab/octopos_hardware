`include "./rom_fuse_v1_0.v"
`include "./rom_fuse_v1_0_S00_AXI.v"
module testbench #
(
	// Users to add parameters here

	// User parameters ends
	// Do not modify the parameters beyond this line


	// Parameters of Axi Slave Bus Interface S00_AXI
	parameter integer C_S00_AXI_DATA_WIDTH	= 32,
	parameter integer C_S00_AXI_ADDR_WIDTH	= 4
)
(
	input wire  s00_axi_aclk,
	input wire  s00_axi_aresetn,
	input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
	input wire [2 : 0] s00_axi_awprot,
	input wire  s00_axi_awvalid,
	output wire  s00_axi_awready,
	input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
	input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
	input wire  s00_axi_wvalid,
	output wire  s00_axi_wready,
	output wire [1 : 0] s00_axi_bresp,
	output wire  s00_axi_bvalid,
	input wire  s00_axi_bready,
	input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
	input wire [2 : 0] s00_axi_arprot,
	input wire  s00_axi_arvalid,
	output wire  s00_axi_arready,
	output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
	output wire [1 : 0] s00_axi_rresp,
	output wire  s00_axi_rvalid,
	input wire  s00_axi_rready,
	input wire [3:0] we_in,
	output wire [3:0] we_out,
	output wire locked_out
);

rom_fuse_v1_0 uut
	(
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
		we_in,
		we_out,
		locked_out
	);
  wire clk;	
  wire locked;
  assign clk = s00_axi_aclk;
  assign locked = locked_out;

  reg [7:0] init_counter = 0;
  always @(posedge clk) begin
    if ( init_counter == 1 ) 
		  assume (locked == 1'b1);

    if ( init_counter >2 ) begin
	assert(locked == 1'b1);
    end
    if (init_counter < 100)
    	init_counter <= init_counter + 8'b1;
  end

endmodule
