
.section .text
.align 2
.global _start
_start:
    ldr r4, =_matrix
    ldmia r4, {r4-r12}
    @ a,b,c,d,e,f,g ,h, and i values
    @ 4,5,6,7,8,9,10 11     12

    mov r0, r8
    mov r1, r9
    mov r2, r11
    mov r3, r12
    bl   _det_2x2
    mul r0, r4, r0
    mov r4, r0

    mov r0, r7
    mov r1, r9
    mov r2, r10
    mov r3, r12
    bl   _det_2x2
    mul r0, r5, r0
    mov r5, r0

    mov r0, r7
    mov r1, r8
    mov r2, r10
    mov r3, r11
    bl   _det_2x2
    mul r0, r6, r0
    mov r6, r0

    sub r4, r4, r5
    add r4, r4, r6
    b   _end

_det_2x2:
    mul r3, r0, r3
    mul r2, r1, r2
    sub r0, r3, r2    
    mov pc, lr

_end:
    b _end

.section .data
_matrix: .word 6,1,1,4,-2,5,2,8,7 




