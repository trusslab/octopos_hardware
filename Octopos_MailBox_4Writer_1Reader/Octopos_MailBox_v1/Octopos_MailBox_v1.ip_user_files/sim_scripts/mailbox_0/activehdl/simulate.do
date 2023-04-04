onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mailbox_0 -L axi_lite_ipif_v3_0_4 -L mailbox_v2_1_13 -L xil_defaultlib -L secureip -O5 xil_defaultlib.mailbox_0

do {wave.do}

view wave
view structure

do {mailbox_0.udo}

run -all

endsim

quit -force
