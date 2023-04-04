vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mailbox_v2_1_13
vlib questa_lib/msim/xil_defaultlib

vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mailbox_v2_1_13 questa_lib/msim/mailbox_v2_1_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mailbox_v2_1_13 -64 -93 \
"../../../ipstatic/hdl/mailbox_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Octopos_MailBox_v1.srcs/sources_1/imports/sources_1/ip/mailbox_0/sim/mailbox_0.vhd" \


