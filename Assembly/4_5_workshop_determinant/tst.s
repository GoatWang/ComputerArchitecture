
.section .text
.align 2
.global _start

_start: 
    mov   r0, #1
    mov   r1, #2
    mov   r2, #3
    mov   r3, #4

    mul r5, r0, r3
    mul r6, r1, r2

    sub r5, r5, r6 @ det(A)
    mov r6, #1
    lsl r6, #8
    sdiv r5, r6, r5 @ 1/det(A)

    mov r11, #-1
    mul r7, r5, r3
    mul r8, r1, r11
    mul r8, r8, r5
    mul r9, r2, r11
    mul r9, r9, r5
    mul r10, r5, r0
    
_end: b _end
