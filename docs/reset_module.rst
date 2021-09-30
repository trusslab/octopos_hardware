================================
Octopos reset module:
================================

:Author: - Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)


Octopos reset module controls when the resource manager can reset a domain. 
Each domain has its own reset module. 
Reset module checks whether that domain's Mailbox is in use by any other domain (other than resource manager) or whether this domain is currently using any other domain's Mailboxes.
If any of the mentioned cases are true, the reset module blocks the reset otherwise it forwards it. 

Pins descriptions
------------------

- AXI interface:  
  
   - :code:`BASE_ADDRESS` register     : resource manager use it to initiate the domain reset. resource manager needs to write :code:`0xDEADBEEF` and then :code:`0xDEADDEAD` to the BASE_ADDRESS to initate a reset.
   - :code:`BASE_ADDRESS + 4` register : resource manager read this register to query whether the last reset blocked or not. On success the read value would be :code:`0x0000AAAA` and for blocked reset the value is :code:`0x0000FFFF`
   
- `Mailbox{n}_busy_n`  : It is an active low signal indicating whether the Mailbox number n is used by a domain other than resource manager.
(It means when the signal value is :code:`1` the Mailbox is connected to resource manager and if it is :code:`0` the Mailbox is connected to another domain.

- `Domain{n}_busy`  : It is an a active high signal indicating whehter this domain is using any of the Mailboxes of domain number n. 

Challenges
-------------------
  
- Some hardware IPs such as the reset generator IP assume that the reset signal remains high for more than one clock cycle. As a result to make sure that all registers are correctly clear by the clock signal we keep the reset signal for 50 clock cycles on the user request.

- The reset module uses the feedback from Mailboxes to decide whether to block reset or not. However, before the first reset signal, registers in the Mailboxes have random values. As a result, it is highly probable that the reset module blocks the first reset signal and the device never gets properly reset.  Hence we make an exception for the first reset signal. It can go through no matter the state of the Mailboxes. To detect the first reset signal we use the random fuse technique. for more detail on that please refer to solve-the-initialization-challenge section of ROM fuse documentation. 
