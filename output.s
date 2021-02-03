.macro arm_func_start name
.align 2, 0
.global \name
.arm
.type \name, % function
.endm

.macro arm_func_end name
.size \name, .-\name
.endm

.macro thumb_func_start name
.align 2, 0
.global \name
.thumb
.thumb_func
.type \name, % function
.endm

.macro non_word_aligned_thumb_func_start name
.global \name
.thumb
.thumb_func
.type \name, % function
.endm

.macro thumb_func_end name
.size \name, .-\name
.endm
.global Start
.text
.thumb

Start:

.incbin "base.gba", 0x0, 0x1D8
	thumb_func_start sub_080001d8
sub_080001d8:
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
	thumb_func_end sub_080001d8


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
_08000a34:	.4byte 0x04000010
_08000a38:	.4byte 0x0400004A
_08000a3c:	.4byte 0x04000008
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
	bl		sub_08071b80
	b		_08000aa4

.incbin "base.gba", 0xA8E, 0x2

_08000a90:	.4byte 0x080e8e4c

_08000a94:
	ldr		r4, _08000aec
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
_08000aa4:
	bl		sub_0802711c
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
	bl		sub_08071b80
	ldr		r4, _08000af4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r4, _08000af8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	bl		sub_08071b80
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
	bl		sub_08071b80
_08000b0e:
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldr		r0, _08000dac
	ldr		r4, _08000db0
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000db4
	ldr		r3, _08000db8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000dbc
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000dc0
	ldr		r5, _08000dc4
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000dc8
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000dcc
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r5, _08000dd0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r0, _08000dd4
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000dd8
	ldr		r6, _08000ddc
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000de0
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000de4
	ldr		r3, _08000de8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000dec
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000df0
	mov		r8, r2
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r5, _08000df4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldr		r0, _08000df8
	mov		r2, #0xc4
	lsl		r2, r2, #0x1
	add		r1, r7, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08000dfc
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e00
	ldr		r5, _08000e04
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e08
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e0c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e10
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e14
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e18
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e1c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e20
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e24
	ldr		r3, _08000e28
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e2c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e30
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e34
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08000e38
	ldr		r3, _08000e3c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08000e40
	ldr		r4, _08000e44
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08000e48
	mov		r2, #0xb0
	lsl		r2, r2, #0x5
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08000e4c
	mov		r2, #0xb0
	lsl		r2, r2, #0x6
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08000e50
	mov		r1, #0x84
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08000e54
	ldr		r1, _08000e58
	bl		sub_08071b80
	bl		sub_0802711c
	mov		r2, #0xa4
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08000d4a
	ldr		r0, _08000e5c
	mov		r1, r8
	bl		sub_08071b7c
	ldr		r4, _08000e60
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	ldr		r4, _08000e64
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_08000d4a:
	bl		sub_0802711c
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
	bl		sub_0802711c
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
_08001098:	.4byte 0x030031A0
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
_080018fc:	.4byte 0x0400004A
	thumb_func_start sub_08001900
sub_08001900:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08001a18
	ldr		r0, _08001a1c
	add		r4, r6, r0
	ldr		r1, _08001a20
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r4, #0x0
	bl		sub_08027188
	ldr		r5, _08001a24
	add		r0, r4, #0x0
	mov		r1, #0x1
	mov		r2, #0xc
	bl		sub_080271b8
	str		r0, [r5, #0x0]
	add		r5, r0, #0x0
	ldrh	r0, [r5, #0x8]
	mov		r0, #0x4
	strh	r0, [r5, #0x8]
	ldrh	r0, [r5, #0x6]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r5, #0x6]
	ldrh	r0, [r5, #0x0]
	mov		r0, #0xbf
	strh	r0, [r5, #0x0]
	ldrh	r0, [r5, #0x4]
	mov		r0, #0x10
	strh	r0, [r5, #0x4]
	ldr		r4, _08001a28
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r4, [r6, #0xc]
	mov		r0, #0x2
	ldr		r1, _08001a2c
	bl		sub_0807df78
	bl		sub_0802711c
	ldr		r0, _08001a30
	ldr		r4, _08001a34
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08001a38
	ldr		r3, _08001a3c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r4, _08001a40
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r4, _08001a44
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	mov		r4, #0x0
	mov		r6, #0x10
_080019bc:
	bl		sub_0802711c
	sub		r0, r6, r4
	ldrh	r1, [r5, #0x4]
	strh	r0, [r5, #0x4]
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_080019bc
	mov		r4, #0x3b
_080019ce:
	bl		sub_0802711c
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080019ce
	mov		r4, #0x0
_080019da:
	bl		sub_0802711c
	ldrh	r0, [r5, #0x4]
	strh	r4, [r5, #0x4]
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_080019da
	mov		r5, #0x0
	ldr		r4, _08001a18
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _08001a2c
	bl		sub_0807df78
	ldr		r0, _08001a48
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r4, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x1A16, 0x2

_08001a18:	.4byte 0x030031A0
_08001a1c:	.4byte 0x00000704
_08001a20:	.4byte 0x0202A400
_08001a24:	.4byte 0x03000004
_08001a28:	.4byte 0x08001a4d
_08001a2c:	.4byte 0x00010001
_08001a30:	.4byte 0x080f3958
_08001a34:	.4byte 0x02010400
_08001a38:	.4byte 0x06004000
_08001a3c:	.4byte 0x80000600
_08001a40:	.4byte 0x080f4000
_08001a44:	.4byte 0x080f3938
_08001a48:	.4byte 0x08000E79
	ldr		r0, _08001a70
	ldr		r2, [r0, #0x0]
	ldr		r1, _08001a74
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x2]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	sub		r1, #0x54
	ldrh	r0, [r2, #0x6]
	strh	r0, [r1, #0x0]
	add		r1, #0x8
	ldrh	r0, [r2, #0x8]
	strh	r0, [r1, #0x0]
	bx		lr

_08001a70:	.4byte 0x03000004
_08001a74:	.4byte 0x04000050
	thumb_func_end sub_08001900

	thumb_func_start sub_08001a78
sub_08001a78:
	push	{ r4, lr }
	ldr		r1, _08001aa8
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r1, #0x0
	ldr		r4, _08001aac
	mov		r3, #0x0
_08001a86:
	lsl		r0, r1, #0x2
	add		r2, r1, #0x1
	mov		r1, #0x3
	add		r0, r0, r4
	add		r0, #0x3
_08001a90:
	strb	r3, [r0, #0x0]
	sub		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08001a90
	add		r1, r2, #0x0
	cmp		r1, #0x3
	ble		_08001a86
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1AA6, 0x2

_08001aa8:	.4byte 0x03002D5C
_08001aac:	.4byte 0x03002FC0

.incbin "base.gba", 0x1AB0, 0xA4
	thumb_func_end sub_08001a78

	thumb_func_start sub_08001b54
sub_08001b54:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r2, r0, #0x0
	ldr		r7, _08001b70
	mov		r1, #0x1
	ldr		r0, _08001b74
	ldrb	r3, [r0, #0x1]
	cmp		r3, #0x1
	bgt		_08001b78
	mov		r3, #0x0
	b		_08001b88

.incbin "base.gba", 0x1B6E, 0x2

_08001b70:	.4byte 0x03000010
_08001b74:	.4byte 0x03003000

_08001b78:
	sub		r3, #0x1
	cmp		r3, #0x0
	beq		_08001b88
	ldr		r4, _08001bf8
	add		r0, r2, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08001b8a
_08001b88:
	mov		r1, #0x0
_08001b8a:
	mov		r0, #0x17
	ldrsb	r0, [r7, r0]
	cmp		r3, r0
	beq		_08001b94
	mov		r1, #0x1
_08001b94:
	ldr		r0, _08001bfc
	mov		r9, r0
	cmp		r1, #0x0
	bne		_08001ba2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08001bea
_08001ba2:
	mov		r1, #0x0
	add		r6, r7, #0x4
	mov		r4, #0xd
	add		r4, r4, r7
	mov		r12, r4
	mov		r0, #0x12
	add		r0, r0, r7
	mov		r8, r0
	mov		r5, #0x0
	add		r2, r7, #0x0
	add		r2, #0x9
	mov		r4, #0x4
_08001bba:
	add		r0, r7, r1
	strb	r5, [r0, #0x0]
	add		r0, r2, r1
	strb	r4, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x3
	ble		_08001bba
	mov		r1, #0x0
	mov		r2, #0x0
	mov		r5, r12
	mov		r4, r8
_08001bd0:
	add		r0, r6, r1
	strb	r2, [r0, #0x0]
	add		r0, r5, r1
	strb	r2, [r0, #0x0]
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x4
	ble		_08001bd0
	strb	r3, [r7, #0x17]
	mov		r0, #0x1
	mov		r1, r9
	str		r0, [r1, #0x0]
_08001bea:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1BF6, 0x2

_08001bf8:	.4byte 0x00000D84
_08001bfc:	.4byte 0x03000028
	thumb_func_end sub_08001b54

	thumb_func_start sub_08001c00
sub_08001c00:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	ldr		r1, _08001c88
	add		r0, r4, r1
	ldrb	r5, [r0, #0x0]
	add		r1, #0x3
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r8, r0
	add		r1, #0x2
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	mov		r9, r0
	add		r1, #0x1
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	mov		r10, r0
	mov		r2, #0x0
	cmp		r2, r5
	bge		_08001c4c
	mov		r7, #0x7
	ldr		r0, _08001c8c
	add		r3, r4, r0
	ldr		r6, _08001c90
_08001c38:
	ldmia	r3!, { r0 }
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	add		r1, r2, r6
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	cmp		r2, r5
	blt		_08001c38
_08001c4c:
	bl		sub_0802711c
	add		r0, r4, #0x0
	bl		sub_08042668
	bl		sub_0802711c
	ldr		r1, _08001c88
	add		r0, r4, r1
	strb	r5, [r0, #0x0]
	add		r1, #0x3
	add		r0, r4, r1
	mov		r1, r8
	strh	r1, [r0, #0x0]
	ldr		r1, _08001c94
	add		r0, r4, r1
	mov		r1, r9
	strb	r1, [r0, #0x0]
	ldr		r1, _08001c98
	add		r0, r4, r1
	mov		r1, r10
	strb	r1, [r0, #0x0]
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1C86, 0x2

_08001c88:	.4byte 0x000007D7
_08001c8c:	.4byte 0x000007F4
_08001c90:	.4byte 0x0300002C
_08001c94:	.4byte 0x000007DC
_08001c98:	.4byte 0x000007DD
	thumb_func_end sub_08001c00

	thumb_func_start sub_08001c9c
sub_08001c9c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x20
	add		r5, r0, #0x0
	ldr		r1, _08001d20
	add		r0, r5, r1
	ldrb	r7, [r0, #0x0]
	ldr		r2, _08001d24
	add		r0, r5, r2
	ldrh	r6, [r0, #0x0]
	add		r1, #0x5
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	cmp		r7, #0x0
	beq		_08001cdc
	mov		r2, #0x7
	mov		r12, r2
	mov		r3, sp
	ldr		r0, _08001d28
	add		r2, r5, r0
	add		r4, r7, #0x0
_08001cca:
	ldmia	r2!, { r0 }
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, r12
	and		r0, r1
	stmia	r3!, { r0 }
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08001cca
_08001cdc:
	add		r0, r5, #0x0
	bl		sub_08042668
	ldr		r1, _08001d20
	add		r0, r5, r1
	strb	r7, [r0, #0x0]
	mov		r2, #0x81
	neg		r2, r2
	add		r0, r2, #0x0
	and		r6, r0
	add		r1, #0x3
	add		r0, r5, r1
	strh	r6, [r0, #0x0]
	ldr		r2, _08001d2c
	add		r0, r5, r2
	mov		r1, r8
	strb	r1, [r0, #0x0]
	ldr		r4, _08001d30
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	mov		r2, #0xaf
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0xc]
	bl		sub_0802c6c8
	cmp		r0, #0x0
	beq		_08001d34
	ldr		r0, [r4, #0x0]
	bl		sub_0802d6a0
	b		_08001d3a

_08001d20:	.4byte 0x000007D7
_08001d24:	.4byte 0x000007DA
_08001d28:	.4byte 0x000007F4
_08001d2c:	.4byte 0x000007DC
_08001d30:	.4byte 0x03000008

_08001d34:
	ldr		r0, [r4, #0x0]
	bl		sub_0802d690
_08001d3a:
	ldr		r2, _08001d64
	add		r1, r5, r2
	strb	r0, [r1, #0x0]
	cmp		r7, #0x0
	beq		_08001d58
	mov		r6, sp
	add		r4, r7, #0x0
_08001d48:
	ldmia	r6!, { r1 }
	add		r0, r5, #0x0
	mov		r2, #0x1
	bl		sub_08044818
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08001d48
_08001d58:
	add		sp, #0x20
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08001d64:	.4byte 0x000007DD
	thumb_func_end sub_08001c9c

	thumb_func_start sub_08001d68
sub_08001d68:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08001c00
	ldr		r0, _08001dc0
	add		r2, r4, r0
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08001d94
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r3, #0x82
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08001d94:
	ldr		r1, _08001dc0
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08001da6
	ldr		r0, _08001dc4
	strh	r0, [r2, #0x0]
_08001da6:
	ldr		r0, _08001dc8
	ldrb	r1, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0x1
	bl		sub_08044818
	ldr		r1, _08001dcc
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1DBE, 0x2

_08001dc0:	.4byte 0x000007DA
_08001dc4:	.4byte 0x00008110
_08001dc8:	.4byte 0x0300002C
_08001dcc:	.4byte 0x0203EEA0
	thumb_func_end sub_08001d68

	thumb_func_start sub_08001dd0
sub_08001dd0:
	push	{ r4, lr }
	ldr		r0, _08001dec
	ldr		r4, [r0, #0x0]
	ldr		r1, _08001df0
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_08001e20
	cmp		r0, #0x1
	bgt		_08001df4
	cmp		r0, #0x0
	beq		_08001dfe
	b		_08001e86

.incbin "base.gba", 0x1DEA, 0x2

_08001dec:	.4byte 0x0203EEA4
_08001df0:	.4byte 0x000011F8

_08001df4:
	cmp		r0, #0x2
	beq		_08001e44
	cmp		r0, #0x3
	beq		_08001e68
	b		_08001e86
_08001dfe:
	ldr		r3, _08001e18
	add		r2, r4, r3
	ldr		r0, [r2, #0x0]
	asr		r0, r0, #0x2
	add		r3, #0xc
	add		r1, r4, r3
	ldrh	r3, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldr		r0, [r2, #0x0]
	neg		r0, r0
	asr		r0, r0, #0x2
	ldr		r2, _08001e1c
	b		_08001e80

_08001e18:	.4byte 0x000011F4
_08001e1c:	.4byte 0x00001202

_08001e20:
	ldr		r3, _08001e3c
	add		r2, r4, r3
	ldr		r0, [r2, #0x0]
	asr		r0, r0, #0x2
	add		r3, #0x12
	add		r1, r4, r3
	ldrh	r3, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldr		r0, [r2, #0x0]
	neg		r0, r0
	asr		r0, r0, #0x2
	ldr		r2, _08001e40
	b		_08001e80

.incbin "base.gba", 0x1E3A, 0x2

_08001e3c:	.4byte 0x000011F4
_08001e40:	.4byte 0x00001208

_08001e44:
	ldr		r3, _08001e60
	add		r2, r4, r3
	ldr		r0, [r2, #0x0]
	asr		r0, r0, #0x2
	add		r3, #0x18
	add		r1, r4, r3
	ldrh	r3, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldr		r0, [r2, #0x0]
	neg		r0, r0
	asr		r0, r0, #0x2
	ldr		r2, _08001e64
	b		_08001e80

.incbin "base.gba", 0x1E5E, 0x2

_08001e60:	.4byte 0x000011F4
_08001e64:	.4byte 0x0000120E

_08001e68:
	ldr		r3, _08001f9c
	add		r2, r4, r3
	ldr		r0, [r2, #0x0]
	asr		r0, r0, #0x2
	add		r3, #0x1e
	add		r1, r4, r3
	ldrh	r3, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldr		r0, [r2, #0x0]
	neg		r0, r0
	asr		r0, r0, #0x2
	ldr		r2, _08001fa0
_08001e80:
	add		r1, r4, r2
	ldrh	r2, [r1, #0x0]
	strh	r0, [r1, #0x0]
_08001e86:
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r3, _08001fa4
	add		r0, r4, r3
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08001fa8
	and		r0, r1
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08001fac
	ldr		r2, _08001fb0
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x8
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	sub		r1, #0x8
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0xa
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	sub		r1, #0xa
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0xc
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	sub		r1, #0xc
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0xe
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x32
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	sub		r1, #0x34
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x4
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x1e
	add		r3, #0x4
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1F9A, 0x2

_08001f9c:	.4byte 0x000011F4
_08001fa0:	.4byte 0x00001214
_08001fa4:	.4byte 0x000011FC
_08001fa8:	.4byte 0x00009FFF
_08001fac:	.4byte 0x04000008
_08001fb0:	.4byte 0x000011FE
	thumb_func_end sub_08001dd0

	thumb_func_start sub_08001fb4
sub_08001fb4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r4, #0x0
	mov		r1, #0x0
	ldr		r2, _080020ac
	add		r2, r9
_08001fc6:
	lsl		r0, r4, #0x1
	add		r7, r4, #0x1
	add		r0, r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	mov		r6, #0x2
_08001fd2:
	str		r1, [r0, #0x0]
	str		r1, [r0, #0x3c]
	add		r0, #0x4
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08001fd2
	add		r4, r7, #0x0
	cmp		r4, #0x4
	ble		_08001fc6
	mov		r1, r9
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	bne		_080020c0
	mov		r6, #0x0
	ldr		r4, _080020b0
	add		r4, r9
_08001ff2:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	stmia	r4!, { r0 }
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08001ff2
	ldr		r1, _080020b4
	add		r1, r9
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r6, #0x0
	ldr		r4, _080020b4
	add		r4, r9
_08002010:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	cmp		r0, #0x0
	bne		_0800201e
	str		r0, [r4, #0x0]
_0800201e:
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002010
	mov		r2, r9
	ldr		r0, [r2, #0x10]
	cmp		r0, #0x0
	blt		_0800207e
	cmp		r0, #0x1
	ble		_08002034
	cmp		r0, #0x5
	bne		_0800207e
_08002034:
	mov		r6, #0x0
	ldr		r4, _080020b8
	add		r4, r9
_0800203a:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	stmia	r4!, { r0 }
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_0800203a
	mov		r4, #0x0
	mov		r0, #0x87
	lsl		r0, r0, #0x5
	add		r0, r9
	mov		r8, r0
_08002054:
	mov		r6, #0x0
	lsl		r0, r4, #0x1
	add		r7, r4, #0x1
	lsl		r5, r4, #0x18
	add		r0, r0, r4
	lsl		r4, r0, #0x2
_08002060:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	lsr		r0, r5, #0x18
	bl		sub_080577f8
	mov		r2, r8
	add		r1, r2, r4
	str		r0, [r1, #0x0]
	add		r4, #0x4
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002060
	add		r4, r7, #0x0
	cmp		r4, #0x4
	ble		_08002054
_0800207e:
	mov		r6, #0x0
_08002080:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	cmp		r0, #0x0
	beq		_080020a2
	lsl		r0, r6, #0x2
	mov		r1, #0x1
	mov		r4, #0x4
	add		r0, r9
	ldr		r2, _080020bc
	add		r0, r0, r2
_08002098:
	str		r1, [r0, #0x0]
	sub		r0, #0xc
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08002098
_080020a2:
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002080
	b		_0800216c

.incbin "base.gba", 0x20AA, 0x2

_080020ac:	.4byte 0x000010A4
_080020b0:	.4byte 0x0000111C
_080020b4:	.4byte 0x00001128
_080020b8:	.4byte 0x000010D4
_080020bc:	.4byte 0x00001110

_080020c0:
	mov		r6, #0x0
	ldr		r4, _080021ac
	add		r4, r9
_080020c6:
	add		r0, r6, #0x0
	bl		sub_080139bc
	stmia	r4!, { r0 }
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_080020c6
	ldr		r1, _080021b0
	add		r1, r9
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r6, #0x0
	ldr		r4, _080021b0
	add		r4, r9
_080020e2:
	add		r0, r6, #0x0
	bl		sub_080139bc
	cmp		r0, #0x0
	bne		_080020ee
	str		r0, [r4, #0x0]
_080020ee:
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_080020e2
	mov		r1, r9
	ldr		r0, [r1, #0x10]
	cmp		r0, #0x0
	beq		_08002100
	cmp		r0, #0x2
	bne		_08002144
_08002100:
	mov		r6, #0x0
	ldr		r4, _080021b4
	add		r4, r9
_08002106:
	add		r0, r6, #0x0
	bl		sub_080139bc
	stmia	r4!, { r0 }
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002106
	mov		r4, #0x0
	mov		r2, #0x87
	lsl		r2, r2, #0x5
	add		r2, r9
	mov		r8, r2
_0800211e:
	mov		r6, #0x0
	lsl		r0, r4, #0x1
	add		r7, r4, #0x1
	add		r0, r0, r4
	lsl		r5, r0, #0x2
_08002128:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08013a0c
	mov		r2, r8
	add		r1, r2, r5
	str		r0, [r1, #0x0]
	add		r5, #0x4
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002128
	add		r4, r7, #0x0
	cmp		r4, #0x4
	ble		_0800211e
_08002144:
	mov		r6, #0x0
_08002146:
	add		r0, r6, #0x0
	bl		sub_080139bc
	cmp		r0, #0x0
	beq		_08002166
	lsl		r0, r6, #0x2
	mov		r1, #0x1
	mov		r4, #0x4
	add		r0, r9
	ldr		r2, _080021b8
	add		r0, r0, r2
_0800215c:
	str		r1, [r0, #0x0]
	sub		r0, #0xc
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800215c
_08002166:
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08002146
_0800216c:
	ldr		r1, _080021bc
	add		r1, r9
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	mov		r4, #0x0
	mov		r5, #0x87
	lsl		r5, r5, #0x5
	add		r5, r9
	mov		r3, #0x1
_0800217e:
	lsl		r0, r4, #0x1
	add		r7, r4, #0x1
	add		r0, r0, r4
	lsl		r0, r0, #0x2
	add		r2, r0, r5
	mov		r6, #0x2
_0800218a:
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08002192
	str		r3, [r1, #0x0]
_08002192:
	add		r2, #0x4
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0800218a
	add		r4, r7, #0x0
	cmp		r4, #0x4
	ble		_0800217e
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080021ac:	.4byte 0x0000111C
_080021b0:	.4byte 0x00001128
_080021b4:	.4byte 0x000010D4
_080021b8:	.4byte 0x00001110
_080021bc:	.4byte 0x0000112C
	thumb_func_end sub_08001fb4

	thumb_func_start sub_080021c0
sub_080021c0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x20
	mov		r7, #0x0
	ldr		r4, _08002208
	ldr		r0, _0800220c
	add		r4, r4, r0
	ldr		r1, _08002210
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r4, #0x0
	bl		sub_08027188
	ldr		r5, _08002214
	ldr		r2, _08002218
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_080271b8
	add		r6, r0, #0x0
	str		r6, [r5, #0x0]
	bl		sub_080297c8
	ldr		r2, _0800221c
	ldr		r1, _08002220
	add		r0, r6, r1
	ldrb	r1, [r2, #0x1]
	str		r1, [r0, #0x0]
	cmp		r1, #0x1
	bgt		_08002224
	str		r7, [r6, #0x8]
	str		r7, [r6, #0xc]
	b		_0800222e

_08002208:	.4byte 0x030031A0
_0800220c:	.4byte 0x00000704
_08002210:	.4byte 0x0202A400
_08002214:	.4byte 0x0203EEA4
_08002218:	.4byte 0x00001230
_0800221c:	.4byte 0x03003000
_08002220:	.4byte 0x00001088

_08002224:
	sub		r0, r1, #0x1
	str		r0, [r6, #0x8]
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	str		r0, [r6, #0xc]
_0800222e:
	ldr		r2, _080023c4
	add		r0, r6, r2
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	mov		r3, #0x85
	lsl		r3, r3, #0x5
	add		r0, r6, r3
	str		r1, [r0, #0x0]
	mov		r0, #0x24
	add		r0, r0, r6
	mov		r9, r0
	add		r5, sp, #0x10
	mov		r1, r9
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r6, #0x0
	add		r0, #0x30
_08002250:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	cmp		r0, r1
	bge		_08002250
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r6, #0x4]
	str		r0, [r6, #0x10]
	str		r0, [r6, #0x14]
	str		r0, [r6, #0x18]
	str		r0, [r6, #0x1c]
	str		r0, [r6, #0x20]
	ldr		r2, _080023c8
	add		r1, r6, r2
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r4, #0x0
	str		r4, [r6, #0x0]
	str		r4, [r6, #0x50]
	ldr		r3, _080023cc
	add		r0, r6, r3
	str		r4, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080023d0
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _080023d4
	mov		r2, #0xf0
	strh	r2, [r0, #0x0]
	add		r0, #0x4
	mov		r1, #0xa0
	strh	r1, [r0, #0x0]
	sub		r0, #0x2
	strh	r2, [r0, #0x0]
	add		r0, #0x4
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	ldr		r2, _080023d8
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	bl		sub_0802711c
	strh	r4, [r5, #0x0]
	ldr		r1, _080023dc
	ldr		r2, _080023e0
	add		r0, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	beq		_080022c0
	b		_08002432
_080022c0:
	mov		r1, #0x0
	mov		r5, #0x13
	ldr		r3, _080023e4
	add		r0, r6, r3
_080022c8:
	str		r1, [r0, #0x0]
	sub		r0, #0x4
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_080022c8
	ldr		r0, _080023e8
	add		r1, r6, r0
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r5, #0x0
_080022dc:
	add		r0, r5, #0x0
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	asr		r4, r0, #0x18
	mov		r0, #0x1
	neg		r0, r0
	cmp		r4, r0
	beq		_08002330
	lsl		r1, r5, #0x2
	ldr		r2, _080023ec
	add		r0, r6, r2
	add		r0, r0, r1
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	mov		r3, #0x8c
	lsl		r3, r3, #0x5
	add		r1, r6, r3
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r2, r5, #0x1
	ldr		r3, _080023f0
	add		r1, r6, r3
	add		r1, r1, r2
	strh	r0, [r1, #0x0]
	ldr		r0, _080023e8
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
_08002330:
	add		r5, #0x1
	cmp		r5, #0x13
	ble		_080022dc
	mov		r1, #0x0
	mov		r5, #0x1
	ldr		r2, _080023f4
	add		r0, r6, r2
_0800233e:
	str		r1, [r0, #0x0]
	sub		r0, #0x4
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800233e
	ldr		r3, _080023f8
	add		r1, r6, r3
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r5, #0x0
_08002352:
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080575e8
	lsl		r0, r0, #0x18
	asr		r4, r0, #0x18
	mov		r0, #0x1
	neg		r0, r0
	add		r7, r5, #0x1
	cmp		r4, r0
	beq		_0800242c
	lsl		r1, r5, #0x2
	mov		r2, #0x8e
	lsl		r2, r2, #0x5
	add		r0, r6, r2
	add		r0, r0, r1
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	ldr		r3, _080023fc
	add		r1, r6, r3
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r2, r5, #0x1
	ldr		r3, _08002400
	add		r1, r6, r3
	add		r1, r1, r2
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_080578d8
	ldr		r2, _08002404
	add		r1, r6, r2
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	lsl		r1, r5, #0x3
	ldr		r3, _08002408
	add		r1, r1, r3
	add		r1, r6, r1
	add		r0, r4, #0x0
	bl		sub_080578a0
	ldr		r0, _080023f8
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r4, #0x0
	b		_0800240e

.incbin "base.gba", 0x23C2, 0x2

_080023c4:	.4byte 0x0000109C
_080023c8:	.4byte 0x00000D84
_080023cc:	.4byte 0x000011E4
_080023d0:	.4byte 0x00009FFF
_080023d4:	.4byte 0x04000040
_080023d8:	.4byte 0x00003F3F
_080023dc:	.4byte 0x02020400
_080023e0:	.4byte 0x01000800
_080023e4:	.4byte 0x0000117C
_080023e8:	.4byte 0x000011BC
_080023ec:	.4byte 0x00001130
_080023f0:	.4byte 0x00001194
_080023f4:	.4byte 0x000011C4
_080023f8:	.4byte 0x000011E2
_080023fc:	.4byte 0x000011CA
_08002400:	.4byte 0x000011CC
_08002404:	.4byte 0x000011D0
_08002408:	.4byte 0x000011D2

_0800240c:
	add		r4, #0x1
_0800240e:
	cmp		r4, #0x13
	bgt		_08002424
	add		r0, r4, #0x0
	bl		sub_0802d690
	ldr		r2, _08002484
	add		r1, r6, r2
	add		r1, r1, r5
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0800240c
_08002424:
	ldr		r3, _08002488
	add		r0, r6, r3
	add		r0, r0, r5
	strb	r4, [r0, #0x0]
_0800242c:
	add		r5, r7, #0x0
	cmp		r5, #0x1
	ble		_08002352
_08002432:
	bl		sub_0802711c
	ldr		r4, _0800248c
	ldr		r5, _08002490
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r4, [r5, #0xc]
	mov		r0, #0x2
	ldr		r1, _08002494
	bl		sub_0807df78
	mov		r1, #0x3
	neg		r1, r1
	mov		r0, #0x1
	bl		sub_0807df78
	ldr		r1, _08002498
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r1, _0800249c
	mov		r0, #0x4f
	bl		sub_08029fcc
	mov		r0, #0x24
	add		r0, r0, r5
	mov		r8, r0
	ldr		r0, _080024a0
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x66
	bne		_08002478
	b		_080025c0
_08002478:
	cmp		r0, #0x66
	bgt		_080024a4
	cmp		r0, #0x65
	beq		_080024b2
	b		_080026e2

.incbin "base.gba", 0x2482, 0x2

_08002484:	.4byte 0x000011D0
_08002488:	.4byte 0x000011C8
_0800248c:	.4byte 0x08001DD1
_08002490:	.4byte 0x030031A0
_08002494:	.4byte 0x00010001
_08002498:	.4byte 0x080270F1
_0800249c:	.4byte 0x0800c621
_080024a0:	.4byte 0x0203EEA0

_080024a4:
	cmp		r0, #0x67
	bne		_080024aa
	b		_080026a0
_080024aa:
	cmp		r0, #0x69
	bne		_080024b0
	b		_080026b4
_080024b0:
	b		_080026e2
_080024b2:
	ldr		r0, [r6, #0x8]
	str		r0, [r6, #0x4]
	ldr		r1, _080024d8
	add		r0, r5, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_080024fe
	cmp		r1, r0
	bgt		_080024dc
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_080024ee
	b		_0800250a

_080024d8:	.4byte 0x000007FE

_080024dc:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08002502
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_08002506
	b		_0800250a
_080024ee:
	mov		r0, #0x10
	and		r0, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08002508
	mov		r0, #0x5
	b		_08002508
_080024fe:
	mov		r0, #0x1
	b		_08002508
_08002502:
	mov		r0, #0x2
	b		_08002508
_08002506:
	mov		r0, #0x3
_08002508:
	str		r0, [r6, #0x10]
_0800250a:
	ldr		r0, _0800252c
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_08002556
	cmp		r1, r0
	bgt		_08002530
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08002538
	b		_0800255a

_0800252c:	.4byte 0x000007DA

_08002530:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_0800255a
_08002538:
	ldr		r0, _0800254c
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_08002558
	cmp		r0, #0x1
	bgt		_08002550
	cmp		r0, #0x0
	beq		_08002558
	b		_0800255a

_0800254c:	.4byte 0x000007DC

_08002550:
	cmp		r0, #0x2
	bne		_0800255a
	b		_08002558
_08002556:
	mov		r0, #0x0
_08002558:
	str		r0, [r6, #0x14]
_0800255a:
	ldr		r4, _08002598
	ldr		r0, [r6, #0xc]
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	bl		sub_0800ebfc
	str		r0, [r6, #0x18]
	mov		r5, #0x0
	add		r7, r4, #0x0
	mov		r4, r9
_0800256e:
	add		r0, r5, r7
	ldrb	r0, [r0, #0x0]
	bl		sub_0800ebfc
	stmia	r4!, { r0 }
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800256e
	ldr		r0, _0800259c
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	bl		sub_0802d6d0
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_080025a4
	ldr		r2, _080025a0
	add		r1, r6, r2
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_080025aa

_08002598:	.4byte 0x0300002C
_0800259c:	.4byte 0x000007DD
_080025a0:	.4byte 0x000011E4

_080025a4:
	ldr		r3, _080025b8
	add		r0, r6, r3
	str		r1, [r0, #0x0]
_080025aa:
	ldr		r1, _080025bc
	add		r0, r6, r1
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	mov		r0, #0x2
	b		_080026d0

.incbin "base.gba", 0x25B6, 0x2

_080025b8:	.4byte 0x000011E4
_080025bc:	.4byte 0x00000D84

_080025c0:
	ldr		r0, [r6, #0x8]
	str		r0, [r6, #0x4]
	ldr		r2, _080025e8
	add		r0, r5, r2
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_0800260e
	cmp		r1, r0
	bgt		_080025ec
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_080025fe
	b		_0800261a

.incbin "base.gba", 0x25E6, 0x2

_080025e8:	.4byte 0x000007FE

_080025ec:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08002612
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_08002616
	b		_0800261a
_080025fe:
	mov		r0, #0x10
	and		r0, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08002618
	mov		r0, #0x5
	b		_08002618
_0800260e:
	mov		r0, #0x1
	b		_08002618
_08002612:
	mov		r0, #0x2
	b		_08002618
_08002616:
	mov		r0, #0x3
_08002618:
	str		r0, [r6, #0x10]
_0800261a:
	ldr		r0, _0800263c
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_08002666
	cmp		r1, r0
	bgt		_08002640
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08002648
	b		_0800266a

_0800263c:	.4byte 0x000007DA

_08002640:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_0800266a
_08002648:
	ldr		r0, _0800265c
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_08002668
	cmp		r0, #0x1
	bgt		_08002660
	cmp		r0, #0x0
	beq		_08002668
	b		_0800266a

_0800265c:	.4byte 0x000007DC

_08002660:
	cmp		r0, #0x2
	bne		_0800266a
	b		_08002668
_08002666:
	mov		r0, #0x0
_08002668:
	str		r0, [r6, #0x14]
_0800266a:
	ldr		r4, _08002698
	ldr		r0, [r6, #0xc]
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	bl		sub_0800ebfc
	str		r0, [r6, #0x18]
	mov		r5, #0x0
	add		r7, r4, #0x0
	mov		r4, r9
_0800267e:
	add		r0, r5, r7
	ldrb	r0, [r0, #0x0]
	bl		sub_0800ebfc
	stmia	r4!, { r0 }
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800267e
	ldr		r3, _0800269c
	add		r1, r6, r3
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_080026d0

_08002698:	.4byte 0x0300002C
_0800269c:	.4byte 0x00000D84

_080026a0:
	ldr		r0, [r6, #0x8]
	str		r0, [r6, #0x4]
	ldr		r0, _080026b0
	add		r1, r6, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	b		_080026ea

_080026b0:	.4byte 0x00000D84

_080026b4:
	ldr		r0, [r6, #0x8]
	str		r0, [r6, #0x4]
	mov		r1, #0x1
	str		r1, [r6, #0x10]
	mov		r0, #0x0
	str		r0, [r6, #0x14]
	mov		r0, #0x10
	str		r0, [r6, #0x40]
	str		r0, [r6, #0x3c]
	str		r0, [r6, #0x38]
	ldr		r2, _080026d8
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	mov		r0, #0x3
_080026d0:
	str		r0, [r6, #0x0]
	mov		r4, #0x1
	b		_080026ee

.incbin "base.gba", 0x26D6, 0x2

_080026d8:	.4byte 0x00000D84

_080026dc:
	mov		r0, #0x5
	str		r0, [r6, #0x0]
	b		_08002804
_080026e2:
	ldr		r3, _08002740
	add		r1, r6, r3
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_080026ea:
	str		r0, [r6, #0x0]
	mov		r4, #0x0
_080026ee:
	ldr		r1, _08002744
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	bl		sub_08001b54
	mov		r0, #0x2
	bl		sub_0807073c
	ldr		r1, _08002740
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800272c
	ldr		r0, _08002748
	ldrb	r1, [r0, #0x1]
	cmp		r1, #0x1
	bgt		_08002714
	mov		r1, #0x1
_08002714:
	ldr		r0, _0800274c
	ldr		r2, _08002750
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, r1
	beq		_0800272c
	ldr		r3, _08002754
	add		r0, r6, r3
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	mov		r0, #0x5
	str		r0, [r6, #0x0]
_0800272c:
	mov		r7, #0x0
_0800272e:
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x5
	bhi		_080027f0
	lsl		r0, r0, #0x2
	ldr		r1, _08002758
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x273E, 0x2

_08002740:	.4byte 0x00000D84
_08002744:	.4byte 0x0203EEA0
_08002748:	.4byte 0x03003000
_0800274c:	.4byte 0x030031A0
_08002750:	.4byte 0x000007FB
_08002754:	.4byte 0x0000109C
_08002758:	.4byte 0x0800275c
_0800275c:	.4byte 0x08002774

.incbin "base.gba", 0x2760, 0x14
	thumb_func_end sub_080021c0


.incbin "base.gba", 0x2774, 0x7C

_080027f0:

.incbin "base.gba", 0x27F0, 0x10
_08002800:

.incbin "base.gba", 0x2800, 0x4
_08002804:

.incbin "base.gba", 0x2804, 0x1A
_0800281e:

.incbin "base.gba", 0x281E, 0xE
_0800282c:

.incbin "base.gba", 0x282C, 0x12
_0800283e:

.incbin "base.gba", 0x283E, 0x52
_08002890:

.incbin "base.gba", 0x2890, 0x50
_080028e0:

.incbin "base.gba", 0x28E0, 0x10
_080028f0:	.4byte 0x0000109C
_080028f4:	.4byte 0x08124544
_080028f8:	.4byte 0x081245c8
_080028fc:	.4byte 0x0000000B
_08002900:	.4byte 0x030031A0
_08002904:	.4byte 0x00010001
_08002908:	.4byte 0x080270F1
_0800290c:	.4byte 0x000011E4
_08002910:	.4byte 0x0300000C

_08002914:

.incbin "base.gba", 0x2914, 0xA
_0800291e:

.incbin "base.gba", 0x291E, 0xA
_08002928:	.4byte 0x000007FB

_0800292c:

.incbin "base.gba", 0x292C, 0xC
_08002938:	.4byte 0x000007FB

_0800293c:

.incbin "base.gba", 0x293C, 0xC
_08002948:	.4byte 0x000007FB

_0800294c:

.incbin "base.gba", 0x294C, 0xA
_08002956:

.incbin "base.gba", 0x2956, 0x12
_08002968:	.4byte 0x000007FB
_0800296c:	.4byte 0x08002970
_08002970:	.4byte 0x08002988

.incbin "base.gba", 0x2974, 0x6E

_080029e2:

.incbin "base.gba", 0x29E2, 0x16
_080029f8:

.incbin "base.gba", 0x29F8, 0x6
_080029fe:

.incbin "base.gba", 0x29FE, 0xE
_08002a0c:

.incbin "base.gba", 0x2A0C, 0x6
_08002a12:

.incbin "base.gba", 0x2A12, 0x6
_08002a18:	.4byte 0x000007DC

_08002a1c:

.incbin "base.gba", 0x2A1C, 0x8
_08002a24:	.4byte 0x000007DC

_08002a28:

.incbin "base.gba", 0x2A28, 0x4
_08002a2c:

.incbin "base.gba", 0x2A2C, 0x2
_08002a2e:

.incbin "base.gba", 0x2A2E, 0x16
_08002a44:	.4byte 0x000007DC

_08002a48:

.incbin "base.gba", 0x2A48, 0x8
_08002a50:

.incbin "base.gba", 0x2A50, 0x16
_08002a66:

.incbin "base.gba", 0x2A66, 0x10
_08002a76:

.incbin "base.gba", 0x2A76, 0x16
_08002a8c:	.4byte 0x000007DD
_08002a90:	.4byte 0x03000008

_08002a94:

.incbin "base.gba", 0x2A94, 0x12
_08002aa6:

.incbin "base.gba", 0x2AA6, 0xA
_08002ab0:

.incbin "base.gba", 0x2AB0, 0xC
_08002abc:	.4byte 0x000007DD
_08002ac0:	.4byte 0x03000008

_08002ac4:

.incbin "base.gba", 0x2AC4, 0x14
_08002ad8:

.incbin "base.gba", 0x2AD8, 0xC
_08002ae4:

.incbin "base.gba", 0x2AE4, 0xE
_08002af2:

.incbin "base.gba", 0x2AF2, 0x14
_08002b06:

.incbin "base.gba", 0x2B06, 0x6
_08002b0c:

.incbin "base.gba", 0x2B0C, 0xC
_08002b18:	.4byte 0x000007DD
_08002b1c:	.4byte 0x03000008
_08002b20:	.4byte 0x000007DA
_08002b24:	.4byte 0x08000E79

_08002b28:

.incbin "base.gba", 0x2B28, 0x4
_08002b2c:	.4byte 0x0804B035

_08002b30:

.incbin "base.gba", 0x2B30, 0x2
_08002b32:

.incbin "base.gba", 0x2B32, 0x22
_08002b54:	.4byte 0x080165D9
_08002b58:	.4byte 0x030031A0
	thumb_func_start sub_08002b5c
sub_08002b5c:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	bl		sub_08001c00
	ldr		r1, _08002b84
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08002b8c
	ldr		r0, _08002b88
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x1
	bl		sub_08044818
	b		_08002bb0

.incbin "base.gba", 0x2B82, 0x2

_08002b84:	.4byte 0x000007DA
_08002b88:	.4byte 0x0300002C

_08002b8c:
	mov		r4, #0x0
	ldr		r1, _08002bbc
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08002bb0
	ldr		r7, _08002bc0
	add		r6, r5, r1
_08002b9c:
	add		r0, r4, r7
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x1
	bl		sub_08044818
	add		r4, #0x1
	ldrb	r0, [r6, #0x0]
	cmp		r4, r0
	blt		_08002b9c
_08002bb0:
	ldr		r1, _08002bc4
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08002bbc:	.4byte 0x000007D7
_08002bc0:	.4byte 0x0300002C
_08002bc4:	.4byte 0x0203EEA0

.incbin "base.gba", 0x2BC8, 0x50
	thumb_func_end sub_08002b5c

	thumb_func_start sub_08002c18
sub_08002c18:
	ldr		r0, _08002c20
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2C1E, 0x2

_08002c20:	.4byte 0x03000008
	thumb_func_end sub_08002c18

	thumb_func_start sub_08002c24
sub_08002c24:
	ldr		r1, _08002c2c
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x2C2A, 0x2

_08002c2c:	.4byte 0x03000008
	thumb_func_end sub_08002c24

	thumb_func_start sub_08002c30
sub_08002c30:
	ldr		r0, _08002c38
	ldrb	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2C36, 0x2

_08002c38:	.4byte 0x0300000C

.incbin "base.gba", 0x2C3C, 0x20
	thumb_func_end sub_08002c30

	thumb_func_start sub_08002c5c
sub_08002c5c:
	ldr		r1, _08002c64
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x2C62, 0x2

_08002c64:	.4byte 0x0203EEA4
	thumb_func_end sub_08002c5c

	thumb_func_start sub_08002c68
sub_08002c68:
	ldr		r0, _08002c78
	mov		r1, #0x17
	ldrsb	r1, [r0, r1]
	add		r1, r1, r0
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	bx		lr

.incbin "base.gba", 0x2C76, 0x2

_08002c78:	.4byte 0x03000010
	thumb_func_end sub_08002c68

	thumb_func_start sub_08002c7c
sub_08002c7c:
	ldr		r2, _08002c90
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x5
	bhi		_08002cce
	lsl		r0, r0, #0x2
	ldr		r1, _08002c94
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x2C8E, 0x2

_08002c90:	.4byte 0x03000010
_08002c94:	.4byte 0x08002c98
_08002c98:	.4byte 0x08002cb0

.incbin "base.gba", 0x2C9C, 0x14
	thumb_func_end sub_08002c7c


.incbin "base.gba", 0x2CB0, 0x1E

_08002cce:

.incbin "base.gba", 0x2CCE, 0x6
	thumb_func_start sub_08002cd4
sub_08002cd4:
	ldr		r0, _08002ce0
	add		r0, #0x9
	add		r1, r1, r0
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	bx		lr

_08002ce0:	.4byte 0x03000010
	thumb_func_end sub_08002cd4

	thumb_func_start sub_08002ce4
sub_08002ce4:
	ldr		r2, _08002cf8
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x5
	bhi		_08002d36
	lsl		r0, r0, #0x2
	ldr		r1, _08002cfc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x2CF6, 0x2

_08002cf8:	.4byte 0x03000010
_08002cfc:	.4byte 0x08002d00
_08002d00:	.4byte 0x08002d18

.incbin "base.gba", 0x2D04, 0x14
	thumb_func_end sub_08002ce4


.incbin "base.gba", 0x2D18, 0x1E

_08002d36:

.incbin "base.gba", 0x2D36, 0x6
	thumb_func_start sub_08002d3c
sub_08002d3c:
	ldr		r2, _08002d50
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x5
	bhi		_08002d8e
	lsl		r0, r0, #0x2
	ldr		r1, _08002d54
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x2D4E, 0x2

_08002d50:	.4byte 0x03000010
_08002d54:	.4byte 0x08002d58
_08002d58:	.4byte 0x08002d70

.incbin "base.gba", 0x2D5C, 0x14
	thumb_func_end sub_08002d3c


.incbin "base.gba", 0x2D70, 0x1E

_08002d8e:

.incbin "base.gba", 0x2D8E, 0x32
_08002dc0:	.4byte 0x08002dd8

.incbin "base.gba", 0x2DC4, 0x38
	thumb_func_start sub_08002dfc
sub_08002dfc:
	add		r2, r1, #0x0
	ldr		r3, _08002e10
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x5
	bhi		_08002e42
	lsl		r0, r0, #0x2
	ldr		r1, _08002e14
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08002e10:	.4byte 0x03000010
_08002e14:	.4byte 0x08002e18
_08002e18:	.4byte 0x08002e30

.incbin "base.gba", 0x2E1C, 0x14
	thumb_func_end sub_08002dfc


.incbin "base.gba", 0x2E30, 0x12

_08002e42:

.incbin "base.gba", 0x2E42, 0x2
	thumb_func_start sub_08002e44
sub_08002e44:
	add		r2, r1, #0x0
	ldr		r3, _08002e58
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x5
	bhi		_08002e8a
	lsl		r0, r0, #0x2
	ldr		r1, _08002e5c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08002e58:	.4byte 0x03000010
_08002e5c:	.4byte 0x08002e60
_08002e60:	.4byte 0x08002e78

.incbin "base.gba", 0x2E64, 0x14
	thumb_func_end sub_08002e44


.incbin "base.gba", 0x2E78, 0x12

_08002e8a:

.incbin "base.gba", 0x2E8A, 0x2
	thumb_func_start sub_08002e8c
sub_08002e8c:
	ldr		r1, _08002e94
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	bx		lr

_08002e94:	.4byte 0x0300000C
	thumb_func_end sub_08002e8c

	thumb_func_start sub_08002e98
sub_08002e98:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r4, _0800302c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	add		r0, r6, #0x0
	bl		sub_080038ac
	bl		sub_0802711c
	ldr		r0, [r6, #0xc]
	mov		r7, #0x1
	neg		r7, r7
	cmp		r0, r7
	beq		_08002f1e
	ldr		r0, _08003030
	ldr		r4, _08003034
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _08003038
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	bl		sub_08071b80
	ldr		r0, _0800303c
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x40
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
_08002f1e:
	ldr		r0, [r6, #0x8]
	cmp		r0, r7
	beq		_08002f76
	ldr		r0, _08003040
	ldr		r4, _08003044
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _08003048
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _0800304c
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
_08002f76:
	ldr		r0, [r6, #0x10]
	cmp		r0, r7
	beq		_08002fce
	ldr		r0, _08003040
	ldr		r4, _08003050
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _08003054
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _0800304c
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
_08002fce:
	ldr		r0, [r6, #0x14]
	cmp		r0, r7
	beq		_080030b2
	ldr		r0, [r6, #0x10]
	cmp		r0, #0x1
	bne		_08003060
	ldr		r0, _08003040
	ldr		r4, _08003058
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _0800305c
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _0800304c
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	b		_080030ae

.incbin "base.gba", 0x302A, 0x2

_0800302c:	.4byte 0x080d34dc
_08003030:	.4byte 0x080d3c5c
_08003034:	.4byte 0x02012800
_08003038:	.4byte 0x080f44e8
_0800303c:	.4byte 0x080d3c9c
_08003040:	.4byte 0x080d33c0
_08003044:	.4byte 0x02013400
_08003048:	.4byte 0x080f4508
_0800304c:	.4byte 0x080d33f0
_08003050:	.4byte 0x02013600
_08003054:	.4byte 0x080f4528
_08003058:	.4byte 0x02013800
_0800305c:	.4byte 0x080f4570

_08003060:
	ldr		r0, _08003134
	ldr		r4, _08003138
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _0800313c
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _08003140
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_080030ae:
	bl		sub_0802711c
_080030b2:
	ldr		r1, [r6, #0x18]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_080030fa
	mov		r4, #0x3
	cmp		r1, #0x2
	beq		_080030ca
	mov		r4, #0x2
	cmp		r1, #0x3
	beq		_080030ca
	add		r4, r1, #0x0
_080030ca:
	bl		sub_08029f34
	lsl		r1, r4, #0x7
	ldr		r2, _08003144
	add		r1, r1, r2
	ldr		r2, _08003148
	ldr		r3, _0800314c
	bl		sub_08029ee4
	ldr		r4, _08003150
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
_080030fa:
	ldr		r0, _08003154
	ldr		r4, _08003158
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _0800315c
	ldr		r2, _08003160
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	bl		sub_08029f34
	ldr		r1, _08003164
	add		r4, r4, r1
	ldr		r2, _08003168
	ldr		r3, _0800316c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3132, 0x2

_08003134:	.4byte 0x080d33c0
_08003138:	.4byte 0x02013800
_0800313c:	.4byte 0x080f4558
_08003140:	.4byte 0x080d33f0
_08003144:	.4byte 0x0807f190
_08003148:	.4byte 0x02013000
_0800314c:	.4byte 0x80000040
_08003150:	.4byte 0x0807e130
_08003154:	.4byte 0x080d4390
_08003158:	.4byte 0x02013A00
_0800315c:	.4byte 0x080d4200
_08003160:	.4byte 0xFFFFF200
_08003164:	.4byte 0xFFFFEE00
_08003168:	.4byte 0x06012400
_0800316c:	.4byte 0x80000C00
	thumb_func_end sub_08002e98

	thumb_func_start sub_08003170
sub_08003170:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x1c
	add		r6, r0, #0x0
	mov		r7, #0x0
	mov		r0, #0x0
	mov		r8, r0
	mov		r1, #0x85
	lsl		r1, r1, #0x5
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08003194
	add		r0, r6, #0x0
	bl		sub_080036d8
_08003194:
	ldr		r1, [r6, #0xc]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08003214
	ldr		r0, [r6, #0x34]
	cmp		r0, #0x1
	bne		_080031f8
	ldr		r0, _08003204
	ldr		r4, _08003208
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _0800320c
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	bl		sub_08071b80
	ldr		r0, _08003210
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r2, #0x1
	mov		r8, r2
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x40
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_080031f8:
	ldr		r0, [r6, #0x34]
	cmp		r0, #0x1f
	bgt		_0800321e
	add		r0, #0x1
	b		_0800321c

.incbin "base.gba", 0x3202, 0x2

_08003204:	.4byte 0x080d3c5c
_08003208:	.4byte 0x02012800
_0800320c:	.4byte 0x080f44e8
_08003210:	.4byte 0x080d3c9c

_08003214:
	ldr		r0, [r6, #0x34]
	cmp		r0, #0x0
	ble		_0800321e
	sub		r0, #0x1
_0800321c:
	str		r0, [r6, #0x34]
_0800321e:
	ldr		r2, [r6, #0x34]
	cmp		r2, #0x0
	beq		_08003252
	mov		r0, #0x88
	lsl		r0, r0, #0x1
	mov		r1, #0xa
	str		r1, [sp, #0x0]
	mov		r1, #0x20
	mov		r3, #0x20
	bl		sub_0800e77c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0x90
	lsl		r1, r1, #0x10
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r0, _080032c0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08003252:
	ldr		r1, [r6, #0x4]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_080032d4
	ldr		r0, [r6, #0x38]
	cmp		r0, #0x1
	bne		_080032b4
	ldr		r0, _080032c4
	ldr		r4, _080032c8
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _080032cc
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _080032d0
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r2, #0x1
	mov		r8, r2
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x80
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_080032b4:
	ldr		r0, [r6, #0x38]
	cmp		r0, #0xf
	bgt		_080032de
	add		r0, #0x1
	b		_080032dc

.incbin "base.gba", 0x32BE, 0x2

_080032c0:	.4byte 0x080e3a24
_080032c4:	.4byte 0x080d33c0
_080032c8:	.4byte 0x02013400
_080032cc:	.4byte 0x080f4508
_080032d0:	.4byte 0x080d33f0

_080032d4:
	ldr		r0, [r6, #0x38]
	cmp		r0, #0x0
	ble		_080032de
	sub		r0, #0x1
_080032dc:
	str		r0, [r6, #0x38]
_080032de:
	ldr		r0, [r6, #0x38]
	cmp		r0, #0x0
	beq		_0800333e
	ldr		r1, _080033bc
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080032f0
	add		r0, #0x3f
_080032f0:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, _080033c0
	lsl		r1, r7, #0x2
	add		r1, r1, r3
	lsl		r0, r0, #0x5
	asr		r0, r0, #0xf
	sub		r0, #0x20
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _080033c4
	ldr		r1, [sp, #0xC]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0xC]
	lsl		r0, r7, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	ldr		r2, _080033c8
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0xC]
	ldr		r0, _080033cc
	add		r1, sp, #0xc
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	add		r7, #0x1
_0800333e:
	ldr		r0, _080033d0
	mov		r9, r0
	ldr		r1, [r6, #0x10]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_080033e8
	ldr		r0, [r6, #0x3c]
	cmp		r0, #0x1
	bne		_080033a4
	ldr		r0, _080033d4
	ldr		r4, _080033d8
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _080033dc
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _080033e0
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r2, #0x1
	mov		r8, r2
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_080033a4:
	ldr		r0, [r6, #0x3c]
	cmp		r0, #0xf
	bgt		_080033f2
	add		r0, #0x1
	str		r0, [r6, #0x3c]
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_080033f2
	ldr		r0, _080033e4
	mov		r9, r0
	b		_080033f2

.incbin "base.gba", 0x33BA, 0x2

_080033bc:	.4byte 0x08101068
_080033c0:	.4byte 0x080f44d4
_080033c4:	.4byte 0xffff0000
_080033c8:	.4byte 0x0000FFFF
_080033cc:	.4byte 0x080e3a34
_080033d0:	.4byte 0x080e3a3c
_080033d4:	.4byte 0x080d33c0
_080033d8:	.4byte 0x02013600
_080033dc:	.4byte 0x080f4528
_080033e0:	.4byte 0x080d33f0
_080033e4:	.4byte 0x080f44cc

_080033e8:
	ldr		r0, [r6, #0x3c]
	cmp		r0, #0x0
	ble		_080033f2
	sub		r0, #0x1
	str		r0, [r6, #0x3c]
_080033f2:
	ldr		r0, [r6, #0x3c]
	cmp		r0, #0x0
	beq		_08003454
	ldr		r1, _080034c4
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08003404
	add		r0, #0x3f
_08003404:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, _080034c8
	lsl		r1, r7, #0x2
	add		r1, r1, r3
	lsl		r0, r0, #0x5
	asr		r0, r0, #0xf
	sub		r0, #0x20
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _080034cc
	ldr		r1, [sp, #0x10]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x10]
	lsl		r0, r7, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	ldr		r2, _080034d0
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x10]
	add		r1, sp, #0x10
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	mov		r0, r9
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r7, #0x1
_08003454:
	ldr		r1, _080034d4
	mov		r9, r1
	ldr		r1, [r6, #0x14]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08003464
	b		_08003564
_08003464:
	ldr		r0, [r6, #0x40]
	cmp		r0, #0x1
	bne		_0800353a
	ldr		r0, [r6, #0x10]
	cmp		r0, #0x1
	bne		_080034e8
	ldr		r0, _080034d8
	ldr		r4, _080034dc
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _080034e0
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _080034e4
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	mov		r8, r0
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	b		_0800353a

_080034c4:	.4byte 0x08101068
_080034c8:	.4byte 0x080f44d4
_080034cc:	.4byte 0xffff0000
_080034d0:	.4byte 0x0000FFFF
_080034d4:	.4byte 0x080e3a44
_080034d8:	.4byte 0x080d33c0
_080034dc:	.4byte 0x02013800
_080034e0:	.4byte 0x080f4570
_080034e4:	.4byte 0x080d33f0

_080034e8:
	ldr		r0, _08003550
	ldr		r4, _08003554
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r5, _08003558
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		sub_08071b80
	ldr		r0, _0800355c
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r2, #0x1
	mov		r8, r2
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_0800353a:
	ldr		r0, [r6, #0x40]
	cmp		r0, #0xf
	bgt		_0800356e
	add		r0, #0x1
	str		r0, [r6, #0x40]
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0800356e
	ldr		r0, _08003560
	mov		r9, r0
	b		_0800356e

_08003550:	.4byte 0x080d33c0
_08003554:	.4byte 0x02013800
_08003558:	.4byte 0x080f4558
_0800355c:	.4byte 0x080d33f0
_08003560:	.4byte 0x080f44cc

_08003564:
	ldr		r0, [r6, #0x40]
	cmp		r0, #0x0
	ble		_0800356e
	sub		r0, #0x1
	str		r0, [r6, #0x40]
_0800356e:
	ldr		r0, [r6, #0x40]
	cmp		r0, #0x0
	beq		_080035d0
	ldr		r1, _08003628
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08003580
	add		r0, #0x3f
_08003580:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, _0800362c
	lsl		r1, r7, #0x2
	add		r1, r1, r3
	lsl		r0, r0, #0x5
	asr		r0, r0, #0xf
	sub		r0, #0x20
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _08003630
	ldr		r1, [sp, #0x14]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x14]
	lsl		r0, r7, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	ldr		r2, _08003634
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x14]
	add		r1, sp, #0x14
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	mov		r0, r9
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r7, #0x1
_080035d0:
	ldr		r1, [r6, #0x18]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08003648
	ldr		r0, [r6, #0x44]
	cmp		r0, #0x1
	bne		_0800361e
	mov		r4, #0x3
	cmp		r1, #0x2
	beq		_080035ee
	mov		r4, #0x2
	cmp		r1, #0x3
	beq		_080035ee
	add		r4, r1, #0x0
_080035ee:
	bl		sub_08029f34
	lsl		r1, r4, #0x7
	ldr		r2, _08003638
	add		r1, r1, r2
	ldr		r2, _0800363c
	ldr		r3, _08003640
	bl		sub_08029ee4
	mov		r1, #0x1
	mov		r8, r1
	ldr		r4, _08003644
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_0800361e:
	ldr		r0, [r6, #0x44]
	cmp		r0, #0xf
	bgt		_08003652
	add		r0, #0x1
	b		_08003650

_08003628:	.4byte 0x08101068
_0800362c:	.4byte 0x080f44d4
_08003630:	.4byte 0xffff0000
_08003634:	.4byte 0x0000FFFF
_08003638:	.4byte 0x0807f190
_0800363c:	.4byte 0x02013000
_08003640:	.4byte 0x80000040
_08003644:	.4byte 0x0807e130

_08003648:
	ldr		r0, [r6, #0x44]
	cmp		r0, #0x0
	ble		_08003652
	sub		r0, #0x1
_08003650:
	str		r0, [r6, #0x44]
_08003652:
	ldr		r0, [r6, #0x44]
	cmp		r0, #0x0
	beq		_080036b2
	ldr		r1, _080036c4
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08003664
	add		r0, #0x3f
_08003664:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, _080036c8
	lsl		r1, r7, #0x2
	add		r1, r1, r3
	lsl		r0, r0, #0x5
	asr		r0, r0, #0xf
	sub		r0, #0x20
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _080036cc
	ldr		r1, [sp, #0x18]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x18]
	lsl		r0, r7, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	ldr		r2, _080036d0
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x18]
	ldr		r0, _080036d4
	add		r1, sp, #0x18
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	add		r7, #0x1
_080036b2:
	str		r7, [r6, #0x48]
	mov		r0, r8
	add		sp, #0x1c
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080036c4:	.4byte 0x08101068
_080036c8:	.4byte 0x080f44d4
_080036cc:	.4byte 0xffff0000
_080036d0:	.4byte 0x0000FFFF
_080036d4:	.4byte 0x080e3a4c
	thumb_func_end sub_08003170

	thumb_func_start sub_080036d8
sub_080036d8:
	push	{ r4, r5, lr }
	sub		sp, #0x8
	add		r5, r0, #0x0
	ldr		r1, _080036fc
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	add		r1, #0x1
	str		r1, [r0, #0x0]
	ldr		r2, _08003700
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x4
	bhi		_080037cc
	lsl		r0, r0, #0x2
	ldr		r1, _08003704
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080036fc:	.4byte 0x00001094
_08003700:	.4byte 0x0000108C
_08003704:	.4byte 0x08003708
_08003708:	.4byte 0x0800371c

.incbin "base.gba", 0x370C, 0x10
	thumb_func_end sub_080036d8


.incbin "base.gba", 0x371C, 0xB0

_080037cc:

.incbin "base.gba", 0x37CC, 0x38
_08003804:	.4byte 0x0000108C
_08003808:	.4byte 0x080e5ec0
_0800380c:	.4byte 0x00001094

_08003810:

.incbin "base.gba", 0x3810, 0x2
_08003812:

.incbin "base.gba", 0x3812, 0x14
_08003826:

.incbin "base.gba", 0x3826, 0x14
_0800383a:

.incbin "base.gba", 0x383A, 0x1E
_08003858:

.incbin "base.gba", 0x3858, 0x16
_0800386e:

.incbin "base.gba", 0x386E, 0x1C
_0800388a:

.incbin "base.gba", 0x388A, 0xA
_08003894:	.4byte 0x080e5ec2
_08003898:	.4byte 0x0000108C
_0800389c:	.4byte 0x03003000
_080038a0:	.4byte 0x080f4580
_080038a4:	.4byte 0x00001098
_080038a8:	.4byte 0x080e3a64
	thumb_func_start sub_080038ac
sub_080038ac:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r0, _08003908
	ldr		r4, _0800390c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08003910
	ldr		r3, _08003914
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r1, #0x85
	lsl		r1, r1, #0x5
	add		r0, r5, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r2, _08003918
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080038e4
	cmp		r0, #0x4
	ble		_08003902
_080038e4:
	ldr		r2, _0800391c
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	sub		r2, #0x4
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	ldr		r0, _08003920
	add		r1, r5, r0
	mov		r0, #0x8e
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	add		r2, #0xa
	add		r1, r5, r2
	mov		r0, #0x94
	strh	r0, [r1, #0x0]
_08003902:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08003908:	.4byte 0x080e7a94
_0800390c:	.4byte 0x02016C00
_08003910:	.4byte 0x06016800
_08003914:	.4byte 0x80000200
_08003918:	.4byte 0x0000108C
_0800391c:	.4byte 0x00001094
_08003920:	.4byte 0x00001098
	thumb_func_end sub_080038ac

	thumb_func_start sub_08003924
sub_08003924:
	mov		r1, #0x0
	ldr		r2, _08003938
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x3
	ble		_08003932
	mov		r1, #0x1
_08003932:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x3936, 0x2

_08003938:	.4byte 0x0000108C
	thumb_func_end sub_08003924

	thumb_func_start sub_0800393c
sub_0800393c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	mov		r9, r0
	ldr		r0, _08003b60
	add		r0, r9
	mov		r10, r0
	ldr		r0, [r0, #0x0]
	ldr		r1, _08003b64
	add		r0, r0, r1
	mov		r2, r10
	str		r0, [r2, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08003964
	add		r0, #0x3f
_08003964:
	asr		r0, r0, #0x6
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r8, r6
	sub		r0, r6, r0
	ldr		r3, _08003b68
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r1, _08003b6c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r5, #0xd5
	mul		r0, r5
	cmp		r0, #0x0
	bge		_08003986
	ldr		r2, _08003b70
	add		r0, r0, r2
_08003986:
	asr		r0, r0, #0xf
	ldr		r4, _08003b74
	add		r4, r9
	ldrh	r1, [r4, #0x0]
	strh	r0, [r4, #0x0]
	mov		r6, r10
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x0
	bge		_0800399c
	add		r0, #0x3f
_0800399c:
	asr		r0, r0, #0x6
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r2, _08003b6c
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mul		r0, r5
	cmp		r0, #0x0
	bge		_080039b2
	ldr		r6, _08003b70
	add		r0, r0, r6
_080039b2:
	asr		r0, r0, #0xf
	ldr		r2, _08003b78
	add		r2, r9
	ldrh	r1, [r2, #0x0]
	strh	r0, [r2, #0x0]
	mov		r1, r10
	mov		r6, #0x0
	ldrsh	r0, [r1, r6]
	cmp		r0, #0x0
	bge		_080039c8
	add		r0, #0x3f
_080039c8:
	asr		r0, r0, #0x6
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r1, _08003b6c
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x3
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	sub		r0, r0, r1
	lsl		r1, r0, #0x2
	sub		r0, r0, r1
	cmp		r0, #0x0
	bge		_080039e8
	ldr		r6, _08003b70
	add		r0, r0, r6
_080039e8:
	asr		r0, r0, #0xf
	mov		r7, #0x91
	lsl		r7, r7, #0x5
	add		r7, r9
	ldrh	r1, [r7, #0x0]
	strh	r0, [r7, #0x0]
	mov		r1, r10
	mov		r6, #0x0
	ldrsh	r0, [r1, r6]
	cmp		r0, #0x0
	bge		_08003a00
	add		r0, #0x3f
_08003a00:
	asr		r0, r0, #0x6
	mov		r1, r8
	sub		r0, r1, r0
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r6, _08003b6c
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mul		r0, r5
	cmp		r0, #0x0
	bge		_08003a1a
	ldr		r1, _08003b70
	add		r0, r0, r1
_08003a1a:
	asr		r0, r0, #0xf
	ldr		r3, _08003b7c
	add		r3, r9
	ldrh	r1, [r3, #0x0]
	strh	r0, [r3, #0x0]
	ldrh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r6, _08003b80
	add		r6, r9
	mov		r8, r6
	ldr		r5, [r6, #0x0]
	add		r1, r0, #0x0
	mul		r1, r5
	ldrh	r0, [r2, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r6, _08003b84
	add		r6, r9
	ldr		r4, [r6, #0x0]
	mul		r0, r4
	add		r1, r1, r0
	mov		r2, #0xc0
	lsl		r2, r2, #0x7
	sub		r2, r2, r1
	ldrh	r0, [r7, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	add		r1, r0, #0x0
	mul		r1, r5
	ldrh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mul		r0, r4
	add		r1, r1, r0
	mov		r0, #0xe0
	lsl		r0, r0, #0x7
	sub		r0, r0, r1
	ldr		r1, _08003b88
	add		r1, r9
	ldrh	r3, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldr		r3, _08003b8c
	and		r2, r3
	asr		r2, r2, #0x10
	ldr		r1, _08003b90
	add		r1, r9
	ldrh	r4, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldr		r1, _08003b94
	add		r1, r9
	ldrh	r2, [r1, #0x0]
	strh	r0, [r1, #0x0]
	and		r0, r3
	asr		r0, r0, #0x10
	ldr		r1, _08003b98
	add		r1, r9
	ldrh	r2, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x0]
	lsl		r1, r1, #0x10
	mov		r2, r8
	ldrh	r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r0, _08003b9c
	mov		r6, r10
	ldr		r1, [r6, #0x0]
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0xd5
	mov		r3, #0xd5
	bl		sub_0802951c
	mov		r0, #0x0
	mov		r10, r0
	mov		r1, sp
	add		r1, #0xc
	str		r1, [sp, #0x14]
	ldr		r2, _08003b60
	add		r2, r9
	str		r2, [sp, #0x10]
_08003ac2:
	mov		r6, r10
	lsl		r0, r6, #0xd
	ldr		r1, [sp, #0x10]
	ldr		r1, [r1, #0x0]
	mov		r8, r1
	add		r0, r8
	lsl		r0, r0, #0x10
	asr		r4, r0, #0x10
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08003ada
	add		r0, #0x3f
_08003ada:
	asr		r5, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r5
	ldr		r6, _08003b68
	and		r0, r6
	lsl		r0, r0, #0x2
	ldr		r2, _08003b6c
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, _08003b80
	add		r0, r9
	ldr		r1, [r0, #0x0]
	mov		r7, #0x26
	add		r0, r2, #0x0
	mul		r0, r7
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r0, _08003ba0
	ldr		r3, [sp, #0xC]
	and		r3, r0
	orr		r3, r1
	str		r3, [sp, #0xC]
	add		r0, r5, #0x0
	and		r0, r6
	lsl		r0, r0, #0x2
	ldr		r6, _08003b6c
	add		r0, r0, r6
	ldr		r2, [r0, #0x0]
	ldr		r0, _08003b84
	add		r0, r9
	ldr		r1, [r0, #0x0]
	add		r0, r2, #0x0
	mul		r0, r7
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	ldr		r0, _08003ba4
	and		r3, r0
	orr		r3, r1
	str		r3, [sp, #0xC]
	mov		r1, r8
	neg		r0, r1
	str		r0, [sp, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	ldr		r0, _08003ba8
	ldr		r1, [sp, #0x14]
	mov		r2, #0xd5
	mov		r3, #0xd5
	bl		sub_0802951c
	mov		r2, #0x1
	add		r10, r2
	mov		r6, r10
	cmp		r6, #0x7
	ble		_08003ac2
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08003b60:	.4byte 0x000011F0
_08003b64:	.4byte 0xFFFFFF00
_08003b68:	.4byte 0x000003FF
_08003b6c:	.4byte 0x08101068
_08003b70:	.4byte 0x00007FFF
_08003b74:	.4byte 0x0000121C
_08003b78:	.4byte 0x0000121E
_08003b7c:	.4byte 0x00001222
_08003b80:	.4byte 0x000011E8
_08003b84:	.4byte 0x000011EC
_08003b88:	.4byte 0x00001224
_08003b8c:	.4byte 0x0FFF0000
_08003b90:	.4byte 0x00001226
_08003b94:	.4byte 0x00001228
_08003b98:	.4byte 0x0000122A
_08003b9c:	.4byte 0x080e39fc
_08003ba0:	.4byte 0xffff0000
_08003ba4:	.4byte 0x0000FFFF
_08003ba8:	.4byte 0x080e3a04
	thumb_func_end sub_0800393c

	thumb_func_start sub_08003bac
sub_08003bac:
	push	{ r4, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x14
	bls		_08003bbc
	b		_08003fbc
_08003bbc:
	lsl		r0, r0, #0x2
	ldr		r1, _08003bc8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3BC6, 0x2

_08003bc8:	.4byte 0x08003bcc
_08003bcc:	.4byte 0x08003fbc

.incbin "base.gba", 0x3BD0, 0x50
	thumb_func_end sub_08003bac


.incbin "base.gba", 0x3C20, 0x39C

_08003fbc:

.incbin "base.gba", 0x3FBC, 0x8
	thumb_func_start sub_08003fc4
sub_08003fc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r4, r2, #0x0
	mov		r10, r3
	ldr		r6, [r3, #0x0]
	ldrh	r5, [r6, #0x0]
	mov		r0, #0x0
	mov		r12, r0
	cmp		r12, r5
	bge		_08004080
_08003fe4:
	mov		r1, r12
	lsl		r0, r1, #0x2
	add		r0, r10
	ldr		r0, [r0, #0x4]
	str		r0, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r4, #0x4]
	sub		r0, r5, r1
	sub		r1, r0, #0x1
	ldrh	r2, [r6, #0x0]
	add		r3, r6, #0x2
	add		r7, r0, #0x0
	cmp		r2, r1
	bgt		_08004004
	sub		r1, r2, #0x1
_08004004:
	mov		r0, #0x18
	add		r0, r0, r4
	mov		r8, r0
	mov		r0, #0x1
	add		r0, r12
	mov		r9, r0
	cmp		r1, #0x0
	ble		_0800401e
	add		r0, r1, #0x0
_08004016:
	add		r3, #0x6
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_08004016
_0800401e:
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	ldr		r1, [sp, #0x4]
	add		r0, r1, r0
	strh	r0, [r4, #0x6]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r4, #0xa]
	add		r1, r0, #0x0
	strh	r1, [r4, #0x8]
	mov		r0, #0x0
	strh	r0, [r4, #0xc]
	mov		r0, #0x1
	strb	r0, [r4, #0xe]
	mov		r1, #0x0
	strh	r1, [r4, #0x10]
	add		r1, r6, #0x0
	sub		r0, r7, #0x1
	ldrh	r2, [r1, #0x0]
	add		r1, #0x2
	cmp		r2, r0
	bgt		_0800404c
	sub		r0, r2, #0x1
_0800404c:
	cmp		r0, #0x0
	ble		_08004058
_08004050:
	add		r1, #0x6
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_08004050
_08004058:
	ldrh	r0, [r1, #0x2]
	ldr		r2, _08004090
	add		r1, r2, #0x0
	and		r1, r0
	add		r0, r1, #0x0
	cmp		r0, #0xff
	bls		_0800406c
	add		r0, r1, #0x0
	eor		r0, r2
	neg		r0, r0
_0800406c:
	ldr		r1, [sp, #0x0]
	add		r0, r1, r0
	strh	r0, [r4, #0x12]
	mov		r0, r12
	strb	r0, [r4, #0x16]
	strb	r5, [r4, #0x17]
	mov		r4, r8
	mov		r12, r9
	cmp		r12, r5
	blt		_08003fe4
_08004080:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08004090:	.4byte 0x000001FF
	thumb_func_end sub_08003fc4

	thumb_func_start sub_08004094
sub_08004094:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	add		r4, r0, #0x0
	add		r7, r4, #0x0
	add		r7, #0x54
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_080040c8
	bl		sub_080277b4
	cmp		r0, #0x0
	beq		_080040c8
	ldr		r0, [r4, #0x4c]
	mov		r1, #0x2f
	and		r0, r1
	cmp		r0, #0xf
	bgt		_080040c8
	ldr		r0, _0800416c
	ldr		r1, _08004170
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_080040c8:
	ldr		r1, [r7, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r0, #0x18
	add		r4, r7, r0
	ldr		r5, [r4, #0x0]
	cmp		r5, #0x0
	beq		_0800410e
	mov		r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	beq		_0800410e
	mov		r1, #0xa
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	beq		_0800410e
	ldrh	r1, [r4, #0x6]
	lsl		r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr		r0, r1
	str		r0, [sp, #0x8]
	mov		r0, #0x8
	ldrsh	r2, [r4, r0]
	mov		r1, #0xa
	ldrsh	r3, [r4, r1]
	mov		r1, #0xc
	ldrsh	r0, [r4, r1]
	str		r0, [sp, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0x8
	bl		sub_0802951c
_0800410e:
	mov		r6, #0x0
	ldr		r0, [r7, #0x14]
	cmp		r6, r0
	bge		_08004164
	add		r4, r7, #0x0
	add		r4, #0x18
_0800411a:
	ldr		r0, [r7, #0x0]
	cmp		r6, r0
	beq		_0800415a
	ldr		r5, [r4, #0x0]
	cmp		r5, #0x0
	beq		_0800415a
	mov		r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	beq		_0800415a
	mov		r1, #0xa
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	beq		_0800415a
	ldrh	r1, [r4, #0x6]
	lsl		r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr		r0, r1
	str		r0, [sp, #0xC]
	mov		r0, #0x8
	ldrsh	r2, [r4, r0]
	mov		r1, #0xa
	ldrsh	r3, [r4, r1]
	mov		r1, #0xc
	ldrsh	r0, [r4, r1]
	str		r0, [sp, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0xc
	bl		sub_0802951c
_0800415a:
	add		r4, #0x18
	add		r6, #0x1
	ldr		r0, [r7, #0x14]
	cmp		r6, r0
	blt		_0800411a
_08004164:
	add		sp, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800416c:	.4byte 0x080e3a2c
_08004170:	.4byte 0x080f4764
	thumb_func_end sub_08004094

	thumb_func_start sub_08004174
sub_08004174:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	add		r6, #0x54
	ldr		r1, [r0, #0x8]
	cmp		r1, #0x1
	beq		_080041a8
	cmp		r1, #0x1
	bgt		_08004194
	cmp		r1, #0x0
	beq		_0800419e
	b		_080041d0
_08004194:
	cmp		r1, #0x2
	beq		_080041b8
	cmp		r1, #0x3
	beq		_080041c4
	b		_080041d0
_0800419e:
	str		r1, [r6, #0xc]
	ldr		r0, _080041a4
	b		_080041ca

_080041a4:	.4byte 0x080f45e0

_080041a8:
	mov		r0, #0x0
	str		r0, [r6, #0xc]
	ldr		r0, _080041b4
	str		r0, [r6, #0x10]
	str		r1, [r6, #0x14]
	b		_080041d0

_080041b4:	.4byte 0x080f45f4

_080041b8:
	mov		r0, #0x0
	str		r0, [r6, #0xc]
	ldr		r0, _080041c0
	b		_080041ca

_080041c0:	.4byte 0x080f4608

_080041c4:
	mov		r0, #0x0
	str		r0, [r6, #0xc]
	ldr		r0, _080042a8
_080041ca:
	str		r0, [r6, #0x10]
	mov		r0, #0x1
	str		r0, [r6, #0x14]
_080041d0:
	mov		r7, #0x0
	ldr		r0, [r6, #0x14]
	mov		r1, #0x84
	add		r1, r1, r6
	mov		r10, r1
	add		r2, r6, #0x0
	add		r2, #0x18
	str		r2, [sp, #0x0]
	cmp		r7, r0
	bge		_08004246
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r9, r0
	mov		r1, #0x0
	mov		r8, r1
_080041ee:
	ldr		r0, [r6, #0x10]
	add		r0, r8
	ldr		r5, [r0, #0x4]
	lsl		r1, r7, #0xb
	ldr		r0, _080042ac
	add		r4, r1, r0
	mov		r2, r9
	add		r1, r4, r2
	add		r0, r5, #0x0
	bl		sub_08071b80
	ldr		r0, _080042b0
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0xe0
	lsl		r0, r0, #0x3
	add		r1, r4, r0
	ldr		r0, _080042b4
	bl		sub_08071b80
	ldr		r0, [r6, #0x10]
	add		r0, r8
	ldr		r5, [r0, #0x8]
	mov		r0, #0x1
	bl		sub_08028130
	lsl		r1, r7, #0x5
	add		r1, r9
	add		r4, r0, r1
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	mov		r1, #0x14
	add		r8, r1
	add		r7, #0x1
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	blt		_080041ee
_08004246:
	mov		r0, #0x1
	mov		r2, r10
	str		r0, [r2, #0x0]
	mov		r7, #0x0
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	bge		_08004286
	mov		r5, #0x0
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r2, r6, #0x0
	add		r2, #0x18
	mov		r3, #0x0
_08004260:
	ldr		r1, [r6, #0x10]
	add		r1, r3, r1
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	ldrh	r0, [r1, #0xc]
	strh	r0, [r2, #0x4]
	ldr		r0, [r6, #0x10]
	add		r0, r3, r0
	ldrh	r0, [r0, #0xe]
	strh	r0, [r2, #0x6]
	strh	r4, [r2, #0xa]
	strh	r4, [r2, #0x8]
	strh	r5, [r2, #0xc]
	add		r2, #0x18
	add		r3, #0x14
	add		r7, #0x1
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	blt		_08004260
_08004286:
	mov		r1, #0x0
	str		r1, [r6, #0x0]
	mov		r0, #0xc0
	ldr		r2, [sp, #0x0]
	strh	r0, [r2, #0xa]
	strh	r0, [r2, #0x8]
	str		r1, [r6, #0x4]
	mov		r0, #0x4
	str		r0, [r6, #0x8]
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080042a8:	.4byte 0x080f461c
_080042ac:	.4byte 0x02014000
_080042b0:	.4byte 0x080d2848
_080042b4:	.4byte 0x080d28b8
	thumb_func_end sub_08004174

	thumb_func_start sub_080042b8
sub_080042b8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r10, r0
	mov		r6, r10
	add		r6, #0x54
	mov		r1, r10
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x1
	beq		_08004304
	cmp		r0, #0x1
	bgt		_080042dc
	cmp		r0, #0x0
	beq		_080042f4
	b		_08004310
_080042dc:
	cmp		r0, #0x3
	bgt		_08004310
	ldr		r0, _080042ec
	str		r0, [r6, #0xc]
	ldr		r0, _080042f0
	str		r0, [r6, #0x10]
	mov		r0, #0x2
	b		_0800430e

_080042ec:	.4byte 0x080f45c8
_080042f0:	.4byte 0x080f46a8

_080042f4:
	ldr		r0, _080042fc
	str		r0, [r6, #0xc]
	ldr		r0, _08004300
	b		_0800430a

_080042fc:	.4byte 0x080f45b0
_08004300:	.4byte 0x080f4630

_08004304:
	ldr		r0, _080043fc
	str		r0, [r6, #0xc]
	ldr		r0, _08004400
_0800430a:
	str		r0, [r6, #0x10]
	mov		r0, #0x3
_0800430e:
	str		r0, [r6, #0x14]
_08004310:
	mov		r7, #0x0
	ldr		r0, [r6, #0x14]
	add		r1, r6, #0x0
	add		r1, #0x84
	str		r1, [sp, #0x0]
	cmp		r7, r0
	bge		_08004380
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r9, r0
	mov		r1, #0x0
	mov		r8, r1
_08004328:
	ldr		r0, [r6, #0x10]
	add		r0, r8
	ldr		r5, [r0, #0x4]
	lsl		r1, r7, #0xb
	ldr		r0, _08004404
	add		r4, r1, r0
	mov		r0, r9
	add		r1, r4, r0
	add		r0, r5, #0x0
	bl		sub_08071b80
	ldr		r0, _08004408
	add		r1, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0xe0
	lsl		r0, r0, #0x3
	add		r1, r4, r0
	ldr		r0, _0800440c
	bl		sub_08071b80
	ldr		r0, [r6, #0x10]
	add		r0, r8
	ldr		r5, [r0, #0x8]
	mov		r0, #0x1
	bl		sub_08028130
	lsl		r1, r7, #0x5
	add		r1, r9
	add		r4, r0, r1
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	mov		r1, #0x14
	add		r8, r1
	add		r7, #0x1
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	blt		_08004328
_08004380:
	mov		r0, #0x1
	ldr		r1, [sp, #0x0]
	str		r0, [r1, #0x0]
	mov		r7, #0x0
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	bge		_080043c2
	mov		r5, #0x0
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r2, r6, #0x0
	add		r2, #0x18
	mov		r3, #0x0
_0800439a:
	ldr		r1, [r6, #0x10]
	add		r1, r3, r1
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	ldrh	r0, [r1, #0xc]
	add		r0, #0xf0
	strh	r0, [r2, #0x4]
	ldr		r0, [r6, #0x10]
	add		r0, r3, r0
	ldrh	r0, [r0, #0xe]
	strh	r0, [r2, #0x6]
	strh	r4, [r2, #0xa]
	strh	r4, [r2, #0x8]
	strh	r5, [r2, #0xc]
	add		r2, #0x18
	add		r3, #0x14
	add		r7, #0x1
	ldr		r0, [r6, #0x14]
	cmp		r7, r0
	blt		_0800439a
_080043c2:
	mov		r0, r10
	bl		sub_08002c68
	str		r0, [r6, #0x0]
	mov		r0, #0x1
	neg		r0, r0
	mov		r1, r10
	str		r0, [r1, #0x10]
	ldr		r1, [r6, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r0, r0, r6
	add		r0, #0x18
	mov		r2, #0x0
	mov		r1, #0xc0
	strh	r1, [r0, #0xa]
	strh	r1, [r0, #0x8]
	str		r2, [r6, #0x4]
	mov		r0, #0x4
	str		r0, [r6, #0x8]
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080043fc:	.4byte 0x080f45b0
_08004400:	.4byte 0x080f466c
_08004404:	.4byte 0x02014000
_08004408:	.4byte 0x080d2848
_0800440c:	.4byte 0x080d28b8
	thumb_func_end sub_080042b8

	thumb_func_start sub_08004410
sub_08004410:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r10, r0
	mov		r6, r10
	add		r6, #0x54
	mov		r1, r10
	ldr		r0, [r1, #0x10]
	cmp		r0, #0x5
	bhi		_08004478
	lsl		r0, r0, #0x2
	ldr		r1, _08004434
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08004434:	.4byte 0x08004438
_08004438:	.4byte 0x08004450

.incbin "base.gba", 0x443C, 0x14
	thumb_func_end sub_08004410


.incbin "base.gba", 0x4450, 0x28

_08004478:

.incbin "base.gba", 0x4478, 0x18
_08004490:

.incbin "base.gba", 0x4490, 0x58
_080044e8:

.incbin "base.gba", 0x44E8, 0x1A
_08004502:

.incbin "base.gba", 0x4502, 0x28
_0800452a:

.incbin "base.gba", 0x452A, 0x42
_0800456c:	.4byte 0x02014000
_08004570:	.4byte 0x080d2848
_08004574:	.4byte 0x080d28b8
	thumb_func_start sub_08004578
sub_08004578:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	mov		r8, r1
	mov		r5, #0xc0
	lsl		r5, r5, #0x13
	mov		r4, #0x7
_08004588:
	bl		sub_08029f34
	ldr		r1, _0800478c
	add		r2, r5, #0x0
	ldr		r3, _08004790
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r0, #0xc0
	lsl		r0, r0, #0x5
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08004588
	add		r0, r7, #0x0
	bl		sub_08002e98
	bl		sub_0802711c
	ldr		r4, _08004794
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	ldr		r4, _08004798
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800479c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _080047a0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldr		r0, _080047a4
	ldr		r4, _080047a8
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080047ac
	ldr		r3, _080047b0
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _080047b4
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _080047b8
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	mov		r5, #0x0
	ldr		r6, _080047bc
_0800464a:
	lsl		r4, r5, #0xd
	ldr		r0, _080047c0
	add		r4, r4, r0
	bl		sub_08029f34
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	ldr		r3, _080047c4
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0800464a
	ldr		r0, _080047c8
	ldr		r4, _080047cc
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _080047d0
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080047d4
	ldr		r3, _080047d8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _080047dc
	mov		r1, #0xd8
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080047e0
	ldr		r3, _080047e4
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	bl		sub_0802711c
	ldr		r4, _080047e8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _080047ec
	ldr		r3, _080047f0
	add		r0, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r4, _080047f4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r4, _080047f8
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x3
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r2, _080047fc
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	mov		r2, #0x0
	mov		r0, #0xb
	strh	r0, [r1, #0x0]
	ldr		r0, _08004800
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _08004804
	strh	r0, [r1, #0x0]
	ldr		r0, _08004808
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800480c
	strh	r0, [r1, #0x0]
	ldr		r0, _08004810
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _08004814
	strh	r0, [r1, #0x0]
	ldr		r0, _08004818
	add		r1, r7, r0
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0800481c
	add		r1, r7, r0
	mov		r0, #0x50
	str		r0, [r1, #0x0]
	ldr		r1, _08004820
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	add		r1, #0x8
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	mov		r2, r8
	cmp		r2, #0x0
	bne		_08004780
	ldr		r1, _08004824
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800482c
_08004780:
	ldr		r2, _08004828
	add		r0, r7, r2
	ldrh	r1, [r0, #0x0]
	mov		r1, #0xff
	b		_08004834

.align 2, 0

_0800478c:	.4byte 0x0203EEA8
_08004790:	.4byte 0x81000C00
_08004794:	.4byte 0x080c9d0c
_08004798:	.4byte 0x0809866c
_0800479c:	.4byte 0x080caf90
_080047a0:	.4byte 0x080cafd0
_080047a4:	.4byte 0x08098b0c
_080047a8:	.4byte 0x02008400
_080047ac:	.4byte 0x06008000
_080047b0:	.4byte 0x80000600
_080047b4:	.4byte 0x080c9e50
_080047b8:	.4byte 0x080ca498
_080047bc:	.4byte 0x0600C000
_080047c0:	.4byte 0x0200C400
_080047c4:	.4byte 0x80001000
_080047c8:	.4byte 0x080caff0
_080047cc:	.4byte 0x02010400
_080047d0:	.4byte 0x080d6e20
_080047d4:	.4byte 0x06010000
_080047d8:	.4byte 0x80001200
_080047dc:	.4byte 0x080cb448
_080047e0:	.4byte 0x06016C00
_080047e4:	.4byte 0x80000200
_080047e8:	.4byte 0x080caad4
_080047ec:	.4byte 0x06002000
_080047f0:	.4byte 0x80000400
_080047f4:	.4byte 0x080993b8
_080047f8:	.4byte 0x080994bc
_080047fc:	.4byte 0x000011FE
_08004800:	.4byte 0x00001204
_08004804:	.4byte 0x0000020B
_08004808:	.4byte 0x0000120A
_0800480c:	.4byte 0x0000448E
_08004810:	.4byte 0x000011FC
_08004814:	.4byte 0x00001741
_08004818:	.4byte 0x000011E8
_0800481c:	.4byte 0x000011EC
_08004820:	.4byte 0x000011F0
_08004824:	.4byte 0x00000D84
_08004828:	.4byte 0x00001216

_0800482c:
	ldr		r1, _0800484c
	add		r0, r7, r1
	ldrh	r1, [r0, #0x0]
	mov		r1, #0xbf
_08004834:
	strh	r1, [r0, #0x0]
	ldr		r2, _08004850
	add		r0, r7, r2
	ldrh	r1, [r0, #0x0]
	mov		r1, #0x10
	strh	r1, [r0, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0

_0800484c:	.4byte 0x00001216
_08004850:	.4byte 0x0000121A
	thumb_func_end sub_08004578

	non_word_aligned_thumb_func_start sub_08004854
sub_08004854:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x30
	mov		r8, r0
	add		r4, r1, #0x0
	mov		r7, r8
	add		r7, #0x54
	mov		r0, #0x0
	mov		r10, r0
	mov		r1, #0x0
	str		r1, [sp, #0x1c]
	mov		r2, #0x0
	str		r2, [sp, #0x20]
	mov		r3, r8
	str		r0, [r3, #0x54]
	str		r0, [r7, #0x4]
	str		r0, [r7, #0x8]
	str		r0, [r7, #0xc]
	str		r0, [r7, #0x10]
	str		r0, [r7, #0x14]
	str		r0, [r7, #0x78]
	str		r0, [r7, #0x7c]
	mov		r0, r8
	add		r0, #0xd4
	mov		r6, r10
	str		r6, [r0, #0x0]
	add		r0, #0x4
	str		r6, [r0, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _080048c8
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_08004578
	cmp		r4, #0x0
	beq		_080048cc
	mov		r0, #0x1
	str		r0, [r7, #0x78]
	str		r0, [r7, #0x7c]
	mov		r1, r8
	ldr		r0, [r1, #0x10]
	mov		r2, #0xa
	mov		r10, r2
	cmp		r0, #0x3
	bne		_080048e8
	mov		r3, #0x4
	mov		r10, r3
	b		_080048e8

_080048c8:	.4byte 0x06001000

_080048cc:
	mov		r4, r10
	str		r4, [r7, #0x78]
	str		r4, [r7, #0x7c]
	ldr		r0, _08004968 @ [pc, #0x94]
	add		r0, r8
	ldr		r1, [r0, #0x0]
	neg		r0, r1
	orr		r0, r1
	asr		r0, r0, #0x1f
	mov		r10, r0
	mov		r0, #0x4
	mov		r6, r10
	and		r6, r0
	mov		r10, r6
_080048e8:
	ldr		r2, _0800496c
	add		r2, r8
	ldr		r3, _08004970
	mov		r0, #0x88
	mov		r1, #0x20
	bl		sub_08003fc4
	add		r0, r7, #0x0
	add		r0, #0x84
	str		r0, [sp, #0x2c]
	mov		r1, sp
	add		r1, #0x10
	str		r1, [sp, #0x28]
	thumb_func_end sub_08004854

	non_word_aligned_thumb_func_start sub_08004902
sub_08004902:
	bl		sub_0802983c
	bl		sub_0802711c
	ldr		r1, _08004974
	add		r1, r8
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x4c]
	add		r0, #0x1
	str		r0, [r2, #0x4c]
	mov		r0, #0x0
	ldr		r3, [sp, #0x2c]
	str		r0, [r3, #0x0]
	ldr		r0, _08004978
	ldrh	r1, [r0, #0x0]
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	ldr		r0, _0800497c
	ldrh	r0, [r0, #0x0]
	ldr		r4, [sp, #0x28]
	strh	r0, [r4, #0x0]
	ldr		r0, [r2, #0x8]
	mov		r5, r10
	sub		r5, #0x2
	cmp		r0, #0x0
	ble		_08004956
	mov		r3, #0x0
	add		r2, r4, #0x0
	add		r2, #0x2
	mov		r1, sp
	add		r1, #0xa
	add		r4, r0, #0x0
_08004948:
	strh	r3, [r2, #0x0]
	strh	r3, [r1, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08004948
_08004956:
	mov		r0, r8
	ldr		r6, [r0, #0x50]
	cmp		r5, #0xe
	bhi		_08004a1e
	lsl		r0, r5, #0x2
	ldr		r1, _08004980
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08004968:	.4byte 0x00000D84
_0800496c:	.4byte 0x00000D88
_08004970:	.4byte 0x080f4744
_08004974:	.4byte 0x000011F4
_08004978:	.4byte 0x030052C8
_0800497c:	.4byte 0x03005220
_08004980:	.4byte 0x08004984
_08004984:	.4byte 0x080049c0

.incbin "base.gba", 0x4988, 0x4
_0800498c:	.4byte 0x08004A1E

.incbin "base.gba", 0x4990, 0x30
	thumb_func_end sub_08004902


.incbin "base.gba", 0x49C0, 0x5E

_08004a1e:

.incbin "base.gba", 0x4A1E, 0x24
_08004a42:

.incbin "base.gba", 0x4A42, 0x4
_08004a46:

.incbin "base.gba", 0x4A46, 0xA
_08004a50:

.incbin "base.gba", 0x4A50, 0xC
_08004a5c:	.4byte 0x08004a60
_08004a60:	.4byte 0x08004ac0

.incbin "base.gba", 0x4A64, 0x48
_08004aac:	.4byte 0x080052f2

.incbin "base.gba", 0x4AB0, 0x838

_080052e8:

.incbin "base.gba", 0x52E8, 0xA

_080052f2:

.incbin "base.gba", 0x52F2, 0x36
_08005328:	.4byte 0x00001216
_0800532c:	.4byte 0x0000121A

_08005330:

.incbin "base.gba", 0x5330, 0xE
_0800533e:

.incbin "base.gba", 0x533E, 0x8
_08005346:

.incbin "base.gba", 0x5346, 0x8
_0800534e:

.incbin "base.gba", 0x534E, 0xC
_0800535a:

.incbin "base.gba", 0x535A, 0x14
_0800536e:

.incbin "base.gba", 0x536E, 0x12
_08005380:	.4byte 0x000011E8

.incbin "base.gba", 0x5384, 0x90
	thumb_func_start sub_08005414
sub_08005414:
	mov		r0, r8
	bl		sub_080036d8
	mov		r0, r8
	bl		sub_08004094
	mov		r6, r10
	cmp		r6, #0x7
	beq		_08005432
	cmp		r6, #0x7
	blt		_0800545e
	cmp		r6, #0x17
	bgt		_0800545e
	cmp		r6, #0x15
	blt		_0800545e
_08005432:
	ldr		r0, [r7, #0x0]
	ldr		r2, [r7, #0x10]
	lsl		r1, r0, #0x2
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	mov		r0, #0x10
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x1
	blt		_0800545e
	cmp		r0, #0x2
	ble		_0800544e
	cmp		r0, #0x5
	bne		_0800545e
_0800544e:
	ldr		r0, _0800552c
	ldr		r1, _08005530
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0800545e:
	mov		r4, #0x85
	lsl		r4, r4, #0x5
	add		r4, r8
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	mov		r0, r8
	bl		sub_08003170
	cmp		r0, #0x0
	beq		_08005480
	bl		sub_08029f34
	ldr		r1, _08005534
	ldr		r2, _08005538
	ldr		r3, _0800553c
	bl		sub_08029ee4
_08005480:
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	ldr		r0, _08005540
	add		r0, r8
	str		r0, [sp, #0x24]
	mov		r5, #0x0
	add		r1, sp, #0x18
	mov		r9, r1
_08005490:
	add		r5, #0x1
	mov		r2, #0x7
	sub		r0, r2, r5
	lsl		r4, r0, #0x1
	add		r4, r4, r0
	lsl		r4, r4, #0x3
	ldr		r3, [sp, #0x24]
	add		r4, r3, r4
	add		r0, r4, #0x0
	bl		sub_08003bac
	ldrh	r1, [r4, #0x6]
	lsl		r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr		r0, r1
	str		r0, [sp, #0x18]
	ldr		r0, [r4, #0x0]
	mov		r6, #0x8
	ldrsh	r2, [r4, r6]
	mov		r1, #0xa
	ldrsh	r3, [r4, r1]
	mov		r6, #0xc
	ldrsh	r1, [r4, r6]
	str		r1, [sp, #0x0]
	mov		r6, #0x0
	str		r6, [sp, #0x4]
	mov		r1, r9
	bl		sub_0802951c
	cmp		r5, #0x7
	blt		_08005490
	mov		r0, r8
	bl		sub_0800393c
	mov		r0, r8
	bl		sub_08003924
	cmp		r0, #0x0
	beq		_08005554
	ldr		r0, _08005544
	ldr		r4, _08005548
	str		r0, [r4, #0x4]
	ldr		r0, _0800554c
	str		r0, [r4, #0x0]
	str		r6, [r4, #0x8]
	mov		r0, #0x1
	strb	r0, [r4, #0xe]
	bl		sub_0802a130
	mov		r0, #0x0
	bl		sub_08028130
	strh	r6, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800551e
	mov		r5, #0x2
_08005510:
	bl		sub_0802711c
	ldrb	r1, [r4, #0xc]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08005510
_0800551e:
	ldr		r1, _08005550
	add		r1, r8
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	b		_08005580

.incbin "base.gba", 0x552A, 0x2

_0800552c:	.4byte 0x080e3b1c
_08005530:	.4byte 0x080f4768
_08005534:	.4byte 0x02013000
_08005538:	.4byte 0x06012C00
_0800553c:	.4byte 0x80000800
_08005540:	.4byte 0x00000D88
_08005544:	.4byte 0x0802A1FD
_08005548:	.4byte 0x030052F0
_0800554c:	.4byte 0x0802A239
_08005550:	.4byte 0x0000109C

_08005554:
	ldr		r1, [sp, #0x2c]
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08005560
	bl		sub_08004902
_08005560:
	bl		sub_08029f34
	ldr		r1, _08005574
	ldr		r2, _08005578
	ldr		r3, _0800557c
	bl		sub_08029ee4
	bl		sub_08004902
	
	.2byte 	0x0

_08005574:
	and		r0, r0
	lsl		r1, r0, #0x8
_08005578:
	sub		r4, #0x0
	lsl		r1, r0, #0x18
_0800557c:
	asr 	r0, r0, #0x20
	strh	r0, [r0, #0x0]
_08005580:
	add		sp, #0x30
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08005414

	thumb_func_start sub_08005590
sub_08005590:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r9, r0
	mov		r10, r1
	mov		r4, r9
	add		r4, #0x54
	ldr		r0, _080055d8
	add		r0, r9
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	mov		r1, #0x9c
	lsl		r1, r1, #0x3
	add		r1, r9
	mov		r2, #0x0
	str		r2, [r1, #0x0]
	ldr		r2, _080055dc
	add		r2, r9
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	mov		r3, #0x9d
	lsl		r3, r3, #0x3
	add		r3, r9
	str		r0, [r3, #0x0]
	mov		r0, r10
	cmp		r0, #0x2
	beq		_080055f4
	cmp		r0, #0x2
	bgt		_080055e0
	cmp		r0, #0x1
	beq		_080055e8
	b		_0800560a

.incbin "base.gba", 0x55D6, 0x2

_080055d8:	.4byte 0x000004DC
_080055dc:	.4byte 0x000004E4

_080055e0:
	mov		r0, r10
	cmp		r0, #0x5
	beq		_08005600
	b		_0800560a
_080055e8:
	mov		r0, #0x2
	str		r0, [r1, #0x0]
	mov		r0, #0x7
	str		r0, [r2, #0x0]
	mov		r0, #0x9
	b		_08005608
_080055f4:
	mov		r0, #0x4
	str		r0, [r1, #0x0]
	mov		r0, #0x7
	str		r0, [r2, #0x0]
	mov		r0, #0x6
	b		_08005608
_08005600:
	mov		r0, #0x3
	str		r0, [r1, #0x0]
	mov		r0, #0x7
	str		r0, [r2, #0x0]
_08005608:
	str		r0, [r3, #0x0]
_0800560a:
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r4, #0x0
	add		r1, #0x88
	mov		r2, #0x80
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028130
	mov		r2, #0xa2
	lsl		r2, r2, #0x2
	add		r1, r4, r2
	mov		r2, #0x80
	bl		sub_08071b68
	mov		r7, #0x0
_0800562e:
	mov		r0, #0x0
	bl		sub_08028130
	lsl		r1, r7, #0x5
	add		r0, r0, r1
	cmp		r7, #0xc
	beq		_08005684
	mov		r6, #0x1f
	add		r5, r0, #0x0
	mov		r0, #0xf
	mov		r8, r0
_08005644:
	ldrh	r0, [r5, #0x0]
	mov		r1, #0x1f
	and		r1, r0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x15
	and		r3, r6
	lsr		r4, r0, #0x1a
	and		r4, r6
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	asr		r2, r0, #0x2
	and		r2, r6
	lsl		r0, r3, #0x1
	add		r0, r0, r3
	asr		r0, r0, #0x2
	and		r0, r6
	lsl		r1, r0, #0x5
	orr		r1, r2
	lsl		r0, r4, #0x1
	add		r0, r0, r4
	asr		r0, r0, #0x2
	and		r0, r6
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh	r1, [r5, #0x0]
	add		r5, #0x2
	mov		r1, #0x1
	neg		r1, r1
	add		r8, r1
	mov		r2, r8
	cmp		r2, #0x0
	bge		_08005644
_08005684:
	add		r7, #0x1
	cmp		r7, #0xf
	ble		_0800562e
	mov		r7, #0x0
_0800568c:
	mov		r0, #0x1
	bl		sub_08028130
	lsl		r1, r7, #0x5
	add		r0, r0, r1
	add		r1, r7, #0x1
	mov		r12, r1
	cmp		r7, #0x3
	beq		_080056e6
	mov		r6, #0x1f
	add		r5, r0, #0x0
	mov		r2, #0xf
	mov		r8, r2
_080056a6:
	ldrh	r0, [r5, #0x0]
	mov		r1, #0x1f
	and		r1, r0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x15
	and		r3, r6
	lsr		r4, r0, #0x1a
	and		r4, r6
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	asr		r2, r0, #0x2
	and		r2, r6
	lsl		r0, r3, #0x1
	add		r0, r0, r3
	asr		r0, r0, #0x2
	and		r0, r6
	lsl		r1, r0, #0x5
	orr		r1, r2
	lsl		r0, r4, #0x1
	add		r0, r0, r4
	asr		r0, r0, #0x2
	and		r0, r6
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh	r1, [r5, #0x0]
	add		r5, #0x2
	mov		r0, #0x1
	neg		r0, r0
	add		r8, r0
	mov		r1, r8
	cmp		r1, #0x0
	bge		_080056a6
_080056e6:
	mov		r7, r12
	cmp		r7, #0xf
	ble		_0800568c
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r2, _080057d0
	add		r2, r9
	ldrh	r3, [r2, #0x0]
	ldr		r1, _080057d4
	add		r0, r1, #0x0
	and		r0, r3
	mov		r3, #0x4
	ldrh	r4, [r2, #0x0]
	mov		r4, #0x0
	orr		r0, r3
	strh	r0, [r2, #0x0]
	ldr		r2, _080057d8
	add		r2, r9
	ldrh	r0, [r2, #0x0]
	and		r1, r0
	ldrh	r0, [r2, #0x0]
	orr		r1, r3
	strh	r1, [r2, #0x0]
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080057dc
	and		r0, r1
	ldrh	r1, [r2, #0x0]
	strh	r0, [r2, #0x0]
	bl		sub_08029f34
	ldr		r2, _080057e0
	mov		r8, r2
	ldr		r2, _080057e4
	ldr		r3, _080057e8
	mov		r1, r8
	bl		sub_08029ee4
	str		r4, [sp, #0x0]
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _080057ec
	mov		r0, sp
	bl		sub_08071b68
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r4, _080057f0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xfb
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x5
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _080057f4
	ldr		r5, _080057f8
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080057fc
	ldr		r6, _08005800
	add		r1, r5, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	ldr		r0, _08005804
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r4, r5, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08005808
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800580c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	add		r1, r5, #0x0
	mov		r2, r8
	add		r3, r6, #0x0
	bl		sub_08029ee4
	mov		r2, r10
	cmp		r2, #0x2
	beq		_0800584c
	cmp		r2, #0x2
	bgt		_08005810
	cmp		r2, #0x1
	beq		_08005818
	b		_08005886

_080057d0:	.4byte 0x000011FE
_080057d4:	.4byte 0x0000FFF3
_080057d8:	.4byte 0x00001204
_080057dc:	.4byte 0x0000FFFC
_080057e0:	.4byte 0x06008000
_080057e4:	.4byte 0x06004000
_080057e8:	.4byte 0x80000200
_080057ec:	.4byte 0x01000140
_080057f0:	.4byte 0x080c6a00
_080057f4:	.4byte 0x080c558c
_080057f8:	.4byte 0x0200C400
_080057fc:	.4byte 0x06005000
_08005800:	.4byte 0x80000C00
_08005804:	.4byte 0x080c5bc0
_08005808:	.4byte 0x06006800
_0800580c:	.4byte 0x080c6300

_08005810:
	mov		r0, r10
	cmp		r0, #0x5
	beq		_08005830
	b		_08005886
_08005818:
	mov		r1, #0x0
	cmp		r1, #0x0
	beq		_08005828
	ldr		r4, _08005824
	mov		r0, #0x1
	b		_08005836

_08005824:	.4byte 0x080cb664

_08005828:
	ldr		r4, _0800582c
	b		_08005832

_0800582c:	.4byte 0x080cb894

_08005830:
	ldr		r4, _08005848
_08005832:
	mov		r0, #0x1
	mov		r1, #0x0
_08005836:
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	b		_08005886

.incbin "base.gba", 0x5846, 0x2

_08005848:	.4byte 0x080cb784

_0800584c:
	bl		sub_08029f34
	ldr		r1, _0800589c
	ldr		r2, _080058a0
	ldr		r3, _080058a4
	bl		sub_08029ee4
	ldr		r4, _080058a8
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r4, _080058ac
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_08005886:
	mov		r0, #0x2
	bl		sub_080281fc
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800589c:	.4byte 0x080cb5e4
_080058a0:	.4byte 0x06009200
_080058a4:	.4byte 0x80000040
_080058a8:	.4byte 0x080cb9b0
_080058ac:	.4byte 0x0807e150
	thumb_func_end sub_08005590

	thumb_func_start sub_080058b0
sub_080058b0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, #0x54
	add		r0, r0, r6
	mov		r8, r0
	ldr		r0, _08005934
	add		r4, r6, r0
	ldr		r3, [r4, #0x0]
	mov		r1, #0x80
	ldr		r2, _08005938
	ldrh	r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080058d8
	add		r0, r3, #0x1
	str		r0, [r4, #0x0]
_080058d8:
	mov		r1, #0x40
	ldrh	r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080058e8
	ldr		r0, [r4, #0x0]
	sub		r0, #0x1
	str		r0, [r4, #0x0]
_080058e8:
	mov		r0, #0x9c
	lsl		r0, r0, #0x3
	add		r2, r6, r0
	ldr		r1, [r4, #0x0]
	ldr		r0, [r2, #0x0]
	cmp		r1, r0
	blt		_080058fa
	mov		r0, #0x0
	str		r0, [r4, #0x0]
_080058fa:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_08005906
	ldr		r0, [r2, #0x0]
	sub		r0, #0x1
	str		r0, [r4, #0x0]
_08005906:
	ldr		r0, [r4, #0x0]
	cmp		r0, r3
	beq		_08005912
	mov		r0, #0x8d
	bl		sub_0807073c
_08005912:
	mov		r0, #0x30
	ldr		r1, _0800593c
	ldrh	r1, [r1, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_08005920
	b		_08005a30
_08005920:
	mov		r0, #0x8e
	bl		sub_0807073c
	cmp		r5, #0x2
	beq		_0800598c
	cmp		r5, #0x2
	bgt		_08005940
	cmp		r5, #0x1
	beq		_08005946
	b		_08005a42

_08005934:	.4byte 0x000004DC
_08005938:	.4byte 0x030052C8
_0800593c:	.4byte 0x03005220

_08005940:
	cmp		r5, #0x5
	beq		_080059e8
	b		_08005a42
_08005946:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x1
	beq		_0800596c
	cmp		r0, #0x1
	bgt		_08005956
	cmp		r0, #0x0
	beq		_0800595c
	b		_08005a42
_08005956:
	cmp		r0, #0x2
	beq		_0800597c
	b		_08005a42
_0800595c:
	ldr		r0, _08005968
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x0]
	b		_08005a42

_08005968:	.4byte 0x03002FE0

_0800596c:
	ldr		r0, _08005978
	ldrh	r1, [r0, #0x2]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x2]
	b		_08005a42

_08005978:	.4byte 0x03002FE0

_0800597c:
	ldr		r0, _08005988
	ldrh	r1, [r0, #0x4]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x4]
	b		_08005a42

_08005988:	.4byte 0x03002FE0

_0800598c:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x1
	beq		_080059b8
	cmp		r0, #0x1
	bgt		_0800599c
	cmp		r0, #0x0
	beq		_080059a6
	b		_08005a42
_0800599c:
	cmp		r0, #0x2
	beq		_080059c8
	cmp		r0, #0x3
	beq		_080059d8
	b		_08005a42
_080059a6:
	ldr		r0, _080059b4
	ldrh	r1, [r0, #0x6]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x6]
	b		_08005a42

.incbin "base.gba", 0x59B2, 0x2

_080059b4:	.4byte 0x03002FE0

_080059b8:
	ldr		r0, _080059c4
	ldrh	r1, [r0, #0x8]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x8]
	b		_08005a42

_080059c4:	.4byte 0x03002FE0

_080059c8:
	ldr		r0, _080059d4
	ldrh	r1, [r0, #0xa]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0xa]
	b		_08005a42

_080059d4:	.4byte 0x03002FE0

_080059d8:
	ldr		r0, _080059e4
	ldrh	r1, [r0, #0xc]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0xc]
	b		_08005a42

_080059e4:	.4byte 0x03002FE0

_080059e8:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x1
	beq		_08005a10
	cmp		r0, #0x1
	bgt		_080059f8
	cmp		r0, #0x0
	beq		_080059fe
	b		_08005a42
_080059f8:
	cmp		r0, #0x2
	beq		_08005a20
	b		_08005a42
_080059fe:
	ldr		r0, _08005a0c
	ldrh	r1, [r0, #0xe]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0xe]
	b		_08005a42

.incbin "base.gba", 0x5A0A, 0x2

_08005a0c:	.4byte 0x03002FE0

_08005a10:
	ldr		r0, _08005a1c
	ldrh	r1, [r0, #0x10]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x10]
	b		_08005a42

_08005a1c:	.4byte 0x03002FE0

_08005a20:
	ldr		r0, _08005a2c
	ldrh	r1, [r0, #0x12]
	mov		r2, #0x1
	eor		r1, r2
	strh	r1, [r0, #0x12]
	b		_08005a42

_08005a2c:	.4byte 0x03002FE0

_08005a30:
	mov		r0, #0xb
	and		r1, r0
	cmp		r1, #0x0
	beq		_08005a42
	mov		r0, #0x8f
	bl		sub_0807073c
	mov		r0, #0x1
	b		_08005c70
_08005a42:
	ldr		r1, [r6, #0x4c]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	ldr		r1, _08005ab0
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08005a54
	add		r0, #0x3f
_08005a54:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x92
	lsl		r1, r1, #0x3
	add		r1, r8
	ldr		r2, [r1, #0x0]
	lsl		r2, r2, #0x3
	lsl		r0, r0, #0x1
	asr		r0, r0, #0xf
	add		r0, #0x2
	add		r2, r2, r0
	lsl		r2, r2, #0x10
	ldr		r0, _08005ab4
	add		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r1, r1, #0x3
	mov		r0, #0x91
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	add		r0, #0xa
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r2, r2, #0x10
	orr		r2, r1
	str		r2, [sp, #0x8]
	ldr		r0, _08005ab8
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	cmp		r5, #0x2
	beq		_08005b54
	cmp		r5, #0x2
	bgt		_08005abc
	cmp		r5, #0x1
	beq		_08005ac4
	b		_08005c6e

_08005ab0:	.4byte 0x08101068
_08005ab4:	.4byte 0x00000494
_08005ab8:	.4byte 0x080e3b64

_08005abc:
	cmp		r5, #0x5
	bne		_08005ac2
	b		_08005bf0
_08005ac2:
	b		_08005c6e
_08005ac4:
	mov		r4, #0x0
	ldr		r0, _08005aec
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08005ad2
	b		_08005c6e
_08005ad2:
	mov		r6, #0x92
	lsl		r6, r6, #0x3
	add		r6, r8
	ldr		r7, _08005af0
	add		r5, sp, #0x8
_08005adc:
	cmp		r4, #0x1
	beq		_08005b02
	cmp		r4, #0x1
	bgt		_08005af4
	cmp		r4, #0x0
	beq		_08005afa
	b		_08005b18

.incbin "base.gba", 0x5AEA, 0x2

_08005aec:	.4byte 0x0000048C
_08005af0:	.4byte 0x03002FE0

_08005af4:
	cmp		r4, #0x2
	beq		_08005b0a
	b		_08005b18
_08005afa:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x0]
	b		_08005b10
_08005b02:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x2]
	b		_08005b10
_08005b0a:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x4]
_08005b10:
	lsl		r0, r0, #0x5
	add		r0, #0x48
	add		r1, r1, r0
	strh	r1, [r5, #0x0]
_08005b18:
	ldr		r0, _08005b48
	add		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r1, r1, #0x3
	lsl		r0, r4, #0x4
	add		r0, #0x8
	add		r1, r1, r0
	mov		r0, #0x0
	strh	r1, [r5, #0x2]
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _08005b4c
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, #0x1
	ldr		r0, _08005b50
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08005adc
	b		_08005c6e

_08005b48:	.4byte 0x00000494
_08005b4c:	.4byte 0x080e3b48
_08005b50:	.4byte 0x0000048C

_08005b54:
	mov		r4, #0x0
	ldr		r0, _08005b7c
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08005b62
	b		_08005c6e
_08005b62:
	mov		r6, #0x92
	lsl		r6, r6, #0x3
	add		r6, r8
	ldr		r7, _08005b80
	add		r5, sp, #0x8
_08005b6c:
	cmp		r4, #0x1
	beq		_08005b96
	cmp		r4, #0x1
	bgt		_08005b84
	cmp		r4, #0x0
	beq		_08005b8e
	b		_08005bb4

.incbin "base.gba", 0x5B7A, 0x2

_08005b7c:	.4byte 0x0000048C
_08005b80:	.4byte 0x03002FE0

_08005b84:
	cmp		r4, #0x2
	beq		_08005b9e
	cmp		r4, #0x3
	beq		_08005ba6
	b		_08005bb4
_08005b8e:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x6]
	b		_08005bac
_08005b96:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x8]
	b		_08005bac
_08005b9e:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0xa]
	b		_08005bac
_08005ba6:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0xc]
_08005bac:
	lsl		r0, r0, #0x5
	add		r0, #0x48
	add		r1, r1, r0
	strh	r1, [r5, #0x0]
_08005bb4:
	ldr		r0, _08005be4
	add		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r1, r1, #0x3
	lsl		r0, r4, #0x4
	add		r0, #0x8
	add		r1, r1, r0
	mov		r0, #0x0
	strh	r1, [r5, #0x2]
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _08005be8
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, #0x1
	ldr		r0, _08005bec
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08005b6c
	b		_08005c6e

_08005be4:	.4byte 0x00000494
_08005be8:	.4byte 0x080e3b48
_08005bec:	.4byte 0x0000048C

_08005bf0:
	mov		r4, #0x0
	ldr		r0, _08005c14
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08005c6e
	mov		r6, #0x92
	lsl		r6, r6, #0x3
	add		r6, r8
	ldr		r7, _08005c18
	add		r5, sp, #0x8
_08005c06:
	cmp		r4, #0x1
	beq		_08005c2a
	cmp		r4, #0x1
	bgt		_08005c1c
	cmp		r4, #0x0
	beq		_08005c22
	b		_08005c40

_08005c14:	.4byte 0x0000048C
_08005c18:	.4byte 0x03002FE0

_08005c1c:
	cmp		r4, #0x2
	beq		_08005c32
	b		_08005c40
_08005c22:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0xe]
	b		_08005c38
_08005c2a:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x10]
	b		_08005c38
_08005c32:
	ldr		r1, [r6, #0x0]
	lsl		r1, r1, #0x3
	ldrh	r0, [r7, #0x12]
_08005c38:
	lsl		r0, r0, #0x5
	add		r0, #0x48
	add		r1, r1, r0
	strh	r1, [r5, #0x0]
_08005c40:
	ldr		r0, _08005c7c
	add		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r1, r1, #0x3
	lsl		r0, r4, #0x4
	add		r0, #0x8
	add		r1, r1, r0
	mov		r0, #0x0
	strh	r1, [r5, #0x2]
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _08005c80
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, #0x1
	ldr		r0, _08005c84
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08005c06
_08005c6e:
	mov		r0, #0x0
_08005c70:
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08005c7c:	.4byte 0x00000494
_08005c80:	.4byte 0x080e3b48
_08005c84:	.4byte 0x0000048C
	thumb_func_end sub_080058b0

	thumb_func_start sub_08005c88
sub_08005c88:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r0, _08005d50
	add		r2, r5, r0
	ldrh	r3, [r2, #0x0]
	ldr		r0, _08005d54
	add		r1, r0, #0x0
	and		r1, r3
	mov		r3, #0x8
	ldrh	r4, [r2, #0x0]
	mov		r4, #0x0
	mov		r6, #0x0
	orr		r1, r3
	strh	r1, [r2, #0x0]
	ldr		r1, _08005d58
	add		r2, r5, r1
	ldrh	r1, [r2, #0x0]
	and		r0, r1
	orr		r0, r3
	ldrh	r1, [r2, #0x0]
	orr		r0, r4
	strh	r0, [r2, #0x0]
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08005d5c
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	ldrh	r1, [r2, #0x0]
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r4, r5, #0x0
	add		r4, #0xdc
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x80
	bl		sub_08071b68
	mov		r0, #0xb7
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0x80
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08005d60
	ldr		r4, _08005d64
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08005d68
	ldr		r3, _08005d6c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	str		r6, [sp, #0x0]
	ldr		r1, _08005d70
	add		r4, r4, r1
	ldr		r2, _08005d74
	mov		r0, sp
	add		r1, r4, #0x0
	bl		sub_08071b68
	bl		sub_08029f34
	ldr		r2, _08005d78
	ldr		r3, _08005d7c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	ldr		r4, _08005d80
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x2
	bl		sub_080281fc
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x5D4E, 0x2

_08005d50:	.4byte 0x000011FE
_08005d54:	.4byte 0x0000FFF3
_08005d58:	.4byte 0x00001204
_08005d5c:	.4byte 0x0000FFFC
_08005d60:	.4byte 0x08098b0c
_08005d64:	.4byte 0x02008400
_08005d68:	.4byte 0x06008000
_08005d6c:	.4byte 0x80000600
_08005d70:	.4byte 0xFFFFC000
_08005d74:	.4byte 0x01000010
_08005d78:	.4byte 0x06004000
_08005d7c:	.4byte 0x80000020
_08005d80:	.4byte 0x080994bc
	thumb_func_end sub_08005c88

	thumb_func_start sub_08005d84
sub_08005d84:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	add		r6, r0, #0x0
	mov		r8, r1
	mov		r5, #0x0
	cmp		r5, r6
	bge		_08005dd0
_08005d96:
	add		r5, #0x1
	sub		r0, r6, r5
	lsl		r4, r0, #0x1
	add		r4, r4, r0
	lsl		r4, r4, #0x3
	add		r4, r8
	add		r0, r4, #0x0
	bl		sub_08003bac
	ldrh	r1, [r4, #0x6]
	lsl		r1, r1, #0x10
	ldrh	r0, [r4, #0x4]
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r0, [r4, #0x0]
	mov		r1, #0x8
	ldrsh	r2, [r4, r1]
	mov		r7, #0xa
	ldrsh	r3, [r4, r7]
	mov		r7, #0xc
	ldrsh	r1, [r4, r7]
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	bl		sub_0802951c
	cmp		r5, r6
	blt		_08005d96
_08005dd0:
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08005d84

	thumb_func_start sub_08005ddc
sub_08005ddc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	add		r4, r2, #0x0
	add		r0, r3, #0x0
	ldr		r1, [sp, #0x0+0x28]
	lsl		r0, r0, #0xf
	bl		sub_0807d80c
	ldr		r2, _08005ec8
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08005e04
	add		r0, #0x3f
_08005e04:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08005ecc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r9, r0
	mov		r0, #0x1f
	mov		r10, r0
	mov		r6, #0x1f
	mov		r8, r4
	mov		r12, r5
	str		r7, [sp, #0x4]
	mov		r7, #0xf
	str		r7, [sp, #0x0]
_08005e34:
	ldr		r0, [sp, #0x4]
	ldrh	r1, [r0, #0x0]
	add		r2, r1, #0x0
	and		r2, r6
	lsr		r4, r1, #0x5
	mov		r7, r10
	and		r4, r7
	lsr		r1, r1, #0xa
	mov		r0, r10
	and		r1, r0
	mov		r7, r12
	ldrh	r3, [r7, #0x0]
	add		r0, r3, #0x0
	and		r0, r6
	lsr		r5, r3, #0x5
	mov		r7, r10
	and		r5, r7
	lsr		r3, r3, #0xa
	and		r3, r7
	sub		r0, r0, r2
	mov		r7, r9
	mul		r7, r0
	add		r0, r7, #0x0
	asr		r0, r0, #0xf
	add		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	sub		r5, r5, r4
	mov		r0, r9
	mul		r0, r5
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r3, r3, r1
	mov		r0, r9
	mul		r0, r3
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	and		r2, r6
	and		r4, r6
	lsl		r4, r4, #0x5
	orr		r2, r4
	and		r1, r6
	lsl		r1, r1, #0xa
	orr		r2, r1
	mov		r0, r8
	strh	r2, [r0, #0x0]
	mov		r7, #0x2
	add		r8, r7
	mov		r0, #0x2
	add		r12, r0
	ldr		r7, [sp, #0x4]
	add		r7, #0x2
	str		r7, [sp, #0x4]
	ldr		r0, [sp, #0x0]
	sub		r0, #0x1
	str		r0, [sp, #0x0]
	cmp		r0, #0x0
	bge		_08005e34
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x5EC6, 0x2

_08005ec8:	.4byte 0x08101068
_08005ecc:	.4byte 0x000003FF
	thumb_func_end sub_08005ddc

	thumb_func_start sub_08005ed0
sub_08005ed0:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r7, r1, #0x0
	add		r6, r2, #0x0
	cmp		r3, #0x0
	beq		_08005ee8
	ldr		r0, _08005ef8
	mov		r1, #0x1
	neg		r1, r1
	str		r1, [r0, #0x0]
	ldr		r0, _08005efc
	str		r1, [r0, #0x0]
_08005ee8:
	cmp		r7, #0x8
	beq		_08005f84
	cmp		r6, #0x3f
	ble		_08005f00
	mov		r0, #0x7f
	sub		r4, r0, r6
	b		_08005f02

.incbin "base.gba", 0x5EF6, 0x2

_08005ef8:	.4byte 0x03000038
_08005efc:	.4byte 0x0300003C

_08005f00:
	add		r4, r6, #0x0
_08005f02:
	add		r0, r7, #0x0
	bl		sub_0800ebec
	add		r5, r0, #0x0
	ldr		r0, _08005f68
	add		r0, r4, r0
	ldrb	r1, [r0, #0x0]
	lsl		r0, r5, #0x1
	add		r0, r0, r5
	lsl		r0, r0, #0x2
	sub		r0, r0, r5
	lsl		r0, r0, #0xd
	lsl		r1, r1, #0xb
	ldr		r2, _08005f6c
	add		r1, r1, r2
	add		r4, r0, r1
	ldr		r1, _08005f70
	ldr		r0, [r1, #0x0]
	cmp		r0, r6
	beq		_08005f3a
	str		r6, [r1, #0x0]
	bl		sub_08029f34
	ldr		r2, _08005f74
	ldr		r3, _08005f78
	add		r1, r4, #0x0
	bl		sub_08029ee4
_08005f3a:
	ldr		r1, _08005f7c
	ldr		r0, [r1, #0x0]
	cmp		r0, r7
	beq		_08006004
	str		r7, [r1, #0x0]
	lsl		r4, r5, #0x9
	ldr		r0, _08005f80
	add		r4, r4, r0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	ldr		r2, [sp, #0x0+0x18]
	lsl		r0, r2, #0x5
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	b		_08006004

_08005f68:	.4byte 0x080f4964
_08005f6c:	.4byte 0x08345800
_08005f70:	.4byte 0x0300003C
_08005f74:	.4byte 0x02015400
_08005f78:	.4byte 0x80000400
_08005f7c:	.4byte 0x03000038
_08005f80:	.4byte 0x08344600

_08005f84:
	cmp		r6, #0x3f
	ble		_08005f8e
	mov		r0, #0x7f
	sub		r1, r0, r6
	b		_08005f90
_08005f8e:
	add		r1, r6, #0x0
_08005f90:
	ldr		r0, _08006034
	add		r0, r1, r0
	ldrb	r1, [r0, #0x0]
	ldr		r3, _08006038
	ldr		r2, [r3, #0x0]
	lsl		r0, r2, #0x1
	add		r0, r0, r2
	lsl		r0, r0, #0x2
	sub		r0, r0, r2
	lsl		r0, r0, #0xd
	lsl		r1, r1, #0xb
	ldr		r4, _0800603c
	add		r1, r1, r4
	add		r4, r0, r1
	ldr		r1, _08006040
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_08005fc4
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r0, r2, #0x1
	mov		r1, #0x7
	and		r0, r1
	str		r0, [r3, #0x0]
_08005fc4:
	ldr		r1, _08006044
	ldr		r0, [r1, #0x0]
	cmp		r0, r6
	beq		_08005fdc
	str		r6, [r1, #0x0]
	bl		sub_08029f34
	ldr		r2, _08006048
	ldr		r3, _0800604c
	add		r1, r4, #0x0
	bl		sub_08029ee4
_08005fdc:
	ldr		r1, _08006050
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	ldr		r2, [sp, #0x0+0x18]
	lsl		r0, r2, #0x5
	add		r1, r1, r0
	ldr		r2, _08006054
	mov		r0, sp
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_08006004:
	ldr		r4, _08006058
	ldr		r0, [sp, #0x0+0x18]
	lsl		r5, r0, #0xc
	ldr		r3, _0800605c
	add		r2, r4, #0x0
	mov		r1, #0x3
_08006010:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08006010
	mov		r0, #0x40
	and		r0, r6
	cmp		r0, #0x0
	beq		_08006060
	ldrh	r1, [r4, #0x4]
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r0, r2, #0x0
	orr		r0, r1
	b		_08006066

.incbin "base.gba", 0x6032, 0x2

_08006034:	.4byte 0x080f4964
_08006038:	.4byte 0x0203EEAC
_0800603c:	.4byte 0x08345800
_08006040:	.4byte 0x0203EEB0
_08006044:	.4byte 0x0300003C
_08006048:	.4byte 0x02015400
_0800604c:	.4byte 0x80000400
_08006050:	.4byte 0x03000038
_08006054:	.4byte 0x01000008
_08006058:	.4byte 0x03000030
_0800605c:	.4byte 0x080e3cb0

_08006060:
	ldrh	r1, [r4, #0x4]
	ldr		r0, _0800607c
	and		r0, r1
_08006066:
	strh	r0, [r4, #0x4]
	ldrh	r1, [r4, #0x6]
	ldr		r0, _08006080
	and		r0, r1
	orr		r0, r5
	strh	r0, [r4, #0x6]
	add		r0, r4, #0x0
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0800607c:	.4byte 0x0000EFFF
_08006080:	.4byte 0x00000FFF
	thumb_func_end sub_08005ed0

	thumb_func_start sub_08006084
sub_08006084:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	mov		r8, r0
	ldr		r7, _080060ac
	add		r7, r8
	mov		r0, #0xdf
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0xc
	bls		_080060a0
	b		_080063f6
_080060a0:
	lsl		r0, r0, #0x2
	ldr		r1, _080060b0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x60AA, 0x2

_080060ac:	.4byte 0x000004EC
_080060b0:	.4byte 0x080060b4
_080060b4:	.4byte 0x080063f6

.incbin "base.gba", 0x60B8, 0x30
	thumb_func_end sub_08006084


.incbin "base.gba", 0x60E8, 0x30E

_080063f6:

.incbin "base.gba", 0x63F6, 0x3E
_08006434:

.incbin "base.gba", 0x6434, 0x8
_0800643c:

.incbin "base.gba", 0x643C, 0x10
_0800644c:

.incbin "base.gba", 0x644C, 0x8
_08006454:

.incbin "base.gba", 0x6454, 0x44
_08006498:	.4byte 0x080f476c
_0800649c:	.4byte 0x080f49c0

_080064a0:

.incbin "base.gba", 0x64A0, 0x36
_080064d6:

.incbin "base.gba", 0x64D6, 0xA
_080064e0:

.incbin "base.gba", 0x64E0, 0xC
_080064ec:	.4byte 0x080f49c0
	thumb_func_start sub_080064f0
sub_080064f0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x10
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r7, r2, #0x0
	mov		r8, r3
	ldr		r0, [r4, #0xc]
	cmp		r0, r5
	bne		_0800652e
	lsl		r0, r7, #0x10
	lsl		r1, r3, #0x10
	lsr		r0, r0, #0x10
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r1, _0800658c
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r0, [r4, #0xc]
	cmp		r0, r5
	beq		_08006580
_0800652e:
	lsl		r6, r5, #0x2
	ldr		r1, _08006590
	add		r0, r4, r1
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	ble		_08006580
	ldr		r4, _08006594
	lsl		r2, r5, #0x1
	add		r0, r2, r4
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	add		r0, r0, r7
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r3, _08006598
	ldr		r1, [sp, #0xC]
	and		r1, r3
	orr		r1, r0
	str		r1, [sp, #0xC]
	add		r2, #0x1
	add		r2, r2, r4
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	add		r0, r8
	lsl		r0, r0, #0x10
	ldr		r2, _0800659c
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0xC]
	ldr		r0, _080065a0
	add		r0, r6, r0
	ldr		r0, [r0, #0x0]
	add		r1, sp, #0xc
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_08006580:
	add		sp, #0x10
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800658c:	.4byte 0x080f49c8
_08006590:	.4byte 0x000004FC
_08006594:	.4byte 0x080f49e8
_08006598:	.4byte 0xffff0000
_0800659c:	.4byte 0x0000FFFF
_080065a0:	.4byte 0x080f49d8
	thumb_func_end sub_080064f0

	thumb_func_start sub_080065a4
sub_080065a4:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	add		r7, r0, #0x0
	ldr		r0, _080065c8
	add		r5, r7, r0
	mov		r1, #0xe1
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x7
	bls		_080065bc
	b		_080066e2
_080065bc:
	lsl		r0, r0, #0x2
	ldr		r1, _080065cc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x65C6, 0x2

_080065c8:	.4byte 0x000004EC
_080065cc:	.4byte 0x080065d0
_080065d0:	.4byte 0x080066e2

.incbin "base.gba", 0x65D4, 0x1C
	thumb_func_end sub_080065a4


.incbin "base.gba", 0x65F0, 0xF2

_080066e2:

.incbin "base.gba", 0x66E2, 0x5E
_08006740:

.incbin "base.gba", 0x6740, 0x8
_08006748:	.4byte 0x00300048
_0800674c:	.4byte 0x080e3bf8
_08006750:	.4byte 0x0073003C
_08006754:	.4byte 0x080f476c
_08006758:	.4byte 0x080f4a14
	thumb_func_start sub_0800675c
sub_0800675c:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	ldr		r0, _08006788
	add		r4, r4, r0
	mov		r0, #0x1
	bl		sub_08028130
	add		r6, r0, #0x0
	add		r6, #0x8
	ldrh	r1, [r4, #0x10]
	lsl		r0, r1, #0x10
	asr		r7, r0, #0x12
	mov		r0, #0x1f
	and		r7, r0
	mov		r0, #0x1f
	add		r5, r0, #0x0
	and		r5, r1
	cmp		r5, #0xf
	bgt		_0800678c
	lsl		r0, r5, #0x1
	b		_08006790

_08006788:	.4byte 0x0000056C

_0800678c:
	sub		r0, r0, r5
	lsl		r0, r0, #0x1
_08006790:
	add		r5, r0, #0x0
	mov		r1, sp
	add		r0, #0xf
	mov		r2, #0x1f
	and		r0, r2
	lsl		r0, r0, #0x5
	mov		r3, #0xf8
	lsl		r3, r3, #0x7
	add		r4, r3, #0x0
	orr		r0, r4
	strh	r0, [r1, #0x0]
	mov		r3, sp
	mov		r1, #0x37
	sub		r1, r1, r5
	and		r1, r2
	lsl		r1, r1, #0x5
	add		r0, r1, #0x0
	orr		r0, r2
	strh		r0, [r3, #0x2]
	add		r0, r5, #0x0
	and		r0, r2
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh		r1, [r3, #0x4]
	sub		r1, r2, r5
	and		r1, r2
	add		r0, r1, #0x0
	orr		r0, r4
	strh		r0, [r3, #0x6]
	mov		r2, sp
	mov		r3, #0xb8
	lsl		r3, r3, #0x2
	add		r0, r3, #0x0
	orr		r1, r0
	strh		r1, [r2, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	strh	r0, [r6, #0x2]
	cmp		r7, #0x7
	bgt		_080067ec
	mov		r0, sp
	ldrh		r0, [r0, #0x8]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x2]
	b		_08006816
_080067ec:
	cmp		r7, #0xf
	bgt		_080067fc
	mov		r0, sp
	ldrh		r0, [r0, #0x2]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x4]
	b		_08006816
_080067fc:
	cmp		r7, #0x17
	bgt		_0800680c
	mov		r0, sp
	ldrh		r0, [r0, #0x4]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x6]
	b		_08006816
_0800680c:
	mov		r0, sp
	ldrh		r0, [r0, #0x6]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x8]
_08006816:
	strh	r0, [r6, #0x4]
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6826, 0x2
	thumb_func_end sub_0800675c

	thumb_func_start sub_08006828
sub_08006828:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x8
	add		r5, r0, #0x0
	ldr		r0, _08006848
	add		r6, r5, r0
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x1
	beq		_0800684c
	cmp		r0, #0x1
	bgt		_0800683e
	b		_080069f8
_0800683e:
	cmp		r0, #0x2
	bne		_08006844
	b		_08006940
_08006844:
	b		_080069f8

.incbin "base.gba", 0x6846, 0x2

_08006848:	.4byte 0x0000071C

_0800684c:
	mov		r2, #0xe5
	lsl		r2, r2, #0x3
	add		r1, r5, r2
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	mov		r0, #0xdb
	lsl		r0, r0, #0x3
	add		r3, r5, r0
	ldr		r0, [r3, #0x0]
	sub		r0, #0x3
	ldr		r1, _0800692c
	mov		r12, r1
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800686e
	add		r0, #0x3f
_0800686e:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r1, [r0, #0x0]
	ldr		r2, _08006930
	add		r0, r5, r2
	lsl		r1, r1, #0x2
	asr		r1, r1, #0xf
	ldrh	r0, [r0, #0x0]
	sub		r0, r0, r1
	add		r2, #0x3c
	add		r1, r5, r2
	strh	r0, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	sub		r0, #0x3
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08006898
	add		r0, #0x3f
_08006898:
	asr		r0, r0, #0x6
	mov		r7, #0x80
	lsl		r7, r7, #0x1
	sub		r0, r7, r0
	ldr		r4, _08006934
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	ldr		r2, _08006938
	add		r1, r5, r2
	lsl		r0, r0, #0x2
	asr		r0, r0, #0xf
	sub		r0, #0x10
	ldrh	r1, [r1, #0x0]
	sub		r1, r1, r0
	add		r2, #0x3c
	add		r0, r5, r2
	strh	r1, [r0, #0x0]
	ldr		r0, [r3, #0x0]
	sub		r0, #0x3
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080068cc
	add		r0, #0x3f
_080068cc:
	asr		r0, r0, #0x6
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r1, [r0, #0x0]
	ldr		r0, _0800693c
	add		r2, r5, r0
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	asr		r0, r0, #0xf
	str		r0, [r2, #0x0]
	ldr		r0, [r3, #0x0]
	sub		r0, #0x3
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080068f2
	add		r0, #0x3f
_080068f2:
	asr		r0, r0, #0x6
	sub		r0, r7, r0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r1, [r0, #0x0]
	mov		r2, #0xe3
	lsl		r2, r2, #0x3
	add		r4, r5, r2
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	asr		r0, r0, #0xf
	str		r0, [r4, #0x0]
	mov		r1, #0x6
	bl		sub_0807d80c
	str		r0, [r4, #0x0]
	mov		r1, #0xe4
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	str		r7, [r0, #0x0]
	mov		r0, #0x2
	str		r0, [r6, #0x0]
	mov		r0, #0x7b
	bl		sub_0807073c
	b		_080069f8

.incbin "base.gba", 0x692A, 0x2

_0800692c:	.4byte 0x08101068
_08006930:	.4byte 0x000006D4
_08006934:	.4byte 0x000003FF
_08006938:	.4byte 0x000006D6
_0800693c:	.4byte 0x00000714

_08006940:
	mov		r2, #0xe5
	lsl		r2, r2, #0x3
	add		r1, r5, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x10
	bgt		_080069f4
	mov		r0, #0xe2
	lsl		r0, r0, #0x3
	add		r6, r5, r0
	ldr		r1, _080069b8
	add		r3, r5, r1
	ldr		r1, [r3, #0x0]
	ldrh	r0, [r6, #0x0]
	sub		r0, r0, r1
	mov		r2, #0x0
	mov		r12, r2
	strh	r0, [r6, #0x0]
	ldr		r0, _080069bc
	add		r2, r5, r0
	mov		r1, #0xe3
	lsl		r1, r1, #0x3
	add		r7, r5, r1
	ldr		r1, [r7, #0x0]
	ldrh	r0, [r2, #0x0]
	sub		r0, r0, r1
	strh	r0, [r2, #0x0]
	mov		r2, #0xe4
	lsl		r2, r2, #0x3
	add		r4, r5, r2
	ldr		r2, [r4, #0x0]
	ldr		r0, [r3, #0x0]
	sub		r1, r2, #0x4
	cmp		r0, #0x0
	ble		_0800698a
	add		r1, r2, #0x4
_0800698a:
	str		r1, [r4, #0x0]
	ldr		r0, _080069c0
	add		r2, r5, r0
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x5
	bls		_0800699e
	mov		r1, r12
	str		r1, [r2, #0x0]
_0800699e:
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	ble		_080069cc
	ldr		r1, _080069c4
	ldr		r0, [r2, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, [r4, #0x0]
	mov		r2, r12
	str		r2, [sp, #0x0]
	ldr		r1, _080069c8
	b		_080069de

_080069b8:	.4byte 0x00000714
_080069bc:	.4byte 0x00000712
_080069c0:	.4byte 0x00000724
_080069c4:	.4byte 0x080f4a64
_080069c8:	.4byte 0x080f4a5c

_080069cc:
	ldr		r1, _080069ec
	ldr		r0, [r2, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r3, [r4, #0x0]
	mov		r1, r12
	str		r1, [sp, #0x0]
	ldr		r1, _080069f0
_080069de:
	str		r1, [sp, #0x4]
	add		r1, r6, #0x0
	add		r2, r3, #0x0
	bl		sub_0802951c
	b		_080069f8

.incbin "base.gba", 0x69EA, 0x2

_080069ec:	.4byte 0x080f4a64
_080069f0:	.4byte 0x080f4a54

_080069f4:
	mov		r0, #0x0
	str		r0, [r6, #0x0]
_080069f8:
	add		sp, #0x8
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08006828

	thumb_func_start sub_08006a00
sub_08006a00:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r1, _08006a34
	add		r1, r1, r0
	mov		r9, r1
	mov		r6, #0x0
_08006a10:
	lsl		r1, r6, #0x1
	add		r0, r1, r6
	lsl		r0, r0, #0x3
	add		r0, #0x20
	mov		r2, r9
	add		r5, r2, r0
	mov		r0, #0xe
	ldrsb	r0, [r5, r0]
	add		r3, r1, #0x0
	add		r7, r6, #0x1
	cmp		r0, #0xa
	bls		_08006a2a
	b		_08006c20
_08006a2a:
	lsl		r0, r0, #0x2
	ldr		r1, _08006a38
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08006a34:	.4byte 0x000004EC
_08006a38:	.4byte 0x08006a3c
_08006a3c:	.4byte 0x08006c20

.incbin "base.gba", 0x6A40, 0x28
	thumb_func_end sub_08006a00


.incbin "base.gba", 0x6A68, 0x1B8

_08006c20:

.incbin "base.gba", 0x6C20, 0x8
_08006c28:

.incbin "base.gba", 0x6C28, 0xC
	thumb_func_start sub_08006c34
sub_08006c34:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	ldr		r0, _08006d28
	add		r7, r4, r0
	ldr		r1, [r4, #0xc]
	lsl		r2, r1, #0x2
	ldr		r3, _08006d2c
	add		r0, r4, r3
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	sub		r0, #0x2
	cmp		r0, #0x5
	bhi		_08006ca0
	ldr		r5, _08006d30
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r6, #0x0
	ldrsh	r2, [r0, r6]
	mov		r6, #0x2
	ldrsh	r3, [r0, r6]
	add		r0, r4, #0x0
	bl		sub_080064f0
	mov		r6, #0x0
	ldr		r0, [r4, #0x8]
	cmp		r6, r0
	bgt		_08006ca0
	mov		r8, r5
	add		r5, r7, #0x0
_08006c7a:
	ldr		r0, [r4, #0xc]
	cmp		r6, r0
	beq		_08006c96
	ldr		r0, [r5, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r8
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	mov		r1, #0x2
	ldrsh	r3, [r0, r1]
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080064f0
_08006c96:
	add		r5, #0x4
	add		r6, #0x1
	ldr		r0, [r4, #0x8]
	cmp		r6, r0
	ble		_08006c7a
_08006ca0:
	mov		r6, #0x0
	add		r3, sp, #0x8
	mov		r8, r3
	ldr		r0, _08006d34
	mov		r9, r0
_08006caa:
	mov		r1, #0x8
	sub		r1, r1, r6
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r0, #0x20
	add		r4, r7, r0
	ldr		r5, [r4, #0x0]
	cmp		r5, #0x0
	beq		_08006d12
	mov		r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	beq		_08006d12
	mov		r3, #0xa
	ldrsh	r0, [r4, r3]
	cmp		r0, #0x0
	beq		_08006d12
	ldrh	r0, [r4, #0x6]
	lsl		r0, r0, #0x10
	ldrh	r1, [r4, #0x4]
	orr		r1, r0
	str		r1, [sp, #0x8]
	mov		r0, r8
	mov		r3, #0x0
	ldrsh	r2, [r0, r3]
	mov		r3, r9
	asr		r0, r3, #0x10
	cmp		r2, r0
	blt		_08006d12
	asr		r1, r1, #0x10
	cmp		r1, r0
	blt		_08006d12
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r2, r0
	bgt		_08006d12
	cmp		r1, #0xc0
	bgt		_08006d12
	mov		r0, #0x8
	ldrsh	r2, [r4, r0]
	mov		r1, #0xa
	ldrsh	r3, [r4, r1]
	mov		r1, #0xc
	ldrsh	r0, [r4, r1]
	str		r0, [sp, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0x8
	bl		sub_0802951c
_08006d12:
	add		r6, #0x1
	cmp		r6, #0x8
	ble		_08006caa
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6D26, 0x2

_08006d28:	.4byte 0x000004EC
_08006d2c:	.4byte 0x000004FC
_08006d30:	.4byte 0x080f4894
_08006d34:	.4byte 0xFFE80000
	thumb_func_end sub_08006c34

	thumb_func_start sub_08006d38
sub_08006d38:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	ldr		r1, _08006dd0
	add		r1, r1, r0
	mov		r9, r1
	ldr		r1, _08006dd4
	mov		r2, #0x0
	mov		r10, r2
	mov		r7, #0x0
	ldr		r3, _08006dd8
	add		r6, r0, r3
	add		r2, r1, #0x0
	add		r2, #0xc
	sub		r3, #0xd8
	add		r5, r0, r3
	mov		r8, r1
	mov		r3, #0x8
_08006d62:
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	str		r0, [r5, #0x0]
	ldrh	r0, [r2, #0x0]
	strh	r0, [r5, #0x4]
	ldrh	r0, [r2, #0x2]
	strh	r0, [r5, #0x6]
	strh	r7, [r5, #0xa]
	strh	r7, [r5, #0x8]
	strh	r7, [r5, #0xc]
	mov		r0, #0x1
	strb	r0, [r5, #0xe]
	strh	r7, [r5, #0x10]
	mov		r4, #0x4
	ldrsb	r4, [r2, r4]
	strb	r4, [r6, #0x0]
	mov		r0, r10
	strb	r0, [r6, #0x1]
	strh	r7, [r6, #0x2]
	strh	r7, [r6, #0x6]
	mov		r0, #0x1
	str		r2, [sp, #0x0]
	str		r3, [sp, #0x4]
	bl		sub_08028130
	add		r1, r4, #0x7
	lsl		r1, r1, #0x5
	add		r0, r0, r1
	str		r0, [r6, #0xc]
	lsl		r4, r4, #0x9
	ldr		r0, _08006ddc
	add		r4, r4, r0
	str		r4, [r6, #0x10]
	add		r6, #0x14
	ldr		r2, [sp, #0x0]
	add		r2, #0x14
	add		r5, #0x18
	mov		r1, #0x14
	add		r8, r1
	ldr		r3, [sp, #0x4]
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08006d62
	mov		r1, r9
	add		r1, #0x8e
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08006dd0:	.4byte 0x000004EC
_08006dd4:	.4byte 0x080f476c
_08006dd8:	.4byte 0x000005E4
_08006ddc:	.4byte 0x02014400
	thumb_func_end sub_08006d38

	thumb_func_start sub_08006de0
sub_08006de0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	mov		r8, r1
	cmp		r1, #0x0
	beq		_08006e22
	mov		r5, #0xc0
	lsl		r5, r5, #0x13
	mov		r4, #0x7
_08006df4:
	bl		sub_08029f34
	ldr		r1, _0800704c
	add		r2, r5, #0x0
	ldr		r3, _08007050
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r0, #0xc0
	lsl		r0, r0, #0x5
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08006df4
	mov		r1, r8
	cmp		r1, #0x0
	beq		_08006e22
	add		r0, r7, #0x0
	bl		sub_08002e98
	bl		sub_0802711c
_08006e22:
	ldr		r4, _08007054
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	ldr		r4, _08007058
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800705c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	mov		r2, r8
	cmp		r2, #0x0
	beq		_08006f04
	ldr		r0, _08007060
	ldr		r4, _08007064
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08007068
	ldr		r3, _0800706c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08007070
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _08007074
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	mov		r5, #0x0
	ldr		r6, _08007078
_08006eb4:
	lsl		r4, r5, #0xd
	ldr		r0, _0800707c
	add		r4, r4, r0
	bl		sub_08029f34
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	ldr		r3, _08007080
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_08006eb4
	ldr		r0, _08007084
	ldr		r4, _08007088
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _0800708c
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08007090
	ldr		r3, _08007094
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
_08006f04:
	ldr		r0, _08007098
	ldr		r4, _0800709c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080070a0
	ldr		r3, _080070a4
	add		r1, r4, #0x0
	bl		sub_08029ee4
	ldr		r0, _080070a8
	mov		r1, #0xa0
	lsl		r1, r1, #0x5
	add		r5, r4, r1
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080070ac
	ldr		r3, _080070b0
	add		r1, r5, #0x0
	bl		sub_08029ee4
	ldr		r0, _080070b4
	mov		r2, #0xc0
	lsl		r2, r2, #0x5
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080070b8
	ldr		r3, _080070bc
	add		r1, r4, #0x0
	bl		sub_08029ee4
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	mov		r0, r8
	cmp		r0, #0x0
	beq		_08006fce
	ldr		r4, _080070c0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _080070c4
	ldr		r3, _080070c8
	add		r0, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r4, _080070cc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r4, _080070d0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x3
	bl		sub_080281fc
	bl		sub_0802711c
_08006fce:
	ldr		r2, _080070d4
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	mov		r2, #0x0
	mov		r0, #0xb
	strh	r0, [r1, #0x0]
	ldr		r0, _080070d8
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _080070dc
	strh	r0, [r1, #0x0]
	ldr		r0, _080070e0
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _080070e4
	strh	r0, [r1, #0x0]
	ldr		r0, _080070e8
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _080070ec
	strh	r0, [r1, #0x0]
	ldr		r1, _080070f0
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	mov		r0, r8
	cmp		r0, #0x0
	beq		_08007030
	ldr		r0, _080070f4
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	mov		r0, #0xff
	strh	r0, [r1, #0x0]
	ldr		r0, _080070f8
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x10
	strh	r0, [r1, #0x0]
	ldr		r0, _080070fc
	add		r1, r7, r0
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _08007100
	add		r1, r7, r0
	mov		r0, #0x50
	str		r0, [r1, #0x0]
	ldr		r1, _08007104
	add		r0, r7, r1
	str		r2, [r0, #0x0]
_08007030:
	ldr		r1, _08007108
	add		r0, r7, r1
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldrh	r1, [r0, #0x0]
	ldr		r2, _0800710c
	add		r0, r7, r2
	ldrh	r2, [r0, #0x0]
	strh	r1, [r0, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800704c:	.4byte 0x0203EEB4
_08007050:	.4byte 0x81000C00
_08007054:	.4byte 0x080c9d0c
_08007058:	.4byte 0x0809866c
_0800705c:	.4byte 0x080caf90
_08007060:	.4byte 0x08098b0c
_08007064:	.4byte 0x02008400
_08007068:	.4byte 0x06008000
_0800706c:	.4byte 0x80000600
_08007070:	.4byte 0x080c9e50
_08007074:	.4byte 0x080ca498
_08007078:	.4byte 0x0600C000
_0800707c:	.4byte 0x0200C400
_08007080:	.4byte 0x80001000
_08007084:	.4byte 0x080caff0
_08007088:	.4byte 0x02010400
_0800708c:	.4byte 0x080d6e20
_08007090:	.4byte 0x06010000
_08007094:	.4byte 0x80001200
_08007098:	.4byte 0x080cbb30
_0800709c:	.4byte 0x02015C00
_080070a0:	.4byte 0x06015800
_080070a4:	.4byte 0x80000500
_080070a8:	.4byte 0x080cc0fc
_080070ac:	.4byte 0x06016C00
_080070b0:	.4byte 0x80000100
_080070b4:	.4byte 0x080cc28c
_080070b8:	.4byte 0x06017000
_080070bc:	.4byte 0x80000110
_080070c0:	.4byte 0x080caad4
_080070c4:	.4byte 0x06002000
_080070c8:	.4byte 0x80000400
_080070cc:	.4byte 0x080993b8
_080070d0:	.4byte 0x080994bc
_080070d4:	.4byte 0x000011FE
_080070d8:	.4byte 0x00001204
_080070dc:	.4byte 0x0000020B
_080070e0:	.4byte 0x0000120A
_080070e4:	.4byte 0x0000448E
_080070e8:	.4byte 0x000011FC
_080070ec:	.4byte 0x00001741
_080070f0:	.4byte 0x000011F8
_080070f4:	.4byte 0x00001216
_080070f8:	.4byte 0x0000121A
_080070fc:	.4byte 0x000011E8
_08007100:	.4byte 0x000011EC
_08007104:	.4byte 0x000011F0
_08007108:	.4byte 0x00001208
_0800710c:	.4byte 0x00001206
	thumb_func_end sub_08006de0

	thumb_func_start sub_08007110
sub_08007110:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x94
	add		r7, r0, #0x0
	str		r1, [sp, #0x6C]
	str		r2, [sp, #0x70]
	ldr		r0, _0800732c
	add		r0, r0, r7
	mov		r8, r0
	mov		r1, #0x0
	str		r1, [sp, #0x74]
	mov		r2, #0x0
	mov		r3, #0x0
	str		r3, [sp, #0x78]
	mov		r4, #0xda
	lsl		r4, r4, #0x3
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	ldr		r6, _08007330
	add		r1, r7, r6
	mov		r0, #0x48
	strh	r0, [r1, #0x0]
	ldr		r0, _08007334
	add		r1, r7, r0
	mov		r0, #0x53
	strh	r0, [r1, #0x0]
	mov		r1, #0xdb
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	ldr		r3, _08007338
	add		r1, r7, r3
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r1, #0x0]
	add		r4, #0x10
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0x10
	add		r0, r7, r6
	str		r2, [r0, #0x0]
	mov		r1, #0xdd
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	add		r3, #0x10
	add		r0, r7, r3
	str		r2, [r0, #0x0]
	add		r4, #0x10
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0x10
	add		r0, r7, r6
	str		r2, [r0, #0x0]
	add		r1, #0x10
	add		r0, r7, r1
	mov		r1, #0x2
	str		r1, [r0, #0x0]
	add		r3, #0x10
	add		r0, r7, r3
	str		r2, [r0, #0x0]
	add		r4, #0x10
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0x10
	add		r0, r7, r6
	str		r2, [r0, #0x0]
	add		r3, #0xc
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r4, #0xc
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0xc
	add		r0, r7, r6
	strh	r2, [r0, #0x0]
	ldr		r1, _0800733c
	add		r0, r7, r1
	strh	r2, [r0, #0x0]
	add		r3, #0xc
	add		r0, r7, r3
	str		r2, [r0, #0x0]
	add		r4, #0xc
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0xc
	add		r0, r7, r6
	str		r2, [r0, #0x0]
	mov		r0, #0xe4
	lsl		r0, r0, #0x3
	add		r1, r7, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r1, _08007340
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	add		r3, #0x14
	add		r0, r7, r3
	str		r2, [r0, #0x0]
	add		r4, #0x14
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	add		r6, #0x14
	add		r1, r7, r6
	mov		r0, #0x3
	str		r0, [r1, #0x0]
	ldr		r1, _08007344
	add		r0, r7, r1
	str		r2, [r0, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _08007348
	mov		r0, #0x1
	bl		sub_080281c4
	add		r0, r7, #0x0
	ldr		r1, [sp, #0x6C]
	bl		sub_08006de0
	add		r0, r7, #0x0
	bl		sub_08003170
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	mov		r3, #0x1
	bl		sub_08005ed0
	mov		r1, #0x0
	ldr		r2, _0800734c
	add		r2, r7, r2
	str		r2, [sp, #0x80]
	mov		r5, #0x3
	mov		r3, #0xa1
	lsl		r3, r3, #0x3
	add		r0, r7, r3
_08007232:
	str		r1, [r0, #0x0]
	sub		r0, #0x4
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08007232
	mov		r5, #0x0
	mov		r4, r8
_08007240:
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08002cd4
	stmia	r4!, { r0 }
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_08007240
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r7, #0x18]
	ldr		r2, _08007350
	ldr		r0, [r7, #0xc]
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldrb	r0, [r0, #0x10]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	ldr		r1, _08007354
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _08007358
	bl		sub_08071b80
	ldr		r4, _0800735c
	add		r2, r7, r4
	ldr		r3, _08007360
	mov		r0, #0x88
	mov		r1, #0x20
	bl		sub_08003fc4
	mov		r0, #0x0
	bl		sub_0803d224
	thumb_func_end sub_08007110

	thumb_func_start sub_08007290
sub_08007290:
	bl		sub_0802983c
	bl		sub_0802711c
	ldr		r6, _08007364
	add		r1, r7, r6
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, [r7, #0x4c]
	add		r0, #0x1
	str		r0, [r7, #0x4c]
	bl		sub_0803d234
	mov		r1, #0x92
	lsl		r1, r1, #0x2
	add		r1, r8
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, [r7, #0x8]
	cmp		r0, #0x0
	blt		_080072d8
	ldr		r3, _08007368
	add		r2, sp, #0x8
	ldr		r1, _0800736c
	add		r5, r0, #0x1
_080072c4:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x10-0x8]
	add		r3, #0x2
	add		r2, #0x2
	add		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_080072c4
_080072d8:
	mov		r5, #0x0
	ldr		r0, _08007370
	add		r4, r7, r0
	ldr		r2, [sp, #0x80]
_080072e0:
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	blt		_080073a4
	cmp		r1, #0x1
	ble		_080072f2
	cmp		r1, #0xc
	bgt		_080073a4
	cmp		r1, #0x8
	blt		_080073a4
_080072f2:
	mov		r3, #0x1
	ldr		r6, [sp, #0x6c]
	cmp		r6, #0x0
	beq		_08007306
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08007306
	cmp		r1, #0x7
	bgt		_08007306
	mov		r3, #0x2
_08007306:
	ldr		r0, [r2, #0x0]
	cmp		r0, #0xa
	beq		_08007310
	cmp		r0, #0xc
	bne		_08007312
_08007310:
	mov		r3, #0x2
_08007312:
	add		r0, sp, #0x10
	lsl		r1, r5, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	and		r3, r0
	cmp		r3, #0x0
	beq		_080073a4
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x7
	bgt		_08007374
	mov		r0, #0x2
	str		r0, [sp, #0x78]
	b		_08007388

_0800732c:	.4byte 0x000004EC
_08007330:	.4byte 0x000006D4
_08007334:	.4byte 0x000006D6
_08007338:	.4byte 0x000006DC
_0800733c:	.4byte 0x00000712
_08007340:	.4byte 0x00000724
_08007344:	.4byte 0x00000734
_08007348:	.4byte 0x06001000
_0800734c:	.4byte 0x000004FC
_08007350:	.4byte 0x080f476c
_08007354:	.4byte 0x080f49f0
_08007358:	.4byte 0x02014000
_0800735c:	.4byte 0x00000D88
_08007360:	.4byte 0x080f486c
_08007364:	.4byte 0x000011F4
_08007368:	.4byte 0x03005220
_0800736c:	.4byte 0x030052C8
_08007370:	.4byte 0x00000D84

_08007374:
	cmp		r0, #0x9
	ble		_0800737c
	cmp		r0, #0xb
	bne		_08007382
_0800737c:
	mov		r1, #0x64
	str		r1, [sp, #0x78]
	b		_08007388
_08007382:
	mov		r2, #0x1
	neg		r2, r2
	str		r2, [sp, #0x78]
_08007388:
	mov		r2, #0x0
	ldr		r3, [r7, #0x8]
	cmp		r3, #0x0
	blt		_0800739e
	mov		r3, #0xd
	ldr		r1, [sp, #0x80]
_08007394:
	stmia	r1!, {  r3 }
	add		r2, #0x1
	ldr		r0, [r7, #0x8]
	cmp		r2, r0
	ble		_08007394
_0800739e:
	mov		r3, #0x0
	str		r3, [sp, #0x74]
	b		_080073ac
_080073a4:
	add		r2, #0x4
	add		r5, #0x1
	cmp		r5, #0x0
	ble		_080072e0
_080073ac:
	ldr		r0, [r7, #0x50]
	cmp		r0, #0x0
	beq		_080073d0
	mov		r0, #0x0
	str		r0, [r7, #0x50]
	mov		r4, #0x2
	str		r4, [sp, #0x78]
	mov		r2, #0x0
	ldr		r3, [r7, #0x8]
	cmp		r2, r3
	bgt		_080073d0
	mov		r3, #0xe
	ldr		r1, [sp, #0x80]
_080073c6:
	stmia	r1!, {  r3 }
	add		r2, #0x1
	ldr		r0, [r7, #0x8]
	cmp		r2, r0
	ble		_080073c6
_080073d0:
	ldr		r1, [r7, #0xc]
	lsl		r0, r1, #0x2
	ldr		r6, [sp, #0x80]
	add		r0, r6, r0
	ldr		r0, [r0, #0x0]
	add		r2, r1, #0x0
	cmp		r0, #0xf
	bls		_080073e4
	bl		sub_08008486
_080073e4:
	lsl		r0, r0, #0x2
	ldr		r1, _080073f0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x73EE, 0x2

_080073f0:	.4byte 0x080073f4
_080073f4:	.4byte 0x08007434

.incbin "base.gba", 0x73F8, 0x3C
	thumb_func_end sub_08007290

.incbin "base.gba", 0x7434, 0xF94

_080083c8:
.incbin "base.gba", 0x83C8, 0xBE

	non_word_aligned_thumb_func_start sub_08008486
sub_08008486:
	ldr		r6, _08008574
	add		r1, r7, r6
	mov		r0, #0x9
	bl		sub_08005d84
	add		r0, r7, #0x0
	bl		sub_080036d8
	add		r0, r7, #0x0
	bl		sub_08006a00
	add		r0, r7, #0x0
	bl		sub_08006c34
	mov		r0, #0x85
	lsl		r0, r0, #0x5
	add		r4, r7, r0
	mov		r6, #0x1
	str		r6, [r4, #0x0]
	add		r0, r7, #0x0
	bl		sub_08003170
	cmp		r0, #0x0
	beq		_080084c4
	bl		sub_08029f34
	ldr		r1, _08008578
	ldr		r2, _0800857c
	ldr		r3, _08008580
	bl		sub_08029ee4
_080084c4:
	mov		r5, #0x0
	str		r5, [r4, #0x0]
	add		r0, r7, #0x0
	bl		sub_0800393c
	ldr		r0, [r7, #0xc]
	lsl		r0, r0, #0x2
	ldr		r1, [sp, #0x80]
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	sub		r0, #0x2
	cmp		r0, #0x2
	bhi		_080084f8
	mov		r0, #0x1
	bl		sub_08028130
	add		r2, r0, #0x0
	add		r2, #0x60
	ldr		r0, _08008584
	add		r1, r0, #0x0
	add		r1, #0x20
	ldr		r3, [r7, #0x4c]
	mov		r4, #0x20
	str		r4, [sp, #0x0]
	bl		sub_08005ddc
_080084f8:
	add		r0, r7, #0x0
	bl		sub_080065a4
	add		r0, r7, #0x0
	bl		sub_08006084
	add		r0, r7, #0x0
	bl		sub_08006828
	add		r0, r7, #0x0
	bl		sub_0800675c
	add		r0, r7, #0x0
	bl		sub_08003924
	cmp		r0, #0x0
	beq		_08008598
	ldr		r0, _08008588
	ldr		r4, _0800858c
	str		r0, [r4, #0x4]
	ldr		r0, _08008590
	str		r0, [r4, #0x0]
	str		r5, [r4, #0x8]
	strb	r6, [r4, #0xe]
	bl		sub_0802a130
	mov		r0, #0x0
	bl		sub_08028130
	strh	r5, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08008558
	mov		r5, #0x2
_0800854a:
	bl		sub_0802711c
	ldrb	r1, [r4, #0xc]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0800854a
_08008558:
	ldr		r2, _08008594
	add		r1, r7, r2
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_080083c8

.incbin "base.gba", 0x8562, 0x12

.align 2, 0
_08008574:	.4byte 0x00000D88
_08008578:	.4byte 0x02013000
_0800857c:	.4byte 0x06012C00
_08008580:	.4byte 0x80000800
_08008584:	.4byte 0x080cbad0
_08008588:	.4byte 0x0802a1fd
_0800858c:	.4byte 0x030052F0
_08008590:	.4byte sub_0802a238
_08008594:	.4byte 0x0000109C

_08008598:
	mov		r0, #0x92
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080085a8
	bl		sub_08007290
_080085a8:
	bl		sub_08029f34
	ldr		r1, _080085bc
	ldr		r2, _080085c0
	ldr		r3, _080085c4
	bl		sub_08029ee4
	bl		sub_08007290
	
	.2byte	0x0
	
_080085bc:
	and		r0, r0
	lsl		r1, r0, #0x8
_080085c0:
	sub		r4, #0x0
	lsl		r1, r0, #0x18
_080085c4:
	lsr		r0, r0, #0x18
	strh	r0, [r0, #0x0]
_080085c8:
	add		sp, #0x94
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08008486

	thumb_func_start sub_080085d8
sub_080085d8:
	ldr		r1, _080085e0
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

_080085e0:	.4byte 0x080f4964
	thumb_func_end sub_080085d8

	thumb_func_start sub_080085e4
sub_080085e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	bne		_080085f8
	b		_080086fa
_080085f8:
	mov		r1, #0x2
	cmp		r0, #0x1
	beq		_08008600
	ldr		r1, [r7, #0x14]
_08008600:
	ldr		r2, _08008618
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08008620
	lsl		r0, r1, #0x2
	lsl		r1, r6, #0x1
	add		r1, r1, r6
	lsl		r1, r1, #0x2
	add		r1, r0, r1
	ldr		r3, _0800861c
	b		_0800862e

_08008618:	.4byte 0x000011E4
_0800861c:	.4byte 0x000010A4

_08008620:
	lsl		r0, r1, #0x2
	lsl		r1, r6, #0x1
	add		r1, r1, r6
	lsl		r1, r1, #0x2
	add		r1, r0, r1
	mov		r3, #0x87
	lsl		r3, r3, #0x5
_0800862e:
	add		r2, r7, r3
	add		r2, r2, r1
	ldr		r2, [r2, #0x0]
	mov		r8, r2
	mov		r9, r0
	ldr		r1, _08008664
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800866c
	lsl		r5, r6, #0x5
	ldr		r4, _08008668
	add		r4, r5, r4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	b		_0800868a

.incbin "base.gba", 0x8662, 0x2

_08008664:	.4byte 0x000011E4
_08008668:	.4byte 0x080d341c

_0800866c:
	lsl		r5, r6, #0x5
	ldr		r4, _08008708
	add		r4, r5, r4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r0, r5, r3
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_0800868a:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_080086d2
	mov		r0, #0x1
	bl		sub_08028130
	add		r0, r5, r0
	mov		r3, #0x1f
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r5, r0, r1
	mov		r4, #0xf
_080086a2:
	ldrh	r0, [r5, #0x0]
	asr		r1, r0, #0x5
	asr		r2, r0, #0xa
	and		r0, r3
	asr		r0, r0, #0x1
	and		r1, r3
	asr		r1, r1, #0x1
	and		r2, r3
	asr		r2, r2, #0x1
	and		r0, r3
	and		r1, r3
	lsl		r1, r1, #0x5
	orr		r0, r1
	and		r2, r3
	lsl		r2, r2, #0xa
	orr		r0, r2
	strh	r0, [r5, #0x0]
	add		r5, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080086a2
	mov		r0, #0x1
	bl		sub_08028168
_080086d2:
	cmp		r6, #0x4
	bne		_080086fa
	ldr		r2, _0800870c
	add		r0, r7, r2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080086fa
	ldr		r4, _08008710
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r3, #0xc0
	lsl		r3, r3, #0x1
	add		r1, r1, r3
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_080086fa:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x8706, 0x2

_08008708:	.4byte 0x080d7cf4
_0800870c:	.4byte 0x0000111C
_08008710:	.4byte 0x080cd06c
	thumb_func_end sub_080085e4

	thumb_func_start sub_08008714
sub_08008714:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r0, [r3, #0x10]
	mov		r1, #0x2
	cmp		r0, #0x1
	beq		_08008724
	ldr		r1, [r3, #0x14]
_08008724:
	ldr		r4, _08008764
	add		r0, r3, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080087ac
	lsl		r0, r2, #0x1
	add		r0, r0, r2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	ldr		r4, _08008768
	add		r1, r3, r4
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08008774
	lsl		r6, r2, #0x2
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r5, r0, #0x8
	ldr		r6, _0800876c
	mov		r4, #0x3
_0800874e:
	add		r1, r5, r6
	ldr		r0, _08008770
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800874e
	b		_0800881a

_08008764:	.4byte 0x000011E4
_08008768:	.4byte 0x000010A4
_0800876c:	.4byte 0x02025400
_08008770:	.4byte 0x080be378

_08008774:
	mov		r4, #0x0
	lsl		r6, r2, #0x2
	ldr		r7, _080087a4
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r5, r0, #0x8
_08008780:
	add		r0, r6, r4
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _080087a8
	add		r1, r5, r1
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08008780
	b		_0800881a

_080087a4:	.4byte 0x08102bf8
_080087a8:	.4byte 0x02025400

_080087ac:
	lsl		r0, r2, #0x1
	add		r0, r0, r2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	mov		r4, #0x87
	lsl		r4, r4, #0x5
	add		r1, r3, r4
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_080087ec
	lsl		r6, r2, #0x2
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r5, r0, #0x8
	ldr		r6, _080087e4
	mov		r4, #0x3
_080087ce:
	add		r1, r5, r6
	ldr		r0, _080087e8
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080087ce
	b		_0800881a

_080087e4:	.4byte 0x02025400
_080087e8:	.4byte 0x080c07fc

_080087ec:
	mov		r4, #0x0
	lsl		r6, r2, #0x2
	ldr		r7, _08008820
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r5, r0, #0x8
_080087f8:
	add		r0, r6, r4
	bl		sub_0802d6a0
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _08008824
	add		r1, r5, r1
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_080087f8
_0800881a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08008820:	.4byte 0x08102bf8
_08008824:	.4byte 0x02025400
	thumb_func_end sub_08008714

	thumb_func_start sub_08008828
sub_08008828:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x2
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08008870
	mov		r0, sp
	bl		sub_08071b68
	ldr		r1, _08008874
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08008854
	ldr		r0, [r5, #0x10]
	cmp		r0, #0x3
	bne		_08008880
_08008854:
	ldr		r4, _08008878
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x2
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800887c
	add		r0, r0, r5
	mov		r12, r0
	b		_080088be

_08008870:	.4byte 0x01000080
_08008874:	.4byte 0x000011E4
_08008878:	.4byte 0x080b632c
_0800887c:	.4byte 0x00000C6C

_08008880:
	mov		r0, #0x0
	mov		r1, #0x13
	mov		r2, #0x2
	bl		sub_080281b0
	add		r7, r0, #0x0
	mov		r2, #0x0
	ldr		r1, _080088ec
	add		r1, r1, r5
	mov		r12, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	add		r6, r0, #0x0
_0800889a:
	lsl		r1, r2, #0x6
	lsl		r0, r2, #0x3
	add		r4, r2, #0x1
	add		r2, r0, #0x0
	add		r2, #0x20
	add		r1, r7, r1
	mov		r3, #0x7
_080088a8:
	add		r0, r2, #0x0
	orr		r0, r6
	strh	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080088a8
	add		r2, r4, #0x0
	cmp		r2, #0x7
	ble		_0800889a
_080088be:
	ldr		r1, _080088f0
	add		r2, r5, r1
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080088f4
	and		r0, r1
	ldrh	r1, [r2, #0x0]
	strh	r0, [r2, #0x0]
	ldr		r1, _080088f8
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080088dc
	ldr		r0, [r5, #0x10]
	cmp		r0, #0x3
	bne		_080088fc
_080088dc:
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	ldrh	r1, [r2, #0x0]
	mov		r1, #0x0
	orr		r0, r1
	b		_08008900

.incbin "base.gba", 0x88EA, 0x2

_080088ec:	.4byte 0x00000C6C
_080088f0:	.4byte 0x000011FE
_080088f4:	.4byte 0x0000FF7F
_080088f8:	.4byte 0x000011E4

_080088fc:
	ldrh	r0, [r2, #0x0]
	ldrh	r1, [r2, #0x0]
_08008900:
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	mov		r1, r12
	str		r0, [r1, #0x0]
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08008828

	thumb_func_start sub_08008910
sub_08008910:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _0800894c
	ldr		r2, [r0, #0x0]
	mov		r1, #0x1
	ldr		r0, _08008950
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_080089c8
	cmp		r0, #0x1
	bgt		_08008928
	b		_08008b16
_08008928:
	cmp		r0, #0x2
	beq		_0800892e
	b		_08008b16
_0800892e:
	ldr		r1, _08008954
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, [r6, #0x10]
	cmp		r0, #0x0
	beq		_0800893e
	cmp		r1, #0x3
	bne		_08008980
_0800893e:
	cmp		r1, #0x3
	beq		_0800895c
	ldr		r4, _08008958
	add		r0, r2, #0x0
	bl		sub_0802d690
	b		_08008966

_0800894c:	.4byte 0x0203EEBC
_08008950:	.4byte 0x0203EEB8
_08008954:	.4byte 0x000011E4
_08008958:	.4byte 0x08102bf8

_0800895c:
	ldr		r4, _08008978
	and		r2, r1
	add		r0, r2, #0x0
	bl		sub_0802d6c0
_08008966:
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x24]
	ldr		r1, _0800897c
	bl		sub_08071b80
	b		_080089a8

.incbin "base.gba", 0x8976, 0x2

_08008978:	.4byte 0x08102bf8
_0800897c:	.4byte 0x02004400

_08008980:
	ldr		r4, _080089b4
	add		r0, r2, #0x0
	bl		sub_0802d6a0
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x0]
	lsl		r1, r1, #0x2
	ldr		r0, _080089b8
	add		r1, r1, r0
	ldr		r1, [r1, #0x0]
	add		r0, r1, r0
	ldr		r2, _080089bc
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	add		r0, r0, r1
	ldr		r1, _080089c0
	bl		sub_08071b80
_080089a8:
	ldr		r1, _080089c4
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r1, #0x0
	b		_08008b16

.incbin "base.gba", 0x89B2, 0x2

_080089b4:	.4byte 0x08102bf8
_080089b8:	.4byte 0x08258000
_080089bc:	.4byte 0x082580c4
_080089c0:	.4byte 0x02004400
_080089c4:	.4byte 0x0203EEB8

_080089c8:
	ldr		r3, _08008a18
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r6, #0x10]
	cmp		r0, #0x0
	beq		_080089da
	add		r3, r1, #0x0
	cmp		r3, #0x3
	bne		_08008a4c
_080089da:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_080089e2
	add		r0, r2, #0x3
_080089e2:
	asr		r5, r0, #0x2
	add		r0, r1, #0x0
	mov		r7, #0x2
	cmp		r0, #0x1
	beq		_080089ee
	ldr		r7, [r6, #0x14]
_080089ee:
	cmp		r0, #0x3
	beq		_08008a24
	ldr		r4, _08008a1c
	add		r0, r2, #0x0
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r2, [r0, #0x0]
	lsl		r0, r5, #0x1
	add		r0, r0, r5
	add		r0, r0, r7
	lsl		r0, r0, #0x2
	ldr		r3, _08008a20
	add		r1, r6, r3
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08008a34
	ldr		r4, [r2, #0x2c]
	b		_08008a36

_08008a18:	.4byte 0x000011E4
_08008a1c:	.4byte 0x08102bf8
_08008a20:	.4byte 0x000010A4

_08008a24:
	ldr		r4, _08008a48
	and		r2, r1
	add		r0, r2, #0x0
	bl		sub_0802d6c0
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r2, [r0, #0x0]
_08008a34:
	ldr		r4, [r2, #0x28]
_08008a36:
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	b		_08008ac6

.incbin "base.gba", 0x8A46, 0x2

_08008a48:	.4byte 0x08102bf8

_08008a4c:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_08008a54
	add		r0, #0x3
_08008a54:
	asr		r5, r0, #0x2
	mov		r7, #0x2
	cmp		r3, #0x1
	beq		_08008a5e
	ldr		r7, [r6, #0x14]
_08008a5e:
	ldr		r4, _08008aec
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x20
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	lsl		r0, r5, #0x1
	add		r0, r0, r5
	add		r0, r0, r7
	lsl		r0, r0, #0x2
	mov		r2, #0x87
	lsl		r2, r2, #0x5
	add		r1, r6, r2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08008ac6
	mov		r0, #0x0
	bl		sub_08028130
	mov		r4, #0x1f
	add		r3, r0, #0x0
	add		r3, #0x20
	mov		r5, #0xf
_08008a96:
	ldrh	r0, [r3, #0x0]
	asr		r1, r0, #0x5
	asr		r2, r0, #0xa
	and		r0, r4
	asr		r0, r0, #0x1
	and		r1, r4
	asr		r1, r1, #0x1
	and		r2, r4
	asr		r2, r2, #0x1
	and		r0, r4
	and		r1, r4
	lsl		r1, r1, #0x5
	orr		r0, r1
	and		r2, r4
	lsl		r2, r2, #0xa
	orr		r0, r2
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08008a96
	mov		r0, #0x1
	bl		sub_08028168
_08008ac6:
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r3, _08008af0
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08008adc
	ldr		r0, [r6, #0x10]
	cmp		r0, #0x3
	bne		_08008b00
_08008adc:
	bl		sub_08029f34
	ldr		r1, _08008af4
	ldr		r2, _08008af8
	ldr		r3, _08008afc
	bl		sub_08029ee4
	b		_08008b0e

_08008aec:	.4byte 0x08082808
_08008af0:	.4byte 0x000011E4
_08008af4:	.4byte 0x02004400
_08008af8:	.4byte 0x06004000
_08008afc:	.4byte 0x80000A20

_08008b00:
	bl		sub_08029f34
	ldr		r1, _08008b20
	ldr		r2, _08008b24
	ldr		r3, _08008b28
	bl		sub_08029ee4
_08008b0e:
	ldr		r1, _08008b2c
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	mov		r1, #0x1
_08008b16:
	add		r0, r1, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x8B1E, 0x2

_08008b20:	.4byte 0x02004400
_08008b24:	.4byte 0x06004400
_08008b28:	.4byte 0x80000400
_08008b2c:	.4byte 0x0203EEB8
	thumb_func_end sub_08008910

	thumb_func_start sub_08008b30
sub_08008b30:
	push	{ r4, lr }
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x3
	bne		_08008b3a
	b		_08008c90
_08008b3a:
	cmp		r1, #0x4
	bls		_08008b40
	b		_08008ccc
_08008b40:
	lsl		r0, r1, #0x2
	ldr		r1, _08008b4c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x8B4A, 0x2

_08008b4c:	.4byte 0x08008b50
_08008b50:	.4byte 0x08008b64

.incbin "base.gba", 0x8B54, 0x10
	thumb_func_end sub_08008b30


.incbin "base.gba", 0x8B64, 0x12C

_08008c90:

.incbin "base.gba", 0x8C90, 0x3C
_08008ccc:

.incbin "base.gba", 0x8CCC, 0x14
_08008ce0:	.4byte 0x080c9dac
_08008ce4:	.4byte 0x080c9e28
_08008ce8:	.4byte 0x08099a30
	thumb_func_start sub_08008cec
sub_08008cec:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r2, r3, r0
	add		r0, #0xbc
	add		r1, r3, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x7
	ble		_08008d1a
	mov		r4, #0x0
	str		r4, [r1, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x3
	add		r1, r3, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x6
	ble		_08008d1a
	str		r4, [r1, #0x0]
_08008d1a:
	ldr		r0, [r3, #0x10]
	cmp		r0, #0x3
	beq		_08008db0
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x4
	bhi		_08008dd2
	lsl		r0, r0, #0x2
	ldr		r1, _08008d30
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08008d30:	.4byte 0x08008d34
_08008d34:	.4byte 0x08008d48

.incbin "base.gba", 0x8D38, 0x10
	thumb_func_end sub_08008cec


.incbin "base.gba", 0x8D48, 0x68

_08008db0:

.incbin "base.gba", 0x8DB0, 0x22
_08008dd2:

.incbin "base.gba", 0x8DD2, 0xE
_08008de0:	.4byte 0x0809894c
	thumb_func_start sub_08008de4
sub_08008de4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x8
	add		r6, r1, #0x0
	cmp		r1, #0x0
	bge		_08008df6
	add		r6, r1, #0x3
_08008df6:
	asr		r6, r6, #0x2
	mov		r4, #0x3
	and		r4, r1
	ldr		r1, _08008eb4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08008eb8
	bl		sub_08057370
	lsl		r4, r4, #0x5
	lsl		r6, r6, #0x7
	add		r0, r6, r0
	add		r0, r4, r0
	add		r0, #0x64
	ldrb	r7, [r0, #0x0]
	bl		sub_08057370
	add		r0, r6, r0
	add		r0, r4, r0
	add		r0, #0x64
	ldrh	r5, [r0, #0x2]
	mov		r0, #0x0
	mov		r1, #0x5
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, #0xd0
	lsl		r0, r0, #0x1
	mov		r9, r0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r8, r0
	str		r0, [sp, #0x4]
	add		r0, r7, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	mov		r3, #0xc
	bl		sub_0800e5c0
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	mov		r3, #0xf
	bl		sub_0800c674
	bl		sub_08057370
	add		r0, r6, r0
	add		r0, r4, r0
	add		r0, #0x78
	ldrb	r7, [r0, #0x0]
	bl		sub_08057370
	add		r6, r6, r0
	add		r4, r4, r6
	add		r4, #0x78
	ldrh	r5, [r4, #0x2]
	mov		r0, #0x0
	mov		r1, #0x5
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	add		r0, r7, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	mov		r3, #0xc
	bl		sub_0800e5c0
	add		r4, r5, #0x0
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	mov		r3, #0xf
	bl		sub_0800c674
	b		_08008f6c

_08008eb4:	.4byte 0x000011E4

_08008eb8:
	bl		sub_08057370
	lsl		r4, r4, #0x5
	lsl		r6, r6, #0x7
	add		r0, r6, r0
	add		r0, r4, r0
	mov		r5, #0xb9
	lsl		r5, r5, #0x2
	add		r0, r0, r5
	ldrb	r7, [r0, #0x0]
	bl		sub_08057370
	add		r0, r6, r0
	add		r0, r4, r0
	add		r0, r0, r5
	ldrh	r5, [r0, #0x2]
	mov		r0, #0x0
	mov		r1, #0x5
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, #0xd0
	lsl		r0, r0, #0x1
	mov		r9, r0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r8, r0
	str		r0, [sp, #0x4]
	add		r0, r7, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	mov		r3, #0xc
	bl		sub_0800e5c0
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	mov		r3, #0xf
	bl		sub_0800c674
	bl		sub_08057370
	add		r0, r6, r0
	add		r0, r4, r0
	mov		r5, #0xbe
	lsl		r5, r5, #0x2
	add		r0, r0, r5
	ldrb	r7, [r0, #0x0]
	bl		sub_08057370
	add		r6, r6, r0
	add		r4, r4, r6
	add		r4, r4, r5
	ldrh	r5, [r4, #0x2]
	mov		r0, #0x0
	mov		r1, #0x5
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	add		r0, r7, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	mov		r3, #0xc
	bl		sub_0800e5c0
	add		r4, r5, #0x0
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	mov		r3, #0xf
	bl		sub_0800c674
_08008f6c:
	add		sp, #0x8
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x8F7A, 0x2
	thumb_func_end sub_08008de4

	thumb_func_start sub_08008f7c
sub_08008f7c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	mov		r9, r1
	mov		r1, #0xe7
	lsl		r1, r1, #0x3
	add		r1, r1, r0
	mov		r8, r1
	mov		r0, #0x10
	sub		r0, r0, r2
	str		r0, [sp, #0xC]
	cmp		r2, #0x1
	bgt		_08008f9e
	mov		r0, #0xe
_08008f9e:
	str		r0, [sp, #0x8]
	cmp		r2, #0x3
	ble		_08008faa
	mov		r0, #0x10
	sub		r0, r0, r2
	b		_08008fac
_08008faa:
	mov		r0, #0xc
_08008fac:
	str		r0, [sp, #0x4]
	mov		r0, #0xa
	str		r0, [sp, #0x0]
	mov		r6, #0x0
	mov		r0, r9
	lsl		r0, r0, #0x1
	mov		r10, r0
	add		r7, sp, #0x10
	mov		r1, r9
	lsl		r1, r1, #0x2
	str		r1, [sp, #0x14]
	ldr		r5, _080090e4
	add		r5, r8
_08008fc6:
	lsl		r0, r6, #0x6
	ldr		r1, _080090e8
	add		r0, r0, r1
	add		r1, r5, #0x0
	mov		r2, #0xc
	bl		sub_08071b6c
	add		r5, #0x18
	add		r6, #0x1
	cmp		r6, #0x7
	ble		_08008fc6
	mov		r1, r8
	ldr		r0, [r1, #0xc]
	cmp		r0, #0x0
	beq		_08009022
	mov		r6, #0x0
	mov		r0, r10
	add		r0, r9
	lsl		r0, r0, #0x4
	ldr		r2, _080090e4
	add		r2, r8
	ldr		r4, _080090ec
	ldr		r1, _080090f0
	add		r5, r1, #0x0
	mov		r1, r10
	add		r1, #0x1
	add		r3, r0, r2
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r2, r0, r2
_08009004:
	ldrh	r1, [r3, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	orr		r0, r5
	strh	r0, [r3, #0x0]
	ldrh	r1, [r2, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	orr		r0, r5
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	add		r6, #0x1
	cmp		r6, #0xb
	ble		_08009004
_08009022:
	mov		r6, #0x0
	add		r5, r7, #0x0
_08009026:
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	add		r2, r6, #0x0
	add		r2, #0xa
	mov		r0, #0x0
	mov		r1, #0x11
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	ldr		r2, _080090f4
	bl		sub_08071b6c
	add		r6, #0x1
	cmp		r6, #0x7
	ble		_08009026
	mov		r6, #0x0
	mov		r5, sp
	ldr		r7, _080090f8
	add		r7, r8
	ldr		r4, _080090e4
	add		r4, r8
_08009052:
	cmp		r6, r9
	beq		_08009080
	ldr		r2, [r5, #0x0]
	mov		r0, #0x0
	mov		r1, #0x11
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc
	bl		sub_08071b6c
	ldr		r2, [r5, #0x0]
	add		r2, #0x1
	mov		r0, #0x0
	mov		r1, #0x11
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r7, #0x0
	mov		r2, #0xc
	bl		sub_08071b6c
_08009080:
	add		r5, #0x4
	add		r7, #0x30
	add		r4, #0x30
	add		r6, #0x1
	cmp		r6, #0x3
	ble		_08009052
	mov		r4, r10
	add		r4, r9
	lsl		r4, r4, #0x4
	ldr		r1, _080090e4
	add		r5, r4, r1
	add		r5, r8
	ldr		r6, [sp, #0x14]
	add		r6, sp
	ldr		r2, [r6, #0x0]
	mov		r0, #0x0
	mov		r1, #0x11
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0xc
	bl		sub_08071b6c
	ldr		r0, _080090f8
	add		r4, r4, r0
	add		r4, r8
	ldr		r2, [r6, #0x0]
	add		r2, #0x1
	mov		r0, #0x0
	mov		r1, #0x11
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_080281fc
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x90E2, 0x2

_080090e4:	.4byte 0x0000053C
_080090e8:	.4byte 0x080cce70
_080090ec:	.4byte 0x00000FFF
_080090f0:	.4byte 0xFFFFB000
_080090f4:	.4byte 0x0100000C
_080090f8:	.4byte 0x00000554
	thumb_func_end sub_08008f7c

	thumb_func_start sub_080090fc
sub_080090fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r10, r0
	add		r2, r1, #0x0
	mov		r4, #0xe7
	lsl		r4, r4, #0x3
	add		r4, r10
	ldr		r0, _08009148
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08009126
	mov		r1, #0xfd
	lsl		r1, r1, #0x3
	add		r1, r10
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_08009126:
	mov		r0, #0xfd
	lsl		r0, r0, #0x3
	add		r0, r10
	ldr		r0, [r0, #0x0]
	mov		r7, #0xfe
	lsl		r7, r7, #0x3
	add		r7, r10
	ldr		r6, _0800914c
	add		r6, r10
	cmp		r0, #0xa
	bls		_0800913e
	b		_080094f8
_0800913e:
	lsl		r0, r0, #0x2
	ldr		r1, _08009150
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08009148:	.4byte 0x000007E4
_0800914c:	.4byte 0x000007F2
_08009150:	.4byte 0x08009154
_08009154:	.4byte 0x08009180

.incbin "base.gba", 0x9158, 0x28
	thumb_func_end sub_080090fc


.incbin "base.gba", 0x9180, 0xB0
_08009230:	.4byte 0x08009248

.incbin "base.gba", 0x9234, 0x26A
_0800949e:	.4byte 0x5E0A2000
_080094a2:	.4byte 0x1A8020A0
_080094a6:	.4byte 0x13C04358
_080094aa:	.4byte 0x1880880A
_080094ae:	.4byte 0x1C0F8008
_080094b2:	.4byte 0x1068E01F
_080094b6:	.4byte 0x20000810
_080094ba:	.4byte 0x1C216008
_080094be:	.4byte 0x680831B0
_080094c2:	.4byte 0xE0133001

_080094c6:

.incbin "base.gba", 0x94C6, 0x4
_080094ca:

.incbin "base.gba", 0x94CA, 0x4
_080094ce:

.incbin "base.gba", 0x94CE, 0x4
_080094d2:

.incbin "base.gba", 0x94D2, 0x4
_080094d6:	.4byte 0x30016828

.incbin "base.gba", 0x94DA, 0x1E

_080094f8:

.incbin "base.gba", 0x94F8, 0x60
PTR_H_Reset_08009558:	.4byte 0xffff0000
_0800955c:	.4byte 0x0000FFFF
_08009560:	.4byte 0x080e404c
_08009564:	.4byte 0x00001202
	thumb_func_start sub_08009568
sub_08009568:
	push	{ r4, r5, lr }
	sub		sp, #0x8
	add		r4, r0, #0x0
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r5, r4, r0
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	beq		_0800957c
	b		_0800971e
_0800957c:
	ldr		r1, _08009598
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800959c
	bl		sub_08057370
	ldr		r2, [r5, #0x0]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	ldr		r2, [r4, #0x14]
	add		r2, r2, r1
	add		r0, #0x46
	b		_080095ac

_08009598:	.4byte 0x000011E4

_0800959c:
	bl		sub_08057370
	ldr		r2, [r5, #0x0]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	ldr		r2, [r4, #0x14]
	add		r2, r2, r1
	add		r0, #0x55
_080095ac:
	add		r0, r0, r2
	ldrb	r2, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xf8
	str		r2, [r0, #0x0]
	add		r4, r0, #0x0
	cmp		r2, #0x7
	bls		_080095be
	b		_0800971e
_080095be:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xfc
	cmp		r0, #0x5
	bls		_080095d0
	b		_08009706
_080095d0:
	lsl		r0, r0, #0x2
	ldr		r1, _080095dc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x95DA, 0x2

_080095dc:	.4byte 0x080095e0
_080095e0:	.4byte 0x080095f8

.incbin "base.gba", 0x95E4, 0x14
	thumb_func_end sub_08009568


.incbin "base.gba", 0x95F8, 0x10E

_08009706:

.incbin "base.gba", 0x9706, 0x18
_0800971e:

.incbin "base.gba", 0x971E, 0xA
_08009728:	.4byte 0x080e4284
	thumb_func_start sub_0800972c
sub_0800972c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x8
	add		r4, r0, #0x0
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r5, r4, r0
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	beq		_08009746
	b		_08009952
_08009746:
	ldr		r1, _08009764
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08009768
	bl		sub_08057370
	ldr		r2, [r5, #0x0]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	ldr		r2, [r4, #0x14]
	add		r2, r2, r1
	add		r0, #0x28
	b		_08009778

.incbin "base.gba", 0x9762, 0x2

_08009764:	.4byte 0x000011E4

_08009768:
	bl		sub_08057370
	ldr		r2, [r5, #0x0]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	ldr		r2, [r4, #0x14]
	add		r2, r2, r1
	add		r0, #0x37
_08009778:
	add		r0, r0, r2
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	cmp		r1, #0x0
	beq		_0800979e
	cmp		r1, #0x0
	bgt		_08009790
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0800979e
	b		_08009798
_08009790:
	cmp		r1, #0x1
	beq		_0800979e
	cmp		r1, #0x2
	beq		_0800979e
_08009798:
	add		r7, r5, #0x0
	add		r7, #0xd8
	b		_080097a6
_0800979e:
	add		r0, r5, #0x0
	add		r0, #0xd8
	str		r1, [r0, #0x0]
	add		r7, r0, #0x0
_080097a6:
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	bge		_080097ae
	b		_08009952
_080097ae:
	add		r0, r5, #0x0
	add		r0, #0xec
	ldr		r2, [r0, #0x0]
	add		r3, r0, #0x0
	add		r1, r5, #0x0
	add		r1, #0xe8
	cmp		r2, #0x5
	bls		_080097c0
	b		_080098b8
_080097c0:
	lsl		r0, r2, #0x2
	ldr		r1, _080097cc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x97CA, 0x2

_080097cc:	.4byte 0x080097d0
_080097d0:	.4byte 0x080097e8

.incbin "base.gba", 0x97D4, 0x14
	thumb_func_end sub_0800972c


.incbin "base.gba", 0x97E8, 0xD0

_080098b8:

.incbin "base.gba", 0x98B8, 0x18
_080098d0:

.incbin "base.gba", 0x98D0, 0x46
_08009916:

.incbin "base.gba", 0x9916, 0x3C
_08009952:

.incbin "base.gba", 0x9952, 0xE
_08009960:	.4byte 0x080e4200
_08009964:	.4byte 0x080f4bfc
PTR_PTR_08009968:	.4byte 0x080f66e0
_0800996c:	.4byte 0x02015E00
	thumb_func_start sub_08009970
sub_08009970:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x8
	mov		r8, r0
	mov		r7, #0xe7
	lsl		r7, r7, #0x3
	add		r7, r8
	ldr		r0, _08009998
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x9
	bls		_0800998c
	b		_08009c12
_0800998c:
	lsl		r0, r0, #0x2
	ldr		r1, _0800999c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x9996, 0x2

_08009998:	.4byte 0x00000C58
_0800999c:	.4byte 0x080099a0
_080099a0:	.4byte 0x08009c12

.incbin "base.gba", 0x99A4, 0x24
	thumb_func_end sub_08009970


.incbin "base.gba", 0x99C8, 0x24A

_08009c12:

.incbin "base.gba", 0x9C12, 0x3A
_08009c4c:

.incbin "base.gba", 0x9C4C, 0xC
_08009c58:	.4byte 0x00000514
	thumb_func_start sub_08009c5c
sub_08009c5c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r10, r0
	mov		r7, #0xe7
	lsl		r7, r7, #0x3
	add		r7, r10
	ldr		r0, [r0, #0x10]
	cmp		r0, #0x1
	beq		_08009c78
	b		_08009f38
_08009c78:
	ldr		r0, _08009c90
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x6
	bls		_08009c84
	b		_08009e48
_08009c84:
	lsl		r0, r0, #0x2
	ldr		r1, _08009c94
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x9C8E, 0x2

_08009c90:	.4byte 0x00000C44
_08009c94:	.4byte 0x08009c98
_08009c98:	.4byte 0x08009e48

.incbin "base.gba", 0x9C9C, 0x18
	thumb_func_end sub_08009c5c


.incbin "base.gba", 0x9CB4, 0x194

_08009e48:

.incbin "base.gba", 0x9E48, 0x64
_08009eac:

.incbin "base.gba", 0x9EAC, 0x38
_08009ee4:

.incbin "base.gba", 0x9EE4, 0x4
_08009ee8:

.incbin "base.gba", 0x9EE8, 0x32
_08009f1a:

.incbin "base.gba", 0x9F1A, 0x1E
_08009f38:

.incbin "base.gba", 0x9F38, 0x14
_08009f4c:	.4byte 0x080e4208
_08009f50:	.4byte 0x080f4bc8
_08009f54:	.4byte 0x080e421c
_08009f58:	.4byte 0x080f4bcc
_08009f5c:	.4byte 0x000011E4
_08009f60:	.4byte 0x080cdf04
_08009f64:	.4byte 0x080cdf24
_08009f68:	.4byte 0x00001130
_08009f6c:	.4byte 0x080e4254
_08009f70:	.4byte 0x080f4bd0
_08009f74:	.4byte 0x000011C8
_08009f78:	.4byte 0x080e425c
_08009f7c:	.4byte 0x080f4bd4
_08009f80:	.4byte 0x080e4264
	thumb_func_start sub_08009f84
sub_08009f84:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x8
	add		r6, r0, #0x0
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r5, r6, r0
	ldr		r1, _08009fa8
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x5
	bls		_08009f9c
	b		_0800a0da
_08009f9c:
	lsl		r0, r0, #0x2
	ldr		r1, _08009fac
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x9FA6, 0x2

_08009fa8:	.4byte 0x00000804
_08009fac:	.4byte 0x08009fb0
_08009fb0:	.4byte 0x08009fc8

.incbin "base.gba", 0x9FB4, 0x14
	thumb_func_end sub_08009f84


.incbin "base.gba", 0x9FC8, 0x112

_0800a0da:

.incbin "base.gba", 0xA0DA, 0x3E
_0800a118:

.incbin "base.gba", 0xA118, 0x24
_0800a13c:	.4byte 0x080f4c08
_0800a140:	.4byte 0x02015C00
_0800a144:	.4byte 0x080e403c
_0800a148:	.4byte 0x000011E4
_0800a14c:	.4byte 0x080e4274

_0800a150:

.incbin "base.gba", 0xA150, 0x1A
_0800a16a:

.incbin "base.gba", 0xA16A, 0xA
_0800a174:	.4byte 0x080e4230
_0800a178:	.4byte 0x080f4bd8
	thumb_func_start sub_0800a17c
sub_0800a17c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	mov		r10, r0
	mov		r7, #0xe7
	lsl		r7, r7, #0x3
	add		r7, r10
	mov		r0, #0x0
	mov		r8, r0
	b		_0800a532
_0800a196:
	mov		r1, r8
	lsl		r0, r1, #0x1
	add		r0, r8
	lsl		r0, r0, #0x3
	add		r0, #0x1c
	add		r6, r7, r0
	mov		r2, #0x0
	mov		r9, r2
	mov		r0, #0xe
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x9
	bls		_0800a1b0
	b		_0800a444
_0800a1b0:
	lsl		r0, r0, #0x2
	ldr		r1, _0800a1bc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0xA1BA, 0x2

_0800a1bc:	.4byte 0x0800a1c0
_0800a1c0:	.4byte 0x0800a444

.incbin "base.gba", 0xA1C4, 0x24
	thumb_func_end sub_0800a17c


.incbin "base.gba", 0xA1E8, 0x25C

_0800a444:

.incbin "base.gba", 0xA444, 0x1C
_0800a460:

.incbin "base.gba", 0xA460, 0x24
_0800a484:	.4byte 0x0000FFFF
_0800a488:	.4byte 0x08101068
_0800a48c:	.4byte 0x000003FF

_0800a490:

.incbin "base.gba", 0xA490, 0x12
_0800a4a2:

.incbin "base.gba", 0xA4A2, 0x1E
_0800a4c0:	.4byte 0x08101068

_0800a4c4:

.incbin "base.gba", 0xA4C4, 0x12
_0800a4d6:

.incbin "base.gba", 0xA4D6, 0x26
_0800a4fc:	.4byte 0x08101068
_0800a500:	.4byte 0x000003FF

_0800a504:

.incbin "base.gba", 0xA504, 0xE
_0800a512:

.incbin "base.gba", 0xA512, 0x1A
_0800a52c:

.incbin "base.gba", 0xA52C, 0x2
_0800a52e:

.incbin "base.gba", 0xA52E, 0x4
_0800a532:

.incbin "base.gba", 0xA532, 0x8
_0800a53a:

.incbin "base.gba", 0xA53A, 0x66
_0800a5a0:

.incbin "base.gba", 0xA5A0, 0x12
_0800a5b2:

.incbin "base.gba", 0xA5B2, 0x5E
_0800a610:

.incbin "base.gba", 0xA610, 0xC
_0800a61c:

.incbin "base.gba", 0xA61C, 0x30
_0800a64c:	.4byte 0x08101068
_0800a650:	.4byte 0xFFE80000
_0800a654:	.4byte 0x080e3a2c
_0800a658:	.4byte 0x080f4c1c

_0800a65c:

.incbin "base.gba", 0xA65C, 0x3E
_0800a69a:

.incbin "base.gba", 0xA69A, 0x16
_0800a6b0:	.4byte 0x00000604

_0800a6b4:

.incbin "base.gba", 0xA6B4, 0x6
_0800a6ba:

.incbin "base.gba", 0xA6BA, 0x1E
_0800a6d8:

.incbin "base.gba", 0xA6D8, 0x34
_0800a70c:	.4byte 0x080f4c20
_0800a710:	.4byte 0x080f4c30

_0800a714:

.incbin "base.gba", 0xA714, 0xA
_0800a71e:

.incbin "base.gba", 0xA71E, 0x2
_0800a720:

.incbin "base.gba", 0xA720, 0x10
_0800a730:	.4byte 0x000005FC
	thumb_func_start sub_0800a734
sub_0800a734:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r4, r7, r0
	mov		r0, #0x5
	str		r0, [r4, #0x14]
	mov		r5, #0x0
	mov		r8, r5
	ldr		r1, _0800a76c
	ldr		r3, _0800a770
	add		r2, r7, r3
	mov		r0, #0x88
	lsl		r0, r0, #0x1
	mov		r12, r0
_0800a75e:
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	cmp		r6, #0x0
	bne		_0800a774
	ldrh	r0, [r1, #0xc]
	add		r0, #0xf0
	b		_0800a77a

_0800a76c:	.4byte 0x080f4b1c
_0800a770:	.4byte 0x00000754

_0800a774:
	mov		r3, #0x8f
	lsl		r3, r3, #0x1
	add		r0, r3, #0x0
_0800a77a:
	strh	r0, [r2, #0x4]
	cmp		r6, #0x0
	beq		_0800a78c
	ldr		r0, [r7, #0x10]
	mov		r3, #0x50
	cmp		r0, #0x0
	beq		_0800a78e
	mov		r3, #0x3c
	b		_0800a78e
_0800a78c:
	ldrh	r3, [r1, #0xe]
_0800a78e:
	strh	r3, [r2, #0x6]
	mov		r0, r12
	strh	r0, [r2, #0xa]
	strh	r0, [r2, #0x8]
	mov		r3, r8
	strh	r3, [r2, #0xc]
	mov		r0, #0x1
	strb	r0, [r2, #0xe]
	strh	r3, [r2, #0x10]
	add		r1, #0x14
	add		r2, #0x18
	add		r5, #0x1
	ldr		r0, [r4, #0x14]
	cmp		r5, r0
	blt		_0800a75e
	mov		r5, #0x0
	add		r6, r4, #0x0
	add		r6, #0x94
	mov		r1, #0x98
	add		r1, r1, r4
	mov		r8, r1
	mov		r2, #0x9a
	add		r2, r2, r4
	mov		r9, r2
	add		r3, r4, #0x0
	add		r3, #0x9e
	str		r3, [sp, #0x0]
	mov		r1, #0x9c
	add		r1, r1, r4
	mov		r10, r1
	add		r2, r4, #0x0
	add		r2, #0xa0
	str		r2, [sp, #0x4]
	add		r3, #0x4
	str		r3, [sp, #0x8]
	cmp		r5, r0
	bge		_0800a7e8
_0800a7d8:
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080085e4
	add		r5, #0x1
	ldr		r0, [r4, #0x14]
	cmp		r5, r0
	blt		_0800a7d8
_0800a7e8:
	ldr		r2, _0800a820
	ldr		r0, [r2, #0x0]
	str		r0, [r6, #0x0]
	ldrh	r0, [r2, #0xc]
	mov		r3, #0x0
	mov		r1, #0x0
	mov		r4, r8
	strh	r0, [r4, #0x0]
	ldrh	r0, [r2, #0xe]
	mov		r2, r9
	strh	r0, [r2, #0x0]
	ldr		r4, [sp, #0x0]
	strh	r1, [r4, #0x0]
	mov		r0, r10
	strh	r1, [r0, #0x0]
	ldr		r2, [sp, #0x4]
	strh	r1, [r2, #0x0]
	ldr		r4, [sp, #0x8]
	strb	r3, [r4, #0x0]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xA81E, 0x2

_0800a820:	.4byte 0x080f4b94
	thumb_func_end sub_0800a734

	thumb_func_start sub_0800a824
sub_0800a824:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r1, #0xe7
	lsl		r1, r1, #0x3
	add		r1, r1, r0
	mov		r12, r1
	mov		r1, #0x1
	mov		r2, r12
	str		r1, [r2, #0x14]
	mov		r4, #0x0
	ldr		r3, _0800a8bc
	mov		r9, r3
	ldr		r1, _0800a8c0
	mov		r6, #0x0
	mov		r5, #0x88
	lsl		r5, r5, #0x1
	add		r3, r1, #0x0
	add		r3, #0xc
	ldr		r7, _0800a8c4
	add		r2, r0, r7
	mov		r0, #0x1
	mov		r8, r0
_0800a854:
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	add		r0, #0xf0
	strh	r0, [r2, #0x4]
	ldrh	r0, [r3, #0x2]
	strh	r0, [r2, #0x6]
	strh	r5, [r2, #0xa]
	strh	r5, [r2, #0x8]
	strh	r6, [r2, #0xc]
	mov		r7, r8
	strb	r7, [r2, #0xe]
	strh	r6, [r2, #0x10]
	add		r3, #0x14
	add		r2, #0x18
	add		r1, #0x14
	add		r4, #0x1
	mov		r7, r12
	ldr		r0, [r7, #0x14]
	cmp		r4, r0
	blt		_0800a854
	mov		r2, #0x0
	mov		r1, r12
	add		r1, #0x94
	mov		r3, r9
	ldr		r0, [r3, #0x0]
	str		r0, [r1, #0x0]
	ldrh	r1, [r3, #0xc]
	mov		r0, r12
	add		r0, #0x98
	mov		r3, #0x0
	strh	r1, [r0, #0x0]
	mov		r7, r9
	ldrh	r0, [r7, #0xe]
	mov		r1, r12
	add		r1, #0x9a
	strh	r0, [r1, #0x0]
	mov		r0, r12
	add		r0, #0x9e
	strh	r2, [r0, #0x0]
	sub		r0, #0x2
	strh	r2, [r0, #0x0]
	add		r0, #0x4
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strb	r3, [r0, #0x0]
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800a8bc:	.4byte 0x080f4b94
_0800a8c0:	.4byte 0x080f4b80
_0800a8c4:	.4byte 0x00000754
	thumb_func_end sub_0800a824

	thumb_func_start sub_0800a8c8
sub_0800a8c8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	mov		r9, r1
	mov		r0, #0xe7
	lsl		r0, r0, #0x3
	add		r0, r0, r7
	mov		r10, r0
	cmp		r1, #0x0
	beq		_0800a918
	mov		r5, #0xc0
	lsl		r5, r5, #0x13
	mov		r4, #0x7
_0800a8ea:
	bl		sub_08029f34
	ldr		r1, _0800a9e4
	add		r2, r5, #0x0
	ldr		r3, _0800a9e8
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r5, r5, r1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800a8ea
	mov		r2, r9
	cmp		r2, #0x0
	beq		_0800a918
	add		r0, r7, #0x0
	bl		sub_08002e98
	bl		sub_0802711c
_0800a918:
	ldr		r4, _0800a9ec
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800a9f0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800a9f4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	sub		r4, #0x20
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	ldr		r4, _0800a9f8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800a9fc
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0800aa00
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r4, _0800aa04
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xd0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	beq		_0800aa30
	ldr		r1, _0800aa08
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800aa10
	ldr		r4, _0800aa0c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	b		_0800aa20

_0800a9e4:	.4byte 0x0203EEC0
_0800a9e8:	.4byte 0x81000C00
_0800a9ec:	.4byte 0x0809866c
_0800a9f0:	.4byte 0x080c9d0c
_0800a9f4:	.4byte 0x080ce084
_0800a9f8:	.4byte 0x080c69c0
_0800a9fc:	.4byte 0x080caf90
_0800aa00:	.4byte 0x080cc3c4
_0800aa04:	.4byte 0x080cc4cc
_0800aa08:	.4byte 0x000011E4
_0800aa0c:	.4byte 0x080d341c

_0800aa10:
	ldr		r4, _0800aa2c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r1, r1, r0
_0800aa20:
	add		r0, r4, #0x0
	mov		r2, #0x28
	bl		sub_08071b68
	b		_0800aa48

.incbin "base.gba", 0xAA2A, 0x2

_0800aa2c:	.4byte 0x080d7cf4

_0800aa30:
	ldr		r4, _0800ab30
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_0800aa48:
	ldr		r1, _0800ab34
	mov		r2, r10
	ldr		r0, [r2, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x5
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	mov		r1, r9
	cmp		r1, #0x0
	beq		_0800ab12
	ldr		r0, _0800ab38
	ldr		r4, _0800ab3c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ab40
	ldr		r3, _0800ab44
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800ab48
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _0800ab4c
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	mov		r5, #0x0
	ldr		r6, _0800ab50
_0800aac2:
	lsl		r4, r5, #0xd
	ldr		r0, _0800ab54
	add		r4, r4, r0
	bl		sub_08029f34
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	ldr		r3, _0800ab58
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0800aac2
	ldr		r0, _0800ab5c
	ldr		r4, _0800ab60
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
	ldr		r0, _0800ab64
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ab68
	ldr		r3, _0800ab6c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
_0800ab12:
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	beq		_0800ab80
	ldr		r0, _0800ab70
	ldr		r4, _0800ab74
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800ab78
	ldr		r1, _0800ab7c
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	b		_0800ab98

_0800ab30:	.4byte 0x080cd320
_0800ab34:	.4byte 0x080f4ac0
_0800ab38:	.4byte 0x08098b0c
_0800ab3c:	.4byte 0x02008400
_0800ab40:	.4byte 0x06008000
_0800ab44:	.4byte 0x80000600
_0800ab48:	.4byte 0x080c9e50
_0800ab4c:	.4byte 0x080ca498
_0800ab50:	.4byte 0x0600C000
_0800ab54:	.4byte 0x0200C400
_0800ab58:	.4byte 0x80001000
_0800ab5c:	.4byte 0x080caff0
_0800ab60:	.4byte 0x02010400
_0800ab64:	.4byte 0x080d6e20
_0800ab68:	.4byte 0x06010000
_0800ab6c:	.4byte 0x80001200
_0800ab70:	.4byte 0x080d357c
_0800ab74:	.4byte 0x02014000
_0800ab78:	.4byte 0x080d5afc
_0800ab7c:	.4byte 0xFFFFFC00

_0800ab80:
	ldr		r0, _0800abdc
	ldr		r4, _0800abe0
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800abe4
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
_0800ab98:
	ldr		r0, _0800abe8
	ldr		r4, _0800abec
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800abf0
	mov		r1, #0xc0
	lsl		r1, r1, #0x4
	add		r5, r4, r1
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r1, r4, r2
	ldr		r2, _0800abf4
	ldr		r3, _0800abf8
	bl		sub_08029ee4
	ldr		r1, _0800abfc
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800ac08
	bl		sub_08029f34
	ldr		r2, _0800ac00
	ldr		r3, _0800ac04
	add		r1, r5, #0x0
	bl		sub_08029ee4
	b		_0800ac1a

_0800abdc:	.4byte 0x080d5bb8
_0800abe0:	.4byte 0x02013C00
_0800abe4:	.4byte 0x080cd340
_0800abe8:	.4byte 0x080cecf4
_0800abec:	.4byte 0x02017400
_0800abf0:	.4byte 0x080ce144
_0800abf4:	.4byte 0x06017400
_0800abf8:	.4byte 0x80000400
_0800abfc:	.4byte 0x000011E4
_0800ac00:	.4byte 0x06010A00
_0800ac04:	.4byte 0x80000100

_0800ac08:
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	ldr		r2, _0800ad18
	ldr		r3, _0800ad1c
	bl		sub_08029ee4
_0800ac1a:
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	ldr		r0, _0800ad20
	ldr		r5, _0800ad24
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ad28
	add		r1, r5, r2
	ldr		r2, _0800ad2c
	ldr		r3, _0800ad30
	bl		sub_08029ee4
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x0
	bne		_0800ac74
	ldr		r0, _0800ad34
	mov		r4, #0x84
	lsl		r4, r4, #0x1
	add		r4, r10
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800ad38
	add		r1, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800ad3c
	ldr		r1, _0800ad40
	add		r4, r5, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ad44
	ldr		r3, _0800ad48
	add		r1, r4, #0x0
	bl		sub_08029ee4
_0800ac74:
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	ldr		r0, _0800ad4c
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r4, r5, r2
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ad50
	ldr		r3, _0800ad1c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	ldr		r0, _0800ad54
	mov		r1, #0xda
	lsl		r1, r1, #0x5
	add		r4, r5, r1
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800ad58
	ldr		r3, _0800ad5c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800ad60
	ldr		r2, _0800ad64
	ldr		r3, _0800ad68
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800ad6c
	ldr		r2, _0800ad70
	ldr		r3, _0800ad74
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800ad78
	ldr		r2, _0800ad7c
	ldr		r3, _0800ad80
	bl		sub_08029ee4
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	beq		_0800ad88
	mov		r4, #0x0
	ldr		r2, _0800ad84
	add		r5, r7, r2
_0800acf6:
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08008714
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	str		r0, [r5, #0x0]
	add		r4, #0x1
	cmp		r4, #0x4
	ble		_0800acf6
	b		_0800adb0

.incbin "base.gba", 0xAD16, 0x2

_0800ad18:	.4byte 0x06010A00
_0800ad1c:	.4byte 0x80000100
_0800ad20:	.4byte 0x080cc530
_0800ad24:	.4byte 0x02016000
_0800ad28:	.4byte 0xFFFFDC00
_0800ad2c:	.4byte 0x06013800
_0800ad30:	.4byte 0x80001600
_0800ad34:	.4byte 0x080cc828
_0800ad38:	.4byte 0x080ccb84
_0800ad3c:	.4byte 0x080ccb10
_0800ad40:	.4byte 0xFFFFF000
_0800ad44:	.4byte 0x06014C00
_0800ad48:	.4byte 0x80000080
_0800ad4c:	.4byte 0x080d5a38
_0800ad50:	.4byte 0x06016400
_0800ad54:	.4byte 0x080cc7e8
_0800ad58:	.4byte 0x06017740
_0800ad5c:	.4byte 0x80000030
_0800ad60:	.4byte 0x0807f190
_0800ad64:	.4byte 0x06006800
_0800ad68:	.4byte 0x80000200
_0800ad6c:	.4byte 0x080c7bcc
_0800ad70:	.4byte 0x06006C00
_0800ad74:	.4byte 0x80000400
_0800ad78:	.4byte 0x080c87cc
_0800ad7c:	.4byte 0x06007400
_0800ad80:	.4byte 0x80000600
_0800ad84:	.4byte 0x000011F4

_0800ad88:
	ldr		r0, _0800ae54
	mov		r8, r0
	mov		r5, #0x0
	ldr		r6, _0800ae58
	mov		r4, #0x3
_0800ad92:
	ldmia	r6!, { r0 }
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _0800ae5c
	add		r1, r5, r1
	bl		sub_08071b80
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r5, r5, r1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800ad92
_0800adb0:
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		sub_0802711c
	mov		r2, r9
	cmp		r2, #0x0
	beq		_0800adf4
	ldr		r4, _0800ae60
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800ae64
	ldr		r3, _0800ae68
	add		r0, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
_0800adf4:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800ae6c
	mov		r0, sp
	bl		sub_08071b68
	bl		sub_08029f34
	add		r4, r0, #0x0
	ldr		r5, _0800ae70
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0xa
	bl		sub_080281b0
	add		r2, r0, #0x0
	ldr		r3, _0800ae74
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08029ee4
	add		r0, r7, #0x0
	bl		sub_08008828
	mov		r0, r10
	ldr		r1, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08008b30
	ldr		r1, _0800ae78
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800ae48
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	bne		_0800ae84
_0800ae48:
	ldr		r2, _0800ae7c
	add		r0, r7, r2
	ldrh	r1, [r0, #0x0]
	ldr		r1, _0800ae80
	b		_0800ae8c

.incbin "base.gba", 0xAE52, 0x2

_0800ae54:	.4byte 0x08102bf8
_0800ae58:	.4byte 0x080f4ab0
_0800ae5c:	.4byte 0x02025400
_0800ae60:	.4byte 0x080caad4
_0800ae64:	.4byte 0x06002000
_0800ae68:	.4byte 0x80000400
_0800ae6c:	.4byte 0x01000140
_0800ae70:	.4byte 0x080cce6c
_0800ae74:	.4byte 0x80000100
_0800ae78:	.4byte 0x000011E4
_0800ae7c:	.4byte 0x000011FE
_0800ae80:	.4byte 0x00004684

_0800ae84:
	ldr		r1, _0800aee4
	add		r0, r7, r1
	ldrh	r1, [r0, #0x0]
	ldr		r1, _0800aee8
_0800ae8c:
	strh	r1, [r0, #0x0]
	ldr		r2, _0800aeec
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800aef0
	strh	r0, [r1, #0x0]
	ldr		r0, _0800aef4
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800aef8
	strh	r0, [r1, #0x0]
	sub		r2, #0x8
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800aefc
	strh	r0, [r1, #0x0]
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0800af08
	add		r2, #0x1a
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	mov		r0, #0xff
	strh	r0, [r1, #0x0]
	ldr		r0, _0800af00
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x10
	strh	r0, [r1, #0x0]
	sub		r2, #0x2e
	add		r1, r7, r2
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0800af04
	add		r1, r7, r0
	mov		r0, #0x50
	str		r0, [r1, #0x0]
	add		r2, #0x8
	add		r1, r7, r2
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	b		_0800af24

.incbin "base.gba", 0xAEE2, 0x2

_0800aee4:	.4byte 0x000011FE
_0800aee8:	.4byte 0x00004604
_0800aeec:	.4byte 0x00001204
_0800aef0:	.4byte 0x0000020B
_0800aef4:	.4byte 0x0000120A
_0800aef8:	.4byte 0x0000448E
_0800aefc:	.4byte 0x00001741
_0800af00:	.4byte 0x0000121A
_0800af04:	.4byte 0x000011EC

_0800af08:
	ldr		r0, [r7, #0x50]
	cmp		r0, #0x0
	bne		_0800af24
	ldr		r0, _0800af54
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	mov		r0, #0xbd
	lsl		r0, r0, #0x6
	strh	r0, [r1, #0x0]
	ldr		r2, _0800af58
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800af5c
	strh	r0, [r1, #0x0]
_0800af24:
	ldr		r0, _0800af60
	add		r1, r7, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r2, #0x90
	lsl		r2, r2, #0x5
	add		r1, r7, r2
	ldrh	r0, [r1, #0x0]
	mov		r2, #0x0
	ldr		r0, _0800af64
	strh	r0, [r1, #0x0]
	ldr		r1, _0800af68
	add		r0, r7, r1
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xAF52, 0x2

_0800af54:	.4byte 0x00001216
_0800af58:	.4byte 0x00001218
_0800af5c:	.4byte 0x00000A06
_0800af60:	.4byte 0x000011F8
_0800af64:	.4byte 0x0000FF60
_0800af68:	.4byte 0x00001202
	thumb_func_end sub_0800a8c8

	thumb_func_start sub_0800af6c
sub_0800af6c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x50
	mov		r8, r0
	str		r1, [sp, #0x18]
	mov		r7, #0xe7
	lsl		r7, r7, #0x3
	add		r7, r8
	mov		r0, #0x0
	str		r0, [sp, #0x1c]
	mov		r1, #0x0
	str		r1, [sp, #0x20]
	mov		r2, #0x0
	str		r2, [sp, #0x24]
	str		r1, [r7, #0x0]
	str		r1, [r7, #0x4]
	sub		r0, #0x1
	str		r0, [r7, #0x8]
	str		r1, [r7, #0xc]
	mov		r0, #0x1
	str		r0, [r7, #0x10]
	str		r1, [r7, #0x14]
	str		r1, [r7, #0x18]
	ldr		r0, _0800b000
	add		r0, r8
	str		r1, [r0, #0x0]
	mov		r0, #0xfd
	lsl		r0, r0, #0x3
	add		r0, r8
	str		r1, [r0, #0x0]
	ldr		r0, _0800b004
	add		r0, r8
	str		r1, [r0, #0x0]
	mov		r2, #0xfe
	lsl		r2, r2, #0x3
	add		r2, r8
	mov		r0, #0xa0
	strh	r0, [r2, #0x0]
	ldr		r0, _0800b008
	add		r0, r8
	strh	r1, [r0, #0x0]
	ldr		r0, _0800b00c
	add		r0, r8
	str		r1, [r0, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x3
	add		r0, r8
	str		r1, [r0, #0x0]
	mov		r1, #0x60
	ldr		r3, [sp, #0x18]
	cmp		r3, #0x0
	beq		_0800afdc
	mov		r1, #0x5e
_0800afdc:
	ldr		r0, _0800b010
	add		r0, r8
	strh	r1, [r0, #0x0]
	ldr		r4, [sp, #0x18]
	cmp		r4, #0x0
	beq		_0800b02c
	mov		r6, r8
	ldr		r0, [r6, #0x10]
	cmp		r0, #0x0
	beq		_0800b018
	ldr		r0, _0800b014
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r2, #0x41
	cmp		r0, #0x0
	bne		_0800b02e
	mov		r2, #0x3c
	b		_0800b02e

_0800b000:	.4byte 0x000007E4
_0800b004:	.4byte 0x000007EC
_0800b008:	.4byte 0x000007F2
_0800b00c:	.4byte 0x000007F4
_0800b010:	.4byte 0x000007FC
_0800b014:	.4byte 0x000011E4

_0800b018:
	ldr		r0, _0800b028
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r2, #0x55
	cmp		r0, #0x0
	bne		_0800b02e
	mov		r2, #0x50
	b		_0800b02e

_0800b028:	.4byte 0x000011E4

_0800b02c:
	mov		r2, #0x30
_0800b02e:
	add		r3, r7, #0x0
	add		r3, #0xc6
	mov		r1, #0x0
	strh	r2, [r3, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xc8
	str		r1, [r0, #0x0]
	add		r2, r7, #0x0
	add		r2, #0xcc
	str		r1, [r2, #0x0]
	add		r0, #0x8
	str		r1, [r0, #0x0]
	mov		r1, #0x70
	str		r3, [sp, #0x2c]
	str		r2, [sp, #0x30]
	ldr		r0, [sp, #0x18]
	cmp		r0, #0x0
	beq		_0800b054
	mov		r1, #0x40
_0800b054:
	add		r0, r7, #0x0
	add		r0, #0xd4
	strh	r1, [r0, #0x0]
	str		r0, [sp, #0x34]
	ldr		r1, [sp, #0x18]
	cmp		r1, #0x0
	beq		_0800b078
	ldr		r0, _0800b074
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x6d
	cmp		r0, #0x0
	bne		_0800b07a
	mov		r1, #0x68
	b		_0800b07a

.incbin "base.gba", 0xB072, 0x2

_0800b074:	.4byte 0x000011E4

_0800b078:
	mov		r1, #0x58
_0800b07a:
	add		r3, r7, #0x0
	add		r3, #0xd6
	mov		r2, #0x0
	strh	r1, [r3, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xd8
	str		r2, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xdc
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xe0
	str		r2, [r0, #0x0]
	add		r0, #0x4
	str		r2, [r0, #0x0]
	add		r0, #0x4
	str		r2, [r0, #0x0]
	add		r1, #0x10
	mov		r0, #0x5
	str		r0, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xf0
	str		r2, [r0, #0x0]
	mov		r2, #0x64
	str		r3, [sp, #0x38]
	str		r1, [sp, #0x3c]
	ldr		r3, [sp, #0x18]
	cmp		r3, #0x0
	beq		_0800b0ba
	mov		r2, #0x68
_0800b0ba:
	add		r0, r7, #0x0
	add		r0, #0xf4
	strh	r2, [r0, #0x0]
	str		r0, [sp, #0x40]
	ldr		r4, [sp, #0x18]
	cmp		r4, #0x0
	beq		_0800b0dc
	ldr		r0, _0800b0d8
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r2, #0x65
	cmp		r0, #0x0
	bne		_0800b0de
	mov		r2, #0x60
	b		_0800b0de

_0800b0d8:	.4byte 0x000011E4

_0800b0dc:
	mov		r2, #0x40
_0800b0de:
	add		r4, r7, #0x0
	add		r4, #0xf6
	mov		r1, #0x0
	strh	r2, [r4, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xf8
	str		r1, [r0, #0x0]
	add		r0, #0x4
	str		r1, [r0, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r2, r7, r6
	mov		r0, #0x5
	str		r0, [r2, #0x0]
	mov		r2, #0x82
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	mov		r3, #0xa1
	lsl		r3, r3, #0x3
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	ldr		r6, _0800b1f4
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	mov		r2, #0xa2
	lsl		r2, r2, #0x3
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0xc
	add		r0, r7, r3
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	strh	r2, [r0, #0x0]
	add		r6, #0xa
	add		r0, r7, r6
	strh	r2, [r0, #0x0]
	mov		r2, #0xa3
	lsl		r2, r2, #0x3
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r6, #0xa
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	add		r2, #0xc
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0xc
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r6, #0xdc
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	add		r2, #0xdc
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0xdc
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r6, #0xc
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	sub		r2, #0xd4
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	sub		r3, #0xd4
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	sub		r6, #0xd4
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	add		r2, #0xc
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	mov		r0, r8
	bl		sub_08001fb4
	ldr		r1, _0800b1f8
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _0800b1fc
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, r8
	bl		sub_08002ce4
	mov		r3, r8
	str		r0, [r3, #0x1c]
	str		r0, [r7, #0x0]
	mov		r0, r8
	bl		sub_08002d3c
	mov		r6, r8
	str		r0, [r6, #0x20]
	str		r0, [r7, #0x4]
	mov		r0, r8
	ldr		r1, [sp, #0x18]
	bl		sub_0800a8c8
	mov		r0, r8
	bl		sub_08003170
	ldr		r1, [r6, #0x18]
	mov		r0, #0x7
	str		r0, [sp, #0x0]
	mov		r0, r8
	mov		r2, #0x0
	mov		r3, #0x1
	bl		sub_08005ed0
	ldr		r1, [r6, #0x10]
	str		r4, [sp, #0x44]
	cmp		r1, #0x3
	beq		_0800b210
	mov		r0, #0x2
	cmp		r1, #0x1
	beq		_0800b1d4
	ldr		r0, [r6, #0x14]
_0800b1d4:
	lsl		r0, r0, #0x2
	ldr		r1, _0800b200
	add		r1, r8
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0800b21e
	bl		sub_08029f34
	ldr		r1, _0800b204
	ldr		r2, _0800b208
	ldr		r3, _0800b20c
	bl		sub_08029ee4
	b		_0800b21e

.incbin "base.gba", 0xB1F2, 0x2

_0800b1f4:	.4byte 0x0000050C
_0800b1f8:	.4byte 0x06003000
_0800b1fc:	.4byte 0x06001000
_0800b200:	.4byte 0x0000111C
_0800b204:	.4byte 0x08098fb8
_0800b208:	.4byte 0x06008660
_0800b20c:	.4byte 0x80000100

_0800b210:
	bl		sub_08029f34
	ldr		r1, _0800b278
	ldr		r2, _0800b27c
	ldr		r3, _0800b280
	bl		sub_08029ee4
_0800b21e:
	ldr		r2, _0800b284
	add		r2, r8
	ldr		r3, _0800b288
	mov		r0, #0x88
	mov		r1, #0x20
	bl		sub_08003fc4
	mov		r0, sp
	add		r0, #0x10
	str		r0, [sp, #0x48]
	thumb_func_end sub_0800af6c

	non_word_aligned_thumb_func_start sub_0800b232
sub_0800b232:
	ldr		r0, _0800b28c
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800b23e
	bl		sub_0802983c
_0800b23e:
	bl		sub_0802711c
	mov		r1, #0xa6
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	mov		r2, #0x0
	str		r2, [r0, #0x0]
	ldr		r3, _0800b290
	add		r0, r7, r3
	str		r2, [r0, #0x0]
	mov		r4, #0xa7
	lsl		r4, r4, #0x3
	add		r0, r7, r4
	str		r2, [r0, #0x0]
	ldr		r1, _0800b294
	add		r1, r8
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r6, r8
	ldr		r0, [r6, #0x4c]
	add		r0, #0x1
	str		r0, [r6, #0x4c]
	ldr		r0, [r6, #0x10]
	cmp		r0, #0x0
	bne		_0800b298
	mov		r0, #0x1
	str		r0, [r7, #0xc]
	b		_0800b29a

.align 2, 0
_0800b278:	.4byte 0x080991b8
_0800b27c:	.4byte 0x06008660
_0800b280:	.4byte 0x80000100
_0800b284:	.4byte 0x00000D88
_0800b288:	.4byte 0x080f4ba8
_0800b28c:	.4byte 0x0203EEB8
_0800b290:	.4byte 0x00000534
_0800b294:	.4byte 0x000011F4

_0800b298:
	str		r2, [r7, #0xc]
_0800b29a:
	mov		r0, r8
	bl		sub_08008910
	cmp		r0, #0x0
	bne		_0800b2ac
	mov		r0, r8
	bl		sub_0800393c
	b		sub_0800b232
_0800b2ac:
	ldr		r1, _0800b36c
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800b39c
	ldr		r0, _0800b370
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800b2f6
	ldr		r0, _0800b374
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800b2d6
	mov		r2, r8
	ldr		r0, [r2, #0x4c]
	mov		r1, #0x2f
	and		r0, r1
	cmp		r0, #0x1f
	bgt		_0800b2e6
_0800b2d6:
	ldr		r0, _0800b378
	ldr		r1, _0800b37c
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0800b2e6:
	ldr		r0, _0800b380
	ldr		r1, _0800b384
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0800b2f6:
	mov		r0, r8
	bl		sub_08003170
	ldr		r1, _0800b388
	add		r1, r8
	mov		r0, #0x7
	bl		sub_08005d84
	mov		r0, r8
	bl		sub_08009568
	mov		r0, r8
	bl		sub_0800972c
	mov		r0, r8
	bl		sub_0800a17c
	mov		r0, r8
	bl		sub_08009f84
	mov		r0, r8
	ldr		r1, [sp, #0x18]
	bl		sub_080090fc
	mov		r0, r8
	bl		sub_0800393c
	ldr		r3, _0800b38c
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800b33c
	mov		r0, #0x1
	bl		sub_080281fc
_0800b33c:
	mov		r4, #0xa7
	lsl		r4, r4, #0x3
	add		r0, r7, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800b356
	bl		sub_08029f34
	ldr		r1, _0800b390
	ldr		r2, _0800b394
	ldr		r3, _0800b398
	bl		sub_08029ee4
_0800b356:
	add		r0, r7, #0x0
	add		r0, #0xb0
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0800b362
	b		sub_0800b232
_0800b362:
	ldr		r6, _0800b36c
	add		r0, r7, r6
	str		r1, [r0, #0x0]
	b		sub_0800b232

.incbin "base.gba", 0xB36A, 0x2

_0800b36c:	.4byte 0x000005FC
_0800b370:	.4byte 0x0000112C
_0800b374:	.4byte 0x000011E4
_0800b378:	.4byte 0x080e42b0
_0800b37c:	.4byte 0x080f4c34
_0800b380:	.4byte 0x080e42cc
_0800b384:	.4byte 0x080f4c38
_0800b388:	.4byte 0x00000D88
_0800b38c:	.4byte 0x00000534
_0800b390:	.4byte 0x02015400
_0800b394:	.4byte 0x06015000
_0800b398:	.4byte 0x80000600

_0800b39c:
	ldr		r0, _0800b414
	ldrh	r1, [r0, #0x0]
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	ldr		r0, _0800b418
	ldrh	r0, [r0, #0x0]
	ldr		r1, [sp, #0x48]
	strh	r0, [r1, #0x0]
	mov		r2, r8
	ldr		r3, [r2, #0x8]
	ldr		r5, [r2, #0x50]
	cmp		r3, #0x0
	ble		_0800b3ce
	mov		r2, #0x0
	add		r1, #0x2
	mov		r0, sp
	add		r0, #0xa
	add		r4, r3, #0x0
_0800b3c0:
	strh	r2, [r1, #0x0]
	strh	r2, [r0, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0800b3c0
_0800b3ce:
	ldr		r4, [sp, #0x1c]
	cmp		r4, #0x0
	blt		_0800b444
	cmp		r4, #0x2
	ble		_0800b3e0
	cmp		r4, #0x12
	bgt		_0800b444
	cmp		r4, #0xa
	blt		_0800b444
_0800b3e0:
	mov		r4, #0x0
	cmp		r4, r3
	bgt		_0800b444
	ldr		r2, [sp, #0x48]
_0800b3e8:
	mov		r1, #0x2
	ldr		r6, [sp, #0x1c]
	cmp		r6, #0xd
	bgt		_0800b3f2
	mov		r1, #0x1
_0800b3f2:
	ldrh	r0, [r2, #0x0]
	and		r1, r0
	cmp		r1, #0x0
	beq		_0800b43c
	ldr		r0, [sp, #0x1c]
	cmp		r0, #0x2
	bgt		_0800b422
	mov		r1, r8
	ldr		r0, [r1, #0x10]
	cmp		r0, #0x3
	beq		_0800b40e
	ldr		r2, [sp, #0x18]
	cmp		r2, #0x0
	beq		_0800b41c
_0800b40e:
	mov		r4, #0x5
	str		r4, [sp, #0x24]
	b		_0800b432

_0800b414:	.4byte 0x030052C8
_0800b418:	.4byte 0x03005220

_0800b41c:
	mov		r6, #0x3
	str		r6, [sp, #0x24]
	b		_0800b432
_0800b422:
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [sp, #0x24]
	ldr		r1, [sp, #0x1c]
	cmp		r1, #0xd
	bgt		_0800b432
	mov		r2, #0x64
	str		r2, [sp, #0x24]
_0800b432:
	mov		r4, #0x13
	str		r4, [sp, #0x1c]
	mov		r6, #0x0
	str		r6, [sp, #0x20]
	b		_0800b444
_0800b43c:
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, r3
	ble		_0800b3e8
_0800b444:
	cmp		r5, #0x0
	beq		_0800b460
	mov		r0, #0x0
	mov		r1, r8
	str		r0, [r1, #0x50]
	ldr		r0, [r1, #0x10]
	mov		r2, #0x3
	str		r2, [sp, #0x24]
	cmp		r0, #0x3
	bne		_0800b45c
	mov		r4, #0x5
	str		r4, [sp, #0x24]
_0800b45c:
	mov		r6, #0x14
	str		r6, [sp, #0x1c]
_0800b460:
	ldr		r0, [sp, #0x1c]
	cmp		r0, #0x15
	bls		_0800b46a
	bl		sub_0800c3c6
_0800b46a:
	lsl		r0, r0, #0x2
	ldr		r1, _0800b474
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0800b474:	.4byte 0x0800b478
_0800b478:	.4byte 0x0800b4d0

.incbin "base.gba", 0xB47C, 0x4C
_0800b4c8:	.4byte 0x0800c1e6

.incbin "base.gba", 0xB4CC, 0x4
	thumb_func_end sub_0800b232


.incbin "base.gba", 0xB4D0, 0xC42

_0800c112:

.incbin "base.gba", 0xC112, 0xD4

_0800c1e6:

.incbin "base.gba", 0xC1E6, 0x24
_0800c20a:

.incbin "base.gba", 0xC20A, 0x6
_0800c210:

.incbin "base.gba", 0xC210, 0x1A
_0800c22a:

.incbin "base.gba", 0xC22A, 0x24
_0800c24e:

.incbin "base.gba", 0xC24E, 0x6
_0800c254:	.4byte 0x00001216
_0800c258:	.4byte 0x0000121A

_0800c25c:

.incbin "base.gba", 0xC25C, 0x24
_0800c280:	.4byte 0x00001216
_0800c284:	.4byte 0x0000121A

_0800c288:

.incbin "base.gba", 0xC288, 0x8
_0800c290:

.incbin "base.gba", 0xC290, 0x20
_0800c2b0:

.incbin "base.gba", 0xC2B0, 0xC
_0800c2bc:	.4byte 0x080f4b1c
_0800c2c0:	.4byte 0x080f4b80

_0800c2c4:

.incbin "base.gba", 0xC2C4, 0xA
_0800c2ce:

.incbin "base.gba", 0xC2CE, 0x10
_0800c2de:

.incbin "base.gba", 0xC2DE, 0x3A
_0800c318:

.incbin "base.gba", 0xC318, 0xC
_0800c324:

.incbin "base.gba", 0xC324, 0xA
_0800c32e:

.incbin "base.gba", 0xC32E, 0x8
_0800c336:

.incbin "base.gba", 0xC336, 0xE
_0800c344:	.4byte 0x0000050C
_0800c348:	.4byte 0x000011E8

.incbin "base.gba", 0xC34C, 0x7A
	non_word_aligned_thumb_func_start sub_0800c3c6 
sub_0800c3c6:
	mov		r0, r8
	bl		sub_08003170
	cmp		r0, #0x0
	beq		_0800c3da
	mov		r0, #0xa7
	lsl		r0, r0, #0x3
	add		r1, r7, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_0800c3da:
	mov		r0, r8
	bl		sub_08008cec
	ldr		r1, _0800c590
	add		r1, r8
	mov		r0, #0x7
	bl		sub_08005d84
	mov		r0, r8
	bl		sub_08009c5c
	mov		r0, r8
	bl		sub_08009568
	mov		r0, r8
	bl		sub_0800972c
	mov		r0, r8
	bl		sub_0800a17c
	mov		r0, r8
	bl		sub_08009f84
	mov		r0, r8
	ldr		r1, [sp, #0x18]
	bl		sub_080090fc
	mov		r2, #0xe7
	lsl		r2, r2, #0x3
	add		r2, r8
	mov		r1, r8
	ldr		r0, [r1, #0x10]
	cmp		r0, #0x0
	bne		_0800c456
	mov		r0, #0xfd
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bne		_0800c456
	mov		r1, #0xc6
	lsl		r1, r1, #0x4
	add		r1, r8
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x40
	ble		_0800c456
	str		r3, [r1, #0x0]
	ldr		r1, [r2, #0x4]
	add		r1, #0x1
	mov		r0, #0x3
	and		r1, r0
	str		r1, [r2, #0x4]
	ldr		r2, [r2, #0x0]
	lsl		r2, r2, #0x2
	add		r2, r2, r1
	ldr		r1, _0800c594
	mov		r0, #0x2
	str		r0, [r1, #0x0]
	ldr		r0, _0800c598
	str		r2, [r0, #0x0]
_0800c456:
	ldr		r0, [r7, #0x8]
	ldr		r2, [r7, #0x4]
	cmp		r0, r2
	bne		_0800c466
	ldr		r1, [r7, #0xc]
	ldr		r0, [r7, #0x10]
	cmp		r1, r0
	beq		_0800c478
_0800c466:
	mov		r0, r8
	add		r1, r2, #0x0
	mov		r2, #0x0
	bl		sub_08008f7c
	ldr		r0, [r7, #0x4]
	str		r0, [r7, #0x8]
	ldr		r0, [r7, #0xc]
	str		r0, [r7, #0x10]
_0800c478:
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	mov		r3, #0xb0
	lsl		r3, r3, #0x1
	add		r2, r2, r3
	ldr		r0, _0800c59c
	add		r1, r0, #0x0
	add		r1, #0x20
	mov		r4, r8
	ldr		r3, [r4, #0x4c]
	mov		r4, #0x10
	str		r4, [sp, #0x0]
	bl		sub_08005ddc
	ldr		r5, _0800c5a0
	add		r5, r8
	ldrh	r0, [r5, #0x0]
	mov		r6, #0x0
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	ldr		r4, _0800c5a4
	add		r4, r8
	ldrh	r1, [r4, #0x0]
	ldr		r0, _0800c5a8
	and		r0, r1
	ldrh	r1, [r4, #0x0]
	strh	r0, [r4, #0x0]
	mov		r0, r8
	ldr		r3, [r0, #0x10]
	cmp		r3, #0x3
	beq		_0800c4f6
	ldr		r0, _0800c5ac
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800c4f6
	ldr		r1, [r7, #0x0]
	mov		r2, #0x2
	cmp		r3, #0x1
	beq		_0800c4d0
	mov		r3, r8
	ldr		r2, [r3, #0x14]
_0800c4d0:
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	add		r0, r0, r2
	lsl		r0, r0, #0x2
	ldr		r1, _0800c5b0
	add		r1, r8
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0800c4f6
	ldrh	r0, [r5, #0x0]
	ldr		r0, _0800c5b4
	strh	r0, [r5, #0x0]
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x40
	orr		r1, r0
	ldrh	r0, [r4, #0x0]
	orr		r1, r6
	strh	r1, [r4, #0x0]
_0800c4f6:
	mov		r6, r8
	ldr		r4, [r6, #0x10]
	cmp		r4, #0x1
	bne		_0800c51e
	mov		r1, #0xa6
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800c51e
	ldr		r1, [r7, #0x0]
	lsl		r1, r1, #0x2
	ldr		r0, [r7, #0x4]
	add		r1, r1, r0
	mov		r0, r8
	bl		sub_08008de4
	ldr		r2, _0800c5b8
	add		r0, r7, r2
	str		r4, [r0, #0x0]
_0800c51e:
	mov		r0, r8
	bl		sub_08009970
	mov		r0, r8
	bl		sub_0800393c
	mov		r0, r8
	bl		sub_08003924
	cmp		r0, #0x0
	beq		_0800c5cc
	ldr		r0, _0800c5bc
	ldr		r5, _0800c5c0
	str		r0, [r5, #0x4]
	ldr		r0, _0800c5c4
	str		r0, [r5, #0x0]
	mov		r4, #0x0
	str		r4, [r5, #0x8]
	mov		r0, #0x1
	strb	r0, [r5, #0xe]
	bl		sub_0802a130
	mov		r0, #0x0
	bl		sub_08028130
	strh	r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldrb	r1, [r5, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800c578
	add		r4, r5, #0x0
	mov		r5, #0x2
_0800c56a:
	bl		sub_0802711c
	ldrb	r1, [r4, #0xc]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0800c56a
_0800c578:
	ldr		r1, _0800c5c8
	add		r1, r8
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_0800c24e

.incbin "base.gba", 0xC582, 0xE

.align 2, 0
_0800c590:	.4byte 0x00000D88
_0800c594:	.4byte 0x0203EEB8
_0800c598:	.4byte 0x0203EEBC
_0800c59c:	.4byte 0x080ce084
_0800c5a0:	.4byte 0x0000122C
_0800c5a4:	.4byte 0x000011FE
_0800c5a8:	.4byte 0x0000FFBF
_0800c5ac:	.4byte 0x000011E4
_0800c5b0:	.4byte 0x000010A4
_0800c5b4:	.4byte 0x00002222
_0800c5b8:	.4byte 0x00000534
_0800c5bc:	.4byte 0x0802A1FD
_0800c5c0:	.4byte 0x030052F0
_0800c5c4:	.4byte 0x0802A239
_0800c5c8:	.4byte 0x0000109C

_0800c5cc:
	ldr		r3, _0800c600
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800c5dc
	mov		r0, #0x1
	bl		sub_080281fc
_0800c5dc:
	mov		r4, #0xa7
	lsl		r4, r4, #0x3
	add		r0, r7, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800c5ec
	bl		sub_0800b232
_0800c5ec:
	bl		sub_08029f34
	ldr		r1, _0800c604
	ldr		r2, _0800c608
	ldr		r3, _0800c60c
	bl		sub_08029ee4
	bl		sub_0800b232
	
	.2byte	0x0
	
_0800c600:
	lsl		r4, r6, #0x14
		
	.2byte	0x0
	
_0800c604:
	strb	r0, [r0, r0]
	lsl		r1, r0, #0x8
_0800c608:
	str		r0, [r0, r0]
	lsl		r1, r0, #0x18
_0800c60c:
	lsl		r0, r0, #0x18
	strh	r0, [r0, #0x0]
_0800c610:
	add		sp, #0x50
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	sub		sp, #0x4
	mov		r1, sp
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x31
	bhi		_0800c63c
_0800c630:
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x31
	bls		_0800c630
_0800c63c:
	ldr		r2, _0800c664
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0800c668
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	strh	r0, [r2, #0x0]
	ldr		r3, _0800c66c
	ldrh	r1, [r3, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r1
	strh	r0, [r3, #0x0]
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0800c670
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		sp, #0x4
	bx		lr

.incbin "base.gba", 0xC662, 0x2

_0800c664:	.4byte 0x04000008
_0800c668:	.4byte 0x0000FF7F
_0800c66c:	.4byte 0x0400004C
_0800c670:	.4byte 0x0000FFBF
	thumb_func_end sub_0800c3c6

	thumb_func_start sub_0800c674
sub_0800c674:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	lsl		r7, r3, #0xc
	add		r2, sp, #0x4
	add		r3, sp, #0x8
	mov		r1, sp
	bl		sub_08048958
	ldr		r2, [sp, #0x0]
	mov		r0, #0xf
	mov		r10, r0
	mov		r3, #0xf
	and		r2, r3
	ldr		r0, [sp, #0x4]
	lsr		r1, r0, #0x4
	mov		r5, r10
	and		r1, r5
	and		r0, r3
	mov		r5, #0xb
	add		r5, r5, r4
	mov		r9, r5
	add		r0, r0, r4
	mov		r8, r0
	add		r1, r1, r4
	mov		r12, r1
	add		r5, r4, #0x0
	add		r5, #0xa
	add		r1, r4, r2
	ldr		r0, [sp, #0x8]
	lsr		r2, r0, #0x4
	mov		r0, r10
	and		r2, r0
	ldr		r0, [sp, #0x8]
	and		r3, r0
	str		r3, [sp, #0xC]
	mov		r3, #0x1
	mov		r10, r3
_0800c6ce:
	add		r0, r7, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
	add		r0, r7, #0x0
	orr		r0, r5
	strh	r0, [r6, #0x2]
	add		r0, r7, #0x0
	mov		r3, r12
	orr		r0, r3
	strh	r0, [r6, #0x4]
	add		r0, r7, #0x0
	mov		r3, r8
	orr		r0, r3
	strh	r0, [r6, #0x6]
	add		r0, r7, #0x0
	mov		r3, r9
	orr		r0, r3
	strh	r0, [r6, #0x8]
	add		r0, r4, r2
	orr		r0, r7
	strh	r0, [r6, #0xa]
	ldr		r3, [sp, #0xC]
	add		r0, r4, r3
	orr		r0, r7
	strh	r0, [r6, #0xc]
	mov		r0, #0x20
	add		r9, r0
	add		r8, r0
	add		r12, r0
	add		r5, #0x20
	add		r6, #0x40
	add		r1, #0x20
	add		r4, #0x20
	mov		r3, #0x1
	neg		r3, r3
	add		r10, r3
	mov		r0, r10
	cmp		r0, #0x0
	bge		_0800c6ce
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0800c674

	thumb_func_start sub_0800c72c
sub_0800c72c:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _0800c8d4
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r6, _0800c8d8
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c8dc
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r2, r5, r1
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c8e0
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r3, #0xc0
	lsl		r3, r3, #0x6
	add		r2, r5, r3
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	bl		sub_08029f34
	ldr		r1, _0800c8e4
	mov		r3, #0xb0
	lsl		r3, r3, #0x7
	add		r2, r5, r3
	ldr		r3, _0800c8e8
	mov		r9, r3
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800c8ec
	mov		r3, #0xc8
	lsl		r3, r3, #0x7
	add		r2, r5, r3
	ldr		r3, _0800c8f0
	mov		r8, r3
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800c8f4
	mov		r3, #0xd8
	lsl		r3, r3, #0x7
	add		r2, r5, r3
	ldr		r6, _0800c8f8
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c8fc
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xe8
	lsl		r1, r1, #0x7
	add		r2, r5, r1
	add		r1, r4, #0x0
	mov		r3, r9
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0800c900
	mov		r2, #0xf0
	lsl		r2, r2, #0x7
	add		r5, r5, r2
	ldr		r3, _0800c904
	add		r2, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c908
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c90c
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c910
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c914
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c918
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c91c
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c920
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c924
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c928
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c92c
	ldr		r3, _0800c930
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c934
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c938
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800c93c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800c940
	add		r1, r4, #0x0
	mov		r3, r9
	bl		sub_08029ee4
	bl		sub_0802711c
	bl		sub_0802711c
	ldr		r0, _0800c944
	ldr		r1, _0800c948
	bl		sub_08071b7c
	bl		sub_0802711c
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0800c8d4:	.4byte 0x080c558c
_0800c8d8:	.4byte 0x80000C00
_0800c8dc:	.4byte 0x080c5bc0
_0800c8e0:	.4byte 0x080c6300
_0800c8e4:	.4byte 0x080c87cc
_0800c8e8:	.4byte 0x80000600
_0800c8ec:	.4byte 0x080c7bcc
_0800c8f0:	.4byte 0x80000400
_0800c8f4:	.4byte 0x0807f190
_0800c8f8:	.4byte 0x80000200
_0800c8fc:	.4byte 0x0809301c
_0800c900:	.4byte 0x08080968
_0800c904:	.4byte 0x80000120
_0800c908:	.4byte 0x080ce26c
_0800c90c:	.4byte 0x06015C00
_0800c910:	.4byte 0x080ce43c
_0800c914:	.4byte 0x06016400
_0800c918:	.4byte 0x080ce524
_0800c91c:	.4byte 0x06016C00
_0800c920:	.4byte 0x080ce690
_0800c924:	.4byte 0x06017000
_0800c928:	.4byte 0x080ce8a8
_0800c92c:	.4byte 0x06017800
_0800c930:	.4byte 0x80000100
_0800c934:	.4byte 0x080ce918
_0800c938:	.4byte 0x06017C00
_0800c93c:	.4byte 0x080cecf4
_0800c940:	.4byte 0x06015000
_0800c944:	.4byte 0x080cec7c
_0800c948:	.4byte 0x06014C00
	thumb_func_end sub_0800c72c

	thumb_func_start sub_0800c94c
sub_0800c94c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r0, _0800ca14
	add		r7, r4, r0
	add		r4, r7, #0x0
	ldr		r0, _0800ca18
	ldr		r5, _0800ca1c
	add		r1, r5, #0x0
	bl		sub_08071b80
	ldr		r0, [r4, #0x24]
	cmp		r0, #0x0
	beq		_0800c98e
	mov		r2, #0x0
	add		r1, r5, #0x0
	add		r6, r1, #0x0
	add		r6, #0x2e
_0800c96e:
	lsl		r0, r2, #0x6
	add		r5, r2, #0x1
	add		r4, r0, r6
	add		r0, r0, r1
	add		r2, r0, #0x0
	add		r2, #0x32
	mov		r3, #0x3
_0800c97c:
	ldrh	r0, [r4, #0x0]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0800c97c
	add		r2, r5, #0x0
	cmp		r2, #0x1f
	ble		_0800c96e
_0800c98e:
	bl		sub_08029f34
	ldr		r4, _0800ca1c
	add		r1, r4, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _0800ca20
	bl		sub_08029ee4
	ldr		r0, [r7, #0x4]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800ca0e
	mov		r0, #0x0
	add		r6, r4, #0x0
	add		r6, #0x80
_0800c9b0:
	lsl		r1, r0, #0x7
	add		r7, r0, #0x1
	add		r0, r6, r1
	add		r4, r0, #0x0
	add		r4, #0xd8
	add		r3, r0, #0x0
	add		r3, #0x58
	add		r2, r0, #0x0
	add		r2, #0x98
	add		r1, r1, r6
	add		r1, #0x18
	mov		r5, #0x10
_0800c9c8:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	ldrh	r0, [r4, #0x0]
	strh	r0, [r3, #0x0]
	add		r4, #0x2
	add		r3, #0x2
	add		r2, #0x2
	add		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800c9c8
	add		r0, r7, #0x0
	cmp		r0, #0x6
	ble		_0800c9b0
	ldr		r0, _0800ca24
	add		r4, r0, #0x0
	sub		r4, #0xa8
	add		r3, r0, #0x0
	add		r3, #0x58
	add		r2, r0, #0x0
	sub		r2, #0xe8
	add		r1, r0, #0x0
	add		r1, #0x18
	mov		r5, #0x10
_0800c9f8:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	ldrh	r0, [r4, #0x0]
	strh	r0, [r3, #0x0]
	add		r4, #0x2
	add		r3, #0x2
	add		r2, #0x2
	add		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800c9f8
_0800ca0e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800ca14:	.4byte 0x00000D44
_0800ca18:	.4byte 0x0809583c
_0800ca1c:	.4byte 0x0200EC00
_0800ca20:	.4byte 0x80000400
_0800ca24:	.4byte 0x0200F000
	thumb_func_end sub_0800c94c

	thumb_func_start sub_0800ca28
sub_0800ca28:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	add		r4, r1, #0x0
	lsl		r5, r0, #0x6
	ldr		r6, _0800ca70
	add		r1, r5, r6
	cmp		r4, #0x4
	bgt		_0800ca52
	ldr		r2, _0800ca74
	add		r0, r4, r2
	ldr		r7, _0800ca78
	add		r2, r7, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r1, #0x40
	ldr		r7, _0800ca7c
	add		r0, r4, r7
	orr		r0, r2
	strh	r0, [r1, #0x0]
_0800ca52:
	add		r0, r6, #0x2
	add		r5, r5, r0
	mov		r6, #0xd8
	lsl		r6, r6, #0x2
	mov		r4, #0xc0
	lsl		r4, r4, #0x8
	mov		r0, #0x10
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800ca80
	mov		r1, #0x0
	sub		r6, #0xa0
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	b		_0800ca96

_0800ca70:	.4byte 0x0200F402
_0800ca74:	.4byte 0x00000321
_0800ca78:	.4byte 0xFFFFF000
_0800ca7c:	.4byte 0x00000341

_0800ca80:
	mov		r0, #0x7
	and		r0, r3
	bl		sub_0800ebfc
	mov		r1, #0x2
	cmp		r0, #0x3
	beq		_0800ca96
	add		r1, r0, #0x0
	cmp		r1, #0x2
	bne		_0800ca96
	mov		r1, #0x3
_0800ca96:
	lsl		r1, r1, #0x2
	add		r1, r6, r1
	add		r0, r4, #0x0
	orr		r0, r1
	strh	r0, [r5, #0x0]
	add		r0, r1, #0x1
	orr		r0, r4
	strh	r0, [r5, #0x2]
	add		r2, r5, #0x0
	add		r2, #0x40
	add		r0, r1, #0x2
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x42
	add		r1, #0x3
	orr		r4, r1
	strh	r4, [r0, #0x0]
	ldr		r0, [sp, #0x0+0x18]
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, r8
	lsl		r1, r2, #0x6
	ldr		r2, _0800cadc
	add		r1, r1, r2
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800cadc:	.4byte 0x0200F408
	thumb_func_end sub_0800ca28

	thumb_func_start sub_0800cae0
sub_0800cae0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r1, _0800cbf4
	add		r5, r0, r1
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	ldr		r4, _0800cbf8
	ldr		r2, _0800cbfc
	add		r0, sp, #0x4
	add		r1, r4, #0x0
	bl		sub_08071b68
	mov		r6, #0x0
	ldr		r2, _0800cc00
	add		r7, r2, #0x0
	ldr		r0, _0800cc04
	add		r2, r0, #0x0
	ldr		r1, _0800cc08
	add		r3, r1, #0x0
	add		r1, r4, #0x0
	add		r1, #0x82
	add		r4, #0x42
_0800cb14:
	add		r0, r6, r7
	orr		r0, r2
	strh	r0, [r4, #0x0]
	add		r0, r6, r3
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r4, #0x2
	add		r6, #0x1
	cmp		r6, #0x6
	ble		_0800cb14
	ldr		r0, _0800cc0c
	mov		r6, #0x0
	ldr		r2, [r5, #0x0]
	mov		r9, r2
	ldr		r2, [r5, #0x4]
	ldr		r5, [r5, #0x24]
	mov		r10, r5
	mov		r7, #0xcd
	lsl		r7, r7, #0x2
	mov		r8, r7
	ldr		r1, _0800cc04
	add		r4, r1, #0x0
	add		r7, #0x20
	add		r5, r7, #0x0
	add		r3, r0, #0x0
	add		r3, #0x40
	add		r1, r0, #0x0
_0800cb4c:
	mov		r7, r8
	add		r0, r6, r7
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		r0, r6, r5
	orr		r0, r4
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	add		r1, #0x2
	add		r6, #0x1
	cmp		r6, #0x5
	ble		_0800cb4c
	add		r9, r2
	mov		r0, r9
	cmp		r0, #0x0
	bge		_0800cb6e
	add		r0, #0x3
_0800cb6e:
	asr		r1, r0, #0x2
	mov		r0, #0x3
	mov		r2, r9
	and		r0, r2
	mov		r7, r10
	cmp		r7, #0x0
	bne		_0800cc10
	mov		r6, #0x0
	lsl		r0, r0, #0x5
	str		r0, [sp, #0x8]
	lsl		r1, r1, #0x7
	mov		r10, r1
	mov		r8, r0
	mov		r7, r10
	mov		r0, #0x3
	str		r0, [sp, #0x10]
_0800cb8e:
	bl		sub_08057370
	lsl		r4, r6, #0x2
	add		r0, r7, r0
	add		r0, r8
	add		r0, r4, r0
	add		r0, #0x64
	ldrb	r5, [r0, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r4, r4, r0
	add		r4, #0x64
	ldrh	r0, [r4, #0x2]
	str		r0, [sp, #0x0]
	ldr		r0, [sp, #0x10]
	add		r1, r6, #0x0
	mov		r2, r9
	add		r3, r5, #0x0
	bl		sub_0800ca28
	ldr		r1, [sp, #0x10]
	add		r1, #0x2
	str		r1, [sp, #0x10]
	add		r6, #0x1
	cmp		r6, #0x4
	ble		_0800cb8e
	bl		sub_08057370
	add		r0, r10
	ldr		r2, [sp, #0x8]
	add		r0, r2, r0
	add		r0, #0x78
	ldrb	r4, [r0, #0x0]
	bl		sub_08057370
	add		r0, r10
	ldr		r7, [sp, #0x8]
	add		r0, r7, r0
	add		r0, #0x78
	ldrh	r0, [r0, #0x2]
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r1, #0x5
	mov		r2, r9
	add		r3, r4, #0x0
	bl		sub_0800ca28
	b		_0800cc90

.incbin "base.gba", 0xCBF2, 0x2

_0800cbf4:	.4byte 0x00000D44
_0800cbf8:	.4byte 0x0200F400
_0800cbfc:	.4byte 0x01000200
_0800cc00:	.4byte 0x0000032D
_0800cc04:	.4byte 0xFFFFF000
_0800cc08:	.4byte 0x0000034D
_0800cc0c:	.4byte 0x0200F742

_0800cc10:
	mov		r6, #0x0
	lsl		r0, r0, #0x5
	str		r0, [sp, #0x8]
	lsl		r1, r1, #0x7
	mov		r10, r1
	mov		r8, r0
	mov		r7, r10
	mov		r0, #0x3
	str		r0, [sp, #0xC]
_0800cc22:
	bl		sub_08057370
	lsl		r4, r6, #0x2
	add		r0, r7, r0
	add		r0, r8
	add		r0, r4, r0
	mov		r1, #0xb9
	lsl		r1, r1, #0x2
	add		r0, r0, r1
	ldrb	r5, [r0, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r4, r4, r0
	mov		r2, #0xb9
	lsl		r2, r2, #0x2
	add		r4, r4, r2
	ldrh	r0, [r4, #0x2]
	str		r0, [sp, #0x0]
	ldr		r0, [sp, #0xC]
	add		r1, r6, #0x0
	mov		r2, r9
	add		r3, r5, #0x0
	bl		sub_0800ca28
	ldr		r0, [sp, #0xC]
	add		r0, #0x2
	str		r0, [sp, #0xC]
	add		r6, #0x1
	cmp		r6, #0x4
	ble		_0800cc22
	bl		sub_08057370
	add		r0, r10
	ldr		r1, [sp, #0x8]
	add		r0, r1, r0
	mov		r4, #0xbe
	lsl		r4, r4, #0x2
	add		r0, r0, r4
	ldrb	r5, [r0, #0x0]
	bl		sub_08057370
	add		r0, r10
	ldr		r2, [sp, #0x8]
	add		r0, r2, r0
	add		r0, r0, r4
	ldrh	r0, [r0, #0x2]
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r1, #0x5
	mov		r2, r9
	add		r3, r5, #0x0
	bl		sub_0800ca28
_0800cc90:
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0800cae0

	thumb_func_start sub_0800cca0
sub_0800cca0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	add		r4, r0, #0x0
	str		r1, [sp, #0x10]
	str		r2, [sp, #0x14]
	ldr		r0, _0800ce48
	add		r4, r4, r0
	mov		r0, #0x0
	str		r0, [sp, #0xc]
	add		r0, sp, #0xc
	ldr		r5, _0800ce4c
	ldr		r2, _0800ce50
	add		r1, r5, #0x0
	bl		sub_08071b68
	ldr		r1, [r4, #0x0]
	ldr		r0, [r4, #0x4]
	add		r1, r1, r0
	mov		r10, r1
	mov		r2, #0x0
	mov		r1, #0xf0
	lsl		r1, r1, #0x2
	add		r6, r1, #0x0
	ldr		r7, _0800ce54
	add		r3, r7, #0x0
	ldr		r0, _0800ce58
	add		r4, r0, #0x0
	add		r1, r5, #0x0
	add		r1, #0xc4
	add		r5, #0x84
_0800cce4:
	add		r0, r2, r6
	orr		r0, r3
	strh	r0, [r5, #0x0]
	add		r0, r2, r4
	orr		r0, r3
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r5, #0x2
	add		r2, #0x1
	cmp		r2, #0x8
	ble		_0800cce4
	mov		r0, r10
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r8, r0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r8, r0
	beq		_0800cd96
	mov		r1, r8
	lsl		r4, r1, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	str		r0, [sp, #0x18]
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r9, r0
	add		r0, sp, #0x4
	bl		sub_08057950
	ldr		r0, _0800ce4c
	add		r3, sp, #0x4
	mov		r6, #0x1f
	mov		r12, r6
	mov		r7, #0xe2
	lsl		r7, r7, #0x1
	add		r2, r0, r7
	mov		r1, #0xc2
	lsl		r1, r1, #0x1
	add		r5, r0, r1
	mov		r4, #0x4
_0800cd50:
	ldrb	r0, [r3, #0x0]
	lsr		r1, r0, #0x5
	lsl		r1, r1, #0x6
	mov		r6, r12
	and		r0, r6
	add		r1, r1, r0
	mov		r0, #0xf0
	lsl		r0, r0, #0x8
	orr		r0, r1
	strh	r0, [r5, #0x0]
	add		r1, #0x20
	mov		r7, #0xf0
	lsl		r7, r7, #0x8
	orr		r1, r7
	strh	r1, [r2, #0x0]
	add		r3, #0x1
	add		r2, #0x2
	add		r5, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800cd50
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r0, #0x8
	mov		r1, #0x5
	mov		r2, #0x0
	ldr		r3, [sp, #0x18]
	bl		sub_0800ca28
	ldr		r1, [sp, #0x18]
	ldr		r6, [sp, #0x10]
	str		r1, [r6, #0x0]
	mov		r7, r8
	ldr		r0, [sp, #0x14]
	str		r7, [r0, #0x0]
_0800cd96:
	mov		r6, #0x0
_0800cd98:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080575e8
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r8, r0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r8, r0
	beq		_0800ce5c
	mov		r1, r8
	lsl		r0, r1, #0x18
	lsr		r5, r0, #0x18
	add		r0, r5, #0x0
	bl		sub_080578d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	asr		r4, r4, #0x18
	mov		r0, r10
	bl		sub_0802d690
	cmp		r4, r0
	bne		_0800ce5c
	add		r0, r5, #0x0
	bl		sub_08057850
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	str		r0, [sp, #0x18]
	add		r0, r5, #0x0
	bl		sub_08057878
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r9, r0
	add		r0, r5, #0x0
	add		r1, sp, #0x4
	bl		sub_080578a0
	ldr		r0, _0800ce4c
	add		r2, sp, #0x4
	mov		r6, #0xb1
	lsl		r6, r6, #0x2
	add		r0, r0, r6
	mov		r7, #0x1f
	mov		r12, r7
	mov		r1, #0xf
	lsl		r3, r1, #0xc
	add		r6, r0, #0x0
	add		r6, #0x40
	add		r5, r0, #0x0
	mov		r4, #0x4
_0800ce04:
	ldrb	r0, [r2, #0x0]
	lsr		r1, r0, #0x5
	lsl		r1, r1, #0x6
	mov		r7, r12
	and		r0, r7
	add		r1, r1, r0
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r5, #0x0]
	add		r1, #0x20
	orr		r1, r3
	strh	r1, [r6, #0x0]
	add		r2, #0x1
	add		r6, #0x2
	add		r5, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800ce04
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r0, #0xd
	mov		r1, #0x5
	mov		r2, #0x0
	ldr		r3, [sp, #0x18]
	bl		sub_0800ca28
	ldr		r1, [sp, #0x18]
	ldr		r6, [sp, #0x10]
	str		r1, [r6, #0x4]
	mov		r7, r8
	ldr		r0, [sp, #0x14]
	str		r7, [r0, #0x4]
	b		_0800ce62

.incbin "base.gba", 0xCE46, 0x2

_0800ce48:	.4byte 0x00000D44
_0800ce4c:	.4byte 0x0200F400
_0800ce50:	.4byte 0x01000200
_0800ce54:	.4byte 0xFFFFD000
_0800ce58:	.4byte 0x000003C9

_0800ce5c:
	add		r6, #0x1
	cmp		r6, #0x1
	ble		_0800cd98
_0800ce62:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xCE72, 0x2
	thumb_func_end sub_0800cca0

	thumb_func_start sub_0800ce74
sub_0800ce74:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r8, r0
	ldr		r0, _0800d02c
	add		r0, r8
	str		r0, [sp, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x13
	mov		r4, #0x7
_0800ce8e:
	bl		sub_08029f34
	ldr		r1, _0800d030
	add		r2, r5, #0x0
	ldr		r3, _0800d034
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r5, r5, r1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800ce8e
	mov		r0, r8
	bl		sub_080038ac
	ldr		r4, _0800d038
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r4, _0800d03c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r4, _0800d040
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x0
	bl		sub_08028130
	add		r4, r0, #0x0
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldr		r5, _0800d044
	ldr		r1, _0800d048
	add		r0, r5, #0x0
	bl		sub_0800c72c
	ldr		r0, _0800d04c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r6, _0800d050
	ldr		r7, _0800d054
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	add		r3, r7, #0x0
	bl		sub_08029ee4
	ldr		r4, _0800d058
	add		r4, r8
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0800cf60
	bl		sub_08029f34
	ldrb	r1, [r4, #0x0]
	add		r1, #0x5
	lsl		r1, r1, #0x5
	add		r1, r1, r5
	ldr		r3, _0800d05c
	add		r2, r6, #0x0
	bl		sub_08029ee4
_0800cf60:
	ldr		r4, _0800d060
	add		r4, r8
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0800cf7e
	bl		sub_08029f34
	ldrb	r1, [r4, #0x0]
	add		r1, #0xf
	lsl		r1, r1, #0x5
	add		r1, r1, r5
	ldr		r2, _0800d064
	ldr		r3, _0800d05c
	bl		sub_08029ee4
_0800cf7e:
	bl		sub_0802711c
	ldr		r0, _0800d068
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800d06c
	ldr		r3, _0800d070
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800d074
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800d078
	add		r1, r5, #0x0
	add		r3, r7, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800d07c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800d080
	ldr		r3, _0800d084
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0800d088
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800cfe8
	bl		sub_08029f34
	ldr		r1, _0800d08c
	ldr		r2, _0800d090
	ldr		r3, _0800d094
	bl		sub_08029ee4
_0800cfe8:
	bl		sub_0802711c
	mov		r7, #0x0
_0800cfee:
	lsl		r2, r7, #0x1
	add		r1, r2, r7
	lsl		r1, r1, #0x2
	ldr		r0, _0800d098
	add		r0, r8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r10, r2
	cmp		r0, #0x0
	beq		_0800d0a4
	lsl		r6, r7, #0x2
	add		r1, r7, #0x1
	str		r1, [sp, #0x4]
	lsl		r0, r7, #0x3
	add		r0, r0, r6
	lsl		r4, r0, #0x8
	ldr		r2, _0800d09c
	mov		r5, #0x3
_0800d012:
	add		r1, r4, r2
	ldr		r0, _0800d0a0
	str		r2, [sp, #0x8]
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	sub		r5, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r5, #0x0
	bge		_0800d012
	b		_0800d0d8

_0800d02c:	.4byte 0x00000D44
_0800d030:	.4byte 0x0203EEC4
_0800d034:	.4byte 0x81000C00
_0800d038:	.4byte 0x08092918
_0800d03c:	.4byte 0x080cdd3c
_0800d040:	.4byte 0x0809866c
_0800d044:	.4byte 0x0200C400
_0800d048:	.4byte 0x06008000
_0800d04c:	.4byte 0x080cf1f0
_0800d050:	.4byte 0x06017400
_0800d054:	.4byte 0x80000060
_0800d058:	.4byte 0x000011BC
_0800d05c:	.4byte 0x80000010
_0800d060:	.4byte 0x000011E2
_0800d064:	.4byte 0x06017460
_0800d068:	.4byte 0x080d766c
_0800d06c:	.4byte 0x06012400
_0800d070:	.4byte 0x80000200
_0800d074:	.4byte 0x080cf5d0
_0800d078:	.4byte 0x06007C00
_0800d07c:	.4byte 0x08098b0c
_0800d080:	.4byte 0x06004000
_0800d084:	.4byte 0x80000600
_0800d088:	.4byte 0x00001128
_0800d08c:	.4byte 0x08098fb8
_0800d090:	.4byte 0x06004660
_0800d094:	.4byte 0x80000100
_0800d098:	.4byte 0x000010AC
_0800d09c:	.4byte 0x02025400
_0800d0a0:	.4byte 0x080be378

_0800d0a4:
	mov		r5, #0x0
	lsl		r6, r7, #0x2
	add		r1, r7, #0x1
	str		r1, [sp, #0x4]
	ldr		r0, _0800d110
	mov		r9, r0
	lsl		r0, r7, #0x3
	add		r0, r0, r6
	lsl		r4, r0, #0x8
_0800d0b6:
	add		r0, r6, r5
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _0800d114
	add		r1, r4, r1
	bl		sub_08071b80
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800d0b6
_0800d0d8:
	bl		sub_0802711c
	mov		r1, r10
	add		r0, r1, r7
	lsl		r0, r0, #0x2
	ldr		r1, _0800d118
	add		r1, r8
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0800d124
	lsl		r0, r6, #0x1
	add		r0, r0, r6
	lsl		r4, r0, #0x8
	ldr		r6, _0800d11c
	mov		r5, #0x3
_0800d0f8:
	add		r1, r4, r6
	ldr		r0, _0800d120
	bl		sub_08071b80
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800d0f8
	b		_0800d150

.incbin "base.gba", 0xD10E, 0x2

_0800d110:	.4byte 0x08102bf8
_0800d114:	.4byte 0x02025400
_0800d118:	.4byte 0x000010E8
_0800d11c:	.4byte 0x02008400
_0800d120:	.4byte 0x080c07fc

_0800d124:
	mov		r5, #0x0
	ldr		r7, _0800d230
	lsl		r0, r6, #0x1
	add		r0, r0, r6
	lsl		r4, r0, #0x8
_0800d12e:
	add		r0, r6, r5
	bl		sub_0802d6a0
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _0800d234
	add		r1, r4, r1
	bl		sub_08071b80
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800d12e
_0800d150:
	bl		sub_0802711c
	ldr		r7, [sp, #0x4]
	cmp		r7, #0x4
	bgt		_0800d15c
	b		_0800cfee
_0800d15c:
	mov		r0, r8
	bl		sub_0800e468
	bl		sub_0802711c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r4, _0800d238
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x2
	bl		sub_080281b0
	add		r7, r0, #0x0
	mov		r1, #0x0
	ldr		r6, _0800d23c
	mov		r0, #0xb0
	lsl		r0, r0, #0x8
	add		r5, r0, #0x0
_0800d19e:
	lsl		r0, r1, #0x6
	add		r4, r1, #0x1
	add		r2, r7, r0
	mov		r3, #0xb
_0800d1a6:
	ldrh	r1, [r2, #0x0]
	add		r0, r6, #0x0
	and		r0, r1
	orr		r0, r5
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0800d1a6
	add		r1, r4, #0x0
	cmp		r1, #0x1
	ble		_0800d19e
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r4, _0800d240
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, r8
	bl		sub_0800c94c
	bl		sub_0802711c
	ldr		r4, _0800d244
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802711c
	mov		r0, r8
	bl		sub_0800cae0
	bl		sub_08029f34
	ldr		r1, _0800d248
	ldr		r2, _0800d24c
	ldr		r3, _0800d250
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r0, r8
	bl		sub_0800e4ec
	ldr		r1, [sp, #0x0]
	ldr		r0, [r1, #0x24]
	cmp		r0, #0x0
	bne		_0800d25c
	ldr		r0, _0800d254
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	ldr		r1, _0800d258
	b		_0800d264

_0800d230:	.4byte 0x08102bf8
_0800d234:	.4byte 0x02008400
_0800d238:	.4byte 0x0809538c
_0800d23c:	.4byte 0x00000FFF
_0800d240:	.4byte 0x0809583c
_0800d244:	.4byte 0x080995d8
_0800d248:	.4byte 0x0200F400
_0800d24c:	.4byte 0x06003000
_0800d250:	.4byte 0x80000400
_0800d254:	.4byte 0x000011FE
_0800d258:	.4byte 0x00004608

_0800d25c:
	ldr		r0, _0800d300
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	ldr		r1, _0800d304
_0800d264:
	strh	r1, [r0, #0x0]
	ldr		r1, _0800d308
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	mov		r2, #0x0
	ldr		r0, _0800d30c
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d310
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800d314
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d318
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	ldr		r0, _0800d31c
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d320
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	mov		r0, #0xff
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d324
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x10
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d328
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	mov		r0, #0xfa
	lsl		r0, r0, #0x5
	strh	r0, [r1, #0x0]
	ldr		r1, _0800d32c
	add		r1, r8
	mov		r0, #0x3
	str		r0, [r1, #0x0]
	mov		r0, #0x90
	lsl		r0, r0, #0x5
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d330
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d334
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d338
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d33c
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d340
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d344
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldr		r0, _0800d348
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800d300:	.4byte 0x000011FE
_0800d304:	.4byte 0x00004604
_0800d308:	.4byte 0x00001204
_0800d30c:	.4byte 0x00004404
_0800d310:	.4byte 0x0000120A
_0800d314:	.4byte 0x0000400A
_0800d318:	.4byte 0x00001210
_0800d31c:	.4byte 0x00000207
_0800d320:	.4byte 0x00001216
_0800d324:	.4byte 0x0000121A
_0800d328:	.4byte 0x000011FC
_0800d32c:	.4byte 0x000011F8
_0800d330:	.4byte 0x00001202
_0800d334:	.4byte 0x00001206
_0800d338:	.4byte 0x00001208
_0800d33c:	.4byte 0x0000120C
_0800d340:	.4byte 0x0000120E
_0800d344:	.4byte 0x00001212
_0800d348:	.4byte 0x00001214
	thumb_func_end sub_0800ce74

	thumb_func_start sub_0800d34c
sub_0800d34c:
	push	{ r4, lr }
	ldr		r1, _0800d388
	add		r2, r0, r1
	ldr		r0, [r2, #0x28]
	add		r0, #0x1
	str		r0, [r2, #0x28]
	cmp		r0, #0x7
	ble		_0800d36c
	mov		r1, #0x0
	str		r1, [r2, #0x28]
	ldr		r0, [r2, #0x2c]
	add		r0, #0x1
	str		r0, [r2, #0x2c]
	cmp		r0, #0x6
	ble		_0800d36c
	str		r1, [r2, #0x2c]
_0800d36c:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r2, #0x4]
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_0800d378
	add		r0, #0x3
_0800d378:
	asr		r0, r0, #0x2
	cmp		r0, #0x4
	bhi		_0800d40a
	lsl		r0, r0, #0x2
	ldr		r1, _0800d38c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0800d388:	.4byte 0x00000D44
_0800d38c:	.4byte 0x0800d390
_0800d390:	.4byte 0x0800d3a4

.incbin "base.gba", 0xD394, 0x10
	thumb_func_end sub_0800d34c


.incbin "base.gba", 0xD3A4, 0x66

_0800d40a:

.incbin "base.gba", 0xD40A, 0x12
	thumb_func_start sub_0800d41c
sub_0800d41c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	ldr		r0, _0800d524
	add		r6, r4, r0
	mov		r0, #0xee
	mov		r8, r0
	mov		r0, #0x60
	mov		r9, r0
	ldr		r5, [r6, #0x4]
	cmp		r5, #0x0
	beq		_0800d48a
	ldrh	r0, [r6, #0x20]
	add		r0, #0xee
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, _0800d528
	ldr		r2, [sp, #0x8]
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r1, [r4, #0x4c]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	ldr		r1, _0800d52c
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800d45e
	add		r0, #0x3f
_0800d45e:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	asr		r0, r0, #0xf
	add		r0, #0x60
	lsl		r0, r0, #0x10
	ldr		r1, _0800d530
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r0, _0800d534
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800d48a:
	mov		r7, #0xc
	cmp		r5, r7
	beq		_0800d4d0
	ldrh	r0, [r6, #0x20]
	add		r0, r8
	mov		r2, #0x0
	add		r1, sp, #0x8
	strh	r0, [r1, #0x0]
	ldr		r1, [r4, #0x4c]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	ldr		r1, _0800d52c
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800d4ac
	add		r0, #0x3f
_0800d4ac:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	neg		r0, r0
	asr		r0, r0, #0xf
	add		r0, r9
	add		r1, sp, #0x8
	strh		r0, [r1, #0x2]
	ldr		r0, _0800d538
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800d4d0:
	ldrh	r0, [r6, #0x20]
	add		r0, r8
	mov		r4, #0x0
	add		r1, sp, #0x8
	strh	r0, [r1, #0x0]
	mov		r0, #0x2c
	mul		r0, r5
	add		r1, r7, #0x0
	bl		sub_0807d80c
	sub		r0, #0x16
	add		r0, r9
	add		r5, sp, #0x8
	strh		r0, [r5, #0x2]
	ldr		r0, _0800d53c
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, r5, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldrh	r0, [r6, #0x20]
	add		r0, r8
	add		r1, sp, #0x8
	strh	r0, [r1, #0x0]
	mov		r0, r9
	strh		r0, [r5, #0x2]
	ldr		r0, _0800d540
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800d524:	.4byte 0x00000D44
_0800d528:	.4byte 0xffff0000
_0800d52c:	.4byte 0x08101068
_0800d530:	.4byte 0x0000FFFF
_0800d534:	.4byte 0x080e4764
_0800d538:	.4byte 0x080e476c
_0800d53c:	.4byte 0x080e4584
_0800d540:	.4byte 0x080e4554
	thumb_func_end sub_0800d41c

	thumb_func_start sub_0800d544
sub_0800d544:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	mov		r9, r0
	ldr		r4, _0800d5d8
	add		r4, r9
	mov		r7, #0x0
	mov		r0, sp
	add		r0, #0x8
	str		r0, [sp, #0xC]
_0800d55e:
	ldr		r0, [r4, #0x4]
	add		r0, r0, r7
	mov		r10, r0
	bl		sub_08057370
	mov		r1, r10
	lsl		r2, r1, #0x2
	add		r1, r2, r1
	lsl		r1, r1, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r1, r1, r3
	add		r0, r0, r1
	ldrb	r0, [r0, #0xb]
	mov		r3, #0x1
	and		r3, r0
	ldr		r0, _0800d5dc
	add		r0, r9
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800d626
	ldr		r2, [sp, #0x8]
	ldr		r0, _0800d5e0
	and		r2, r0
	mov		r0, #0xd0
	orr		r2, r0
	lsl		r0, r7, #0x14
	mov		r1, #0xc0
	lsl		r1, r1, #0xd
	add		r0, r0, r1
	ldr		r1, _0800d5e4
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r0, [sp, #0xC]
	ldrh	r1, [r0, #0x0]
	ldrh	r0, [r4, #0x20]
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r0, _0800d5e0
	and		r0, r2
	orr		r0, r1
	asr		r1, r0, #0x10
	ldrh	r2, [r4, #0x22]
	add		r1, r1, r2
	lsl		r1, r1, #0x10
	ldr		r2, _0800d5e4
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x8]
	cmp		r3, #0x0
	beq		_0800d5f8
	ldr		r0, [r4, #0x0]
	cmp		r7, r0
	beq		_0800d5ec
	ldr		r0, [r4, #0x30]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d5e8
	b		_0800d612

_0800d5d8:	.4byte 0x00000D44
_0800d5dc:	.4byte 0x00001130
_0800d5e0:	.4byte 0xffff0000
_0800d5e4:	.4byte 0x0000FFFF
_0800d5e8:	.4byte 0x080f4d04

_0800d5ec:
	ldr		r0, [r4, #0x38]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d5f4
	b		_0800d612

_0800d5f4:	.4byte 0x080f4cf4

_0800d5f8:
	ldr		r0, [r4, #0x0]
	cmp		r7, r0
	beq		_0800d60c
	ldr		r0, [r4, #0x30]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d608
	b		_0800d612

.incbin "base.gba", 0xD606, 0x2

_0800d608:	.4byte 0x080f4c64

_0800d60c:
	ldr		r0, [r4, #0x38]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d66c
_0800d612:
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800d626:
	mov		r5, #0x0
	add		r3, r7, #0x1
	str		r3, [sp, #0x10]
	add		r6, sp, #0x8
	lsl		r0, r7, #0x4
	add		r0, #0x18
	mov		r8, r0
_0800d634:
	lsl		r0, r5, #0x2
	mov		r1, #0x8e
	lsl		r1, r1, #0x5
	add		r1, r9
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0800d692
	ldr		r0, _0800d670
	add		r0, r9
	add		r0, r0, r5
	ldrb	r0, [r0, #0x0]
	cmp		r0, r10
	bne		_0800d692
	ldrh	r0, [r4, #0x20]
	add		r0, #0xe0
	strh	r0, [r6, #0x0]
	ldrh	r0, [r4, #0x22]
	add		r0, r8
	strh		r0, [r6, #0x2]
	ldr		r0, [r4, #0x0]
	cmp		r7, r0
	beq		_0800d678
	ldr		r0, [r4, #0x30]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d674
	b		_0800d67e

.incbin "base.gba", 0xD66A, 0x2

_0800d66c:	.4byte 0x080f4c54
_0800d670:	.4byte 0x000011C8
_0800d674:	.4byte 0x080f4cb4

_0800d678:
	ldr		r0, [r4, #0x38]
	lsl		r0, r0, #0x3
	ldr		r1, _0800d6b0
_0800d67e:
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800d692:
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0800d634
	ldr		r7, [sp, #0x10]
	cmp		r7, #0x7
	bgt		_0800d6a0
	b		_0800d55e
_0800d6a0:
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800d6b0:	.4byte 0x080f4ca4
	thumb_func_end sub_0800d544

	thumb_func_start sub_0800d6b4
sub_0800d6b4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x50
	mov		r10, r0
	ldr		r7, _0800d6fc
	add		r7, r10
	mov		r0, #0x0
	str		r0, [sp, #0x28]
	mov		r1, #0x0
	str		r1, [sp, #0x2c]
	mov		r2, #0x0
	str		r2, [sp, #0x30]
	mov		r3, #0x0
	str		r3, [sp, #0x34]
	mov		r4, #0x0
	str		r4, [sp, #0x38]
	str		r0, [r7, #0x8]
	ldr		r0, _0800d700
	ldr		r6, _0800d704
	add		r0, r0, r6
	ldrb	r0, [r0, #0x0]
	bl		sub_0802d6e0
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x6
	ble		_0800d70e
	cmp		r1, #0x13
	bne		_0800d708
	mov		r0, #0x7
	str		r0, [r7, #0x0]
	b		_0800d710

.incbin "base.gba", 0xD6FA, 0x2

_0800d6fc:	.4byte 0x00000D44
_0800d700:	.4byte 0x030031A0
_0800d704:	.4byte 0x00000801

_0800d708:
	mov		r0, #0x6
	str		r0, [r7, #0x0]
	b		_0800d710
_0800d70e:
	str		r1, [r7, #0x0]
_0800d710:
	ldr		r0, [r7, #0x0]
	sub		r0, r1, r0
	str		r0, [r7, #0x4]
	mov		r0, #0x0
	str		r0, [r7, #0x10]
	str		r0, [r7, #0x14]
	str		r0, [r7, #0x18]
	ldr		r1, _0800d7dc
	strh	r1, [r7, #0x1c]
	strh	r0, [r7, #0x1e]
	strh	r0, [r7, #0x20]
	strh	r0, [r7, #0x22]
	str		r0, [r7, #0x28]
	str		r0, [r7, #0x2c]
	str		r0, [r7, #0x30]
	str		r0, [r7, #0x34]
	str		r0, [r7, #0x38]
	str		r0, [r7, #0x3c]
	str		r0, [r7, #0x24]
	mov		r0, r10
	bl		sub_08001fb4
	ldr		r1, _0800d7e0
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _0800d7e4
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, r10
	bl		sub_0800ce74
	ldr		r0, [sp, #0x28]
	lsl		r0, r0, #0x2
	str		r0, [sp, #0x48]
	thumb_func_end sub_0800d6b4

	thumb_func_start sub_0800d758
sub_0800d758:
	ldr		r0, _0800d7e8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0800d764
	bl		sub_0802983c
_0800d764:
	bl		sub_0802711c
	ldr		r1, _0800d7ec
	add		r1, r10
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r1, r10
	ldr		r0, [r1, #0x4c]
	add		r0, #0x1
	str		r0, [r1, #0x4c]
	ldr		r1, [r7, #0x34]
	add		r1, #0x1
	str		r1, [r7, #0x34]
	ldr		r2, _0800d7f0
	ldr		r3, [r7, #0x30]
	lsl		r0, r3, #0x3
	add		r0, r0, r2
	ldrh	r0, [r0, #0x4]
	cmp		r1, r0
	ble		_0800d79c
	mov		r1, #0x0
	str		r1, [r7, #0x34]
	add		r0, r3, #0x1
	str		r0, [r7, #0x30]
	cmp		r0, #0x7
	bls		_0800d79c
	str		r1, [r7, #0x30]
_0800d79c:
	ldr		r0, [r7, #0x3c]
	add		r0, #0x1
	str		r0, [r7, #0x3c]
	ldr		r2, _0800d7f4
	ldr		r3, [r7, #0x38]
	lsl		r1, r3, #0x3
	add		r1, r1, r2
	ldrh	r1, [r1, #0x4]
	cmp		r0, r1
	ble		_0800d7be
	mov		r1, #0x0
	str		r1, [r7, #0x3c]
	add		r0, r3, #0x1
	str		r0, [r7, #0x38]
	cmp		r0, #0x1
	bls		_0800d7be
	str		r1, [r7, #0x38]
_0800d7be:
	ldr		r0, _0800d7f8
	ldrh	r3, [r0, #0x0]
	ldr		r0, _0800d7fc
	ldrh	r4, [r0, #0x0]
	ldr		r2, [sp, #0x28]
	cmp		r2, #0x9
	bls		_0800d7d0
	bl		sub_0800e080
_0800d7d0:
	ldr		r0, _0800d800
	ldr		r6, [sp, #0x48]
	add		r0, r6, r0
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0xD7DA, 0x2

_0800d7dc:	.4byte 0x0000FF90
_0800d7e0:	.4byte 0x06002000
_0800d7e4:	.4byte 0x06001000
_0800d7e8:	.4byte 0x0203EEC8
_0800d7ec:	.4byte 0x000011F4
_0800d7f0:	.4byte 0x080f4c64
_0800d7f4:	.4byte 0x080f4c54
_0800d7f8:	.4byte 0x030052C8
_0800d7fc:	.4byte 0x03005220
_0800d800:	.4byte 0x0800d804
_0800d804:	.4byte 0x0800d82c

.incbin "base.gba", 0xD808, 0x24
	thumb_func_end sub_0800d758


.incbin "base.gba", 0xD82C, 0x13C
_0800d968:	.4byte 0x0800d97c

.incbin "base.gba", 0xD96C, 0x44

_0800d9b0:

.incbin "base.gba", 0xD9B0, 0xC
_0800d9bc:

.incbin "base.gba", 0xD9BC, 0x4
_0800d9c0:

.incbin "base.gba", 0xD9C0, 0x4
_0800d9c4:	.4byte 0xF01A2001
_0800d9c8:	.4byte 0x2002FBCF
_0800d9cc:	.4byte 0xFC16F01A
_0800d9d0:	.4byte 0x930A2302
_0800d9d4:	.4byte 0x940B2400

.incbin "base.gba", 0xD9D8, 0x138
_0800db10:	.4byte 0x0800db24

.incbin "base.gba", 0xDB14, 0x10

_0800db24:

.incbin "base.gba", 0xDB24, 0x8
_0800db2c:

.incbin "base.gba", 0xDB2C, 0x4
_0800db30:

.incbin "base.gba", 0xDB30, 0x4
_0800db34:

.incbin "base.gba", 0xDB34, 0x4
_0800db38:

.incbin "base.gba", 0xDB38, 0x4
_0800db3c:

.incbin "base.gba", 0xDB3C, 0x4
_0800db40:

.incbin "base.gba", 0xDB40, 0x2A2

_0800dde2:

.incbin "base.gba", 0xDDE2, 0x29E
	thumb_func_start sub_0800e080
sub_0800e080:
	ldrh	r2, [r7, #0x20]
	mov		r0, #0x90
	lsl		r0, r0, #0x5
	add		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r5, #0x0
	strh	r2, [r0, #0x0]
	ldrh	r0, [r7, #0x20]
	neg		r0, r0
	ldr		r1, _0800e18c
	add		r1, r10
	ldrh	r2, [r1, #0x0]
	strh	r0, [r1, #0x0]
	ldrh	r2, [r7, #0x22]
	ldr		r0, _0800e190
	add		r0, r10
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldrh	r0, [r7, #0x20]
	neg		r0, r0
	ldr		r1, _0800e194
	add		r1, r10
	ldrh	r2, [r1, #0x0]
	strh	r0, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	mov		r3, #0xb0
	lsl		r3, r3, #0x1
	add		r2, r2, r3
	ldr		r0, _0800e198
	add		r1, r0, #0x0
	add		r1, #0x20
	mov		r4, r10
	ldr		r3, [r4, #0x4c]
	mov		r4, #0x10
	str		r4, [sp, #0x0]
	bl		sub_08005ddc
	mov		r0, r10
	bl		sub_0800d34c
	mov		r0, r10
	bl		sub_0800d41c
	ldr		r0, _0800e19c
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800e128
	ldrh	r0, [r7, #0x20]
	add		r0, #0x9c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0x98
	lsl		r1, r1, #0x10
	orr		r0, r1
	str		r0, [sp, #0x18]
	ldr		r0, _0800e1a0
	add		r4, sp, #0x18
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r6, [sp, #0x30]
	cmp		r6, #0x0
	beq		_0800e128
	ldrh	r0, [r7, #0x20]
	add		r0, #0x80
	strh	r0, [r4, #0x0]
	mov		r0, #0x9
	strh	r0, [r4, #0x2]
	ldr		r0, _0800e1a4
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800e128:
	ldr		r0, [r7, #0x24]
	cmp		r0, #0x0
	bne		_0800e13a
	ldr		r0, [sp, #0x28]
	cmp		r0, #0x2
	beq		_0800e13a
	mov		r0, r10
	bl		sub_0800d544
_0800e13a:
	ldr		r1, [sp, #0x28]
	cmp		r1, #0x5
	beq		_0800e144
	cmp		r1, #0x9
	bne		_0800e1c8
_0800e144:
	ldr		r0, _0800e1a8
	ldr		r1, [sp, #0x1c]
	and		r1, r0
	mov		r0, #0x32
	orr		r1, r0
	str		r1, [sp, #0x1c]
	ldr		r2, _0800e1ac
	ldr		r3, [sp, #0x34]
	lsl		r0, r3, #0x1
	add		r0, r0, r2
	ldrh	r2, [r0, #0x0]
	lsl		r2, r2, #0x10
	ldr		r0, _0800e1b0
	and		r1, r0
	orr		r1, r2
	str		r1, [sp, #0x1c]
	mov		r4, r10
	ldr		r2, [r4, #0x4c]
	mov		r0, #0x10
	and		r2, r0
	cmp		r2, #0x0
	beq		_0800e1b8
	ldr		r0, _0800e1b4
	add		r1, sp, #0x1c
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0800e1c8

.incbin "base.gba", 0xE182, 0xA

_0800e18c:	.4byte 0x00001206
_0800e190:	.4byte 0x00001208
_0800e194:	.4byte 0x0000120C
_0800e198:	.4byte 0x080ce084
_0800e19c:	.4byte 0x0000112C
_0800e1a0:	.4byte 0x080e473c
_0800e1a4:	.4byte 0x080e4774
_0800e1a8:	.4byte 0xffff0000
_0800e1ac:	.4byte 0x080f4d54
_0800e1b0:	.4byte 0x0000FFFF
_0800e1b4:	.4byte 0x080e4898

_0800e1b8:
	ldr		r0, _0800e258
	add		r1, sp, #0x1c
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800e1c8:
	ldr		r6, [sp, #0x28]
	cmp		r6, #0x5
	beq		_0800e270
	cmp		r6, #0x9
	beq		_0800e270
	ldr		r0, [r7, #0x24]
	lsl		r1, r6, #0x2
	str		r1, [sp, #0x48]
	cmp		r0, #0x0
	bne		_0800e2ba
	ldr		r3, _0800e25c
	add		r3, r10
	mov		r5, #0x0
	ldr		r0, [r3, #0x24]
	cmp		r0, #0x0
	bne		_0800e23a
	ldr		r2, [r3, #0x4]
	ldr		r3, [r3, #0x0]
	add		r4, r2, r3
	mov		r12, r4
	lsl		r1, r4, #0x2
	ldr		r0, _0800e260
	add		r0, r10
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	neg		r0, r1
	orr		r0, r1
	lsr		r5, r0, #0x1f
	mov		r4, #0x0
	mov		r0, #0x8e
	lsl		r0, r0, #0x5
	add		r0, r10
	ldr		r1, [r0, #0x0]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_0800e21a
	ldr		r0, _0800e264
	add		r0, r10
	ldrb	r0, [r0, #0x0]
	cmp		r0, r12
	beq		_0800e238
_0800e21a:
	add		r4, #0x1
	cmp		r4, #0x1
	bgt		_0800e23a
	lsl		r0, r4, #0x2
	add		r0, r6, r0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800e21a
	ldr		r0, _0800e264
	add		r0, r10
	add		r0, r0, r4
	ldrb	r1, [r0, #0x0]
	add		r0, r2, r3
	cmp		r1, r0
	bne		_0800e21a
_0800e238:
	add		r5, #0x2
_0800e23a:
	str		r5, [sp, #0x38]
	cmp		r5, #0x0
	beq		_0800e2ba
	ldr		r0, _0800e268
	str		r0, [sp, #0x20]
	ldr		r0, _0800e26c
	add		r1, sp, #0x20
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0800e2ba

.incbin "base.gba", 0xE256, 0x2

_0800e258:	.4byte 0x080e48b4
_0800e25c:	.4byte 0x00000D44
_0800e260:	.4byte 0x00001130
_0800e264:	.4byte 0x000011C8
_0800e268:	.4byte 0x009A0028
_0800e26c:	.4byte 0x080e4860

_0800e270:
	ldr		r4, _0800e3c0
	ldrh	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0800e290
	mov		r2, #0x0
	mov		r0, #0x32
	add		r1, sp, #0x20
	strh	r0, [r1, #0x0]
	mov		r0, #0x41
	strh	r0, [r1, #0x2]
	ldr		r0, _0800e3c4
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0800e290:
	mov		r6, #0xa0
	lsl		r6, r6, #0x1
	add		r0, r4, r6
	ldrh	r0, [r0, #0x0]
	ldr		r1, [sp, #0x28]
	lsl		r1, r1, #0x2
	str		r1, [sp, #0x48]
	cmp		r0, #0x0
	beq		_0800e2ba
	mov		r2, #0x0
	mov		r0, #0x32
	add		r1, sp, #0x20
	strh	r0, [r1, #0x0]
	mov		r0, #0x69
	strh	r0, [r1, #0x2]
	ldr		r0, _0800e3c8
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0800e2ba:
	mov		r2, r10
	ldr		r0, [r2, #0x4c]
	ldr		r2, _0800e3cc
	lsl		r0, r0, #0x1b
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800e2ca
	add		r0, #0x3f
_0800e2ca:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0800e3d0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r9, r0
	mov		r0, #0x1
	bl		sub_08028130
	mov		r3, #0x0
	str		r3, [sp, #0x44]
	mov		r4, #0x1f
	mov		r12, r4
	mov		r6, #0x1f
	mov		r8, r6
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r1, r0, r1
	str		r1, [sp, #0x4c]
_0800e304:
	ldr		r0, _0800e3d4
	ldr		r2, [sp, #0x44]
	lsl		r1, r2, #0x1
	add		r0, r1, r0
	ldrh	r2, [r0, #0x0]
	mov		r5, r8
	and		r5, r2
	lsl		r2, r2, #0x10
	lsr		r4, r2, #0x15
	mov		r3, r12
	and		r4, r3
	lsr		r2, r2, #0x1a
	and		r2, r3
	ldr		r0, _0800e3d8
	add		r1, r1, r0
	ldrh	r1, [r1, #0x0]
	mov		r0, r8
	and		r0, r1
	lsl		r1, r1, #0x10
	lsr		r3, r1, #0x15
	mov		r6, r12
	and		r3, r6
	lsr		r1, r1, #0x1a
	and		r1, r6
	sub		r0, r0, r5
	mov		r6, r9
	mul		r6, r0
	add		r0, r6, #0x0
	asr		r0, r0, #0xf
	add		r5, r5, r0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	sub		r3, r3, r4
	mov		r0, r9
	mul		r0, r3
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r1, r1, r2
	mov		r0, r9
	mul		r0, r1
	asr		r0, r0, #0xf
	add		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r0, r8
	and		r5, r0
	and		r4, r0
	lsl		r4, r4, #0x5
	orr		r5, r4
	and		r2, r0
	lsl		r2, r2, #0xa
	orr		r5, r2
	ldr		r1, [sp, #0x4c]
	strh	r5, [r1, #0x0]
	add		r1, #0x2
	str		r1, [sp, #0x4c]
	ldr		r2, [sp, #0x44]
	add		r2, #0x1
	str		r2, [sp, #0x44]
	cmp		r2, #0x1
	ble		_0800e304
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r2, [r7, #0x24]
	cmp		r2, #0x0
	beq		_0800e392
	bl		sub_0800d758
_0800e392:
	ldr		r3, [sp, #0x28]
	cmp		r3, #0x2
	bne		_0800e39c
	bl		sub_0800d758
_0800e39c:
	ldrh	r0, [r7, #0x20]
	add		r0, #0xd8
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0xb0
	lsl		r1, r1, #0xc
	orr		r0, r1
	str		r0, [sp, #0x24]
	ldr		r0, _0800e3dc
	add		r1, sp, #0x24
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	bl		sub_0800d758
_0800e3c0:
.incbin "base.gba", 0xE3C0, 0x4
_0800e3c4:
	ldr		r0, sub_0800e468
	lsr		r6, r1, #0x20
_0800e3c8:
	mov		r4, r12
	lsr		r6, r1, #0x20
_0800e3cc:
	asr		r0, r5, #0x1
	lsr		r0, r2, #0x20
_0800e3d0:
	lsl		r7, r7, #0xf
		
	.2byte	0x0
	
_0800e3d4:
	ldr		r5, _0800e538
	lsr		r7, r1, #0x20
_0800e3d8:
	ldr		r5, _0800e54c
	lsr		r7, r1, #0x20
_0800e3dc:
	ldr		r1, _0800e4e0
	lsr		r6, r1, #0x20
	add		sp, #0x50
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0800e080

	thumb_func_start sub_0800e3f0
sub_0800e3f0:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	add		r5, r3, #0x0
	lsl		r2, r2, #0x10
	lsr		r3, r2, #0x10
	add		r4, r3, #0x0
	ldr		r1, [r7, #0x0]
	ldr		r0, [r6, #0x0]
	add		r2, r1, r0
	mov		r0, #0x40
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800e40e
	sub		r2, #0x1
_0800e40e:
	mov		r0, #0x80
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800e418
	add		r2, #0x1
_0800e418:
	mov		r0, #0x20
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800e422
	sub		r2, #0x8
_0800e422:
	mov		r0, #0x10
	and		r4, r0
	cmp		r4, #0x0
	beq		_0800e42c
	add		r2, #0x8
_0800e42c:
	cmp		r2, #0x0
	bge		_0800e432
	mov		r2, #0x0
_0800e432:
	sub		r0, r5, #0x1
	cmp		r2, r0
	ble		_0800e43a
	add		r2, r0, #0x0
_0800e43a:
	add		r0, r1, #0x1
	cmp		r2, r0
	bge		_0800e442
	sub		r1, r2, #0x1
_0800e442:
	add		r0, r1, #0x6
	cmp		r2, r0
	ble		_0800e44a
	sub		r1, r2, #0x6
_0800e44a:
	cmp		r1, #0x0
	bge		_0800e450
	mov		r1, #0x0
_0800e450:
	add		r3, r5, #0x0
	sub		r3, #0x8
	cmp		r1, r3
	ble		_0800e45a
	add		r1, r3, #0x0
_0800e45a:
	sub		r0, r2, r1
	str		r0, [r6, #0x0]
	str		r1, [r7, #0x0]
	add		r0, r0, r1
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0800e3f0

	thumb_func_start sub_0800e468
sub_0800e468:
	push	{ r4, r5, r6, lr }
	ldr		r1, _0800e4a0
	add		r6, r0, r1
	ldr		r0, [r6, #0x24]
	cmp		r0, #0x0
	bne		_0800e4b0
	mov		r4, #0x0
	ldr		r5, _0800e4a4
_0800e478:
	bl		sub_08029f34
	ldr		r2, [r6, #0x4]
	add		r2, r2, r4
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x8
	ldr		r2, _0800e4a8
	add		r1, r1, r2
	add		r2, r5, #0x0
	ldr		r3, _0800e4ac
	bl		sub_08029ee4
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	add		r4, #0x1
	cmp		r4, #0xb
	ble		_0800e478
	b		_0800e4da

_0800e4a0:	.4byte 0x00000D44
_0800e4a4:	.4byte 0x06005800
_0800e4a8:	.4byte 0x02025400
_0800e4ac:	.4byte 0x80000180

_0800e4b0:
	mov		r4, #0x0
	ldr		r5, _0800e4e0
_0800e4b4:
	bl		sub_08029f34
	ldr		r2, [r6, #0x4]
	add		r2, r2, r4
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x8
	ldr		r2, _0800e4e4
	add		r1, r1, r2
	add		r2, r5, #0x0
	ldr		r3, _0800e4e8
	bl		sub_08029ee4
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r5, r5, r1
	add		r4, #0x1
	cmp		r4, #0xb
	ble		_0800e4b4
_0800e4da:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0800e4e0:	.4byte 0x06005800
_0800e4e4:	.4byte 0x02008400
_0800e4e8:	.4byte 0x80000180
	thumb_func_end sub_0800e468

	thumb_func_start sub_0800e4ec
sub_0800e4ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r1, _0800e518
	add		r1, r1, r0
	mov		r8, r1
	mov		r4, #0x0
_0800e4fa:
	lsl		r2, r4, #0x1
	add		r2, #0x2
	mov		r0, #0x0
	mov		r1, #0xd
	bl		sub_080281b0
	mov		r12, r0
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r4, r0
	bne		_0800e51c
	mov		r5, #0xb0
	lsl		r5, r5, #0x8
	b		_0800e534

.incbin "base.gba", 0xE516, 0x2

_0800e518:	.4byte 0x00000D44

_0800e51c:
	mov		r0, r8
	ldr		r1, [r0, #0x4]
	add		r1, r4, r1
	mov		r0, #0x1
	and		r1, r0
	mov		r0, #0xa0
	lsl		r0, r0, #0x7
	cmp		r1, #0x0
	beq		_0800e532
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
_0800e532:
	add		r5, r0, #0x0
_0800e534:
	mov		r1, #0x0
	add		r6, r4, #0x1
_0800e538:
	ldr		r7, _0800e574
_0800e53a:
	lsl		r0, r1, #0x6
	add		r4, r1, #0x1
	mov		r1, r12
	add		r3, r1, r0
	mov		r2, #0xb
_0800e544:
	ldrh	r1, [r3, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	orr		r0, r5
_0800e54c:
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0800e544
	add		r1, r4, #0x0
	cmp		r1, #0x1
	ble		_0800e53a
	add		r4, r6, #0x0
	cmp		r4, #0x7
	ble		_0800e4fa
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xE572, 0x2

_0800e574:	.4byte 0x00000FFF
	thumb_func_end sub_0800e4ec

	thumb_func_start sub_0800e578
sub_0800e578:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r8, r2
	mov		r6, #0x0
	lsl		r7, r3, #0xc
	add		r5, r1, #0x0
	add		r5, #0x40
	add		r4, r1, #0x0
_0800e58e:
	mov		r1, r9
	add		r0, r1, r6
	ldrb	r0, [r0, #0x0]
	bl		sub_08013e10
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r0, r8
	add		r1, r7, #0x0
	orr		r1, r0
	strh	r1, [r4, #0x0]
	add		r0, #0x20
	orr		r0, r7
	strh	r0, [r5, #0x0]
	add		r5, #0x2
	add		r4, #0x2
	add		r6, #0x1
	cmp		r6, #0x4
	ble		_0800e58e
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0800e578

	thumb_func_start sub_0800e5c0
sub_0800e5c0:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r7, r2, #0x0
	lsl		r4, r3, #0xc
	mov		r0, #0x10
	and		r0, r5
	cmp		r0, #0x0
	beq		_0800e5dc
	mov		r1, #0x0
	ldr		r7, [sp, #0x0+0x14]
	ldr		r0, [sp, #0x4+0x14]
	lsl		r4, r0, #0xc
	b		_0800e5f4
_0800e5dc:
	mov		r0, #0x7
	and		r0, r5
	bl		sub_0800ebfc
	add		r5, r0, #0x0
	mov		r1, #0x2
	cmp		r5, #0x3
	beq		_0800e5f4
	add		r1, r5, #0x0
	cmp		r1, #0x2
	bne		_0800e5f4
	mov		r1, #0x3
_0800e5f4:
	lsl		r1, r1, #0x2
	add		r1, r7, r1
	add		r0, r4, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
	add		r0, r1, #0x1
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r2, r6, #0x0
	add		r2, #0x40
	add		r0, r1, #0x2
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x42
	add		r1, #0x3
	orr		r4, r1
	strh	r4, [r0, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xE61E, 0x2
	thumb_func_end sub_0800e5c0

	thumb_func_start sub_0800e620
sub_0800e620:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	mov		r8, r1
	add		r5, r2, #0x0
	ldr		r1, [sp, #0x0+0x18]
	lsl		r7, r3, #0xc
	mov		r0, #0x10
	and		r0, r4
	cmp		r0, #0x0
	beq		_0800e65c
	ldr		r0, [sp, #0x4+0x18]
	lsl		r0, r0, #0xc
	add		r3, r1, #0x0
	add		r3, #0x1b
	add		r1, #0x3b
	orr		r3, r0
	orr		r1, r0
	add		r0, r5, #0x0
	add		r0, #0x40
	mov		r4, #0x4
_0800e64c:
	strh	r3, [r2, #0x0]
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	add		r2, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800e64c
	b		_0800e6a8
_0800e65c:
	mov		r0, #0x7
	and		r0, r4
	bl		sub_0800ebfc
	add		r4, r0, #0x0
	ldr		r1, _0800e6b4
	lsl		r0, r4, #0x1
	add		r2, r0, r1
	add		r0, #0x1
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	add		r6, r5, #0x0
	add		r6, #0x40
	lsl		r0, r0, #0x5
	ldrb	r2, [r2, #0x0]
	add		r0, r0, r2
	mov		r4, #0x4
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
	add		r1, #0x40
	mov		r3, r8
	add		r2, r1, r3
	add		r3, r0, r3
_0800e68a:
	ldrh	r1, [r3, #0x0]
	add		r0, r7, #0x0
	orr		r0, r1
	strh	r0, [r5, #0x0]
	ldrh	r1, [r2, #0x0]
	add		r0, r7, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
	add		r6, #0x2
	add		r2, #0x2
	add		r3, #0x2
	add		r5, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800e68a
_0800e6a8:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xE6B2, 0x2

_0800e6b4:	.4byte 0x080f4d44
	thumb_func_end sub_0800e620

	thumb_func_start sub_0800e6b8
sub_0800e6b8:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	ldr		r0, [sp, #0x14]
	lsl		r0, r0, #0x5
	add		r3, r3, r0
	lsl		r3, r3, #0x1
	add		r5, r5, r3
	cmp		r2, #0x0
	ble		_0800e6fe
	mov		r0, #0x1f
	mov		r12, r0
	ldr		r0, [sp, #0x18]
	lsl		r6, r0, #0xc
	add		r4, r5, #0x0
	add		r4, #0x40
	add		r3, r5, #0x0
_0800e6da:
	ldrb	r0, [r7, #0x0]
	lsr		r1, r0, #0x5
	lsl		r1, r1, #0x6
	mov		r5, r12
	and		r0, r5
	add		r1, r1, r0
	add		r0, r6, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	add		r1, #0x20
	orr		r1, r6
	strh	r1, [r4, #0x0]
	add		r7, #0x1
	add		r4, #0x2
	add		r3, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0800e6da
_0800e6fe:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0800e6b8

	thumb_func_start sub_0800e704
sub_0800e704:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r0, _0800e770
	add		r3, r4, r0
	mov		r6, #0x0
	ldr		r0, [r3, #0x24]
	cmp		r0, #0x0
	bne		_0800e768
	ldr		r2, [r3, #0x4]
	ldr		r3, [r3, #0x0]
	add		r7, r2, r3
	lsl		r1, r7, #0x2
	ldr		r5, _0800e774
	add		r0, r4, r5
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	neg		r0, r1
	orr		r0, r1
	lsr		r6, r0, #0x1f
	mov		r5, #0x0
	mov		r1, #0x8e
	lsl		r1, r1, #0x5
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800e742
	add		r1, #0x8
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, r7
	beq		_0800e766
_0800e742:
	add		r5, #0x1
	cmp		r5, #0x1
	bgt		_0800e768
	lsl		r0, r5, #0x2
	mov		r7, #0x8e
	lsl		r7, r7, #0x5
	add		r1, r4, r7
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0800e742
	ldr		r1, _0800e778
	add		r0, r4, r1
	add		r0, r0, r5
	ldrb	r1, [r0, #0x0]
	add		r0, r2, r3
	cmp		r1, r0
	bne		_0800e742
_0800e766:
	add		r6, #0x2
_0800e768:
	add		r0, r6, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0800e770:	.4byte 0x00000D44
_0800e774:	.4byte 0x00001130
_0800e778:	.4byte 0x000011C8
	thumb_func_end sub_0800e704

	thumb_func_start sub_0800e77c
sub_0800e77c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	add		r4, r2, #0x0
	add		r5, r3, #0x0
	ldr		r1, [sp, #0x0+0x14]
	mov		r0, #0x0
	cmp		r1, #0xd
	bls		_0800e790
	b		_0800e9b0
_0800e790:
	lsl		r0, r1, #0x2
	ldr		r1, _0800e79c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0xE79A, 0x2

_0800e79c:	.4byte 0x0800e7a0
_0800e7a0:	.4byte 0x0800e7d8

.incbin "base.gba", 0xE7A4, 0x34
	thumb_func_end sub_0800e77c


.incbin "base.gba", 0xE7D8, 0x1D8

_0800e9b0:

.incbin "base.gba", 0xE9B0, 0x10
	thumb_func_start sub_0800e9c0
sub_0800e9c0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	mov		r8, r1
	ldr		r2, _0800ea10
	ldrb	r1, [r4, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	ldrb	r1, [r4, #0x1]
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r12, r0
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x3
	add		r0, r12
	ldr		r3, [r0, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_0800ea3c
	strb	r0, [r4, #0x4]
	ldr		r0, _0800ea14
	and		r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x2
	beq		_0800ea20
	cmp		r0, #0x2
	bgt		_0800ea18
	cmp		r0, #0x0
	blt		_0800ea36
	b		_0800ea1c

.incbin "base.gba", 0xEA0E, 0x2

_0800ea10:	.4byte 0x080f5298
_0800ea14:	.4byte 0xfffffcff

_0800ea18:
	cmp		r0, #0x3
	bne		_0800ea36
_0800ea1c:
	mov		r0, #0x0
	b		_0800ea34
_0800ea20:
	ldr		r2, _0800ea68
	ldrb	r1, [r4, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	ldrb	r1, [r4, #0x1]
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	sub		r0, #0x2
_0800ea34:
	strb	r0, [r4, #0x5]
_0800ea36:
	mov		r0, #0x0
	strb	r0, [r4, #0x8]
	strb	r0, [r4, #0x9]
_0800ea3c:
	ldrb	r6, [r4, #0x5]
	ldrb	r0, [r4, #0x4]
	add		r1, r0, #0x1
	strb	r1, [r4, #0x4]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r3
	ble		_0800eae2
	mov		r0, #0x0
	strb	r0, [r4, #0x4]
	ldrh	r7, [r4, #0x2]
	ldr		r0, _0800ea6c
	and		r0, r7
	lsl		r0, r0, #0x10
	asr		r5, r0, #0x10
	cmp		r5, #0x1
	beq		_0800ea9c
	cmp		r5, #0x1
	bgt		_0800ea70
	cmp		r5, #0x0
	beq		_0800ea76
	b		_0800eae2

_0800ea68:	.4byte 0x080f5238
_0800ea6c:	.4byte 0xfffffcff

_0800ea70:
	cmp		r5, #0x2
	beq		_0800eacc
	b		_0800eae2
_0800ea76:
	ldrb	r0, [r4, #0x5]
	add		r0, #0x1
	strb	r0, [r4, #0x5]
	ldrb	r3, [r4, #0x5]
	ldr		r2, _0800ea98
	ldrb	r1, [r4, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	ldrb	r1, [r4, #0x1]
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r3, r0
	blt		_0800eae2
	strb	r5, [r4, #0x5]
	b		_0800eae2

_0800ea98:	.4byte 0x080f5238

_0800ea9c:
	ldrb	r3, [r4, #0x5]
	ldr		r2, _0800eabc
	ldrb	r1, [r4, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	ldrb	r1, [r4, #0x1]
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r3, r0
	bge		_0800eac0
	add		r0, r3, #0x1
	b		_0800eae0

.incbin "base.gba", 0xEABA, 0x2

_0800eabc:	.4byte 0x080f5238

_0800eac0:
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r0, r2, #0x0
	orr		r0, r7
	strh	r0, [r4, #0x2]
	b		_0800eae2
_0800eacc:
	ldrb	r0, [r4, #0x5]
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_0800ead8
	sub		r0, #0x1
	b		_0800eae0
_0800ead8:
	strb	r1, [r4, #0x1]
	mov		r0, #0x0
	strh	r1, [r4, #0x2]
	strb	r0, [r4, #0x4]
_0800eae0:
	strb	r0, [r4, #0x5]
_0800eae2:
	ldrb	r2, [r4, #0x5]
	cmp		r6, r2
	bne		_0800eaf4
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0800eb14
_0800eaf4:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0800eb08
	lsl		r0, r2, #0x3
	add		r0, r12
	ldr		r0, [r0, #0x4]
	ldr		r1, [r4, #0x10]
	bl		sub_08071b7c
	b		_0800eb14
_0800eb08:
	lsl		r0, r2, #0x3
	add		r0, r12
	ldr		r0, [r0, #0x4]
	ldr		r1, [r4, #0x10]
	bl		sub_08071b80
_0800eb14:
	ldrb	r6, [r4, #0x9]
	mov		r1, #0x6
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x2
	beq		_0800eb28
	cmp		r0, #0x2
	ble		_0800eb56
	cmp		r0, #0x3
	beq		_0800eb48
	b		_0800eb56
_0800eb28:
	ldr		r0, _0800eb40
	ldrb	r1, [r4, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	sub		r0, #0x1
	cmp		r6, r0
	bge		_0800eb44
	add		r0, r6, #0x1
	strb	r0, [r4, #0x9]
	b		_0800eb56

.incbin "base.gba", 0xEB3E, 0x2

_0800eb40:	.4byte 0x080f5358

_0800eb44:
	mov		r0, #0x3
	b		_0800eb54
_0800eb48:
	cmp		r6, #0x0
	beq		_0800eb52
	sub		r0, r6, #0x1
	strb	r0, [r4, #0x9]
	b		_0800eb56
_0800eb52:
	mov		r0, #0x2
_0800eb54:
	strh	r0, [r4, #0x6]
_0800eb56:
	ldrb	r2, [r4, #0x9]
	cmp		r6, r2
	bne		_0800eb68
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0800ebce
_0800eb68:
	mov		r0, #0x6
	ldrsh	r1, [r4, r0]
	cmp		r1, #0x0
	blt		_0800ebce
	cmp		r1, #0x1
	bgt		_0800eb98
	ldr		r2, PTR_PTR_0800eb94
	lsl		r1, r1, #0x2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	add		r1, r1, r2
	ldr		r0, [r1, #0x0]
	ldr		r1, [r4, #0xc]
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	b		_0800ebce

.incbin "base.gba", 0xEB92, 0x2

PTR_PTR_0800eb94:	.4byte PTR_PTR_H_Reset_080f52f8

_0800eb98:
	cmp		r1, #0x3
	bgt		_0800ebce
	ldr		r1, PTR_PTR_0800ebe4
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, [r4, #0xc]
	mov		r2, #0xf
	bl		sub_08071b6c
	ldr		r1, _0800ebe8
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldrb	r1, [r4, #0x9]
	lsl		r1, r1, #0x1
	ldr		r0, [r0, #0x0]
	add		r0, r0, r1
	ldr		r1, [r4, #0xc]
	add		r1, #0x1e
	mov		r2, #0x1
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
_0800ebce:
	ldrh	r1, [r4, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r2, #0x0
	orr		r0, r1
	strh	r0, [r4, #0x2]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

PTR_PTR_0800ebe4:	.4byte PTR_PTR_H_Reset_080f52f8
_0800ebe8:	.4byte 0x080f5338
	thumb_func_end sub_0800e9c0

	thumb_func_start sub_0800ebec
sub_0800ebec:
	ldr		r1, _0800ebf8
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0xEBF6, 0x2

_0800ebf8:	.4byte 0x080f4d60
	thumb_func_end sub_0800ebec

	thumb_func_start sub_0800ebfc
sub_0800ebfc:
	ldr		r2, _0800ec0c
	mov		r1, #0x7
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0xEC0A, 0x2

_0800ec0c:	.4byte 0x080f4d80
	thumb_func_end sub_0800ebfc

	thumb_func_start sub_0800ec10
sub_0800ec10:
	ldr		r3, _0800ec24
	mov		r1, #0x0
	mov		r2, #0x0
_0800ec16:
	add		r0, r3, r1
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0xb3
	bls		_0800ec16
	bx		lr

.incbin "base.gba", 0xEC22, 0x2

_0800ec24:	.4byte 0x03000040
	thumb_func_end sub_0800ec10

	thumb_func_start sub_0800ec28
sub_0800ec28:
	ldr		r0, _0800ec2c
	bx		lr

_0800ec2c:	.4byte 0x03000040
	thumb_func_end sub_0800ec28

	thumb_func_start sub_0800ec30
sub_0800ec30:
	ldr		r0, _0800ec34
	bx		lr

_0800ec34:	.4byte 0x03000040
	thumb_func_end sub_0800ec30

	thumb_func_start sub_0800ec38
sub_0800ec38:
	ldr		r0, _0800ec3c
	bx		lr

_0800ec3c:	.4byte 0x03000040
	thumb_func_end sub_0800ec38

	thumb_func_start sub_0800ec40
sub_0800ec40:
	ldr		r0, _0800ec44
	bx		lr

_0800ec44:	.4byte 0x03000040
	thumb_func_end sub_0800ec40

	thumb_func_start sub_0800ec48
sub_0800ec48:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r7, r0, #0x0
	mov		r5, #0x0
	mov		r1, #0xa9
	lsl		r1, r1, #0x2
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bge		_0800ec72
	add		r6, r7, r1
	add		r4, r7, #0x0
	add		r4, #0x4c
_0800ec62:
	add		r0, r4, #0x0
	bl		sub_08003bac
	add		r4, #0x18
	add		r5, #0x1
	ldr		r0, [r6, #0x0]
	cmp		r5, r0
	blt		_0800ec62
_0800ec72:
	mov		r5, #0x0
	mov		r3, #0xa9
	lsl		r3, r3, #0x2
	add		r1, r7, r3
	ldr		r0, [r1, #0x0]
	cmp		r5, r0
	bge		_0800ecbe
	add		r6, r1, #0x0
_0800ec82:
	add		r4, r5, #0x1
	ldr		r0, [r6, #0x0]
	sub		r0, r0, r4
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x3
	add		r1, #0x4c
	add		r1, r7, r1
	ldrh	r2, [r1, #0x6]
	lsl		r2, r2, #0x10
	ldrh	r0, [r1, #0x4]
	orr		r0, r2
	str		r0, [sp, #0x8]
	ldr		r0, [r1, #0x0]
	mov		r5, #0x8
	ldrsh	r2, [r1, r5]
	mov		r5, #0xa
	ldrsh	r3, [r1, r5]
	mov		r5, #0xc
	ldrsh	r1, [r1, r5]
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	bl		sub_0802951c
	add		r5, r4, #0x0
	ldr		r0, [r6, #0x0]
	cmp		r5, r0
	blt		_0800ec82
_0800ecbe:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xECC6, 0x2
	thumb_func_end sub_0800ec48

	thumb_func_start sub_0800ecc8
sub_0800ecc8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	mov		r8, r0
	mov		r7, #0x0
	ldr		r0, _0800ed4c
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0800ece4
	b		_0800ef76
_0800ece4:
	ldr		r0, _0800ed50
	mov		r2, r8
	add		r2, #0x2c
	mov		r6, #0x3
_0800ecec:
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x1
	beq		_0800ecf6
	cmp		r1, #0x6
	bne		_0800ecf8
_0800ecf6:
	add		r7, #0x1
_0800ecf8:
	add		r2, #0x4
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0800ecec
	ldr		r0, [r0, #0x0]
	cmp		r0, #0xb4
	bgt		_0800ed08
	mov		r7, #0x0
_0800ed08:
	ldr		r1, _0800ed54
	add		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r0, r7
	beq		_0800ed82
	mov		r2, #0xfd
	lsl		r2, r2, #0x2
	add		r2, r8
	str		r7, [r1, #0x0]
	ldrh	r1, [r2, #0x4]
	mov		r0, #0x95
	lsl		r0, r0, #0x3
	add		r0, r8
	mov		r3, #0x0
	strh	r1, [r0, #0x0]
	ldrh	r1, [r2, #0x6]
	ldr		r0, _0800ed58
	add		r0, r8
	strh	r1, [r0, #0x0]
	strh	r3, [r2, #0x10]
	cmp		r7, #0x1
	bgt		_0800ed60
	str		r3, [sp, #0x8]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800ed5c
	add		r0, sp, #0x8
	bl		sub_08071b68
	b		_0800ed7c

_0800ed4c:	.4byte 0x000004AC
_0800ed50:	.4byte 0x0300014C
_0800ed54:	.4byte 0x000004A4
_0800ed58:	.4byte 0x000004AA
_0800ed5c:	.4byte 0x01000080

_0800ed60:
	ldr		r1, _0800ee2c
	sub		r0, r7, #0x2
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
_0800ed7c:
	mov		r0, #0x1
	bl		sub_080281fc
_0800ed82:
	cmp		r7, #0x1
	bgt		_0800ee3c
	mov		r7, #0xfd
	lsl		r7, r7, #0x2
	add		r7, r8
	ldrh	r0, [r7, #0x10]
	add		r0, #0x1
	strh	r0, [r7, #0x10]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x10
	bgt		_0800edd0
	mov		r1, #0x10
	ldrsh	r0, [r7, r1]
	ldr		r1, _0800ee30
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800edaa
	add		r0, #0x3f
_0800edaa:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	mov		r2, #0x95
	lsl		r2, r2, #0x3
	add		r2, r8
	mov		r5, #0x0
	ldrsh	r1, [r2, r5]
	mov		r0, #0x78
	sub		r0, r0, r1
	mul		r0, r3
	asr		r0, r0, #0xf
	ldrh	r2, [r2, #0x0]
	add		r0, r0, r2
	strh	r0, [r7, #0x4]
	mov		r0, #0x45
	strh	r0, [r7, #0x6]
_0800edd0:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r5, #0xfb
	lsl		r5, r5, #0x2
	add		r5, r8
	ldr		r2, [r5, #0x0]
	mov		r4, #0xb
	str		r4, [sp, #0x0]
	mov		r0, #0x80
	add		r1, r6, #0x0
	mov		r3, #0x10
	bl		sub_0800e77c
	mov		r9, r0
	ldr		r0, _0800ee34
	add		r0, r8
	mov		r2, #0x4
	ldrsh	r1, [r7, r2]
	mov		r3, #0x6
	ldrsh	r2, [r7, r3]
	mov		r3, r9
	bl		sub_08013a68
	ldr		r2, [r5, #0x0]
	str		r4, [sp, #0x0]
	mov		r0, #0x80
	add		r1, r6, #0x0
	mov		r3, #0x10
	bl		sub_0800e77c
	add		r3, r0, #0x0
	ldrh	r1, [r7, #0x6]
	lsl		r1, r1, #0x10
	ldrh	r0, [r7, #0x4]
	orr		r0, r1
	str		r0, [sp, #0xC]
	ldr		r0, _0800ee38
	add		r1, sp, #0xc
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	add		r2, r3, #0x0
	bl		sub_0802951c
	b		_0800ef76

.incbin "base.gba", 0xEE2A, 0x2

_0800ee2c:	.4byte 0x080f5404
_0800ee30:	.4byte 0x08101068
_0800ee34:	.4byte 0x00000484
_0800ee38:	.4byte 0x080e578c

_0800ee3c:
	mov		r6, #0x0
	cmp		r6, r7
	blt		_0800ee44
	b		_0800ef76
_0800ee44:
	ldr		r5, _0800eeb0
	mov		r10, r5
	ldr		r0, _0800eeb4
	mov		r9, r0
	mov		r4, #0xfe
	lsl		r4, r4, #0x2
	add		r4, r8
_0800ee52:
	ldr		r0, _0800eeb8
	sub		r1, r7, #0x2
	add		r1, r1, r0
	lsl		r0, r6, #0x4
	sub		r0, r0, r6
	lsl		r0, r0, #0x2
	ldrb	r1, [r1, #0x0]
	add		r3, r0, r1
	mov		r0, #0xa
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	beq		_0800eec6
	cmp		r6, #0x0
	bne		_0800eec0
	ldrh	r0, [r4, #0xc]
	add		r0, #0x1
	strh	r0, [r4, #0xc]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x10
	bgt		_0800eec6
	mov		r1, #0xc
	ldrsh	r0, [r4, r1]
	ldr		r1, _0800eebc
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800ee8c
	add		r0, #0x3f
_0800ee8c:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	mov		r1, #0x95
	lsl		r1, r1, #0x3
	add		r1, r8
	mov		r5, #0x0
	ldrsh	r0, [r1, r5]
	sub		r0, r3, r0
	mul		r0, r2
	asr		r0, r0, #0xf
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	strh	r0, [r4, #0x0]
	b		_0800eec2

.incbin "base.gba", 0xEEAE, 0x2

_0800eeb0:	.4byte 0xffff0000
_0800eeb4:	.4byte 0x0000FFFF
_0800eeb8:	.4byte 0x080f53d0
_0800eebc:	.4byte 0x08101068

_0800eec0:
	strh	r3, [r4, #0x0]
_0800eec2:
	mov		r0, #0x45
	strh	r0, [r4, #0x2]
_0800eec6:
	cmp		r6, #0x0
	bne		_0800eef4
	ldrh	r1, [r4, #0x0]
	ldr		r0, [sp, #0x10]
	mov		r2, r10
	and		r0, r2
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	add		r1, #0x10
	lsl		r1, r1, #0x10
	mov		r3, r9
	and		r0, r3
	orr		r0, r1
	str		r0, [sp, #0x10]
	ldr		r0, _0800ef50
	ldr		r0, [r0, #0x0]
	str		r6, [sp, #0x0]
	str		r6, [sp, #0x4]
	add		r1, sp, #0x10
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800eef4:
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, [sp, #0x14]
	mov		r5, r10
	and		r1, r5
	orr		r1, r0
	ldrh	r0, [r4, #0x2]
	add		r0, #0x1
	lsl		r0, r0, #0x10
	mov		r2, r9
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x14]
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _0800ef54
	add		r1, sp, #0x14
	mov		r2, #0xaa
	mov		r3, #0xcc
	bl		sub_0802951c
	ldrh	r1, [r4, #0x0]
	ldr		r0, [sp, #0x18]
	mov		r3, r10
	and		r0, r3
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	lsl		r1, r1, #0x10
	mov		r2, r9
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x18]
	cmp		r6, #0x0
	bne		_0800ef5c
	str		r6, [sp, #0x0]
	str		r6, [sp, #0x4]
	ldr		r0, _0800ef58
	add		r1, sp, #0x18
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0800ef6c

_0800ef50:	.4byte 0x080f53d4
_0800ef54:	.4byte 0x080f53fc
_0800ef58:	.4byte 0x080f53ec

_0800ef5c:
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _0800ef88
	add		r1, sp, #0x18
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0800ef6c:
	add		r4, #0x18
	add		r6, #0x1
	cmp		r6, r7
	bge		_0800ef76
	b		_0800ee52
_0800ef76:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xEF86, 0x2

_0800ef88:	.4byte 0x080f53f4
	thumb_func_end sub_0800ecc8

	thumb_func_start sub_0800ef8c
sub_0800ef8c:
	push	{ lr }
	sub		sp, #0xc
	ldr		r1, _0800efa8
	add		r3, r0, r1
	mov		r0, #0xe
	ldrsb	r0, [r3, r0]
	cmp		r0, #0x7
	bls		_0800ef9e
	b		_0800f0f0
_0800ef9e:
	lsl		r0, r0, #0x2
	ldr		r1, _0800efac
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0800efa8:	.4byte 0x00000454
_0800efac:	.4byte 0x0800efb0
_0800efb0:	.4byte 0x0800f0f0

.incbin "base.gba", 0xEFB4, 0x1C
	thumb_func_end sub_0800ef8c


.incbin "base.gba", 0xEFD0, 0x120

_0800f0f0:

.incbin "base.gba", 0xF0F0, 0x2C
_0800f11c:

.incbin "base.gba", 0xF11C, 0x8
	thumb_func_start sub_0800f124
sub_0800f124:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x0]
	add		r7, r1, #0x0
	add		r5, r2, #0x0
	add		r4, r3, #0x0
	ldr		r0, [sp, #0x0+0x2c]
	ldr		r1, [sp, #0x4+0x2c]
	lsl		r0, r0, #0xf
	bl		sub_0807d80c
	ldr		r2, _0800f20c
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0800f14e
	add		r0, #0x3f
_0800f14e:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0800f210
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	str		r0, [sp, #0x4]
	cmp		r4, #0x0
	ble		_0800f1fc
	mov		r0, #0x1f
	mov		r10, r0
	mov		r6, #0x1f
	mov		r9, r5
	mov		r8, r7
	ldr		r5, [sp, #0x0]
	str		r5, [sp, #0x8]
	mov		r12, r4
_0800f182:
	ldr		r7, [sp, #0x8]
	ldrh	r1, [r7, #0x0]
	add		r3, r6, #0x0
	and		r3, r1
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x15
	mov		r0, r10
	and		r4, r0
	lsr		r1, r1, #0x1a
	and		r1, r0
	mov		r5, r8
	ldrh	r2, [r5, #0x0]
	add		r0, r6, #0x0
	and		r0, r2
	lsl		r2, r2, #0x10
	lsr		r5, r2, #0x15
	mov		r7, r10
	and		r5, r7
	lsr		r2, r2, #0x1a
	and		r2, r7
	sub		r0, r0, r3
	ldr		r7, [sp, #0x4]
	mul		r0, r7
	asr		r0, r0, #0xf
	add		r3, r3, r0
	lsl		r3, r3, #0x10
	lsr		r3, r3, #0x10
	sub		r0, r5, r4
	mul		r0, r7
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r2, r2, r1
	add		r0, r2, #0x0
	mul		r0, r7
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	and		r3, r6
	and		r4, r6
	lsl		r4, r4, #0x5
	orr		r3, r4
	and		r1, r6
	lsl		r1, r1, #0xa
	orr		r3, r1
	mov		r0, r9
	strh	r3, [r0, #0x0]
	mov		r5, #0x2
	add		r9, r5
	add		r8, r5
	ldr		r7, [sp, #0x8]
	add		r7, #0x2
	str		r7, [sp, #0x8]
	mov		r0, #0x1
	neg		r0, r0
	add		r12, r0
	mov		r5, r12
	cmp		r5, #0x0
	bne		_0800f182
_0800f1fc:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800f20c:	.4byte 0x08101068
_0800f210:	.4byte 0x000003FF
	thumb_func_end sub_0800f124

	thumb_func_start sub_0800f214
sub_0800f214:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r7, r0, #0x0
	mov		r0, #0x1
	mov		r10, r0
	mov		r0, #0xb1
	lsl		r0, r0, #0x1
	mov		r9, r0
	ldr		r0, _0800f260
	str		r0, [sp, #0x8]
	mov		r0, #0x0
	mov		r8, r0
_0800f234:
	mov		r0, r10
	lsl		r1, r0, #0x2
	add		r0, r7, #0x0
	add		r0, #0x2c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x6
	bne		_0800f298
	add		r0, r7, #0x0
	add		r0, #0x3c
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	add		r1, r2, #0x1
	str		r1, [r0, #0x0]
	cmp		r1, #0x10
	bgt		_0800f268
	add		r5, r1, #0x0
	ldr		r6, _0800f260
	add		r6, r8
	ldr		r4, _0800f264
	b		_0800f272

.incbin "base.gba", 0xF25E, 0x2

_0800f260:	.4byte 0x080df05a
_0800f264:	.4byte 0x080df06e

_0800f268:
	add		r5, r2, #0x0
	sub		r5, #0xf
	ldr		r6, _0800f290
	add		r6, r8
	ldr		r4, _0800f294
_0800f272:
	add		r4, r8
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	add		r2, r9
	str		r5, [sp, #0x0]
	mov		r0, #0x10
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	mov		r3, #0x5
	bl		sub_0800f124
	b		_0800f2b4

_0800f290:	.4byte 0x080df06e
_0800f294:	.4byte 0x080df064

_0800f298:
	add		r0, r7, #0x0
	add		r0, #0x3c
	add		r0, r0, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, r9
	ldr		r0, [sp, #0x8]
	mov		r2, #0x5
	bl		sub_08071b6c
_0800f2b4:
	mov		r0, #0x20
	add		r9, r0
	ldr		r0, [sp, #0x8]
	add		r0, #0x20
	str		r0, [sp, #0x8]
	mov		r0, #0x20
	add		r8, r0
	mov		r0, #0x1
	add		r10, r0
	mov		r0, r10
	cmp		r0, #0x3
	ble		_0800f234
	ldr		r0, [r7, #0x30]
	cmp		r0, #0x6
	bne		_0800f314
	ldr		r0, [r7, #0x40]
	cmp		r0, #0x10
	bgt		_0800f2e8
	add		r4, r0, #0x0
	ldr		r6, _0800f2e0
	ldr		r5, _0800f2e4
	b		_0800f2f0

_0800f2e0:	.4byte 0x080df0b8
_0800f2e4:	.4byte 0x080df0d8

_0800f2e8:
	add		r4, r0, #0x0
	sub		r4, #0x10
	ldr		r6, _0800f30c
	ldr		r5, _0800f310
_0800f2f0:
	mov		r0, #0x1
	bl		sub_08028130
	add		r2, r0, #0x0
	add		r2, #0xc0
	str		r4, [sp, #0x0]
	mov		r0, #0x10
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r3, #0x10
	bl		sub_0800f124
	b		_0800f328

_0800f30c:	.4byte 0x080df0d8
_0800f310:	.4byte 0x080df0b8

_0800f314:
	ldr		r4, _0800f340
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_0800f328:
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xF33E, 0x2

_0800f340:	.4byte 0x080df0b8
	thumb_func_end sub_0800f214

	thumb_func_start sub_0800f344
sub_0800f344:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	mov		r5, #0x0
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bge		_0800f452
	mov		r7, #0x1
	mov		r3, #0xfb
	lsl		r3, r3, #0x2
	mov		r9, r3
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r8, r0
	add		r1, r4, #0x0
	add		r1, r9
	mov		r10, r1
	mov		r6, #0x0
	mov		r12, r6
_0800f376:
	mov		r0, #0xaa
	lsl		r0, r0, #0x2
	add		r0, r12
	add		r2, r4, r0
	ldr		r0, [r2, #0x20]
	cmp		r0, #0x1
	beq		_0800f3bc
	cmp		r0, #0x1
	bgt		_0800f38e
	cmp		r0, #0x0
	beq		_0800f398
	b		_0800f43e
_0800f38e:
	cmp		r0, #0x2
	beq		_0800f3cc
	cmp		r0, #0x3
	beq		_0800f40c
	b		_0800f43e
_0800f398:
	ldr		r0, _0800f3b8
	strh	r0, [r2, #0x0]
	mov		r0, #0x58
	strh	r0, [r2, #0x2]
	mov		r0, #0x60
	str		r0, [r2, #0x4]
	sub		r0, #0x61
	str		r0, [r2, #0x8]
	str		r7, [r2, #0x14]
	str		r5, [r2, #0x18]
	str		r7, [r2, #0x20]
	str		r6, [r2, #0x1c]
	mov		r0, #0x3
	str		r0, [r2, #0x24]
	b		_0800f43e

.incbin "base.gba", 0xF3B6, 0x2

_0800f3b8:	.4byte 0x0000FFF0

_0800f3bc:
	ldr		r0, [r2, #0x1c]
	sub		r0, #0x1
	str		r0, [r2, #0x1c]
	cmp		r0, #0x0
	bge		_0800f43e
	mov		r0, #0x0
	str		r0, [r2, #0x1c]
	b		_0800f43a
_0800f3cc:
	mov		r3, r9
	add		r1, r4, r3
	ldr		r0, [r1, #0x0]
	mov		r3, #0x1
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800f3ee
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
	ldr		r0, [r1, #0x0]
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800f3ee
	ldrh	r0, [r2, #0x2]
	add		r0, #0x1
	b		_0800f3f2
_0800f3ee:
	ldrh	r0, [r2, #0x2]
	sub		r0, #0x1
_0800f3f2:
	strh	r0, [r2, #0x2]
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, r8
	ble		_0800f43e
	ldr		r3, _0800f408
	add		r0, r1, r3
	strh	r0, [r2, #0x0]
	mov		r0, #0x3
	b		_0800f43c

_0800f408:	.4byte 0xFFFFFEF0

_0800f40c:
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	and		r0, r7
	cmp		r0, #0x0
	beq		_0800f41c
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
_0800f41c:
	ldr		r0, [r2, #0x4]
	add		r0, #0x2
	mov		r1, #0x7f
	and		r0, r1
	str		r0, [r2, #0x4]
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, r8
	ble		_0800f43e
	ldr		r3, _0800f460
	add		r0, r1, r3
	strh	r0, [r2, #0x0]
	mov		r0, #0x60
	str		r0, [r2, #0x4]
_0800f43a:
	mov		r0, #0x2
_0800f43c:
	str		r0, [r2, #0x20]
_0800f43e:
	add		r6, #0x42
	mov		r0, #0x28
	add		r12, r0
	add		r5, #0x1
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	blt		_0800f376
_0800f452:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800f460:	.4byte 0xFFFFFEF0
	thumb_func_end sub_0800f344

	thumb_func_start sub_0800f464
sub_0800f464:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r9, r0
	bl		sub_0800f344
	mov		r0, #0x0
	mov		r8, r0
	b		_0800f5a2
_0800f47c:
	mov		r1, r8
	lsl		r0, r1, #0x2
	add		r1, r0, r1
	lsl		r1, r1, #0x3
	mov		r2, #0xaa
	lsl		r2, r2, #0x2
	add		r1, r1, r2
	mov		r3, r9
	add		r4, r3, r1
	ldr		r1, [r4, #0x8]
	ldr		r2, [r4, #0x4]
	mov		r10, r0
	cmp		r1, r2
	beq		_0800f516
	ldr		r1, _0800f4a4
	cmp		r2, #0x3f
	ble		_0800f4a8
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0800f4aa

_0800f4a4:	.4byte 0x080f5410

_0800f4a8:
	add		r0, r2, #0x0
_0800f4aa:
	add		r0, r1, r0
	ldrb	r3, [r0, #0x0]
	ldr		r0, _0800f4dc
	ldr		r2, [r0, #0x0]
	sub		r0, #0x4
	ldr		r1, [r0, #0x0]
	ldr		r0, [r4, #0x14]
	cmp		r0, #0x1
	bne		_0800f4e4
	ldr		r0, [r4, #0x18]
	mul		r1, r0
	add		r1, r2, r1
	lsl		r0, r3, #0x9
	mov		r2, #0x88
	lsl		r2, r2, #0x9
	add		r0, r0, r2
	add		r7, r1, r0
	mov		r3, r8
	lsl		r0, r3, #0xa
	ldr		r1, _0800f4e0
	add		r6, r0, r1
	mov		r5, #0x80
	lsl		r5, r5, #0x2
	b		_0800f4fe

.incbin "base.gba", 0xF4DA, 0x2

_0800f4dc:	.4byte 0x02037878
_0800f4e0:	.4byte 0x06014000

_0800f4e4:
	ldr		r0, [r4, #0x18]
	mul		r1, r0
	add		r1, r2, r1
	lsl		r0, r3, #0x7
	mov		r2, #0xa4
	lsl		r2, r2, #0x9
	add		r0, r0, r2
	add		r7, r1, r0
	mov		r3, r8
	lsl		r0, r3, #0xa
	ldr		r1, _0800f554
	add		r6, r0, r1
	mov		r5, #0x80
_0800f4fe:
	bl		sub_08029f34
	lsr		r3, r5, #0x1
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	orr		r3, r1
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_08029ee4
	ldr		r0, [r4, #0x4]
	str		r0, [r4, #0x8]
_0800f516:
	ldr		r0, [r4, #0x14]
	ldr		r0, _0800f558
	add		r0, r10
	ldr		r0, [r0, #0x0]
	add		r5, r4, #0x0
	add		r5, #0xc
	ldr		r6, [sp, #0x8]
	mov		r7, r8
	add		r7, #0x1
	add		r2, r0, #0x0
	add		r1, r5, #0x0
	mov		r3, #0x3
_0800f52e:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0800f52e
	ldr		r0, [r4, #0x4]
	mov		r1, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800f55c
	ldrh	r1, [r4, #0x10]
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r0, r2, #0x0
	orr		r0, r1
	b		_0800f564

.incbin "base.gba", 0xF552, 0x2

_0800f554:	.4byte 0x06014000
_0800f558:	.4byte 0x080f5490

_0800f55c:
	ldrh	r0, [r4, #0x10]
	ldr		r3, _0800f5c0
	add		r1, r3, #0x0
	and		r0, r1
_0800f564:
	strh	r0, [r4, #0x10]
	ldrh	r1, [r4, #0x12]
	ldr		r2, _0800f5c4
	add		r0, r2, #0x0
	and		r1, r0
	ldr		r0, [r4, #0x24]
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh	r1, [r4, #0x12]
	ldrh	r0, [r4, #0x0]
	mov		r3, r9
	ldrh	r1, [r3, #0x4]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	ldrh	r2, [r4, #0x2]
	ldrh	r1, [r3, #0x6]
	sub		r2, r2, r1
	lsl		r2, r2, #0x10
	lsr		r0, r0, #0x10
	orr		r0, r2
	str		r0, [sp, #0x8]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	mov		r8, r7
_0800f5a2:
	mov		r0, #0xfa
	lsl		r0, r0, #0x2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r8, r0
	bge		_0800f5b0
	b		_0800f47c
_0800f5b0:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0800f5c0:	.4byte 0x0000EFFF
_0800f5c4:	.4byte 0x0000F3FF
	ldr		r0, _0800f670
	ldr		r1, [r0, #0x0]
	mov		r0, #0xfc
	lsl		r0, r0, #0x2
	add		r2, r1, r0
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	asr		r0, r0, #0x2
	ldrh	r3, [r1, #0x10]
	strh	r0, [r1, #0x10]
	ldr		r0, [r2, #0x0]
	neg		r0, r0
	asr		r0, r0, #0x2
	ldrh	r2, [r1, #0x12]
	strh	r0, [r1, #0x12]
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	add		r2, #0x8
	ldrh	r0, [r1, #0x2]
	strh	r0, [r2, #0x0]
	add		r2, #0x8
	ldrh	r0, [r1, #0x4]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x6]
	strh	r0, [r2, #0x0]
	sub		r2, #0x8
	ldrh	r0, [r1, #0x8]
	strh	r0, [r2, #0x0]
	add		r2, #0xa
	ldrh	r0, [r1, #0xa]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0xc]
	strh	r0, [r2, #0x0]
	sub		r2, #0xa
	ldrh	r0, [r1, #0xe]
	strh	r0, [r2, #0x0]
	add		r2, #0xc
	ldrh	r0, [r1, #0x10]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x12]
	strh	r0, [r2, #0x0]
	sub		r2, #0xc
	ldrh	r0, [r1, #0x14]
	strh	r0, [r2, #0x0]
	add		r2, #0xe
	ldrh	r0, [r1, #0x16]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x18]
	strh	r0, [r2, #0x0]
	add		r2, #0x32
	ldrh	r0, [r1, #0x1a]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x1c]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x1e]
	strh	r0, [r2, #0x0]
	sub		r2, #0x14
	ldrh	r0, [r1, #0x20]
	strh	r0, [r2, #0x0]
	add		r2, #0x4
	ldrh	r0, [r1, #0x22]
	strh	r0, [r2, #0x0]
	sub		r2, #0x2
	ldrh	r0, [r1, #0x24]
	strh	r0, [r2, #0x0]
	add		r2, #0x4
	ldrh	r0, [r1, #0x26]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x28]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x2a]
	strh	r0, [r2, #0x0]
	bx		lr

_0800f670:	.4byte 0x030000F8
	thumb_func_end sub_0800f464

	thumb_func_start sub_0800f674
sub_0800f674:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	sub		sp, #0x4
	ldr		r0, _0800f8a0
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _0800f8a4
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r0, _0800f8a8
	ldr		r4, [r0, #0x0]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0800f8ac
	ldr		r0, [r0, #0x0]
	ldr		r5, _0800f8b0
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8b4
	ldr		r1, _0800f8b8
	mov		r8, r1
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8bc
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8c0
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8c4
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8c8
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8cc
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8d0
	ldr		r4, _0800f8d4
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8d8
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8dc
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8e0
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8e4
	ldr		r1, _0800f8e8
	mov		r9, r1
	add		r1, r5, #0x0
	mov		r3, r9
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8ec
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800f8f0
	mov		r0, sp
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_08011040
	ldr		r0, _0800f8f4
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_08028130
	strh	r6, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0800f8f8
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f8fc
	ldr		r3, _0800f900
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f904
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f908
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f90c
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f910
	ldr		r3, _0800f914
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f918
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800f91c
	add		r1, r5, #0x0
	mov		r3, r9
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f920
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	ldr		r4, [r0, #0x0]
	mov		r5, #0x7
_0800f85c:
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, r1, r6
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	add		r6, #0x20
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0800f85c
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_08029f34
	ldr		r1, _0800f924
	ldr		r2, _0800f928
	ldr		r3, _0800f92c
	bl		sub_08029ee4
	add		sp, #0x4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xF89E, 0x2

_0800f8a0:	.4byte 0x020378D0
_0800f8a4:	.4byte 0x020378E4
_0800f8a8:	.4byte 0x020378D4
_0800f8ac:	.4byte 0x020378FC
_0800f8b0:	.4byte 0x02037900
_0800f8b4:	.4byte 0x06008000
_0800f8b8:	.4byte 0x80000C00
_0800f8bc:	.4byte 0x020378F8
_0800f8c0:	.4byte 0x06009800
_0800f8c4:	.4byte 0x020378F4
_0800f8c8:	.4byte 0x0600B000
_0800f8cc:	.4byte 0x020378C4
_0800f8d0:	.4byte 0x0600C800
_0800f8d4:	.4byte 0x80000400
_0800f8d8:	.4byte 0x020378B8
_0800f8dc:	.4byte 0x0600EC00
_0800f8e0:	.4byte 0x020378B4
_0800f8e4:	.4byte 0x0600F400
_0800f8e8:	.4byte 0x80000600
_0800f8ec:	.4byte 0x020378AC
_0800f8f0:	.4byte 0x01000080
_0800f8f4:	.4byte 0x020378CC
_0800f8f8:	.4byte 0x020378C0
_0800f8fc:	.4byte 0x06010000
_0800f900:	.4byte 0x80000A00
_0800f904:	.4byte 0x020378F0
_0800f908:	.4byte 0x06011400
_0800f90c:	.4byte 0x020378EC
_0800f910:	.4byte 0x06012C00
_0800f914:	.4byte 0x80000200
_0800f918:	.4byte 0x020378E8
_0800f91c:	.4byte 0x06013000
_0800f920:	.4byte 0x02037870
_0800f924:	.4byte 0x0203EECC
_0800f928:	.4byte 0x06013C00
_0800f92c:	.4byte 0x81000040
	thumb_func_end sub_0800f674

	thumb_func_start sub_0800f930
sub_0800f930:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _0800faa4
	ldr		r7, [r0, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x13
	mov		r4, #0xf
_0800f940:
	bl		sub_08029f34
	ldr		r1, _0800faa8
	add		r2, r5, #0x0
	ldr		r3, _0800faac
	bl		sub_08029ee4
	bl		sub_08011040
	mov		r0, #0xc0
	lsl		r0, r0, #0x5
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800f940
	mov		r5, #0x0
	bl		sub_0800f674
	ldr		r0, _0800fab0
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0800fab4
	ldr		r0, [r0, #0x0]
	ldr		r4, _0800fab8
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800fabc
	ldr		r3, _0800fac0
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fac4
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r1, _0800fac8
	mov		r8, r1
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800facc
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800fad0
	ldr		r6, _0800fad4
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fad8
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800fadc
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fae0
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800fae4
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fae8
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0800faec
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_0802711c
	ldrh	r0, [r7, #0x2]
	ldr		r0, _0800faf0
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x8]
	ldr		r0, _0800faf4
	strh	r0, [r7, #0x8]
	ldrh	r0, [r7, #0xe]
	mov		r0, #0x6
	strh	r0, [r7, #0xe]
	ldrh	r0, [r7, #0x14]
	mov		r0, #0x83
	lsl		r0, r0, #0x1
	strh	r0, [r7, #0x14]
	ldrh	r0, [r7, #0x0]
	mov		r0, #0xfa
	lsl		r0, r0, #0x5
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x1a]
	mov		r0, #0xbf
	strh	r0, [r7, #0x1a]
	ldrh	r0, [r7, #0x1e]
	mov		r0, #0x10
	strh	r0, [r7, #0x1e]
	ldrh	r0, [r7, #0x4]
	strh	r5, [r7, #0x4]
	ldrh	r0, [r7, #0x6]
	strh	r5, [r7, #0x6]
	ldrh	r0, [r7, #0xa]
	strh	r5, [r7, #0xa]
	ldrh	r0, [r7, #0xc]
	strh	r5, [r7, #0xc]
	ldrh	r0, [r7, #0x10]
	strh	r5, [r7, #0x10]
	ldrh	r0, [r7, #0x12]
	strh	r5, [r7, #0x12]
	ldrh	r0, [r7, #0x16]
	strh	r5, [r7, #0x16]
	ldrh	r0, [r7, #0x18]
	strh	r5, [r7, #0x18]
	mov		r2, #0xfc
	lsl		r2, r2, #0x2
	add		r0, r7, r2
	str		r5, [r0, #0x0]
	ldrh	r0, [r7, #0x2a]
	ldr		r0, _0800faf8
	strh	r0, [r7, #0x2a]
	ldrh	r1, [r7, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	ldrh	r2, [r7, #0x0]
	orr		r0, r1
	strh	r0, [r7, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0xFAA2, 0x2

_0800faa4:	.4byte 0x030000F8
_0800faa8:	.4byte 0x0203EECE
_0800faac:	.4byte 0x81000C00
_0800fab0:	.4byte 0x020378E4
_0800fab4:	.4byte 0x020378E0
_0800fab8:	.4byte 0x02037900
_0800fabc:	.4byte 0x06004000
_0800fac0:	.4byte 0x80000600
_0800fac4:	.4byte 0x020378DC
_0800fac8:	.4byte 0x80000400
_0800facc:	.4byte 0x020378D8
_0800fad0:	.4byte 0x06000800
_0800fad4:	.4byte 0x80000280
_0800fad8:	.4byte 0x020378A4
_0800fadc:	.4byte 0x06002000
_0800fae0:	.4byte 0x080e0738
_0800fae4:	.4byte 0x06017800
_0800fae8:	.4byte 0x080e049c
_0800faec:	.4byte 0x06017000
_0800faf0:	.4byte 0x00004208
_0800faf4:	.4byte 0x00004409
_0800faf8:	.4byte 0x0000303F
	thumb_func_end sub_0800f930

	thumb_func_start sub_0800fafc
sub_0800fafc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	mov		r0, #0x0
	str		r0, [sp, #0xc]
	mov		r10, r0
	ldr		r0, _0800fe48
	ldr		r1, [sp, #0xc]
	str		r1, [r0, #0x0]
	ldr		r0, _0800fe4c
	str		r1, [r0, #0x0]
	ldr		r0, _0800fe50
	strh	r1, [r0, #0x0]
	ldr		r1, _0800fe54
	ldr		r0, _0800fe58
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe5c
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe60
	str		r0, [r1, #0x0]
	ldr		r0, _0800fe64
	ldr		r2, _0800fe68
	str		r2, [r0, #0x0]
	sub		r1, #0x8
	ldr		r0, _0800fe6c
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe70
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe74
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe78
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe7c
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe80
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe84
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe88
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe8c
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe90
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe94
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe98
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fe9c
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fea0
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fea4
	str		r0, [r1, #0x0]
	ldr		r0, _0800fea8
	str		r2, [r0, #0x0]
	sub		r1, #0x8
	ldr		r0, _0800feac
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800feb0
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800feb4
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800feb8
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800febc
	str		r0, [r1, #0x0]
	sub		r1, #0x24
	ldr		r0, _0800fec0
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	mov		r0, #0xb0
	lsl		r0, r0, #0x9
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fec4
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fec8
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fecc
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fed0
	str		r0, [r1, #0x0]
	sub		r1, #0x4
	ldr		r0, _0800fed4
	str		r0, [r1, #0x0]
	ldr		r6, _0800fed8
	mov		r4, #0x0
	ldr		r5, _0800fedc
_0800fbe2:
	add		r0, r4, #0x0
	bl		sub_0802d6a0
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	stmia	r6!, { r0 }
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0800fbe2
	ldr		r6, _0800fee0
	mov		r4, #0x0
	ldr		r7, _0800fedc
	ldr		r5, _0800fee4
_0800fc00:
	add		r0, r4, #0x0
	bl		sub_0802d6a0
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r0, r5
	ldr		r3, _0800fee8
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	add		r1, r1, r0
	stmia	r6!, {  r1 }
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0800fc00
	ldr		r1, _0800feec
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r0, _0800fef0
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	ldr		r0, _0800fef4
	str		r4, [r0, #0x0]
	ldr		r5, _0800fef8
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	str		r0, [r5, #0x0]
	add		r6, r0, #0x0
	str		r4, [sp, #0x8]
	ldr		r2, _0800fefc
	add		r0, sp, #0x8
	add		r1, r6, #0x0
	bl		sub_08071b68
	bl		sub_080297c8
	bl		sub_0800f930
	add		r2, r6, #0x0
	add		r2, #0x4c
	ldr		r3, _0800ff00
	mov		r0, #0x70
	mov		r1, #0x1e
	bl		sub_08003fc4
	mov		r0, #0xa9
	lsl		r0, r0, #0x2
	add		r1, r6, r0
	mov		r0, #0xa
	str		r0, [r1, #0x0]
	mov		r1, #0x0
	mov		r2, #0xfe
	lsl		r2, r2, #0x2
	add		r0, r6, r2
	mov		r3, #0x78
	mov		r5, #0x45
	mov		r4, #0x1
	mov		r2, #0x3
_0800fc84:
	strh	r3, [r0, #0x0]
	strh	r5, [r0, #0x2]
	strh	r1, [r0, #0x6]
	strh	r1, [r0, #0x4]
	strh	r1, [r0, #0x8]
	strb	r4, [r0, #0xa]
	strh	r1, [r0, #0xc]
	add		r0, #0x18
	add		r3, #0x3c
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0800fc84
	ldr		r3, _0800ff04
	add		r0, r6, r3
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	ldr		r1, _0800ff08
	add		r0, r6, r1
	str		r4, [r0, #0x0]
	mov		r2, #0xfe
	lsl		r2, r2, #0x2
	add		r0, r6, r2
	ldrh	r1, [r0, #0x0]
	sub		r3, #0x4
	add		r0, r6, r3
	mov		r5, #0x0
	strh	r1, [r0, #0x0]
	ldr		r1, _0800ff0c
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r2, #0xb2
	add		r0, r6, r2
	strh	r1, [r0, #0x0]
	sub		r3, #0x24
	add		r0, r6, r3
	bl		sub_08013a60
	ldr		r1, _0800ff10
	add		r0, r6, r1
	ldr		r1, _0800ff14
	str		r1, [r0, #0x0]
	mov		r1, #0x94
	lsl		r1, r1, #0x1
	strh	r1, [r0, #0x4]
	mov		r1, #0x90
	strh	r1, [r0, #0x6]
	add		r1, #0x70
	strh	r1, [r0, #0xa]
	strh	r1, [r0, #0x8]
	strh	r4, [r0, #0xc]
	strb	r5, [r0, #0xe]
	strh	r4, [r0, #0x10]
	ldr		r2, _0800ff18
	add		r0, r6, r2
	add		r1, #0xb8
	strh	r1, [r0, #0x4]
	mov		r1, #0x50
	strh	r1, [r0, #0x6]
	strh	r4, [r0, #0xa]
	strh	r4, [r0, #0x8]
	strh	r4, [r0, #0xc]
	strb	r5, [r0, #0xe]
	strh	r4, [r0, #0x10]
	mov		r3, #0xfa
	lsl		r3, r3, #0x2
	add		r1, r6, r3
	mov		r0, #0x8
	str		r0, [r1, #0x0]
	mov		r3, #0x0
	mov		r0, #0x3c
	add		r0, r0, r6
	mov		r8, r0
	mov		r0, #0xaa
	lsl		r0, r0, #0x2
	add		r2, r6, r0
_0800fd1a:
	str		r4, [r2, #0x20]
	add		r2, #0x28
	add		r3, #0x1
	ldr		r0, [r1, #0x0]
	cmp		r3, r0
	blt		_0800fd1a
	mov		r0, #0x0
	mov		r1, #0xfb
	lsl		r1, r1, #0x2
	add		r5, r6, r1
_0800fd2e:
	add		r7, r0, #0x1
	mov		r4, #0xff
_0800fd32:
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	str		r0, [r5, #0x0]
	add		r0, r6, #0x0
	bl		sub_0800f344
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800fd32
	bl		sub_08011040
	add		r0, r7, #0x0
	cmp		r0, #0x1
	ble		_0800fd2e
	mov		r1, r8
	mov		r2, #0x0
	add		r0, r1, #0x0
	add		r0, #0xc
_0800fd56:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	cmp		r0, r1
	bge		_0800fd56
	mov		r2, #0x94
	lsl		r2, r2, #0x3
	add		r0, r6, r2
	mov		r7, #0x0
	str		r7, [r0, #0x0]
	ldr		r3, _0800ff1c
	add		r0, r6, r3
	str		r7, [r0, #0x0]
	mov		r0, #0x28
	bl		sub_0807073c
	ldr		r4, _0800ff20
	add		r1, r4, #0x0
	cmp		r4, #0x0
	bne		_0800fd7e
	ldr		r1, _0800ff24
_0800fd7e:
	mov		r0, #0x6
	bl		sub_0807df68
	add		r1, r4, #0x0
	cmp		r1, #0x0
	bne		_0800fd8c
	ldr		r1, _0800ff24
_0800fd8c:
	mov		r0, #0x7
	bl		sub_0807df68
	ldr		r5, _0800ff28
	ldr		r4, _0800ff2c
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _0800ff30
	bl		sub_0807df78
	ldr		r1, _0800ff34
	cmp		r1, #0x0
	bne		_0800fdb2
	ldr		r1, _0800ff24
_0800fdb2:
	mov		r0, #0x0
	bl		sub_0807df68
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	mov		r0, #0x2
	bl		sub_0807df78
	ldr		r1, _0800ff38
	ldr		r0, _0800ff3c
	str		r1, [r0, #0x28]
	add		r1, r0, #0x0
	add		r1, #0x4b
	strb	r7, [r1, #0x0]
	bl		sub_08011978
	thumb_func_end sub_0800fafc

	non_word_aligned_thumb_func_start sub_0800fdd2
sub_0800fdd2:
	bl		sub_0802983c
	bl		sub_08071ba4
	bl		sub_08070730
	mov		r0, #0xfb
	lsl		r0, r0, #0x2
	add		r1, r6, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r1, [sp, #0xc]
	cmp		r1, #0xf
	bgt		_0800fe14
	ldr		r2, _0800fe50
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800fe14
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x30
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800fe14
	mov		r2, #0x10
	str		r2, [sp, #0xc]
	ldr		r1, _0800ff40
	mov		r0, #0x0
	strh		r0, [r1, #0x16]
	bl		sub_08027744
_0800fe14:
	ldr		r3, [sp, #0xc]
	cmp		r3, #0xd
	blt		_0800fe2a
	cmp		r3, #0x12
	bgt		_0800fe20
	b		_0800ff94
_0800fe20:
	cmp		r3, #0x1d
	bgt		_0800fe2a
	cmp		r3, #0x19
	blt		_0800fe2a
	b		_0800ff94
_0800fe2a:
	mov		r2, #0x1
	ldr		r4, _0800ff3c
	mov		r3, #0x1
	add		r1, r6, #0x0
	add		r1, #0x30
	add		r5, r4, #0x0
_0800fe36:
	ldrb	r0, [r5, #0x1D]
	asr		r0, r2
	and		r0, r3
	cmp		r0, #0x0
	beq		_0800fe42
	b		_0800ff44
_0800fe42:
	mov		r0, #0x4
	b		_0800ff54

.incbin "base.gba", 0xFE46, 0x2

.align 2, 0
_0800fe48:	.4byte 0x03002D50
_0800fe4c:	.4byte 0x03002FD0
_0800fe50:	.4byte 0x04000128
_0800fe54:	.4byte 0x020378FC
_0800fe58:	.4byte 0x080c558c
_0800fe5c:	.4byte 0x080c5bc0
_0800fe60:	.4byte 0x080c6300
_0800fe64:	.4byte 0x020378F0
_0800fe68:	.4byte 0x080d6e20
_0800fe6c:	.4byte 0x080d766c
_0800fe70:	.4byte 0x080d784c
_0800fe74:	.4byte 0x0809866c
_0800fe78:	.4byte 0x08098b0c
_0800fe7c:	.4byte 0x080993b8
_0800fe80:	.4byte 0x080994bc
_0800fe84:	.4byte 0x080cdf44
_0800fe88:	.4byte 0x080ded7c
_0800fe8c:	.4byte 0x080dee58
_0800fe90:	.4byte 0x080def64
_0800fe94:	.4byte 0x080df0f8
_0800fe98:	.4byte 0x080df4e4
_0800fe9c:	.4byte 0x080dfa84
_0800fea0:	.4byte 0x080df2fc
_0800fea4:	.4byte 0x080d7eac
_0800fea8:	.4byte 0x020378B0
_0800feac:	.4byte 0x080dfc9c
_0800feb0:	.4byte 0x080e0238
_0800feb4:	.4byte 0x080e010c
_0800feb8:	.4byte sub_0802bfb4
_0800febc:	.4byte 0x0802c695
_0800fec0:	.4byte 0x08345800
_0800fec4:	.4byte 0x08344600
_0800fec8:	.4byte 0x0808b3e0
_0800fecc:	.4byte 0x080984e4
_0800fed0:	.4byte 0x080c6b0c
_0800fed4:	.4byte 0x080c730c
_0800fed8:	.4byte 0x0203788C
_0800fedc:	.4byte 0x08102bf8
_0800fee0:	.4byte 0x0203787C
_0800fee4:	.4byte 0x08258000
_0800fee8:	.4byte 0x082580c4
_0800feec:	.4byte 0x06001000
_0800fef0:	.4byte 0x03002D3C
_0800fef4:	.4byte 0x03002D44
_0800fef8:	.4byte 0x030000F8
_0800fefc:	.4byte 0x01000139
_0800ff00:	.4byte 0x080f53a4
_0800ff04:	.4byte 0x000004AC
_0800ff08:	.4byte 0x000004A4
_0800ff0c:	.4byte 0x000003FA
_0800ff10:	.4byte 0x00000454
_0800ff14:	.4byte 0x080e57cc
_0800ff18:	.4byte 0x0000046C
_0800ff1c:	.4byte 0x0000049C
_0800ff20:	.4byte 0x08011091
_0800ff24:	.4byte 0x080270f1
_0800ff28:	.4byte 0x0800f5c9
_0800ff2c:	.4byte 0x030031A0
_0800ff30:	.4byte 0x00010001
_0800ff34:	.4byte 0x08010fa1
_0800ff38:	.4byte 0x08340000
_0800ff3c:	.4byte 0x03000100
_0800ff40:	.4byte 0x03003000

_0800ff44:
	ldrb	r0, [r4, #0x1E]
	asr		r0, r2
	and		r0, r3
	cmp		r0, #0x0
	bne		_0800ff52
	mov		r0, #0x5
	b		_0800ff54
_0800ff52:
	mov		r0, #0x6
_0800ff54:
	str		r0, [r1, #0x0]
	add		r1, #0x4
	add		r2, #0x1
	cmp		r2, #0x3
	bgt		_0800ff60
	b		_0800fe36
_0800ff60:
	ldrb	r0, [r4, #0x1E]
	mov		r1, #0xe
	and		r1, r0
	cmp		r1, #0x0
	beq		_0800ff8c
	ldrb	r0, [r4, #0x18]
	cmp		r0, #0x0
	beq		_0800ff78
	cmp		r0, #0xd1
	beq		_0800ff7c
	mov		r0, #0x0
	b		_0800ff7e
_0800ff78:
	mov		r0, #0x1
	b		_0800ff7e
_0800ff7c:
	mov		r0, #0x2
_0800ff7e:
	str		r0, [r6, #0x2c]
	ldrb	r0, [r4, #0x18]
	cmp		r0, #0xdf
	bls		_0800ff8e
	mov		r0, #0x3
	str		r0, [r6, #0x2c]
	b		_0800ff8e
_0800ff8c:
	str		r1, [r6, #0x2c]
_0800ff8e:
	add		r0, r4, #0x0
	bl		sub_08011140
_0800ff94:
	ldr		r0, [sp, #0xc]
	cmp		r0, #0x27
	bls		_0800ff9e
	bl		sub_08010d50
_0800ff9e:
	lsl		r0, r0, #0x2
	ldr		r1, _0800ffa8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0800ffa8:	.4byte 0x0800ffac
_0800ffac:	.4byte 0x0801004c

.incbin "base.gba", 0xFFB0, 0x3C
_0800ffec:	.4byte 0x08010bf4

.incbin "base.gba", 0xFFF0, 0x5C
	thumb_func_end sub_0800fdd2


.incbin "base.gba", 0x1004C, 0x81C
_08010868:	.4byte 0x08010880

.incbin "base.gba", 0x1086C, 0x388

_08010bf4:

.incbin "base.gba", 0x10BF4, 0xE
_08010c02:

.incbin "base.gba", 0x10C02, 0x5E
_08010c60:

.incbin "base.gba", 0x10C60, 0x2E
_08010c8e:

.incbin "base.gba", 0x10C8E, 0xA
_08010c98:	.4byte 0x08010fe9
_08010c9c:	.4byte 0x080270F1
_08010ca0:	.4byte 0x080dffe0
_08010ca4:	.4byte 0x02037900
_08010ca8:	.4byte 0x06001000
_08010cac:	.4byte 0x080e010c
_08010cb0:	.4byte 0x06002000
_08010cb4:	.4byte 0x08101068
_08010cb8:	.4byte 0xFFFFFF00

_08010cbc:

.incbin "base.gba", 0x10CBC, 0x1C
_08010cd8:	.4byte 0x00001008
_08010cdc:	.4byte 0x00000844

.incbin "base.gba", 0x10CE0, 0x70
	thumb_func_start sub_08010d50
sub_08010d50:
	add		r0, r6, #0x0
	bl		sub_0800ec48
	add		r0, r6, #0x0
	bl		sub_0800ef8c
	add		r0, r6, #0x0
	bl		sub_0800ecc8
	ldr		r3, [sp, #0xc]
	cmp		r3, #0xa
	bgt		_08010d6e
	add		r0, r6, #0x0
	bl		sub_0800f464
_08010d6e:
	add		r0, r6, #0x0
	bl		sub_0800f214
	bl		sub_0800fdd2
	mov		r0, #0x2
	bl		sub_0807df68
	mov		r5, #0x0
	ldr		r4, _08010dbc
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _08010dc0
	bl		sub_0807df78
	bl		sub_08029f58
	bl		sub_08070d78
	mov		r0, #0x2
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	bl		sub_0807df78
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x10DBA, 0x2

_08010dbc:	.4byte 0x030031A0
_08010dc0:	.4byte 0x00010001
	thumb_func_end sub_08010d50

	thumb_func_start sub_08010dc4
sub_08010dc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r7, #0x0
	mov		r0, #0x0
	mov		r8, r0
	ldr		r1, _08010e64
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _08010e68
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r4, _08010e6c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	str		r0, [r4, #0x0]
	add		r6, r0, #0x0
	mov		r1, #0x0
	ldr		r3, _08010e70
	mov		r2, #0x0
_08010df6:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r3
	bls		_08010df6
	bl		sub_080297c8
	ldr		r5, _08010e74
	ldr		r4, _08010e78
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _08010e7c
	bl		sub_0807df78
	ldr		r1, _08010e80
	cmp		r1, #0x0
	bne		_08010e24
	ldr		r1, _08010e84
_08010e24:
	mov		r0, #0x0
	bl		sub_0807df68
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	mov		r0, #0x2
	bl		sub_0807df78
	mov		r0, #0x92
	bl		sub_0807073c
	ldr		r1, _08010e88
	mov		r9, r1
	ldr		r5, _08010e8c
_08010e40:
	bl		sub_0802983c
	bl		sub_08071ba4
	bl		sub_08070730
	mov		r2, #0xfb
	lsl		r2, r2, #0x2
	add		r1, r6, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r7, #0x0
	beq		_08010e90
	cmp		r7, #0x1
	beq		_08010f02
	b		_08010e40

.incbin "base.gba", 0x10E62, 0x2

_08010e64:	.4byte 0x04000200
_08010e68:	.4byte 0x06001000
_08010e6c:	.4byte 0x030000F8
_08010e70:	.4byte 0x000004E3
_08010e74:	.4byte 0x0800F5C9
_08010e78:	.4byte 0x030031A0
_08010e7c:	.4byte 0x00010001
_08010e80:	.4byte 0x08010FA1
_08010e84:	.4byte 0x080270F1
_08010e88:	.4byte 0x00000844
_08010e8c:	.4byte 0x00001008

_08010e90:
	ldrh	r0, [r6, #0x0]
	mov		r4, #0x0
	strh	r7, [r6, #0x0]
	ldr		r1, _08010f50
	cmp		r1, #0x0
	bne		_08010e9e
	ldr		r1, _08010f54
_08010e9e:
	mov		r0, #0x0
	bl		sub_0807df68
	mov		r4, #0xa0
	lsl		r4, r4, #0x13
	ldr		r0, _08010f58
	add		r1, r4, #0x0
	bl		sub_08071b7c
	strh	r7, [r4, #0x0]
	ldr		r0, _08010f5c
	ldr		r1, _08010f60
	bl		sub_08071b7c
	ldr		r0, _08010f64
	ldr		r1, _08010f68
	bl		sub_08071b7c
	ldr		r0, _08010f6c
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	bl		sub_08071b7c
	ldr		r0, _08010f70
	ldr		r1, _08010f74
	bl		sub_08071b7c
	ldrh	r0, [r6, #0x2]
	mov		r0, #0x82
	lsl		r0, r0, #0x2
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x8]
	ldr		r0, _08010f78
	strh	r0, [r6, #0x8]
	ldrh	r0, [r6, #0xe]
	mov		r0, #0xa
	strh	r0, [r6, #0xe]
	ldrh	r0, [r6, #0x14]
	ldr		r0, _08010f7c
	strh	r0, [r6, #0x14]
	ldrh	r0, [r6, #0x0]
	mov		r0, #0xe4
	lsl		r0, r0, #0x4
	strh	r0, [r6, #0x0]
	ldrh	r0, [r6, #0x1a]
	mov		r0, r9
	strh	r0, [r6, #0x1a]
	ldrh	r0, [r6, #0x1c]
	strh	r5, [r6, #0x1c]
	mov		r7, #0x1
_08010f02:
	mov		r1, #0x1
	add		r8, r1
	mov		r2, r8
	cmp		r2, #0x10
	bgt		_08010f88
	ldr		r1, _08010f80
	lsl		r0, r2, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08010f18
	add		r0, #0x3f
_08010f18:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	asr		r0, r0, #0xf
	ldr		r1, _08010f84
	add		r0, r0, r1
	ldrh	r1, [r6, #0xa]
	strh	r0, [r6, #0xa]
	ldrh	r0, [r6, #0xa]
	ldrh	r1, [r6, #0x4]
	strh	r0, [r6, #0x4]
	ldrh	r0, [r6, #0x1a]
	mov		r0, #0xbf
	strh	r0, [r6, #0x1a]
	mov		r2, r8
	lsl		r0, r2, #0x4
	neg		r0, r0
	cmp		r0, #0x0
	bge		_08010f46
	add		r0, #0xf
_08010f46:
	asr		r0, r0, #0x4
	add		r0, #0x10
	ldrh	r1, [r6, #0x1e]
	strh	r0, [r6, #0x1e]
	b		_08010e40

_08010f50:	.4byte 0x08010FE9
_08010f54:	.4byte 0x080270F1
_08010f58:	.4byte 0x080e09f0
_08010f5c:	.4byte 0x080e1214
_08010f60:	.4byte 0x06008000
_08010f64:	.4byte 0x080e0f80
_08010f68:	.4byte 0x06002000
_08010f6c:	.4byte 0x080e0a74
_08010f70:	.4byte 0x080e0b78
_08010f74:	.4byte 0x06006000
_08010f78:	.4byte 0x00004409
_08010f7c:	.4byte 0x00000C0A
_08010f80:	.4byte 0x08101068
_08010f84:	.4byte 0xFFFFFF00

_08010f88:
	mov		r0, #0x0
	mov		r8, r0
	ldrh	r0, [r6, #0x1c]
	strh	r5, [r6, #0x1c]
	ldrh	r0, [r6, #0x1a]
	mov		r1, r9
	strh	r1, [r6, #0x1a]
	ldrh	r0, [r6, #0x1e]
	mov		r0, #0x10
	strh	r0, [r6, #0x1e]
	mov		r7, #0x12
	b		_08010e40
	push	{ lr }
	bl		sub_0807006c
	bl		sub_08027148
	ldr		r1, _08010fe0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	bl		sub_08029924
	bl		sub_08029f34
	bl		sub_08029da8
	bl		sub_08028174
	bl		sub_08028210
	bl		sub_08029894
	ldr		r0, _08010fe4
	ldr		r0, [r0, #0xc]
	cmp		r0, #0x0
	beq		_08010fd4
	bl		sub_0807d7d0
_08010fd4:
	bl		sub_08011010
	bl		sub_08027158
	pop		{ r0 }
	bx		r0

_08010fe0:	.4byte 0x040000BA
_08010fe4:	.4byte 0x030031A0
	push	{ lr }
	bl		sub_0807006c
	bl		sub_08027148
	ldr		r0, _0801100c
	ldr		r0, [r0, #0xc]
	cmp		r0, #0x0
	beq		_08010ffe
	bl		sub_0807d7d0
_08010ffe:
	bl		sub_08011010
	bl		sub_08027158
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1100A, 0x2

_0801100c:	.4byte 0x030031A0
	thumb_func_end sub_08010dc4

	thumb_func_start sub_08011010
sub_08011010:
	push	{ r4, lr }
	ldr		r0, _08011030
	ldrh	r0, [r0, #0x0]
	ldr		r2, _08011034
	add		r1, r2, #0x0
	eor		r1, r0
	ldr		r4, _08011038
	ldr		r3, _0801103c
	ldrh	r2, [r3, #0x0]
	add		r0, r1, #0x0
	bic		r0, r2
	strh	r0, [r4, #0x0]
	strh	r1, [r3, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08011030:	.4byte 0x04000130
_08011034:	.4byte 0x000003FF
_08011038:	.4byte 0x03002E70
_0801103c:	.4byte 0x03002D38
	thumb_func_end sub_08011010

	thumb_func_start sub_08011040
sub_08011040:
	push	{ lr }
	bl		sub_0802711c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1104A, 0x46
	bx		lr

.incbin "base.gba", 0x11092, 0x2
	thumb_func_end sub_08011040

	thumb_func_start sub_08011094
sub_08011094:
	push	{ r4, r5, lr }
	add		r3, r1, #0x0
	add		r1, r2, #0x0
	ldr		r4, [sp, #0x0+0xc]
	ldr		r5, [sp, #0x4+0xc]
	mov		r0, #0xb0
	mul		r0, r3
	bl		sub_0807d80c
	add		r3, r0, #0x0
	cmp		r3, #0xb0
	ble		_080110ae
	mov		r3, #0x0
_080110ae:
	ldr		r0, [r5, #0x0]
	cmp		r0, r3
	bgt		_080110c8
	add		r0, #0xa
	cmp		r0, r3
	blt		_080110c8
	str		r3, [r5, #0x0]
	mov		r1, #0x10
	neg		r1, r1
	add		r0, r1, #0x0
	sub		r0, r0, r3
	ldrh	r1, [r4, #0x4]
	strh	r0, [r4, #0x4]
_080110c8:
	ldr		r0, _080110e0
	ldr		r1, [r0, #0x0]
	add		r1, #0x1
	str		r1, [r0, #0x0]
	mov		r0, #0x4
	and		r1, r0
	cmp		r1, #0x0
	beq		_080110e8
	ldrh	r0, [r4, #0x6]
	ldr		r0, _080110e4
	b		_080110ec

.incbin "base.gba", 0x110DE, 0x2

_080110e0:	.4byte 0x03002D3C
_080110e4:	.4byte 0x0000FF94

_080110e8:
	ldrh	r0, [r4, #0x6]
	ldr		r0, _08011104
_080110ec:
	strh	r0, [r4, #0x6]
	ldrh	r0, [r4, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	ldrh	r2, [r4, #0x0]
	orr		r1, r0
	strh	r1, [r4, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x11102, 0x2

_08011104:	.4byte 0x0000FF93
	thumb_func_end sub_08011094

	thumb_func_start sub_08011108
sub_08011108:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0xc
	mov		r0, #0x8
	sub		r0, r0, r2
	lsl		r0, r0, #0x2
	lsl		r4, r0
	cmp		r2, #0x0
	beq		_0801113a
_08011120:
	lsr		r0, r4, #0x1c
	cmp		r0, #0x9
	bhi		_0801112a
	add		r0, #0x30
	b		_0801112c
_0801112a:
	add		r0, #0x37
_0801112c:
	orr		r0, r3
	strh	r0, [r1, #0x0]
	lsl		r4, r4, #0x4
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_08011120
_0801113a:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08011108

	thumb_func_start sub_08011140
sub_08011140:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	bl		sub_080119b4
	cmp		r0, #0x0
	beq		_08011158
	b		_08011648
_08011158:
	add		r0, r7, #0x0
	add		r0, #0x4a
	ldrb	r1, [r0, #0x0]
	str		r0, [sp, #0x0]
	cmp		r1, #0xf
	bls		_0801116c
	sub		r0, r1, #0x1
	ldr		r1, [sp, #0x0]
	strb	r0, [r1, #0x0]
	b		_08011648
_0801116c:
	add		r0, r7, #0x0
	add		r0, #0x48
	ldrb	r1, [r0, #0x0]
	mov		r10, r0
	cmp		r1, #0x0
	beq		_080111c0
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	ldr		r2, _080111b0
	ldrh	r0, [r2, #0x0]
	mov		r5, #0xfc
	and		r5, r0
	cmp		r5, #0x8
	beq		_080111c0
	strb	r1, [r7, #0x1e]
	strb	r1, [r7, #0x18]
	strb	r1, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r3, [sp, #0x0]
	strb	r0, [r3, #0x0]
	mov		r0, r10
	strb	r1, [r0, #0x0]
	strh	r1, [r7, #0x16]
	ldr		r0, _080111b4
	strh	r1, [r0, #0x0]
	ldr		r3, _080111b8
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _080111bc
	strh	r1, [r0, #0x0]
	mov		r0, #0x8
	eor		r0, r5
	b		_0801164a

.incbin "base.gba", 0x111AE, 0x2

_080111b0:	.4byte 0x04000128
_080111b4:	.4byte 0x04000134
_080111b8:	.4byte 0x00002003
_080111bc:	.4byte 0x0400012A

_080111c0:
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xdf
	bls		_08011242
	add		r0, r7, #0x0
	bl		sub_0801185c
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_080111d4
	b		_0801164a
_080111d4:
	add		r0, r7, #0x0
	add		r0, #0x4b
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_080111f0
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xe1
	bls		_080111f0
	add		r0, r7, #0x0
	bl		sub_080119b4
	cmp		r0, #0x0
	bne		_080111f0
	b		_080115d4
_080111f0:
	add		r0, r7, #0x0
	bl		sub_080119b4
	cmp		r0, #0x0
	beq		_080111fc
	b		_08011648
_080111fc:
	ldrh	r0, [r7, #0x16]
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_0801123c
	strb	r2, [r7, #0x1e]
	strb	r2, [r7, #0x18]
	strb	r2, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r1, [sp, #0x0]
	strb	r0, [r1, #0x0]
	mov		r3, r10
	strb	r2, [r3, #0x0]
	strh	r2, [r7, #0x16]
	ldr		r0, _0801122c
	strh	r2, [r0, #0x0]
	ldr		r1, _08011230
	ldr		r3, _08011234
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _08011238
	strh	r2, [r0, #0x0]
	mov		r0, #0x71
	b		_0801164a

.incbin "base.gba", 0x1122A, 0x2

_0801122c:	.4byte 0x04000134
_08011230:	.4byte 0x04000128
_08011234:	.4byte 0x00002003
_08011238:	.4byte 0x0400012A

_0801123c:
	sub		r0, #0x1
	strh	r0, [r7, #0x16]
	b		_08011648
_08011242:
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0x2
	bne		_0801124a
	b		_08011384
_0801124a:
	cmp		r0, #0x2
	bgt		_08011258
	cmp		r0, #0x0
	beq		_08011266
	cmp		r0, #0x1
	beq		_08011324
	b		_080114f4
_08011258:
	cmp		r0, #0xd0
	bne		_0801125e
	b		_080113d0
_0801125e:
	cmp		r0, #0xd1
	bne		_08011264
	b		_08011470
_08011264:
	b		_080114f4
_08011266:
	mov		r3, #0xe
	mov		r5, #0x3
	ldr		r0, _080112ac
	ldrh	r0, [r0, #0x6]
	add		r1, r0, #0x0
	ldr		r0, _080112b0
	ldrb	r2, [r7, #0x1e]
	add		r6, r2, #0x0
	cmp		r1, r0
	bne		_0801128e
	add		r4, r1, #0x0
	ldr		r1, _080112b4
_0801127e:
	asr		r3, r3, #0x1
	sub		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	beq		_0801128e
	ldrh	r0, [r1, #0x0]
	cmp		r0, r4
	beq		_0801127e
_0801128e:
	mov		r0, #0xe
	and		r3, r0
	strb	r3, [r7, #0x1d]
	mov		r5, #0x3
	ldr		r0, _080112ac
	ldrh	r0, [r0, #0x6]
	add		r4, r0, #0x0
	asr		r0, r2, #0x3
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080112bc
	ldr		r0, _080112b8
	b		_080112e2

.incbin "base.gba", 0x112AA, 0x2

_080112ac:	.4byte 0x04000120
_080112b0:	.4byte 0x0000FFFF
_080112b4:	.4byte 0x04000126
_080112b8:	.4byte 0x00007208

_080112bc:
	sub		r5, #0x1
	cmp		r5, #0x0
	beq		_080112e8
	lsl		r0, r5, #0x1
	ldr		r1, _08011310
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	add		r0, r2, #0x0
	asr		r0, r5
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080112bc
	add		r0, r1, #0x0
	lsl		r0, r5
	mov		r1, #0xe4
	lsl		r1, r1, #0x7
	orr		r0, r1
_080112e2:
	cmp		r4, r0
	beq		_080112bc
	mov		r3, #0x0
_080112e8:
	add		r0, r3, #0x0
	and		r0, r6
	strb	r0, [r7, #0x1e]
	cmp		r3, #0x0
	bne		_080112f8
	mov		r0, #0xf
	ldr		r2, [sp, #0x0]
	strb	r0, [r2, #0x0]
_080112f8:
	ldr		r3, [sp, #0x0]
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_08011314
	ldrb	r0, [r7, #0x1d]
	ldrb	r1, [r7, #0x1e]
	cmp		r0, r1
	beq		_0801131a
	add		r0, r7, #0x0
	bl		sub_080116d4
	b		_08011324

_08011310:	.4byte 0x04000120

_08011314:
	sub		r0, #0x1
	ldr		r2, [sp, #0x0]
	strb	r0, [r2, #0x0]
_0801131a:
	ldrb	r1, [r7, #0x1e]
	mov		r3, #0xc4
	lsl		r3, r3, #0x7
	add		r0, r3, #0x0
	b		_0801142e
_08011324:
	add		r1, r7, #0x0
	add		r1, #0x49
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r5, #0x3
	mov		r12, r1
	ldr		r3, _0801137c
_08011332:
	lsl		r0, r5, #0x1
	ldr		r2, _08011380
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	asr		r0, r4, #0x8
	sub		r2, r5, #0x1
	cmp		r0, #0x72
	bne		_0801135c
	lsl		r0, r2, #0x1
	add		r0, r0, r3
	strh	r4, [r0, #0x0]
	mov		r0, #0xff
	and		r4, r0
	mov		r0, #0x1
	lsl		r0, r5
	cmp		r4, r0
	bne		_0801135c
	ldrb	r0, [r1, #0x0]
	orr		r4, r0
	strb	r4, [r1, #0x0]
_0801135c:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_08011332
	ldrb	r0, [r7, #0x1d]
	mov		r3, r12
	ldrb	r3, [r3, #0x0]
	cmp		r0, r3
	bne		_0801131a
	mov		r0, #0x2
	strb	r0, [r7, #0x18]
	mov		r0, r12
	ldrb	r1, [r0, #0x0]
	mov		r2, #0xc2
	lsl		r2, r2, #0x7
	b		_0801142c

.incbin "base.gba", 0x1137A, 0x2

_0801137c:	.4byte 0x03000150
_08011380:	.4byte 0x04000120

_08011384:
	mov		r5, #0x3
	mov		r3, #0x49
	add		r3, r3, r7
	mov		r12, r3
	mov		r4, r12
	mov		r6, #0x1
	ldr		r0, _080113c8
	mov		r9, r0
	ldr		r1, _080113cc
	mov		r8, r1
_08011398:
	ldrb	r3, [r4, #0x0]
	add		r0, r3, #0x0
	asr		r0, r5
	and		r0, r6
	sub		r2, r5, #0x1
	cmp		r0, #0x0
	beq		_080113be
	lsl		r0, r5, #0x1
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	lsl		r0, r2, #0x1
	add		r0, r9
	ldrh	r0, [r0, #0x0]
	cmp		r1, r0
	beq		_080113be
	add		r0, r6, #0x0
	lsl		r0, r5
	eor		r3, r0
	strb	r3, [r4, #0x0]
_080113be:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_08011398
	b		_0801155c

.incbin "base.gba", 0x113C6, 0x2

_080113c8:	.4byte 0x03000150
_080113cc:	.4byte 0x04000120

_080113d0:
	mov		r3, #0x1
	mov		r5, #0x3
	mov		r2, #0x49
	add		r2, r2, r7
	mov		r12, r2
	mov		r0, #0x19
	add		r0, r0, r7
	mov		r8, r0
	mov		r6, #0x0
	ldr		r1, _08011438
	mov		r9, r1
_080113e6:
	lsl		r0, r5, #0x1
	ldr		r2, _0801143c
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	sub		r2, r5, #0x1
	mov		r1, r8
	add		r0, r1, r2
	strb	r4, [r0, #0x0]
	mov		r0, r12
	ldrb	r1, [r0, #0x0]
	asr		r1, r5
	mov		r0, #0x1
	and		r1, r0
	cmp		r1, #0x0
	beq		_0801141c
	asr		r0, r4, #0x8
	sub		r0, #0x72
	cmp		r0, #0x1
	bls		_08011410
	b		_080115da
_08011410:
	lsl		r0, r2, #0x1
	add		r0, r9
	ldrh	r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0801141c
	mov		r3, #0x0
_0801141c:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_080113e6
	cmp		r3, #0x0
	bne		_08011440
	ldrb	r1, [r7, #0x1c]
	mov		r2, #0xc6
	lsl		r2, r2, #0x7
_0801142c:
	add		r0, r2, #0x0
_0801142e:
	orr		r1, r0
	add		r0, r7, #0x0
	bl		sub_0801165c
	b		_0801164a

_08011438:	.4byte 0x03000150
_0801143c:	.4byte 0x04000120

_08011440:
	mov		r0, #0xd1
	strb	r0, [r7, #0x18]
	mov		r3, #0x11
	mov		r5, #0x3
	mov		r1, r8
	add		r1, #0x2
_0801144c:
	ldrb	r0, [r1, #0x0]
	add		r3, r3, r0
	sub		r1, #0x1
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0801144c
	strb	r3, [r7, #0x14]
	mov		r0, #0xff
	and		r3, r0
	mov		r1, #0xc8
	lsl		r1, r1, #0x7
	add		r0, r1, #0x0
	orr		r3, r0
	add		r0, r7, #0x0
	add		r1, r3, #0x0
	bl		sub_0801165c
	b		_0801164a
_08011470:
	mov		r5, #0x3
	mov		r2, #0x49
	ldrb	r1, [r2, r7]
	ldr		r2, _080114b0
	mov		r3, #0x1
_0801147a:
	ldrh	r0, [r2, #0x0]
	add		r4, r0, #0x0
	add		r0, r1, #0x0
	asr		r0, r5
	and		r0, r3
	cmp		r0, #0x0
	beq		_08011490
	asr		r0, r4, #0x8
	cmp		r0, #0x73
	beq		_08011490
	b		_08011610
_08011490:
	sub		r2, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0801147a
	add		r0, r7, #0x0
	bl		sub_08071b84
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_080114b4
	mov		r0, #0xe0
	strb	r0, [r7, #0x18]
	add		r0, #0xb0
	strh	r0, [r7, #0x16]
	b		_08011648

.incbin "base.gba", 0x114AE, 0x2

_080114b0:	.4byte 0x04000126

_080114b4:
	mov		r1, #0x0
	strb	r1, [r7, #0x1e]
	strb	r1, [r7, #0x18]
	strb	r1, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r3, [sp, #0x0]
	strb	r0, [r3, #0x0]
	mov		r0, r10
	strb	r1, [r0, #0x0]
	strh	r1, [r7, #0x16]
	ldr		r0, _080114e4
	strh	r1, [r0, #0x0]
	ldr		r2, _080114e8
	ldr		r3, _080114ec
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _080114f0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1e
	ldr		r1, [sp, #0x0]
	strb	r0, [r1, #0x0]
	mov		r0, #0x70
	b		_0801164a

.incbin "base.gba", 0x114E2, 0x2

_080114e4:	.4byte 0x04000134
_080114e8:	.4byte 0x04000128
_080114ec:	.4byte 0x00002003
_080114f0:	.4byte 0x0400012A

_080114f4:
	mov		r5, #0x3
	mov		r2, #0x49
	add		r2, r2, r7
	mov		r12, r2
	mov		r8, r12
	mov		r3, #0x1
	mov		r9, r3
_08011502:
	mov		r0, r8
	ldrb	r6, [r0, #0x0]
	add		r0, r6, #0x0
	asr		r0, r5
	mov		r1, r9
	and		r0, r1
	cmp		r0, #0x0
	beq		_0801153c
	lsl		r0, r5, #0x1
	ldr		r2, _08011558
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	asr		r2, r4, #0x8
	ldrb	r0, [r7, #0x18]
	lsr		r0, r0, #0x1
	mov		r1, #0x62
	sub		r1, r1, r0
	mov		r3, r9
	lsl		r3, r5
	cmp		r2, r1
	bne		_08011536
	mov		r0, #0xff
	and		r4, r0
	cmp		r4, r3
	beq		_0801153c
_08011536:
	eor		r6, r3
	mov		r3, r8
	strb	r6, [r3, #0x0]
_0801153c:
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_08011502
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xc4
	bne		_0801155c
	mov		r0, r12
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xe
	and		r0, r1
	strb	r0, [r7, #0x1e]
	strb	r5, [r7, #0x18]
	b		_0801131a

.incbin "base.gba", 0x11556, 0x2

_08011558:	.4byte 0x04000120

_0801155c:
	mov		r1, r12
	ldrb	r2, [r1, #0x0]
	cmp		r2, #0x0
	bne		_0801159c
	strb	r2, [r7, #0x1e]
	strb	r2, [r7, #0x18]
	strb	r2, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r3, [sp, #0x0]
	strb	r0, [r3, #0x0]
	mov		r0, r10
	strb	r2, [r0, #0x0]
	strh	r2, [r7, #0x16]
	ldr		r0, _0801158c
	strh	r2, [r0, #0x0]
	ldr		r1, _08011590
	ldr		r3, _08011594
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _08011598
	strh	r2, [r0, #0x0]
	mov		r0, #0x50
	b		_0801164a

.incbin "base.gba", 0x1158A, 0x2

_0801158c:	.4byte 0x04000134
_08011590:	.4byte 0x04000128
_08011594:	.4byte 0x00002003
_08011598:	.4byte 0x0400012A

_0801159c:
	ldrb	r0, [r7, #0x18]
	add		r0, #0x2
	strb	r0, [r7, #0x18]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xc4
	bne		_080115ac
	b		_0801131a
_080115ac:
	ldrb	r0, [r7, #0x18]
	ldr		r1, [r7, #0x28]
	add		r0, r0, r1
	sub		r1, r0, #0x3
	ldrb	r2, [r1, #0x0]
	lsl		r2, r2, #0x8
	sub		r0, #0x4
	ldrb	r1, [r0, #0x0]
	orr		r1, r2
	add		r0, r7, #0x0
	bl		sub_0801165c
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_0801164a
	add		r0, r7, #0x0
	add		r0, #0x4b
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08011648
_080115d4:
	bl		sub_080119c4
	b		_0801116c
_080115da:
	strb	r6, [r7, #0x1e]
	strb	r6, [r7, #0x18]
	strb	r6, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r1, [sp, #0x0]
	strb	r0, [r1, #0x0]
	mov		r2, r10
	strb	r6, [r2, #0x0]
	strh	r6, [r7, #0x16]
	ldr		r0, _08011600
	strh	r6, [r0, #0x0]
	ldr		r1, _08011604
	ldr		r3, _08011608
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0801160c
	strh	r6, [r0, #0x0]
	mov		r0, #0x60
	b		_0801164a

_08011600:	.4byte 0x04000134
_08011604:	.4byte 0x04000128
_08011608:	.4byte 0x00002003
_0801160c:	.4byte 0x0400012A

_08011610:
	mov		r1, #0x0
	strb	r1, [r7, #0x1e]
	strb	r1, [r7, #0x18]
	strb	r1, [r7, #0x1d]
	mov		r0, #0xf
	ldr		r2, [sp, #0x0]
	strb	r0, [r2, #0x0]
	mov		r3, r10
	strb	r1, [r3, #0x0]
	strh	r1, [r7, #0x16]
	ldr		r0, _08011638
	strh	r1, [r0, #0x0]
	ldr		r2, _0801163c
	ldr		r3, _08011640
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _08011644
	strh	r1, [r0, #0x0]
	mov		r0, #0x60
	b		_0801164a

_08011638:	.4byte 0x04000134
_0801163c:	.4byte 0x04000128
_08011640:	.4byte 0x00002003
_08011644:	.4byte 0x0400012A

_08011648:
	mov		r0, #0x0
_0801164a:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x1165A, 0x2
	thumb_func_end sub_08011140

	thumb_func_start sub_0801165c
sub_0801165c:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r5, _08011688
	ldrh	r0, [r5, #0x0]
	mov		r4, #0x8c
	and		r4, r0
	cmp		r4, #0x8
	bne		_08011694
	ldr		r0, _0801168c
	strh	r1, [r0, #0x0]
	ldr		r1, _08011690
	add		r0, r1, #0x0
	strh	r0, [r5, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x48
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x0
	b		_080116c0

.incbin "base.gba", 0x11686, 0x2

_08011688:	.4byte 0x04000128
_0801168c:	.4byte 0x0400012A
_08011690:	.4byte 0x00002083

_08011694:
	mov		r1, #0x0
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add		r3, r2, #0x0
	add		r3, #0x4a
	mov		r0, #0xf
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x48
	strb	r1, [r0, #0x0]
	strh	r1, [r2, #0x16]
	ldr		r0, _080116c8
	strh	r1, [r0, #0x0]
	ldr		r2, _080116cc
	add		r0, r2, #0x0
	strh	r0, [r5, #0x0]
	ldr		r0, _080116d0
	strh	r1, [r0, #0x0]
	mov		r0, #0x8
	eor		r4, r0
	add		r0, r4, #0x0
_080116c0:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x116C6, 0x2

_080116c8:	.4byte 0x04000134
_080116cc:	.4byte 0x00002003
_080116d0:	.4byte 0x0400012A
	thumb_func_end sub_0801165c

	thumb_func_start sub_080116d4
sub_080116d4:
	add		r2, r0, #0x0
	ldrb	r0, [r2, #0x18]
	cmp		r0, #0x0
	beq		_08011718
	mov		r1, #0x0
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add		r3, r2, #0x0
	add		r3, #0x4a
	mov		r0, #0xf
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x48
	strb	r1, [r0, #0x0]
	strh	r1, [r2, #0x16]
	ldr		r0, _08011708
	strh	r1, [r0, #0x0]
	ldr		r2, _0801170c
	ldr		r3, _08011710
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _08011714
	strh	r1, [r0, #0x0]
	b		_08011724

.incbin "base.gba", 0x11706, 0x2

_08011708:	.4byte 0x04000134
_0801170c:	.4byte 0x04000128
_08011710:	.4byte 0x00002003
_08011714:	.4byte 0x0400012A

_08011718:
	add		r1, r2, #0x0
	add		r1, #0x4a
	strb	r0, [r1, #0x0]
	strb	r0, [r2, #0x1e]
	mov		r0, #0x1
	strb	r0, [r2, #0x18]
_08011724:
	bx		lr

.incbin "base.gba", 0x11726, 0x2
	thumb_func_end sub_080116d4

	thumb_func_start sub_08011728
sub_08011728:
	push	{ r4, r5, r6, r7, lr }
	mov		r12, r0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	ldr		r0, [sp, #0x0+0x14]
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	mov		r2, #0x0
	mov		r1, r12
	ldrb	r0, [r1, #0x18]
	cmp		r0, #0x0
	bne		_08011754
	ldrb	r0, [r1, #0x1e]
	cmp		r0, #0x0
	beq		_08011754
	mov		r5, r12
	add		r5, #0x4a
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08011790
_08011754:
	mov		r1, #0x0
	mov		r2, r12
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add		r2, #0x4a
	mov		r0, #0xf
	strb	r0, [r2, #0x0]
	mov		r0, r12
	add		r0, #0x48
	strb	r1, [r0, #0x0]
	mov		r3, r12
	strh	r1, [r3, #0x16]
	ldr		r0, _08011780
	strh	r1, [r0, #0x0]
	ldr		r2, _08011784
	ldr		r4, _08011788
	add		r0, r4, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _0801178c
	strh	r1, [r0, #0x0]
	b		_08011856

_08011780:	.4byte 0x04000134
_08011784:	.4byte 0x04000128
_08011788:	.4byte 0x00002003
_0801178c:	.4byte 0x0400012A

_08011790:
	mov		r0, r12
	str		r6, [r0, #0x20]
	add		r4, #0xf
	mov		r0, #0x10
	neg		r0, r0
	and		r4, r0
	sub		r0, #0xf0
	add		r1, r4, r0
	ldr		r0, _080117cc
	cmp		r1, r0
	bls		_080117e0
	mov		r1, r12
	strb	r2, [r1, #0x1e]
	strb	r2, [r1, #0x18]
	strb	r2, [r1, #0x1d]
	mov		r0, #0xf
	strb	r0, [r5, #0x0]
	mov		r0, r12
	add		r0, #0x48
	strb	r2, [r0, #0x0]
	strh	r2, [r1, #0x16]
	ldr		r0, _080117d0
	strh	r2, [r0, #0x0]
	ldr		r1, _080117d4
	ldr		r3, _080117d8
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _080117dc
	strh	r2, [r0, #0x0]
	b		_08011856

_080117cc:	.4byte 0x0003FF00
_080117d0:	.4byte 0x04000134
_080117d4:	.4byte 0x04000128
_080117d8:	.4byte 0x00002003
_080117dc:	.4byte 0x0400012A

_080117e0:
	add		r0, r6, r4
	mov		r4, r12
	str		r0, [r4, #0x24]
	lsl		r1, r7, #0x18
	mov		r4, #0x80
	lsl		r4, r4, #0x13
	add		r0, r1, r4
	asr		r0, r0, #0x18
	add		r4, r1, #0x0
	cmp		r0, #0x8
	bhi		_08011840
	lsl		r0, r0, #0x2
	ldr		r1, _08011800
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08011800:	.4byte 0x08011804
_08011804:	.4byte 0x08011828

.incbin "base.gba", 0x11808, 0x20
	thumb_func_end sub_08011728


.incbin "base.gba", 0x11828, 0x18

_08011840:

.incbin "base.gba", 0x11840, 0x16
_08011856:

.incbin "base.gba", 0x11856, 0x6
	thumb_func_start sub_0801185c
sub_0801185c:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldrb	r0, [r2, #0x18]
	cmp		r0, #0xe0
	beq		_08011878
	cmp		r0, #0xe0
	blt		_08011888
	cmp		r0, #0xe8
	bgt		_08011888
	cmp		r0, #0xe7
	blt		_08011888
	mov		r4, #0x3
	ldrb	r5, [r2, #0x1e]
	b		_080118e8
_08011878:
	mov		r1, #0x0
	mov		r0, #0xe1
	strb	r0, [r2, #0x18]
	str		r1, [r2, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0xd
	str		r0, [r2, #0x0]
	b		_080118da
_08011888:
	mov		r4, #0x3
	ldrb	r5, [r2, #0x1e]
	mov		r6, #0x1
	ldr		r1, _080118e4
_08011890:
	ldrh	r0, [r1, #0x0]
	add		r3, r0, #0x0
	add		r0, r5, #0x0
	asr		r0, r4
	and		r0, r6
	cmp		r0, #0x0
	beq		_080118a4
	ldr		r0, [r2, #0x4]
	cmp		r3, r0
	bne		_08011878
_080118a4:
	sub		r1, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08011890
	ldrb	r0, [r2, #0x18]
	add		r0, #0x1
	strb	r0, [r2, #0x18]
	ldr		r1, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	str		r0, [r2, #0x4]
	cmp		r1, #0x0
	bne		_080118d2
	ldr		r0, [r2, #0x28]
	add		r1, r0, #0x0
	add		r1, #0xac
	ldrb	r1, [r1, #0x0]
	add		r0, #0xad
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	orr		r1, r0
	str		r1, [r2, #0x4]
	lsl		r1, r1, #0x5
	str		r1, [r2, #0x0]
_080118d2:
	ldr		r0, [r2, #0x0]
	lsr		r0, r0, #0x5
	str		r0, [r2, #0x0]
_080118d8:
	ldrh	r1, [r2, #0x0]
_080118da:
	add		r0, r2, #0x0
	bl		sub_0801165c
	b		_08011972

.incbin "base.gba", 0x118E2, 0x2

_080118e4:	.4byte 0x04000126

_080118e8:
	lsl		r0, r4, #0x1
	ldr		r1, _08011930
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	add		r3, r0, #0x0
	add		r0, r5, #0x0
	asr		r0, r4
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08011904
	ldr		r0, [r2, #0x4]
	cmp		r3, r0
	bne		_08011934
_08011904:
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080118e8
	ldrb	r0, [r2, #0x18]
	add		r0, #0x1
	strb	r0, [r2, #0x18]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xe9
	beq		_08011970
	ldr		r0, [r2, #0x28]
	add		r1, r0, #0x0
	add		r1, #0xae
	ldrb	r1, [r1, #0x0]
	add		r0, #0xaf
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	orr		r1, r0
	str		r1, [r2, #0x0]
	str		r1, [r2, #0x4]
	b		_080118d8

.incbin "base.gba", 0x1192E, 0x2

_08011930:	.4byte 0x04000120

_08011934:
	mov		r1, #0x0
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add		r3, r2, #0x0
	add		r3, #0x4a
	mov		r0, #0xf
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x48
	strb	r1, [r0, #0x0]
	strh	r1, [r2, #0x16]
	ldr		r0, _08011960
	strh	r1, [r0, #0x0]
	ldr		r2, _08011964
	ldr		r3, _08011968
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _0801196c
	strh	r1, [r0, #0x0]
	mov		r0, #0x71
	b		_08011972

_08011960:	.4byte 0x04000134
_08011964:	.4byte 0x04000128
_08011968:	.4byte 0x00002003
_0801196c:	.4byte 0x0400012A

_08011970:
	mov		r0, #0x0
_08011972:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0801185c

	thumb_func_start sub_08011978
sub_08011978:
	add		r2, r0, #0x0
	mov		r1, #0x0
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add		r3, r2, #0x0
	add		r3, #0x4a
	mov		r0, #0xf
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x48
	strb	r1, [r0, #0x0]
	strh	r1, [r2, #0x16]
	ldr		r0, _080119a4
	strh	r1, [r0, #0x0]
	ldr		r2, _080119a8
	ldr		r3, _080119ac
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _080119b0
	strh	r1, [r0, #0x0]
	bx		lr

_080119a4:	.4byte 0x04000134
_080119a8:	.4byte 0x04000128
_080119ac:	.4byte 0x00002003
_080119b0:	.4byte 0x0400012A
	thumb_func_end sub_08011978

	thumb_func_start sub_080119b4
sub_080119b4:
	ldrb	r0, [r0, #0x18]
	cmp		r0, #0xe9
	beq		_080119be
	mov		r0, #0x0
	b		_080119c0
_080119be:
	mov		r0, #0x1
_080119c0:
	bx		lr

.incbin "base.gba", 0x119C2, 0x2
	thumb_func_end sub_080119b4

	thumb_func_start sub_080119c4
sub_080119c4:
	push	{ r4, r5, lr }
	mov		r2, #0x0
	ldr		r3, _08011a04
	ldrh	r1, [r3, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_080119e8
	ldr		r5, _08011a08
	mov		r4, #0x80
_080119d8:
	add		r2, #0x1
	cmp		r2, r5
	bgt		_080119e8
	ldrh	r1, [r3, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_080119d8
_080119e8:
	mov		r2, pc
	lsr		r2, r2, #0x18
	mov		r1, #0xc
	cmp		r2, #0x2
	beq		_080119fa
	mov		r1, #0xd
	cmp		r2, #0x8
	beq		_080119fa
	mov		r1, #0x4
_080119fa:
	sub		r0, r0, r1
	bgt		_080119fa
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08011a04:	.4byte 0x04000128
_08011a08:	.4byte 0x0000795C
	thumb_func_end sub_080119c4

	thumb_func_start sub_08011a0c
sub_08011a0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r3, _08011ad4
	mov		r4, #0x0
	strh	r4, [r3, #0x0]
	ldr		r2, _08011ad8
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08011adc
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	ldr		r0, _08011ae0
	strh	r4, [r0, #0x0]
	sub		r2, #0xd8
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	str		r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	ldr		r3, _08011ae4
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r4, _08011ae8
	ldr		r2, _08011aec
	mov		r0, sp
	add		r1, r4, #0x0
	bl		sub_08071b6c
	strb	r5, [r4, #0x2]
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x60
	str		r0, [r4, #0x28]
	add		r0, #0x10
	str		r0, [r4, #0x2c]
	mov		r3, #0x0
	add		r5, r4, #0x0
	add		r5, #0xa0
	mov		r2, #0x0
	mov		r7, #0x30
	add		r7, r7, r4
	mov		r8, r7
	mov		r0, #0x80
	add		r0, r0, r4
	mov		r12, r0
	add		r6, r4, #0x0
	add		r6, #0x90
	mov		r7, #0x40
	add		r7, r7, r4
	mov		r9, r7
_08011a82:
	lsl		r1, r3, #0x2
	mov		r7, r12
	add		r0, r2, r7
	mov		r7, r8
	add		r7, #0x4
	mov		r8, r7
	sub		r7, #0x4
	stmia	r7!, { r0 }
	add		r0, r2, r6
	mov		r7, r9
	add		r7, #0x4
	mov		r9, r7
	sub		r7, #0x4
	stmia	r7!, { r0 }
	add		r0, r4, #0x0
	add		r0, #0x50
	add		r1, r1, r0
	str		r5, [r1, #0x0]
	add		r5, #0x30
	add		r2, #0x30
	add		r3, #0x1
	cmp		r3, #0x3
	ble		_08011a82
	mov		r0, #0x0
	ldr		r3, _08011ad4
	strh	r0, [r3, #0x0]
	ldr		r2, _08011ad8
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	add		sp, #0x4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x11AD2, 0x2

_08011ad4:	.4byte 0x04000208
_08011ad8:	.4byte 0x04000200
_08011adc:	.4byte 0x0000FF3F
_08011ae0:	.4byte 0x04000134
_08011ae4:	.4byte 0x00004003
_08011ae8:	.4byte 0x03002E80
_08011aec:	.4byte 0x05000050
	thumb_func_end sub_08011a0c

	thumb_func_start sub_08011af0
sub_08011af0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r12, r1
	mov		r8, r2
	ldr		r5, _08011b10
	ldr		r6, [r5, #0x0]
	ldr		r7, _08011b14
	ldrb	r0, [r7, #0x1]
	cmp		r0, #0x0
	beq		_08011b18
	cmp		r0, #0x1
	beq		_08011b84
	b		_08011b92

_08011b10:	.4byte 0x04000128
_08011b14:	.4byte 0x03002E80

_08011b18:
	mov		r1, #0x30
	add		r0, r6, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08011b7e
	mov		r0, #0x88
	add		r4, r6, #0x0
	and		r4, r0
	cmp		r4, #0x8
	bne		_08011b92
	mov		r1, #0x4
	add		r0, r6, #0x0
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	cmp		r2, #0x0
	bne		_08011b7e
	ldr		r1, [r7, #0x14]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08011b7e
	ldr		r3, _08011bc4
	strh	r2, [r3, #0x0]
	ldr		r2, _08011bc8
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08011bcc
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x40
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	ldrb	r1, [r5, #0x1]
	mov		r0, #0x41
	neg		r0, r0
	and		r0, r1
	strb	r0, [r5, #0x1]
	ldr		r1, _08011bd0
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	sub		r1, #0xf6
	ldr		r0, _08011bd4
	str		r0, [r1, #0x0]
	strb	r4, [r7, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strb	r0, [r5, #0x0]
_08011b7e:
	ldr		r1, _08011bd8
	mov		r0, #0x1
	strb	r0, [r1, #0x1]
_08011b84:
	mov		r0, r12
	bl		sub_08011cdc
	mov		r0, r9
	mov		r1, r8
	bl		sub_08011c0c
_08011b92:
	ldr		r1, _08011bd8
	ldrb	r0, [r1, #0xb]
	add		r0, #0x1
	strb	r0, [r1, #0xb]
	ldrb	r3, [r1, #0x3]
	ldrb	r2, [r1, #0x8]
	mov		r0, #0x10
	and		r0, r2
	orr		r3, r0
	mov		r0, #0x20
	and		r0, r2
	orr		r3, r0
	mov		r0, #0x40
	and		r0, r2
	orr		r3, r0
	ldrb	r0, [r1, #0x2]
	lsl		r2, r0, #0x8
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x8
	bne		_08011bdc
	mov		r0, #0x80
	orr		r0, r2
	orr		r0, r3
	b		_08011be0

.incbin "base.gba", 0x11BC2, 0x2

_08011bc4:	.4byte 0x04000208
_08011bc8:	.4byte 0x04000200
_08011bcc:	.4byte 0x0000FF7F
_08011bd0:	.4byte 0x04000202
_08011bd4:	.4byte 0x000092C6
_08011bd8:	.4byte 0x03002E80

_08011bdc:
	add		r0, r3, #0x0
	orr		r0, r2
_08011be0:
	add		r2, r0, #0x0
	ldrb	r0, [r1, #0x9]
	cmp		r0, #0x0
	beq		_08011bee
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	orr		r2, r0
_08011bee:
	add		r1, r2, #0x0
	lsl		r0, r6, #0x1a
	lsr		r0, r0, #0x1e
	cmp		r0, #0x3
	bls		_08011bfe
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	orr		r1, r0
_08011bfe:
	add		r0, r1, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08011af0

	thumb_func_start sub_08011c0c
sub_08011c0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, #0x0
	ldr		r5, _08011ccc
	ldr		r4, [r5, #0x28]
	mov		r2, #0x1
	and		r1, r2
	lsl		r1, r1, #0x4
	ldrb	r3, [r4, #0x1]
	mov		r2, #0x11
	neg		r2, r2
	and		r2, r3
	orr		r2, r1
	strb	r2, [r4, #0x1]
	ldr		r6, [r5, #0x28]
	ldr		r1, _08011cd0
	ldrb	r1, [r1, #0x3]
	mov		r3, #0x1
	add		r2, r3, #0x0
	and		r2, r1
	lsl		r2, r2, #0x5
	ldrb	r4, [r6, #0x1]
	mov		r1, #0x21
	neg		r1, r1
	and		r1, r4
	orr		r1, r2
	strb	r1, [r6, #0x1]
	ldr		r4, [r5, #0x28]
	ldrb	r1, [r5, #0x8]
	lsl		r1, r1, #0x19
	lsr		r1, r1, #0x1f
	and		r3, r1
	lsl		r3, r3, #0x6
	ldrb	r2, [r4, #0x1]
	mov		r1, #0x41
	neg		r1, r1
	and		r1, r2
	orr		r1, r3
	strb	r1, [r4, #0x1]
	ldr		r2, [r5, #0x28]
	ldrb	r1, [r5, #0xb]
	strb	r1, [r2, #0x0]
	ldr		r4, [r5, #0x28]
	ldrb	r2, [r5, #0x2]
	ldrb	r1, [r5, #0x3]
	eor		r2, r1
	mov		r1, #0xf
	and		r2, r1
	ldrb	r3, [r4, #0x1]
	mov		r1, #0x10
	neg		r1, r1
	and		r1, r3
	orr		r1, r2
	strb	r1, [r4, #0x1]
	ldr		r1, [r5, #0x28]
	strh	r7, [r1, #0x2]
	ldr		r1, [r5, #0x28]
	add		r1, #0x4
	ldr		r2, _08011cd4
	bl		sub_08071b6c
	mov		r2, #0x0
	ldr		r1, [r5, #0x28]
_08011c88:
	ldrh	r0, [r1, #0x0]
	add		r7, r7, r0
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, #0x5
	bls		_08011c88
	add		r2, r5, #0x0
	ldr		r1, [r2, #0x28]
	mvn		r0, r7
	strh	r0, [r1, #0x2]
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08011ca8
	ldr		r1, _08011cd8
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08011ca8:
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r5, #0x14]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08011cc4
	ldrb	r1, [r5, #0x8]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08011cc4
	ldr		r1, _08011cd8
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
_08011cc4:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x11CCA, 0x2

_08011ccc:	.4byte 0x03002E80
_08011cd0:	.4byte 0x03002D20
_08011cd4:	.4byte 0x04000002
_08011cd8:	.4byte 0x0400010E
	thumb_func_end sub_08011c0c

	thumb_func_start sub_08011cdc
sub_08011cdc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x8]
	ldr		r1, _08011e04
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r6, _08011e08
	add		r3, r6, #0x4
	add		r0, sp, #0x4
	mov		r10, r0
	add		r2, r6, #0x0
	add		r2, #0x40
	mov		r5, #0x3
_08011cfe:
	ldr		r1, [r2, #0x10]
	ldr		r0, [r2, #0x0]
	str		r0, [r2, #0x10]
	stmia	r2!, {  r1 }
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08011cfe
	ldr		r0, [r3, #0x0]
	str		r0, [sp, #0x0]
	mov		r2, #0x0
	str		r2, [r3, #0x0]
	ldr		r1, _08011e04
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	sub		r0, r3, #0x4
	strb	r2, [r0, #0x3]
	mov		r5, #0x0
	add		r6, r0, #0x0
	add		r7, r6, #0x0
	mov		r1, #0x50
	add		r1, r1, r7
	mov		r9, r1
_08011d2a:
	mov		r4, #0x0
	mov		r2, #0x0
	lsl		r6, r5, #0x2
	add		r0, r5, #0x1
	mov		r8, r0
	mov		r1, sp
	add		r3, r1, r5
	mov		r1, r9
	add		r0, r6, r1
	ldr		r1, [r0, #0x0]
_08011d3e:
	ldrh	r0, [r1, #0x0]
	add		r4, r4, r0
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, #0x5
	bls		_08011d3e
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_08011d9c
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	mov		r2, #0x1
	neg		r2, r2
	cmp		r0, r2
	bne		_08011d9c
	mov		r0, #0x1
	lsl		r0, r5
	ldrb	r1, [r7, #0x3]
	orr		r0, r1
	strb	r0, [r7, #0x3]
	ldrb	r2, [r7, #0x8]
	lsl		r1, r2, #0x1c
	lsr		r1, r1, #0x1c
	mov		r4, r9
	add		r3, r6, r4
	ldr		r0, [r3, #0x0]
	ldrb	r0, [r0, #0x1]
	lsl		r0, r0, #0x1a
	lsr		r0, r0, #0x1f
	lsl		r0, r5
	orr		r0, r1
	mov		r1, #0xf
	and		r0, r1
	mov		r4, #0x10
	neg		r4, r4
	add		r1, r4, #0x0
	and		r2, r1
	orr		r2, r0
	strb	r2, [r7, #0x8]
	ldr		r0, [r3, #0x0]
	add		r0, #0x4
	lsl		r1, r5, #0x3
	ldr		r2, [sp, #0x8]
	add		r1, r2, r1
	ldr		r2, _08011e0c
	bl		sub_08071b6c
_08011d9c:
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	mov		r4, r9
	add		r0, r6, r4
	ldr		r1, [r0, #0x0]
	add		r1, #0x4
	mov		r0, r10
	ldr		r2, _08011e10
	bl		sub_08071b6c
	mov		r5, r8
	cmp		r5, #0x3
	ble		_08011d2a
	ldr		r0, _08011e08
	ldrb	r1, [r0, #0x2]
	ldrb	r2, [r0, #0x3]
	add		r3, r1, #0x0
	orr		r3, r2
	strb	r3, [r0, #0x2]
	mov		r1, #0x1
	and		r1, r2
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_08011e50
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x8
	bne		_08011e14
	mov		r0, #0x3
	and		r0, r2
	cmp		r0, #0x0
	beq		_08011dea
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r3
	bne		_08011dea
	ldrb	r0, [r6, #0x8]
	mov		r1, #0x10
	orr		r0, r1
	strb	r0, [r6, #0x8]
_08011dea:
	ldrb	r4, [r6, #0x8]
	lsl		r2, r4, #0x1c
	lsr		r2, r2, #0x1c
	mov		r0, #0xe
	ldrb	r3, [r6, #0x2]
	add		r1, r0, #0x0
	and		r1, r2
	and		r0, r3
	cmp		r1, r0
	bne		_08011e34
	mov		r0, #0x40
	orr		r0, r4
	b		_08011e32

_08011e04:	.4byte 0x04000208
_08011e08:	.4byte 0x03002E80
_08011e0c:	.4byte 0x04000002
_08011e10:	.4byte 0x05000002

_08011e14:
	ldrb	r2, [r6, #0x8]
	lsl		r1, r2, #0x19
	lsr		r1, r1, #0x1f
	ldr		r0, [r6, #0x50]
	ldrb	r0, [r0, #0x1]
	lsl		r0, r0, #0x19
	lsr		r0, r0, #0x1f
	orr		r1, r0
	mov		r0, #0x1
	and		r1, r0
	lsl		r1, r1, #0x6
	mov		r0, #0x41
	neg		r0, r0
	and		r0, r2
	orr		r0, r1
_08011e32:
	strb	r0, [r6, #0x8]
_08011e34:
	ldrb	r2, [r6, #0x8]
	lsl		r1, r2, #0x1a
	lsr		r1, r1, #0x1f
	ldr		r0, [r6, #0x50]
	ldrb	r0, [r0, #0x1]
	lsl		r0, r0, #0x1b
	lsr		r0, r0, #0x1f
	orr		r0, r1
	lsl		r0, r0, #0x5
	mov		r1, #0x21
	neg		r1, r1
	and		r1, r2
	orr		r1, r0
	strb	r1, [r6, #0x8]
_08011e50:
	ldrb	r0, [r6, #0x3]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x11E62, 0x1A2

_08012004:	.4byte 0x08012018

.incbin "base.gba", 0x12008, 0x10
	thumb_func_end sub_08011cdc


.incbin "base.gba", 0x12018, 0x6B8
_080126d0:	.4byte 0x080127a6

.incbin "base.gba", 0x126D4, 0x104
	thumb_func_start sub_080127d8
sub_080127d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r5, r0, #0x0
	mov		r4, #0x0
	mov		r1, #0xff
	lsl		r1, r1, #0x2
	mov		r8, r1
	mov		r7, #0x80
	lsl		r7, r7, #0x1
	add		r3, r5, #0x0
	add		r3, r8
	mov		r9, r3
	mov		r6, #0x0
	mov		r12, r6
_080127fa:
	mov		r0, #0xa5
	lsl		r0, r0, #0x2
	add		r0, r12
	add		r2, r5, r0
	ldr		r0, [r2, #0x1c]
	cmp		r0, #0x1
	beq		_08012840
	cmp		r0, #0x1
	bgt		_08012812
	cmp		r0, #0x0
	beq		_0801281c
	b		_080128c4
_08012812:
	cmp		r0, #0x2
	beq		_08012850
	cmp		r0, #0x3
	beq		_08012890
	b		_080128c4
_0801281c:
	ldr		r0, _0801283c
	strh	r0, [r2, #0x0]
	mov		r0, #0x58
	strh	r0, [r2, #0x2]
	mov		r0, #0x60
	str		r0, [r2, #0x4]
	sub		r0, #0x61
	str		r0, [r2, #0x8]
	str		r4, [r2, #0x14]
	mov		r0, #0x1
	str		r0, [r2, #0x1c]
	str		r6, [r2, #0x18]
	mov		r0, #0x3
	str		r0, [r2, #0x20]
	b		_080128c4

.incbin "base.gba", 0x1283A, 0x2

_0801283c:	.4byte 0x0000FFF0

_08012840:
	ldr		r0, [r2, #0x18]
	sub		r0, #0x1
	str		r0, [r2, #0x18]
	cmp		r0, #0x0
	bge		_080128c4
	mov		r0, #0x0
	str		r0, [r2, #0x18]
	b		_080128c0
_08012850:
	mov		r0, r8
	add		r1, r5, r0
	ldr		r0, [r1, #0x0]
	mov		r3, #0x1
	and		r0, r3
	cmp		r0, #0x0
	beq		_08012872
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
	ldr		r0, [r1, #0x0]
	and		r0, r3
	cmp		r0, #0x0
	beq		_08012872
	ldrh	r0, [r2, #0x2]
	add		r0, #0x1
	b		_08012876
_08012872:
	ldrh	r0, [r2, #0x2]
	sub		r0, #0x1
_08012876:
	strh	r0, [r2, #0x2]
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, r7
	ble		_080128c4
	ldr		r3, _0801288c
	add		r0, r1, r3
	strh	r0, [r2, #0x0]
	mov		r0, #0x3
	b		_080128c2

_0801288c:	.4byte 0xFFFFFEF0

_08012890:
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080128a2
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
_080128a2:
	ldr		r0, [r2, #0x4]
	add		r0, #0x2
	mov		r1, #0x7f
	and		r0, r1
	str		r0, [r2, #0x4]
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, r7
	ble		_080128c4
	ldr		r3, _080128e0
	add		r0, r1, r3
	strh	r0, [r2, #0x0]
	mov		r0, #0x60
	str		r0, [r2, #0x4]
_080128c0:
	mov		r0, #0x2
_080128c2:
	str		r0, [r2, #0x1c]
_080128c4:
	add		r6, #0x42
	mov		r0, #0x24
	add		r12, r0
	add		r4, #0x1
	cmp		r4, #0x7
	ble		_080127fa
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x128DE, 0x2

_080128e0:	.4byte 0xFFFFFEF0
	thumb_func_end sub_080127d8

	thumb_func_start sub_080128e4
sub_080128e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	mov		r8, r0
	bl		sub_080127d8
	mov		r5, #0x0
	mov		r9, r5
_080128f8:
	lsl		r0, r5, #0x3
	add		r0, r0, r5
	lsl		r0, r0, #0x2
	mov		r1, #0xa5
	lsl		r1, r1, #0x2
	add		r0, r0, r1
	mov		r2, r8
	add		r4, r2, r0
	ldr		r0, [r4, #0x8]
	ldr		r1, [r4, #0x4]
	cmp		r0, r1
	beq		_08012946
	cmp		r1, #0x3f
	ble		_0801291a
	mov		r0, #0x7f
	sub		r0, r0, r1
	b		_0801291c
_0801291a:
	add		r0, r1, #0x0
_0801291c:
	bl		sub_080085d8
	add		r2, r0, #0x0
	ldr		r1, [r4, #0x14]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	sub		r0, r0, r1
	lsl		r0, r0, #0xd
	lsl		r2, r2, #0x9
	ldr		r1, _08012980
	add		r2, r2, r1
	add		r0, r0, r2
	lsl		r1, r5, #0xa
	ldr		r2, _08012984
	add		r1, r1, r2
	mov		r2, #0x80
	bl		sub_08071b68
	ldr		r0, [r4, #0x4]
	str		r0, [r4, #0x8]
_08012946:
	ldr		r1, _08012988
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	add		r6, r4, #0x0
	add		r6, #0xc
	ldr		r7, [sp, #0x8]
	add		r5, #0x1
	ldr		r2, [r0, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
_0801295a:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0801295a
	ldr		r0, [r4, #0x4]
	mov		r1, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0801298c
	ldrh	r1, [r4, #0x10]
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r0, r2, #0x0
	orr		r0, r1
	b		_08012994

.incbin "base.gba", 0x1297E, 0x2

_08012980:	.4byte 0x08356800
_08012984:	.4byte 0x06014000
_08012988:	.4byte 0x080f557c

_0801298c:
	ldrh	r0, [r4, #0x10]
	ldr		r2, _080129d4
	add		r1, r2, #0x0
	and		r0, r1
_08012994:
	strh	r0, [r4, #0x10]
	ldrh	r1, [r4, #0x12]
	ldr		r2, _080129d8
	add		r0, r2, #0x0
	and		r1, r0
	ldr		r0, [r4, #0x20]
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh	r1, [r4, #0x12]
	ldrh	r1, [r4, #0x2]
	lsl		r1, r1, #0x10
	ldrh	r0, [r4, #0x0]
	orr		r0, r1
	str		r0, [sp, #0x8]
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	cmp		r5, #0x7
	ble		_080128f8
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080129d4:	.4byte 0x0000EFFF
_080129d8:	.4byte 0x0000F3FF
	thumb_func_end sub_080128e4

	thumb_func_start sub_080129dc
sub_080129dc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r7, r0, #0x0
	mov		r0, #0x1
	str		r0, [sp, #0x8]
	mov		r1, #0xb1
	lsl		r1, r1, #0x1
	mov		r10, r1
	ldr		r0, _08012a38
	str		r0, [sp, #0xc]
	mov		r1, #0x0
	mov		r8, r1
	mov		r0, #0x4
	mov		r9, r0
_08012a00:
	mov		r1, #0xf3
	lsl		r1, r1, #0x2
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, [sp, #0x8]
	cmp		r1, r0
	bge		_08012a70
	add		r0, r7, #0x0
	add		r0, #0x2c
	mov		r1, r9
	add		r4, r0, r1
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08012a22
	mov		r0, #0x8e
	bl		sub_0807073c
_08012a22:
	ldr		r1, [r4, #0x0]
	add		r0, r1, #0x1
	str		r0, [r4, #0x0]
	cmp		r0, #0x10
	bgt		_08012a40
	add		r5, r0, #0x0
	ldr		r6, _08012a38
	add		r6, r8
	ldr		r4, _08012a3c
	b		_08012a4a

.incbin "base.gba", 0x12A36, 0x2

_08012a38:	.4byte 0x080df05a
_08012a3c:	.4byte 0x080df06e

_08012a40:
	add		r5, r1, #0x0
	sub		r5, #0xf
	ldr		r6, _08012a68
	add		r6, r8
	ldr		r4, _08012a6c
_08012a4a:
	add		r4, r8
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	add		r2, r10
	str		r5, [sp, #0x0]
	mov		r0, #0x10
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	mov		r3, #0x5
	bl		sub_0800f124
	b		_08012a98

_08012a68:	.4byte 0x080df06e
_08012a6c:	.4byte 0x080df064

_08012a70:
	add		r0, r7, #0x0
	add		r0, #0x2c
	mov		r1, r9
	add		r4, r0, r1
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	ble		_08012a84
	mov		r0, #0x90
	bl		sub_0807073c
_08012a84:
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, r10
	ldr		r0, [sp, #0xc]
	mov		r2, #0x5
	bl		sub_08071b6c
_08012a98:
	mov		r0, #0x20
	add		r10, r0
	ldr		r1, [sp, #0xc]
	add		r1, #0x20
	str		r1, [sp, #0xc]
	add		r8, r0
	mov		r0, #0x4
	add		r9, r0
	ldr		r1, [sp, #0x8]
	add		r1, #0x1
	str		r1, [sp, #0x8]
	cmp		r1, #0x3
	ble		_08012a00
	mov		r1, #0xf3
	lsl		r1, r1, #0x2
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	ble		_08012b18
	add		r1, #0x4
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bgt		_08012acc
	ldr		r0, [r7, #0x30]
	b		_08012ad6
_08012acc:
	cmp		r0, #0x2
	bgt		_08012ad4
	ldr		r0, [r7, #0x34]
	b		_08012ad6
_08012ad4:
	ldr		r0, [r7, #0x38]
_08012ad6:
	cmp		r0, #0x10
	bgt		_08012aec
	add		r4, r0, #0x0
	ldr		r6, _08012ae4
	ldr		r5, _08012ae8
	b		_08012af4

.incbin "base.gba", 0x12AE2, 0x2

_08012ae4:	.4byte 0x080df0b8
_08012ae8:	.4byte 0x080df0d8

_08012aec:
	add		r4, r0, #0x0
	sub		r4, #0x10
	ldr		r6, _08012b10
	ldr		r5, _08012b14
_08012af4:
	mov		r0, #0x1
	bl		sub_08028130
	add		r2, r0, #0x0
	add		r2, #0xc0
	str		r4, [sp, #0x0]
	mov		r0, #0x10
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r3, #0x10
	bl		sub_0800f124
	b		_08012b2c

_08012b10:	.4byte 0x080df0d8
_08012b14:	.4byte 0x080df0b8

_08012b18:
	ldr		r4, _08012b44
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_08012b2c:
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x12B42, 0x2

_08012b44:	.4byte 0x080df0b8

.incbin "base.gba", 0x12B48, 0x7DC
_08013324:	.4byte 0x08013344

.incbin "base.gba", 0x13328, 0x1C
	thumb_func_end sub_080129dc


.incbin "base.gba", 0x13344, 0x678
	thumb_func_start sub_080139bc
sub_080139bc:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	mov		r2, #0x0
	ldr		r0, _080139fc
	ldrb	r4, [r0, #0x1]
	add		r6, r0, #0x0
	cmp		r2, r4
	bge		_080139f0
	ldr		r5, _08013a00
	ldrh	r0, [r5, #0x0]
	asr		r0, r3
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080139f0
	add		r1, r5, #0x0
	mov		r5, #0x1
_080139de:
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, r4
	bge		_080139f0
	ldrh	r0, [r1, #0x0]
	asr		r0, r3
	and		r0, r5
	cmp		r0, #0x0
	bne		_080139de
_080139f0:
	ldrb	r6, [r6, #0x1]
	cmp		r2, r6
	bge		_08013a04
	mov		r0, #0x0
	b		_08013a06

.incbin "base.gba", 0x139FA, 0x2

_080139fc:	.4byte 0x03003000
_08013a00:	.4byte 0x03000160

_08013a04:
	mov		r0, #0x1
_08013a06:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080139bc

	thumb_func_start sub_08013a0c
sub_08013a0c:
	push	{ r4, r5, r6, lr }
	lsl		r2, r0, #0x1
	add		r2, r2, r0
	add		r2, r2, r1
	mov		r3, #0x0
	ldr		r0, _08013a50
	ldrb	r4, [r0, #0x1]
	add		r6, r0, #0x0
	cmp		r3, r4
	bge		_08013a44
	ldr		r5, _08013a54
	ldrh	r0, [r5, #0x0]
	asr		r0, r2
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08013a44
	add		r1, r5, #0x0
	mov		r5, #0x1
_08013a32:
	add		r1, #0x2
	add		r3, #0x1
	cmp		r3, r4
	bge		_08013a44
	ldrh	r0, [r1, #0x0]
	asr		r0, r2
	and		r0, r5
	cmp		r0, #0x0
	bne		_08013a32
_08013a44:
	ldrb	r6, [r6, #0x1]
	cmp		r3, r6
	bge		_08013a58
	mov		r0, #0x0
	b		_08013a5a

.incbin "base.gba", 0x13A4E, 0x2

_08013a50:	.4byte 0x03003000
_08013a54:	.4byte 0x03000168

_08013a58:
	mov		r0, #0x1
_08013a5a:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08013a0c

	thumb_func_start sub_08013a60
sub_08013a60:
	mov		r1, #0x0
	strb	r1, [r0, #0xe]
	strh	r1, [r0, #0x10]
	bx		lr
	thumb_func_end sub_08013a60

	thumb_func_start sub_08013a68
sub_08013a68:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	ldr		r1, _08013ad0
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrb	r2, [r0, #0x4]
	ldrh	r0, [r4, #0x10]
	add		r0, #0x1
	strh	r0, [r4, #0x10]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	add		r7, r1, #0x0
	cmp		r0, r2
	ble		_08013aa4
	mov		r0, #0x0
	strh	r0, [r4, #0x10]
	ldrb	r0, [r4, #0xe]
	add		r0, #0x1
	strb	r0, [r4, #0xe]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bls		_08013aa4
	mov		r0, #0x0
	strb	r0, [r4, #0xe]
_08013aa4:
	lsl		r1, r5, #0x10
	add		r0, r6, #0x4
	lsl		r0, r0, #0x10
	lsr		r1, r1, #0x10
	orr		r1, r0
	str		r1, [sp, #0x8]
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	add		r2, r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08013ad0:	.4byte 0x080f552c
	thumb_func_end sub_08013a68

	thumb_func_start sub_08013ad4
sub_08013ad4:
	push	{ r4, r5, r6, lr }
	ldrh	r4, [r0, #0x0]
	ldr		r6, _08013b14
	mov		r3, #0x0
	mov		r5, #0x80
	lsl		r5, r5, #0x1
	lsr		r0, r4, #0x8
	lsl		r1, r4, #0x8
	orr		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
_08013aea:
	sub		r0, r5, r3
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	add		r2, r3, r0
	lsl		r0, r2, #0x1
	add		r0, r0, r6
	ldrh	r1, [r0, #0x0]
	lsr		r0, r1, #0x8
	lsl		r1, r1, #0x8
	orr		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	sub		r0, r0, r4
	cmp		r0, #0x0
	bne		_08013b1c
	ldr		r0, _08013b18
	add		r0, r2, r0
	ldrb	r0, [r0, #0x0]
	b		_08013b2c

.incbin "base.gba", 0x13B12, 0x2

_08013b14:	.4byte 0x080f559c
_08013b18:	.4byte 0x080f579d

_08013b1c:
	cmp		r0, #0x0
	bge		_08013b24
	add		r3, r2, #0x1
	b		_08013b26
_08013b24:
	add		r5, r2, #0x0
_08013b26:
	cmp		r5, r3
	bgt		_08013aea
	mov		r0, #0x0
_08013b2c:
	lsl		r2, r0, #0x18
	lsr		r0, r2, #0x1d
	mov		r1, #0xf8
	lsl		r1, r1, #0x15
	and		r1, r2
	lsr		r1, r1, #0x18
	lsl		r0, r0, #0x6
	orr		r0, r1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x13B42, 0x2
	thumb_func_end sub_08013ad4

	thumb_func_start sub_08013b44
sub_08013b44:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x28
	str		r0, [sp, #0xC]
	str		r1, [sp, #0x10]
	str		r3, [sp, #0x14]
	ldr		r0, [sp, #0xc+0x48]
	cmp		r0, #0x0
	beq		_08013b5e
	mov		r0, #0x1
_08013b5e:
	str		r0, [sp, #0x18]
	ldr		r1, [sp, #0x10]
	lsl		r0, r1, #0x6
	ldr		r3, [sp, #0x14]
	add		r0, r3, r0
	ldr		r3, [sp, #0xC]
	lsl		r1, r3, #0x1
	add		r0, r0, r1
	str		r0, [sp, #0x1C]
	mov		r10, r2
	mov		r0, #0x0
	str		r0, [sp, #0x20]
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08013b9c
	cmp		r0, #0xa
	beq		_08013b9c
	cmp		r0, #0xd
	beq		_08013b9c
	mov		r1, r10
_08013b86:
	add		r1, #0x2
	ldr		r3, [sp, #0x20]
	add		r3, #0x1
	str		r3, [sp, #0x20]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08013b9c
	cmp		r0, #0xa
	beq		_08013b9c
	cmp		r0, #0xd
	bne		_08013b86
_08013b9c:
	mov		r0, #0x0
	mov		r9, r0
	mov		r8, r0
	b		_08013cf2
_08013ba4:
	mov		r7, #0x0
	mov		r2, #0x0
	ldr		r3, [sp, #0x18]
	cmp		r3, #0x0
	beq		_08013c3e
	mov		r1, r8
	lsl		r0, r1, #0x1
	sub		r2, #0x1
	mov		r5, #0x0
	ldr		r6, _08013c10
	mov		r3, r10
	add		r4, r0, r3
_08013bbc:
	add		r0, r4, #0x0
	str		r2, [sp, #0x24]
	bl		sub_08013ad4
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	ldr		r2, [sp, #0x24]
	cmp		r1, #0x0
	ble		_08013bd2
	ldr		r0, [sp, #0x0+0x48]
	add		r1, r1, r0
_08013bd2:
	ldr		r0, _08013c10
	add		r0, r5, r0
	strb	r1, [r0, #0x0]
	add		r4, #0x2
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_08013bbc
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x40
	bne		_08013bfc
	ldrb	r0, [r6, #0x3]
	cmp		r0, #0x40
	bne		_08013bfc
	ldrb	r1, [r6, #0x1]
	sub		r1, #0x10
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	sub		r0, #0x10
	ldrb	r6, [r6, #0x2]
	add		r2, r0, r6
_08013bfc:
	cmp		r2, #0x0
	blt		_08013c3e
	cmp		r2, #0x3
	beq		_08013c1e
	cmp		r2, #0x3
	ble		_08013c14
	cmp		r2, #0x5
	beq		_08013c2c
	b		_08013c3e

.incbin "base.gba", 0x13C0E, 0x2

_08013c10:	.4byte 0x03002D54

_08013c14:
	cmp		r2, #0x0
	blt		_08013c3e
	lsl		r0, r2, #0x2
	ldr		r1, [sp, #0xc+0x48]
	b		_08013c3a
_08013c1e:
	ldr		r0, _08013c28
	ldr		r3, [sp, #0x10+0x48]
	ldrb	r1, [r3, #0x0]
	b		_08013c32

.incbin "base.gba", 0x13C26, 0x2

_08013c28:	.4byte 0x0811512d

_08013c2c:
	ldr		r0, _08013c80
	ldr		r3, [sp, #0x10+0x48]
	ldrb	r1, [r3, #0x1]
_08013c32:
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _08013c84
_08013c3a:
	add		r0, r0, r1
	ldr		r7, [r0, #0x0]
_08013c3e:
	cmp		r7, #0x0
	beq		_08013ca6
	mov		r4, #0x0
	ldrb	r0, [r7, #0x0]
	ldr		r1, [sp, #0xC]
	add		r1, r9
	mov		r5, r8
	add		r5, #0x4
	cmp		r0, #0x0
	beq		_08013c5c
_08013c52:
	add		r4, #0x1
	add		r0, r7, r4
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08013c52
_08013c5c:
	cmp		r2, #0x2
	beq		_08013c88
	lsr		r0, r4, #0x1f
	add		r0, r4, r0
	asr		r4, r0, #0x1
	ldr		r3, [sp, #0x0+0x48]
	str		r3, [sp, #0x0]
	ldr		r0, [sp, #0x4+0x48]
	str		r0, [sp, #0x4]
	ldr		r3, [sp, #0x8+0x48]
	str		r3, [sp, #0x8]
	add		r0, r1, #0x0
	ldr		r1, [sp, #0x10]
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x14]
	bl		sub_08013e9c
	b		_08013ca0

_08013c80:	.4byte 0x08115170
_08013c84:	.4byte 0x08115178

_08013c88:
	ldr		r0, [sp, #0x0+0x48]
	str		r0, [sp, #0x0]
	ldr		r3, [sp, #0x4+0x48]
	str		r3, [sp, #0x4]
	ldr		r0, [sp, #0x8+0x48]
	str		r0, [sp, #0x8]
	add		r0, r1, #0x0
	ldr		r1, [sp, #0x10]
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x14]
	bl		sub_08013ec0
_08013ca0:
	mov		r8, r5
	add		r9, r4
	b		_08013cf2
_08013ca6:
	mov		r0, r9
	ldr		r1, [sp, #0x8+0x48]
	bl		sub_0807d80c
	add		r5, r0, #0x0
	mov		r1, r8
	lsl		r0, r1, #0x1
	add		r0, r10
	bl		sub_08013ad4
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	ble		_08013cc6
	ldr		r3, [sp, #0x0+0x48]
	add		r4, r4, r3
_08013cc6:
	mov		r0, r9
	ldr		r1, [sp, #0x8+0x48]
	bl		sub_0807d8d8
	lsl		r1, r5, #0x6
	add		r1, r1, r0
	lsl		r1, r1, #0x1
	ldr		r0, [sp, #0x1C]
	add		r1, r1, r0
	ldr		r3, [sp, #0x4+0x48]
	lsl		r2, r3, #0xc
	add		r0, r2, #0x0
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		r1, #0x40
	add		r0, r4, #0x0
	add		r0, #0x20
	orr		r2, r0
	strh	r2, [r1, #0x0]
	mov		r0, #0x1
	add		r8, r0
	add		r9, r0
_08013cf2:
	ldr		r1, [sp, #0x20]
	cmp		r8, r1
	bge		_08013cfa
	b		_08013ba4
_08013cfa:
	add		sp, #0x28
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x13D0A, 0x2
	thumb_func_end sub_08013b44

	thumb_func_start sub_08013d0c
sub_08013d0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r10, r0
	add		r4, r1, #0x0
	mov		r0, #0x1
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08013de2
	mov		r0, #0x0
	bl		sub_080281d4
	b		_08013de2
_08013d2e:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r5, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08013d48
	asr		r0, r1, #0x4
	mov		r1, #0xf
	and		r0, r1
	add		r5, r5, r0
_08013d48:
	ldr		r6, [r4, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08013d5e
	asr		r0, r1, #0x8
	mov		r1, #0xf
	and		r0, r1
	add		r6, r6, r0
_08013d5e:
	ldr		r7, [r4, #0xc]
	ldr		r0, [r4, #0x10]
	mov		r9, r0
	ldr		r1, [r4, #0x8]
	mov		r8, r1
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	lsl		r1, r6, #0x6
	add		r0, r0, r1
	lsl		r1, r5, #0x1
	add		r0, r0, r1
	str		r0, [sp, #0x4]
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	add		r4, #0x14
	str		r4, [sp, #0x8]
	cmp		r0, #0x0
	beq		_08013d96
_08013d88:
	add		r1, #0x2
	ldr		r0, [sp, #0x0]
	add		r0, #0x1
	str		r0, [sp, #0x0]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08013d88
_08013d96:
	mov		r6, #0x0
	ldr		r1, [sp, #0x0]
	cmp		r6, r1
	bge		_08013de0
	lsl		r7, r7, #0xc
_08013da0:
	lsl		r0, r6, #0x1
	add		r0, r8
	bl		sub_08013ad4
	add		r5, r0, #0x0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_0807d80c
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_0807d8d8
	lsl		r4, r4, #0x6
	add		r4, r4, r0
	lsl		r4, r4, #0x1
	ldr		r0, [sp, #0x4]
	add		r4, r4, r0
	add		r0, r7, #0x0
	orr		r0, r5
	strh	r0, [r4, #0x0]
	add		r4, #0x40
	add		r5, #0x20
	orr		r5, r7
	strh	r5, [r4, #0x0]
	add		r6, #0x1
	ldr		r1, [sp, #0x0]
	cmp		r6, r1
	blt		_08013da0
_08013de0:
	ldr		r4, [sp, #0x8]
_08013de2:
	ldr		r1, [r4, #0x0]
	ldr		r0, _08013e0c
	cmp		r1, r0
	bne		_08013d2e
	mov		r0, #0x2
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08013dfa
	mov		r0, #0x1
	bl		sub_080281fc
_08013dfa:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x13E0A, 0x2

_08013e0c:	.4byte 0x0000FFFF
	thumb_func_end sub_08013d0c

	thumb_func_start sub_08013e10
sub_08013e10:
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x1d
	mov		r1, #0xf8
	lsl		r1, r1, #0x15
	and		r1, r0
	lsr		r1, r1, #0x18
	lsl		r2, r2, #0x6
	orr		r2, r1
	add		r0, r2, #0x0
	bx		lr
	thumb_func_end sub_08013e10

	thumb_func_start sub_08013e24
sub_08013e24:
	add		r1, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r0, r1, #0x16
	mov		r2, #0xf8
	lsl		r2, r2, #0xd
	and		r2, r1
	lsr		r2, r2, #0x10
	lsl		r0, r0, #0x5
	add		r0, r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bx		lr
	thumb_func_end sub_08013e24

	thumb_func_start sub_08013e3c
sub_08013e3c:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	ldr		r6, _08013e7c
	mov		r3, #0x0
	mov		r5, #0x80
	lsl		r5, r5, #0x1
	lsr		r0, r4, #0x8
	lsl		r1, r4, #0x8
	orr		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
_08013e54:
	sub		r0, r5, r3
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	add		r2, r3, r0
	lsl		r0, r2, #0x1
	add		r0, r0, r6
	ldrh	r1, [r0, #0x0]
	lsr		r0, r1, #0x8
	lsl		r1, r1, #0x8
	orr		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	sub		r0, r0, r4
	cmp		r0, #0x0
	bne		_08013e84
	ldr		r0, _08013e80
	add		r0, r2, r0
	ldrb	r0, [r0, #0x0]
	b		_08013e94

_08013e7c:	.4byte 0x080f559c
_08013e80:	.4byte 0x080f579d

_08013e84:
	cmp		r0, #0x0
	bge		_08013e8c
	add		r3, r2, #0x1
	b		_08013e8e
_08013e8c:
	add		r5, r2, #0x0
_08013e8e:
	cmp		r5, r3
	bgt		_08013e54
	mov		r0, #0x0
_08013e94:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x13E9A, 0x2
	thumb_func_end sub_08013e3c

	thumb_func_start sub_08013e9c
sub_08013e9c:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x14
	ldr		r4, [sp, #0x0+0x24]
	ldr		r5, [sp, #0x4+0x24]
	ldr		r6, [sp, #0x8+0x24]
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r4, #0x0
	str		r4, [sp, #0xC]
	str		r4, [sp, #0x10]
	bl		sub_08013b44
	add		sp, #0x14
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x13EBE, 0x2
	thumb_func_end sub_08013e9c

	thumb_func_start sub_08013ec0
sub_08013ec0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r9, r2
	ldr		r2, [sp, #0x8+0x24]
	mov		r10, r2
	lsl		r1, r1, #0x6
	add		r3, r3, r1
	lsl		r0, r0, #0x1
	add		r3, r3, r0
	str		r3, [sp, #0x0]
	mov		r7, #0x0
	mov		r1, r9
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08013ef2
_08013ee6:
	add		r7, #0x1
	mov		r2, r9
	add		r0, r2, r7
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08013ee6
_08013ef2:
	mov		r6, #0x0
	cmp		r6, r7
	bge		_08013f4a
	ldr		r0, [sp, #0x4+0x24]
	lsl		r0, r0, #0xc
	mov		r8, r0
_08013efe:
	mov		r1, r9
	add		r0, r1, r6
	ldrb	r1, [r0, #0x0]
	lsr		r2, r1, #0x5
	mov		r0, #0x1f
	and		r1, r0
	lsl		r5, r2, #0x6
	orr		r5, r1
	cmp		r5, #0x0
	ble		_08013f16
	ldr		r2, [sp, #0x0+0x24]
	add		r5, r5, r2
_08013f16:
	add		r0, r6, #0x0
	mov		r1, r10
	bl		sub_0807d80c
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	mov		r1, r10
	bl		sub_0807d8d8
	lsl		r4, r4, #0x6
	add		r4, r4, r0
	lsl		r4, r4, #0x1
	ldr		r0, [sp, #0x0]
	add		r4, r4, r0
	mov		r0, r8
	orr		r0, r5
	strh	r0, [r4, #0x0]
	add		r4, #0x40
	add		r0, r5, #0x0
	add		r0, #0x20
	mov		r1, r8
	orr		r0, r1
	strh	r0, [r4, #0x0]
	add		r6, #0x1
	cmp		r6, r7
	blt		_08013efe
_08013f4a:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x13F5A, 0x10A
	ldr		r0, _080140e0
	ldr		r2, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x13
	ldrh	r1, [r3, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
	and		r0, r1
	strh	r0, [r3, #0x0]
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080140e4
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _080140e8
	ldrh	r0, [r2, #0x2]
	strh	r0, [r1, #0x0]
	add		r1, #0x8
	ldrh	r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x6]
	strh	r0, [r1, #0x0]
	sub		r1, #0x8
	ldrh	r0, [r2, #0x8]
	strh	r0, [r1, #0x0]
	add		r1, #0xa
	ldrh	r0, [r2, #0xa]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xc]
	strh	r0, [r1, #0x0]
	sub		r1, #0xa
	ldrh	r0, [r2, #0xe]
	strh	r0, [r1, #0x0]
	add		r1, #0xc
	ldrh	r0, [r2, #0x10]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x12]
	strh	r0, [r1, #0x0]
	sub		r1, #0xc
	ldrh	r0, [r2, #0x14]
	strh	r0, [r1, #0x0]
	add		r1, #0xe
	ldrh	r0, [r2, #0x16]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x18]
	strh	r0, [r1, #0x0]
	add		r1, #0x32
	ldrh	r0, [r2, #0x1a]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x1c]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x1e]
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x140DE, 0x2

_080140e0:	.4byte 0x03000174
_080140e4:	.4byte 0x00009FFF
_080140e8:	.4byte 0x04000008
	thumb_func_end sub_08013ec0

	thumb_func_start sub_080140ec
sub_080140ec:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	ldr		r4, _0801411c
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	ldr		r0, _08014120
	ldrb	r0, [r0, #0x0]
	lsr		r4, r0, #0x2
	mov		r0, #0x1
	and		r4, r0
	cmp		r4, #0x0
	bne		_08014124
	mov		r0, #0x0
	bl		sub_08028130
	strh	r4, [r0, #0x0]
	b		_08014130

.incbin "base.gba", 0x1411A, 0x2

_0801411c:	.4byte 0x080d7d94
_08014120:	.4byte 0x0203EED4

_08014124:
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r2, _08014244
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
_08014130:
	ldr		r4, _08014248
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	ldr		r4, _0801424c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08014250
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r3, _08014254
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014258
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	add		r2, r6, r1
	ldr		r4, _0801425c
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014260
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xe0
	lsl		r1, r1, #0x5
	add		r2, r6, r1
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014264
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xd0
	lsl		r1, r1, #0x6
	add		r2, r6, r1
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014268
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xe8
	lsl		r1, r1, #0x7
	add		r2, r6, r1
	ldr		r3, _0801426c
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014270
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08014274
	ldr		r4, _08014278
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0801427c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08014280
	ldr		r3, _08014284
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014288
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0801428c
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08014244:	.4byte 0x0000FFFF
_08014248:	.4byte 0x0809866c
_0801424c:	.4byte 0x080cdd3c
_08014250:	.4byte 0x08098b0c
_08014254:	.4byte 0x80000150
_08014258:	.4byte 0x080c558c
_0801425c:	.4byte 0x80000C00
_08014260:	.4byte 0x080c5bc0
_08014264:	.4byte 0x080c6300
_08014268:	.4byte 0x080d7eac
_0801426c:	.4byte 0x80000600
_08014270:	.4byte 0x080ce690
_08014274:	.4byte 0x06017000
_08014278:	.4byte 0x80000200
_0801427c:	.4byte 0x080cebcc
_08014280:	.4byte 0x06017A00
_08014284:	.4byte 0x80000100
_08014288:	.4byte 0x080ce918
_0801428c:	.4byte 0x06017C00
	thumb_func_end sub_080140ec

	thumb_func_start sub_08014290
sub_08014290:
	push	{ r4, r5, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r4, _08014320
	ldr		r1, _08014324
	add		r0, r4, #0x0
	bl		sub_080140ec
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _08014328
	mov		r0, #0x1
	bl		sub_080281c4
	ldr		r0, _0801432c
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08014330
	ldr		r3, _08014334
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08014338
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0801433c
	ldr		r3, _08014340
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08014344
	mov		r0, sp
	bl		sub_08071b68
	ldr		r0, _08014348
	ldrb	r0, [r0, #0x0]
	lsr		r0, r0, #0x2
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08014350
	ldr		r4, _0801434c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	b		_08014364

_08014320:	.4byte 0x02010400
_08014324:	.4byte 0x06008000
_08014328:	.4byte 0x06001000
_0801432c:	.4byte 0x080993b8
_08014330:	.4byte 0x06002000
_08014334:	.4byte 0x80000400
_08014338:	.4byte 0x080994bc
_0801433c:	.4byte 0x06003000
_08014340:	.4byte 0x80000280
_08014344:	.4byte 0x01000140
_08014348:	.4byte 0x0203EED4
_0801434c:	.4byte 0x080e23d0

_08014350:
	ldr		r4, _080143d8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
_08014364:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r4, _080143dc
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802711c
	ldrh	r0, [r5, #0x2]
	mov		r1, #0x0
	mov		r0, #0x8
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x8]
	ldr		r0, _080143e0
	strh	r0, [r5, #0x8]
	ldrh	r0, [r5, #0xe]
	ldr		r0, _080143e4
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0x14]
	ldr		r0, _080143e8
	strh	r0, [r5, #0x14]
	ldrh	r0, [r5, #0x0]
	mov		r0, #0xfa
	lsl		r0, r0, #0x5
	strh	r0, [r5, #0x0]
	ldrh	r0, [r5, #0x4]
	strh	r1, [r5, #0x4]
	ldrh	r0, [r5, #0x6]
	strh	r1, [r5, #0x6]
	ldrh	r0, [r5, #0xa]
	strh	r1, [r5, #0xa]
	ldrh	r0, [r5, #0xc]
	strh	r1, [r5, #0xc]
	ldrh	r0, [r5, #0x10]
	strh	r1, [r5, #0x10]
	ldrh	r0, [r5, #0x12]
	strh	r1, [r5, #0x12]
	ldrh	r0, [r5, #0x16]
	strh	r1, [r5, #0x16]
	ldrh	r0, [r5, #0x18]
	strh	r1, [r5, #0x18]
	str		r1, [r5, #0x3c]
	add		sp, #0x4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_080143d8:	.4byte 0x080e2874
_080143dc:	.4byte 0x080e278c
_080143e0:	.4byte 0x00000209
_080143e4:	.4byte 0x0000040A
_080143e8:	.4byte 0x0000060B
	thumb_func_end sub_08014290

	thumb_func_start sub_080143ec
sub_080143ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r0, #0x0
	mov		r8, r0
	mov		r9, r0
	ldr		r7, _08014498
	ldr		r1, _0801449c
	add		r4, r7, r1
	ldr		r1, _080144a0
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r4, #0x0
	bl		sub_08027188
	ldr		r5, _080144a4
	mov		r2, #0xa2
	lsl		r2, r2, #0x1
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_080271b8
	str		r0, [r5, #0x0]
	add		r6, r0, #0x0
	bl		sub_080297c8
	mov		r2, r8
	str		r2, [r6, #0x2c]
	str		r2, [r6, #0x40]
	mov		r1, #0x9c
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	str		r2, [r0, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x13
	ldrh	r0, [r4, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r1, r2, #0x0
	orr		r0, r1
	strh	r0, [r4, #0x0]
	ldr		r1, _080144a8
	mov		r0, #0xf0
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	mov		r0, #0xa0
	strh	r0, [r1, #0x0]
	ldr		r0, _080144ac
	mov		r1, r8
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	mov		r2, r8
	str		r2, [r7, #0xc]
	mov		r0, #0x2
	ldr		r1, _080144b0
	bl		sub_0807df78
	ldr		r5, _080144b0
	mov		r0, #0x2
	add		r1, r5, #0x0
	bl		sub_0807df78
	ldr		r0, _080144b4
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080144bc
	mov		r0, r8
	strh	r0, [r4, #0x0]
	ldr		r0, _080144b8
	ldr		r0, [r0, #0x0]
	str		r0, [r7, #0x0]
	ldrb	r0, [r7, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r7, #0x8]
	b		_080146b2

_08014498:	.4byte 0x030031A0
_0801449c:	.4byte 0x00000704
_080144a0:	.4byte 0x0202A400
_080144a4:	.4byte 0x03000174
_080144a8:	.4byte 0x04000040
_080144ac:	.4byte 0x04000048
_080144b0:	.4byte 0x00010001
_080144b4:	.4byte 0x0203EED4
_080144b8:	.4byte 0x03000170

_080144bc:
	add		r0, r6, #0x0
	bl		sub_08014290
	ldrh	r0, [r6, #0x1a]
	ldr		r0, _08014500
	strh	r0, [r6, #0x1a]
	ldrh	r0, [r6, #0x1c]
	ldr		r0, _08014504
	strh	r0, [r6, #0x1c]
	ldr		r4, _08014508
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r4, [r7, #0xc]
	mov		r0, #0x2
	add		r1, r5, #0x0
	bl		sub_0807df78
	mov		r0, #0x2
	add		r1, r5, #0x0
	bl		sub_0807df78
_080144ec:
	ldr		r0, [r6, #0x2c]
	cmp		r0, #0x7
	bls		_080144f4
	b		_080145f8
_080144f4:
	lsl		r0, r0, #0x2
	ldr		r1, _0801450c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x144FE, 0x2

_08014500:	.4byte 0x00000844
_08014504:	.4byte 0x00001008
_08014508:	.4byte 0x08014065
_0801450c:	.4byte 0x08014510
_08014510:	.4byte 0x08014530

.incbin "base.gba", 0x14514, 0x1C
	thumb_func_end sub_080143ec


.incbin "base.gba", 0x14530, 0x40

_08014570:

.incbin "base.gba", 0x14570, 0x88

_080145f8:

.incbin "base.gba", 0x145F8, 0x8
_08014600:

.incbin "base.gba", 0x14600, 0x10
_08014610:

.incbin "base.gba", 0x14610, 0xC
_0801461c:	.4byte 0x03000170
_08014620:	.4byte 0x08000E79
_08014624:	.4byte 0x08001901
_08014628:	.4byte 0x0000FFFF

_0801462c:

.incbin "base.gba", 0x1462C, 0x8
_08014634:

.incbin "base.gba", 0x14634, 0x2E
_08014662:

.incbin "base.gba", 0x14662, 0xE
_08014670:

.incbin "base.gba", 0x14670, 0x42
_080146b2:

.incbin "base.gba", 0x146B2, 0xE
_080146c0:	.4byte 0x0802A1FD
_080146c4:	.4byte 0x030052F0
_080146c8:	.4byte 0x0802A239
_080146cc:	.4byte 0x030031A0
_080146d0:	.4byte 0x00010001
_080146d4:	.4byte 0x080270F1
_080146d8:	.4byte 0x03000170
	thumb_func_start sub_080146dc
sub_080146dc:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r0, _080146f8
	add		r5, r0, #0x0
	add		r5, #0x8
	ldr		r0, _080146fc
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08014700
	mov		r0, #0x5
	str		r0, [r4, #0x30]
	b		_0801476e

_080146f8:	.4byte 0x02020400
_080146fc:	.4byte 0x0203EED4

_08014700:
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0801470e
	mov		r0, #0x8
	str		r0, [r4, #0x30]
	b		_0801476e
_0801470e:
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08014720
	ldrb	r0, [r5, #0x9]
	bl		sub_0802d6d0
	cmp		r0, #0x0
	beq		_08014726
_08014720:
	mov		r0, #0x3
	str		r0, [r4, #0x30]
	b		_0801476e
_08014726:
	ldr		r0, _08014758
	ldr		r1, _0801475c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_08014760
	ldrb	r0, [r5, #0x9]
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	asr		r1, r0, #0x18
	mov		r5, #0x1
	neg		r5, r5
	cmp		r1, r5
	bne		_08014768
	bl		sub_08057620
	lsl		r0, r0, #0x18
	asr		r1, r0, #0x18
	cmp		r1, r5
	bne		_08014768
	mov		r0, #0x1
	str		r0, [r4, #0x30]
	b		_0801476e

.incbin "base.gba", 0x14756, 0x2

_08014758:	.4byte 0x030031A0
_0801475c:	.4byte 0x00000CAC

_08014760:
	bl		sub_08057688
	lsl		r0, r0, #0x18
	asr		r1, r0, #0x18
_08014768:
	mov		r0, #0x0
	str		r0, [r4, #0x30]
	str		r1, [r4, #0x38]
_0801476e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080146dc

	thumb_func_start sub_08014774
sub_08014774:
	push	{ r4, lr }
	sub		sp, #0x10
	ldr		r0, [r0, #0x30]
	cmp		r0, #0x8
	bhi		_08014848
	lsl		r0, r0, #0x2
	ldr		r1, _08014788
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08014788:	.4byte 0x0801478c
_0801478c:	.4byte 0x080147b0

.incbin "base.gba", 0x14790, 0x20
	thumb_func_end sub_08014774


.incbin "base.gba", 0x147B0, 0x98

_08014848:

.incbin "base.gba", 0x14848, 0x70
_080148b8:	.4byte 0x080148cc

.incbin "base.gba", 0x148BC, 0x28C
_08014b48:	.4byte 0x08014b68

.incbin "base.gba", 0x14B4C, 0x38

_08014b84:

.incbin "base.gba", 0x14B84, 0x124
	thumb_func_start sub_08014ca8
sub_08014ca8:
	cmp		r0, #0x0
	beq		_08014cbc
	ldr		r0, _08014cb8
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x0]
	b		_08014cc6

_08014cb8:	.4byte 0x0203EED4

_08014cbc:
	ldr		r2, _08014cc8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfe
	and		r0, r1
	strb	r0, [r2, #0x0]
_08014cc6:
	bx		lr

_08014cc8:	.4byte 0x0203EED4
	thumb_func_end sub_08014ca8

	thumb_func_start sub_08014ccc
sub_08014ccc:
	cmp		r0, #0x0
	beq		_08014ce0
	ldr		r0, _08014cdc
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x2
	orr		r1, r2
	strb	r1, [r0, #0x0]
	b		_08014cea

_08014cdc:	.4byte 0x0203EED4

_08014ce0:
	ldr		r2, _08014cec
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	strb	r0, [r2, #0x0]
_08014cea:
	bx		lr

_08014cec:	.4byte 0x0203EED4

.incbin "base.gba", 0x14CF0, 0x24
	thumb_func_end sub_08014ccc

	thumb_func_start sub_08014d14
sub_08014d14:
	cmp		r0, #0x0
	beq		_08014d28
	ldr		r0, _08014d24
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x10
	orr		r1, r2
	strb	r1, [r0, #0x0]
	b		_08014d32

_08014d24:	.4byte 0x0203EED4

_08014d28:
	ldr		r2, _08014d34
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_08014d32:
	bx		lr

_08014d34:	.4byte 0x0203EED4
	thumb_func_end sub_08014d14

	thumb_func_start sub_08014d38
sub_08014d38:
	cmp		r0, #0x0
	beq		_08014d4c
	ldr		r0, _08014d48
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	orr		r1, r2
	strb	r1, [r0, #0x0]
	b		_08014d56

_08014d48:	.4byte 0x0203EED4

_08014d4c:
	ldr		r2, _08014d58
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xf7
	and		r0, r1
	strb	r0, [r2, #0x0]
_08014d56:
	bx		lr

_08014d58:	.4byte 0x0203EED4
	thumb_func_end sub_08014d38

	thumb_func_start sub_08014d5c
sub_08014d5c:
	ldr		r0, _08014d6c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x3
	and		r1, r0
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	bx		lr

_08014d6c:	.4byte 0x0203EED4
	thumb_func_end sub_08014d5c

	thumb_func_start sub_08014d70
sub_08014d70:
	ldr		r1, _08014d78
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x14D76, 0x2

_08014d78:	.4byte 0x03000170

.incbin "base.gba", 0x14D7C, 0x654
_080153d0:	.4byte 0x080153e8

.incbin "base.gba", 0x153D4, 0x14
	thumb_func_end sub_08014d70


.incbin "base.gba", 0x153E8, 0x198

_08015580:

.incbin "base.gba", 0x15580, 0x2C
_080155ac:

.incbin "base.gba", 0x155AC, 0x4FC
_08015aa8:	.4byte 0x08015abc

.incbin "base.gba", 0x15AAC, 0x304
_08015db0:	.4byte 0x08015dc4

.incbin "base.gba", 0x15DB4, 0x524
_080162d8:	.4byte 0x03000178
_080162dc:	.4byte 0x00009FFF
_080162e0:	.4byte 0x04000008
	thumb_func_start sub_080162e4
sub_080162e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _0801653c
	ldr		r7, [r0, #0x0]
	ldr		r4, _08016540
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		sub_0802711c
	ldr		r0, _08016544
	ldr		r5, _08016548
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _0801654c
	ldr		r3, _08016550
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08016554
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	add		r1, r5, #0x0
	add		r1, #0x20
	ldr		r2, _08016558
	ldr		r4, _0801655c
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08016560
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08016564
	ldr		r3, _08016568
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0801656c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r5, r2
	ldr		r2, _08016570
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08016574
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r1, r5, r2
	ldr		r2, _08016578
	ldr		r3, _0801657c
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08016580
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08016584
	ldr		r4, _08016588
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _0801658c
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08016590
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _08016594
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _08016598
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r4, _0801659c
	mov		r0, #0x0
	add		r1, r4, #0x0
	bl		sub_080281c4
	mov		r0, #0x1
	add		r1, r4, #0x0
	bl		sub_080281c4
	ldr		r0, _080165a0
	add		r1, r5, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _080165a4
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r4, _080165a8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08071b80
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r8, r1
_0801645a:
	mov		r4, #0x0
	add		r5, r0, #0x0
	add		r5, #0x18
	add		r6, r0, #0x1
_08016462:
	add		r2, r4, #0x0
	add		r2, #0xf
	mov		r0, #0x1
	add		r1, r5, #0x0
	bl		sub_080281b0
	mov		r2, r8
	strh	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08016462
	add		r0, r6, #0x0
	cmp		r0, #0x5
	ble		_0801645a
	mov		r0, #0x3
	bl		sub_080281fc
	bl		sub_0802711c
	ldr		r0, _080165ac
	ldr		r4, _08016548
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080165b0
	ldr		r3, _080165a4
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _080165b4
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r2, _080165b8
	ldr		r3, _080165bc
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldr		r0, _080165c0
	add		r1, r4, #0x0
	bl		sub_08071b80
	bl		sub_08029f34
	mov		r1, #0xa0
	lsl		r1, r1, #0x5
	add		r4, r4, r1
	ldr		r2, _080165c4
	ldr		r3, _0801655c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_0802711c
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x0
	mov		r0, #0x4
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x8]
	mov		r0, #0x81
	lsl		r0, r0, #0x2
	strh	r0, [r7, #0x8]
	ldrh	r0, [r7, #0xe]
	ldr		r0, _080165c8
	strh	r0, [r7, #0xe]
	ldrh	r0, [r7, #0x14]
	ldr		r0, _080165cc
	strh	r0, [r7, #0x14]
	ldrh	r0, [r7, #0x0]
	mov		r0, #0xfa
	lsl		r0, r0, #0x5
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x1a]
	ldr		r0, _080165d0
	strh	r0, [r7, #0x1a]
	ldrh	r0, [r7, #0x1c]
	ldr		r0, _080165d4
	strh	r0, [r7, #0x1c]
	ldrh	r0, [r7, #0x4]
	strh	r1, [r7, #0x4]
	ldrh	r0, [r7, #0x6]
	strh	r1, [r7, #0x6]
	ldrh	r0, [r7, #0xa]
	strh	r1, [r7, #0xa]
	ldrh	r0, [r7, #0xc]
	strh	r1, [r7, #0xc]
	ldrh	r0, [r7, #0x10]
	strh	r1, [r7, #0x10]
	ldrh	r0, [r7, #0x12]
	strh	r1, [r7, #0x12]
	ldrh	r0, [r7, #0x16]
	strh	r1, [r7, #0x16]
	ldrh	r0, [r7, #0x18]
	strh	r1, [r7, #0x18]
	str		r1, [r7, #0x44]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1653A, 0x2

_0801653c:	.4byte 0x03000178
_08016540:	.4byte 0x080e3338
_08016544:	.4byte 0x080d8304
_08016548:	.4byte 0x02010400
_0801654c:	.4byte 0x06004000
_08016550:	.4byte 0x80000800
_08016554:	.4byte 0x08098b0c
_08016558:	.4byte 0x06004F60
_0801655c:	.4byte 0x80000100
_08016560:	.4byte 0x080e3460
_08016564:	.4byte 0x06005160
_08016568:	.4byte 0x80000020
_0801656c:	.4byte 0x080d4200
_08016570:	.4byte 0x06005200
_08016574:	.4byte 0x080dfa84
_08016578:	.4byte 0x06005400
_0801657c:	.4byte 0x80000200
_08016580:	.4byte 0x080c558c
_08016584:	.4byte 0x06007800
_08016588:	.4byte 0x80000C00
_0801658c:	.4byte 0x080c5bc0
_08016590:	.4byte 0x06009000
_08016594:	.4byte 0x080c6300
_08016598:	.4byte 0x0600A800
_0801659c:	.4byte 0x06001000
_080165a0:	.4byte 0x080e37ec
_080165a4:	.4byte 0x80000280
_080165a8:	.4byte 0x080e3674
_080165ac:	.4byte 0x080e3480
_080165b0:	.4byte 0x06002000
_080165b4:	.4byte 0x080e38a8
_080165b8:	.4byte 0x06003000
_080165bc:	.4byte 0x80000400
_080165c0:	.4byte 0x080d93e0
_080165c4:	.4byte 0x06011160
_080165c8:	.4byte 0x00000404
_080165cc:	.4byte 0x00000607
_080165d0:	.4byte 0x00003E41
_080165d4:	.4byte 0x0000080C
	thumb_func_end sub_080162e4

	thumb_func_start sub_080165d8
sub_080165d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r0, #0x0
	mov		r10, r0
	mov		r8, r0
	mov		r9, r0
	ldr		r1, _08016698
	str		r1, [sp, #0x0]
	ldr		r6, _0801669c
	mov		r2, r10
	strh		r2, [r6, #0x16]
	bl		sub_08027744
	ldr		r0, _080166a0
	ldr		r1, _080166a4
	add		r4, r0, r1
	ldr		r1, _080166a8
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r4, #0x0
	bl		sub_08027188
	ldr		r5, _080166ac
	add		r0, r4, #0x0
	mov		r1, #0x1
	mov		r2, #0x48
	bl		sub_080271b8
	add		r7, r0, #0x0
	str		r7, [r5, #0x0]
	bl		sub_080162e4
	ldrb	r4, [r6, #0x1]
	cmp		r4, #0x1
	bgt		_08016628
	mov		r4, #0x1
_08016628:
	bl		sub_08029f34
	sub		r1, r4, #0x1
	lsl		r1, r1, #0x8
	ldr		r2, _080166b0
	add		r1, r1, r2
	ldr		r3, _080166b4
	bl		sub_08029ee4
	ldr		r0, _080166b8
	ldr		r4, _080166bc
	str		r0, [r4, #0x4]
	ldr		r0, _080166c0
	str		r0, [r4, #0x0]
	ldr		r0, _080166c4
	str		r0, [r4, #0x8]
	mov		r0, #0x1
	strb	r0, [r4, #0xe]
	bl		sub_0802a130
	mov		r0, #0x1
	bl		sub_0802994c
	ldr		r5, _080166c8
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	ldr		r2, _080166a0
	str		r5, [r2, #0xc]
	mov		r0, #0x2
	ldr		r1, _080166cc
	bl		sub_0807df78
_0801666e:
	bl		sub_0802983c
	bl		sub_0802711c
	ldr		r0, _080166d0
	ldrh	r1, [r0, #0x0]
	ldr		r2, _080166d4
	add		r0, r2, #0x0
	eor		r0, r1
	add		r5, r0, #0x0
	ldr		r1, [sp, #0x0]
	bic		r5, r1
	str		r0, [sp, #0x0]
	mov		r2, r8
	cmp		r2, #0x1
	beq		_080166f6
	cmp		r2, #0x1
	bgt		_080166d8
	cmp		r2, #0x0
	beq		_080166e0
	b		_08016766

_08016698:	.4byte 0x00003FFF
_0801669c:	.4byte 0x03003000
_080166a0:	.4byte 0x030031A0
_080166a4:	.4byte 0x00000704
_080166a8:	.4byte 0x0202A400
_080166ac:	.4byte 0x03000178
_080166b0:	.4byte 0x06005400
_080166b4:	.4byte 0x80000080
_080166b8:	.4byte 0x0802a161
_080166bc:	.4byte 0x030052F0
_080166c0:	.4byte sub_0802a18c
_080166c4:	.4byte 0x0802a1d9
_080166c8:	.4byte 0x0801625d
_080166cc:	.4byte 0x00010001
_080166d0:	.4byte 0x04000130
_080166d4:	.4byte 0x000003FF

_080166d8:
	mov		r0, r8
	cmp		r0, #0x2
	beq		_08016758
	b		_08016766
_080166e0:
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_08016766
	mov		r0, #0x92
	bl		sub_0807073c
	mov		r1, #0x1
	mov		r8, r1
	b		_08016766
_080166f6:
	mov		r2, #0x1
	add		r9, r2
	mov		r0, r9
	cmp		r0, #0x1e
	ble		_08016704
	mov		r1, #0x0
	mov		r9, r1
_08016704:
	mov		r0, #0x2
	mov		r2, r9
	cmp		r2, #0x13
	bgt		_0801670e
	mov		r0, #0x1
_0801670e:
	bl		sub_080281fc
	mov		r0, #0x9
	and		r5, r0
	cmp		r5, #0x0
	beq		_08016766
	mov		r0, #0x8f
	bl		sub_0807073c
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r2, _0801674c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08016750
	str		r0, [r4, #0x4]
	ldr		r0, _08016754
	str		r0, [r4, #0x0]
	mov		r0, #0x0
	str		r0, [r4, #0x8]
	mov		r0, r8
	strb	r0, [r4, #0xe]
	bl		sub_0802a130
	mov		r1, #0x2
	mov		r8, r1
	b		_08016766

_0801674c:	.4byte 0x0000FFFF
_08016750:	.4byte 0x0802A1FD
_08016754:	.4byte sub_08016a88

_08016758:
	ldrb	r1, [r4, #0xc]
	mov		r0, r8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08016766
	mov		r2, #0x1
	mov		r10, r2
_08016766:
	bl		sub_080167d0
	ldr		r0, [r7, #0x44]
	add		r0, #0x1
	str		r0, [r7, #0x44]
	lsr		r1, r0, #0x2
	ldrh	r2, [r7, #0x16]
	strh	r1, [r7, #0x16]
	neg		r0, r0
	lsr		r0, r0, #0x2
	ldrh	r1, [r7, #0x18]
	strh	r0, [r7, #0x18]
	mov		r0, r10
	cmp		r0, #0x0
	bne		_08016786
	b		_0801666e
_08016786:
	mov		r5, #0x0
	ldr		r4, _080167c4
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _080167c8
	bl		sub_0807df78
	ldr		r0, _080167cc
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r4, #0x8]
	mov		r0, #0x1f
	bl		sub_08071b8c
	mov		r0, #0x1
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080167c4:	.4byte 0x030031A0
_080167c8:	.4byte 0x00010001
_080167cc:	.4byte 0x08000E79
	thumb_func_end sub_080165d8

	thumb_func_start sub_080167d0
sub_080167d0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _08016844
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	ldr		r0, _08016848
	ldrb	r0, [r0, #0x1]
	mov		r9, r0
	cmp		r0, #0x1
	bgt		_080167f0
	mov		r0, #0x1
	mov		r9, r0
_080167f0:
	mov		r1, r8
	ldr		r0, [r1, #0x20]
	add		r0, #0x1
	str		r0, [r1, #0x20]
	mov		r1, r9
	add		r1, #0x1
	mov		r2, sp
	add		r2, #0xc
	str		r2, [sp, #0x10]
	cmp		r0, #0x7f
	ble		_08016810
_08016806:
	sub		r0, #0x7f
	cmp		r0, #0x7f
	bgt		_08016806
	mov		r3, r8
	str		r0, [r3, #0x20]
_08016810:
	mov		r0, r8
	ldr		r2, [r0, #0x20]
	cmp		r2, #0x0
	bge		_08016826
_08016818:
	add		r0, r2, #0x0
	add		r0, #0x7f
	add		r2, r0, #0x0
	cmp		r0, #0x0
	blt		_08016818
	mov		r2, r8
	str		r0, [r2, #0x20]
_08016826:
	mov		r0, #0x50
	bl		sub_0807d80c
	mov		r10, r0
	mov		r7, #0x0
	cmp		r7, r9
	blt		_08016836
	b		_08016930
_08016836:
	mov		r3, r8
	ldr		r1, [r3, #0x20]
	cmp		r1, #0x3f
	ble		_0801684c
	mov		r0, #0x7f
	sub		r0, r0, r1
	b		_0801684e

_08016844:	.4byte 0x03000178
_08016848:	.4byte 0x03003000

_0801684c:
	add		r0, r1, #0x0
_0801684e:
	bl		sub_080085d8
	add		r5, r0, #0x0
	add		r0, r7, #0x0
	bl		sub_0800ebec
	add		r6, r0, #0x0
	lsl		r4, r6, #0x1
	add		r4, r4, r6
	lsl		r4, r4, #0x2
	sub		r4, r4, r6
	lsl		r4, r4, #0xd
	lsl		r5, r5, #0xb
	ldr		r0, _080168e0
	add		r5, r5, r0
	add		r4, r4, r5
	lsl		r5, r7, #0xb
	ldr		r1, _080168e4
	add		r5, r5, r1
	bl		sub_08029f34
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	ldr		r3, _080168e8
	bl		sub_08029ee4
	lsl		r6, r6, #0x9
	ldr		r2, _080168ec
	add		r6, r6, r2
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	lsl		r0, r7, #0x5
	add		r0, #0x80
	add		r1, r1, r0
	add		r0, r6, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r3, #0x0
	lsl		r1, r7, #0x2
	lsl		r4, r7, #0x3
	mov		r2, r8
	add		r2, #0x24
	mov		r6, r8
	add		r6, #0x28
	add		r5, r7, #0x1
	ldr		r0, _080168f0
	add		r1, r1, r0
	ldr		r1, [r1, #0x0]
	add		r2, r4, r2
_080168b6:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	add		r1, #0x2
	add		r2, #0x2
	add		r3, #0x1
	cmp		r3, #0x3
	ble		_080168b6
	mov		r3, r8
	ldr		r0, [r3, #0x20]
	mov		r1, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_080168f4
	add		r2, r6, r4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	b		_08016900

_080168e0:	.4byte 0x08345800
_080168e4:	.4byte 0x06011800
_080168e8:	.4byte 0x80000400
_080168ec:	.4byte 0x08344600
_080168f0:	.4byte 0x080f58b8

_080168f4:
	add		r0, r6, r4
	ldrh	r1, [r0, #0x0]
	ldr		r3, _0801695c
	add		r2, r3, #0x0
	and		r1, r2
	strh	r1, [r0, #0x0]
_08016900:
	mov		r0, r10
	mul		r0, r5
	add		r0, #0x80
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0xe0
	lsl		r1, r1, #0xf
	orr		r0, r1
	str		r0, [sp, #0x8]
	add		r0, r4, #0x0
	add		r0, #0x24
	add		r0, r8
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r7, r5, #0x0
	cmp		r7, r9
	bge		_08016930
	b		_08016836
_08016930:
	ldr		r0, _08016960
	str		r0, [sp, #0xC]
	ldr		r0, _08016964
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	ldr		r1, [sp, #0x10]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0801695c:	.4byte 0x0000EFFF
_08016960:	.4byte 0x007000A8
_08016964:	.4byte 0x080e5844
	thumb_func_end sub_080167d0

	thumb_func_start sub_08016968
sub_08016968:
	push	{ r4, lr }
	sub		sp, #0x8
	ldr		r4, _080169a4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x9
	bl		sub_08071b6c
	ldr		r0, _080169a8
	ldr		r0, [r0, #0x10]
	mov		r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080169ac
	add		r4, #0x2
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe2
	add		r0, r4, #0x0
	mov		r2, #0x2
	bl		sub_08071b6c
	b		_080169c0

.incbin "base.gba", 0x169A2, 0x2

_080169a4:	.4byte 0x080e5ec0
_080169a8:	.4byte 0x030031A0

_080169ac:
	add		r4, #0x22
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe2
	add		r0, r4, #0x0
	mov		r2, #0x2
	bl		sub_08071b6c
_080169c0:
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08016a08
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080169f0
	ldr		r0, _08016a0c
	ldrb	r0, [r0, #0x1]
	ldr		r1, _08016a10
	sub		r0, #0x1
	cmp		r0, #0x0
	bge		_080169dc
	mov		r0, #0x0
_080169dc:
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _08016a14
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_080169f0:
	ldr		r0, _08016a18
	ldr		r1, _08016a14
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0x8
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08016a08:	.4byte 0x0203EEDC
_08016a0c:	.4byte 0x03003000
_08016a10:	.4byte 0x080f58f0
_08016a14:	.4byte 0x0300017C
_08016a18:	.4byte 0x080f58c8
	thumb_func_end sub_08016968

	thumb_func_start sub_08016a1c
sub_08016a1c:
	push	{ r4, r5, lr }
	ldr		r0, _08016a30
	ldrb	r1, [r0, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08016a34
	mov		r0, #0x0
	b		_08016a6a

.incbin "base.gba", 0x16A2E, 0x2

_08016a30:	.4byte 0x030052F0

_08016a34:
	ldr		r0, _08016a70
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_08016a54
	ldr		r5, _08016a74
	add		r4, r0, #0x0
_08016a42:
	ldr		r0, [r5, #0x0]
	ldr		r1, _08016a78
	ldr		r1, [r1, #0x8]
	bl		sub_08070e28
	add		r5, #0xc
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08016a42
_08016a54:
	ldr		r0, _08016a7c
	ldr		r2, _08016a80
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	ldr		r1, _08016a84
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_08016a6a:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_08016a70:	.4byte 0x0000000B
_08016a74:	.4byte 0x08124544
_08016a78:	.4byte 0x081245c8
_08016a7c:	.4byte 0x080165D9
_08016a80:	.4byte 0x030031A0
_08016a84:	.4byte 0x03005FD0
	thumb_func_end sub_08016a1c

	thumb_func_start sub_08016a88
sub_08016a88:
	push	{ r4, r5, lr }
	ldr		r5, _08016ac0
	ldrb	r2, [r5, #0xf]
	ldr		r4, _08016ac4
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r3, r1, #0x1
	lsl		r1, r1, #0x9
	mov		r0, #0xf0
	sub		r0, r0, r3
	orr		r1, r0
	strh	r1, [r4, #0x0]
	add		r4, #0x4
	lsl		r3, r2, #0x2
	lsl		r1, r2, #0xa
	mov		r0, #0xa0
	sub		r0, r0, r3
	orr		r1, r0
	strh	r1, [r4, #0x0]
	cmp		r2, #0x14
	bne		_08016aba
	ldr		r0, _08016ac8
	str		r0, [r5, #0x0]
	mov		r0, #0x0
	strb	r0, [r5, #0xf]
_08016aba:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08016ac0:	.4byte 0x030052F0
_08016ac4:	.4byte 0x04000040
_08016ac8:	.4byte 0x08016b9d
	thumb_func_end sub_08016a88

	thumb_func_start sub_08016acc
sub_08016acc:
	push	{ r4, lr }
	ldr		r0, _08016b08
	ldr		r1, _08016b0c
	bl		sub_08071b7c
	ldr		r4, _08016b10
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x9
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r1, _08016b14
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r1, _08016b18
	mov		r0, #0x8e
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	mov		r0, #0x94
	strh	r0, [r1, #0x2]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08016b08:	.4byte 0x080e7a94
_08016b0c:	.4byte 0x06013400
_08016b10:	.4byte 0x080e5ec0
_08016b14:	.4byte 0x0203EEDC
_08016b18:	.4byte 0x0300017C
	thumb_func_end sub_08016acc

	thumb_func_start sub_08016b1c
sub_08016b1c:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r2, [r3, #0x68]
	mov		r4, #0x0
	add		r2, #0x1
	cmp		r2, #0x10
	bgt		_08016b5c
	ldr		r1, _08016b54
	lsl		r0, r2, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08016b36
	add		r0, #0x3f
_08016b36:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _08016b58
	lsl		r0, r0, #0x6
	neg		r0, r0
	asr		r0, r0, #0xf
	mov		r5, #0x8e
	lsl		r5, r5, #0x1
	add		r0, r0, r5
	strh	r0, [r1, #0x0]
	b		_08016b5e

.incbin "base.gba", 0x16B52, 0x2

_08016b54:	.4byte 0x08101068
_08016b58:	.4byte 0x0300017C

_08016b5c:
	mov		r4, #0x1
_08016b5e:
	str		r2, [r3, #0x68]
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x16B68, 0x34
	ldr		r1, _08016bac
	ldrb	r0, [r1, #0xf]
	cmp		r0, #0x28
	bne		_08016ba8
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_08016ba8:
	bx		lr

.incbin "base.gba", 0x16BAA, 0x2

_08016bac:	.4byte 0x030052F0
	thumb_func_end sub_08016b1c

	thumb_func_start sub_08016bb0
sub_08016bb0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	bl		sub_0800ec28
	add		r2, r0, #0x0
	mov		r6, #0x0
	ldr		r0, _08016c40
	ldr		r3, _08016c44
	add		r1, r0, r3
	ldrb	r3, [r1, #0x0]
	cmp		r6, r3
	bge		_08016c32
	mov		r10, r0
	mov		r0, #0x1
	neg		r0, r0
	mov		r9, r0
	mov		r8, r1
	add		r4, r2, #0x0
	add		r4, #0x34
	mov		r5, #0x0
_08016be0:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r10
	add		r0, #0x24
	bl		sub_08044894
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08016c32
	mov		r1, #0x6
	ldrsh	r0, [r4, r1]
	cmp		r0, r9
	bne		_08016c24
	add		r1, r5, #0x0
	add		r1, #0x23
	cmp		r6, #0x3
	ble		_08016c0a
	add		r1, #0x5
_08016c0a:
	mov		r0, #0x0
	strh	r1, [r4, #0x0]
	strh	r0, [r4, #0x2]
	cmp		r7, #0x0
	beq		_08016c16
	add		r0, r5, #0x0
_08016c16:
	strh	r0, [r4, #0x4]
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	strh	r0, [r4, #0x6]
_08016c24:
	add		r4, #0x8
	add		r5, #0x3
	add		r6, #0x1
	mov		r3, r8
	ldrb	r3, [r3, #0x0]
	cmp		r6, r3
	blt		_08016be0
_08016c32:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08016c40:	.4byte 0x030031A0
_08016c44:	.4byte 0x00000814

.incbin "base.gba", 0x16C48, 0x164
_08016dac:	.4byte 0x08016de4

.incbin "base.gba", 0x16DB0, 0x34
	thumb_func_end sub_08016bb0


.incbin "base.gba", 0x16DE4, 0x11C
_08016f00:	.4byte 0x08016f38

.incbin "base.gba", 0x16F04, 0x118
_0801701c:	.4byte 0x08017180

.incbin "base.gba", 0x17020, 0x58
_08017078:	.4byte 0x08017180

.incbin "base.gba", 0x1707C, 0x70
_080170ec:	.4byte 0x08017180

.incbin "base.gba", 0x170F0, 0x58
_08017148:	.4byte 0x08017180

.incbin "base.gba", 0x1714C, 0xC8
_08017214:	.4byte 0x0801724c

.incbin "base.gba", 0x17218, 0x9B0
_08017bc8:	.4byte 0x08017bdc

.incbin "base.gba", 0x17BCC, 0x10

_08017bdc:

.incbin "base.gba", 0x17BDC, 0x4F8
	thumb_func_start sub_080180d4
sub_080180d4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x84
	ldr		r0, _08018104
	add		r0, #0x24
	mov		r8, r0
	bl		sub_0800ec28
	add		r7, r0, #0x0
	mov		r0, #0x0
	str		r0, [r7, #0x10]
	ldr		r0, [r7, #0x4]
	cmp		r0, #0x27
	bls		_080180fa
	bl		sub_080196fa
_080180fa:
	lsl		r0, r0, #0x2
	ldr		r1, _08018108
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08018104:	.4byte 0x030031A0
_08018108:	.4byte 0x0801810c
_0801810c:	.4byte 0x080181ac

.incbin "base.gba", 0x18110, 0x9C
	thumb_func_end sub_080180d4


.incbin "base.gba", 0x181AC, 0x2E8

_08018494:

.incbin "base.gba", 0x18494, 0x4B4

_08018948:

.incbin "base.gba", 0x18948, 0x2A8

_08018bf0:

.incbin "base.gba", 0x18BF0, 0xA70

_08019660:

.incbin "base.gba", 0x19660, 0x9A
	non_word_aligned_thumb_func_start sub_080196fa
sub_080196fa:
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x0
	beq		_08019706
	mov		r0, #0x1
	bl		sub_080281fc
_08019706:
	ldr		r1, [r7, #0x4]
	sub		r0, r1, #0x3
	cmp		r0, #0x17
	bhi		_08019770
	ldr		r0, _08019744
	ldr		r0, [r0, #0x10]
	mov		r1, #0xc
	bl		sub_0807de68
	mov		r1, #0x0
	cmp		r0, #0x5
	ble		_08019720
	mov		r1, #0x1
_08019720:
	cmp		r1, #0x0
	beq		_0801974c
	ldr		r4, _08019748
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r6, #0xe0
	lsl		r6, r6, #0x1
	add		r1, r1, r6
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	b		_08019764

.incbin "base.gba", 0x1973E, 0x6

.align 2, 0
_08019744:	.4byte 0x030031A0
_08019748:	.4byte 0x080c69c0

_0801974c:
	ldr		r4, _0801976c
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_08019764:
	mov		r0, #0x1
	bl		sub_08028168
	b		_0801985a

_0801976c:	.4byte 0x080c69e0

_08019770:
	cmp		r1, #0x1a
	ble		_0801985a
	ldr		r0, _0801986c
	ldr		r0, [r0, #0x10]
	ldr		r2, _08019870
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08019784
	add		r0, #0x3f
_08019784:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08019874
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r9, r0
	mov		r1, #0x0
	mov		r12, r1
	mov		r2, sp
	add		r2, #0x20
	str		r2, [sp, #0x6c]
	ldr		r0, _08019878
	mov		r3, #0x1f
	mov		r8, r3
	mov		r7, #0x1f
	add		r6, r0, #0x0
	add		r6, #0x40
	str		r6, [sp, #0x78]
	mov		r10, r0
_080197be:
	mov		r0, r12
	lsl		r0, r0, #0x1
	str		r0, [sp, #0x7c]
	mov		r2, r10
	ldrh	r1, [r2, #0x0]
	add		r2, r1, #0x0
	and		r2, r7
	lsr		r4, r1, #0x5
	mov		r3, r8
	and		r4, r3
	lsr		r1, r1, #0xa
	and		r1, r3
	ldr		r6, [sp, #0x78]
	ldrh	r3, [r6, #0x0]
	add		r0, r3, #0x0
	and		r0, r7
	lsr		r5, r3, #0x5
	mov		r6, r8
	and		r5, r6
	lsr		r3, r3, #0xa
	and		r3, r6
	sub		r0, r0, r2
	mov		r6, r9
	mul		r6, r0
	add		r0, r6, #0x0
	asr		r0, r0, #0xf
	add		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	sub		r5, r5, r4
	mov		r0, r9
	mul		r0, r5
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r3, r3, r1
	mov		r0, r9
	mul		r0, r3
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r0, [sp, #0x6c]
	ldr		r3, [sp, #0x7c]
	add		r6, r0, r3
	and		r2, r7
	and		r4, r7
	lsl		r4, r4, #0x5
	orr		r2, r4
	and		r1, r7
	lsl		r1, r1, #0xa
	orr		r2, r1
	strh	r2, [r6, #0x0]
	ldr		r6, [sp, #0x78]
	add		r6, #0x2
	str		r6, [sp, #0x78]
	mov		r0, #0x2
	add		r10, r0
	mov		r1, #0x1
	add		r12, r1
	mov		r2, r12
	cmp		r2, #0xf
	ble		_080197be
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r3, #0xe0
	lsl		r3, r3, #0x1
	add		r1, r1, r3
	ldr		r0, [sp, #0x6c]
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
_0801985a:
	add		sp, #0x84
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1986A, 0x2

_0801986c:	.4byte 0x030031A0
_08019870:	.4byte 0x08101068
_08019874:	.4byte 0x000003FF
_08019878:	.4byte 0x080c6a0c
	thumb_func_end sub_080196fa

	thumb_func_start sub_0801987c
sub_0801987c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	bl		sub_0800ec28
	add		r2, r0, #0x0
	mov		r6, #0x0
	ldr		r0, _0801990c
	ldr		r3, _08019910
	add		r1, r0, r3
	ldrb	r3, [r1, #0x0]
	cmp		r6, r3
	bge		_080198fe
	mov		r10, r0
	mov		r0, #0x1
	neg		r0, r0
	mov		r9, r0
	mov		r8, r1
	add		r4, r2, #0x0
	add		r4, #0x34
	mov		r5, #0x0
_080198ac:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r10
	add		r0, #0x24
	bl		sub_08044894
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080198fe
	mov		r1, #0x6
	ldrsh	r0, [r4, r1]
	cmp		r0, r9
	bne		_080198f0
	add		r1, r5, #0x0
	add		r1, #0x23
	cmp		r6, #0x3
	ble		_080198d6
	add		r1, #0x5
_080198d6:
	mov		r0, #0x0
	strh	r1, [r4, #0x0]
	strh	r0, [r4, #0x2]
	cmp		r7, #0x0
	beq		_080198e2
	add		r0, r5, #0x0
_080198e2:
	strh	r0, [r4, #0x4]
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	strh	r0, [r4, #0x6]
_080198f0:
	add		r4, #0x8
	add		r5, #0x3
	add		r6, #0x1
	mov		r3, r8
	ldrb	r3, [r3, #0x0]
	cmp		r6, r3
	blt		_080198ac
_080198fe:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0801990c:	.4byte 0x030031A0
_08019910:	.4byte 0x00000814

.incbin "base.gba", 0x19914, 0x164
_08019a78:	.4byte 0x08019ab0

.incbin "base.gba", 0x19A7C, 0x34
	thumb_func_end sub_0801987c


.incbin "base.gba", 0x19AB0, 0x11C
_08019bcc:	.4byte 0x08019c04

.incbin "base.gba", 0x19BD0, 0x118
_08019ce8:	.4byte 0x08019e4c

.incbin "base.gba", 0x19CEC, 0x58
_08019d44:	.4byte 0x08019e4c

.incbin "base.gba", 0x19D48, 0x70
_08019db8:	.4byte 0x08019e4c

.incbin "base.gba", 0x19DBC, 0x58
_08019e14:	.4byte 0x08019e4c

.incbin "base.gba", 0x19E18, 0xC8
_08019ee0:	.4byte 0x08019f18

.incbin "base.gba", 0x19EE4, 0x75C
_0801a640:	.4byte 0x0801a654

.incbin "base.gba", 0x1A644, 0x504
	thumb_func_start sub_0801ab48
sub_0801ab48:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x38
	ldr		r0, _0801ab78
	add		r0, #0x24
	mov		r10, r0
	bl		sub_0800ec28
	mov		r9, r0
	mov		r0, #0x0
	mov		r1, r9
	str		r0, [r1, #0x10]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0xc
	bls		_0801ab6e
	b		_0801b2fe
_0801ab6e:
	lsl		r0, r0, #0x2
	ldr		r1, _0801ab7c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0801ab78:	.4byte 0x030031A0
_0801ab7c:	.4byte 0x0801ab80
_0801ab80:	.4byte 0x0801abb4

.incbin "base.gba", 0x1AB84, 0x30
	thumb_func_end sub_0801ab48


.incbin "base.gba", 0x1ABB4, 0x154

_0801ad08:

.incbin "base.gba", 0x1AD08, 0x5A0
_0801b2a8:	.4byte 0x0801b2c8

.incbin "base.gba", 0x1B2AC, 0x52

_0801b2fe:

.incbin "base.gba", 0x1B2FE, 0xE
_0801b30c:

.incbin "base.gba", 0x1B30C, 0x18
_0801b324:

.incbin "base.gba", 0x1B324, 0x30
_0801b354:

.incbin "base.gba", 0x1B354, 0x8E
_0801b3e2:

.incbin "base.gba", 0x1B3E2, 0x16
_0801b3f8:	.4byte 0x030031A0
_0801b3fc:	.4byte 0x08101068
_0801b400:	.4byte 0x000003FF
_0801b404:	.4byte 0x080c6a0c
	thumb_func_start sub_0801b408
sub_0801b408:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _0801b438
	mov		r0, #0x24
	add		r0, r0, r4
	mov		r8, r0
	ldr		r1, _0801b43c
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	bl		sub_080374cc
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	mov		r7, #0x0
	ldr		r5, _0801b440
	add		r0, r4, r5
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0801b444
	mov		r0, #0x0
	b		_0801b4b6

_0801b438:	.4byte 0x030031A0
_0801b43c:	.4byte 0x00000838
_0801b440:	.4byte 0x00000C12

_0801b444:
	cmp		r2, #0x0
	beq		_0801b472
	ldr		r0, _0801b464
	add		r0, #0x8
	ldrb	r3, [r0, #0x9]
	ldrh	r1, [r0, #0x2]
	cmp		r1, #0x0
	bne		_0801b456
	mov		r7, #0x1
_0801b456:
	ldr		r5, _0801b468
	add		r0, r4, r5
	ldrb	r0, [r0, #0x0]
	cmp		r3, r0
	beq		_0801b46c
	mov		r7, #0x1
	b		_0801b476

_0801b464:	.4byte 0x02020400
_0801b468:	.4byte 0x00000801

_0801b46c:
	cmp		r1, r2
	bls		_0801b472
	mov		r7, #0x1
_0801b472:
	cmp		r7, #0x0
	beq		_0801b4b4
_0801b476:
	ldr		r5, _0801b4c0
	mov		r6, #0x0
	strh		r2, [r5, #0xA]
	bl		sub_08057370
	add		r4, r0, #0x0
	ldr		r0, _0801b4c4
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	bl		sub_0802d6e0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r0, #0x2
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	mov		r0, #0xb2
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	add		r4, r4, r1
	str		r6, [r4, #0x4]
	ldr		r0, _0801b4c8
	add		r1, r5, r0
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r0, r5, #0x0
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08014ccc
_0801b4b4:
	add		r0, r7, #0x0
_0801b4b6:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0801b4c0:	.4byte 0x02024400
_0801b4c4:	.4byte 0x000007DD
_0801b4c8:	.4byte 0xFFFFC000
	thumb_func_end sub_0801b408

	thumb_func_start sub_0801b4cc
sub_0801b4cc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x28
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	ldr		r0, _0801b578
	sub		r1, #0x1
	str		r1, [r0, #0x0]
	ldr		r0, _0801b57c
	str		r1, [r0, #0x0]
	ldr		r0, _0801b580
	ldr		r2, [sp, #0x4]
	str		r2, [r0, #0x0]
	ldr		r0, _0801b584
	str		r2, [r0, #0x0]
	ldr		r4, _0801b588
	ldr		r0, _0801b58c
	add		r5, r4, r0
	ldrb	r0, [r5, #0x0]
	bl		sub_0802d73c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x8]
	ldrb	r0, [r5, #0x0]
	bl		sub_0802d798
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0xC]
	ldr		r1, _0801b590
	add		r4, r4, r1
	ldr		r0, [r4, #0x0]
	ldr		r0, [r0, #0xc]
	bl		sub_0802c6c8
	str		r0, [sp, #0x10]
	ldr		r2, [sp, #0xC]
	lsl		r2, r2, #0x5
	mov		r8, r2
	ldr		r0, [sp, #0x8]
	lsl		r7, r0, #0x7
	mov		r1, #0x0
	mov		r9, r1
	mov		r2, #0x50
	str		r2, [sp, #0x24]
	mov		r0, #0x4
	mov		r10, r0
_0801b536:
	bl		sub_0800ec38
	ldr		r1, [sp, #0x24]
	add		r4, r0, r1
	ldr		r2, [sp, #0x10]
	cmp		r2, #0x0
	beq		_0801b594
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	mov		r1, #0xb9
	lsl		r1, r1, #0x2
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	mov		r2, #0xb9
	lsl		r2, r2, #0x2
	add		r0, r0, r2
	ldrh	r0, [r0, #0x2]
	strh	r0, [r4, #0x4]
	ldr		r0, [sp, #0xC]
	lsl		r6, r0, #0x5
	ldr		r1, [sp, #0x8]
	lsl		r5, r1, #0x7
	b		_0801b5bc

.incbin "base.gba", 0x1B576, 0x2

_0801b578:	.4byte 0x03000180
_0801b57c:	.4byte 0x03000184
_0801b580:	.4byte 0x03000188
_0801b584:	.4byte 0x0300018C
_0801b588:	.4byte 0x030031A0
_0801b58c:	.4byte 0x00000801
_0801b590:	.4byte 0x0000059C

_0801b594:
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	add		r0, #0x64
	ldrb	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	add		r0, #0x64
	ldrh	r0, [r0, #0x2]
	strh	r0, [r4, #0x4]
	ldr		r2, [sp, #0xC]
	lsl		r6, r2, #0x5
	ldr		r0, [sp, #0x8]
	lsl		r5, r0, #0x7
_0801b5bc:
	mov		r0, #0x0
	str		r0, [r4, #0x8]
	mov		r1, #0x4
	add		r9, r1
	ldr		r2, [sp, #0x24]
	add		r2, #0xc
	str		r2, [sp, #0x24]
	sub		r0, #0x1
	add		r10, r0
	mov		r1, r10
	cmp		r1, #0x0
	bge		_0801b536
	bl		sub_0800ec38
	add		r7, r0, #0x0
	add		r7, #0x8c
	ldr		r2, [sp, #0x10]
	cmp		r2, #0x0
	beq		_0801b600
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	mov		r4, #0xbe
	lsl		r4, r4, #0x2
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	str		r0, [r7, #0x0]
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, r0, r4
	b		_0801b618
_0801b600:
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	str		r0, [r7, #0x0]
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, #0x78
_0801b618:
	ldrh	r0, [r0, #0x2]
	strh	r0, [r7, #0x4]
	mov		r0, #0x0
	str		r0, [r7, #0x8]
	ldr		r5, _0801b660
	add		r2, r5, #0x0
	add		r2, #0x24
	ldr		r1, _0801b664
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0801b66c
	ldr		r4, _0801b668
	ldr		r1, [r4, #0x0]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0801b644
	b		_0801b8d0
_0801b644:
	bl		sub_0800ec38
	ldr		r2, [r4, #0x0]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	mov		r2, #0x1
	str		r2, [r1, #0x58]
	str		r2, [sp, #0x4]
	add		r0, #0x8c
	str		r2, [r0, #0x8]
	b		_0801b8d0

.incbin "base.gba", 0x1B65E, 0x2

_0801b660:	.4byte 0x030031A0
_0801b664:	.4byte 0x000007FE
_0801b668:	.4byte 0x03000180

_0801b66c:
	mov		r9, r2
	ldr		r0, _0801b6cc
	add		r4, r5, r0
	ldr		r0, [r4, #0x0]
	bl		sub_080374cc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	ldr		r7, [r4, #0x0]
	ldr		r1, _0801b6d0
	add		r0, r5, r1
	ldrh	r0, [r0, #0x0]
	lsr		r6, r0, #0x8
	mov		r0, #0xf
	and		r6, r0
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	mov		r5, #0x0
	cmp		r5, r6
	bge		_0801b6c0
_0801b69e:
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r4, r0
	bls		_0801b6ba
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
_0801b6ba:
	add		r5, #0x1
	cmp		r5, r6
	blt		_0801b69e
_0801b6c0:
	add		r6, r4, #0x0
	mov		r2, #0x0
	mov		r10, r2
	mov		r5, #0x0
	mov		r4, #0x50
	b		_0801b6dc

_0801b6cc:	.4byte 0x00000838
_0801b6d0:	.4byte 0x0000080A

_0801b6d4:
	add		r5, r1, #0x2
	add		r4, #0xc
	mov		r0, #0x1
	add		r10, r0
_0801b6dc:
	mov		r1, r10
	cmp		r1, #0x4
	bgt		_0801b750
	bl		sub_0800ec38
	add		r0, r0, r4
	ldrh	r0, [r0, #0x4]
	add		r1, r5, #0x0
	cmp		r0, r8
	bls		_0801b6d4
	bl		sub_0800ec38
	add		r1, r0, #0x0
	mov		r2, r10
	add		r0, r5, r2
	lsl		r0, r0, #0x2
	add		r0, #0x50
	add		r3, r1, r0
	mov		r2, #0x4
	cmp		r2, r10
	ble		_0801b718
	add		r1, #0x74
_0801b708:
	ldr		r0, [r1, #0x0]
	str		r0, [r1, #0xc]
	ldrh	r0, [r1, #0x4]
	strh	r0, [r1, #0x10]
	sub		r1, #0xc
	sub		r2, #0x1
	cmp		r2, r10
	bgt		_0801b708
_0801b718:
	ldr		r0, _0801b744
	add		r0, r9
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	str		r0, [r3, #0x0]
	mov		r0, r8
	strh	r0, [r3, #0x4]
	mov		r0, #0x1
	str		r0, [r3, #0x8]
	ldr		r0, _0801b748
	mov		r1, r10
	str		r1, [r0, #0x0]
	mov		r2, #0x1
	str		r2, [sp, #0x0]
	cmp		r1, #0x0
	bne		_0801b758
	ldr		r0, _0801b74c
	str		r2, [r0, #0x0]
	b		_0801b758

_0801b744:	.4byte 0x00000814
_0801b748:	.4byte 0x03000180
_0801b74c:	.4byte 0x03000188

_0801b750:
	ldr		r1, _0801b78c
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r1, #0x0]
_0801b758:
	bl		sub_0800ec38
	add		r2, r0, #0x0
	add		r2, #0x8c
	ldrh	r0, [r2, #0x4]
	cmp		r0, r6
	bls		_0801b79c
	ldr		r0, _0801b790
	add		r0, r9
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	str		r0, [r2, #0x0]
	strh	r6, [r2, #0x4]
	mov		r1, #0x1
	str		r1, [r2, #0x8]
	ldr		r0, _0801b794
	str		r1, [r0, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x0]
	ldr		r0, _0801b798
	ldr		r1, [sp, #0x0]
	str		r1, [r0, #0x0]
	b		_0801b7a4

_0801b78c:	.4byte 0x03000180
_0801b790:	.4byte 0x00000814
_0801b794:	.4byte 0x03000184
_0801b798:	.4byte 0x0300018C

_0801b79c:
	ldr		r1, _0801b830
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r1, #0x0]
_0801b7a4:
	ldr		r2, [sp, #0x0]
	cmp		r2, #0x0
	bne		_0801b7ac
	b		_0801b8d0
_0801b7ac:
	ldr		r4, _0801b834
	ldr		r0, _0801b838
	add		r5, r4, r0
	ldrb	r0, [r5, #0x0]
	bl		sub_0802d73c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x14]
	ldrb	r0, [r5, #0x0]
	bl		sub_0802d798
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x18]
	ldr		r1, _0801b83c
	add		r4, r4, r1
	ldr		r0, [r4, #0x0]
	ldr		r0, [r0, #0xc]
	bl		sub_0802c6c8
	str		r0, [sp, #0x1C]
	ldr		r2, [sp, #0x18]
	lsl		r2, r2, #0x5
	mov		r8, r2
	ldr		r0, [sp, #0x14]
	lsl		r7, r0, #0x7
	mov		r1, #0x0
	mov		r9, r1
	mov		r2, #0x50
	str		r2, [sp, #0x20]
	mov		r0, #0x4
	mov		r10, r0
_0801b7ee:
	bl		sub_0800ec38
	ldr		r1, [sp, #0x20]
	add		r4, r0, r1
	ldr		r2, [sp, #0x1C]
	cmp		r2, #0x0
	beq		_0801b840
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	mov		r1, #0xb9
	lsl		r1, r1, #0x2
	add		r0, r0, r1
	ldr		r1, [r4, #0x0]
	strb	r1, [r0, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	mov		r2, #0xb9
	lsl		r2, r2, #0x2
	add		r0, r0, r2
	ldrh	r1, [r4, #0x4]
	strh	r1, [r0, #0x2]
	ldr		r0, [sp, #0x18]
	lsl		r6, r0, #0x5
	ldr		r1, [sp, #0x14]
	lsl		r5, r1, #0x7
	b		_0801b868

.incbin "base.gba", 0x1B82E, 0x2

_0801b830:	.4byte 0x03000184
_0801b834:	.4byte 0x030031A0
_0801b838:	.4byte 0x00000801
_0801b83c:	.4byte 0x0000059C

_0801b840:
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	add		r0, #0x64
	ldr		r1, [r4, #0x0]
	strb	r1, [r0, #0x0]
	bl		sub_08057370
	add		r0, r7, r0
	add		r0, r8
	add		r0, r9
	add		r0, #0x64
	ldrh	r1, [r4, #0x4]
	strh	r1, [r0, #0x2]
	ldr		r2, [sp, #0x18]
	lsl		r6, r2, #0x5
	ldr		r0, [sp, #0x14]
	lsl		r5, r0, #0x7
_0801b868:
	mov		r1, #0x4
	add		r9, r1
	ldr		r2, [sp, #0x20]
	add		r2, #0xc
	str		r2, [sp, #0x20]
	mov		r0, #0x1
	neg		r0, r0
	add		r10, r0
	mov		r1, r10
	cmp		r1, #0x0
	bge		_0801b7ee
	bl		sub_0800ec38
	add		r7, r0, #0x0
	add		r7, #0x8c
	ldr		r2, [sp, #0x1C]
	cmp		r2, #0x0
	beq		_0801b8aa
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	mov		r4, #0xbe
	lsl		r4, r4, #0x2
	add		r0, r0, r4
	ldr		r1, [r7, #0x0]
	strb	r1, [r0, #0x0]
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, r0, r4
	b		_0801b8c2
_0801b8aa:
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, #0x78
	ldr		r1, [r7, #0x0]
	strb	r1, [r0, #0x0]
	bl		sub_08057370
	add		r0, r5, r0
	add		r0, r6, r0
	add		r0, #0x78
_0801b8c2:
	ldrh	r1, [r7, #0x4]
	strh	r1, [r0, #0x2]
	mov		r0, #0x1
	bl		sub_08014ca8
	mov		r0, #0x1
	str		r0, [sp, #0x4]
_0801b8d0:
	ldr		r0, [sp, #0x4]
	add		sp, #0x28
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x1B8E2, 0x702
	thumb_func_end sub_0801b4cc

	thumb_func_start sub_0801bfe4
sub_0801bfe4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x70
	bl		sub_0800ec38
	mov		r8, r0
	mov		r0, #0x0
	str		r0, [sp, #0x14]
	mov		r1, r8
	ldr		r0, [r1, #0x10]
	add		r0, #0x1
	str		r0, [r1, #0x10]
	ldr		r0, [r1, #0x0]
	cmp		r0, #0xd
	bls		_0801c00c
	bl		sub_0801ccf0
_0801c00c:
	lsl		r0, r0, #0x2
	ldr		r1, _0801c018
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x1C016, 0x2

_0801c018:	.4byte 0x0801c01c
_0801c01c:	.4byte 0x0801c054

.incbin "base.gba", 0x1C020, 0x34
	thumb_func_end sub_0801bfe4


.incbin "base.gba", 0x1C054, 0xC28
_0801cc7c:	.4byte 0x0801cc9c

.incbin "base.gba", 0x1CC80, 0x70
	thumb_func_start sub_0801ccf0
sub_0801ccf0:
	ldr		r0, [sp, #0x14]
	cmp		r0, #0x0
	beq		_0801ccfc
	mov		r0, #0x1
	bl		sub_080281fc
_0801ccfc:
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r0, #0xa
	ble		_0801cdd2
	ldr		r0, _0801ce10
	ldr		r0, [r0, #0x10]
	ldr		r2, _0801ce14
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0801cd14
	add		r0, #0x3f
_0801cd14:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0801ce18
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r10, r0
	mov		r2, #0x0
	str		r2, [sp, #0x44]
	mov		r3, #0x1f
	mov		r9, r3
	mov		r7, #0x1f
	ldr		r6, _0801ce1c
	add		r6, #0x40
	str		r6, [sp, #0x58]
_0801cd44:
	ldr		r0, [sp, #0x44]
	lsl		r0, r0, #0x1
	str		r0, [sp, #0x6c]
	ldr		r1, _0801ce1c
	add		r0, r0, r1
	ldrh	r4, [r0, #0x0]
	add		r5, r4, #0x0
	and		r5, r7
	lsr		r6, r4, #0x5
	mov		r2, r9
	and		r6, r2
	lsr		r4, r4, #0xa
	and		r4, r2
	ldr		r3, [sp, #0x58]
	ldrh	r1, [r3, #0x0]
	add		r0, r1, #0x0
	and		r0, r7
	lsr		r2, r1, #0x5
	mov		r3, r9
	and		r2, r3
	lsr		r1, r1, #0xa
	and		r1, r3
	sub		r0, r0, r5
	mov		r3, r10
	mul		r3, r0
	add		r0, r3, #0x0
	asr		r0, r0, #0xf
	add		r5, r5, r0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	sub		r2, r2, r6
	mov		r0, r10
	mul		r0, r2
	asr		r0, r0, #0xf
	add		r6, r6, r0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	sub		r1, r1, r4
	mov		r0, r10
	mul		r0, r1
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r1, [sp, #0x6c]
	add		r3, r1, r0
	mov		r2, #0xe0
	lsl		r2, r2, #0x1
	add		r3, r3, r2
	and		r5, r7
	and		r6, r7
	lsl		r6, r6, #0x5
	orr		r5, r6
	and		r4, r7
	lsl		r4, r4, #0xa
	orr		r5, r4
	strh	r5, [r3, #0x0]
	ldr		r3, [sp, #0x58]
	add		r3, #0x2
	str		r3, [sp, #0x58]
	ldr		r6, [sp, #0x44]
	add		r6, #0x1
	str		r6, [sp, #0x44]
	cmp		r6, #0xf
	ble		_0801cd44
	mov		r0, #0x1
	bl		sub_08028168
_0801cdd2:
	mov		r7, r8
	ldr		r0, [r7, #0x0]
	cmp		r0, #0xd
	beq		_0801cdf6
	cmp		r0, #0x6
	ble		_0801cdf6
	ldr		r0, [r7, #0x14]
	cmp		r0, #0x0
	beq		_0801cdf6
	ldr		r0, _0801ce20
	mov		r1, r8
	add		r1, #0x18
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0801cdf6:
	add		sp, #0x70
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1CE06, 0xA

_0801ce10:	.4byte 0x030031A0
_0801ce14:	.4byte 0x08101068
_0801ce18:	.4byte 0x000003FF
_0801ce1c:	.4byte 0x080c6a0c
_0801ce20:	.4byte 0x080e49f8
	thumb_func_end sub_0801ccf0

	thumb_func_start sub_0801ce24
sub_0801ce24:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	add		r5, r2, #0x0
	ldr		r0, _0801ce80
	ldr		r1, _0801ce84
	add		r0, r0, r1
	ldrh	r4, [r0, #0x0]
	lsr		r4, r4, #0x8
	mov		r0, #0xf
	and		r4, r0
	sub		r4, #0x1
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [r5, #0x0]
	str		r4, [r7, #0x0]
	cmp		r4, #0x0
	blt		_0801ce78
_0801ce50:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, [r5, #0x0]
	cmp		r1, r0
	blt		_0801ce72
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_080374c0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [r5, #0x0]
	str		r4, [r7, #0x0]
_0801ce72:
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0801ce50
_0801ce78:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1CE7E, 0x2

_0801ce80:	.4byte 0x030031A0
_0801ce84:	.4byte 0x0000080A
	thumb_func_end sub_0801ce24

	thumb_func_start sub_0801ce88
sub_0801ce88:
	push	{ r4, lr }
	ldr		r4, _0801ced4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	mov		r4, #0x0
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_0801ceba
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_0801cebc
_0801ceba:
	mov		r4, #0x1
_0801cebc:
	cmp		r4, #0x0
	beq		_0801cee0
	bl		sub_08029f34
	ldr		r1, _0801ced8
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _0801cedc
	bl		sub_08029ee4
	b		_0801cefe

.incbin "base.gba", 0x1CED2, 0x2

_0801ced4:	.4byte 0x080c69c0
_0801ced8:	.4byte 0x080c6b0c
_0801cedc:	.4byte 0x80000400

_0801cee0:
	bl		sub_08029f34
	ldr		r1, _0801cf30
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _0801cf34
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0801cf38
	ldr		r2, _0801cf3c
	ldr		r3, _0801cf40
	bl		sub_08029ee4
_0801cefe:
	bl		sub_08029f34
	ldr		r1, _0801cf44
	ldr		r2, _0801cf48
	ldr		r3, _0801cf4c
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0801cf50
	ldr		r2, _0801cf54
	ldr		r3, _0801cf58
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0801cf5c
	ldr		r2, _0801cf60
	ldr		r3, _0801cf64
	bl		sub_08029ee4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1CF2E, 0x2

_0801cf30:	.4byte 0x080c6b0c
_0801cf34:	.4byte 0x80000230
_0801cf38:	.4byte 0x080c958c
_0801cf3c:	.4byte 0x06000080
_0801cf40:	.4byte 0x800000E0
_0801cf44:	.4byte 0x080b7f80
_0801cf48:	.4byte 0x06000800
_0801cf4c:	.4byte 0x80000600
_0801cf50:	.4byte 0x080c83cc
_0801cf54:	.4byte 0x06001400
_0801cf58:	.4byte 0x80000200
_0801cf5c:	.4byte 0x080c7bcc
_0801cf60:	.4byte 0x06002000
_0801cf64:	.4byte 0x80000400
	thumb_func_end sub_0801ce88

	thumb_func_start sub_0801cf68
sub_0801cf68:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	str		r0, [sp, #0x0]
	ldr		r0, _0801cfa8
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r9, r1
	ldr		r2, _0801cfac
	add		r0, r0, r2
	ldrb	r6, [r0, #0x0]
	mov		r4, #0x0
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_0801cf96
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_0801cf98
_0801cf96:
	mov		r4, #0x1
_0801cf98:
	cmp		r6, #0x3
	beq		_0801cfd4
	cmp		r6, #0x3
	bgt		_0801cfb0
	cmp		r6, #0x2
	beq		_0801cfb6
	b		_0801d00c

.incbin "base.gba", 0x1CFA6, 0x2

_0801cfa8:	.4byte 0x030031A0
_0801cfac:	.4byte 0x000007FB

_0801cfb0:
	cmp		r6, #0x4
	beq		_0801cfe8
	b		_0801d00c
_0801cfb6:
	cmp		r4, #0x0
	beq		_0801cfc4
	ldr		r0, _0801cfc0
	b		_0801cfc6

.incbin "base.gba", 0x1CFBE, 0x2

_0801cfc0:	.4byte 0x080b8b80

_0801cfc4:
	ldr		r0, _0801cfd0
_0801cfc6:
	ldr		r1, [sp, #0x0]
	bl		sub_08071b80
	b		_0801d00c

.incbin "base.gba", 0x1CFCE, 0x2

_0801cfd0:	.4byte 0x080b8dd0

_0801cfd4:
	cmp		r4, #0x0
	beq		_0801cfe0
	ldr		r0, _0801cfdc
	b		_0801cfee

_0801cfdc:	.4byte 0x080b8fbc

_0801cfe0:
	ldr		r0, _0801cfe4
	b		_0801cfee

_0801cfe4:	.4byte 0x080b94bc

_0801cfe8:
	cmp		r4, #0x0
	beq		_0801d000
	ldr		r0, _0801cffc
_0801cfee:
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	ldr		r1, [sp, #0x0]
	bl		sub_08071b68
	b		_0801d00c

.incbin "base.gba", 0x1CFFA, 0x2

_0801cffc:	.4byte 0x080b99bc

_0801d000:
	ldr		r0, _0801d01c
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	ldr		r1, [sp, #0x0]
	bl		sub_08071b68
_0801d00c:
	cmp		r6, #0x3
	beq		_0801d020
	cmp		r6, #0x3
	ble		_0801d0ce
	cmp		r6, #0x4
	beq		_0801d07c
	b		_0801d0ce

.incbin "base.gba", 0x1D01A, 0x2

_0801d01c:	.4byte 0x080b9ebc

_0801d020:
	mov		r0, #0x0
_0801d022:
	mov		r4, #0x0
	add		r1, r0, #0x1
	mov		r8, r1
	cmp		r4, r6
	bge		_0801d06c
	add		r7, r0, #0x4
	lsl		r0, r7, #0x6
	ldr		r2, [sp, #0x0]
	add		r3, r2, r0
	mov		r5, #0x0
_0801d036:
	lsl		r1, r4, #0x2
	ldr		r0, _0801d074
	add		r0, r9
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	lsl		r0, r7, #0x5
	add		r0, r0, r5
	lsl		r0, r0, #0x1
	ldr		r1, _0801d078
	add		r0, r0, r1
	add		r2, #0xba
	ldrh	r2, [r2, #0x0]
	lsr		r2, r2, #0x1
	lsl		r1, r2, #0x3
	sub		r1, r1, r2
	lsl		r1, r1, #0x1
	add		r1, #0x4
	add		r1, r3, r1
	mov		r2, #0x7
	str		r3, [sp, #0x14]
	bl		sub_08071b6c
	add		r5, #0x7
	add		r4, #0x1
	ldr		r3, [sp, #0x14]
	cmp		r4, r6
	blt		_0801d036
_0801d06c:
	mov		r0, r8
	cmp		r0, #0x3
	ble		_0801d022
	b		_0801d0ce

_0801d074:	.4byte 0x000007F4
_0801d078:	.4byte 0x080b8fc0

_0801d07c:
	mov		r0, #0x0
_0801d07e:
	mov		r4, #0x0
	add		r1, r0, #0x1
	mov		r8, r1
	cmp		r4, r6
	bge		_0801d0c8
	add		r7, r0, #0x4
	lsl		r0, r7, #0x6
	ldr		r2, [sp, #0x0]
	add		r3, r2, r0
	mov		r5, #0x0
_0801d092:
	lsl		r1, r4, #0x2
	ldr		r0, _0801d10c
	add		r0, r9
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	lsl		r0, r7, #0x5
	add		r0, r0, r5
	lsl		r0, r0, #0x1
	ldr		r1, _0801d110
	add		r0, r0, r1
	add		r2, #0xba
	ldrh	r2, [r2, #0x0]
	lsr		r2, r2, #0x1
	lsl		r1, r2, #0x3
	sub		r1, r1, r2
	lsl		r1, r1, #0x1
	add		r1, #0x2
	add		r1, r3, r1
	mov		r2, #0x7
	str		r3, [sp, #0x14]
	bl		sub_08071b6c
	add		r5, #0x7
	add		r4, #0x1
	ldr		r3, [sp, #0x14]
	cmp		r4, r6
	blt		_0801d092
_0801d0c8:
	mov		r0, r8
	cmp		r0, #0x3
	ble		_0801d07e
_0801d0ce:
	mov		r4, #0x0
	cmp		r4, r6
	bge		_0801d184
	ldr		r0, _0801d10c
	add		r0, r9
	str		r0, [sp, #0x4]
	ldr		r1, _0801d114
	mov		r10, r1
	sub		r0, r6, #0x2
	lsl		r0, r0, #0x3
	str		r0, [sp, #0xc]
	ldr		r0, _0801d118
	add		r0, r9
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x8]
	add		r0, #0xba
	str		r0, [sp, #0x10]
_0801d0f0:
	lsl		r1, r4, #0x2
	ldr		r2, [sp, #0x4]
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	add		r7, r4, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r2, r0
	bne		_0801d17e
	mov		r3, #0x0
	mov		r12, r3
	cmp		r6, #0x2
	bne		_0801d11c
	lsl		r0, r4, #0x1
	b		_0801d132

_0801d10c:	.4byte 0x000007F4
_0801d110:	.4byte 0x080b99be
_0801d114:	.4byte 0x080f6184
_0801d118:	.4byte 0x00000814

_0801d11c:
	cmp		r6, #0x2
	blt		_0801d144
	cmp		r6, #0x4
	bgt		_0801d144
	ldr		r1, [sp, #0x10]
	ldrh	r0, [r1, #0x0]
	lsr		r0, r0, #0x1
	lsl		r0, r0, #0x1
	ldr		r2, [sp, #0xc]
	add		r0, r2, r0
	lsl		r1, r0, #0x1
_0801d132:
	add		r1, r10
	mov		r2, #0x0
	ldrsh	r3, [r1, r2]
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r10
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	mov		r12, r1
_0801d144:
	mov		r2, #0x0
	add		r7, r4, #0x1
	ldr		r0, _0801d194
	mov		r9, r0
	lsl		r5, r3, #0x1
	mov		r1, #0xe0
	lsl		r1, r1, #0x8
	mov		r8, r1
_0801d154:
	mov		r1, r12
	add		r0, r1, r2
	add		r4, r2, #0x1
	lsl		r0, r0, #0x6
	add		r0, r5, r0
	ldr		r1, [sp, #0x0]
	add		r2, r0, r1
	mov		r3, #0x2
_0801d164:
	ldrh	r1, [r2, #0x0]
	mov		r0, r9
	and		r0, r1
	mov		r1, r8
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0801d164
	add		r2, r4, #0x0
	cmp		r2, #0x1
	ble		_0801d154
_0801d17e:
	add		r4, r7, #0x0
	cmp		r4, r6
	blt		_0801d0f0
_0801d184:
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0801d194:	.4byte 0x00000FFF
	thumb_func_end sub_0801cf68

	thumb_func_start sub_0801d198
sub_0801d198:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	str		r0, [sp, #0x0]
	ldr		r0, _0801d1dc
	ldr		r1, _0801d1e0
	add		r0, r0, r1
	ldrb	r2, [r0, #0x0]
	mov		r4, #0x0
	cmp		r4, r2
	blt		_0801d1b6
	b		_0801d2e6
_0801d1b6:
	lsl		r1, r4, #0x2
	ldr		r3, _0801d1e4
	ldr		r5, _0801d1e8
	add		r0, r3, r5
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	mov		r10, r0
	str		r1, [sp, #0x10]
	cmp		r2, #0x3
	beq		_0801d200
	cmp		r2, #0x3
	bgt		_0801d1ec
	cmp		r2, #0x2
	beq		_0801d1f2
	b		_0801d22a

.incbin "base.gba", 0x1D1DA, 0x2

_0801d1dc:	.4byte 0x030031A0
_0801d1e0:	.4byte 0x000007FB
_0801d1e4:	.4byte 0x030031C4
_0801d1e8:	.4byte 0x000007F4

_0801d1ec:
	cmp		r2, #0x4
	beq		_0801d216
	b		_0801d22a
_0801d1f2:
	lsl		r0, r4, #0x3
	sub		r0, r0, r4
	add		r0, #0x6
	str		r0, [sp, #0x4]
	mov		r1, #0xc
	mov		r10, r1
	b		_0801d22a
_0801d200:
	mov		r0, r8
	add		r0, #0xba
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0x1
	lsl		r0, r1, #0x3
	sub		r0, r0, r1
	add		r0, #0x6
	str		r0, [sp, #0x4]
	mov		r3, #0x8
	mov		r10, r3
	b		_0801d22a
_0801d216:
	mov		r0, r8
	add		r0, #0xba
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0x1
	lsl		r0, r1, #0x3
	sub		r0, r0, r1
	add		r0, #0x5
	str		r0, [sp, #0x4]
	mov		r5, #0x8
	mov		r10, r5
_0801d22a:
	mov		r3, #0x0
	sub		r0, r2, #0x1
	mov		r9, r0
	add		r4, #0x1
	str		r4, [sp, #0xc]
	cmp		r3, r9
	bge		_0801d2de
	ldr		r1, _0801d34c
	ldr		r4, _0801d350
	add		r0, r1, r4
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x8]
_0801d242:
	mov		r7, #0xf0
	lsl		r7, r7, #0x8
	ldr		r5, [sp, #0x8]
	cmp		r5, r8
	bne		_0801d250
	mov		r7, #0xe0
	lsl		r7, r7, #0x8
_0801d250:
	mov		r1, #0x2
	cmp		r2, #0x3
	bne		_0801d258
	mov		r1, #0x3
_0801d258:
	ldr		r0, _0801d354
	ldr		r4, [sp, #0x10]
	add		r5, r3, r4
	add		r5, r5, r0
	add		r0, r3, #0x0
	mul		r0, r1
	add		r0, r10
	ldr		r1, [sp, #0x4]
	lsl		r4, r1, #0x1
	lsl		r0, r0, #0x6
	ldr		r1, [sp, #0x0]
	add		r0, r0, r1
	add		r4, r4, r0
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	str		r2, [sp, #0x14]
	str		r3, [sp, #0x18]
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	orr		r0, r7
	strh	r0, [r4, #0x0]
	add		r6, r4, #0x0
	add		r6, #0x40
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x90
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	orr		r0, r7
	strh	r0, [r6, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	orr		r0, r7
	strh	r0, [r4, #0x2]
	add		r4, #0x42
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r5, #0x90
	lsl		r5, r5, #0x1
	add		r0, r0, r5
	orr		r7, r0
	strh	r7, [r4, #0x0]
	ldr		r3, [sp, #0x18]
	add		r3, #0x1
	ldr		r2, [sp, #0x14]
	cmp		r3, r9
	blt		_0801d242
_0801d2de:
	ldr		r4, [sp, #0xc]
	cmp		r4, r2
	bge		_0801d2e6
	b		_0801d1b6
_0801d2e6:
	ldr		r6, [sp, #0x0]
	add		r6, #0x78
	ldr		r0, _0801d358
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	mov		r1, #0xa
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r4, r1, #0x0
	add		r1, r0, r4
	ldr		r2, _0801d35c
	add		r5, r2, #0x0
	orr		r1, r5
	strh	r1, [r6, #0x0]
	ldr		r1, [sp, #0x0]
	add		r1, #0xb8
	mov		r3, #0x90
	lsl		r3, r3, #0x1
	add		r6, r3, #0x0
	add		r0, r0, r6
	orr		r0, r5
	strh	r0, [r1, #0x0]
	ldr		r7, [sp, #0x0]
	add		r7, #0x7a
	mov		r0, r8
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r4, r0, r4
	orr		r4, r5
	strh	r4, [r7, #0x0]
	ldr		r1, [sp, #0x0]
	add		r1, #0xba
	add		r0, r0, r6
	orr		r0, r5
	strh	r0, [r1, #0x0]
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1D34A, 0x2

_0801d34c:	.4byte 0x030031C4
_0801d350:	.4byte 0x00000814
_0801d354:	.4byte 0x03002FC0
_0801d358:	.4byte 0x03002D5C
_0801d35c:	.4byte 0xFFFFF000
	thumb_func_end sub_0801d198

	thumb_func_start sub_0801d360
sub_0801d360:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x74
	bl		sub_0800ec30
	mov		r9, r0
	ldr		r0, _0801d39c
	add		r3, r0, #0x0
	add		r3, #0x24
	ldr		r1, _0801d3a0
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	mov		r2, #0x0
	str		r2, [sp, #0x8]
	mov		r4, r9
	ldr		r0, [r4, #0x0]
	cmp		r0, #0xc
	bls		_0801d390
	bl		sub_0801e042
_0801d390:
	lsl		r0, r0, #0x2
	ldr		r1, _0801d3a4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x1D39A, 0x2

_0801d39c:	.4byte 0x030031A0
_0801d3a0:	.4byte 0x000007FB
_0801d3a4:	.4byte 0x0801d3a8
_0801d3a8:	.4byte 0x0801d3dc

.incbin "base.gba", 0x1D3AC, 0x30
	thumb_func_end sub_0801d360


.incbin "base.gba", 0x1D3DC, 0xC66
	non_word_aligned_thumb_func_start sub_0801e042
sub_0801e042:
	mov		r6, r9
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x3
	ble		_0801e118
	ldr		r0, _0801e15c
	ldr		r0, [r0, #0x10]
	ldr		r2, _0801e160
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0801e05a
	add		r0, #0x3f
_0801e05a:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0801e164
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r10, r0
	mov		r7, #0x0
	str		r7, [sp, #0x4c]
	mov		r0, #0x1f
	mov		r8, r0
	mov		r7, #0x1f
	ldr		r1, _0801e168
	add		r1, #0x40
	str		r1, [sp, #0x60]
_0801e08a:
	ldr		r2, [sp, #0x4c]
	lsl		r2, r2, #0x1
	str		r2, [sp, #0x70]
	ldr		r3, _0801e168
	add		r0, r2, r3
	ldrh	r4, [r0, #0x0]
	add		r5, r4, #0x0
	and		r5, r7
	lsr		r6, r4, #0x5
	mov		r0, r8
	and		r6, r0
	lsr		r4, r4, #0xa
	and		r4, r0
	ldr		r2, [sp, #0x60]
	ldrh	r1, [r2, #0x0]
	add		r0, r1, #0x0
	and		r0, r7
	lsr		r2, r1, #0x5
	mov		r3, r8
	and		r2, r3
	lsr		r1, r1, #0xa
	and		r1, r3
	sub		r0, r0, r5
	mov		r3, r10
	mul		r3, r0
	add		r0, r3, #0x0
	asr		r0, r0, #0xf
	add		r5, r5, r0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	sub		r2, r2, r6
	mov		r0, r10
	mul		r0, r2
	asr		r0, r0, #0xf
	add		r6, r6, r0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	sub		r1, r1, r4
	mov		r0, r10
	mul		r0, r1
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r1, [sp, #0x70]
	add		r3, r1, r0
	mov		r2, #0xe0
	lsl		r2, r2, #0x1
	add		r3, r3, r2
	and		r5, r7
	and		r6, r7
	lsl		r6, r6, #0x5
	orr		r5, r6
	and		r4, r7
	lsl		r4, r4, #0xa
	orr		r5, r4
	strh	r5, [r3, #0x0]
	ldr		r3, [sp, #0x60]
	add		r3, #0x2
	str		r3, [sp, #0x60]
	ldr		r4, [sp, #0x4c]
	add		r4, #0x1
	str		r4, [sp, #0x4c]
	cmp		r4, #0xf
	ble		_0801e08a
	mov		r0, #0x1
	bl		sub_08028168
_0801e118:
	mov		r6, r9
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x2
	ble		_0801e13c
	ldr		r7, [sp, #0x4]
	cmp		r7, #0x0
	beq		_0801e13c
	mov		r4, r9
	add		r4, #0x10
	add		r5, r7, #0x0
_0801e12c:
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_0800e9c0
	add		r4, #0x14
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0801e12c
_0801e13c:
	ldr		r0, [sp, #0x8]
	cmp		r0, #0x0
	beq		_0801e148
	mov		r0, #0x1
	bl		sub_080281fc
_0801e148:
	add		sp, #0x74
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1E158, 0x4

.align 2, 0
_0801e15c:	.4byte 0x030031A0
_0801e160:	.4byte 0x08101068
_0801e164:	.4byte 0x000003FF
_0801e168:	.4byte 0x080c6a0c
	thumb_func_end sub_0801e042

	thumb_func_start sub_0801e16c
sub_0801e16c:
	push	{ r4, r5, r6, r7, lr }
	ldr		r1, _0801e188
	ldr		r2, _0801e18c
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	beq		_0801e194
	ldr		r1, _0801e190
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	b		_0801e1d2

_0801e188:	.4byte 0x030031A0
_0801e18c:	.4byte 0x00000838
_0801e190:	.4byte 0x03002FF4

_0801e194:
	ldr		r4, _0801e1d8
	ldr		r2, _0801e1dc
	add		r0, r1, r2
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	mov		r1, #0x1
	bl		sub_080271b8
	str		r0, [r4, #0x0]
	mov		r2, #0x0
	mov		r12, r4
	mov		r5, #0x0
	mov		r4, #0x0
	ldr		r3, _0801e1e0
	mov		r7, #0x0
	ldr		r6, _0801e1e4
_0801e1b4:
	mov		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r1, r2, #0x4
	add		r1, r1, r0
	ldrh	r0, [r3, #0x0]
	str		r0, [r1, #0x0]
	str		r7, [r1, #0x4]
	str		r4, [r1, #0x8]
	str		r5, [r1, #0xc]
	add		r5, r5, r6
	sub		r4, #0x14
	add		r3, #0x4
	add		r2, #0x1
	cmp		r2, #0x1f
	ble		_0801e1b4
_0801e1d2:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0801e1d8:	.4byte 0x03002FF4
_0801e1dc:	.4byte 0x00000704
_0801e1e0:	.4byte 0x080f61d8
_0801e1e4:	.4byte 0x0000020F
	thumb_func_end sub_0801e16c

	thumb_func_start sub_0801e1e8
sub_0801e1e8:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	ldr		r0, _0801e2a0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0801e298
	mov		r6, #0x0
_0801e1f6:
	ldr		r0, _0801e2a0
	lsl		r1, r6, #0x4
	ldr		r0, [r0, #0x0]
	add		r4, r0, r1
	ldr		r0, [r4, #0xc]
	add		r0, #0x1
	str		r0, [r4, #0xc]
	ldr		r0, [r4, #0x8]
	add		r0, #0x1
	str		r0, [r4, #0x8]
	cmp		r0, #0x14
	bne		_0801e212
	mov		r0, #0x0
	str		r0, [r4, #0x8]
_0801e212:
	ldr		r0, [r4, #0x8]
	cmp		r0, #0x0
	blt		_0801e292
	ldr		r0, [r4, #0xc]
	ldr		r1, _0801e2a4
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0801e226
	add		r0, #0x3f
_0801e226:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0801e238
	ldr		r1, _0801e2a8
	add		r0, r0, r1
_0801e238:
	asr		r1, r0, #0xd
	ldr		r0, [r4, #0x0]
	asr		r0, r0, #0x8
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _0801e2ac
	ldr		r1, [sp, #0x8]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x8]
	ldr		r0, [r4, #0x4]
	lsl		r0, r0, #0x8
	lsr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	ldr		r2, _0801e2b0
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x8]
	ldr		r1, _0801e2b4
	ldr		r0, [r4, #0x8]
	asr		r0, r0, #0x2
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r1, [r4, #0x4]
	add		r1, #0x40
	str		r1, [r4, #0x4]
	ldr		r0, _0801e2b8
	cmp		r1, r0
	ble		_0801e292
	ldr		r0, _0801e2bc
	lsl		r1, r6, #0x2
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	str		r0, [r4, #0x0]
	str		r5, [r4, #0x4]
_0801e292:
	add		r6, #0x1
	cmp		r6, #0x1f
	ble		_0801e1f6
_0801e298:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0801e2a0:	.4byte 0x03002FF4
_0801e2a4:	.4byte 0x08101068
_0801e2a8:	.4byte 0x00001FFF
_0801e2ac:	.4byte 0xffff0000
_0801e2b0:	.4byte 0x0000FFFF
_0801e2b4:	.4byte 0x080f61c4
_0801e2b8:	.4byte 0x00009FFF
_0801e2bc:	.4byte 0x080f61d8
	thumb_func_end sub_0801e1e8

	thumb_func_start sub_0801e2c0
sub_0801e2c0:
	push	{ r4, lr }
	ldr		r4, _0801e30c
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	mov		r4, #0x0
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_0801e2f2
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_0801e2f4
_0801e2f2:
	mov		r4, #0x1
_0801e2f4:
	cmp		r4, #0x0
	beq		_0801e318
	bl		sub_08029f34
	ldr		r1, _0801e310
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _0801e314
	bl		sub_08029ee4
	b		_0801e336

.incbin "base.gba", 0x1E30A, 0x2

_0801e30c:	.4byte 0x080c69c0
_0801e310:	.4byte 0x080c6b0c
_0801e314:	.4byte 0x80000400

_0801e318:
	bl		sub_08029f34
	ldr		r1, _0801e360
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _0801e364
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0801e368
	ldr		r2, _0801e36c
	ldr		r3, _0801e370
	bl		sub_08029ee4
_0801e336:
	ldr		r0, _0801e374
	ldr		r1, _0801e378
	bl		sub_08071b7c
	bl		sub_08029f34
	ldr		r1, _0801e37c
	ldr		r2, _0801e380
	ldr		r3, _0801e384
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0801e388
	ldr		r2, _0801e38c
	ldr		r3, _0801e390
	bl		sub_08029ee4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0801e360:	.4byte 0x080c6b0c
_0801e364:	.4byte 0x80000230
_0801e368:	.4byte 0x080c958c
_0801e36c:	.4byte 0x06000080
_0801e370:	.4byte 0x800000E0
_0801e374:	.4byte 0x080ba3bc
_0801e378:	.4byte 0x06000800
_0801e37c:	.4byte 0x080c83cc
_0801e380:	.4byte 0x06001400
_0801e384:	.4byte 0x80000200
_0801e388:	.4byte 0x080c7bcc
_0801e38c:	.4byte 0x06002000
_0801e390:	.4byte 0x80000400
	thumb_func_end sub_0801e2c0

	thumb_func_start sub_0801e394
sub_0801e394:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r7, r0, #0x0
	ldr		r0, _0801e3d0
	ldr		r1, _0801e3d4
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x0]
	mov		r4, #0x0
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_0801e3be
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_0801e3c0
_0801e3be:
	mov		r4, #0x1
_0801e3c0:
	cmp		r4, #0x0
	beq		_0801e3dc
	ldr		r0, _0801e3d8
	add		r1, r7, #0x0
	bl		sub_08071b80
	b		_0801e3e4

.incbin "base.gba", 0x1E3CE, 0x2

_0801e3d0:	.4byte 0x030031A0
_0801e3d4:	.4byte 0x000007FB
_0801e3d8:	.4byte 0x080ba908

_0801e3dc:
	ldr		r0, _0801e3f0
	add		r1, r7, #0x0
	bl		sub_08071b80
_0801e3e4:
	ldr		r2, [sp, #0x0]
	cmp		r2, #0x3
	beq		_0801e3f4
	cmp		r2, #0x4
	beq		_0801e408
	b		_0801e424

_0801e3f0:	.4byte 0x080babec

_0801e3f4:
	cmp		r4, #0x0
	beq		_0801e400
	ldr		r0, _0801e3fc
	b		_0801e40e

_0801e3fc:	.4byte 0x080bae64

_0801e400:
	ldr		r0, _0801e404
	b		_0801e40e

_0801e404:	.4byte 0x080bb0e4

_0801e408:
	cmp		r4, #0x0
	beq		_0801e41c
	ldr		r0, _0801e418
_0801e40e:
	add		r1, r7, #0x0
	bl		sub_08071b80
	b		_0801e424

.incbin "base.gba", 0x1E416, 0x2

_0801e418:	.4byte 0x080bb2f8

_0801e41c:
	ldr		r0, _0801e540
	add		r1, r7, #0x0
	bl		sub_08071b80
_0801e424:
	mov		r2, #0x0
	ldr		r3, [sp, #0x0]
	cmp		r2, r3
	bge		_0801e4ac
	ldr		r6, _0801e544
	ldr		r5, _0801e548
	add		r6, r5, r6
	str		r6, [sp, #0x4]
	ldr		r1, _0801e54c
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x8]
	add		r0, r3, #0x0
	sub		r0, #0x2
	lsl		r0, r0, #0x4
	mov		r9, r0
_0801e444:
	lsl		r1, r2, #0x2
	ldr		r3, [sp, #0x4]
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	add		r5, r2, #0x1
	mov		r10, r5
	ldr		r6, [sp, #0x8]
	cmp		r6, r0
	bne		_0801e4a4
	mov		r3, r9
	add		r0, r1, r3
	ldr		r5, _0801e550
	add		r0, r0, r5
	mov		r6, #0x0
	ldrsh	r1, [r0, r6]
	lsl		r0, r2, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r9
	add		r0, r0, r5
	mov		r2, #0x0
	ldrsh	r6, [r0, r2]
	mov		r2, #0x0
	ldr		r3, _0801e554
	mov		r8, r3
	lsl		r5, r1, #0x1
	mov		r0, #0xe0
	lsl		r0, r0, #0x8
	mov		r12, r0
_0801e47e:
	add		r0, r6, r2
	add		r4, r2, #0x1
	lsl		r0, r0, #0x6
	add		r0, r5, r0
	add		r2, r0, r7
	mov		r3, #0x2
_0801e48a:
	ldrh	r1, [r2, #0x0]
	mov		r0, r8
	and		r0, r1
	mov		r1, r12
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0801e48a
	add		r2, r4, #0x0
	cmp		r2, #0x1
	ble		_0801e47e
_0801e4a4:
	mov		r2, r10
	ldr		r3, [sp, #0x0]
	cmp		r2, r3
	blt		_0801e444
_0801e4ac:
	mov		r3, #0x0
	ldr		r5, [sp, #0x0]
	cmp		r3, r5
	bge		_0801e594
	ldr		r6, _0801e558
	mov		r10, r6
	add		r0, r5, #0x0
	sub		r0, #0x2
	lsl		r0, r0, #0x4
	mov		r9, r0
	ldr		r1, _0801e544
	ldr		r0, _0801e548
	add		r1, r0, r1
	str		r1, [sp, #0xc]
_0801e4c8:
	lsl		r2, r3, #0x2
	ldr		r5, [sp, #0xc]
	add		r0, r5, r2
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r4, r0, #0x1
	ldr		r6, _0801e548
	ldr		r5, _0801e54c
	add		r0, r6, r5
	ldr		r0, [r0, #0x0]
	mov		r6, #0xf0
	lsl		r6, r6, #0x8
	mov		r12, r6
	cmp		r0, r1
	bne		_0801e4f0
	mov		r0, #0xe0
	lsl		r0, r0, #0x8
	mov		r12, r0
_0801e4f0:
	mov		r1, r9
	add		r0, r2, r1
	add		r0, r10
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	lsl		r0, r3, #0x1
	add		r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r9
	add		r0, r10
	mov		r6, #0x0
	ldrsh	r5, [r0, r6]
	cmp		r4, #0x0
	bne		_0801e55c
	mov		r2, #0x0
	add		r3, #0x1
	mov		r8, r3
	lsl		r6, r1, #0x1
_0801e514:
	add		r0, r5, r2
	lsl		r1, r2, #0x2
	add		r4, r2, #0x1
	add		r2, r1, #0x0
	add		r2, #0x7c
	lsl		r0, r0, #0x6
	add		r0, r6, r0
	add		r1, r0, r7
	mov		r3, #0x3
_0801e526:
	mov		r0, r12
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0801e526
	add		r2, r4, #0x0
	cmp		r2, #0x1
	ble		_0801e514
	b		_0801e58c

.incbin "base.gba", 0x1E53E, 0x2

_0801e540:	.4byte 0x080bb5ac
_0801e544:	.4byte 0x000007F4
_0801e548:	.4byte 0x030031C4
_0801e54c:	.4byte 0x00000814
_0801e550:	.4byte 0x080f62a8
_0801e554:	.4byte 0x00000FFF
_0801e558:	.4byte 0x080f62d8

_0801e55c:
	mov		r2, #0x0
	add		r3, #0x1
	mov		r8, r3
	lsl		r6, r1, #0x1
_0801e564:
	add		r0, r5, r2
	lsl		r1, r2, #0x2
	add		r4, r2, #0x1
	add		r2, r1, #0x0
	add		r2, #0x84
	lsl		r0, r0, #0x6
	add		r0, r6, r0
	add		r1, r0, r7
	mov		r3, #0x3
_0801e576:
	mov		r0, r12
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0801e576
	add		r2, r4, #0x0
	cmp		r2, #0x1
	ble		_0801e564
_0801e58c:
	mov		r3, r8
	ldr		r0, [sp, #0x0]
	cmp		r3, r0
	blt		_0801e4c8
_0801e594:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0801e394

	thumb_func_start sub_0801e5a4
sub_0801e5a4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	str		r0, [sp, #0x0]
	ldr		r2, _0801e6dc
	ldr		r1, _0801e6e0
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	mov		r10, r0
	mov		r3, #0x0
	mov		r9, r3
	cmp		r9, r10
	bge		_0801e676
	ldr		r0, _0801e6e4
	mov		r1, r10
	sub		r1, #0x2
	lsl		r1, r1, #0x4
	add		r1, r1, r0
	mov		r8, r1
	ldr		r1, _0801e6e8
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x4]
_0801e5d8:
	mov		r2, r9
	lsl		r0, r2, #0x2
	ldr		r3, _0801e6ec
	ldr		r2, _0801e6f0
	add		r1, r3, r2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	mov		r7, #0xf0
	lsl		r7, r7, #0x8
	ldr		r3, [sp, #0x4]
	cmp		r3, r0
	bne		_0801e5f4
	mov		r7, #0xe0
	lsl		r7, r7, #0x8
_0801e5f4:
	mov		r1, r8
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	mov		r3, #0x2
	ldrsh	r4, [r1, r3]
	ldr		r5, _0801e6f4
	add		r5, r9
	lsl		r4, r4, #0x5
	add		r4, r4, r0
	lsl		r4, r4, #0x1
	ldr		r0, [sp, #0x0]
	add		r4, r4, r0
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	orr		r0, r7
	strh	r0, [r4, #0x0]
	add		r6, r4, #0x0
	add		r6, #0x40
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r2, #0x90
	lsl		r2, r2, #0x1
	add		r0, r0, r2
	orr		r0, r7
	strh	r0, [r6, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r0, r0, r3
	orr		r0, r7
	strh	r0, [r4, #0x2]
	add		r4, #0x42
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x90
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	orr		r7, r0
	strh	r7, [r4, #0x0]
	mov		r2, #0x4
	add		r8, r2
	mov		r3, #0x1
	add		r9, r3
	cmp		r9, r10
	blt		_0801e5d8
_0801e676:
	ldr		r6, [sp, #0x0]
	add		r6, #0xb8
	ldr		r0, _0801e6f8
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	mov		r1, #0xa
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r4, r1, #0x0
	add		r1, r0, r4
	ldr		r2, _0801e6fc
	add		r5, r2, #0x0
	orr		r1, r5
	strh	r1, [r6, #0x0]
	ldr		r1, [sp, #0x0]
	add		r1, #0xf8
	mov		r3, #0x90
	lsl		r3, r3, #0x1
	add		r6, r3, #0x0
	add		r0, r0, r6
	orr		r0, r5
	strh	r0, [r1, #0x0]
	ldr		r7, [sp, #0x0]
	add		r7, #0xba
	mov		r0, r8
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r4, r0, r4
	orr		r4, r5
	strh	r4, [r7, #0x0]
	ldr		r1, [sp, #0x0]
	add		r1, #0xfa
	add		r0, r0, r6
	orr		r0, r5
	strh	r0, [r1, #0x0]
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1E6DA, 0x2

_0801e6dc:	.4byte 0x030031A0
_0801e6e0:	.4byte 0x000007FB
_0801e6e4:	.4byte 0x080f6278
_0801e6e8:	.4byte 0x00000838
_0801e6ec:	.4byte 0x030031C4
_0801e6f0:	.4byte 0x000007F4
_0801e6f4:	.4byte 0x03002FD8
_0801e6f8:	.4byte 0x03002D40
_0801e6fc:	.4byte 0xFFFFF000
	thumb_func_end sub_0801e5a4

	thumb_func_start sub_0801e700
sub_0801e700:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x60
	bl		sub_0800ec30
	mov		r8, r0
	ldr		r0, _0801e73c
	add		r2, r0, #0x0
	add		r2, #0x24
	ldr		r1, _0801e740
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	mov		r3, #0x0
	str		r3, [sp, #0x8]
	mov		r6, r8
	ldr		r0, [r6, #0x0]
	cmp		r0, #0xd
	bls		_0801e730
	bl		sub_0801f434
_0801e730:
	lsl		r0, r0, #0x2
	ldr		r1, _0801e744
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x1E73A, 0x2

_0801e73c:	.4byte 0x030031A0
_0801e740:	.4byte 0x000007FB
_0801e744:	.4byte 0x0801e748
_0801e748:	.4byte 0x0801e780

.incbin "base.gba", 0x1E74C, 0x34
	thumb_func_end sub_0801e700


.incbin "base.gba", 0x1E780, 0xCB4
	thumb_func_start sub_0801f434
sub_0801f434:
	mov		r7, r8
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x4
	ble		_0801f50a
	ldr		r0, _0801f558
	ldr		r0, [r0, #0x10]
	ldr		r2, _0801f55c
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0801f44c
	add		r0, #0x3f
_0801f44c:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0801f560
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r10, r0
	mov		r0, #0x0
	str		r0, [sp, #0x40]
	mov		r1, #0x1f
	mov		r9, r1
	mov		r7, #0x1f
	ldr		r2, _0801f564
	add		r2, #0x40
	str		r2, [sp, #0x4c]
_0801f47c:
	ldr		r3, [sp, #0x40]
	lsl		r3, r3, #0x1
	str		r3, [sp, #0x5c]
	ldr		r6, _0801f564
	add		r0, r3, r6
	ldrh	r4, [r0, #0x0]
	add		r5, r4, #0x0
	and		r5, r7
	lsr		r6, r4, #0x5
	mov		r0, r9
	and		r6, r0
	lsr		r4, r4, #0xa
	and		r4, r0
	ldr		r2, [sp, #0x4c]
	ldrh	r1, [r2, #0x0]
	add		r0, r1, #0x0
	and		r0, r7
	lsr		r2, r1, #0x5
	mov		r3, r9
	and		r2, r3
	lsr		r1, r1, #0xa
	and		r1, r3
	sub		r0, r0, r5
	mov		r3, r10
	mul		r3, r0
	add		r0, r3, #0x0
	asr		r0, r0, #0xf
	add		r5, r5, r0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	sub		r2, r2, r6
	mov		r0, r10
	mul		r0, r2
	asr		r0, r0, #0xf
	add		r6, r6, r0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	sub		r1, r1, r4
	mov		r0, r10
	mul		r0, r1
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r1, [sp, #0x5c]
	add		r3, r1, r0
	mov		r2, #0xe0
	lsl		r2, r2, #0x1
	add		r3, r3, r2
	and		r5, r7
	and		r6, r7
	lsl		r6, r6, #0x5
	orr		r5, r6
	and		r4, r7
	lsl		r4, r4, #0xa
	orr		r5, r4
	strh	r5, [r3, #0x0]
	ldr		r3, [sp, #0x4c]
	add		r3, #0x2
	str		r3, [sp, #0x4c]
	ldr		r6, [sp, #0x40]
	add		r6, #0x1
	str		r6, [sp, #0x40]
	cmp		r6, #0xf
	ble		_0801f47c
	mov		r0, #0x1
	bl		sub_08028168
_0801f50a:
	bl		sub_0801e1e8
	mov		r7, r8
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x3
	ble		_0801f532
	ldr		r0, [sp, #0x4]
	cmp		r0, #0x0
	beq		_0801f532
	mov		r4, r8
	add		r4, #0x10
	add		r5, r0, #0x0
_0801f522:
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_0800e9c0
	add		r4, #0x14
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0801f522
_0801f532:
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x0
	beq		_0801f53e
	mov		r0, #0x1
	bl		sub_080281fc
_0801f53e:
	add		sp, #0x60
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1F54E, 0xA

_0801f558:	.4byte 0x030031A0
_0801f55c:	.4byte 0x08101068
_0801f560:	.4byte 0x000003FF
_0801f564:	.4byte 0x080c6a0c
	thumb_func_end sub_0801f434

	thumb_func_start sub_0801f568
sub_0801f568:
	push	{ lr }
	ldr		r1, _0801f57c
	ldr		r2, _0801f580
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0801f584
	bl		sub_0801f5e8
	b		_0801f5e2

_0801f57c:	.4byte 0x030031A0
_0801f580:	.4byte 0x00000CAC

_0801f584:
	ldr		r2, _0801f5a8
	add		r0, r1, r2
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_0801f5d2
	cmp		r1, r0
	bgt		_0801f5ac
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0801f5be
	b		_0801f5e2

.incbin "base.gba", 0x1F5A6, 0x2

_0801f5a8:	.4byte 0x000007FE

_0801f5ac:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0801f5d8
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_0801f5de
	b		_0801f5e2
_0801f5be:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	bne		_0801f5cc
	bl		sub_080180d4
	b		_0801f5e2
_0801f5cc:
	bl		sub_0801ab48
	b		_0801f5e2
_0801f5d2:
	bl		sub_0801bfe4
	b		_0801f5e2
_0801f5d8:
	bl		sub_0801d360
	b		_0801f5e2
_0801f5de:
	bl		sub_0801e700
_0801f5e2:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x1F5E6, 0x2
	thumb_func_end sub_0801f568

	thumb_func_start sub_0801f5e8
sub_0801f5e8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	bl		sub_0800ec40
	add		r6, r0, #0x0
	ldr		r0, _0801f618
	add		r0, #0x24
	mov		r8, r0
	ldr		r0, [r6, #0xc]
	add		r0, #0x1
	str		r0, [r6, #0xc]
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x6
	bls		_0801f60e
	b		_0801f94a
_0801f60e:
	lsl		r0, r0, #0x2
	ldr		r1, _0801f61c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0801f618:	.4byte 0x030031A0
_0801f61c:	.4byte 0x0801f620
_0801f620:	.4byte 0x0801f63c

.incbin "base.gba", 0x1F624, 0x18
	thumb_func_end sub_0801f5e8


.incbin "base.gba", 0x1F63C, 0x30E

_0801f94a:

.incbin "base.gba", 0x1F94A, 0xC
_0801f956:

.incbin "base.gba", 0x1F956, 0xC02
	thumb_func_start sub_08020558
sub_08020558:
	push	{ r4, r5, r6, lr }
	ldr		r0, _080205bc
	ldr		r0, [r0, #0x0]
	add		r5, r0, #0x0
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	add		r0, #0x18
	add		r4, r5, r0
	ldr		r0, _080205c0
	str		r0, [r1, #0x0]
	mov		r6, #0x0
	mov		r0, #0x70
	strh	r0, [r1, #0x4]
	mov		r0, #0x34
	strh	r0, [r1, #0x6]
	add		r0, #0xcc
	strh	r0, [r1, #0xa]
	strh	r0, [r1, #0x8]
	strh	r6, [r1, #0xc]
	strh	r6, [r1, #0x10]
	ldr		r0, _080205c4
	ldr		r0, [r0, #0x0]
	bl		sub_0800ebfc
	strb	r0, [r4, #0x0]
	ldr		r0, _080205c8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2
	cmp		r0, #0x2
	bgt		_08020598
	mov		r1, #0x1
_08020598:
	strb	r1, [r4, #0x1]
	mov		r0, #0x1
	strh	r0, [r4, #0x2]
	strh	r6, [r4, #0x6]
	bl		sub_08028130
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	str		r0, [r4, #0xc]
	mov		r1, #0xba
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r4, #0x10]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_080205bc:	.4byte 0x0203EBCC
_080205c0:	.4byte 0x080e4bd0
_080205c4:	.4byte 0x0203EBBC
_080205c8:	.4byte 0x0203EBB8
	thumb_func_end sub_08020558

	thumb_func_start sub_080205cc
sub_080205cc:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	ldr		r0, _0802067c
	ldr		r0, [r0, #0x0]
	add		r6, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	ldr		r0, [r4, #0x8]
	cmp		r0, #0x0
	beq		_08020614
	ldrh	r2, [r4, #0x4]
	ldr		r1, _08020680
	ldr		r0, [sp, #0x8]
	and		r0, r1
	orr		r0, r2
	str		r0, [sp, #0x8]
	ldrh	r1, [r4, #0x6]
	lsl		r1, r1, #0x10
	ldr		r2, _08020684
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r0, [r4, #0x0]
	mov		r1, #0x8
	ldrsh	r2, [r4, r1]
	mov		r5, #0xa
	ldrsh	r3, [r4, r5]
	mov		r5, #0xc
	ldrsh	r1, [r4, r5]
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	bl		sub_0802951c
_08020614:
	mov		r0, #0xec
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x6
	ble		_08020672
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	ldr		r1, _08020688
	add		r5, r6, r1
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r5, #0x0]
	ldr		r1, _0802068c
	mov		r0, #0x0
	ldrsb	r0, [r5, r0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0xb9
	lsl		r1, r1, #0x3
	add		r4, r6, r1
	ldr		r1, [r4, #0x0]
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r1, [r4, #0x0]
	ldr		r2, _08020690
	ldr		r3, _08020694
	bl		sub_08029ee4
	mov		r0, #0x0
	ldrsb	r0, [r5, r0]
	cmp		r0, #0x3
	beq		_0802066c
	cmp		r0, #0x7
	bne		_08020672
_0802066c:
	mov		r0, #0x78
	bl		sub_0807073c
_08020672:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2067A, 0x2

_0802067c:	.4byte 0x0203EBCC
_08020680:	.4byte 0xffff0000
_08020684:	.4byte 0x0000FFFF
_08020688:	.4byte 0x000001D9
_0802068c:	.4byte 0x080f6598
_08020690:	.4byte 0x06015800
_08020694:	.4byte 0x80000400
	thumb_func_end sub_080205cc

	thumb_func_start sub_08020698
sub_08020698:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _080207ac
	ldr		r0, [r0, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	add		r4, r0, r1
	ldrh	r0, [r4, #0x10]
	add		r0, #0x1
	strh	r0, [r4, #0x10]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xc8
	ble		_080206b8
	b		_080207b8
_080206b8:
	mov		r1, #0x10
	ldrsh	r0, [r4, r1]
	lsl		r0, r0, #0xf
	mov		r1, #0xc8
	bl		sub_0807d80c
	ldr		r1, _080207b0
	mov		r8, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080206d2
	add		r0, #0x3f
_080206d2:
	asr		r0, r0, #0x6
	mov		r7, #0x80
	lsl		r7, r7, #0x1
	sub		r0, r7, r0
	ldr		r6, _080207b4
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r1, [r0, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	sub		r1, r5, r1
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r1, r0, #0x5
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	neg		r0, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	mov		r1, #0x8c
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	strh	r0, [r4, #0x4]
	mov		r1, #0x10
	ldrsh	r0, [r4, r1]
	lsl		r0, r0, #0xf
	mov		r1, #0x64
	bl		sub_0807d80c
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802071a
	add		r0, #0x3f
_0802071a:
	asr		r0, r0, #0x6
	sub		r0, r7, r0
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r1, [r0, #0x0]
	sub		r1, r5, r1
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	neg		r0, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	add		r0, #0x46
	strh	r0, [r4, #0x6]
	mov		r1, #0x10
	ldrsh	r0, [r4, r1]
	lsl		r0, r0, #0xf
	mov		r1, #0x64
	bl		sub_0807d80c
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08020754
	add		r0, #0x3f
_08020754:
	asr		r0, r0, #0x6
	sub		r0, r7, r0
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	sub		r0, r5, r0
	lsl		r0, r0, #0x4
	neg		r0, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	add		r0, #0xb0
	strh	r0, [r4, #0xa]
	strh	r0, [r4, #0x8]
	mov		r1, #0x10
	ldrsh	r0, [r4, r1]
	lsl		r0, r0, #0xf
	mov		r1, #0xc8
	bl		sub_0807d80c
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08020788
	add		r0, #0x3f
_08020788:
	asr		r0, r0, #0x6
	sub		r0, r7, r0
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	sub		r0, r5, r0
	lsl		r0, r0, #0xd
	neg		r0, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	add		r0, r0, r1
	strh	r0, [r4, #0xc]
	mov		r0, #0x0
	b		_080207be

_080207ac:	.4byte 0x0203EBCC
_080207b0:	.4byte 0x08101068
_080207b4:	.4byte 0x000003FF

_080207b8:
	mov		r0, #0x0
	strh	r0, [r4, #0x10]
	mov		r0, #0x1
_080207be:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08020698

	thumb_func_start sub_080207c8
sub_080207c8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _08020978
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	mov		r6, #0xee
	lsl		r6, r6, #0x1
	add		r6, r10
	ldr		r7, _0802097c
	ldr		r0, _08020980
	mov		r9, r0
	ldr		r1, _08020984
	mov		r8, r1
	mov		r4, #0x92
	lsl		r4, r4, #0x2
	add		r4, r10
	mov		r5, #0x1f
_080207f2:
	mov		r0, #0x19
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	bne		_080208ba
	mov		r2, #0x4
	ldrsh	r0, [r6, r2]
	str		r0, [r4, #0x0]
	mov		r3, #0x6
	ldrsh	r0, [r6, r3]
	str		r0, [r4, #0x4]
	ldr		r0, [r7, #0x0]
	mov		r1, r9
	mul		r1, r0
	add		r0, r1, #0x0
	ldr		r2, _08020988
	add		r0, r0, r2
	str		r0, [r7, #0x0]
	lsr		r0, r0, #0x10
	mov		r3, r8
	and		r0, r3
	ldr		r1, _0802098c
	bl		sub_0807d8d8
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, #0x4
	ldrsh	r1, [r6, r2]
	add		r1, #0x96
	sub		r1, r1, r0
	str		r1, [r4, #0xc]
	ldr		r0, [r7, #0x0]
	mov		r3, r9
	mul		r3, r0
	add		r0, r3, #0x0
	ldr		r1, _08020988
	add		r0, r0, r1
	str		r0, [r7, #0x0]
	lsr		r0, r0, #0x10
	mov		r2, r8
	and		r0, r2
	mov		r1, #0x65
	bl		sub_0807d8d8
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r3, #0x6
	ldrsh	r1, [r6, r3]
	add		r1, #0x64
	add		r1, r1, r0
	ldr		r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	str		r0, [r4, #0x0]
	ldr		r0, [r4, #0x4]
	lsl		r0, r0, #0x10
	str		r0, [r4, #0x4]
	ldr		r0, [r4, #0xc]
	lsl		r0, r0, #0x10
	str		r0, [r4, #0xc]
	lsl		r1, r1, #0x10
	str		r1, [r4, #0x10]
	ldr		r0, [r7, #0x0]
	mov		r1, r9
	mul		r1, r0
	add		r0, r1, #0x0
	ldr		r2, _08020988
	add		r0, r0, r2
	str		r0, [r7, #0x0]
	lsr		r0, r0, #0x10
	mov		r3, r8
	and		r0, r3
	mov		r1, #0x21
	bl		sub_0807d8d8
	add		r0, #0x40
	strb	r0, [r4, #0x18]
	ldr		r0, [r4, #0xc]
	ldr		r1, [r4, #0x0]
	sub		r0, r0, r1
	mov		r1, #0x18
	ldrsb	r1, [r4, r1]
	bl		sub_0807d80c
	str		r0, [r4, #0x8]
	ldr		r2, [r4, #0x10]
	ldr		r0, [r4, #0x4]
	sub		r2, r2, r0
	mov		r1, #0x18
	ldrsb	r1, [r4, r1]
	ldr		r3, _08020990
	add		r0, r3, #0x0
	mul		r0, r1
	mul		r0, r1
	lsl		r2, r2, #0x1
	add		r0, r0, r2
	lsl		r1, r1, #0x1
	bl		sub_0807d80c
	str		r0, [r4, #0x14]
	mov		r0, #0x1
	strb	r0, [r4, #0x19]
_080208ba:
	ldr		r0, [r4, #0x0]
	ldr		r1, [r4, #0x8]
	add		r0, r0, r1
	str		r0, [r4, #0x0]
	ldr		r0, [r4, #0x4]
	ldr		r1, [r4, #0x14]
	add		r0, r0, r1
	str		r0, [r4, #0x4]
	ldr		r0, _08020990
	sub		r1, r1, r0
	str		r1, [r4, #0x14]
	ldrb	r0, [r4, #0x18]
	sub		r0, #0x1
	mov		r1, #0x0
	strb	r0, [r4, #0x18]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_080208e8
	ldr		r0, [r4, #0xc]
	str		r0, [r4, #0x0]
	ldr		r0, [r4, #0x10]
	str		r0, [r4, #0x4]
	strb	r1, [r4, #0x19]
_080208e8:
	add		r4, #0x1c
	sub		r5, #0x1
	cmp		r5, #0x0
	blt		_080208f2
	b		_080207f2
_080208f2:
	ldr		r2, _08020994
	ldr		r1, _08020998
	mov		r5, #0x3
_080208f8:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_080208f8
	ldr		r2, _08020998
	ldrh	r1, [r2, #0x6]
	ldr		r0, _0802099c
	and		r0, r1
	mov		r3, #0x80
	lsl		r3, r3, #0x3
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x6]
	mov		r4, #0x92
	lsl		r4, r4, #0x2
	add		r4, r10
	mov		r5, #0x1f
_08020920:
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0802092a
	ldr		r0, _080209a0
	add		r1, r1, r0
_0802092a:
	lsr		r1, r1, #0x10
	ldr		r0, _080209a4
	ldr		r2, [sp, #0x8]
	and		r2, r0
	orr		r2, r1
	str		r2, [sp, #0x8]
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_08020940
	ldr		r1, _080209a0
	add		r0, r0, r1
_08020940:
	lsr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	ldr		r1, _080209a0
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _08020998
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, #0x1c
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08020920
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x20976, 0x2

_08020978:	.4byte 0x0203EBCC
_0802097c:	.4byte 0x0203EBD4
_08020980:	.4byte 0x41C64E6D
_08020984:	.4byte 0x00007FFF
_08020988:	.4byte 0x00003039
_0802098c:	.4byte 0x0000012D
_08020990:	.4byte 0xFFFFE000
_08020994:	.4byte 0x080e4ba0
_08020998:	.4byte 0x0203EBB0
_0802099c:	.4byte 0x0000F3FF
_080209a0:	.4byte 0x0000FFFF
_080209a4:	.4byte 0xffff0000
	thumb_func_end sub_080207c8

	thumb_func_start sub_080209a8
sub_080209a8:
	push	{ r4, r5, lr }
	ldr		r0, _080209d4
	ldr		r2, [r0, #0x0]
	mov		r0, #0xee
	lsl		r0, r0, #0x1
	add		r1, r2, r0
	ldr		r0, _080209d8
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	strh	r0, [r1, #0xa]
	strh	r0, [r1, #0x8]
	strh	r0, [r1, #0x10]
	ldr		r0, _080209dc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_080209f0
	cmp		r0, #0x1
	bgt		_080209e0
	cmp		r0, #0x0
	beq		_080209e6
	b		_08020a06

.incbin "base.gba", 0x209D2, 0x2

_080209d4:	.4byte 0x0203EBCC
_080209d8:	.4byte 0x080e4bd8
_080209dc:	.4byte 0x0203EBB8

_080209e0:
	cmp		r0, #0x2
	beq		_080209fa
	b		_08020a06
_080209e6:
	mov		r0, #0x78
	strh	r0, [r1, #0x12]
	strh	r0, [r1, #0x4]
	mov		r0, #0x20
	b		_08020a02
_080209f0:
	mov		r0, #0x58
	strh	r0, [r1, #0x12]
	strh	r0, [r1, #0x4]
	mov		r0, #0x28
	b		_08020a02
_080209fa:
	mov		r0, #0x98
	strh	r0, [r1, #0x12]
	strh	r0, [r1, #0x4]
	mov		r0, #0x30
_08020a02:
	strh	r0, [r1, #0x14]
	strh	r0, [r1, #0x6]
_08020a06:
	mov		r3, #0xfa
	lsl		r3, r3, #0x1
	add		r1, r2, r3
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r1, r2, r3
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r1, r2, r3
	strb	r0, [r1, #0x0]
	ldr		r5, _08020a5c
	ldr		r4, [r5, #0x0]
	ldr		r0, _08020a60
	ldr		r1, _08020a64
	add		r4, r4, r1
	ldr		r1, [r4, #0x0]
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r1, [r4, #0x0]
	ldr		r2, _08020a68
	ldr		r3, _08020a6c
	bl		sub_08029ee4
	mov		r3, #0x0
	mov		r2, #0x92
	lsl		r2, r2, #0x2
	mov		r1, #0x1f
_08020a42:
	ldr		r0, [r5, #0x0]
	add		r0, r0, r2
	strb	r3, [r0, #0x19]
	add		r2, #0x1c
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08020a42
	mov		r1, #0x0
	ldr		r0, _08020a70
	str		r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08020a5c:	.4byte 0x0203EBCC
_08020a60:	.4byte 0x080dcb24
_08020a64:	.4byte 0x000005D4
_08020a68:	.4byte 0x06012000
_08020a6c:	.4byte 0x80000010
_08020a70:	.4byte 0x0203EBD4
	thumb_func_end sub_080209a8

	thumb_func_start sub_08020a74
sub_08020a74:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	ldr		r0, _08020b94
	ldr		r6, [r0, #0x0]
	mov		r0, #0xee
	lsl		r0, r0, #0x1
	add		r5, r6, r0
	ldr		r0, [r5, #0x8]
	cmp		r0, #0x0
	beq		_08020ade
	ldrh	r2, [r5, #0x4]
	ldr		r1, _08020b98
	ldr		r0, [sp, #0x8]
	and		r0, r1
	orr		r0, r2
	str		r0, [sp, #0x8]
	ldrh	r1, [r5, #0x6]
	lsl		r1, r1, #0x10
	ldr		r2, _08020b9c
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r0, [r5, #0x0]
	mov		r1, #0x8
	ldrsh	r2, [r5, r1]
	mov		r7, #0xa
	ldrsh	r3, [r5, r7]
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, sp, #0x8
	bl		sub_0802951c
	bl		sub_080207c8
	ldr		r0, _08020ba0
	mov		r1, #0x8
	ldrsh	r2, [r5, r1]
	mov		r7, #0xa
	ldrsh	r3, [r5, r7]
	mov		r7, #0xc
	ldrsh	r1, [r5, r7]
	str		r1, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, sp, #0x8
	bl		sub_0802951c
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	add		r0, r1, #0x0
	ldrh	r7, [r5, #0xc]
	add		r0, r0, r7
	strh	r0, [r5, #0xc]
_08020ade:
	mov		r0, #0xfa
	lsl		r0, r0, #0x1
	add		r3, r6, r0
	ldrb	r0, [r3, #0x0]
	add		r0, #0x1
	mov		r7, #0x0
	strb	r0, [r3, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x8
	ble		_08020b52
	ldr		r1, _08020ba4
	ldr		r5, _08020ba8
	ldr		r0, [r5, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	strb	r7, [r3, #0x0]
	ldr		r1, _08020bac
	add		r3, r6, r1
	ldrb	r0, [r3, #0x0]
	add		r0, #0x1
	mov		r1, #0xf
	and		r0, r1
	strb	r0, [r3, #0x0]
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	ldr		r1, _08020bb0
	add		r4, r6, r1
	ldr		r1, [r4, #0x0]
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r1, [r4, #0x0]
	ldr		r2, _08020bb4
	ldr		r3, _08020bb8
	bl		sub_08029ee4
	ldr		r1, _08020bbc
	ldr		r0, [r5, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
_08020b52:
	mov		r1, #0xfb
	lsl		r1, r1, #0x1
	add		r2, r6, r1
	ldrb	r0, [r2, #0x0]
	add		r0, #0x1
	strb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xb
	bls		_08020b68
	strb	r7, [r2, #0x0]
_08020b68:
	ldr		r1, _08020bc0
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08020b94:	.4byte 0x0203EBCC
_08020b98:	.4byte 0xffff0000
_08020b9c:	.4byte 0x0000FFFF
_08020ba0:	.4byte 0x080e4ba8
_08020ba4:	.4byte 0x080f66e0
_08020ba8:	.4byte 0x0203EBB8
_08020bac:	.4byte 0x000001F5
_08020bb0:	.4byte 0x000005CC
_08020bb4:	.4byte 0x06012200
_08020bb8:	.4byte 0x80000100
_08020bbc:	.4byte 0x080f66f0
_08020bc0:	.4byte 0x080f65f0
	thumb_func_end sub_08020a74

	thumb_func_start sub_08020bc4
sub_08020bc4:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _08020c88
	ldr		r1, [r0, #0x0]
	mov		r0, #0xee
	lsl		r0, r0, #0x1
	add		r2, r1, r0
	ldrh	r0, [r2, #0x10]
	add		r0, #0x1
	strh	r0, [r2, #0x10]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x80
	bgt		_08020c94
	mov		r1, #0x10
	ldrsh	r0, [r2, r1]
	ldr		r6, _08020c8c
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08020bee
	add		r0, #0x3f
_08020bee:
	asr		r0, r0, #0x6
	mov		r5, #0x80
	lsl		r5, r5, #0x1
	sub		r0, r5, r0
	ldr		r4, _08020c90
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r1, [r0, #0x0]
	mov		r3, #0x12
	ldrsh	r0, [r2, r3]
	mov		r7, #0x18
	mov		r12, r7
	mov		r3, r12
	sub		r0, r3, r0
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	sub		r1, r3, r1
	mul		r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	ldrh	r7, [r2, #0x12]
	add		r0, r0, r7
	strh	r0, [r2, #0x4]
	mov		r1, #0x10
	ldrsh	r0, [r2, r1]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08020c2e
	add		r0, #0x3f
_08020c2e:
	asr		r0, r0, #0x6
	sub		r0, r5, r0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r1, [r0, #0x0]
	mov		r7, #0x14
	ldrsh	r0, [r2, r7]
	mov		r7, r12
	sub		r0, r7, r0
	sub		r1, r3, r1
	mul		r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	ldrh	r1, [r2, #0x14]
	add		r0, r0, r1
	strh	r0, [r2, #0x6]
	mov		r7, #0x10
	ldrsh	r0, [r2, r7]
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08020c60
	add		r0, #0x3f
_08020c60:
	asr		r0, r0, #0x6
	sub		r0, r5, r0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r1, [r0, #0x0]
	sub		r1, r3, r1
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x4
	neg		r0, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x10
	add		r0, r0, r5
	strh	r0, [r2, #0xa]
	strh	r0, [r2, #0x8]
	mov		r0, #0x0
	b		_08020c9e

.incbin "base.gba", 0x20C86, 0x2

_08020c88:	.4byte 0x0203EBCC
_08020c8c:	.4byte 0x08101068
_08020c90:	.4byte 0x000003FF

_08020c94:
	mov		r0, #0x1
	str		r0, [r1, #0x4]
	mov		r0, #0x0
	strh	r0, [r2, #0x10]
	mov		r0, #0x1
_08020c9e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08020bc4

	thumb_func_start sub_08020ca4
sub_08020ca4:
	push	{ r4, r5, lr }
	ldr		r5, _08020d1c
	ldr		r4, [r5, #0x0]
	mov		r0, #0xee
	lsl		r0, r0, #0x1
	add		r1, r4, r0
	ldr		r0, _08020d20
	str		r0, [r1, #0x0]
	mov		r2, #0x0
	mov		r3, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0xa]
	strh	r0, [r1, #0x8]
	strh	r3, [r1, #0x10]
	mov		r0, #0x18
	strh	r0, [r1, #0x4]
	strh	r0, [r1, #0x6]
	mov		r1, #0xfa
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	ldr		r4, [r5, #0x0]
	ldr		r0, _08020d24
	ldr		r1, _08020d28
	add		r4, r4, r1
	ldr		r1, [r4, #0x0]
	bl		sub_08071b80
	bl		sub_08029f34
	ldr		r1, [r4, #0x0]
	ldr		r2, _08020d2c
	ldr		r3, _08020d30
	bl		sub_08029ee4
	mov		r3, #0x0
	mov		r2, #0x92
	lsl		r2, r2, #0x2
	mov		r1, #0x1f
_08020d00:
	ldr		r0, [r5, #0x0]
	add		r0, r0, r2
	strb	r3, [r0, #0x19]
	add		r2, #0x1c
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08020d00
	mov		r1, #0x0
	ldr		r0, _08020d34
	str		r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x20D1A, 0x2

_08020d1c:	.4byte 0x0203EBCC
_08020d20:	.4byte 0x080e4bd8
_08020d24:	.4byte 0x080dcb24
_08020d28:	.4byte 0x000005D4
_08020d2c:	.4byte 0x06012000
_08020d30:	.4byte 0x80000010
_08020d34:	.4byte 0x0203EBD4

.incbin "base.gba", 0x20D38, 0x1C98
_080229d0:	.4byte 0x08022a14

.incbin "base.gba", 0x229D4, 0x40
	thumb_func_end sub_08020ca4


.incbin "base.gba", 0x22A14, 0xC4

_08022ad8:

.incbin "base.gba", 0x22AD8, 0x9C

_08022b74:

.incbin "base.gba", 0x22B74, 0x10
_08022b84:

.incbin "base.gba", 0x22B84, 0x10
_08022b94:

.incbin "base.gba", 0x22B94, 0x14
_08022ba8:

.incbin "base.gba", 0x22BA8, 0x458
_08023000:	.4byte 0x030031A0
_08023004:	.4byte 0x00000848
_08023008:	.4byte 0x00000BC8

.incbin "base.gba", 0x2300C, 0x14
	thumb_func_start sub_08023020
sub_08023020:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r8, r0
	str		r1, [sp, #0x0]
	add		r7, r2, #0x0
	mov		r9, r3
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	mov		r10, r0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	mov		r12, r0
	mov		r0, #0x0
	cmp		r0, r9
	bge		_080230a0
_08023052:
	add		r1, r0, #0x1
	str		r1, [sp, #0x4]
	cmp		r7, #0x0
	ble		_0802309a
	ldr		r6, [sp, #0x0]
	add		r0, r6, r0
	ldr		r1, [sp, #0x4+0x28]
	add		r5, r0, r1
	lsl		r2, r5, #0x5
	lsl		r0, r0, #0x5
	add		r0, r8
	ldr		r1, [sp, #0x0+0x28]
	add		r1, r8
	add		r2, r1, r2
	add		r4, r7, #0x0
	lsl		r2, r2, #0x1
	add		r2, r10
	lsl		r0, r0, #0x1
	mov		r6, r12
	add		r3, r0, r6
_0802307a:
	cmp		r1, #0x0
	blt		_0802308e
	cmp		r5, #0x0
	blt		_0802308e
	cmp		r1, #0x1d
	bgt		_0802308e
	cmp		r5, #0x13
	bgt		_0802308e
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
_0802308e:
	add		r3, #0x2
	add		r2, #0x2
	add		r1, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802307a
_0802309a:
	ldr		r0, [sp, #0x4]
	cmp		r0, r9
	blt		_08023052
_080230a0:
	mov		r0, #0x1
	bl		sub_080281fc
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x230B6, 0x1BA
	thumb_func_end sub_08023020

	thumb_func_start sub_08023270
sub_08023270:
	push	{ r4, lr }
	ldr		r0, _080232b0
	ldr		r0, [r0, #0x0]
	mov		r1, #0xee
	lsl		r1, r1, #0x1
	add		r4, r0, r1
	ldrh	r0, [r4, #0x10]
	add		r0, #0x1
	strh	r0, [r4, #0x10]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x20
	bgt		_080232b4
	mov		r1, #0x10
	ldrsh	r0, [r4, r1]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r0, r1, #0x5
	add		r1, r1, r0
	cmp		r1, #0x0
	bge		_0802329c
	add		r1, #0x1f
_0802329c:
	asr		r1, r1, #0x5
	add		r1, #0x1
	mov		r0, #0xc8
	lsl		r0, r0, #0x7
	bl		sub_0807d80c
	strh	r0, [r4, #0xa]
	strh	r0, [r4, #0x8]
	mov		r0, #0x0
	b		_080232ba

_080232b0:	.4byte 0x0203EBCC

_080232b4:
	mov		r0, #0x0
	strh	r0, [r4, #0x10]
	mov		r0, #0x1
_080232ba:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x232C0, 0x270
	thumb_func_end sub_08023270

	thumb_func_start sub_08023530
sub_08023530:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	mov		r10, r1
	str		r2, [sp, #0x0]
	cmp		r3, #0x0
	beq		_080235a0
	mov		r3, #0x0
	mov		r2, #0x0
	ldr		r0, _08023564
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_080235a0
	cmp		r0, #0x1
	ble		_08023568
	cmp		r0, #0x2
	beq		_08023580
	b		_080235a0

.incbin "base.gba", 0x23562, 0x2

_08023564:	.4byte 0x030031A0

_08023568:
	ldr		r0, [sp, #0x0]
	ldr		r1, [r0, #0x4]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08023596
_08023572:
	add		r3, #0x1
	add		r2, #0x2
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08023572
	b		_08023596
_08023580:
	ldr		r0, [sp, #0x0]
	ldr		r1, [r0, #0x8]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08023596
_0802358a:
	add		r3, #0x1
	add		r2, #0x1
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802358a
_08023596:
	mov		r0, #0x1b
	sub		r0, r0, r3
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r7, r0, #0x1
_080235a0:
	ldr		r0, _08023628
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bgt		_08023632
	cmp		r0, #0x0
	blt		_08023632
	ldr		r2, [sp, #0x0]
	ldrb	r4, [r2, #0x0]
	cmp		r4, #0xff
	beq		_08023630
	mov		r0, #0x0
	add		r1, r7, #0x0
	mov		r2, r10
	bl		sub_080281b0
	ldr		r6, _0802362c
	lsl		r1, r4, #0x3
	add		r1, r1, r6
	ldrh	r1, [r1, #0x0]
	mov		r2, #0xd0
	lsl		r2, r2, #0x8
	add		r5, r2, #0x0
	orr		r1, r5
	strh	r1, [r0, #0x0]
	add		r0, r7, #0x1
	mov		r9, r0
	mov		r0, #0x0
	mov		r1, r9
	mov		r2, r10
	bl		sub_080281b0
	lsl		r4, r4, #0x2
	add		r1, r4, #0x1
	lsl		r1, r1, #0x1
	add		r1, r1, r6
	ldrh	r1, [r1, #0x0]
	orr		r1, r5
	strh	r1, [r0, #0x0]
	mov		r1, #0x1
	add		r1, r10
	mov		r8, r1
	mov		r0, #0x0
	add		r1, r7, #0x0
	mov		r2, r8
	bl		sub_080281b0
	add		r1, r4, #0x2
	lsl		r1, r1, #0x1
	add		r1, r1, r6
	ldrh	r1, [r1, #0x0]
	orr		r1, r5
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, r9
	mov		r2, r8
	bl		sub_080281b0
	add		r4, #0x3
	lsl		r4, r4, #0x1
	add		r4, r4, r6
	ldrh	r1, [r4, #0x0]
	orr		r1, r5
	strh	r1, [r0, #0x0]
	add		r7, #0x3
	b		_08023632

_08023628:	.4byte 0x030031A0
_0802362c:	.4byte 0x080f70e8

_08023630:
	add		r7, #0x1
_08023632:
	ldr		r0, _08023650
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08023642
	b		_080237ba
_08023642:
	cmp		r0, #0x1
	ble		_08023654
	cmp		r0, #0x2
	bne		_0802364c
	b		_08023750
_0802364c:
	b		_080237ba

.incbin "base.gba", 0x2364E, 0x2

_08023650:	.4byte 0x030031A0

_08023654:
	mov		r6, #0x0
	mov		r8, r6
	ldr		r0, [sp, #0x0]
	ldr		r1, [r0, #0x4]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08023664
	b		_080237ba
_08023664:
	add		r1, r1, r6
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x8
	ldrb	r1, [r1, #0x1]
	orr		r1, r0
	ldr		r2, _08023680
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x4f
	bhi		_08023688
	ldr		r2, _08023684
	add		r1, r0, #0x0
	b		_080236fc

_08023680:	.4byte 0x00007EC0
_08023684:	.4byte 0x080f6f16

_08023688:
	ldr		r2, _0802369c
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x19
	bhi		_080236a4
	ldr		r2, _080236a0
	add		r1, r0, #0x0
	b		_080236fc

.incbin "base.gba", 0x2369A, 0x2

_0802369c:	.4byte 0x00007DA0
_080236a0:	.4byte 0x080f6fda

_080236a4:
	ldr		r2, _080236b8
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x19
	bhi		_080236c0
	ldr		r2, _080236bc
	add		r1, r0, #0x0
	b		_080236fc

.incbin "base.gba", 0x236B6, 0x2

_080236b8:	.4byte 0x00007D7F
_080236bc:	.4byte 0x080f700e

_080236c0:
	ldr		r2, _080236d4
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x52
	bhi		_080236dc
	ldr		r2, _080236d8
	add		r1, r0, #0x0
	b		_080236fc

.incbin "base.gba", 0x236D2, 0x2

_080236d4:	.4byte 0x00007D61
_080236d8:	.4byte 0x080f7042

_080236dc:
	ldr		r2, _080236f0
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x9
	bhi		_080236f8
	ldr		r2, _080236f4
	add		r1, r0, #0x0
	b		_080236fc

.incbin "base.gba", 0x236EE, 0x2

_080236f0:	.4byte 0x00007DB1
_080236f4:	.4byte 0x080f6fc6

_080236f8:
	ldr		r2, _08023748
	mov		r1, #0x0
_080236fc:
	lsl		r0, r1, #0x1
	add		r0, r0, r2
	ldrh	r4, [r0, #0x0]
	mov		r0, r8
	add		r5, r7, r0
	mov		r0, #0x0
	add		r1, r5, #0x0
	mov		r2, r10
	bl		sub_080281b0
	mov		r1, #0xe0
	lsl		r1, r1, #0x8
	add		r2, r1, #0x0
	add		r1, r4, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	add		r1, r5, #0x0
	mov		r2, r10
	add		r2, #0x1
	bl		sub_080281b0
	add		r4, #0x20
	ldr		r2, _0802374c
	add		r1, r2, #0x0
	orr		r4, r1
	strh	r4, [r0, #0x0]
	mov		r0, #0x1
	add		r8, r0
	add		r6, #0x2
	ldr		r2, [sp, #0x0]
	ldr		r1, [r2, #0x4]
	add		r0, r1, r6
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08023664
	b		_080237ba

.incbin "base.gba", 0x23746, 0x2

_08023748:	.4byte 0x080f6f16
_0802374c:	.4byte 0xFFFFE000

_08023750:
	mov		r6, #0x0
	mov		r8, r6
	ldr		r0, [sp, #0x0]
	ldr		r1, [r0, #0x8]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_080237ba
_0802375e:
	add		r0, r1, r6
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	mov		r0, #0x0
	cmp		r1, #0x5e
	bhi		_08023770
	add		r0, r1, #0x0
_08023770:
	ldr		r1, _080237cc
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r4, [r0, #0x0]
	mov		r1, r8
	add		r5, r7, r1
	mov		r0, #0x0
	add		r1, r5, #0x0
	mov		r2, r10
	bl		sub_080281b0
	mov		r1, #0xe0
	lsl		r1, r1, #0x8
	add		r2, r1, #0x0
	add		r1, r4, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	add		r1, r5, #0x0
	mov		r2, r10
	add		r2, #0x1
	bl		sub_080281b0
	add		r4, #0x20
	ldr		r2, _080237d0
	add		r1, r2, #0x0
	orr		r4, r1
	strh	r4, [r0, #0x0]
	mov		r0, #0x1
	add		r8, r0
	add		r6, #0x1
	ldr		r2, [sp, #0x0]
	ldr		r1, [r2, #0x8]
	add		r0, r1, r6
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802375e
_080237ba:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x237CA, 0x2

_080237cc:	.4byte 0x080f6e58
_080237d0:	.4byte 0xFFFFE000
	thumb_func_end sub_08023530

	thumb_func_start sub_080237d4
sub_080237d4:
	push	{ r4, lr }
	sub		sp, #0x4
	ldr		r2, _08023810
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, [r2, #0xc]
	add		r4, r1, r0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x10
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08023814
	mov		r0, sp
	bl		sub_08071b68
	ldrb	r0, [r4, #0x2]
	cmp		r0, #0x1
	beq		_08023830
	cmp		r0, #0x1
	bgt		_08023818
	cmp		r0, #0x0
	beq		_08023822
	b		_080238c6

_08023810:	.4byte _080f8a74
_08023814:	.4byte 0x01000040

_08023818:
	cmp		r0, #0x2
	beq		_08023870
	cmp		r0, #0x3
	beq		_08023896
	b		_080238c6
_08023822:
	ldr		r2, [r4, #0x4]
	mov		r0, #0xa
	mov		r1, #0x11
	mov		r3, #0x1
	bl		sub_08023530
	b		_080238c6
_08023830:
	ldr		r0, _08023848
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_080238c6
	cmp		r0, #0x1
	ble		_0802384c
	cmp		r0, #0x2
	beq		_0802385e
	b		_080238c6

_08023848:	.4byte 0x030031A0

_0802384c:
	ldr		r2, [r4, #0x4]
	mov		r0, #0x4
	mov		r1, #0x10
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0x8]
	mov		r0, #0xe
	b		_0802388c
_0802385e:
	ldr		r2, [r4, #0x4]
	mov		r0, #0x1
	mov		r1, #0x10
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0x8]
	mov		r0, #0x8
	b		_0802388c
_08023870:
	ldr		r2, [r4, #0x4]
	mov		r0, #0xa
	mov		r1, #0x10
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0x8]
	mov		r0, #0x4
	mov		r1, #0x12
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0xc]
	mov		r0, #0x10
_0802388c:
	mov		r1, #0x12
	mov		r3, #0x0
	bl		sub_08023530
	b		_080238c6
_08023896:
	ldr		r2, [r4, #0x4]
	mov		r0, #0x2
	mov		r1, #0x10
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0x8]
	mov		r0, #0xe
	mov		r1, #0x10
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0xc]
	mov		r0, #0x6
	mov		r1, #0x12
	mov		r3, #0x0
	bl		sub_08023530
	ldr		r2, [r4, #0x10]
	mov		r0, #0x12
	mov		r1, #0x12
	mov		r3, #0x0
	bl		sub_08023530
_080238c6:
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x238CE, 0x242

_08023b10:	.4byte 0x08023b40

.incbin "base.gba", 0x23B14, 0x2C
	thumb_func_end sub_080237d4


.incbin "base.gba", 0x23B40, 0x980
_080244c0:	.4byte 0x08024548

.incbin "base.gba", 0x244C4, 0x3FC
_080248c0:	.4byte 0x08024ae0

.incbin "base.gba", 0x248C4, 0xE84
	thumb_func_start sub_08025748
sub_08025748:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r0, _08025784
	ldr		r2, [r0, #0x0]
	ldr		r3, [r5, #0x68]
	ldr		r1, _08025788
	ldr		r4, [r2, #0x8]
	lsl		r0, r4, #0x3
	add		r1, #0x4
	add		r0, r0, r1
	ldr		r6, [r0, #0x0]
	mov		r1, #0x0
	cmp		r4, #0xe
	bgt		_08025790
	mov		r7, #0xa1
	lsl		r7, r7, #0x2
	add		r0, r2, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080257a0
	add		r3, #0x1
	cmp		r3, r6
	ble		_0802578c
	str		r1, [r2, #0xc]
	add		r0, r4, #0x1
	str		r0, [r2, #0x8]
	mov		r0, #0x1
	str		r0, [r5, #0x68]
	b		_0802579e

.incbin "base.gba", 0x25782, 0x2

_08025784:	.4byte 0x0203EBD8
_08025788:	.4byte _080f8a74

_0802578c:
	str		r3, [r5, #0x68]
	b		_080257a0
_08025790:
	mov		r3, #0xa1
	lsl		r3, r3, #0x2
	add		r0, r2, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080257a0
	str		r1, [r5, #0x68]
_0802579e:
	mov		r1, #0x1
_080257a0:
	add		r0, r1, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08025748

	thumb_func_start sub_080257a8
sub_080257a8:
	push	{ r4, r5, lr }
	sub		sp, #0x8
	ldr		r0, _08025804
	ldr		r0, [r0, #0x0]
	mov		r1, #0xcf
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	str		r4, [sp, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r5, _08025808
	mov		r0, sp
	add		r2, r5, #0x0
	bl		sub_08071b68
	str		r4, [sp, #0x4]
	add		r4, sp, #0x4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b68
	mov		r0, #0x3
	bl		sub_080281fc
	ldr		r0, _0802580c
	mov		r1, #0x11
	ldr		r2, _08025810
	add		r0, r0, r2
	str		r1, [r0, #0x0]
	add		sp, #0x8
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x25802, 0x2

_08025804:	.4byte 0x0203EBD8
_08025808:	.4byte 0x01000200
_0802580c:	.4byte 0x030031A0
_08025810:	.4byte 0x00000C08

.incbin "base.gba", 0x25814, 0x284
	thumb_func_end sub_080257a8

	thumb_func_start sub_08025a98
sub_08025a98:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r1, _08025ad8
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x0
	bne		_08025b5e
	ldr		r2, _08025adc
	add		r0, r4, r2
	strb	r1, [r0, #0x0]
	ldr		r1, _08025ae0
	add		r0, r4, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_08025b20
	cmp		r1, r0
	bgt		_08025ae4
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08025aee
	b		_08025b4c

.incbin "base.gba", 0x25AD6, 0x2

_08025ad8:	.4byte 0x000007D4
_08025adc:	.4byte 0x000007D6
_08025ae0:	.4byte 0x000007DA

_08025ae4:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08025b44
	b		_08025b4c
_08025aee:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_08025b08
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r2
	cmp		r0, #0x0
	beq		_08025b4c
	ldr		r1, _08025b04
	b		_08025b4e

_08025b04:	.4byte 0x080f8b58

_08025b08:
	bl		sub_08002c30
	cmp		r0, #0x0
	beq		_08025b18
	ldr		r1, _08025b14
	b		_08025b4e

_08025b14:	.4byte 0x080f8b00

_08025b18:
	ldr		r1, _08025b1c
	b		_08025b4e

_08025b1c:	.4byte 0x080f8b10

_08025b20:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r2
	cmp		r0, #0x0
	beq		_08025b4c
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r2
	cmp		r0, #0x0
	beq		_08025b3c
	ldr		r1, _08025b38
	b		_08025b4e

_08025b38:	.4byte 0x080f8b44

_08025b3c:
	ldr		r1, _08025b40
	b		_08025b4e

_08025b40:	.4byte 0x080f8b58

_08025b44:
	ldr		r1, _08025b48
	b		_08025b4e

_08025b48:	.4byte 0x080f8b34

_08025b4c:
	ldr		r1, _08025b64
_08025b4e:
	ldr		r0, _08025b68
	str		r1, [r0, #0x0]
	ldr		r0, _08025b6c
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x40
	orr		r0, r1
	strb	r0, [r2, #0x0]
_08025b5e:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08025b64:	.4byte 0x080f8b24
_08025b68:	.4byte 0x03002FF8
_08025b6c:	.4byte 0x000007D4
	thumb_func_end sub_08025a98

	thumb_func_start sub_08025b70
sub_08025b70:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x44
	str		r0, [sp, #0x4]
	mov		r0, #0x1
	str		r0, [sp, #0x8]
	ldr		r1, [sp, #0x4]
	ldr		r2, _08025ba0
	add		r5, r1, r2
	ldrb	r4, [r5, #0x0]
	cmp		r4, #0x2
	bne		_08025b90
	b		_08025f70
_08025b90:
	cmp		r4, #0x2
	bgt		_08025ba4
	cmp		r4, #0x0
	beq		_08025bb2
	cmp		r4, #0x1
	beq		_08025c28
	b		_080262dc

.incbin "base.gba", 0x25B9E, 0x2

_08025ba0:	.4byte 0x000007D6

_08025ba4:
	cmp		r4, #0x3
	bne		_08025baa
	b		_080261ec
_08025baa:
	cmp		r4, #0x64
	bne		_08025bb0
	b		_080261fa
_08025bb0:
	b		_080262dc
_08025bb2:
	ldr		r0, _08025c10
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	ldr		r1, _08025c14
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	bl		sub_08071b68
	str		r4, [sp, #0x0]
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08025c18
	mov		r0, sp
	bl		sub_08071b68
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802667c
	ldr		r3, _08025c1c
	ldr		r2, _08025c20
	mov		r6, #0xd5
	lsl		r6, r6, #0x2
	add		r0, r2, r6
	ldrh	r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	mov		r7, #0x8e
	lsl		r7, r7, #0x3
	add		r2, r2, r7
	ldr		r1, [r2, #0x0]
	bl		sub_08070e28
	ldr		r0, _08025c24
	strh	r4, [r0, #0x0]
	b		_080261f2

.incbin "base.gba", 0x25C0E, 0x2

_08025c10:	.4byte 0x03000190
_08025c14:	.4byte 0x02004000
_08025c18:	.4byte 0x01000140
_08025c1c:	.4byte 0x08124544
_08025c20:	.4byte 0x081245c8
_08025c24:	.4byte 0x03000192

_08025c28:
	ldr		r2, _08025cb4
	mov		r0, #0x0
	ldrsh	r3, [r2, r0]
	cmp		r3, #0x0
	beq		_08025c34
	b		_08025d88
_08025c34:
	ldr		r2, _08025cb8
	ldrh	r0, [r2, #0x0]
	strh	r3, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x3
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r4, #0x0
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_08025c58
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_08025c5a
_08025c58:
	mov		r4, #0x1
_08025c5a:
	cmp		r4, #0x0
	beq		_08025d30
	ldr		r6, [sp, #0x4]
	ldr		r7, _08025cbc
	add		r5, r6, r7
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08025ce4
	bl		sub_08029f34
	ldr		r1, _08025cc0
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _08025cc4
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08025cc8
	ldr		r2, _08025ccc
	ldr		r4, _08025cd0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08025cd4
	ldr		r2, _08025cd8
	add		r3, r4, #0x0
	bl		sub_08029ee4
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08025d4e
	bl		sub_08029f34
	ldr		r1, _08025cdc
	ldr		r2, _08025ce0
	b		_08025d0c

_08025cb4:	.4byte 0x03000192
_08025cb8:	.4byte 0x04000008
_08025cbc:	.4byte 0x000007DA
_08025cc0:	.4byte 0x080c6b0c
_08025cc4:	.4byte 0x80000400
_08025cc8:	.4byte 0x080c768c
_08025ccc:	.4byte 0x06000800
_08025cd0:	.4byte 0x800000E0
_08025cd4:	.4byte 0x080c784c
_08025cd8:	.4byte 0x060009C0
_08025cdc:	.4byte 0x080c7a0c
_08025ce0:	.4byte 0x06000080

_08025ce4:
	bl		sub_08029f34
	ldr		r1, _08025d14
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _08025d18
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08025d1c
	ldr		r2, _08025d20
	ldr		r4, _08025d24
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08025d28
	ldr		r2, _08025d2c
_08025d0c:
	add		r3, r4, #0x0
	bl		sub_08029ee4
	b		_08025d4e

_08025d14:	.4byte 0x080c6b0c
_08025d18:	.4byte 0x80000400
_08025d1c:	.4byte 0x080c730c
_08025d20:	.4byte 0x06000800
_08025d24:	.4byte 0x800000E0
_08025d28:	.4byte 0x080c93cc
_08025d2c:	.4byte 0x060009C0

_08025d30:
	bl		sub_08029f34
	ldr		r1, _08025d70
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _08025d74
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08025d78
	ldr		r2, _08025d7c
	ldr		r3, _08025d80
	bl		sub_08029ee4
_08025d4e:
	ldr		r4, _08025d84
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	b		_080262d4

.incbin "base.gba", 0x25D6E, 0x2

_08025d70:	.4byte 0x080c6b0c
_08025d74:	.4byte 0x80000230
_08025d78:	.4byte 0x080c958c
_08025d7c:	.4byte 0x06000080
_08025d80:	.4byte 0x800000E0
_08025d84:	.4byte 0x080c69c0

_08025d88:
	ldr		r0, _08025e2c
	ldr		r1, [r0, #0x0]
	ldrb	r0, [r1, #0x2]
	lsr		r0, r0, #0x1
	mov		r10, r0
	ldrb	r0, [r1, #0x3]
	lsr		r0, r0, #0x1
	mov		r9, r0
	ldrb	r0, [r1, #0x0]
	add		r0, r10
	str		r0, [sp, #0xC]
	ldrb	r0, [r1, #0x1]
	add		r0, r9
	str		r0, [sp, #0x10]
	cmp		r3, #0x8
	ble		_08025daa
	b		_08025eb8
_08025daa:
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r10
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08025db8
	add		r0, #0x7
_08025db8:
	asr		r2, r0, #0x3
	mov		r0, r9
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08025dc4
	add		r0, #0x7
_08025dc4:
	mov		r8, r2
	asr		r7, r0, #0x3
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	str		r0, [sp, #0x14]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	str		r0, [sp, #0x18]
	cmp		r8, r10
	ble		_08025de6
	mov		r8, r10
_08025de6:
	cmp		r7, r9
	ble		_08025dec
	mov		r7, r9
_08025dec:
	mov		r5, #0x0
	lsl		r0, r7, #0x1
	cmp		r5, r0
	bge		_08025ea0
	mov		r6, r8
	lsl		r6, r6, #0x1
	str		r6, [sp, #0x30]
	str		r0, [sp, #0x24]
_08025dfc:
	mov		r4, #0x0
	add		r0, r5, #0x1
	str		r0, [sp, #0x34]
	ldr		r1, [sp, #0x30]
	cmp		r4, r1
	bge		_08025e98
	ldr		r2, [sp, #0xC]
	add		r2, r10
	str		r2, [sp, #0x1C]
	str		r1, [sp, #0x3C]
	ldr		r3, [sp, #0x10]
	add		r3, r9
	str		r3, [sp, #0x20]
	ldr		r6, [sp, #0x24]
	sub		r6, r5, r6
	mov		r12, r6
_08025e1c:
	cmp		r4, r8
	bge		_08025e30
	ldr		r1, [sp, #0xC]
	mov		r2, r10
	sub		r0, r1, r2
	add		r1, r0, r4
	b		_08025e38

.incbin "base.gba", 0x25E2A, 0x2

_08025e2c:	.4byte 0x03002FF8

_08025e30:
	ldr		r3, [sp, #0x3C]
	sub		r0, r4, r3
	ldr		r6, [sp, #0x1C]
	add		r1, r6, r0
_08025e38:
	cmp		r5, r7
	bge		_08025e46
	ldr		r2, [sp, #0x10]
	mov		r3, r9
	sub		r0, r2, r3
	add		r3, r0, r5
	b		_08025e4a
_08025e46:
	ldr		r3, [sp, #0x20]
	add		r3, r12
_08025e4a:
	cmp		r1, #0x0
	blt		_08025e90
	cmp		r3, #0x0
	blt		_08025e90
	cmp		r1, #0x1f
	bgt		_08025e90
	cmp		r3, #0x1f
	bgt		_08025e90
	ldr		r6, [sp, #0xC]
	mov		r2, r8
	sub		r0, r6, r2
	add		r2, r0, r4
	ldr		r6, [sp, #0x10]
	sub		r0, r6, r7
	add		r0, r0, r5
	cmp		r2, #0x0
	blt		_08025e90
	cmp		r0, #0x0
	blt		_08025e90
	cmp		r2, #0x1f
	bgt		_08025e90
	cmp		r0, #0x1f
	bgt		_08025e90
	lsl		r2, r2, #0x1
	lsl		r0, r0, #0x6
	ldr		r6, [sp, #0x14]
	add		r0, r0, r6
	add		r2, r2, r0
	lsl		r1, r1, #0x1
	lsl		r0, r3, #0x6
	ldr		r3, [sp, #0x18]
	add		r0, r0, r3
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
_08025e90:
	add		r4, #0x1
	ldr		r6, [sp, #0x3C]
	cmp		r4, r6
	blt		_08025e1c
_08025e98:
	ldr		r5, [sp, #0x34]
	ldr		r0, [sp, #0x24]
	cmp		r5, r0
	blt		_08025dfc
_08025ea0:
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r1, _08025eb4
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	bl		sub_080269a4
	b		_080262dc

_08025eb4:	.4byte 0x03000192

_08025eb8:
	ldr		r1, [sp, #0x4]
	ldr		r2, _08025ed4
	add		r0, r1, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x88
	lsl		r0, r0, #0x1
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	bne		_08025f32
	mov		r7, #0x0
	b		_08025f24

.incbin "base.gba", 0x25ED2, 0x2

_08025ed4:	.4byte 0x000007DA

_08025ed8:
	lsl		r6, r7, #0x1
	mov		r5, #0x1b
	sub		r5, r5, r6
	mov		r0, #0x1
	add		r1, r5, #0x0
	mov		r2, #0x12
	bl		sub_080281b0
	ldr		r3, _08025f54
	add		r1, r3, #0x0
	strh	r1, [r0, #0x0]
	mov		r4, #0x1c
	sub		r4, r4, r6
	mov		r0, #0x1
	add		r1, r4, #0x0
	mov		r2, #0x12
	bl		sub_080281b0
	ldr		r6, _08025f58
	add		r1, r6, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r1, r5, #0x0
	mov		r2, #0x13
	bl		sub_080281b0
	ldr		r2, _08025f5c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r1, r4, #0x0
	mov		r2, #0x13
	bl		sub_080281b0
	ldr		r3, _08025f60
	add		r1, r3, #0x0
	strh	r1, [r0, #0x0]
	add		r7, #0x1
_08025f24:
	bl		sub_08002c30
	cmp		r7, r0
	blt		_08025ed8
	mov		r0, #0x2
	bl		sub_080281fc
_08025f32:
	ldr		r0, _08025f64
	mov		r6, #0x0
	ldrsh	r1, [r0, r6]
	ldr		r0, [sp, #0x4]
	bl		sub_08026a78
	ldr		r1, _08025f68
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r7, [sp, #0x4]
	ldr		r0, _08025f6c
	add		r1, r7, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_080262dc

.incbin "base.gba", 0x25F52, 0x2

_08025f54:	.4byte 0x0000B0A0
_08025f58:	.4byte 0x0000B0A1
_08025f5c:	.4byte 0x0000B0A2
_08025f60:	.4byte 0x0000B0A3
_08025f64:	.4byte 0x03000190
_08025f68:	.4byte 0x03000192
_08025f6c:	.4byte 0x000007D6

_08025f70:
	mov		r1, #0x0
	str		r1, [sp, #0x28]
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_08025f84
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_08025f88
_08025f84:
	mov		r2, #0x1
	str		r2, [sp, #0x28]
_08025f88:
	ldr		r0, _0802608c
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x2C]
	mov		r0, #0x0
	bl		sub_08028130
	mov		r6, #0xe0
	lsl		r6, r6, #0x1
	add		r3, r0, r6
	ldr		r1, _08026090
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	mov		r7, #0x0
	ldrsh	r0, [r1, r7]
	ldr		r2, _08026094
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08025fb2
	add		r0, #0x3f
_08025fb2:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08026098
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	sub		r0, r0, r1
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	mov		r8, r0
	ldr		r0, _0802609c
	mov		r1, #0x1f
	mov		r9, r1
	mov		r6, #0x1f
	str		r3, [sp, #0x40]
	add		r2, r0, #0x0
	add		r2, #0x40
	str		r2, [sp, #0x38]
	mov		r12, r0
	mov		r3, #0xf
	mov		r10, r3
_08025fe8:
	mov		r7, r12
	ldrh	r1, [r7, #0x0]
	add		r2, r1, #0x0
	and		r2, r6
	lsr		r4, r1, #0x5
	mov		r0, r9
	and		r4, r0
	lsr		r1, r1, #0xa
	and		r1, r0
	ldr		r7, [sp, #0x38]
	ldrh	r3, [r7, #0x0]
	add		r0, r3, #0x0
	and		r0, r6
	lsr		r5, r3, #0x5
	mov		r7, r9
	and		r5, r7
	lsr		r3, r3, #0xa
	and		r3, r7
	sub		r0, r0, r2
	mov		r7, r8
	mul		r7, r0
	add		r0, r7, #0x0
	asr		r0, r0, #0xf
	add		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	sub		r5, r5, r4
	mov		r0, r8
	mul		r0, r5
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r3, r3, r1
	mov		r0, r8
	mul		r0, r3
	asr		r0, r0, #0xf
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	and		r2, r6
	and		r4, r6
	lsl		r4, r4, #0x5
	orr		r2, r4
	and		r1, r6
	lsl		r1, r1, #0xa
	orr		r2, r1
	ldr		r0, [sp, #0x40]
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	str		r0, [sp, #0x40]
	ldr		r1, [sp, #0x38]
	add		r1, #0x2
	str		r1, [sp, #0x38]
	mov		r2, #0x2
	add		r12, r2
	mov		r3, #0x1
	neg		r3, r3
	add		r10, r3
	mov		r7, r10
	cmp		r7, #0x0
	bge		_08025fe8
	mov		r0, #0x1
	bl		sub_08028168
	mov		r1, #0x40
	ldr		r0, _080260a0
	ldrh	r0, [r0, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080260c4
	ldr		r1, _080260a4
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	bne		_080260a8
	ldr		r6, [sp, #0x2C]
	ldrb	r0, [r6, #0x4]
	sub		r0, #0x1
	b		_080260aa

.incbin "base.gba", 0x2608A, 0x2

_0802608c:	.4byte 0x03002FF8
_08026090:	.4byte 0x03000192
_08026094:	.4byte 0x08101068
_08026098:	.4byte 0x000003FF
_0802609c:	.4byte 0x080c6a0c
_080260a0:	.4byte 0x03005220
_080260a4:	.4byte 0x03000190

_080260a8:
	sub		r0, r2, #0x1
_080260aa:
	strh	r0, [r1, #0x0]
	ldr		r7, [sp, #0x28]
	cmp		r7, #0x0
	beq		_080260c4
	mov		r0, #0x8d
	bl		sub_0807073c
	ldr		r0, _080260e4
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	ldr		r0, [sp, #0x4]
	bl		sub_08026a78
_080260c4:
	mov		r1, #0x80
	ldr		r0, _080260e8
	ldrh	r0, [r0, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802610a
	ldr		r1, _080260e4
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	add		r0, #0x1
	ldr		r6, [sp, #0x2C]
	ldrb	r6, [r6, #0x4]
	cmp		r0, r6
	blt		_080260ec
	mov		r0, #0x0
	b		_080260f0

_080260e4:	.4byte 0x03000190
_080260e8:	.4byte 0x03005220

_080260ec:
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
_080260f0:
	strh	r0, [r1, #0x0]
	ldr		r7, [sp, #0x28]
	cmp		r7, #0x0
	beq		_0802610a
	mov		r0, #0x8d
	bl		sub_0807073c
	ldr		r0, _08026138
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	ldr		r0, [sp, #0x4]
	bl		sub_08026a78
_0802610a:
	mov		r1, #0x9
	ldr		r0, _0802613c
	ldrh	r0, [r0, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_08026118
	b		_080262dc
_08026118:
	ldr		r0, _08026138
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	ldr		r6, [sp, #0x2C]
	ldr		r0, [r6, #0x8]
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8
	bls		_0802612c
	b		_080262dc
_0802612c:
	lsl		r0, r0, #0x2
	ldr		r1, _08026140
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x26136, 0x2

_08026138:	.4byte 0x03000190
_0802613c:	.4byte 0x03005220
_08026140:	.4byte 0x08026144
_08026144:	.4byte 0x08026168

.incbin "base.gba", 0x26148, 0x20
	thumb_func_end sub_08025b70


.incbin "base.gba", 0x26168, 0x84

_080261ec:

.incbin "base.gba", 0x261EC, 0x6
_080261f2:

.incbin "base.gba", 0x261F2, 0x8
_080261fa:

.incbin "base.gba", 0x261FA, 0x62
_0802625c:	.4byte 0x03000192

_08026260:

.incbin "base.gba", 0x26260, 0x52
_080262b2:

.incbin "base.gba", 0x262B2, 0xA
_080262bc:	.4byte 0x0000B0A0
_080262c0:	.4byte 0x0000B0A1
_080262c4:	.4byte 0x0000B0A2
_080262c8:	.4byte 0x0000B0A3

_080262cc:

.incbin "base.gba", 0x262CC, 0x8
_080262d4:

.incbin "base.gba", 0x262D4, 0x8
_080262dc:

.incbin "base.gba", 0x262DC, 0x14
_080262f0:	.4byte 0x03000192
	thumb_func_start sub_080262f4
sub_080262f4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, #0x1
	ldr		r0, _08026314
	add		r6, r0, #0x0
	add		r6, #0x24
	ldr		r0, _08026318
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x8
	bls		_0802630a
	b		_0802643a
_0802630a:
	lsl		r0, r0, #0x2
	ldr		r1, _0802631c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08026314:	.4byte 0x030031A0
_08026318:	.4byte 0x03000196
_0802631c:	.4byte 0x08026320
_08026320:	.4byte 0x08026344

.incbin "base.gba", 0x26324, 0x20
	thumb_func_end sub_080262f4


.incbin "base.gba", 0x26344, 0xF6

_0802643a:

.incbin "base.gba", 0x2643A, 0x242
	thumb_func_start sub_0802667c
sub_0802667c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _08026908
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x0]
	ldrb	r6, [r0, #0x0]
	ldrb	r0, [r0, #0x1]
	mov		r9, r0
	ldr		r1, [sp, #0x0]
	ldrb	r1, [r1, #0x2]
	mov		r10, r1
	ldr		r2, [sp, #0x0]
	ldrb	r7, [r2, #0x3]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_080266b2
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_080266b6
_080266b2:
	mov		r1, #0x1
	str		r1, [sp, #0x4]
_080266b6:
	ldr		r2, [sp, #0x4]
	cmp		r2, #0x0
	bne		_080266ce
	add		r6, #0x1
	mov		r0, #0x9
	mov		r10, r0
	sub		r0, r7, #0x4
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	add		r9, r0
	mov		r7, #0x4
_080266ce:
	mov		r1, #0x0
	mov		r8, r1
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, r9
	bl		sub_080281b0
	ldr		r2, _0802690c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r4, r6, #0x1
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, r9
	bl		sub_080281b0
	ldr		r2, _08026910
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r5, #0x2
	str		r4, [sp, #0xC]
	mov		r0, r10
	sub		r0, #0x2
	str		r0, [sp, #0x8]
	mov		r1, #0x1
	neg		r1, r1
	add		r10, r1
	sub		r2, r7, #0x2
	str		r2, [sp, #0x10]
	cmp		r5, r0
	bge		_08026726
	ldr		r0, _08026914
	add		r4, r0, #0x0
_08026710:
	add		r1, r6, r5
	mov		r0, #0x0
	mov		r2, r9
	add		r2, r8
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
	add		r5, #0x1
	ldr		r1, [sp, #0x8]
	cmp		r5, r1
	blt		_08026710
_08026726:
	add		r1, r6, r5
	mov		r4, r9
	add		r4, r8
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026918
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r5, #0x1
	add		r1, r6, r5
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _0802691c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r8, r0
	mov		r2, r9
	add		r2, r8
	mov		r0, #0x0
	add		r1, r6, #0x0
	bl		sub_080281b0
	ldr		r2, _08026920
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r5, #0x1
	cmp		r5, r10
	bge		_0802677e
	mov		r4, #0x0
_0802676a:
	add		r1, r6, r5
	mov		r0, #0x0
	mov		r2, r9
	add		r2, r8
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
	add		r5, #0x1
	cmp		r5, r10
	blt		_0802676a
_0802677e:
	add		r1, r6, r5
	mov		r2, r9
	add		r2, r8
	mov		r0, #0x0
	bl		sub_080281b0
	ldr		r2, _08026924
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r8, r0
	ldr		r1, [sp, #0x10]
	cmp		r8, r1
	bge		_080267e4
	mov		r4, r8
	add		r4, r9
_0802679e:
	mov		r0, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026928
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r5, #0x1
	cmp		r5, r10
	bge		_080267c8
	mov		r7, #0x0
_080267b6:
	add		r1, r6, r5
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	strh	r7, [r0, #0x0]
	add		r5, #0x1
	cmp		r5, r10
	blt		_080267b6
_080267c8:
	add		r1, r6, r5
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _0802692c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r4, #0x1
	mov		r0, #0x1
	add		r8, r0
	ldr		r1, [sp, #0x10]
	cmp		r8, r1
	blt		_0802679e
_080267e4:
	mov		r4, r9
	add		r4, r8
	mov		r0, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026930
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r5, #0x1
	cmp		r5, r10
	bge		_08026812
	mov		r7, #0x0
_08026800:
	add		r1, r6, r5
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	strh	r7, [r0, #0x0]
	add		r5, #0x1
	cmp		r5, r10
	blt		_08026800
_08026812:
	add		r1, r6, r5
	mov		r2, r9
	add		r2, r8
	mov		r0, #0x0
	bl		sub_080281b0
	ldr		r2, _08026934
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r8, r0
	mov		r4, r9
	add		r4, r8
	mov		r0, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026938
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	ldr		r1, [sp, #0xC]
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _0802693c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r5, #0x2
	ldr		r0, [sp, #0x8]
	cmp		r5, r0
	bge		_0802686e
	ldr		r1, _08026940
	add		r4, r1, #0x0
_08026858:
	add		r1, r6, r5
	mov		r0, #0x0
	mov		r2, r9
	add		r2, r8
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
	add		r5, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r5, r2
	blt		_08026858
_0802686e:
	add		r1, r6, r5
	mov		r4, r9
	add		r4, r8
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026944
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r5, #0x1
	add		r1, r6, r5
	mov		r0, #0x0
	add		r2, r4, #0x0
	bl		sub_080281b0
	ldr		r2, _08026948
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	ldr		r0, [sp, #0x4]
	cmp		r0, #0x0
	beq		_08026958
	mov		r1, #0x0
	mov		r8, r1
	ldr		r2, [sp, #0x0]
	ldrb	r2, [r2, #0x4]
	cmp		r8, r2
	bge		_08026988
	add		r6, #0x2
	mov		r10, r6
	mov		r7, r9
	add		r7, #0x2
	mov		r6, r9
	add		r6, #0x1
_080268b2:
	ldr		r1, [sp, #0x0]
	ldr		r0, [r1, #0x8]
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	ldr		r2, _0802694c
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	lsl		r4, r0, #0x3
	sub		r4, r4, r0
	lsl		r4, r4, #0x2
	ldr		r0, _08026950
	add		r5, r4, r0
	mov		r0, #0x0
	mov		r1, r10
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0x7
	bl		sub_08071b6c
	ldr		r1, _08026954
	add		r4, r4, r1
	mov		r0, #0x0
	mov		r1, r10
	add		r2, r7, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x7
	bl		sub_08071b6c
	add		r7, #0x2
	add		r6, #0x2
	mov		r2, #0x1
	add		r8, r2
	ldr		r0, [sp, #0x0]
	ldrb	r0, [r0, #0x4]
	cmp		r8, r0
	blt		_080268b2
	b		_08026988

_08026908:	.4byte 0x03002FF8
_0802690c:	.4byte 0x0000F001
_08026910:	.4byte 0x0000F002
_08026914:	.4byte 0x0000F022
_08026918:	.4byte 0x0000F402
_0802691c:	.4byte 0x0000F401
_08026920:	.4byte 0x0000F021
_08026924:	.4byte 0x0000F421
_08026928:	.4byte 0x0000F020
_0802692c:	.4byte 0x0000F420
_08026930:	.4byte 0x0000F821
_08026934:	.4byte 0x0000FC21
_08026938:	.4byte 0x0000F801
_0802693c:	.4byte 0x0000F802
_08026940:	.4byte 0x0000F822
_08026944:	.4byte 0x0000FC02
_08026948:	.4byte 0x0000FC01
_0802694c:	.4byte 0x080f8af4
_08026950:	.4byte 0x080f8b64
_08026954:	.4byte 0x080f8b72

_08026958:
	ldr		r4, _080269a0
	mov		r2, r9
	add		r2, #0x1
	mov		r0, #0x0
	ldr		r1, [sp, #0xC]
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x7
	bl		sub_08071b6c
	add		r4, #0xe
	mov		r2, r9
	add		r2, #0x2
	mov		r0, #0x0
	ldr		r1, [sp, #0xC]
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x7
	bl		sub_08071b6c
_08026988:
	mov		r0, #0x2
	bl		sub_080281fc
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2699E, 0x2

_080269a0:	.4byte 0x080f8c0c
	thumb_func_end sub_0802667c

	thumb_func_start sub_080269a4
sub_080269a4:
	push	{ r4, r5, r6, r7, lr }
	mov		r0, #0x0
	bl		sub_08028130
	add		r4, r0, #0x0
	mov		r5, #0x1f
	ldr		r0, _08026a74
	mov		r12, r0
	mov		r7, #0x9f
_080269b6:
	ldrh	r2, [r4, #0x0]
	mov		r0, #0x1f
	and		r0, r2
	lsl		r1, r0, #0xa
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_080269c6
	add		r1, r12
_080269c6:
	asr		r6, r1, #0xa
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x15
	and		r0, r5
	lsl		r1, r0, #0xa
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_080269d8
	add		r0, r12
_080269d8:
	asr		r3, r0, #0xa
	lsr		r0, r2, #0x1a
	and		r0, r5
	lsl		r1, r0, #0xa
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_080269e8
	add		r0, r12
_080269e8:
	asr		r2, r0, #0xa
	add		r1, r6, #0x0
	and		r1, r5
	add		r0, r3, #0x0
	and		r0, r5
	lsl		r0, r0, #0x5
	orr		r1, r0
	and		r2, r5
	lsl		r2, r2, #0xa
	orr		r1, r2
	strh	r1, [r4, #0x0]
	add		r4, #0x2
	sub		r7, #0x1
	cmp		r7, #0x0
	bge		_080269b6
	mov		r0, #0x1
	bl		sub_08028130
	add		r4, r0, #0x0
	mov		r5, #0x1f
	ldr		r0, _08026a74
	mov		r12, r0
	mov		r7, #0xff
_08026a16:
	ldrh	r2, [r4, #0x0]
	mov		r0, #0x1f
	and		r0, r2
	lsl		r1, r0, #0xa
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08026a26
	add		r1, r12
_08026a26:
	asr		r6, r1, #0xa
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x15
	and		r0, r5
	lsl		r1, r0, #0xa
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08026a38
	add		r0, r12
_08026a38:
	asr		r3, r0, #0xa
	lsr		r0, r2, #0x1a
	and		r0, r5
	lsl		r1, r0, #0xa
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08026a48
	add		r0, r12
_08026a48:
	asr		r2, r0, #0xa
	add		r1, r6, #0x0
	and		r1, r5
	add		r0, r3, #0x0
	and		r0, r5
	lsl		r0, r0, #0x5
	orr		r1, r0
	and		r2, r5
	lsl		r2, r2, #0xa
	orr		r1, r2
	strh	r1, [r4, #0x0]
	add		r4, #0x2
	sub		r7, #0x1
	cmp		r7, #0x0
	bge		_08026a16
	mov		r0, #0x1
	bl		sub_08028168
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x26A72, 0x2

_08026a74:	.4byte 0x000003FF
	thumb_func_end sub_080269a4

	thumb_func_start sub_08026a78
sub_08026a78:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	ldr		r0, _08026b70
	ldr		r7, [r0, #0x0]
	bl		sub_08027788
	cmp		r0, #0x0
	beq		_08026a9c
	bl		sub_080277b4
	cmp		r0, #0x0
	bne		_08026b60
_08026a9c:
	mov		r5, #0x0
	ldrb	r0, [r7, #0x4]
	cmp		r5, r0
	bge		_08026b5a
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	str		r0, [sp, #0x8]
_08026aaa:
	ldrb	r2, [r7, #0x0]
	add		r1, r2, #0x2
	str		r1, [sp, #0x0]
	ldrb	r1, [r7, #0x1]
	lsl		r0, r5, #0x1
	add		r0, #0x1
	add		r1, r1, r0
	mov		r10, r1
	mov		r1, #0xf0
	lsl		r1, r1, #0x8
	ldr		r0, [sp, #0x8]
	cmp		r5, r0
	bne		_08026ac8
	mov		r1, #0xe0
	lsl		r1, r1, #0x8
_08026ac8:
	str		r1, [sp, #0x4]
	ldr		r4, _08026b74
	ldr		r1, [sp, #0x8]
	cmp		r5, r1
	bne		_08026ad4
	sub		r4, #0x4
_08026ad4:
	add		r1, r2, #0x1
	mov		r0, #0x1
	mov		r2, r10
	bl		sub_080281b0
	add		r2, r4, #0x0
	add		r1, r0, #0x0
	mov		r0, #0x0
	add		r5, #0x1
	str		r5, [sp, #0xC]
_08026ae8:
	add		r4, r0, #0x1
	mov		r3, #0x0
_08026aec:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08026aec
	add		r1, #0x3e
	add		r0, r4, #0x0
	cmp		r0, #0x2
	blt		_08026ae8
	mov		r2, #0x0
_08026b04:
	mov		r5, #0x0
	ldrb	r0, [r7, #0x2]
	sub		r0, #0x3
	add		r1, r2, #0x1
	mov		r8, r1
	cmp		r5, r0
	bge		_08026b4c
	mov		r0, r10
	add		r6, r0, r2
	ldr		r1, _08026b78
	mov		r9, r1
_08026b1a:
	ldr		r2, [sp, #0x0]
	add		r4, r2, r5
	mov		r0, #0x1
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldrh	r1, [r0, #0x0]
	mov		r2, r9
	and		r1, r2
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldrh	r2, [r0, #0x0]
	ldr		r1, [sp, #0x4]
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r5, #0x1
	ldrb	r0, [r7, #0x2]
	sub		r0, #0x3
	cmp		r5, r0
	blt		_08026b1a
_08026b4c:
	mov		r2, r8
	cmp		r2, #0x1
	ble		_08026b04
	ldr		r5, [sp, #0xC]
	ldrb	r0, [r7, #0x4]
	cmp		r5, r0
	blt		_08026aaa
_08026b5a:
	mov		r0, #0x2
	bl		sub_080281fc
_08026b60:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08026b70:	.4byte 0x03002FF8
_08026b74:	.4byte 0x080f8c64
_08026b78:	.4byte 0x00000FFF
	thumb_func_end sub_08026a78

	thumb_func_start sub_08026b7c
sub_08026b7c:
	push	{ lr }
	add		r2, r0, #0x0
	ldr		r1, _08026b98
	add		r0, r2, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_08026b9c
	add		r0, r2, #0x0
	bl		sub_08025b70
	b		_08026b9e

.incbin "base.gba", 0x26B96, 0x2

_08026b98:	.4byte 0x000007D4

_08026b9c:
	mov		r0, #0x1
_08026b9e:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x26BA2, 0x21A
	push	{ r4, lr }
	ldr		r4, _08026e14
	bl		sub_0807006c
	bl		sub_08027148
	ldr		r1, _08026e18
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08026e1c
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08026e20
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	bl		sub_080298f8
	bl		sub_08029894
	bl		sub_08029f34
	bl		sub_08029da8
	bl		sub_08028174
	bl		sub_08028210
	ldr		r0, [r4, #0xc]
	cmp		r0, #0x0
	beq		_08026dfe
	bl		sub_0807d7d0
_08026dfe:
	bl		sub_08027264
	ldr		r0, [r4, #0x14]
	add		r0, #0x1
	str		r0, [r4, #0x14]
	bl		sub_08027158
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x26E12, 0x2

_08026e14:	.4byte 0x030031A0
_08026e18:	.4byte 0x040000B0
_08026e1c:	.4byte 0x0000C5FF
_08026e20:	.4byte 0x00007FFF

.incbin "base.gba", 0x26E24, 0x74
	thumb_func_end sub_08026b7c

	thumb_func_start sub_08026e98
sub_08026e98:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r7, _08026ef8
	ldr		r0, _08026efc
	mov		r10, r0
	ldr		r1, _08026f00
	mov		r9, r1
	ldr		r2, _08026f04
	mov		r8, r2
	ldr		r0, _08026f08
	mov		r12, r0
	mov		r5, r12
	mov		r6, #0x0
	ldr		r4, _08026f0c
_08026eba:
	mov		r1, r10
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	ldr		r2, _08026f10
	add		r0, r2, #0x0
	add		r3, r0, #0x0
	eor		r3, r1
	mov		r0, r9
	add		r2, r6, r0
	ldrh	r1, [r5, #0x0]
	add		r0, r3, #0x0
	bic		r0, r1
	strh	r0, [r2, #0x0]
	mov		r2, r8
	add		r1, r6, r2
	strh	r0, [r1, #0x0]
	cmp		r3, #0x0
	beq		_08026f14
	ldrh	r0, [r5, #0x0]
	cmp		r3, r0
	bne		_08026f14
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_08026f18
	strh	r3, [r1, #0x0]
	ldrh	r0, [r7, #0x22]
	b		_08026f16

.incbin "base.gba", 0x26EF6, 0x2

_08026ef8:	.4byte 0x030031A0
_08026efc:	.4byte 0x030052D8
_08026f00:	.4byte 0x03005220
_08026f04:	.4byte 0x030052C8
_08026f08:	.4byte 0x030052B0
_08026f0c:	.4byte 0x03000198
_08026f10:	.4byte 0x000003FF

_08026f14:
	ldrh	r0, [r7, #0x20]
_08026f16:
	strh	r0, [r4, #0x0]
_08026f18:
	strh	r3, [r5, #0x0]
	add		r5, #0x2
	add		r6, #0x2
	add		r4, #0x2
	mov		r0, r12
	add		r0, #0x6
	cmp		r5, r0
	ble		_08026eba
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x26F36, 0x22
	thumb_func_end sub_08026e98

	thumb_func_start sub_08026f58
sub_08026f58:
	ldr		r0, _08026f74
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08026f68
	mov		r1, #0x0
_08026f68:
	ldr		r0, _08026f78
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x26F72, 0x2

_08026f74:	.4byte 0x03003000
_08026f78:	.4byte 0x030052B0
	thumb_func_end sub_08026f58

	thumb_func_start sub_08026f7c
sub_08026f7c:
	ldr		r0, _08026f98
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08026f8c
	mov		r1, #0x0
_08026f8c:
	ldr		r0, _08026f9c
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x26F96, 0x2

_08026f98:	.4byte 0x03003000
_08026f9c:	.4byte 0x03005220
	thumb_func_end sub_08026f7c

	thumb_func_start sub_08026fa0
sub_08026fa0:
	ldr		r0, _08026fbc
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08026fb0
	mov		r1, #0x0
_08026fb0:
	ldr		r0, _08026fc0
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x26FBA, 0x2

_08026fbc:	.4byte 0x03003000
_08026fc0:	.4byte 0x030052C8

.incbin "base.gba", 0x26FC4, 0x28
	thumb_func_end sub_08026fa0

	thumb_func_start sub_08026fec
sub_08026fec:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r0, _0802700c
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08027000
	mov		r1, #0x0
_08027000:
	ldr		r0, _08027010
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	and		r0, r2
	bx		lr

_0802700c:	.4byte 0x03003000
_08027010:	.4byte 0x03005220
	thumb_func_end sub_08026fec

	thumb_func_start sub_08027014
sub_08027014:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r0, _08027034
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08027028
	mov		r1, #0x0
_08027028:
	ldr		r0, _08027038
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	and		r0, r2
	bx		lr

_08027034:	.4byte 0x03003000
_08027038:	.4byte 0x030052C8
	thumb_func_end sub_08027014

	thumb_func_start sub_0802703c
sub_0802703c:
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_08027046
	ldr		r2, _0802705c
	mov		r1, #0x1d
_08027046:
	cmp		r1, #0x0
	ble		_0802705a
	add		r3, r1, #0x0
_0802704c:
	ldr		r1, [r2, #0x0]
	ldrh	r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	add		r2, #0x8
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802704c
_0802705a:
	bx		lr

_0802705c:	.4byte 0x080f8c68
	thumb_func_end sub_0802703c

	thumb_func_start sub_08027060
sub_08027060:
	ldr		r2, _08027074
	ldrb	r1, [r2, #0x0]
	mov		r3, #0x1
_08027066:
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08027078
	ldrb	r1, [r2, #0x0]
	b		_08027066

.incbin "base.gba", 0x27072, 0x2

_08027074:	.4byte 0x04000004

_08027078:
	bx		lr

.incbin "base.gba", 0x2707A, 0x1E
	thumb_func_end sub_08027060

	thumb_func_start sub_08027098
sub_08027098:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r0, #0x2
	neg		r0, r0
	and		r4, r0
	mov		r5, #0x1
	orr		r5, r1
	mov		r3, #0x0
	lsr		r2, r2, #0x2
	cmp		r3, r2
	bcs		_080270b8
_080270ae:
	ldmia	r4!, { r0 }
	stmia	r1!, { r0 }
	add		r3, #0x1
	cmp		r3, r2
	bcc		_080270ae
_080270b8:
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x270C0, 0x10
	thumb_func_end sub_08027098

	thumb_func_start sub_080270d0
sub_080270d0:
	ldr		r2, _080270e4
	ldr		r1, [r2, #0x0]
	ldr		r0, _080270e8
	mul		r0, r1
	ldr		r1, _080270ec
	add		r0, r0, r1
	str		r0, [r2, #0x0]
	lsl		r0, r0, #0x1
	lsr		r0, r0, #0x11
	bx		lr

_080270e4:	.4byte 0x030001A0
_080270e8:	.4byte 0x41C64E6D
_080270ec:	.4byte 0x00003039
	bx		lr

.incbin "base.gba", 0x270F2, 0x2A
	thumb_func_end sub_080270d0

	thumb_func_start sub_0802711c
sub_0802711c:
	push	{ r4, r5, lr }
	ldr		r5, _08027144
	mov		r4, #0x0
_08027122:
	str		r4, [r5, #0x0]
	bl		sub_08071ba4
	bl		sub_08070730
	bl		sub_0802732c
	cmp		r0, #0x0
	bne		_08027122
	bl		sub_08026e98
	bl		sub_0802a0a4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x27142, 0x2

_08027144:	.4byte 0x030001A4
	thumb_func_end sub_0802711c

	thumb_func_start sub_08027148
sub_08027148:
	ldr		r1, _08027154
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x27152, 0x2

_08027154:	.4byte 0x030001A4
	thumb_func_end sub_08027148

	thumb_func_start sub_08027158
sub_08027158:
	ldr		r2, _0802716c
	mov		r3, #0x1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	neg		r0, r0
	and		r0, r1
	orr		r0, r3
	strb	r0, [r2, #0x0]
	bx		lr

.incbin "base.gba", 0x2716A, 0x2

_0802716c:	.4byte 0x03007FF8

.incbin "base.gba", 0x27170, 0x18
	thumb_func_end sub_08027158

	thumb_func_start sub_08027188
sub_08027188:
	push	{ r4, lr }
	add		r4, r0, #0x0
	str		r1, [r4, #0x0]
	str		r1, [r4, #0x4]
	str		r2, [r4, #0x8]
	mov		r3, #0x0
	lsr		r2, r2, #0x2
	cmp		r3, r2
	bcs		_080271a8
	mov		r2, #0x0
_0802719c:
	stmia	r1!, {  r2 }
	add		r3, #0x1
	ldr		r0, [r4, #0x8]
	lsr		r0, r0, #0x2
	cmp		r3, r0
	bcc		_0802719c
_080271a8:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x271AE, 0x2
	thumb_func_end sub_08027188

	thumb_func_start sub_080271b0
sub_080271b0:
	ldr		r1, [r0, #0x0]
	str		r1, [r0, #0x4]
	bx		lr

.incbin "base.gba", 0x271B6, 0x2
	thumb_func_end sub_080271b0

	thumb_func_start sub_080271b8
sub_080271b8:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	mov		r6, #0x0
	add		r5, r1, #0x0
	mul		r5, r2
	ldr		r2, [r3, #0x4]
	add		r4, r2, r5
	ldr		r0, [r3, #0x0]
	ldr		r1, [r3, #0x8]
	add		r0, r0, r1
	cmp		r4, r0
	bhi		_08027200
	add		r6, r2, #0x0
	str		r4, [r3, #0x4]
	add		r0, r6, #0x0
	mov		r1, #0x0
	lsr		r2, r5, #0x2
	cmp		r1, r2
	bcs		_080271ea
	mov		r3, #0x0
_080271e0:
	str		r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r2
	bcc		_080271e0
_080271ea:
	mov		r1, #0x0
	mov		r2, #0x3
	and		r2, r5
	cmp		r1, r2
	bcs		_08027200
	mov		r3, #0x0
_080271f6:
	strb	r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r2
	bcc		_080271f6
_08027200:
	add		r0, r6, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080271b8

	thumb_func_start sub_08027208
sub_08027208:
	push	{ r4, r5, r6, lr }
	bl		sub_08027cc4
	ldr		r1, _08027258
	ldrh		r2, [r1, #0x16]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r2
	mov		r2, #0x0
	strh		r0, [r1, #0x16]
	mov		r0, #0x1
	neg		r0, r0
	strb	r0, [r1, #0x0]
	strb	r2, [r1, #0x1]
	mov		r2, #0x0
	add		r6, r1, #0x0
	add		r6, #0xd
	mov		r3, #0x0
	add		r5, r1, #0x0
	add		r5, #0x11
	add		r4, r1, #0x0
_08027232:
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, r6
	strb	r3, [r1, #0x0]
	add		r0, r0, r5
	strb	r3, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0x3
	ble		_08027232
	mov		r0, #0x0
	strb	r0, [r4, #0xA]
	strb	r0, [r4, #0xB]
	strb	r0, [r4, #0xC]
	ldr		r1, _0802725c
	ldr		r0, _08027260
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08027258:	.4byte 0x03003000
_0802725c:	.4byte 0x00003FFF
_08027260:	.4byte 0x030001F0
	thumb_func_end sub_08027208

	thumb_func_start sub_08027264
sub_08027264:
	push	{ r4, r5, r6, lr }
	ldr		r6, _080272d8
	ldrh	r5, [r6, #0x0]
	bl		sub_08027fdc
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_08027276
	mov		r1, #0x1
_08027276:
	cmp		r1, #0x0
	beq		_080272f4
	ldr		r2, _080272dc
	mov		r1, #0x0
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	cmp		r0, #0x0
	bne		_08027288
	mov		r1, #0x1
_08027288:
	cmp		r1, #0x0
	beq		_08027314
	ldr		r0, _080272e0
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_080272cc
	mov		r0, #0x0
	strh		r0, [r2, #0x16]
	ldr		r2, _080272e4
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r0, #0x1
	mov		r1, #0xc1
	neg		r1, r1
	bl		sub_0807df78
	ldr		r1, _080272e8
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _080272ec
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	bl		sub_08027208
_080272cc:
	add		r0, r5, #0x0
	bl		sub_08027b10
	ldr		r0, _080272f0
	strh	r0, [r6, #0x0]
	b		_08027314

_080272d8:	.4byte 0x030001F0
_080272dc:	.4byte 0x03003000
_080272e0:	.4byte 0x04000128
_080272e4:	.4byte 0x04000134
_080272e8:	.4byte 0x04000202
_080272ec:	.4byte 0x080270F1
_080272f0:	.4byte 0x00003FFF

_080272f4:
	ldr		r0, _0802731c
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08027304
	mov		r1, #0x0
_08027304:
	ldr		r0, _08027320
	ldrh	r2, [r0, #0x0]
	ldr		r0, _08027324
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldr		r0, _08027328
	and		r0, r2
	strh	r0, [r1, #0x0]
_08027314:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2731A, 0x2

_0802731c:	.4byte 0x03003000
_08027320:	.4byte 0x04000130
_08027324:	.4byte 0x030052D8
_08027328:	.4byte 0x000003FF
	thumb_func_end sub_08027264

	thumb_func_start sub_0802732c
sub_0802732c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r0, #0x1
	str		r0, [sp, #0xC]
	ldr		r4, _080273d8
	ldrh		r1, [r4, #0x16]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080273d4
	bl		sub_080280c4
	add		r2, r0, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_08027382
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	cmp		r0, r2
	beq		_08027382
	ldrh		r0, [r4, #0x16]
	mov		r1, #0xff
	lsl		r1, r1, #0x8
	and		r1, r0
	mov		r0, #0x0
	strh		r1, [r4, #0x16]
	strb	r0, [r4, #0x1]
	mov		r1, #0x0
	add		r4, #0xd
	mov		r3, #0x0
_08027374:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r0, r4
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x3
	ble		_08027374
_08027382:
	ldr		r5, _080273d8
	mov		r7, #0x0
	strb	r2, [r5, #0x0]
	ldr		r6, _080273dc
	ldr		r0, [r6, #0x0]
	cmp		r0, #0xa
	ble		_080273c4
	strh		r7, [r5, #0x16]
	ldr		r2, _080273e0
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r0, #0x1
	mov		r1, #0xc1
	neg		r1, r1
	bl		sub_0807df78
	ldr		r1, _080273e4
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _080273e8
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	bl		sub_08027208
	str		r7, [r6, #0x0]
_080273c4:
	bl		sub_08027fdc
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_080273d0
	mov		r1, #0x1
_080273d0:
	cmp		r1, #0x0
	bne		_080273ec
_080273d4:
	mov		r0, #0x0
	b		_08027644

_080273d8:	.4byte 0x03003000
_080273dc:	.4byte 0x030052B8
_080273e0:	.4byte 0x04000134
_080273e4:	.4byte 0x04000202
_080273e8:	.4byte 0x080270f1

_080273ec:
	mov		r10, r5
	b		_080275d8
_080273f0:
	ldr		r0, _08027470
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	mov		r0, sp
	bl		sub_08027a08
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	bne		_08027406
	b		_080275d2
_08027406:
	mov		r1, r10
	strb	r4, [r1, #0xA]
	ldr		r2, _08027474
	mov		r12, r2
	ldr		r5, _08027478
	mov		r3, r12
	mov		r2, sp
_08027414:
	ldrh	r0, [r2, #0x0]
	cmp		r0, r5
	beq		_08027424
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r3, #0xA]
	orr		r0, r1
	strb	r0, [r3, #0xA]
_08027424:
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08027414
	mov		r3, r12
	ldrb	r0, [r3, #0xA]
	cmp		r0, #0x0
	bne		_08027436
	b		_080275d2
_08027436:
	ldrb	r1, [r3, #0xB]
	cmp		r0, r1
	beq		_08027508
	mov		r4, #0x0
	mov		r5, r12
	mov		r2, #0xd
	add		r2, r12
	mov		r8, r2
	ldr		r3, _0802747c
	mov		r9, r3
	mov		r6, #0x0
	mov		r3, sp
	mov		r7, #0x0
_08027450:
	ldrh	r1, [r3, #0x0]
	add		r2, r1, #0x0
	ldr		r0, _08027478
	cmp		r2, r0
	bne		_08027480
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r5, #0xB]
	bic		r1, r0
	strb	r1, [r5, #0xB]
	lsr		r0, r6, #0x18
	add		r0, r8
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	b		_080274b8

.incbin "base.gba", 0x2746E, 0x2

_08027470:	.4byte 0x030052B8
_08027474:	.4byte 0x03003000
_08027478:	.4byte 0x0000FFFF
_0802747c:	.4byte 0x00003FFF

_08027480:
	mov		r0, r9
	and		r0, r1
	cmp		r0, r9
	beq		_080274b8
	ldr		r0, _080274fc
	cmp		r2, r0
	bne		_080274a0
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r5, #0xB]
	orr		r0, r1
	strb	r0, [r5, #0xB]
	lsr		r0, r6, #0x18
	add		r0, r8
	mov		r1, #0x2
	strb	r1, [r0, #0x0]
_080274a0:
	ldrb	r1, [r5, #0xC]
	add		r0, r1, #0x0
	asr		r0, r4
	mov		r2, #0x1
	and		r0, r2
	cmp		r0, #0x0
	bne		_080274b8
	add		r0, r2, #0x0
	lsl		r0, r4
	orr		r1, r0
	mov		r2, r12
	strb	r1, [r2, #0xC]
_080274b8:
	ldr		r1, _08027500
	add		r0, r7, r1
	ldr		r2, _08027504
	strh	r2, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	add		r6, r6, r0
	add		r3, #0x2
	add		r7, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08027450
	mov		r2, #0x2
	mov		r3, r10
	ldrh		r1, [r3, #0x16]
	mov		r3, #0xff
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r1, r0
	mov		r3, #0x0
	orr		r1, r2
	mov		r0, r10
	strh		r1, [r0, #0x16]
	strb	r3, [r0, #0x1]
	ldrb	r0, [r0, #0xC]
	mov		r1, r10
	ldrb	r1, [r1, #0xA]
	cmp		r0, r1
	bne		_080275d2
	mov		r2, r12
	strb	r3, [r2, #0xC]
	mov		r3, #0x0
	str		r3, [sp, #0xC]
	b		_080275ee

_080274fc:	.4byte 0x00004B4D
_08027500:	.4byte 0x030052D8
_08027504:	.4byte 0x000003FF

_08027508:
	mov		r1, r12
	ldrh		r0, [r1, #0x16]
	mov		r2, #0xff
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	and		r0, r1
	mov		r3, #0x1
	orr		r0, r3
	mov		r1, r12
	strh		r0, [r1, #0x16]
	mov		r4, #0x0
	mov		r2, #0xd
	add		r2, r12
	mov		r9, r2
	mov		r7, #0x0
	mov		r6, r12
	add		r6, #0x2
	mov		r5, sp
	ldr		r3, _08027548
	mov		r8, r3
_08027530:
	ldrh	r2, [r5, #0x0]
	add		r1, r2, #0x0
	ldr		r0, _0802754c
	cmp		r1, r0
	bne		_08027550
	strh	r2, [r6, #0x0]
	lsr		r0, r7, #0x18
	add		r0, r9
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	b		_08027580

.incbin "base.gba", 0x27546, 0x2

_08027548:	.4byte 0x00003FFF
_0802754c:	.4byte 0x0000FFFF

_08027550:
	mov		r0, r8
	and		r0, r2
	cmp		r0, r8
	beq		_08027580
	ldr		r3, _08027604
	cmp		r1, r3
	beq		_08027580
	ldr		r0, _08027608
	ldrb	r1, [r0, #0xC]
	add		r0, r1, #0x0
	asr		r0, r4
	mov		r3, #0x1
	and		r0, r3
	cmp		r0, #0x0
	bne		_08027580
	add		r0, r3, #0x0
	lsl		r0, r4
	orr		r1, r0
	mov		r0, r12
	strb	r1, [r0, #0xC]
	strh	r2, [r6, #0x0]
	lsr		r0, r7, #0x18
	add		r0, r9
	strb	r3, [r0, #0x0]
_08027580:
	mov		r1, #0x80
	lsl		r1, r1, #0x11
	add		r7, r7, r1
	add		r6, #0x2
	add		r5, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08027530
	mov		r2, r10
	ldrb	r0, [r2, #0xC]
	ldrb	r3, [r2, #0xB]
	cmp		r0, r3
	bne		_080275d2
	mov		r5, #0x0
	mov		r4, #0x0
	ldr		r6, _08027608
	ldr		r7, _0802760c
	add		r3, r6, #0x2
	ldr		r2, _08027610
_080275a6:
	ldrb	r0, [r6, #0xB]
	asr		r0, r4
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080275b4
	add		r5, #0x1
_080275b4:
	ldrh	r1, [r3, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_080275a6
	mov		r0, #0x0
	mov		r2, r10
	strb	r5, [r2, #0x1]
	strb	r0, [r2, #0xC]
	mov		r3, #0x0
	str		r3, [sp, #0xC]
_080275d2:
	ldr		r0, [sp, #0xC]
	cmp		r0, #0x0
	beq		_080275ee
_080275d8:
	mov		r0, #0x0
	bl		sub_08028048
	str		r0, [sp, #0x8]
	cmp		r0, #0x0
	ble		_080275e6
	b		_080273f0
_080275e6:
	ldr		r1, _08027614
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_080275ee:
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x2
	bgt		_08027642
	ldr		r0, _08027608
	ldrb	r0, [r0, #0x16]
	cmp		r0, #0x1
	beq		_08027618
	cmp		r0, #0x2
	beq		_0802763c
	b		_08027642

.incbin "base.gba", 0x27602, 0x2

_08027604:	.4byte 0x00004B4D
_08027608:	.4byte 0x03003000
_0802760c:	.4byte 0x000003FF
_08027610:	.4byte 0x030052D8
_08027614:	.4byte 0x030052B8

_08027618:
	ldr		r0, _08027630
	ldrh	r0, [r0, #0x0]
	ldr		r1, _08027634
	and		r1, r0
	ldr		r0, _08027638
	ldrh	r2, [r0, #0x0]
	mov		r0, #0xe0
	lsl		r0, r0, #0x5
	and		r0, r2
	orr		r1, r0
	b		_0802763e

.incbin "base.gba", 0x2762E, 0x2

_08027630:	.4byte 0x04000130
_08027634:	.4byte 0x000003FF
_08027638:	.4byte 0x030052D0

_0802763c:
	ldr		r1, _08027654
_0802763e:
	ldr		r0, _08027658
	strh	r1, [r0, #0x0]
_08027642:
	ldr		r0, [sp, #0xC]
_08027644:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08027654:	.4byte 0x00004B4D
_08027658:	.4byte 0x030001F0
	thumb_func_end sub_0802732c

	thumb_func_start sub_0802765c
sub_0802765c:
	push	{ r4, lr }
	ldr		r2, _080276a4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_080276b4
	ldr		r0, _080276a8
	strh		r1, [r0, #0x16]
	add		r2, #0xc
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r0, #0x1
	mov		r1, #0xc1
	neg		r1, r1
	bl		sub_0807df78
	ldr		r1, _080276ac
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _080276b0
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	bl		sub_08027208
	b		_08027710

_080276a4:	.4byte 0x04000128
_080276a8:	.4byte 0x03003000
_080276ac:	.4byte 0x04000202
_080276b0:	.4byte 0x080270F1

_080276b4:
	ldr		r3, _08027718
	mov		r1, #0x0
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	cmp		r0, #0x0
	ble		_080276c2
	mov		r1, #0x1
_080276c2:
	cmp		r1, #0x0
	beq		_08027710
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08027704
	mov		r0, #0x0
	strh		r0, [r3, #0x16]
	ldr		r2, _0802771c
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r0, #0x1
	mov		r1, #0xc1
	neg		r1, r1
	bl		sub_0807df78
	ldr		r1, _08027720
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _08027724
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	bl		sub_08027208
_08027704:
	ldr		r4, _08027728
	ldrh	r0, [r4, #0x0]
	bl		sub_08027b10
	ldr		r0, _0802772c
	strh	r0, [r4, #0x0]
_08027710:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x27716, 0x2

_08027718:	.4byte 0x03003000
_0802771c:	.4byte 0x04000134
_08027720:	.4byte 0x04000202
_08027724:	.4byte 0x080270F1
_08027728:	.4byte 0x030001F0
_0802772c:	.4byte 0x00003FFF
	thumb_func_end sub_0802765c

	thumb_func_start sub_08027730
sub_08027730:
	push	{ lr }
	ldr		r0, _08027740
	bl		sub_08027bd4
	bl		sub_08027208
	pop		{ r0 }
	bx		r0

_08027740:	.4byte 0x080f8d88
	thumb_func_end sub_08027730

	thumb_func_start sub_08027744
sub_08027744:
	push	{ r4, lr }
	ldr		r2, _0802777c
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r1, #0xc1
	neg		r1, r1
	mov		r0, #0x1
	bl		sub_0807df78
	ldr		r1, _08027780
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _08027784
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	bl		sub_08027208
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802777c:	.4byte 0x04000134
_08027780:	.4byte 0x04000202
_08027784:	.4byte 0x080270F1
	thumb_func_end sub_08027744

	thumb_func_start sub_08027788
sub_08027788:
	push	{ lr }
	bl		sub_08027fdc
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_08027796
	mov		r1, #0x1
_08027796:
	add		r0, r1, #0x0
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2779C, 0x18
	thumb_func_end sub_08027788

	thumb_func_start sub_080277b4
sub_080277b4:
	ldr		r0, _080277c8
	mov		r1, #0x0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	ble		_080277c4
	mov		r1, #0x1
_080277c4:
	add		r0, r1, #0x0
	bx		lr

_080277c8:	.4byte 0x03003000

.incbin "base.gba", 0x277CC, 0x24
	thumb_func_end sub_080277b4

	thumb_func_start sub_080277f0
sub_080277f0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _08027904
	mov		r4, #0x1
	str		r4, [r0, #0x0]
	mov		r7, #0x0
	ldr		r0, _08027908
	strh	r7, [r0, #0x0]
	ldr		r1, _0802790c
	ldr		r3, _08027910
	ldrh	r0, [r3, #0x0]
	strh	r0, [r1, #0x0]
	ldr		r2, _08027914
	ldr		r0, _08027918
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r2, #0x0]
	strh	r0, [r2, #0x0]
	ldr		r0, _0802791c
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r2, #0x2]
	strh	r0, [r2, #0x2]
	ldr		r0, _08027920
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r2, #0x4]
	strh	r0, [r2, #0x4]
	ldr		r0, _08027924
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r2, #0x6]
	strh	r0, [r2, #0x6]
	ldr		r0, _08027928
	ldr		r0, [r0, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x7
	add		r1, r5, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r0, _0802792c
	ldr		r1, [r0, #0x0]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	bne		_08027848
	b		_080279dc
_08027848:
	ldr		r0, [r6, #0x0]
	ldr		r1, _08027930
	mov		r8, r1
	ldr		r3, _08027934
	mov		r12, r3
	ldr		r5, _08027938
	mov		r9, r5
	cmp		r0, #0x1
	bne		_0802787c
	ldr		r0, _0802793c
	str		r7, [r0, #0x0]
	mov		r5, #0x0
	mov		r3, r8
	mov		r4, r12
_08027864:
	str		r5, [r3, #0x0]
	ldr		r0, [r4, #0x0]
	lsl		r1, r7, #0x3
	add		r0, #0xc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x8]
	str		r0, [r3, #0x4]
	add		r3, #0x10
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_08027864
_0802787c:
	mov		r0, #0x2
	str		r0, [r6, #0x0]
	ldrh	r1, [r2, #0x0]
	ldrh	r0, [r2, #0x2]
	add		r4, r0, #0x0
	ldrh	r0, [r2, #0x4]
	add		r5, r0, #0x0
	ldrh	r0, [r2, #0x6]
	add		r6, r0, #0x0
	mov		r2, #0x0
	ldr		r3, _08027940
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, r3
	bne		_0802789c
	mov		r2, #0x1
_0802789c:
	and		r4, r3
	cmp		r4, r3
	bne		_080278a4
	add		r2, #0x1
_080278a4:
	and		r5, r3
	cmp		r5, r3
	bne		_080278ac
	add		r2, #0x1
_080278ac:
	and		r6, r3
	cmp		r6, r3
	bne		_080278b4
	add		r2, #0x1
_080278b4:
	cmp		r2, #0x0
	ble		_080278ce
	ldr		r2, _08027944
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r1, _08027948
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080278ce
	str		r0, [r2, #0x0]
_080278ce:
	ldr		r1, _0802794c
	ldr		r2, _08027950
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r3, r12
	ldr		r1, [r3, #0x0]
	ldr		r2, [r1, #0xc]
	ldr		r0, [r1, #0x10]
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	mov		r5, r8
	ldr		r0, [r5, #0x8]
	add		r3, r0, #0x2
	cmp		r3, r2
	bne		_080278ee
	ldr		r3, [r1, #0xc]
_080278ee:
	lsl		r0, r7, #0x4
	mov		r1, r8
	add		r1, #0x4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, r3
	bne		_08027958
	ldr		r1, _08027954
	mov		r0, #0x2
	str		r0, [r1, #0x0]
	b		_0802799c

_08027904:	.4byte 0x030052E0
_08027908:	.4byte 0x0400010E
_0802790c:	.4byte 0x03005358
_08027910:	.4byte 0x04000128
_08027914:	.4byte 0x03000258
_08027918:	.4byte 0x04000120
_0802791c:	.4byte 0x04000122
_08027920:	.4byte 0x04000124
_08027924:	.4byte 0x04000126
_08027928:	.4byte 0x03000250
_0802792c:	.4byte 0x03000294
_08027930:	.4byte 0x030001F8
_08027934:	.4byte 0x030002A0
_08027938:	.4byte 0x03000254
_0802793c:	.4byte 0x03000238
_08027940:	.4byte 0x00003FFF
_08027944:	.4byte 0x03004C18
_08027948:	.4byte 0x080f8dd4
_0802794c:	.4byte 0x0400012A
_08027950:	.4byte 0x00007FFF
_08027954:	.4byte 0x03000248

_08027958:
	mov		r7, #0x0
	mov		r4, r8
	add		r4, #0x8
	ldr		r5, _080279d0
_08027960:
	mov		r0, r12
	ldr		r1, [r0, #0x0]
	lsl		r3, r7, #0x3
	add		r0, r1, #0x0
	add		r0, #0xc
	add		r0, r0, r3
	ldr		r2, [r0, #0x0]
	add		r1, #0x10
	add		r1, r1, r3
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, [r4, #0x0]
	ldrh	r0, [r5, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	str		r1, [r4, #0x0]
	cmp		r1, r2
	bne		_08027992
	mov		r1, r12
	ldr		r0, [r1, #0x0]
	add		r0, #0xc
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_08027992:
	add		r4, #0x10
	add		r5, #0x2
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_08027960
_0802799c:
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	cmp		r0, r1
	bne		_080279f6
	ldr		r0, _080279d4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080279f6
	mov		r3, r12
	ldr		r1, [r3, #0x0]
	ldrh	r0, [r1, #0x36]
	cmp		r0, #0x0
	beq		_080279f6
	ldr		r1, _080279d8
	neg		r0, r0
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0xc3
	strh	r0, [r1, #0x0]
	b		_080279f6

.incbin "base.gba", 0x279CE, 0x2

_080279d0:	.4byte 0x03000258
_080279d4:	.4byte 0x0300024C
_080279d8:	.4byte 0x0400010C

_080279dc:
	ldr		r2, _08027a04
	ldr		r0, [r2, #0x0]
	mov		r1, #0x3
	and		r0, r1
	cmp		r0, #0x2
	beq		_080279f6
	ldr		r0, [r2, #0x0]
	sub		r1, #0x7
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	orr		r0, r4
	str		r0, [r2, #0x0]
_080279f6:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x27A02, 0x2

_08027a04:	.4byte 0x03000254
	thumb_func_end sub_080277f0

	thumb_func_start sub_08027a08
sub_08027a08:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r1, _08027a30
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08027b00
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x1
	bne		_08027a38
	ldr		r1, _08027a34
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	strh	r0, [r4, #0x2]
	b		_08027af8

_08027a30:	.4byte 0x03000294
_08027a34:	.4byte 0x00007FFF

_08027a38:
	ldr		r2, _08027a4c
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x8]
	cmp		r1, r0
	bne		_08027a54
	ldr		r1, _08027a50
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	b		_08027aa2

_08027a4c:	.4byte 0x030001F8
_08027a50:	.4byte 0x00007FFF

_08027a54:
	ldr		r0, _08027ab0
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_08027abc
	mov		r7, #0x0
	add		r0, r4, #0x2
	mov		r12, r0
	ldr		r1, _08027ab4
	mov		r8, r1
	add		r6, r2, #0x4
_08027a6c:
	mov		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r2, r7, #0x3
	add		r0, r1, #0x0
	add		r0, #0xc
	add		r5, r0, r2
	ldr		r3, [r5, #0x0]
	add		r1, #0x10
	add		r1, r1, r2
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x1
	add		r3, r3, r0
	ldr		r0, [r6, #0x0]
	add		r0, #0x2
	str		r0, [r6, #0x0]
	cmp		r0, r3
	bne		_08027a92
	ldr		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
_08027a92:
	add		r6, #0x10
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_08027a6c
	ldr		r1, _08027ab8
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	mov		r4, r12
_08027aa2:
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	strh	r0, [r4, #0x2]
	mov		r0, #0x1
	neg		r0, r0
	b		_08027b04

_08027ab0:	.4byte 0x03005358
_08027ab4:	.4byte 0x030002A0
_08027ab8:	.4byte 0x00007FFF

_08027abc:
	mov		r7, #0x0
	add		r6, r2, #0x4
	ldr		r0, _08027afc
	mov		r8, r0
_08027ac4:
	mov		r0, r8
	ldr		r1, [r0, #0x0]
	lsl		r2, r7, #0x3
	add		r0, r1, #0x0
	add		r0, #0xc
	add		r5, r0, r2
	ldr		r3, [r5, #0x0]
	add		r1, #0x10
	add		r1, r1, r2
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x1
	add		r3, r3, r0
	ldr		r1, [r6, #0x0]
	ldrh	r0, [r1, #0x0]
	strh	r0, [r4, #0x0]
	add		r1, #0x2
	str		r1, [r6, #0x0]
	add		r4, #0x2
	cmp		r1, r3
	bne		_08027af0
	ldr		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
_08027af0:
	add		r6, #0x10
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_08027ac4
_08027af8:
	mov		r0, #0x5
	b		_08027b04

_08027afc:	.4byte 0x030002A0

_08027b00:
	mov		r0, #0x8
	neg		r0, r0
_08027b04:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x27B0E, 0x2
	thumb_func_end sub_08027a08

	thumb_func_start sub_08027b10
sub_08027b10:
	push	{ r4, lr }
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r0, _08027b24
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x3
	ble		_08027b28
	mov		r0, #0x4
	neg		r0, r0
	b		_08027bcc

_08027b24:	.4byte 0x0300024C

_08027b28:
	ldr		r0, _08027b50
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08027bc8
	ldr		r0, _08027b54
	strh	r2, [r0, #0x0]
	ldr		r3, _08027b58
	cmp		r1, #0x0
	bne		_08027bb8
	mov		r2, #0x0
	ldr		r0, _08027b5c
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x36]
	cmp		r0, #0x0
	beq		_08027b60
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_08027b62
	b		_08027b66

.incbin "base.gba", 0x27B4E, 0x2

_08027b50:	.4byte 0x03000294
_08027b54:	.4byte 0x0400012A
_08027b58:	.4byte 0x03000284
_08027b5c:	.4byte 0x030002A0

_08027b60:
	mov		r2, #0x1
_08027b62:
	cmp		r2, #0x0
	beq		_08027bb8
_08027b66:
	ldr		r0, _08027b84
	ldr		r0, [r0, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08027b90
	ldr		r1, _08027b88
	ldr		r0, _08027b8c
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	b		_08027b92

.incbin "base.gba", 0x27B82, 0x2

_08027b84:	.4byte 0x03000254
_08027b88:	.4byte 0x080f8dd4
_08027b8c:	.4byte 0x03004C18

_08027b90:
	mov		r2, #0x0
_08027b92:
	cmp		r2, #0x0
	beq		_08027ba8
	ldr		r1, _08027ba4
	neg		r0, r2
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0xc3
	strh	r0, [r1, #0x0]
	b		_08027bb8

_08027ba4:	.4byte 0x0400010C

_08027ba8:
	ldr		r2, _08027bc0
	ldr		r0, _08027bc4
	ldr		r0, [r0, #0x0]
	mov		r4, #0xc1
	lsl		r4, r4, #0x7
	add		r1, r4, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08027bb8:
	mov		r0, #0x1
	str		r0, [r3, #0x0]
	mov		r0, #0x5
	b		_08027bcc

_08027bc0:	.4byte 0x04000128
_08027bc4:	.4byte 0x03000250

_08027bc8:
	mov		r0, #0x8
	neg		r0, r0
_08027bcc:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x27BD2, 0x2
	thumb_func_end sub_08027b10

	thumb_func_start sub_08027bd4
sub_08027bd4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r0, _08027c78
	mov		r5, #0x0
	str		r5, [r0, #0x0]
	ldr		r6, _08027c7c
	str		r4, [r6, #0x0]
	ldr		r0, _08027c80
	str		r5, [r0, #0x0]
	ldr		r1, _08027c84
	ldr		r0, _08027c88
	str		r5, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r2, _08027c8c
	str		r5, [r2, #0x0]
	ldr		r3, _08027c90
	ldrh	r1, [r4, #0x30]
	mov		r0, #0x3
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, _08027c94
	str		r5, [r0, #0x0]
	ldr		r0, [r4, #0x0]
	str		r0, [r2, #0x0]
	ldrh	r0, [r4, #0x2e]
	add		r7, r3, #0x0
	cmp		r0, #0x0
	bne		_08027c12
	mov		r0, #0xa
	strh	r0, [r4, #0x2e]
_08027c12:
	ldr		r0, _08027c98
	str		r5, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r1, _08027c9c
	ldr		r0, [r6, #0x0]
	ldrh	r0, [r0, #0x2c]
	strh	r0, [r1, #0x0]
	ldr		r4, _08027ca0
	ldr		r3, _08027ca4
	ldr		r5, _08027ca8
	mov		r2, #0x3
_08027c2a:
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x2]
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08027c2a
	mov		r2, #0x0
	str		r2, [r3, #0x0]
	str		r2, [r4, #0x0]
	ldr		r0, _08027cac
	strh	r2, [r0, #0x0]
	ldr		r3, _08027cb0
	ldr		r0, [r7, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x6
	add		r1, r4, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r0, _08027cb4
	strh	r2, [r0, #0x0]
	mov		r0, #0x7
	add		r1, r5, #0x0
	bl		sub_0807df68
	ldr		r1, _08027cb8
	mov		r0, #0x6
	bl		sub_0807df68
	ldr		r1, _08027cbc
	mov		r0, #0x2
	bl		sub_0807df78
	ldr		r1, _08027cc0
	mov		r0, #0xf0
	str		r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08027c78:	.4byte 0x030052E0
_08027c7c:	.4byte 0x030002A0
_08027c80:	.4byte 0x03004C18
_08027c84:	.4byte 0x03000298
_08027c88:	.4byte 0x03000294
_08027c8c:	.4byte 0x03000254
_08027c90:	.4byte 0x03000250
_08027c94:	.4byte 0x03000264
_08027c98:	.4byte 0x03000268
_08027c9c:	.4byte 0x030002A8
_08027ca0:	.4byte 0x030002B4
_08027ca4:	.4byte 0x030002B8
_08027ca8:	.4byte 0x0802810d
_08027cac:	.4byte 0x04000134
_08027cb0:	.4byte 0x04000128
_08027cb4:	.4byte 0x0400010E
_08027cb8:	.4byte 0x080280e9
_08027cbc:	.4byte 0x000100C0
_08027cc0:	.4byte 0x0300024C
	thumb_func_end sub_08027bd4

	thumb_func_start sub_08027cc4
sub_08027cc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _08027d70
	mov		r2, #0x0
	str		r2, [r0, #0x0]
	ldr		r1, _08027d74
	ldr		r0, _08027d78
	str		r2, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r3, _08027d7c
	ldr		r0, [r3, #0x0]
	mov		r1, #0x4
	neg		r1, r1
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, _08027d80
	str		r2, [r0, #0x0]
	ldr		r0, _08027d84
	str		r2, [r0, #0x0]
	ldr		r0, _08027d88
	str		r2, [r0, #0x0]
	ldr		r0, _08027d8c
	str		r2, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r0, _08027d90
	str		r2, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r0, _08027d94
	str		r2, [r0, #0x0]
	ldr		r1, _08027d98
	str		r2, [r1, #0x0]
	ldr		r3, _08027d9c
	ldr		r0, [r3, #0x0]
	ldr		r0, [r0, #0x4]
	str		r0, [r1, #0x8]
	str		r0, [r1, #0x4]
	ldrh	r0, [r1, #0xc]
	strh	r2, [r1, #0xc]
	mov		r4, #0x0
	mov		r9, r3
	ldr		r7, _08027da0
	mov		r6, #0x0
	ldr		r0, _08027da4
	mov		r8, r0
	add		r3, r7, #0x0
	add		r5, r3, #0x0
	mov		r1, #0xff
	mov		r12, r1
_08027d2e:
	lsl		r2, r4, #0x4
	mov		r0, r12
	str		r0, [r3, #0x0]
	add		r0, r7, #0x4
	add		r2, r2, r0
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	lsl		r1, r4, #0x3
	add		r0, #0xc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r5, #0x8]
	str		r0, [r2, #0x0]
	ldrh	r0, [r3, #0xc]
	strh	r6, [r3, #0xc]
	ldrh	r0, [r3, #0xe]
	strh	r6, [r3, #0xe]
	mov		r0, r8
	add		r0, #0x4
	mov		r8, r0
	sub		r0, #0x4
	stmia	r0!, {  r6 }
	add		r5, #0x10
	add		r3, #0x10
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08027d2e
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08027d70:	.4byte 0x0300029C
_08027d74:	.4byte 0x03000298
_08027d78:	.4byte 0x03000294
_08027d7c:	.4byte 0x03000254
_08027d80:	.4byte 0x03000260
_08027d84:	.4byte 0x03000280
_08027d88:	.4byte 0x03000284
_08027d8c:	.4byte 0x03000268
_08027d90:	.4byte 0x03000288
_08027d94:	.4byte 0x030002BC
_08027d98:	.4byte 0x03000238
_08027d9c:	.4byte 0x030002A0
_08027da0:	.4byte 0x030001F8
_08027da4:	.4byte 0x03000270
	thumb_func_end sub_08027cc4

	thumb_func_start sub_08027da8
sub_08027da8:
	push	{ r4, r5, lr }
	ldr		r4, _08027dbc
	ldr		r3, [r4, #0x0]
	cmp		r3, #0x0
	beq		_08027dc4
	cmp		r3, #0x1
	beq		_08027e30
	ldr		r0, _08027dc0
	ldr		r0, [r0, #0x0]
	b		_08027ec8

_08027dbc:	.4byte 0x030002BC
_08027dc0:	.4byte 0x0300024C

_08027dc4:
	ldr		r0, _08027e14
	strh	r3, [r0, #0x0]
	ldr		r1, _08027e18
	ldr		r0, _08027e1c
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x2c]
	mvn		r0, r0
	strh	r0, [r1, #0x0]
	ldr		r2, _08027e20
	ldr		r0, _08027e24
	ldr		r0, [r0, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x7
	add		r1, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	add		r2, r0, #0x0
	mov		r0, #0x8
	and		r0, r2
	cmp		r0, #0x0
	beq		_08027ec4
	mov		r0, #0x40
	and		r0, r2
	cmp		r0, #0x0
	bne		_08027ec4
	ldr		r1, _08027e28
	mov		r0, #0x4
	and		r0, r2
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08027e08
	mov		r0, #0xf0
	str		r0, [r1, #0x0]
_08027e08:
	ldr		r0, _08027e2c
	str		r3, [r0, #0x0]
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	b		_08027ec4

.incbin "base.gba", 0x27E12, 0x2

_08027e14:	.4byte 0x04000134
_08027e18:	.4byte 0x0400012A
_08027e1c:	.4byte 0x030002A0
_08027e20:	.4byte 0x04000128
_08027e24:	.4byte 0x03000250
_08027e28:	.4byte 0x0300024C
_08027e2c:	.4byte 0x030052E0

_08027e30:
	ldr		r0, _08027e7c
	ldrh	r0, [r0, #0x0]
	add		r2, r0, #0x0
	ldr		r0, _08027e80
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08027e98
	mov		r1, #0x40
	and		r1, r2
	cmp		r1, #0x0
	bne		_08027e98
	ldr		r0, _08027e84
	str		r1, [r0, #0x0]
	ldr		r1, _08027e88
	mov		r0, #0x30
	and		r0, r2
	asr		r0, r0, #0x4
	str		r0, [r1, #0x0]
	ldr		r2, _08027e8c
	lsl		r1, r0, #0x4
	add		r1, r1, r2
	ldrh	r2, [r1, #0xe]
	strh	r3, [r1, #0xe]
	ldr		r3, _08027e90
	ldr		r1, [r3, #0x0]
	mov		r2, #0x4
	neg		r2, r2
	and		r1, r2
	str		r1, [r3, #0x0]
	ldr		r1, [r3, #0x0]
	mov		r2, #0x2
	orr		r1, r2
	str		r1, [r3, #0x0]
	ldr		r1, _08027e94
	str		r2, [r1, #0x0]
	str		r2, [r4, #0x0]
	b		_08027ec8

.incbin "base.gba", 0x27E7A, 0x2

_08027e7c:	.4byte 0x04000128
_08027e80:	.4byte 0x030052E0
_08027e84:	.4byte 0x03000248
_08027e88:	.4byte 0x0300024C
_08027e8c:	.4byte 0x030001F8
_08027e90:	.4byte 0x03000254
_08027e94:	.4byte 0x03000294

_08027e98:
	ldr		r1, _08027ed0
	ldr		r0, _08027ed4
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x2c]
	mvn		r0, r0
	strh	r0, [r1, #0x0]
	ldr		r2, _08027ed8
	ldr		r0, _08027edc
	ldr		r0, [r0, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _08027ee0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08027ec4
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08027ec4:
	mov		r0, #0x1
	neg		r0, r0
_08027ec8:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x27ECE, 0x2

_08027ed0:	.4byte 0x0400012A
_08027ed4:	.4byte 0x030002A0
_08027ed8:	.4byte 0x04000128
_08027edc:	.4byte 0x03000250
_08027ee0:	.4byte 0x0300024C
	thumb_func_end sub_08027da8

	thumb_func_start sub_08027ee4
sub_08027ee4:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _08027f58
	ldr		r1, [r0, #0x0]
	mov		r12, r0
	cmp		r1, #0x3
	bgt		_08027f50
	ldr		r0, _08027f5c
	lsl		r1, r1, #0x4
	add		r1, r1, r0
	ldr		r1, [r1, #0x0]
	add		r4, r0, #0x0
	cmp		r1, #0xff
	beq		_08027f50
	ldr		r2, _08027f60
	ldr		r1, [r2, #0x0]
	mov		r3, #0x0
	ldr		r0, [r2, #0x4]
	add		r7, r2, #0x0
	ldr		r6, _08027f64
	ldr		r5, _08027f68
	cmp		r1, r0
	beq		_08027f1a
_08027f10:
	add		r1, #0x1
	add		r3, #0x1
	ldr		r0, [r2, #0x4]
	cmp		r1, r0
	bne		_08027f10
_08027f1a:
	ldr		r1, [r6, #0x0]
	ldr		r0, [r5, #0x0]
	cmp		r1, r0
	bne		_08027f46
	ldr		r0, _08027f6c
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x34]
	cmp		r3, r0
	ble		_08027f46
	mov		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r4
	mov		r1, #0xff
	str		r1, [r0, #0x0]
	mov		r0, #0xf0
	mov		r2, r12
	str		r0, [r2, #0x0]
	str		r1, [r4, #0x0]
	str		r1, [r4, #0x10]
	str		r1, [r4, #0x20]
	str		r1, [r4, #0x30]
_08027f46:
	ldr		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
	ldr		r0, [r7, #0x4]
	add		r0, #0x1
	str		r0, [r7, #0x4]
_08027f50:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x27F56, 0x2

_08027f58:	.4byte 0x0300024C
_08027f5c:	.4byte 0x030001F8
_08027f60:	.4byte 0x03000288
_08027f64:	.4byte 0x0203EEF8
_08027f68:	.4byte 0x03000290
_08027f6c:	.4byte 0x030002A0

.incbin "base.gba", 0x27F70, 0x6C
	thumb_func_end sub_08027ee4

	thumb_func_start sub_08027fdc
sub_08027fdc:
	ldr		r0, _08027fec
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_08027ff0
	mov		r0, #0x8
	neg		r0, r0
	b		_08027ff2

.incbin "base.gba", 0x27FEA, 0x2

_08027fec:	.4byte 0x03000294

_08027ff0:
	mov		r0, #0x0
_08027ff2:
	bx		lr

.incbin "base.gba", 0x27FF4, 0x54
	thumb_func_end sub_08027fdc

	thumb_func_start sub_08028048
sub_08028048:
	ldr		r1, _08028070
	lsl		r2, r0, #0x4
	add		r3, r1, #0x4
	add		r3, r2, r3
	add		r1, #0x8
	add		r2, r2, r1
	ldr		r1, _08028074
	ldr		r1, [r1, #0x0]
	lsl		r0, r0, #0x3
	add		r1, #0x10
	add		r1, r1, r0
	ldr		r3, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r1, [r1, #0x0]
	cmp		r3, r0
	bhi		_08028078
	sub		r0, r0, r3
	asr		r1, r0, #0x1
	b		_0802807e

.incbin "base.gba", 0x2806E, 0x2

_08028070:	.4byte 0x030001F8
_08028074:	.4byte 0x030002A0

_08028078:
	sub		r0, r3, r0
	asr		r0, r0, #0x1
	sub		r1, r1, r0
_0802807e:
	ldr		r2, _0802808c
	ldr		r0, [r2, #0x0]
	cmp		r1, r0
	ble		_08028088
	str		r1, [r2, #0x0]
_08028088:
	add		r0, r1, #0x0
	bx		lr

_0802808c:	.4byte 0x030002B8

.incbin "base.gba", 0x28090, 0x34
	thumb_func_end sub_08028048

	thumb_func_start sub_080280c4
sub_080280c4:
	push	{ lr }
	bl		sub_08027da8
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x280CE, 0x1A
	ldr		r1, _08028100
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _08028104
	ldr		r0, _08028108
	ldr		r0, [r0, #0x0]
	mov		r3, #0xc1
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

_08028100:	.4byte 0x0400010E
_08028104:	.4byte 0x04000128
_08028108:	.4byte 0x03000250
	push	{ lr }
	bl		sub_080277f0
	ldr		r0, _08028124
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x38]
	cmp		r0, #0x0
	beq		_08028120
	bl		sub_0807d7d0
_08028120:
	pop		{ r0 }
	bx		r0

_08028124:	.4byte 0x030002A0

.incbin "base.gba", 0x28128, 0x8
	thumb_func_end sub_080280c4

	thumb_func_start sub_08028130
sub_08028130:
	lsl		r0, r0, #0x9
	ldr		r1, _08028138
	add		r0, r0, r1
	bx		lr

_08028138:	.4byte 0x030002C0
	thumb_func_end sub_08028130

	thumb_func_start sub_0802813c
sub_0802813c:
	push	{ lr }
	sub		sp, #0x4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r1, _0802815c
	ldr		r2, _08028160
	mov		r0, sp
	bl		sub_08071b68
	ldr		r1, _08028164
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	add		sp, #0x4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2815A, 0x2

_0802815c:	.4byte 0x030002C0
_08028160:	.4byte 0x01000100
_08028164:	.4byte 0x030006C0
	thumb_func_end sub_0802813c

	thumb_func_start sub_08028168
sub_08028168:
	ldr		r1, _08028170
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x2816E, 0x2

_08028170:	.4byte 0x030006C0
	thumb_func_end sub_08028168

	thumb_func_start sub_08028174
sub_08028174:
	ldr		r2, _08028194
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08028192
	ldr		r1, _08028198
	ldr		r0, _0802819c
	str		r0, [r1, #0x0]
	mov		r0, #0xa0
	lsl		r0, r0, #0x13
	str		r0, [r1, #0x4]
	ldr		r0, _080281a0
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
	mov		r0, #0x0
	str		r0, [r2, #0x0]
_08028192:
	bx		lr

_08028194:	.4byte 0x030006C0
_08028198:	.4byte 0x040000B0
_0802819c:	.4byte 0x030002C0
_080281a0:	.4byte 0x80000200
	thumb_func_end sub_08028174

	thumb_func_start sub_080281a4
sub_080281a4:
	lsl		r0, r0, #0xb
	ldr		r1, _080281ac
	add		r0, r0, r1
	bx		lr

_080281ac:	.4byte 0x030006C8
	thumb_func_end sub_080281a4

	thumb_func_start sub_080281b0
sub_080281b0:
	lsl		r0, r0, #0xb
	lsl		r2, r2, #0x5
	add		r2, r2, r1
	lsl		r2, r2, #0x1
	ldr		r1, _080281c0
	add		r2, r2, r1
	add		r0, r0, r2
	bx		lr

_080281c0:	.4byte 0x030006C8
	thumb_func_end sub_080281b0

	thumb_func_start sub_080281c4
sub_080281c4:
	ldr		r2, _080281d0
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	str		r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x281CE, 0x2

_080281d0:	.4byte 0x030016D0
	thumb_func_end sub_080281c4

	thumb_func_start sub_080281d4
sub_080281d4:
	push	{ lr }
	sub		sp, #0x4
	add		r1, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	lsl		r1, r1, #0xb
	ldr		r0, _080281f4
	add		r1, r1, r0
	ldr		r2, _080281f8
	mov		r0, sp
	bl		sub_08071b68
	add		sp, #0x4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x281F2, 0x2

_080281f4:	.4byte 0x030006C8
_080281f8:	.4byte 0x01000200
	thumb_func_end sub_080281d4

	thumb_func_start sub_080281fc
sub_080281fc:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _0802820c
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

.incbin "base.gba", 0x2820A, 0x2

_0802820c:	.4byte 0x030016C8
	thumb_func_end sub_080281fc

	thumb_func_start sub_08028210
sub_08028210:
	ldr		r3, _08028258
	ldrh	r2, [r3, #0x0]
	mov		r0, #0x1
	and		r0, r2
	cmp		r0, #0x0
	beq		_08028234
	ldr		r1, _0802825c
	ldr		r0, _08028260
	str		r0, [r1, #0x0]
	ldr		r0, _08028264
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x4]
	ldr		r0, _08028268
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
	ldr		r0, _0802826c
	and		r0, r2
	strh	r0, [r3, #0x0]
_08028234:
	ldrh	r2, [r3, #0x0]
	mov		r0, #0x2
	and		r0, r2
	cmp		r0, #0x0
	beq		_08028256
	ldr		r1, _0802825c
	ldr		r0, _08028270
	str		r0, [r1, #0x0]
	ldr		r0, _08028264
	ldr		r0, [r0, #0x4]
	str		r0, [r1, #0x4]
	ldr		r0, _08028268
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
	ldr		r0, _08028274
	and		r0, r2
	strh	r0, [r3, #0x0]
_08028256:
	bx		lr

_08028258:	.4byte 0x030016C8
_0802825c:	.4byte 0x040000B0
_08028260:	.4byte 0x030006C8
_08028264:	.4byte 0x030016D0
_08028268:	.4byte 0x84000200
_0802826c:	.4byte 0x0000FFFE
_08028270:	.4byte 0x03000EC8
_08028274:	.4byte 0x0000FFFD
	thumb_func_end sub_08028210

	thumb_func_start sub_08028278
sub_08028278:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x8
	cmp		r0, #0x0
	bge		_08028288
	neg		r0, r0
_08028288:
	str		r0, [sp, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	cmp		r1, #0x0
	bge		_08028294
	neg		r1, r1
_08028294:
	add		r6, r1, #0x0
	mov		r7, #0x0
	ldr		r2, [sp, #0x4]
	cmp		r7, r2
	bhi		_080282a8
	cmp		r7, r2
	bne		_080282b4
	ldr		r3, [sp, #0x0]
	cmp		r6, r3
	bls		_080282b4
_080282a8:
	ldr		r4, [sp, #0x0]
	ldr		r5, [sp, #0x4]
	str		r6, [sp, #0x0]
	str		r7, [sp, #0x4]
	add		r7, r5, #0x0
	add		r6, r4, #0x0
_080282b4:
	add		r0, r7, #0x0
	orr		r0, r6
	cmp		r0, #0x0
	bne		_080282c0
	ldr		r0, [sp, #0x0]
	b		_0802839e
_080282c0:
	ldr		r0, [sp, #0x4]
	cmp		r0, #0x0
	bhi		_080282d6
	cmp		r0, #0x0
	bne		_080282d0
	ldr		r2, [sp, #0x0]
	cmp		r2, #0xff
	bhi		_080282d6
_080282d0:
	mov		r3, #0x10
	mov		r9, r3
	b		_080282da
_080282d6:
	mov		r0, #0x0
	mov		r9, r0
_080282da:
	ldr		r0, [sp, #0x0]
	ldr		r1, [sp, #0x4]
	mov		r2, r9
	bl		sub_0807d79c
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, r7, #0x0
	add		r0, r6, #0x0
	mov		r2, r9
	bl		sub_0807d79c
	add		r7, r1, #0x0
	add		r6, r0, #0x0
	mov		r2, #0x0
	mov		r8, r2
_080282fa:
	lsr		r3, r6, #0x10
	lsl		r2, r7, #0x10
	add		r1, r3, #0x0
	orr		r1, r2
	lsl		r0, r6, #0x10
	ldr		r2, [sp, #0x0]
	ldr		r3, [sp, #0x4]
	bl		sub_0807da18
	add		r5, r1, #0x0
	add		r4, r0, #0x0
	add		r3, r5, #0x0
	add		r2, r4, #0x0
	bl		sub_0807d9a8
	lsl		r3, r1, #0x10
	lsr		r2, r0, #0x10
	add		r4, r3, #0x0
	orr		r4, r2
	lsr		r5, r1, #0x10
	lsr		r3, r4, #0x18
	lsl		r2, r5, #0x8
	add		r1, r3, #0x0
	orr		r1, r2
	lsl		r0, r4, #0x8
	ldr		r3, _080283b0
	ldr		r2, _080283ac
	add		r2, r2, r4
	adc		r3, r5
	lsl		r5, r3, #0x18
	lsr		r4, r2, #0x8
	add		r2, r5, #0x0
	orr		r2, r4
	lsr		r3, r3, #0x8
	bl		sub_0807da18
	add		r5, r1, #0x0
	add		r4, r0, #0x0
	ldr		r0, [sp, #0x0]
	ldr		r1, [sp, #0x4]
	add		r3, r5, #0x0
	add		r2, r4, #0x0
	bl		sub_0807d9a8
	lsl		r3, r1, #0x11
	lsr		r2, r0, #0xf
	add		r0, r3, #0x0
	orr		r0, r2
	lsr		r1, r1, #0xf
	ldr		r2, [sp, #0x0]
	ldr		r3, [sp, #0x4]
	add		r2, r2, r0
	adc		r3, r1
	str		r2, [sp, #0x0]
	str		r3, [sp, #0x4]
	add		r1, r7, #0x0
	add		r0, r6, #0x0
	add		r3, r5, #0x0
	add		r2, r4, #0x0
	bl		sub_0807d9a8
	lsl		r3, r1, #0x10
	lsr		r2, r0, #0x10
	add		r6, r3, #0x0
	orr		r6, r2
	lsr		r7, r1, #0x10
	mov		r0, r8
	add		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	cmp		r0, #0x2
	bls		_080282fa
	ldr		r0, [sp, #0x0]
	ldr		r1, [sp, #0x4]
	mov		r2, r9
	bl		sub_0807d8a4
	add		r5, r1, #0x0
	add		r4, r0, #0x0
	ldr		r0, _080283b4
	and		r0, r4
_0802839e:
	add		sp, #0x8
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080283ac:	.4byte 0x00040000
_080283b0:	.4byte 0x00000000
_080283b4:	.4byte 0x7FFFFFFF

.incbin "base.gba", 0x283B8, 0x234
	thumb_func_end sub_08028278

	thumb_func_start sub_080285ec
sub_080285ec:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x10
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	mov		r6, #0x0
	mov		r5, #0x0
	lsr		r3, r0, #0x10
	cmp		r0, #0x0
	ble		_0802860a
	lsl		r1, r4, #0x10
	asr		r0, r1, #0x10
	mvn		r0, r0
	lsr		r2, r0, #0x1f
	add		r0, r1, #0x0
	b		_08028614
_0802860a:
	lsl		r0, r4, #0x10
	mov		r2, #0x3
	cmp		r0, #0x0
	ble		_08028614
	mov		r2, #0x2
_08028614:
	cmp		r2, #0x1
	beq		_08028630
	cmp		r2, #0x1
	bgt		_08028622
	cmp		r2, #0x0
	beq		_0802862c
	b		_08028674
_08028622:
	cmp		r2, #0x2
	beq		_08028642
	cmp		r2, #0x3
	beq		_08028656
	b		_08028674
_0802862c:
	lsl		r0, r3, #0x18
	b		_0802866c
_08028630:
	cmp		r0, #0x0
	bne		_0802863a
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	b		_080286ba
_0802863a:
	lsl		r0, r3, #0x18
	lsr		r6, r0, #0x18
	lsl		r0, r4, #0x18
	b		_08028672
_08028642:
	cmp		r3, #0x0
	bne		_0802864c
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_080286ba
_0802864c:
	neg		r0, r3
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	lsl		r0, r4, #0x18
	b		_08028672
_08028656:
	cmp		r3, #0x0
	bne		_0802865e
	mov		r0, #0x0
	b		_080286ba
_0802865e:
	cmp		r0, #0x0
	bne		_08028668
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	b		_080286ba
_08028668:
	neg		r0, r3
	lsl		r0, r0, #0x18
_0802866c:
	lsr		r6, r0, #0x18
	neg		r0, r4
	lsl		r0, r0, #0x18
_08028672:
	lsr		r5, r0, #0x18
_08028674:
	ldr		r1, _08028690
	lsl		r0, r5, #0x7
	sub		r0, #0x81
	add		r0, r6, r0
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	cmp		r2, #0x2
	beq		_080286a0
	cmp		r2, #0x2
	bgt		_08028694
	cmp		r2, #0x1
	beq		_0802869a
	b		_080286b6

_08028690:	.4byte 0x080f9008

_08028694:
	cmp		r2, #0x3
	beq		_080286b0
	b		_080286b6
_0802869a:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_080286b4
_080286a0:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	ldr		r0, _080286ac
	and		r1, r0
	b		_080286b6

_080286ac:	.4byte 0x0000FFFF

_080286b0:
	mov		r0, #0x80
	lsl		r0, r0, #0x9
_080286b4:
	sub		r1, r0, r1
_080286b6:
	lsl		r0, r1, #0x10
	lsr		r0, r0, #0x10
_080286ba:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x286C0, 0x78
	thumb_func_end sub_080285ec

	thumb_func_start sub_08028738
sub_08028738:
	push	{ lr }
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08071b64
	lsl		r0, r0, #0x10
	mov		r1, #0x80
	lsl		r1, r1, #0x17
	add		r0, r0, r1
	lsr		r0, r0, #0x10
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x28754, 0x10
	thumb_func_end sub_08028738

	thumb_func_start sub_08028764
sub_08028764:
	add		r2, r0, #0x0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	beq		_08028774
	str		r1, [r0, #0x0]
	b		_08028776
_08028774:
	str		r1, [r2, #0x0]
_08028776:
	str		r1, [r2, #0x4]
	bx		lr

.incbin "base.gba", 0x2877A, 0x26
	thumb_func_end sub_08028764

	thumb_func_start sub_080287a0
sub_080287a0:
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x287A4, 0x4
	thumb_func_end sub_080287a0

	thumb_func_start sub_080287a8
sub_080287a8:
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x287AC, 0x1C
	thumb_func_end sub_080287a8

	thumb_func_start sub_080287c8
sub_080287c8:
	add		r3, r0, #0x0
	ldr		r2, [r3, #0x4]
	str		r2, [r1, #0x4]
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	cmp		r2, #0x0
	beq		_080287da
	str		r1, [r2, #0x0]
	b		_080287dc
_080287da:
	str		r1, [r3, #0x0]
_080287dc:
	str		r1, [r3, #0x4]
	bx		lr
	thumb_func_end sub_080287c8

	thumb_func_start sub_080287e0
sub_080287e0:
	add		r3, r0, #0x0
	ldr		r0, [r1, #0x4]
	str		r0, [r2, #0x4]
	str		r1, [r2, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_080287f2
	str		r2, [r0, #0x0]
	b		_080287f4
_080287f2:
	str		r2, [r3, #0x0]
_080287f4:
	str		r2, [r1, #0x4]
	bx		lr

.incbin "base.gba", 0x287F8, 0x50
	thumb_func_end sub_080287e0

	thumb_func_start sub_08028848
sub_08028848:
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r0, [r3, #0x0]
	cmp		r2, r0
	bne		_08028858
	ldr		r0, [r2, #0x0]
	str		r0, [r3, #0x0]
	b		_0802885e
_08028858:
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
_0802885e:
	ldr		r0, [r3, #0x4]
	cmp		r2, r0
	bne		_0802886a
	ldr		r0, [r2, #0x4]
	str		r0, [r3, #0x4]
	b		_08028870
_0802886a:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x4]
_08028870:
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	str		r0, [r2, #0x4]
	bx		lr
	thumb_func_end sub_08028848

	thumb_func_start sub_08028878
sub_08028878:
	mov		r1, #0x0
	str		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_08028878

	thumb_func_start sub_08028880
sub_08028880:
	mov		r1, #0x0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802888a
	mov		r1, #0x1
_0802888a:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x2888E, 0x2
	thumb_func_end sub_08028880

	thumb_func_start sub_08028890
sub_08028890:
	mov		r1, #0x0
	str		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_08028890

	thumb_func_start sub_08028898
sub_08028898:
	add		r3, r0, #0x0
	mov		r0, #0x0
	ldr		r2, [r3, #0x0]
	str		r0, [r1, #0x40]
	str		r2, [r1, #0x3c]
	cmp		r2, #0x0
	beq		_080288aa
	str		r1, [r2, #0x40]
	b		_080288ac
_080288aa:
	str		r1, [r3, #0x4]
_080288ac:
	str		r1, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x288B0, 0x48
	thumb_func_end sub_08028898

	thumb_func_start sub_080288f8
sub_080288f8:
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x3c]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_08028908
	mov		r0, #0x0
	str		r0, [r1, #0x40]
	b		_0802890a
_08028908:
	str		r1, [r0, #0x4]
_0802890a:
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	str		r0, [r2, #0x3c]
	add		r0, r2, #0x0
	bx		lr
	thumb_func_end sub_080288f8

	thumb_func_start sub_08028914
sub_08028914:
	ldr		r2, [r0, #0x4]
	ldr		r1, [r2, #0x40]
	str		r1, [r0, #0x4]
	cmp		r1, #0x0
	beq		_08028924
	mov		r0, #0x0
	str		r0, [r1, #0x3c]
	b		_08028926
_08028924:
	str		r1, [r0, #0x0]
_08028926:
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	str		r0, [r2, #0x3c]
	add		r0, r2, #0x0
	bx		lr
	thumb_func_end sub_08028914

	thumb_func_start sub_08028930
sub_08028930:
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_0802894c
	ldr		r2, [r1, #0x3c]
	str		r2, [r3, #0x0]
	cmp		r2, #0x0
	beq		_08028948
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	b		_08028962
_08028948:
	str		r2, [r3, #0x4]
	b		_08028962
_0802894c:
	ldr		r0, [r3, #0x4]
	cmp		r1, r0
	bne		_0802896a
	ldr		r2, [r1, #0x40]
	str		r2, [r3, #0x4]
	cmp		r2, #0x0
	beq		_08028960
	mov		r0, #0x0
	str		r0, [r2, #0x3c]
	b		_08028962
_08028960:
	str		r2, [r3, #0x0]
_08028962:
	mov		r0, #0x0
	str		r0, [r1, #0x40]
	str		r0, [r1, #0x3c]
	b		_0802897c
_0802896a:
	ldr		r1, [r2, #0x40]
	ldr		r0, [r2, #0x3c]
	str		r0, [r1, #0x3c]
	ldr		r1, [r2, #0x3c]
	ldr		r0, [r2, #0x40]
	str		r0, [r1, #0x40]
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	str		r0, [r2, #0x3c]
_0802897c:
	bx		lr

.incbin "base.gba", 0x2897E, 0xA
	thumb_func_end sub_08028930

	thumb_func_start sub_08028988
sub_08028988:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	mov		r8, r2
	mov		r9, r3
	mov		r2, #0x0
	sub		r0, r7, #0x1
	cmp		r2, r0
	bge		_080289e8
	mov		r10, r0
_080289a4:
	lsl		r1, r2, #0x2
	add		r0, r1, r6
	ldr		r0, [r0, #0x0]
	add		r0, #0x36
	ldrb	r5, [r0, #0x0]
	add		r4, r2, #0x0
	add		r3, r4, #0x1
	add		r2, r1, #0x0
	mov		r12, r3
	cmp		r3, r7
	bge		_080289d4
	lsl		r0, r3, #0x2
	add		r1, r0, r6
_080289be:
	ldr		r0, [r1, #0x0]
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	cmp		r0, r5
	bge		_080289cc
	add		r5, r0, #0x0
	add		r4, r3, #0x0
_080289cc:
	add		r1, #0x4
	add		r3, #0x1
	cmp		r3, r7
	blt		_080289be
_080289d4:
	lsl		r1, r4, #0x2
	add		r1, r1, r6
	ldr		r3, [r1, #0x0]
	add		r2, r2, r6
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	str		r3, [r2, #0x0]
	mov		r2, r12
	cmp		r2, r10
	blt		_080289a4
_080289e8:
	mov		r3, #0x0
	mov		r2, #0x0
	mov		r4, #0x0
	cmp		r2, r7
	bge		_08028a28
_080289f2:
	lsl		r0, r3, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	add		r0, #0x36
	add		r3, #0x1
	mov		r10, r3
	add		r3, r4, #0x1
	ldrb	r1, [r0, #0x0]
	cmp		r2, r1
	bgt		_08028a16
	add		r1, r0, #0x0
_08028a08:
	mov		r5, r8
	add		r0, r5, r2
	strb	r4, [r0, #0x0]
	add		r2, #0x1
	ldrb	r0, [r1, #0x0]
	cmp		r2, r0
	ble		_08028a08
_08028a16:
	add		r4, r3, #0x0
	mov		r3, r10
	cmp		r3, r7
	blt		_080289f2
	b		_08028a28
_08028a20:
	mov		r1, r8
	add		r0, r1, r2
	strb	r4, [r0, #0x0]
	add		r2, #0x1
_08028a28:
	cmp		r2, r9
	blt		_08028a20
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x28A3A, 0x2
	thumb_func_end sub_08028988

	thumb_func_start sub_08028a3c
sub_08028a3c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	str		r2, [sp, #0x8]
	mov		r3, #0x0
	ldrb	r0, [r0, #0x0]
	cmp		r3, r0
	blt		_08028a58
	b		_08028c54
_08028a58:
	ldr		r1, [sp, #0x0]
	add		r1, #0x4
	mov		r9, r1
_08028a5e:
	lsl		r0, r3, #0x2
	add		r0, r9
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r4, r3, #0x1
	mov		r10, r4
	cmp		r0, #0x7f
	bne		_08028a74
	b		_08028c48
_08028a74:
	sub		r1, r0, #0x2
	add		r2, r0, #0x3
	cmp		r1, #0x0
	bge		_08028a80
	ldr		r0, [sp, #0x8]
	add		r1, r1, r0
_08028a80:
	ldr		r4, [sp, #0x8]
	cmp		r2, r4
	blt		_08028a88
	sub		r2, r2, r4
_08028a88:
	ldr		r4, [sp, #0x4]
	add		r0, r4, r1
	ldrb	r7, [r0, #0x0]
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	cmp		r7, r3
	bgt		_08028a9a
	mov		r7, r10
_08028a9a:
	cmp		r7, r8
	bge		_08028b28
	add		r6, r7, #0x0
_08028aa0:
	lsl		r0, r6, #0x2
	add		r0, r9
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028b20
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028abe
	neg		r1, r1
_08028abe:
	cmp		r1, r2
	bgt		_08028b20
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028ad6
	neg		r1, r1
_08028ad6:
	cmp		r1, r2
	bgt		_08028b20
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028aee
	neg		r1, r1
_08028aee:
	cmp		r1, r2
	bgt		_08028b20
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028b00
	mov		r0, #0x0
_08028b00:
	cmp		r0, #0x0
	beq		_08028b20
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028b12
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028b12:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028b20
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028b20:
	add		r6, #0x1
	cmp		r6, r8
	blt		_08028aa0
	b		_08028c48
_08028b28:
	mov		r6, r10
	cmp		r10, r8
	bge		_08028bb4
_08028b2e:
	lsl		r0, r6, #0x2
	add		r0, r9
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028bae
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028b4c
	neg		r1, r1
_08028b4c:
	cmp		r1, r2
	bgt		_08028bae
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028b64
	neg		r1, r1
_08028b64:
	cmp		r1, r2
	bgt		_08028bae
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028b7c
	neg		r1, r1
_08028b7c:
	cmp		r1, r2
	bgt		_08028bae
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028b8e
	mov		r0, #0x0
_08028b8e:
	cmp		r0, #0x0
	beq		_08028bae
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028ba0
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028ba0:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028bae
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028bae:
	add		r6, #0x1
	cmp		r6, r8
	blt		_08028b2e
_08028bb4:
	add		r6, r7, #0x0
	ldr		r0, [sp, #0x0]
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_08028c48
_08028bbe:
	lsl		r0, r6, #0x2
	add		r0, r9
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028c3e
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028bdc
	neg		r1, r1
_08028bdc:
	cmp		r1, r2
	bgt		_08028c3e
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028bf4
	neg		r1, r1
_08028bf4:
	cmp		r1, r2
	bgt		_08028c3e
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028c0c
	neg		r1, r1
_08028c0c:
	cmp		r1, r2
	bgt		_08028c3e
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028c1e
	mov		r0, #0x0
_08028c1e:
	cmp		r0, #0x0
	beq		_08028c3e
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028c30
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028c30:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028c3e
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028c3e:
	add		r6, #0x1
	ldr		r1, [sp, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r6, r1
	blt		_08028bbe
_08028c48:
	mov		r3, r10
	ldr		r4, [sp, #0x0]
	ldrb	r4, [r4, #0x0]
	cmp		r3, r4
	bge		_08028c54
	b		_08028a5e
_08028c54:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08028a3c

	thumb_func_start sub_08028c64
sub_08028c64:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	mov		r2, #0x0
	ldrb	r1, [r7, #0x0]
	cmp		r2, r1
	bge		_08028d18
	add		r0, r7, #0x4
	mov		r9, r0
_08028c7a:
	lsl		r0, r2, #0x2
	add		r0, r9
	ldr		r5, [r0, #0x0]
	add		r6, r2, #0x1
	mov		r8, r6
	cmp		r8, r1
	bge		_08028d10
_08028c88:
	lsl		r0, r6, #0x2
	add		r0, r9
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028d08
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028ca6
	neg		r1, r1
_08028ca6:
	cmp		r1, r2
	bgt		_08028d08
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028cbe
	neg		r1, r1
_08028cbe:
	cmp		r1, r2
	bgt		_08028d08
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028cd6
	neg		r1, r1
_08028cd6:
	cmp		r1, r2
	bgt		_08028d08
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028ce8
	mov		r0, #0x0
_08028ce8:
	cmp		r0, #0x0
	beq		_08028d08
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028cfa
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028cfa:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028d08
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028d08:
	add		r6, #0x1
	ldrb	r0, [r7, #0x0]
	cmp		r6, r0
	blt		_08028c88
_08028d10:
	mov		r2, r8
	ldrb	r1, [r7, #0x0]
	cmp		r2, r1
	blt		_08028c7a
_08028d18:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08028c64

	thumb_func_start sub_08028d24
sub_08028d24:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	str		r1, [sp, #0x0]
	mov		r10, r2
	mov		r2, #0x0
	b		_08028f2c
_08028d3a:
	lsl		r1, r2, #0x2
	add		r0, r7, #0x4
	add		r0, r0, r1
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r2, #0x1
	str		r2, [sp, #0x4]
	cmp		r0, #0x7f
	bne		_08028d52
	b		_08028f2a
_08028d52:
	sub		r1, r0, #0x2
	add		r2, r0, #0x3
	cmp		r1, #0x0
	bge		_08028d5c
	add		r1, r10
_08028d5c:
	cmp		r2, r10
	blt		_08028d64
	mov		r3, r10
	sub		r2, r2, r3
_08028d64:
	ldr		r3, [sp, #0x0]
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	add		r0, r3, r2
	ldrb	r0, [r0, #0x0]
	mov		r9, r0
	cmp		r8, r9
	bge		_08028e06
	mov		r6, r8
	mov		r0, #0x64
	add		r0, r0, r7
	mov		r8, r0
_08028d7e:
	lsl		r0, r6, #0x2
	add		r0, r8
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028dfe
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028d9c
	neg		r1, r1
_08028d9c:
	cmp		r1, r2
	bgt		_08028dfe
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028db4
	neg		r1, r1
_08028db4:
	cmp		r1, r2
	bgt		_08028dfe
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028dcc
	neg		r1, r1
_08028dcc:
	cmp		r1, r2
	bgt		_08028dfe
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028dde
	mov		r0, #0x0
_08028dde:
	cmp		r0, #0x0
	beq		_08028dfe
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028df0
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028df0:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028dfe
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028dfe:
	add		r6, #0x1
	cmp		r6, r9
	blt		_08028d7e
	b		_08028f2a
_08028e06:
	mov		r6, #0x0
	cmp		r6, r9
	bge		_08028e96
_08028e0c:
	lsl		r1, r6, #0x2
	add		r0, r7, #0x0
	add		r0, #0x64
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028e90
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028e2e
	neg		r1, r1
_08028e2e:
	cmp		r1, r2
	bgt		_08028e90
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028e46
	neg		r1, r1
_08028e46:
	cmp		r1, r2
	bgt		_08028e90
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028e5e
	neg		r1, r1
_08028e5e:
	cmp		r1, r2
	bgt		_08028e90
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028e70
	mov		r0, #0x0
_08028e70:
	cmp		r0, #0x0
	beq		_08028e90
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028e82
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028e82:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028e90
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028e90:
	add		r6, #0x1
	cmp		r6, r9
	blt		_08028e0c
_08028e96:
	mov		r6, r8
	ldrb	r1, [r7, #0x1]
	cmp		r6, r1
	bge		_08028f2a
_08028e9e:
	lsl		r1, r6, #0x2
	add		r0, r7, #0x0
	add		r0, #0x64
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028f22
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028ec0
	neg		r1, r1
_08028ec0:
	cmp		r1, r2
	bgt		_08028f22
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028ed8
	neg		r1, r1
_08028ed8:
	cmp		r1, r2
	bgt		_08028f22
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028ef0
	neg		r1, r1
_08028ef0:
	cmp		r1, r2
	bgt		_08028f22
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028f02
	mov		r0, #0x0
_08028f02:
	cmp		r0, #0x0
	beq		_08028f22
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028f14
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028f14:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028f22
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028f22:
	add		r6, #0x1
	ldrb	r3, [r7, #0x1]
	cmp		r6, r3
	blt		_08028e9e
_08028f2a:
	ldr		r2, [sp, #0x4]
_08028f2c:
	ldrb	r0, [r7, #0x0]
	cmp		r2, r0
	bge		_08028f34
	b		_08028d3a
_08028f34:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08028d24

	thumb_func_start sub_08028f44
sub_08028f44:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	mov		r2, #0x0
	b		_08028fee
_08028f50:
	lsl		r1, r2, #0x2
	add		r0, r6, #0x4
	add		r0, r0, r1
	ldr		r5, [r0, #0x0]
	mov		r7, #0x0
	add		r2, #0x1
	mov		r8, r2
	b		_08028fe6
_08028f60:
	lsl		r1, r7, #0x2
	add		r0, r6, #0x0
	add		r0, #0x64
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_08028fe4
	ldrb	r0, [r5, #0xc]
	ldrb	r1, [r4, #0xc]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x0]
	ldr		r0, [r4, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028f82
	neg		r1, r1
_08028f82:
	cmp		r1, r2
	bgt		_08028fe4
	ldrb	r0, [r5, #0xd]
	ldrb	r1, [r4, #0xd]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028f9a
	neg		r1, r1
_08028f9a:
	cmp		r1, r2
	bgt		_08028fe4
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r4, #0xe]
	add		r0, r0, r1
	lsl		r2, r0, #0xe
	ldr		r1, [r5, #0x8]
	ldr		r0, [r4, #0x8]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08028fb2
	neg		r1, r1
_08028fb2:
	cmp		r1, r2
	bgt		_08028fe4
	ldrh	r1, [r5, #0x38]
	ldrh	r0, [r4, #0x38]
	orr		r1, r0
	mov		r0, #0x1
	cmp		r1, #0x1
	ble		_08028fc4
	mov		r0, #0x0
_08028fc4:
	cmp		r0, #0x0
	beq		_08028fe4
	ldr		r2, [r5, #0x18]
	cmp		r2, #0x0
	beq		_08028fd6
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807d7d8
_08028fd6:
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08028fe4
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
_08028fe4:
	add		r7, #0x1
_08028fe6:
	ldrb	r0, [r6, #0x1]
	cmp		r7, r0
	blt		_08028f60
	mov		r2, r8
_08028fee:
	ldrb	r0, [r6, #0x0]
	cmp		r2, r0
	blt		_08028f50
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x28FFE, 0x2
	thumb_func_end sub_08028f44

	thumb_func_start sub_08029000
sub_08029000:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	ldrb	r2, [r3, #0x0]
	cmp		r2, #0x18
	beq		_0802901c
	lsl		r1, r2, #0x2
	add		r0, r3, #0x4
	add		r0, r0, r1
	str		r4, [r0, #0x0]
	add		r2, #0x1
	strb	r2, [r3, #0x0]
	mov		r0, #0x1
	b		_0802901e
_0802901c:
	mov		r0, #0x0
_0802901e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08029000

	thumb_func_start sub_08029024
sub_08029024:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	ldrb	r2, [r3, #0x1]
	cmp		r2, #0x40
	beq		_08029040
	lsl		r1, r2, #0x2
	add		r0, #0x64
	add		r0, r0, r1
	str		r4, [r0, #0x0]
	add		r2, #0x1
	strb	r2, [r3, #0x1]
	mov		r0, #0x1
	b		_08029042
_08029040:
	mov		r0, #0x0
_08029042:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08029024

	thumb_func_start sub_08029048
sub_08029048:
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	strb	r1, [r0, #0x1]
	bx		lr
	thumb_func_end sub_08029048

	thumb_func_start sub_08029050
sub_08029050:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _0802909c
	ldrh	r7, [r0, #0x38]
	ldr		r1, _080290a0
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_080290ac
	add		r0, r6, #0x4
	ldrb	r1, [r6, #0x0]
	ldr		r5, _080290a4
	add		r2, r5, #0x0
	add		r3, r7, #0x0
	bl		sub_08028988
	add		r0, r6, #0x0
	add		r0, #0x64
	ldrb	r1, [r6, #0x1]
	ldr		r4, _080290a8
	add		r2, r4, #0x0
	add		r3, r7, #0x0
	bl		sub_08028988
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	add		r2, r7, #0x0
	bl		sub_08028a3c
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r7, #0x0
	bl		sub_08028d24
	b		_080290b8

_0802909c:	.4byte 0x030031A0
_080290a0:	.4byte 0x000007FE
_080290a4:	.4byte 0x03005230
_080290a8:	.4byte 0x03003020

_080290ac:
	add		r0, r6, #0x0
	bl		sub_08028c64
	add		r0, r6, #0x0
	bl		sub_08028f44
_080290b8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x290BE, 0x2
	thumb_func_end sub_08029050

	thumb_func_start sub_080290c0
sub_080290c0:
	mov		r2, #0x0
	mov		r1, #0x0
	strh	r1, [r0, #0x10]
	str		r1, [r0, #0x0]
	str		r1, [r0, #0x4]
	str		r1, [r0, #0x8]
	strh	r1, [r0, #0x26]
	str		r1, [r0, #0x28]
	str		r1, [r0, #0x2c]
	str		r1, [r0, #0x30]
	strh	r1, [r0, #0x20]
	strh	r1, [r0, #0x22]
	strh	r1, [r0, #0x24]
	strb	r2, [r0, #0xc]
	strb	r2, [r0, #0xd]
	strb	r2, [r0, #0xe]
	strh	r1, [r0, #0x34]
	add		r3, r0, #0x0
	add		r3, #0x36
	mov		r2, #0x7f
	strb	r2, [r3, #0x0]
	strh	r1, [r0, #0x38]
	str		r1, [r0, #0x14]
	str		r1, [r0, #0x18]
	bx		lr

.incbin "base.gba", 0x290F2, 0x2
	thumb_func_end sub_080290c0

	thumb_func_start sub_080290f4
sub_080290f4:
	mov		r3, #0x1e
	ldrsh	r2, [r0, r3]
	mov		r3, #0x1e
	ldrsh	r0, [r1, r3]
	mov		r1, #0x0
	cmp		r2, r0
	bge		_08029104
	mov		r1, #0x1
_08029104:
	add		r0, r1, #0x0
	bx		lr
	thumb_func_end sub_080290f4

	thumb_func_start sub_08029108
sub_08029108:
	mov		r3, #0x20
	ldrsh	r2, [r0, r3]
	mov		r3, #0x20
	ldrsh	r0, [r1, r3]
	mov		r1, #0x0
	cmp		r2, r0
	ble		_08029118
	mov		r1, #0x1
_08029118:
	add		r0, r1, #0x0
	bx		lr
	thumb_func_end sub_08029108

	thumb_func_start sub_0802911c
sub_0802911c:
	ldrb	r0, [r0, #0x1e]
	ldrb	r1, [r1, #0x1e]
	sub		r0, r0, r1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_08029132
	neg		r0, r0
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
_08029132:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x29136, 0x2
	thumb_func_end sub_0802911c

	thumb_func_start sub_08029138
sub_08029138:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r6, r0, #0x0
	ldr		r4, _08029170
	add		r4, #0x24
	add		r5, r6, #0x0
	add		r5, #0x1c
	add		r3, r6, #0x0
	add		r3, #0x24
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	bl		sub_080448d0
	add		r2, r6, #0x0
	add		r2, #0x20
	ldr		r3, [r6, #0x8]
	mov		r1, #0x24
	ldrsh	r0, [r6, r1]
	str		r0, [sp, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_080448e4
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08029170:	.4byte 0x030031A0
	thumb_func_end sub_08029138

	thumb_func_start sub_08029174
sub_08029174:
	push	{ r4, lr }
	mov		r1, #0x20
	ldrsh	r3, [r0, r1]
	mov		r1, #0x22
	ldrsh	r2, [r0, r1]
	ldrh	r4, [r0, #0x24]
	ldrh	r0, [r0, #0x34]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080291ae
	add		r1, r3, #0x0
	add		r1, #0x40
	mov		r0, #0xb8
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bhi		_080291ae
	cmp		r2, #0x0
	blt		_080291ae
	cmp		r2, #0xe0
	bgt		_080291ae
	lsl		r0, r4, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x7f
	ble		_080291ae
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r1, r0
	ble		_080291b2
_080291ae:
	mov		r0, #0x0
	b		_080291b4
_080291b2:
	mov		r0, #0x1
_080291b4:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x291BA, 0x2
	thumb_func_end sub_08029174

	thumb_func_start sub_080291bc
sub_080291bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x28
	mov		r10, r0
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	mov		r1, r10
	ldrh	r1, [r1, #0x4]
	str		r1, [sp, #0x0]
	mov		r2, r10
	ldrh	r2, [r2, #0x6]
	str		r2, [sp, #0x4]
	ldrh	r3, [r0, #0x0]
	str		r3, [sp, #0x8]
	mov		r4, #0x2
	add		r9, r4
	mov		r5, r10
	ldrh	r5, [r5, #0x20]
	str		r5, [sp, #0xC]
	mov		r6, r10
	ldrh	r6, [r6, #0x22]
	str		r6, [sp, #0x10]
	ldr		r0, _080292c4
	ldr		r1, [r0, #0x0]
	ldr		r2, _080292c8
	cmp		r1, r2
	ble		_080291fa
	b		_08029350
_080291fa:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	ldr		r1, [sp, #0xC]
	cmp		r1, r0
	bne		_080292d4
	ldr		r3, [sp, #0x10]
	cmp		r3, r1
	bne		_080292d4
	mov		r4, r10
	ldr		r0, [r4, #0x18]
	cmp		r0, r1
	bne		_080292d4
	ldr		r5, [sp, #0x8]
	cmp		r5, #0x0
	bgt		_0802921a
	b		_080294f2
_0802921a:
	mov		r12, r2
	ldr		r7, _080292cc
	add		r6, r7, #0x4
	mov		r8, r6
_08029222:
	ldr		r0, _080292c4
	ldr		r6, [r0, #0x0]
	cmp		r6, r12
	ble		_0802922c
	b		_080294f2
_0802922c:
	mov		r1, r9
	ldrh	r5, [r1, #0x0]
	mov		r2, #0x2
	add		r9, r2
	lsl		r4, r6, #0x1
	add		r2, r4, r7
	ldr		r3, [sp, #0x4]
	add		r1, r5, r3
	mov		r0, #0xff
	and		r1, r0
	mov		r3, #0xff
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r5, r0
	orr		r1, r5
	strh	r1, [r2, #0x0]
	mov		r0, r9
	ldrh	r5, [r0, #0x0]
	mov		r1, #0x2
	add		r9, r1
	add		r2, r7, #0x2
	add		r2, r4, r2
	ldr		r3, [sp, #0x0]
	add		r1, r5, r3
	mov		r0, r12
	and		r1, r0
	mov		r3, #0xfe
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r5, r0
	orr		r1, r5
	strh	r1, [r2, #0x0]
	lsr		r2, r6, #0x1f
	add		r2, r6, r2
	asr		r2, r2, #0x1
	lsl		r2, r2, #0x2
	add		r3, r2, r7
	ldr		r0, [r3, #0x0]
	mov		r5, r10
	ldr		r1, [r5, #0xc]
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, [r3, #0x0]
	ldr		r1, [r5, #0x8]
	orr		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, [r3, #0x0]
	ldr		r1, _080292d0
	and		r0, r1
	str		r0, [r3, #0x0]
	mov		r0, r9
	ldrh	r5, [r0, #0x0]
	mov		r1, #0x2
	add		r9, r1
	add		r4, r8
	strh	r5, [r4, #0x0]
	add		r2, r8
	ldr		r0, [r2, #0x0]
	mov		r3, r10
	ldr		r1, [r3, #0x14]
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r1, [r3, #0x10]
	orr		r0, r1
	str		r0, [r2, #0x0]
	add		r0, r6, #0x4
	ldr		r4, _080292c4
	str		r0, [r4, #0x0]
	ldr		r5, [sp, #0x8]
	sub		r5, #0x1
	str		r5, [sp, #0x8]
	cmp		r5, #0x0
	bgt		_08029222
	b		_080294f2

.incbin "base.gba", 0x292C2, 0x2

_080292c4:	.4byte 0x030016D8
_080292c8:	.4byte 0x000001FF
_080292cc:	.4byte 0x030016E0
_080292d0:	.4byte 0xfffffcff

_080292d4:
	mov		r6, r9
	ldrh	r5, [r6, #0x2]
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r0, r5
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_080292e6
	sub		r1, #0x2
_080292e6:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r5, r0
	mov		r2, #0x1
	cmp		r5, #0x0
	beq		_080292f4
	sub		r2, #0x2
_080292f4:
	mov		r3, r10
	mov		r4, #0x18
	ldrsh	r0, [r3, r4]
	add		r5, r0, #0x0
	mul		r5, r1
	strh	r5, [r3, #0x18]
	mov		r6, #0x1a
	ldrsh	r0, [r3, r6]
	mul		r0, r1
	strh	r0, [r3, #0x1a]
	mov		r1, #0x1c
	ldrsh	r0, [r3, r1]
	mul		r0, r2
	strh	r0, [r3, #0x1c]
	mov		r4, #0x1e
	ldrsh	r0, [r3, r4]
	mul		r0, r2
	strh	r0, [r3, #0x1e]
	ldr		r6, _08029358
	ldr		r4, [r6, #0x0]
	cmp		r4, #0x1f
	bgt		_08029350
	lsl		r3, r4, #0x5
	ldr		r2, _0802935c
	add		r0, r3, r2
	strh	r5, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x8
	add		r0, r3, r0
	mov		r5, r10
	ldrh	r1, [r5, #0x1a]
	strh	r1, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x10
	add		r0, r3, r0
	ldrh	r1, [r5, #0x1c]
	strh	r1, [r0, #0x0]
	add		r2, #0x18
	add		r3, r3, r2
	ldrh	r0, [r5, #0x1e]
	strh	r0, [r3, #0x0]
	add		r0, r4, #0x1
	str		r0, [r6, #0x0]
	str		r4, [sp, #0x18]
	cmp		r4, #0x0
	bge		_08029360
_08029350:
	mov		r0, #0x1
	neg		r0, r0
	b		_080294f4

.incbin "base.gba", 0x29356, 0x2

_08029358:	.4byte 0x030016DC
_0802935c:	.4byte 0x030016E6

_08029360:
	ldr		r0, [sp, #0xC]
	cmp		r0, #0xff
	ble		_0802936c
	ldr		r0, [sp, #0x10]
	cmp		r0, #0xff
	bgt		_08029374
_0802936c:
	mov		r6, #0xc0
	lsl		r6, r6, #0x2
	str		r6, [sp, #0x14]
	b		_0802937a
_08029374:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	str		r0, [sp, #0x14]
_0802937a:
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x0
	bgt		_08029382
	b		_080294f2
_08029382:
	mov		r2, r9
	ldrh	r0, [r2, #0x0]
	lsr		r3, r0, #0xe
	ldrh	r0, [r2, #0x2]
	lsr		r4, r0, #0xe
	ldr		r5, _0802941c
	ldr		r0, [r5, #0x0]
	ldr		r6, _08029420
	cmp		r0, r6
	ble		_08029398
	b		_080294f2
_08029398:
	ldrh	r5, [r2, #0x0]
	mov		r0, #0x2
	add		r9, r0
	mov		r2, #0xff
	and		r2, r5
	lsl		r0, r2, #0x18
	asr		r6, r0, #0x18
	ldr		r1, _08029424
	lsl		r4, r4, #0x2
	lsl		r3, r3, #0x4
	add		r0, r4, r3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	add		r7, r6, r0
	lsl		r6, r7, #0x8
	add		r0, r6, #0x0
	ldr		r1, [sp, #0x10]
	str		r2, [sp, #0x20]
	str		r3, [sp, #0x24]
	bl		sub_08071b70
	add		r6, r0, #0x0
	sub		r0, r6, r7
	ldr		r2, [sp, #0x20]
	add		r6, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r7, r4, #0x0
	ldr		r3, [sp, #0x24]
	add		r4, r3, #0x0
	ldr		r1, [sp, #0x14]
	cmp		r1, r0
	beq		_080293e0
	mov		r2, r8
	sub		r6, r6, r2
_080293e0:
	ldr		r3, _0802941c
	ldr		r2, [r3, #0x0]
	lsl		r2, r2, #0x1
	ldr		r0, _08029428
	add		r2, r2, r0
	ldr		r1, [sp, #0x4]
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r6
	mov		r1, #0xff
	and		r0, r1
	mov		r3, #0xff
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	and		r5, r1
	orr		r0, r5
	strh	r0, [r2, #0x0]
	mov		r6, r9
	ldrh	r5, [r6, #0x0]
	mov		r0, #0x2
	add		r9, r0
	add		r2, r5, #0x0
	ldr		r1, _08029420
	and		r2, r1
	cmp		r2, #0xff
	ble		_0802942c
	add		r0, r2, #0x0
	eor		r0, r1
	neg		r6, r0
	b		_0802942e

_0802941c:	.4byte 0x030016D8
_08029420:	.4byte 0x000001FF
_08029424:	.4byte 0x08101038
_08029428:	.4byte 0x030016E0

_0802942c:
	add		r6, r2, #0x0
_0802942e:
	ldr		r1, _08029504
	add		r0, r7, r4
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	add		r7, r6, r4
	lsl		r6, r7, #0x8
	add		r0, r6, #0x0
	ldr		r1, [sp, #0xC]
	str		r2, [sp, #0x20]
	bl		sub_08071b70
	add		r6, r0, #0x0
	sub		r0, r6, r7
	ldr		r2, [sp, #0x20]
	add		r6, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	ldr		r2, [sp, #0x14]
	cmp		r2, r0
	beq		_08029458
	sub		r6, r6, r4
_08029458:
	ldr		r3, _08029508
	ldr		r4, [r3, #0x0]
	lsl		r7, r4, #0x1
	ldr		r0, _0802950c
	add		r3, r7, r0
	ldr		r1, [sp, #0x0]
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r6
	ldr		r2, _08029510
	and		r0, r2
	ldr		r6, [sp, #0x18]
	lsl		r1, r6, #0x9
	mov		r6, #0xf8
	lsl		r6, r6, #0x6
	add		r2, r6, #0x0
	and		r1, r2
	orr		r0, r1
	mov		r2, #0xc0
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	and		r5, r1
	orr		r0, r5
	strh	r0, [r3, #0x0]
	lsr		r3, r4, #0x1f
	add		r3, r4, r3
	asr		r3, r3, #0x1
	lsl		r3, r3, #0x2
	ldr		r2, _0802950c
	sub		r2, #0x2
	add		r2, r3, r2
	ldr		r0, [r2, #0x0]
	mov		r5, r10
	ldr		r1, [r5, #0xc]
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r1, [r5, #0x8]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r1, _08029514
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r6, [sp, #0x14]
	orr		r0, r6
	str		r0, [r2, #0x0]
	ldr		r0, _08029518
	add		r0, r7, r0
	str		r0, [sp, #0x1C]
	mov		r1, r9
	ldrh	r0, [r1, #0x0]
	ldr		r2, [sp, #0x1C]
	strh	r0, [r2, #0x0]
	mov		r5, #0x2
	add		r9, r5
	ldr		r6, _08029518
	add		r3, r3, r6
	ldr		r0, [r3, #0x0]
	mov		r2, r10
	ldr		r1, [r2, #0x14]
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, [r3, #0x0]
	ldr		r1, [r2, #0x10]
	orr		r0, r1
	str		r0, [r3, #0x0]
	add		r4, #0x4
	ldr		r3, _08029508
	str		r4, [r3, #0x0]
	ldr		r4, [sp, #0x8]
	sub		r4, #0x1
	str		r4, [sp, #0x8]
	cmp		r4, #0x0
	ble		_080294f2
	b		_08029382
_080294f2:
	mov		r0, #0x0
_080294f4:
	add		sp, #0x28
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08029504:	.4byte 0x08101008
_08029508:	.4byte 0x030016D8
_0802950c:	.4byte 0x030016E2
_08029510:	.4byte 0x000001FF
_08029514:	.4byte 0xfffffcff
_08029518:	.4byte 0x030016E4
	thumb_func_end sub_080291bc

	thumb_func_start sub_0802951c
sub_0802951c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x24
	mov		r8, r0
	add		r7, r1, #0x0
	mov		r12, r2
	add		r6, r3, #0x0
	ldr		r0, [sp, #0x4+0x44]
	mov		r9, r0
	cmp		r0, #0x0
	bne		_08029604
	mov		r5, sp
	mov		r1, r8
	str		r1, [sp, #0x0]
	ldrh	r0, [r7, #0x0]
	strh		r0, [r5, #0x4]
	ldrh	r0, [r7, #0x2]
	strh		r0, [r5, #0x6]
	mov		r2, r9
	str		r2, [sp, #0x8]
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [sp, #0xC]
	str		r2, [sp, #0x10]
	str		r0, [sp, #0x14]
	mov		r3, r12
	cmp		r3, #0x0
	beq		_0802955e
	cmp		r6, #0x0
	bne		_08029564
_0802955e:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r12, r6
_08029564:
	ldr		r1, _080295f4
	ldr		r7, [sp, #0x0+0x44]
	lsl		r0, r7, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08029574
	add		r0, #0x3f
_08029574:
	asr		r3, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r4, _080295f8
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	mov		r8, r0
	ldr		r0, [r0, #0x0]
	mov		r7, r12
	mul		r7, r0
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_08029596
	ldr		r7, _080295fc
	add		r0, r0, r7
_08029596:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x18]
	add		r0, r3, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r1, r0, r1
	ldr		r0, [r1, #0x0]
	mov		r3, r12
	mul		r3, r0
	add		r0, r3, #0x0
	cmp		r0, #0x0
	bge		_080295b2
	ldr		r7, _080295fc
	add		r0, r0, r7
_080295b2:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1A]
	ldr		r1, [r1, #0x0]
	neg		r0, r6
	mul		r0, r1
	cmp		r0, #0x0
	bge		_080295c4
	ldr		r1, _080295fc
	add		r0, r0, r1
_080295c4:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1C]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mul		r0, r6
	cmp		r0, #0x0
	bge		_080295d6
	ldr		r3, _080295fc
	add		r0, r0, r3
_080295d6:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1E]
	mov		r7, r12
	strh		r7, [r5, #0x20]
	strh		r6, [r5, #0x22]
	ldr		r4, _08029600
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	add		r0, r5, #0x0
	bl		sub_080291bc
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	b		_08029722

.incbin "base.gba", 0x295F2, 0x2

_080295f4:	.4byte 0x08101068
_080295f8:	.4byte 0x000003FF
_080295fc:	.4byte 0x00007FFF
_08029600:	.4byte 0x03002174

_08029604:
	ldr		r0, _0802962c
	ldr		r1, [r0, #0x0]
	mov		r10, r0
	cmp		r1, #0x1f
	ble		_08029610
	b		_08029722
_08029610:
	mov		r0, #0x34
	mul		r1, r0
	ldr		r0, _08029630
	add		r2, r1, r0
	ldr		r3, _08029634
	ldr		r1, [r3, #0x0]
	cmp		r1, #0x0
	bne		_0802963c
	ldr		r0, _08029638
	str		r2, [r0, #0x0]
	str		r2, [r3, #0x0]
	str		r1, [r2, #0x4]
	str		r1, [r2, #0x0]
	b		_0802964a

_0802962c:	.4byte 0x03002168
_08029630:	.4byte 0x03001AE0
_08029634:	.4byte 0x03002160
_08029638:	.4byte 0x03002164

_0802963c:
	ldr		r1, _08029734
	ldr		r0, [r1, #0x0]
	str		r2, [r0, #0x0]
	str		r0, [r2, #0x4]
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	str		r2, [r1, #0x0]
_0802964a:
	mov		r0, r10
	ldr		r1, [r0, #0x0]
	mov		r0, #0x34
	add		r5, r1, #0x0
	mul		r5, r0
	ldr		r3, _08029738
	add		r4, r5, r3
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	str		r0, [r4, #0x0]
	ldr		r1, [r1, #0x4]
	mov		r0, r8
	ldrh	r2, [r0, #0x6]
	mov		r0, #0xc0
	lsl		r0, r0, #0x4
	and		r0, r2
	lsl		r0, r0, #0x10
	add		r1, r1, r0
	str		r1, [r4, #0x4]
	add		r3, #0x8
	add		r5, r5, r3
	mov		r1, r8
	str		r1, [r5, #0x0]
	ldrh	r0, [r7, #0x0]
	mov		r1, #0x0
	strh	r0, [r5, #0x4]
	ldrh	r0, [r7, #0x2]
	strh	r0, [r5, #0x6]
	str		r1, [r5, #0x8]
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r5, #0xc]
	str		r1, [r5, #0x10]
	str		r0, [r5, #0x14]
	mov		r2, r12
	cmp		r2, #0x0
	beq		_08029698
	cmp		r6, #0x0
	bne		_0802969e
_08029698:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r12, r6
_0802969e:
	ldr		r1, _0802973c
	ldr		r3, [sp, #0x0+0x44]
	lsl		r0, r3, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_080296ae
	add		r0, #0x3f
_080296ae:
	asr		r3, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r4, _08029740
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	mov		r8, r0
	ldr		r0, [r0, #0x0]
	mov		r7, r12
	mul		r7, r0
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_080296d0
	ldr		r7, _08029744
	add		r0, r0, r7
_080296d0:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x18]
	add		r0, r3, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r1, r0, r1
	ldr		r0, [r1, #0x0]
	mov		r3, r12
	mul		r3, r0
	add		r0, r3, #0x0
	cmp		r0, #0x0
	bge		_080296ec
	ldr		r7, _08029744
	add		r0, r0, r7
_080296ec:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1a]
	ldr		r1, [r1, #0x0]
	neg		r0, r6
	mul		r0, r1
	cmp		r0, #0x0
	bge		_080296fe
	ldr		r1, _08029744
	add		r0, r0, r1
_080296fe:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1c]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mul		r0, r6
	cmp		r0, #0x0
	bge		_08029710
	ldr		r3, _08029744
	add		r0, r0, r3
_08029710:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1e]
	mov		r7, r12
	strh	r7, [r5, #0x20]
	strh	r6, [r5, #0x22]
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_08029722:
	add		sp, #0x24
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29732, 0x2

_08029734:	.4byte 0x03002164
_08029738:	.4byte 0x03001AE8
_0802973c:	.4byte 0x08101068
_08029740:	.4byte 0x000003FF
_08029744:	.4byte 0x00007FFF
	thumb_func_end sub_0802951c

	thumb_func_start sub_08029748
sub_08029748:
	push	{ r4, r5, lr }
	sub		sp, #0x34
	add		r2, r0, #0x0
	cmp		r2, #0x0
	beq		_08029758
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0802975c
_08029758:
	add		r0, r2, #0x0
	b		_080297be
_0802975c:
	add		r1, r2, #0x0
	b		_08029768
_08029760:
	ldr		r1, [r1, #0x0]
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0802976e
_08029768:
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08029760
_0802976e:
	ldr		r5, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r0, r2, #0x0
	bl		sub_08029748
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08029748
	add		r2, r0, #0x0
	mov		r3, sp
	b		_080297aa
_08029788:
	ldr		r1, [r4, #0xc]
	ldr		r0, [r2, #0xc]
	cmp		r1, r0
	bgt		_0802979c
	cmp		r1, r0
	bne		_080297a4
	ldr		r1, [r4, #0x8]
	ldr		r0, [r2, #0x8]
	cmp		r1, r0
	ble		_080297a4
_0802979c:
	str		r2, [r3, #0x0]
	add		r3, r2, #0x0
	ldr		r2, [r3, #0x0]
	b		_080297aa
_080297a4:
	str		r4, [r3, #0x0]
	add		r3, r4, #0x0
	ldr		r4, [r4, #0x0]
_080297aa:
	cmp		r4, #0x0
	beq		_080297b6
	cmp		r2, #0x0
	bne		_08029788
	cmp		r4, #0x0
	bne		_080297ba
_080297b6:
	str		r2, [r3, #0x0]
	b		_080297bc
_080297ba:
	str		r4, [r3, #0x0]
_080297bc:
	ldr		r0, [sp, #0x0]
_080297be:
	add		sp, #0x34
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x297C6, 0x2
	thumb_func_end sub_08029748

	thumb_func_start sub_080297c8
sub_080297c8:
	push	{ r4, lr }
	sub		sp, #0x4
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x13
	ldr		r2, _08029818
	mov		r0, sp
	bl		sub_08071b68
	ldr		r0, _0802981c
	str		r4, [r0, #0x0]
	ldr		r0, _08029820
	str		r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	mov		r2, #0x0
	ldr		r1, _08029824
_080297ee:
	stmia	r1!, {  r3 }
	stmia	r1!, {  r2 }
	add		r0, #0x2
	cmp		r0, #0xff
	bls		_080297ee
	ldr		r2, _08029828
	ldr		r0, _0802982c
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	str		r1, [r2, #0x0]
	ldr		r0, _08029830
	str		r1, [r0, #0x0]
	mov		r2, #0x1
	ldr		r0, _08029834
	str		r2, [r0, #0x0]
	ldr		r0, _08029838
	str		r1, [r0, #0x0]
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08029818:	.4byte 0x01000100
_0802981c:	.4byte 0x030016D8
_08029820:	.4byte 0x030016DC
_08029824:	.4byte 0x030016E0
_08029828:	.4byte 0x03002160
_0802982c:	.4byte 0x03002164
_08029830:	.4byte 0x03002168
_08029834:	.4byte 0x03002170
_08029838:	.4byte 0x03002174
	thumb_func_end sub_080297c8

	thumb_func_start sub_0802983c
sub_0802983c:
	push	{ r4, lr }
	ldr		r0, _08029884
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0802987c
	ldr		r0, _08029888
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0802987c
	ldr		r1, _0802988c
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r4, _08029890
	ldr		r0, [r4, #0x0]
	bl		sub_08029748
	str		r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_08029872
_08029862:
	add		r4, r0, #0x0
	add		r0, r4, #0x0
	add		r0, #0x10
	bl		sub_080291bc
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08029862
_08029872:
	ldr		r0, _08029888
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r0, _0802988c
	str		r1, [r0, #0x0]
_0802987c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29882, 0x2

_08029884:	.4byte 0x03002170
_08029888:	.4byte 0x0300216C
_0802988c:	.4byte 0x03002174
_08029890:	.4byte 0x03002160
	thumb_func_end sub_0802983c

	thumb_func_start sub_08029894
sub_08029894:
	ldr		r0, _080298d4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080298d0
	ldr		r0, _080298d8
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_080298d0
	ldr		r0, _080298dc
	str		r1, [r0, #0x0]
	ldr		r0, _080298e0
	str		r1, [r0, #0x0]
	ldr		r0, _080298e4
	str		r1, [r0, #0x0]
	ldr		r0, _080298e8
	str		r1, [r0, #0x0]
	ldr		r0, _080298ec
	str		r1, [r0, #0x0]
	mov		r1, #0x0
	ldr		r3, _080298f0
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	ldr		r0, _080298f4
_080298c2:
	str		r2, [r0, #0x0]
	add		r0, #0x8
	add		r1, #0x2
	cmp		r1, #0xff
	bls		_080298c2
	mov		r0, #0x1
	str		r0, [r3, #0x0]
_080298d0:
	bx		lr

.incbin "base.gba", 0x298D2, 0x2

_080298d4:	.4byte 0x03002170
_080298d8:	.4byte 0x03002174
_080298dc:	.4byte 0x030016D8
_080298e0:	.4byte 0x030016DC
_080298e4:	.4byte 0x03002160
_080298e8:	.4byte 0x03002164
_080298ec:	.4byte 0x03002168
_080298f0:	.4byte 0x0300216C
_080298f4:	.4byte 0x030016E0
	thumb_func_end sub_08029894

	thumb_func_start sub_080298f8
sub_080298f8:
	ldr		r0, _08029914
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08029912
	ldr		r1, _08029918
	ldr		r0, _0802991c
	str		r0, [r1, #0x0]
	mov		r0, #0xe0
	lsl		r0, r0, #0x13
	str		r0, [r1, #0x4]
	ldr		r0, _08029920
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
_08029912:
	bx		lr

_08029914:	.4byte 0x0300216C
_08029918:	.4byte 0x040000B0
_0802991c:	.4byte 0x030016E0
_08029920:	.4byte 0x84000100
	thumb_func_end sub_080298f8

	thumb_func_start sub_08029924
sub_08029924:
	push	{ lr }
	ldr		r0, _08029940
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802993a
	ldr		r0, _08029944
	mov		r1, #0xe0
	lsl		r1, r1, #0x13
	ldr		r2, _08029948
	bl		sub_08071b6c
_0802993a:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2993E, 0x2

_08029940:	.4byte 0x0300216C
_08029944:	.4byte 0x030016E0
_08029948:	.4byte 0x04000100
	thumb_func_end sub_08029924

	thumb_func_start sub_0802994c
sub_0802994c:
	ldr		r1, _08029954
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x29952, 0x2

_08029954:	.4byte 0x03002170
	thumb_func_end sub_0802994c

	thumb_func_start sub_08029958
sub_08029958:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x8
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r5, r3, #0x0
	ldr		r0, _08029970
	cmp		r2, r0
	bgt		_08029974
	ldr		r0, [r4, #0x0]
	ldr		r3, [r4, #0x4]
	b		_0802998e

.incbin "base.gba", 0x2996E, 0x2

_08029970:	.4byte 0x000001FF

_08029974:
	ldr		r0, _08029980
	cmp		r2, r0
	bgt		_08029984
	ldr		r0, [r4, #0x8]
	ldr		r3, [r4, #0xc]
	b		_0802998e

_08029980:	.4byte 0x000003FF

_08029984:
	ldr		r0, _080299a0
	cmp		r2, r0
	bgt		_080299a4
	ldr		r0, [r4, #0x10]
	ldr		r3, [r4, #0x14]
_0802998e:
	asr		r2, r3
	add		r3, r2, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r1, r6, #0x0
	bl		sub_0802951c
	b		_080299b8

_080299a0:	.4byte 0x000007FF

_080299a4:
	ldr		r0, [r4, #0x18]
	ldr		r3, [r4, #0x1c]
	asr		r2, r3
	add		r3, r2, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r1, r6, #0x0
	bl		sub_0802951c
_080299b8:
	add		sp, #0x8
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08029958

	thumb_func_start sub_080299c0
sub_080299c0:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x8
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r1, r2, #0x0
	add		r2, r3, #0x0
	ldr		r3, [sp, #0x0+0x1c]
	ldr		r6, [sp, #0x4+0x1c]
	ldr		r7, [sp, #0x8+0x1c]
	ldr		r0, _080299e0
	cmp		r1, r0
	bgt		_080299e4
	ldr		r0, [r4, #0x0]
	ldr		r1, [r4, #0x4]
	b		_080299fe

.incbin "base.gba", 0x299DE, 0x2

_080299e0:	.4byte 0x000001FF

_080299e4:
	ldr		r0, _080299f0
	cmp		r1, r0
	bgt		_080299f4
	ldr		r0, [r4, #0x8]
	ldr		r1, [r4, #0xc]
	b		_080299fe

_080299f0:	.4byte 0x000003FF

_080299f4:
	ldr		r0, _08029a10
	cmp		r1, r0
	bgt		_08029a14
	ldr		r0, [r4, #0x10]
	ldr		r1, [r4, #0x14]
_080299fe:
	asr		r2, r1
	asr		r3, r1
	str		r6, [sp, #0x0]
	str		r7, [sp, #0x4]
	add		r1, r5, #0x0
	bl		sub_0802951c
	b		_08029a26

.incbin "base.gba", 0x29A0E, 0x2

_08029a10:	.4byte 0x000007FF

_08029a14:
	ldr		r0, [r4, #0x18]
	ldr		r1, [r4, #0x1c]
	asr		r2, r1
	asr		r3, r1
	str		r6, [sp, #0x0]
	str		r7, [sp, #0x4]
	add		r1, r5, #0x0
	bl		sub_0802951c
_08029a26:
	add		sp, #0x8
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29A2E, 0x2
	thumb_func_end sub_080299c0

	thumb_func_start sub_08029a30
sub_08029a30:
	push	{ r4, lr }
	sub		sp, #0xc
	ldr		r4, [sp, #0x0+0x14]
	lsl		r1, r1, #0x10
	lsl		r2, r2, #0x10
	lsr		r1, r1, #0x10
	orr		r1, r2
	str		r1, [sp, #0x8]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, sp, #0x8
	add		r2, r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29A56, 0x3A
	thumb_func_end sub_08029a30

	thumb_func_start sub_08029a90
sub_08029a90:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r6, _08029acc
	ldr		r5, [r6, #0x0]
	cmp		r5, #0x1f
	bgt		_08029ad4
	lsl		r3, r5, #0x5
	ldr		r2, _08029ad0
	add		r1, r3, r2
	ldrh	r0, [r4, #0x18]
	strh	r0, [r1, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x8
	add		r0, r3, r0
	ldrh	r1, [r4, #0x1a]
	strh	r1, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x10
	add		r0, r3, r0
	ldrh	r1, [r4, #0x1c]
	strh	r1, [r0, #0x0]
	add		r2, #0x18
	add		r3, r3, r2
	ldrh	r0, [r4, #0x1e]
	strh	r0, [r3, #0x0]
	add		r0, r5, #0x1
	str		r0, [r6, #0x0]
	add		r0, r5, #0x0
	b		_08029ad8

.incbin "base.gba", 0x29ACA, 0x2

_08029acc:	.4byte 0x030016DC
_08029ad0:	.4byte 0x030016E6

_08029ad4:
	mov		r0, #0x1
	neg		r0, r0
_08029ad8:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x29ADE, 0x26
	thumb_func_end sub_08029a90

	thumb_func_start sub_08029b04
sub_08029b04:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x5c]
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x83
	bne		_08029b16
	b		_08029c28
_08029b16:
	cmp		r0, #0x83
	bgt		_08029b46
	cmp		r0, #0x41
	beq		_08029b7c
	cmp		r0, #0x41
	bgt		_08029b34
	cmp		r0, #0x11
	beq		_08029b76
	cmp		r0, #0x11
	ble		_08029b2c
	b		_08029c98
_08029b2c:
	cmp		r0, #0x0
	bne		_08029b32
	b		_08029c9c
_08029b32:
	b		_08029c98
_08029b34:
	cmp		r0, #0x43
	beq		_08029b86
	cmp		r0, #0x43
	blt		_08029b82
	cmp		r0, #0x81
	beq		_08029bf8
	cmp		r0, #0x82
	beq		_08029c00
	b		_08029c98
_08029b46:
	cmp		r0, #0xf2
	beq		_08029bce
	cmp		r0, #0xf2
	bgt		_08029b62
	cmp		r0, #0x85
	beq		_08029bf8
	cmp		r0, #0x85
	blt		_08029c50
	cmp		r0, #0x86
	bne		_08029b5c
	b		_08029c90
_08029b5c:
	cmp		r0, #0xf1
	beq		_08029bb0
	b		_08029c98
_08029b62:
	cmp		r0, #0xf5
	beq		_08029ba2
	cmp		r0, #0xf5
	bgt		_08029b70
	cmp		r0, #0xf4
	beq		_08029b98
	b		_08029c98
_08029b70:
	cmp		r0, #0xf6
	beq		_08029bd6
	b		_08029c98
_08029b76:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x48]
	b		_08029bc0
_08029b7c:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x68]
	b		_08029bc0
_08029b82:
	ldr		r0, [r5, #0x4]
	b		_08029c9c
_08029b86:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x60]
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	b		_08029bc8
_08029b98:
	ldr		r1, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_0807d7d4
	b		_08029bc0
_08029ba2:
	ldr		r1, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_0807d7d4
	cmp		r0, #0x0
	beq		_08029c9e
	b		_08029bc0
_08029bb0:
	ldr		r1, [r5, #0x4]
	cmp		r1, #0x0
	beq		_08029bc0
	sub		r1, #0x1
	add		r0, r4, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	b		_08029c98
_08029bc0:
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
_08029bc8:
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_08029c98
_08029bce:
	ldr		r0, [r5, #0x4]
	lsl		r0, r0, #0x3
	add		r0, r5, r0
	b		_08029be8
_08029bd6:
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x68]
	cmp		r0, #0x0
	beq		_08029be4
	lsl		r0, r1, #0x3
	add		r0, r5, r0
	b		_08029be8
_08029be4:
	add		r0, r5, #0x0
	add		r0, #0x8
_08029be8:
	str		r0, [r4, #0x5c]
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_08029c9e
_08029bf8:
	ldrh	r0, [r5, #0x4]
	bl		sub_0807073c
	b		_08029bc0
_08029c00:
	ldr		r2, [r5, #0x4]
	ldr		r0, _08029c20
	ldr		r1, _08029c24
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08029bc0
	lsl		r0, r2, #0x10
	lsr		r0, r0, #0x10
	bl		sub_0807073c
	b		_08029bc0

.incbin "base.gba", 0x29C1E, 0x2

_08029c20:	.4byte 0x030031A0
_08029c24:	.4byte 0x00000838

_08029c28:
	ldrh	r0, [r5, #0x4]
	ldr		r3, _08029c48
	ldr		r2, _08029c4c
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08070e28
	b		_08029bc0

.incbin "base.gba", 0x29C46, 0x2

_08029c48:	.4byte 0x08124544
_08029c4c:	.4byte 0x081245c8

_08029c50:
	ldr		r0, _08029c84
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r7, r4, #0x0
	add		r7, #0x64
	add		r5, #0x8
	mov		r8, r5
	cmp		r0, #0x0
	beq		_08029c78
	ldr		r6, _08029c88
	add		r5, r0, #0x0
_08029c66:
	ldr		r0, [r6, #0x0]
	ldr		r1, _08029c8c
	ldr		r1, [r1, #0x8]
	bl		sub_08070e28
	add		r6, #0xc
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_08029c66
_08029c78:
	ldrb	r1, [r7, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r7, #0x0]
	mov		r0, r8
	b		_08029c9c

_08029c84:	.4byte 0x0000000B
_08029c88:	.4byte 0x08124544
_08029c8c:	.4byte 0x081245c8

_08029c90:
	ldrh	r0, [r5, #0x4]
	bl		sub_08070808
	b		_08029bc0
_08029c98:
	add		r0, r5, #0x0
	add		r0, #0x8
_08029c9c:
	str		r0, [r4, #0x5c]
_08029c9e:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08029b04

	thumb_func_start sub_08029ca8
sub_08029ca8:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r1, r5, #0x0
	add		r1, #0x4c
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08029cc0
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	b		_08029cee
_08029cc0:
	ldr		r0, [r5, #0x5c]
	cmp		r0, #0x0
	beq		_08029cee
	add		r4, r5, #0x0
	add		r4, #0x64
	mov		r6, #0xfe
_08029ccc:
	ldrb	r1, [r4, #0x0]
	add		r0, r6, #0x0
	and		r0, r1
	strb	r0, [r4, #0x0]
	add		r0, r5, #0x0
	bl		sub_08029b04
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08029ccc
	ldr		r0, [r5, #0x5c]
	cmp		r0, #0x0
	bne		_08029cee
	ldr		r0, _08029d14
	str		r0, [r5, #0x14]
_08029cee:
	ldr		r2, [r5, #0x60]
	cmp		r2, #0x0
	beq		_08029d1e
	add		r4, r5, #0x0
	add		r4, #0x64
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08029d18
	add		r0, r5, #0x0
	bl		sub_0807d7d8
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	strb	r0, [r4, #0x0]
	b		_08029d1e

.incbin "base.gba", 0x29D12, 0x2

_08029d14:	.4byte 0x08029D91

_08029d18:
	add		r0, r5, #0x0
	bl		sub_0807d7d8
_08029d1e:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08029ca8

	thumb_func_start sub_08029d24
sub_08029d24:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	ldr		r0, _08029d70
	mov		r1, #0xe8
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_08049164
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08029d68
	add		r1, r4, #0x0
	add		r1, #0x4c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	str		r5, [r4, #0x5c]
	str		r6, [r4, #0x60]
	add		r1, #0x18
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	ldr		r0, _08029d74
	str		r0, [r4, #0x14]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r4, #0x0
	add		r0, #0x58
	strh	r1, [r0, #0x0]
	cmp		r7, #0x0
	beq		_08029d68
	add		r0, r4, #0x0
	bl		sub_0807d7ec
_08029d68:
	add		r0, r4, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08029d70:	.4byte 0x030031A0
_08029d74:	.4byte sub_08029ca8

.incbin "base.gba", 0x29D78, 0x18
	thumb_func_end sub_08029d24

	thumb_func_start sub_08029d90
sub_08029d90:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, _08029da4
	mov		r2, #0xe8
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_080491c0
	pop		{ r0 }
	bx		r0

_08029da4:	.4byte 0x030031A0
	thumb_func_end sub_08029d90

	thumb_func_start sub_08029da8
sub_08029da8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r8, r0
	ldr		r0, [r0, #0x14]
	cmp		r0, #0x0
	bne		_08029e86
	mov		r0, #0x1
	mov		r1, r8
	str		r0, [r1, #0x14]
	ldr		r6, [r1, #0x0]
	add		r1, #0x8
	str		r1, [sp, #0x0]
	cmp		r6, #0x0
	beq		_08029e78
	ldr		r2, _08029e44
	mov		r10, r2
_08029dd0:
	ldr		r5, [r6, #0x4]
	ldr		r4, [r6, #0x8]
	ldr		r1, [r6, #0xc]
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	and		r0, r1
	mov		r7, #0x1
	mov		r9, r7
	cmp		r0, #0x0
	beq		_08029de8
	mov		r0, #0x2
	mov		r9, r0
_08029de8:
	add		r3, r1, #0x0
	ldr		r2, _08029e48
	and		r3, r2
	mov		r7, r9
	lsl		r3, r7
	mov		r0, #0xc0
	lsl		r0, r0, #0x11
	mov		r12, r0
	mov		r2, r12
	and		r2, r1
	mov		r12, r2
	mov		r7, #0xc0
	lsl		r7, r7, #0xf
	add		r0, r7, #0x0
	and		r0, r1
	str		r0, [sp, #0x8]
	ldr		r1, [r6, #0x0]
	str		r1, [sp, #0x4]
_08029e0c:
	add		r2, r3, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r3, r0
	bls		_08029e18
	add		r2, r0, #0x0
_08029e18:
	mov		r7, r10
	str		r5, [r7, #0x0]
	str		r4, [r7, #0x4]
	ldr		r1, [r6, #0xc]
	ldr		r0, _08029e4c
	and		r1, r0
	add		r0, r2, #0x0
	mov		r7, r9
	asr		r0, r7
	ldr		r7, _08029e48
	and		r0, r7
	orr		r1, r0
	mov		r0, r10
	str		r1, [r0, #0x8]
	mov		r1, r12
	cmp		r1, #0x0
	beq		_08029e50
	mov		r0, #0x80
	lsl		r0, r0, #0x10
	cmp		r12, r0
	beq		_08029e54
	b		_08029e56

_08029e44:	.4byte 0x040000D4
_08029e48:	.4byte 0x0000FFFF
_08029e4c:	.4byte 0xffff0000

_08029e50:
	add		r5, r5, r2
	b		_08029e56
_08029e54:
	sub		r5, r5, r2
_08029e56:
	ldr		r7, [sp, #0x8]
	cmp		r7, #0x0
	beq		_08029e66
	mov		r0, #0x80
	lsl		r0, r0, #0xe
	cmp		r7, r0
	beq		_08029e6a
	b		_08029e6c
_08029e66:
	add		r4, r4, r2
	b		_08029e6c
_08029e6a:
	sub		r4, r4, r2
_08029e6c:
	sub		r3, r3, r2
	cmp		r3, #0x0
	bne		_08029e0c
	ldr		r6, [sp, #0x4]
	cmp		r6, #0x0
	bne		_08029dd0
_08029e78:
	ldr		r0, [sp, #0x0]
	bl		sub_080271b0
	mov		r0, #0x0
	mov		r1, r8
	str		r0, [r1, #0x4]
	str		r0, [r1, #0x0]
_08029e86:
	mov		r0, #0x0
	mov		r2, r8
	str		r0, [r2, #0x14]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08029da8

	thumb_func_start sub_08029e9c
sub_08029e9c:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r0, #0x8
	ldr		r1, _08029ebc
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	bl		sub_08027188
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	str		r0, [r4, #0x0]
	str		r0, [r4, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29EBA, 0x2

_08029ebc:	.4byte 0x03004C20
	thumb_func_end sub_08029e9c

	thumb_func_start sub_08029ec0
sub_08029ec0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r0, #0x1
_08029ec6:
	ldr		r5, [r4, #0x14]
	cmp		r5, #0x0
	bne		_08029ec6
	str		r0, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x8
	bl		sub_080271b0
	str		r5, [r4, #0x4]
	str		r5, [r4, #0x0]
	str		r5, [r4, #0x14]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29EE2, 0x2
	thumb_func_end sub_08029ec0

	thumb_func_start sub_08029ee4
sub_08029ee4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	mov		r8, r2
	mov		r9, r3
	mov		r0, #0x1
_08029ef6:
	ldr		r6, [r5, #0x14]
	cmp		r6, #0x0
	bne		_08029ef6
	str		r0, [r5, #0x14]
	add		r0, r5, #0x0
	add		r0, #0x8
	mov		r1, #0x1
	mov		r2, #0x10
	bl		sub_080271b8
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08029f22
	str		r7, [r4, #0x4]
	mov		r0, r8
	str		r0, [r4, #0x8]
	mov		r0, r9
	str		r0, [r4, #0xc]
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08028764
_08029f22:
	str		r6, [r5, #0x14]
	add		r0, r4, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x29F32, 0x2
	thumb_func_end sub_08029ee4

	thumb_func_start sub_08029f34
sub_08029f34:
	ldr		r0, _08029f38
	bx		lr

_08029f38:	.4byte 0x03002178

.incbin "base.gba", 0x29F3C, 0x1C
	thumb_func_end sub_08029f34

	thumb_func_start sub_08029f58
sub_08029f58:
	push	{ r4, lr }
	ldr		r1, _08029f8c
	ldrb	r0, [r1, #0x1]
	mov		r3, #0x0
	strb	r3, [r1, #0x1]
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x21
	neg		r0, r0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldr		r4, _08029f90
	str		r3, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x8
	ldr		r1, _08029f94
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	bl		sub_08027188
	add		r0, r4, #0x0
	bl		sub_08028878
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x29F8A, 0x2

_08029f8c:	.4byte 0x04000004
_08029f90:	.4byte 0x03005340
_08029f94:	.4byte 0x030030A0
	thumb_func_end sub_08029f58

	thumb_func_start sub_08029f98
sub_08029f98:
	push	{ r4, lr }
	ldr		r1, _08029fc4
	ldrb	r0, [r1, #0x1]
	mov		r3, #0x0
	strb	r3, [r1, #0x1]
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x21
	neg		r0, r0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldr		r4, _08029fc8
	str		r3, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x8
	bl		sub_080271b0
	add		r0, r4, #0x0
	bl		sub_08028878
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08029fc4:	.4byte 0x04000004
_08029fc8:	.4byte 0x03005340
	thumb_func_end sub_08029f98

	thumb_func_start sub_08029fcc
sub_08029fcc:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r7, _08029ff4
	add		r0, r7, #0x0
	mov		r1, #0x1
	mov		r2, #0x10
	bl		sub_080271b8
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0802a03a
	str		r4, [r5, #0x8]
	str		r6, [r5, #0xc]
	add		r0, r7, #0x0
	sub		r0, #0x8
	bl		sub_080287a0
	b		_08029ffe

.incbin "base.gba", 0x29FF2, 0x2

_08029ff4:	.4byte 0x03005348

_08029ff8:
	ldr		r0, _0802a014
	bl		sub_080287a8
_08029ffe:
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_0802a018
	ldr		r0, [r1, #0x8]
	cmp		r0, r4
	ble		_08029ff8
	ldr		r0, _0802a014
	add		r2, r5, #0x0
	bl		sub_080287e0
	b		_0802a020

_0802a014:	.4byte 0x03005340

_0802a018:
	ldr		r0, _0802a044
	add		r1, r5, #0x0
	bl		sub_080287c8
_0802a020:
	ldr		r4, _0802a044
	add		r0, r4, #0x0
	bl		sub_080287a0
	ldr		r2, _0802a048
	str		r0, [r4, #0x14]
	ldr		r0, [r0, #0x8]
	ldrb	r1, [r2, #0x1]
	strb	r0, [r2, #0x1]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x20
	orr		r0, r1
	strb	r0, [r2, #0x0]
_0802a03a:
	add		r0, r5, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2A042, 0x2

_0802a044:	.4byte 0x03005340
_0802a048:	.4byte 0x04000004
	thumb_func_end sub_08029fcc

	thumb_func_start sub_0802a04c
sub_0802a04c:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, _0802a05c
	bl		sub_08028848
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A05A, 0x2

_0802a05c:	.4byte 0x03005340
	thumb_func_end sub_0802a04c

	thumb_func_start sub_0802a060
sub_0802a060:
	push	{ r4, r5, lr }
	ldr		r5, _0802a09c
	ldr		r4, [r5, #0x14]
	ldr		r0, [r4, #0xc]
	bl		sub_0807d7d0
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_080287a8
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_0802a082
	add		r0, r5, #0x0
	bl		sub_080287a0
	add		r4, r0, #0x0
_0802a082:
	ldr		r2, _0802a0a0
	str		r4, [r5, #0x14]
	ldr		r0, [r4, #0x8]
	ldrb	r1, [r2, #0x1]
	strb	r0, [r2, #0x1]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x20
	orr		r0, r1
	strb	r0, [r2, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A09A, 0x2

_0802a09c:	.4byte 0x03005340
_0802a0a0:	.4byte 0x04000004
	thumb_func_end sub_0802a060

	thumb_func_start sub_0802a0a4
sub_0802a0a4:
	push	{ r4, r5, lr }
	ldr		r1, _0802a0e0
	ldrb	r2, [r1, #0xc]
	mov		r0, #0x2
	and		r0, r2
	add		r5, r1, #0x0
	cmp		r0, #0x0
	beq		_0802a0fe
	mov		r0, #0x80
	and		r0, r2
	cmp		r0, #0x0
	bne		_0802a0fe
	ldrb	r0, [r5, #0xd]
	sub		r0, #0x1
	strb	r0, [r5, #0xd]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bgt		_0802a112
	ldr		r4, [r5, #0x0]
	cmp		r4, #0x0
	beq		_0802a0e4
	bl		sub_0807d7e0
	ldrb	r0, [r5, #0xf]
	add		r0, #0x1
	strb	r0, [r5, #0xf]
	ldrb	r0, [r5, #0xe]
	strb	r0, [r5, #0xd]
	b		_0802a112

.incbin "base.gba", 0x2A0DE, 0x2

_0802a0e0:	.4byte 0x030052F0

_0802a0e4:
	ldr		r0, [r5, #0x8]
	cmp		r0, #0x0
	beq		_0802a0ee
	bl		sub_0807d7d0
_0802a0ee:
	str		r4, [r5, #0x0]
	str		r4, [r5, #0x4]
	str		r4, [r5, #0x8]
	strb	r4, [r5, #0xd]
	strb	r4, [r5, #0xe]
	strb	r4, [r5, #0xf]
	strb	r4, [r5, #0xc]
	b		_0802a112
_0802a0fe:
	ldrb	r1, [r5, #0xc]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802a112
	mov		r0, #0xfe
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r5, #0xc]
_0802a112:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A118, 0x18
	thumb_func_end sub_0802a0a4

	thumb_func_start sub_0802a130
sub_0802a130:
	push	{ r4, lr }
	ldr		r4, _0802a144
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	beq		_0802a148
	bl		sub_0807d7d0
	mov		r0, #0x1
	b		_0802a14a

.incbin "base.gba", 0x2A142, 0x2

_0802a144:	.4byte 0x030052F0

_0802a148:
	mov		r0, #0x2
_0802a14a:
	strb	r0, [r4, #0xc]
	ldr		r0, _0802a15c
	ldrb	r1, [r0, #0xe]
	mov		r2, #0x0
	strb	r1, [r0, #0xd]
	strb	r2, [r0, #0xf]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802a15c:	.4byte 0x030052F0
	ldr		r0, _0802a184
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0802a188
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x6
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

_0802a184:	.4byte 0x04000048
_0802a188:	.4byte 0x00009FFF
	thumb_func_end sub_0802a130

	thumb_func_start sub_0802a18c
sub_0802a18c:
	push	{ r4, lr }
	ldr		r4, _0802a1cc
	ldrb	r2, [r4, #0xf]
	ldr		r3, _0802a1d0
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x1
	mov		r0, #0x78
	sub		r0, r0, r1
	lsl		r0, r0, #0x8
	add		r1, #0x78
	orr		r0, r1
	strh	r0, [r3, #0x0]
	add		r3, #0x4
	lsl		r1, r2, #0x2
	mov		r0, #0x50
	sub		r0, r0, r1
	lsl		r0, r0, #0x8
	add		r1, #0x50
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _0802a1d4
	mov		r0, #0x3f
	strh	r0, [r1, #0x0]
	cmp		r2, #0x14
	bne		_0802a1c4
	mov		r0, #0x0
	str		r0, [r4, #0x0]
_0802a1c4:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A1CA, 0x2

_0802a1cc:	.4byte 0x030052F0
_0802a1d0:	.4byte 0x04000040
_0802a1d4:	.4byte 0x04000048
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0802a1f4
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _0802a1f8
	mov		r0, #0xf0
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	mov		r0, #0xa0
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x2A1F2, 0x2

_0802a1f4:	.4byte 0x00009FFF
_0802a1f8:	.4byte 0x04000040
	ldr		r1, _0802a230
	mov		r0, #0xf0
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	mov		r0, #0xa0
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	mov		r0, #0x3f
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0802a234
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x6
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

.incbin "base.gba", 0x2A22E, 0x2

_0802a230:	.4byte 0x04000040
_0802a234:	.4byte 0x00009FFF
	thumb_func_end sub_0802a18c

	thumb_func_start sub_0802a238
sub_0802a238:
	push	{ r4, r5, lr }
	ldr		r5, _0802a26c
	ldrb	r2, [r5, #0xf]
	ldr		r4, _0802a270
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r3, r1, #0x1
	lsl		r1, r1, #0x9
	mov		r0, #0xf0
	sub		r0, r0, r3
	orr		r1, r0
	strh	r1, [r4, #0x0]
	add		r4, #0x4
	lsl		r3, r2, #0x2
	lsl		r1, r2, #0xa
	mov		r0, #0xa0
	sub		r0, r0, r3
	orr		r1, r0
	strh	r1, [r4, #0x0]
	cmp		r2, #0x14
	bne		_0802a266
	mov		r0, #0x0
	str		r0, [r5, #0x0]
_0802a266:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0802a26c:	.4byte 0x030052F0
_0802a270:	.4byte 0x04000040
	thumb_func_end sub_0802a238

	thumb_func_start sub_0802a274
sub_0802a274:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r3, r1, #0x10
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	bgt		_0802a286
	mov		r0, #0x0
	b		_0802a2d8
_0802a286:
	ldr		r0, [r2, #0x10]
	add		r0, #0x1
	str		r0, [r2, #0x10]
	ldr		r0, [r2, #0x0]
	ldrb	r4, [r0, #0x2]
	add		r1, r0, #0x0
	cmp		r4, #0xfd
	bhi		_0802a2ae
	mov		r0, #0xff
	and		r0, r3
	ldrb	r5, [r1, #0x0]
	cmp		r0, r5
	bne		_0802a2ae
	lsr		r0, r3, #0x8
	ldrb	r5, [r1, #0x1]
	cmp		r0, r5
	bne		_0802a2ae
	add		r0, r4, #0x1
	strb	r0, [r1, #0x2]
	b		_0802a2d6
_0802a2ae:
	add		r0, r1, #0x3
	str		r0, [r2, #0x0]
	strb	r3, [r1, #0x3]
	ldr		r1, [r2, #0x0]
	lsr		r0, r3, #0x8
	strb	r0, [r1, #0x1]
	ldr		r1, [r2, #0x0]
	mov		r0, #0x1
	strb	r0, [r1, #0x2]
	ldr		r0, [r2, #0x0]
	mov		r1, #0x0
	strb	r1, [r0, #0x3]
	ldr		r0, [r2, #0x0]
	strb	r1, [r0, #0x4]
	ldr		r1, [r2, #0x0]
	mov		r0, #0xff
	strb	r0, [r1, #0x5]
	ldr		r0, [r2, #0x4]
	sub		r0, #0x3
	str		r0, [r2, #0x4]
_0802a2d6:
	mov		r0, #0x1
_0802a2d8:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2A2DE, 0x2
	thumb_func_end sub_0802a274

	thumb_func_start sub_0802a2e0
sub_0802a2e0:
	str		r1, [r0, #0x0]
	mov		r3, #0x0
	strb	r3, [r1, #0x0]
	strb	r3, [r1, #0x1]
	strb	r3, [r1, #0x2]
	strb	r3, [r1, #0x3]
	strb	r3, [r1, #0x4]
	mov		r3, #0xff
	strb	r3, [r1, #0x5]
	str		r2, [r0, #0x8]
	sub		r2, #0x6
	str		r2, [r0, #0x4]
	mov		r1, #0x0
	str		r1, [r0, #0x10]
	mov		r0, #0x1
	bx		lr
	thumb_func_end sub_0802a2e0

	thumb_func_start sub_0802a300
sub_0802a300:
	str		r1, [r0, #0x0]
	ldrb	r1, [r1, #0x2]
	str		r1, [r0, #0xc]
	mov		r0, #0x1
	bx		lr

.incbin "base.gba", 0x2A30A, 0x2
	thumb_func_end sub_0802a300

	thumb_func_start sub_0802a30c
sub_0802a30c:
	add		r1, r0, #0x0
	ldr		r2, [r1, #0x0]
	ldrb	r0, [r2, #0x2]
	cmp		r0, #0xff
	bne		_0802a31a
	mov		r0, #0x0
	b		_0802a338
_0802a31a:
	ldr		r0, [r1, #0xc]
	cmp		r0, #0x0
	bgt		_0802a328
	add		r0, r2, #0x3
	str		r0, [r1, #0x0]
	ldrb	r0, [r0, #0x2]
	str		r0, [r1, #0xc]
_0802a328:
	ldr		r0, [r1, #0xc]
	sub		r0, #0x1
	str		r0, [r1, #0xc]
	ldr		r1, [r1, #0x0]
	ldrb	r0, [r1, #0x0]
	ldrb	r1, [r1, #0x1]
	lsl		r1, r1, #0x8
	orr		r0, r1
_0802a338:
	bx		lr

.incbin "base.gba", 0x2A33A, 0x2
	thumb_func_end sub_0802a30c

	thumb_func_start sub_0802a33c
sub_0802a33c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	add		r2, r6, #0x0
	add		r2, #0x5c
	ldr		r0, _0802a40c
	mov		r12, r0
	mov		r5, #0x14
	ldrsh	r1, [r6, r5]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802a358
	add		r0, #0x3f
_0802a358:
	asr		r3, r0, #0x6
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	sub		r0, r4, r3
	ldr		r5, _0802a410
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r7, [r0, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0x16
	ldrsh	r1, [r6, r0]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802a382
	add		r0, #0x3f
_0802a382:
	asr		r3, r0, #0x6
	sub		r0, r4, r3
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r4, [r0, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r3, [r0, #0x0]
	lsl		r0, r7, #0x1
	str		r0, [r6, #0x5c]
	mov		r5, r8
	neg		r1, r5
	add		r0, r1, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0802a3ac
	ldr		r5, _0802a414
	add		r0, r0, r5
_0802a3ac:
	asr		r0, r0, #0xe
	str		r0, [r2, #0x4]
	add		r0, r1, #0x0
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a3bc
	ldr		r1, _0802a414
	add		r0, r0, r1
_0802a3bc:
	asr		r0, r0, #0xe
	str		r0, [r2, #0x8]
	mov		r5, r8
	lsl		r0, r5, #0x1
	str		r0, [r2, #0xc]
	add		r0, r7, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0802a3d2
	ldr		r1, _0802a414
	add		r0, r0, r1
_0802a3d2:
	asr		r0, r0, #0xe
	str		r0, [r2, #0x10]
	add		r0, r7, #0x0
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a3e2
	ldr		r5, _0802a414
	add		r0, r0, r5
_0802a3e2:
	asr		r0, r0, #0xe
	str		r0, [r2, #0x14]
	mov		r0, #0x0
	str		r0, [r2, #0x18]
	neg		r0, r3
	lsl		r0, r0, #0x1
	str		r0, [r2, #0x1c]
	lsl		r0, r4, #0x1
	str		r0, [r2, #0x20]
	add		r0, r6, #0x0
	bl		sub_0802ab54
	add		r0, r6, #0x0
	bl		sub_0802ab64
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A40A, 0x2

_0802a40c:	.4byte 0x08101068
_0802a410:	.4byte 0x000003FF
_0802a414:	.4byte 0x00003FFF
	thumb_func_end sub_0802a33c

	thumb_func_start sub_0802a418
sub_0802a418:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	add		r5, #0x80
	ldr		r6, _0802a4a0
	mov		r0, #0x16
	ldrsh	r1, [r4, r0]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802a432
	add		r0, #0x3f
_0802a432:
	asr		r2, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r3, _0802a4a4
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r7, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r6, #0x40
_0802a452:
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	bge		_0802a45c
	ldr		r1, _0802a4a8
	add		r0, r0, r1
_0802a45c:
	asr		r0, r0, #0x10
	add		r1, r0, #0x0
	mul		r1, r7
	ldr		r0, [r4, #0x28]
	sub		r0, r6, r0
	mov		r2, r8
	mul		r2, r0
	add		r0, r2, #0x0
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_0802a474
	add		r0, #0x7f
_0802a474:
	asr		r1, r0, #0x7
	ldr		r0, [r4, #0x34]
	bl		sub_0807d80c
	str		r0, [r5, #0x0]
	mul		r0, r7
	cmp		r0, #0x0
	bge		_0802a488
	ldr		r1, _0802a4ac
	add		r0, r0, r1
_0802a488:
	asr		r0, r0, #0xf
	str		r0, [r5, #0x4]
	add		r5, #0x8
	add		r6, #0x1
	cmp		r6, #0x9f
	ble		_0802a452
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A49E, 0x2

_0802a4a0:	.4byte 0x08101068
_0802a4a4:	.4byte 0x000003FF
_0802a4a8:	.4byte 0x0000FFFF
_0802a4ac:	.4byte 0x00007FFF
	thumb_func_end sub_0802a418

	thumb_func_start sub_0802a4b0
sub_0802a4b0:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r6, _0802a4f0
	mov		r0, #0x16
	ldrsh	r2, [r4, r0]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a4c2
	add		r0, #0x3f
_0802a4c2:
	asr		r3, r0, #0x6
	ldr		r0, _0802a4f4
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r5, [r0, #0x0]
	cmp		r5, #0x0
	beq		_0802a4f8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0802a4f4
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071b70
	b		_0802a4fa

.incbin "base.gba", 0x2A4EE, 0x2

_0802a4f0:	.4byte 0x08101068
_0802a4f4:	.4byte 0x000003FF

_0802a4f8:
	mov		r0, #0x0
_0802a4fa:
	add		r3, r0, #0x0
	ldr		r2, [r4, #0x10]
	sub		r1, r2, #0x1
	ldr		r0, _0802a520
	cmp		r1, r0
	bls		_0802a510
	cmp		r2, #0x0
	bge		_0802a52c
	ldr		r0, _0802a524
	cmp		r2, r0
	ble		_0802a52c
_0802a510:
	add		r0, r2, #0x0
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a51c
	ldr		r1, _0802a528
	add		r0, r0, r1
_0802a51c:
	asr		r0, r0, #0x10
	b		_0802a5de

_0802a520:	.4byte 0x0000FFFE
_0802a524:	.4byte 0xffff0000
_0802a528:	.4byte 0x0000FFFF

_0802a52c:
	ldr		r0, _0802a558
	sub		r1, r2, #0x1
	cmp		r1, r0
	bls		_0802a53e
	cmp		r2, #0x0
	bge		_0802a564
	ldr		r0, _0802a55c
	cmp		r2, r0
	ble		_0802a564
_0802a53e:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a546
	add		r0, #0xf
_0802a546:
	asr		r0, r0, #0x4
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a552
	ldr		r1, _0802a560
	add		r0, r0, r1
_0802a552:
	asr		r1, r0, #0x1b
	b		_0802a5e8

.incbin "base.gba", 0x2A556, 0x2

_0802a558:	.4byte 0x000FFFFE
_0802a55c:	.4byte 0xFFF00000
_0802a560:	.4byte 0x07FFFFFF

_0802a564:
	ldr		r0, _0802a590
	cmp		r1, r0
	bls		_0802a576
	cmp		r2, #0x0
	bge		_0802a598
	mov		r0, #0xff
	lsl		r0, r0, #0x18
	cmp		r2, r0
	ble		_0802a598
_0802a576:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a57e
	add		r0, #0xff
_0802a57e:
	asr		r0, r0, #0x8
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a58a
	ldr		r1, _0802a594
	add		r0, r0, r1
_0802a58a:
	asr		r1, r0, #0x17
	b		_0802a5e8

.incbin "base.gba", 0x2A58E, 0x2

_0802a590:	.4byte 0x00FFFFFE
_0802a594:	.4byte 0x007FFFFF

_0802a598:
	ldr		r0, _0802a5c4
	cmp		r1, r0
	bls		_0802a5aa
	cmp		r2, #0x0
	bge		_0802a5d0
	mov		r0, #0xf0
	lsl		r0, r0, #0x18
	cmp		r2, r0
	ble		_0802a5d0
_0802a5aa:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a5b4
	ldr		r1, _0802a5c8
	add		r0, r2, r1
_0802a5b4:
	asr		r0, r0, #0xc
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0802a5c0
	ldr		r1, _0802a5cc
	add		r0, r0, r1
_0802a5c0:
	asr		r1, r0, #0x13
	b		_0802a5e8

_0802a5c4:	.4byte 0x0FFFFFFE
_0802a5c8:	.4byte 0x00000FFF
_0802a5cc:	.4byte 0x0007FFFF

_0802a5d0:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802a5da
	ldr		r1, _0802a5f4
	add		r0, r0, r1
_0802a5da:
	asr		r0, r0, #0x10
	mul		r0, r3
_0802a5de:
	cmp		r0, #0x0
	bge		_0802a5e6
	ldr		r1, _0802a5f8
	add		r0, r0, r1
_0802a5e6:
	asr		r1, r0, #0xf
_0802a5e8:
	ldr		r0, [r4, #0x28]
	sub		r0, r0, r1
	str		r0, [r4, #0x2c]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0802a5f4:	.4byte 0x0000FFFF
_0802a5f8:	.4byte 0x00007FFF
	thumb_func_end sub_0802a4b0

	thumb_func_start sub_0802a5fc
sub_0802a5fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	mov		r10, r0
	ldr		r4, _0802a72c
	mov		r2, #0x14
	ldrsh	r1, [r0, r2]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802a618
	add		r0, #0x3f
_0802a618:
	asr		r2, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r3, _0802a730
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x0]
	add		r0, r2, #0x0
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	mov		r4, #0x9f
	mov		r8, r4
	mov		r0, #0xde
	lsl		r0, r0, #0x2
	add		r0, r10
	mov		r12, r0
	mov		r1, r10
	ldr		r0, [r1, #0x50]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x9
	ldr		r0, _0802a734
	mov		r2, #0xbe
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	add		r3, r1, r0
	mov		r1, r10
	add		r1, #0x18
	mov		r4, r10
	ldr		r0, [r4, #0x18]
	cmp		r0, #0x0
	bge		_0802a666
	add		r0, #0xff
_0802a666:
	asr		r0, r0, #0x8
	str		r0, [sp, #0x8]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_0802a672
	add		r0, #0xff
_0802a672:
	asr		r0, r0, #0x8
	str		r0, [sp, #0xC]
	mov		r1, r10
	ldr		r0, [r1, #0x24]
	neg		r0, r0
	str		r0, [sp, #0x10]
	ldr		r0, [r1, #0x28]
	mov		r2, r8
	sub		r5, r2, r0
	ldr		r4, _0802a738
	mov		r9, r4
_0802a688:
	mov		r0, r12
	ldr		r1, [r0, #0x4]
	ldr		r2, [r0, #0x0]
	ldr		r4, [sp, #0x0]
	add		r0, r1, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0802a69a
	add		r0, r9
_0802a69a:
	asr		r7, r0, #0xf
	neg		r0, r2
	ldr		r4, [sp, #0x4]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0802a6a8
	add		r0, r9
_0802a6a8:
	asr		r6, r0, #0xf
	ldr		r4, [sp, #0x4]
	add		r0, r1, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0802a6b6
	add		r0, r9
_0802a6b6:
	asr		r4, r0, #0xf
	ldr		r1, [sp, #0x0]
	add		r0, r2, #0x0
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a6c4
	add		r0, r9
_0802a6c4:
	asr		r2, r0, #0xf
	ldr		r1, [sp, #0x10]
	add		r0, r1, #0x0
	mul		r0, r7
	ldr		r1, [sp, #0x8]
	add		r0, r1, r0
	add		r1, r5, #0x0
	mul		r1, r6
	add		r0, r0, r1
	str		r0, [r3, #0x8]
	ldr		r1, [sp, #0x10]
	add		r0, r1, #0x0
	mul		r0, r4
	ldr		r1, [sp, #0xC]
	add		r0, r1, r0
	add		r1, r5, #0x0
	mul		r1, r2
	add		r0, r0, r1
	str		r0, [r3, #0xc]
	ldrh	r0, [r3, #0x0]
	strh	r7, [r3, #0x0]
	ldrh	r0, [r3, #0x2]
	strh	r6, [r3, #0x2]
	ldrh	r0, [r3, #0x4]
	strh	r4, [r3, #0x4]
	ldrh	r0, [r3, #0x6]
	strh	r2, [r3, #0x6]
	sub		r3, #0x10
	mov		r2, #0x8
	neg		r2, r2
	add		r12, r2
	sub		r5, #0x1
	mov		r4, #0x1
	neg		r4, r4
	add		r8, r4
	mov		r0, r8
	cmp		r0, #0x3f
	bgt		_0802a688
	mov		r2, r10
	ldr		r1, [r2, #0x50]
	mov		r0, #0x1
	sub		r0, r0, r1
	str		r0, [r2, #0x50]
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A72A, 0x2

_0802a72c:	.4byte 0x08101068
_0802a730:	.4byte 0x000003FF
_0802a734:	.4byte 0x03005360
_0802a738:	.4byte 0x00007FFF
	thumb_func_end sub_0802a5fc

	thumb_func_start sub_0802a73c
sub_0802a73c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x3c
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	str		r2, [sp, #0x18]
	add		r4, r3, #0x0
	mov		r0, sp
	str		r0, [sp, #0x34]
	add		r1, sp, #0xc
	mov		r8, r1
	add		r7, r6, #0x0
	add		r7, #0x38
	add		r0, r6, #0x0
	add		r0, #0x5c
	ldr		r2, [r6, #0x5c]
	mov		r9, r2
	ldr		r1, [r0, #0x4]
	mov		r10, r1
	ldr		r2, [r0, #0x8]
	str		r2, [sp, #0x1C]
	ldr		r1, [r0, #0xc]
	str		r1, [sp, #0x20]
	ldr		r2, [r0, #0x10]
	str		r2, [sp, #0x24]
	ldr		r1, [r0, #0x14]
	str		r1, [sp, #0x28]
	ldr		r2, [r0, #0x1c]
	str		r2, [sp, #0x2C]
	ldr		r0, [r0, #0x20]
	str		r0, [sp, #0x30]
	ldr		r1, [r5, #0x0]
	ldr		r0, [r6, #0x38]
	sub		r2, r1, r0
	str		r2, [sp, #0x0]
	ldr		r0, _0802a79c
	mov		r12, r0
	add		r0, r2, r0
	ldr		r3, _0802a7a0
	cmp		r0, r3
	bls		_0802a7a4
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_0802a94a

_0802a79c:	.4byte 0x03FFFFFF
_0802a7a0:	.4byte 0x07FFFFFE

_0802a7a4:
	ldr		r0, [r5, #0x4]
	ldr		r1, [r7, #0x4]
	sub		r0, r0, r1
	str		r0, [sp, #0x4]
	ldr		r1, _0802a7bc
	add		r0, r0, r1
	cmp		r0, r3
	bls		_0802a7c0
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r2, #0x0
	b		_0802a94a

_0802a7bc:	.4byte 0x03FFFFFF

_0802a7c0:
	ldr		r0, [r7, #0x8]
	neg		r0, r0
	str		r0, [sp, #0x8]
	add		r0, r12
	cmp		r0, r3
	bls		_0802a7d4
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_0802a94a
_0802a7d4:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a7dc
	add		r0, #0x7f
_0802a7dc:
	asr		r1, r0, #0x7
	mov		r0, r9
	cmp		r0, #0x0
	bge		_0802a7e6
	add		r0, #0xf
_0802a7e6:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a7f0
	add		r0, #0x1f
_0802a7f0:
	asr		r0, r0, #0x5
	str		r0, [sp, #0x38]
	mov		r0, r10
	cmp		r0, #0x0
	bge		_0802a7fc
	add		r0, #0xf
_0802a7fc:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a806
	add		r0, #0x1f
_0802a806:
	asr		r0, r0, #0x5
	mov		r12, r0
	ldr		r0, [sp, #0x1C]
	cmp		r0, #0x0
	bge		_0802a812
	add		r0, #0xf
_0802a812:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a81c
	add		r0, #0x1f
_0802a81c:
	asr		r0, r0, #0x5
	mov		r10, r0
	ldr		r2, [sp, #0x34]
	ldr		r1, [r2, #0x4]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802a82c
	add		r0, #0x7f
_0802a82c:
	asr		r2, r0, #0x7
	ldr		r0, [sp, #0x20]
	cmp		r0, #0x0
	bge		_0802a836
	add		r0, #0xf
_0802a836:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0802a840
	add		r0, #0x1f
_0802a840:
	asr		r0, r0, #0x5
	mov		r9, r0
	ldr		r0, [sp, #0x24]
	cmp		r0, #0x0
	bge		_0802a84c
	add		r0, #0xf
_0802a84c:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0802a856
	add		r0, #0x1f
_0802a856:
	asr		r7, r0, #0x5
	ldr		r0, [sp, #0x28]
	cmp		r0, #0x0
	bge		_0802a860
	add		r0, #0xf
_0802a860:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0802a86a
	add		r0, #0x1f
_0802a86a:
	asr		r5, r0, #0x5
	ldr		r0, [sp, #0x34]
	ldr		r2, [r0, #0x8]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802a878
	add		r0, #0x7f
_0802a878:
	asr		r1, r0, #0x7
	ldr		r0, [sp, #0x2C]
	cmp		r0, #0x0
	bge		_0802a882
	add		r0, #0xf
_0802a882:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a88c
	add		r0, #0x1f
_0802a88c:
	asr		r3, r0, #0x5
	ldr		r0, [sp, #0x30]
	cmp		r0, #0x0
	bge		_0802a896
	add		r0, #0xf
_0802a896:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0802a8a0
	add		r0, #0x1f
_0802a8a0:
	asr		r1, r0, #0x5
	ldr		r0, [sp, #0x38]
	add		r0, r9
	mov		r2, r8
	str		r0, [r2, #0x0]
	mov		r2, r12
	add		r0, r2, r7
	add		r0, r0, r3
	mov		r2, r8
	str		r0, [r2, #0x4]
	mov		r2, r10
	add		r0, r2, r5
	add		r0, r0, r1
	mov		r1, r8
	str		r0, [r1, #0x8]
	ldr		r1, [r6, #0x10]
	sub		r2, r1, r0
	cmp		r2, #0x0
	bgt		_0802a8ce
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r2, #0x0
	b		_0802a94a
_0802a8ce:
	ldr		r0, _0802a8d8
	cmp		r2, r0
	bgt		_0802a8dc
	lsl		r0, r2, #0x8
	b		_0802a8e6

_0802a8d8:	.4byte 0x001FFFFF

_0802a8dc:
	cmp		r1, #0x0
	bge		_0802a8e2
	add		r1, #0xff
_0802a8e2:
	asr		r1, r1, #0x8
	add		r0, r2, #0x0
_0802a8e6:
	bl		sub_08071b70
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x20
	lsl		r0, r0, #0x10
	mov		r1, #0xf8
	lsl		r1, r1, #0x12
	cmp		r0, r1
	bls		_0802a902
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_0802a94a
_0802a902:
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	bl		sub_08071b70
	cmp		r0, #0x0
	bge		_0802a914
	add		r0, #0xff
_0802a914:
	asr		r5, r0, #0x8
	mov		r1, r8
	ldr		r0, [r1, #0x4]
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	bl		sub_08071b70
	cmp		r0, #0x0
	bge		_0802a928
	add		r0, #0xff
_0802a928:
	asr		r2, r0, #0x8
	ldr		r0, [r6, #0x24]
	add		r0, r0, r5
	ldr		r1, [sp, #0x18]
	strh	r0, [r1, #0x0]
	ldr		r1, [r6, #0x28]
	add		r1, r1, r2
	mov		r2, #0xe0
	lsl		r2, r2, #0x2
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	add		r0, r0, r1
	ldr		r1, [sp, #0x18]
	strh	r0, [r1, #0x2]
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	lsl		r0, r0, #0x2
_0802a94a:
	strh	r0, [r4, #0x0]
	add		sp, #0x3c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802a73c

	thumb_func_start sub_0802a95c
sub_0802a95c:
	ldr		r0, [r0, #0x4c]
	bx		lr
	thumb_func_end sub_0802a95c

	thumb_func_start sub_0802a960
sub_0802a960:
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x9
	lsl		r2, r2, #0x4
	ldr		r1, _0802a970
	add		r2, r2, r1
	add		r0, r0, r2
	bx		lr

_0802a970:	.4byte 0x03005360

.incbin "base.gba", 0x2A974, 0xC
	thumb_func_end sub_0802a960

	thumb_func_start sub_0802a980
sub_0802a980:
	mov		r1, #0x0
	str		r1, [r0, #0x50]
	str		r1, [r0, #0x4c]
	mov		r2, #0xe0
	lsl		r2, r2, #0x2
	add		r0, r0, r2
	str		r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_0802a980

	thumb_func_start sub_0802a990
sub_0802a990:
	push	{ lr }
	lsl		r1, r1, #0x10
	str		r1, [r0, #0xc]
	bl		sub_0802ab38
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A99E, 0x2
	thumb_func_end sub_0802a990

	thumb_func_start sub_0802a9a0
sub_0802a9a0:
	push	{ lr }
	lsl		r1, r1, #0x10
	str		r1, [r0, #0x10]
	bl		sub_0802a418
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A9AE, 0x2
	thumb_func_end sub_0802a9a0

	thumb_func_start sub_0802a9b0
sub_0802a9b0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	strh	r1, [r4, #0x16]
	bl		sub_0802a33c
	add		r0, r4, #0x0
	bl		sub_0802a418
	add		r0, r4, #0x0
	bl		sub_0802ab4c
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802a9b0

	thumb_func_start sub_0802a9cc
sub_0802a9cc:
	push	{ lr }
	strh	r1, [r0, #0x14]
	bl		sub_0802a33c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2A9D8, 0x10
	thumb_func_end sub_0802a9cc

	thumb_func_start sub_0802a9e8
sub_0802a9e8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	str		r1, [r4, #0x0]
	str		r2, [r4, #0x4]
	bl		sub_0802ab4c
	add		r0, r4, #0x0
	bl		sub_0802ab54
	add		r0, r4, #0x0
	bl		sub_0802ab64
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2AA06, 0x1A
	thumb_func_end sub_0802a9e8

	thumb_func_start sub_0802aa20
sub_0802aa20:
	str		r1, [r0, #0x24]
	str		r2, [r0, #0x28]
	bx		lr

.incbin "base.gba", 0x2AA26, 0xE
	thumb_func_end sub_0802aa20

	thumb_func_start sub_0802aa34
sub_0802aa34:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	cmp		r4, #0x0
	bne		_0802aa44
	mov		r0, #0x0
	b		_0802aa82
_0802aa44:
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802aa4c
	neg		r2, r4
_0802aa4c:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802aa56
	ldr		r2, _0802aa68
	add		r0, r0, r2
_0802aa56:
	asr		r2, r0, #0xe
	lsl		r0, r1, #0x10
	asr		r1, r0, #0x10
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0802aa6c
	add		r0, r2, #0x0
	b		_0802aa72

_0802aa68:	.4byte 0x00003FFF

_0802aa6c:
	lsl		r0, r2, #0x8
	bl		sub_08071b70
_0802aa72:
	cmp		r4, #0x0
	bge		_0802aa7e
	neg		r0, r0
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	b		_0802aa82
_0802aa7e:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
_0802aa82:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0802aa34

	thumb_func_start sub_0802aa88
sub_0802aa88:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	lsl		r3, r3, #0x10
	lsr		r0, r3, #0x10
	mov		r2, #0x0
	cmp		r4, #0x0
	beq		_0802aad8
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802aaa6
	neg		r2, r4
_0802aaa6:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802aab0
	ldr		r2, _0802aac0
	add		r0, r0, r2
_0802aab0:
	asr		r2, r0, #0xe
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0802aac4
	add		r0, r2, #0x0
	b		_0802aaca

.incbin "base.gba", 0x2AABE, 0x2

_0802aac0:	.4byte 0x00003FFF

_0802aac4:
	lsl		r0, r2, #0x8
	bl		sub_08071b70
_0802aaca:
	cmp		r4, #0x0
	bge		_0802aad0
	neg		r0, r0
_0802aad0:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0802aad8:
	ldrh	r0, [r5, #0x0]
	strh	r0, [r6, #0x0]
	ldrh	r1, [r5, #0x2]
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	sub		r1, r1, r0
	strh	r1, [r6, #0x2]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802aa88

	thumb_func_start sub_0802aaec
sub_0802aaec:
	push	{ lr }
	add		r2, r1, #0x0
	add		r2, #0x1c
	add		r3, r1, #0x0
	add		r3, #0x24
	bl		sub_0802a73c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2AAFE, 0x3A
	thumb_func_end sub_0802aaec

	thumb_func_start sub_0802ab38
sub_0802ab38:
	push	{ lr }
	ldr		r1, [r0, #0xc]
	ldr		r2, [r0, #0x30]
	add		r1, r1, r2
	str		r1, [r0, #0x34]
	bl		sub_0802a418
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2AB4A, 0x2
	thumb_func_end sub_0802ab38

	thumb_func_start sub_0802ab4c
sub_0802ab4c:
	mov		r1, #0x0
	str		r1, [r0, #0x30]
	bx		lr

.incbin "base.gba", 0x2AB52, 0x2
	thumb_func_end sub_0802ab4c

	thumb_func_start sub_0802ab54
sub_0802ab54:
	ldr		r1, [r0, #0x0]
	str		r1, [r0, #0x18]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x1c]
	mov		r1, #0x0
	str		r1, [r0, #0x20]
	bx		lr

.incbin "base.gba", 0x2AB62, 0x2
	thumb_func_end sub_0802ab54

	thumb_func_start sub_0802ab64
sub_0802ab64:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r6, #0x5c
	ldr		r2, [r0, #0x10]
	ldr		r1, [r0, #0xc]
	sub		r3, r2, r1
	add		r7, r0, #0x0
	add		r7, #0x38
	add		r5, r0, #0x0
	add		r1, r3, #0x0
	cmp		r3, #0x0
	bge		_0802ab7e
	neg		r1, r3
_0802ab7e:
	ldr		r0, _0802ab8c
	cmp		r1, r0
	bgt		_0802ab90
	mov		r2, #0x0
	mov		r4, #0x10
	b		_0802abb4

.incbin "base.gba", 0x2AB8A, 0x2

_0802ab8c:	.4byte 0x0000FFFF

_0802ab90:
	ldr		r0, _0802ab9c
	cmp		r1, r0
	bgt		_0802aba0
	mov		r2, #0x5
	mov		r4, #0xb
	b		_0802abb4

_0802ab9c:	.4byte 0x000FFFFF

_0802aba0:
	ldr		r0, _0802abac
	cmp		r1, r0
	bgt		_0802abb0
	mov		r2, #0x9
	mov		r4, #0x7
	b		_0802abb4

_0802abac:	.4byte 0x00FFFFFF

_0802abb0:
	mov		r2, #0xd
	mov		r4, #0x3
_0802abb4:
	asr		r3, r2
	add		r2, r3, #0x0
	ldr		r0, [r6, #0x8]
	add		r1, r2, #0x0
	mul		r1, r0
	asr		r1, r4
	ldr		r0, [r5, #0x0]
	sub		r0, r0, r1
	str		r0, [r7, #0x0]
	ldr		r0, [r6, #0x14]
	add		r1, r2, #0x0
	mul		r1, r0
	asr		r1, r4
	ldr		r0, [r5, #0x4]
	sub		r0, r0, r1
	str		r0, [r7, #0x4]
	ldr		r0, [r6, #0x20]
	add		r1, r2, #0x0
	mul		r1, r0
	asr		r1, r4
	ldr		r0, [r5, #0x8]
	sub		r0, r0, r1
	str		r0, [r7, #0x8]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2ABE8, 0x18
	thumb_func_end sub_0802ab64

	thumb_func_start sub_0802ac00
sub_0802ac00:
	push	{ r4, lr }
	mov		r12, r0
	mov		r1, #0xe6
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r0, #0x18]
	str		r0, [r1, #0x0]
	mov		r1, #0xe7
	lsl		r1, r1, #0x2
	add		r1, r12
	mov		r2, r12
	ldr		r0, [r2, #0x1c]
	str		r0, [r1, #0x0]
	ldrh	r2, [r2, #0x14]
	mov		r0, #0xe8
	lsl		r0, r0, #0x2
	add		r0, r12
	mov		r3, #0x0
	mov		r1, #0x0
	strh	r2, [r0, #0x0]
	ldr		r0, _0802aca4
	add		r0, r12
	strh	r1, [r0, #0x0]
	mov		r2, #0xe2
	lsl		r2, r2, #0x2
	add		r2, r12
	mov		r4, r12
	ldr		r0, [r4, #0x18]
	str		r0, [r2, #0x0]
	mov		r2, #0xe3
	lsl		r2, r2, #0x2
	add		r2, r12
	ldr		r0, [r4, #0x1c]
	str		r0, [r2, #0x0]
	ldrh	r2, [r4, #0x14]
	mov		r0, #0xe4
	lsl		r0, r0, #0x2
	add		r0, r12
	strh	r2, [r0, #0x0]
	ldr		r0, _0802aca8
	add		r0, r12
	strh	r1, [r0, #0x0]
	mov		r0, #0xe5
	lsl		r0, r0, #0x2
	add		r0, r12
	strh	r1, [r0, #0x0]
	ldr		r0, _0802acac
	add		r0, r12
	strh	r1, [r0, #0x0]
	mov		r0, #0xe9
	lsl		r0, r0, #0x2
	add		r0, r12
	strh	r1, [r0, #0x0]
	mov		r0, #0xec
	lsl		r0, r0, #0x2
	add		r0, r12
	str		r1, [r0, #0x0]
	mov		r0, #0xed
	lsl		r0, r0, #0x2
	add		r0, r12
	str		r1, [r0, #0x0]
	mov		r0, #0xee
	lsl		r0, r0, #0x2
	add		r0, r12
	str		r1, [r0, #0x0]
	mov		r0, #0xef
	lsl		r0, r0, #0x2
	add		r0, r12
	str		r1, [r0, #0x0]
	mov		r0, #0xe1
	lsl		r0, r0, #0x2
	add		r0, r12
	strh	r1, [r0, #0x0]
	ldr		r0, _0802acb0
	add		r0, r12
	strb	r3, [r0, #0x0]
	mov		r0, r12
	bl		sub_0802addc
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802aca4:	.4byte 0x000003A2
_0802aca8:	.4byte 0x00000392
_0802acac:	.4byte 0x00000396
_0802acb0:	.4byte 0x00000386
	thumb_func_end sub_0802ac00

	thumb_func_start sub_0802acb4
sub_0802acb4:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	mov		r0, #0xe2
	lsl		r0, r0, #0x2
	add		r1, r2, r0
	mov		r3, #0xe6
	lsl		r3, r3, #0x2
	add		r0, r2, r3
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	mov		r4, #0xe3
	lsl		r4, r4, #0x2
	add		r1, r2, r4
	mov		r5, #0xe7
	lsl		r5, r5, #0x2
	add		r0, r2, r5
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	mov		r0, #0xe8
	lsl		r0, r0, #0x2
	add		r3, r2, r0
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r4, r2, r1
	ldrh	r0, [r3, #0x0]
	ldrh	r1, [r4, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_0802ad02
	add		r5, #0xe4
	add		r0, r1, r5
	strh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802ad14
	b		_0802ad12
_0802ad02:
	ldr		r5, _0802ad28
	add		r0, r1, r5
	strh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_0802ad14
_0802ad12:
	strh	r1, [r4, #0x0]
_0802ad14:
	ldr		r0, _0802ad2c
	add		r1, r2, r0
	ldrh	r3, [r1, #0x0]
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x27
	bgt		_0802ad30
	add		r0, r3, #0x0
	add		r0, #0x8
	b		_0802ad32

_0802ad28:	.4byte 0xFFFFFB80
_0802ad2c:	.4byte 0x00000396

_0802ad30:
	mov		r0, #0x30
_0802ad32:
	strh	r0, [r1, #0x0]
	ldr		r5, _0802ad80
	add		r0, r2, r5
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_0802ad52
	ldr		r3, _0802ad84
	add		r0, r2, r3
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	cmp		r1, #0x0
	bne		_0802ad52
	add		r5, #0x4
	add		r0, r2, r5
	strh	r1, [r0, #0x0]
_0802ad52:
	ldr		r0, _0802ad84
	add		r4, r2, r0
	ldr		r1, _0802ad80
	add		r3, r2, r1
	ldrh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_0802ad8c
	ldr		r5, _0802ad88
	add		r0, r2, r5
	ldrh	r0, [r0, #0x0]
	add		r0, r1, r0
	strh	r0, [r3, #0x0]
	ldrh	r1, [r4, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802ada6
	b		_0802ada4

.incbin "base.gba", 0x2AD7E, 0x2

_0802ad80:	.4byte 0x00000392
_0802ad84:	.4byte 0x000003A2
_0802ad88:	.4byte 0x00000396

_0802ad8c:
	cmp		r0, #0x0
	bge		_0802ada6
	ldr		r5, _0802adc8
	add		r0, r2, r5
	ldrh	r0, [r0, #0x0]
	sub		r0, r1, r0
	strh	r0, [r3, #0x0]
	ldrh	r1, [r4, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_0802ada6
_0802ada4:
	strh	r1, [r3, #0x0]
_0802ada6:
	mov		r1, #0xe9
	lsl		r1, r1, #0x2
	add		r0, r2, r1
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	mov		r4, #0xe5
	lsl		r4, r4, #0x2
	add		r2, r2, r4
	mov		r5, #0x0
	ldrsh	r0, [r2, r5]
	sub		r1, r1, r0
	cmp		r1, #0x0
	ble		_0802adcc
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	b		_0802add4

.incbin "base.gba", 0x2ADC6, 0x2

_0802adc8:	.4byte 0x00000396

_0802adcc:
	cmp		r1, #0x0
	bge		_0802add6
	ldrh	r0, [r2, #0x0]
	sub		r0, #0x1
_0802add4:
	strh	r0, [r2, #0x0]
_0802add6:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802acb4

	thumb_func_start sub_0802addc
sub_0802addc:
	push	{ lr }
	bl		sub_0802a5fc
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2ADE6, 0x2
	thumb_func_end sub_0802addc

	thumb_func_start sub_0802ade8
sub_0802ade8:
	push	{ r4, lr }
	mov		r12, r0
	mov		r0, #0xeb
	lsl		r0, r0, #0x2
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x49
	mov		r1, #0xea
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r2, [r1, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x2
	add		r1, r12
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	str		r0, [r1, #0x0]
	ldr		r1, [r2, #0x8]
	ldr		r0, _0802ae40
	mov		r3, #0x0
	ldrsb	r3, [r0, r3]
	add		r4, r0, #0x0
	cmp		r1, r3
	beq		_0802ae30
	str		r3, [r2, #0x8]
	ldr		r1, _0802ae44
	ldr		r0, [r1, #0x14]
	cmp		r0, r2
	bne		_0802ae30
	ldr		r2, _0802ae48
	ldrb	r0, [r2, #0x1]
	strb	r3, [r2, #0x1]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x20
	orr		r0, r1
	strb	r0, [r2, #0x0]
_0802ae30:
	mov		r0, #0xeb
	lsl		r0, r0, #0x2
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	strb	r0, [r4, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802ae40:	.4byte 0x03002190
_0802ae44:	.4byte 0x03005340
_0802ae48:	.4byte 0x04000004

.incbin "base.gba", 0x2AE4C, 0x28
	thumb_func_end sub_0802ade8

	thumb_func_start sub_0802ae74
sub_0802ae74:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	ldr		r1, _0802aeb0
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bge		_0802ae8a
	add		r0, #0x3f
_0802ae8a:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	mov		r4, #0xe2
	lsl		r4, r4, #0x2
	add		r2, r3, r4
	add		r4, #0xc
	add		r0, r3, r4
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	mul		r1, r0
	ldr		r0, [r2, #0x0]
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2AEAE, 0x2

_0802aeb0:	.4byte 0x08101068
	thumb_func_end sub_0802ae74

	thumb_func_start sub_0802aeb4
sub_0802aeb4:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	ldr		r2, _0802aef8
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	cmp		r1, #0x0
	bge		_0802aeca
	add		r1, #0x3f
_0802aeca:
	asr		r1, r1, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _0802aefc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	mov		r0, #0xe3
	lsl		r0, r0, #0x2
	add		r2, r3, r0
	mov		r4, #0xe5
	lsl		r4, r4, #0x2
	add		r0, r3, r4
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	mul		r1, r0
	ldr		r0, [r2, #0x0]
	sub		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802aef8:	.4byte 0x08101068
_0802aefc:	.4byte 0x000003FF

.incbin "base.gba", 0x2AF00, 0x18
	thumb_func_end sub_0802aeb4

	thumb_func_start sub_0802af18
sub_0802af18:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r4, #0x1
	mov		r1, #0xe2
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	mov		r2, #0xe6
	lsl		r2, r2, #0x2
	add		r1, r3, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	cmp		r2, r0
	bne		_0802af5e
	mov		r1, #0xe3
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	mov		r2, #0xe7
	lsl		r2, r2, #0x2
	add		r1, r3, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	cmp		r2, r0
	bne		_0802af5e
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	ldr		r1, [r0, #0x0]
	mov		r2, #0xe8
	lsl		r2, r2, #0x2
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	eor		r1, r0
	neg		r0, r1
	orr		r0, r1
	lsr		r4, r0, #0x1f
_0802af5e:
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2AF66, 0x2
	thumb_func_end sub_0802af18

	thumb_func_start sub_0802af68
sub_0802af68:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r2, #0x0
	add		r0, r5, #0x0
	add		r0, #0x30
	ldrb	r2, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0802b000
	ldrb	r0, [r5, #0x1]
	cmp		r0, #0x0
	beq		_0802afe0
	ldrb	r1, [r5, #0x3]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802afcc
	add		r0, r5, #0x0
	add		r0, #0x80
	ldr		r1, [r0, #0x0]
	mov		r8, r0
	ldr		r7, _0802afc8
	add		r4, r5, r1
	mov		r6, #0x3
_0802af9e:
	ldrh	r1, [r4, #0x0]
	cmp		r1, #0x0
	beq		_0802afb6
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	add		r0, r5, r0
	add		r0, r0, r1
	add		r1, r7, #0x0
	bl		sub_08071b7c
	bl		sub_0802711c
_0802afb6:
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	add		r7, r7, r0
	add		r4, #0x2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0802af9e
	b		_0802b076

.incbin "base.gba", 0x2AFC6, 0x2

_0802afc8:	.4byte 0x06008000

_0802afcc:
	add		r0, r5, #0x0
	add		r0, #0x80
	ldr		r0, [r0, #0x0]
	add		r0, r5, r0
	ldr		r1, _0802afdc
	bl		sub_08071b7c
	b		_0802b076

_0802afdc:	.4byte 0x06008000

_0802afe0:
	bl		sub_08029f34
	add		r1, r5, #0x0
	add		r1, #0x80
	ldr		r1, [r1, #0x0]
	add		r1, r5, r1
	ldr		r2, _0802aff8
	ldr		r3, _0802affc
	bl		sub_08029ee4
	b		_0802b076

.incbin "base.gba", 0x2AFF6, 0x2

_0802aff8:	.4byte 0x06008000
_0802affc:	.4byte 0x84001000

_0802b000:
	add		r0, r2, r1
	lsl		r0, r0, #0x18
	ldr		r1, _0802b058
	lsr		r0, r0, #0x16
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _0802b05c
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	add		r4, r2, r1
	ldrb	r1, [r4, #0x3]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802b068
	ldr		r1, _0802b060
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r7, _0802b064
	add		r5, r4, r0
	mov		r6, #0x3
_0802b02e:
	ldrh	r1, [r5, #0x0]
	cmp		r1, #0x0
	beq		_0802b048
	add		r0, r4, #0x0
	add		r0, #0x80
	ldr		r0, [r0, #0x0]
	add		r0, r4, r0
	add		r0, r0, r1
	add		r1, r7, #0x0
	bl		sub_08071b7c
	bl		sub_0802711c
_0802b048:
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r7, r7, r2
	add		r5, #0x2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0802b02e
	b		_0802b076

_0802b058:	.4byte 0x08102bf8
_0802b05c:	.4byte 0x08258000
_0802b060:	.4byte 0x08258080
_0802b064:	.4byte 0x06008000

_0802b068:
	ldr		r1, _0802b08c
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	add		r0, r4, r0
	ldr		r1, _0802b090
	bl		sub_08071b7c
_0802b076:
	bl		sub_0802711c
	ldr		r0, _0802b094
	ldr		r1, _0802b098
	bl		sub_08071b7c
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802b08c:	.4byte 0x08258080
_0802b090:	.4byte 0x06008000
_0802b094:	.4byte 0x08092540
_0802b098:	.4byte 0x0600B800
	thumb_func_end sub_0802af68

	thumb_func_start sub_0802b09c
sub_0802b09c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r2, #0x0
	add		r0, r7, #0x0
	add		r0, #0xec
	ldrb	r2, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0802b114
	add		r0, r7, #0x0
	add		r0, #0xe4
	ldr		r2, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0xe8
	add		r0, r0, r7
	mov		r9, r0
	cmp		r2, #0x0
	beq		_0802b198
	ldrb	r1, [r7, #0x3]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802b104
	ldr		r6, _0802b100
	add		r4, r7, r2
	mov		r5, #0x1
_0802b0d8:
	ldrh	r1, [r4, #0x0]
	cmp		r1, #0x0
	beq		_0802b0f0
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	add		r0, r7, r0
	add		r0, r0, r1
	add		r1, r6, #0x0
	bl		sub_08071b7c
	bl		sub_0802711c
_0802b0f0:
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	add		r6, r6, r0
	add		r4, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_0802b0d8
	b		_0802b198

_0802b100:	.4byte 0x06010000

_0802b104:
	add		r0, r7, r2
	ldr		r1, _0802b110
	bl		sub_08071b7c
	b		_0802b198

.incbin "base.gba", 0x2B10E, 0x2

_0802b110:	.4byte 0x06010000

_0802b114:
	add		r0, r2, r1
	lsl		r0, r0, #0x18
	ldr		r1, _0802b174
	lsr		r0, r0, #0x16
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _0802b178
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	add		r5, r2, r1
	ldrb	r1, [r5, #0x3]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802b184
	ldr		r1, _0802b17c
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	mov		r2, #0xe8
	add		r2, r2, r7
	mov		r9, r2
	ldr		r1, _0802b180
	mov		r8, r1
	add		r4, r5, r0
	mov		r6, #0x1
_0802b14a:
	ldrh	r1, [r4, #0x0]
	cmp		r1, #0x0
	beq		_0802b164
	add		r0, r5, #0x0
	add		r0, #0xe4
	ldr		r0, [r0, #0x0]
	add		r0, r5, r0
	add		r0, r0, r1
	mov		r1, r8
	bl		sub_08071b7c
	bl		sub_0802711c
_0802b164:
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r8, r2
	add		r4, #0x2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0802b14a
	b		_0802b198

_0802b174:	.4byte 0x08102bf8
_0802b178:	.4byte 0x08258000
_0802b17c:	.4byte 0x082580e4
_0802b180:	.4byte 0x06010000

_0802b184:
	ldr		r1, _0802b1c0
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	add		r0, r5, r0
	ldr		r1, _0802b1c4
	bl		sub_08071b7c
	mov		r2, #0xe8
	add		r2, r2, r7
	mov		r9, r2
_0802b198:
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0802b1b2
	add		r4, r7, r0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x18
	bl		sub_08071b68
_0802b1b2:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2B1BE, 0x2

_0802b1c0:	.4byte 0x082580e4
_0802b1c4:	.4byte 0x06010000
	thumb_func_end sub_0802b09c

	thumb_func_start sub_0802b1c8
sub_0802b1c8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _0802b1e8
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	ldr		r0, [r0, #0x8]
	sub		r0, #0x1
	cmp		r0, #0x32
	bls		_0802b1de
	b		_0802b480
_0802b1de:
	lsl		r0, r0, #0x2
	ldr		r1, _0802b1ec
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0802b1e8:	.4byte 0x08102bf8
_0802b1ec:	.4byte 0x0802b1f0
_0802b1f0:	.4byte 0x0802b474

.incbin "base.gba", 0x2B1F4, 0xC8
	thumb_func_end sub_0802b1c8


.incbin "base.gba", 0x2B2BC, 0x1C4

_0802b480:

.incbin "base.gba", 0x2B480, 0x10
	thumb_func_start sub_0802b490
sub_0802b490:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	ldr		r1, _0802b5b0
	lsl		r0, r7, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _0802b5b4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r6, r0, r1
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	mov		r2, #0x0
	mov		r1, #0xf
	ldr		r3, _0802b5b8
	add		r0, r5, r3
_0802b4bc:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0802b4bc
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	mov		r3, r8
	str		r3, [r0, #0x0]
	sub		r1, #0x4
	add		r0, r5, r1
	str		r6, [r0, #0x0]
	ldr		r2, _0802b5bc
	ldr		r3, _0802b5c0
	add		r1, r3, #0x0
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bl		sub_0802711c
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_0802af68
	add		r0, r6, #0x0
	add		r0, #0x84
	ldr		r4, [r0, #0x0]
	add		r4, r6, r4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x18
	bl		sub_08071b68
	ldr		r4, _0802b5c4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	bl		sub_0802711c
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_0802b09c
	add		r0, r5, #0x0
	bl		sub_0802c4bc
	bl		sub_0802711c
	add		r0, r5, #0x0
	add		r0, #0xa4
	add		r1, r6, #0x0
	bl		sub_0802c970
	bl		sub_0802711c
	add		r0, r6, #0x0
	add		r0, #0xf0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802b554
	add		r0, r5, #0x0
	bl		sub_0802bf28
_0802b554:
	bl		sub_0802711c
	add		r0, r6, #0x0
	add		r0, #0xca
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802b56e
	add		r0, r5, #0x0
	bl		sub_0802c880
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [r5, #0x20]
_0802b56e:
	add		r0, r5, #0x0
	bl		sub_0802ba9c
	add		r0, r6, #0x0
	add		r0, #0xc0
	ldrh	r0, [r0, #0x0]
	str		r0, [r5, #0x4]
	bl		sub_0802711c
	mov		r0, r8
	bl		sub_0802d7f8
	bl		sub_0802711c
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_0802b1c8
	ldr		r0, _0802b5b0
	lsl		r1, r7, #0x2
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0xc]
	sub		r0, #0x2
	add		r5, r1, #0x0
	cmp		r0, #0x21
	bls		_0802b5a6
	b		_0802b6a4
_0802b5a6:
	lsl		r0, r0, #0x2
	ldr		r1, _0802b5c8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0802b5b0:	.4byte 0x08102bf8
_0802b5b4:	.4byte 0x08258000
_0802b5b8:	.4byte 0x00000554
_0802b5bc:	.4byte 0x0400000C
_0802b5c0:	.4byte 0x00003889
_0802b5c4:	.4byte 0x0809270c
_0802b5c8:	.4byte 0x0802b5cc
_0802b5cc:	.4byte 0x0802b65c

.incbin "base.gba", 0x2B5D0, 0x84
	thumb_func_end sub_0802b490


.incbin "base.gba", 0x2B654, 0x50

_0802b6a4:

.incbin "base.gba", 0x2B6A4, 0x1A
_0802b6be:

.incbin "base.gba", 0x2B6BE, 0xC
_0802b6ca:

.incbin "base.gba", 0x2B6CA, 0xA
_0802b6d4:	.4byte 0x08102bf8
_0802b6d8:	.4byte 0x08084868
_0802b6dc:	.4byte 0x06013F60
_0802b6e0:	.4byte 0x80000040
_0802b6e4:	.4byte 0x0802b6e8
_0802b6e8:	.4byte 0x0802b7b0

.incbin "base.gba", 0x2B6EC, 0x20A

_0802b8f6:

.incbin "base.gba", 0x2B8F6, 0x1A
_0802b910:	.4byte 0x0810c744
	thumb_func_start sub_0802b914
sub_0802b914:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r5, r2, #0x0
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	ldr		r0, _0802b9b8
	mov		r1, #0xff
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_0802b94a
	ldr		r1, _0802b9bc
	add		r0, r3, r1
	ldr		r2, [r0, #0x0]
	cmp		r2, #0x0
	beq		_0802b94a
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _0802b9c0
	ldrb	r1, [r1, #0x0]
	lsl		r1, r1, #0x18
	asr		r1, r1, #0x18
	bl		sub_0807d7d8
_0802b94a:
	ldr		r2, _0802b9b8
	ldr		r0, _0802b9c4
	add		r2, r2, r0
	mov		r3, #0x80
	lsl		r3, r3, #0x13
	ldrh	r1, [r3, #0x0]
	ldr		r0, _0802b9c8
	and		r0, r1
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _0802b9cc
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x0]
	sub		r1, #0x46
	ldrh	r0, [r2, #0x8]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xa]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0xc]
	strh	r0, [r1, #0x0]
	add		r1, #0x6
	ldrh	r0, [r2, #0xe]
	strh	r0, [r1, #0x0]
	add		r3, #0x16
	ldr		r4, _0802b9c0
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	ldrh	r0, [r2, #0x10]
	sub		r0, r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _0802b9d0
	ldrh	r0, [r2, #0x12]
	strh	r0, [r1, #0x0]
	add		r3, #0x4
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	ldrh	r0, [r2, #0x14]
	sub		r0, r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _0802b9d4
	ldrh	r0, [r2, #0x16]
	strh	r0, [r1, #0x0]
	add		r3, #0x4
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	ldrh	r0, [r2, #0x18]
	sub		r0, r0, r1
	strh	r0, [r3, #0x0]
	strb	r5, [r4, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0802b9b8:	.4byte 0x030031A0
_0802b9bc:	.4byte 0x00000514
_0802b9c0:	.4byte 0x03002198
_0802b9c4:	.4byte 0x0000057C
_0802b9c8:	.4byte 0x00007040
_0802b9cc:	.4byte 0x04000050
_0802b9d0:	.4byte 0x04000018
_0802b9d4:	.4byte 0x0400001C
	thumb_func_end sub_0802b914

	thumb_func_start sub_0802b9d8
sub_0802b9d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	ldr		r1, _0802ba10
	add		r0, r6, r1
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r4, #0x0
	cmp		r0, #0x0
	beq		_0802b9f4
	add		r4, r7, r0
_0802b9f4:
	cmp		r4, #0x0
	beq		_0802ba90
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0802ba90
	ldr		r3, _0802ba14
	mov		r8, r3
_0802ba02:
	add		r0, #0x7f
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	cmp		r5, #0x7
	bls		_0802ba18
	add		r4, #0x4
	b		_0802ba8a

_0802ba10:	.4byte 0x00000574
_0802ba14:	.4byte 0x030039A1

_0802ba18:
	add		r4, #0x1
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	bl		sub_0802c6c8
	cmp		r0, #0x0
	beq		_0802ba34
	lsl		r2, r5, #0x4
	add		r1, r6, #0x0
	add		r1, #0x24
	add		r1, r1, r2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	b		_0802ba46
_0802ba34:
	lsl		r2, r5, #0x4
	add		r1, r6, #0x0
	add		r1, #0x24
	add		r1, r1, r2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	mov		r3, #0x80
	lsl		r3, r3, #0xb
	add		r0, r0, r3
_0802ba46:
	str		r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, r6, #0x0
	add		r1, #0x28
	add		r1, r1, r2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	mov		r3, #0x80
	lsl		r3, r3, #0xb
	add		r0, r0, r3
	str		r0, [r1, #0x0]
	add		r4, #0x1
	add		r0, r7, #0x0
	add		r0, #0xca
	ldrb	r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0802ba80
	add		r1, r6, #0x0
	add		r1, #0x2c
	add		r1, r1, r2
	ldr		r2, _0802ba7c
	lsl		r0, r5, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	b		_0802ba88

.incbin "base.gba", 0x2BA7A, 0x2

_0802ba7c:	.4byte 0x08102068

_0802ba80:
	add		r0, r6, #0x0
	add		r0, #0x2c
	add		r0, r0, r2
	str		r1, [r0, #0x0]
_0802ba88:
	add		r4, #0x1
_0802ba8a:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0802ba02
_0802ba90:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2BA9A, 0x2
	thumb_func_end sub_0802b9d8

	thumb_func_start sub_0802ba9c
sub_0802ba9c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x24
	add		r7, r0, #0x0
	ldr		r0, _0802bad4
	add		r3, r0, #0x0
	add		r3, #0x24
	ldr		r1, _0802bad8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_0802baf6
	cmp		r1, r0
	bgt		_0802badc
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0802baee
	b		_0802bd0a

.incbin "base.gba", 0x2BAD2, 0x2

_0802bad4:	.4byte 0x030031A0
_0802bad8:	.4byte 0x000007FE

_0802badc:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0802bb7a
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_0802baee
	b		_0802bd0a
_0802baee:
	add		r0, r7, #0x0
	bl		sub_0802b9d8
	b		_0802bd0a
_0802baf6:
	mov		r2, sp
	ldr		r3, _0802bb14
	add		r0, r7, r3
	ldr		r3, [r0, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_0802bb0c
	add		r1, r3, r0
_0802bb0c:
	cmp		r1, #0x0
	beq		_0802bb60
	b		_0802bb5a

.incbin "base.gba", 0x2BB12, 0x2

_0802bb14:	.4byte 0x00000574

_0802bb18:
	cmp		r0, #0x89
	bne		_0802bb38
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	mov		r3, #0x80
	lsl		r3, r3, #0xb
	add		r0, r0, r3
	str		r0, [r2, #0x0]
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r2, #0x4]
	add		r1, #0x2
	b		_0802bb5a
_0802bb38:
	cmp		r0, #0x8a
	bne		_0802bb58
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	mov		r3, #0x80
	lsl		r3, r3, #0xb
	add		r0, r0, r3
	str		r0, [r2, #0x8]
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r2, #0xC]
	add		r1, #0x2
	b		_0802bb5a
_0802bb58:
	add		r1, #0x4
_0802bb5a:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0802bb18
_0802bb60:
	ldr		r0, [sp, #0x0]
	ldr		r1, [sp, #0x8]
	add		r0, r0, r1
	asr		r0, r0, #0x1
	str		r0, [r7, #0x24]
	ldr		r0, [sp, #0x4]
	ldr		r1, [sp, #0xC]
	add		r0, r0, r1
	asr		r0, r0, #0x1
	str		r0, [r7, #0x28]
	mov		r0, #0x0
	str		r0, [r7, #0x2c]
	b		_0802bd0a
_0802bb7a:
	ldr		r1, _0802bb9c
	add		r0, r7, r1
	ldr		r2, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_0802bb8e
	add		r1, r2, r0
_0802bb8e:
	add		r2, r7, #0x0
	add		r2, #0x2c
	str		r2, [sp, #0x20]
	cmp		r1, #0x0
	beq		_0802bbe8
	b		_0802bbe2

.incbin "base.gba", 0x2BB9A, 0x2

_0802bb9c:	.4byte 0x00000574

_0802bba0:
	cmp		r0, #0x89
	bne		_0802bbc0
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	mov		r2, #0x80
	lsl		r2, r2, #0xb
	add		r0, r0, r2
	str		r0, [sp, #0x10]
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r2
	str		r0, [sp, #0x14]
	add		r1, #0x2
	b		_0802bbe2
_0802bbc0:
	cmp		r0, #0x8a
	bne		_0802bbe0
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	mov		r2, #0x80
	lsl		r2, r2, #0xb
	add		r0, r0, r2
	str		r0, [sp, #0x18]
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r2
	str		r0, [sp, #0x1C]
	add		r1, #0x2
	b		_0802bbe2
_0802bbe0:
	add		r1, #0x4
_0802bbe2:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0802bba0
_0802bbe8:
	ldr		r1, _0802bbfc
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_0802bc68
	cmp		r0, #0x3
	bgt		_0802bc00
	cmp		r0, #0x2
	beq		_0802bc06
	b		_0802bcfa

_0802bbfc:	.4byte 0x000007D7

_0802bc00:
	cmp		r0, #0x4
	beq		_0802bc94
	b		_0802bcfa
_0802bc06:
	add		r6, sp, #0x10
	ldr		r4, [sp, #0x10]
	lsl		r0, r4, #0x1
	ldr		r2, [r6, #0x8]
	mov		r10, r2
	add		r0, r10
	mov		r1, #0x3
	bl		sub_0807d80c
	mov		r9, r0
	str		r0, [r7, #0x24]
	ldr		r5, [r6, #0x4]
	lsl		r0, r5, #0x1
	ldr		r6, [r6, #0xC]
	mov		r8, r6
	add		r0, r8
	mov		r1, #0x3
	bl		sub_0807d80c
	add		r6, r0, #0x0
	str		r6, [r7, #0x28]
	add		r4, r10
	add		r4, r10
	add		r0, r4, #0x0
	mov		r1, #0x3
	bl		sub_0807d80c
	add		r4, r0, #0x0
	str		r4, [r7, #0x34]
	add		r5, r8
	add		r5, r8
	add		r0, r5, #0x0
	mov		r1, #0x3
	bl		sub_0807d80c
	ldr		r1, _0802bc64
	mov		r3, r9
	and		r3, r1
	str		r3, [r7, #0x24]
	and		r6, r1
	str		r6, [r7, #0x28]
	and		r4, r1
	str		r4, [r7, #0x34]
	and		r0, r1
	str		r0, [r7, #0x38]
	b		_0802bcfa

.incbin "base.gba", 0x2BC62, 0x2

_0802bc64:	.4byte 0xffff0000

_0802bc68:
	add		r2, sp, #0x10
	ldr		r0, [sp, #0x10]
	str		r0, [r7, #0x24]
	ldr		r1, [r2, #0x4]
	str		r1, [r7, #0x28]
	ldr		r3, [r2, #0x8]
	add		r0, r0, r3
	asr		r0, r0, #0x1
	ldr		r2, [r2, #0xC]
	add		r1, r1, r2
	asr		r1, r1, #0x1
	str		r3, [r7, #0x44]
	str		r2, [r7, #0x48]
	ldr		r2, _0802bc90
	and		r0, r2
	str		r0, [r7, #0x34]
	and		r1, r2
	str		r1, [r7, #0x38]
	b		_0802bcfa

.incbin "base.gba", 0x2BC8E, 0x2

_0802bc90:	.4byte 0xffff0000

_0802bc94:
	add		r6, sp, #0x10
	ldr		r4, [sp, #0x10]
	str		r4, [r7, #0x24]
	ldr		r5, [r6, #0x4]
	str		r5, [r7, #0x28]
	lsl		r0, r4, #0x1
	ldr		r1, [r6, #0x8]
	mov		r10, r1
	add		r0, r10
	mov		r1, #0x3
	bl		sub_0807d80c
	mov		r8, r0
	str		r0, [r7, #0x34]
	lsl		r0, r5, #0x1
	ldr		r6, [r6, #0xC]
	mov		r9, r6
	add		r0, r9
	mov		r1, #0x3
	bl		sub_0807d80c
	add		r6, r0, #0x0
	str		r6, [r7, #0x38]
	add		r4, r10
	add		r4, r10
	add		r0, r4, #0x0
	mov		r1, #0x3
	bl		sub_0807d80c
	add		r4, r0, #0x0
	str		r4, [r7, #0x44]
	add		r5, r9
	add		r5, r9
	add		r0, r5, #0x0
	mov		r1, #0x3
	bl		sub_0807d80c
	mov		r2, r10
	str		r2, [r7, #0x54]
	mov		r3, r9
	str		r3, [r7, #0x58]
	ldr		r1, _0802bd1c
	mov		r2, r8
	and		r2, r1
	str		r2, [r7, #0x34]
	and		r6, r1
	str		r6, [r7, #0x38]
	and		r4, r1
	str		r4, [r7, #0x44]
	and		r0, r1
	str		r0, [r7, #0x48]
_0802bcfa:
	ldr		r1, [sp, #0x20]
	mov		r2, #0x0
	add		r0, r1, #0x0
	add		r0, #0x30
_0802bd02:
	str		r2, [r0, #0x0]
	sub		r0, #0x10
	cmp		r0, r1
	bge		_0802bd02
_0802bd0a:
	add		sp, #0x24
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2BD1A, 0x2

_0802bd1c:	.4byte 0xffff0000
	thumb_func_end sub_0802ba9c

	thumb_func_start sub_0802bd20
sub_0802bd20:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r12, r0
	add		r4, r1, #0x0
	mov		r9, r2
	ldrb	r1, [r4, #0x1]
	ldrb	r0, [r4, #0x2]
	lsl		r0, r0, #0x8
	add		r7, r1, r0
	ldrb	r1, [r4, #0x3]
	ldrb	r0, [r4, #0x4]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	mov		r8, r1
	cmp		r3, #0x0
	beq		_0802bd52
	mov		r1, r12
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x1
	cmp		r3, r0
	bne		_0802bd5c
_0802bd52:
	add		r0, r3, #0x0
	sub		r0, #0x80
	mov		r6, r12
	strb	r0, [r6, #0x3]
	b		_0802bd60
_0802bd5c:
	mov		r0, r12
	strb	r3, [r0, #0x3]
_0802bd60:
	mov		r1, r12
	ldrb	r5, [r1, #0x1]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x4
	bls		_0802bd6c
	b		_0802bf16
_0802bd6c:
	lsl		r0, r0, #0x2
	ldr		r1, _0802bd78
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x2BD76, 0x2

_0802bd78:	.4byte 0x0802bd7c
_0802bd7c:	.4byte 0x0802bd90

.incbin "base.gba", 0x2BD80, 0x10
	thumb_func_end sub_0802bd20


.incbin "base.gba", 0x2BD90, 0x186

_0802bf16:

.incbin "base.gba", 0x2BF16, 0x12
	thumb_func_start sub_0802bf28
sub_0802bf28:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r1, r0, #0x0
	add		r1, #0xbc
	ldr		r3, [r1, #0x2c]
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	ldr		r7, _0802bfa0
	ldr		r1, _0802bfa4
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	add		r5, sp, #0x4
	add		r0, r1, #0x0
	add		r0, #0xcc
	ldr		r0, [r0, #0x0]
	add		r1, r1, r0
	ldrb	r2, [r1, #0x1]
	add		r2, r1, r2
	ldrb	r0, [r1, #0x2]
	lsl		r0, r0, #0x8
	add		r6, r2, r0
	strb	r3, [r5, #0x1]
	strb	r3, [r5, #0x2]
	ldrb	r0, [r1, #0x0]
	strb	r0, [r5, #0x0]
	ldr		r1, _0802bfa8
	ldrb	r0, [r5, #0x0]
	strh	r0, [r1, #0x38]
	ldr		r0, _0802bfac
	str		r0, [sp, #0x0]
	mov		r0, sp
	add		r1, r7, #0x0
	ldr		r2, _0802bfb0
	bl		sub_08071b68
	mov		r4, #0x0
	ldrb	r0, [r5, #0x0]
	cmp		r4, r0
	bge		_0802bf98
_0802bf76:
	mov		r0, #0x1f
	and		r0, r4
	cmp		r0, #0x1f
	bne		_0802bf82
	bl		sub_0802711c
_0802bf82:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_0802bd20
	add		r6, #0xc
	add		r4, #0x1
	ldrb	r1, [r5, #0x0]
	cmp		r4, r1
	blt		_0802bf76
_0802bf98:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802bfa0:	.4byte 0x02025400
_0802bfa4:	.4byte 0x00000574
_0802bfa8:	.4byte 0x030031A0
_0802bfac:	.4byte 0x7F7F7F7F
_0802bfb0:	.4byte 0x01001000
	thumb_func_end sub_0802bf28

	thumb_func_start sub_0802bfb4
sub_0802bfb4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x30
	str		r1, [sp, #0xc]
	lsl		r0, r0, #0x18
	ldr		r1, _0802c230
	lsr		r0, r0, #0x16
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _0802c234
	add		r0, r0, r1
	ldr		r6, [r0, #0x0]
	add		r1, r1, r6
	mov		r9, r1
	ldr		r5, [sp, #0xc]
	str		r5, [sp, #0x10]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r10, r0
	mov		r0, r9
	add		r1, r5, #0x0
	mov		r2, #0x40
	bl		sub_08071b68
	add		r5, r10
	ldr		r1, _0802c238
	add		r1, r1, r6
	mov		r8, r1
	ldr		r1, [r1, #0x0]
	ldr		r2, _0802c23c
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	mov		r2, r9
	add		r3, r2, r0
	sub		r4, r1, r0
	add		r10, r4
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c00e
	add		r2, r4, #0x3
_0802c00e:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, _0802c244
	add		r7, r6, r1
	ldr		r1, [r7, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mov		r2, r9
	add		r3, r2, r0
	sub		r4, r1, r0
	add		r10, r4
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c038
	add		r2, r4, #0x3
_0802c038:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, _0802c248
	add		r1, r1, r6
	mov		r8, r1
	ldr		r1, [r1, #0x0]
	ldr		r0, [r7, #0x0]
	mov		r2, r9
	add		r3, r2, r0
	sub		r4, r1, r0
	add		r10, r4
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c062
	add		r2, r4, #0x3
_0802c062:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, _0802c24c
	add		r1, r6, r1
	str		r1, [sp, #0x14]
	ldr		r1, [r1, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mov		r2, r9
	add		r3, r2, r0
	sub		r4, r1, r0
	add		r10, r4
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c08e
	add		r2, r4, #0x3
_0802c08e:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, _0802c250
	add		r7, r6, r1
	ldr		r1, [r7, #0x0]
	ldr		r2, [sp, #0x14]
	ldr		r0, [r2, #0x0]
	mov		r2, r9
	add		r3, r2, r0
	sub		r4, r1, r0
	add		r10, r4
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c0b8
	add		r2, r4, #0x3
_0802c0b8:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, [sp, #0xc]
	add		r1, #0x8c
	mov		r8, r1
	ldr		r0, [r7, #0x0]
	str		r0, [r1, #0x0]
	ldr		r2, _0802c254
	add		r2, r6, r2
	str		r2, [sp, #0x18]
	ldr		r1, _0802c258
	add		r0, r6, r1
	ldr		r1, [r2, #0x0]
	ldr		r0, [r0, #0x0]
	sub		r4, r1, r0
	add		r10, r4
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_0802c0ee
	mov		r2, r9
	add		r1, r2, r0
_0802c0ee:
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c0f6
	add		r2, r4, #0x3
_0802c0f6:
	asr		r2, r2, #0x2
	ldr		r0, _0802c240
	and		r2, r0
	add		r0, r1, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r7, [sp, #0xc]
	add		r7, #0x94
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	add		r0, r0, r4
	str		r0, [r7, #0x0]
	ldr		r2, _0802c25c
	add		r6, r6, r2
	ldr		r0, [r6, #0x0]
	ldr		r2, [sp, #0x18]
	ldr		r1, [r2, #0x0]
	sub		r4, r0, r1
	add		r10, r4
	mov		r0, #0x0
	cmp		r1, #0x0
	beq		_0802c12a
	mov		r2, r9
	add		r0, r2, r1
_0802c12a:
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c132
	add		r2, r4, #0x3
_0802c132:
	asr		r2, r2, #0x2
	ldr		r1, _0802c240
	and		r2, r1
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r1, [sp, #0xc]
	add		r1, #0x98
	ldr		r0, [r7, #0x0]
	add		r0, r0, r4
	str		r0, [r1, #0x0]
	mov		r4, #0x80
	add		r10, r4
	ldr		r0, [r6, #0x0]
	mov		r3, #0x0
	add		r6, r1, #0x0
	cmp		r0, #0x0
	beq		_0802c15c
	mov		r2, r9
	add		r3, r2, r0
_0802c15c:
	mov		r2, #0x20
	add		r0, r3, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r0, [sp, #0x10]
	add		r0, #0xcc
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r0, [sp, #0x10]
	add		r0, #0xd8
	str		r1, [r0, #0x0]
	ldr		r0, [sp, #0x10]
	add		r0, #0xf0
	str		r0, [sp, #0x1c]
	ldr		r0, [r6, #0x0]
	add		r0, r0, r4
	ldr		r1, [sp, #0x1c]
	str		r0, [r1, #0x0]
	mov		r3, #0x40
	add		r7, sp, #0x4
	mov		r4, r9
	add		r4, #0xcc
	ldr		r2, [r4, #0x0]
	add		r2, r9
	ldrb	r1, [r2, #0x1]
	add		r1, r2, r1
	ldrb	r0, [r2, #0x2]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	mov		r8, r1
	strb	r3, [r7, #0x1]
	strb	r3, [r7, #0x2]
	ldrb	r0, [r2, #0x0]
	strb	r0, [r7, #0x0]
	ldr		r1, _0802c260
	ldrb	r0, [r7, #0x0]
	strh	r0, [r1, #0x38]
	ldr		r0, _0802c264
	str		r0, [sp, #0x0]
	mov		r0, sp
	ldr		r1, _0802c268
	ldr		r2, _0802c26c
	bl		sub_08071b68
	mov		r6, #0x0
	ldr		r2, [sp, #0x1c]
	str		r2, [sp, #0x24]
	str		r4, [sp, #0x20]
	ldr		r4, [sp, #0x10]
	add		r4, #0xc2
	ldr		r0, [sp, #0x10]
	add		r0, #0xf4
	str		r0, [sp, #0x28]
	mov		r1, r9
	add		r1, #0x8c
	str		r1, [sp, #0x2c]
	ldrb	r2, [r7, #0x0]
	cmp		r6, r2
	bge		_0802c1ee
_0802c1d6:
	add		r0, r7, #0x0
	mov		r1, r8
	ldr		r2, _0802c268
	add		r3, r6, #0x0
	bl		sub_0802bd20
	mov		r0, #0xc
	add		r8, r0
	add		r6, #0x1
	ldrb	r1, [r7, #0x0]
	cmp		r6, r1
	blt		_0802c1d6
_0802c1ee:
	ldr		r0, _0802c260
	ldrh	r0, [r0, #0x38]
	strh	r0, [r4, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x5
	add		r10, r4
	ldr		r0, _0802c268
	asr		r2, r4, #0x2
	add		r1, r5, #0x0
	bl		sub_08071b68
	add		r5, r5, r4
	ldr		r2, [sp, #0x24]
	ldr		r0, [r2, #0x0]
	add		r0, r0, r4
	ldr		r1, [sp, #0x28]
	str		r0, [r1, #0x0]
	ldr		r2, [sp, #0x20]
	ldr		r0, [r2, #0x0]
	add		r0, r9
	ldrb	r1, [r0, #0x3]
	add		r1, r0, r1
	ldrb	r0, [r0, #0x4]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	ldr		r2, [sp, #0x2c]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_0802c270
	add		r0, r9
	sub		r4, r0, r1
	b		_0802c272

.incbin "base.gba", 0x2C22E, 0x2

_0802c230:	.4byte 0x08102bf8
_0802c234:	.4byte 0x08258000
_0802c238:	.4byte 0x082580c4
_0802c23c:	.4byte 0x082580d4
_0802c240:	.4byte 0x001FFFFF
_0802c244:	.4byte 0x08258080
_0802c248:	.4byte 0x08258084
_0802c24c:	.4byte 0x08258088
_0802c250:	.4byte 0x082580CC
_0802c254:	.4byte 0x08258094
_0802c258:	.4byte 0x0825808c
_0802c25c:	.4byte 0x08258098
_0802c260:	.4byte 0x030031A0
_0802c264:	.4byte 0x7F7F7F7F
_0802c268:	.4byte 0x02037900
_0802c26c:	.4byte 0x01000400

_0802c270:
	neg		r4, r1
_0802c272:
	add		r10, r4
	lsr		r2, r4, #0x1f
	add		r2, r4, r2
	lsl		r2, r2, #0xa
	lsr		r2, r2, #0xb
	add		r0, r1, #0x0
	add		r1, r5, #0x0
	bl		sub_08071b6c
	mov		r0, r10
	add		sp, #0x30
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C296, 0x2
	thumb_func_end sub_0802bfb4

	thumb_func_start sub_0802c298
sub_0802c298:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	add		r4, r1, #0x0
	add		r5, r2, #0x0
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	mov		r12, r3
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c2b2
	add		r0, r4, #0x7
_0802c2b2:
	asr		r7, r0, #0x3
	add		r2, r5, #0x0
	cmp		r5, #0x0
	bge		_0802c2bc
	add		r2, r5, #0x7
_0802c2bc:
	asr		r2, r2, #0x3
	lsl		r1, r2, #0x1
	add		r6, #0xbc
	ldr		r0, [r6, #0x2c]
	mul		r0, r1
	ldr		r1, _0802c338
	add		r0, r0, r1
	add		r0, r0, r7
	mov		r8, r0
	mov		r3, #0x7f
	add		r0, r7, #0x0
	and		r0, r3
	ldr		r1, [r6, #0x14]
	add		r1, r1, r0
	and		r2, r3
	lsl		r2, r2, #0x7
	add		r2, r1, r2
	add		r0, r6, #0x0
	add		r3, r4, #0x0
	cmp		r4, #0x0
	bge		_0802c2e8
	add		r3, #0xf
_0802c2e8:
	asr		r1, r3, #0x4
	ldr		r3, [r0, #0x40]
	add		r0, r3, #0x0
	sub		r0, #0x20
	cmp		r1, r0
	blt		_0802c31a
	add		r0, r3, #0x0
	add		r0, #0x20
	cmp		r1, r0
	bgt		_0802c31a
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_0802c304
	add		r0, #0xf
_0802c304:
	asr		r4, r0, #0x4
	ldr		r3, [r6, #0x44]
	add		r0, r3, #0x0
	sub		r0, #0x20
	cmp		r4, r0
	blt		_0802c31a
	add		r0, r3, #0x0
	add		r0, #0x20
	mov		r3, #0x0
	cmp		r4, r0
	ble		_0802c31c
_0802c31a:
	mov		r3, #0x1
_0802c31c:
	cmp		r3, #0x0
	bne		_0802c34a
	mov		r3, #0x2
	neg		r3, r3
	and		r3, r2
	mov		r0, #0x1
	and		r2, r0
	cmp		r2, #0x0
	beq		_0802c33c
	ldrb	r0, [r3, #0x0]
	mov		r2, r12
	lsl		r1, r2, #0x8
	b		_0802c346

.incbin "base.gba", 0x2C336, 0x2

_0802c338:	.4byte 0x02010400

_0802c33c:
	ldrh	r1, [r3, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r1
	mov		r1, r12
_0802c346:
	orr		r0, r1
	strh	r0, [r3, #0x0]
_0802c34a:
	mov		r0, r12
	mov		r2, r8
	strb	r0, [r2, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C35A, 0x2
	thumb_func_end sub_0802c298

	thumb_func_start sub_0802c35c
sub_0802c35c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r6, r0, #0x0
	mov		r8, r1
	mov		r9, r2
	lsl		r5, r3, #0x18
	lsr		r5, r5, #0x18
	mov		r3, #0x0
	bl		sub_0802c3d4
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_0802c5d0
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_0802c610
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r0, r8
	cmp		r0, #0x0
	bge		_0802c39e
	add		r0, #0x7
_0802c39e:
	asr		r0, r0, #0x3
	sub		r0, r7, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r3, r0, #0x1
	mov		r2, r9
	cmp		r2, #0x0
	bge		_0802c3b0
	add		r2, #0x7
_0802c3b0:
	asr		r1, r2, #0x3
	sub		r1, r4, r1
	lsr		r0, r1, #0x1f
	add		r1, r1, r0
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0xf
	asr		r1, r1, #0x10
	bl		sub_080285ec
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0802c35c

	thumb_func_start sub_0802c3d4
sub_0802c3d4:
	cmp		r1, #0x0
	bge		_0802c3da
	add		r1, #0xf
_0802c3da:
	asr		r3, r1, #0x4
	cmp		r2, #0x0
	bge		_0802c3e2
	add		r2, #0xf
_0802c3e2:
	asr		r1, r2, #0x4
	ldr		r2, _0802c3fc
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x4]
	mul		r0, r1
	lsl		r0, r0, #0x6
	add		r0, r3, r0
	ldr		r1, _0802c400
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2C3FA, 0x2

_0802c3fc:	.4byte 0x00000574
_0802c400:	.4byte 0x02025400
	thumb_func_end sub_0802c3d4

	thumb_func_start sub_0802c404
sub_0802c404:
	push	{ r4, lr }
	add		r3, r0, #0x0
	ldr		r2, [r1, #0x0]
	cmp		r2, #0x0
	bge		_0802c412
	ldr		r0, _0802c44c
	add		r2, r2, r0
_0802c412:
	asr		r2, r2, #0x10
	ldr		r1, [r1, #0x4]
	cmp		r1, #0x0
	bge		_0802c41e
	ldr		r4, _0802c44c
	add		r1, r1, r4
_0802c41e:
	asr		r1, r1, #0x10
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802c428
	add		r0, #0xf
_0802c428:
	asr		r2, r0, #0x4
	cmp		r1, #0x0
	bge		_0802c430
	add		r1, #0xf
_0802c430:
	asr		r1, r1, #0x4
	ldr		r4, _0802c450
	add		r0, r3, r4
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x4]
	mul		r0, r1
	lsl		r0, r0, #0x6
	add		r0, r2, r0
	ldr		r1, _0802c454
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802c44c:	.4byte 0x0000FFFF
_0802c450:	.4byte 0x00000574
_0802c454:	.4byte 0x02025400

.incbin "base.gba", 0x2C458, 0x1C
	thumb_func_end sub_0802c404

	thumb_func_start sub_0802c474
sub_0802c474:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r2, _0802c48c
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	add		r2, r0, #0x0
	add		r2, #0x88
	ldr		r2, [r2, #0x0]
	add		r0, r0, r2
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

_0802c48c:	.4byte 0x00000574
	thumb_func_end sub_0802c474

	thumb_func_start sub_0802c490
sub_0802c490:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_0802c7a0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _0802c4b4
	add		r4, r4, r1
	ldr		r1, [r4, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x88
	ldr		r2, [r2, #0x0]
	add		r1, r1, r2
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802c4b4:	.4byte 0x00000574
	thumb_func_end sub_0802c490

	thumb_func_start sub_0802c4b8
sub_0802c4b8:
	ldr		r0, [r0, #0x20]
	bx		lr
	thumb_func_end sub_0802c4b8

	thumb_func_start sub_0802c4bc
sub_0802c4bc:
	ldr		r2, _0802c4dc
	add		r1, r0, r2
	ldr		r2, [r1, #0x0]
	add		r0, #0xbc
	ldr		r1, [r2, #0x24]
	add		r1, r2, r1
	str		r1, [r0, #0x4]
	ldr		r1, [r2, #0x8]
	add		r1, r2, r1
	str		r1, [r0, #0xc]
	add		r1, r2, #0x0
	add		r1, #0xd4
	ldr		r1, [r1, #0x0]
	add		r2, r2, r1
	str		r2, [r0, #0x1c]
	bx		lr

_0802c4dc:	.4byte 0x00000574
	thumb_func_end sub_0802c4bc

	thumb_func_start sub_0802c4e0
sub_0802c4e0:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r8, r2
	lsl		r4, r3, #0x10
	lsr		r4, r4, #0x10
	add		r0, #0xbc
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	add		r1, r2, #0x0
	bl		sub_0802d540
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r2, r8
	add		r3, r4, #0x0
	bl		sub_0802c518
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C516, 0x2
	thumb_func_end sub_0802c4e0

	thumb_func_start sub_0802c518
sub_0802c518:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	lsl		r3, r3, #0x10
	lsr		r3, r3, #0x10
	cmp		r1, #0x0
	bge		_0802c528
	ldr		r0, _0802c550
	add		r1, r1, r0
_0802c528:
	asr		r1, r1, #0x13
	mov		r0, #0x2
	neg		r0, r0
	and		r1, r0
	cmp		r2, #0x0
	bge		_0802c538
	ldr		r5, _0802c550
	add		r2, r2, r5
_0802c538:
	asr		r2, r2, #0x13
	and		r2, r0
	add		r0, r4, #0x0
	add		r0, #0xbc
	lsl		r3, r3, #0x10
	asr		r3, r3, #0x10
	bl		sub_0802d31c
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C54E, 0x2

_0802c550:	.4byte 0x0007FFFF
	thumb_func_end sub_0802c518

	thumb_func_start sub_0802c554
sub_0802c554:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r1, _0802c574
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x90
	ldr		r0, [r0, #0x0]
	mov		r2, #0x0
	cmp		r0, #0x0
	beq		_0802c56c
	add		r2, r1, r0
_0802c56c:
	add		r4, r2, #0x0
	cmp		r4, #0x0
	beq		_0802c594
	b		_0802c58c

_0802c574:	.4byte 0x00000574

_0802c578:
	ldrb	r1, [r4, #0x0]
	add		r4, #0x1
	ldrb	r2, [r4, #0x0]
	add		r4, #0x2
	lsl		r1, r1, #0x3
	lsl		r2, r2, #0x3
	add		r0, r5, #0x0
	mov		r3, #0xc0
	bl		sub_0802c298
_0802c58c:
	ldrb	r0, [r4, #0x0]
	add		r4, #0x1
	cmp		r0, #0x0
	bne		_0802c578
_0802c594:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C59A, 0x6
	thumb_func_end sub_0802c554

	thumb_func_start sub_0802c5a0
sub_0802c5a0:
	push	{ r4, lr }
	mov		r12, r0
	ldr		r4, [sp, #0x0+0x8]
	lsl		r1, r1, #0x4
	add		r0, #0x24
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r2, #0x0]
	mov		r0, r12
	add		r0, #0x28
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x0]
	mov		r0, r12
	add		r0, #0x2c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r4, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C5CA, 0x6
	thumb_func_end sub_0802c5a0

	thumb_func_start sub_0802c5d0
sub_0802c5d0:
	push	{ r4, lr }
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r4, #0x7f
	and		r4, r1
	ldr		r3, _0802c60c
	add		r1, r0, r3
	ldr		r1, [r1, #0x0]
	add		r3, r1, #0x0
	add		r3, #0xcc
	ldr		r3, [r3, #0x0]
	add		r1, r1, r3
	ldrb	r3, [r1, #0x3]
	add		r3, r1, r3
	ldrb	r1, [r1, #0x4]
	lsl		r1, r1, #0x8
	add		r3, r3, r1
	ldrh	r0, [r0, #0x14]
	mul		r0, r2
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r3, r3, r0
	ldrb	r0, [r3, #0x0]
	ldrb	r1, [r3, #0x1]
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C60A, 0x2

_0802c60c:	.4byte 0x00000574
	thumb_func_end sub_0802c5d0

	thumb_func_start sub_0802c610
sub_0802c610:
	push	{ r4, lr }
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r4, #0x7f
	and		r4, r1
	ldr		r3, _0802c64c
	add		r1, r0, r3
	ldr		r1, [r1, #0x0]
	add		r3, r1, #0x0
	add		r3, #0xcc
	ldr		r3, [r3, #0x0]
	add		r1, r1, r3
	ldrb	r3, [r1, #0x3]
	add		r3, r1, r3
	ldrb	r1, [r1, #0x4]
	lsl		r1, r1, #0x8
	add		r3, r3, r1
	ldrh	r0, [r0, #0x14]
	mul		r0, r2
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r3, r3, r0
	ldrb	r0, [r3, #0x2]
	ldrb	r1, [r3, #0x3]
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C64A, 0x2

_0802c64c:	.4byte 0x00000574
	thumb_func_end sub_0802c610

	thumb_func_start sub_0802c650
sub_0802c650:
	push	{ r4, lr }
	mov		r4, #0x7f
	and		r4, r1
	ldr		r2, _0802c688
	add		r1, r0, r2
	ldr		r1, [r1, #0x0]
	add		r2, r1, #0x0
	add		r2, #0xcc
	ldr		r2, [r2, #0x0]
	add		r1, r1, r2
	ldrb	r2, [r1, #0x3]
	add		r2, r1, r2
	ldrb	r1, [r1, #0x4]
	lsl		r1, r1, #0x8
	add		r2, r2, r1
	ldr		r1, _0802c68c
	ldrh	r3, [r0, #0x14]
	ldr		r0, _0802c690
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	mul		r0, r3
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r2, r2, r0
	ldrb	r0, [r2, #0x4]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802c688:	.4byte 0x00000574
_0802c68c:	.4byte 0x030031A0
_0802c690:	.4byte 0x00000C88
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	ldr		r2, _0802c6c0
	lsr		r0, r0, #0x16
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x4]
	lsl		r0, r0, #0x2
	ldr		r2, _0802c6c4
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	add		r0, r0, r2
	mov		r4, #0xa0
	lsl		r4, r4, #0x6
	asr		r2, r4, #0x2
	bl		sub_08071b68
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C6BE, 0x2

_0802c6c0:	.4byte 0x08102bf8
_0802c6c4:	.4byte 0x08234000
	thumb_func_end sub_0802c650

	thumb_func_start sub_0802c6c8
sub_0802c6c8:
	lsr		r0, r0, #0x5
	mov		r1, #0x1
	and		r0, r1
	bx		lr
	thumb_func_end sub_0802c6c8

	thumb_func_start sub_0802c6d0
sub_0802c6d0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	cmp		r1, #0x0
	bge		_0802c6da
	add		r1, #0x7
_0802c6da:
	asr		r3, r1, #0x3
	cmp		r2, #0x0
	bge		_0802c6e2
	add		r2, #0x7
_0802c6e2:
	asr		r0, r2, #0x3
	lsl		r0, r0, #0x1
	add		r1, r4, #0x0
	add		r1, #0xbc
	ldr		r1, [r1, #0x2c]
	mul		r0, r1
	ldr		r1, _0802c6fc
	add		r0, r0, r1
	add		r0, r3, r0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C6FA, 0x2

_0802c6fc:	.4byte 0x02010400
	thumb_func_end sub_0802c6d0

	thumb_func_start sub_0802c700
sub_0802c700:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r3, #0xbc
	cmp		r1, #0x0
	bge		_0802c70c
	add		r1, #0x7
_0802c70c:
	asr		r0, r1, #0x3
	mov		r4, #0x7f
	and		r0, r4
	ldr		r1, [r3, #0x14]
	add		r1, r1, r0
	cmp		r2, #0x0
	bge		_0802c71c
	add		r2, #0x7
_0802c71c:
	asr		r0, r2, #0x3
	and		r0, r4
	lsl		r0, r0, #0x7
	add		r0, r1, r0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C72A, 0x2
	thumb_func_end sub_0802c700

	thumb_func_start sub_0802c72c
sub_0802c72c:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x10]
	bx		lr
	thumb_func_end sub_0802c72c

	thumb_func_start sub_0802c738
sub_0802c738:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x18]
	bx		lr
	thumb_func_end sub_0802c738

	thumb_func_start sub_0802c744
sub_0802c744:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x1c]
	bx		lr
	thumb_func_end sub_0802c744

	thumb_func_start sub_0802c750
sub_0802c750:
	cmp		r1, #0x0
	blt		_0802c76c
	add		r3, r0, #0x0
	add		r3, #0xbc
	ldr		r0, [r3, #0x2c]
	lsl		r0, r0, #0x14
	cmp		r1, r0
	bge		_0802c76c
	cmp		r2, #0x0
	blt		_0802c76c
	ldr		r0, [r3, #0x30]
	lsl		r0, r0, #0x14
	cmp		r2, r0
	blt		_0802c770
_0802c76c:
	mov		r0, #0x1
	b		_0802c772
_0802c770:
	mov		r0, #0x0
_0802c772:
	bx		lr
	thumb_func_end sub_0802c750

	thumb_func_start sub_0802c774
sub_0802c774:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldrh	r0, [r0, #0x14]
	sub		r0, #0x1
	cmp		r1, r0
	beq		_0802c788
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	b		_0802c78a
_0802c788:
	mov		r0, #0x0
_0802c78a:
	bx		lr
	thumb_func_end sub_0802c774

	thumb_func_start sub_0802c78c
sub_0802c78c:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r0, r1, #0x18
	cmp		r0, #0x0
	bne		_0802c798
	ldrb	r0, [r2, #0x14]
_0802c798:
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bx		lr
	thumb_func_end sub_0802c78c

	thumb_func_start sub_0802c7a0
sub_0802c7a0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	cmp		r1, #0x0
	bge		_0802c7aa
	add		r1, #0x7
_0802c7aa:
	asr		r3, r1, #0x3
	cmp		r2, #0x0
	bge		_0802c7b2
	add		r2, #0x7
_0802c7b2:
	asr		r0, r2, #0x3
	lsl		r0, r0, #0x1
	add		r1, r4, #0x0
	add		r1, #0xbc
	ldr		r1, [r1, #0x2c]
	mul		r0, r1
	ldr		r1, _0802c7cc
	add		r0, r0, r1
	add		r0, r3, r0
	ldrb	r0, [r0, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802c7cc:	.4byte 0x02010400
	thumb_func_end sub_0802c7a0

	thumb_func_start sub_0802c7d0
sub_0802c7d0:
	ldr		r1, _0802c7e4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0xca
	ldrb	r1, [r0, #0x0]
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	bx		lr

.incbin "base.gba", 0x2C7E2, 0x2

_0802c7e4:	.4byte 0x00000574

.incbin "base.gba", 0x2C7E8, 0x24
	thumb_func_end sub_0802c7d0

	thumb_func_start sub_0802c80c
sub_0802c80c:
	add		r2, r0, #0x0
	ldr		r0, _0802c834
	ldr		r1, _0802c838
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	lsr		r0, r0, #0x5
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0802c840
	ldr		r1, _0802c83c
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0xca
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802c840
	mov		r0, #0x2
	b		_0802c842

.incbin "base.gba", 0x2C832, 0x2

_0802c834:	.4byte 0x030031A0
_0802c838:	.4byte 0x00000801
_0802c83c:	.4byte 0x00000574

_0802c840:
	mov		r0, #0x1
_0802c842:
	bx		lr
	thumb_func_end sub_0802c80c

	thumb_func_start sub_0802c844
sub_0802c844:
	ldr		r1, _0802c858
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r1, r0, #0x0
	add		r1, #0x84
	ldr		r1, [r1, #0x0]
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2C856, 0x2

_0802c858:	.4byte 0x00000574

.incbin "base.gba", 0x2C85C, 0x24
	thumb_func_end sub_0802c844

	thumb_func_start sub_0802c880
sub_0802c880:
	ldr		r1, _0802c89c
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r2, #0x0
	cmp		r0, #0x0
	beq		_0802c894
	add		r2, r1, r0
_0802c894:
	mov		r0, #0x0
	cmp		r2, #0x0
	beq		_0802c8b2
	b		_0802c8a2

_0802c89c:	.4byte 0x00000574

_0802c8a0:
	add		r2, #0x4
_0802c8a2:
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x0
	beq		_0802c8b2
	cmp		r1, #0x8b
	bne		_0802c8a0
	ldrb	r0, [r2, #0x2]
	lsl		r0, r0, #0x3
	add		r0, #0x8
_0802c8b2:
	bx		lr
	thumb_func_end sub_0802c880

	thumb_func_start sub_0802c8b4
sub_0802c8b4:
	push	{ lr }
	add		r2, r0, #0x0
	lsl		r0, r2, #0x3
	add		r2, r0, #0x0
	sub		r2, #0x8
	lsl		r0, r1, #0x3
	add		r1, r0, #0x0
	sub		r1, #0x8
	cmp		r2, #0x0
	bne		_0802c8dc
	cmp		r1, #0x0
	bne		_0802c8d0
	mov		r0, #0x80
	b		_0802c910
_0802c8d0:
	mvn		r0, r1
	asr		r1, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r1, r0
	b		_0802c900
_0802c8dc:
	cmp		r1, #0x0
	bne		_0802c8f0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r2, #0x0
	bge		_0802c8ec
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
_0802c8ec:
	add		r1, r0, #0x0
	b		_0802c900
_0802c8f0:
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
_0802c900:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802c90a
	add		r0, #0xff
_0802c90a:
	asr		r0, r0, #0x8
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
_0802c910:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C914, 0x10
	thumb_func_end sub_0802c8b4

	thumb_func_start sub_0802c924
sub_0802c924:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r5, #0xbc
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0802c932
	add		r0, #0xf
_0802c932:
	asr		r4, r0, #0x4
	ldr		r3, [r5, #0x40]
	add		r0, r3, #0x0
	sub		r0, #0x20
	cmp		r4, r0
	blt		_0802c966
	add		r0, r3, #0x0
	add		r0, #0x20
	cmp		r4, r0
	bgt		_0802c966
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802c94e
	add		r0, #0xf
_0802c94e:
	asr		r3, r0, #0x4
	ldr		r1, [r5, #0x44]
	add		r0, r1, #0x0
	sub		r0, #0x20
	cmp		r3, r0
	blt		_0802c966
	add		r0, r1, #0x0
	add		r0, #0x20
	cmp		r3, r0
	bgt		_0802c966
	mov		r0, #0x0
	b		_0802c968
_0802c966:
	mov		r0, #0x1
_0802c968:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2C96E, 0x2
	thumb_func_end sub_0802c924

	thumb_func_start sub_0802c970
sub_0802c970:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	mov		r0, #0x0
	str		r0, [r5, #0x18]
	add		r6, r5, #0x0
	add		r6, #0x18
	ldrb	r1, [r4, #0x4]
	ldrb	r2, [r4, #0x5]
	add		r0, r6, #0x0
	bl		sub_0802d47c
	ldr		r1, [r5, #0x38]
	ldrb	r0, [r4, #0x3]
	mov		r2, #0x2
	and		r2, r0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	bl		sub_0802d4ec
	ldr		r0, _0802c9b0
	str		r0, [r5, #0x2c]
	add		r0, r4, #0x0
	add		r0, #0xd4
	ldr		r0, [r0, #0x0]
	add		r4, r4, r0
	str		r4, [r5, #0x34]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2C9AE, 0x2

_0802c9b0:	.4byte 0x0600C000

.incbin "base.gba", 0x2C9B4, 0x8
	thumb_func_end sub_0802c970

	thumb_func_start sub_0802c9bc
sub_0802c9bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r8, r0
	ldr		r4, [r0, #0x38]
	lsl		r0, r4, #0x1
	mov		r1, r8
	ldr		r2, [r1, #0x24]
	sub		r1, r2, #0x1
	and		r0, r1
	add		r1, r0, #0x0
	mul		r1, r2
	mov		r2, r8
	ldr		r0, [r2, #0x14]
	add		r0, r0, r1
	mov		r9, r0
	cmp		r4, #0x0
	blt		_0802c9fe
	ldr		r0, [r2, #0x30]
	cmp		r4, r0
	bge		_0802c9fe
	ldr		r0, [r2, #0x28]
	ldr		r2, [r2, #0x34]
	add		r6, r0, #0x0
	cmn		r2, r6
	blt		_0802c9fe
	mov		r5, r8
	ldr		r3, [r5, #0x2c]
	mov		r12, r3
	cmp		r2, r3
	blt		_0802ca20
_0802c9fe:
	mov		r1, r9
	mov		r0, r8
	ldr		r6, [r0, #0x28]
	cmp		r6, #0x0
	bgt		_0802ca0a
	b		_0802cc0e
_0802ca0a:
	mov		r2, #0x0
	lsl		r3, r6, #0x1
	add		r5, r6, #0x0
_0802ca10:
	strh	r2, [r1, #0x0]
	add		r0, r3, r1
	strh	r2, [r0, #0x0]
	add		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802ca10
	b		_0802cc0e
_0802ca20:
	add		r0, r4, #0x0
	mul		r0, r3
	lsl		r0, r0, #0x2
	lsl		r1, r2, #0x1
	add		r0, r0, r1
	mov		r10, r0
	cmp		r2, #0x0
	bge		_0802ca94
	sub		r3, r6, #0x1
	and		r3, r2
	sub		r2, r6, r3
	lsl		r0, r3, #0x1
	mov		r5, r9
	add		r1, r0, r5
	add		r7, r4, #0x0
	cmp		r2, #0x0
	ble		_0802ca54
	mov		r4, #0x0
	lsl		r5, r6, #0x1
_0802ca46:
	strh	r4, [r1, #0x0]
	add		r0, r5, r1
	strh	r4, [r0, #0x0]
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0802ca46
_0802ca54:
	mov		r1, r12
	lsl		r0, r1, #0x2
	add		r1, r7, #0x0
	mul		r1, r0
	mov		r2, r9
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0802ca82
	cmp		r3, #0x0
	bgt		_0802ca6c
	b		_0802cc0e
_0802ca6c:
	mov		r4, #0x0
	lsl		r1, r6, #0x1
	add		r5, r3, #0x0
_0802ca72:
	strh	r4, [r2, #0x0]
	add		r0, r1, r2
	strh	r4, [r0, #0x0]
	add		r2, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802ca72
	b		_0802cc0e
_0802ca82:
	mov		r2, r8
	ldr		r4, [r2, #0x20]
	add		r4, r4, r1
	ldr		r5, _0802ca90
	and		r5, r3
	b		_0802cb2c

.incbin "base.gba", 0x2CA8E, 0x2

_0802ca90:	.4byte 0x001FFFFF

_0802ca94:
	sub		r0, r3, r6
	cmp		r2, r0
	ble		_0802caf4
	sub		r3, r6, #0x1
	and		r3, r2
	mov		r1, r9
	cmp		r3, #0x0
	ble		_0802cab8
	mov		r4, #0x0
	lsl		r5, r6, #0x1
	add		r2, r3, #0x0
_0802caaa:
	strh	r4, [r1, #0x0]
	add		r0, r5, r1
	strh	r4, [r0, #0x0]
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0802caaa
_0802cab8:
	sub		r7, r6, r3
	lsl		r0, r3, #0x1
	add		r9, r0
	mov		r2, r9
	mov		r0, #0x1
	neg		r0, r0
	cmp		r10, r0
	bne		_0802cae4
	cmp		r7, #0x0
	bgt		_0802cace
	b		_0802cc0e
_0802cace:
	mov		r3, #0x0
	lsl		r1, r6, #0x1
	add		r5, r7, #0x0
_0802cad4:
	strh	r3, [r2, #0x0]
	add		r0, r1, r2
	strh	r3, [r0, #0x0]
	add		r2, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802cad4
	b		_0802cc0e
_0802cae4:
	mov		r2, r8
	ldr		r4, [r2, #0x20]
	add		r4, r10
	ldr		r5, _0802caf0
	and		r5, r7
	b		_0802cb2c

_0802caf0:	.4byte 0x001FFFFF

_0802caf4:
	sub		r5, r6, #0x1
	and		r5, r2
	cmp		r5, #0x0
	bne		_0802cb54
	mov		r2, r9
	mov		r0, #0x1
	neg		r0, r0
	cmp		r10, r0
	bne		_0802cb22
	cmp		r5, r6
	blt		_0802cb0c
	b		_0802cc0e
_0802cb0c:
	mov		r3, #0x0
	lsl		r4, r6, #0x1
	add		r1, r6, #0x0
_0802cb12:
	strh	r3, [r2, #0x0]
	add		r0, r4, r2
	strh	r3, [r0, #0x0]
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802cb12
	b		_0802cc0e
_0802cb22:
	mov		r2, r8
	ldr		r4, [r2, #0x20]
	add		r4, r10
	ldr		r5, _0802cb50
	and		r5, r6
_0802cb2c:
	add		r0, r4, #0x0
	mov		r1, r9
	add		r2, r5, #0x0
	bl		sub_08071b6c
	mov		r1, r8
	ldr		r0, [r1, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r1, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r9
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	b		_0802cc0e

.incbin "base.gba", 0x2CB4E, 0x2

_0802cb50:	.4byte 0x001FFFFF

_0802cb54:
	add		r7, r5, #0x0
	sub		r0, r6, r7
	lsl		r0, r0, #0x1
	mov		r2, r10
	add		r1, r0, r2
	mov		r2, r9
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0802cb84
	lsl		r5, r7, #0x1
	cmp		r7, #0x0
	ble		_0802cbb0
	mov		r4, #0x0
	lsl		r1, r6, #0x1
	add		r3, r7, #0x0
_0802cb74:
	strh	r4, [r2, #0x0]
	add		r0, r1, r2
	strh	r4, [r0, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802cb74
	b		_0802cbb0
_0802cb84:
	mov		r5, r8
	ldr		r4, [r5, #0x20]
	add		r4, r4, r1
	ldr		r5, _0802cbe0
	and		r5, r7
	add		r0, r4, #0x0
	mov		r1, r9
	add		r2, r5, #0x0
	bl		sub_08071b6c
	mov		r1, r8
	ldr		r0, [r1, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r1, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r9
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	lsl		r5, r7, #0x1
_0802cbb0:
	mov		r2, r8
	ldr		r1, [r2, #0x28]
	sub		r7, r1, r7
	add		r9, r5
	mov		r2, r9
	mov		r0, #0x1
	neg		r0, r0
	add		r6, r1, #0x0
	cmp		r10, r0
	bne		_0802cbe4
	cmp		r7, #0x0
	ble		_0802cc0e
	mov		r3, #0x0
	lsl		r5, r6, #0x1
	add		r1, r7, #0x0
_0802cbce:
	strh	r3, [r2, #0x0]
	add		r0, r5, r2
	strh	r3, [r0, #0x0]
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802cbce
	b		_0802cc0e

.incbin "base.gba", 0x2CBDE, 0x2

_0802cbe0:	.4byte 0x001FFFFF

_0802cbe4:
	mov		r5, r8
	ldr		r4, [r5, #0x20]
	add		r4, r10
	ldr		r5, _0802cc1c
	and		r5, r7
	add		r0, r4, #0x0
	mov		r1, r9
	add		r2, r5, #0x0
	bl		sub_08071b6c
	mov		r1, r8
	ldr		r0, [r1, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r1, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r9
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
_0802cc0e:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802cc1c:	.4byte 0x001FFFFF
	thumb_func_end sub_0802c9bc

	thumb_func_start sub_0802cc20
sub_0802cc20:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	mov		r12, r0
	ldr		r1, [r0, #0x34]
	lsl		r0, r1, #0x1
	str		r0, [sp, #0x0]
	mov		r2, r12
	ldr		r0, [r2, #0x24]
	sub		r0, #0x1
	ldr		r3, [sp, #0x0]
	and		r3, r0
	str		r3, [sp, #0x0]
	cmp		r1, #0x0
	blt		_0802cc5c
	ldr		r4, [r2, #0x2c]
	str		r4, [sp, #0x14]
	cmp		r1, r4
	bge		_0802cc5c
	ldr		r0, [r2, #0x28]
	add		r6, r0, #0x0
	ldr		r4, [r2, #0x38]
	cmn		r4, r6
	blt		_0802cc5c
	ldr		r5, [r2, #0x30]
	cmp		r4, r5
	blt		_0802cc8c
_0802cc5c:
	mov		r1, #0x96
	lsl		r1, r1, #0x2
	add		r1, r12
	mov		r7, r12
	ldr		r6, [r7, #0x28]
	ldr		r0, [sp, #0x0]
	asr		r0, r0, #0x1f
	str		r0, [sp, #0x8]
	ldr		r2, [r7, #0x14]
	str		r2, [sp, #0xC]
	cmp		r6, #0x0
	bgt		_0802cc76
	b		_0802cf3e
_0802cc76:
	mov		r3, #0x0
	lsl		r4, r6, #0x1
	add		r2, r6, #0x0
_0802cc7c:
	strh	r3, [r1, #0x0]
	add		r0, r4, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0802cc7c
	b		_0802cf3e
_0802cc8c:
	ldr		r3, [sp, #0x14]
	lsl		r3, r3, #0x2
	str		r3, [sp, #0x4]
	add		r3, r4, #0x0
	ldr		r7, [sp, #0x4]
	add		r2, r3, #0x0
	mul		r2, r7
	mov		r0, r12
	ldr		r1, [r0, #0x34]
	lsl		r0, r1, #0x1
	add		r2, r2, r0
	str		r2, [sp, #0x18]
	mov		r8, r1
	cmp		r3, #0x0
	bge		_0802cd3c
	sub		r4, r6, #0x1
	and		r4, r3
	sub		r3, r6, r4
	lsl		r0, r4, #0x1
	mov		r1, #0x96
	lsl		r1, r1, #0x2
	add		r0, r0, r1
	mov		r7, r12
	add		r2, r7, r0
	add		r7, r1, #0x0
	add		r7, r12
	ldr		r0, [sp, #0x0]
	asr		r0, r0, #0x1f
	str		r0, [sp, #0x8]
	mov		r1, r12
	ldr		r1, [r1, #0x14]
	str		r1, [sp, #0xC]
	cmp		r3, #0x0
	ble		_0802cce2
	mov		r5, #0x0
	lsl		r1, r6, #0x1
_0802ccd4:
	strh	r5, [r2, #0x0]
	add		r0, r1, r2
	strh	r5, [r0, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802ccd4
_0802cce2:
	mov		r2, r8
	lsl		r1, r2, #0x1
	add		r2, r7, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0802cd0c
	cmp		r4, #0x0
	bgt		_0802ccf6
	b		_0802cf3e
_0802ccf6:
	mov		r3, #0x0
	lsl		r5, r6, #0x1
	add		r1, r4, #0x0
_0802ccfc:
	strh	r3, [r2, #0x0]
	add		r0, r5, r2
	strh	r3, [r0, #0x0]
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802ccfc
	b		_0802cf3e
_0802cd0c:
	mov		r3, r12
	ldr		r0, [r3, #0x20]
	add		r3, r0, r1
	cmp		r4, #0x0
	bgt		_0802cd18
	b		_0802cf3e
_0802cd18:
	lsl		r7, r6, #0x1
	mov		r8, r7
	ldr		r0, [sp, #0x14]
	lsl		r7, r0, #0x1
	lsl		r5, r0, #0x2
_0802cd22:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, r8
	add		r1, r0, r2
	add		r0, r7, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r3, r3, r5
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802cd22
	b		_0802cf3e
_0802cd3c:
	sub		r0, r5, r6
	cmp		r3, r0
	ble		_0802cdd6
	sub		r4, r6, #0x1
	and		r4, r3
	mov		r1, #0x96
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r2, [sp, #0x0]
	asr		r2, r2, #0x1f
	str		r2, [sp, #0x8]
	mov		r3, r12
	ldr		r3, [r3, #0x14]
	str		r3, [sp, #0xC]
	cmp		r4, #0x0
	ble		_0802cd70
	mov		r5, #0x0
	lsl		r2, r6, #0x1
	add		r3, r4, #0x0
_0802cd62:
	strh	r5, [r1, #0x0]
	add		r0, r2, r1
	strh	r5, [r0, #0x0]
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802cd62
_0802cd70:
	sub		r1, r6, r4
	lsl		r0, r4, #0x1
	mov		r4, #0x96
	lsl		r4, r4, #0x2
	add		r0, r0, r4
	mov		r7, r12
	add		r3, r7, r0
	mov		r0, #0x1
	neg		r0, r0
	ldr		r2, [sp, #0x18]
	cmp		r2, r0
	bne		_0802cda2
	cmp		r1, #0x0
	bgt		_0802cd8e
	b		_0802cf3e
_0802cd8e:
	mov		r2, #0x0
	lsl		r4, r6, #0x1
_0802cd92:
	strh	r2, [r3, #0x0]
	add		r0, r4, r3
	strh	r2, [r0, #0x0]
	add		r3, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802cd92
	b		_0802cf3e
_0802cda2:
	mov		r4, r12
	ldr		r0, [r4, #0x20]
	ldr		r7, [sp, #0x18]
	add		r2, r0, r7
	cmp		r1, #0x0
	bgt		_0802cdb0
	b		_0802cf3e
_0802cdb0:
	lsl		r0, r6, #0x1
	mov		r8, r0
	ldr		r4, [sp, #0x14]
	lsl		r7, r4, #0x1
	lsl		r5, r4, #0x2
	add		r4, r1, #0x0
_0802cdbc:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r3, #0x0]
	mov		r0, r8
	add		r1, r0, r3
	add		r0, r7, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r3, #0x2
	add		r2, r2, r5
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802cdbc
	b		_0802cf3e
_0802cdd6:
	sub		r1, r6, #0x1
	and		r1, r4
	cmp		r1, #0x0
	bne		_0802ce56
	mov		r3, #0x96
	lsl		r3, r3, #0x2
	add		r3, r12
	mov		r0, #0x1
	neg		r0, r0
	ldr		r2, [sp, #0x18]
	cmp		r2, r0
	bne		_0802ce16
	ldr		r4, [sp, #0x0]
	asr		r4, r4, #0x1f
	str		r4, [sp, #0x8]
	mov		r7, r12
	ldr		r7, [r7, #0x14]
	str		r7, [sp, #0xC]
	cmp		r1, r6
	blt		_0802ce00
	b		_0802cf3e
_0802ce00:
	mov		r2, #0x0
	lsl		r4, r6, #0x1
	add		r1, r6, #0x0
_0802ce06:
	strh	r2, [r3, #0x0]
	add		r0, r4, r3
	strh	r2, [r0, #0x0]
	add		r3, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802ce06
	b		_0802cf3e
_0802ce16:
	mov		r2, r12
	ldr		r0, [r2, #0x20]
	ldr		r4, [sp, #0x18]
	add		r2, r0, r4
	ldr		r7, [sp, #0x0]
	asr		r7, r7, #0x1f
	str		r7, [sp, #0x8]
	mov		r0, r12
	ldr		r0, [r0, #0x14]
	str		r0, [sp, #0xC]
	cmp		r1, r6
	blt		_0802ce30
	b		_0802cf3e
_0802ce30:
	lsl		r1, r6, #0x1
	mov		r8, r1
	ldr		r4, [sp, #0x14]
	lsl		r7, r4, #0x1
	ldr		r5, [sp, #0x4]
	add		r4, r6, #0x0
_0802ce3c:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r3, #0x0]
	mov		r0, r8
	add		r1, r0, r3
	add		r0, r7, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r3, #0x2
	add		r2, r2, r5
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802ce3c
	b		_0802cf3e
_0802ce56:
	add		r5, r1, #0x0
	sub		r0, r6, r5
	ldr		r1, [sp, #0x4]
	mul		r0, r1
	ldr		r2, [sp, #0x18]
	add		r1, r2, r0
	mov		r3, #0x96
	lsl		r3, r3, #0x2
	add		r3, r12
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0802ce9a
	lsl		r4, r5, #0x1
	str		r4, [sp, #0x10]
	ldr		r7, [sp, #0x0]
	asr		r7, r7, #0x1f
	str		r7, [sp, #0x8]
	mov		r0, r12
	ldr		r0, [r0, #0x14]
	str		r0, [sp, #0xC]
	cmp		r5, #0x0
	ble		_0802cede
	mov		r4, #0x0
	lsl		r2, r6, #0x1
	add		r1, r5, #0x0
_0802ce8a:
	strh	r4, [r3, #0x0]
	add		r0, r2, r3
	strh	r4, [r0, #0x0]
	add		r3, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802ce8a
	b		_0802cede
_0802ce9a:
	mov		r2, r12
	ldr		r0, [r2, #0x20]
	add		r2, r0, r1
	lsl		r4, r5, #0x1
	str		r4, [sp, #0x10]
	ldr		r7, [sp, #0x0]
	asr		r7, r7, #0x1f
	str		r7, [sp, #0x8]
	mov		r0, r12
	ldr		r0, [r0, #0x14]
	str		r0, [sp, #0xC]
	cmp		r5, #0x0
	ble		_0802cede
	lsl		r1, r6, #0x1
	mov		r10, r1
	ldr		r4, [sp, #0x14]
	lsl		r4, r4, #0x1
	mov		r9, r4
	ldr		r7, [sp, #0x4]
	mov		r8, r7
	add		r4, r5, #0x0
_0802cec4:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r3, #0x0]
	mov		r0, r10
	add		r1, r0, r3
	mov		r7, r9
	add		r0, r7, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r3, #0x2
	add		r2, r8
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802cec4
_0802cede:
	sub		r1, r6, r5
	ldr		r2, [sp, #0x10]
	mov		r3, #0x96
	lsl		r3, r3, #0x2
	add		r0, r2, r3
	mov		r4, r12
	add		r3, r4, r0
	mov		r0, #0x1
	neg		r0, r0
	ldr		r7, [sp, #0x18]
	cmp		r7, r0
	bne		_0802cf0e
	cmp		r1, #0x0
	ble		_0802cf3e
	mov		r2, #0x0
	lsl		r4, r6, #0x1
_0802cefe:
	strh	r2, [r3, #0x0]
	add		r0, r4, r3
	strh	r2, [r0, #0x0]
	add		r3, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0802cefe
	b		_0802cf3e
_0802cf0e:
	mov		r2, r12
	ldr		r0, [r2, #0x20]
	ldr		r4, [sp, #0x18]
	add		r2, r0, r4
	cmp		r1, #0x0
	ble		_0802cf3e
	lsl		r7, r6, #0x1
	mov		r8, r7
	ldr		r0, [sp, #0x14]
	lsl		r7, r0, #0x1
	lsl		r5, r0, #0x2
	add		r4, r1, #0x0
_0802cf26:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r3, #0x0]
	mov		r0, r8
	add		r1, r0, r3
	add		r0, r7, r2
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r3, #0x2
	add		r2, r2, r5
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802cf26
_0802cf3e:
	mov		r4, #0x96
	lsl		r4, r4, #0x2
	add		r4, r12
	ldr		r1, [sp, #0xC]
	ldr		r3, [sp, #0x0]
	add		r2, r1, r3
	cmp		r6, #0x0
	ble		_0802cf74
	mov		r7, r12
	ldr		r1, [r7, #0x24]
	lsr		r0, r1, #0x1f
	add		r0, r1, r0
	asr		r0, r0, #0x1
	lsl		r5, r0, #0x1
	lsl		r7, r1, #0x1
	add		r3, r6, #0x0
_0802cf5e:
	ldrh	r0, [r4, #0x0]
	strh	r0, [r2, #0x0]
	add		r1, r5, r2
	add		r0, r5, r4
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r4, #0x2
	add		r2, r2, r7
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802cf5e
_0802cf74:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802cc20

	thumb_func_start sub_0802cf84
sub_0802cf84:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	ldr		r4, [r7, #0x38]
	lsl		r0, r4, #0x1
	ldr		r2, [r7, #0x24]
	sub		r1, r2, #0x1
	and		r0, r1
	add		r1, r0, #0x0
	mul		r1, r2
	ldr		r0, _0802cfe8
	add		r1, r1, r0
	mov		r8, r1
	cmp		r4, #0x0
	blt		_0802cfbe
	ldr		r0, [r7, #0x30]
	cmp		r4, r0
	bge		_0802cfbe
	ldr		r6, [r7, #0x28]
	ldr		r2, [r7, #0x34]
	cmn		r2, r6
	blt		_0802cfbe
	ldr		r3, [r7, #0x2c]
	cmp		r2, r3
	blt		_0802cff0
_0802cfbe:
	ldr		r4, [r7, #0x28]
	mov		r0, sp
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	ldr		r0, _0802cfec
	and		r4, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	b		_0802d22e

_0802cfe8:	.4byte 0x02000000
_0802cfec:	.4byte 0x001FFFFF

_0802cff0:
	add		r0, r4, #0x0
	mul		r0, r3
	lsl		r0, r0, #0x2
	lsl		r1, r2, #0x1
	add		r0, r0, r1
	mov		r9, r0
	cmp		r2, #0x0
	bge		_0802d090
	sub		r0, r6, #0x1
	and		r0, r2
	mov		r9, r0
	sub		r5, r6, r0
	lsl		r4, r0, #0x1
	add		r4, r8
	mov		r0, sp
	mov		r1, #0x0
	mov		r10, r1
	strh	r1, [r0, #0x0]
	ldr		r2, _0802d07c
	and		r5, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r5, r0
	mov		r0, sp
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	mov		r6, sp
	add		r6, #0x2
	mov		r1, r10
	strh	r1, [r6, #0x0]
	ldr		r0, [r7, #0x28]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r7, #0x2c]
	lsl		r0, r0, #0x2
	ldr		r1, [r7, #0x38]
	mul		r1, r0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0802d080
	mov		r0, sp
	mov		r2, r10
	strh	r2, [r0, #0x0]
	ldr		r4, _0802d07c
	mov		r0, r9
	and		r4, r0
	mov		r1, #0x80
	lsl		r1, r1, #0x11
	orr		r4, r1
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r2, r10
	strh	r2, [r6, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r0, r6, #0x0
	b		_0802d22e

.incbin "base.gba", 0x2D07A, 0x2

_0802d07c:	.4byte 0x001FFFFF

_0802d080:
	ldr		r4, [r7, #0x20]
	add		r4, r4, r1
	ldr		r5, _0802d08c
	mov		r0, r9
	and		r5, r0
	b		_0802d160

_0802d08c:	.4byte 0x001FFFFF

_0802d090:
	sub		r0, r3, r6
	cmp		r2, r0
	ble		_0802d11c
	sub		r5, r6, #0x1
	and		r5, r2
	mov		r0, sp
	mov		r1, #0x0
	mov		r10, r1
	strh	r1, [r0, #0x0]
	add		r4, r5, #0x0
	ldr		r2, _0802d108
	and		r4, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r6, sp
	add		r6, #0x2
	mov		r1, r10
	strh	r1, [r6, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r0, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_08071b6c
	ldr		r0, [r7, #0x28]
	sub		r1, r0, r5
	lsl		r5, r5, #0x1
	add		r8, r5
	mov		r0, #0x1
	neg		r0, r0
	cmp		r9, r0
	bne		_0802d10c
	mov		r0, sp
	mov		r2, r10
	strh	r2, [r0, #0x0]
	ldr		r4, _0802d108
	and		r4, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r1, r10
	strh	r1, [r6, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r0, r6, #0x0
	b		_0802d22e

.incbin "base.gba", 0x2D106, 0x2

_0802d108:	.4byte 0x001FFFFF

_0802d10c:
	ldr		r4, [r7, #0x20]
	add		r4, r9
	ldr		r5, _0802d118
	and		r5, r1
	b		_0802d160

.incbin "base.gba", 0x2D116, 0x2

_0802d118:	.4byte 0x001FFFFF

_0802d11c:
	sub		r5, r6, #0x1
	and		r5, r2
	cmp		r5, #0x0
	bne		_0802d184
	mov		r0, #0x1
	neg		r0, r0
	cmp		r9, r0
	bne		_0802d158
	mov		r0, sp
	strh	r5, [r0, #0x0]
	ldr		r4, _0802d154
	and		r4, r6
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	b		_0802d22e

.incbin "base.gba", 0x2D152, 0x2

_0802d154:	.4byte 0x001FFFFF

_0802d158:
	ldr		r4, [r7, #0x20]
	add		r4, r9
	ldr		r5, _0802d180
	and		r5, r6
_0802d160:
	add		r0, r4, #0x0
	mov		r1, r8
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r7, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	b		_0802d262

_0802d180:	.4byte 0x001FFFFF

_0802d184:
	mov		r10, r5
	sub		r0, r6, r5
	lsl		r0, r0, #0x1
	mov		r2, r9
	add		r5, r0, r2
	mov		r0, #0x1
	neg		r0, r0
	cmp		r5, r0
	bne		_0802d1cc
	mov		r0, sp
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	ldr		r4, _0802d1c8
	mov		r0, r10
	and		r4, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	mov		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r2, r4, #0x0
	bl		sub_08071b6c
	b		_0802d1f4

.incbin "base.gba", 0x2D1C6, 0x2

_0802d1c8:	.4byte 0x001FFFFF

_0802d1cc:
	ldr		r4, [r7, #0x20]
	add		r4, r4, r5
	ldr		r5, _0802d238
	mov		r1, r10
	and		r5, r1
	add		r0, r4, #0x0
	mov		r1, r8
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r7, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r8
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
_0802d1f4:
	ldr		r0, [r7, #0x28]
	mov		r2, r10
	sub		r1, r0, r2
	lsl		r0, r2, #0x1
	mov		r2, r8
	add		r6, r0, r2
	mov		r0, #0x1
	neg		r0, r0
	cmp		r9, r0
	bne		_0802d23c
	mov		r0, sp
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	ldr		r4, _0802d238
	and		r4, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r6, r1
_0802d22e:
	add		r2, r4, #0x0
	bl		sub_08071b6c
	b		_0802d262

.incbin "base.gba", 0x2D236, 0x2

_0802d238:	.4byte 0x001FFFFF

_0802d23c:
	ldr		r4, [r7, #0x20]
	add		r4, r9
	ldr		r5, _0802d274
	and		r5, r1
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r7, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r7, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r6, r1
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
_0802d262:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2D272, 0x2

_0802d274:	.4byte 0x001FFFFF
	thumb_func_end sub_0802cf84

	thumb_func_start sub_0802d278
sub_0802d278:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r2, [r4, #0x28]
	lsr		r1, r2, #0x1f
	add		r1, r2, r1
	asr		r1, r1, #0x1
	ldr		r0, [r4, #0x40]
	sub		r0, r0, r1
	str		r0, [r4, #0x34]
	ldr		r0, [r4, #0x44]
	sub		r0, r0, r1
	str		r0, [r4, #0x38]
	asr		r2, r2, #0x3
	cmp		r2, #0x0
	ble		_0802d2fe
	add		r5, r2, #0x0
_0802d298:
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	add		r0, r4, #0x0
	bl		sub_0802cf84
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802d298
_0802d2fe:
	bl		sub_08029f34
	ldr		r1, _0802d314
	ldr		r2, [r4, #0x14]
	ldr		r3, _0802d318
	bl		sub_08029ee4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2D312, 0x2

_0802d314:	.4byte 0x02000000
_0802d318:	.4byte 0x80002000
	thumb_func_end sub_0802d278

	thumb_func_start sub_0802d31c
sub_0802d31c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	mov		r12, r1
	mov		r8, r2
	ldr		r0, [r4, #0x24]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	add		r2, r0, #0x0
	sub		r2, #0x8
	lsl		r3, r3, #0x10
	ldr		r7, _0802d3c8
	mov		r0, #0x80
	lsl		r0, r0, #0x17
	add		r3, r3, r0
	asr		r3, r3, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_0802d348
	add		r0, #0x3f
_0802d348:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r6, _0802d3cc
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0802d364
	ldr		r5, _0802d3d0
	add		r0, r0, r5
_0802d364:
	asr		r5, r0, #0xf
	add		r0, r1, #0x0
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0802d37a
	ldr		r1, _0802d3d0
	add		r0, r0, r1
_0802d37a:
	asr		r2, r0, #0xf
	mov		r1, r12
	sub		r0, r1, r5
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r5, r0, #0x1
	mov		r0, r8
	sub		r2, r0, r2
	lsr		r0, r2, #0x1f
	add		r2, r2, r0
	asr		r3, r2, #0x1
	ldr		r1, [r4, #0x40]
	str		r1, [r4, #0x48]
	ldr		r0, [r4, #0x44]
	str		r0, [r4, #0x4c]
	str		r5, [r4, #0x40]
	str		r3, [r4, #0x44]
	sub		r7, r5, r1
	sub		r6, r3, r0
	ldr		r0, [r4, #0x28]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r2, r0, #0x1
	neg		r0, r2
	cmp		r6, r0
	blt		_0802d3ba
	cmp		r2, r6
	blt		_0802d3ba
	cmp		r7, r0
	blt		_0802d3ba
	cmp		r2, r7
	bge		_0802d3d4
_0802d3ba:
	add		r0, r4, #0x0
	mov		r1, r12
	mov		r2, r8
	bl		sub_0802d278
	b		_0802d472

.incbin "base.gba", 0x2D3C6, 0x2

_0802d3c8:	.4byte 0x08101068
_0802d3cc:	.4byte 0x000003FF
_0802d3d0:	.4byte 0x00007FFF

_0802d3d4:
	cmp		r6, #0x0
	beq		_0802d41c
	sub		r0, r5, r2
	str		r0, [r4, #0x34]
	cmp		r6, #0x0
	bge		_0802d3fe
	sub		r0, r3, r2
	str		r0, [r4, #0x38]
	mov		r5, #0x0
	cmp		r5, r6
	ble		_0802d41c
_0802d3ea:
	add		r0, r4, #0x0
	bl		sub_0802c9bc
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	sub		r5, #0x1
	cmp		r5, r6
	bgt		_0802d3ea
	b		_0802d41c
_0802d3fe:
	add		r0, r3, r2
	sub		r0, #0x1
	str		r0, [r4, #0x38]
	cmp		r6, #0x0
	ble		_0802d41c
	add		r5, r6, #0x0
_0802d40a:
	add		r0, r4, #0x0
	bl		sub_0802c9bc
	ldr		r0, [r4, #0x38]
	sub		r0, #0x1
	str		r0, [r4, #0x38]
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802d40a
_0802d41c:
	cmp		r7, #0x0
	beq		_0802d472
	ldr		r0, [r4, #0x28]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r1, r0, #0x1
	ldr		r0, [r4, #0x44]
	sub		r0, r0, r1
	str		r0, [r4, #0x38]
	cmp		r7, #0x0
	bge		_0802d452
	ldr		r0, [r4, #0x40]
	sub		r0, r0, r1
	str		r0, [r4, #0x34]
	mov		r5, #0x0
	cmp		r5, r7
	ble		_0802d472
_0802d43e:
	add		r0, r4, #0x0
	bl		sub_0802cc20
	ldr		r0, [r4, #0x34]
	add		r0, #0x1
	str		r0, [r4, #0x34]
	sub		r5, #0x1
	cmp		r5, r7
	bgt		_0802d43e
	b		_0802d472
_0802d452:
	ldr		r0, [r4, #0x40]
	add		r0, r0, r1
	sub		r0, #0x1
	str		r0, [r4, #0x34]
	cmp		r7, #0x0
	ble		_0802d472
	add		r5, r7, #0x0
_0802d460:
	add		r0, r4, #0x0
	bl		sub_0802cc20
	ldr		r0, [r4, #0x34]
	sub		r0, #0x1
	str		r0, [r4, #0x34]
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0802d460
_0802d472:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802d31c

	thumb_func_start sub_0802d47c
sub_0802d47c:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	add		r5, r2, #0x0
	mov		r0, #0x0
	str		r0, [r3, #0x0]
	ldr		r0, _0802d4a8
	ldrh	r0, [r0, #0x0]
	mov		r2, #0xc0
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r1, r0
	beq		_0802d4be
	cmp		r1, r0
	bgt		_0802d4ac
	cmp		r1, #0x0
	beq		_0802d4ba
	b		_0802d4ca

.incbin "base.gba", 0x2D4A6, 0x2

_0802d4a8:	.4byte 0x0400000C

_0802d4ac:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_0802d4c2
	cmp		r1, r2
	beq		_0802d4c6
	b		_0802d4ca
_0802d4ba:
	mov		r0, #0x10
	b		_0802d4c8
_0802d4be:
	mov		r0, #0x20
	b		_0802d4c8
_0802d4c2:
	mov		r0, #0x40
	b		_0802d4c8
_0802d4c6:
	mov		r0, #0x80
_0802d4c8:
	str		r0, [r3, #0x24]
_0802d4ca:
	ldr		r0, [r3, #0x24]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	str		r0, [r3, #0x28]
	lsl		r0, r4, #0x6
	str		r0, [r3, #0x2c]
	lsl		r0, r5, #0x6
	str		r0, [r3, #0x30]
	ldr		r0, _0802d4e8
	str		r0, [r3, #0x20]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2D4E6, 0x2

_0802d4e8:	.4byte 0x02010400
	thumb_func_end sub_0802d47c

	thumb_func_start sub_0802d4ec
sub_0802d4ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r7, [r0, #0x1c]
	cmp		r2, #0x0
	beq		_0802d52e
	add		r6, r1, #0x0
	add		r5, r7, #0x0
	mov		r0, #0xf
	mov		r8, r0
_0802d500:
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_0802d518
	add		r4, r7, r0
	bl		sub_0802711c
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08071b80
	bl		sub_0802711c
_0802d518:
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	add		r6, r6, r0
	add		r5, #0x2
	mov		r0, #0x1
	neg		r0, r0
	add		r8, r0
	mov		r0, r8
	cmp		r0, #0x0
	bge		_0802d500
	b		_0802d534
_0802d52e:
	add		r0, r7, #0x0
	bl		sub_08071b80
_0802d534:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2D53E, 0x2
	thumb_func_end sub_0802d4ec

	thumb_func_start sub_0802d540
sub_0802d540:
	ldr		r3, [r0, #0x40]
	str		r3, [r0, #0x48]
	ldr		r3, [r0, #0x44]
	str		r3, [r0, #0x4c]
	str		r1, [r0, #0x40]
	str		r2, [r0, #0x44]
	bx		lr

.incbin "base.gba", 0x2D54E, 0x2
	thumb_func_end sub_0802d540

	thumb_func_start sub_0802d550
sub_0802d550:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0802d578
	cmp		r3, #0x0
	ble		_0802d5a2
	mov		r2, #0x0
	ldr		r0, [r6, #0x28]
	lsl		r4, r0, #0x1
_0802d568:
	strh	r2, [r1, #0x0]
	add		r0, r4, r1
	strh	r2, [r0, #0x0]
	add		r1, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802d568
	b		_0802d5a2
_0802d578:
	asr		r0, r2, #0x1
	lsl		r0, r0, #0x1
	ldr		r4, [r6, #0x20]
	add		r4, r4, r0
	ldr		r5, _0802d5a8
	and		r5, r3
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r6, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r6, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r7, r1
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
_0802d5a2:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802d5a8:	.4byte 0x001FFFFF
	thumb_func_end sub_0802d550

	thumb_func_start sub_0802d5ac
sub_0802d5ac:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r2, #0x0
	add		r5, r3, #0x0
	lsl		r1, r1, #0x1
	mov		r0, #0x96
	lsl		r0, r0, #0x2
	add		r1, r1, r0
	add		r2, r4, r1
	mov		r0, #0x1
	neg		r0, r0
	cmp		r6, r0
	bne		_0802d5e0
	cmp		r5, #0x0
	ble		_0802d612
	mov		r1, #0x0
	ldr		r0, [r4, #0x28]
	lsl		r4, r0, #0x1
_0802d5d0:
	strh	r1, [r2, #0x0]
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bne		_0802d5d0
	b		_0802d612
_0802d5e0:
	asr		r0, r6, #0x1
	lsl		r0, r0, #0x1
	ldr		r1, [r4, #0x20]
	add		r3, r1, r0
	cmp		r5, #0x0
	ble		_0802d612
	ldr		r0, [r4, #0x28]
	lsl		r0, r0, #0x1
	mov		r12, r0
	ldr		r0, [r4, #0x2c]
	lsl		r7, r0, #0x1
	lsl		r6, r0, #0x2
	add		r4, r5, #0x0
_0802d5fa:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, r12
	add		r1, r0, r2
	add		r0, r7, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	add		r3, r3, r6
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0802d5fa
_0802d612:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0802d5ac

	thumb_func_start sub_0802d618
sub_0802d618:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0802d658
	mov		r0, sp
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	ldr		r4, _0802d654
	and		r4, r3
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	add		r2, r4, #0x0
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r6, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r7, r1
	add		r2, r4, #0x0
	bl		sub_08071b6c
	b		_0802d682

_0802d654:	.4byte 0x001FFFFF

_0802d658:
	asr		r0, r2, #0x1
	lsl		r0, r0, #0x1
	ldr		r4, [r6, #0x20]
	add		r4, r4, r0
	ldr		r5, _0802d68c
	and		r5, r3
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
	ldr		r0, [r6, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r6, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r7, r1
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08071b6c
_0802d682:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2D68A, 0x2

_0802d68c:	.4byte 0x001FFFFF
	thumb_func_end sub_0802d618

	thumb_func_start sub_0802d690
sub_0802d690:
	ldr		r1, _0802d69c
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2D69A, 0x2

_0802d69c:	.4byte 0x08102070
	thumb_func_end sub_0802d690

	thumb_func_start sub_0802d6a0
sub_0802d6a0:
	ldr		r1, _0802d6ac
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2D6AA, 0x2

_0802d6ac:	.4byte 0x081020d0

.incbin "base.gba", 0x2D6B0, 0x10
	thumb_func_end sub_0802d6a0

	thumb_func_start sub_0802d6c0
sub_0802d6c0:
	ldr		r1, _0802d6cc
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x2D6CA, 0x2

_0802d6cc:	.4byte 0x08102130
	thumb_func_end sub_0802d6c0

	thumb_func_start sub_0802d6d0
sub_0802d6d0:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1f
	bls		_0802d6dc
	mov		r0, #0x1
	b		_0802d6de
_0802d6dc:
	mov		r0, #0x0
_0802d6de:
	bx		lr
	thumb_func_end sub_0802d6d0

	thumb_func_start sub_0802d6e0
sub_0802d6e0:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	mov		r3, #0x0
	mov		r0, #0x1
	cmp		r2, #0x1f
	bhi		_0802d6f0
	mov		r0, #0x0
_0802d6f0:
	cmp		r0, #0x0
	bne		_0802d714
	mov		r1, #0x0
	ldr		r4, _0802d710
_0802d6f8:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d704
	add		r3, r1, #0x0
_0802d704:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d6f8
	b		_0802d72e

_0802d710:	.4byte 0x08102070

_0802d714:
	mov		r1, #0x0
	ldr		r4, _0802d738
_0802d718:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d724
	add		r3, r1, #0x0
_0802d724:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d718
_0802d72e:
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2D736, 0x2

_0802d738:	.4byte 0x081020d0
	thumb_func_end sub_0802d6e0

	thumb_func_start sub_0802d73c
sub_0802d73c:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	mov		r3, #0x0
	mov		r0, #0x1
	cmp		r2, #0x1f
	bhi		_0802d74c
	mov		r0, #0x0
_0802d74c:
	cmp		r0, #0x0
	bne		_0802d770
	mov		r1, #0x0
	ldr		r4, _0802d76c
_0802d754:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d760
	add		r3, r1, #0x0
_0802d760:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d754
	b		_0802d78a

_0802d76c:	.4byte 0x08102070

_0802d770:
	mov		r1, #0x0
	ldr		r4, _0802d794
_0802d774:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d780
	add		r3, r1, #0x0
_0802d780:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d774
_0802d78a:
	lsl		r0, r3, #0x18
	lsr		r0, r0, #0x1a
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0802d794:	.4byte 0x081020d0
	thumb_func_end sub_0802d73c

	thumb_func_start sub_0802d798
sub_0802d798:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	mov		r3, #0x0
	mov		r0, #0x1
	cmp		r2, #0x1f
	bhi		_0802d7a8
	mov		r0, #0x0
_0802d7a8:
	cmp		r0, #0x0
	bne		_0802d7cc
	mov		r1, #0x0
	ldr		r4, _0802d7c8
_0802d7b0:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d7bc
	add		r3, r1, #0x0
_0802d7bc:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d7b0
	b		_0802d7e6

_0802d7c8:	.4byte 0x08102070

_0802d7cc:
	mov		r1, #0x0
	ldr		r4, _0802d7f4
_0802d7d0:
	lsl		r0, r1, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, r2
	bne		_0802d7dc
	add		r3, r1, #0x0
_0802d7dc:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_0802d7d0
_0802d7e6:
	mov		r0, #0x3
	and		r3, r0
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x2D7F2, 0x2

_0802d7f4:	.4byte 0x081020d0
	thumb_func_end sub_0802d798

	thumb_func_start sub_0802d7f8
sub_0802d7f8:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, [r0, #0x4]
	lsl		r0, r0, #0x2
	ldr		r1, _0802d84c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r5, r0, r1
	bl		sub_0802711c
	ldrb	r1, [r5, #0x1]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802d864
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802d854
	ldr		r0, [r5, #0x4]
	ldr		r7, _0802d850
	add		r4, r5, r0
	mov		r6, #0x4
_0802d824:
	ldrh	r1, [r4, #0x0]
	cmp		r1, #0x0
	beq		_0802d83a
	ldr		r0, [r5, #0x4]
	add		r0, r5, r0
	add		r0, r0, r1
	add		r1, r7, #0x0
	bl		sub_08071b7c
	bl		sub_0802711c
_0802d83a:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	add		r7, r7, r0
	add		r4, #0x2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0802d824
	b		_0802d872

.incbin "base.gba", 0x2D84A, 0x2

_0802d84c:	.4byte 0x08234000
_0802d850:	.4byte 0x06004000

_0802d854:
	ldr		r0, [r5, #0x4]
	add		r0, r5, r0
	ldr		r1, _0802d860
	bl		sub_08071b7c
	b		_0802d872

_0802d860:	.4byte 0x06004000

_0802d864:
	ldr		r0, [r5, #0x4]
	add		r0, r5, r0
	ldr		r1, _0802d8a8
	mov		r2, #0xb0
	lsl		r2, r2, #0x4
	bl		sub_08071b68
_0802d872:
	ldr		r4, [r5, #0x14]
	add		r4, r5, r4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x3f
	bl		sub_08071b6c
	bl		sub_0802711c
	ldrb	r1, [r5, #0x0]
	cmp		r1, #0x8
	bne		_0802d894
	b		_0802d998
_0802d894:
	cmp		r1, #0x8
	bgt		_0802d8b6
	cmp		r1, #0x2
	beq		_0802d918
	cmp		r1, #0x2
	bgt		_0802d8ac
	cmp		r1, #0x1
	beq		_0802d8d2
	b		_0802d9e2

.incbin "base.gba", 0x2D8A6, 0x2

_0802d8a8:	.4byte 0x06004000

_0802d8ac:
	cmp		r1, #0x4
	beq		_0802d98c
	cmp		r1, #0x7
	beq		_0802d96c
	b		_0802d9e2
_0802d8b6:
	cmp		r1, #0x20
	beq		_0802d98c
	cmp		r1, #0x20
	bgt		_0802d8c6
	cmp		r1, #0x10
	bne		_0802d8c4
	b		_0802d9c4
_0802d8c4:
	b		_0802d9e2
_0802d8c6:
	cmp		r1, #0x40
	beq		_0802d998
	cmp		r1, #0x80
	bne		_0802d8d0
	b		_0802d9c4
_0802d8d0:
	b		_0802d9e2
_0802d8d2:
	ldrb	r0, [r5, #0x1]
	and		r1, r0
	cmp		r1, #0x0
	beq		_0802d8f8
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d8f0
	bl		sub_08071b7c
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d8f4
	bl		sub_08071b7c
	b		_0802d9e2

_0802d8f0:	.4byte 0x06007800
_0802d8f4:	.4byte 0x06007000

_0802d8f8:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d910
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r2, r4, #0x0
	bl		sub_08071b68
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d914
	b		_0802d956

_0802d910:	.4byte 0x06007800
_0802d914:	.4byte 0x06007000

_0802d918:
	ldrb	r1, [r5, #0x1]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802d934
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d930
	bl		sub_08071b7c
	b		_0802d96c

.incbin "base.gba", 0x2D92E, 0x2

_0802d930:	.4byte 0x06007800

_0802d934:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d960
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r2, r4, #0x0
	bl		sub_08071b68
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d964
	add		r2, r4, #0x0
	bl		sub_08071b68
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d968
_0802d956:
	add		r2, r4, #0x0
	bl		sub_08071b68
	b		_0802d9e2

.incbin "base.gba", 0x2D95E, 0x2

_0802d960:	.4byte 0x06007800
_0802d964:	.4byte 0x06007000
_0802d968:	.4byte 0x06006800

_0802d96c:
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d984
	bl		sub_08071b7c
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d988
	bl		sub_08071b7c
	b		_0802d9e2

.incbin "base.gba", 0x2D982, 0x2

_0802d984:	.4byte 0x06007000
_0802d988:	.4byte 0x06006800

_0802d98c:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d994
	b		_0802d99e

_0802d994:	.4byte 0x06007000

_0802d998:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d9b8
_0802d99e:
	bl		sub_08071b7c
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d9bc
	bl		sub_08071b7c
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d9c0
	bl		sub_08071b7c
	b		_0802d9e2

_0802d9b8:	.4byte 0x06007800
_0802d9bc:	.4byte 0x06006800
_0802d9c0:	.4byte 0x06006000

_0802d9c4:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d9ec
	bl		sub_08071b7c
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d9f0
	bl		sub_08071b7c
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d9f4
	bl		sub_08071b7c
_0802d9e2:
	bl		sub_0802711c
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802d9ec:	.4byte 0x06007800
_0802d9f0:	.4byte 0x06007000
_0802d9f4:	.4byte 0x06006000
	thumb_func_end sub_0802d7f8

	thumb_func_start sub_0802d9f8
sub_0802d9f8:
	push	{ r4, r5, r6, r7, lr }
	ldr		r1, _0802da3c
	ldr		r2, _0802da40
	ldr		r3, _0802da44
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x4]
	lsl		r0, r0, #0x2
	ldr		r1, _0802da48
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r0, r0, r1
	ldr		r1, _0802da4c
	add		r5, r2, r1
	mov		r3, #0x0
	mov		r12, r3
	mov		r6, #0x0
	mov		r7, #0x0
	ldrb	r1, [r0, #0x0]
	cmp		r1, #0x10
	beq		_0802da8a
	cmp		r1, #0x10
	bgt		_0802da56
	cmp		r1, #0x7
	beq		_0802da76
	cmp		r1, #0x7
	bgt		_0802da50
	cmp		r1, #0x4
	beq		_0802da70
	b		_0802da90

.incbin "base.gba", 0x2DA3A, 0x2

_0802da3c:	.4byte 0x08102bf8
_0802da40:	.4byte 0x030031A0
_0802da44:	.4byte 0x00000801
_0802da48:	.4byte 0x08234000
_0802da4c:	.4byte 0x0000057C

_0802da50:
	cmp		r1, #0x8
	beq		_0802da7c
	b		_0802da90
_0802da56:
	cmp		r1, #0x40
	beq		_0802da76
	cmp		r1, #0x40
	bgt		_0802da64
	cmp		r1, #0x20
	beq		_0802da6a
	b		_0802da90
_0802da64:
	cmp		r1, #0x80
	beq		_0802da82
	b		_0802da90
_0802da6a:
	mov		r7, #0x80
	lsl		r7, r7, #0x7
	b		_0802da90
_0802da70:
	mov		r7, #0x80
	lsl		r7, r7, #0x8
	b		_0802da90
_0802da76:
	mov		r6, #0x80
	lsl		r6, r6, #0x7
	b		_0802da90
_0802da7c:
	mov		r6, #0x80
	lsl		r6, r6, #0x8
	b		_0802da90
_0802da82:
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	mov		r12, r1
	b		_0802da90
_0802da8a:
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	mov		r12, r3
_0802da90:
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x10
	beq		_0802dad6
	cmp		r0, #0x10
	bgt		_0802daae
	cmp		r0, #0x7
	beq		_0802dac2
	cmp		r0, #0x7
	bgt		_0802daa8
	cmp		r0, #0x4
	beq		_0802daca
	b		_0802dade
_0802daa8:
	cmp		r0, #0x8
	beq		_0802dace
	b		_0802dade
_0802daae:
	cmp		r0, #0x40
	beq		_0802dace
	cmp		r0, #0x40
	bgt		_0802dabc
	cmp		r0, #0x20
	beq		_0802daca
	b		_0802dade
_0802dabc:
	cmp		r0, #0x80
	beq		_0802dad6
	b		_0802dade
_0802dac2:
	mov		r0, #0xd
	mov		r3, #0xe
	mov		r4, #0xe
	b		_0802dae4
_0802daca:
	mov		r0, #0xe
	b		_0802dad0
_0802dace:
	mov		r0, #0xf
_0802dad0:
	mov		r3, #0xd
	mov		r4, #0xc
	b		_0802dae4
_0802dad6:
	mov		r0, #0xf
	mov		r3, #0xe
	mov		r4, #0xc
	b		_0802dae4
_0802dade:
	mov		r0, #0xf
	mov		r3, #0xe
	mov		r4, #0xd
_0802dae4:
	ldr		r2, _0802db24
	mov		r1, #0x7
	orr		r7, r1
	lsl		r0, r0, #0x8
	orr		r7, r0
	ldrh	r0, [r5, #0x8]
	strh	r7, [r5, #0x8]
	ldrh	r0, [r5, #0x8]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	orr		r6, r1
	lsl		r0, r3, #0x8
	orr		r6, r0
	ldrh	r0, [r5, #0xa]
	strh	r6, [r5, #0xa]
	ldrh	r0, [r5, #0xa]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	mov		r0, r12
	orr		r0, r1
	mov		r12, r0
	lsl		r0, r4, #0x8
	mov		r1, r12
	orr		r1, r0
	ldrh	r0, [r5, #0xc]
	strh	r1, [r5, #0xc]
	ldrh	r0, [r5, #0xc]
	strh	r0, [r2, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2DB22, 0x2

_0802db24:	.4byte 0x0400000A
	thumb_func_end sub_0802d9f8

	thumb_func_start sub_0802db28
sub_0802db28:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _0802db94
	ldr		r0, _0802db98
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802db9c
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	mov		r4, #0x0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _0802dba0
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_0802dba4
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_0802dbae

.incbin "base.gba", 0x2DB92, 0x2

_0802db94:	.4byte 0x030031A0
_0802db98:	.4byte 0x0000057C
_0802db9c:	.4byte 0x0000FFF8
_0802dba0:	.4byte 0x0000080D

_0802dba4:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _0802dc1c
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_0802dbae:
	mov		r0, #0x0
	str		r0, [r3, #0x4]
	ldr		r0, _0802dc20
	str		r0, [sp, #0x0]
	ldr		r0, _0802dc24
	str		r0, [sp, #0x4]
	ldr		r0, _0802dc28
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0x8]
	strh	r0, [r3, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xc]
	strh	r0, [r3, #0xc]
	lsl		r0, r5, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802dbe2
	add		r0, #0x3f
_0802dbe2:
	asr		r0, r0, #0x6
	sub		r0, #0x28
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r4, #0x26
	strh	r4, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802dbf8
	add		r0, #0x7f
_0802dbf8:
	asr		r0, r0, #0x7
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	strh	r4, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802dc0a
	add		r0, #0xff
_0802dc0a:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	strh	r4, [r3, #0x18]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0802dc1c:	.4byte 0x0000F7FF
_0802dc20:	.4byte 0x00000F07
_0802dc24:	.4byte 0x00000E07
_0802dc28:	.4byte 0x00000D07

.incbin "base.gba", 0x2DC2C, 0xDC
	thumb_func_end sub_0802db28

	thumb_func_start sub_0802dd08
sub_0802dd08:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0xC]
	ldr		r2, _0802dd7c
	ldr		r0, _0802dd80
	add		r7, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802dd84
	and		r0, r1
	ldrh	r1, [r7, #0x0]
	mov		r3, #0x0
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x0]
	orr		r0, r3
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x0]
	orr		r0, r3
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x0]
	orr		r0, r3
	strh	r0, [r7, #0x0]
	ldr		r0, _0802dd88
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_0802dd8c
	ldrh	r0, [r7, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x0]
	orr		r0, r3
	strh	r0, [r7, #0x0]
	b		_0802dd96

_0802dd7c:	.4byte 0x030031A0
_0802dd80:	.4byte 0x0000057C
_0802dd84:	.4byte 0x0000FFF8
_0802dd88:	.4byte 0x0000080D

_0802dd8c:
	ldrh	r0, [r7, #0x0]
	ldr		r1, _0802de1c
	and		r1, r0
	ldrh	r0, [r7, #0x0]
	strh	r1, [r7, #0x0]
_0802dd96:
	mov		r1, #0x0
	str		r1, [r7, #0x4]
	ldr		r0, _0802de20
	str		r0, [sp, #0x0]
	ldr		r0, _0802de24
	str		r0, [sp, #0x4]
	ldr		r0, _0802de28
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r2, [r7, #0x8]
	strh	r0, [r7, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r2, [r7, #0xa]
	strh	r0, [r7, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r2, [r7, #0xc]
	strh	r0, [r7, #0xc]
	ldrh	r0, [r7, #0xe]
	strh	r1, [r7, #0xe]
	ldrh	r0, [r7, #0x10]
	mov		r0, #0x26
	strh	r0, [r7, #0x10]
	ldr		r4, _0802de2c
	ldr		r1, _0802de30
	add		r0, r4, r1
	ldr		r6, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r2, [r0, #0x0]
	sub		r0, #0x30
	ldr		r0, [r0, #0x0]
	mov		r1, #0x3
	str		r2, [sp, #0x10]
	bl		sub_0807d80c
	add		r3, r0, #0x0
	ldr		r1, _0802de34
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	add		r1, #0x4
	add		r0, r4, r1
	ldr		r5, [r0, #0x0]
	ldr		r0, _0802de38
	add		r4, r4, r0
	ldr		r4, [r4, #0x0]
	mov		r9, r4
	ldr		r2, [sp, #0x10]
	cmp		r2, #0x0
	bne		_0802de02
	mov		r5, #0x0
_0802de02:
	ldr		r0, [r6, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0802de5c
	cmp		r5, #0x1
	beq		_0802de4a
	cmp		r5, #0x1
	bgt		_0802de3c
	cmp		r5, #0x0
	beq		_0802de42
	b		_0802de6a

.incbin "base.gba", 0x2DE1A, 0x2

_0802de1c:	.4byte 0x0000F7FF
_0802de20:	.4byte 0x00000F04
_0802de24:	.4byte 0x00004D07
_0802de28:	.4byte 0x00000C07
_0802de2c:	.4byte 0x030031A0
_0802de30:	.4byte 0x00000838
_0802de34:	.4byte 0x0000054C
_0802de38:	.4byte 0x00000554

_0802de3c:
	cmp		r5, #0x2
	beq		_0802de60
	b		_0802de6a
_0802de42:
	cmp		r2, r3
	ble		_0802de6a
	mov		r1, #0x6
	b		_0802de66
_0802de4a:
	mov		r4, #0x1
	neg		r4, r4
	add		r8, r4
	mov		r0, r8
	cmp		r0, #0x0
	bgt		_0802de6a
	mov		r5, #0x2
	cmp		r2, r3
	bge		_0802de6a
_0802de5c:
	mov		r5, #0x0
	b		_0802de6a
_0802de60:
	cmp		r2, r3
	bge		_0802de6a
	mov		r1, #0x3
_0802de66:
	mov		r8, r1
	mov		r5, #0x1
_0802de6a:
	mov		r2, #0x1
	add		r9, r2
	mov		r4, r9
	cmp		r4, #0x1
	ble		_0802dea8
	ldr		r0, _0802def0
	ldr		r1, _0802def4
	add		r0, r0, r1
	mov		r10, r0
	ldr		r4, [r0, #0x0]
	ldr		r1, PTR_PTR_0802def8
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r6, [r0, #0x0]
	mov		r2, #0x0
	mov		r9, r2
	add		r4, #0x1
	cmp		r4, #0x5
	ble		_0802de92
	mov		r4, #0x0
_0802de92:
	bl		sub_08029f34
	lsl		r1, r4, #0x2
	add		r1, r1, r6
	ldr		r1, [r1, #0x0]
	ldr		r2, _0802defc
	ldr		r3, _0802df00
	bl		sub_08029ee4
	mov		r0, r10
	str		r4, [r0, #0x0]
_0802dea8:
	ldr		r1, _0802def0
	mov		r2, #0xa5
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	mov		r4, r8
	str		r4, [r0, #0x0]
	add		r2, #0x4
	add		r0, r1, r2
	str		r5, [r0, #0x0]
	mov		r4, #0xa6
	lsl		r4, r4, #0x3
	add		r0, r1, r4
	mov		r1, r9
	str		r1, [r0, #0x0]
	mov		r2, #0x0
	mov		r9, r2
	mov		r6, #0x0
	ldr		r1, _0802df04
	mov		r4, #0x24
	add		r4, r4, r1
	mov		r10, r4
	mov		r2, #0xab
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	ldr		r3, [r0, #0x0]
	ldr		r4, _0802df08
	add		r0, r1, r4
	ldr		r4, [r0, #0x0]
	mov		r8, r1
	cmp		r4, #0x1
	beq		_0802df34
	cmp		r4, #0x1
	bgt		_0802df0c
	cmp		r4, #0x0
	beq		_0802df12
	b		_0802df8e

_0802def0:	.4byte 0x030031C4
_0802def4:	.4byte 0x0000053C
PTR_PTR_0802def8:	.4byte 0x08102d30
_0802defc:	.4byte 0x06005CA0
_0802df00:	.4byte 0x800001A0
_0802df04:	.4byte 0x030031A0
_0802df08:	.4byte 0x0000055C

_0802df0c:
	cmp		r4, #0x2
	beq		_0802df5c
	b		_0802df8e
_0802df12:
	mov		r3, #0x0
	mov		r9, r3
	mov		r6, #0x0
	ldr		r0, _0802df30
	add		r0, r8
	ldr		r0, [r0, #0x0]
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	sub		r0, #0x7f
	cmp		r0, #0x2
	ble		_0802df8e
	mov		r4, #0x1
	b		_0802df8e

.incbin "base.gba", 0x2DF2E, 0x2

_0802df30:	.4byte 0x00000838

_0802df34:
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_0802df3c
	add		r0, r3, #0x7
_0802df3c:
	asr		r0, r0, #0x3
	mov		r9, r0
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_0802df48
	add		r0, #0x1f
_0802df48:
	asr		r6, r0, #0x5
	add		r3, #0x1
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r3, r0
	ble		_0802df8e
	mov		r0, r8
	ldr		r3, [r0, #0x10]
	mov		r4, #0x2
	b		_0802df8e
_0802df5c:
	mov		r2, r8
	ldr		r1, [r2, #0x10]
	sub		r1, r1, r3
	lsl		r0, r1, #0x14
	lsr		r0, r0, #0x17
	add		r0, #0x80
	mov		r9, r0
	ldr		r2, _0802e038
	lsl		r1, r1, #0x19
	asr		r0, r1, #0x10
	cmp		r0, #0x0
	bge		_0802df76
	add		r0, #0x3f
_0802df76:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0802df88
	ldr		r1, _0802e03c
	add		r0, r0, r1
_0802df88:
	asr		r0, r0, #0xe
	add		r6, r0, #0x0
	add		r6, #0x20
_0802df8e:
	ldr		r2, [sp, #0xC]
	lsl		r0, r2, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802df9c
	add		r0, #0xff
_0802df9c:
	asr		r5, r0, #0x8
	lsl		r0, r5, #0x1
	add		r0, r9
	ldrh	r1, [r7, #0x12]
	strh	r0, [r7, #0x12]
	add		r0, r6, #0x0
	sub		r0, #0xa
	ldrh	r1, [r7, #0x14]
	strh	r0, [r7, #0x14]
	ldr		r0, _0802e040
	add		r0, r10
	str		r3, [r0, #0x0]
	mov		r0, #0xa7
	lsl		r0, r0, #0x3
	add		r0, r10
	str		r4, [r0, #0x0]
	mov		r3, r8
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802dfc6
	add		r0, #0x7f
_0802dfc6:
	asr		r0, r0, #0x7
	ldrh	r1, [r7, #0x16]
	strh	r0, [r7, #0x16]
	ldrh	r0, [r7, #0x18]
	mov		r0, #0x26
	strh	r0, [r7, #0x18]
	mov		r4, #0xa8
	lsl		r4, r4, #0x3
	add		r0, r3, r4
	str		r5, [r0, #0x0]
	ldr		r0, _0802e044
	add		r0, r8
	ldr		r6, [r0, #0x0]
	mov		r0, #0xad
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r5, [r0, #0x0]
	add		r6, #0x1
	cmp		r6, #0x1
	ble		_0802dff8
	mov		r6, #0x0
	add		r5, #0x1
	cmp		r5, #0x3
	bls		_0802dff8
	mov		r5, #0x0
_0802dff8:
	ldr		r1, _0802e048
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x54
	add		r0, r4, #0x0
	mov		r2, #0x4
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0802e04c
	ldr		r2, _0802e044
	add		r1, r0, r2
	str		r6, [r1, #0x0]
	mov		r4, #0xad
	lsl		r4, r4, #0x3
	add		r0, r0, r4
	str		r5, [r0, #0x0]
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802e038:	.4byte 0x08101068
_0802e03c:	.4byte 0x00003FFF
_0802e040:	.4byte 0x00000534
_0802e044:	.4byte 0x00000564
_0802e048:	.4byte 0x08102cd8
_0802e04c:	.4byte 0x030031A0
	thumb_func_end sub_0802dd08

	thumb_func_start sub_0802e050
sub_0802e050:
	push	{ r4, lr }
	ldr		r4, _0802e088
	ldr		r1, _0802e08c
	mov		r0, #0x17
	bl		sub_08029fcc
	mov		r2, #0xa9
	lsl		r2, r2, #0x3
	add		r1, r4, r2
	str		r0, [r1, #0x0]
	mov		r1, #0xac
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r2, #0x1c
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	ldr		r0, [r4, #0x24]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r4, #0x24]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802e088:	.4byte 0x030031A0
_0802e08c:	.4byte 0x0802e091
	sub		sp, #0x4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r0, [sp, #0x0]
	ldr		r1, _0802e0bc
	cmp		r0, #0x31
	bgt		_0802e0aa
_0802e09e:
	ldr		r0, [sp, #0x0]
	add		r0, #0x1
	str		r0, [sp, #0x0]
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x31
	ble		_0802e09e
_0802e0aa:
	ldr		r0, _0802e0c0
	mov		r2, #0xa8
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	strh	r1, [r0, #0x0]
	add		sp, #0x4
	bx		lr

.incbin "base.gba", 0x2E0BA, 0x2

_0802e0bc:	.4byte 0x030031A0
_0802e0c0:	.4byte 0x0400001C
	thumb_func_end sub_0802e050

	thumb_func_start sub_0802e0c4
sub_0802e0c4:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _0802e130
	ldr		r0, _0802e134
	add		r4, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802e138
	and		r0, r1
	ldrh	r1, [r4, #0x0]
	mov		r3, #0x0
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldr		r1, _0802e13c
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0802e140
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x4
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	b		_0802e14a

.incbin "base.gba", 0x2E12E, 0x2

_0802e130:	.4byte 0x030031A0
_0802e134:	.4byte 0x0000057C
_0802e138:	.4byte 0x0000FFF8
_0802e13c:	.4byte 0x0000080D

_0802e140:
	ldrh	r0, [r4, #0x0]
	ldr		r1, _0802e24c
	and		r1, r0
	ldrh	r0, [r4, #0x0]
	strh	r1, [r4, #0x0]
_0802e14a:
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	ldr		r0, _0802e250
	str		r0, [sp, #0x0]
	ldr		r0, _0802e254
	str		r0, [sp, #0x4]
	ldr		r0, _0802e258
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0x8]
	strh	r0, [r4, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xa]
	strh	r0, [r4, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	lsl		r0, r5, #0x10
	asr		r3, r0, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_0802e17e
	add		r0, #0x3f
_0802e17e:
	asr		r0, r0, #0x6
	ldrh	r1, [r4, #0xe]
	strh	r0, [r4, #0xe]
	ldrh	r0, [r4, #0x10]
	mov		r5, #0x26
	strh	r5, [r4, #0x10]
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_0802e192
	add		r0, #0x7f
_0802e192:
	asr		r0, r0, #0x7
	ldrh	r1, [r4, #0x12]
	strh	r0, [r4, #0x12]
	ldrh	r0, [r4, #0x14]
	strh	r5, [r4, #0x14]
	add		r0, r3, #0x0
	cmp		r0, #0x0
	bge		_0802e1a4
	add		r0, #0xff
_0802e1a4:
	asr		r0, r0, #0x8
	ldrh	r1, [r4, #0x16]
	strh	r0, [r4, #0x16]
	ldrh	r0, [r4, #0x18]
	strh	r5, [r4, #0x18]
	ldr		r1, _0802e25c
	add		r0, r2, r1
	ldr		r6, [r0, #0x0]
	add		r1, #0x4
	add		r0, r2, r1
	ldr		r5, [r0, #0x0]
	add		r6, #0x1
	cmp		r6, #0xf
	ble		_0802e1ca
	mov		r6, #0x0
	add		r5, #0x1
	cmp		r5, #0xb
	bls		_0802e1ca
	mov		r5, #0x0
_0802e1ca:
	ldr		r1, _0802e260
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xee
	add		r0, r4, #0x0
	mov		r2, #0x9
	bl		sub_08071b6c
	ldr		r1, _0802e264
	ldr		r2, _0802e25c
	add		r0, r1, r2
	str		r6, [r0, #0x0]
	mov		r6, #0xa8
	lsl		r6, r6, #0x3
	add		r0, r1, r6
	str		r5, [r0, #0x0]
	add		r2, #0x8
	add		r0, r1, r2
	ldr		r6, [r0, #0x0]
	mov		r0, #0xa9
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	ldr		r5, [r1, #0x0]
	add		r6, #0x1
	cmp		r6, #0xf
	ble		_0802e212
	mov		r6, #0x0
	add		r5, #0x1
	cmp		r5, #0xb
	bls		_0802e212
	mov		r5, #0x0
_0802e212:
	ldr		r1, _0802e268
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xc0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	ldr		r0, _0802e264
	ldr		r2, _0802e26c
	add		r1, r0, r2
	str		r6, [r1, #0x0]
	mov		r6, #0xa9
	lsl		r6, r6, #0x3
	add		r0, r0, r6
	str		r5, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2E24A, 0x2

_0802e24c:	.4byte 0x0000F7FF
_0802e250:	.4byte 0x00000F07
_0802e254:	.4byte 0x00000E07
_0802e258:	.4byte 0x00000D07
_0802e25c:	.4byte 0x0000053C
_0802e260:	.4byte 0x08102d3c
_0802e264:	.4byte 0x030031A0
_0802e268:	.4byte 0x08102d6c
_0802e26c:	.4byte 0x00000544

.incbin "base.gba", 0x2E270, 0x3B0
_0802e620:	.4byte 0x0802e640

.incbin "base.gba", 0x2E624, 0x1C

_0802e640:
.incbin "base.gba", 0x2E640, 0x4
.incbin "base.gba", 0x2E644, 0x4

.incbin "base.gba", 0x2E648, 0x4
	thumb_func_end sub_0802e0c4


.incbin "base.gba", 0x2E64C, 0xE

_0802e65a:

.incbin "base.gba", 0x2E65A, 0x8
_0802e662:

.incbin "base.gba", 0x2E662, 0x8
_0802e66a:

.incbin "base.gba", 0x2E66A, 0x8
_0802e672:

.incbin "base.gba", 0x2E672, 0x8
_0802e67a:

.incbin "base.gba", 0x2E67A, 0x3CA
	thumb_func_start sub_0802ea44
sub_0802ea44:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r2, #0x0
	add		r7, r3, #0x0
	ldr		r5, _0802ea84
	lsl		r4, r0, #0x3
	add		r2, r4, r5
	mov		r3, #0x3
_0802ea52:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	add		r1, #0x2
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0802ea52
	add		r2, r5, #0x6
	add		r2, r4, r2
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0802ea88
	and		r0, r1
	lsl		r1, r6, #0xa
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r1, r5, #0x4
	add		r1, r4, r1
	lsl		r0, r7, #0xc
	ldrh	r2, [r1, #0x0]
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r0, r4, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0802ea84:	.4byte 0x030021A0
_0802ea88:	.4byte 0x0000F3FF
	thumb_func_end sub_0802ea44

	thumb_func_start sub_0802ea8c
sub_0802ea8c:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _0802eaf8
	ldr		r0, _0802eafc
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802eb00
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	mov		r4, #0x0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _0802eb04
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_0802eb08
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_0802eb12

.incbin "base.gba", 0x2EAF6, 0x2

_0802eaf8:	.4byte 0x030031A0
_0802eafc:	.4byte 0x0000057C
_0802eb00:	.4byte 0x0000FFF8
_0802eb04:	.4byte 0x0000080D

_0802eb08:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _0802eb80
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_0802eb12:
	mov		r0, #0x0
	str		r0, [r3, #0x4]
	ldr		r0, _0802eb84
	str		r0, [sp, #0x0]
	ldr		r0, _0802eb88
	str		r0, [sp, #0x4]
	ldr		r0, _0802eb8c
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0x8]
	strh	r0, [r3, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xc]
	strh	r0, [r3, #0xc]
	lsl		r0, r5, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802eb46
	add		r0, #0x3f
_0802eb46:
	asr		r0, r0, #0x6
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r4, #0x26
	strh	r4, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802eb5a
	add		r0, #0x7f
_0802eb5a:
	asr		r0, r0, #0x7
	sub		r0, #0x28
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	strh	r4, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802eb6e
	add		r0, #0xff
_0802eb6e:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	strh	r4, [r3, #0x18]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0802eb80:	.4byte 0x0000F7FF
_0802eb84:	.4byte 0x00000F07
_0802eb88:	.4byte 0x00000E07
_0802eb8c:	.4byte 0x00000D07
	thumb_func_end sub_0802ea8c

	thumb_func_start sub_0802eb90
sub_0802eb90:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	ldr		r4, _0802ec68
	ldr		r1, _0802ec6c
	add		r0, r4, r1
	ldrh	r7, [r0, #0x14]
	ldr		r2, _0802ec70
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r3, #0x24
	add		r3, r3, r4
	mov		r10, r3
	ldr		r6, _0802ec74
	add		r0, r4, r6
	ldr		r5, [r0, #0x0]
	mov		r0, #0xaa
	mul		r0, r5
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	bl		sub_0807d80c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r3, _0802ec78
	ldr		r1, [sp, #0x8]
	and		r1, r3
	orr		r1, r0
	str		r1, [sp, #0x8]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	mov		r6, #0x8a
	lsl		r6, r6, #0x1
	add		r2, r0, r6
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802ebe6
	add		r0, #0x7f
_0802ebe6:
	asr		r0, r0, #0x7
	sub		r0, r2, r0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r2, r3, #0x0
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r3, _0802ec7c
	lsl		r0, r5, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802ec02
	add		r0, #0x3f
_0802ec02:
	asr		r0, r0, #0x6
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	sub		r0, r6, r0
	ldr		r1, _0802ec80
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x3
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	sub		r0, r0, r1
	asr		r0, r0, #0xf
	mov		r9, r0
	add		r0, #0x48
	add		r0, r8
	lsl		r0, r0, #0x10
	ldr		r1, _0802ec84
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	add		r5, #0x1
	ldr		r0, _0802ec88
	cmp		r5, r0
	ble		_0802ec38
	mov		r5, #0x0
_0802ec38:
	ldr		r1, _0802ec8c
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	lsl		r4, r5, #0x9
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r4, r4, r2
	cmp		r0, #0x9
	bgt		_0802ec98
	ldr		r1, _0802ec90
	mov		r0, #0x0
	mov		r2, #0x3
	mov		r3, #0x0
	bl		sub_0802ea44
	str		r4, [sp, #0x0]
	ldr		r1, _0802ec94
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	add		r2, r6, #0x0
	add		r3, r6, #0x0
	bl		sub_0802951c
	b		_0802ecb4

_0802ec68:	.4byte 0x030031A0
_0802ec6c:	.4byte 0x00000848
_0802ec70:	.4byte 0x00000BC8
_0802ec74:	.4byte 0x0000053C
_0802ec78:	.4byte 0xffff0000
_0802ec7c:	.4byte 0x08101068
_0802ec80:	.4byte 0x000003FF
_0802ec84:	.4byte 0x0000FFFF
_0802ec88:	.4byte 0x0000017F
_0802ec8c:	.4byte 0x0000055C
_0802ec90:	.4byte 0x0809839c
_0802ec94:	.4byte 0x08102de4

_0802ec98:
	ldr		r1, _0802ed28
	mov		r0, #0x0
	mov		r2, #0x3
	mov		r3, #0x0
	bl		sub_0802ea44
	str		r4, [sp, #0x0]
	ldr		r1, _0802ed2c
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	add		r2, r6, #0x0
	add		r3, r6, #0x0
	bl		sub_0802951c
_0802ecb4:
	mov		r3, r9
	cmp		r3, #0x0
	bne		_0802ecec
	mov		r2, #0xa5
	lsl		r2, r2, #0x3
	add		r2, r10
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802ecca
	add		r0, #0x7f
_0802ecca:
	asr		r0, r0, #0x7
	lsl		r0, r0, #0x10
	add		r1, sp, #0x8
	mov		r6, #0x0
	ldrsh	r1, [r1, r6]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r1, _0802ed30
	add		r1, r10
	mov		r0, r8
	add		r0, #0x40
	str		r0, [r1, #0x0]
	ldr		r1, _0802ed34
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
_0802ecec:
	mov		r0, #0xa3
	lsl		r0, r0, #0x3
	add		r0, r10
	str		r5, [r0, #0x0]
	ldr		r0, _0802ed38
	mov		r2, #0xa8
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	ldr		r4, [r1, #0x0]
	ldr		r3, _0802ed3c
	add		r1, r0, r3
	ldr		r5, [r1, #0x0]
	mov		r6, #0xa9
	lsl		r6, r6, #0x3
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	mov		r0, #0x0
	str		r0, [sp, #0x10]
	mov		r9, r0
	mov		r1, #0x0
	str		r1, [sp, #0x14]
	cmp		r5, #0x7
	bls		_0802ed1e
	b		_0802efce
_0802ed1e:
	lsl		r0, r5, #0x2
	ldr		r1, _0802ed40
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0802ed28:	.4byte 0x080983a4
_0802ed2c:	.4byte 0x08102de4
_0802ed30:	.4byte 0x0000052C
_0802ed34:	.4byte 0x08102e2c
_0802ed38:	.4byte 0x030031A0
_0802ed3c:	.4byte 0x00000544
_0802ed40:	.4byte 0x0802ed44
_0802ed44:	.4byte 0x0802ed64

.incbin "base.gba", 0x2ED48, 0x1C
	thumb_func_end sub_0802eb90


.incbin "base.gba", 0x2ED64, 0x26A

_0802efce:

.incbin "base.gba", 0x2EFCE, 0x3E
_0802f00c:	.4byte 0x030031C4
_0802f010:	.4byte 0x0809839c
_0802f014:	.4byte 0x08102de4

_0802f018:

.incbin "base.gba", 0x2F018, 0x20
_0802f038:

.incbin "base.gba", 0x2F038, 0x28
_0802f060:

.incbin "base.gba", 0x2F060, 0x14
_0802f074:	.4byte 0x080983a4
_0802f078:	.4byte 0x08102de4
_0802f07c:	.4byte 0x030031C4
_0802f080:	.4byte 0x0000051C
_0802f084:	.4byte 0x00000524
	thumb_func_start sub_0802f088
sub_0802f088:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldr		r0, [r3, #0x68]
	add		r6, r3, #0x0
	ldr		r2, _0802f0b0
	ldr		r4, _0802f0b4
	add		r1, r2, r4
	ldrh	r5, [r1, #0x14]
	ldr		r7, _0802f0b8
	add		r1, r2, r7
	ldr		r1, [r1, #0x0]
	mov		r12, r1
	cmp		r0, #0x0
	bne		_0802f0c0
	ldr		r0, _0802f0bc
	add		r1, r2, r0
	ldrh	r4, [r1, #0x0]
	mov		r7, #0xaa
	lsl		r7, r7, #0x3
	b		_0802f0ca

_0802f0b0:	.4byte 0x030031A0
_0802f0b4:	.4byte 0x00000848
_0802f0b8:	.4byte 0x00000BC8
_0802f0bc:	.4byte 0x0000054C

_0802f0c0:
	ldr		r4, _0802f0f8
	add		r1, r2, r4
	ldrh	r4, [r1, #0x0]
	mov		r7, #0xab
	lsl		r7, r7, #0x3
_0802f0ca:
	add		r0, r2, r7
	ldr		r2, [r0, #0x0]
	mov		r0, #0x2
	ldrsh	r1, [r1, r0]
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0802f0dc
	add		r0, #0x7f
_0802f0dc:
	asr		r0, r0, #0x7
	sub		r0, r1, r0
	add		r0, r4, r0
	strh	r0, [r6, #0x20]
	mov		r1, r12
	add		r0, r2, r1
	strh	r0, [r6, #0x22]
	ldrh	r1, [r3, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	strh	r0, [r3, #0x34]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0802f0f8:	.4byte 0x00000554
	thumb_func_end sub_0802f088

	thumb_func_start sub_0802f0fc
sub_0802f0fc:
	push	{ r4, lr }
	ldr		r4, _0802f130
	mov		r1, #0xe8
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	bl		sub_08049164
	add		r2, r0, #0x0
	cmp		r2, #0x0
	beq		_0802f12a
	add		r1, r2, #0x0
	add		r1, #0x4c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r1, _0802f134
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0802f12a
	ldr		r0, _0802f138
	str		r0, [r2, #0x14]
_0802f12a:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0802f130:	.4byte 0x030031A0
_0802f134:	.4byte 0x000007FE
_0802f138:	.4byte 0x0802EB91
	thumb_func_end sub_0802f0fc

	thumb_func_start sub_0802f13c
sub_0802f13c:
	push	{ r4, lr }
	ldr		r4, _0802f1a8
	mov		r1, #0xe8
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	bl		sub_08049164
	add		r2, r0, #0x0
	cmp		r2, #0x0
	beq		_0802f15a
	add		r0, #0x4c
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r0, _0802f1ac
	str		r0, [r2, #0x14]
_0802f15a:
	ldr		r2, _0802f1b0
	add		r0, r4, r2
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	sub		r2, #0x14
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x14
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	ldr		r0, [r4, #0x24]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r4, #0x24]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2F1A6, 0x2

_0802f1a8:	.4byte 0x030031A0
_0802f1ac:	.4byte sub_0802f2cc
_0802f1b0:	.4byte 0x00000544
	thumb_func_end sub_0802f13c

	thumb_func_start sub_0802f1b4
sub_0802f1b4:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _0802f220
	ldr		r0, _0802f224
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802f228
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	mov		r4, #0x0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _0802f22c
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_0802f230
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_0802f23a

.incbin "base.gba", 0x2F21E, 0x2

_0802f220:	.4byte 0x030031A0
_0802f224:	.4byte 0x0000057C
_0802f228:	.4byte 0x0000FFF8
_0802f22c:	.4byte 0x0000080D

_0802f230:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _0802f2b8
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_0802f23a:
	mov		r0, #0x0
	str		r0, [r3, #0x4]
	ldr		r0, _0802f2bc
	str		r0, [sp, #0x0]
	ldr		r0, _0802f2c0
	str		r0, [sp, #0x4]
	ldr		r0, _0802f2c4
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0x8]
	strh	r0, [r3, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xc]
	strh	r0, [r3, #0xc]
	lsl		r0, r5, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802f26e
	add		r0, #0x3f
_0802f26e:
	asr		r0, r0, #0x6
	sub		r0, #0x28
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r4, #0x26
	strh	r4, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802f284
	add		r0, #0x7f
_0802f284:
	asr		r0, r0, #0x7
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	strh	r4, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0802f296
	add		r0, #0xff
_0802f296:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	strh	r4, [r3, #0x18]
	ldrh	r0, [r3, #0x4]
	mov		r0, #0xfd
	lsl		r0, r0, #0x6
	strh	r0, [r3, #0x4]
	ldrh	r0, [r3, #0x6]
	ldr		r0, _0802f2c8
	strh	r0, [r3, #0x6]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2F2B6, 0x2

_0802f2b8:	.4byte 0x0000F7FF
_0802f2bc:	.4byte 0x00000F07
_0802f2c0:	.4byte 0x00004D07
_0802f2c4:	.4byte 0x00000C07
_0802f2c8:	.4byte 0x00001004
	thumb_func_end sub_0802f1b4

	thumb_func_start sub_0802f2cc
sub_0802f2cc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x30
	ldr		r0, _0802f364
	ldr		r1, _0802f368
	add		r1, r1, r0
	mov		r9, r1
	ldr		r3, _0802f36c
	add		r2, r0, r3
	ldr		r5, _0802f370
	add		r1, r0, r5
	ldr		r4, [r1, #0x0]
	ldr		r1, _0802f374
	add		r6, r0, r1
	ldr		r5, [r6, #0x0]
	ldrh	r3, [r2, #0x14]
	mov		r10, r3
	mov		r3, #0x14
	ldrsh	r1, [r2, r3]
	add		r7, r0, #0x0
	cmp		r1, #0x0
	bge		_0802f300
	add		r1, #0xff
_0802f300:
	asr		r0, r1, #0x8
	mov		r1, #0xed
	sub		r1, r1, r0
	mov		r0, #0xff
	and		r1, r0
	mov		r0, #0xab
	lsl		r0, r0, #0x3
	add		r3, r7, r0
	ldr		r2, [r3, #0x0]
	sub		r0, r5, r1
	cmp		r0, #0x0
	bge		_0802f31a
	neg		r0, r0
_0802f31a:
	cmp		r0, #0x80
	ble		_0802f322
	mov		r0, #0x1
	sub		r2, r0, r2
_0802f322:
	str		r1, [r6, #0x0]
	str		r2, [r3, #0x0]
	ldr		r1, _0802f378
	add		r0, r7, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802f336
	b		_0802f5b8
_0802f336:
	cmp		r2, #0x0
	bne		_0802f33c
	b		_0802f5b8
_0802f33c:
	ldr		r2, _0802f37c
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r3, #0xa8
	lsl		r3, r3, #0x3
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0xC]
	ldr		r5, _0802f380
	add		r0, r7, r5
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_0802f390
	cmp		r0, #0x3
	bgt		_0802f384
	cmp		r0, #0x0
	beq		_0802f38a
	b		_0802f39c

.incbin "base.gba", 0x2F362, 0x2

_0802f364:	.4byte 0x030031A0
_0802f368:	.4byte 0x0000057C
_0802f36c:	.4byte 0x00000848
_0802f370:	.4byte 0x00000BC8
_0802f374:	.4byte 0x00000554
_0802f378:	.4byte 0x000007FE
_0802f37c:	.4byte 0x0000053C
_0802f380:	.4byte 0x00000C08

_0802f384:
	cmp		r0, #0x5
	beq		_0802f396
	b		_0802f39c
_0802f38a:
	mov		r0, #0x0
	mov		r8, r0
	b		_0802f39c
_0802f390:
	mov		r1, #0x1
	add		r8, r1
	b		_0802f39c
_0802f396:
	mov		r2, #0x2
	neg		r2, r2
	add		r8, r2
_0802f39c:
	mov		r0, r8
	mov		r1, #0x30
	bl		sub_0807d80c
	mov		r1, #0x26
	sub		r1, r1, r0
	mov		r3, r9
	ldrh	r0, [r3, #0x18]
	strh	r1, [r3, #0x18]
	mov		r0, r8
	cmp		r0, #0x0
	bge		_0802f3b6
	add		r0, #0x1f
_0802f3b6:
	asr		r0, r0, #0x5
	add		r0, r0, r4
	cmp		r0, #0x1
	bgt		_0802f3c0
	b		_0802f5a0
_0802f3c0:
	ldr		r5, _0802f56c
	mov		r1, #0xa4
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r2, _0802f570
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x10]
	mov		r3, #0xa5
	lsl		r3, r3, #0x3
	add		r0, r5, r3
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x14]
	add		r1, #0xc
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x18]
	add		r2, r5, #0x0
	ldr		r3, _0802f574
	add		r0, r2, r3
	ldr		r3, [r0, #0x0]
	mov		r5, r10
	lsl		r0, r5, #0x10
	asr		r1, r0, #0x10
	str		r0, [sp, #0x28]
	cmp		r1, #0x0
	bge		_0802f3fc
	add		r1, #0xff
_0802f3fc:
	asr		r1, r1, #0x8
	mov		r0, #0xed
	sub		r0, r0, r1
	mov		r1, #0xff
	and		r0, r1
	sub		r4, #0x3
	mov		r5, #0x20
	ldrsh	r2, [r3, r5]
	and		r2, r1
	mov		r5, #0x22
	ldrsh	r1, [r3, r5]
	sub		r0, r0, r2
	sub		r1, r4, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r0, r2
	ldr		r0, _0802f578
	and		r1, r0
	str		r4, [sp, #0x24]
	ldr		r0, [sp, #0xC]
	cmp		r0, #0x0
	bne		_0802f448
	mov		r3, #0xa0
	lsl		r3, r3, #0x6
	str		r3, [sp, #0x18]
	cmp		r1, r2
	ble		_0802f448
	mov		r5, #0xb0
	lsl		r5, r5, #0x7
	str		r5, [sp, #0x18]
_0802f448:
	ldr		r0, [sp, #0xC]
	add		r0, #0x1
	str		r0, [sp, #0xC]
	ldr		r1, [sp, #0x10]
	add		r1, #0x1
	str		r1, [sp, #0x10]
	ldr		r0, _0802f57c
	mov		r2, r9
	lsl		r1, r2, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	ldr		r3, [sp, #0x10]
	cmp		r3, r0
	ble		_0802f47c
	mov		r5, #0x0
	str		r5, [sp, #0x10]
	mov		r0, #0x1
	add		r9, r0
	mov		r1, r9
	cmp		r1, #0x11
	bls		_0802f474
	mov		r9, r5
_0802f474:
	mov		r0, #0x1
	ldr		r2, [sp, #0x14]
	sub		r2, r0, r2
	str		r2, [sp, #0x14]
_0802f47c:
	ldr		r3, [sp, #0x14]
	cmp		r3, #0x0
	bne		_0802f540
	mov		r7, #0x0
	ldr		r5, [sp, #0x18]
	lsl		r5, r5, #0x10
	str		r5, [sp, #0x20]
	mov		r0, sp
	add		r0, #0x8
	str		r0, [sp, #0x1C]
	mov		r1, #0x0
	str		r1, [sp, #0x2C]
	mov		r10, r1
_0802f496:
	ldr		r3, [sp, #0x20]
	asr		r2, r3, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0802f4a2
	add		r0, #0x3f
_0802f4a2:
	asr		r3, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r4, _0802f580
	and		r0, r4
	lsl		r0, r0, #0x2
	ldr		r5, _0802f584
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, r10
	mul		r1, r0
	add		r0, r1, #0x0
	asr		r1, r0, #0xf
	ldr		r5, [sp, #0x28]
	asr		r0, r5, #0x10
	cmp		r0, #0x0
	bge		_0802f4c8
	add		r0, #0xff
_0802f4c8:
	asr		r0, r0, #0x8
	sub		r0, #0xed
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r6, _0802f588
	ldr		r5, [sp, #0x8]
	and		r5, r6
	orr		r5, r0
	str		r5, [sp, #0x8]
	add		r0, r3, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	ldr		r1, _0802f584
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	ldr		r0, [sp, #0x2C]
	mov		r1, #0x17
	bl		sub_0807d80c
	add		r1, r0, #0x0
	mul		r1, r4
	asr		r1, r1, #0xf
	ldr		r2, [sp, #0x24]
	add		r1, r1, r2
	lsl		r1, r1, #0x10
	ldr		r0, _0802f578
	and		r0, r5
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r3, [sp, #0x1C]
	ldrb	r1, [r3, #0x0]
	and		r0, r6
	orr		r0, r1
	str		r0, [sp, #0x8]
	ldr		r1, _0802f58c
	lsl		r0, r7, #0x2
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	beq		_0802f52c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r0, _0802f590
	str		r0, [sp, #0x4]
	ldr		r0, _0802f594
	add		r1, sp, #0x8
	add		r2, r3, #0x0
	bl		sub_0802951c
_0802f52c:
	ldr		r5, [sp, #0x2C]
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r5, r5, r0
	str		r5, [sp, #0x2C]
	mov		r1, #0x1e
	add		r10, r1
	add		r7, #0x1
	cmp		r7, #0x5
	bls		_0802f496
_0802f540:
	ldr		r2, _0802f56c
	mov		r3, #0xa4
	lsl		r3, r3, #0x3
	add		r0, r2, r3
	mov		r5, r9
	str		r5, [r0, #0x0]
	ldr		r1, _0802f570
	add		r0, r2, r1
	ldr		r2, [sp, #0x10]
	str		r2, [r0, #0x0]
	ldr		r3, _0802f56c
	mov		r5, #0xa5
	lsl		r5, r5, #0x3
	add		r0, r3, r5
	ldr		r1, [sp, #0x14]
	str		r1, [r0, #0x0]
	ldr		r2, _0802f598
	add		r0, r3, r2
	ldr		r3, [sp, #0x18]
	str		r3, [r0, #0x0]
	ldr		r7, _0802f59c
	b		_0802f5a4

_0802f56c:	.4byte 0x030031C4
_0802f570:	.4byte 0x00000524
_0802f574:	.4byte 0x00000814
_0802f578:	.4byte 0x0000FFFF
_0802f57c:	.4byte 0x08102eac
_0802f580:	.4byte 0x000003FF
_0802f584:	.4byte 0x08101068
_0802f588:	.4byte 0xffff0000
_0802f58c:	.4byte 0x08102e94
_0802f590:	.4byte 0x08102e8c
_0802f594:	.4byte 0x08102ef4
_0802f598:	.4byte 0x0000052C
_0802f59c:	.4byte 0x030031A0

_0802f5a0:
	mov		r5, #0x0
	str		r5, [sp, #0xC]
_0802f5a4:
	ldr		r1, _0802f618
	mov		r2, #0xa3
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	mov		r3, r8
	str		r3, [r0, #0x0]
	ldr		r5, _0802f61c
	add		r0, r1, r5
	ldr		r1, [sp, #0xC]
	str		r1, [r0, #0x0]
_0802f5b8:
	ldr		r2, _0802f620
	add		r0, r7, r2
	ldr		r6, [r0, #0x0]
	mov		r3, #0xac
	lsl		r3, r3, #0x3
	add		r0, r7, r3
	ldr		r5, [r0, #0x0]
	add		r6, #0x1
	cmp		r6, #0x5
	ble		_0802f5d6
	mov		r6, #0x0
	add		r5, #0x1
	cmp		r5, #0x7
	bls		_0802f5d6
	mov		r5, #0x0
_0802f5d6:
	ldr		r1, _0802f624
	lsl		r0, r5, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x42
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0802f628
	ldr		r2, _0802f620
	add		r1, r0, r2
	str		r6, [r1, #0x0]
	mov		r3, #0xac
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	str		r5, [r0, #0x0]
	add		sp, #0x30
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2F616, 0x2

_0802f618:	.4byte 0x030031C4
_0802f61c:	.4byte 0x0000051C
_0802f620:	.4byte 0x0000055C
_0802f624:	.4byte 0x08102e6c
_0802f628:	.4byte 0x030031A0
	thumb_func_end sub_0802f2cc

	thumb_func_start sub_0802f62c
sub_0802f62c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _0802f69c
	ldr		r0, _0802f6a0
	add		r4, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802f6a4
	and		r0, r1
	ldrh	r1, [r4, #0x0]
	mov		r3, #0x0
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x4
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldr		r1, _0802f6a8
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0802f6ac
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	b		_0802f6b6

.incbin "base.gba", 0x2F69A, 0x2

_0802f69c:	.4byte 0x030031A0
_0802f6a0:	.4byte 0x0000057C
_0802f6a4:	.4byte 0x0000FFF8
_0802f6a8:	.4byte 0x0000080D

_0802f6ac:
	ldrh	r0, [r4, #0x0]
	ldr		r1, _0802f728
	and		r1, r0
	ldrh	r0, [r4, #0x0]
	strh	r1, [r4, #0x0]
_0802f6b6:
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	ldr		r0, _0802f72c
	str		r0, [sp, #0x0]
	ldr		r0, _0802f730
	str		r0, [sp, #0x4]
	add		r0, #0xff
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0x8]
	strh	r0, [r4, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xa]
	strh	r0, [r4, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	lsl		r0, r5, #0x10
	asr		r5, r0, #0x10
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_0802f6ea
	add		r0, #0x7f
_0802f6ea:
	asr		r0, r0, #0x7
	ldrh	r1, [r4, #0x12]
	strh	r0, [r4, #0x12]
	ldrh	r0, [r4, #0x14]
	mov		r3, #0x6
	strh	r3, [r4, #0x14]
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_0802f6fe
	add		r0, #0x3f
_0802f6fe:
	asr		r0, r0, #0x6
	ldrh	r1, [r4, #0x16]
	strh	r0, [r4, #0x16]
	ldrh	r0, [r4, #0x18]
	strh	r3, [r4, #0x18]
	add		r0, r2, #0x0
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r8, r1
	ldr		r3, _0802f734
	add		r1, r0, r3
	ldr		r7, [r1, #0x0]
	mov		r6, #0xa8
	lsl		r6, r6, #0x3
	add		r0, r0, r6
	ldr		r6, [r0, #0x0]
	cmp		r7, #0x0
	beq		_0802f738
	cmp		r7, #0x1
	beq		_0802f774
	b		_0802f7b8

_0802f728:	.4byte 0x0000FDFF
_0802f72c:	.4byte 0x00008C07
_0802f730:	.4byte 0x00000E06
_0802f734:	.4byte 0x0000053C

_0802f738:
	ldrh	r0, [r4, #0x10]
	mov		r0, #0xb0
	lsl		r0, r0, #0x1
	strh	r0, [r4, #0x10]
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_0802f748
	add		r0, #0xff
_0802f748:
	asr		r0, r0, #0x8
	ldrh	r1, [r4, #0xe]
	strh	r0, [r4, #0xe]
	ldr		r1, _0802f770
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0802f76a
	add		r6, #0x1
	mov		r0, #0x96
	lsl		r0, r0, #0x1
	cmp		r6, r0
	ble		_0802f7b8
	mov		r6, #0x0
_0802f76a:
	mov		r7, #0x1
	b		_0802f7b8

.incbin "base.gba", 0x2F76E, 0x2

_0802f770:	.4byte 0x000007FE

_0802f774:
	mov		r1, #0xe1
	lsl		r1, r1, #0x5
	cmp		r6, r1
	bgt		_0802f79a
	lsl		r0, r6, #0x2
	add		r0, r0, r6
	lsl		r0, r0, #0x6
	neg		r0, r0
	bl		sub_0807d80c
	mov		r3, #0xb0
	lsl		r3, r3, #0x1
	add		r0, r0, r3
	ldrh	r1, [r4, #0x10]
	strh	r0, [r4, #0x10]
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_0802f7a8
	b		_0802f7a6
_0802f79a:
	ldrh	r0, [r4, #0x10]
	mov		r0, #0x20
	strh	r0, [r4, #0x10]
	add		r0, r5, #0x0
	cmp		r0, #0x0
	bge		_0802f7a8
_0802f7a6:
	add		r0, #0xff
_0802f7a8:
	asr		r0, r0, #0x8
	ldrh	r1, [r4, #0xe]
	strh	r0, [r4, #0xe]
	mov		r0, #0xe1
	lsl		r0, r0, #0x5
	cmp		r6, r0
	bgt		_0802f7b8
	add		r6, #0x1
_0802f7b8:
	mov		r0, #0xa3
	lsl		r0, r0, #0x3
	add		r0, r8
	str		r7, [r0, #0x0]
	ldr		r0, _0802f7d4
	add		r0, r8
	str		r6, [r0, #0x0]
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2F7D2, 0x2

_0802f7d4:	.4byte 0x0000051C
	thumb_func_end sub_0802f62c

	thumb_func_start sub_0802f7d8
sub_0802f7d8:
	push	{ r4, r5, lr }
	ldr		r5, _0802f818
	ldr		r4, _0802f81c
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r1, _0802f820
	add		r0, r5, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	mov		r2, #0xa8
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	ldr		r0, [r5, #0x24]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r5, #0x24]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x2F816, 0x2

_0802f818:	.4byte 0x030031A0
_0802f81c:	.4byte 0x080920c8
_0802f820:	.4byte 0x0000053C
	thumb_func_end sub_0802f7d8

	thumb_func_start sub_0802f824
sub_0802f824:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r9, r0
	ldr		r2, _0802f87c
	mov		r0, #0x24
	add		r0, r0, r2
	mov		r8, r0
	ldr		r1, _0802f880
	add		r6, r2, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0802f884
	and		r0, r1
	ldrh	r1, [r6, #0x0]
	strh	r0, [r6, #0x0]
	ldrh	r1, [r6, #0x0]
	mov		r3, #0xf0
	lsl		r3, r3, #0x4
	add		r0, r3, #0x0
	ldrh	r3, [r6, #0x0]
	orr		r0, r1
	strh	r0, [r6, #0x0]
	mov		r7, r8
	mov		r1, #0xaa
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	ldr		r5, [r0, #0x0]
	ldr		r3, _0802f888
	add		r2, r2, r3
	ldr		r4, [r2, #0x0]
	cmp		r5, #0x5
	bls		_0802f870
	b		_0802f9a4
_0802f870:
	lsl		r0, r5, #0x2
	ldr		r1, _0802f88c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x2F87A, 0x2

_0802f87c:	.4byte 0x030031A0
_0802f880:	.4byte 0x0000057C
_0802f884:	.4byte 0x0000FFF8
_0802f888:	.4byte 0x0000054C
_0802f88c:	.4byte 0x0802f890
_0802f890:	.4byte 0x0802f8a8

.incbin "base.gba", 0x2F894, 0x14
	thumb_func_end sub_0802f824


.incbin "base.gba", 0x2F8A8, 0xFC

_0802f9a4:

.incbin "base.gba", 0x2F9A4, 0x1A
_0802f9be:

.incbin "base.gba", 0x2F9BE, 0x1A
_0802f9d8:	.4byte 0x0000052C
_0802f9dc:	.4byte 0x00000524
_0802f9e0:	.4byte 0x08102f1c

_0802f9e4:

.incbin "base.gba", 0x2F9E4, 0x2
_0802f9e6:

.incbin "base.gba", 0x2F9E6, 0x2C
_0802fa12:

.incbin "base.gba", 0x2FA12, 0x18
_0802fa2a:

.incbin "base.gba", 0x2FA2A, 0x36
_0802fa60:

.incbin "base.gba", 0x2FA60, 0x42
_0802faa2:

.incbin "base.gba", 0x2FAA2, 0xE
_0802fab0:	.4byte 0x00002844
_0802fab4:	.4byte 0x00000524
_0802fab8:	.4byte 0x000001FF
_0802fabc:	.4byte 0x030031A0
_0802fac0:	.4byte 0x00000544
_0802fac4:	.4byte 0x08102efc
_0802fac8:	.4byte 0x0000053C

_0802facc:

.incbin "base.gba", 0x2FACC, 0x8
_0802fad4:	.4byte 0x080924d8

_0802fad8:

.incbin "base.gba", 0x2FAD8, 0x2
_0802fada:

.incbin "base.gba", 0x2FADA, 0x16
_0802faf0:	.4byte 0x080924c0

_0802faf4:

.incbin "base.gba", 0x2FAF4, 0x14
_0802fb08:

.incbin "base.gba", 0x2FB08, 0x14
_0802fb1c:	.4byte 0x080924a8

.incbin "base.gba", 0x2FB20, 0x2B8
_0802fdd8:	.4byte 0x0802fdf4

.incbin "base.gba", 0x2FDDC, 0xD70
	thumb_func_start sub_08030b4c
sub_08030b4c:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _08030bb8
	ldr		r0, _08030bbc
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08030bc0
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	mov		r4, #0x0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _08030bc4
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_08030bc8
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_08030bd2

.incbin "base.gba", 0x30BB6, 0x2

_08030bb8:	.4byte 0x030031A0
_08030bbc:	.4byte 0x0000057C
_08030bc0:	.4byte 0x0000FFF8
_08030bc4:	.4byte 0x0000080D

_08030bc8:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _08030c3c
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_08030bd2:
	ldr		r0, _08030c40
	str		r0, [sp, #0x0]
	ldr		r0, _08030c44
	str		r0, [sp, #0x4]
	ldr		r0, _08030c48
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0x8]
	strh	r0, [r3, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xc]
	strh	r0, [r3, #0xc]
	lsl		r0, r5, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08030c02
	add		r0, #0x3f
_08030c02:
	asr		r0, r0, #0x6
	sub		r0, #0x28
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r4, #0x46
	strh	r4, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08030c18
	add		r0, #0x7f
_08030c18:
	asr		r0, r0, #0x7
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	strh	r4, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_08030c2a
	add		r0, #0xff
_08030c2a:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	strh	r4, [r3, #0x18]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08030c3c:	.4byte 0x0000F7FF
_08030c40:	.4byte 0x00000F07
_08030c44:	.4byte 0x00000D07
_08030c48:	.4byte 0x00000C07
	thumb_func_end sub_08030b4c

	thumb_func_start sub_08030c4c
sub_08030c4c:
	push	{ lr }
	ldr		r0, _08030c6c
	ldr		r1, _08030c70
	bl		sub_08071b7c
	ldr		r0, _08030c74
	ldr		r1, _08030c78
	bl		sub_08071b7c
	ldr		r2, _08030c7c
	ldr		r0, [r2, #0x24]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r2, #0x24]
	pop		{ r0 }
	bx		r0

_08030c6c:	.4byte 0x080ddc68
_08030c70:	.4byte 0x06007000
_08030c74:	.4byte 0x080ddfdc
_08030c78:	.4byte 0x06007C80
_08030c7c:	.4byte 0x030031A0
	thumb_func_end sub_08030c4c

	thumb_func_start sub_08030c80
sub_08030c80:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _08030cec
	ldr		r0, _08030cf0
	add		r4, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08030cf4
	and		r0, r1
	ldrh	r1, [r4, #0x0]
	mov		r3, #0x0
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	ldr		r1, _08030cf8
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r0, #0x2
	beq		_08030cfc
	ldrh	r0, [r4, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x0]
	orr		r0, r3
	strh	r0, [r4, #0x0]
	b		_08030d06

_08030cec:	.4byte 0x030031A0
_08030cf0:	.4byte 0x0000057C
_08030cf4:	.4byte 0x0000FFF8
_08030cf8:	.4byte 0x0000080D

_08030cfc:
	ldrh	r0, [r4, #0x0]
	ldr		r1, _08030d84
	and		r1, r0
	ldrh	r0, [r4, #0x0]
	strh	r1, [r4, #0x0]
_08030d06:
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	ldr		r0, _08030d88
	str		r0, [sp, #0x0]
	ldr		r0, _08030d8c
	str		r0, [sp, #0x4]
	ldr		r0, _08030d90
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0x8]
	strh	r0, [r4, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xa]
	strh	r0, [r4, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	lsl		r0, r5, #0x10
	asr		r3, r0, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_08030d3a
	add		r0, #0x3f
_08030d3a:
	asr		r0, r0, #0x6
	sub		r0, #0x28
	ldrh	r1, [r4, #0xe]
	strh	r0, [r4, #0xe]
	ldrh	r0, [r4, #0x10]
	mov		r2, #0x26
	strh	r2, [r4, #0x10]
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_08030d50
	add		r0, #0x7f
_08030d50:
	asr		r0, r0, #0x7
	ldrh	r1, [r4, #0x12]
	strh	r0, [r4, #0x12]
	ldrh	r0, [r4, #0x14]
	strh	r2, [r4, #0x14]
	add		r0, r3, #0x0
	cmp		r0, #0x0
	bge		_08030d62
	add		r0, #0xff
_08030d62:
	asr		r0, r0, #0x8
	ldrh	r1, [r4, #0x16]
	strh	r0, [r4, #0x16]
	ldrh	r0, [r4, #0x18]
	strh	r2, [r4, #0x18]
	add		r5, r6, #0x0
	add		r5, #0x24
	ldr		r1, _08030d94
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08030d9c
	ldr		r2, _08030d98
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	b		_08030da4

.incbin "base.gba", 0x30D82, 0x2

_08030d84:	.4byte 0x0000F7FF
_08030d88:	.4byte 0x00000F07
_08030d8c:	.4byte 0x00000E07
_08030d90:	.4byte 0x00000D07
_08030d94:	.4byte 0x000007FB
_08030d98:	.4byte 0x00000838

_08030d9c:
	add		r0, r5, #0x0
	mov		r1, #0x0
	bl		sub_08044894
_08030da4:
	mov		r6, #0xa5
	lsl		r6, r6, #0x3
	add		r2, r5, r6
	ldr		r1, [r2, #0x0]
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	sub		r0, #0x7f
	cmp		r1, #0x0
	bne		_08030dc4
	cmp		r0, #0x1
	ble		_08030dc0
	mov		r1, #0x1
	str		r1, [r2, #0x0]
_08030dc0:
	cmp		r1, #0x0
	beq		_08030de2
_08030dc4:
	ldrh	r0, [r4, #0x12]
	add		r2, r0, #0x0
	ldr		r0, _08030dd8
	ldr		r0, [r0, #0x10]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08030ddc
	add		r1, r2, #0x1
	b		_08030dde

_08030dd8:	.4byte 0x030031A0

_08030ddc:
	sub		r1, r2, #0x1
_08030dde:
	ldrh	r0, [r4, #0x12]
	strh	r1, [r4, #0x12]
_08030de2:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30DEA, 0xE6

_08030ed0:	.4byte 0x08030ee4

.incbin "base.gba", 0x30ED4, 0x10
	thumb_func_end sub_08030c80


.incbin "base.gba", 0x30EE4, 0x3E4
	thumb_func_start sub_080312c8
sub_080312c8:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _08031334
	ldr		r0, _08031338
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0803133c
	and		r0, r1
	ldrh	r1, [r3, #0x0]
	mov		r4, #0x0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x4
	add		r1, r6, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	ldr		r0, _08031340
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_08031344
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_0803134e

.incbin "base.gba", 0x31332, 0x2

_08031334:	.4byte 0x030031A0
_08031338:	.4byte 0x0000057C
_0803133c:	.4byte 0x0000FFF8
_08031340:	.4byte 0x0000080D

_08031344:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _080313c0
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_0803134e:
	mov		r0, #0x0
	str		r0, [r3, #0x4]
	ldr		r0, _080313c4
	str		r0, [sp, #0x0]
	ldr		r0, _080313c8
	str		r0, [sp, #0x4]
	add		r0, #0xff
	str		r0, [sp, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0x8]
	strh	r0, [r3, #0x8]
	add		r0, sp, #0x4
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r3, #0xc]
	strh	r0, [r3, #0xc]
	lsl		r0, r5, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08031382
	add		r0, #0xff
_08031382:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r0, #0x20
	strh	r0, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08031396
	add		r0, #0x7f
_08031396:
	asr		r0, r0, #0x7
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	ldr		r0, _080313cc
	strh	r0, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_080313aa
	add		r0, #0x3f
_080313aa:
	asr		r0, r0, #0x6
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	mov		r0, #0x6
	strh	r0, [r3, #0x18]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x313BE, 0x2

_080313c0:	.4byte 0x0000FDFF
_080313c4:	.4byte 0x00008C07
_080313c8:	.4byte 0x00000E06
_080313cc:	.4byte 0x0000FFA8

.incbin "base.gba", 0x313D0, 0x10
	thumb_func_end sub_080312c8

	thumb_func_start sub_080313e0
sub_080313e0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	ldr		r0, _08031440
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r9, r1
	ldr		r2, _08031444
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	ldrh	r5, [r0, #0x20]
	ldrh	r6, [r0, #0x22]
	mov		r2, #0x0
	ldrh	r7, [r0, #0x24]
	cmp		r4, r0
	bne		_080314fe
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080314fe
	add		r1, r4, #0x0
	add		r1, #0x5a
	ldrh	r3, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r3
	mov		r8, r1
	cmp		r0, #0x0
	beq		_080314fe
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r3
	cmp		r0, #0x0
	beq		_080314c6
	add		r0, r4, #0x0
	add		r0, #0x5c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_08031458
	cmp		r0, #0x1
	bgt		_08031448
	cmp		r0, #0x0
	beq		_08031452
	b		_08031478

.incbin "base.gba", 0x3143E, 0x2

_08031440:	.4byte 0x030031A0
_08031444:	.4byte 0x00000838

_08031448:
	cmp		r0, #0x2
	beq		_08031462
	cmp		r0, #0x3
	beq		_0803146c
	b		_08031478
_08031452:
	add		r0, r4, #0x0
	add		r0, #0x50
	b		_08031470
_08031458:
	add		r0, r4, #0x0
	add		r0, #0x50
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	b		_08031476
_08031462:
	add		r0, r4, #0x0
	add		r0, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	b		_08031476
_0803146c:
	add		r0, r4, #0x0
	add		r0, #0x4e
_08031470:
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	mvn		r0, r0
_08031476:
	lsr		r2, r0, #0x1f
_08031478:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bge		_08031486
	mov		r0, #0x1
	eor		r2, r0
_08031486:
	cmp		r2, #0x0
	beq		_080314a4
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r7, #0x10
	mov		r5, #0x80
	lsl		r5, r5, #0x9
	add		r2, r2, r5
	asr		r2, r2, #0x10
	lsr		r3, r3, #0x1f
	bl		sub_08054f68
	b		_080314bc
_080314a4:
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r7, #0x10
	mov		r5, #0x80
	lsl		r5, r5, #0x9
	add		r2, r2, r5
	asr		r2, r2, #0x10
	lsr		r3, r3, #0x1f
	bl		sub_08054fcc
_080314bc:
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0803ce18
	b		_080314f8
_080314c6:
	sub		r0, r3, #0x4
	ldr		r2, _0803150c
	add		r1, r2, #0x0
	and		r0, r1
	mov		r3, r8
	strh	r0, [r3, #0x0]
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r7, #0x10
	mov		r5, #0x80
	lsl		r5, r5, #0x9
	add		r2, r2, r5
	asr		r2, r2, #0x10
	add		r3, r4, #0x0
	add		r3, #0xbc
	ldr		r3, [r3, #0x0]
	lsr		r3, r3, #0x1f
	bl		sub_08054f04
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0803cddc
_080314f8:
	mov		r0, #0x0
	mov		r1, r8
	strh	r0, [r1, #0x0]
_080314fe:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3150A, 0x2

_0803150c:	.4byte 0x00003FFF
	thumb_func_end sub_080313e0

	thumb_func_start sub_08031510
sub_08031510:
	add		r3, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x7
	bhi		_0803158e
	lsl		r0, r0, #0x2
	ldr		r1, _08031524
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08031524:	.4byte 0x08031528
_08031528:	.4byte 0x0803158e

.incbin "base.gba", 0x3152C, 0x1C
	thumb_func_end sub_08031510


.incbin "base.gba", 0x31548, 0x46

_0803158e:

.incbin "base.gba", 0x3158E, 0x6
	thumb_func_start sub_08031594
sub_08031594:
	add		r2, r0, #0x0
	mov		r1, #0xce
	lsl		r1, r1, #0x1
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080315b8
	ldr		r1, _080315b4
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	b		_080315ea

.incbin "base.gba", 0x315B2, 0x2

_080315b4:	.4byte 0x08107308

_080315b8:
	cmp		r0, #0x1
	bne		_080315d4
	ldr		r1, _080315d0
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x11
	b		_080315e6

_080315d0:	.4byte 0x08107308

_080315d4:
	ldr		r1, _080315fc
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x12
_080315e6:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
_080315ea:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bne		_08031600
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	b		_08031612

_080315fc:	.4byte 0x08107308

_08031600:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x7
	cmp		r0, #0x0
	bge		_08031610
	add		r0, #0xff
_08031610:
	asr		r0, r0, #0x8
_08031612:
	bx		lr
	thumb_func_end sub_08031594

	thumb_func_start sub_08031614
sub_08031614:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r1, r4, #0x0
	add		r1, #0x6a
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08031680
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08031642
	add		r0, r4, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r2, r3, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	b		_08031680
_08031642:
	add		r5, r4, #0x0
	add		r5, #0xb4
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	strh	r0, [r5, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08031734
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r0, #0xc
	strb	r1, [r0, #0x0]
	ldr		r0, _08031738
	ldr		r1, _0803173c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08031678
	mov		r0, #0x10
	bl		sub_0804bdb0
_08031678:
	ldrh	r1, [r5, #0x0]
	ldr		r0, _08031740
	and		r0, r1
	strh	r0, [r5, #0x0]
_08031680:
	add		r0, r4, #0x0
	add		r0, #0xac
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_080316a8
	add		r0, #0xa
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0xff
	bgt		_080316a4
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_080316a8
_080316a4:
	mov		r0, #0x0
	strh	r0, [r6, #0x0]
_080316a8:
	add		r1, r4, #0x0
	add		r1, #0x66
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_080316d2
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_080316d2
	ldr		r0, _08031738
	ldr		r1, _0803173c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_080316d2
	mov		r0, #0x8
	bl		sub_0804bdb0
_080316d2:
	add		r0, r4, #0x0
	add		r0, #0x68
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	ble		_08031710
	sub		r0, r2, #0x1
	strh	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_08031710
	add		r0, r4, #0x0
	mov		r1, #0x4
	bl		sub_08036c1c
	ldr		r0, _08031738
	ldr		r1, _0803173c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08031710
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08031710
	mov		r0, #0x85
	bl		sub_0807073c
_08031710:
	add		r1, r5, #0x0
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x0
	bge		_0803171e
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_0803171e:
	mov		r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp		r0, #0x0
	beq		_08031748
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08031744
	add		r3, r1, #0x0
	and		r3, r0
	b		_08031754

_08031734:	.4byte 0x00007FFF
_08031738:	.4byte 0x030031A0
_0803173c:	.4byte 0x00000838
_08031740:	.4byte 0x0000FFFC
_08031744:	.4byte 0x0000FFEF

_08031748:
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x10
	add		r3, r1, #0x0
	orr		r3, r0
_08031754:
	strh	r3, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x8
	bne		_0803176a
	mov		r0, #0x20
	add		r1, r3, #0x0
	orr		r1, r0
	b		_08031770
_0803176a:
	ldr		r0, _08031780
	add		r1, r3, #0x0
	and		r1, r0
_08031770:
	strh	r1, [r2, #0x0]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0xa
	bne		_08031788
	ldr		r0, _08031784
	and		r0, r1
	b		_0803178c

.incbin "base.gba", 0x3177E, 0x2

_08031780:	.4byte 0x0000FFDF
_08031784:	.4byte 0x0000FFBF

_08031788:
	mov		r0, #0x40
	orr		r0, r1
_0803178c:
	strh	r0, [r2, #0x0]
	add		r2, r6, #0x0
	ldrh	r5, [r2, #0x0]
	mov		r0, #0x0
	ldrsh	r3, [r2, r0]
	cmp		r3, #0x0
	beq		_080317b8
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080317b8
	cmp		r3, #0x9
	ble		_080317b4
	add		r0, r5, #0x0
	sub		r0, #0xa
	strh	r0, [r2, #0x0]
	b		_080317b8
_080317b4:
	mov		r0, #0x0
	strh	r0, [r6, #0x0]
_080317b8:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x317BE, 0x2
	thumb_func_end sub_08031614

	thumb_func_start sub_080317c0
sub_080317c0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r1, _080317fc
	add		r1, #0x24
	bl		sub_080356ac
	ldr		r1, _08031800
	and		r1, r0
	add		r5, r4, #0x0
	add		r5, #0xca
	strh	r1, [r5, #0x0]
	add		r0, r4, #0x0
	bl		sub_08035570
	add		r1, r4, #0x0
	add		r1, #0x7c
	ldrh	r0, [r5, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	ldr		r0, _08031804
	cmp		r1, r0
	ble		_08031808
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	b		_08031822

.incbin "base.gba", 0x317FA, 0x2

_080317fc:	.4byte 0x030031A0
_08031800:	.4byte 0xFFFFFF00
_08031804:	.4byte 0x000005FF

_08031808:
	ldr		r0, _08031818
	cmp		r1, r0
	bge		_0803181c
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	b		_08031822

_08031818:	.4byte 0xFFFFFA00

_0803181c:
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x0
_08031822:
	strh	r0, [r1, #0x0]
	add		r2, r1, #0x0
	ldrh	r3, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _0803183c
	cmp		r1, r0
	bgt		_08031840
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_08031844

.incbin "base.gba", 0x3183A, 0x2

_0803183c:	.4byte 0x01FFFFFF

_08031840:
	mov		r0, #0x80
	lsl		r0, r0, #0x7
_08031844:
	orr		r0, r3
	strh	r0, [r2, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3184E, 0x2
	thumb_func_end sub_080317c0

	thumb_func_start sub_08031850
sub_08031850:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	mov		r0, #0xbd
	lsl		r0, r0, #0x1
	add		r6, r4, r0
	ldrh	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_08031862
	b		_08031ab6
_08031862:
	cmp		r0, #0x1
	bne		_08031868
	b		_08031ab6
_08031868:
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	bne		_08031878
	b		_08031ab6
_08031878:
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08031886
	b		_08031ab6
_08031886:
	mov		r2, #0xbe
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08031894
	b		_08031ab6
_08031894:
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	and		r1, r0
	cmp		r1, #0x0
	beq		_080318a0
	b		_08031ab6
_080318a0:
	ldr		r5, _080318f8
	ldr		r1, _080318fc
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_080318b0
	bl		sub_08046d7c
_080318b0:
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	bl		sub_08049164
	add		r2, r0, #0x0
	str		r4, [r2, #0x54]
	ldrh	r1, [r6, #0x0]
	ldr		r0, _08031900
	cmp		r1, r0
	bne		_080318c8
	b		_08031a60
_080318c8:
	cmp		r1, r0
	bgt		_08031954
	sub		r0, #0x7
	cmp		r1, r0
	bne		_080318d4
	b		_08031a14
_080318d4:
	cmp		r1, r0
	bgt		_08031918
	sub		r0, #0x3
	cmp		r1, r0
	bne		_080318e0
	b		_080319dc
_080318e0:
	cmp		r1, r0
	bgt		_08031904
	sub		r0, #0x2
	cmp		r1, r0
	bne		_080318ec
	b		_080319d4
_080318ec:
	add		r0, #0x1
	cmp		r1, r0
	bne		_080318f4
	b		_080319e4
_080318f4:
	b		_08031aa8

.incbin "base.gba", 0x318F6, 0x2

_080318f8:	.4byte 0x030031A0
_080318fc:	.4byte 0x00000838
_08031900:	.4byte 0x0000100C

_08031904:
	ldr		r0, _08031914
	cmp		r1, r0
	beq		_080319ec
	add		r0, #0x1
	cmp		r1, r0
	bne		_08031912
	b		_08031a0c
_08031912:
	b		_08031aa8

_08031914:	.4byte 0x00001003

_08031918:
	ldr		r0, _08031930
	cmp		r1, r0
	bne		_08031920
	b		_08031a4c
_08031920:
	cmp		r1, r0
	bgt		_08031934
	sub		r0, #0x2
	cmp		r1, r0
	bne		_0803192c
	b		_08031a1c
_0803192c:
	add		r0, #0x1
	b		_080319bc

_08031930:	.4byte 0x00001008

_08031934:
	ldr		r0, _0803194c
	cmp		r1, r0
	bne		_0803193c
	b		_08031a80
_0803193c:
	cmp		r1, r0
	ble		_08031942
	b		_08031aa0
_08031942:
	add		r0, r2, #0x0
	bl		sub_08041cac
	ldr		r1, _08031950
	b		_08031a54

_0803194c:	.4byte 0x0000100A
_08031950:	.4byte 0x0000100E

_08031954:
	ldr		r0, _08031978
	cmp		r1, r0
	beq		_080319ec
	cmp		r1, r0
	bgt		_08031994
	sub		r0, #0x3
	cmp		r1, r0
	beq		_080319d4
	cmp		r1, r0
	bgt		_08031980
	ldr		r0, _0803197c
	cmp		r1, r0
	beq		_08031a34
	add		r0, #0x1
	cmp		r1, r0
	beq		_08031a3c
	b		_08031aa8

.incbin "base.gba", 0x31976, 0x2

_08031978:	.4byte 0x00002003
_0803197c:	.4byte 0x0000100E

_08031980:
	ldr		r0, _08031990
	cmp		r1, r0
	beq		_080319e4
	add		r0, #0x1
	cmp		r1, r0
	beq		_080319dc
	b		_08031aa8

.incbin "base.gba", 0x3198E, 0x2

_08031990:	.4byte 0x00002001

_08031994:
	ldr		r0, _080319ac
	cmp		r1, r0
	beq		_08031a1c
	cmp		r1, r0
	bgt		_080319b0
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08031a0c
	add		r0, #0x1
	cmp		r1, r0
	beq		_08031a14
	b		_08031aa8

_080319ac:	.4byte 0x00002006

_080319b0:
	ldr		r0, _080319c4
	cmp		r1, r0
	beq		_08031a80
	cmp		r1, r0
	bgt		_080319c8
	sub		r0, #0x3
_080319bc:
	cmp		r1, r0
	beq		_08031a24
	b		_08031aa8

.incbin "base.gba", 0x319C2, 0x2

_080319c4:	.4byte 0x0000200A

_080319c8:
	ldr		r0, _080319d0
	cmp		r1, r0
	beq		_08031a60
	b		_08031aa8

_080319d0:	.4byte 0x0000200C

_080319d4:
	add		r0, r2, #0x0
	bl		sub_08040d5c
	b		_08031a2a
_080319dc:
	add		r0, r2, #0x0
	bl		sub_08040ec0
	b		_08031a2a
_080319e4:
	add		r0, r2, #0x0
	bl		sub_08040df0
	b		_08031a2a
_080319ec:
	add		r0, r2, #0x0
	bl		sub_08040f54
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	ldr		r1, _08031a08
	add		r1, #0x24
	add		r0, r4, #0x0
	bl		sub_0803cd04
	b		_08031ab6

.incbin "base.gba", 0x31A06, 0x2

_08031a08:	.4byte 0x030031A0

_08031a0c:
	add		r0, r2, #0x0
	bl		sub_08041024
	b		_08031a2a
_08031a14:
	add		r0, r2, #0x0
	bl		sub_08041a84
	b		_08031a2a
_08031a1c:
	add		r0, r2, #0x0
	bl		sub_08041b28
	b		_08031a2a
_08031a24:
	add		r0, r2, #0x0
	bl		sub_08041c88
_08031a2a:
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	b		_08031ab6
_08031a34:
	add		r0, r2, #0x0
	bl		sub_08041cd4
	b		_08031ab6
_08031a3c:
	add		r0, r2, #0x0
	bl		sub_08041d64
	ldr		r1, _08031a48
	b		_08031a54

.incbin "base.gba", 0x31A46, 0x2

_08031a48:	.4byte 0x00001007

_08031a4c:
	add		r0, r2, #0x0
	bl		sub_08041d34
	ldr		r1, _08031a5c
_08031a54:
	add		r0, r4, #0x0
	bl		sub_080373dc
	b		_08031ab6

_08031a5c:	.4byte 0x0000100F

_08031a60:
	add		r0, r2, #0x0
	bl		sub_08041d94
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	ldr		r1, _08031a7c
	add		r1, #0x24
	add		r0, r4, #0x0
	bl		sub_0803cd6c
	b		_08031ab6

.incbin "base.gba", 0x31A7A, 0x2

_08031a7c:	.4byte 0x030031A0

_08031a80:
	add		r0, r2, #0x0
	bl		sub_08041fd0
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	ldr		r1, _08031a9c
	add		r1, #0x24
	add		r0, r4, #0x0
	bl		sub_0803cd38
	b		_08031ab6

.incbin "base.gba", 0x31A9A, 0x2

_08031a9c:	.4byte 0x030031A0

_08031aa0:
	add		r0, r2, #0x0
	bl		sub_08042088
	b		_08031ab6
_08031aa8:
	add		r0, r2, #0x0
	bl		sub_08041a84
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
_08031ab6:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08031850

	thumb_func_start sub_08031abc
sub_08031abc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r1, r7, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x40
	ble		_08031ad8
	mov		r0, #0x40
_08031ad8:
	ldrh	r1, [r1, #0x0]
	cmp		r1, #0x4
	bhi		_08031ae2
	lsl		r2, r0, #0xf
	b		_08031b12
_08031ae2:
	cmp		r1, #0x14
	bhi		_08031af4
	lsl		r0, r0, #0x11
	ldr		r1, _08031af0
	add		r2, r0, r1
	b		_08031b12

.incbin "base.gba", 0x31AEE, 0x2

_08031af0:	.4byte 0xFFF60000

_08031af4:
	cmp		r1, #0x24
	bhi		_08031b02
	lsl		r0, r0, #0x10
	mov		r1, #0x90
	lsl		r1, r1, #0xd
	add		r2, r0, r1
	b		_08031b12
_08031b02:
	cmp		r1, #0x40
	bhi		_08031b10
	lsl		r0, r0, #0xf
	mov		r1, #0x88
	lsl		r1, r1, #0xe
	add		r2, r0, r1
	b		_08031b12
_08031b10:
	mov		r2, #0x0
_08031b12:
	add		r1, r7, #0x0
	add		r1, #0xa8
	add		r0, r7, #0x0
	add		r0, #0x8c
	ldr		r0, [r0, #0x0]
	add		r0, r0, r2
	str		r0, [r1, #0x0]
	ldr		r1, [r7, #0x48]
	cmp		r1, #0x0
	bne		_08031b28
	b		_08031cd6
_08031b28:
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08031b34
	b		_08031cd6
_08031b34:
	mov		r2, #0x20
	and		r1, r2
	cmp		r1, #0x0
	beq		_08031b3e
	b		_08031ca0
_08031b3e:
	add		r1, r7, #0x0
	add		r1, #0x96
	strh	r4, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r4
	mov		r9, r1
	cmp		r0, #0x0
	beq		_08031c06
	ldr		r0, _08031b80
	add		r4, r0, #0x0
	add		r4, #0x24
	ldr		r1, _08031b84
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	ldr		r0, [r1, #0x48]
	and		r0, r2
	cmp		r0, #0x0
	bne		_08031c06
	cmp		r7, r1
	bne		_08031b8c
	ldr		r2, _08031b88
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
	b		_08031c06

_08031b80:	.4byte 0x030031A0
_08031b84:	.4byte 0x00000838
_08031b88:	.4byte 0x08107784

_08031b8c:
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_08045bf4
	add		r5, r0, #0x0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_080466c4
	add		r6, r0, #0x0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	ldr		r2, _08031c2c
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r4, [r0, #0x0]
	lsl		r5, r5, #0x10
	asr		r5, r5, #0x10
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r0, _08031c30
	mov		r8, r0
	ldr		r0, _08031c34
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_0807169c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r5, #0x0
	bl		sub_08071704
_08031c06:
	mov		r0, r9
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_08031c1c
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08031c38
_08031c1c:
	add		r1, r7, #0x0
	add		r1, #0xb0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	sub		r1, #0x5c
	mov		r0, #0x7
	strb	r0, [r1, #0x0]
	b		_08031c8e

_08031c2c:	.4byte 0x08107784
_08031c30:	.4byte 0x08124544
_08031c34:	.4byte 0x081245c8

_08031c38:
	add		r0, r7, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0x0
	beq		_08031c58
	add		r0, r7, #0x0
	add		r0, #0xb0
	mov		r1, #0x1
	strb	r1, [r0, #0x0]
	sub		r0, #0x5c
	strb	r1, [r0, #0x0]
	b		_08031c8e
_08031c58:
	add		r0, r7, #0x0
	add		r0, #0xb0
	strb	r3, [r0, #0x0]
	sub		r0, #0x64
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7
	and		r1, r0
	ldr		r2, _08031c98
	add		r0, r7, #0x0
	add		r0, #0x86
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, _08031c9c
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	add		r2, r2, r0
	add		r1, r7, #0x0
	add		r1, #0x54
	strb	r2, [r1, #0x0]
	mov		r0, #0x80
	and		r2, r0
	cmp		r2, #0x0
	beq		_08031c8e
	strb	r3, [r1, #0x0]
_08031c8e:
	add		r0, r7, #0x0
	bl		sub_08031850
	b		_08031cc4

.incbin "base.gba", 0x31C96, 0x2

_08031c98:	.4byte 0x08106df4
_08031c9c:	.4byte 0x08106e34

_08031ca0:
	add		r0, r7, #0x0
	bl		sub_080317c0
	add		r3, r7, #0x0
	add		r3, #0x96
	mov		r0, #0x40
	and		r0, r4
	ldrh	r1, [r3, #0x0]
	orr		r0, r1
	mov		r2, #0x0
	strh	r0, [r3, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xb0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x54
	strb	r2, [r0, #0x0]
_08031cc4:
	add		r0, r7, #0x0
	bl		sub_08032918
	add		r0, r7, #0x0
	bl		sub_080325e0
	add		r0, r7, #0x0
	bl		sub_08031d7c
_08031cd6:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31CE2, 0x2
	thumb_func_end sub_08031abc

	thumb_func_start sub_08031ce4
sub_08031ce4:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r2, r3, #0x0
	add		r2, #0xbc
	add		r0, #0xc0
	ldr		r1, [r2, #0x0]
	ldr		r0, [r0, #0x0]
	add		r1, r1, r0
	str		r1, [r2, #0x0]
	mov		r0, #0xfc
	lsl		r0, r0, #0x13
	cmp		r1, r0
	ble		_08031d00
	str		r0, [r2, #0x0]
_08031d00:
	mov		r0, #0x7a
	add		r0, r0, r3
	mov		r12, r0
	ldr		r4, _08031d70
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bge		_08031d12
	add		r0, #0x3f
_08031d12:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r1, [r0, #0x0]
	mov		r5, #0x2
	ldrsh	r0, [r2, r5]
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08031d2a
	ldr		r1, _08031d74
	add		r0, r0, r1
_08031d2a:
	asr		r0, r0, #0xf
	add		r1, r3, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r5, r12
	mov		r0, #0x0
	ldrsh	r1, [r5, r0]
	cmp		r1, #0x0
	bge		_08031d3e
	add		r1, #0x3f
_08031d3e:
	asr		r1, r1, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08031d78
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	mov		r4, #0x2
	ldrsh	r1, [r2, r4]
	neg		r0, r0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_08031d60
	ldr		r5, _08031d74
	add		r1, r1, r5
_08031d60:
	asr		r1, r1, #0xf
	add		r0, r3, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D6E, 0x2

_08031d70:	.4byte 0x08101068
_08031d74:	.4byte 0x00007FFF
_08031d78:	.4byte 0x000003FF
	thumb_func_end sub_08031ce4

	thumb_func_start sub_08031d7c
sub_08031d7c:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08031dd0
	add		r2, r3, #0x0
	add		r2, #0xbc
	ldr		r1, [r2, #0x0]
	ldr		r0, _08031da0
	cmp		r1, r0
	ble		_08031da8
	add		r0, r3, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	ldr		r2, _08031da4
	b		_08031db8

_08031da0:	.4byte 0x001FFFFF
_08031da4:	.4byte 0xFFF00000

_08031da8:
	ldr		r0, _08031dc0
	cmp		r1, r0
	bgt		_08031dc4
	add		r0, r3, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0xd
_08031db8:
	orr		r1, r2
	str		r1, [r0, #0x0]
	b		_0803211c

.incbin "base.gba", 0x31DBE, 0x2

_08031dc0:	.4byte 0xFFE00000

_08031dc4:
	add		r1, r3, #0x0
	add		r1, #0xc0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	b		_0803211c
_08031dd0:
	add		r0, r3, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r7, r0, #0x0
	cmp		r1, #0xb
	bhi		_08031ea6
	lsl		r0, r1, #0x2
	ldr		r1, _08031de8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x31DE6, 0x2

_08031de8:	.4byte 0x08031dec
_08031dec:	.4byte 0x08031e1c

.incbin "base.gba", 0x31DF0, 0x2C
	thumb_func_end sub_08031d7c


.incbin "base.gba", 0x31E1C, 0x8A

_08031ea6:

.incbin "base.gba", 0x31EA6, 0x18
_08031ebe:

.incbin "base.gba", 0x31EBE, 0x8
_08031ec6:

.incbin "base.gba", 0x31EC6, 0xA
_08031ed0:	.4byte 0x08031ed4
_08031ed4:	.4byte 0x08031f08

.incbin "base.gba", 0x31ED8, 0x1D0

_080320a8:

.incbin "base.gba", 0x320A8, 0x8
_080320b0:

.incbin "base.gba", 0x320B0, 0x4
_080320b4:

.incbin "base.gba", 0x320B4, 0x58

_0803210c:

.incbin "base.gba", 0x3210C, 0xA
_08032116:

.incbin "base.gba", 0x32116, 0x6
_0803211c:

.incbin "base.gba", 0x3211C, 0xF4
_08032210:	.4byte 0x08032250

.incbin "base.gba", 0x32214, 0x292

_080324a6:

.incbin "base.gba", 0x324A6, 0x8
_080324ae:

.incbin "base.gba", 0x324AE, 0x3E
	thumb_func_start sub_080324ec
sub_080324ec:
	mov		r12, r0
	mov		r2, r12
	add		r2, #0xbc
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	bge		_080324fa
	neg		r1, r1
_080324fa:
	ldr		r0, _08032528
	cmp		r1, r0
	bgt		_08032514
	mov		r0, r12
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	beq		_0803252c
_08032514:
	mov		r0, r12
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bge		_08032522
	add		r0, #0x7
_08032522:
	lsl		r0, r0, #0xd
	lsr		r1, r0, #0x10
	b		_08032596

_08032528:	.4byte 0x006FFFFF

_0803252c:
	mov		r0, r12
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x4
	beq		_08032548
	mov		r0, r12
	add		r0, #0x88
	strh	r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_08032544
	neg		r0, r0
_08032544:
	asr		r2, r0, #0x14
	b		_0803254a
_08032548:
	mov		r2, #0x8
_0803254a:
	mov		r1, r12
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_08032594
	mov		r0, r12
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803257c
	ldr		r0, _08032578
	lsl		r1, r2, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	b		_08032596

_08032578:	.4byte 0x08107328

_0803257c:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08032594
	ldr		r1, _08032590
	lsl		r0, r2, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	b		_08032596

_08032590:	.4byte 0x08107328

_08032594:
	mov		r1, #0x0
_08032596:
	mov		r0, r12
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_080325a6
	lsl		r0, r1, #0x10
	neg		r0, r0
	lsr		r1, r0, #0x10
_080325a6:
	mov		r3, r12
	add		r3, #0x7c
	ldrh	r0, [r3, #0x0]
	add		r2, r0, r1
	strh	r2, [r3, #0x0]
	mov		r1, r12
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_080325dc
	mov		r0, r12
	add		r0, #0x80
	ldrh	r0, [r0, #0x0]
	add		r0, r2, r0
	mov		r2, r12
	add		r2, #0x7a
	strh	r0, [r2, #0x0]
	mov		r1, r12
	add		r1, #0x82
	ldrh	r0, [r3, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	mov		r1, r12
	add		r1, #0x56
	strh	r0, [r1, #0x0]
_080325dc:
	bx		lr

.incbin "base.gba", 0x325DE, 0x2
	thumb_func_end sub_080324ec

	thumb_func_start sub_080325e0
sub_080325e0:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_080325f8
	add		r1, r2, #0x0
	add		r1, #0x88
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_080326d2
_080325f8:
	add		r0, r2, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x3
	and		r0, r1
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	cmp		r0, r4
	beq		_080326d2
	add		r0, r2, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	mov		r1, #0x9a
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	add		r3, r2, r0
	add		r0, r2, #0x0
	add		r0, #0x7e
	ldrb	r1, [r0, #0x0]
	sub		r0, r1, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x3
	bls		_080326d2
	cmp		r1, #0xd
	beq		_080326d2
	add		r0, r2, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803266e
	add		r0, r2, #0x0
	add		r0, #0x88
	ldrh	r2, [r0, #0x0]
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	add		r4, r0, #0x0
	cmp		r1, #0x0
	bgt		_08032666
	mov		r5, #0x0
	ldrsh	r0, [r4, r5]
	neg		r0, r0
	mov		r6, #0x0
	ldrsh	r1, [r3, r6]
	cmp		r0, r1
	blt		_08032662
	ldrh	r0, [r3, #0x0]
	neg		r0, r0
	b		_0803266a
_08032662:
	ldrh	r0, [r3, #0x4]
	b		_08032668
_08032666:
	ldrh	r0, [r3, #0x2]
_08032668:
	sub		r0, r2, r0
_0803266a:
	strh	r0, [r4, #0x0]
	b		_080326d2
_0803266e:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_080326a8
	add		r1, r2, #0x0
	add		r1, #0x88
	ldrh	r5, [r1, #0x0]
	mov		r0, #0x0
	ldrsh	r2, [r1, r0]
	add		r4, r1, #0x0
	cmp		r2, #0x0
	blt		_080326a0
	ldrh	r1, [r3, #0x0]
	mov		r6, #0x0
	ldrsh	r0, [r3, r6]
	cmp		r2, r0
	blt		_0803269a
	add		r0, r1, #0x0
	b		_0803266a
_0803269a:
	ldrh	r3, [r3, #0x4]
	add		r0, r5, r3
	b		_0803266a
_080326a0:
	ldrh	r0, [r3, #0x2]
	add		r0, r5, r0
	strh	r0, [r1, #0x0]
	b		_080326d2
_080326a8:
	add		r1, r2, #0x0
	add		r1, #0x88
	ldrh	r2, [r1, #0x0]
	mov		r5, #0x0
	ldrsh	r0, [r1, r5]
	cmp		r0, #0x0
	bge		_080326c4
	ldrh	r0, [r3, #0x6]
	add		r0, r2, r0
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_080326d2
	b		_080326d0
_080326c4:
	ldrh	r0, [r3, #0x6]
	sub		r0, r2, r0
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080326d2
_080326d0:
	strh	r4, [r1, #0x0]
_080326d2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080325e0

	thumb_func_start sub_080326d8
sub_080326d8:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r2, r4, #0x0
	add		r2, #0xb8
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, #0x0
	bne		_080326ec
	b		_08032900
_080326ec:
	sub		r0, r1, #0x1
	strh	r0, [r2, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3b
	bne		_08032710
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r3, _0803279c
	add		r0, r3, #0x0
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	ldr		r1, _080327a0
	cmp		r0, r1
	bls		_08032710
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
_08032710:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	mov		r0, #0xa0
	lsl		r0, r0, #0x12
	add		r2, r4, #0x0
	add		r2, #0xb8
	cmp		r1, r0
	bgt		_08032726
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
_08032726:
	ldr		r3, [r4, #0x48]
	mov		r0, #0x20
	and		r3, r0
	cmp		r3, #0x0
	bne		_080327b8
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r0, [r0, #0x0]
	mov		r1, #0x86
	lsl		r1, r1, #0x7
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r1, r0
	bne		_080327b8
	ldr		r0, _080327a4
	strh	r3, [r2, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x7e
	mov		r1, #0xe
	strb	r1, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x82
	strh	r3, [r1, #0x0]
	ldr		r1, _080327a8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0803284c
	mov		r2, #0x20
	ldrsh	r0, [r4, r2]
	mov		r3, #0x22
	ldrsh	r1, [r4, r3]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x5
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_08055fac
	ldr		r0, _080327ac
	ldrh	r0, [r0, #0x0]
	ldr		r2, _080327b0
	ldr		r1, _080327b4
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	mov		r0, #0xa5
	bl		sub_0807073c
	b		_0803284c

.incbin "base.gba", 0x3279A, 0x2

_0803279c:	.4byte 0x000012FF
_080327a0:	.4byte 0x25FE0000
_080327a4:	.4byte 0x030031A0
_080327a8:	.4byte 0x00000838
_080327ac:	.4byte 0x0810777c
_080327b0:	.4byte 0x08124544
_080327b4:	.4byte 0x081245c8

_080327b8:
	mov		r0, #0x0
	ldrsh	r5, [r2, r0]
	cmp		r5, #0x0
	beq		_08032850
	cmp		r5, #0x37
	ble		_080327d4
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_0803284a
_080327d4:
	cmp		r5, #0x2f
	ble		_080327ec
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r2, _080327e8
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_0803284a

.incbin "base.gba", 0x327E6, 0x2

_080327e8:	.4byte 0xFFFFFA00

_080327ec:
	cmp		r5, #0x27
	ble		_08032800
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_0803284a
_08032800:
	cmp		r5, #0x1f
	ble		_08032818
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r2, _08032814
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_0803284a

.incbin "base.gba", 0x32812, 0x2

_08032814:	.4byte 0xFFFFFA00

_08032818:
	cmp		r5, #0x17
	ble		_0803282c
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_0803284a
_0803282c:
	cmp		r5, #0xf
	ble		_0803284c
	add		r1, r4, #0x0
	add		r1, #0x82
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	ble		_08032848
	ldr		r3, _08032844
	add		r0, r2, r3
	b		_0803284a

_08032844:	.4byte 0xFFFFFA00

_08032848:
	mov		r0, #0x0
_0803284a:
	strh	r0, [r1, #0x0]
_0803284c:
	mov		r0, #0x1
	b		_08032902
_08032850:
	add		r0, r4, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_0803287e
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_08036eec
	add		r2, r4, #0x0
	add		r2, #0x74
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08032908
	add		r1, #0x24
	add		r0, r4, #0x0
	bl		sub_0803ce54
_0803287e:
	add		r0, r4, #0x0
	add		r0, #0x92
	strh	r5, [r0, #0x0]
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r0, _08032908
	ldr		r1, _0803290c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08032900
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08032900
	mov		r6, #0x0
	mov		r5, #0x0
	ldr		r2, _08032910
	ldr		r3, _08032914
	mov		r0, #0xa2
	lsl		r0, r0, #0x3
	add		r4, r3, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_080328c8
	ldr		r1, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r1, r0
	bne		_080328c8
	mov		r5, #0x1
_080328c8:
	cmp		r5, #0x0
	beq		_080328f6
	mov		r4, #0x0
	mov		r1, #0xa2
	lsl		r1, r1, #0x3
	add		r3, r3, r1
	ldrh	r0, [r3, #0x4]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_080328f0
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_080328f0
	mov		r4, #0x1
_080328f0:
	cmp		r4, #0x0
	bne		_080328f6
	mov		r6, #0x1
_080328f6:
	cmp		r6, #0x0
	bne		_08032900
	mov		r0, #0xa2
	bl		sub_0807073c
_08032900:
	mov		r0, #0x0
_08032902:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08032908:	.4byte 0x030031A0
_0803290c:	.4byte 0x00000838
_08032910:	.4byte 0x08124544
_08032914:	.4byte 0x081245c8
	thumb_func_end sub_080326d8

	thumb_func_start sub_08032918
sub_08032918:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	add		r0, #0x54
	ldrb	r7, [r0, #0x0]
	add		r2, r5, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803293a
	ldr		r0, _08032954
	and		r0, r1
	strh	r0, [r2, #0x0]
_0803293a:
	add		r0, r5, #0x0
	add		r0, #0x7e
	ldrb	r1, [r0, #0x0]
	mov		r8, r0
	cmp		r1, #0xf
	bls		_0803294a
	bl		sub_08033168
_0803294a:
	lsl		r0, r1, #0x2
	ldr		r1, _08032958
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08032954:	.4byte 0x0000FFD3
_08032958:	.4byte 0x0803295c
_0803295c:	.4byte 0x080329aa

.incbin "base.gba", 0x32960, 0x3C
	thumb_func_end sub_08032918


.incbin "base.gba", 0x3299C, 0x7CC
	thumb_func_start sub_08033168
sub_08033168:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08033168

	thumb_func_start sub_08033174
sub_08033174:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r3, r4, #0x0
	add		r3, #0x82
	ldrh	r5, [r3, #0x0]
	mov		r0, #0x0
	ldrsh	r2, [r3, r0]
	ldr		r7, _080331ac
	cmp		r2, #0x0
	beq		_080331c6
	lsl		r0, r6, #0x4
	add		r0, r0, r7
	ldrh	r0, [r0, #0xc]
	add		r1, r0, #0x0
	cmp		r2, #0x0
	ble		_080331b0
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	sub		r0, r5, r0
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080331c6
	b		_080331c2

.incbin "base.gba", 0x331AA, 0x2

_080331ac:	.4byte 0x08106a34

_080331b0:
	cmp		r2, #0x0
	bge		_080331c6
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r5
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_080331c6
_080331c2:
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_080331c6:
	lsl		r0, r6, #0x4
	add		r0, r0, r7
	ldrh	r1, [r0, #0x8]
	mov		r12, r1
	mov		r7, #0x0
	mov		r5, #0x0
	add		r0, r4, #0x0
	add		r0, #0x80
	ldrh	r3, [r0, #0x0]
	mov		r6, #0x0
	ldrsh	r2, [r0, r6]
	mov		r8, r0
	cmp		r2, #0x0
	ble		_080331f4
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	sub		r0, r3, r0
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	asr		r0, r0, #0x10
	mvn		r0, r0
	lsr		r5, r0, #0x1f
	b		_0803320a
_080331f4:
	cmp		r2, #0x0
	bge		_0803320a
	mov		r1, r12
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r3
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	cmp		r0, #0x0
	bgt		_0803320a
	mov		r5, #0x1
_0803320a:
	cmp		r5, #0x0
	beq		_08033214
	mov		r2, r8
	strh	r7, [r2, #0x0]
	b		_08033302
_08033214:
	ldr		r3, _080332cc
	add		r7, r3, #0x0
	add		r7, #0x24
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x40
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r5, r2, #0x0
	cmp		r1, #0x0
	beq		_080332fc
	add		r1, r4, #0x0
	add		r1, #0xbc
	add		r0, r4, #0x0
	add		r0, #0xa8
	ldr		r0, [r0, #0x0]
	ldr		r6, _080332d0
	add		r0, r0, r6
	ldr		r1, [r1, #0x0]
	cmp		r1, r0
	blt		_080332e0
	add		r0, r4, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r6, r0, #0x0
	cmp		r1, #0x8
	beq		_080332e0
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08033302
	ldr		r2, _080332d4
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, r4
	bne		_08033272
	mov		r0, #0x20
	and		r1, r0
	cmp		r1, #0x0
	bne		_08033272
	mov		r0, #0x8c
	bl		sub_0807073c
_08033272:
	add		r0, r4, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_0803329c
	ldr		r3, _080332d8
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0803329c
	mov		r1, #0x20
	ldrsh	r0, [r4, r1]
	mov		r2, #0x22
	ldrsh	r1, [r4, r2]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x1
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_0805572c
_0803329c:
	add		r2, r4, #0x0
	add		r2, #0x7e
	mov		r1, #0x0
	mov		r0, #0xe
	strb	r0, [r2, #0x0]
	mov		r0, r8
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xcc
	mov		r0, #0x30
	strh	r0, [r1, #0x0]
	mov		r0, #0xc
	strb	r0, [r6, #0x0]
	ldrh	r1, [r5, #0x0]
	ldr		r0, _080332dc
	and		r0, r1
	strh	r0, [r5, #0x0]
	ldr		r1, _080332cc
	add		r1, #0x24
	add		r0, r4, #0x0
	bl		sub_0803cecc
	b		_08033302

.incbin "base.gba", 0x332CA, 0x2

_080332cc:	.4byte 0x030031A0
_080332d0:	.4byte 0xFF800000
_080332d4:	.4byte 0x00000838
_080332d8:	.4byte 0x00000814
_080332dc:	.4byte 0x0000FFBF

_080332e0:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08033302
	ldrh	r1, [r5, #0x0]
	ldr		r0, _080332f8
	and		r0, r1
	strh	r0, [r5, #0x0]
	b		_08033302

.incbin "base.gba", 0x332F6, 0x2

_080332f8:	.4byte 0x0000FFBF

_080332fc:
	add		r0, r4, #0x0
	add		r0, #0x7e
	strb	r1, [r0, #0x0]
_08033302:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08033174

	thumb_func_start sub_0803330c
sub_0803330c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _08033374
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r5, [r0, #0x0]
	ldrb	r1, [r0, #0x0]
	ldrh	r0, [r7, #0x14]
	sub		r0, #0x1
	cmp		r1, r0
	bne		_08033328
	sub		r5, #0x1
_08033328:
	lsl		r5, r5, #0x18
	lsr		r5, r5, #0x18
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c5d0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c610
	add		r5, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0xd
	lsl		r5, r5, #0x10
	asr		r5, r5, #0xd
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	mov		r3, #0x0
	bl		sub_0802c35c
	add		r1, r6, #0x0
	add		r1, #0xa2
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x9e
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x33372, 0x2

_08033374:	.4byte 0x030031A0
	thumb_func_end sub_0803330c

	thumb_func_start sub_08033378
sub_08033378:
	push	{ r4, r5, r6, lr }
	mov		r12, r0
	mov		r2, r12
	add		r2, #0x7c
	add		r0, #0xa2
	ldrh	r4, [r2, #0x0]
	ldrh	r3, [r0, #0x0]
	sub		r0, r4, r3
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r5, r1, #0x0
	mov		r6, #0x0
	cmp		r1, #0x0
	beq		_080333c4
	lsl		r0, r1, #0x10
	cmp		r0, #0x0
	ble		_080333ac
	ldr		r0, _080333a4
	cmp		r1, r0
	bls		_080333c0
	ldr		r1, _080333a8
	b		_080333b6

_080333a4:	.4byte 0x000001FF
_080333a8:	.4byte 0xFFFFFEC0

_080333ac:
	ldr		r0, _080333bc
	cmp		r5, r0
	bhi		_080333c0
	mov		r1, #0xa0
	lsl		r1, r1, #0x1
_080333b6:
	add		r0, r4, r1
	strh	r0, [r2, #0x0]
	b		_080333c2

_080333bc:	.4byte 0x0000FDFF

_080333c0:
	strh	r3, [r2, #0x0]
_080333c2:
	mov		r6, #0x1
_080333c4:
	mov		r1, r12
	add		r1, #0x7c
	ldrh	r0, [r1, #0x0]
	mov		r2, r12
	add		r2, #0x56
	strh	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	mov		r0, r12
	add		r0, #0x7a
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	cmp		r6, #0x0
	bne		_080333e0
	mov		r0, #0x1
_080333e0:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x333E6, 0x236
	thumb_func_end sub_08033378

	thumb_func_start sub_0803361c
sub_0803361c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	ldr		r0, _08033648
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r0, r6, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x9
	bls		_0803363c
	bl		sub_08034394
_0803363c:
	lsl		r0, r0, #0x2
	ldr		r1, _0803364c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x33646, 0x2

_08033648:	.4byte 0x030031A0
_0803364c:	.4byte 0x08033650
_08033650:	.4byte 0x08033678

.incbin "base.gba", 0x33654, 0x24
	thumb_func_end sub_0803361c


.incbin "base.gba", 0x33678, 0xCF4

_0803436c:

.incbin "base.gba", 0x3436C, 0x28
	thumb_func_start sub_08034394
sub_08034394:
	add		r0, r6, #0x0
	add		r0, #0xbc
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r0, #0x4
	str		r1, [r0, #0x0]
	sub		r0, #0x38
	mov		r2, #0x0
	strh	r1, [r0, #0x0]
	sub		r0, #0xa
	strb	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	sub		r0, #0x34
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
	str		r0, [r6, #0x48]
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x343D2, 0x4C6
	thumb_func_end sub_08034394

	thumb_func_start sub_08034898
sub_08034898:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r3, r4, #0x0
	add		r3, #0xb4
	ldrh	r7, [r3, #0x0]
	mov		r0, #0x1
	and		r0, r7
	cmp		r0, #0x0
	beq		_08034920
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	mov		r6, #0x40
	neg		r6, r6
	cmp		r0, #0x0
	beq		_080348c0
	add		r6, #0x30
_080348c0:
	add		r2, r4, #0x0
	add		r2, #0x92
	ldrh	r5, [r2, #0x0]
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	ldr		r0, _080348e0
	cmp		r1, r0
	ble		_080348e4
	add		r0, r5, r6
	strh	r0, [r2, #0x0]
	ldrh	r1, [r3, #0x0]
	mov		r0, #0x20
	orr		r0, r1
	strh	r0, [r3, #0x0]
	b		_08034920

.incbin "base.gba", 0x348DE, 0x2

_080348e0:	.4byte 0x000001FF

_080348e4:
	ldr		r0, _08034928
	and		r0, r7
	strh	r0, [r3, #0x0]
	add		r2, r4, #0x0
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0803492c
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _08034930
	ldr		r1, _08034934
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08034912
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08034912
	mov		r0, #0xa3
	bl		sub_08070808
_08034912:
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_08034920:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x34926, 0x2

_08034928:	.4byte 0x0000FFDE
_0803492c:	.4byte 0x0000FFFD
_08034930:	.4byte 0x030031A0
_08034934:	.4byte 0x00000838
	thumb_func_end sub_08034898

	thumb_func_start sub_08034938
sub_08034938:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r0, r6, #0x0
	bl		sub_0802c7d0
	cmp		r0, #0x0
	bne		_08034a30
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08034956
	cmp		r0, #0x7
	bne		_08034a30
_08034956:
	ldr		r0, _080349d4
	add		r1, r4, #0x0
	add		r1, #0x7e
	ldrb	r1, [r1, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08034a30
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080356ac
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080356ac
	add		r1, r4, #0x0
	add		r1, #0x7a
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803499a
	neg		r0, r0
_0803499a:
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080349a8
	neg		r0, r0
_080349a8:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	bne		_080349dc
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_08034a30
	ldr		r0, _080349d8
	and		r1, r0
	str		r1, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x4
	b		_08034a2a

_080349d4:	.4byte 0x08106e8c
_080349d8:	.4byte 0xfffffbff

_080349dc:
	ldr		r2, [r4, #0x48]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r0, r2, #0x0
	and		r0, r6
	cmp		r0, #0x0
	beq		_08034a0c
	lsl		r1, r5, #0x10
	ldr		r0, _08034a04
	cmp		r1, r0
	bgt		_08034a30
	ldr		r0, _08034a08
	and		r2, r0
	str		r2, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x4
	b		_08034a2a

_08034a04:	.4byte 0x2FFF0000
_08034a08:	.4byte 0xfffffbff

_08034a0c:
	lsl		r1, r5, #0x10
	ldr		r0, _08034a38
	cmp		r1, r0
	ble		_08034a30
	lsl		r1, r3, #0x10
	ldr		r0, _08034a3c
	cmp		r1, r0
	ble		_08034a30
	orr		r2, r6
	str		r2, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
_08034a2a:
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08034a30:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x34A36, 0x2

_08034a38:	.4byte 0x67FF0000
_08034a3c:	.4byte 0x57FF0000
	thumb_func_end sub_08034938

	thumb_func_start sub_08034a40
sub_08034a40:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	cmp		r2, #0x7
	bhi		_08034b1e
	lsl		r0, r2, #0x2
	ldr		r1, _08034a5c
	add		r1, r0, r1
	ldr		r1, [r1, #0x0]
	mov		r9, r0
	mov		pc, r1

_08034a5c:	.4byte 0x08034a60
_08034a60:	.4byte 0x08034af0

.incbin "base.gba", 0x34A64, 0x1C
	thumb_func_end sub_08034a40


.incbin "base.gba", 0x34A80, 0x9E

_08034b1e:

.incbin "base.gba", 0x34B1E, 0x16
_08034b34:	.4byte 0x0000C007
	thumb_func_start sub_08034b38
sub_08034b38:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	add		r0, #0x85
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8f
	bls		_08034b4a
	b		_08034cd0
_08034b4a:
	cmp		r0, #0x81
	bhi		_08034b50
	b		_08034cd0
_08034b50:
	cmp		r0, #0x84
	beq		_08034bbc
	ldr		r0, _08034b90
	add		r5, r0, #0x0
	add		r5, #0x24
	ldr		r1, [r7, #0x0]
	cmp		r1, #0x0
	bge		_08034b64
	ldr		r0, _08034b94
	add		r1, r1, r0
_08034b64:
	asr		r6, r1, #0x10
	ldr		r0, [r7, #0x4]
	cmp		r0, #0x0
	bge		_08034b70
	ldr		r1, _08034b94
	add		r0, r0, r1
_08034b70:
	asr		r4, r0, #0x10
	add		r0, r5, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x8
	beq		_08034b98
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_0802c298
	b		_08034ba4

.incbin "base.gba", 0x34B8E, 0x2

_08034b90:	.4byte 0x030031A0
_08034b94:	.4byte 0x0000FFFF

_08034b98:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x8
	bl		sub_0802c298
_08034ba4:
	ldr		r0, _08034bb4
	ldr		r1, _08034bb8
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x1
	orr		r1, r2
	strh	r1, [r0, #0x0]
	b		_08034cd0

_08034bb4:	.4byte 0x030031A0
_08034bb8:	.4byte 0x00000C12

_08034bbc:
	ldr		r0, _08034bf8
	add		r5, r0, #0x0
	add		r5, #0x24
	ldr		r1, [r7, #0x0]
	cmp		r1, #0x0
	bge		_08034bcc
	ldr		r0, _08034bfc
	add		r1, r1, r0
_08034bcc:
	asr		r6, r1, #0x10
	ldr		r2, [r7, #0x4]
	cmp		r2, #0x0
	bge		_08034bd8
	ldr		r1, _08034bfc
	add		r2, r2, r1
_08034bd8:
	asr		r4, r2, #0x10
	add		r0, r5, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x8
	beq		_08034c00
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_0802c298
	b		_08034c0c

.incbin "base.gba", 0x34BF6, 0x2

_08034bf8:	.4byte 0x030031A0
_08034bfc:	.4byte 0x0000FFFF

_08034c00:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x8
	bl		sub_0802c298
_08034c0c:
	ldr		r1, _08034cb8
	ldr		r0, _08034cbc
	add		r3, r1, r0
	ldrh	r2, [r3, #0x0]
	mov		r0, #0x1
	orr		r0, r2
	strh	r0, [r3, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xbc
	ldr		r4, [r0, #0x0]
	ldr		r0, _08034cc0
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r7, r0
	bne		_08034ca6
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08034ca6
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08034c3c
	neg		r0, r4
_08034c3c:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08034cc4
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bge		_08034c50
	neg		r0, r0
_08034c50:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r0, _08034cc8
	mov		r8, r0
	ldr		r5, _08034ccc
	mov		r1, #0xf8
	lsl		r1, r1, #0x2
	add		r5, r5, r1
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08071704
_08034ca6:
	add		r0, r7, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08034cd0
	mov		r0, #0x0
	b		_08034cd2

.incbin "base.gba", 0x34CB6, 0x2

_08034cb8:	.4byte 0x030031A0
_08034cbc:	.4byte 0x00000C12
_08034cc0:	.4byte 0x00000838
_08034cc4:	.4byte 0xFFFFFE00
_08034cc8:	.4byte 0x08124544
_08034ccc:	.4byte 0x081245c8

_08034cd0:
	mov		r0, #0x1
_08034cd2:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08034b38

	thumb_func_start sub_08034cdc
sub_08034cdc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	mov		r9, r1
	ldr		r1, [r7, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08034cf8
	mov		r2, #0x1
_08034cf8:
	cmp		r2, #0x0
	beq		_08034cfe
	b		_08034f5e
_08034cfe:
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	mov		r0, r9
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_08034d24
	ldr		r0, [r7, #0x48]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, r9
	mov		r1, #0x0
	bl		sub_0802c474
	add		r1, r7, #0x0
	add		r1, #0x85
	b		_08034f64
_08034d24:
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	bge		_08034d2e
	ldr		r1, _08034ddc
	add		r0, r0, r1
_08034d2e:
	lsr		r1, r0, #0x10
	ldr		r2, [r7, #0x4]
	cmp		r2, #0x0
	bge		_08034d3a
	ldr		r4, _08034ddc
	add		r2, r2, r4
_08034d3a:
	asr		r2, r2, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08034d44
	add		r0, r2, #0x7
_08034d44:
	asr		r0, r0, #0x3
	lsl		r3, r0, #0x8
	lsl		r0, r1, #0x10
	asr		r1, r0, #0x10
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08034d54
	add		r0, r1, #0x7
_08034d54:
	asr		r0, r0, #0x3
	add		r3, r3, r0
	mov		r10, r3
	mov		r0, r9
	mov		r3, #0x0
	bl		sub_0802c490
	add		r2, r7, #0x0
	add		r2, #0x85
	strb	r0, [r2, #0x0]
	mov		r1, #0x90
	and		r1, r0
	add		r5, r2, #0x0
	cmp		r1, #0x80
	beq		_08034d74
	b		_08034f4a
_08034d74:
	add		r0, r7, #0x0
	bl		sub_08034b38
	cmp		r0, #0x0
	bne		_08034d80
	b		_08034f66
_08034d80:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08034de0
	add		r0, r7, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_08034de0
	add		r2, r7, #0x0
	add		r2, #0x4e
	ldrh	r3, [r2, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	add		r1, r7, #0x0
	add		r1, #0x50
	cmp		r0, #0x0
	bne		_08034db6
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x0
	beq		_08034dd0
_08034db6:
	neg		r0, r3
	strh	r0, [r2, #0x0]
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xa
	orr		r0, r1
	str		r0, [r7, #0x48]
	add		r0, r7, #0x0
	bl		sub_0803a75c
_08034dd0:
	add		r1, r7, #0x0
	add		r1, #0x60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_08034f68

.incbin "base.gba", 0x34DDA, 0x2

_08034ddc:	.4byte 0x0000FFFF

_08034de0:
	add		r2, r7, #0x0
	add		r2, #0x62
	mov		r1, #0x0
	mov		r0, #0x8
	strh	r0, [r2, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x9c
	strh	r1, [r0, #0x0]
	add		r2, #0x52
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08034e14
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r4, _08034e18
	add		r4, #0x24
	mov		r0, r9
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	mov		r8, r4
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x84
	bne		_08034e1c
	mov		r3, #0x7c
	b		_08034e2e

_08034e14:	.4byte 0x0000FFBF
_08034e18:	.4byte 0x030031A0

_08034e1c:
	cmp		r1, #0x0
	beq		_08034e28
	cmp		r1, #0xc
	bne		_08034e2c
	mov		r3, #0xa9
	b		_08034e2e
_08034e28:
	mov		r3, #0xaa
	b		_08034e2e
_08034e2c:
	mov		r3, #0xa8
_08034e2e:
	lsl		r3, r3, #0x10
	mov		r5, #0x0
	ldr		r2, _08034f0c
	ldr		r1, _08034f10
	lsr		r0, r3, #0xd
	add		r6, r0, r1
	ldrh	r1, [r6, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08034e56
	ldr		r1, [r1, #0x0]
	ldr		r0, [r6, #0x0]
	cmp		r1, r0
	bne		_08034e56
	mov		r5, #0x1
_08034e56:
	cmp		r5, #0x0
	bne		_08034ee6
	lsr		r5, r3, #0x10
	add		r0, r7, #0x0
	add		r0, #0xbc
	ldr		r4, [r0, #0x0]
	ldr		r0, _08034f14
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_08034ee6
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08034ee6
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08034e7e
	neg		r0, r4
_08034e7e:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08034f18
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bge		_08034e92
	neg		r0, r0
_08034e92:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	add		r0, r5, #0x0
	bl		sub_0807073c
	ldr		r2, _08034f0c
	mov		r8, r2
	ldr		r0, _08034f10
	lsl		r5, r5, #0x3
	add		r5, r5, r0
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08071704
_08034ee6:
	add		r1, r7, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	mov		r4, r10
	sub		r0, r4, r0
	strh	r4, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08034f20
	neg		r0, r0
	lsl		r0, r0, #0x10
	ldr		r1, _08034f1c
	add		r0, r0, r1
	lsr		r2, r0, #0x10
	cmp		r0, #0x0
	bge		_08034f32
	mov		r2, #0x4
	b		_08034f32

_08034f0c:	.4byte 0x08124544
_08034f10:	.4byte 0x081245c8
_08034f14:	.4byte 0x00000814
_08034f18:	.4byte 0xFFFFFE00
_08034f1c:	.4byte 0xFF060000

_08034f20:
	sub		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08034f32
	sub		r0, #0xfd
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08034f32:
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x10
	cmp		r0, #0x7
	bls		_08034f3e
	mov		r0, #0x1
	b		_08034f68
_08034f3e:
	asr		r2, r2, #0x10
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08034a40
	b		_08034f68
_08034f4a:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x48]
	add		r0, r7, #0x0
	add		r0, #0x5e
	mov		r2, r10
	strh	r2, [r0, #0x0]
	b		_08034f66
_08034f5e:
	add		r1, r7, #0x0
	add		r1, #0x85
	mov		r0, #0x40
_08034f64:
	strb	r0, [r1, #0x0]
_08034f66:
	mov		r0, #0x0
_08034f68:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x34F76, 0x2
	thumb_func_end sub_08034cdc

	thumb_func_start sub_08034f78
sub_08034f78:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r7, r1, #0x0
	add		r5, r4, #0x0
	add		r5, #0x60
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08034f90
	b		_080350cc
_08034f90:
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_08034cdc
	cmp		r0, #0x0
	beq		_08034fcc
	ldrh	r2, [r5, #0x0]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r2
	strh	r0, [r5, #0x0]
	add		r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x18
	ldrh	r1, [r5, #0x0]
	cmp		r2, #0x7
	bhi		_08034fba
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_08034fbe
_08034fba:
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
_08034fbe:
	orr		r1, r0
	orr		r1, r2
	add		r0, r4, #0x0
	add		r0, #0x60
	strh	r1, [r0, #0x0]
	add		r5, r0, #0x0
	b		_08035112
_08034fcc:
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080350bc
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r5, r4, #0x0
	add		r5, #0x4e
	mov		r0, #0x0
	ldrsh	r2, [r5, r0]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08034ff2
	neg		r0, r2
_08034ff2:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0x50
	mov		r6, #0x0
	ldrsh	r1, [r0, r6]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	bge		_08035006
	neg		r1, r1
_08035006:
	lsl		r0, r1, #0x10
	lsr		r1, r0, #0x10
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xbf
	bgt		_0803501a
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xbf
	ble		_0803508c
_0803501a:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _08035044
	cmp		r1, r0
	ble		_08035048
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0803502e
	add		r0, r2, #0x3
_0803502e:
	asr		r0, r0, #0x2
	strh	r0, [r5, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x0
	bge		_0803503c
	add		r0, #0x3
_0803503c:
	asr		r0, r0, #0x2
	strh	r0, [r6, #0x0]
	b		_080350bc

.incbin "base.gba", 0x35042, 0x2

_08035044:	.4byte 0x04FFFFFF

_08035048:
	ldr		r0, _08035084
	add		r3, r4, #0x0
	add		r3, #0x5c
	ldrh	r1, [r3, #0x0]
	lsl		r1, r1, #0x1
	add		r0, r1, r0
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08035060
	add		r0, #0xff
_08035060:
	asr		r0, r0, #0x8
	strh	r0, [r5, #0x0]
	mov		r0, #0x0
	ldrsh	r2, [r6, r0]
	ldr		r1, _08035088
	ldrh	r0, [r3, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803507c
	add		r0, #0xff
_0803507c:
	asr		r0, r0, #0x8
	strh	r0, [r6, #0x0]
	b		_080350bc

.incbin "base.gba", 0x35082, 0x2

_08035084:	.4byte 0x0810738c
_08035088:	.4byte 0x08107394

_0803508c:
	mov		r2, #0x0
	ldrsh	r0, [r5, r2]
	cmp		r0, #0x0
	beq		_080350a4
	ldr		r2, _080350c8
	add		r1, r2, #0x0
	cmp		r0, #0x0
	blt		_080350a2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
_080350a2:
	strh	r1, [r5, #0x0]
_080350a4:
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x0
	beq		_080350bc
	ldr		r2, _080350c8
	add		r1, r2, #0x0
	cmp		r0, #0x0
	blt		_080350ba
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
_080350ba:
	strh	r1, [r6, #0x0]
_080350bc:
	add		r1, r4, #0x0
	add		r1, #0x60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	add		r5, r1, #0x0
	b		_08035112

_080350c8:	.4byte 0xFFFFFF00

_080350cc:
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_08034cdc
	cmp		r0, #0x0
	beq		_08035110
	add		r0, r4, #0x0
	add		r0, #0x56
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0xe
	ldr		r0, _08035108
	lsl		r1, r1, #0x1
	add		r0, r1, r0
	ldrh	r0, [r0, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r0, _0803510c
	add		r1, r1, r0
	ldrh	r1, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	add		r0, #0xa
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	b		_08035112

.incbin "base.gba", 0x35106, 0x2

_08035108:	.4byte 0x0810737c
_0803510c:	.4byte 0x08107384

_08035110:
	strh	r0, [r5, #0x0]
_08035112:
	ldr		r1, [r4, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08035120
	mov		r2, #0x1
_08035120:
	cmp		r2, #0x0
	bne		_08035198
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r7, #0x0
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_0803514c
	ldr		r0, [r4, #0x48]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_0802c474
	add		r1, r4, #0x0
	add		r1, #0x85
	strb	r0, [r1, #0x0]
	b		_08035198
_0803514c:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_08035156
	ldr		r1, _080351b0
	add		r0, r0, r1
_08035156:
	lsr		r2, r0, #0x10
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_08035162
	ldr		r6, _080351b0
	add		r0, r0, r6
_08035162:
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0x85
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x90
	bne		_08035198
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803517c
	add		r0, #0x7
_0803517c:
	asr		r0, r0, #0x3
	lsl		r0, r0, #0x3
	add		r1, r0, #0x4
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803518c
	add		r0, #0x7
_0803518c:
	asr		r2, r0, #0x3
	lsl		r2, r2, #0x3
	add		r2, #0x4
	add		r0, r4, #0x0
	bl		sub_0803a210
_08035198:
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_080351d0
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	beq		_080351b4
	sub		r0, #0x1
	strh	r0, [r4, #0x38]
	b		_080351d0

_080351b0:	.4byte 0x0000FFFF

_080351b4:
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_080351cc
	ldr		r0, [r4, #0x48]
	ldr		r1, _080351c8
	and		r0, r1
	b		_080351d8

.incbin "base.gba", 0x351C6, 0x2

_080351c8:	.4byte 0xffffbfff

_080351cc:
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
_080351d0:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
_080351d8:
	str		r0, [r4, #0x48]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08034f78

	thumb_func_start sub_080351e0
sub_080351e0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	mov		r8, r1
	ldr		r1, _08035250
	add		r6, r1, #0x0
	add		r6, #0x24
	add		r0, #0xf0
	mov		r2, #0x0
	ldrsh	r5, [r0, r2]
	mov		r3, #0x6
	ldrsh	r7, [r4, r3]
	ldr		r0, _08035254
	add		r1, r1, r0
	ldrh	r1, [r1, #0x0]
	add		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803520a
	b		_080353a0
_0803520a:
	ldr		r1, [r4, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035216
	b		_080353a0
_08035216:
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x6
	bne		_08035222
	b		_080353a0
_08035222:
	mov		r0, #0xc1
	neg		r0, r0
	and		r1, r0
	str		r1, [r4, #0x48]
	mov		r0, r8
	bl		sub_0802c4b8
	cmp		r0, r5
	beq		_08035258
	cmp		r0, r5
	blt		_08035258
	cmp		r0, r7
	ble		_0803523e
	b		_080353a0
_0803523e:
	add		r2, r4, #0x0
	add		r2, #0x91
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x74
	bhi		_0803524a
	b		_080353a0
_0803524a:
	sub		r0, #0x1
	strb	r0, [r2, #0x0]
	b		_080353a0

_08035250:	.4byte 0x030031A0
_08035254:	.4byte 0x000007FE

_08035258:
	cmp		r0, r7
	bgt		_0803525e
	b		_080353a0
_0803525e:
	add		r2, r4, #0x0
	add		r2, #0x91
	ldrb	r0, [r2, #0x0]
	add		r0, #0x1
	mov		r1, #0x0
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x90
	strb	r1, [r0, #0x0]
	sub		r0, #0x5a
	strb	r1, [r0, #0x0]
	ldrb	r0, [r2, #0x0]
	lsl		r2, r0, #0x8
	add		r1, r4, #0x0
	add		r1, #0xc6
	ldrh	r3, [r1, #0x0]
	cmp		r2, r3
	bgt		_08035284
	b		_080353a0
_08035284:
	mov		r7, #0x0
	strh	r2, [r1, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	cmp		r0, #0x80
	bne		_08035292
	b		_080353a0
_08035292:
	ldr		r2, _08035300
	add		r0, r6, r2
	ldrh	r2, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r1, r2
	cmp		r0, #0x0
	blt		_08035310
	ldr		r5, [r4, #0x48]
	mov		r0, #0x20
	and		r5, r0
	cmp		r5, #0x0
	bne		_08035386
	ldr		r3, _08035304
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_080352d0
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bl		sub_08048a34
	mov		r1, #0x8
	ldr		r2, _08035308
	add		r0, r6, r2
	str		r1, [r0, #0x0]
_080352d0:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080376f8
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0803cae0
	ldr		r0, [r4, #0x48]
	mov		r1, #0x39
	neg		r1, r1
	and		r0, r1
	ldr		r1, _0803530c
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x82
	strh	r5, [r0, #0x0]
	sub		r0, #0x2
	strh	r5, [r0, #0x0]
	sub		r0, #0x2
	strb	r7, [r0, #0x0]
	b		_08035386

.incbin "base.gba", 0x352FE, 0x2

_08035300:	.4byte 0x000007E6
_08035304:	.4byte 0x00000814
_08035308:	.4byte 0x00000BE4
_0803530c:	.4byte 0x00002038

_08035310:
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r0, r1, r3
	cmp		r0, r2
	bne		_08035354
	ldr		r0, [r4, #0x48]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r4, #0x48]
	ldr		r3, _0803534c
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08035336
	ldr		r1, _08035350
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
_08035336:
	add		r0, r4, #0x0
	add		r0, #0xa4
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x80
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080376f8
	b		_08035386

_0803534c:	.4byte 0x00000814
_08035350:	.4byte 0x0810739c

_08035354:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x48]
	and		r0, r5
	cmp		r0, #0x0
	beq		_08035386
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _080353ac
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0803537e
	mov		r0, #0x6b
	bl		sub_0807073c
_0803537e:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080376f8
_08035386:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_080353a0
	add		r0, r4, #0x0
	mov		r1, r8
	bl		sub_080376ac
	ldr		r2, _080353b0
	add		r1, r4, r2
	strb	r0, [r1, #0x0]
_080353a0:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x353AA, 0x2

_080353ac:	.4byte 0x00000814
_080353b0:	.4byte 0x00000191
	thumb_func_end sub_080351e0

	thumb_func_start sub_080353b4
sub_080353b4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	ldr		r0, [r5, #0x48]
	mov		r1, #0x4
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x48]
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_080353d2
	ldr		r0, _08035400
	add		r1, r1, r0
_080353d2:
	lsr		r7, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_080353de
	ldr		r1, _08035400
	add		r2, r2, r1
_080353de:
	lsr		r4, r2, #0x10
	ldr		r2, _08035404
	add		r2, r2, r5
	mov		r8, r2
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r2, [r5, #0x4]
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_08035408
	ldr		r0, [r5, #0x48]
	mov		r1, #0x1
	b		_08035490

_08035400:	.4byte 0x0000FFFF
_08035404:	.4byte 0x0000019B

_08035408:
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r4, #0x10
	asr		r2, r2, #0x10
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0802c3d4
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r7, #0x80
	add		r0, r4, #0x0
	and		r0, r7
	cmp		r0, #0x0
	beq		_0803545c
	mov		r1, #0x7f
	and		r4, r1
	cmp		r4, #0x7f
	bne		_08035438
	ldr		r0, [r5, #0x48]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r5, #0x48]
	b		_0803544a
_08035438:
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r2, [r0, #0x0]
	cmp		r4, r2
	beq		_0803544a
	strb	r4, [r0, #0x0]
	and		r4, r1
	sub		r0, #0x5a
	strb	r4, [r0, #0x0]
_0803544a:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_080351e0
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080448fc
	b		_080354b4
_0803545c:
	cmp		r4, #0x7f
	beq		_0803548c
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080448fc
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0802c650
	mov		r1, r8
	strb	r0, [r1, #0x0]
	and		r0, r7
	cmp		r0, #0x0
	beq		_08035496
	ldr		r1, [r5, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08035488
	mov		r2, #0x1
_08035488:
	cmp		r2, #0x0
	beq		_08035496
_0803548c:
	ldr		r0, [r5, #0x48]
	mov		r1, #0x2
_08035490:
	orr		r0, r1
	str		r0, [r5, #0x48]
	b		_080354b4
_08035496:
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r2, [r0, #0x0]
	cmp		r4, r2
	beq		_080354b4
	strb	r4, [r0, #0x0]
	mov		r0, #0x7f
	and		r4, r0
	add		r0, r5, #0x0
	add		r0, #0x36
	strb	r4, [r0, #0x0]
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080448fc
_080354b4:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x354BE, 0x2
	thumb_func_end sub_080353b4

	thumb_func_start sub_080354c0
sub_080354c0:
	push	{ r4, r5, r6, lr }
	mov		r12, r0
	add		r0, #0xb6
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	cmp		r0, r1
	ble		_080354d6
	add		r2, r1, #0x0
_080354d6:
	lsl		r0, r2, #0x10
	asr		r3, r0, #0x10
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	add		r6, r2, #0x0
	cmp		r0, #0x0
	bne		_080354f2
	neg		r0, r3
	lsl		r0, r0, #0x10
	b		_080354f4
_080354f2:
	lsl		r0, r3, #0x10
_080354f4:
	lsr		r1, r0, #0x10
	mov		r0, r12
	add		r0, #0x82
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	ldrh	r2, [r0, #0x0]
	add		r3, r1, r2
	strh	r3, [r0, #0x0]
	mov		r2, r12
	add		r2, #0xb6
	ldrh	r5, [r2, #0x0]
	mov		r4, #0x0
	ldrsh	r1, [r2, r4]
	add		r4, r0, #0x0
	cmp		r1, #0xff
	ble		_0803551c
	add		r0, r5, #0x0
	sub		r0, #0x40
	strh	r0, [r2, #0x0]
	b		_08035566
_0803551c:
	lsl		r0, r3, #0x10
	cmp		r0, #0x0
	blt		_08035534
	ldr		r1, _08035530
	add		r0, r3, r1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08035566
	b		_08035542

_08035530:	.4byte 0xFFFFFB80

_08035534:
	mov		r2, #0x90
	lsl		r2, r2, #0x3
	add		r0, r3, r2
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_08035566
_08035542:
	mov		r0, r12
	add		r0, #0x84
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	mov		r2, #0x0
	strh	r1, [r4, #0x0]
	sub		r0, #0x4
	strh	r1, [r0, #0x0]
	sub		r0, #0x2
	strb	r2, [r0, #0x0]
	ldrh	r1, [r6, #0x0]
	ldr		r0, _0803556c
	and		r0, r1
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	add		r1, r4, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
_08035566:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0803556c:	.4byte 0x000040FF
	thumb_func_end sub_080354c0

	thumb_func_start sub_08035570
sub_08035570:
	push	{ r4, lr }
	mov		r12, r0
	mov		r2, r12
	add		r2, #0xca
	mov		r1, r12
	add		r1, #0x7a
	ldrh	r0, [r2, #0x0]
	ldrh	r4, [r1, #0x0]
	sub		r0, r0, r4
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_080355c8
	ldr		r0, _080355c4
	cmp		r1, r0
	ble		_08035614
	cmp		r1, r0
	ble		_08035596
	add		r1, r0, #0x0
_08035596:
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	add		r0, r12
	ldr		r2, [r0, #0x0]
	asr		r1, r1, #0x6
	mov		r0, #0x7
	and		r1, r0
	mov		r0, r12
	add		r0, #0x9a
	ldrb	r3, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r3
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	add		r2, r2, r1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r4, r0
	b		_08035606

.incbin "base.gba", 0x355C2, 0x2

_080355c4:	.4byte 0x000001FF

_080355c8:
	ldr		r0, _0803560c
	cmp		r1, r0
	bge		_08035614
	neg		r0, r1
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	ldr		r0, _08035610
	cmp		r1, r0
	ble		_080355dc
	add		r1, r0, #0x0
_080355dc:
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	add		r0, r12
	ldr		r2, [r0, #0x0]
	asr		r1, r1, #0x6
	mov		r0, #0x7
	and		r1, r0
	mov		r0, r12
	add		r0, #0x9a
	ldrb	r3, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r3
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	add		r2, r2, r1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r4, r0
_08035606:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	b		_08035616

_0803560c:	.4byte 0xFFFFFE00
_08035610:	.4byte 0x000001FF

_08035614:
	ldrh	r1, [r2, #0x0]
_08035616:
	mov		r0, r12
	add		r0, #0x7a
	strh	r1, [r0, #0x0]
	sub		r0, #0x24
	strh	r1, [r0, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x35626, 0x2
	thumb_func_end sub_08035570

	thumb_func_start sub_08035628
sub_08035628:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xa0
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035656
	add		r0, r4, #0x0
	bl		sub_080354c0
	add		r1, r4, #0x0
	add		r1, #0x7a
	add		r0, r4, #0x0
	add		r0, #0x82
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	add		r1, r4, #0x0
	add		r1, #0x56
	strh	r0, [r1, #0x0]
	b		_080356a6
_08035656:
	add		r0, r4, #0x0
	add		r0, #0x56
	add		r1, r4, #0x0
	add		r1, #0x7a
	ldrh	r3, [r0, #0x0]
	ldrh	r5, [r1, #0x0]
	sub		r0, r3, r5
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r6, r1, #0x0
	cmp		r2, #0x0
	beq		_080356a0
	cmp		r2, #0x0
	ble		_08035684
	ldr		r0, _08035680
	cmp		r2, r0
	ble		_0803568c
	mov		r1, #0xc0
	lsl		r1, r1, #0x3
	b		_08035696

.incbin "base.gba", 0x3567E, 0x2

_08035680:	.4byte 0x000007FF

_08035684:
	neg		r1, r2
	ldr		r0, _08035690
	cmp		r1, r0
	bgt		_08035694
_0803568c:
	add		r0, r3, #0x0
	b		_08035698

_08035690:	.4byte 0x000007FF

_08035694:
	ldr		r1, _0803569c
_08035696:
	add		r0, r5, r1
_08035698:
	strh	r0, [r6, #0x0]
	b		_080356a6

_0803569c:	.4byte 0xFFFFFA00

_080356a0:
	add		r0, r4, #0x0
	bl		sub_08035570
_080356a6:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08035628

	thumb_func_start sub_080356ac
sub_080356ac:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, [r4, #0x48]
	mov		r1, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803570c
	add		r6, r4, #0x0
	add		r6, #0x90
	ldrb	r1, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c5d0
	lsl		r1, r0, #0x3
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_080356d6
	ldr		r2, _08035708
	add		r0, r0, r2
_080356d6:
	asr		r0, r0, #0x10
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldrb	r1, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c610
	lsl		r2, r0, #0x3
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_080356f4
	ldr		r3, _08035708
	add		r0, r0, r3
_080356f4:
	asr		r1, r0, #0x10
	sub		r1, r2, r1
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	b		_08035734

.incbin "base.gba", 0x35706, 0x2

_08035708:	.4byte 0x0000FFFF

_0803570c:
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_08035716
	ldr		r0, _08035744
	add		r1, r1, r0
_08035716:
	lsr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_08035722
	ldr		r3, _08035744
	add		r2, r2, r3
_08035722:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	ldr		r3, _08035748
	add		r0, r4, r3
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0802c35c
_08035734:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x35742, 0x2

_08035744:	.4byte 0x0000FFFF
_08035748:	.4byte 0x00000191
	thumb_func_end sub_080356ac

	thumb_func_start sub_0803574c
sub_0803574c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	bl		sub_080356ac
	ldr		r1, _08035780
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0xca
	mov		r6, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r1, #0x0]
	add		r5, r4, #0x0
	add		r5, #0x84
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x1
	bne		_08035776
	b		_080358b0
_08035776:
	cmp		r0, #0x1
	bgt		_08035784
	cmp		r0, #0x0
	beq		_08035790
	b		_08035950

_08035780:	.4byte 0xFFFFFF00

_08035784:
	cmp		r0, #0x8
	beq		_08035868
	cmp		r0, #0xb
	bne		_0803578e
	b		_080358ba
_0803578e:
	b		_08035950
_08035790:
	ldr		r1, _08035828
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x3
	and		r1, r0
	mov		r2, #0xbc
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r5, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r6, #0x7
	and		r6, r0
	mov		r3, #0xba
	lsl		r3, r3, #0x1
	add		r0, r4, r3
	ldr		r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x9a
	ldrb	r3, [r0, #0x0]
	mov		r7, #0xf
	add		r0, r7, #0x0
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r1, r1, r0
	lsl		r0, r6, #0x2
	add		r0, r0, r6
	lsl		r0, r0, #0x2
	add		r1, r1, r0
	add		r2, #0x80
	add		r2, r2, r1
	ldrb	r0, [r2, #0x0]
	lsl		r2, r0, #0x4
	cmp		r5, #0x10
	ble		_080357da
	mov		r5, #0x10
_080357da:
	lsl		r0, r5, #0x1
	ldr		r3, _0803582c
	add		r1, r4, r3
	ldrb	r1, [r1, #0x0]
	add		r1, r2, r1
	add		r1, r1, r0
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r2, [r0, #0x0]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_080357f6
	ldr		r3, _08035830
	add		r0, r2, r3
_080357f6:
	asr		r0, r0, #0x10
	sub		r0, r1, r0
	cmp		r0, #0x0
	blt		_08035838
	asr		r0, r2, #0x10
	ldr		r1, _08035834
	cmp		r0, r1
	ble		_08035808
	add		r0, r1, #0x0
_08035808:
	asr		r2, r0, #0x6
	and		r2, r7
	add		r3, r4, #0x0
	add		r3, #0xc0
	mov		r1, #0xba
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	lsl		r1, r6, #0x4
	add		r2, r2, r1
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0xc
	str		r0, [r3, #0x0]
	b		_08035956

.incbin "base.gba", 0x35826, 0x2

_08035828:	.4byte 0x0000019B
_0803582c:	.4byte 0x0000019D
_08035830:	.4byte 0x0000FFFF
_08035834:	.4byte 0x000003FF

_08035838:
	neg		r0, r0
	ldr		r1, _08035860
	cmp		r0, r1
	ble		_08035842
	add		r0, r1, #0x0
_08035842:
	add		r2, r4, #0x0
	add		r2, #0xc0
	ldrh	r1, [r2, #0x0]
	str		r1, [r2, #0x0]
	ldr		r3, _08035864
	asr		r0, r0, #0x6
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	lsl		r0, r0, #0x10
	orr		r1, r0
	str		r1, [r2, #0x0]
	b		_08035956

.incbin "base.gba", 0x3585E, 0x2

_08035860:	.4byte 0x000001FF
_08035864:	.4byte 0x081073bc

_08035868:
	add		r1, r4, #0x0
	add		r1, #0xcc
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_0803589a
	sub		r1, #0x10
	ldr		r0, [r1, #0x0]
	mov		r2, #0xfc
	lsl		r2, r2, #0x13
	cmp		r0, r2
	ble		_0803588a
	str		r2, [r1, #0x0]
	add		r1, #0x4
	b		_080358b4
_0803588a:
	add		r0, r4, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	mov		r2, #0xc8
	lsl		r2, r2, #0xe
	orr		r1, r2
	str		r1, [r0, #0x0]
	b		_08035956
_0803589a:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080358ac
	and		r0, r1
	strh	r0, [r2, #0x0]
_080358a6:
	strb	r6, [r5, #0x0]
	b		_08035956

.incbin "base.gba", 0x358AA, 0x2

_080358ac:	.4byte 0x0000FF3F

_080358b0:
	add		r1, r4, #0x0
	add		r1, #0xc0
_080358b4:
	ldrh	r0, [r1, #0x0]
	str		r0, [r1, #0x0]
	b		_08035956
_080358ba:
	ldr		r2, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r2, r0
	cmp		r2, #0x0
	bne		_08035956
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _080358f4
	add		r3, r4, #0x0
	add		r3, #0x82
	cmp		r1, r0
	bgt		_080358d8
	strh	r2, [r3, #0x0]
_080358d8:
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x0
	ldrsh	r1, [r3, r2]
	cmp		r1, #0x0
	bge		_080358f8
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_0803591c
	b		_080358a6

.incbin "base.gba", 0x358F2, 0x2

_080358f4:	.4byte 0x00FFFFFF

_080358f8:
	cmp		r1, #0x0
	ble		_08035908
	ldr		r2, _08035918
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_080358a6
_08035908:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	cmp		r1, #0x0
	bne		_0803591c
	add		r0, r4, #0x0
	add		r0, #0x84
	strb	r1, [r0, #0x0]
	b		_08035956

_08035918:	.4byte 0xFFFFFC00

_0803591c:
	mov		r2, #0x0
	ldrsh	r1, [r3, r2]
	cmp		r1, #0x0
	bge		_08035926
	neg		r1, r1
_08035926:
	ldr		r0, _08035948
	cmp		r1, r0
	ble		_08035930
	mov		r1, #0xfc
	lsl		r1, r1, #0x6
_08035930:
	asr		r0, r1, #0xb
	mov		r1, #0x7
	and		r0, r1
	add		r2, r4, #0x0
	add		r2, #0xc0
	ldr		r1, _0803594c
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	str		r0, [r2, #0x0]
	b		_08035956

_08035948:	.4byte 0x00003FFF
_0803594c:	.4byte 0x08106e54

_08035950:
	add		r0, r4, #0x0
	bl		sub_08031d7c
_08035956:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803574c

	thumb_func_start sub_0803595c
sub_0803595c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x28
	add		r6, r0, #0x0
	str		r1, [sp, #0x0]
	add		r0, #0xbc
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	sub		r0, #0x6a
	mov		r5, #0x0
	strh	r4, [r0, #0x0]
	sub		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x2
	strh	r4, [r0, #0x0]
	add		r0, #0x72
	str		r4, [r0, #0x0]
	sub		r0, #0x38
	strh	r4, [r0, #0x0]
	sub		r0, #0xa
	strb	r5, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	add		r0, #0x46
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x34
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x6
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x40
	strb	r5, [r0, #0x0]
	add		r0, #0x24
	strb	r5, [r0, #0x0]
	add		r0, #0x22
	strb	r5, [r0, #0x0]
	sub		r0, #0x16
	strb	r5, [r0, #0x0]
	sub		r0, #0x18
	strh	r4, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08036e88
	add		r0, r6, #0x0
	add		r0, #0xb2
	strh	r4, [r0, #0x0]
	sub		r0, #0x16
	strh	r4, [r0, #0x0]
	add		r0, #0x30
	strh	r4, [r0, #0x0]
	sub		r0, #0x16
	strh	r4, [r0, #0x0]
	sub		r0, #0x12
	strh	r4, [r0, #0x0]
	sub		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x2
	strh	r4, [r0, #0x0]
	sub		r0, #0x2
	strh	r4, [r0, #0x0]
	add		r2, r6, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x41
	neg		r1, r1
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r1, [r6, #0x0]
	cmp		r1, #0x0
	bge		_08035a0a
	ldr		r0, _08035b18
	add		r1, r1, r0
_08035a0a:
	asr		r1, r1, #0x10
	ldr		r2, [r6, #0x4]
	cmp		r2, #0x0
	bge		_08035a16
	ldr		r3, _08035b18
	add		r2, r2, r3
_08035a16:
	asr		r2, r2, #0x10
	ldr		r0, [sp, #0x0]
	mov		r3, #0x0
	bl		sub_0802c3d4
	add		r2, r6, #0x0
	add		r2, #0x90
	strb	r0, [r2, #0x0]
	mov		r1, #0x7f
	and		r0, r1
	add		r3, r6, #0x0
	add		r3, #0x36
	strb	r0, [r3, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x91
	strb	r1, [r0, #0x0]
	ldrb	r0, [r2, #0x0]
	mov		r2, #0xfe
	lsl		r2, r2, #0x7
	add		r1, r2, #0x0
	orr		r0, r1
	add		r1, r6, #0x0
	add		r1, #0xc6
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xb0
	strb	r5, [r0, #0x0]
	add		r3, #0xb2
	mov		r0, #0x68
	add		r0, r0, r6
	mov		r9, r0
	mov		r1, #0x6a
	add		r1, r1, r6
	mov		r10, r1
	mov		r2, #0x66
	add		r2, r2, r6
	mov		r8, r2
	add		r5, r6, #0x0
	add		r5, #0x5a
	add		r0, r6, #0x0
	add		r0, #0x74
	str		r0, [sp, #0x20]
	mov		r1, #0x64
	add		r1, r1, r6
	mov		r12, r1
	add		r4, r6, #0x0
	add		r4, #0xac
	add		r2, r6, #0x0
	add		r2, #0xb8
	str		r2, [sp, #0xC]
	add		r0, #0x2
	str		r0, [sp, #0x24]
	add		r1, r6, #0x0
	add		r1, #0xd0
	str		r1, [sp, #0x10]
	add		r2, #0x1c
	str		r2, [sp, #0x14]
	sub		r0, #0x14
	str		r0, [sp, #0x1C]
	add		r7, r6, #0x0
	add		r7, #0xd8
	sub		r1, #0x4b
	str		r1, [sp, #0x4]
	sub		r2, #0x2c
	str		r2, [sp, #0x8]
	sub		r0, #0x6
	str		r0, [sp, #0x18]
	add		r1, #0x57
	mov		r2, #0x0
	add		r0, #0x88
_08035aa2:
	strh	r2, [r0, #0x0]
	sub		r0, #0x2
	cmp		r0, r1
	bge		_08035aa2
	mov		r0, #0x0
	str		r0, [r3, #0x0]
	mov		r1, #0x0
	mov		r2, r9
	strh	r0, [r2, #0x0]
	mov		r3, r10
	strh	r0, [r3, #0x0]
	mov		r2, r8
	strh	r0, [r2, #0x0]
	strh	r0, [r5, #0x0]
	ldr		r3, [sp, #0x20]
	strh	r0, [r3, #0x0]
	mov		r2, r12
	strb	r1, [r2, #0x0]
	strh	r0, [r4, #0x0]
	strh	r0, [r6, #0x38]
	mov		r3, #0xc9
	lsl		r3, r3, #0x1
	add		r2, r6, r3
	strb	r1, [r2, #0x0]
	ldr		r1, [sp, #0xC]
	strh	r0, [r1, #0x0]
	ldr		r2, [sp, #0x24]
	strh	r0, [r2, #0x0]
	ldr		r0, _08035b1c
	ldr		r3, _08035b20
	add		r0, r0, r3
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035b28
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035b04
	mov		r1, #0x0
	ldr		r0, _08035b24
	ldrh	r0, [r0, #0x12]
	cmp		r0, #0x0
	bne		_08035b00
	mov		r1, #0x1
_08035b00:
	cmp		r1, #0x0
	beq		_08035b28
_08035b04:
	add		r0, r6, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x2
	add		r0, #0x2
	mov		r2, #0xbc
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	b		_08035b30

.incbin "base.gba", 0x35B16, 0x2

_08035b18:	.4byte 0x0000FFFF
_08035b1c:	.4byte 0x030031A0
_08035b20:	.4byte 0x000007FE
_08035b24:	.4byte 0x03002FE0

_08035b28:
	mov		r3, #0xbc
	lsl		r3, r3, #0x1
	add		r1, r6, r3
	mov		r0, #0x0
_08035b30:
	strh	r0, [r1, #0x0]
	mov		r4, #0x0
	ldr		r0, [sp, #0x10]
	str		r4, [r0, #0x0]
	ldr		r1, [sp, #0x14]
	str		r4, [r1, #0x0]
	mov		r2, #0xca
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r5, #0x0
	strh	r4, [r0, #0x0]
	mov		r3, #0xcb
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	strh	r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r6, r2
	strh	r1, [r0, #0x0]
	add		r3, #0x4
	add		r0, r6, r3
	strb	r5, [r0, #0x0]
	add		r0, r6, #0x0
	ldr		r1, [sp, #0x0]
	bl		sub_080376ac
	ldr		r2, _08035bb8
	add		r1, r6, r2
	strb	r0, [r1, #0x0]
	ldr		r3, [sp, #0x1C]
	strh	r4, [r3, #0x0]
	ldrb	r1, [r7, #0x0]
	mov		r0, #0x4
	neg		r0, r0
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r7, #0x0]
	ldrh	r1, [r7, #0x0]
	ldr		r0, _08035bbc
	and		r0, r1
	strh	r0, [r7, #0x0]
	ldrb	r1, [r7, #0x1]
	mov		r0, #0x1f
	and		r0, r1
	strb	r0, [r7, #0x1]
	ldr		r0, [sp, #0x4]
	strb	r5, [r0, #0x0]
	ldr		r1, _08035bc0
	add		r0, r6, r1
	strb	r5, [r0, #0x0]
	ldr		r2, [sp, #0x8]
	str		r4, [r2, #0x0]
	ldr		r3, [sp, #0x18]
	strh	r4, [r3, #0x0]
	ldrh	r0, [r6, #0x34]
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r6, #0x34]
	add		sp, #0x28
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08035bb8:	.4byte 0x00000191
_08035bbc:	.4byte 0xFFFFE003
_08035bc0:	.4byte 0x0000019B
	thumb_func_end sub_0803595c

	thumb_func_start sub_08035bc4
sub_08035bc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	mov		r9, r1
	ldr		r0, _08035c80
	add		r0, r9
	ldrb	r5, [r0, #0x0]
	add		r4, r6, #0x0
	add		r4, #0x4c
	ldrb	r0, [r4, #0x0]
	mov		r1, #0x7
	and		r1, r0
	add		r3, r6, #0x0
	add		r3, #0x8c
	ldr		r0, _08035c84
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r2, _08035c88
	lsl		r0, r5, #0x1
	add		r0, r0, r2
	mov		r7, #0x0
	ldrsh	r2, [r0, r7]
	ldr		r0, [r1, #0x0]
	add		r0, r0, r2
	lsl		r0, r0, #0x10
	str		r0, [r3, #0x0]
	ldr		r0, _08035c8c
	mov		r10, r0
	ldr		r3, _08035c90
	str		r4, [sp, #0x0]
	mov		r2, #0x0
	mov		r4, #0xf
_08035c0c:
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x5
	add		r0, r2, r0
	add		r0, r0, r3
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	lsl		r1, r0, #0x4
	cmp		r5, #0x1
	ble		_08035c30
	asr		r0, r1, #0x1
	add		r1, r1, r0
	cmp		r1, #0x31
	bgt		_08035c30
	mov		r1, #0xe0
_08035c30:
	add		r0, r6, #0x0
	add		r0, #0xf4
	add		r0, r0, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08035c0c
	mov		r4, #0x0
	lsl		r2, r5, #0x2
	mov		r8, r2
	ldr		r7, _08035c94
	mov		r12, r7
	mov		r0, #0x8a
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	mov		r3, #0x14
	neg		r3, r3
_08035c54:
	cmp		r4, #0x9
	ble		_08035ca4
	ldr		r1, [sp, #0x0]
	ldrb	r0, [r1, #0x0]
	mov		r1, #0x7
	and		r1, r0
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r3, r0
	add		r0, r12
	mov		r7, #0x0
	ldrsh	r0, [r0, r7]
	lsl		r0, r0, #0x4
	cmp		r5, #0x1
	beq		_08035ca8
	cmp		r5, #0x1
	bgt		_08035c98
	cmp		r5, #0x0
	beq		_08035ca0
	b		_08035ca8

.incbin "base.gba", 0x35C7E, 0x2

_08035c80:	.4byte 0x000007DC
_08035c84:	.4byte 0x08106b64
_08035c88:	.4byte 0x081073cc
_08035c8c:	.4byte 0x08106f0c
_08035c90:	.4byte 0x08106b84
_08035c94:	.4byte 0x08106c84

_08035c98:
	cmp		r5, #0x3
	bgt		_08035ca8
	add		r0, #0xa0
	b		_08035ca8
_08035ca0:
	sub		r0, #0x80
	b		_08035ca8
_08035ca4:
	mov		r0, #0x1
	neg		r0, r0
_08035ca8:
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	add		r3, #0x2
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_08035c54
	mov		r4, #0x0
	ldr		r0, _08035d24
	mov		r12, r0
	add		r3, r6, #0x0
_08035cbc:
	ldr		r2, [sp, #0x0]
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r1, r4, #0x3
	lsl		r0, r0, #0x5
	add		r1, r1, r0
	add		r1, r12
	ldrh	r2, [r1, #0x0]
	mov		r7, #0x9a
	lsl		r7, r7, #0x1
	add		r0, r3, r7
	strh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x2]
	add		r7, #0x2
	add		r2, r3, r7
	strh	r0, [r2, #0x0]
	ldrh	r2, [r1, #0x4]
	add		r7, #0x2
	add		r0, r3, r7
	strh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x6]
	mov		r2, #0x9d
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	strh	r0, [r1, #0x0]
	add		r3, #0x8
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_08035cbc
	add		r7, #0x3c
	add		r1, r6, r7
	mov		r2, r8
	add		r0, r2, r5
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	lsl		r0, r0, #0x3
	add		r0, r10
	str		r0, [r1, #0x0]
	ldr		r0, _08035d28
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	bl		sub_0802c6c8
	cmp		r0, #0x0
	beq		_08035d30
	ldr		r0, _08035d2c
	add		r0, r5, r0
	ldrb	r0, [r0, #0x0]
	add		r7, #0x29
	add		r1, r6, r7
	b		_08035d34

_08035d24:	.4byte 0x08106ce4
_08035d28:	.4byte 0x000007DD
_08035d2c:	.4byte 0x081072e4

_08035d30:
	ldr		r2, _08035d48
	add		r1, r6, r2
_08035d34:
	strb	r0, [r1, #0x0]
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x35D46, 0x2

_08035d48:	.4byte 0x0000019D
	thumb_func_end sub_08035bc4

	thumb_func_start sub_08035d4c
sub_08035d4c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	mov		r8, r1
	add		r6, r2, #0x0
	add		r5, r3, #0x0
	ldr		r0, _08035d90
	add		r7, r0, #0x0
	add		r7, #0x24
	ldr		r1, _08035d94
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035d76
	add		r0, r4, #0x0
	bl		sub_08055408
_08035d76:
	add		r0, r4, #0x0
	add		r0, #0x4c
	strb	r6, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_08035bc4
	cmp		r5, #0x0
	beq		_08035da0
	ldr		r0, _08035d98
	str		r0, [r4, #0x48]
	ldr		r0, _08035d9c
	b		_08035da8

_08035d90:	.4byte 0x030031A0
_08035d94:	.4byte 0x000007FE
_08035d98:	.4byte 0x00008040
_08035d9c:	.4byte 0x00002001

_08035da0:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	str		r0, [r4, #0x48]
	add		r0, #0x2
_08035da8:
	strh	r0, [r4, #0x10]
	mov		r0, #0xa
	strb	r0, [r4, #0xe]
	strb	r0, [r4, #0xd]
	strb	r0, [r4, #0xc]
	ldr		r0, _08035e3c
	str		r0, [r4, #0x18]
	ldr		r1, _08035e40
	lsl		r0, r6, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x58
	mov		r5, #0x0
	mov		r3, #0x0
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035de8
	add		r1, r4, #0x0
	add		r1, #0x68
	ldr		r0, _08035e44
	strh	r0, [r1, #0x0]
	ldrh	r1, [r2, #0x0]
	sub		r0, #0x10
	and		r0, r1
	strh	r0, [r2, #0x0]
_08035de8:
	ldr		r0, _08035e48
	add		r1, r4, r0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xec
	mov		r1, r8
	strb	r1, [r0, #0x0]
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r4, #0x34]
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r4, r1
	strb	r5, [r0, #0x0]
	add		r1, #0x4
	add		r0, r4, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r4, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r4, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r4, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r4, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r4, r1
	strb	r5, [r0, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08035e3c:	.4byte sub_08037760
_08035e40:	.4byte 0x081072e8
_08035e44:	.4byte 0x0000FFFF
_08035e48:	.4byte 0x0000017D
	thumb_func_end sub_08035d4c

	thumb_func_start sub_08035e4c
sub_08035e4c:
	push	{ r4, r5, r6, r7, lr }
	add		r2, r0, #0x0
	add		r5, r2, #0x0
	add		r5, #0x74
	ldrh	r1, [r5, #0x0]
	mov		r7, #0x80
	lsl		r7, r7, #0x8
	add		r0, r7, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035e6c
	ldr		r0, _08035e68
	and		r0, r1
	b		_08035eb2

_08035e68:	.4byte 0x00007FFF

_08035e6c:
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035eb4
	ldr		r0, _08035ebc
	and		r0, r1
	strh	r0, [r5, #0x0]
	ldr		r0, _08035ec0
	mov		r1, #0xff
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x4
	beq		_08035eb4
	ldr		r0, _08035ec4
	add		r6, r2, r0
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x0
	beq		_08035eb4
	sub		r0, #0x1
	lsl		r4, r0, #0x18
	cmp		r4, #0x0
	bne		_08035ea8
	add		r0, r2, #0x0
	mov		r1, #0xf
	bl		sub_08036c1c
_08035ea8:
	lsr		r0, r4, #0x18
	strb	r0, [r6, #0x0]
	ldrh	r1, [r5, #0x0]
	add		r0, r7, #0x0
	orr		r0, r1
_08035eb2:
	strh	r0, [r5, #0x0]
_08035eb4:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x35EBA, 0x2

_08035ebc:	.4byte 0x0000FFFE
_08035ec0:	.4byte 0x030031A0
_08035ec4:	.4byte 0x0000017D
	thumb_func_end sub_08035e4c

	thumb_func_start sub_08035ec8
sub_08035ec8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r9, r1
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	str		r2, [sp, #0x0]
	mov		r10, r9
	ldr		r1, [r5, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0xa
	and		r0, r1
	cmp		r0, #0x0
	beq		_08035f0e
	ldr		r0, _08035f7c
	and		r1, r0
	str		r1, [r5, #0x48]
	add		r0, r5, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xb8
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x1
	ble		_08035f0e
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
_08035f0e:
	ldr		r1, [r5, #0x4]
	cmp		r1, #0x0
	bge		_08035f18
	ldr		r3, _08035f80
	add		r1, r1, r3
_08035f18:
	asr		r1, r1, #0x10
	add		r0, r5, #0x0
	add		r0, #0xf0
	strh	r1, [r0, #0x0]
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_08035f2a
	ldr		r4, _08035f80
	add		r0, r0, r4
_08035f2a:
	asr		r0, r0, #0x10
	add		r1, r5, #0x0
	add		r1, #0xee
	strh	r0, [r1, #0x0]
	ldr		r1, [r5, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r5, #0x0]
	ldr		r1, [r5, #0x4]
	add		r0, r5, #0x0
	add		r0, #0x50
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r5, #0x4]
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_080353b4
	ldr		r0, [r5, #0x48]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	and		r0, r3
	cmp		r0, #0x0
	beq		_08035f84
	add		r0, r5, #0x0
	bl		sub_08031614
	add		r0, r5, #0x0
	bl		sub_080313e0
	mov		r4, #0x78
	add		r4, r4, r5
	mov		r8, r4
	b		_08036076

.incbin "base.gba", 0x35F7A, 0x2

_08035f7c:	.4byte 0xfffdffff
_08035f80:	.4byte 0x0000FFFF

_08035f84:
	add		r1, r5, #0x0
	add		r1, #0x6a
	ldrh	r2, [r1, #0x0]
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	add		r6, r5, #0x0
	add		r6, #0x58
	mov		r4, #0x78
	add		r4, r4, r5
	mov		r8, r4
	add		r7, r5, #0x0
	add		r7, #0x84
	cmp		r0, #0x0
	beq		_08035fea
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08035fb4
	ldrh	r1, [r6, #0x0]
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
	b		_08035fea
_08035fb4:
	add		r4, r5, #0x0
	add		r4, #0xb4
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	strh	r0, [r4, #0x0]
	ldrh	r1, [r6, #0x0]
	ldr		r0, _0803602c
	and		r0, r1
	strh	r0, [r6, #0x0]
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	strb	r0, [r7, #0x0]
	ldr		r0, _08036030
	ldr		r2, _08036034
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_08035fe2
	mov		r0, #0x10
	bl		sub_0804bdb0
_08035fe2:
	ldrh	r1, [r4, #0x0]
	ldr		r0, _08036038
	and		r0, r1
	strh	r0, [r4, #0x0]
_08035fea:
	add		r1, r5, #0x0
	add		r1, #0x66
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08035ffc
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
_08035ffc:
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r2, [r1, #0x0]
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x0
	ble		_0803600e
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
_0803600e:
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x0
	bge		_0803601a
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_0803601a:
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08036040
	ldrh	r1, [r6, #0x0]
	ldr		r0, _0803603c
	and		r1, r0
	b		_08036046

.incbin "base.gba", 0x3602A, 0x2

_0803602c:	.4byte 0x00007FFF
_08036030:	.4byte 0x030031A0
_08036034:	.4byte 0x00000838
_08036038:	.4byte 0x0000FFFC
_0803603c:	.4byte 0x0000FFEF

_08036040:
	ldrh	r1, [r6, #0x0]
	mov		r0, #0x10
	orr		r1, r0
_08036046:
	strh	r1, [r6, #0x0]
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x8
	bne		_08036054
	mov		r0, #0x20
	orr		r1, r0
	b		_08036058
_08036054:
	ldr		r0, _08036068
	and		r1, r0
_08036058:
	strh	r1, [r6, #0x0]
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0xa
	bne		_08036070
	ldr		r0, _0803606c
	and		r0, r1
	b		_08036074

.incbin "base.gba", 0x36066, 0x2

_08036068:	.4byte 0x0000FFDF
_0803606c:	.4byte 0x0000FFBF

_08036070:
	mov		r0, #0x40
	orr		r0, r1
_08036074:
	strh	r0, [r6, #0x0]
_08036076:
	add		r0, r5, #0x0
	mov		r1, r10
	bl		sub_08034f78
	add		r2, r5, #0x0
	add		r2, #0x64
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_080360a0
	ldrh	r1, [r5, #0x38]
	mov		r0, #0xdf
	lsl		r0, r0, #0x7
	cmp		r1, r0
	bne		_080360a0
	mov		r4, #0x0
	strb	r4, [r2, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0x7
	bl		sub_08036c1c
	strh	r4, [r5, #0x38]
_080360a0:
	ldr		r1, [r5, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r1, r0
	cmp		r1, #0x0
	bne		_08036190
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x2
	bne		_080360d6
	add		r1, r5, #0x0
	add		r1, #0x76
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xe
	bhi		_080360c2
	add		r0, #0x1
	strh	r0, [r1, #0x0]
_080360c2:
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0xf
	str		r0, [r5, #0x8]
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0xb
	add		r1, r5, #0x0
	add		r1, #0x82
	strh	r0, [r1, #0x0]
	b		_080360dc
_080360d6:
	add		r0, r5, #0x0
	add		r0, #0x76
	strh	r1, [r0, #0x0]
_080360dc:
	add		r0, r5, #0x0
	bl		sub_08031510
	ldr		r0, _0803613c
	add		r0, r9
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080360f8
	add		r0, r5, #0x0
	bl		sub_08035e4c
_080360f8:
	ldr		r0, [r5, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803610a
	add		r0, r5, #0x0
	bl		sub_08031ce4
_0803610a:
	add		r0, r5, #0x0
	bl		sub_0803361c
	add		r0, r5, #0x0
	bl		sub_080324ec
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x0]
	bl		sub_08031abc
	add		r4, r5, #0x0
	add		r4, #0xac
	ldrh	r1, [r4, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	cmp		r0, #0x0
	beq		_08036156
	add		r0, r5, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08036140
	mov		r0, #0x0
	b		_08036154

_0803613c:	.4byte 0x000007DA

_08036140:
	mov		r0, #0x3f
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036150
	add		r0, r5, #0x0
	mov		r1, #0x5
	bl		sub_08036eec
_08036150:
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
_08036154:
	strh	r0, [r4, #0x0]
_08036156:
	add		r0, r5, #0x0
	bl		sub_08034898
	add		r0, r5, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036170
	add		r0, r5, #0x0
	bl		sub_08036a14
_08036170:
	ldr		r0, _0803618c
	ldr		r0, [r0, #0x10]
	mov		r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036242
	add		r0, r5, #0x0
	mov		r1, r10
	bl		sub_08034938
	add		r0, r5, #0x0
	bl		sub_0803a9e0
	b		_08036242

_0803618c:	.4byte 0x030031A0

_08036190:
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x2
	bne		_080361b8
	add		r1, r5, #0x0
	add		r1, #0x76
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xe
	bhi		_080361a6
	add		r0, #0x1
	strh	r0, [r1, #0x0]
_080361a6:
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0xf
	str		r0, [r5, #0x8]
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0xb
	add		r1, r5, #0x0
	add		r1, #0x82
	b		_080361be
_080361b8:
	add		r1, r5, #0x0
	add		r1, #0x76
	mov		r0, #0x0
_080361be:
	strh	r0, [r1, #0x0]
	add		r0, r5, #0x0
	bl		sub_0803361c
	add		r0, r5, #0x0
	bl		sub_08035628
	ldr		r0, [r5, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_080361de
	add		r0, r5, #0x0
	bl		sub_08031ce4
_080361de:
	add		r0, r5, #0x0
	mov		r1, r10
	bl		sub_0803574c
	ldr		r0, [r5, #0x48]
	mov		r1, #0xc0
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	cmp		r0, r1
	bne		_08036208
	add		r2, r5, #0x0
	add		r2, #0x96
	mov		r0, #0xc4
	lsl		r0, r0, #0x4
	ldr		r1, [sp, #0x0]
	and		r0, r1
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08036208:
	add		r4, r5, #0x0
	add		r4, #0xac
	ldrh	r1, [r4, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	cmp		r0, #0x0
	beq		_0803623c
	add		r0, r5, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08036226
	mov		r0, #0x0
	b		_0803623a
_08036226:
	mov		r0, #0x3f
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036236
	add		r0, r5, #0x0
	mov		r1, #0x5
	bl		sub_08036eec
_08036236:
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
_0803623a:
	strh	r0, [r4, #0x0]
_0803623c:
	add		r0, r5, #0x0
	bl		sub_0803c4d8
_08036242:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x36252, 0x2
	thumb_func_end sub_08035ec8

	thumb_func_start sub_08036254
sub_08036254:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r2, _0803627c
	add		r5, r2, #0x0
	add		r5, #0x24
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08036280
	ldr		r0, [r2, #0x10]
	lsr		r0, r0, #0x2
	mov		r1, #0x3
	and		r0, r1
	lsl		r0, r0, #0x15
	mov		r3, #0x80
	lsl		r3, r3, #0xe
	add		r0, r0, r3
	lsr		r1, r0, #0x10
	b		_08036326

_0803627c:	.4byte 0x030031A0

_08036280:
	add		r0, r4, #0x0
	add		r0, #0x68
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	ldr		r0, _080362a0
	cmp		r1, r0
	ble		_080362a4
	ldr		r0, [r2, #0x10]
	lsr		r0, r0, #0x2
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_080362a4
	mov		r1, #0x20
	b		_08036326

.incbin "base.gba", 0x3629E, 0x2

_080362a0:	.4byte 0x00000127

_080362a4:
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r3, r4, r0
	ldrh	r2, [r3, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r2
	cmp		r0, #0x0
	beq		_080362c4
	mov		r1, #0x90
	lsl		r1, r1, #0x1
	ldr		r0, _080362c0
	b		_08036318

.incbin "base.gba", 0x362BE, 0x2

_080362c0:	.4byte 0x0000F7FF

_080362c4:
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
	and		r0, r2
	cmp		r0, #0x0
	beq		_080362e4
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r2
	mov		r1, #0xc0
	cmp		r0, #0x0
	beq		_080362dc
	mov		r1, #0xa0
_080362dc:
	ldr		r0, _080362e0
	b		_08036318

_080362e0:	.4byte 0x00009FFF

_080362e4:
	add		r0, r4, #0x0
	add		r0, #0x85
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x50
	bne		_08036302
	add		r0, r5, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xc
	bne		_08036302
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	b		_08036326
_08036302:
	mov		r1, #0xca
	lsl		r1, r1, #0x1
	add		r3, r4, r1
	ldrh	r2, [r3, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r2
	cmp		r0, #0x0
	beq		_08036324
	mov		r1, #0xe0
	ldr		r0, _08036320
_08036318:
	and		r0, r2
	strh	r0, [r3, #0x0]
	b		_08036326

.incbin "base.gba", 0x3631E, 0x2

_08036320:	.4byte 0x00007FFF

_08036324:
	mov		r1, #0x0
_08036326:
	add		r0, r1, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3632E, 0x2
	thumb_func_end sub_08036254

	thumb_func_start sub_08036330
sub_08036330:
	push	{ r4, r5, r6, lr }
	mov		r12, r0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r6, #0x7
	and		r6, r0
	mov		r0, r12
	add		r0, #0xec
	ldrb	r4, [r0, #0x0]
	sub		r0, #0x30
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0803634c
	neg		r0, r0
_0803634c:
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_0803636c
	cmp		r0, #0xf
	bls		_08036358
	mov		r0, #0xf
_08036358:
	ldr		r1, _08036368
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r3, r12
	add		r3, #0xd8
	b		_08036380

.incbin "base.gba", 0x36366, 0x2

_08036368:	.4byte 0x08107432

_0803636c:
	mov		r2, r12
	add		r2, #0xd8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3
	and		r0, r1
	mov		r1, #0x0
	add		r3, r2, #0x0
	cmp		r0, #0x2
	bne		_08036380
	mov		r1, #0x1
_08036380:
	ldrh	r5, [r3, #0x0]
	ldr		r0, _080363bc
	and		r0, r5
	cmp		r0, #0x0
	beq		_080363c8
	ldr		r0, [r3, #0x0]
	lsl		r0, r0, #0x13
	lsr		r0, r0, #0x15
	sub		r0, #0x1
	ldr		r2, _080363c0
	add		r4, r2, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	ldr		r6, _080363c4
	add		r2, r6, #0x0
	and		r2, r5
	orr		r2, r0
	strh	r2, [r3, #0x0]
	ldr		r0, [r3, #0x0]
	lsl		r0, r0, #0x13
	lsr		r0, r0, #0x15
	cmp		r0, r1
	bls		_08036476
	and		r1, r4
	lsl		r0, r1, #0x2
	and		r2, r6
	orr		r2, r0
	strh	r2, [r3, #0x0]
	b		_08036476

.incbin "base.gba", 0x363BA, 0x2

_080363bc:	.4byte 0x00001FFC
_080363c0:	.4byte 0x000007FF
_080363c4:	.4byte 0xFFFFE003

_080363c8:
	cmp		r1, #0x0
	beq		_08036476
	ldr		r0, _080363ec
	and		r1, r0
	lsl		r1, r1, #0x2
	ldr		r0, _080363f0
	and		r0, r5
	orr		r0, r1
	strh	r0, [r3, #0x0]
	add		r5, r3, #0x0
	ldr		r0, [r3, #0x0]
	lsl		r1, r0, #0x1e
	lsr		r0, r1, #0x1e
	cmp		r0, #0x1
	bhi		_080363f4
	add		r0, #0x1
	b		_080363f6

.incbin "base.gba", 0x363EA, 0x2

_080363ec:	.4byte 0x000007FF
_080363f0:	.4byte 0xFFFFE003

_080363f4:
	mov		r0, #0x0
_080363f6:
	mov		r1, #0x3
	and		r1, r0
	ldrb	r2, [r5, #0x0]
	mov		r0, #0x4
	neg		r0, r0
	and		r0, r2
	orr		r0, r1
	strb	r0, [r5, #0x0]
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x1d
	add		r1, #0x1
	lsl		r1, r1, #0x5
	ldrb	r2, [r3, #0x1]
	mov		r0, #0x1f
	and		r0, r2
	orr		r0, r1
	strb	r0, [r3, #0x1]
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r0, r12
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803643c
	lsl		r0, r6, #0x9
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x1e
	lsr		r1, r1, #0x1d
	ldr		r2, _08036438
	b		_08036446

_08036438:	.4byte 0x083447c0

_0803643c:
	lsl		r0, r6, #0x9
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x1e
	lsr		r1, r1, #0x1d
	ldr		r2, _0803647c
_08036446:
	add		r1, r1, r2
	add		r5, r0, r1
	mov		r0, #0x1
	bl		sub_08028130
	lsl		r4, r4, #0x5
	add		r0, r4, r0
	mov		r2, #0x81
	lsl		r2, r2, #0x1
	add		r1, r0, r2
	ldrh	r0, [r5, #0x0]
	strh	r0, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r4, r4, r0
	mov		r0, #0x82
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
_08036476:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0803647c:	.4byte 0x083447e0
	thumb_func_end sub_08036330

	thumb_func_start sub_08036480
sub_08036480:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r6, _0803651c
	ldr		r0, _08036520
	add		r5, r6, r0
	cmp		r5, #0x0
	bne		_08036490
	b		_080365e0
_08036490:
	add		r0, r4, #0x0
	bl		sub_08037310
	cmp		r0, #0x0
	beq		_0803649c
	b		_080365cc
_0803649c:
	ldr		r1, _08036524
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	beq		_080364a8
	b		_080365cc
_080364a8:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080364b4
	b		_080365cc
_080364b4:
	mov		r3, #0x14
	ldrsh	r0, [r5, r3]
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	asr		r0, r0, #0x8
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	add		r0, r4, #0x0
	add		r0, #0x88
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	add		r7, r0, #0x0
	cmp		r1, #0x0
	bge		_080364d6
	neg		r1, r1
_080364d6:
	lsl		r0, r1, #0x8
	lsr		r1, r0, #0x10
	cmp		r1, #0xe
	bls		_080364e0
	mov		r1, #0xe
_080364e0:
	ldr		r0, _08036528
	add		r0, r1, r0
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	bge		_080364f4
	neg		r1, r1
_080364f4:
	asr		r1, r1, #0x15
	cmp		r1, #0xe
	ble		_080364fc
	mov		r1, #0xe
_080364fc:
	ldr		r0, _0803652c
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r3, r0
	bls		_08036508
	add		r3, r0, #0x0
_08036508:
	ldr		r1, _08036530
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_08036534
	asr		r0, r0, #0x18
	add		r0, r3, r0
	b		_08036538

.incbin "base.gba", 0x3651A, 0x2

_0803651c:	.4byte 0x030031A0
_08036520:	.4byte 0x00000848
_08036524:	.4byte 0x00000838
_08036528:	.4byte 0x08107452
_0803652c:	.4byte 0x08107461
_08036530:	.4byte 0x00000BDA

_08036534:
	asr		r0, r0, #0x18
	sub		r0, r3, r0
_08036538:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0x82
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_0803654c
	neg		r0, r0
_0803654c:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x12
	ble		_08036558
	mov		r1, #0x12
_08036558:
	mov		r0, #0x12
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	sub		r0, r0, r1
	lsl		r1, r0, #0x10
	asr		r0, r1, #0x10
	cmp		r3, r0
	ble		_0803656a
	lsr		r3, r1, #0x10
_0803656a:
	cmp		r2, #0x0
	beq		_0803659c
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_08036576
	mov		r3, #0x0
_08036576:
	cmp		r3, #0x0
	beq		_08036590
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x0
	blt		_08036588
	add		r0, r3, #0x2
	sub		r0, r2, r0
	b		_0803658c
_08036588:
	add		r0, r3, #0x2
	add		r0, r2, r0
_0803658c:
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
_08036590:
	lsl		r0, r2, #0x18
	asr		r1, r0, #0x18
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	asr		r2, r1, #0x1
	b		_080365da
_0803659c:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x0
	blt		_080365ae
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_080365b8
	add		r0, r2, r3
	b		_080365bc
_080365ae:
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	blt		_080365b8
	add		r0, r2, r3
	b		_080365bc
_080365b8:
	add		r0, r3, #0x2
	sub		r0, r2, r0
_080365bc:
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	lsl		r0, r2, #0x18
	asr		r1, r0, #0x18
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	asr		r2, r1, #0x1
	b		_080365da
_080365cc:
	mov		r3, #0x14
	ldrsh	r0, [r5, r3]
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	asr		r2, r0, #0x9
_080365da:
	mov		r0, #0x7f
	and		r2, r0
	b		_080365e2
_080365e0:
	mov		r2, #0x0
_080365e2:
	add		r0, r2, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x365EA, 0x2
	thumb_func_end sub_08036480

	thumb_func_start sub_080365ec
sub_080365ec:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	mov		r12, r1
	add		r0, #0xd8
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x1d
	ldr		r0, [r4, #0x48]
	mov		r1, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036624
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _0803661c
	cmp		r1, r0
	bgt		_08036624
	ldr		r0, _08036620
	ldr		r3, [r0, #0x10]
	mov		r0, #0x1
	and		r3, r0
	b		_08036626

.incbin "base.gba", 0x3661A, 0x2

_0803661c:	.4byte 0x009FFFFF
_08036620:	.4byte 0x030031A0

_08036624:
	mov		r3, #0x0
_08036626:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	add		r7, r2, #0x0
	cmp		r0, #0x0
	bne		_08036658
	mov		r5, #0x1
	and		r5, r6
	sub		r2, #0x2f
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1e
	and		r0, r1
	cmp		r0, #0xc
	bls		_08036654
	lsr		r0, r6, #0x1
	mov		r1, #0x1
	and		r0, r1
	add		r0, r5, r0
	add		r3, r3, r0
	b		_0803665c
_08036654:
	add		r3, r3, r5
	b		_0803665c
_08036658:
	add		r2, r4, #0x0
	add		r2, #0x85
_0803665c:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x5c
	bne		_08036674
	ldrh	r1, [r7, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036674
	add		r0, r3, #0x4
	lsl		r0, r0, #0x18
	b		_08036676
_08036674:
	lsl		r0, r3, #0x18
_08036676:
	lsr		r1, r0, #0x18
	mov		r2, r12
	ldrh	r0, [r2, #0x2]
	add		r0, r0, r1
	strh	r0, [r2, #0x2]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x36686, 0x2
	thumb_func_end sub_080365ec

	thumb_func_start sub_08036688
sub_08036688:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r12, r0
	mov		r9, r2
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r8, r1
	ldr		r0, [r0, #0x6c]
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x19
	mov		r0, r12
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	asr		r0, r0, #0x17
	mov		r1, #0x14
	sub		r5, r1, r0
	mov		r2, #0xcd
	lsl		r2, r2, #0x1
	add		r2, r12
	ldrb	r0, [r2, #0x0]
	mov		r3, #0xf3
	and		r3, r0
	mov		r7, #0x0
	strb	r3, [r2, #0x0]
	add		r4, #0x1
	cmp		r4, r5
	ble		_080366c4
	mov		r4, #0x0
_080366c4:
	cmp		r4, #0x0
	bne		_080366d4
	mov		r1, #0x8
	add		r0, r3, #0x0
	orr		r0, r1
	strb	r0, [r2, #0x0]
	asr		r6, r5, #0x1f
	b		_080366e8
_080366d4:
	asr		r1, r5, #0x1f
	sub		r0, r5, r1
	asr		r0, r0, #0x1
	add		r6, r1, #0x0
	cmp		r4, r0
	bne		_080366e8
	mov		r1, #0x4
	add		r0, r3, #0x0
	orr		r0, r1
	strb	r0, [r2, #0x0]
_080366e8:
	mov		r3, r12
	add		r3, #0x6d
	lsl		r2, r4, #0x1
	ldrb	r1, [r3, #0x0]
	mov		r0, #0x1
	and		r0, r1
	orr		r0, r2
	strb	r0, [r3, #0x0]
	mov		r0, #0xce
	lsl		r0, r0, #0x1
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	cmp		r0, #0x0
	beq		_08036712
	mov		r2, #0x80
	cmp		r0, #0x1
	bne		_08036712
	mov		r2, #0x80
	lsl		r2, r2, #0x2
_08036712:
	mov		r0, #0x3f
	mov		r1, r8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08036728
	cmp		r0, #0x3f
	beq		_08036728
	lsr		r1, r1, #0x6
	mov		r0, #0x1
	and		r1, r0
	b		_08036734
_08036728:
	mov		r0, r12
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mvn		r0, r0
	lsr		r1, r0, #0x1f
_08036734:
	sub		r0, r5, r6
	asr		r0, r0, #0x1
	cmp		r4, r0
	bge		_08036744
	mov		r0, #0x1
	sub		r0, r0, r1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
_08036744:
	mov		r0, r9
	cmp		r1, #0x0
	beq		_0803674c
	add		r0, r0, r2
_0803674c:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08036688

	thumb_func_start sub_08036758
sub_08036758:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r10, r2
	ldr		r5, _080367fc
	add		r4, r6, #0x0
	add		r4, #0xec
	ldrb	r0, [r4, #0x0]
	mov		r8, r0
	bl		sub_0803d0e4
	add		r7, r0, #0x0
	ldr		r1, _08036800
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, r6
	beq		_080367de
	ldr		r2, _08036804
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_080367de
	ldr		r1, _08036808
	add		r0, r6, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bne		_080367b6
	ldr		r0, [r5, #0x10]
	mov		r1, #0x7
	and		r0, r1
	ldrb	r2, [r4, #0x0]
	and		r1, r2
	cmp		r0, r1
	beq		_080367de
_080367b6:
	mov		r0, #0x1
	neg		r0, r0
	mov		r1, r8
	lsl		r1, r1, #0x3
	str		r1, [sp, #0x0]
	mov		r2, #0xff
	lsl		r2, r2, #0x3
	add		r2, r2, r5
	mov		r9, r2
	cmp		r3, r0
	beq		_080367ce
	b		_08036938
_080367ce:
	ldr		r0, [r5, #0x10]
	mov		r1, #0x3
	and		r0, r1
	ldrb	r2, [r4, #0x0]
	and		r1, r2
	cmp		r0, r1
	beq		_080367de
	b		_08036938
_080367de:
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	strb	r1, [r7, #0x0]
	mov		r1, r10
	strb	r1, [r7, #0x1]
	mov		r1, #0x24
	ldrsh	r2, [r6, r1]
	ldr		r1, _0803680c
	mov		r9, r0
	cmp		r2, r1
	bgt		_08036810
	mov		r1, #0x0
	b		_08036822

.incbin "base.gba", 0x367FA, 0x2

_080367fc:	.4byte 0x030031A0
_08036800:	.4byte 0x00000838
_08036804:	.4byte 0x000007FE
_08036808:	.4byte 0x08106ecc
_0803680c:	.4byte 0x000001FF

_08036810:
	ldr		r0, _0803681c
	cmp		r2, r0
	bgt		_08036820
	mov		r1, #0x1
	b		_08036822

.incbin "base.gba", 0x3681A, 0x2

_0803681c:	.4byte 0x000003FF

_08036820:
	mov		r1, #0x2
_08036822:
	strb	r1, [r7, #0x2]
	mov		r2, #0xce
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08037310
	cmp		r0, #0x0
	beq		_0803683c
	add		r0, r6, #0x0
	add		r0, #0x6c
	ldrb	r0, [r0, #0x0]
_0803683c:
	strb	r0, [r7, #0x3]
	mov		r0, r8
	lsl		r4, r0, #0x3
	ldr		r5, _08036888
	add		r5, r4, r5
	mov		r2, r8
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_0803d0fc
	add		r7, r0, #0x0
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080365ec
	mov		r1, #0x0
	mov		r0, #0x3f
	mov		r2, r10
	and		r0, r2
	str		r4, [sp, #0x0]
	cmp		r0, #0x0
	beq		_0803686c
	cmp		r0, #0x3f
	bne		_0803689e
_0803686c:
	add		r0, r6, #0x0
	bl		sub_08037310
	cmp		r0, #0x0
	beq		_0803688c
	add		r0, r6, #0x0
	add		r0, #0x6d
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x1
	and		r1, r0
	neg		r0, r1
	orr		r0, r1
	b		_08036896

.incbin "base.gba", 0x36886, 0x2

_08036888:	.4byte 0x030022D0

_0803688c:
	add		r0, r6, #0x0
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mvn		r0, r0
_08036896:
	asr		r1, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r1, r0
_0803689e:
	ldrh	r0, [r5, #0x4]
	orr		r1, r0
	strh	r1, [r5, #0x4]
	ldr		r0, _080369a4
	ldr		r1, [sp, #0x0]
	add		r2, r1, r0
	add		r0, r6, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_080368b8
	mov		r1, #0x3
_080368b8:
	lsl		r0, r1, #0xa
	ldrh	r1, [r2, #0x6]
	orr		r0, r1
	strh	r0, [r2, #0x6]
	mov		r2, r9
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080368d8
	add		r0, r6, #0x0
	mov		r1, r10
	add		r2, r7, #0x0
	bl		sub_08036688
	add		r7, r0, #0x0
_080368d8:
	ldr		r0, _080369a8
	ldr		r1, _080369ac
	add		r2, r0, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x40
	and		r0, r1
	mov		r9, r2
	cmp		r0, #0x0
	beq		_080368ec
	b		_080369f6
_080368ec:
	add		r0, r6, #0x0
	add		r0, #0xec
	ldrb	r2, [r0, #0x0]
	sub		r0, #0x1c
	ldr		r1, [r0, #0x0]
	mov		r8, r0
	cmp		r1, #0x0
	beq		_08036900
	cmp		r7, r1
	beq		_08036938
_08036900:
	lsl		r0, r2, #0xb
	ldr		r2, _080369b0
	add		r5, r0, r2
	mov		r1, #0xce
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x4
	cmp		r0, #0x0
	beq		_08036920
	mov		r4, #0x80
	cmp		r0, #0x1
	bne		_08036920
	mov		r4, #0x80
	lsl		r4, r4, #0x2
_08036920:
	bl		sub_08029f34
	lsr		r3, r4, #0x1
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	orr		r3, r1
	add		r1, r7, #0x0
	add		r2, r5, #0x0
	bl		sub_08029ee4
	mov		r2, r8
	str		r7, [r2, #0x0]
_08036938:
	mov		r0, r9
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_080369f6
	add		r4, r6, #0x0
	add		r4, #0x4c
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_080369b8
	add		r0, r6, #0x0
	bl		sub_08036330
	ldrb	r0, [r4, #0x0]
	mov		r4, #0x7
	and		r4, r0
	add		r0, r6, #0x0
	bl		sub_08036254
	lsl		r4, r4, #0x9
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r0, r0, r4
	ldr		r1, _080369b4
	add		r4, r0, r1
	add		r1, r6, #0x0
	add		r1, #0xd4
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	beq		_080369f6
	str		r4, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0xec
	ldrb	r0, [r0, #0x0]
	add		r0, #0x8
	lsl		r0, r0, #0x5
	add		r0, #0x6
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0xd
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
	b		_080369f6

.incbin "base.gba", 0x369A2, 0x2

_080369a4:	.4byte 0x030022D0
_080369a8:	.4byte 0x030031C4
_080369ac:	.4byte 0x000007D4
_080369b0:	.4byte 0x06014000
_080369b4:	.4byte 0x08344606

_080369b8:
	add		r0, r6, #0x0
	bl		sub_08036254
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _08036a0c
	add		r4, r0, r2
	add		r1, r6, #0x0
	add		r1, #0xd4
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	beq		_080369f6
	str		r4, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0xec
	ldrb	r0, [r0, #0x0]
	add		r0, #0x8
	lsl		r0, r0, #0x5
	add		r0, #0x6
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0xd
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
_080369f6:
	ldr		r0, _08036a10
	ldr		r1, [sp, #0x0]
	add		r0, r1, r0
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08036a0c:	.4byte 0x08345606
_08036a10:	.4byte 0x030022D0
	thumb_func_end sub_08036758

	thumb_func_start sub_08036a14
sub_08036a14:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	ldr		r0, _08036ac8
	mov		r1, #0x0
	mov		r9, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	mov		r10, r2
	mov		r8, r1
	ldr		r3, _08036acc
	add		r0, r0, r3
	ldrb	r0, [r0, #0x0]
	cmp		r9, r0
	bge		_08036b20
_08036a3a:
	mov		r0, r8
	lsl		r1, r0, #0x2
	ldr		r2, _08036ad0
	ldr		r3, _08036ad4
	add		r0, r2, r3
	add		r0, r0, r1
	ldr		r6, [r0, #0x0]
	cmp		r7, r6
	beq		_08036b10
	ldr		r0, _08036ac8
	add		r2, r0, #0x0
	add		r2, #0x24
	add		r0, r7, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7f
	add		r4, r1, #0x0
	and		r4, r0
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	add		r5, r1, #0x0
	and		r5, r0
	cmp		r4, r5
	beq		_08036a90
	add		r0, r2, #0x0
	add		r1, r4, #0x0
	str		r2, [sp, #0x0]
	bl		sub_0802c78c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r2, [sp, #0x0]
	cmp		r0, r5
	beq		_08036a90
	add		r0, r2, #0x0
	add		r1, r4, #0x0
	bl		sub_0802c774
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r5
	bne		_08036b10
_08036a90:
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_080290f4
	cmp		r0, #0x0
	beq		_08036afc
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_0802911c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x37
	bgt		_08036b10
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_080290f4
	cmp		r0, #0x0
	beq		_08036adc
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08036ad8
	add		r0, r7, #0x0
	b		_08036aea

_08036ac8:	.4byte 0x030031A0
_08036acc:	.4byte 0x00000815
_08036ad0:	.4byte 0x030031C4
_08036ad4:	.4byte 0x000007F4

_08036ad8:
	add		r0, r7, #0x0
	b		_08036af4
_08036adc:
	add		r0, r6, #0x0
	add		r1, r7, #0x0
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08036af2
	add		r0, r6, #0x0
_08036aea:
	mov		r1, #0x9
	bl		sub_08036c1c
	b		_08036b10
_08036af2:
	add		r0, r6, #0x0
_08036af4:
	mov		r1, #0x8
	bl		sub_08036c1c
	b		_08036b10
_08036afc:
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_0802911c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r10, r0
	ble		_08036b10
	mov		r10, r0
	mov		r9, r6
_08036b10:
	mov		r0, #0x1
	add		r8, r0
	ldr		r1, _08036b44
	ldr		r2, _08036b48
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r8, r0
	blt		_08036a3a
_08036b20:
	mov		r3, r9
	cmp		r3, #0x0
	beq		_08036b74
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_080290f4
	cmp		r0, #0x0
	beq		_08036b56
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08036b4c
	add		r0, r7, #0x0
	b		_08036b64

.incbin "base.gba", 0x36B42, 0x2

_08036b44:	.4byte 0x030031C4
_08036b48:	.4byte 0x000007F1

_08036b4c:
	add		r0, r7, #0x0
	mov		r1, #0x8
	bl		sub_08036c1c
	b		_08036b74
_08036b56:
	mov		r0, r9
	add		r1, r7, #0x0
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08036b6c
	mov		r0, r9
_08036b64:
	mov		r1, #0x9
	bl		sub_08036c1c
	b		_08036b74
_08036b6c:
	mov		r0, r9
	mov		r1, #0x8
	bl		sub_08036c1c
_08036b74:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08036a14

	thumb_func_start sub_08036b84
sub_08036b84:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	ldr		r1, _08036c04
	add		r0, r1, #0x0
	add		r0, #0x24
	mov		r2, #0x0
	mov		r8, r2
	mov		r7, #0x80
	lsl		r7, r7, #0x5
	mov		r2, #0xe7
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	ldr		r4, [r1, #0x0]
	add		r1, r4, #0x0
	bl		sub_0802c404
	add		r6, r0, #0x0
	mov		r0, #0x7f
	and		r6, r0
	cmp		r4, #0x0
	beq		_08036be8
_08036bb2:
	ldr		r0, [r4, #0x54]
	cmp		r0, r5
	beq		_08036be2
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	cmp		r0, r6
	bne		_08036be2
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_080290f4
	cmp		r0, #0x0
	beq		_08036be2
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0802911c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r7, r0
	ble		_08036be2
	add		r7, r0, #0x0
	mov		r8, r4
_08036be2:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_08036bb2
_08036be8:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_08036c10
	add		r0, r5, #0x0
	mov		r1, r8
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08036c08
	add		r0, r5, #0x0
	mov		r1, #0x9
	bl		sub_08036c1c
	b		_08036c10

_08036c04:	.4byte 0x030031A0

_08036c08:
	add		r0, r5, #0x0
	mov		r1, #0x8
	bl		sub_08036c1c
_08036c10:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x36C1A, 0x2
	thumb_func_end sub_08036b84

	thumb_func_start sub_08036c1c
sub_08036c1c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08036c68
	cmp		r5, #0x8
	beq		_08036c56
	cmp		r5, #0x8
	bgt		_08036c3e
	cmp		r5, #0x2
	beq		_08036c4e
	b		_08036c68
_08036c3e:
	cmp		r5, #0x9
	beq		_08036c60
	cmp		r5, #0xf
	bne		_08036c68
	add		r0, r4, #0x0
	bl		sub_080549d0
	b		_08036c68
_08036c4e:
	add		r0, r4, #0x0
	bl		sub_080543c0
	b		_08036c68
_08036c56:
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_0805441c
	b		_08036c68
_08036c60:
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_0805441c
_08036c68:
	sub		r0, r5, #0x1
	cmp		r0, #0x6
	bhi		_08036cbe
	lsl		r0, r0, #0x2
	ldr		r1, _08036c78
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08036c78:	.4byte 0x08036c7c
_08036c7c:	.4byte 0x08036c98

.incbin "base.gba", 0x36C80, 0x18

_08036c98:
.incbin "base.gba", 0x36C98, 0x4
.incbin "base.gba", 0x36C9C, 0x4
_08036ca0:
.incbin "base.gba", 0x36CA0, 0x4
.incbin "base.gba", 0x36CA4, 0x4
_08036ca8:
.incbin "base.gba", 0x36CA8, 0x4
.incbin "base.gba", 0x36CAC, 0x4
_08036cb0:
.incbin "base.gba", 0x36CB0, 0x4
.incbin "base.gba", 0x36CB4, 0x4

.incbin "base.gba", 0x36CB8, 0x6

_08036cbe:
	sub		r0, r5, #0x3
	cmp		r0, #0xb
	bhi		_08036d2a
	lsl		r0, r0, #0x2
	ldr		r1, _08036cd0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x36CCE, 0x2

_08036cd0:	.4byte 0x08036cd4
_08036cd4:	.4byte 0x08036d04

.incbin "base.gba", 0x36CD8, 0x2C
	thumb_func_end sub_08036c1c


.incbin "base.gba", 0x36D04, 0x8

_08036d0c:

.incbin "base.gba", 0x36D0C, 0x1E

_08036d2a:

.incbin "base.gba", 0x36D2A, 0x6
	thumb_func_start sub_08036d30
sub_08036d30:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r3, r2, #0x18
	ldrh	r2, [r4, #0x24]
	add		r0, #0x6e
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	sub		r0, #0x2
	cmp		r0, #0xd
	bhi		_08036db2
	lsl		r0, r0, #0x2
	ldr		r1, _08036d54
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x36D52, 0x2

_08036d54:	.4byte 0x08036d58
_08036d58:	.4byte 0x08036d98

.incbin "base.gba", 0x36D5C, 0x34
	thumb_func_end sub_08036d30


.incbin "base.gba", 0x36D90, 0x12

_08036da2:

.incbin "base.gba", 0x36DA2, 0x10

_08036db2:

.incbin "base.gba", 0x36DB2, 0x16
_08036dc8:	.4byte 0x08036dcc
_08036dcc:	.4byte 0x08036de8

.incbin "base.gba", 0x36DD0, 0x20

_08036df0:

.incbin "base.gba", 0x36DF0, 0x10

_08036e00:

.incbin "base.gba", 0x36E00, 0xE

_08036e0e:

.incbin "base.gba", 0x36E0E, 0x1A
_08036e28:	.4byte 0x08036e2c
_08036e2c:	.4byte 0x08036e5c

.incbin "base.gba", 0x36E30, 0x34

_08036e64:

.incbin "base.gba", 0x36E64, 0x8
_08036e6c:

.incbin "base.gba", 0x36E6C, 0x8
_08036e74:

.incbin "base.gba", 0x36E74, 0xE

_08036e82:

.incbin "base.gba", 0x36E82, 0x6
	thumb_func_start sub_08036e88
sub_08036e88:
	push	{ r4, r5, lr }
	mov		r12, r0
	mov		r2, r12
	add		r2, #0x6e
	ldrb	r1, [r2, #0x0]
	mov		r5, #0x10
	neg		r5, r5
	add		r0, r5, #0x0
	and		r0, r1
	strb	r0, [r2, #0x0]
	ldrh	r1, [r2, #0x0]
	ldr		r4, _08036ee8
	add		r0, r4, #0x0
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrb	r1, [r2, #0x1]
	mov		r3, #0x1
	add		r0, r3, #0x0
	and		r0, r1
	strb	r0, [r2, #0x1]
	mov		r1, r12
	add		r1, #0x70
	ldrb	r2, [r1, #0x0]
	add		r0, r5, #0x0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldrh	r2, [r1, #0x0]
	add		r0, r4, #0x0
	and		r0, r2
	strh	r0, [r1, #0x0]
	ldrb	r2, [r1, #0x1]
	add		r0, r3, #0x0
	and		r0, r2
	strb	r0, [r1, #0x1]
	mov		r0, r12
	add		r0, #0x72
	ldrb	r1, [r0, #0x0]
	and		r5, r1
	strb	r5, [r0, #0x0]
	ldrh	r1, [r0, #0x0]
	and		r4, r1
	strh	r4, [r0, #0x0]
	ldrb	r1, [r0, #0x1]
	and		r3, r1
	strb	r3, [r0, #0x1]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08036ee8:	.4byte 0xFFFFFE0F
	thumb_func_end sub_08036e88

	thumb_func_start sub_08036eec
sub_08036eec:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	mov		r3, #0x0
	ldr		r1, [r7, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08036f02
	b		_080370ae
_08036f02:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r1, r0
	cmp		r1, #0x0
	bne		_08036f0e
	b		_080370ae
_08036f0e:
	ldr		r1, _08036f34
	mov		r4, #0x0
	ldr		r2, _08036f38
	add		r0, r1, r2
	ldr		r2, [r0, #0x0]
	mov		r12, r1
	cmp		r2, #0x0
	bge		_08036f3c
	mov		r0, #0x1
	and		r0, r2
	cmp		r0, #0x0
	bne		_08036f98
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r2, r0
	cmp		r2, #0x0
	beq		_08036f92
	b		_08036f98

.incbin "base.gba", 0x36F32, 0x2

_08036f34:	.4byte 0x030031A0
_08036f38:	.4byte 0x00000CAC

_08036f3c:
	ldr		r0, _08036f5c
	add		r0, r12
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08036f60
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08036f80
	b		_08036f92

.incbin "base.gba", 0x36F5A, 0x2

_08036f5c:	.4byte 0x000007FE

_08036f60:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_08036f98
	mov		r1, #0x0
	ldr		r0, _08036f7c
	ldrh	r0, [r0, #0x12]
	cmp		r0, #0x0
	bne		_08036f74
	mov		r1, #0x1
_08036f74:
	mov		r4, #0x0
	cmp		r1, #0x0
	beq		_08036f92
	b		_08036f98

_08036f7c:	.4byte 0x03002FE0

_08036f80:
	mov		r1, #0x0
	ldr		r0, _08036fa8
	ldrh	r0, [r0, #0xc]
	cmp		r0, #0x0
	bne		_08036f8c
	mov		r1, #0x1
_08036f8c:
	cmp		r1, #0x0
	beq		_08036f92
	mov		r4, #0x1
_08036f92:
	cmp		r4, #0x0
	bne		_08036f98
	b		_080370ae
_08036f98:
	sub		r6, r5, #0x1
	cmp		r6, #0x4
	bhi		_08036fd2
	lsl		r0, r6, #0x2
	ldr		r1, _08036fac
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08036fa8:	.4byte 0x03002FE0
_08036fac:	.4byte 0x08036fb0
_08036fb0:	.4byte 0x08036fc8

.incbin "base.gba", 0x36FB4, 0x10
	thumb_func_end sub_08036eec


.incbin "base.gba", 0x36FC4, 0xE

_08036fd2:

.incbin "base.gba", 0x36FD2, 0xE
_08036fe0:

.incbin "base.gba", 0x36FE0, 0x28
_08037008:	.4byte 0x00000838
_0803700c:	.4byte 0x08037010
_08037010:	.4byte 0x08037060

.incbin "base.gba", 0x37014, 0x9A

_080370ae:

.incbin "base.gba", 0x370AE, 0x6
	thumb_func_start sub_080370b4
sub_080370b4:
	add		r1, r0, #0x0
	ldr		r0, _080370d8
	cmp		r1, r0
	beq		_0803710a
	cmp		r1, r0
	bgt		_080370f0
	sub		r0, #0x3
	cmp		r1, r0
	beq		_0803710a
	cmp		r1, r0
	bgt		_080370dc
_080370ca:
	sub		r0, #0x2
	cmp		r1, r0
	beq		_0803710a
	add		r0, #0x1
	cmp		r1, r0
	beq		_08037118
	b		_0803711c

_080370d8:	.4byte 0x00001005

_080370dc:
	ldr		r0, _080370ec
	cmp		r1, r0
	beq		_08037118
	add		r0, #0x1
	cmp		r1, r0
	beq		_0803710a
	b		_0803711c

.incbin "base.gba", 0x370EA, 0x2

_080370ec:	.4byte 0x00001003

_080370f0:
	ldr		r0, _08037110
	cmp		r1, r0
	beq		_0803710a
	cmp		r1, r0
	ble		_080370ca
	ldr		r0, _08037114
	cmp		r1, r0
	beq		_0803710a
	cmp		r1, r0
	blt		_08037118
	add		r0, #0x1
	cmp		r1, r0
	bne		_0803711c
_0803710a:
	mov		r0, #0x1
	b		_0803711e

.incbin "base.gba", 0x3710E, 0x2

_08037110:	.4byte 0x00002002
_08037114:	.4byte 0x00002004

_08037118:
	mov		r0, #0x3
	b		_0803711e
_0803711c:
	mov		r0, #0x0
_0803711e:
	bx		lr
	thumb_func_end sub_080370b4

	thumb_func_start sub_08037120
sub_08037120:
	push	{ r4, lr }
	mov		r12, r0
	ldr		r4, [sp, #0x0+0x8]
	str		r1, [r0, #0x0]
	str		r2, [r0, #0x4]
	str		r3, [r0, #0x8]
	cmp		r2, #0x0
	bge		_08037134
	ldr		r0, _0803715c
	add		r2, r2, r0
_08037134:
	asr		r1, r2, #0x10
	mov		r0, r12
	add		r0, #0xf0
	strh	r1, [r0, #0x0]
	sub		r0, #0x9a
	strh	r4, [r0, #0x0]
	ldr		r0, _0803715c
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	and		r0, r1
	mov		r2, r12
	add		r2, #0x7a
	strh	r0, [r2, #0x0]
	and		r0, r1
	mov		r1, r12
	add		r1, #0x7c
	strh	r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0803715c:	.4byte 0x0000FFFF
	thumb_func_end sub_08037120

	thumb_func_start sub_08037160
sub_08037160:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r4, #0xec
	ldrb	r0, [r4, #0x0]
	add		r0, #0x8
	lsl		r0, r0, #0x5
	add		r1, r1, r0
	add		r0, r5, #0x0
	mov		r2, #0x8
	bl		sub_08071b68
	mov		r0, #0x1
	bl		sub_08028168
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3718C, 0x94
	thumb_func_end sub_08037160

	thumb_func_start sub_08037220
sub_08037220:
	add		r1, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x3
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_08037236
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	beq		_08037254
_08037236:
	add		r0, r1, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0xf
	beq		_08037254
	add		r0, r1, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8
	bne		_08037258
	add		r0, r1, #0x0
	add		r0, #0x9c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x3c
	bhi		_08037258
_08037254:
	mov		r0, #0x1
	b		_0803725a
_08037258:
	mov		r0, #0x0
_0803725a:
	bx		lr
	thumb_func_end sub_08037220

	thumb_func_start sub_0803725c
sub_0803725c:
	push	{ lr }
	cmp		r1, #0x0
	beq		_0803726a
	mov		r1, #0x9
	bl		sub_08036c1c
	b		_08037270
_0803726a:
	mov		r1, #0x8
	bl		sub_08036c1c
_08037270:
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803725c

	thumb_func_start sub_08037274
sub_08037274:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_080290f4
	cmp		r0, #0x0
	beq		_0803729c
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_08037292
	add		r0, r5, #0x0
	b		_080372aa
_08037292:
	add		r0, r5, #0x0
	mov		r1, #0x8
	bl		sub_08036c1c
	b		_080372ba
_0803729c:
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08029108
	cmp		r0, #0x0
	beq		_080372b2
	add		r0, r4, #0x0
_080372aa:
	mov		r1, #0x9
	bl		sub_08036c1c
	b		_080372ba
_080372b2:
	add		r0, r4, #0x0
	mov		r1, #0x8
	bl		sub_08036c1c
_080372ba:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08037274

	thumb_func_start sub_080372c0
sub_080372c0:
	push	{ r4, r5, r6, lr }
	ldr		r2, _08037304
	add		r6, r2, #0x0
	add		r6, #0x24
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	mov		r2, #0x7f
	add		r4, r2, #0x0
	and		r4, r0
	add		r1, #0x90
	ldrb	r0, [r1, #0x0]
	add		r5, r2, #0x0
	and		r5, r0
	cmp		r4, r5
	beq		_080372fe
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0802c78c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r5
	beq		_080372fe
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0802c774
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r5
	bne		_08037308
_080372fe:
	mov		r0, #0x1
	b		_0803730a

.incbin "base.gba", 0x37302, 0x2

_08037304:	.4byte 0x030031A0

_08037308:
	mov		r0, #0x0
_0803730a:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080372c0

	thumb_func_start sub_08037310
sub_08037310:
	add		r1, r0, #0x0
	add		r1, #0x6e
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	cmp		r0, #0x2
	beq		_0803732a
	cmp		r0, #0x2
	blt		_0803733a
	cmp		r0, #0x9
	bgt		_0803733a
	cmp		r0, #0x8
	blt		_0803733a
_0803732a:
	ldrh	r0, [r1, #0x0]
	mov		r1, #0xf8
	lsl		r1, r1, #0x1
	and		r1, r0
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	b		_0803733c
_0803733a:
	mov		r0, #0x0
_0803733c:
	bx		lr

.incbin "base.gba", 0x3733E, 0x2
	thumb_func_end sub_08037310

	thumb_func_start sub_08037340
sub_08037340:
	ldr		r0, [r0, #0x70]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	mov		r1, #0x0
	cmp		r0, #0x6
	bgt		_08037352
	cmp		r0, #0x5
	blt		_08037352
	mov		r1, #0x1
_08037352:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x37356, 0x2
	thumb_func_end sub_08037340

	thumb_func_start sub_08037358
sub_08037358:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x17
	add		r1, r1, r0
	add		r1, #0x6e
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x10
	neg		r0, r0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldrh	r2, [r1, #0x0]
	ldr		r0, _0803737c
	and		r0, r2
	strh	r0, [r1, #0x0]
	ldrb	r2, [r1, #0x1]
	mov		r0, #0x1
	and		r0, r2
	strb	r0, [r1, #0x1]
	bx		lr

_0803737c:	.4byte 0xFFFFFE0F
	thumb_func_end sub_08037358

	thumb_func_start sub_08037380
sub_08037380:
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_080373a0
	add		r1, r2, #0x0
	add		r1, #0x56
	ldr		r2, _0803739c
	add		r0, r2, #0x0
	ldrh	r1, [r1, #0x0]
	b		_080373b2

.incbin "base.gba", 0x3739A, 0x2

_0803739c:	.4byte 0xFFFF8000

_080373a0:
	add		r1, r2, #0x0
	add		r1, #0x7c
	add		r0, r2, #0x0
	add		r0, #0x82
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x8
_080373b2:
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	bx		lr

.incbin "base.gba", 0x373BA, 0x2
	thumb_func_end sub_08037380

	thumb_func_start sub_080373bc
sub_080373bc:
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_080373d0
	add		r0, r2, #0x0
	add		r0, #0x56
	b		_080373d4
_080373d0:
	add		r0, r2, #0x0
	add		r0, #0x7c
_080373d4:
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	bx		lr

.incbin "base.gba", 0x373DA, 0x2
	thumb_func_end sub_080373bc

	thumb_func_start sub_080373dc
sub_080373dc:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r6, r0, #0x0
	mov		r8, r1
	ldr		r5, _08037418
	mov		r0, r8
	bl		sub_080370b4
	add		r4, r0, #0x0
	mov		r0, #0xbd
	lsl		r0, r0, #0x1
	add		r6, r6, r0
	ldrh	r0, [r6, #0x0]
	bl		sub_080370b4
	ldr		r1, _0803741c
	add		r5, r5, r1
	sub		r4, r4, r0
	ldrb	r0, [r5, #0x0]
	add		r4, r4, r0
	strb	r4, [r5, #0x0]
	mov		r1, r8
	strh	r1, [r6, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x37416, 0x2

_08037418:	.4byte 0x030031A0
_0803741c:	.4byte 0x00000CA8
	thumb_func_end sub_080373dc

	thumb_func_start sub_08037420
sub_08037420:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08031594
	mov		r2, #0xcb
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	mul		r0, r1
	asr		r0, r0, #0x8
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08037420

	thumb_func_start sub_0803743c
sub_0803743c:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08031594
	add		r1, r0, #0x0
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	mul		r0, r1
	asr		r1, r0, #0x8
	add		r0, r1, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0803743c

	thumb_func_start sub_0803745c
sub_0803745c:
	push	{ lr }
	add		r2, r0, #0x0
	ldr		r0, _08037494
	ldr		r1, [r0, #0x10]
	mov		r0, #0x7
	and		r1, r0
	ldr		r3, _08037498
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	cmp		r1, r0
	bge		_080374ac
	lsl		r1, r1, #0x2
	add		r3, #0x3
	add		r0, r2, r3
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	ldr		r2, [r1, #0x48]
	cmp		r2, #0x0
	beq		_080374ac
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_0803749c
	add		r0, r1, #0x0
	bl		sub_0803c9f0
	b		_080374ac

.incbin "base.gba", 0x37492, 0x2

_08037494:	.4byte 0x030031A0
_08037498:	.4byte 0x000007F1

_0803749c:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r2, r0
	cmp		r2, #0x0
	beq		_080374ac
	add		r0, r1, #0x0
	bl		sub_0803c9f0
_080374ac:
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803745c

	thumb_func_start sub_080374b0
sub_080374b0:
	add		r1, r0, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	add		r0, r0, r1
	bx		lr
	thumb_func_end sub_080374b0

	thumb_func_start sub_080374c0
sub_080374c0:
	lsl		r1, r1, #0x1
	add		r0, #0xdc
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x374CA, 0x2
	thumb_func_end sub_080374c0

	thumb_func_start sub_080374cc
sub_080374cc:
	mov		r3, #0x0
	add		r1, r0, #0x0
	add		r1, #0xdc
	mov		r2, #0x4
_080374d4:
	ldrh	r0, [r1, #0x0]
	add		r3, r3, r0
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_080374d4
	ldr		r0, _080374f0
	cmp		r3, r0
	ble		_080374e8
	add		r3, r0, #0x0
_080374e8:
	lsl		r0, r3, #0x10
	lsr		r0, r0, #0x10
	bx		lr

.incbin "base.gba", 0x374EE, 0x2

_080374f0:	.4byte 0x0000EA5F
	thumb_func_end sub_080374cc

	thumb_func_start sub_080374f4
sub_080374f4:
	push	{ r4, lr }
	add		r2, r0, #0x0
	add		r3, r2, #0x0
	add		r3, #0x7e
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0xb
	bne		_08037544
	add		r1, r2, #0x0
	add		r1, #0x80
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x0
	beq		_08037540
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bge		_08037516
	neg		r1, r1
_08037516:
	ldr		r0, _08037538
	cmp		r1, r0
	ble		_08037520
	mov		r1, #0xfc
	lsl		r1, r1, #0x6
_08037520:
	asr		r0, r1, #0xb
	mov		r1, #0x7
	and		r0, r1
	add		r2, #0xc0
	ldr		r1, _0803753c
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	str		r0, [r2, #0x0]
	b		_0803754c

.incbin "base.gba", 0x37536, 0x2

_08037538:	.4byte 0x00003FFF
_0803753c:	.4byte 0x08106e54

_08037540:
	mov		r0, #0xe
	strb	r0, [r3, #0x0]
_08037544:
	add		r1, r2, #0x0
	add		r1, #0x84
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
_0803754c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x37552, 0x15A
	thumb_func_end sub_080374f4

	thumb_func_start sub_080376ac
sub_080376ac:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	mov		r5, #0x7f
	and		r5, r0
	cmp		r0, #0x7f
	beq		_080376ea
	ldr		r2, [r4, #0x48]
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	bne		_080376e0
	add		r0, r1, #0x0
	bl		sub_0802c744
	add		r1, r4, #0x0
	add		r1, #0xba
	ldrh	r1, [r1, #0x0]
	lsr		r1, r1, #0x1
	mov		r2, #0x5
	mul		r1, r2
	add		r0, r0, r5
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	b		_080376f0
_080376e0:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r2, r0
	cmp		r2, #0x0
	bne		_080376ee
_080376ea:
	mov		r0, #0x0
	b		_080376f0
_080376ee:
	mov		r0, #0x1
_080376f0:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x376F6, 0x2
	thumb_func_end sub_080376ac

	thumb_func_start sub_080376f8
sub_080376f8:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	add		r4, r0, #0x0
	sub		r4, #0x81
	cmp		r4, #0x4
	bhi		_08037756
	bl		sub_08048a48
	add		r2, r5, #0x0
	add		r2, #0xe8
	ldr		r1, [r2, #0x0]
	sub		r0, r0, r1
	ldr		r3, _08037734
	add		r6, r2, #0x0
	cmp		r0, r3
	bhi		_08037738
	bl		sub_08048a48
	lsl		r2, r4, #0x1
	add		r1, r5, #0x0
	add		r1, #0xdc
	add		r1, r1, r2
	ldr		r2, [r6, #0x0]
	sub		r0, r0, r2
	strh	r0, [r1, #0x0]
	b		_08037742

_08037734:	.4byte 0x0000EA5F

_08037738:
	lsl		r1, r4, #0x1
	add		r0, r5, #0x0
	add		r0, #0xdc
	add		r0, r0, r1
	strh	r3, [r0, #0x0]
_08037742:
	ldr		r1, _0803775c
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_08037750
	bl		sub_08048eec
_08037750:
	bl		sub_08048a48
	str		r0, [r6, #0x0]
_08037756:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803775c:	.4byte 0x00000814
	thumb_func_end sub_080376f8

	thumb_func_start sub_08037760
sub_08037760:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldrh	r4, [r2, #0x10]
	mov		r1, #0xf0
	lsl		r1, r1, #0x8
	and		r1, r4
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r1, r0
	beq		_080377aa
	cmp		r1, r0
	bgt		_08037784
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r1, r0
	beq		_0803778e
	b		_080377c4
_08037784:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_08037798
	b		_080377c4
_0803778e:
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_08039b28
	b		_080377c4
_08037798:
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r4, r0
	beq		_080377c4
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_080392d0
	b		_080377c4
_080377aa:
	ldr		r0, _080377cc
	ldr		r1, _080377d0
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_080377c4
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_08038e58
_080377c4:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x377CA, 0x2

_080377cc:	.4byte 0x030031A0
_080377d0:	.4byte 0x000007FE

.incbin "base.gba", 0x377D4, 0x38
	thumb_func_end sub_08037760

	thumb_func_start sub_0803780c
sub_0803780c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldrb	r0, [r2, #0x8]
	mov		r9, r0
	mov		r0, #0x8
	ldrsb	r0, [r2, r0]
	cmp		r0, #0x0
	beq		_0803790c
	ldrh	r0, [r2, #0xa]
	ldr		r7, _080378d0
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08037832
	add		r0, #0x3f
_08037832:
	asr		r0, r0, #0x6
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	mov		r8, r1
	sub		r0, r1, r0
	ldr		r5, _080378d4
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0803784c
	add		r0, #0x7f
_0803784c:
	asr		r0, r0, #0x7
	ldrh	r1, [r2, #0xc]
	add		r1, r1, r0
	mov		r12, r1
	mov		r6, #0x0
	strh	r1, [r2, #0xc]
	lsl		r0, r3, #0x19
	asr		r3, r0, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_08037864
	add		r0, #0x3f
_08037864:
	asr		r4, r0, #0x6
	add		r0, r4, #0x0
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r1, r0, #0x4
	add		r0, r0, r1
	lsl		r1, r0, #0x8
	add		r0, r0, r1
	cmp		r0, #0x0
	bge		_08037884
	ldr		r1, _080378d8
	add		r0, r0, r1
_08037884:
	asr		r0, r0, #0x18
	ldrh	r1, [r2, #0xe]
	add		r0, r0, r1
	strh	r0, [r2, #0xe]
	mov		r1, r8
	sub		r0, r1, r4
	and		r0, r5
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0803789e
	add		r0, #0x3f
_0803789e:
	asr		r0, r0, #0x6
	add		r0, r12
	strh	r0, [r2, #0xc]
	mov		r0, r9
	add		r0, #0x1
	strb	r0, [r2, #0x8]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x1d
	ble		_0803790c
	mov		r0, #0x0
	strb	r0, [r2, #0x8]
	ldr		r3, _080378dc
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_0803790c
	cmp		r2, r0
	bne		_080378ec
	ldr		r1, _080378e0
	ldr		r0, [r1, #0x0]
	cmp		r2, r0
	bne		_080378e4
	str		r6, [r1, #0x0]
	str		r6, [r3, #0x0]
	b		_0803790c

_080378d0:	.4byte 0x08101068
_080378d4:	.4byte 0x000003FF
_080378d8:	.4byte 0x00FFFFFF
_080378dc:	.4byte 0x03005FC0
_080378e0:	.4byte 0x03005FC4

_080378e4:
	ldr		r0, [r2, #0x0]
	str		r0, [r3, #0x0]
	str		r6, [r0, #0x4]
	b		_0803790c
_080378ec:
	ldr		r1, _080378fc
	ldr		r0, [r1, #0x0]
	cmp		r2, r0
	bne		_08037900
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x0]
	str		r6, [r0, #0x0]
	b		_0803790c

_080378fc:	.4byte 0x03005FC4

_08037900:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x4]
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
_0803790c:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803780c

	thumb_func_start sub_08037918
sub_08037918:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r3, r0, #0x0
	add		r6, r1, #0x0
	mov		r4, #0x0
	ldrb	r1, [r3, #0x8]
	mov		r0, #0x8
	ldrsb	r0, [r3, r0]
	cmp		r0, #0x0
	bne		_0803792e
	b		_08037a3e
_0803792e:
	ldrb	r0, [r3, #0x9]
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	add		r5, r1, #0x0
	cmp		r0, #0x4
	bhi		_080379f4
	lsl		r0, r0, #0x2
	ldr		r1, _08037948
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x37946, 0x2

_08037948:	.4byte 0x0803794c
_0803794c:	.4byte 0x08037960

.incbin "base.gba", 0x37950, 0x10
	thumb_func_end sub_08037918


.incbin "base.gba", 0x37960, 0x94

_080379f4:

.incbin "base.gba", 0x379F4, 0xA
_080379fe:

.incbin "base.gba", 0x379FE, 0x18
_08037a16:

.incbin "base.gba", 0x37A16, 0x28
_08037a3e:

.incbin "base.gba", 0x37A3E, 0x12
PTR_H_Reset_08037a50:	.4byte 0xffff0000
_08037a54:	.4byte 0x0000FFFF
	thumb_func_start sub_08037a58
sub_08037a58:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r12, r0
	add		r7, r1, #0x0
	mov		r8, r3
	cmp		r3, #0x0
	bne		_08037a6e
	b		_08037b98
_08037a6e:
	ldr		r1, _08037ae0
	add		r0, r7, #0x0
	sub		r0, #0x18
	lsl		r5, r0, #0x19
	ldr		r6, _08037ae4
	ldr		r0, _08037ae8
	mov		r9, r0
	add		r3, r1, #0x0
	add		r0, r7, #0x0
	add		r0, #0x18
	lsl		r4, r0, #0x19
	mov		r0, #0x0
	mov		r10, r0
_08037a88:
	mov		r0, #0x8
	ldrsb	r0, [r3, r0]
	cmp		r0, #0x0
	beq		_08037a92
	b		_08037b8c
_08037a92:
	cmp		r2, #0x0
	bne		_08037af8
	asr		r2, r5, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08037aa0
	add		r0, #0x3f
_08037aa0:
	asr		r4, r0, #0x6
	ldr		r0, _08037aec
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	cmp		r0, #0x0
	bge		_08037abe
	ldr		r1, _08037af0
	add		r0, r0, r1
_08037abe:
	asr		r5, r0, #0x10
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _08037aec
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08037ad8
	ldr		r1, _08037af4
	add		r0, r0, r1
_08037ad8:
	asr		r2, r0, #0xb
	sub		r1, r7, #0x4
	b		_08037b40

.incbin "base.gba", 0x37ADE, 0x2

_08037ae0:	.4byte 0x03005F60
_08037ae4:	.4byte 0x08101068
_08037ae8:	.4byte 0x03005FC4
_08037aec:	.4byte 0x000003FF
_08037af0:	.4byte 0x0000FFFF
_08037af4:	.4byte 0x000007FF

_08037af8:
	add		r5, r6, #0x0
	asr		r2, r4, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08037b04
	add		r0, #0x3f
_08037b04:
	asr		r4, r0, #0x6
	ldr		r0, _08037b70
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	cmp		r0, #0x0
	bge		_08037b22
	ldr		r1, _08037b74
	add		r0, r0, r1
_08037b22:
	asr		r5, r0, #0x10
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _08037b70
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08037b3c
	ldr		r1, _08037b78
	add		r0, r0, r1
_08037b3c:
	asr		r2, r0, #0xb
	add		r1, r7, #0x4
_08037b40:
	mov		r0, #0x1
	strb	r0, [r3, #0x8]
	strh	r1, [r3, #0xa]
	mov		r0, r8
	strb	r0, [r3, #0x9]
	mov		r1, r12
	ldrh	r0, [r1, #0x0]
	add		r0, r0, r2
	lsl		r0, r0, #0x7
	strh	r0, [r3, #0xc]
	ldrh	r0, [r1, #0x2]
	add		r0, r0, r5
	add		r0, #0x8
	lsl		r0, r0, #0x7
	strh	r0, [r3, #0xe]
	mov		r0, r10
	str		r0, [r3, #0x4]
	str		r0, [r3, #0x0]
	ldr		r1, _08037b7c
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08037b80
	mov		r0, r9
	b		_08037b86

_08037b70:	.4byte 0x000003FF
_08037b74:	.4byte 0x0000FFFF
_08037b78:	.4byte 0x000007FF
_08037b7c:	.4byte 0x03005FC0

_08037b80:
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	str		r0, [r3, #0x4]
_08037b86:
	str		r3, [r0, #0x0]
	str		r3, [r1, #0x0]
	b		_08037b98
_08037b8c:
	add		r3, #0x10
	add		r0, r1, #0x0
	add		r0, #0x50
	cmp		r3, r0
	bgt		_08037b98
	b		_08037a88
_08037b98:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x37BA6, 0x2
	thumb_func_end sub_08037a58

	thumb_func_start sub_08037ba8
sub_08037ba8:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	add		r6, r2, #0x0
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037bf2
	mov		r1, #0x14
	ldrsh	r0, [r4, r1]
	add		r1, r3, #0x0
	add		r1, #0x7a
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	asr		r0, r0, #0x9
	add		r0, #0x20
	mov		r2, #0x7f
	and		r0, r2
	mov		r1, #0xbf
	sub		r5, r1, r0
	and		r5, r2
	ldr		r0, _08037bf8
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08037bf2
_08037bdc:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0803780c
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08037918
	ldr		r4, [r4, #0x0]
	cmp		r4, #0x0
	bne		_08037bdc
_08037bf2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08037bf8:	.4byte 0x03005FC0
	thumb_func_end sub_08037ba8

	thumb_func_start sub_08037bfc
sub_08037bfc:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r4, r2, #0x0
	ldr		r5, [sp, #0x0+0xc]
	cmp		r1, #0x0
	beq		_08037c20
	mov		r2, #0x14
	ldrsh	r0, [r1, r2]
	add		r1, r3, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	asr		r0, r0, #0x9
	add		r3, r0, #0x0
	add		r3, #0x20
	mov		r0, #0x7f
	and		r3, r0
	b		_08037c22
_08037c20:
	mov		r3, #0x0
_08037c22:
	cmp		r5, #0x0
	beq		_08037c54
	mov		r0, #0xbf
	sub		r3, r0, r3
	mov		r0, #0x7f
	and		r3, r0
	ldr		r2, _08037c5c
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	mov		r1, #0x3
	and		r0, r1
	str		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08037c54
	ldr		r0, _08037c60
	ldr		r2, [r0, #0x0]
	add		r2, #0x1
	mov		r1, #0x1
	and		r2, r1
	str		r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r3, #0x0
	add		r3, r5, #0x0
	bl		sub_08037a58
_08037c54:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x37C5A, 0x2

_08037c5c:	.4byte 0x03002314
_08037c60:	.4byte 0x03002310
	thumb_func_end sub_08037bfc

	thumb_func_start sub_08037c64
sub_08037c64:
	ldr		r2, _08037c80
	ldr		r1, _08037c84
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	ldr		r1, _08037c88
	mov		r2, #0x0
	add		r0, r1, #0x0
	add		r0, #0x50
_08037c76:
	strb	r2, [r0, #0x8]
	sub		r0, #0x10
	cmp		r0, r1
	bge		_08037c76
	bx		lr

_08037c80:	.4byte 0x03005FC0
_08037c84:	.4byte 0x03005FC4
_08037c88:	.4byte 0x03005F60
	thumb_func_end sub_08037c64

	thumb_func_start sub_08037c8c
sub_08037c8c:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _08037cb8
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08037cb0
_08037c9a:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0803780c
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08037918
	ldr		r4, [r4, #0x0]
	cmp		r4, #0x0
	bne		_08037c9a
_08037cb0:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x37CB6, 0x2

_08037cb8:	.4byte 0x03005FC0
	thumb_func_end sub_08037c8c

	thumb_func_start sub_08037cbc
sub_08037cbc:
	push	{ r4, r5, r6, lr }
	ldr		r1, _08037cf0
	add		r3, r1, #0x0
	add		r3, #0x24
	ldr		r4, [r0, #0x54]
	ldr		r0, _08037cf4
	add		r1, r1, r0
	ldr		r2, [r1, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037d66
	cmp		r2, r4
	beq		_08037cf8
	add		r0, r3, #0x0
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08037cec
	mov		r2, #0x40
_08037cec:
	mov		r0, #0x1
	b		_08037cfe

_08037cf0:	.4byte 0x030031A0
_08037cf4:	.4byte 0x00000838

_08037cf8:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_08037cfe:
	ldr		r6, _08037d24
	lsl		r5, r0, #0x2
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r4, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037d28
	add		r0, r3, #0x2
	add		r0, r5, r0
	b		_08037d2a

.incbin "base.gba", 0x37D22, 0x2

_08037d24:	.4byte 0x081077d4

_08037d28:
	add		r0, r5, r3
_08037d2a:
	add		r0, r6, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08037d66
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _08037d6c
	ldr		r0, _08037d70
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_0807169c
_08037d66:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08037d6c:	.4byte 0x08124544
_08037d70:	.4byte 0x081245c8
	thumb_func_end sub_08037cbc

	thumb_func_start sub_08037d74
sub_08037d74:
	push	{ r4, r5, r6, lr }
	ldr		r1, _08037da8
	add		r3, r1, #0x0
	add		r3, #0x24
	ldr		r4, [r0, #0x54]
	ldr		r0, _08037dac
	add		r1, r1, r0
	ldr		r2, [r1, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037e1e
	cmp		r2, r4
	beq		_08037db0
	add		r0, r3, #0x0
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08037da4
	mov		r2, #0x40
_08037da4:
	mov		r0, #0x1
	b		_08037db6

_08037da8:	.4byte 0x030031A0
_08037dac:	.4byte 0x00000838

_08037db0:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_08037db6:
	ldr		r6, _08037ddc
	lsl		r5, r0, #0x2
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r4, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037de0
	add		r0, r3, #0x2
	add		r0, r5, r0
	b		_08037de2

.incbin "base.gba", 0x37DDA, 0x2

_08037ddc:	.4byte 0x081077d4

_08037de0:
	add		r0, r5, r3
_08037de2:
	add		r0, r6, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08037e1e
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _08037e24
	ldr		r0, _08037e28
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_0807169c
_08037e1e:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08037e24:	.4byte 0x08124544
_08037e28:	.4byte 0x081245c8
	thumb_func_end sub_08037d74

	thumb_func_start sub_08037e2c
sub_08037e2c:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_08037e54
	add		r0, r3, #0x0
	add		r0, #0x58
	ldrh	r2, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r2
	cmp		r0, #0x0
	bne		_08037e4c
	mov		r0, #0x1
	b		_08037e8e
_08037e4c:
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_08037e5a
_08037e54:
	mov		r0, #0x80
	lsl		r0, r0, #0xa
	b		_08037e8e
_08037e5a:
	ldr		r4, _08037e94
	mov		r1, #0x7
	and		r1, r2
	mov		r0, #0x10
	and		r0, r2
	lsl		r1, r1, #0x3
	cmp		r0, #0x0
	bne		_08037e6c
	add		r1, #0x4
_08037e6c:
	add		r0, r1, r4
	ldr		r2, [r0, #0x0]
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08037e8c
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r2, r2, r0
_08037e8c:
	add		r0, r2, #0x0
_08037e8e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08037e94:	.4byte 0x081074c0
	thumb_func_end sub_08037e2c

	thumb_func_start sub_08037e98
sub_08037e98:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _08037eb8
	ldr		r0, [r0, #0x10]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08037ebc
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x2
	b		_08037ec6

.incbin "base.gba", 0x37EB6, 0x2

_08037eb8:	.4byte 0x030031A0

_08037ebc:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x2
_08037ec6:
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08037ee2
	add		r1, r4, #0x0
	add		r1, #0xb6
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	b		_08037f06
_08037ee2:
	add		r0, r4, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	add		r1, r5, #0x0
	bl		sub_0803c9bc
	cmp		r0, #0x0
	beq		_08037efe
	add		r1, r4, #0x0
	add		r1, #0xb6
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	b		_08037f06
_08037efe:
	add		r1, r4, #0x0
	add		r1, #0xb6
	mov		r0, #0x80
	lsl		r0, r0, #0x6
_08037f06:
	strh	r0, [r1, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x74
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_08036eec
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0803ce54
	ldr		r1, _08037fa0
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08037f9a
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08037f9a
	mov		r6, #0x0
	mov		r5, #0x0
	ldr		r2, _08037fa4
	ldr		r3, _08037fa8
	mov		r0, #0xa2
	lsl		r0, r0, #0x3
	add		r4, r3, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08037f62
	ldr		r1, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r1, r0
	bne		_08037f62
	mov		r5, #0x1
_08037f62:
	cmp		r5, #0x0
	beq		_08037f90
	mov		r4, #0x0
	mov		r1, #0xa2
	lsl		r1, r1, #0x3
	add		r3, r3, r1
	ldrh	r0, [r3, #0x4]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_08037f8a
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08037f8a
	mov		r4, #0x1
_08037f8a:
	cmp		r4, #0x0
	bne		_08037f90
	mov		r6, #0x1
_08037f90:
	cmp		r6, #0x0
	bne		_08037f9a
	mov		r0, #0xa2
	bl		sub_0807073c
_08037f9a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08037fa0:	.4byte 0x00000814
_08037fa4:	.4byte 0x08124544
_08037fa8:	.4byte 0x081245c8
	thumb_func_end sub_08037e98

	thumb_func_start sub_08037fac
sub_08037fac:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r4, r3, #0x0
	ldr		r0, [r5, #0x0]
	sub		r0, r0, r1
	cmp		r0, #0x0
	bge		_08037fbe
	ldr		r1, _08037fdc
	add		r0, r0, r1
_08037fbe:
	asr		r1, r0, #0x10
	ldr		r0, [r5, #0x4]
	sub		r0, r0, r2
	cmp		r0, #0x0
	bge		_08037fcc
	ldr		r2, _08037fdc
	add		r0, r0, r2
_08037fcc:
	asr		r2, r0, #0x10
	cmp		r1, #0x0
	bne		_08037fe0
	cmp		r2, #0x0
	bne		_08037fe0
	ldr		r2, [sp, #0x0+0x10]
	b		_08037ff0

.incbin "base.gba", 0x37FDA, 0x2

_08037fdc:	.4byte 0x0000FFFF

_08037fe0:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08037ff0:
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	cmp		r4, r1
	bgt		_08037ffa
	add		r4, r1, #0x0
_08037ffa:
	ldr		r0, _0803801c
	cmp		r4, r0
	ble		_08038004
	mov		r4, #0x80
	lsl		r4, r4, #0x3
_08038004:
	cmp		r4, r1
	beq		_08038028
	ldr		r0, _08038020
	ldr		r0, [r0, #0x10]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038024
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	add		r2, r2, r0
	b		_08038028

_0803801c:	.4byte 0x000003FF
_08038020:	.4byte 0x030031A0

_08038024:
	ldr		r1, _08038084
	add		r2, r2, r1
_08038028:
	ldr		r6, _08038088
	lsl		r0, r2, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08038036
	add		r1, #0x3f
_08038036:
	asr		r3, r1, #0x6
	ldr		r1, _0803808c
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_08038050
	ldr		r1, _08038090
	add		r0, r0, r1
_08038050:
	asr		r0, r0, #0xf
	add		r1, r5, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0803808c
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	add		r1, r4, #0x0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_08038076
	ldr		r2, _08038090
	add		r1, r1, r2
_08038076:
	asr		r1, r1, #0xf
	add		r0, r5, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08038084:	.4byte 0xFFFFC000
_08038088:	.4byte 0x08101068
_0803808c:	.4byte 0x000003FF
_08038090:	.4byte 0x00007FFF
	thumb_func_end sub_08037fac

	thumb_func_start sub_08038094
sub_08038094:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r4, r1, #0x0
	add		r5, r3, #0x0
	ldr		r0, [sp, #0x0+0x14]
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldr		r0, [r6, #0x0]
	sub		r0, r0, r4
	cmp		r0, #0x0
	bge		_080380ae
	ldr		r1, _080380dc
	add		r0, r0, r1
_080380ae:
	asr		r4, r0, #0x10
	ldr		r0, [r6, #0x4]
	sub		r1, r0, r2
	cmp		r1, #0x0
	bge		_080380bc
	ldr		r2, _080380dc
	add		r1, r1, r2
_080380bc:
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	asr		r0, r0, #0x10
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_080380e4
	ldr		r2, _080380e0
	b		_080380e8

.incbin "base.gba", 0x380DA, 0x2

_080380dc:	.4byte 0x0000FFFF
_080380e0:	.4byte 0xFFFFC000

_080380e4:
	mov		r2, #0x80
	lsl		r2, r2, #0x7
_080380e8:
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	cmp		r5, r2
	bgt		_080380f8
	add		r5, r2, #0x0
_080380f8:
	ldr		r4, _0803815c
	cmp		r5, r4
	ble		_08038102
	mov		r5, #0x80
	lsl		r5, r5, #0x3
_08038102:
	lsl		r0, r0, #0x10
	asr		r7, r0, #0x10
	ldr		r0, _08038160
	mov		r12, r0
	add		r2, r7, #0x0
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08038114
	add		r0, #0x3f
_08038114:
	asr		r3, r0, #0x6
	add		r0, r3, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	mul		r0, r5
	cmp		r0, #0x0
	bge		_0803812a
	ldr		r1, _08038164
	add		r0, r0, r1
_0803812a:
	asr		r0, r0, #0xf
	add		r1, r6, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r5
	cmp		r0, #0x0
	bge		_0803814c
	ldr		r2, _08038164
	add		r0, r0, r2
_0803814c:
	asr		r1, r0, #0xf
	add		r0, r6, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	add		r0, r7, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0803815c:	.4byte 0x000003FF
_08038160:	.4byte 0x08101068
_08038164:	.4byte 0x00007FFF
	thumb_func_end sub_08038094

	thumb_func_start sub_08038168
sub_08038168:
	add		r3, r0, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	neg		r1, r2
	cmp		r1, #0x0
	blt		_08038190
	cmp		r1, #0x80
	bgt		_0803817e
	mov		r1, #0x80
	b		_080381a2
_0803817e:
	ldr		r0, _0803818c
	cmp		r1, r0
	ble		_080381a2
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	b		_080381a2

.incbin "base.gba", 0x3818A, 0x2

_0803818c:	.4byte 0x000003FF

_08038190:
	cmp		r2, #0x80
	bgt		_0803819a
	mov		r1, #0x80
	neg		r1, r1
	b		_080381a2
_0803819a:
	ldr		r0, _080381c0
	cmp		r2, r0
	ble		_080381a2
	ldr		r1, _080381c4
_080381a2:
	add		r0, r3, #0x0
	add		r0, #0x4e
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	neg		r1, r2
	add		r3, r0, #0x0
	cmp		r1, #0x0
	blt		_080381d8
	cmp		r1, #0x80
	bgt		_080381c8
	mov		r1, #0x80
	b		_080381ea

.incbin "base.gba", 0x381BE, 0x2

_080381c0:	.4byte 0x000003FF
_080381c4:	.4byte 0xFFFFFC00

_080381c8:
	ldr		r0, _080381d4
	cmp		r1, r0
	ble		_080381ea
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	b		_080381ea

_080381d4:	.4byte 0x000003FF

_080381d8:
	cmp		r2, #0x80
	bgt		_080381e2
	mov		r1, #0x80
	neg		r1, r1
	b		_080381ea
_080381e2:
	ldr		r0, _080381f0
	cmp		r2, r0
	ble		_080381ea
	ldr		r1, _080381f4
_080381ea:
	strh	r1, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x381EE, 0x2

_080381f0:	.4byte 0x000003FF
_080381f4:	.4byte 0xFFFFFC00
	thumb_func_end sub_08038168

	thumb_func_start sub_080381f8
sub_080381f8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x10
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	ldr		r1, _08038318
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803825c
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	beq		_0803825c
	mov		r0, #0xc3
	lsl		r0, r0, #0x1
	bl		sub_0807073c
	ldr		r0, _0803831c
	mov		r8, r0
	ldr		r4, _08038320
	mov		r1, #0xc3
	lsl		r1, r1, #0x4
	add		r4, r4, r1
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r5, #0x0
	bl		sub_0807169c
_0803825c:
	ldr		r1, _08038318
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803826c
	add		r0, r6, #0x0
	bl		sub_08055998
_0803826c:
	ldrh	r1, [r6, #0x34]
	ldr		r0, _08038324
	and		r0, r1
	mov		r5, #0x0
	mov		r4, #0x0
	ldr		r1, _08038328
	and		r0, r1
	strh	r0, [r6, #0x34]
	add		r0, r6, #0x0
	add		r0, #0xbc
	str		r4, [r0, #0x0]
	add		r0, #0x4
	str		r4, [r0, #0x0]
	sub		r0, #0x38
	strh	r4, [r0, #0x0]
