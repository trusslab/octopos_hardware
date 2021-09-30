================================
Mailbox Specs:
================================

:Author: - Seyed Mohammadjavad Seyed Talebi (mjavad@uci.edu)

Many-to-one Mailbox
--------------------------------
(for one-to-Many the specs are the same if you change the words input/output read/write for the rest of this document.)

Basics:
--------------------------------
1) The Mailbox has many input ports. We call them In0, In1, In2, In3, ...
2) In0 is designed differently, it is going to have the initial authorization to manage the Mailbox. (It should be connected to the OS processor)
3) Rest of inputs In{ID} ID>0 are treated equally.
4) The state of the Mailbox is defined by three registers: Owner, Limit, Timeout:
    	- Owner: Is the ID of the processor which can write to the Mailbox
    	- Limit: Is the remaining blocks that the Owner has to write to the Mailbox.
    	- Timeout: Is the remaining time that the Owner has the data write access to the Mailbox.
5) For both Limit and Timeout registers, 0 means no access and -1 means infinite access.
6) On reset the Mailbox set:
  :code:`Owner = 0`.
  :code:`Limit = -1`.
  :code:`Timeout = -1`.
It means the OS processor has unlimited access to the MailBox.

7) In addition to the data AXI ports, all the input ports have a control AXI port which can have restricted read and write accesses to the Owner, Limit and Timeout registers.(restrictions are described in the next items).
8) In addition to the State registers MailBox has an internal stack which delivers the capability delegation mechanism.
9) The following sizes are assumed for the state registers:
    - Owner: 8bits (support up to 256 enclaves and device drivers)
    - Limit: 12bits (4K blocks read/write restrictions)
    - Timeout: 12bits (68 Minutes with granularity of 1 seconds or 6.8 Minutes with granularity for 0.1 seconds)
      
10) All the state registers are concatenated together and make a 32bits register named state register.

:code:`state_reg = |----8bits ID----|------12bits Limit------|------12bits Timeout------|`

11) The Mailbox has this internal logic:
    	A) on each write to the Mailbox data queue, it decreases the Limit register by 1. (It does not change the Limit if Limit = -1 (infinite))
    	B) It divides its 100MHz clock many times to get 1Sec (or 0.1Sec or any other granularity) slow clock	on every tick of the slow clock it decreases the Timeout register by 1. 

Attestation:
-----------------------
1)  When the In{ID} tries to read the state register, Mailbox acts like the following pseudocode
:code: 
    procedure uint32 read(ID){
        if( (ID == Owner) || (ID == FIXED_PORT_ID ){
            return state_register;
        }else{
           return NO_ACCESS;
        }
    }
    
NO_ACCESS code can be defined in many ways, one way is NO_ACCESS = 0; this code is not used legally (Owner=0,Limit=0,Timeout=0) and we can use it as NO_ACCESS
It can deliver the base of the attestation mechanism. (the more specific attestation can be built on top of this capability in the software, for example in the runtime library)

Capability deligation:
-------------------------
1) When the In{ID} tries to write the state register, Mailbox acts like the following pseudocode:
:code: 

   procedure  void write(ID, to_write_state_reg){
       //get the to_write_Owner, to_write_Limit, and to_write_Timeout from different parts of to_write_state_reg
       if( ID ==  Owner){
           if( (to_write_Limit < Limit) && (to_write_Timeout < Timeout) ){
               // first push the remaining of the Capabilities for current owner of the capability into the stack
		           if (Limit = -1)
		               updated_Limit = -1;
		           else
                   updated_Limit = Limit - to_write_Limit;
               if( Timeout = -1)
	                 updated_Timeout = -1
               else {
                  updated_Timeout = Timeout - to_write_Timeout;  
                  updated_state_Reg = concatenation of {ID, updated_Limit, updated_Timeout}
                  push updated_state_Reg;
                  // then update the state_reg to pass on the capability
                  state_reg = to_write_state_reg
                  return;
               }    
           }
       }
    	//At this point I do not notify the enclave that its capability delegation has failed
    	//We can implement it later by sending an error interrupt to the enclave
     	return;
   }
   
Capability expiration
-------------------------------
A) on slow-clk tik
:code:`if ( Timeout == 0)`

B) on writing a data
:code:`if ( Limit == 0)`

For both of these cases, the Mailbox revoke the capability by just
:code:`pop state_reg`

Yielding the capability
-----------------------------------
1) one enclave might want to yield its ownership of the capability before its expiration, for this purpose.
I reserved one Owner_ID such as (Owner = 255) for the purpose of yielding. So we only need to update the write procedure mentioned in  Capability delegation section as follows:
:code: 

   procedure  void write(ID, to_write_state_reg){
       //get the to_write_Owner, to_write_Limit, and to_write_Timeout from different parts of to_write_state_reg
       if( ID ==  Owner){
           🔥NEW🔥	
           
           if (to_write_Owner == 255){
               pop state_reg;
               return;
           }
           
           🔥NEW🔥
           
           if( (to_write_Limit < Limit) && (to_write_Timeout < Timeout) ){
               // first push the remaining of the Capabilities for current owner of the capability into the stack
		           if (Limit = -1)
		               updated_Limit = -1;
		           else
                   updated_Limit = Limit - to_write_Limit;
               if( Timeout = -1)
	                 updated_Timeout = -1
               else {
                  updated_Timeout = Timeout - to_write_Timeout;  
                  updated_state_Reg = concatenation of {ID, updated_Limit, updated_Timeout}
                  push updated_state_Reg;
                  // then update the state_reg to pass on the capability
                  state_reg = to_write_state_reg
                  return;
               }    
           }
       }
    	//At this point I do not notify the enclave that its capability delegation has failed
    	//We can implement it later by sending an error interrupt to the enclave
     	return;
   }
  
