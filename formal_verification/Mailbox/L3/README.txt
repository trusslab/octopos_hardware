5.a  When a domain owns the mailbox, other domains (including domain0) cannot change the ownership of the mailbox. They also cannot change the remaining time/data quota. 
Lemma3. 
        To prove 5.a we proved the following:
	If one of the domains  becomes the owner of the mailbox, and we ensure that time_tick or data transfer do not happen, and it never yields the ownership of Mailbox itself, it never loses its ownership, and time/data limit remains unchanged, no matter what the other signals in the hardware are.

