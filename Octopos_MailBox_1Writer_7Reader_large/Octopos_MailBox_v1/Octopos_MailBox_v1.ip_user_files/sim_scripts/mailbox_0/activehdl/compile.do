vlib work
vlib activehdl

vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mailbox_v2_1_13
vlib activehdl/xil_defaultlib

vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap mailbox_v2_1_13 activehdl/mailbox_v2_1_13
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mailbox_v2_1_13 -93 \
"../../../ipstatic/hdl/mailbox_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Octopos_MailBox_v1.srcs/sources_1/imports/sources_1/ip/mailbox_0/sim/mailbox_0.vhd" \


