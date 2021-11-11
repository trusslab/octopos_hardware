In this test I tried to proved this: 
If one of the interfaces (e.g. interface 2) becomes the owner of the mailbox, and we ensure that time tick or read does not happen, it never looses its ownership. No matter what other signals are.
This test fails!! because the interface itself can yeild the ownership
