.section .text
.align 2
.global _start
_start:
    ldr r0, =_matrix
    ldr r1, [r0, #16]
    ldr r2, [r0, #20]
    ldr r3, [r0, #28]
    ldr r4, [r0, #32]
    bl _det_2x2
    ldr r8, [r0]
    mul r8, r8, r7

    ldr r0, =_matrix
    ldr r1, [r0, #12]
    ldr r2, [r0, #20]
    ldr r3, [r0, #24]
    ldr r4, [r0, #32]
    bl _det_2x2
    ldr r9, [r0, #4]
    mul r9, r9, r7

    ldr r0, =_matrix
    ldr r1, [r0, #12]
    ldr r2, [r0, #16]
    ldr r3, [r0, #24]
    ldr r4, [r0, #28]
    bl _det_2x2
    ldr r10, [r0, #8]
    mul r10, r10, r7

    sub r8, r8, r9
    add r8, r8, r10
    b _end

_det_2x2:
    mul r5, r1, r4
    mul r6, r2, r3
    sub r7, r5, r6
    mov pc, lr

_end: 
    b _end
    
.section .data
_matrix:
    .word 6,1,1,4,-2,5,2,8,7 @ a,b,c,d,e,f,g,h, and i values