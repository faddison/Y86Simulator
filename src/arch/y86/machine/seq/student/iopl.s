.pos 0x100
start:	irmovl $5, %eax
		iaddl $2, %eax
		isubl $6, %eax
		iandl $0xf, %eax
		ixorl $1, %eax

.pos 0x1000
