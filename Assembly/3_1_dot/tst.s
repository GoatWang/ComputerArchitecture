.section .text
.align 2
.global _start
_start: mov r0, #2
        mov r1, #3
        mov r2, #4
        mov r3, #5
        mul r4, r0, r3
        mul r5, r1, r2
        sub r6, r4, r5
        b _start
_end:   b _end
