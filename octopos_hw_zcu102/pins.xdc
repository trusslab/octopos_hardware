set_property PACKAGE_PIN AG14 [get_ports GPIO_LED[0]] 
set_property PACKAGE_PIN AF13 [get_ports GPIO_LED[1]]
set_property PACKAGE_PIN AE13 [get_ports GPIO_LED[2]]
set_property PACKAGE_PIN AJ14 [get_ports GPIO_LED[3]]
set_property PACKAGE_PIN AJ15 [get_ports GPIO_LED[4]]
set_property PACKAGE_PIN AH13 [get_ports GPIO_LED[5]]
set_property PACKAGE_PIN AH14 [get_ports GPIO_LED[6]]
set_property PACKAGE_PIN AL12 [get_ports GPIO_LED[7]]

set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[0]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[1]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[2]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[3]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[4]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[5]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[6]]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED[7]]


set_property PACKAGE_PIN D20 [get_ports uart_serial_out_tx]
set_property PACKAGE_PIN E20 [get_ports uart_os_tx]
set_property PACKAGE_PIN D22 [get_ports uart_network_tx]
set_property PACKAGE_PIN E22 [get_ports uart_storage_tx]
set_property PACKAGE_PIN J20 [get_ports uart_enclv0_tx]
set_property PACKAGE_PIN J19 [get_ports uart_enclv1_tx]
set_property PACKAGE_PIN F20 [get_ports tpm_tx]
set_property PACKAGE_PIN G20 [get_ports tpm_rx]
#set_property PACKAGE_PIN F20 [get_ports uart_enclv0_tx]
#set_property PACKAGE_PIN G20 [get_ports uart_enclv1_tx]
#set_property PACKAGE_PIN J20 [get_ports tpm_tx]
#set_property PACKAGE_PIN J19 [get_ports tpm_rx]

set_property IOSTANDARD LVCMOS33 [get_ports uart_serial_out_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_os_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_network_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_storage_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_enclv0_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_enclv1_tx]
set_property IOSTANDARD LVCMOS33 [get_ports tpm_tx]
set_property IOSTANDARD LVCMOS33 [get_ports tpm_rx]


#sfp0
set_property PACKAGE_PIN A12 [get_ports sfp_tx_dis]
set_property IOSTANDARD LVCMOS33 [get_ports sfp_tx_dis]
set_property PACKAGE_PIN E4 [get_ports s*_txp]
set_property PACKAGE_PIN D2 [get_ports s*_rxp]
set_property PACKAGE_PIN E3 [get_ports sfp_txn]
set_property PACKAGE_PIN D1 [get_ports sfp_rxn]

#USER_MGT_SI570_CLOCK2_C_P
set_property PACKAGE_PIN C8      [get_ports mgt_clk_clk_p]
create_clock -name gt_ref_clk -period 8.0 [get_ports mgt_clk_clk_p]

#PMOD_SD
set_property PACKAGE_PIN A20 [get_ports pmod_pin1_io]
set_property PACKAGE_PIN B20 [get_ports pmod_pin2_io]
set_property PACKAGE_PIN A22 [get_ports pmod_pin3_io]
set_property PACKAGE_PIN A21 [get_ports pmod_pin4_io]
set_property PACKAGE_PIN B21 [get_ports pmod_pin7_io]
set_property PACKAGE_PIN C21 [get_ports pmod_pin8_io]
set_property PACKAGE_PIN C22 [get_ports pmod_pin9_io]
set_property PACKAGE_PIN D21 [get_ports pmod_pin10_io]

set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin1_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin2_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin3_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin4_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin7_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin8_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin9_io]
set_property IOSTANDARD LVCMOS33 [get_ports pmod_pin10_io]

