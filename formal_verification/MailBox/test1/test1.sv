`include "./Octopos_MailBox_Ctrl_Interface_Manager.v"
module testbench(
	input clk,
	input aresetn,
	input [31:0] state_reg,
	input interrupt_clear,
	output reg [31:0] s_read_state_value
);

wire interrupt;
`define ID0 8'd0
`define ID_FIXED 9'b111111111

  Octopos_MailBox_Ctrl_Interface_Manager uut (
     .S_CLK(clk),
     .S_ARESETN(aresetn),
     .S_SYSTEM_STATE_REG(state_reg), 
     .S_INTERRUPT_CLEAR(interrupt_clear),
     .S_READ_STATE_VALUE(s_read_state_value),
     .S_INTERRUPT(interrupt),
     .S_ID(`ID_FIXED)
  );

  reg init = 1;
  always @(posedge clk) begin
    if (init) assume (!aresetn);
    if (aresetn) assert (s_read_state_value == state_reg);
    init <= 0;
  end

endmodule
