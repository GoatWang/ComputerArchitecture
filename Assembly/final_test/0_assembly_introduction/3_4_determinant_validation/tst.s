.section .data
    @ _data: .word 1, 2, 3, 4
    @_data: .word 0x80000000, 2, 3, 0x7fffffff   @ pxn
    @_data: .word 0x80000000, 2, 3, 0x80000000   @ nxn
    _data: .word 0x7fffffff, 2, 3, 0x7fffffff   @ pxp


.section .text
.align 2
.global _start

_start: 
    ldr r0, =_data
    ldmia r0, {r1-r4}

    mov r8, #1

    smull r5, ip, r1, r4
    cmp ip, r5, asr #31
    movne r8, #-1
    
    smull r6, ip, r2, r3
    cmp ip, r6, asr #31
    movne r8, #-1

    sub r7, r5, r6

_end:
    b _end

    