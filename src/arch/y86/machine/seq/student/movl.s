.pos 0x1000
start:	irmovl $0, %eax
		irmovl $6, %ecx
		rmmovl %ecx, a(%eax,4)
		mrmovl a(%eax,4), %edx

.pos 0x2000
a:		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
		.long 0
