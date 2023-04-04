onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mailbox_0_opt

do {wave.do}

view wave
view structure
view signals

do {mailbox_0.udo}

run -all

quit -force
