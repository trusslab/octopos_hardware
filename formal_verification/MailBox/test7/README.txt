In this test I proved this: 
If one of the interfaces (e.g. interface 2) becomes the owner of the mailbox, and we ensure that time tick or read does not happen, and it never yeild the ownership itself it never looses its ownership. No matter what other signals are.
