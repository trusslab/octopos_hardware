`include "./network_arbiter_main_logic.v"
`include "./Network_arbitter_simple.v"
`include "./Octopos_Arbiter_ctrl_AXI.v"

module testbench(
	// MailBox Main Signals
	input wire S_CLK,
	input wire S_ARESETN,
	input wire  s_ctrl0_axi_aclk,
	input wire  s_ctrl0_axi_aresetn,
	input wire [31: 0] s_ctrl0_axi_awaddr,
	input wire [2 : 0] s_ctrl0_axi_awprot,
	input wire  s_ctrl0_axi_awvalid,
	output wire  s_ctrl0_axi_awready,
	input wire [31: 0] s_ctrl0_axi_wdata,
	input wire [3: 0] s_ctrl0_axi_wstrb,
	input wire  s_ctrl0_axi_wvalid,
	output wire  s_ctrl0_axi_wready,
	output wire [1 : 0] s_ctrl0_axi_bresp,
	output wire  s_ctrl0_axi_bvalid,
	input wire  s_ctrl0_axi_bready,
	input wire [31: 0] s_ctrl0_axi_araddr,
	input wire [2 : 0] s_ctrl0_axi_arprot,
	input wire  s_ctrl0_axi_arvalid,
	output wire  s_ctrl0_axi_arready,
	output wire [31: 0] s_ctrl0_axi_rdata,
	output wire [1 : 0] s_ctrl0_axi_rresp,
	output wire  s_ctrl0_axi_rvalid,
	input wire  s_ctrl0_axi_rready,
	input wire T_axi_txd_aresetn,
	input wire T_axi_txc_aresetn,
	input wire T_axi_rxd_aresetn,
	input wire T_axi_rxs_aresetn,
	input wire [31 : 0] T_s_axis_txc_tdata,
	input wire [3 : 0] T_s_axis_txc_tkeep,
	input wire T_s_axis_txc_tlast,
	output wire T_s_axis_txc_tready,
	input wire T_s_axis_txc_tvalid,
	input wire [31 : 0] T_s_axis_txd_tdata,
	input wire [3 : 0] T_s_axis_txd_tkeep,
	input wire T_s_axis_txd_tlast,
	output wire T_s_axis_txd_tready,
	input wire T_s_axis_txd_tvalid,
	output wire [31 : 0] T_m_axis_rxd_tdata,
	output wire [3 : 0] T_m_axis_rxd_tkeep,
	output wire T_m_axis_rxd_tlast,
	input wire T_m_axis_rxd_tready,
	output wire T_m_axis_rxd_tvalid,
	output wire [31 : 0] T_m_axis_rxs_tdata,
	output wire [3 : 0] T_m_axis_rxs_tkeep,
	output wire T_m_axis_rxs_tlast,
	input wire T_m_axis_rxs_tready,
	output wire T_m_axis_rxs_tvalid,
	input wire U_axi_txd_aresetn,
	input wire U_axi_txc_aresetn,
	input wire U_axi_rxd_aresetn,
	input wire U_axi_rxs_aresetn,
	input wire [31 : 0] U_s_axis_txc_tdata,
	input wire [3 : 0] U_s_axis_txc_tkeep,
	input wire U_s_axis_txc_tlast,
	output wire U_s_axis_txc_tready,
	input wire U_s_axis_txc_tvalid,
	input wire [31 : 0] U_s_axis_txd_tdata,
	input wire [3 : 0] U_s_axis_txd_tkeep,
	input wire U_s_axis_txd_tlast,
	output wire U_s_axis_txd_tready,
	input wire U_s_axis_txd_tvalid,
	output wire [31 : 0] U_m_axis_rxd_tdata,
	output wire [3 : 0] U_m_axis_rxd_tkeep,
	output wire U_m_axis_rxd_tlast,
	input wire U_m_axis_rxd_tready,
	output wire U_m_axis_rxd_tvalid,
	output wire [31 : 0] U_m_axis_rxs_tdata,
	output wire [3 : 0] U_m_axis_rxs_tkeep,
	output wire U_m_axis_rxs_tlast,
	input wire U_m_axis_rxs_tready,
	output wire U_m_axis_rxs_tvalid,
	output wire O_axi_txd_aresetn,
	output wire O_axi_txc_aresetn,
	output wire O_axi_rxd_aresetn,
	output wire O_axi_rxs_aresetn,
	output wire [31 : 0] O_s_axis_txc_tdata,
	output wire [3 : 0] O_s_axis_txc_tkeep,
	output wire O_s_axis_txc_tlast,
	input wire O_s_axis_txc_tready,
	output wire O_s_axis_txc_tvalid,
	output wire [31 : 0] O_s_axis_txd_tdata,
	output wire [3 : 0] O_s_axis_txd_tkeep,
	output wire O_s_axis_txd_tlast,
	input wire O_s_axis_txd_tready,
	output wire O_s_axis_txd_tvalid,
	input wire [31 : 0] O_m_axis_rxd_tdata,
	input wire [3 : 0] O_m_axis_rxd_tkeep,
	input wire O_m_axis_rxd_tlast,
	output wire O_m_axis_rxd_tready,
	input wire O_m_axis_rxd_tvalid,
	input wire [31 : 0] O_m_axis_rxs_tdata,
	input wire [3 : 0] O_m_axis_rxs_tkeep,
	input wire O_m_axis_rxs_tlast,
	output wire O_m_axis_rxs_tready,
	input wire O_m_axis_rxs_tvalid,
	output wire trusted	
);



Network_arbitter_simple nas_inst(
		 S_CLK,
		 S_ARESETN,
		 s_ctrl0_axi_aclk,
		 s_ctrl0_axi_aresetn,
		 s_ctrl0_axi_awaddr,
		 s_ctrl0_axi_awprot,
		 s_ctrl0_axi_awvalid,
		 s_ctrl0_axi_awready,
		 s_ctrl0_axi_wdata,
		 s_ctrl0_axi_wstrb,
		 s_ctrl0_axi_wvalid,
		 s_ctrl0_axi_wready,
		 s_ctrl0_axi_bresp,
		 s_ctrl0_axi_bvalid,
		 s_ctrl0_axi_bready,
		 s_ctrl0_axi_araddr,
		 s_ctrl0_axi_arprot,
		 s_ctrl0_axi_arvalid,
		 s_ctrl0_axi_arready,
		 s_ctrl0_axi_rdata,
		 s_ctrl0_axi_rresp,
		 s_ctrl0_axi_rvalid,
		 s_ctrl0_axi_rready,
		 T_axi_txd_aresetn,
		 T_axi_txc_aresetn,
		 T_axi_rxd_aresetn,
		 T_axi_rxs_aresetn,
		 T_s_axis_txc_tdata,
		 T_s_axis_txc_tkeep,
		 T_s_axis_txc_tlast,
		 T_s_axis_txc_tready,
		 T_s_axis_txc_tvalid,
		 T_s_axis_txd_tdata,
		 T_s_axis_txd_tkeep,
		 T_s_axis_txd_tlast,
		 T_s_axis_txd_tready,
		 T_s_axis_txd_tvalid,
		 T_m_axis_rxd_tdata,
		 T_m_axis_rxd_tkeep,
		 T_m_axis_rxd_tlast,
		 T_m_axis_rxd_tready,
		 T_m_axis_rxd_tvalid,
		 T_m_axis_rxs_tdata,
		 T_m_axis_rxs_tkeep,
		 T_m_axis_rxs_tlast,
		 T_m_axis_rxs_tready,
		 T_m_axis_rxs_tvalid,
		 U_axi_txd_aresetn,
		 U_axi_txc_aresetn,
		 U_axi_rxd_aresetn,
		 U_axi_rxs_aresetn,
		 U_s_axis_txc_tdata,
		 U_s_axis_txc_tkeep,
		 U_s_axis_txc_tlast,
		 U_s_axis_txc_tready,
		 U_s_axis_txc_tvalid,
		 U_s_axis_txd_tdata,
		 U_s_axis_txd_tkeep,
		 U_s_axis_txd_tlast,
		 U_s_axis_txd_tready,
		 U_s_axis_txd_tvalid,
		 U_m_axis_rxd_tdata,
		 U_m_axis_rxd_tkeep,
		 U_m_axis_rxd_tlast,
		 U_m_axis_rxd_tready,
		 U_m_axis_rxd_tvalid,
		 U_m_axis_rxs_tdata,
		 U_m_axis_rxs_tkeep,
		 U_m_axis_rxs_tlast,
		 U_m_axis_rxs_tready,
		 U_m_axis_rxs_tvalid,
		 O_axi_txd_aresetn,
		 O_axi_txc_aresetn,
		 O_axi_rxd_aresetn,
		 O_axi_rxs_aresetn,
		 O_s_axis_txc_tdata,
		 O_s_axis_txc_tkeep,
		 O_s_axis_txc_tlast,
		 O_s_axis_txc_tready,
		 O_s_axis_txc_tvalid,
		 O_s_axis_txd_tdata,
		 O_s_axis_txd_tkeep,
		 O_s_axis_txd_tlast,
		 O_s_axis_txd_tready,
		 O_s_axis_txd_tvalid,
		 O_m_axis_rxd_tdata,
		 O_m_axis_rxd_tkeep,
		 O_m_axis_rxd_tlast,
		 O_m_axis_rxd_tready,
		 O_m_axis_rxd_tvalid,
		 O_m_axis_rxs_tdata,
		 O_m_axis_rxs_tkeep,
		 O_m_axis_rxs_tlast,
		 O_m_axis_rxs_tready,
		 O_m_axis_rxs_tvalid,
		 trusted	


	);//Ports def end


  reg prev_trusted;

  reg  init = 1;
  wire clk;
  wire resetn;
  assign clk = S_CLK;
  assign resetn = S_ARESETN;
  always @(posedge clk) begin
    if (init) assume (resetn == 1'b0);
    if (resetn) begin
	assume(trusted == 1'b0);
	assert(O_axi_txd_aresetn   == U_axi_txd_aresetn  ); 
	assert(O_axi_txc_aresetn   == U_axi_txc_aresetn  );    
	assert(O_axi_rxd_aresetn   == U_axi_rxd_aresetn  );  
	assert(O_axi_rxs_aresetn   == U_axi_rxs_aresetn  );  
	assert(O_s_axis_txc_tdata  == U_s_axis_txc_tdata );  
	assert(O_s_axis_txc_tkeep  == U_s_axis_txc_tkeep );   
	assert(O_s_axis_txc_tlast  == U_s_axis_txc_tlast );   
	assert(O_s_axis_txc_tready == U_s_axis_txc_tready);    
	assert(O_s_axis_txc_tvalid == U_s_axis_txc_tvalid);   
	assert(O_s_axis_txd_tdata  == U_s_axis_txd_tdata );    
	assert(O_s_axis_txd_tkeep  == U_s_axis_txd_tkeep );    
	assert(O_s_axis_txd_tlast  == U_s_axis_txd_tlast );    
	assert(O_s_axis_txd_tready == U_s_axis_txd_tready);    
	assert(O_s_axis_txd_tvalid == U_s_axis_txd_tvalid);    
	assert(O_m_axis_rxd_tdata  == U_m_axis_rxd_tdata );   
	assert(O_m_axis_rxd_tkeep  == U_m_axis_rxd_tkeep );   
	assert(O_m_axis_rxd_tlast  == U_m_axis_rxd_tlast );   
	assert(O_m_axis_rxd_tready == U_m_axis_rxd_tready);    
	assert(O_m_axis_rxd_tvalid == U_m_axis_rxd_tvalid);    
	assert(O_m_axis_rxs_tdata  == U_m_axis_rxs_tdata );    
	assert(O_m_axis_rxs_tkeep  == U_m_axis_rxs_tkeep );    
	assert(O_m_axis_rxs_tlast  == U_m_axis_rxs_tlast );   
	assert(O_m_axis_rxs_tready == U_m_axis_rxs_tready);    
	assert(O_m_axis_rxs_tvalid == U_m_axis_rxs_tvalid);    
    end else begin
	prev_trusted <= 1;
    end
    init <= 0;
  end

endmodule
