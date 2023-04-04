onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L axi_lite_ipif_v3_0_4 -L mailbox_v2_1_13 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.mailbox_0

do {wave.do}

view wave
view structure
view signals

do {mailbox_0.udo}

run -all

quit -force
