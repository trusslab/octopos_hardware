vlib work
vlib riviera

vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mailbox_v2_1_13
vlib riviera/xil_defaultlib

vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mailbox_v2_1_13 riviera/mailbox_v2_1_13
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mailbox_v2_1_13 -93 \
"../../../ipstatic/hdl/mailbox_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Octopos_MailBox_v1.srcs/sources_1/imports/sources_1/ip/mailbox_0/sim/mailbox_0.vhd" \


