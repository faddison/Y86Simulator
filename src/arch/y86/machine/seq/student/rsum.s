.pos 0x100
main:
	irmovl $bottom, %esp	# initialize stack
	irmovl 0x6, %ecx   	# count
	pushl %ecx			# push second argument
	irmovl $a, %ecx		# start
	pushl %ecx			# push first argument
	
	call rsum
	halt


.pos 0x200
rsum:
	pushl %ebp
	rrmovl %esp, %ebp
	
	xorl   %eax, %eax
	mrmovl 12(%ebp), %ecx 		#ecx <- count
	andl %ecx, %ecx			# sets the condition code
	je R

	irmovl $1, %edx
	subl 	 %edx, %ecx			# ecx <- count-1
	pushl %ecx				# push second argument

	mrmovl 8(%ebp), %edx		#edx <- start
	mrmovl (%edx), %ebx		# ebx <- *start
	
	irmovl 0x4, %ecx
	addl   %ecx, %edx 		# edx <- start + 1
	pushl %edx				# push first argument

	call rsum

	popl %edx
	popl %ecx
	mrmovl 8(%ebp), %edx		#edx <- start
	mrmovl (%edx), %ebx		# ebx <- *start
	addl %ebx, %eax

R: 	popl %ebp
	ret



.align 4
.pos 0x1000
a:	.long	4
	.long	7
	.long	8
	.long	9
	.long	12
	.long	11
aend: .long 0
	
#
# An example showing how to reserve space for a stack (this one
# can hold up to 16 (0x10) 32-bit addresses.
#
.pos 0x3000
top:	            .long 0x00000000,0x30     # top of stack.
bottom:           .long 0x00000000          # bottom of stack.
