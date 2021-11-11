1. test1:
In this test I proved the fixed side of the mailbox is always able to read the state register

2. test2:
This test is only to test that if the prooving tool chain is working correctly or not.
In this test I tried to read to prove that the interface 0 (resource manager) is always able to read the state register( which is wrong) and we see that the proof failed

3. test3:
In this test we proved that if (owner_id == ID0) (resource manage is the owner of the mailbox) it can read from the mailbox. 

4. test4
In this test we proved that if (owner_id != ID0) (resource manage is not the owner of the mailbox) it can not read from the mailbox. 

5. test5
In this test we proved that if the resource manager (interface 0) is the owner of the Mailbox, and itself does not delegate Mailbox to another domain, It will remain the owner of the Mailbox. (No matter what other domain does, and what are the values for limit_req and time_req)

6. test6
In this test I tried to proved this: 
If one of the interfaces (e.g. interface 2) becomes the owner of the mailbox, and we ensure that time tick or read does not happen, it never looses its ownership. No matter what other signals are.
This test fails!! because the interface itself can yeild the ownership

7. test7
In this test I proved this: 
If one of the interfaces (e.g. interface 2) becomes the owner of the mailbox, and we ensure that time tick or read does not happen, and it never yeild the ownership itself it never looses its ownership. No matter what other signals are.

