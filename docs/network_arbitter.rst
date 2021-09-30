================================
Network arbitter:
================================

:Author: - Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)


Network arbitter is basicly a Multiplexer that controls the ethernet device data-plane. 
Network arbitter decides wheter the ethernet device data-plane should be connected to the network service processor via a FIFO, or it should be connected to the PS via DMA.

How to use network arbitter
----------------------------------

To select network service connection via FIFO: Write :code:`0x0` to the base address of network arbiiter AXI interface. 
To select PS connection via DMA: Write :code:`0xF0F0F0F0` to the base address of network arbiiter AXI interface. 
