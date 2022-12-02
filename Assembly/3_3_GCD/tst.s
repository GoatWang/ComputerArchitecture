.section .text
.align 2
.global _start
_start:   mov   r0, #3
          mov   r1, #7
          bl _func
          
_end:    b _end
        
_func:   udiv r2, r1, r0 // 2 = 7 / 3
         mul  r3, r0, r2 // 6 = 3 * 2
         sub  r4, r1, r3 // 1 = 7 - 6
         mov  r5, r0
         mov  r1, r0
         mov  r0, r4
         cmp  r0, #0
         bne  _func
         mov pc, lr
