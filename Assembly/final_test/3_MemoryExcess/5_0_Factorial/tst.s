.section .text
.align 2
.global _start
_start: 
    mov r0, #3
    bl _factorial
    b _end
_factorial:
    cmp       r0, #1
    movle     r0, #1
    movle     pc, lr
    mov       r1, r0
    sub       r0, r0, #1
    stmfd     sp!, {r1, lr}
    bl        _factorial
    ldmfd     sp!, {r1, lr}
    mul       r0, r0, r1
    mov       pc, lr


_end:
    b _end