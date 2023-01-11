.section .data
_data: .word 102, 117, 110

.section .text
.align 2
.global _start
_start: 
    ldr r3, =_data
    ldmia r3, {r0-r2}
    sub r0, r0, #32
    sub r1, r1, #32
    sub r2, r2, #32
    @add r0, r0, #-32 @0xffffffe0
    @add r1, r1, #-32 @0xffffffe0
    @add r2, r2, #-32 @0xffffffe0

_end:
 b _end
