First, you need to install the SymbiYosis tool:
	https://symbiyosys.readthedocs.io/en/latest/install.html

To run each proof:
	1) cd to the test{n} directory
	2) execute: sby -f test{n}.sby

If the proof fails and you want to check the failing input waveform you can use gtkwave.
On ubuntu you can install it with:
	sudo apt get install gtkwave

you can find the failing input vcd file in test{n}/test{n}/engine_0
you can then open the vcd waveform using:

	gtkwave filename.vcd

