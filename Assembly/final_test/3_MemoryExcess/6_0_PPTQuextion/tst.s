_start:
ldr r0,=0x8000000f
ldr r1,=0x800000ff
@adds r2,r0,r1
@sub r2,r1,r0
rrxs r2,r0

