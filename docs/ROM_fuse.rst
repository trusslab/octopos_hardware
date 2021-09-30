================
ROM fuse
================

:Author: - Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)

------------------------------
What is the ROM fuse?
------------------------------

For security purposes, we want to use read-only memory for the Octopos bootloader.
Meanwhile pre-populating the ROM IP with the bootloader binary is very hard, and it requires hardware synthesis/implementation/place/route every time we change the bootloader program.
As a result, our ideal model is a memory that acts as a RAM at the very beginning of the system's power-up and later can be converted to ROM irreversibly.
ROM fuse is a simple piece of hardware that enables this capability. 

-----------------------------
How ROM fuse works
-----------------------------

ROM fuse receives the memory bus WE (write enable) signal and outputs the WE signal connected to the actual RAM device.
ROM fuse has one internal state, it is a register that indicates that the fuse is burnt yet or not. 
If the fuse is not burnt ROM fuse forwards the input WE signal to ouput WE. 
However, if the fuse is burnt, output WE always will be Zero. 
Hence no write to the memory is possible after the fuse is burnt.
A crucial characteristic of the fuse is that burning it is irreversible. 
ROM fuse exposes an AXI interface for burning the fuse. 

---------------------------------------
Fuse implementation
---------------------------------------

Having a one time writable state register does not seem challenging at first.
All we need to do is as following:

1) initialize the fuse in unburnt status. (e.g.  :code:`fuse = 0`)

2) Everytime that the processor wants to re-write the state register we only let it re-write if the fuse is unburnt ( e.g. :code:`if( fuse == 0) { fuse = burnt_value}` )


challenge 
---------------------------------------

We want the fuse burning to be irreversible, even by the reset signal. 
It means that even when the resource manager resets a domain and a reset signal re-initializes all the hardware in the domain, we want a burnt fuse to remain burnt.
This raises an important challenge which is how to initialize the fuse state register independent of the reset. 
## Solve the initialization challenge
We solve the initialization challenge by leveraging the fact that when we power on the FPGA board before the reset signal arrives, all the register values have random values. 
We introduce another dummy 32-bit register called random_fuse. We peak any arbitrary 32-bit value such as :code:`0xDEADBEEF`. 
Whenever the value of our random_fuse is not :code:`0xDEADBEEF`, we initialize our main fuse and change the value of the random fuse to :code:`0xDEADBEEF`.
This way, we only do fuse initialization once at system power-up. 
Please note that the probability of the random fuse be exactly :code:`0xDEADBEEF` on system power-up by chance is very low. (2^-32)

ROM fuse usage
---------------------------------------

You can burn the ROM fuse by writing :code:`0xDEADDEAD` to its AXI interface base address. 
