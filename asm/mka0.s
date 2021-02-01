	.include "defines.s"
	.include "ram.s"
	.include "macros.s"

	thumb_func_start _entryPoint
_entryPoint: @ 080001d8
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r6, r0, #0x0
	mov		r5, #0x0
_080001e0:
	lsl		r0, r5, #0x2
	add		r0, r0, r5
	lsl		r0, r0, #0x2
	add		r0, #0x38
	add		r4, r6, r0
	ldr		r0, [r4, #0xc]
	cmp		r0, #0x7
	bls		_080001f2
	b		_080002e0
_080001f2:
	lsl		r0, r0, #0x2
	ldr		r1, _080001fc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080001fc:	.4byte 0x08000200
_08000200:	.4byte 0x080002e0

.incbin "base.gba", 0x204, 0x1C
	thumb_func_end _entryPoint


.incbin "base.gba", 0x220, 0xC0

_080002e0:

.incbin "base.gba", 0x2E0, 0x8
_080002e8:

.incbin "base.gba", 0x2E8, 0x4
_080002ec:

.incbin "base.gba", 0x2EC, 0x24
_08000310:	.4byte 0x080f4444

_08000314:

.incbin "base.gba", 0x314, 0x4
_08000318:

.incbin "base.gba", 0x318, 0x28
_08000340:

.incbin "base.gba", 0x340, 0x10
	thumb_func_start sub_08000350
sub_08000350:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	add		r6, r0, #0x0
	mov		r1, #0x90
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r2, #0x92
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	cmp		r2, r0
	beq		_080003b4
	cmp		r2, #0x0
	beq		_08000388
	mov		r0, #0x9a
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	add		r0, #0x4
	add		r1, r6, r0
	mov		r0, #0x9c
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	b		_080003a4
_08000388:
	mov		r1, #0x9a
	lsl		r1, r1, #0x1
	add		r3, r6, r1
	mov		r0, #0x9c
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	sub		r1, #0x18
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	lsl		r1, r1, #0x4
	mov		r0, #0x9c
	sub		r0, r0, r1
	str		r0, [r2, #0x0]
	str		r0, [r3, #0x0]
_080003a4:
	mov		r2, #0x98
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r2, #0xc
	add		r0, r6, r2
	str		r1, [r0, #0x0]
_080003b4:
	mov		r0, #0x92
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	sub		r0, #0x4
	add		r2, r6, r0
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	mov		r1, #0x98
	lsl		r1, r1, #0x1
	add		r3, r6, r1
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x1
	beq		_080003d8
	cmp		r0, #0x1
	ble		_0800048c
	cmp		r0, #0x2
	beq		_080003f6
	b		_0800048c
_080003d8:
	mov		r2, #0x9c
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	sub		r2, #0x4
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	mov		r0, #0x2
	str		r0, [r3, #0x0]
	mov		r0, #0x9e
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	b		_0800048c
_080003f6:
	mov		r0, #0x9e
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x8
	bgt		_0800045c
	mov		r1, #0x9c
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r4, [r0, #0x0]
	sub		r1, #0x10
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0800041e
	lsl		r1, r1, #0x4
	b		_08000422
_0800041e:
	mov		r0, #0xd
	mul		r1, r0
_08000422:
	mov		r0, #0x9c
	sub		r3, r0, r1
	mov		r2, #0x9e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	ldr		r1, _08000458
	lsl		r0, r0, #0x1b
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800043a
	add		r0, #0x3f
_0800043a:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	mov		r0, #0x9a
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	sub		r0, r3, r4
	mul		r0, r1
	asr		r0, r0, #0xf
	add		r0, r4, r0
	str		r0, [r2, #0x0]
	b		_0800048c

.incbin "base.gba", 0x456, 0x2

_08000458:	.4byte 0x08101068

_0800045c:
	mov		r1, #0x9a
	lsl		r1, r1, #0x1
	add		r3, r6, r1
	sub		r1, #0xc
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08000472
	lsl		r1, r1, #0x4
	b		_08000476
_08000472:
	mov		r0, #0xd
	mul		r1, r0
_08000476:
	mov		r0, #0x9c
	sub		r0, r0, r1
	str		r0, [r3, #0x0]
	mov		r2, #0x98
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r2, #0xc
	add		r0, r6, r2
	str		r1, [r0, #0x0]
_0800048c:
	mov		r1, #0xa0
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800049a
	b		_0800065e
_0800049a:
	mov		r2, #0x90
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080004b8
	add		r0, r6, #0x0
	add		r0, #0xc4
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0x74
	add		r0, r0, r6
	mov		r10, r0
	mov		r1, #0x10
	b		_080004ca
_080004b8:
	mov		r2, #0x8c
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0xc8
	add		r0, r0, r6
	mov		r10, r0
	mov		r1, #0xd
_080004ca:
	str		r1, [sp, #0x18]
	mov		r2, r8
	cmp		r2, #0x1
	ble		_080005a2
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2f
	and		r0, r1
	cmp		r0, #0x1f
	bhi		_080005a2
	ldr		r4, _08000538
	and		r7, r4
	mov		r0, #0x78
	orr		r7, r0
	ldr		r5, _0800053c
	and		r7, r5
	mov		r0, #0x84
	lsl		r0, r0, #0x10
	orr		r7, r0
	lsl		r3, r7, #0x10
	lsr		r3, r3, #0x10
	ldr		r0, [sp, #0xC]
	and		r0, r4
	orr		r0, r3
	asr		r2, r7, #0x10
	sub		r1, r2, #0x6
	lsl		r1, r1, #0x10
	and		r0, r5
	orr		r0, r1
	str		r0, [sp, #0xC]
	ldr		r0, [sp, #0x8]
	and		r0, r4
	orr		r0, r3
	add		r2, #0x10
	lsl		r2, r2, #0x10
	and		r0, r5
	orr		r0, r2
	str		r0, [sp, #0x8]
	mov		r2, r8
	cmp		r2, #0x2
	bne		_08000544
	mov		r1, #0x94
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08000568
	ldr		r0, _08000540
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	b		_08000572

_08000538:	.4byte 0xffff0000
_0800053c:	.4byte 0x0000FFFF
_08000540:	.4byte 0x080f41f0

_08000544:
	mov		r2, #0x94
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08000560
	ldr		r0, _0800055c
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	b		_08000572

_0800055c:	.4byte 0x080f41f0

_08000560:
	mov		r0, r8
	sub		r0, #0x1
	cmp		r1, r0
	bne		_08000580
_08000568:
	ldr		r0, _0800057c
	add		r1, sp, #0xc
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
_08000572:
	mov		r3, #0x0
	bl		sub_0802951c
	b		_080005a2

.incbin "base.gba", 0x57A, 0x2

_0800057c:	.4byte 0x080f41f8

_08000580:
	ldr		r0, _080005c8
	add		r1, sp, #0xc
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r0, _080005cc
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_080005a2:
	mov		r5, #0x0
	add		r0, sp, #0x14
	mov		r9, r0
	cmp		r5, r8
	bge		_0800061e
	mov		r7, #0x0
	mov		r4, r10
_080005b0:
	ldrb	r2, [r4, #0x0]
	mov		r1, #0x94
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	blt		_080005c2
	cmp		r5, r0
	ble		_080005d4
_080005c2:
	ldr		r1, _080005d0
	b		_080005e6

.incbin "base.gba", 0x5C6, 0x2

_080005c8:	.4byte 0x080f41f8
_080005cc:	.4byte 0x080f41f0
_080005d0:	.4byte 0x080f4498

_080005d4:
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bne		_080005e4
	ldr		r1, _080005e0
	b		_080005e6

.incbin "base.gba", 0x5DE, 0x2

_080005e0:	.4byte 0x080f4480

_080005e4:
	ldr		r1, _08000640
_080005e6:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	mov		r1, #0x9a
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	add		r0, r0, r7
	sub		r0, #0x18
	lsl		r0, r0, #0x10
	mov		r1, #0x78
	orr		r1, r0
	str		r1, [sp, #0x10]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r2, #0x0
	add		r1, sp, #0x10
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r2, [sp, #0x18]
	add		r7, r7, r2
	add		r4, #0x8
	add		r5, #0x1
	cmp		r5, r8
	blt		_080005b0
_0800061e:
	ldr		r0, _08000644
	str		r0, [sp, #0x14]
	mov		r1, #0x90
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_0800064c
	ldr		r0, _08000648
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	mov		r1, r9
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0800065e

_08000640:	.4byte 0x080f4468
_08000644:	.4byte 0x00840078
_08000648:	.4byte 0x080f4160

_0800064c:
	ldr		r0, _0800068c
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	mov		r1, r9
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800065e:
	mov		r2, #0xe4
	lsl		r2, r2, #0x2
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	lsr		r0, r0, #0x2
	mov		r7, #0x3
	bic		r7, r0
	mov		r5, #0x0
	ldr		r0, _08000690
	mov		r8, r0
	sub		r4, r7, #0x4
_08000674:
	mov		r0, #0x1
	bl		sub_08028130
	mov		r1, #0xaf
	sub		r1, r1, r5
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	add		r0, r5, r7
	cmp		r0, #0x3
	bgt		_08000694
	lsl		r0, r0, #0x1
	b		_08000696

_0800068c:	.4byte 0x080f4290
_08000690:	.4byte 0x080e5f00

_08000694:
	lsl		r0, r4, #0x1
_08000696:
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r4, #0x1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_08000674
	mov		r0, #0x1
	bl		sub_08028168
	mov		r2, #0xe2
	lsl		r2, r2, #0x2
	add		r1, r6, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x5
	ble		_080006f8
	mov		r2, #0x0
	str		r2, [r1, #0x0]
	mov		r0, #0xe3
	lsl		r0, r0, #0x2
	add		r4, r6, r0
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	cmp		r0, #0xf
	ble		_080006d0
	str		r2, [r4, #0x0]
_080006d0:
	ldr		r4, [r4, #0x0]
	lsl		r4, r4, #0x5
	mov		r1, #0xcc
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r4, r6, r4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0x98
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
_080006f8:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08000350

	thumb_func_start sub_08000708
sub_08000708:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x8
	add		r5, r0, #0x0
	mov		r0, #0xaa
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x8
	ble		_08000734
	mov		r2, #0x0
	str		r2, [r1, #0x0]
	mov		r3, #0xa8
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x7
	ble		_08000734
	str		r2, [r1, #0x0]
_08000734:
	mov		r4, #0xa8
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	ldr		r4, [r0, #0x0]
	lsl		r4, r4, #0x5
	ldr		r0, _08000770
	add		r4, r4, r0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xf4
	add		r0, r4, #0x0
	mov		r2, #0x4
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	mov		r0, #0xac
	lsl		r0, r0, #0x1
	add		r6, r5, r0
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x1
	beq		_080007a4
	cmp		r0, #0x1
	bgt		_08000774
	cmp		r0, #0x0
	beq		_0800077a
	b		_08000874

_08000770:	.4byte 0x080f1320

_08000774:
	cmp		r0, #0x2
	beq		_080007e0
	b		_08000874
_0800077a:
	mov		r1, #0xa6
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000874
	mov		r2, #0xb4
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r3, #0xb6
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	ldr		r1, [r1, #0x0]
	cmp		r0, r1
	ble		_08000874
	mov		r0, #0x1
	str		r0, [r6, #0x0]
	b		_08000874
_080007a4:
	mov		r4, #0xb4
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	mov		r2, #0x0
	str		r2, [r0, #0x0]
	mov		r0, #0xae
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x3c
	strh	r0, [r1, #0x0]
	mov		r3, #0xaf
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	ldr		r0, _080007dc
	strh	r0, [r1, #0x0]
	sub		r4, #0x8
	add		r1, r5, r4
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	mov		r1, #0xb2
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	str		r2, [r0, #0x0]
	mov		r0, #0x2
	str		r0, [r6, #0x0]
	b		_08000874

.incbin "base.gba", 0x7DA, 0x2

_080007dc:	.4byte 0x0000FFF6

_080007e0:
	mov		r3, #0xb4
	lsl		r3, r3, #0x1
	add		r2, r5, r3
	ldr		r0, [r2, #0x0]
	add		r1, r0, #0x1
	str		r1, [r2, #0x0]
	cmp		r1, #0x20
	bgt		_0800085c
	mov		r0, #0x20
	sub		r0, r0, r1
	add		r2, r0, #0x0
	mul		r2, r0
	lsl		r0, r2, #0x1
	add		r0, r0, r2
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	lsl		r0, r0, #0x1
	neg		r0, r0
	cmp		r0, #0x0
	bge		_0800080c
	ldr		r4, _08000854
	add		r0, r0, r4
_0800080c:
	asr		r1, r0, #0xa
	mov		r0, #0xa
	sub		r0, r0, r1
	mov		r3, #0xae
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	strh	r0, [r1, #0x0]
	lsl		r0, r2, #0x4
	sub		r0, r0, r2
	lsl		r0, r0, #0x2
	cmp		r0, #0x0
	bge		_08000828
	ldr		r4, _08000854
	add		r0, r0, r4
_08000828:
	asr		r1, r0, #0xa
	mov		r0, #0x32
	sub		r0, r0, r1
	mov		r1, #0xaf
	lsl		r1, r1, #0x1
	add		r2, r5, r1
	strh	r0, [r2, #0x0]
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r0, [r1, #0x0]
	sub		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r3, #0xb2
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	ldr		r0, [r1, #0x0]
	ldr		r4, _08000858
	add		r0, r0, r4
	str		r0, [r1, #0x0]
	b		_08000874

.incbin "base.gba", 0x852, 0x2

_08000854:	.4byte 0x000003FF
_08000858:	.4byte 0xFFFFF000

_0800085c:
	mov		r4, #0x0
	str		r4, [r2, #0x0]
	bl		sub_080270d0
	mov		r1, #0xb6
	lsl		r1, r1, #0x1
	add		r2, r5, r1
	mov		r1, #0xff
	and		r1, r0
	add		r1, #0xff
	str		r1, [r2, #0x0]
	str		r4, [r6, #0x0]
_08000874:
	mov		r2, #0xac
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	ble		_080008a2
	ldr		r0, _080008ac
	mov		r3, #0xae
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	mov		r4, #0xb0
	lsl		r4, r4, #0x1
	add		r2, r5, r4
	ldr		r3, [r2, #0x0]
	add		r4, #0x4
	add		r2, r5, r4
	ldr		r2, [r2, #0x0]
	str		r2, [sp, #0x0]
	mov		r2, #0x0
	str		r2, [sp, #0x4]
	add		r2, r3, #0x0
	bl		sub_0802951c
_080008a2:
	add		sp, #0x8
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x8AA, 0x2

_080008ac:	.4byte 0x080f41e8
	thumb_func_end sub_08000708

	thumb_func_start sub_080008b0
sub_080008b0:
	push	{ r4, lr }
	sub		sp, #0x8
	add		r3, r0, #0x0
	mov		r1, #0xa6
	lsl		r1, r1, #0x1
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000990
	mov		r2, #0xb8
	lsl		r2, r2, #0x1
	add		r4, r3, r2
	ldr		r2, [r4, #0x0]
	cmp		r2, #0x1
	beq		_080008fc
	cmp		r2, #0x1
	bgt		_080008d8
	cmp		r2, #0x0
	beq		_080008de
	b		_08000960
_080008d8:
	cmp		r2, #0x2
	beq		_0800091c
	b		_08000960
_080008de:
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r0, _080008f8
	str		r0, [r1, #0x0]
	mov		r1, #0xba
	lsl		r1, r1, #0x1
	add		r0, r3, r1
	str		r2, [r0, #0x0]
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	b		_08000960

.incbin "base.gba", 0x8F6, 0x2

_080008f8:	.4byte 0xFFE00000

_080008fc:
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r1, _08000918
	cmp		r0, r1
	ble		_08000960
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	mov		r0, #0x2
	str		r0, [r4, #0x0]
	b		_08000960

_08000918:	.4byte 0x00000257

_0800091c:
	mov		r2, #0xba
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r4, #0xbc
	lsl		r4, r4, #0x1
	add		r2, r3, r4
	ldr		r0, [r2, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x6
	add		r0, r0, r4
	str		r0, [r2, #0x0]
	ldrb	r0, [r1, #0x0]
	ldr		r1, _08000998
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08000946
	add		r0, #0x3f
_08000946:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r2, #0xbe
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	lsl		r0, r0, #0x3
	mov		r4, #0x80
	lsl		r4, r4, #0xe
	add		r0, r0, r4
	str		r0, [r1, #0x0]
_08000960:
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	add		r0, r3, r1
	mov		r2, #0x2
	ldrsh	r0, [r0, r2]
	mov		r4, #0xc0
	lsl		r4, r4, #0x1
	add		r1, r3, r4
	mov		r2, #0x0
	strh	r0, [r1, #0x0]
	sub		r4, #0x4
	add		r0, r3, r4
	mov		r4, #0x2
	ldrsh	r0, [r0, r4]
	mov		r4, #0xc1
	lsl		r4, r4, #0x1
	add		r3, r3, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _0800099c
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_08000990:
	add		sp, #0x8
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08000998:	.4byte 0x08101068
_0800099c:	.4byte 0x080f4428
	ldr		r0, _08000a30
	ldr		r2, [r0, #0x0]
	ldr		r1, _08000a34
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x2]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x6]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x8]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xa]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xc]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xe]
	strh	r0, [r1, #0x0]
	add		r1, #0x32
	ldrh	r0, [r2, #0x10]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x12]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x14]
	strh	r0, [r1, #0x0]
	sub		r1, #0x14
	ldrh	r0, [r2, #0x16]
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	ldrh	r0, [r2, #0x18]
	strh	r0, [r1, #0x0]
	sub		r1, #0x2
	ldrh	r0, [r2, #0x1a]
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	ldrh	r0, [r2, #0x1c]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x1e]
	strh	r0, [r1, #0x0]
	ldr		r3, _08000a38
	ldrh	r0, [r2, #0x20]
	mov		r1, #0x10
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _08000a3c
	ldrh	r0, [r2, #0x22]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x24]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x26]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x28]
	strh	r0, [r1, #0x0]
	sub		r1, #0xe
	ldrh	r0, [r2, #0x2a]
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0xA2E, 0x2

_08000a30:	.4byte 0x03000000
_08000a34:	.4byte BG0X_Offset
_08000a38:	.4byte InsideofOBJWindow_OutsideofWindows
_08000a3c:	.4byte BG0Control
	thumb_func_end sub_080008b0

	thumb_func_start sub_08000a40
sub_08000a40:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _08000a64
	ldr		r7, [r0, #0x0]
	ldr		r1, _08000a68
	mov		r0, #0x0
	bl		sub_080281c4
	mov		r1, #0xa4
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000a70
	ldr		r4, _08000a6c
	b		_08000a7e

.incbin "base.gba", 0xA62, 0x2

_08000a64:	.4byte 0x03000000
_08000a68:	.4byte 0x06001000
_08000a6c:	.4byte 0x080e8ee0

_08000a70:
	mov		r2, #0xc2
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000a94
	ldr		r4, _08000a90
_08000a7e:
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	b		_08000aa4

.incbin "base.gba", 0xA8E, 0x2

_08000a90:	.4byte 0x080e8e4c

_08000a94:
	ldr		r4, _08000aec
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
_08000aa4:
	bl		_UpdateGame
	mov		r1, #0xc2
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000afc
	ldr		r4, _08000af0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _08000af4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _08000af8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	b		_08000b0e

_08000aec:	.4byte 0x080e8db8
_08000af0:	.4byte 0x080e8c78
_08000af4:	.4byte 0x080e8d70
_08000af8:	.4byte 0x080e8d98

_08000afc:
	ldr		r4, _08000da8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
_08000b0e:
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r0, _08000dac
	ldr		r4, _08000db0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000db4
	ldr		r3, _08000db8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000dbc
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000dc0
	ldr		r5, _08000dc4
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000dc8
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000dcc
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r5, _08000dd0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_080281fc
	bl		_UpdateGame
	ldr		r0, _08000dd4
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000dd8
	ldr		r6, _08000ddc
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000de0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000de4
	ldr		r3, _08000de8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000dec
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000df0
	mov		r8, r2
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r5, _08000df4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r0, _08000df8
	mov		r2, #0xc4
	lsl		r2, r2, #0x1
	add		r1, r7, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08000dfc
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e00
	ldr		r5, _08000e04
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e08
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e0c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e10
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e14
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e18
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e1c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e20
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e24
	ldr		r3, _08000e28
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e2c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e30
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e34
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08000e38
	ldr		r3, _08000e3c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08000e40
	ldr		r4, _08000e44
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08000e48
	mov		r2, #0xb0
	lsl		r2, r2, #0x5
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08000e4c
	mov		r2, #0xb0
	lsl		r2, r2, #0x6
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08000e50
	mov		r1, #0x84
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08000e54
	ldr		r1, _08000e58
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	mov		r2, #0xa4
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000d4a
	ldr		r0, _08000e5c
	mov		r1, r8
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r4, _08000e60
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	ldr		r4, _08000e64
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
_08000d4a:
	bl		_UpdateGame
	ldrh	r0, [r7, #0x22]
	mov		r1, #0x0
	ldr		r0, _08000e68
	strh	r0, [r7, #0x22]
	ldrh	r0, [r7, #0x24]
	ldr		r0, _08000e6c
	strh	r0, [r7, #0x24]
	ldrh	r0, [r7, #0x26]
	ldr		r0, _08000e70
	strh	r0, [r7, #0x26]
	ldrh	r0, [r7, #0x28]
	ldr		r0, _08000e74
	strh	r0, [r7, #0x28]
	ldrh	r0, [r7, #0x10]
	mov		r0, #0xbf
	strh	r0, [r7, #0x10]
	ldrh	r0, [r7, #0x14]
	mov		r0, #0x10
	strh	r0, [r7, #0x14]
	ldrh	r0, [r7, #0x2a]
	mov		r0, #0xe2
	lsl		r0, r0, #0x5
	strh	r0, [r7, #0x2a]
	ldrh	r0, [r7, #0x0]
	strh	r1, [r7, #0x0]
	ldrh	r0, [r7, #0x2]
	strh	r1, [r7, #0x2]
	ldrh	r0, [r7, #0x4]
	strh	r1, [r7, #0x4]
	ldrh	r0, [r7, #0x6]
	mov		r0, #0x20
	strh	r0, [r7, #0x6]
	ldrh	r0, [r7, #0x8]
	strh	r1, [r7, #0x8]
	ldrh	r0, [r7, #0xa]
	strh	r1, [r7, #0xa]
	ldrh	r0, [r7, #0xc]
	strh	r1, [r7, #0xc]
	ldrh	r0, [r7, #0xe]
	strh	r1, [r7, #0xe]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08000da8:	.4byte 0x080e8c78
_08000dac:	.4byte 0x080e8f74
_08000db0:	.4byte 0x02025400
_08000db4:	.4byte 0x06004000
_08000db8:	.4byte 0x80001400
_08000dbc:	.4byte 0x080ea1cc
_08000dc0:	.4byte 0x06008000
_08000dc4:	.4byte 0x80001300
_08000dc8:	.4byte 0x080eb678
_08000dcc:	.4byte 0x0600A600
_08000dd0:	.4byte 0x080efdac
_08000dd4:	.4byte 0x080efb74
_08000dd8:	.4byte 0x06002000
_08000ddc:	.4byte 0x80000400
_08000de0:	.4byte 0x080f0048
_08000de4:	.4byte 0x06002800
_08000de8:	.4byte 0x80000800
_08000dec:	.4byte 0x080f045c
_08000df0:	.4byte 0x06003800
_08000df4:	.4byte 0x080e5cfc
_08000df8:	.4byte 0x080e5e54
_08000dfc:	.4byte 0x080e5f08
_08000e00:	.4byte 0x06011400
_08000e04:	.4byte 0x80000A80
_08000e08:	.4byte 0x080e6904
_08000e0c:	.4byte 0x06012900
_08000e10:	.4byte 0x080e6e54
_08000e14:	.4byte 0x06013E00
_08000e18:	.4byte 0x080e75b8
_08000e1c:	.4byte 0x06015300
_08000e20:	.4byte 0x080e7a94
_08000e24:	.4byte 0x06016800
_08000e28:	.4byte 0x80000200
_08000e2c:	.4byte 0x080e8038
_08000e30:	.4byte 0x06016C00
_08000e34:	.4byte 0x080e7c40
_08000e38:	.4byte 0x06017400
_08000e3c:	.4byte 0x80000260
_08000e40:	.4byte 0x080ec3f8
_08000e44:	.4byte 0x02010400
_08000e48:	.4byte 0x080ed338
_08000e4c:	.4byte 0x080ee1c0
_08000e50:	.4byte 0x080ef0a8
_08000e54:	.4byte 0x080f0f44
_08000e58:	.4byte 0x02004400
_08000e5c:	.4byte 0x080f0a24
_08000e60:	.4byte 0x080f12ec
_08000e64:	.4byte 0x080f130c
_08000e68:	.4byte 0x00004204
_08000e6c:	.4byte 0x00000405
_08000e70:	.4byte 0x0000850A
_08000e74:	.4byte 0x0000070B
	thumb_func_end sub_08000a40

	thumb_func_start sub_08000e78
sub_08000e78:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	mov		r0, #0x1
	mov		r9, r0
	mov		r1, #0x0
	mov		r10, r1
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	mov		r3, #0x0
	str		r3, [sp, #0x4]
	mov		r0, #0x0
	str		r0, [sp, #0x8]
	str		r1, [sp, #0xC]
	ldr		r0, _08001094
	strh		r2, [r0, #0x16]
	bl		sub_08027744
	ldr		r4, _08001098
	ldr		r3, _0800109c
	add		r4, r4, r3
	ldr		r1, _080010a0
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r4, #0x0
	bl		sub_08027188
	ldr		r5, _080010a4
	mov		r2, #0xe5
	lsl		r2, r2, #0x2
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_080271b8
	str		r0, [r5, #0x0]
	add		r6, r0, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x5
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_080271b8
	str		r0, [r6, #0x34]
	mov		r1, #0xc2
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r2, r9
	str		r2, [r0, #0x0]
	add		r3, r6, #0x0
	add		r3, #0xc4
	str		r3, [sp, #0x10]
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r0, r6, r0
	str		r0, [sp, #0x14]
	mov		r1, #0x4
	str		r1, [sp, #0x18]
	mov		r2, #0xc2
	lsl		r2, r2, #0x1
	add		r2, r2, r6
	mov		r8, r2
	mov		r7, #0x0
	mov		r5, #0x4
_08000efc:
	mov		r4, #0x0
_08000efe:
	bl		sub_08057370
	add		r1, r4, r7
	add		r0, #0x28
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_08000f18
	mov		r0, #0x0
	mov		r3, r8
	str		r0, [r3, #0x0]
_08000f18:
	add		r4, #0x1
	cmp		r4, #0x2
	ble		_08000efe
	add		r7, #0x3
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08000efc
	mov		r0, #0xa4
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r5, #0x0
	mov		r1, #0xa4
	lsl		r1, r1, #0x1
	add		r1, r1, r6
	mov		r8, r1
	mov		r7, #0x0
_08000f3c:
	mov		r4, #0x0
_08000f3e:
	bl		sub_08057370
	add		r1, r4, r7
	add		r0, #0x46
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000f54
	mov		r0, #0x0
	mov		r2, r8
	str		r0, [r2, #0x0]
_08000f54:
	add		r4, #0x1
	cmp		r4, #0x2
	ble		_08000f3e
	add		r7, #0x3
	add		r5, #0x1
	cmp		r5, #0x4
	ble		_08000f3c
	mov		r0, #0x0
	str		r0, [r6, #0x2c]
	str		r0, [r6, #0x30]
	ldr		r2, [sp, #0x10]
	mov		r0, #0x3
	strb	r0, [r2, #0x0]
	mov		r5, #0x0
	ldr		r4, _080010a8
	mov		r3, #0x0
	add		r1, r6, #0x0
	add		r1, #0x74
_08000f78:
	add		r0, r5, r4
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0x0]
	str		r3, [r1, #0x4]
	add		r1, #0x8
	add		r5, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r5, r0
	blt		_08000f78
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	mov		r2, #0x90
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	mov		r3, #0x92
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r6, r3
	mov		r2, #0x9c
	str		r2, [r0, #0x0]
	add		r3, #0x4
	add		r0, r6, r3
	str		r2, [r0, #0x0]
	add		r2, #0xa0
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	mov		r2, #0xe2
	lsl		r2, r2, #0x2
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	mov		r3, #0xe3
	lsl		r3, r3, #0x2
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	mov		r2, #0xa6
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	mov		r3, #0xb0
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	add		r2, #0x18
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	mov		r1, #0x2
	add		r0, r6, #0x0
_0800100c:
	str		r1, [r0, #0x44]
	sub		r0, #0x14
	cmp		r0, r6
	bge		_0800100c
	mov		r1, #0x5
	add		r0, r6, #0x0
	add		r0, #0x14
	mov		r5, #0x1
_0800101c:
	str		r1, [r0, #0x44]
	add		r0, #0x14
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800101c
	bl		sub_08070870
	bl		sub_080297c8
	ldrh	r0, [r6, #0x2a]
	mov		r0, #0x0
	strh	r0, [r6, #0x2a]
	ldrh	r0, [r6, #0x10]
	mov		r0, #0xbf
	strh	r0, [r6, #0x10]
	ldrh	r0, [r6, #0x14]
	mov		r0, #0x10
	strh	r0, [r6, #0x14]
	ldr		r5, _080010ac
	ldr		r4, _08001098
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _080010b0
	bl		sub_0807df78
	bl		sub_08000a40
	ldr		r1, _080010b4
	mov		r0, #0x46
	bl		sub_08029fcc
	mov		r0, #0x2
	mov		r1, #0x4
	bl		sub_0807df78
	thumb_func_end sub_08000e78

	thumb_func_start sub_0800106c
sub_0800106c:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
	add		r1, #0x1
	str		r1, [r0, #0x0]
	ldr		r2, [sp, #0x14]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080010b8
	ldr		r3, [sp, #0x10]
	ldrb	r5, [r3, #0x0]
	add		r3, r6, #0x0
	add		r3, #0x74
	b		_080010c4

.incbin "base.gba", 0x1092, 0x2

_08001094:	.4byte 0x03003000
_08001098:	.4byte RunGameLogic_CallBack
_0800109c:	.4byte 0x00000704
_080010a0:	.4byte 0x0202A400
_080010a4:	.4byte 0x03000000
_080010a8:	.4byte 0x080f44b0
_080010ac:	.4byte 0x080009a1
_080010b0:	.4byte 0x00010001
_080010b4:	.4byte 0x080018ed

_080010b8:
	mov		r1, #0x8c
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r5, [r0, #0x0]
	add		r3, r6, #0x0
	add		r3, #0xc8
_080010c4:
	mov		r4, #0x0
	cmp		r4, r5
	bge		_08001108
_080010ca:
	lsl		r1, r4, #0x3
	add		r0, r1, r3
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	cmp		r0, #0x5
	bhi		_08001102
	lsl		r0, r0, #0x2
	ldr		r1, _080010e0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080010e0:	.4byte 0x080010e4
_080010e4:	.4byte 0x080010fc

.incbin "base.gba", 0x10E8, 0x14
	thumb_func_end sub_0800106c


.incbin "base.gba", 0x10FC, 0x6

_08001102:

.incbin "base.gba", 0x1102, 0x6
_08001108:

.incbin "base.gba", 0x1108, 0x8
_08001110:

.incbin "base.gba", 0x1110, 0xC
_0800111c:	.4byte 0x08001120
_08001120:	.4byte 0x08001308
_08001124:	.4byte 0x08001198

.incbin "base.gba", 0x1128, 0x70

_08001198:

.incbin "base.gba", 0x1198, 0x5D8
_08001770:	.4byte 0x08001788

.incbin "base.gba", 0x1774, 0x48

_080017bc:

.incbin "base.gba", 0x17BC, 0xE
_080017ca:

.incbin "base.gba", 0x17CA, 0x4
_080017ce:

.incbin "base.gba", 0x17CE, 0x1A
_080017e8:

.incbin "base.gba", 0x17E8, 0x1A
_08001802:

.incbin "base.gba", 0x1802, 0x1E
_08001820:

.incbin "base.gba", 0x1820, 0x24
_08001844:

.incbin "base.gba", 0x1844, 0x10
_08001854:	.4byte 0x0203EE9C
_08001858:	.4byte 0x06008000
_0800185c:	.4byte 0x81000020
_08001860:	.4byte 0x080f44b8
_08001864:	.4byte 0x06006000
_08001868:	.4byte 0x80000A00

_0800186c:

.incbin "base.gba", 0x186C, 0x10
_0800187c:

.incbin "base.gba", 0x187C, 0xA
_08001886:

.incbin "base.gba", 0x1886, 0xA
_08001890:

.incbin "base.gba", 0x1890, 0xA
_0800189a:

.incbin "base.gba", 0x189A, 0x12
_080018ac:

.incbin "base.gba", 0x18AC, 0xE
_080018ba:

.incbin "base.gba", 0x18BA, 0xA
_080018c4:

.incbin "base.gba", 0x18C4, 0x4
_080018c8:

.incbin "base.gba", 0x18C8, 0x30

_080018f8:	.4byte 0x03000000
_080018fc:	.4byte InsideofOBJWindow_OutsideofWindows

	