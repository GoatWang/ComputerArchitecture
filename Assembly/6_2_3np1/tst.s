.section .text
.align 2
_n: .word 3
_skip: .skip 100 
_rep: .word 3
.global _start

_start:
    ldr    r0, =_n
    ldr    r0, [r0]
    ldr    r1, =_rep
    ldr    r1, [r1]
    mov    r2, #1     @counter
    mov    r6, #0     @142 counter (max: 2)
    bl _3np1

_3np1:
    ands       r7, r0, #1
    bleq       _even
    blne       _odd

    cmp        r6, #0       @ correct count: 0
    beq       _step1

    cmp        r6, #1       @ correct count: 1
    beq       _step2

    cmp        r6, #2       @ correct count: 2
    bleq       _step3

    cmp        r2, r1
    beq        _end
    b          _3np1

_odd:   
        mov  r3, r0
        add  r3, r0, r0
        add  r3, r3, r0
        add  r3, r3, #1
        mov  r0, r3
        mov pc, lr

_even:  
        lsr  r0, r0, #1
        mov pc, lr

_step1:
    cmp        r0, #1
    addeq      r6, r6, #1
    b        _3np1

_step2:
    cmp        r0, #4
    addeq      r6, r6, #1
    movne      r6, #0
    b        _3np1

_step3:
    mov      r6, #0
    cmp        r0, #2
    addeq      r2, r2, #1
    mov        pc, lr

_end: 
    b _end
    
.section .data
_matrix:
    .word 6,1,1,4,-2,5,2,8,7 @ a,b,c,d,e,f,g,h, and i values