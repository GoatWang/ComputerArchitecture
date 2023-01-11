.section .text
.align 2
.global _start
_start:   
    ldr   r8, =_n
    ldr   r9, =_skip
    ldr   r0, [r8]
    ldr   r1, [r8, #4]
    bl _func
          
_end: 
    b _end
        
_func:   
    udiv  r2, r1, r0 // 2 = 7 / 3
    mul   r3, r0, r2 // 6 = 3 * 2
    sub   r4, r1, r3 // 1 = 7 - 6
    mov   r5, r0
    mov   r1, r0
    mov   r0, r4
    cmp   r0, #0
    str   r0, [r9], #4
    str   r1, [r9], #4
    bne   _func
    mov   pc, lr


.section .data
    _n: .word 3, 7
    _skip: .skip 100
        