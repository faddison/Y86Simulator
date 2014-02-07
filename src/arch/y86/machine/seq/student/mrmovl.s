.pos 0x1000
start:	mrmovl a(%eax,4), %edx
		xorl %ecx, %ecx

.pos 0x2000
a:		.long 1
		.long 2
		.long 3
		.long 4
		.long 5
		.long 6
		.long 7
