.pos 0x100
sum:    irmovl $a, %edx
        xorl   %eax, %eax

L2:     mrmovl (%edx,4), %ebx
        addl   %ebx, %eax
        irmovl $4, %ebx
        addl   %ebx, %edx
        irmovl $aend, %ebx
        subl   %edx, %ebx
        jne   L2
        halt

.align 4
.pos 0x1000
a:      .long   4
        .long   7
        .long   8
        .long   9
        .long   12
        .long   11
aend: .long 0
