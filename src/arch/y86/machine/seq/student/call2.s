.pos 0x100
start:	xorl %eax, %eax
		irmovl $2, %ecx
loop:
		addl %ecx, %eax
		irmovl $loop, %ebx
		call (%ebx)

		