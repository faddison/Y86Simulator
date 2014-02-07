.pos 0x100
sum:	
		irmovl $a, %edx
		mrmovl (%edx), %ebx
        addl   %ebx, %eax

.pos 0x2000
a:		.long 1
		.long 2
		.long 3
		.long 4
		.long 5
		.long 6
		.long 7
		.long 8
aend: .long 0
