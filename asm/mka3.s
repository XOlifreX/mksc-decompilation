	.include "defines.s"
	.include "ram.s"
	.include "macros.s"


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
_080272e0:	.4byte SIOControlRegister
_080272e4:	.4byte SIOModeSelect_GeneralPurposeData
_080272e8:	.4byte InterruptRequestFlags_IRQAcknowledge
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
_08027320:	.4byte KeyStatus
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
_080273e0:	.4byte SIOModeSelect_GeneralPurposeData
_080273e4:	.4byte InterruptRequestFlags_IRQAcknowledge
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

_08027630:	.4byte KeyStatus
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

_080276a4:	.4byte SIOControlRegister
_080276a8:	.4byte 0x03003000
_080276ac:	.4byte InterruptRequestFlags_IRQAcknowledge
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
_0802771c:	.4byte SIOModeSelect_GeneralPurposeData
_08027720:	.4byte InterruptRequestFlags_IRQAcknowledge
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

_0802777c:	.4byte SIOModeSelect_GeneralPurposeData
_08027780:	.4byte InterruptRequestFlags_IRQAcknowledge
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
_08027908:	.4byte Timer3Control
_0802790c:	.4byte 0x03005358
_08027910:	.4byte SIOControlRegister
_08027914:	.4byte 0x03000258
_08027918:	.4byte SIOData0_Parent__Multi_PlayerMode_
_0802791c:	.4byte SIOData1_1stChild__Multi_PlayerMode_
_08027920:	.4byte SIOData2_2ndChild__Multi_PlayerMode_
_08027924:	.4byte SIOData3_3rdChild__Multi_PlayerMode_
_08027928:	.4byte 0x03000250
_0802792c:	.4byte 0x03000294
_08027930:	.4byte 0x030001F8
_08027934:	.4byte 0x030002A0
_08027938:	.4byte 0x03000254
_0802793c:	.4byte 0x03000238
_08027940:	.4byte 0x00003FFF
_08027944:	.4byte 0x03004C18
_08027948:	.4byte 0x080f8dd4
_0802794c:	.4byte SIOData_Normal_8bitandUARTMode
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
_080279d8:	.4byte Timer3Counter_Reload

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
_08027b54:	.4byte SIOData_Normal_8bitandUARTMode
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

_08027ba4:	.4byte Timer3Counter_Reload

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

_08027bc0:	.4byte SIOControlRegister
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
_08027cac:	.4byte SIOModeSelect_GeneralPurposeData
_08027cb0:	.4byte SIOControlRegister
_08027cb4:	.4byte Timer3Control
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

_08027e14:	.4byte SIOModeSelect_GeneralPurposeData
_08027e18:	.4byte SIOData_Normal_8bitandUARTMode
_08027e1c:	.4byte 0x030002A0
_08027e20:	.4byte SIOControlRegister
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

_08027e7c:	.4byte SIOControlRegister
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

_08027ed0:	.4byte SIOData_Normal_8bitandUARTMode
_08027ed4:	.4byte 0x030002A0
_08027ed8:	.4byte SIOControlRegister
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

_08028100:	.4byte Timer3Control
_08028104:	.4byte SIOControlRegister
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
	bl		_CallHardwareSetCpuFast
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
_08028198:	.4byte DMA0SourceAddress
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
	bl		_CallHardwareSetCpuFast
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
_0802825c:	.4byte DMA0SourceAddress
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

_0802909c:	.4byte RunGameLogic_CallBack
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

_08029170:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
_08029918:	.4byte DMA0SourceAddress
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
_08029948:	.4byte Timer0Counter_Reload
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

_08029c20:	.4byte RunGameLogic_CallBack
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

_08029d70:	.4byte RunGameLogic_CallBack
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

_08029da4:	.4byte RunGameLogic_CallBack
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

_08029e44:	.4byte DMA3SourceAddress
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

_08029f8c:	.4byte GeneralLCDStatus_STAT_LYC_
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

_08029fc4:	.4byte GeneralLCDStatus_STAT_LYC_
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
_0802a048:	.4byte GeneralLCDStatus_STAT_LYC_
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
_0802a0a0:	.4byte GeneralLCDStatus_STAT_LYC_
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

_0802a184:	.4byte InsideofWindow0and1
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
_0802a1d0:	.4byte Window0HorizontalDimensions
_0802a1d4:	.4byte InsideofWindow0and1
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
_0802a1f8:	.4byte Window0HorizontalDimensions
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

_0802a230:	.4byte Window0HorizontalDimensions
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
_0802a270:	.4byte Window0HorizontalDimensions
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
_0802ae48:	.4byte GeneralLCDStatus_STAT_LYC_

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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
_0802b076:
	bl		_UpdateGame
	ldr		r0, _0802b094
	ldr		r1, _0802b098
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
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
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0802b5c4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	bl		_UpdateGame
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_0802b09c
	add		r0, r5, #0x0
	bl		sub_0802c4bc
	bl		_UpdateGame
	add		r0, r5, #0x0
	add		r0, #0xa4
	add		r1, r6, #0x0
	bl		sub_0802c970
	bl		_UpdateGame
	add		r0, r6, #0x0
	add		r0, #0xf0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0802b554
	add		r0, r5, #0x0
	bl		sub_0802bf28
_0802b554:
	bl		_UpdateGame
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
	bl		_UpdateGame
	mov		r0, r8
	bl		sub_0802d7f8
	bl		_UpdateGame
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
_0802b5bc:	.4byte BG2Control
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

_0802b9b8:	.4byte RunGameLogic_CallBack
_0802b9bc:	.4byte 0x00000514
_0802b9c0:	.4byte 0x03002198
_0802b9c4:	.4byte 0x0000057C
_0802b9c8:	.4byte 0x00007040
_0802b9cc:	.4byte ColorSpecialEffectsSElection
_0802b9d0:	.4byte BG2X_Offset
_0802b9d4:	.4byte BG3X_Offset
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

_0802bad4:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
	mov		r4, #0x0
	ldrb	r0, [r5, #0x0]
	cmp		r4, r0
	bge		_0802bf98
_0802bf76:
	mov		r0, #0x1f
	and		r0, r4
	cmp		r0, #0x1f
	bne		_0802bf82
	bl		_UpdateGame
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
_0802bfa8:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
_0802c260:	.4byte RunGameLogic_CallBack
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
_0802c68c:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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

_0802c834:	.4byte RunGameLogic_CallBack
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

_0802d4a8:	.4byte BG2Control

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
	bl		_UpdateGame
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	b		_0802d872

_0802d860:	.4byte 0x06004000

_0802d864:
	ldr		r0, [r5, #0x4]
	add		r0, r5, r0
	ldr		r1, _0802d8a8
	mov		r2, #0xb0
	lsl		r2, r2, #0x4
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d8f4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareSetCpuFast
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d964
	add		r2, r4, #0x0
	bl		_CallHardwareSetCpuFast
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d968
_0802d956:
	add		r2, r4, #0x0
	bl		_CallHardwareSetCpuFast
	b		_0802d9e2

.incbin "base.gba", 0x2D95E, 0x2

_0802d960:	.4byte 0x06007800
_0802d964:	.4byte 0x06007000
_0802d968:	.4byte 0x06006800

_0802d96c:
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d984
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d988
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d9bc
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d9c0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	b		_0802d9e2

_0802d9b8:	.4byte 0x06007800
_0802d9bc:	.4byte 0x06006800
_0802d9c0:	.4byte 0x06006000

_0802d9c4:
	ldr		r0, [r5, #0x8]
	add		r0, r5, r0
	ldr		r1, _0802d9ec
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0xC]
	add		r0, r5, r0
	ldr		r1, _0802d9f0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, [r5, #0x10]
	add		r0, r5, r0
	ldr		r1, _0802d9f4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
_0802d9e2:
	bl		_UpdateGame
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
_0802da40:	.4byte RunGameLogic_CallBack
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

_0802db24:	.4byte BG1Control
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

_0802db94:	.4byte RunGameLogic_CallBack
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

_0802dd7c:	.4byte RunGameLogic_CallBack
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
_0802de2c:	.4byte RunGameLogic_CallBack
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
_0802df04:	.4byte RunGameLogic_CallBack
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
_0802e04c:	.4byte RunGameLogic_CallBack
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

_0802e088:	.4byte RunGameLogic_CallBack
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

_0802e0bc:	.4byte RunGameLogic_CallBack
_0802e0c0:	.4byte BG3X_Offset
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

_0802e130:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
_0802e264:	.4byte RunGameLogic_CallBack
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

_0802eaf8:	.4byte RunGameLogic_CallBack
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

_0802ec68:	.4byte RunGameLogic_CallBack
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
_0802ed38:	.4byte RunGameLogic_CallBack
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

_0802f0b0:	.4byte RunGameLogic_CallBack
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

_0802f130:	.4byte RunGameLogic_CallBack
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

_0802f1a8:	.4byte RunGameLogic_CallBack
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

_0802f220:	.4byte RunGameLogic_CallBack
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

_0802f364:	.4byte RunGameLogic_CallBack
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
_0802f59c:	.4byte RunGameLogic_CallBack

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
_0802f628:	.4byte RunGameLogic_CallBack
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

_0802f69c:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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

_0802f818:	.4byte RunGameLogic_CallBack
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

_0802f87c:	.4byte RunGameLogic_CallBack
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
_0802fabc:	.4byte RunGameLogic_CallBack
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

_08030bb8:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _08030c74
	ldr		r1, _08030c78
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
_08030c7c:	.4byte RunGameLogic_CallBack
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

_08030cec:	.4byte RunGameLogic_CallBack
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

_08030dd8:	.4byte RunGameLogic_CallBack

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

_08031334:	.4byte RunGameLogic_CallBack
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

_08031440:	.4byte RunGameLogic_CallBack
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
_08031738:	.4byte RunGameLogic_CallBack
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

_080317fc:	.4byte RunGameLogic_CallBack
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

_080318f8:	.4byte RunGameLogic_CallBack
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

_08031a08:	.4byte RunGameLogic_CallBack

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

_08031a7c:	.4byte RunGameLogic_CallBack

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

_08031a9c:	.4byte RunGameLogic_CallBack

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

_08031b80:	.4byte RunGameLogic_CallBack
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
_080327a4:	.4byte RunGameLogic_CallBack
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

_08032908:	.4byte RunGameLogic_CallBack
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

_080332cc:	.4byte RunGameLogic_CallBack
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

_08033374:	.4byte RunGameLogic_CallBack
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

_08033648:	.4byte RunGameLogic_CallBack
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
_08034930:	.4byte RunGameLogic_CallBack
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

_08034b90:	.4byte RunGameLogic_CallBack
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

_08034bb4:	.4byte RunGameLogic_CallBack
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

_08034bf8:	.4byte RunGameLogic_CallBack
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

_08034cb8:	.4byte RunGameLogic_CallBack
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
_08034e18:	.4byte RunGameLogic_CallBack

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

_08035250:	.4byte RunGameLogic_CallBack
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
_08035b1c:	.4byte RunGameLogic_CallBack
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

_08035d90:	.4byte RunGameLogic_CallBack
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
_08035ec0:	.4byte RunGameLogic_CallBack
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
_08036030:	.4byte RunGameLogic_CallBack
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

_0803618c:	.4byte RunGameLogic_CallBack

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

_0803627c:	.4byte RunGameLogic_CallBack

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

_0803651c:	.4byte RunGameLogic_CallBack
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
_08036620:	.4byte RunGameLogic_CallBack

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

_080367fc:	.4byte RunGameLogic_CallBack
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

_08036ac8:	.4byte RunGameLogic_CallBack
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

_08036c04:	.4byte RunGameLogic_CallBack

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

_08036f34:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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

_08037304:	.4byte RunGameLogic_CallBack

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

_08037418:	.4byte RunGameLogic_CallBack
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

_08037494:	.4byte RunGameLogic_CallBack
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

_080377cc:	.4byte RunGameLogic_CallBack
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

_08037cf0:	.4byte RunGameLogic_CallBack
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

_08037da8:	.4byte RunGameLogic_CallBack
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

_08037eb8:	.4byte RunGameLogic_CallBack

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
_08038020:	.4byte RunGameLogic_CallBack

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
	sub		r0, #0xa
	strb	r5, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	ldr		r0, _0803832c
	add		r0, #0x24
	add		r1, r6, #0x0
	add		r1, #0xec
	ldrb	r1, [r1, #0x0]
	add		r3, sp, #0x8
	add		r2, sp, #0xc
	str		r2, [sp, #0x0]
	add		r2, sp, #0x4
	bl		sub_0802c5a0
	ldr		r0, [sp, #0xC]
	add		r1, r6, #0x0
	add		r1, #0xa2
	strh	r0, [r1, #0x0]
	ldr		r0, [sp, #0x4]
	cmp		r0, #0x0
	bge		_080382be
	ldr		r1, _08038330
	add		r0, r0, r1
_080382be:
	asr		r0, r0, #0x10
	add		r1, r6, #0x0
	add		r1, #0x9e
	strh	r0, [r1, #0x0]
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x0
	bge		_080382d0
	ldr		r0, _08038330
	add		r1, r1, r0
_080382d0:
	asr		r1, r1, #0x10
	add		r0, r6, #0x0
	add		r0, #0xa0
	strh	r1, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x9c
	mov		r0, #0x3c
	strh	r0, [r1, #0x0]
	add		r0, #0xc4
	str		r0, [r6, #0x8]
	sub		r1, #0x18
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	sub		r1, #0xc
	mov		r0, #0x9
	strb	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r6, #0x48]
	add		r0, r6, #0x0
	add		r0, #0x68
	strh	r4, [r0, #0x0]
	add		r2, r6, #0x0
	add		r2, #0x58
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x10
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		sp, #0x10
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08038318:	.4byte 0x00000814
_0803831c:	.4byte 0x08124544
_08038320:	.4byte 0x081245c8
_08038324:	.4byte 0x0000FFFE
_08038328:	.4byte 0x0000FFFD
_0803832c:	.4byte RunGameLogic_CallBack
_08038330:	.4byte 0x0000FFFF
	thumb_func_end sub_080381f8

	thumb_func_start sub_08038334
sub_08038334:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x40
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	ldr		r2, _08038368
	mov		r0, #0x24
	add		r0, r0, r2
	mov		r9, r0
	mov		r3, #0x0
	ldr		r1, _0803836c
	add		r0, r2, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bge		_08038370
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_080383b8
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	b		_080383b4

_08038368:	.4byte RunGameLogic_CallBack
_0803836c:	.4byte 0x00000CAC

_08038370:
	ldr		r1, _08038390
	add		r0, r2, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08038394
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_080383a8
	b		_080383ba

.incbin "base.gba", 0x3838E, 0x2

_08038390:	.4byte 0x000007FE

_08038394:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_080383b8
	mov		r1, #0x0
	ldr		r0, _080383a4
	ldrh	r0, [r0, #0x12]
	b		_080383ae

_080383a4:	.4byte 0x03002FE0

_080383a8:
	mov		r1, #0x0
	ldr		r0, _08038444
	ldrh	r0, [r0, #0xc]
_080383ae:
	cmp		r0, #0x0
	bne		_080383b4
	mov		r1, #0x1
_080383b4:
	cmp		r1, #0x0
	beq		_080383ba
_080383b8:
	mov		r3, #0x1
_080383ba:
	mov		r8, r3
	add		r2, r6, #0x0
	add		r2, #0x4c
	ldrb	r1, [r2, #0x0]
	mov		r5, #0x8
	add		r0, r5, #0x0
	and		r0, r1
	str		r2, [sp, #0x20]
	cmp		r0, #0x0
	beq		_08038450
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_080381f8
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_080383ec
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_080381f8
_080383ec:
	add		r0, r7, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_08038404
	bl		sub_08038e34
_08038404:
	ldr		r0, _08038448
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_08038414
	add		r0, r7, #0x0
	bl		sub_08055998
_08038414:
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _0803844c
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	strh	r5, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	str		r4, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08037fac
	b		_080389c6

.incbin "base.gba", 0x38442, 0x2

_08038444:	.4byte 0x03002FE0
_08038448:	.4byte 0x00000814
_0803844c:	.4byte 0x00008007

_08038450:
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_080384c4
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_080381f8
	add		r0, r6, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_0803847e
	bl		sub_08038e34
_0803847e:
	ldr		r0, _080384bc
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803848e
	add		r0, r6, #0x0
	bl		sub_08055998
_0803848e:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _080384c0
	strh	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r6, #0x48]
	strh	r5, [r6, #0x38]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	str		r4, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08037fac
	b		_08038a1c

_080384bc:	.4byte 0x00000814
_080384c0:	.4byte 0x00008007

_080384c4:
	add		r2, r6, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r0, r1
	mov		r10, r2
	cmp		r0, #0x0
	beq		_08038500
	add		r2, r7, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08038528
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _080384fc
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	strh	r5, [r7, #0x38]
	b		_080389a6

_080384fc:	.4byte 0x00008007

_08038500:
	add		r2, r7, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038528
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _08038524
	strh	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r6, #0x48]
	strh	r5, [r6, #0x38]
	b		_080389fc

_08038524:	.4byte 0x00008007

_08038528:
	mov		r0, r10
	ldrh	r3, [r0, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	add		r0, r5, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_08038544
	ldrh	r1, [r2, #0x0]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038544
	b		_08038af0
_08038544:
	mov		r4, #0x40
	add		r0, r4, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_08038550
	b		_080386ec
_08038550:
	ldrh	r1, [r2, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803855c
	b		_08038704
_0803855c:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _080385c4
	strh	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r6, #0x48]
	mov		r0, #0x8
	strh	r0, [r6, #0x38]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	add		r0, r7, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08038094
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x14]
	ldr		r0, _080385c8
	add		r0, r9
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08038636
	cmp		r2, r6
	beq		_080385cc
	mov		r0, r9
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080385be
	mov		r2, #0x40
_080385be:
	mov		r0, #0x1
	b		_080385d2

.incbin "base.gba", 0x385C2, 0x2

_080385c4:	.4byte 0x00008007
_080385c8:	.4byte 0x00000814

_080385cc:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_080385d2:
	ldr		r5, _080385f4
	lsl		r4, r0, #0x2
	ldr		r0, [sp, #0x20]
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	mov		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_080385f8
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_080385fa

.incbin "base.gba", 0x385F2, 0x2

_080385f4:	.4byte 0x081077d4

_080385f8:
	add		r0, r4, r3
_080385fa:
	add		r0, r5, r0
	ldrh	r4, [r0, #0x0]
	mov		r8, r2
	cmp		r2, #0x0
	beq		_08038636
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _080386d0
	ldr		r0, _080386d4
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
	mov		r2, r8
	bl		sub_0807169c
_08038636:
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _080386d8
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [sp, #0x14]
	lsl		r0, r1, #0x10
	ldr		r4, _080386dc
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	add		r0, r0, r2
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803866a
	add		r1, #0x3f
_0803866a:
	asr		r3, r1, #0x6
	ldr		r1, _080386e0
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r4
	ldr		r0, [r1, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08038688
	ldr		r1, _080386e4
	add		r0, r0, r1
_08038688:
	asr		r0, r0, #0xf
	add		r1, r7, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _080386e0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r2, #0x0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_080386b2
	ldr		r3, _080386e4
	add		r1, r1, r3
_080386b2:
	asr		r1, r1, #0xf
	add		r0, r7, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	ldr		r4, _080386e8
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
	str		r6, [r0, #0x54]
	mov		r0, #0x0
	add		r1, r4, #0x0
	b		_080389ca

.incbin "base.gba", 0x386CE, 0x2

_080386d0:	.4byte 0x08124544
_080386d4:	.4byte 0x081245c8
_080386d8:	.4byte 0x00008007
_080386dc:	.4byte 0x08101068
_080386e0:	.4byte 0x000003FF
_080386e4:	.4byte 0x00007FFF
_080386e8:	.4byte 0x08107540

_080386ec:
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080386fa
	b		_080388c0
_080386fa:
	ldr		r0, [r6, #0x48]
	and		r0, r5
	cmp		r0, #0x0
	bne		_08038704
	b		_080388c0
_08038704:
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803872a
	mov		r3, #0xbc
	lsl		r3, r3, #0x1
	add		r0, r7, r3
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0803871c
	b		_080388c0
_0803871c:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803872a
	b		_080388c0
_0803872a:
	mov		r0, r8
	cmp		r0, #0x0
	bne		_08038732
	b		_080388c0
_08038732:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _08038798
	strh	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r6, #0x48]
	mov		r0, #0x8
	strh	r0, [r6, #0x38]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	add		r0, r7, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08038094
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x18]
	ldr		r0, _0803879c
	add		r0, r9
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803880a
	cmp		r2, r6
	beq		_080387a0
	mov		r0, r9
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08038794
	mov		r2, #0x40
_08038794:
	mov		r0, #0x1
	b		_080387a6

_08038798:	.4byte 0x00008007
_0803879c:	.4byte 0x00000814

_080387a0:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_080387a6:
	ldr		r5, _080387c8
	lsl		r4, r0, #0x2
	ldr		r0, [sp, #0x20]
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	mov		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_080387cc
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_080387ce

.incbin "base.gba", 0x387C6, 0x2

_080387c8:	.4byte 0x081077d4

_080387cc:
	add		r0, r4, r3
_080387ce:
	add		r0, r5, r0
	ldrh	r4, [r0, #0x0]
	mov		r8, r2
	cmp		r2, #0x0
	beq		_0803880a
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _080388a4
	ldr		r0, _080388a8
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
	mov		r2, r8
	bl		sub_0807169c
_0803880a:
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _080388ac
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [sp, #0x18]
	lsl		r0, r1, #0x10
	ldr		r4, _080388b0
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	add		r0, r0, r2
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803883e
	add		r1, #0x3f
_0803883e:
	asr		r3, r1, #0x6
	ldr		r1, _080388b4
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r4
	ldr		r0, [r1, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0803885c
	ldr		r1, _080388b8
	add		r0, r0, r1
_0803885c:
	asr		r0, r0, #0xf
	add		r1, r7, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _080388b4
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r2, #0x0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_08038886
	ldr		r3, _080388b8
	add		r1, r1, r3
_08038886:
	asr		r1, r1, #0xf
	add		r0, r7, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	ldr		r4, _080388bc
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
	str		r6, [r0, #0x54]
	mov		r0, #0x0
	add		r1, r4, #0x0
	b		_080389ca

.incbin "base.gba", 0x388A2, 0x2

_080388a4:	.4byte 0x08124544
_080388a8:	.4byte 0x081245c8
_080388ac:	.4byte 0x00008007
_080388b0:	.4byte 0x08101068
_080388b4:	.4byte 0x000003FF
_080388b8:	.4byte 0x00007FFF
_080388bc:	.4byte 0x08107540

_080388c0:
	mov		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_080388ce
	b		_080389e6
_080388ce:
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080388ee
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080388ee
	mov		r3, r8
	cmp		r3, #0x0
	beq		_080388ee
	b		_080389e6
_080388ee:
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08038928
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _08038924
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x7a
	mov		r6, #0x0
	ldrsh	r0, [r0, r6]
	b		_080389ba

_08038924:	.4byte 0x00008007

_08038928:
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08038978
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038978
	mov		r3, r8
	cmp		r3, #0x0
	beq		_08038978
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _08038974
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x7a
	mov		r6, #0x0
	ldrsh	r0, [r0, r6]
	b		_080389ba

.incbin "base.gba", 0x38972, 0x2

_08038974:	.4byte 0x00008007

_08038978:
	mov		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x10
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_080389dc
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08038a34
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _080389d4
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
_080389a6:
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
_080389ba:
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08038094
_080389c6:
	ldr		r1, _080389d8
	mov		r0, #0x0
_080389ca:
	mov		r2, #0x0
	bl		sub_08029d24
	str		r7, [r0, #0x54]
	b		sub_08038e34

_080389d4:	.4byte 0x00008007
_080389d8:	.4byte 0x08107540

_080389dc:
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038a34
_080389e6:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _08038a2c
	strh	r0, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r6, #0x48]
	mov		r0, #0x8
	strh	r0, [r6, #0x38]
_080389fc:
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_08037e98
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	add		r0, r7, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_08038094
_08038a1c:
	ldr		r1, _08038a30
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
	str		r6, [r0, #0x54]
	b		sub_08038e34

.incbin "base.gba", 0x38A2A, 0x2

_08038a2c:	.4byte 0x00008007
_08038a30:	.4byte 0x08107540

_08038a34:
	mov		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x20
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r9, r0
	cmp		r0, #0x0
	beq		_08038a9c
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	cmp		r0, #0x0
	bne		_08038af0
	mov		r1, #0x5a
	add		r1, r1, r7
	mov		r9, r1
	ldr		r2, _08038a98
	mov		r10, r2
	mov		r3, r10
	strh	r3, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r5, #0x80
	lsl		r5, r5, #0x5
	orr		r0, r5
	str		r0, [r7, #0x48]
	mov		r4, #0x8
	strh	r4, [r7, #0x38]
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	mov		r6, r8
	str		r6, [sp, #0x0]
	add		r0, r7, #0x0
	bl		sub_08037fac
	mov		r1, r10
	mov		r0, r9
	strh	r1, [r0, #0x0]
	ldr		r0, [r7, #0x48]
	orr		r0, r5
	str		r0, [r7, #0x48]
	strh	r4, [r7, #0x38]
	add		r0, r7, #0x0
	b		_08038ae4

_08038a98:	.4byte 0x00008007

_08038a9c:
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038af0
	mov		r2, #0x5a
	add		r2, r2, r6
	mov		r8, r2
	ldr		r3, _08038aec
	mov		r10, r3
	mov		r0, r10
	strh	r0, [r2, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r5, #0x80
	lsl		r5, r5, #0x5
	orr		r0, r5
	str		r0, [r6, #0x48]
	mov		r4, #0x8
	strh	r4, [r6, #0x38]
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	mov		r0, r9
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	bl		sub_08037fac
	mov		r2, r10
	mov		r1, r8
	strh	r2, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	orr		r0, r5
	str		r0, [r6, #0x48]
	strh	r4, [r6, #0x38]
	add		r0, r6, #0x0
_08038ae4:
	mov		r1, #0x3
	bl		sub_08036eec
	b		sub_08038e34

_08038aec:	.4byte 0x00008007

_08038af0:
	add		r0, r6, #0x0
	bl		sub_08037e2c
	str		r0, [sp, #0x10]
	add		r0, r7, #0x0
	bl		sub_08037e2c
	mov		r10, r0
	ldr		r3, [sp, #0x10]
	cmp		r3, r10
	bge		_08038b14
	add		r0, r6, #0x0
	add		r1, r3, #0x0
	add		r6, r7, #0x0
	add		r7, r0, #0x0
	mov		r0, r10
	str		r0, [sp, #0x10]
	mov		r10, r1
_08038b14:
	add		r0, r6, #0x0
	add		r0, #0x5a
	ldr		r3, _08038bb0
	strh	r3, [r0, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	orr		r0, r2
	str		r0, [r6, #0x48]
	mov		r1, #0x8
	strh	r1, [r6, #0x38]
	add		r0, r7, #0x0
	add		r0, #0x5a
	strh	r3, [r0, #0x0]
	ldr		r0, [r7, #0x48]
	orr		r0, r2
	str		r0, [r7, #0x48]
	strh	r1, [r7, #0x38]
	add		r0, r6, #0x0
	mov		r1, #0x3
	bl		sub_08036eec
	add		r0, r7, #0x0
	mov		r1, #0x3
	bl		sub_08036eec
	add		r0, r6, #0x0
	add		r0, #0xee
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	add		r1, r7, #0x0
	add		r1, #0xee
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	sub		r0, r0, r1
	add		r1, r6, #0x0
	add		r1, #0xf0
	mov		r3, #0x0
	ldrsh	r1, [r1, r3]
	add		r2, r7, #0x0
	add		r2, #0xf0
	mov		r3, #0x0
	ldrsh	r2, [r2, r3]
	sub		r1, r1, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _08038bb4
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_08038bbc
	mov		r5, #0x80
	lsl		r5, r5, #0x6
	cmp		r1, r5
	bgt		_08038ba2
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08038ba2:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _08038bb8
	cmp		r0, r1
	ble		_08038be2
	add		r0, r4, r5
	b		_08038bde

_08038bb0:	.4byte 0x00008007
_08038bb4:	.4byte 0xFFFF8000
_08038bb8:	.4byte 0x5FFF0000

_08038bbc:
	ldr		r0, _08038d1c
	cmp		r1, r0
	blt		_08038bcc
	mov		r2, #0xa0
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08038bcc:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _08038d20
	cmp		r0, r1
	bgt		_08038be2
	mov		r3, #0xe0
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_08038bde:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08038be2:
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r1, r4, #0x0
	str		r0, [sp, #0x1C]
	cmp		r4, #0x0
	bge		_08038bf0
	add		r1, #0x3f
_08038bf0:
	asr		r5, r1, #0x6
	ldr		r0, _08038d24
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _08038d28
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	sub		r0, r2, r5
	ldr		r3, _08038d24
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r2, _08038d28
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	add		r3, r6, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	mov		r12, r0
	mov		r0, r12
	mul		r0, r1
	str		r0, [sp, #0x34]
	add		r1, r6, #0x0
	add		r1, #0x50
	mov		r0, #0x0
	ldrsh	r2, [r1, r0]
	mov		r9, r2
	mov		r2, r8
	mov		r0, r9
	mul		r0, r2
	ldr		r2, [sp, #0x34]
	sub		r0, r2, r0
	str		r3, [sp, #0x24]
	str		r1, [sp, #0x2C]
	cmp		r0, #0x0
	bge		_08038c46
	ldr		r3, _08038d2c
	add		r0, r0, r3
_08038c46:
	asr		r0, r0, #0xf
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	ldr		r1, _08038d24
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r2, _08038d28
	add		r0, r0, r2
	ldr		r5, [r0, #0x0]
	mov		r3, r8
	mov		r1, r12
	mul		r1, r3
	mov		r0, r9
	mul		r0, r5
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08038c6c
	ldr		r1, _08038d2c
	add		r0, r0, r1
_08038c6c:
	asr		r0, r0, #0xf
	str		r0, [sp, #0x8]
	add		r2, r7, #0x0
	add		r2, #0x4e
	str		r2, [sp, #0x3C]
	mov		r0, #0x0
	ldrsh	r3, [r2, r0]
	mov		r9, r3
	mov		r1, r9
	mul		r1, r5
	str		r1, [sp, #0x34]
	add		r1, r7, #0x0
	add		r1, #0x50
	mov		r3, #0x0
	ldrsh	r2, [r1, r3]
	mov		r12, r2
	mov		r2, r8
	mov		r0, r12
	mul		r0, r2
	ldr		r3, [sp, #0x34]
	sub		r2, r3, r0
	ldr		r0, [sp, #0x3C]
	str		r0, [sp, #0x28]
	str		r1, [sp, #0x30]
	cmp		r2, #0x0
	bge		_08038ca4
	ldr		r1, _08038d2c
	add		r2, r2, r1
_08038ca4:
	asr		r2, r2, #0xf
	str		r2, [sp, #0xC]
	mov		r2, r8
	mov		r1, r9
	mul		r1, r2
	mov		r0, r12
	mul		r0, r5
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08038cbc
	ldr		r3, _08038d2c
	add		r0, r0, r3
_08038cbc:
	asr		r0, r0, #0xf
	mov		r9, r0
	ldr		r1, [sp, #0x10]
	mov		r2, r10
	sub		r0, r1, r2
	ldr		r3, [sp, #0x4]
	mul		r0, r3
	ldr		r2, [sp, #0xC]
	lsl		r1, r2, #0x1
	mov		r3, r10
	mul		r3, r1
	add		r1, r3, #0x0
	add		r0, r0, r1
	ldr		r4, [sp, #0x10]
	add		r4, r10
	add		r1, r4, #0x0
	bl		sub_0807d80c
	add		r5, r0, #0x0
	ldr		r1, [sp, #0x4]
	lsl		r0, r1, #0x1
	ldr		r2, [sp, #0x10]
	mul		r0, r2
	mov		r3, r10
	sub		r1, r3, r2
	ldr		r2, [sp, #0xC]
	mul		r1, r2
	add		r0, r0, r1
	add		r1, r4, #0x0
	bl		sub_0807d80c
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x58
	add		r1, r7, #0x0
	add		r1, #0x58
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	cmp		r0, r1
	beq		_08038d34
	sub		r1, r5, r4
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bgt		_08038d5a
	ldr		r3, _08038d30
	add		r4, r5, r3
	b		_08038d5a

_08038d1c:	.4byte 0xFFFFE000
_08038d20:	.4byte 0xFFFFA000
_08038d24:	.4byte 0x000003FF
_08038d28:	.4byte 0x08101068
_08038d2c:	.4byte 0x00007FFF
_08038d30:	.4byte 0xFFFFFE00

_08038d34:
	sub		r1, r5, r4
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bgt		_08038d5a
	lsr		r0, r1, #0x1f
	add		r0, r1, r0
	asr		r0, r0, #0x1
	add		r0, r4, r0
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	add		r5, r0, r6
	sub		r0, r5, r4
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	add		r0, r4, r0
	ldr		r1, _08038e44
	add		r4, r0, r1
_08038d5a:
	ldr		r7, _08038e48
	ldr		r2, [sp, #0x1C]
	asr		r3, r2, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_08038d68
	add		r0, #0x3f
_08038d68:
	asr		r2, r0, #0x6
	ldr		r6, _08038e4c
	add		r1, r6, #0x0
	add		r0, r2, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r6, _08038e4c
	mov		r10, r6
	and		r0, r6
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r7, [r0, #0x0]
	mul		r1, r5
	ldr		r6, [sp, #0x8]
	add		r0, r6, #0x0
	mul		r0, r7
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08038d9c
	ldr		r1, _08038e50
	add		r0, r0, r1
_08038d9c:
	asr		r0, r0, #0xf
	mov		r8, r0
	add		r0, r2, #0x0
	mov		r2, r10
	and		r0, r2
	lsl		r0, r0, #0x2
	ldr		r6, _08038e48
	add		r0, r0, r6
	ldr		r2, [r0, #0x0]
	ldr		r0, [sp, #0x8]
	add		r1, r0, #0x0
	mul		r1, r2
	add		r0, r5, #0x0
	mul		r0, r7
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08038dc2
	ldr		r1, _08038e50
	add		r0, r0, r1
_08038dc2:
	asr		r6, r0, #0xf
	add		r1, r4, #0x0
	mul		r1, r2
	mov		r0, r9
	mul		r0, r7
	add		r1, r1, r0
	cmp		r1, #0x0
	bge		_08038dd6
	ldr		r0, _08038e50
	add		r1, r1, r0
_08038dd6:
	asr		r5, r1, #0xf
	mov		r1, r9
	mul		r1, r2
	add		r0, r4, #0x0
	mul		r0, r7
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08038dea
	ldr		r1, _08038e50
	add		r0, r0, r1
_08038dea:
	asr		r0, r0, #0xf
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	cmp		r8, r4
	ble		_08038df6
	mov		r8, r4
_08038df6:
	ldr		r3, _08038e54
	cmp		r8, r3
	bge		_08038dfe
	mov		r8, r3
_08038dfe:
	cmp		r6, r4
	ble		_08038e04
	add		r6, r4, #0x0
_08038e04:
	cmp		r6, r3
	bge		_08038e0a
	add		r6, r3, #0x0
_08038e0a:
	cmp		r5, r4
	ble		_08038e10
	add		r5, r4, #0x0
_08038e10:
	cmp		r5, r3
	bge		_08038e16
	add		r5, r3, #0x0
_08038e16:
	cmp		r0, r4
	ble		_08038e1c
	add		r0, r4, #0x0
_08038e1c:
	cmp		r0, r3
	bge		_08038e22
	add		r0, r3, #0x0
_08038e22:
	mov		r3, r8
	ldr		r2, [sp, #0x24]
	strh	r3, [r2, #0x0]
	ldr		r1, [sp, #0x2C]
	strh	r6, [r1, #0x0]
	ldr		r2, [sp, #0x28]
	strh	r5, [r2, #0x0]
	ldr		r3, [sp, #0x30]
	strh	r0, [r3, #0x0]
	thumb_func_end sub_08038334

	thumb_func_start sub_08038e34
sub_08038e34:
	add		sp, #0x40
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08038e44:	.4byte 0xFFFFFF00
_08038e48:	.4byte 0x08101068
_08038e4c:	.4byte 0x000003FF
_08038e50:	.4byte 0x00007FFF
_08038e54:	.4byte 0xFFFFFC00
	thumb_func_end sub_08038e34

	thumb_func_start sub_08038e58
sub_08038e58:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	mov		r9, r0
	mov		r10, r1
	ldrh	r0, [r0, #0x38]
	str		r0, [sp, #0x0]
	ldrh	r0, [r1, #0x38]
	ldr		r1, [sp, #0x0]
	orr		r1, r0
	str		r1, [sp, #0x0]
	cmp		r1, #0x1
	ble		_08038e7a
	b		_0803902a
_08038e7a:
	mov		r0, r9
	add		r0, #0x60
	mov		r1, r10
	add		r1, #0x60
	ldrh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x0]
	orr		r0, r2
	cmp		r0, #0x0
	beq		_08038e8e
	b		_0803902a
_08038e8e:
	mov		r0, r9
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_08038e9a
	b		_0803902a
_08038e9a:
	mov		r0, r10
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_08038ea6
	b		_0803902a
_08038ea6:
	mov		r2, r9
	ldr		r0, [r2, #0x8]
	ldr		r1, _0803903c
	cmp		r0, r1
	ble		_08038eb2
	b		_0803902a
_08038eb2:
	mov		r2, r10
	ldr		r0, [r2, #0x8]
	cmp		r0, r1
	ble		_08038ebc
	b		_0803902a
_08038ebc:
	mov		r0, r9
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08038eca
	b		_0803902a
_08038eca:
	mov		r0, r10
	add		r0, #0x66
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	beq		_08038ed8
	b		_0803902a
_08038ed8:
	mov		r0, r9
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038eea
	b		_08039020
_08038eea:
	mov		r0, r10
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08038efa
	b		_08039020
_08038efa:
	ldr		r2, _08039040
	mov		r1, r9
	add		r1, #0xbc
	mov		r0, r10
	add		r0, #0xbc
	ldr		r7, [r0, #0x0]
	ldr		r1, [r1, #0x0]
	cmp		r7, r1
	bge		_08038f0e
	add		r7, r1, #0x0
_08038f0e:
	ldr		r1, _08039044
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	cmp		r9, r0
	bne		_08038f96
	mov		r2, r9
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08038f96
	add		r0, r7, #0x0
	cmp		r7, #0x0
	bge		_08038f2c
	neg		r0, r7
_08038f2c:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08039048
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r4, r7, #0x0
	cmp		r7, #0x0
	bge		_08038f40
	neg		r4, r7
_08038f40:
	asr		r4, r4, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0xa7
	bl		sub_0807073c
	ldr		r2, _0803904c
	mov		r8, r2
	ldr		r5, _08039050
	mov		r0, #0xa7
	lsl		r0, r0, #0x3
	add		r5, r5, r0
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08071704
_08038f96:
	ldr		r1, _08039054
	ldr		r2, _08039058
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	cmp		r10, r0
	bne		_08039020
	mov		r1, r10
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039020
	add		r0, r7, #0x0
	cmp		r7, #0x0
	bge		_08038fb6
	neg		r0, r7
_08038fb6:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r2, _08039048
	add		r0, r0, r2
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_08038fca
	neg		r0, r0
_08038fca:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0xa7
	bl		sub_0807073c
	ldr		r0, _0803904c
	mov		r8, r0
	ldr		r5, _08039050
	mov		r1, #0xa7
	lsl		r1, r1, #0x3
	add		r5, r5, r1
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08071704
_08039020:
	mov		r0, r9
	mov		r1, r10
	ldr		r2, [sp, #0x0]
	bl		sub_08038334
_0803902a:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3903A, 0x2

_0803903c:	.4byte 0x0004FFFF
_08039040:	.4byte RunGameLogic_CallBack
_08039044:	.4byte 0x00000838
_08039048:	.4byte 0xFFFFFE00
_0803904c:	.4byte 0x08124544
_08039050:	.4byte 0x081245c8
_08039054:	.4byte 0x030031C4
_08039058:	.4byte 0x00000814
	thumb_func_end sub_08038e58

	thumb_func_start sub_0803905c
sub_0803905c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	ldr		r5, _0803911c
	add		r4, r5, #0x0
	add		r4, #0x24
	mov		r0, #0x3
	strh	r0, [r6, #0x38]
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039130
	add		r2, r6, #0x0
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r4, [r0, #0x0]
	ldr		r1, _08039120
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	beq		_0803909c
	b		_080391e2
_0803909c:
	ldr		r0, [r6, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080390a8
	b		_080391e2
_080390a8:
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_080390b0
	neg		r0, r4
_080390b0:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r3, _08039124
	add		r0, r0, r3
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bge		_080390c4
	neg		r0, r0
_080390c4:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0x87
	bl		sub_0807073c
	ldr		r0, _08039128
	mov		r8, r0
	ldr		r5, _0803912c
	mov		r1, #0x87
	lsl		r1, r1, #0x3
	add		r5, r5, r1
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
	ldrh		r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08071704
	b		_080391e2

_0803911c:	.4byte RunGameLogic_CallBack
_08039120:	.4byte 0x00000838
_08039124:	.4byte 0xFFFFFE00
_08039128:	.4byte 0x08124544
_0803912c:	.4byte 0x081245c8

_08039130:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08037e98
	ldr		r3, _08039164
	add		r0, r5, r3
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080391d6
	cmp		r2, r6
	beq		_08039168
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0803915e
	mov		r2, #0x40
_0803915e:
	mov		r0, #0x1
	b		_0803916e

.incbin "base.gba", 0x39162, 0x2

_08039164:	.4byte 0x00000838

_08039168:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_0803916e:
	ldr		r5, _08039194
	lsl		r4, r0, #0x2
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r6, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039198
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_0803919a

.incbin "base.gba", 0x39192, 0x2

_08039194:	.4byte 0x081077d4

_08039198:
	add		r0, r4, r3
_0803919a:
	add		r0, r5, r0
	ldrh	r4, [r0, #0x0]
	add		r7, r2, #0x0
	cmp		r7, #0x0
	beq		_080391d6
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _080391ec
	ldr		r0, _080391f0
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
	add		r2, r7, #0x0
	bl		sub_0807169c
_080391d6:
	add		r0, r6, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
_080391e2:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080391ec:	.4byte 0x08124544
_080391f0:	.4byte 0x081245c8
	thumb_func_end sub_0803905c

	thumb_func_start sub_080391f4
sub_080391f4:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	ldr		r0, _08039220
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r4, r6, #0x0
	ldrh	r1, [r6, #0x10]
	ldr		r0, _08039224
	cmp		r1, r0
	bne		_08039248
	add		r2, r5, #0x0
	add		r2, #0x4e
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	ble		_08039228
	add		r3, r0, #0x0
	b		_0803922a

_08039220:	.4byte RunGameLogic_CallBack
_08039224:	.4byte 0x00008403

_08039228:
	add		r3, r1, #0x0
_0803922a:
	add		r2, r5, #0x0
	add		r2, #0x50
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	ble		_0803923c
	add		r1, r0, #0x0
_0803923c:
	lsl		r0, r3, #0x7
	str		r0, [r4, #0x28]
	lsl		r0, r1, #0x7
	str		r0, [r4, #0x2c]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
_08039248:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08037e98
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x71
	ldrb	r3, [r0, #0x0]
	lsl		r3, r3, #0x3
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	add		r0, r5, #0x0
	bl		sub_08037fac
	ldr		r1, _080392c4
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080392ba
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_080392ba
	mov		r0, #0x84
	bl		sub_0807073c
	ldr		r5, _080392c8
	ldr		r4, _080392cc
	mov		r0, #0x84
	lsl		r0, r0, #0x3
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
_080392ba:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x392C2, 0x2

_080392c4:	.4byte 0x00000814
_080392c8:	.4byte 0x08124544
_080392cc:	.4byte 0x081245c8
	thumb_func_end sub_080391f4

	thumb_func_start sub_080392d0
sub_080392d0:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r6, _08039384
	add		r7, r6, #0x0
	add		r7, #0x24
	add		r0, #0x60
	add		r1, #0x50
	ldrh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x0]
	orr		r0, r2
	cmp		r0, #0x0
	beq		_080392ec
	b		_0803942c
_080392ec:
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_080392f8
	b		_0803942c
_080392f8:
	ldr		r0, [r4, #0x8]
	ldr		r1, _08039388
	cmp		r0, r1
	ble		_08039302
	b		_0803942c
_08039302:
	ldr		r0, [r5, #0x8]
	cmp		r0, r1
	ble		_0803930a
	b		_0803942c
_0803930a:
	add		r0, r4, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08039318
	b		_0803942c
_08039318:
	ldrh	r2, [r5, #0x10]
	ldr		r0, _0803938c
	cmp		r2, r0
	bne		_08039322
	b		_0803942c
_08039322:
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0803939c
	ldr		r2, _08039390
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803942c
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0803942c
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _08039394
	ldr		r4, _08039398
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
	b		_0803942c

_08039384:	.4byte RunGameLogic_CallBack
_08039388:	.4byte 0x00041FFF
_0803938c:	.4byte 0x00008003
_08039390:	.4byte 0x00000838
_08039394:	.4byte 0x08124544
_08039398:	.4byte 0x081245c8

_0803939c:
	add		r3, r4, #0x0
	add		r3, #0x5a
	ldr		r0, _080393c8
	strh	r0, [r3, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
	add		r1, r4, #0x0
	add		r1, #0x4c
	ldrb	r1, [r1, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080393cc
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_080381f8
	b		_0803942c

_080393c8:	.4byte 0x00008007

_080393cc:
	ldr		r0, _080393e4
	cmp		r2, r0
	bne		_080393e8
	ldrh	r1, [r3, #0x0]
	sub		r0, #0x2
	and		r0, r1
	strh	r0, [r3, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0803905c
	b		_0803942c

_080393e4:	.4byte 0x00008001

_080393e8:
	cmp		r2, r0
	blt		_0803942c
	ldr		r0, _08039414
	cmp		r2, r0
	bgt		_0803942c
	sub		r0, #0x2
	cmp		r2, r0
	blt		_0803942c
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_080391f4
	ldr		r1, [r5, #0x54]
	cmp		r1, r4
	beq		_08039420
	ldr		r2, _08039418
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bne		_08039420
	ldr		r1, _0803941c
	b		_08039422

_08039414:	.4byte 0x00008403
_08039418:	.4byte 0x00000838
_0803941c:	.4byte 0x08107500

_08039420:
	ldr		r1, _08039434
_08039422:
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
	str		r4, [r0, #0x54]
_0803942c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x39432, 0x2

_08039434:	.4byte 0x08107528
	thumb_func_end sub_080392d0

	thumb_func_start sub_08039438
sub_08039438:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r6, r0, #0x0
	add		r0, #0xee
	mov		r3, #0x0
	ldrsh	r2, [r0, r3]
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bge		_08039456
	ldr		r4, _080394b4
	add		r0, r0, r4
_08039456:
	asr		r0, r0, #0x10
	sub		r2, r2, r0
	add		r0, r6, #0x0
	add		r0, #0xf0
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	ldr		r1, [r1, #0x4]
	cmp		r1, #0x0
	bge		_0803946c
	ldr		r4, _080394b4
	add		r1, r1, r4
_0803946c:
	asr		r1, r1, #0x10
	sub		r1, r0, r1
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _080394b8
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_080394c0
	mov		r5, #0x80
	lsl		r5, r5, #0x4
	cmp		r1, r5
	bgt		_080394a6
	mov		r1, #0xf0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_080394a6:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _080394bc
	cmp		r0, r1
	ble		_080394e6
	add		r0, r4, r5
	b		_080394e2

_080394b4:	.4byte 0x0000FFFF
_080394b8:	.4byte 0xFFFF8000
_080394bc:	.4byte 0x77FF0000

_080394c0:
	ldr		r0, _080395ec
	cmp		r1, r0
	blt		_080394d0
	mov		r2, #0x88
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_080394d0:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _080395f0
	cmp		r0, r1
	bgt		_080394e6
	mov		r3, #0xf8
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_080394e2:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_080394e6:
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_080394f2
	add		r0, #0x3f
_080394f2:
	asr		r5, r0, #0x6
	ldr		r0, _080395f4
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _080395f8
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	str		r5, [sp, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r10, r2
	sub		r0, r2, r5
	ldr		r3, _080395f4
	mov		r9, r3
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r2, _080395f8
	add		r0, r0, r2
	ldr		r7, [r0, #0x0]
	add		r3, r6, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	mov		r8, r0
	mov		r2, r8
	mul		r2, r1
	add		r1, r6, #0x0
	add		r1, #0x50
	mov		r0, #0x0
	ldrsh	r6, [r1, r0]
	mov		r12, r6
	mov		r0, r12
	mul		r0, r7
	sub		r0, r2, r0
	str		r3, [sp, #0x4]
	str		r1, [sp, #0x8]
	cmp		r0, #0x0
	bge		_08039546
	ldr		r1, _080395fc
	add		r0, r0, r1
_08039546:
	asr		r2, r0, #0xf
	add		r0, r5, #0x0
	mov		r3, r9
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r6, _080395f8
	add		r0, r0, r6
	ldr		r6, [r0, #0x0]
	mov		r1, r8
	mul		r1, r7
	mov		r0, r12
	mul		r0, r6
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08039568
	ldr		r1, _080395fc
	add		r0, r0, r1
_08039568:
	asr		r5, r0, #0xf
	lsr		r0, r0, #0x1f
	add		r0, r5, r0
	asr		r5, r0, #0x1
	neg		r0, r2
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r2, r0, #0x1
	cmp		r2, #0xff
	bgt		_0803957e
	mov		r2, r10
_0803957e:
	add		r1, r2, #0x0
	mul		r1, r6
	add		r0, r5, #0x0
	mul		r0, r7
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08039590
	ldr		r3, _080395fc
	add		r0, r0, r3
_08039590:
	asr		r3, r0, #0xf
	mov		r4, r10
	ldr		r1, [sp, #0x0]
	sub		r0, r4, r1
	mov		r4, r9
	and		r0, r4
	lsl		r0, r0, #0x2
	ldr		r1, _080395f8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	mul		r1, r6
	mul		r0, r2
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_080395b4
	ldr		r2, _080395fc
	add		r0, r0, r2
_080395b4:
	asr		r0, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_080395c0
	add		r3, r2, #0x0
_080395c0:
	ldr		r1, _08039600
	cmp		r3, r1
	bge		_080395c8
	add		r3, r1, #0x0
_080395c8:
	cmp		r0, r2
	ble		_080395ce
	add		r0, r2, #0x0
_080395ce:
	cmp		r0, r1
	bge		_080395d4
	add		r0, r1, #0x0
_080395d4:
	ldr		r4, [sp, #0x4]
	strh	r3, [r4, #0x0]
	ldr		r6, [sp, #0x8]
	strh	r0, [r6, #0x0]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080395ec:	.4byte 0xFFFFF800
_080395f0:	.4byte 0xFFFF8800
_080395f4:	.4byte 0x000003FF
_080395f8:	.4byte 0x08101068
_080395fc:	.4byte 0x00007FFF
_08039600:	.4byte 0xFFFFFC00
	thumb_func_end sub_08039438

	thumb_func_start sub_08039604
sub_08039604:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, [r5, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08039618
	ldr		r1, _080396a8
	add		r0, r0, r1
_08039618:
	asr		r3, r0, #0x10
	ldr		r1, [r5, #0x4]
	ldr		r0, [r2, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08039628
	ldr		r0, _080396a8
	add		r1, r1, r0
_08039628:
	add		r0, r3, #0x0
	asr		r1, r1, #0x10
	bl		sub_08028738
	ldr		r6, _080396ac
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803963e
	add		r1, #0x3f
_0803963e:
	asr		r4, r1, #0x6
	ldr		r1, _080396b0
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_08039658
	ldr		r1, _080396b4
	add		r0, r0, r1
_08039658:
	asr		r3, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _080396b0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x9
	neg		r0, r0
	cmp		r0, #0x0
	bge		_08039676
	ldr		r1, _080396b4
	add		r0, r0, r1
_08039676:
	asr		r1, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r3, r0
	ble		_08039682
	add		r3, r0, #0x0
_08039682:
	cmp		r1, r0
	ble		_08039688
	add		r1, r0, #0x0
_08039688:
	ldr		r0, _080396b8
	cmp		r3, r0
	bge		_08039690
	add		r3, r0, #0x0
_08039690:
	cmp		r1, r0
	bge		_08039696
	add		r1, r0, #0x0
_08039696:
	add		r0, r5, #0x0
	add		r0, #0x4e
	strh	r3, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x396A6, 0x2

_080396a8:	.4byte 0x0000FFFF
_080396ac:	.4byte 0x08101068
_080396b0:	.4byte 0x000003FF
_080396b4:	.4byte 0x00007FFF
_080396b8:	.4byte 0xFFFFFC00
	thumb_func_end sub_08039604

	thumb_func_start sub_080396bc
sub_080396bc:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	ldr		r4, _08039700
	add		r7, r4, #0x0
	add		r7, #0x24
	add		r1, r7, #0x0
	bl		sub_08037e98
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08039438
	ldr		r0, _08039704
	add		r4, r4, r0
	ldr		r4, [r4, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039776
	cmp		r4, r6
	beq		_08039708
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080396fc
	mov		r2, #0x40
_080396fc:
	mov		r0, #0x1
	b		_0803970e

_08039700:	.4byte RunGameLogic_CallBack
_08039704:	.4byte 0x00000838

_08039708:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_0803970e:
	ldr		r5, _08039734
	lsl		r4, r0, #0x2
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r6, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039738
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_0803973a

.incbin "base.gba", 0x39732, 0x2

_08039734:	.4byte 0x081077d4

_08039738:
	add		r0, r4, r3
_0803973a:
	add		r0, r5, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08039776
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _0803977c
	ldr		r0, _08039780
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
_08039776:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803977c:	.4byte 0x08124544
_08039780:	.4byte 0x081245c8
	thumb_func_end sub_080396bc

	thumb_func_start sub_08039784
sub_08039784:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, [r2, #0x8]
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	cmp		r1, r0
	ble		_0803979a
	ldr		r0, [r2, #0x30]
	cmp		r0, #0x0
	blt		_080397c0
_0803979a:
	add		r0, r4, #0x0
	bl		sub_08038168
	add		r2, r4, #0x0
	add		r2, #0x4e
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	strh	r0, [r2, #0x0]
	b		_080398aa
_080397c0:
	add		r0, r4, #0x0
	add		r0, #0x88
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	sub		r0, #0x3a
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08039830
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0xe0
	lsl		r0, r0, #0x7
	strh	r0, [r4, #0x38]
	add		r1, r4, #0x0
	add		r1, #0x64
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0xa4
	bl		sub_08070808
	add		r0, r4, #0x0
	mov		r1, #0x5
	bl		sub_08036c1c
	add		r0, r4, #0x0
	mov		r1, #0x4
	bl		sub_08036eec
	ldr		r0, _08039834
	add		r3, r0, #0x0
	add		r3, #0x24
	ldr		r1, _08039838
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080398aa
	cmp		r2, r4
	beq		_0803983c
	add		r0, r3, #0x0
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0803982c
	mov		r2, #0x40
_0803982c:
	mov		r0, #0x1
	b		_08039842

_08039830:	.4byte 0x0000FFD3
_08039834:	.4byte RunGameLogic_CallBack
_08039838:	.4byte 0x00000838

_0803983c:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_08039842:
	ldr		r6, _08039868
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
	bne		_0803986c
	add		r0, r3, #0x2
	add		r0, r5, r0
	b		_0803986e

.incbin "base.gba", 0x39866, 0x2

_08039868:	.4byte 0x081077d4

_0803986c:
	add		r0, r5, r3
_0803986e:
	add		r0, r6, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_080398aa
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _080398b0
	ldr		r0, _080398b4
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
_080398aa:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_080398b0:	.4byte 0x08124544
_080398b4:	.4byte 0x081245c8
	thumb_func_end sub_08039784

	thumb_func_start sub_080398b8
sub_080398b8:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	ldr		r4, _080398fc
	add		r7, r4, #0x0
	add		r7, #0x24
	add		r1, r7, #0x0
	bl		sub_08037e98
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08039604
	ldr		r0, _08039900
	add		r4, r4, r0
	ldr		r4, [r4, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039972
	cmp		r4, r6
	beq		_08039904
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080398f8
	mov		r2, #0x40
_080398f8:
	mov		r0, #0x1
	b		_0803990a

_080398fc:	.4byte RunGameLogic_CallBack
_08039900:	.4byte 0x00000838

_08039904:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_0803990a:
	ldr		r5, _08039930
	lsl		r4, r0, #0x2
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r6, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039934
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_08039936

.incbin "base.gba", 0x3992E, 0x2

_08039930:	.4byte 0x081077d4

_08039934:
	add		r0, r4, r3
_08039936:
	add		r0, r5, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08039972
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _08039978
	ldr		r0, _0803997c
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
_08039972:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08039978:	.4byte 0x08124544
_0803997c:	.4byte 0x081245c8
	thumb_func_end sub_080398b8

	thumb_func_start sub_08039980
sub_08039980:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r5, _080399a8
	add		r6, r5, #0x0
	add		r6, #0x24
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_080399ac
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	b		_08039a52

_080399a8:	.4byte RunGameLogic_CallBack

_080399ac:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08037e98
	ldr		r1, _080399e0
	add		r0, r5, r1
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039a52
	cmp		r2, r4
	beq		_080399e4
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080399da
	mov		r2, #0x40
_080399da:
	mov		r0, #0x1
	b		_080399ea

.incbin "base.gba", 0x399DE, 0x2

_080399e0:	.4byte 0x00000838

_080399e4:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_080399ea:
	ldr		r6, _08039a10
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
	bne		_08039a14
	add		r0, r3, #0x2
	add		r0, r5, r0
	b		_08039a16

.incbin "base.gba", 0x39A0E, 0x2

_08039a10:	.4byte 0x081077d4

_08039a14:
	add		r0, r5, r3
_08039a16:
	add		r0, r6, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08039a52
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _08039a58
	ldr		r0, _08039a5c
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
_08039a52:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08039a58:	.4byte 0x08124544
_08039a5c:	.4byte 0x081245c8
	thumb_func_end sub_08039980

	thumb_func_start sub_08039a60
sub_08039a60:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	ldr		r4, _08039aa4
	add		r6, r4, #0x0
	add		r6, #0x24
	add		r1, r6, #0x0
	bl		sub_08037e98
	add		r1, r5, #0x0
	add		r1, #0x68
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r0, _08039aa8
	add		r4, r4, r0
	ldr		r4, [r4, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039b1a
	cmp		r4, r5
	beq		_08039aac
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08039aa0
	mov		r2, #0x40
_08039aa0:
	mov		r0, #0x1
	b		_08039ab2

_08039aa4:	.4byte RunGameLogic_CallBack
_08039aa8:	.4byte 0x00000838

_08039aac:
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r0, #0x0
_08039ab2:
	ldr		r6, _08039ad8
	lsl		r4, r0, #0x2
	add		r0, r5, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r3, r0, #0x3
	add		r0, r5, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08039adc
	add		r0, r3, #0x2
	add		r0, r4, r0
	b		_08039ade

.incbin "base.gba", 0x39AD6, 0x2

_08039ad8:	.4byte 0x081077d4

_08039adc:
	add		r0, r4, r3
_08039ade:
	add		r0, r6, r0
	ldrh	r4, [r0, #0x0]
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_08039b1a
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _08039b20
	ldr		r0, _08039b24
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
_08039b1a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08039b20:	.4byte 0x08124544
_08039b24:	.4byte 0x081245c8
	thumb_func_end sub_08039a60

	thumb_func_start sub_08039b28
sub_08039b28:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	mov		r9, r1
	ldrh	r2, [r7, #0x38]
	cmp		r2, #0x1
	ble		_08039b3c
	b		_08039f64
_08039b3c:
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_08039b46
	b		_08039f64
_08039b46:
	add		r0, r7, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08039b54
	b		_08039f64
_08039b54:
	add		r0, r7, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08039bb4
	ldr		r0, _08039ba8
	ldr		r2, _08039bac
	add		r1, r0, r2
	ldr		r1, [r1, #0x0]
	add		r2, r0, #0x0
	cmp		r7, r1
	beq		_08039b70
	b		_08039f64
_08039b70:
	mov		r0, r9
	ldrh	r1, [r0, #0x10]
	ldr		r0, _08039bb0
	cmp		r1, r0
	bne		_08039b7c
	b		_08039f64
_08039b7c:
	cmp		r1, r0
	blt		_08039b8e
	add		r0, #0x13
	cmp		r1, r0
	bgt		_08039b8e
	sub		r0, #0x1
	cmp		r1, r0
	blt		_08039b8e
	b		_08039f64
_08039b8e:
	ldr		r1, _08039bac
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08039ba0
	b		_08039f64
_08039ba0:
	mov		r0, #0xa0
	bl		sub_0807073c
	b		_08039f64

_08039ba8:	.4byte RunGameLogic_CallBack
_08039bac:	.4byte 0x00000838
_08039bb0:	.4byte 0x00001007

_08039bb4:
	mov		r0, r9
	ldrh	r1, [r0, #0x10]
	ldr		r0, _08039c10
	cmp		r1, r0
	bne		_08039c24
	mov		r4, #0x0
	ldr		r2, _08039c14
	ldr		r0, _08039c18
	mov		r1, #0xbe
	lsl		r1, r1, #0x4
	add		r3, r0, r1
	ldrh	r1, [r3, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08039be6
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08039be6
	mov		r4, #0x1
_08039be6:
	cmp		r4, #0x0
	beq		_08039bec
	b		_08039f64
_08039bec:
	ldr		r0, _08039c1c
	ldr		r2, _08039c20
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_08039bfa
	b		_08039f64
_08039bfa:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08039c06
	b		_08039f64
_08039c06:
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	bl		sub_0807073c
	b		_08039f64

_08039c10:	.4byte 0x00001007
_08039c14:	.4byte 0x08124544
_08039c18:	.4byte 0x081245c8
_08039c1c:	.4byte RunGameLogic_CallBack
_08039c20:	.4byte 0x00000838

_08039c24:
	ldr		r0, _08039cbc
	cmp		r1, r0
	bne		_08039cdc
	ldr		r0, _08039cc0
	add		r1, r7, #0x0
	add		r1, #0xbc
	ldr		r4, [r1, #0x0]
	ldr		r1, _08039cc4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_08039c3e
	b		_08039f64
_08039c3e:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08039c4a
	b		_08039f64
_08039c4a:
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08039c52
	neg		r0, r4
_08039c52:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r2, _08039cc8
	add		r0, r0, r2
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r1, r4, #0x0
	cmp		r1, #0x0
	bge		_08039c66
	neg		r1, r1
_08039c66:
	asr		r4, r1, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	ldr		r0, _08039ccc
	bl		sub_0807073c
	ldr		r0, _08039cd0
	mov		r8, r0
	ldr		r5, _08039cd4
	ldr		r1, _08039cd8
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
	b		_08039f64

_08039cbc:	.4byte 0x0000100C
_08039cc0:	.4byte RunGameLogic_CallBack
_08039cc4:	.4byte 0x00000838
_08039cc8:	.4byte 0xFFFFFE00
_08039ccc:	.4byte 0x00000181
_08039cd0:	.4byte 0x08124544
_08039cd4:	.4byte 0x081245c8
_08039cd8:	.4byte 0x00000C08

_08039cdc:
	cmp		r2, #0x0
	beq		_08039d04
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _08039d00
	strh	r0, [r1, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, #0x8
	strh	r0, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08039604
	b		_08039f64

_08039d00:	.4byte 0x00008007

_08039d04:
	ldr		r2, _08039d18
	add		r0, r1, r2
	cmp		r0, #0x1d
	bls		_08039d0e
	b		_08039e50
_08039d0e:
	lsl		r0, r0, #0x2
	ldr		r1, _08039d1c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08039d18:	.4byte 0xFFFFF000
_08039d1c:	.4byte 0x08039d20
_08039d20:	.4byte 0x08039dbe

.incbin "base.gba", 0x39D24, 0x74
	thumb_func_end sub_08039b28


.incbin "base.gba", 0x39D98, 0xB8

_08039e50:

.incbin "base.gba", 0x39E50, 0x44
_08039e94:	.4byte 0x00008007
_08039e98:	.4byte 0xFFFFF000
_08039e9c:	.4byte 0x08039ea0
_08039ea0:	.4byte 0x08039f18

.incbin "base.gba", 0x39EA4, 0xC0

_08039f64:

.incbin "base.gba", 0x39F64, 0xC
	thumb_func_start sub_08039f70
sub_08039f70:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r5, r0, #0x0
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	add		r3, r5, #0x0
	add		r3, #0x5a
	ldr		r2, _08039ff0
	strh	r2, [r3, #0x0]
	ldr		r2, [r5, #0x48]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	orr		r2, r3
	str		r2, [r5, #0x48]
	mov		r2, #0x8
	strh	r2, [r5, #0x38]
	add		r2, r5, #0x0
	add		r2, #0xee
	mov		r3, #0x0
	ldrsh	r2, [r2, r3]
	sub		r0, r2, r0
	add		r2, r5, #0x0
	add		r2, #0xf0
	mov		r4, #0x0
	ldrsh	r2, [r2, r4]
	sub		r1, r2, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r5, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _08039ff4
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_08039ffc
	mov		r6, #0x80
	lsl		r6, r6, #0x4
	cmp		r1, r6
	bgt		_08039fe2
	mov		r1, #0xf0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08039fe2:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _08039ff8
	cmp		r0, r1
	ble		_0803a022
	add		r0, r4, r6
	b		_0803a01e

_08039ff0:	.4byte 0x00008007
_08039ff4:	.4byte 0xFFFF8000
_08039ff8:	.4byte 0x77FF0000

_08039ffc:
	ldr		r0, _0803a124
	cmp		r1, r0
	blt		_0803a00c
	mov		r2, #0x88
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0803a00c:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _0803a128
	cmp		r0, r1
	bgt		_0803a022
	mov		r3, #0xf8
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_0803a01e:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0803a022:
	ldr		r4, _0803a12c
	mov		r10, r4
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_0803a032
	add		r0, #0x3f
_0803a032:
	asr		r6, r0, #0x6
	ldr		r0, _0803a130
	add		r1, r0, #0x0
	add		r0, r6, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r1, [r0, #0x0]
	str		r6, [sp, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r9, r2
	sub		r0, r2, r6
	ldr		r3, _0803a130
	mov		r8, r3
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r7, [r0, #0x0]
	add		r3, r5, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	mov		r12, r0
	mov		r2, r12
	mul		r2, r1
	add		r1, r5, #0x0
	add		r1, #0x50
	mov		r0, #0x0
	ldrsh	r5, [r1, r0]
	add		r0, r5, #0x0
	mul		r0, r7
	sub		r0, r2, r0
	str		r3, [sp, #0x4]
	str		r1, [sp, #0x8]
	cmp		r0, #0x0
	bge		_0803a080
	ldr		r1, _0803a134
	add		r0, r0, r1
_0803a080:
	asr		r2, r0, #0xf
	add		r0, r6, #0x0
	mov		r3, r8
	and		r0, r3
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r6, [r0, #0x0]
	mov		r1, r12
	mul		r1, r7
	add		r0, r5, #0x0
	mul		r0, r6
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803a0a0
	ldr		r1, _0803a134
	add		r0, r0, r1
_0803a0a0:
	asr		r5, r0, #0xf
	lsr		r0, r0, #0x1f
	add		r0, r5, r0
	asr		r5, r0, #0x1
	neg		r0, r2
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r2, r0, #0x1
	cmp		r2, #0xff
	bgt		_0803a0b6
	mov		r2, r9
_0803a0b6:
	add		r1, r2, #0x0
	mul		r1, r6
	add		r0, r5, #0x0
	mul		r0, r7
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803a0c8
	ldr		r3, _0803a134
	add		r0, r0, r3
_0803a0c8:
	asr		r3, r0, #0xf
	mov		r4, r9
	ldr		r1, [sp, #0x0]
	sub		r0, r4, r1
	mov		r4, r8
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	mul		r1, r6
	mul		r0, r2
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803a0ea
	ldr		r1, _0803a134
	add		r0, r0, r1
_0803a0ea:
	asr		r0, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_0803a0f6
	add		r3, r2, #0x0
_0803a0f6:
	ldr		r1, _0803a138
	cmp		r3, r1
	bge		_0803a0fe
	add		r3, r1, #0x0
_0803a0fe:
	cmp		r0, r2
	ble		_0803a104
	add		r0, r2, #0x0
_0803a104:
	cmp		r0, r1
	bge		_0803a10a
	add		r0, r1, #0x0
_0803a10a:
	ldr		r2, [sp, #0x4]
	strh	r3, [r2, #0x0]
	ldr		r3, [sp, #0x8]
	strh	r0, [r3, #0x0]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3A122, 0x2

_0803a124:	.4byte 0xFFFFF800
_0803a128:	.4byte 0xFFFF8800
_0803a12c:	.4byte 0x08101068
_0803a130:	.4byte 0x000003FF
_0803a134:	.4byte 0x00007FFF
_0803a138:	.4byte 0xFFFFFC00
	thumb_func_end sub_08039f70

	thumb_func_start sub_0803a13c
sub_0803a13c:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	add		r1, r4, #0x0
	add		r1, #0x5a
	ldr		r0, _0803a1f8
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_0803a162
	ldr		r1, _0803a1fc
	add		r0, r0, r1
_0803a162:
	asr		r0, r0, #0x10
	sub		r3, r0, r3
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_0803a170
	ldr		r1, _0803a1fc
	add		r0, r0, r1
_0803a170:
	asr		r0, r0, #0x10
	sub		r2, r0, r2
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	bl		sub_08028738
	ldr		r6, _0803a200
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803a18e
	add		r1, #0x3f
_0803a18e:
	asr		r5, r1, #0x6
	ldr		r1, _0803a204
	add		r0, r1, #0x0
	add		r1, r5, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_0803a1a8
	ldr		r1, _0803a208
	add		r0, r0, r1
_0803a1a8:
	asr		r3, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r5
	ldr		r1, _0803a204
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x9
	neg		r0, r0
	cmp		r0, #0x0
	bge		_0803a1c6
	ldr		r1, _0803a208
	add		r0, r0, r1
_0803a1c6:
	asr		r1, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_0803a1d2
	add		r3, r2, #0x0
_0803a1d2:
	ldr		r0, _0803a20c
	cmp		r3, r0
	bge		_0803a1da
	add		r3, r0, #0x0
_0803a1da:
	cmp		r1, r2
	ble		_0803a1e0
	add		r1, r2, #0x0
_0803a1e0:
	cmp		r1, r0
	bge		_0803a1e6
	add		r1, r0, #0x0
_0803a1e6:
	add		r0, r4, #0x0
	add		r0, #0x4e
	strh	r3, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3A1F6, 0x2

_0803a1f8:	.4byte 0x00008007
_0803a1fc:	.4byte 0x0000FFFF
_0803a200:	.4byte 0x08101068
_0803a204:	.4byte 0x000003FF
_0803a208:	.4byte 0x00007FFF
_0803a20c:	.4byte 0xFFFFFC00
	thumb_func_end sub_0803a13c

	thumb_func_start sub_0803a210
sub_0803a210:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	mov		r9, r1
	str		r2, [sp, #0x0]
	ldrh	r0, [r7, #0x38]
	str		r0, [sp, #0x4]
	cmp		r0, #0x1
	ble		_0803a22c
	b		_0803a426
_0803a22c:
	add		r0, r7, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x6
	bne		_0803a238
	b		_0803a426
_0803a238:
	add		r0, r7, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0803a246
	b		_0803a426
_0803a246:
	add		r0, r7, #0x0
	add		r0, #0x6a
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	beq		_0803a2e0
	ldr		r0, _0803a2cc
	ldr		r3, _0803a2d0
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_0803a26e
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803a26e
	mov		r0, #0xa0
	bl		sub_0807073c
_0803a26e:
	ldr		r0, _0803a2cc
	mov		r4, #0xe2
	lsl		r4, r4, #0x3
	add		r0, r0, r4
	ldr		r1, [r0, #0x8]
	mov		r0, r9
	cmp		r0, #0x0
	bge		_0803a280
	add		r0, #0x7
_0803a280:
	asr		r3, r0, #0x3
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x0
	bge		_0803a28a
	add		r0, #0x7
_0803a28a:
	asr		r2, r0, #0x3
	cmp		r1, #0x0
	beq		_0803a2b6
_0803a290:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bge		_0803a29a
	ldr		r5, _0803a2d4
	add		r0, r0, r5
_0803a29a:
	asr		r0, r0, #0x13
	cmp		r0, r3
	bne		_0803a2b0
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_0803a2aa
	ldr		r4, _0803a2d4
	add		r0, r0, r4
_0803a2aa:
	asr		r0, r0, #0x13
	cmp		r0, r2
	beq		_0803a2d8
_0803a2b0:
	ldr		r1, [r1, #0x3c]
	cmp		r1, #0x0
	bne		_0803a290
_0803a2b6:
	mov		r5, #0x0
	mov		r10, r5
_0803a2ba:
	mov		r0, r10
	ldr		r2, [r0, #0x18]
	cmp		r2, #0x0
	bne		_0803a2c4
	b		_0803a426
_0803a2c4:
	add		r1, r7, #0x0
	bl		sub_0807d7d8
	b		_0803a426

_0803a2cc:	.4byte RunGameLogic_CallBack
_0803a2d0:	.4byte 0x00000838
_0803a2d4:	.4byte 0x0007FFFF

_0803a2d8:
	mov		r10, r1
	b		_0803a2ba
_0803a2dc:
	mov		r10, r2
	b		_0803a32c
_0803a2e0:
	ldr		r1, _0803a3f0
	mov		r2, #0xe2
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	ldr		r2, [r0, #0x8]
	mov		r0, r9
	cmp		r0, #0x0
	bge		_0803a2f2
	add		r0, #0x7
_0803a2f2:
	asr		r4, r0, #0x3
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x0
	bge		_0803a2fc
	add		r0, #0x7
_0803a2fc:
	asr		r3, r0, #0x3
	cmp		r2, #0x0
	beq		_0803a328
_0803a302:
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_0803a30c
	ldr		r5, _0803a3f4
	add		r0, r0, r5
_0803a30c:
	asr		r0, r0, #0x13
	cmp		r0, r4
	bne		_0803a322
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	bge		_0803a31c
	ldr		r5, _0803a3f4
	add		r0, r0, r5
_0803a31c:
	asr		r0, r0, #0x13
	cmp		r0, r3
	beq		_0803a2dc
_0803a322:
	ldr		r2, [r2, #0x3c]
	cmp		r2, #0x0
	bne		_0803a302
_0803a328:
	mov		r0, #0x0
	mov		r10, r0
_0803a32c:
	mov		r2, r10
	ldr		r0, [r2, #0x60]
	cmp		r0, #0x0
	bne		_0803a426
	cmp		r2, #0x0
	beq		_0803a3dc
	ldr		r2, [r2, #0x50]
	ldr		r0, _0803a3f8
	cmp		r2, r0
	blt		_0803a34e
	add		r0, #0x2
	cmp		r2, r0
	ble		_0803a34e
	mov		r0, #0x86
	lsl		r0, r0, #0x10
	cmp		r2, r0
	beq		_0803a3dc
_0803a34e:
	mov		r0, #0xaa
	add		r5, r0, #0x0
	add		r0, r7, #0x0
	add		r0, #0xbc
	ldr		r4, [r0, #0x0]
	ldr		r3, _0803a3fc
	add		r0, r1, r3
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_0803a3dc
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803a3dc
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_0803a374
	neg		r0, r4
_0803a374:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _0803a400
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bge		_0803a388
	neg		r0, r0
_0803a388:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	add		r0, r5, #0x0
	bl		sub_0807073c
	ldr		r2, _0803a404
	mov		r8, r2
	ldr		r0, _0803a408
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
_0803a3dc:
	ldr		r3, [sp, #0x4]
	cmp		r3, #0x0
	beq		_0803a40c
	add		r0, r7, #0x0
	mov		r1, r9
	ldr		r2, [sp, #0x0]
	bl		sub_0803a13c
	b		_0803a426

.incbin "base.gba", 0x3A3EE, 0x2

_0803a3f0:	.4byte RunGameLogic_CallBack
_0803a3f4:	.4byte 0x0007FFFF
_0803a3f8:	.4byte 0x000A0004
_0803a3fc:	.4byte 0x00000838
_0803a400:	.4byte 0xFFFFFE00
_0803a404:	.4byte 0x08124544
_0803a408:	.4byte 0x081245c8

_0803a40c:
	add		r0, r7, #0x0
	mov		r1, r9
	ldr		r2, [sp, #0x0]
	bl		sub_08039f70
	mov		r4, r10
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_0803a426
	mov		r0, r10
	add		r1, r7, #0x0
	bl		sub_0807d7d8
_0803a426:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3A436, 0x326
	thumb_func_end sub_0803a210

	thumb_func_start sub_0803a75c
sub_0803a75c:
	add		r2, r0, #0x0
	ldr		r1, [r2, #0x0]
	add		r0, #0x4e
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r2, #0x0]
	ldr		r1, [r2, #0x4]
	add		r0, r2, #0x0
	add		r0, #0x50
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r2, #0x4]
	bx		lr

.incbin "base.gba", 0x3A77E, 0x4E
	thumb_func_end sub_0803a75c

	thumb_func_start sub_0803a7cc
sub_0803a7cc:
	mov		r12, r0
	mov		r3, r12
	add		r3, #0x92
	mov		r0, #0x0
	ldrsh	r2, [r3, r0]
	ldr		r0, _0803a7fc
	cmp		r2, r0
	ble		_0803a804
	add		r3, #0x20
	ldrh	r1, [r3, #0x0]
	ldr		r0, _0803a800
	and		r0, r1
	strh	r0, [r3, #0x0]
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r1, [r3, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	b		_0803a872

.incbin "base.gba", 0x3A7FA, 0x2

_0803a7fc:	.4byte 0x000005BF
_0803a800:	.4byte 0x0000FFFE

_0803a804:
	ldr		r0, _0803a830
	cmp		r2, r0
	bgt		_0803a854
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	cmp		r0, r1
	blt		_0803a854
	mov		r0, r12
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803a834
	mov		r0, r12
	add		r0, #0xb2
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x1
	orr		r1, r2
	b		_0803a83e

.incbin "base.gba", 0x3A82E, 0x2

_0803a830:	.4byte 0x000003BF

_0803a834:
	mov		r0, r12
	add		r0, #0xb2
	ldrh	r2, [r0, #0x0]
	ldr		r1, _0803a850
	and		r1, r2
_0803a83e:
	strh	r1, [r0, #0x0]
	add		r3, r0, #0x0
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0803a850
	and		r0, r1
	strh	r0, [r2, #0x0]
	b		_0803a86c

_0803a850:	.4byte 0x0000FFFE

_0803a854:
	mov		r3, r12
	add		r3, #0xb2
	ldrh	r2, [r3, #0x0]
	ldr		r1, _0803a878
	add		r0, r1, #0x0
	and		r0, r2
	strh	r0, [r3, #0x0]
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	and		r1, r0
	strh	r1, [r2, #0x0]
_0803a86c:
	ldrh	r1, [r3, #0x0]
	ldr		r0, _0803a87c
	and		r0, r1
_0803a872:
	strh	r0, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x3A876, 0x2

_0803a878:	.4byte 0x0000FFFE
_0803a87c:	.4byte 0x0000FFFD
	thumb_func_end sub_0803a7cc

	thumb_func_start sub_0803a880
sub_0803a880:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	add		r5, #0x96
	strh	r1, [r5, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	bl		sub_0803a7cc
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803a8bc
	add		r0, r4, #0x0
	add		r0, #0x98
	ldrh	r0, [r0, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x92
	cmp		r0, #0x0
	bne		_0803a900
	ldr		r1, _0803a8b8
	add		r0, r1, #0x0
	ldrh	r2, [r3, #0x0]
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	b		_0803a900

_0803a8b8:	.4byte 0xFFFFFF00

_0803a8bc:
	add		r5, r4, #0x0
	add		r5, #0x98
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0803a8e4
	add		r0, r4, #0x0
	add		r0, #0x92
	ldrh	r1, [r0, #0x0]
	add		r1, #0x20
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _0803a8e0
	add		r3, r0, #0x0
	cmp		r1, r2
	ble		_0803a90e
	ldrh	r0, [r5, #0x0]
	sub		r0, #0x1
	b		_0803a8fe

_0803a8e0:	.4byte 0x0FBF0000

_0803a8e4:
	add		r0, r4, #0x0
	add		r0, #0x92
	ldr		r2, _0803a920
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _0803a924
	add		r3, r0, #0x0
	cmp		r1, r2
	bgt		_0803a900
	mov		r0, #0x0
_0803a8fe:
	strh	r0, [r5, #0x0]
_0803a900:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	ldr		r0, _0803a928
	cmp		r1, r0
	ble		_0803a90e
	add		r0, #0x1
	strh	r0, [r3, #0x0]
_0803a90e:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_0803a91a
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_0803a91a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0803a920:	.4byte 0xFFFFFE00
_0803a924:	.4byte 0x0DBF0000
_0803a928:	.4byte 0x00000FBF
	thumb_func_end sub_0803a880

	thumb_func_start sub_0803a92c
sub_0803a92c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	bl		sub_0803a7cc
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803a968
	add		r0, r4, #0x0
	add		r0, #0x98
	ldrh	r0, [r0, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x92
	cmp		r0, #0x0
	bne		_0803a9b4
	ldr		r1, _0803a964
	add		r0, r1, #0x0
	ldrh	r2, [r3, #0x0]
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	b		_0803a9b4

.incbin "base.gba", 0x3A962, 0x2

_0803a964:	.4byte 0xFFFFF800

_0803a968:
	add		r5, r4, #0x0
	add		r5, #0x98
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0803a998
	add		r0, r4, #0x0
	add		r0, #0x92
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _0803a994
	add		r3, r0, #0x0
	cmp		r1, r2
	ble		_0803a9c2
	ldrh	r0, [r5, #0x0]
	sub		r0, #0x1
	b		_0803a9b2

.incbin "base.gba", 0x3A992, 0x2

_0803a994:	.4byte 0x0FBF0000

_0803a998:
	add		r0, r4, #0x0
	add		r0, #0x92
	ldr		r2, _0803a9d4
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _0803a9d8
	add		r3, r0, #0x0
	cmp		r1, r2
	bgt		_0803a9b4
	mov		r0, #0x0
_0803a9b2:
	strh	r0, [r5, #0x0]
_0803a9b4:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	ldr		r0, _0803a9dc
	cmp		r1, r0
	ble		_0803a9c2
	add		r0, #0x1
	strh	r0, [r3, #0x0]
_0803a9c2:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_0803a9ce
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_0803a9ce:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0803a9d4:	.4byte 0xFFFFF000
_0803a9d8:	.4byte 0x0DBF0000
_0803a9dc:	.4byte 0x00000FBF
	thumb_func_end sub_0803a92c

	thumb_func_start sub_0803a9e0
sub_0803a9e0:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r0, #0x78
	ldrb	r2, [r0, #0x0]
	cmp		r2, #0x1
	bne		_0803a9ee
	b		_0803ab30
_0803a9ee:
	cmp		r2, #0x2
	bne		_0803a9f4
	b		_0803ab30
_0803a9f4:
	cmp		r2, #0x3
	bne		_0803a9fa
	b		_0803ab30
_0803a9fa:
	cmp		r2, #0x4
	bne		_0803aa00
	b		_0803ab30
_0803aa00:
	cmp		r2, #0x5
	bne		_0803aa06
	b		_0803ab30
_0803aa06:
	cmp		r2, #0x6
	bne		_0803aa0c
	b		_0803ab30
_0803aa0c:
	cmp		r2, #0x7
	bne		_0803aa18
	add		r0, r3, #0x0
	bl		sub_0803a92c
	b		_0803ab30
_0803aa18:
	ldr		r0, _0803aa6c
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _0803aa70
	add		r4, r0, r1
	cmp		r2, #0x8
	beq		_0803aa50
	add		r0, r3, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xd
	beq		_0803aa50
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x2
	bhi		_0803aa74
	add		r0, r3, #0x0
	add		r0, #0xb8
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bne		_0803aa74
_0803aa50:
	add		r1, r3, #0x0
	add		r1, #0x92
	mov		r3, #0x6
	ldrsh	r0, [r4, r3]
	lsl		r0, r0, #0x3
	ldrh	r5, [r1, #0x0]
	add		r0, r0, r5
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803ab30
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_0803ab30

_0803aa6c:	.4byte RunGameLogic_CallBack
_0803aa70:	.4byte 0x08107558

_0803aa74:
	add		r0, r3, #0x0
	add		r0, #0x96
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x8
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bne		_0803aa92
	add		r0, r3, #0x0
	add		r0, #0x64
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0803aa9e
_0803aa92:
	add		r1, r3, #0x0
	add		r1, #0x92
	ldrh	r0, [r4, #0x4]
	ldrh	r6, [r1, #0x0]
	add		r0, r0, r6
	b		_0803aaea
_0803aa9e:
	add		r0, r3, #0x0
	add		r0, #0x86
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x9
	bhi		_0803aaf0
	add		r0, r3, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803aae0
	add		r0, r3, #0x0
	add		r0, #0x92
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	mov		r3, #0x0
	ldrsh	r1, [r4, r3]
	ldr		r5, _0803aad4
	add		r1, r1, r5
	add		r3, r0, #0x0
	cmp		r2, r1
	blt		_0803aad8
	ldrh	r0, [r4, #0x8]
	ldrh	r6, [r3, #0x0]
	add		r0, r0, r6
	b		_0803ab10

_0803aad4:	.4byte 0xFFFFFE00

_0803aad8:
	ldrh	r0, [r4, #0x2]
	ldrh	r1, [r3, #0x0]
	add		r0, r0, r1
	b		_0803ab10
_0803aae0:
	add		r1, r3, #0x0
	add		r1, #0x92
	ldrh	r0, [r4, #0x2]
	ldrh	r2, [r1, #0x0]
	add		r0, r0, r2
_0803aaea:
	strh	r0, [r1, #0x0]
	add		r3, r1, #0x0
	b		_0803ab12
_0803aaf0:
	mov		r5, #0x0
	ldrsh	r0, [r4, r5]
	add		r3, #0x92
	cmp		r0, #0x0
	bge		_0803aafc
	add		r0, #0x3
_0803aafc:
	ldrh	r2, [r3, #0x0]
	mov		r6, #0x0
	ldrsh	r1, [r3, r6]
	asr		r0, r0, #0x2
	cmp		r1, r0
	blt		_0803ab0c
	ldrh	r0, [r4, #0x6]
	b		_0803ab0e
_0803ab0c:
	ldrh	r0, [r4, #0x2]
_0803ab0e:
	add		r0, r2, r0
_0803ab10:
	strh	r0, [r3, #0x0]
_0803ab12:
	add		r2, r3, #0x0
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	ldrh	r5, [r4, #0x0]
	mov		r6, #0x0
	ldrsh	r0, [r4, r6]
	cmp		r1, r0
	blt		_0803ab24
	strh	r5, [r2, #0x0]
_0803ab24:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_0803ab30
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_0803ab30:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3AB36, 0x2
	thumb_func_end sub_0803a9e0

	thumb_func_start sub_0803ab38
sub_0803ab38:
	push	{ r4, lr }
	add		r2, r0, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803ab4e
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	b		_0803abb6
_0803ab4e:
	add		r0, r2, #0x0
	add		r0, #0x92
	mov		r1, #0x0
	ldrsh	r3, [r0, r1]
	mov		r1, #0x0
	sub		r0, #0xe
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xc
	bne		_0803ab64
	mov		r1, #0x80
	lsl		r1, r1, #0x2
_0803ab64:
	cmp		r0, #0x8
	bne		_0803ab6e
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	add		r1, r1, r4
_0803ab6e:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r4, #0x0
	ldrsh	r0, [r0, r4]
	cmp		r0, #0x0
	beq		_0803ab80
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r1, r1, r0
_0803ab80:
	mov		r4, #0xbc
	lsl		r4, r4, #0x1
	add		r0, r2, r4
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	ldr		r0, _0803abbc
	add		r2, r3, r0
	add		r0, r2, #0x0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803ab9c
	ldr		r3, _0803abc0
	add		r0, r0, r3
_0803ab9c:
	asr		r0, r0, #0xc
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803aba8
	ldr		r4, _0803abc0
	add		r0, r0, r4
_0803aba8:
	asr		r0, r0, #0xc
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r1, r1, r2
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
_0803abb6:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0803abbc:	.4byte 0xFFFFF000
_0803abc0:	.4byte 0x00000FFF
	thumb_func_end sub_0803ab38

	thumb_func_start sub_0803abc4
sub_0803abc4:
	add		r2, r0, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803abd8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	b		_0803ac2c
_0803abd8:
	add		r0, r2, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	asr		r3, r0, #0xf
	mov		r1, #0x0
	add		r0, r2, #0x0
	add		r0, #0x84
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8
	bne		_0803abf0
	mov		r1, #0x80
	lsl		r1, r1, #0x2
_0803abf0:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x8
	bne		_0803ac02
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r1, r1, r0
_0803ac02:
	ldr		r0, _0803ac30
	add		r2, r3, r0
	add		r0, r2, #0x0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803ac12
	ldr		r3, _0803ac34
	add		r0, r0, r3
_0803ac12:
	asr		r0, r0, #0xc
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803ac1e
	ldr		r2, _0803ac34
	add		r0, r0, r2
_0803ac1e:
	asr		r0, r0, #0xc
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r1, r1, r3
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
_0803ac2c:
	bx		lr

.incbin "base.gba", 0x3AC2E, 0x2

_0803ac30:	.4byte 0xFFFFF000
_0803ac34:	.4byte 0x00000FFF
	thumb_func_end sub_0803abc4

	thumb_func_start sub_0803ac38
sub_0803ac38:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	add		r3, r1, #0x0
	ldr		r0, [r6, #0x48]
	mov		r5, #0x20
	and		r0, r5
	cmp		r0, #0x0
	beq		_0803aca4
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ac64
	b		_0803b0e6
_0803ac64:
	ldr		r2, _0803ac98
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803ac9c
	ldr		r1, _0803aca0
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	strb	r0, [r4, #0x0]
	b		_0803b0e6

_0803ac98:	.4byte 0x081077b4
_0803ac9c:	.4byte 0x08124544
_0803aca0:	.4byte 0x081245c8

_0803aca4:
	ldr		r1, _0803ad30
	add		r0, r3, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803ad44
	ldr		r2, _0803ad34
	add		r4, r3, r2
	ldr		r0, [r4, #0x0]
	cmp		r6, r0
	bne		_0803acf4
	ldr		r2, _0803ad38
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803ad3c
	ldr		r1, _0803ad40
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	strb	r0, [r2, #0x0]
_0803acf4:
	ldr		r0, [r4, #0x0]
	cmp		r6, r0
	beq		_0803acfc
	b		_0803b0e6
_0803acfc:
	ldr		r0, [r6, #0x48]
	and		r0, r5
	cmp		r0, #0x0
	beq		_0803ad06
	b		_0803b0e6
_0803ad06:
	ldr		r2, _0803ad3c
	ldr		r0, _0803ad40
	mov		r1, #0xa1
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	mov		r1, #0xdf
	b		_0803b026

_0803ad30:	.4byte 0x000007D4
_0803ad34:	.4byte 0x00000814
_0803ad38:	.4byte 0x081077b4
_0803ad3c:	.4byte 0x08124544
_0803ad40:	.4byte 0x081245c8

_0803ad44:
	add		r0, r6, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r4, r0, #0x0
	cmp		r1, #0x3
	bne		_0803ad52
	b		_0803b0e6
_0803ad52:
	cmp		r1, #0x4
	bne		_0803add4
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	cmp		r2, #0x0
	beq		_0803ad6c
	b		_0803b0e6
_0803ad6c:
	ldr		r1, _0803adc4
	add		r0, r3, r1
	ldr		r1, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x92
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	cmp		r6, r1
	beq		_0803ad82
	b		_0803b0e6
_0803ad82:
	ldr		r0, [r6, #0x48]
	and		r0, r5
	cmp		r0, #0x0
	beq		_0803ad8c
	b		_0803b0e6
_0803ad8c:
	ldr		r0, _0803adc8
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803adcc
	ldr		r1, _0803add0
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	mov		r0, #0xa1
	bl		sub_0807073c
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	mov		r1, #0x20
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803b0e6

.incbin "base.gba", 0x3ADC2, 0x2

_0803adc4:	.4byte 0x00000814
_0803adc8:	.4byte 0x081077b4
_0803adcc:	.4byte 0x08124544
_0803add0:	.4byte 0x081245c8

_0803add4:
	cmp		r1, #0x5
	bne		_0803adda
	b		_0803b0e6
_0803adda:
	cmp		r1, #0x6
	bne		_0803ade0
	b		_0803b0e6
_0803ade0:
	add		r2, r6, #0x0
	add		r2, #0x4c
	ldrb	r1, [r2, #0x0]
	mov		r3, #0x8
	add		r0, r3, #0x0
	and		r0, r1
	mov		r10, r2
	cmp		r0, #0x0
	beq		_0803ae24
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	beq		_0803adfa
	b		_0803b0e6
_0803adfa:
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803ae12
	mov		r0, #0x62
	bl		sub_0807073c
	b		_0803b0e6
_0803ae12:
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ae1c
	b		_0803b0e6
_0803ae1c:
	mov		r0, #0x61
	bl		sub_0807073c
	b		_0803b0e6
_0803ae24:
	add		r0, r6, #0x0
	bl		sub_0803ab38
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0x94
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	add		r7, r0, #0x0
	cmp		r1, #0x0
	bgt		_0803ae70
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x18
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r0, #0x0
	bge		_0803ae4a
	mov		r3, #0x0
_0803ae4a:
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xf
	ble		_0803ae54
	mov		r3, #0xf
_0803ae54:
	ldr		r2, _0803ae6c
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	mov		r1, #0x7
	and		r1, r0
	lsl		r0, r3, #0x10
	asr		r0, r0, #0xe
	lsl		r1, r1, #0x6
	add		r0, r0, r1
	add		r0, r0, r2
	ldrh	r2, [r0, #0x0]
	b		_0803aeb4

_0803ae6c:	.4byte 0x0810757c

_0803ae70:
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x18
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r0, #0x0
	bge		_0803ae7e
	mov		r3, #0x0
_0803ae7e:
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xf
	ble		_0803ae88
	mov		r3, #0xf
_0803ae88:
	ldr		r2, _0803af98
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	mov		r1, #0x7
	and		r1, r0
	lsl		r0, r3, #0x10
	asr		r0, r0, #0xe
	lsl		r1, r1, #0x6
	add		r0, r0, r1
	add		r0, r0, r2
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r7, r2]
	mul		r1, r0
	ldr		r0, _0803af9c
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0803aeb0
	ldr		r1, _0803afa0
	add		r0, r0, r1
_0803aeb0:
	lsl		r0, r0, #0x1
	lsr		r2, r0, #0x10
_0803aeb4:
	ldr		r0, _0803afa4
	add		r3, r0, #0x0
	add		r3, #0x24
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x2
	bne		_0803aee0
	add		r0, r6, #0x0
	add		r0, #0x9c
	ldrh	r0, [r0, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_0803aece
	add		r0, #0x3f
_0803aece:
	lsl		r0, r0, #0xa
	lsr		r5, r0, #0x10
	add		r2, r5, #0x0
	lsl		r0, r2, #0x10
	asr		r1, r0, #0x10
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	lsl		r1, r1, #0xf
	lsr		r5, r1, #0x10
_0803aee0:
	mov		r8, r10
	mov		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	ldr		r1, _0803afa8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldr		r1, _0803afac
	mov		r9, r1
	ldr		r4, _0803afb0
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	str		r3, [sp, #0x0]
	bl		sub_0807169c
	mov		r2, r8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	ldr		r1, _0803afa8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	lsl		r2, r5, #0x10
	asr		r2, r2, #0x10
	mov		r1, #0x1
	bl		sub_08071704
	add		r0, r6, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	ldr		r3, [sp, #0x0]
	cmp		r0, #0xd
	bne		_0803afbc
	mov		r2, #0xcd
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803af58
	b		_0803b0e6
_0803af58:
	ldr		r1, _0803afb4
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803af92
	ldr		r0, [r6, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803af92
	ldr		r2, _0803afb8
	mov		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r6, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfe
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r2, #0x0]
_0803af92:
	mov		r0, #0x0
	b		_0803b0e4

.incbin "base.gba", 0x3AF96, 0x2

_0803af98:	.4byte 0x0810757c
_0803af9c:	.4byte 0x00000155
_0803afa0:	.4byte 0x00007FFF
_0803afa4:	.4byte RunGameLogic_CallBack
_0803afa8:	.4byte 0x081077b4
_0803afac:	.4byte 0x08124544
_0803afb0:	.4byte 0x081245c8
_0803afb4:	.4byte 0x00000814
_0803afb8:	.4byte 0x08107794

_0803afbc:
	mov		r2, #0xc6
	lsl		r2, r2, #0x4
	add		r0, r3, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0803afca
	b		_0803b0e6
_0803afca:
	add		r0, r6, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b034
	mov		r0, #0x0
	strh	r0, [r7, #0x0]
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803aff0
	b		_0803b0e6
_0803aff0:
	ldr		r2, _0803b02c
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803b0e6
	ldr		r0, [r6, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b0e6
	mov		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	ldr		r1, _0803b030
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r6, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0xfd
_0803b026:
	and		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803b0e6

_0803b02c:	.4byte 0x00000814
_0803b030:	.4byte 0x081077b4

_0803b034:
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x2
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b0d8
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b090
	mov		r2, #0x0
	ldrsh	r0, [r7, r2]
	cmp		r0, #0x0
	bne		_0803b05a
	mov		r0, #0x60
	strh	r0, [r7, #0x0]
_0803b05a:
	ldrh	r1, [r7, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r7, r2]
	cmp		r0, #0x0
	ble		_0803b068
	sub		r0, r1, #0x1
	strh	r0, [r7, #0x0]
_0803b068:
	mov		r0, #0x0
	ldrsh	r1, [r7, r0]
	cmp		r1, #0x20
	bne		_0803b0e6
	ldr		r2, _0803b088
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803b0e6
	ldr		r0, [r6, #0x48]
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b0e6
	ldr		r2, _0803b08c
	mov		r0, r8
	b		_0803b0ac

_0803b088:	.4byte 0x00000814
_0803b08c:	.4byte 0x08107794

_0803b090:
	ldr		r2, _0803b0d0
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0803b0e6
	ldr		r0, [r6, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b0e6
	mov		r0, #0x60
	strh	r0, [r7, #0x0]
	ldr		r2, _0803b0d4
	mov		r0, r10
_0803b0ac:
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r6, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfe
	and		r0, r1
	orr		r0, r4
	strb	r0, [r2, #0x0]
	b		_0803b0e6

.incbin "base.gba", 0x3B0CE, 0x2

_0803b0d0:	.4byte 0x00000814
_0803b0d4:	.4byte 0x081077a4

_0803b0d8:
	ldrh	r1, [r7, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r7, r2]
	cmp		r0, #0x5f
	bgt		_0803b0e6
	add		r0, r1, #0x1
_0803b0e4:
	strh	r0, [r7, #0x0]
_0803b0e6:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3B0F6, 0x2
	thumb_func_end sub_0803ac38

	thumb_func_start sub_0803b0f8
sub_0803b0f8:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r2, [r4, #0x48]
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	add		r0, r2, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_0803b10e
	b		_0803b298
_0803b10e:
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	bne		_0803b1ce
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r7, r0, #0x0
	cmp		r1, #0x4
	bne		_0803b124
	b		_0803b298
_0803b124:
	add		r5, r4, #0x0
	add		r5, #0x96
	ldrh	r1, [r5, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b134
	b		_0803b25c
_0803b134:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b1b8
	add		r0, r4, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xf
	bne		_0803b1b8
	ldr		r1, _0803b1ac
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b1b8
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b17c
	mov		r0, #0x10
	orr		r0, r1
	strb	r0, [r2, #0x0]
	mov		r0, #0xa4
	bl		sub_0807073c
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	orr		r0, r1
	str		r0, [r4, #0x48]
_0803b17c:
	ldrh	r1, [r5, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	and		r0, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	cmp		r0, #0x0
	beq		_0803b18e
	add		r2, #0xde
_0803b18e:
	ldr		r3, _0803b1b0
	ldr		r0, _0803b1b4
	mov		r1, #0xa4
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	bl		sub_0807169c
	b		_0803b298

_0803b1ac:	.4byte 0x000007D4
_0803b1b0:	.4byte 0x08124544
_0803b1b4:	.4byte 0x081245c8

_0803b1b8:
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r5, r4, r0
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b1d6
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r5, #0x0]
_0803b1ce:
	mov		r0, #0xa4
	bl		sub_08070808
	b		_0803b298
_0803b1d6:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	ble		_0803b1e6
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x0
	beq		_0803b228
_0803b1e6:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b298
	ldr		r0, _0803b218
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803b21c
	ldr		r1, _0803b220
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	ldr		r0, [r4, #0x48]
	ldr		r1, _0803b224
	and		r0, r1
	b		_0803b24c

.incbin "base.gba", 0x3B216, 0x2

_0803b218:	.4byte 0x0810777c
_0803b21c:	.4byte 0x08124544
_0803b220:	.4byte 0x081245c8
_0803b224:	.4byte 0xfffbffff

_0803b228:
	ldr		r0, [r4, #0x48]
	mov		r6, #0x80
	lsl		r6, r6, #0xb
	and		r0, r6
	cmp		r0, #0x0
	bne		_0803b298
	ldr		r2, _0803b258
	asr		r0, r1, #0x18
	cmp		r0, #0x3
	ble		_0803b23e
	mov		r0, #0x3
_0803b23e:
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
	ldr		r0, [r4, #0x48]
	orr		r0, r6
_0803b24c:
	str		r0, [r4, #0x48]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r5, #0x0]
	b		_0803b298

_0803b258:	.4byte 0x0810777c

_0803b25c:
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	and		r2, r0
	cmp		r2, #0x0
	beq		_0803b298
	ldr		r0, _0803b2a0
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803b2a4
	ldr		r1, _0803b2a8
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	ldr		r0, [r4, #0x48]
	ldr		r1, _0803b2ac
	and		r0, r1
	str		r0, [r4, #0x48]
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_0803b298:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3B29E, 0x2

_0803b2a0:	.4byte 0x0810777c
_0803b2a4:	.4byte 0x08124544
_0803b2a8:	.4byte 0x081245c8
_0803b2ac:	.4byte 0xfffbffff
	thumb_func_end sub_0803b0f8

	thumb_func_start sub_0803b2b0
sub_0803b2b0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r5, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	mov		r8, r0
	ldr		r1, _0803b35c
	add		r2, r5, r1
	ldr		r6, _0803b360
	add		r0, r5, r6
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b3aa
	ldr		r0, [r2, #0x18]
	mov		r9, r0
	ldr		r2, [r2, #0x1c]
	mov		r12, r2
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0803b33e
	ldr		r7, _0803b364
	ldr		r2, _0803b368
	add		r3, r5, r2
	add		r4, r0, #0x0
_0803b2f4:
	ldr		r2, [r3, #0x0]
	cmp		r2, r10
	beq		_0803b336
	add		r0, r2, #0x0
	add		r0, #0x6a
	mov		r6, #0x0
	ldrsh	r0, [r0, r6]
	cmp		r0, #0x0
	beq		_0803b336
	ldr		r0, [r2, #0x0]
	mov		r6, r9
	sub		r1, r6, r0
	cmp		r1, #0x0
	bge		_0803b312
	add		r1, r1, r7
_0803b312:
	asr		r1, r1, #0x10
	ldr		r0, [r2, #0x4]
	mov		r2, r12
	sub		r0, r2, r0
	cmp		r0, #0x0
	bge		_0803b320
	add		r0, r0, r7
_0803b320:
	asr		r0, r0, #0x10
	add		r6, r1, #0x0
	mul		r6, r1
	add		r1, r6, #0x0
	add		r2, r0, #0x0
	mul		r2, r0
	add		r0, r2, #0x0
	add		r0, r1, r0
	cmp		r0, r8
	bge		_0803b336
	mov		r8, r0
_0803b336:
	add		r3, #0x4
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0803b2f4
_0803b33e:
	ldr		r0, _0803b36c
	cmp		r8, r0
	bgt		_0803b3aa
	ldr		r6, _0803b370
	add		r1, r5, r6
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0803b374
	mov		r0, #0x18
	strb	r0, [r1, #0x0]
	mov		r0, #0x88
	bl		sub_0807073c
	b		_0803b378

.incbin "base.gba", 0x3B35A, 0x2

_0803b35c:	.4byte 0x00000824
_0803b360:	.4byte 0x00000814
_0803b364:	.4byte 0x0000FFFF
_0803b368:	.4byte 0x000007F4
_0803b36c:	.4byte 0x00007FFF
_0803b370:	.4byte 0x00000C82

_0803b374:
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
_0803b378:
	mov		r0, r8
	cmp		r0, #0x0
	bge		_0803b382
	ldr		r1, _0803b3b8
	add		r0, r0, r1
_0803b382:
	asr		r0, r0, #0xa
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	sub		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	ldr		r3, _0803b3bc
	ldr		r0, _0803b3c0
	mov		r6, #0x88
	lsl		r6, r6, #0x3
	add		r0, r0, r6
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	bl		sub_0807169c
_0803b3aa:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803b3b8:	.4byte 0x000003FF
_0803b3bc:	.4byte 0x08124544
_0803b3c0:	.4byte 0x081245c8
	thumb_func_end sub_0803b2b0

	thumb_func_start sub_0803b3c4
sub_0803b3c4:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x18
	lsl		r1, r1, #0x10
	lsr		r3, r1, #0x10
	cmp		r1, #0x0
	bge		_0803b3d6
	mov		r3, #0x0
_0803b3d6:
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xf
	ble		_0803b3e0
	mov		r3, #0xf
_0803b3e0:
	ldr		r2, _0803b400
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7
	and		r1, r0
	lsl		r0, r3, #0x10
	asr		r0, r0, #0xe
	lsl		r1, r1, #0x6
	add		r0, r0, r1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3B3FE, 0x2

_0803b400:	.4byte 0x0810757c
	thumb_func_end sub_0803b3c4

	thumb_func_start sub_0803b404
sub_0803b404:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	ldr		r1, _0803b47c
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	mov		r8, r0
	mov		r0, #0x7
	mov		r3, r8
	and		r3, r0
	mov		r8, r3
	ldr		r1, _0803b480
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	mov		r1, #0x1
	bl		sub_08044894
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b466
	add		r0, r2, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_0803b45a
	b		_0803b558
_0803b45a:
	add		r0, r7, #0x0
	add		r0, #0xae
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x6
	bgt		_0803b522
_0803b466:
	mov		r3, r8
	cmp		r3, #0x1
	bne		_0803b488
	add		r0, r7, #0x0
	add		r0, #0xae
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x2
	bgt		_0803b522
	b		_0803b546

.incbin "base.gba", 0x3B47A, 0x2

_0803b47c:	.4byte 0x00000C64
_0803b480:	.4byte 0x000007DC

_0803b484:
	add		r4, r2, #0x0
	b		_0803b4c4
_0803b488:
	mov		r4, #0x0
	ldr		r3, _0803b528
	add		r0, r6, r3
	mov		r1, #0x91
	add		r1, r1, r7
	mov		r9, r1
	add		r5, r0, #0x0
	mov		r3, #0x90
	add		r3, r3, r7
	mov		r10, r3
	ldrb	r0, [r5, #0x0]
	cmp		r4, r0
	bge		_0803b4c2
_0803b4a2:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803b484
	add		r4, #0x1
	ldrb	r1, [r5, #0x0]
	cmp		r4, r1
	blt		_0803b4a2
_0803b4c2:
	mov		r4, #0x0
_0803b4c4:
	ldr		r0, _0803b52c
	ldrh	r3, [r0, #0x38]
	mov		r0, r9
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r2, r2, r0
	ldr		r1, _0803b530
	ldr		r3, _0803b534
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r8
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r2, r0
	bge		_0803b558
	add		r0, r7, #0x0
	add		r0, #0xae
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	ldr		r3, _0803b538
	ldr		r1, [sp, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	ldr		r1, [sp, #0x0]
	add		r0, r0, r1
	lsl		r1, r0, #0x2
	add		r0, r1, r3
	ldrb	r0, [r0, #0x0]
	cmp		r2, r0
	blt		_0803b53c
_0803b522:
	mov		r0, #0x1
	b		_0803b55a

.incbin "base.gba", 0x3B526, 0x2

_0803b528:	.4byte 0x000007F1
_0803b52c:	.4byte RunGameLogic_CallBack
_0803b530:	.4byte 0x081078d8
_0803b534:	.4byte 0x000007DC
_0803b538:	.4byte 0x081078b4

_0803b53c:
	add		r0, r3, #0x1
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r2, r0
	blt		_0803b54a
_0803b546:
	mov		r0, #0x0
	b		_0803b55a
_0803b54a:
	add		r0, r3, #0x2
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r2, r0
	bge		_0803b558
	mov		r0, #0x3
	b		_0803b55a
_0803b558:
	mov		r0, #0x2
_0803b55a:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3B56A, 0x3A2
	thumb_func_end sub_0803b404

	thumb_func_start sub_0803b90c
sub_0803b90c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r1, r4, #0x0
	add		r1, #0xba
	ldrh	r1, [r1, #0x0]
	lsr		r7, r1, #0x1
	ldr		r1, [r4, #0x48]
	mov		r2, #0x20
	and		r1, r2
	cmp		r1, #0x0
	bne		_0803b994
	add		r1, r4, #0x0
	add		r1, #0x6a
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	cmp		r1, #0x0
	beq		_0803b97c
	mov		r5, #0x0
	cmp		r5, r7
	bge		_0803b956
_0803b936:
	lsl		r1, r5, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803b950
	mov		r0, #0x4
	b		_0803b9f2
_0803b950:
	add		r5, #0x1
	cmp		r5, r7
	blt		_0803b936
_0803b956:
	cmp		r7, #0x7
	beq		_0803b978
	add		r1, r7, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	add		r0, #0x90
	add		r1, r4, #0x0
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	ldrb	r0, [r0, #0x0]
	cmp		r1, r0
	bne		_0803b978
	mov		r0, #0x0
	b		_0803b9f2
_0803b978:
	mov		r0, #0x2
	b		_0803b9f2
_0803b97c:
	add		r1, r4, #0x0
	add		r1, #0xac
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	cmp		r1, #0x0
	bne		_0803b994
	add		r1, r4, #0x0
	add		r1, #0x68
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	cmp		r1, #0x0
	beq		_0803b998
_0803b994:
	mov		r0, #0x3
	b		_0803b9f2
_0803b998:
	cmp		r7, #0x7
	bhi		_0803b9f2
	lsl		r0, r7, #0x2
	ldr		r1, _0803b9a8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3B9A6, 0x2

_0803b9a8:	.4byte 0x0803b9ac
_0803b9ac:	.4byte 0x0803b9cc

.incbin "base.gba", 0x3B9B0, 0x1C
	thumb_func_end sub_0803b90c


.incbin "base.gba", 0x3B9CC, 0x26

_0803b9f2:

.incbin "base.gba", 0x3B9F2, 0x6
	thumb_func_start sub_0803b9f8
sub_0803b9f8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r2, _0803ba10
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803ba14
	cmp		r0, #0x1
	ble		_0803ba1e
	cmp		r0, #0x2
	beq		_0803ba1a
	b		_0803ba1e

_0803ba10:	.4byte 0x000007DC

_0803ba14:
	mov		r2, #0x87
	lsl		r2, r2, #0x1
	b		_0803ba22
_0803ba1a:
	mov		r2, #0x96
	b		_0803ba22
_0803ba1e:
	mov		r2, #0xff
	lsl		r2, r2, #0x1
_0803ba22:
	ldr		r3, _0803ba54
	add		r0, r1, r3
	strh	r2, [r0, #0x0]
	ldr		r0, _0803ba58
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_08049164
	add		r2, r0, #0x0
	str		r4, [r2, #0x54]
	mov		r3, #0xbd
	lsl		r3, r3, #0x1
	add		r0, r4, r3
	ldrh	r0, [r0, #0x0]
	ldr		r1, _0803ba5c
	add		r0, r0, r1
	cmp		r0, #0xc
	bhi		_0803bad6
	lsl		r0, r0, #0x2
	ldr		r1, _0803ba60
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3BA52, 0x2

_0803ba54:	.4byte 0x00000C62
_0803ba58:	.4byte RunGameLogic_CallBack
_0803ba5c:	.4byte 0xFFFFF000
_0803ba60:	.4byte 0x0803ba64
_0803ba64:	.4byte 0x0803ba98

.incbin "base.gba", 0x3BA68, 0x30

_0803ba98:
.incbin "base.gba", 0x3BA98, 0x4
.incbin "base.gba", 0x3BA9C, 0x4
_0803baa0:
.incbin "base.gba", 0x3BAA0, 0x4
.incbin "base.gba", 0x3BAA4, 0x4

.incbin "base.gba", 0x3BAA8, 0x8

_0803bab0:
.incbin "base.gba", 0x3BAB0, 0x4
.incbin "base.gba", 0x3BAB4, 0x4
_0803bab8:
.incbin "base.gba", 0x3BAB8, 0x4
.incbin "base.gba", 0x3BABC, 0x4
_0803bac0:
.incbin "base.gba", 0x3BAC0, 0x4
.incbin "base.gba", 0x3BAC4, 0x4
_0803bac8:
.incbin "base.gba", 0x3BAC8, 0x4
.incbin "base.gba", 0x3BACC, 0x4

.incbin "base.gba", 0x3BAD0, 0x6

_0803bad6:
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0803baf4
	cmp		r1, r0
	beq		_0803baec
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
_0803baec:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3BAF2, 0x2

_0803baf4:	.4byte 0x0000100B
	thumb_func_end sub_0803b9f8

	thumb_func_start sub_0803baf8
sub_0803baf8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r0, #0x0
	mov		r8, r0
	mov		r7, #0x0
	add		r0, r5, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r4, r0, #0x1
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r5, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	mov		r3, #0xc7
	lsl		r3, r3, #0x1
	add		r1, r5, r3
	mov		r0, #0x30
	strh	r0, [r1, #0x0]
	cmp		r4, #0x0
	beq		_0803bb3e
	sub		r1, r4, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	mov		r8, r0
_0803bb3e:
	cmp		r4, #0x7
	beq		_0803bb50
	add		r1, r4, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	add		r7, r0, #0x0
_0803bb50:
	cmp		r4, #0x0
	beq		_0803bb66
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bb66
	cmp		r4, #0x5
	ble		_0803bbac
_0803bb66:
	cmp		r4, #0x7
	beq		_0803bb76
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803bbac
_0803bb76:
	cmp		r4, #0x0
	beq		_0803bb94
	add		r2, r5, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r8
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r7, r2, #0x0
	cmp		r1, #0x1
	ble		_0803bbb6
	b		_0803bbac
_0803bb94:
	add		r2, r5, #0x0
	add		r2, #0xae
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	add		r0, r7, #0x0
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r7, r2, #0x0
	cmp		r1, #0x2
	ble		_0803bbb6
_0803bbac:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_0803b9f8
	b		_0803bbde
_0803bbb6:
	add		r0, r6, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bbde
	cmp		r4, #0x7
	beq		_0803bbd6
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x2
	ble		_0803bbde
_0803bbd6:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_0803b9f8
_0803bbde:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803baf8

	thumb_func_start sub_0803bbe8
sub_0803bbe8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r7, r1, #0x0
	mov		r6, #0x0
	mov		r8, r6
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r5, r0, #0x1
	mov		r0, #0xc7
	lsl		r0, r0, #0x1
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803bc0e
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0803be3c
_0803bc0e:
	cmp		r5, #0x0
	beq		_0803bc20
	sub		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	add		r6, r0, #0x0
_0803bc20:
	cmp		r5, #0x7
	beq		_0803bc32
	add		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	mov		r8, r0
_0803bc32:
	cmp		r5, #0x0
	beq		_0803bcd6
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bcd6
	cmp		r5, #0x5
	bgt		_0803bcd6
	ldr		r0, _0803bc98
	ldrh	r3, [r0, #0x38]
	add		r0, r6, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803bc7c
	b		_0803be3c
_0803bc7c:
	cmp		r1, #0x3
	ble		_0803bc82
	mov		r1, #0x3
_0803bc82:
	ldr		r0, _0803bc9c
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803bcb2
	cmp		r0, #0x1
	bgt		_0803bca0
	cmp		r0, #0x0
	beq		_0803bcaa
	b		_0803be3c

.incbin "base.gba", 0x3BC96, 0x2

_0803bc98:	.4byte RunGameLogic_CallBack
_0803bc9c:	.4byte 0x081078f3

_0803bca0:
	cmp		r0, #0x2
	beq		_0803bcc0
	cmp		r0, #0x3
	beq		_0803bcce
	b		_0803be3c
_0803bcaa:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	b		_0803bdf2
_0803bcb2:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	b		_0803bdf8
_0803bcc0:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803bd7a
_0803bcce:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	b		_0803bd74
_0803bcd6:
	cmp		r5, #0x7
	beq		_0803bd82
	mov		r3, r8
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bd82
	ldr		r0, _0803bd38
	ldrh	r3, [r0, #0x38]
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	mov		r0, r8
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r4, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	mov		r1, r8
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803bd1e
	b		_0803be3c
_0803bd1e:
	cmp		r1, #0x3
	ble		_0803bd24
	mov		r1, #0x3
_0803bd24:
	ldr		r0, _0803bd3c
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803bd52
	cmp		r0, #0x1
	bgt		_0803bd40
	cmp		r0, #0x0
	beq		_0803bd4a
	b		_0803be3c

_0803bd38:	.4byte RunGameLogic_CallBack
_0803bd3c:	.4byte 0x081078f7

_0803bd40:
	cmp		r0, #0x2
	beq		_0803bd60
	cmp		r0, #0x3
	beq		_0803bd6e
	b		_0803be3c
_0803bd4a:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	b		_0803bdf2
_0803bd52:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	b		_0803bdf8
_0803bd60:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803bd7a
_0803bd6e:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
_0803bd74:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
_0803bd7a:
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803be3c
_0803bd82:
	cmp		r5, #0x0
	beq		_0803bda6
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	add		r0, r6, #0x0
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x1
	ble		_0803bdcc
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	b		_0803bdf2
_0803bda6:
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r8
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x2
	ble		_0803bdcc
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	b		_0803bdf8
_0803bdcc:
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803be00
	cmp		r5, #0x7
	beq		_0803bdec
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x2
	ble		_0803be00
_0803bdec:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
_0803bdf2:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
_0803bdf8:
	mov		r1, #0xfe
	and		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803be3c
_0803be00:
	mov		r6, #0x0
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	cmp		r6, r5
	bge		_0803be30
_0803be0c:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803be2a
	ldrb	r0, [r4, #0x0]
	mov		r1, #0xfd
	and		r1, r0
	b		_0803be36
_0803be2a:
	add		r6, #0x1
	cmp		r6, r5
	blt		_0803be0c
_0803be30:
	ldrb	r0, [r4, #0x0]
	mov		r1, #0x2
	orr		r1, r0
_0803be36:
	mov		r0, #0x1
	orr		r1, r0
	strb	r1, [r4, #0x0]
_0803be3c:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3BE46, 0x2
	thumb_func_end sub_0803bbe8

	thumb_func_start sub_0803be48
sub_0803be48:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r7, r1, #0x0
	mov		r6, #0x0
	mov		r8, r6
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r5, r0, #0x1
	mov		r0, #0xc7
	lsl		r0, r0, #0x1
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803be6e
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0803c094
_0803be6e:
	cmp		r5, #0x0
	beq		_0803be80
	sub		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	add		r6, r0, #0x0
_0803be80:
	cmp		r5, #0x7
	beq		_0803be92
	add		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	mov		r8, r0
_0803be92:
	cmp		r5, #0x0
	beq		_0803bf2e
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bf2e
	cmp		r5, #0x5
	bgt		_0803bf2e
	ldr		r0, _0803bef8
	ldrh	r3, [r0, #0x38]
	add		r0, r6, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803bedc
	b		_0803c094
_0803bedc:
	cmp		r1, #0x3
	ble		_0803bee2
	mov		r1, #0x3
_0803bee2:
	ldr		r0, _0803befc
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0803beee
	b		_0803c044
_0803beee:
	cmp		r0, #0x1
	bgt		_0803bf00
	cmp		r0, #0x0
	beq		_0803bf0a
	b		_0803c094

_0803bef8:	.4byte RunGameLogic_CallBack
_0803befc:	.4byte 0x081078fb

_0803bf00:
	cmp		r0, #0x2
	beq		_0803bf18
	cmp		r0, #0x3
	beq		_0803bf26
	b		_0803c094
_0803bf0a:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803c050
_0803bf18:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803bfd2
_0803bf26:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	b		_0803bfcc
_0803bf2e:
	cmp		r5, #0x7
	beq		_0803bfda
	mov		r3, r8
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803bfda
	ldr		r0, _0803bf90
	ldrh	r3, [r0, #0x38]
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	mov		r0, r8
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r4, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	mov		r1, r8
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803bf76
	b		_0803c094
_0803bf76:
	cmp		r1, #0x3
	ble		_0803bf7c
	mov		r1, #0x3
_0803bf7c:
	ldr		r0, _0803bf94
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803bfb0
	cmp		r0, #0x1
	bgt		_0803bf98
	cmp		r0, #0x0
	beq		_0803bfa2
	b		_0803c094

_0803bf90:	.4byte RunGameLogic_CallBack
_0803bf94:	.4byte 0x081078ff

_0803bf98:
	cmp		r0, #0x2
	beq		_0803bfb8
	cmp		r0, #0x3
	beq		_0803bfc6
	b		_0803c094
_0803bfa2:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803c050
_0803bfb0:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	b		_0803c04a
_0803bfb8:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803bfd2
_0803bfc6:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
_0803bfcc:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
_0803bfd2:
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803c094
_0803bfda:
	cmp		r5, #0x0
	beq		_0803c004
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	add		r0, r6, #0x0
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x1
	ble		_0803c024
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803c050
_0803c004:
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r8
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x2
	ble		_0803c024
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	b		_0803c04a
_0803c024:
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c058
	cmp		r5, #0x7
	beq		_0803c044
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x2
	ble		_0803c058
_0803c044:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
_0803c04a:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
_0803c050:
	mov		r1, #0xfe
	and		r0, r1
	strb	r0, [r2, #0x0]
	b		_0803c094
_0803c058:
	mov		r6, #0x0
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	cmp		r6, r5
	bge		_0803c088
_0803c064:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c082
	ldrb	r0, [r4, #0x0]
	mov		r1, #0xfd
	and		r1, r0
	b		_0803c08e
_0803c082:
	add		r6, #0x1
	cmp		r6, r5
	blt		_0803c064
_0803c088:
	ldrb	r0, [r4, #0x0]
	mov		r1, #0x2
	orr		r1, r0
_0803c08e:
	mov		r0, #0x1
	orr		r1, r0
	strb	r1, [r4, #0x0]
_0803c094:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3C09E, 0xF2
	thumb_func_end sub_0803be48

	thumb_func_start sub_0803c190
sub_0803c190:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r7, r1, #0x0
	mov		r6, #0x0
	mov		r8, r6
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r5, r0, #0x1
	mov		r0, #0xc7
	lsl		r0, r0, #0x1
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803c1b6
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0803c412
_0803c1b6:
	cmp		r5, #0x0
	beq		_0803c1c8
	sub		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	add		r6, r0, #0x0
_0803c1c8:
	cmp		r5, #0x7
	beq		_0803c1da
	add		r1, r5, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	mov		r8, r0
_0803c1da:
	cmp		r5, #0x0
	beq		_0803c286
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c286
	cmp		r5, #0x5
	bgt		_0803c286
	ldr		r0, _0803c240
	ldrh	r3, [r0, #0x38]
	add		r0, r6, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803c224
	b		_0803c412
_0803c224:
	cmp		r1, #0x3
	ble		_0803c22a
	mov		r1, #0x3
_0803c22a:
	ldr		r0, _0803c244
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803c266
	cmp		r0, #0x1
	bgt		_0803c248
	cmp		r0, #0x0
	beq		_0803c254
	b		_0803c412

.incbin "base.gba", 0x3C23E, 0x2

_0803c240:	.4byte RunGameLogic_CallBack
_0803c244:	.4byte 0x08107903

_0803c248:
	cmp		r0, #0x2
	beq		_0803c278
	cmp		r0, #0x3
	bne		_0803c252
	b		_0803c400
_0803c252:
	b		_0803c412
_0803c254:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c266:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c278:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803c40c
_0803c286:
	cmp		r5, #0x7
	beq		_0803c334
	mov		r3, r8
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c334
	ldr		r0, _0803c2e8
	ldrh	r3, [r0, #0x38]
	add		r0, r4, #0x0
	add		r0, #0x91
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	mov		r0, r8
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	and		r0, r2
	sub		r1, r1, r0
	add		r2, r3, #0x0
	mul		r2, r1
	add		r0, r4, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	mov		r1, r8
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r1, r2, r0
	cmp		r1, #0x0
	bge		_0803c2ce
	b		_0803c412
_0803c2ce:
	cmp		r1, #0x3
	ble		_0803c2d4
	mov		r1, #0x3
_0803c2d4:
	ldr		r0, _0803c2ec
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803c30c
	cmp		r0, #0x1
	bgt		_0803c2f0
	cmp		r0, #0x0
	beq		_0803c2fa
	b		_0803c412

_0803c2e8:	.4byte RunGameLogic_CallBack
_0803c2ec:	.4byte 0x08107907

_0803c2f0:
	cmp		r0, #0x2
	beq		_0803c31e
	cmp		r0, #0x3
	beq		_0803c32c
	b		_0803c412
_0803c2fa:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c30c:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c31e:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	b		_0803c40c
_0803c32c:
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	b		_0803c406
_0803c334:
	cmp		r5, #0x0
	beq		_0803c362
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	add		r0, r6, #0x0
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x1
	ble		_0803c38c
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c362:
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r8
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r6, r2, #0x0
	cmp		r1, #0x2
	ble		_0803c38c
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c38c:
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c3be
	cmp		r5, #0x7
	beq		_0803c3ac
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x2
	ble		_0803c3be
_0803c3ac:
	mov		r3, #0xc8
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
	mov		r1, #0xfe
	and		r0, r1
	b		_0803c410
_0803c3be:
	cmp		r5, #0x5
	bgt		_0803c400
	mov		r6, #0x0
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	cmp		r6, r5
	bge		_0803c3f2
_0803c3ce:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c3ec
	ldrb	r0, [r4, #0x0]
	mov		r1, #0xfd
	and		r1, r0
	b		_0803c3f8
_0803c3ec:
	add		r6, #0x1
	cmp		r6, r5
	blt		_0803c3ce
_0803c3f2:
	ldrb	r0, [r4, #0x0]
	mov		r1, #0x2
	orr		r1, r0
_0803c3f8:
	mov		r0, #0x1
	orr		r1, r0
	strb	r1, [r4, #0x0]
	b		_0803c412
_0803c400:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r2, r4, r1
_0803c406:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	orr		r0, r1
_0803c40c:
	mov		r1, #0x1
	orr		r0, r1
_0803c410:
	strb	r0, [r2, #0x0]
_0803c412:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803c190

	thumb_func_start sub_0803c41c
sub_0803c41c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, #0x0
	mov		r8, r0
	mov		r7, #0x0
	add		r0, r4, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r6, r0, #0x1
	cmp		r6, #0x0
	beq		_0803c446
	sub		r1, r6, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_08044894
	mov		r8, r0
_0803c446:
	cmp		r6, #0x7
	beq		_0803c464
	add		r1, r6, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_08044894
	add		r7, r0, #0x0
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803c49a
_0803c464:
	cmp		r6, #0x0
	beq		_0803c482
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803c49a
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r3, #0x0
	ldrsh	r1, [r2, r3]
	mov		r0, r8
	b		_0803c48c
_0803c482:
	add		r2, r4, #0x0
	add		r2, #0xae
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	add		r0, r7, #0x0
_0803c48c:
	add		r0, #0xae
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	sub		r1, r1, r0
	add		r7, r2, #0x0
	cmp		r1, #0x1
	ble		_0803c4a4
_0803c49a:
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0803b9f8
	b		_0803c4cc
_0803c4a4:
	add		r0, r5, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c4cc
	cmp		r6, #0x7
	beq		_0803c4c4
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x2
	ble		_0803c4cc
_0803c4c4:
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0803b9f8
_0803c4cc:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3C4D6, 0x2
	thumb_func_end sub_0803c41c

	thumb_func_start sub_0803c4d8
sub_0803c4d8:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r1, _0803c530
	add		r6, r1, #0x0
	add		r6, #0x24
	add		r7, r6, #0x0
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	add		r5, r1, #0x0
	cmp		r0, #0x0
	bne		_0803c4f4
	b		_0803c7ce
_0803c4f4:
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	add		r2, r1, #0x0
	cmp		r0, #0x0
	beq		_0803c504
	b		_0803c7ce
_0803c504:
	ldr		r1, _0803c534
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c514
	b		_0803c7ce
_0803c514:
	mov		r1, #0xc6
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0803c538
	cmp		r1, r0
	beq		_0803c55a
	cmp		r1, r0
	bgt		_0803c53c
	sub		r0, #0x2
	cmp		r1, r0
	beq		_0803c550
	b		_0803c56e

.incbin "base.gba", 0x3C52E, 0x2

_0803c530:	.4byte RunGameLogic_CallBack
_0803c534:	.4byte 0x000007FE
_0803c538:	.4byte 0x00001002

_0803c53c:
	ldr		r0, _0803c54c
	cmp		r1, r0
	beq		_0803c55a
	add		r0, #0x1
	cmp		r1, r0
	beq		_0803c564
	b		_0803c56e

.incbin "base.gba", 0x3C54A, 0x2

_0803c54c:	.4byte 0x00001004

_0803c550:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0803bbe8
	b		_0803c7ce
_0803c55a:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0803c190
	b		_0803c7ce
_0803c564:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0803be48
	b		_0803c7ce
_0803c56e:
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_0803c578
	b		_0803c7ce
_0803c578:
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0803c586
	b		_0803c7ce
_0803c586:
	ldr		r1, _0803c5a8
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0803c592
	b		_0803c7ce
_0803c592:
	ldr		r2, _0803c5ac
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803c5b0
	cmp		r0, #0x1
	ble		_0803c5b8
	cmp		r0, #0x2
	beq		_0803c5b4
	b		_0803c5b8

.incbin "base.gba", 0x3C5A6, 0x2

_0803c5a8:	.4byte 0x00000C62
_0803c5ac:	.4byte 0x000007DC

_0803c5b0:
	mov		r3, #0x80
	b		_0803c5bc
_0803c5b4:
	mov		r3, #0x40
	b		_0803c5bc
_0803c5b8:
	mov		r3, #0x80
	lsl		r3, r3, #0x1
_0803c5bc:
	add		r0, r4, #0x0
	add		r0, #0xec
	ldrb	r0, [r0, #0x0]
	add		r2, r0, #0x0
	mul		r2, r3
	ldr		r1, [r5, #0x10]
	lsl		r0, r3, #0x3
	sub		r0, #0x1
	and		r1, r0
	eor		r2, r1
	neg		r0, r2
	orr		r0, r2
	cmp		r0, #0x0
	bge		_0803c5da
	b		_0803c7ce
_0803c5da:
	add		r2, r4, #0x0
	add		r2, #0x91
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x7f
	and		r0, r1
	mov		r3, #0x0
	cmp		r0, #0x0
	bne		_0803c5fa
	add		r0, r4, #0x0
	add		r0, #0x90
	ldrh	r1, [r7, #0x14]
	ldrb	r0, [r0, #0x0]
	lsr		r1, r1, #0x1
	cmp		r0, r1
	bhi		_0803c5fa
	mov		r3, #0x1
_0803c5fa:
	cmp		r3, #0x0
	beq		_0803c600
	b		_0803c7ce
_0803c600:
	ldrb	r0, [r2, #0x0]
	mov		r2, #0x7f
	and		r2, r0
	ldr		r1, _0803c648
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	mov		r1, #0x7f
	and		r0, r1
	sub		r0, #0x1
	mov		r3, #0x0
	cmp		r2, r0
	bne		_0803c62a
	add		r0, r4, #0x0
	add		r0, #0x90
	ldrh	r1, [r7, #0x14]
	ldrb	r0, [r0, #0x0]
	lsr		r1, r1, #0x1
	cmp		r0, r1
	bcc		_0803c62a
	mov		r3, #0x1
_0803c62a:
	cmp		r3, #0x0
	beq		_0803c630
	b		_0803c7ce
_0803c630:
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0803c64c
	cmp		r1, r0
	beq		_0803c650
	add		r0, #0x2
	cmp		r1, r0
	beq		_0803c660
	b		_0803c668

.incbin "base.gba", 0x3C646, 0x2

_0803c648:	.4byte 0x000007E6
_0803c64c:	.4byte 0x00001001

_0803c650:
	ldr		r1, _0803c65c
	add		r0, r4, #0x0
	bl		sub_080373dc
	b		_0803c668

.incbin "base.gba", 0x3C65A, 0x2

_0803c65c:	.4byte 0x0000100C

_0803c660:
	ldr		r1, _0803c684
	add		r0, r4, #0x0
	bl		sub_080373dc
_0803c668:
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0803c688
	add		r0, r0, r2
	cmp		r0, #0xc
	bls		_0803c67a
	b		_0803c7ce
_0803c67a:
	lsl		r0, r0, #0x2
	ldr		r1, _0803c68c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0803c684:	.4byte 0x00001005
_0803c688:	.4byte 0xFFFFF000
_0803c68c:	.4byte 0x0803c690
_0803c690:	.4byte 0x0803c6c4

.incbin "base.gba", 0x3C694, 0x30
	thumb_func_end sub_0803c4d8


.incbin "base.gba", 0x3C6C4, 0x10A

_0803c7ce:

.incbin "base.gba", 0x3C7CE, 0x6
	thumb_func_start sub_0803c7d4
sub_0803c7d4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x44
	str		r0, [sp, #0x40]
	ldr		r0, _0803c800
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r10, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803c80e
	cmp		r0, #0x1
	bgt		_0803c804
	cmp		r0, #0x0
	beq		_0803c818
	b		_0803c81e

_0803c800:	.4byte RunGameLogic_CallBack

_0803c804:
	cmp		r0, #0x2
	beq		_0803c812
	cmp		r0, #0x3
	beq		_0803c818
	b		_0803c81e
_0803c80e:
	mov		r1, #0x2
	b		_0803c820
_0803c812:
	mov		r2, #0x4
	mov		r9, r2
	b		_0803c822
_0803c818:
	mov		r0, #0x0
	mov		r9, r0
	b		_0803c822
_0803c81e:
	mov		r1, #0x0
_0803c820:
	mov		r9, r1
_0803c822:
	ldr		r2, [sp, #0x40]
	cmp		r2, #0x0
	bne		_0803c8a8
	mov		r3, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r10
	ldrb	r1, [r0, #0x0]
	cmp		r3, r1
	bge		_0803c854
	add		r4, r0, #0x0
	ldr		r1, _0803c880
	add		r1, r10
_0803c83c:
	ldmia	r1!, { r2 }
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, sp
	str		r2, [r0, #0x0]
	add		r3, #0x1
	ldrb	r2, [r4, #0x0]
	cmp		r3, r2
	blt		_0803c83c
_0803c854:
	mov		r5, #0x8
	mov		r3, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r10
	ldrb	r1, [r0, #0x0]
	cmp		r3, r1
	bge		_0803c8a4
	add		r6, r0, #0x0
	mov		r4, sp
	mov		r7, #0x80
	lsl		r7, r7, #0x8
_0803c86c:
	ldr		r2, [r4, #0x0]
	ldr		r0, [r2, #0x48]
	and		r0, r7
	cmp		r0, #0x0
	beq		_0803c884
	add		r1, r2, #0x0
	add		r1, #0xae
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	b		_0803c89a

_0803c880:	.4byte 0x000007F4

_0803c884:
	mov		r0, r9
	add		r1, r5, r0
	cmp		r3, #0x3
	bgt		_0803c88e
	add		r1, #0x1
_0803c88e:
	add		r0, r2, #0x0
	add		r0, #0xae
	strh	r1, [r0, #0x0]
	cmp		r5, #0x0
	beq		_0803c89a
	sub		r5, #0x2
_0803c89a:
	add		r4, #0x4
	add		r3, #0x1
	ldrb	r1, [r6, #0x0]
	cmp		r3, r1
	blt		_0803c86c
_0803c8a4:
	mov		r1, #0x0
	b		_0803c9a2
_0803c8a8:
	mov		r3, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r10
	add		r1, sp, #0x20
	ldrb	r2, [r0, #0x0]
	cmp		r3, r2
	bge		_0803c8d6
	add		r7, r1, #0x0
	mov		r6, sp
	ldr		r5, _0803c960
	add		r5, r10
	add		r4, r0, #0x0
_0803c8c2:
	ldmia	r5!, { r2 }
	stmia	r6!, {  r2 }
	add		r0, r2, #0x0
	add		r0, #0xc4
	ldrb	r0, [r0, #0x0]
	stmia	r7!, { r0 }
	add		r3, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r3, r0
	blt		_0803c8c2
_0803c8d6:
	mov		r3, #0x0
	add		r6, r1, #0x0
	mov		r12, r6
_0803c8dc:
	lsl		r1, r3, #0x2
	add		r0, r6, r1
	ldr		r4, [r0, #0x0]
	add		r2, r3, #0x1
	add		r7, r1, #0x0
	add		r5, r2, #0x0
	cmp		r5, #0x7
	bgt		_0803c902
	lsl		r0, r5, #0x2
	add		r0, r12
_0803c8f0:
	ldr		r1, [r0, #0x0]
	cmp		r1, r4
	ble		_0803c8fa
	add		r4, r1, #0x0
	add		r3, r2, #0x0
_0803c8fa:
	add		r0, #0x4
	add		r2, #0x1
	cmp		r2, #0x7
	ble		_0803c8f0
_0803c902:
	lsl		r3, r3, #0x2
	add		r2, r6, r3
	add		r1, r6, r7
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	str		r4, [r1, #0x0]
	mov		r1, sp
	add		r2, r1, r3
	ldr		r3, [r2, #0x0]
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	str		r3, [r1, #0x0]
	add		r3, r5, #0x0
	cmp		r3, #0x6
	ble		_0803c8dc
	mov		r5, #0x8
	mov		r6, #0x1
	neg		r6, r6
	add		r7, r6, #0x0
	mov		r3, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r10
	ldrb	r2, [r0, #0x0]
	cmp		r3, r2
	bge		_0803c992
	mov		r12, r6
	mov		r8, r0
	mov		r4, sp
_0803c93e:
	ldr		r2, [r4, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c964
	cmp		r7, r12
	bne		_0803c956
	add		r0, r2, #0x0
	add		r0, #0xc4
	ldrb	r7, [r0, #0x0]
_0803c956:
	add		r1, r2, #0x0
	add		r1, #0xae
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	b		_0803c986

_0803c960:	.4byte 0x000007F4

_0803c964:
	cmp		r6, r12
	bne		_0803c96e
	add		r0, r2, #0x0
	add		r0, #0xc4
	ldrb	r6, [r0, #0x0]
_0803c96e:
	mov		r0, r9
	add		r1, r5, r0
	cmp		r3, #0x3
	bgt		_0803c97a
	ldr		r0, [sp, #0x40]
	add		r1, r1, r0
_0803c97a:
	add		r0, r2, #0x0
	add		r0, #0xae
	strh	r1, [r0, #0x0]
	cmp		r5, #0x0
	beq		_0803c986
	sub		r5, #0x2
_0803c986:
	add		r4, #0x4
	add		r3, #0x1
	mov		r1, r8
	ldrb	r1, [r1, #0x0]
	cmp		r3, r1
	blt		_0803c93e
_0803c992:
	sub		r0, r7, r6
	mov		r1, #0x2
	cmp		r0, #0x8
	bgt		_0803c9a2
	mov		r1, #0x0
	cmp		r0, #0x2
	ble		_0803c9a2
	mov		r1, #0x1
_0803c9a2:
	ldr		r0, _0803c9b8
	add		r0, r10
	strb	r1, [r0, #0x0]
	add		sp, #0x44
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803c9b8:	.4byte 0x00000C64
	thumb_func_end sub_0803c7d4

	thumb_func_start sub_0803c9bc
sub_0803c9bc:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r4, #0x0
	cmp		r4, r5
	bge		_0803c9e8
_0803c9c8:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08044894
	ldr		r0, [r0, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803c9e2
	mov		r0, #0x1
	b		_0803c9ea
_0803c9e2:
	add		r4, #0x1
	cmp		r4, r5
	blt		_0803c9c8
_0803c9e8:
	mov		r0, #0x0
_0803c9ea:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0803c9bc

	thumb_func_start sub_0803c9f0
sub_0803c9f0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _0803ca1c
	add		r1, r0, #0x0
	add		r1, #0x24
	ldr		r3, _0803ca20
	add		r2, r0, r3
	ldrh	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_0803ca08
	sub		r0, #0x1
	strh	r0, [r2, #0x0]
_0803ca08:
	add		r0, r4, #0x0
	bl		sub_0803b90c
	add		r1, r4, #0x0
	add		r1, #0x9a
	strb	r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3CA1A, 0x2

_0803ca1c:	.4byte RunGameLogic_CallBack
_0803ca20:	.4byte 0x00000C86
	thumb_func_end sub_0803c9f0

	thumb_func_start sub_0803ca24
sub_0803ca24:
	ldr		r2, _0803ca54
	add		r1, r0, r2
	mov		r2, #0x0
	mov		r3, #0x0
	strh	r3, [r1, #0x8]
	strb	r2, [r1, #0xa]
	str		r3, [r1, #0xc]
	str		r3, [r1, #0x10]
	strb	r2, [r1, #0x14]
	strb	r2, [r1, #0x15]
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x17]
	strb	r2, [r1, #0x18]
	strb	r2, [r1, #0x19]
	strb	r2, [r1, #0x1a]
	strb	r2, [r1, #0x1b]
	strb	r2, [r1, #0x1c]
	str		r3, [r1, #0x20]
	mov		r1, #0xcb
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	strb	r2, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x3CA52, 0x2

_0803ca54:	.4byte 0x00000C8C
	thumb_func_end sub_0803ca24

	thumb_func_start sub_0803ca58
sub_0803ca58:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	ldr		r1, _0803cad0
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cac8
	ldr		r1, _0803cad4
	add		r0, r2, r1
	ldr		r5, [r0, #0x0]
	ldr		r0, [r5, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803cac8
	ldr		r0, _0803cad8
	add		r4, r2, r0
	add		r2, r5, #0x0
	add		r2, #0x96
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ca9a
	ldr		r3, [r4, #0xc]
	ldr		r0, _0803cadc
	cmp		r3, r0
	bhi		_0803ca9a
	add		r0, r3, #0x1
	str		r0, [r4, #0xc]
_0803ca9a:
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803cab2
	ldr		r1, [r4, #0x10]
	ldr		r0, _0803cadc
	cmp		r1, r0
	bhi		_0803cab2
	add		r0, r1, #0x1
	str		r0, [r4, #0x10]
_0803cab2:
	add		r0, r5, #0x0
	add		r0, #0x85
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x59
	bls		_0803cac8
	ldr		r1, [r4, #0x20]
	ldr		r0, _0803cadc
	cmp		r1, r0
	bhi		_0803cac8
	add		r0, r1, #0x1
	str		r0, [r4, #0x20]
_0803cac8:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3CACE, 0x2

_0803cad0:	.4byte 0x000007DA
_0803cad4:	.4byte 0x00000814
_0803cad8:	.4byte 0x00000C8C
_0803cadc:	.4byte 0x0000FFFF
	thumb_func_end sub_0803ca58

	thumb_func_start sub_0803cae0
sub_0803cae0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r9, r0
	add		r4, r1, #0x0
	ldr		r1, _0803cb54
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	ldr		r2, _0803cb58
	add		r5, r4, r2
	ldrh	r3, [r4, #0x14]
	mov		r10, r3
	sub		r1, #0x37
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	bl		sub_0802c6c8
	mov		r6, #0x0
	cmp		r0, #0x0
	beq		_0803cb10
	mov		r6, #0x64
_0803cb10:
	bl		sub_08002c18
	mov		r1, #0x3
	and		r1, r0
	lsl		r1, r1, #0x5
	add		r1, #0x26
	add		r7, r5, r1
	ldr		r2, _0803cb5c
	add		r0, r4, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0803cb2e
	b		_0803ccba
_0803cb2e:
	cmp		r8, r9
	beq		_0803cb34
	b		_0803ccba
_0803cb34:
	mov		r0, r8
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x3
	bhi		_0803cb68
	ldr		r2, _0803cb60
	lsl		r1, r0, #0x2
	ldr		r3, _0803cb64
	add		r0, r4, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	add		r1, r1, r0
	add		r1, r1, r2
	ldr		r2, [r1, #0x0]
	b		_0803cb6a

_0803cb54:	.4byte 0x00000814
_0803cb58:	.4byte 0x00000C8C
_0803cb5c:	.4byte 0x000007DA
_0803cb60:	.4byte 0x0810790c
_0803cb64:	.4byte 0x00000C64

_0803cb68:
	mov		r2, #0x0
_0803cb6a:
	add		r6, r6, r2
	strh	r2, [r7, #0x0]
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	lsl		r2, r0, #0x2
	add		r6, r6, r2
	strh	r2, [r7, #0x2]
	ldrb	r1, [r5, #0xa]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r2, r0, #0x3
	add		r6, r6, r2
	strh	r2, [r7, #0x4]
	mov		r0, r8
	bl		sub_080374cc
	mov		r0, r8
	bl		sub_080374cc
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r1, _0803cc3c
	ldr		r3, _0803cc40
	add		r0, r4, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, r10
	mul		r1, r0
	add		r0, r1, #0x0
	sub		r0, r0, r2
	cmp		r0, #0x0
	bge		_0803cbb4
	add		r0, #0x7
_0803cbb4:
	asr		r2, r0, #0x3
	cmp		r2, #0x0
	bge		_0803cbbc
	mov		r2, #0x0
_0803cbbc:
	add		r6, r6, r2
	strh	r2, [r7, #0x6]
	ldr		r2, _0803cc44
	mov		r0, r8
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	add		r6, r6, r2
	strh	r2, [r7, #0x8]
	ldr		r0, [r5, #0xc]
	lsr		r2, r0, #0x2
	sub		r6, r6, r2
	strh	r2, [r7, #0xa]
	ldr		r0, [r5, #0x10]
	lsl		r2, r0, #0x1
	sub		r6, r6, r2
	strh	r2, [r7, #0xc]
	ldrb	r1, [r5, #0x14]
	lsl		r0, r1, #0x2
	add		r2, r0, r1
	ldrb	r1, [r5, #0x15]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldrb	r1, [r5, #0x16]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	add		r2, r2, r0
	sub		r6, r6, r2
	strh	r2, [r7, #0xe]
	ldrb	r1, [r5, #0x17]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r2, r0, #0x1
	ldrb	r1, [r5, #0x18]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	add		r2, r2, r0
	ldrb	r1, [r5, #0x19]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r2, r2, r0
	ldrb	r1, [r5, #0x1a]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	add		r2, r2, r0
	sub		r6, r6, r2
	strh	r2, [r7, #0x10]
	bl		sub_08002c30
	mov		r1, #0x3
	sub		r2, r1, r0
	cmp		r2, #0x0
	ble		_0803cc48
	lsl		r0, r2, #0x4
	sub		r0, r0, r2
	lsl		r0, r0, #0x3
	b		_0803cc4a

_0803cc3c:	.4byte 0x0810793c
_0803cc40:	.4byte 0x000007DC
_0803cc44:	.4byte 0x08107948

_0803cc48:
	mov		r0, #0x0
_0803cc4a:
	add		r2, r0, #0x0
	sub		r6, r6, r2
	strh	r2, [r7, #0x12]
	ldrb	r1, [r5, #0x1b]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r2, r0, r1
	ldrb	r1, [r5, #0x1c]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	add		r2, r2, r0
	add		r0, r5, #0x0
	add		r0, #0x24
	ldrb	r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	add		r2, r2, r0
	add		r6, r6, r2
	strh	r2, [r7, #0x14]
	ldr		r0, [r5, #0x20]
	lsr		r2, r0, #0x2
	sub		r6, r6, r2
	strh	r2, [r7, #0x16]
	bl		sub_08002c18
	mov		r4, #0x3
	and		r0, r4
	lsl		r0, r0, #0x1
	add		r0, r5, r0
	strh	r6, [r0, #0x0]
	strh	r6, [r7, #0x18]
	bl		sub_08002c18
	and		r0, r4
	cmp		r0, #0x3
	bne		_0803ccba
	mov		r2, #0x0
	ldrsh	r0, [r5, r2]
	mov		r3, #0x2
	ldrsh	r1, [r5, r3]
	add		r0, r0, r1
	mov		r2, #0x4
	ldrsh	r1, [r5, r2]
	add		r0, r0, r1
	mov		r3, #0x6
	ldrsh	r1, [r5, r3]
	add		r0, r0, r1
	cmp		r0, #0x0
	bge		_0803ccb0
	add		r0, #0x3
_0803ccb0:
	asr		r2, r0, #0x2
	strh	r2, [r5, #0x8]
	add		r0, r5, #0x0
	add		r0, #0xbe
	strh	r2, [r0, #0x0]
_0803ccba:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803cae0

	thumb_func_start sub_0803ccc8
sub_0803ccc8:
	add		r2, r1, #0x0
	ldr		r3, _0803ccf8
	add		r1, r2, r3
	ldr		r3, [r1, #0x0]
	cmp		r3, r0
	bne		_0803ccf6
	ldr		r1, _0803ccfc
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803ccf6
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ccf6
	ldr		r3, _0803cd00
	add		r1, r2, r3
	ldrb	r0, [r1, #0xa]
	add		r0, #0x1
	strb	r0, [r1, #0xa]
_0803ccf6:
	bx		lr

_0803ccf8:	.4byte 0x00000814
_0803ccfc:	.4byte 0x000007DA
_0803cd00:	.4byte 0x00000C8C
	thumb_func_end sub_0803ccc8

	thumb_func_start sub_0803cd04
sub_0803cd04:
	add		r2, r1, #0x0
	ldr		r3, _0803cd2c
	add		r1, r2, r3
	ldr		r1, [r1, #0x0]
	cmp		r1, r0
	bne		_0803cd28
	ldr		r1, _0803cd30
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cd28
	ldr		r3, _0803cd34
	add		r1, r2, r3
	ldrb	r0, [r1, #0x14]
	add		r0, #0x1
	strb	r0, [r1, #0x14]
_0803cd28:
	bx		lr

.incbin "base.gba", 0x3CD2A, 0x2

_0803cd2c:	.4byte 0x00000814
_0803cd30:	.4byte 0x000007DA
_0803cd34:	.4byte 0x00000C8C
	thumb_func_end sub_0803cd04

	thumb_func_start sub_0803cd38
sub_0803cd38:
	add		r2, r1, #0x0
	ldr		r3, _0803cd60
	add		r1, r2, r3
	ldr		r1, [r1, #0x0]
	cmp		r1, r0
	bne		_0803cd5c
	ldr		r1, _0803cd64
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cd5c
	ldr		r3, _0803cd68
	add		r1, r2, r3
	ldrb	r0, [r1, #0x15]
	add		r0, #0x1
	strb	r0, [r1, #0x15]
_0803cd5c:
	bx		lr

.incbin "base.gba", 0x3CD5E, 0x2

_0803cd60:	.4byte 0x00000814
_0803cd64:	.4byte 0x000007DA
_0803cd68:	.4byte 0x00000C8C
	thumb_func_end sub_0803cd38

	thumb_func_start sub_0803cd6c
sub_0803cd6c:
	add		r2, r1, #0x0
	ldr		r3, _0803cd94
	add		r1, r2, r3
	ldr		r1, [r1, #0x0]
	cmp		r1, r0
	bne		_0803cd90
	ldr		r1, _0803cd98
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cd90
	ldr		r3, _0803cd9c
	add		r1, r2, r3
	ldrb	r0, [r1, #0x16]
	add		r0, #0x1
	strb	r0, [r1, #0x16]
_0803cd90:
	bx		lr

.incbin "base.gba", 0x3CD92, 0x2

_0803cd94:	.4byte 0x00000814
_0803cd98:	.4byte 0x000007DA
_0803cd9c:	.4byte 0x00000C8C

.incbin "base.gba", 0x3CDA0, 0x3C
	thumb_func_end sub_0803cd6c

	thumb_func_start sub_0803cddc
sub_0803cddc:
	add		r2, r1, #0x0
	ldr		r3, _0803ce0c
	add		r1, r2, r3
	ldr		r3, [r1, #0x0]
	cmp		r3, r0
	bne		_0803ce0a
	ldr		r1, _0803ce10
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803ce0a
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ce0a
	ldr		r3, _0803ce14
	add		r1, r2, r3
	ldrb	r0, [r1, #0x18]
	add		r0, #0x1
	strb	r0, [r1, #0x18]
_0803ce0a:
	bx		lr

_0803ce0c:	.4byte 0x00000814
_0803ce10:	.4byte 0x000007DA
_0803ce14:	.4byte 0x00000C8C
	thumb_func_end sub_0803cddc

	thumb_func_start sub_0803ce18
sub_0803ce18:
	add		r2, r1, #0x0
	ldr		r3, _0803ce48
	add		r1, r2, r3
	ldr		r3, [r1, #0x0]
	cmp		r3, r0
	bne		_0803ce46
	ldr		r1, _0803ce4c
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803ce46
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ce46
	ldr		r3, _0803ce50
	add		r1, r2, r3
	ldrb	r0, [r1, #0x19]
	add		r0, #0x1
	strb	r0, [r1, #0x19]
_0803ce46:
	bx		lr

_0803ce48:	.4byte 0x00000814
_0803ce4c:	.4byte 0x000007DA
_0803ce50:	.4byte 0x00000C8C
	thumb_func_end sub_0803ce18

	thumb_func_start sub_0803ce54
sub_0803ce54:
	add		r2, r1, #0x0
	ldr		r3, _0803ce84
	add		r1, r2, r3
	ldr		r3, [r1, #0x0]
	cmp		r3, r0
	bne		_0803ce82
	ldr		r1, _0803ce88
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803ce82
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ce82
	ldr		r3, _0803ce8c
	add		r1, r2, r3
	ldrb	r0, [r1, #0x1a]
	add		r0, #0x1
	strb	r0, [r1, #0x1a]
_0803ce82:
	bx		lr

_0803ce84:	.4byte 0x00000814
_0803ce88:	.4byte 0x000007DA
_0803ce8c:	.4byte 0x00000C8C

.incbin "base.gba", 0x3CE90, 0x3C
	thumb_func_end sub_0803ce54

	thumb_func_start sub_0803cecc
sub_0803cecc:
	add		r2, r1, #0x0
	ldr		r3, _0803cefc
	add		r1, r2, r3
	ldr		r3, [r1, #0x0]
	cmp		r3, r0
	bne		_0803cefa
	ldr		r1, _0803cf00
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cefa
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803cefa
	ldr		r3, _0803cf04
	add		r1, r2, r3
	ldrb	r0, [r1, #0x1c]
	add		r0, #0x1
	strb	r0, [r1, #0x1c]
_0803cefa:
	bx		lr

_0803cefc:	.4byte 0x00000814
_0803cf00:	.4byte 0x000007DA
_0803cf04:	.4byte 0x00000C8C
	thumb_func_end sub_0803cecc

	thumb_func_start sub_0803cf08
sub_0803cf08:
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, _0803cf3c
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_0803cf3a
	ldr		r1, _0803cf40
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, r3
	bne		_0803cf3a
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803cf3a
	mov		r0, #0xcb
	lsl		r0, r0, #0x4
	add		r1, r2, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
_0803cf3a:
	bx		lr

_0803cf3c:	.4byte 0x000007DA
_0803cf40:	.4byte 0x00000814

.incbin "base.gba", 0x3CF44, 0x78
	thumb_func_end sub_0803cf08

	thumb_func_start sub_0803cfbc
sub_0803cfbc:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	mov		r4, #0x0
	ldrb	r2, [r3, #0x1]
	add		r5, r2, #0x0
	ldr		r1, [r3, #0x4]
	ldr		r0, _0803cff0
	cmp		r1, r0
	bls		_0803d09a
	ldrb	r1, [r3, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803d048
	mov		r0, #0x3f
	and		r0, r2
	cmp		r0, #0x0
	beq		_0803d000
	cmp		r0, #0x3f
	beq		_0803d000
	ldr		r1, _0803cff4
	cmp		r2, #0x3f
	bls		_0803cff8
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0803cffa

_0803cff0:	.4byte 0x07FFFFFF
_0803cff4:	.4byte 0x08107968

_0803cff8:
	add		r0, r2, #0x0
_0803cffa:
	add		r0, r1, r0
	ldrb	r1, [r0, #0x0]
	b		_0803d022
_0803d000:
	ldrb	r1, [r3, #0x3]
	cmp		r1, #0x0
	bne		_0803d022
	add		r0, r5, #0x0
	sub		r0, #0x3f
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x1
	bhi		_0803d01c
	ldr		r0, _0803d018
	add		r0, #0x3f
	b		_0803d01e

_0803d018:	.4byte 0x08107968

_0803d01c:
	ldr		r0, _0803d034
_0803d01e:
	ldrb	r0, [r0, #0x0]
	add		r1, r0, #0x0
_0803d022:
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0803d038
	cmp		r0, #0x1
	ble		_0803d076
	cmp		r0, #0x2
	beq		_0803d040
	b		_0803d0dc

.incbin "base.gba", 0x3D032, 0x2

_0803d034:	.4byte 0x08107968

_0803d038:
	lsl		r0, r1, #0x9
	mov		r1, #0x88
	lsl		r1, r1, #0x9
	b		_0803d0da
_0803d040:
	lsl		r0, r1, #0x7
	mov		r1, #0xa4
	lsl		r1, r1, #0x9
	b		_0803d0da
_0803d048:
	cmp		r2, #0x0
	beq		_0803d062
	ldr		r1, _0803d058
	cmp		r2, #0x3f
	bls		_0803d05c
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0803d05e

_0803d058:	.4byte 0x081079a8

_0803d05c:
	add		r0, r2, #0x0
_0803d05e:
	add		r0, r1, r0
	b		_0803d06a
_0803d062:
	ldrb	r1, [r3, #0x3]
	cmp		r1, #0x0
	bne		_0803d06c
	ldr		r0, _0803d07c
_0803d06a:
	ldrb	r1, [r0, #0x0]
_0803d06c:
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0803d08a
	cmp		r0, #0x1
	bgt		_0803d080
_0803d076:
	cmp		r0, #0x0
	beq		_0803d086
	b		_0803d0dc

_0803d07c:	.4byte 0x081079a8

_0803d080:
	cmp		r0, #0x2
	beq		_0803d092
	b		_0803d0dc
_0803d086:
	lsl		r4, r1, #0xb
	b		_0803d0dc
_0803d08a:
	lsl		r0, r1, #0x9
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	b		_0803d0da
_0803d092:
	lsl		r0, r1, #0x7
	mov		r1, #0xa0
	lsl		r1, r1, #0x8
	b		_0803d0da
_0803d09a:
	ldr		r1, _0803d0a8
	cmp		r2, #0x3f
	bls		_0803d0ac
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0803d0ae

.incbin "base.gba", 0x3D0A6, 0x2

_0803d0a8:	.4byte 0x08107968

_0803d0ac:
	add		r0, r5, #0x0
_0803d0ae:
	add		r0, r1, r0
	ldrb	r1, [r0, #0x0]
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0803d0cc
	cmp		r0, #0x1
	bgt		_0803d0c2
	cmp		r0, #0x0
	beq		_0803d0c8
	b		_0803d0dc
_0803d0c2:
	cmp		r0, #0x2
	beq		_0803d0d4
	b		_0803d0dc
_0803d0c8:
	lsl		r4, r1, #0x6
	b		_0803d0dc
_0803d0cc:
	lsl		r0, r1, #0x4
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	b		_0803d0da
_0803d0d4:
	lsl		r0, r1, #0x2
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
_0803d0da:
	add		r4, r0, r1
_0803d0dc:
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0803cfbc

	thumb_func_start sub_0803d0e4
sub_0803d0e4:
	ldr		r0, _0803d0e8
	bx		lr

_0803d0e8:	.4byte 0x03002318

.incbin "base.gba", 0x3D0EC, 0x10
	thumb_func_end sub_0803d0e4

	thumb_func_start sub_0803d0fc
sub_0803d0fc:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r5, r2, #0x18
	bl		sub_0803cfbc
	add		r7, r0, #0x0
	mov		r0, #0x1
	strh	r0, [r6, #0x0]
	add		r0, r4, #0x0
	bl		sub_0803d180
	strh	r0, [r6, #0x2]
	add		r0, r4, #0x0
	bl		sub_0803d190
	strh	r0, [r6, #0x4]
	ldr		r2, [r4, #0x4]
	ldr		r0, _0803d158
	cmp		r2, r0
	bls		_0803d166
	add		r0, r5, #0x0
	add		r0, #0x8
	lsl		r0, r0, #0xc
	lsl		r1, r5, #0x6
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	add		r1, r1, r3
	orr		r0, r1
	strh	r0, [r6, #0x6]
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803d15c
	add		r0, r2, r7
	mov		r2, #0x7
	and		r2, r1
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x2
	sub		r1, r1, r2
	lsl		r1, r1, #0xd
	add		r0, r0, r1
	b		_0803d178

_0803d158:	.4byte 0x07FFFFFF

_0803d15c:
	add		r0, r2, r7
	mov		r1, #0xb0
	lsl		r1, r1, #0xc
	add		r0, r0, r1
	b		_0803d178
_0803d166:
	add		r0, r5, #0x0
	add		r0, #0x8
	lsl		r0, r0, #0xc
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	add		r1, r7, r3
	orr		r0, r1
	strh	r0, [r6, #0x6]
	add		r0, r2, r7
_0803d178:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3D17E, 0x2
	thumb_func_end sub_0803d0fc

	thumb_func_start sub_0803d180
sub_0803d180:
	ldr		r1, _0803d18c
	ldrb	r0, [r0, #0x2]
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x3D18A, 0x2

_0803d18c:	.4byte 0x081079e8
	thumb_func_end sub_0803d180

	thumb_func_start sub_0803d190
sub_0803d190:
	add		r3, r0, #0x0
	mov		r2, #0x0
	ldrb	r1, [r3, #0x1]
	mov		r0, #0x3f
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803d1b4
	cmp		r0, #0x3f
	beq		_0803d1b4
	mov		r0, #0x40
	and		r1, r0
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	neg		r0, r0
	asr		r2, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r2, r0
_0803d1b4:
	ldr		r0, _0803d1c4
	ldrb	r1, [r3, #0x2]
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	orr		r2, r0
	add		r0, r2, #0x0
	bx		lr

_0803d1c4:	.4byte 0x081079ec
	thumb_func_end sub_0803d190

	thumb_func_start sub_0803d1c8
sub_0803d1c8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_080290c0
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	mov		r1, #0x0
	strh	r0, [r4, #0x10]
	str		r1, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	mov		r2, #0x0
	mov		r1, #0x4
	add		r0, #0x34
_0803d1e6:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0803d1e6
	mov		r1, #0x0
	add		r0, r4, #0x0
	add		r0, #0x4e
	strb	r1, [r0, #0x0]
	add		r0, #0x2
	mov		r2, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	str		r1, [r4, #0x54]
	str		r1, [r4, #0x5c]
	str		r1, [r4, #0x60]
	add		r0, #0x12
	strb	r2, [r0, #0x0]
	str		r1, [r4, #0x68]
	add		r2, r4, #0x0
	add		r2, #0x58
	mov		r0, #0xc0
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x5a
	strh	r1, [r0, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3D222, 0x2
	thumb_func_end sub_0803d1c8

	thumb_func_start sub_0803d224
sub_0803d224:
	ldr		r1, _0803d230
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x3D22E, 0x2

_0803d230:	.4byte 0x0300232C
	thumb_func_end sub_0803d224

	thumb_func_start sub_0803d234
sub_0803d234:
	ldr		r2, _0803d248
	ldr		r1, [r2, #0x0]
	ldr		r0, _0803d24c
	mul		r0, r1
	ldr		r1, _0803d250
	add		r0, r0, r1
	str		r0, [r2, #0x0]
	lsl		r0, r0, #0x1
	lsr		r0, r0, #0x11
	bx		lr

_0803d248:	.4byte 0x0300232C
_0803d24c:	.4byte 0x41C64E6D
_0803d250:	.4byte 0x00003039
	thumb_func_end sub_0803d234

	thumb_func_start sub_0803d254
sub_0803d254:
	add		r2, r0, #0x0
	add		r2, #0x80
	mov		r1, #0xb6
	str		r1, [r2, #0x0]
	mov		r1, #0x88
	lsl		r1, r1, #0x8
	mov		r2, #0x0
	strh	r1, [r0, #0x10]
	mov		r1, #0x3
	strh	r1, [r0, #0x34]
	mov		r1, #0x1e
	strb	r1, [r0, #0xe]
	strb	r1, [r0, #0xd]
	strb	r1, [r0, #0xc]
	ldr		r1, _0803d284
	str		r1, [r0, #0x14]
	ldr		r1, _0803d288
	str		r1, [r0, #0x18]
	ldr		r1, _0803d28c
	str		r1, [r0, #0x48]
	add		r0, #0x4c
	strh	r2, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x3D282, 0x2

_0803d284:	.4byte 0x0803dd55
_0803d288:	.4byte 0x0803d4a9
_0803d28c:	.4byte 0x08096588
	thumb_func_end sub_0803d254

	thumb_func_start sub_0803d290
sub_0803d290:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	ldr		r0, _0803d2f0
	mov		r1, #0xff
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803d2a8
	b		_0803d3d6
_0803d2a8:
	ldr		r5, _0803d2f4
	ldr		r1, [r5, #0x0]
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803d2d0
	asr		r0, r1, #0x2
	mov		r1, #0x7
	and		r0, r1
	ldr		r1, _0803d2f8
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	bl		sub_08029f34
	ldr		r2, _0803d2fc
	ldr		r3, _0803d300
	add		r1, r4, #0x0
	bl		sub_08029ee4
_0803d2d0:
	mov		r0, #0x1
	bl		sub_08028130
	add		r6, r0, #0x0
	add		r6, #0xc8
	ldr		r0, [r5, #0x0]
	asr		r7, r0, #0x2
	mov		r1, #0x1f
	and		r7, r1
	add		r5, r1, #0x0
	and		r5, r0
	cmp		r5, #0xf
	bgt		_0803d304
	lsl		r0, r5, #0x1
	b		_0803d308

.incbin "base.gba", 0x3D2EE, 0x2

_0803d2f0:	.4byte RunGameLogic_CallBack
_0803d2f4:	.4byte 0x03002330
_0803d2f8:	.4byte 0x081085b8
_0803d2fc:	.4byte 0x06012C00
_0803d300:	.4byte 0x80000100

_0803d304:
	sub		r0, r1, r5
	lsl		r0, r0, #0x1
_0803d308:
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
	bgt		_0803d364
	mov		r0, sp
	ldrh		r0, [r0, #0x8]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x2]
	b		_0803d38e
_0803d364:
	cmp		r7, #0xf
	bgt		_0803d374
	mov		r0, sp
	ldrh		r0, [r0, #0x2]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x4]
	b		_0803d38e
_0803d374:
	cmp		r7, #0x17
	bgt		_0803d384
	mov		r0, sp
	ldrh		r0, [r0, #0x4]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x6]
	b		_0803d38e
_0803d384:
	mov		r0, sp
	ldrh		r0, [r0, #0x6]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh		r0, [r0, #0x8]
_0803d38e:
	strh	r0, [r6, #0x4]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0803d3e0
	ldr		r1, [r0, #0x0]
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803d3ce
	asr		r0, r1, #0x2
	mov		r1, #0x7
	and		r0, r1
	mov		r6, #0x0
	lsl		r0, r0, #0x7
	ldr		r1, _0803d3e4
	ldr		r5, _0803d3e8
	add		r4, r0, r1
_0803d3b2:
	bl		sub_08029f34
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	ldr		r3, _0803d3ec
	bl		sub_08029ee4
	add		r5, #0x80
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r4, r4, r0
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_0803d3b2
_0803d3ce:
	ldr		r1, _0803d3e0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0803d3d6:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3D3DE, 0x2

_0803d3e0:	.4byte 0x03002330
_0803d3e4:	.4byte 0x0808a060
_0803d3e8:	.4byte 0x06012E00
_0803d3ec:	.4byte 0x80000040
	thumb_func_end sub_0803d290

	thumb_func_start sub_0803d3f0
sub_0803d3f0:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r5, [r3, #0x70]
	ldr		r2, [r3, #0x74]
	ldr		r4, _0803d464
	cmp		r5, #0x0
	bne		_0803d40e
	cmp		r2, #0x0
	bne		_0803d40e
	ldr		r0, [r4, #0x0]
	str		r0, [r3, #0x48]
	ldr		r2, [r4, #0x4]
	mov		r0, #0xc0
	lsl		r0, r0, #0xc
	str		r0, [r3, #0x8]
_0803d40e:
	lsl		r0, r5, #0x3
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0803d4a0
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0803d48a
	add		r5, #0x1
	lsl		r1, r5, #0x3
	add		r0, r4, #0x4
	add		r0, r1, r0
	ldr		r2, [r0, #0x0]
	add		r1, r1, r4
	ldr		r4, [r1, #0x0]
	cmp		r4, #0x0
	bne		_0803d488
	ldr		r2, _0803d468
	ldrh	r1, [r3, #0x34]
	ldr		r0, _0803d46c
	and		r0, r1
	strh	r0, [r3, #0x34]
	str		r4, [r3, #0x8]
	ldr		r0, _0803d470
	str		r0, [r3, #0x48]
	add		r1, r3, #0x0
	add		r1, #0x80
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0803d474
	add		r2, r2, r0
	ldrh	r1, [r2, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	cmp		r0, r1
	bne		_0803d478
	mov		r0, #0x78
	b		_0803d47a

.incbin "base.gba", 0x3D462, 0x2

_0803d464:	.4byte 0x081085d8
_0803d468:	.4byte RunGameLogic_CallBack
_0803d46c:	.4byte 0x0000FFFE
_0803d470:	.4byte 0x08096588
_0803d474:	.4byte 0x000007FE

_0803d478:
	mov		r0, #0x2
_0803d47a:
	str		r0, [r3, #0x70]
	ldr		r0, _0803d484
	str		r0, [r3, #0x14]
	b		_0803d4a0

.incbin "base.gba", 0x3D482, 0x2

_0803d484:	.4byte 0x0803de1d

_0803d488:
	str		r4, [r3, #0x48]
_0803d48a:
	str		r5, [r3, #0x70]
	str		r2, [r3, #0x74]
	ldr		r0, [r3, #0x8]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	add		r0, r0, r1
	str		r0, [r3, #0x8]
	add		r1, r3, #0x0
	add		r1, #0x80
	mov		r0, #0xb6
	str		r0, [r1, #0x0]
_0803d4a0:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3D4A6, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	ldrh	r3, [r5, #0x10]
	mov		r0, #0xf0
	lsl		r0, r0, #0x8
	mov		r12, r0
	and		r3, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r3, r0
	bne		_0803d596
	ldr		r6, _0803d538
	mov		r1, #0x24
	add		r1, r1, r6
	mov		r8, r1
	add		r4, r5, #0x0
	ldr		r1, [r5, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803d552
	ldr		r2, _0803d53c
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_0803d502
	mov		r0, #0x20
	and		r1, r0
	cmp		r1, #0x0
	bne		_0803d502
	mov		r1, #0xff
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x3
	bne		_0803d502
	mov		r0, #0x79
	bl		sub_0807073c
_0803d502:
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0803d548
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803d548
	ldr		r0, _0803d540
	add		r0, r8
	bl		sub_08049164
	str		r4, [r0, #0x54]
	bl		sub_0803dd78
	ldr		r0, _0803d544
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0803d58a
	mov		r0, #0x67
	bl		sub_0807073c
	b		_0803d58a

_0803d538:	.4byte RunGameLogic_CallBack
_0803d53c:	.4byte 0x00000838
_0803d540:	.4byte 0x0000070C
_0803d544:	.4byte 0x00000814

_0803d548:
	add		r0, r4, #0x0
	mov		r1, r8
	bl		sub_0803cf08
	b		_0803d58a
_0803d552:
	mov		r2, #0xbd
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldrh	r2, [r0, #0x0]
	cmp		r2, #0x0
	beq		_0803d566
	mov		r0, r12
	and		r0, r2
	cmp		r0, r3
	bne		_0803d58a
_0803d566:
	mov		r0, #0x20
	and		r1, r0
	cmp		r1, #0x0
	bne		_0803d58a
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	bl		sub_08049164
	add		r4, r0, #0x0
	str		r5, [r4, #0x54]
	add		r0, r5, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	add		r0, r4, #0x0
	bl		sub_0803dd78
_0803d58a:
	mov		r1, #0x0
	str		r1, [r7, #0x70]
	str		r1, [r7, #0x74]
	ldr		r0, _0803d5a0
	str		r0, [r7, #0x14]
	str		r1, [r7, #0x18]
_0803d596:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803d5a0:	.4byte sub_0803d3f0
	thumb_func_end sub_0803d3f0

	thumb_func_start sub_0803d5a4
sub_0803d5a4:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r0, _0803d5c4
	add		r4, r0, #0x0
	add		r4, #0x24
	ldr		r1, _0803d5c8
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bge		_0803d5d0
	mov		r0, #0x8
	and		r1, r0
	cmp		r1, #0x0
	beq		_0803d5d0
_0803d5c0:
	ldr		r0, _0803d5cc
	b		_0803d7d2

_0803d5c4:	.4byte RunGameLogic_CallBack
_0803d5c8:	.4byte 0x00000CAC
_0803d5cc:	.4byte 0x08107c8c

_0803d5d0:
	ldr		r1, _0803d5f4
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_0803d60c
	cmp		r1, r0
	bgt		_0803d5f8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0803d60c
	b		_0803d7d0

.incbin "base.gba", 0x3D5F2, 0x2

_0803d5f4:	.4byte 0x000007DA

_0803d5f8:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0803d60c
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	bne		_0803d60a
	b		_0803d7ac
_0803d60a:
	b		_0803d7d0
_0803d60c:
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldrh	r4, [r4, #0x14]
	add		r1, r0, #0x0
	add		r1, #0x91
	ldrb	r1, [r1, #0x0]
	add		r3, r0, #0x0
	add		r3, #0x90
	add		r2, r1, #0x0
	mul		r2, r4
	ldrb	r3, [r3, #0x0]
	add		r2, r2, r3
	add		r1, r5, #0x0
	add		r1, #0x91
	ldrb	r1, [r1, #0x0]
	add		r3, r5, #0x0
	add		r3, #0x90
	mul		r1, r4
	ldrb	r3, [r3, #0x0]
	add		r1, r1, r3
	sub		r2, r2, r1
	cmp		r5, r0
	bne		_0803d65c
	bl		sub_0803d234
	mov		r1, #0x1
	and		r1, r0
	cmp		r1, #0x0
	beq		_0803d654
	ldr		r0, _0803d650
	b		_0803d7d2

.incbin "base.gba", 0x3D64E, 0x2

_0803d650:	.4byte 0x08107a28

_0803d654:
	ldr		r0, _0803d658
	b		_0803d7d2

_0803d658:	.4byte 0x08107a5c

_0803d65c:
	cmp		r2, #0x3c
	bls		_0803d662
	b		_0803d7a4
_0803d662:
	lsl		r0, r2, #0x2
	ldr		r1, _0803d66c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0803d66c:	.4byte 0x0803d670
_0803d670:	.4byte 0x0803d764

.incbin "base.gba", 0x3D674, 0xF0

_0803d764:
	ldr		r0, _0803d768
	b		_0803d7d2

_0803d768:	.4byte 0x08107a90

.incbin "base.gba", 0x3D76C, 0x8
	thumb_func_end sub_0803d5a4


.incbin "base.gba", 0x3D774, 0x30

_0803d7a4:

.incbin "base.gba", 0x3D7A4, 0x4
_0803d7a8:	.4byte 0x08107c38

_0803d7ac:

.incbin "base.gba", 0x3D7AC, 0xC
_0803d7b8:

.incbin "base.gba", 0x3D7B8, 0x8
_0803d7c0:	.4byte 0x0000017D
_0803d7c4:	.4byte 0x08107c64

_0803d7c8:

.incbin "base.gba", 0x3D7C8, 0x4
_0803d7cc:	.4byte 0x08107c78

_0803d7d0:

.incbin "base.gba", 0x3D7D0, 0x2
_0803d7d2:

.incbin "base.gba", 0x3D7D2, 0x6
_0803d7d8:	.4byte 0x081079fc
	thumb_func_start sub_0803d7dc
sub_0803d7dc:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	ldr		r1, _0803d814
	ldr		r3, _0803d818
	add		r0, r1, r3
	ldrb	r3, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r4, r0, #0x1
	mov		r0, #0x7
	and		r4, r0
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r5, #0x7
	and		r5, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x1
	beq		_0803d89c
	cmp		r0, #0x1
	bgt		_0803d81c
	cmp		r0, #0x0
	beq		_0803d824
	b		_0803d9dc

_0803d814:	.4byte RunGameLogic_CallBack
_0803d818:	.4byte 0x00000801

_0803d81c:
	cmp		r0, #0x2
	bne		_0803d822
	b		_0803d938
_0803d822:
	b		_0803d9dc
_0803d824:
	sub		r0, r3, #0x4
	cmp		r0, #0x13
	bls		_0803d82c
	b		_0803d9dc
_0803d82c:
	lsl		r0, r0, #0x2
	ldr		r1, _0803d838
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3D836, 0x2

_0803d838:	.4byte 0x0803d83c
_0803d83c:	.4byte 0x0803d910

.incbin "base.gba", 0x3D840, 0x5C

_0803d89c:
	sub		r0, r3, #0x4
	cmp		r0, #0x13
	bls		_0803d8a4
	b		_0803d9dc
_0803d8a4:
	lsl		r0, r0, #0x2
	ldr		r1, _0803d8b0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3D8AE, 0x2

_0803d8b0:	.4byte 0x0803d8b4
_0803d8b4:	.4byte 0x0803d9a8

.incbin "base.gba", 0x3D8B8, 0x4C
	thumb_func_end sub_0803d7dc


.incbin "base.gba", 0x3D904, 0x34

_0803d938:

.incbin "base.gba", 0x3D938, 0x10
_0803d948:	.4byte 0x0803d94c
_0803d94c:	.4byte 0x0803d99c

.incbin "base.gba", 0x3D950, 0x80

_0803d9d0:

.incbin "base.gba", 0x3D9D0, 0x8
_0803d9d8:	.4byte 0x00000191

_0803d9dc:

.incbin "base.gba", 0x3D9DC, 0x4
_0803d9e0:

.incbin "base.gba", 0x3D9E0, 0x14
_0803d9f4:	.4byte 0x00000191
_0803d9f8:	.4byte 0x08107cb4

_0803d9fc:

.incbin "base.gba", 0x3D9FC, 0x4
_0803da00:	.4byte 0x08107db4

_0803da04:

.incbin "base.gba", 0x3DA04, 0x2
_0803da06:

.incbin "base.gba", 0x3DA06, 0x12
_0803da18:	.4byte 0x08107eb4
	thumb_func_start sub_0803da1c
sub_0803da1c:
	push	{ r4, r5, r6, lr }
	add		r6, r1, #0x0
	bl		sub_0803d5a4
	add		r5, r0, #0x0
	add		r2, r5, #0x0
	mov		r1, #0x0
	mov		r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp		r0, #0x0
	beq		_0803da48
_0803da32:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	ldrh	r1, [r2, #0x2]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r2, #0x4
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, #0x0
	bne		_0803da32
_0803da48:
	lsl		r0, r1, #0x10
	asr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_0803da6a
	bl		sub_0803d234
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	add		r1, r4, #0x0
	bl		sub_08071b74
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	b		_0803da6c
_0803da64:
	mov		r1, #0x0
	ldrsh	r0, [r4, r1]
	b		_0803daac
_0803da6a:
	mov		r0, #0x0
_0803da6c:
	add		r2, r5, #0x0
	b		_0803da78
_0803da70:
	ldrh	r1, [r2, #0x2]
	asr		r0, r0, #0x10
	sub		r0, r0, r1
	add		r2, #0x4
_0803da78:
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803da70
	sub		r2, #0x4
	mov		r3, #0x0
	ldrsh	r4, [r2, r3]
	add		r0, r4, #0x0
	bl		sub_080370b4
	cmp		r0, r6
	ble		_0803daaa
	add		r4, r5, #0x0
	b		_0803daa0
_0803da92:
	mov		r3, #0x0
	ldrsh	r0, [r4, r3]
	bl		sub_080370b4
	cmp		r0, r6
	ble		_0803da64
	add		r4, #0x4
_0803daa0:
	mov		r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	bne		_0803da92
	ldr		r4, _0803dab4
_0803daaa:
	add		r0, r4, #0x0
_0803daac:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3DAB2, 0x2

_0803dab4:	.4byte 0x00001007
	thumb_func_end sub_0803da1c

	thumb_func_start sub_0803dab8
sub_0803dab8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	ldr		r0, _0803db04
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r8, r1
	ldr		r2, _0803db08
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r6, [r5, #0x54]
	mov		r7, #0x0
	ldr		r4, _0803db0c
	mov		r1, #0x0
	mov		r3, #0x0
	ldrsh	r0, [r4, r3]
	cmp		r0, #0x0
	beq		_0803daf0
	add		r2, r4, #0x0
_0803dae4:
	add		r2, #0x4
	add		r1, #0x1
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, #0x0
	bne		_0803dae4
_0803daf0:
	cmp		r1, #0x0
	beq		_0803db10
	ldr		r0, [r5, #0x70]
	bl		sub_08071b74
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	mov		r1, #0x0
	ldrsh	r4, [r0, r1]
	b		_0803db14

_0803db04:	.4byte RunGameLogic_CallBack
_0803db08:	.4byte 0x00000838
_0803db0c:	.4byte 0x081079fc

_0803db10:
	mov		r2, #0x0
	ldrsh	r4, [r4, r2]
_0803db14:
	cmp		r6, r9
	bne		_0803db24
	cmp		r4, #0x0
	beq		_0803db24
	lsl		r0, r4, #0x10
	lsr		r0, r0, #0x10
	bl		sub_08046734
_0803db24:
	ldr		r0, [r5, #0x74]
	sub		r0, #0x1
	str		r0, [r5, #0x74]
	cmp		r0, #0x0
	bgt		_0803db50
	ldr		r2, [r5, #0x78]
	ldr		r1, _0803db40
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_0803db44
	mov		r7, #0x1
	b		_0803db50

_0803db40:	.4byte 0x08108610

_0803db44:
	ldr		r0, [r5, #0x70]
	add		r0, #0x1
	str		r0, [r5, #0x70]
	str		r1, [r5, #0x74]
	add		r0, r2, #0x1
	str		r0, [r5, #0x78]
_0803db50:
	add		r0, r6, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803db66
	ldr		r0, [r5, #0x78]
	cmp		r0, #0x2
	ble		_0803db66
	mov		r7, #0x1
_0803db66:
	cmp		r7, #0x0
	beq		_0803dc24
	ldr		r0, _0803db80
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x4
	cmp		r0, #0x13
	bhi		_0803dbe8
	lsl		r0, r0, #0x2
	ldr		r1, _0803db84
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0803db80:	.4byte 0x000007DD
_0803db84:	.4byte 0x0803db88
_0803db88:	.4byte 0x0803dbe4

.incbin "base.gba", 0x3DB8C, 0x4C
	thumb_func_end sub_0803dab8


.incbin "base.gba", 0x3DBD8, 0x10

_0803dbe8:

.incbin "base.gba", 0x3DBE8, 0x2E
_0803dc16:

.incbin "base.gba", 0x3DC16, 0xE
_0803dc24:

.incbin "base.gba", 0x3DC24, 0xC
_0803dc30:	.4byte 0x00000C83
_0803dc34:	.4byte 0x00000C84
_0803dc38:	.4byte 0x0000070C
	thumb_func_start sub_0803dc3c
sub_0803dc3c:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	ldr		r1, _0803dc54
	add		r2, r1, #0x0
	add		r2, #0x24
	ldr		r6, [r7, #0x54]
	ldr		r0, [r7, #0x70]
	cmp		r0, #0x0
	beq		_0803dc58
	sub		r0, #0x1
	str		r0, [r7, #0x70]
	b		_0803dd4a

_0803dc54:	.4byte RunGameLogic_CallBack

_0803dc58:
	ldr		r3, _0803dc74
	add		r0, r1, r3
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bge		_0803dc7c
	mov		r0, #0x8
	and		r1, r0
	cmp		r1, #0x0
	beq		_0803dc7c
	ldr		r1, _0803dc78
	add		r0, r6, #0x0
	bl		sub_080373dc
	b		_0803dd38

_0803dc74:	.4byte 0x00000CAC
_0803dc78:	.4byte 0x00001007

_0803dc7c:
	ldr		r1, _0803dc94
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x4
	cmp		r0, #0x13
	bhi		_0803dcfc
	lsl		r0, r0, #0x2
	ldr		r1, _0803dc98
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3DC92, 0x2

_0803dc94:	.4byte 0x000007DD
_0803dc98:	.4byte 0x0803dc9c
_0803dc9c:	.4byte 0x0803dcf8

.incbin "base.gba", 0x3DCA0, 0x4C

_0803dcec:
.incbin "base.gba", 0x3DCEC, 0x4
.incbin "base.gba", 0x3DCF0, 0x4
.incbin "base.gba", 0x3DCF4, 0x4
_0803dcf8:
.incbin "base.gba", 0x3DCF8, 0x4
_0803dcfc:
	mov		r1, #0x8
	ldr		r3, _0803dd28
	add		r0, r2, r3
	ldrb	r4, [r0, #0x0]
	sub		r4, r1, r4
	ldr		r1, _0803dd2c
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	sub		r4, r4, r0
	add		r0, r6, #0x0
	bl		sub_0803d7dc
	add		r5, r0, #0x0
	bl		sub_080370b4
	cmp		r0, r4
	bgt		_0803dd30
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080373dc
	b		_0803dd38

_0803dd28:	.4byte 0x00000C83
_0803dd2c:	.4byte 0x00000C84

_0803dd30:
	add		r0, r6, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
_0803dd38:
	mov		r0, #0x0
	str		r0, [r7, #0x14]
	ldr		r0, _0803dd50
	mov		r3, #0xe6
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	add		r1, r7, #0x0
	bl		sub_080491c0
_0803dd4a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803dd50:	.4byte RunGameLogic_CallBack
	add		r1, r0, #0x0
	ldr		r0, [r1, #0x7c]
	add		r0, #0x1
	str		r0, [r1, #0x7c]
	mov		r2, #0x3f
	and		r2, r0
	cmp		r2, #0x1f
	ble		_0803dd6a
	mov		r0, #0x40
	sub		r0, r0, r2
	b		_0803dd6c
_0803dd6a:
	add		r0, r2, #0x0
_0803dd6c:
	add		r1, #0x80
	lsl		r0, r0, #0x1
	add		r0, #0xb6
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x3DD76, 0x2
	thumb_func_end sub_0803dc3c

	thumb_func_start sub_0803dd78
sub_0803dd78:
	push	{ lr }
	add		r2, r0, #0x0
	ldr		r3, [r2, #0x54]
	ldrh	r1, [r2, #0x34]
	ldr		r0, _0803ddb0
	and		r0, r1
	ldr		r1, _0803ddb4
	and		r0, r1
	strh	r0, [r2, #0x34]
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803ddbc
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	str		r0, [r2, #0x70]
	mov		r0, #0x2
	str		r0, [r2, #0x74]
	mov		r0, #0x0
	str		r0, [r2, #0x78]
	ldr		r0, _0803ddb8
	b		_0803ddc2

.incbin "base.gba", 0x3DDAE, 0x2

_0803ddb0:	.4byte 0x0000FFFE
_0803ddb4:	.4byte 0x0000FFFD
_0803ddb8:	.4byte sub_0803dab8

_0803ddbc:
	mov		r0, #0x1e
	str		r0, [r2, #0x70]
	ldr		r0, _0803ddd4
_0803ddc2:
	str		r0, [r2, #0x14]
	mov		r0, #0x0
	str		r0, [r2, #0x18]
	add		r0, r3, #0x0
	mov		r1, #0x1
	bl		sub_080373dc
	pop		{ r0 }
	bx		r0

_0803ddd4:	.4byte sub_0803dc3c

.incbin "base.gba", 0x3DDD8, 0x1C
	mov		r1, #0x16
	str		r1, [r0, #0x74]
	ldr		r1, _0803de14
	str		r1, [r0, #0x48]
	add		r2, r0, #0x0
	add		r2, #0x4c
	mov		r1, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0803de18
	str		r1, [r0, #0x14]
	add		r0, #0x80
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	str		r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x3DE12, 0x2

_0803de14:	.4byte 0x08096588
_0803de18:	.4byte sub_0803de50
	add		r3, r0, #0x0
	ldr		r0, [r3, #0x70]
	cmp		r0, #0x0
	beq		_0803de2e
	sub		r0, #0x1
	str		r0, [r3, #0x70]
	add		r2, r3, #0x0
	add		r2, #0x80
	b		_0803de44
_0803de2e:
	add		r2, r3, #0x0
	add		r2, #0x80
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	str		r0, [r2, #0x0]
	ldrh	r1, [r3, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	strh	r0, [r3, #0x34]
	ldr		r0, _0803de4c
	str		r0, [r3, #0x14]
_0803de44:
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	str		r0, [r2, #0x0]
	bx		lr

_0803de4c:	.4byte 0x0803ddf5
	thumb_func_end sub_0803dd78

	thumb_func_start sub_0803de50
sub_0803de50:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r5, [r6, #0x74]
	cmp		r5, #0x0
	ble		_0803de5c
	sub		r5, #0x1
_0803de5c:
	str		r5, [r6, #0x74]
	add		r7, r6, #0x0
	add		r7, #0x80
	ldr		r4, _0803de98
	lsl		r0, r5, #0x8
	mov		r1, #0x16
	bl		sub_0807d80c
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r1, [r0, #0x0]
	mov		r0, #0xca
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0803de7e
	ldr		r1, _0803de9c
	add		r0, r0, r1
_0803de7e:
	asr		r0, r0, #0xf
	add		r0, #0xb6
	str		r0, [r7, #0x0]
	cmp		r5, #0x0
	bne		_0803de90
	ldr		r0, _0803dea0
	str		r0, [r6, #0x18]
	ldr		r0, _0803dea4
	str		r0, [r6, #0x14]
_0803de90:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3DE96, 0x2

_0803de98:	.4byte 0x08101068
_0803de9c:	.4byte 0x00007FFF
_0803dea0:	.4byte 0x0803D4A9
_0803dea4:	.4byte 0x0803DD55

.incbin "base.gba", 0x3DEA8, 0x34
_0803dedc:	.4byte 0x0803df38

.incbin "base.gba", 0x3DEE0, 0x4C
	thumb_func_end sub_0803de50


.incbin "base.gba", 0x3DF2C, 0x94
	thumb_func_start sub_0803dfc0
sub_0803dfc0:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r0, _0803e038
	add		r0, #0x24
	mov		r12, r0
	ldrh	r3, [r1, #0x10]
	mov		r6, #0xf0
	lsl		r6, r6, #0x8
	and		r6, r3
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r3, r0
	beq		_0803e0d0
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r6, r0
	beq		_0803e0d0
	ldr		r0, [r4, #0x8]
	ldr		r2, _0803e03c
	cmp		r0, r2
	bgt		_0803e0d0
	ldr		r0, [r1, #0x8]
	cmp		r0, r2
	bgt		_0803e0d0
	ldrh	r0, [r4, #0x10]
	add		r2, r0, #0x0
	ldr		r0, _0803e040
	add		r7, r2, #0x0
	cmp		r2, r0
	bne		_0803e008
	cmp		r3, r2
	bne		_0803e008
	ldr		r0, [r1, #0x54]
	cmp		r5, r0
	beq		_0803e0d0
_0803e008:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r6, r0
	bne		_0803e050
	add		r0, r1, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0803e050
	add		r1, r7, #0x0
	ldr		r0, _0803e044
	cmp		r1, r0
	bne		_0803e028
	mov		r0, #0x0
	str		r0, [r4, #0x7c]
_0803e028:
	ldr		r0, _0803e048
	cmp		r1, r0
	bne		_0803e0d0
	ldr		r0, _0803e04c
	str		r0, [r4, #0x14]
	mov		r0, #0x0
	str		r0, [r4, #0x7c]
	b		_0803e0d0

_0803e038:	.4byte RunGameLogic_CallBack
_0803e03c:	.4byte 0x00041FFF
_0803e040:	.4byte 0x00008401
_0803e044:	.4byte 0x00008402
_0803e048:	.4byte 0x00008403
_0803e04c:	.4byte 0x0803E741

_0803e050:
	ldr		r0, [r5, #0x48]
	ldr		r1, _0803e0d8
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xd0
	lsl		r0, r0, #0x8
	add		r1, r4, #0x0
	add		r1, #0x5a
	mov		r3, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	strh	r2, [r1, #0x0]
	str		r0, [r4, #0x30]
	ldrh	r1, [r4, #0x34]
	ldr		r0, _0803e0dc
	and		r0, r1
	strh	r0, [r4, #0x34]
	str		r3, [r4, #0x18]
	ldr		r0, _0803e0e0
	str		r0, [r4, #0x14]
	cmp		r6, r2
	bne		_0803e0d0
	ldr		r0, _0803e0e4
	add		r0, r12
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e0d0
	mov		r0, r12
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0803e0d0
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _0803e0e8
	ldr		r4, _0803e0ec
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
_0803e0d0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3E0D6, 0x2

_0803e0d8:	.4byte 0xfffeffff
_0803e0dc:	.4byte 0x0000FFFD
_0803e0e0:	.4byte 0x0804123D
_0803e0e4:	.4byte 0x00000814
_0803e0e8:	.4byte 0x08124544
_0803e0ec:	.4byte 0x081245c8
	thumb_func_end sub_0803dfc0

	thumb_func_start sub_0803e0f0
sub_0803e0f0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	ldr		r0, [r4, #0x54]
	mov		r12, r0
	ldr		r7, _0803e1e8
	mov		r1, #0x24
	add		r1, r1, r7
	mov		r8, r1
	ldrh	r2, [r3, #0x10]
	add		r1, r2, #0x0
	mov		r5, #0xf0
	lsl		r5, r5, #0x8
	add		r6, r1, #0x0
	and		r6, r5
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_0803e1de
	and		r2, r5
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r2, r0
	beq		_0803e1de
	ldr		r0, [r4, #0x8]
	ldr		r1, _0803e1ec
	cmp		r0, r1
	bgt		_0803e1de
	ldr		r0, [r3, #0x8]
	cmp		r0, r1
	bgt		_0803e1de
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r6, r0
	bne		_0803e146
	add		r0, r3, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_0803e1de
_0803e146:
	mov		r1, r12
	ldr		r0, [r1, #0x48]
	ldr		r1, _0803e1f0
	and		r0, r1
	mov		r1, r12
	str		r0, [r1, #0x48]
	mov		r0, #0xd0
	lsl		r0, r0, #0x8
	add		r1, r4, #0x0
	add		r1, #0x5a
	mov		r2, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	strh	r3, [r1, #0x0]
	str		r0, [r4, #0x30]
	ldrh	r1, [r4, #0x34]
	ldr		r0, _0803e1f4
	and		r0, r1
	strh	r0, [r4, #0x34]
	str		r2, [r4, #0x18]
	ldr		r0, _0803e1f8
	str		r0, [r4, #0x14]
	mov		r1, #0xbe
	lsl		r1, r1, #0x1
	add		r1, r12
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r0, r12
	strh	r2, [r0, #0x0]
	cmp		r6, r3
	bne		_0803e1de
	ldr		r1, _0803e1fc
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e1de
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0803e1de
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _0803e200
	ldr		r4, _0803e204
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
_0803e1de:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803e1e8:	.4byte RunGameLogic_CallBack
_0803e1ec:	.4byte 0x00041FFF
_0803e1f0:	.4byte 0xfffeffff
_0803e1f4:	.4byte 0x0000FFFD
_0803e1f8:	.4byte 0x0804123D
_0803e1fc:	.4byte 0x00000838
_0803e200:	.4byte 0x08124544
_0803e204:	.4byte 0x081245c8
	thumb_func_end sub_0803e0f0

	thumb_func_start sub_0803e208
sub_0803e208:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	ldr		r0, _0803e264
	add		r0, #0x24
	mov		r8, r0
	ldrh	r1, [r4, #0x10]
	add		r7, r1, #0x0
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	add		r6, r7, #0x0
	and		r6, r2
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r7, r0
	beq		_0803e2fa
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r1, r0
	beq		_0803e2fa
	ldr		r0, [r5, #0x8]
	ldr		r1, _0803e268
	cmp		r0, r1
	bgt		_0803e2fa
	ldr		r0, [r4, #0x8]
	cmp		r0, r1
	bgt		_0803e2fa
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r6, r0
	bne		_0803e290
	add		r0, r4, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0803e270
	ldr		r0, _0803e26c
	str		r0, [r5, #0x14]
	mov		r0, #0x0
	str		r0, [r5, #0x7c]
	b		_0803e2fa

.incbin "base.gba", 0x3E262, 0x2

_0803e264:	.4byte RunGameLogic_CallBack
_0803e268:	.4byte 0x00041FFF
_0803e26c:	.4byte 0x0803E741

_0803e270:
	add		r0, r4, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	beq		_0803e288
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0803e290
_0803e288:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0803dfc0
_0803e290:
	ldr		r0, _0803e304
	cmp		r7, r0
	bne		_0803e29e
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0803dfc0
_0803e29e:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r6, r0
	bne		_0803e2fa
	ldr		r0, _0803e308
	add		r0, r8
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e2fa
	mov		r0, r8
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0803e2fa
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _0803e30c
	ldr		r4, _0803e310
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
_0803e2fa:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803e304:	.4byte 0x00008403
_0803e308:	.4byte 0x00000814
_0803e30c:	.4byte 0x08124544
_0803e310:	.4byte 0x081245c8
	thumb_func_end sub_0803e208

	thumb_func_start sub_0803e314
sub_0803e314:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	add		r6, r1, #0x0
	mov		r5, r9
	cmp		r2, #0x7
	bhi		_0803e3d2
	lsl		r0, r2, #0x2
	ldr		r1, _0803e334
	add		r1, r0, r1
	ldr		r1, [r1, #0x0]
	mov		r8, r0
	mov		pc, r1

.incbin "base.gba", 0x3E332, 0x2

_0803e334:	.4byte 0x0803e338
_0803e338:	.4byte 0x0803e3c4

.incbin "base.gba", 0x3E33C, 0x1C
	thumb_func_end sub_0803e314


.incbin "base.gba", 0x3E358, 0x7A

_0803e3d2:

.incbin "base.gba", 0x3E3D2, 0xE
	thumb_func_start sub_0803e3e0
sub_0803e3e0:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r1, [r4, #0x8]
	ldr		r0, _0803e408
	cmp		r1, r0
	bgt		_0803e48e
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_0803e40c
	add		r1, r4, #0x0
	add		r1, #0x4e
	mov		r0, #0x26
	b		_0803e494

.incbin "base.gba", 0x3E406, 0x2

_0803e408:	.4byte 0x0004FFFF

_0803e40c:
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_0803e416
	ldr		r1, _0803e470
	add		r0, r0, r1
_0803e416:
	lsr		r1, r0, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0803e422
	ldr		r0, _0803e470
	add		r2, r2, r0
_0803e422:
	asr		r2, r2, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0803e42c
	add		r0, r2, #0x7
_0803e42c:
	asr		r0, r0, #0x3
	lsl		r3, r0, #0x8
	lsl		r0, r1, #0x10
	asr		r1, r0, #0x10
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0803e43c
	add		r0, r1, #0x7
_0803e43c:
	asr		r0, r0, #0x3
	add		r5, r3, r0
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0802c490
	add		r1, r4, #0x0
	add		r1, #0x4e
	strb	r0, [r1, #0x0]
	mov		r1, #0x90
	and		r1, r0
	cmp		r1, #0x80
	bne		_0803e486
	add		r1, r4, #0x0
	add		r1, #0x52
	ldrh	r0, [r1, #0x0]
	sub		r2, r5, r0
	strh	r5, [r1, #0x0]
	cmp		r2, #0x0
	bge		_0803e474
	neg		r2, r2
	sub		r2, #0xfa
	cmp		r2, #0x0
	bge		_0803e47c
	mov		r2, #0x4
	b		_0803e47c

_0803e470:	.4byte 0x0000FFFF

_0803e474:
	sub		r2, #0x1
	cmp		r2, #0x0
	beq		_0803e47c
	sub		r2, #0xfd
_0803e47c:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0803e314
	b		_0803e498
_0803e486:
	add		r0, r4, #0x0
	add		r0, #0x52
	strh	r5, [r0, #0x0]
	b		_0803e496
_0803e48e:
	add		r1, r4, #0x0
	add		r1, #0x4e
	mov		r0, #0x40
_0803e494:
	strb	r0, [r1, #0x0]
_0803e496:
	mov		r0, #0x0
_0803e498:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3E49E, 0x2
	thumb_func_end sub_0803e3e0

	thumb_func_start sub_0803e4a0
sub_0803e4a0:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r2, r1, #0x0
	ldr		r0, _0803e4e4
	add		r5, r0, #0x0
	add		r5, #0x24
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	bne		_0803e58e
	add		r4, r6, #0x0
	add		r4, #0x50
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e580
	add		r0, r6, #0x0
	add		r1, r2, #0x0
	bl		sub_0803e3e0
	cmp		r0, #0x0
	beq		_0803e58c
	ldrh	r1, [r4, #0x0]
	mov		r2, #0x7
	and		r2, r1
	add		r2, #0x1
	cmp		r2, #0x7
	bhi		_0803e4f0
	ldr		r0, _0803e4e8
	and		r0, r1
	ldr		r3, _0803e4ec
	b		_0803e4f6

.incbin "base.gba", 0x3E4E2, 0x2

_0803e4e4:	.4byte RunGameLogic_CallBack
_0803e4e8:	.4byte 0x0000FFF8
_0803e4ec:	.4byte 0xFFFF8000

_0803e4f0:
	ldr		r0, _0803e568
	and		r0, r1
	ldr		r3, _0803e56c
_0803e4f6:
	add		r1, r3, #0x0
	orr		r0, r1
	orr		r0, r2
	strh	r0, [r4, #0x0]
	ldr		r1, _0803e570
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e552
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	cmp		r7, #0x0
	beq		_0803e552
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _0803e574
	ldr		r4, _0803e578
	mov		r3, #0xf8
	lsl		r3, r3, #0x2
	add		r4, r4, r3
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
	add		r2, r7, #0x0
	bl		sub_0807169c
_0803e552:
	add		r1, r6, #0x0
	add		r1, #0x74
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0803e58e
	ldr		r0, _0803e57c
	str		r0, [r6, #0x14]
	b		_0803e58e

_0803e568:	.4byte 0x0000FFF8
_0803e56c:	.4byte 0xFFFFC000
_0803e570:	.4byte 0x00000814
_0803e574:	.4byte 0x08124544
_0803e578:	.4byte 0x081245c8
_0803e57c:	.4byte sub_08041278

_0803e580:
	add		r0, r6, #0x0
	add		r1, r2, #0x0
	bl		sub_0803e3e0
	cmp		r0, #0x0
	bne		_0803e58e
_0803e58c:
	strh	r0, [r4, #0x0]
_0803e58e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803e4a0

	thumb_func_start sub_0803e594
sub_0803e594:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r0, _0803e638
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_0803e4a0
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0803e5b4
	ldr		r0, _0803e63c
	add		r1, r1, r0
_0803e5b4:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0803e5c0
	ldr		r0, _0803e63c
	add		r2, r2, r0
_0803e5c0:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_0803e5cc
	ldr		r0, _0803e63c
	add		r3, r3, r0
_0803e5cc:
	asr		r3, r3, #0x10
	add		r0, r7, #0x0
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803e5e4
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803e5e4:
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	beq		_0803e5ee
	sub		r0, #0x1
	strh	r0, [r4, #0x38]
_0803e5ee:
	mov		r2, #0x0
	add		r0, r4, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803e60c
	mov		r0, #0x0
	cmp		r1, #0x26
	bne		_0803e606
	mov		r0, #0x1
_0803e606:
	cmp		r0, #0x0
	bne		_0803e60c
	mov		r2, #0x1
_0803e60c:
	cmp		r2, #0x0
	bne		_0803e622
	mov		r1, #0x0
	add		r0, r5, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0803e61e
	mov		r1, #0x1
_0803e61e:
	cmp		r1, #0x0
	beq		_0803e648
_0803e622:
	ldr		r0, [r6, #0x48]
	ldr		r1, _0803e640
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r1, _0803e644
	add		r0, r7, r1
	add		r1, r5, #0x0
	bl		sub_080491c0
	b		_0803e6ea

.incbin "base.gba", 0x3E636, 0x2

_0803e638:	.4byte RunGameLogic_CallBack
_0803e63c:	.4byte 0x0000FFFF
_0803e640:	.4byte 0xfffeffff
_0803e644:	.4byte 0x0000070C

_0803e648:
	ldrh	r1, [r4, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r4, #0x34]
	add		r2, r5, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	add		r7, r2, #0x0
	cmp		r0, #0x0
	bne		_0803e6c4
	add		r0, r5, #0x0
	add		r0, #0x70
	ldrb	r3, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r2, _0803e680
	mov		r12, r0
	cmp		r1, r2
	beq		_0803e69c
	cmp		r1, r2
	bgt		_0803e688
	ldr		r0, _0803e684
	cmp		r1, r0
	beq		_0803e694
	b		_0803e6b4

_0803e680:	.4byte 0x00008402
_0803e684:	.4byte 0x00008401

_0803e688:
	ldr		r0, _0803e690
	cmp		r1, r0
	beq		_0803e6a4
	b		_0803e6b4

_0803e690:	.4byte 0x00008403

_0803e694:
	ldr		r1, _0803e698
	b		_0803e6a6

_0803e698:	.4byte 0x081086c0

_0803e69c:
	ldr		r1, _0803e6a0
	b		_0803e6a6

_0803e6a0:	.4byte 0x081086d8

_0803e6a4:
	ldr		r1, _0803e6b0
_0803e6a6:
	lsl		r0, r3, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803e6b6

.incbin "base.gba", 0x3E6AE, 0x2

_0803e6b0:	.4byte 0x081086f0

_0803e6b4:
	mov		r0, #0x0
_0803e6b6:
	str		r0, [r5, #0x48]
	add		r3, #0x1
	cmp		r3, #0x5
	ble		_0803e6c0
	mov		r3, #0x0
_0803e6c0:
	mov		r0, r12
	strb	r3, [r0, #0x0]
_0803e6c4:
	ldrh	r0, [r7, #0x0]
	add		r0, #0x1
	strh	r0, [r7, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x10
	bne		_0803e6da
	ldr		r0, [r6, #0x48]
	ldr		r1, _0803e6f0
	and		r0, r1
	str		r0, [r6, #0x48]
_0803e6da:
	ldr		r0, [r4, #0x0]
	ldr		r1, [r4, #0x28]
	add		r0, r0, r1
	str		r0, [r4, #0x0]
	ldr		r0, [r4, #0x4]
	ldr		r1, [r4, #0x2c]
	add		r0, r0, r1
	str		r0, [r4, #0x4]
_0803e6ea:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803e6f0:	.4byte 0xfffeffff
	thumb_func_end sub_0803e594

	thumb_func_start sub_0803e6f4
sub_0803e6f4:
	push	{ r4, lr }
	add		r4, r0, #0x0
	mov		r0, #0x26
	ldrsh	r3, [r4, r0]
	lsl		r1, r1, #0x10
	asr		r2, r1, #0x10
	sub		r0, r2, r3
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0803e720
	sub		r0, r2, r3
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _0803e718
	cmp		r0, r1
	bgt		_0803e738
	ldr		r1, _0803e71c
	b		_0803e72e

_0803e718:	.4byte 0xFFFFF800
_0803e71c:	.4byte 0xFFFFFC00

_0803e720:
	sub		r0, r2, r3
	lsl		r0, r0, #0x10
	ldr		r1, _0803e734
	cmp		r0, r1
	ble		_0803e738
	mov		r1, #0x80
	lsl		r1, r1, #0x3
_0803e72e:
	add		r0, r3, r1
	strh	r0, [r4, #0x26]
	b		_0803e73a

_0803e734:	.4byte 0x07FF0000

_0803e738:
	strh	r2, [r4, #0x26]
_0803e73a:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0803e6f4

	thumb_func_start sub_0803e740
sub_0803e740:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	mov		r8, r0
	ldr		r0, [r0, #0x7c]
	str		r0, [sp, #0x4]
	mov		r9, r8
	mov		r1, r9
	ldr		r1, [r1, #0x54]
	str		r1, [sp, #0x8]
	mov		r0, r9
	ldr		r1, _0803e7fc
	bl		sub_0803e4a0
	mov		r2, r9
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	bge		_0803e76e
	ldr		r3, _0803e800
	add		r1, r1, r3
_0803e76e:
	asr		r1, r1, #0x10
	mov		r4, r9
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0803e77c
	ldr		r5, _0803e800
	add		r2, r2, r5
_0803e77c:
	asr		r2, r2, #0x10
	mov		r6, r9
	ldr		r3, [r6, #0x8]
	cmp		r3, #0x0
	bge		_0803e78a
	ldr		r7, _0803e800
	add		r3, r3, r7
_0803e78a:
	asr		r3, r3, #0x10
	ldr		r0, _0803e7fc
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803e7a2
	mov		r0, #0x7f
	and		r1, r0
	mov		r0, r9
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803e7a2:
	mov		r1, r9
	ldrh	r0, [r1, #0x38]
	cmp		r0, #0x0
	beq		_0803e7ae
	sub		r0, #0x1
	strh	r0, [r1, #0x38]
_0803e7ae:
	mov		r2, #0x0
	mov		r0, r9
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803e7cc
	mov		r0, #0x0
	cmp		r1, #0x26
	bne		_0803e7c6
	mov		r0, #0x1
_0803e7c6:
	cmp		r0, #0x0
	bne		_0803e7cc
	mov		r2, #0x1
_0803e7cc:
	cmp		r2, #0x0
	bne		_0803e7e2
	mov		r1, #0x0
	mov		r0, r8
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0803e7de
	mov		r1, #0x1
_0803e7de:
	cmp		r1, #0x0
	beq		_0803e80c
_0803e7e2:
	ldr		r2, [sp, #0x8]
	ldr		r0, [r2, #0x48]
	ldr		r1, _0803e804
	and		r0, r1
	str		r0, [r2, #0x48]
	ldr		r3, _0803e7fc
	ldr		r4, _0803e808
	add		r0, r3, r4
	mov		r1, r8
	bl		sub_080491c0
	b		_0803ed58

.incbin "base.gba", 0x3E7FA, 0x2

_0803e7fc:	.4byte 0x030031C4
_0803e800:	.4byte 0x0000FFFF
_0803e804:	.4byte 0xfffeffff
_0803e808:	.4byte 0x0000070C

_0803e80c:
	mov		r5, r9
	ldrh	r1, [r5, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r5, #0x34]
	ldr		r6, _0803e8d0
	ldr		r7, _0803e8d4
	add		r0, r6, r7
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803e82e
	b		_0803e9b0
_0803e82e:
	mov		r0, #0x71
	add		r0, r8
	mov		r10, r0
	ldr		r1, _0803e8d8
	add		r1, r6, r1
	str		r1, [sp, #0x14]
	mov		r2, r8
	add		r2, #0x4c
	str		r2, [sp, #0x10]
	ldr		r3, [sp, #0x4]
	cmp		r3, #0x0
	bne		_0803e904
	mov		r4, #0x0
	mov		r12, r4
	mov		r5, #0xfe
	lsl		r5, r5, #0x3
	add		r0, r6, r5
	ldrb	r6, [r0, #0x0]
	cmp		r3, r6
	bge		_0803e8b4
	str		r0, [sp, #0xC]
	ldr		r7, _0803e8d0
	ldr		r0, _0803e8dc
	add		r3, r7, r0
_0803e85e:
	ldr		r2, [r3, #0x0]
	ldr		r1, [sp, #0x8]
	cmp		r2, r1
	beq		_0803e8a6
	ldr		r1, [r2, #0x0]
	mov		r4, r9
	ldr		r0, [r4, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803e876
	ldr		r5, _0803e8e0
	add		r0, r0, r5
_0803e876:
	asr		r7, r0, #0x10
	ldr		r1, [r2, #0x4]
	mov		r6, r9
	ldr		r0, [r6, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803e888
	ldr		r0, _0803e8e0
	add		r1, r1, r0
_0803e888:
	asr		r4, r1, #0x10
	add		r6, r7, #0x0
	cmp		r6, #0x0
	bge		_0803e892
	neg		r6, r6
_0803e892:
	add		r5, r4, #0x0
	cmp		r5, #0x0
	bge		_0803e89a
	neg		r5, r5
_0803e89a:
	cmp		r6, #0x40
	bgt		_0803e8a6
	cmp		r5, #0x40
	bgt		_0803e8a6
	mov		r1, r8
	str		r2, [r1, #0x7c]
_0803e8a6:
	add		r3, #0x4
	mov		r2, #0x1
	add		r12, r2
	ldr		r4, [sp, #0xC]
	ldrb	r4, [r4, #0x0]
	cmp		r12, r4
	blt		_0803e85e
_0803e8b4:
	ldr		r5, [sp, #0x4]
	cmp		r5, #0x0
	bne		_0803e904
	mov		r2, #0x74
	mov		r6, r10
	ldrb	r0, [r6, #0x0]
	ldr		r7, [sp, #0x14]
	ldrb	r1, [r7, #0x0]
	cmp		r1, #0x0
	beq		_0803e8e4
	cmp		r1, #0x2
	beq		_0803e8e8
	b		_0803e8ea

.incbin "base.gba", 0x3E8CE, 0x2

_0803e8d0:	.4byte 0x030031C4
_0803e8d4:	.4byte 0x000007DA
_0803e8d8:	.4byte 0x000007DC
_0803e8dc:	.4byte 0x000007F4
_0803e8e0:	.4byte 0x0000FFFF

_0803e8e4:
	mov		r2, #0x6c
	b		_0803e8ea
_0803e8e8:
	mov		r2, #0x7e
_0803e8ea:
	cmp		r0, r2
	blt		_0803e8f6
	sub		r0, #0x10
	cmp		r0, r2
	bge		_0803e8fe
	b		_0803e8fc
_0803e8f6:
	add		r0, #0x4
	cmp		r0, r2
	ble		_0803e8fe
_0803e8fc:
	add		r0, r2, #0x0
_0803e8fe:
	mov		r1, r10
	strb	r0, [r1, #0x0]
	b		_0803ec60
_0803e904:
	ldr		r2, [sp, #0x4]
	ldr		r1, [r2, #0x0]
	mov		r3, r9
	ldr		r0, [r3, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803e916
	ldr		r4, _0803e95c
	add		r0, r0, r4
_0803e916:
	asr		r7, r0, #0x10
	ldr		r5, [sp, #0x4]
	ldr		r1, [r5, #0x4]
	mov		r6, r9
	ldr		r0, [r6, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803e92a
	ldr		r0, _0803e95c
	add		r1, r1, r0
_0803e92a:
	asr		r4, r1, #0x10
	add		r6, r7, #0x0
	cmp		r6, #0x0
	bge		_0803e934
	neg		r6, r6
_0803e934:
	add		r5, r4, #0x0
	cmp		r5, #0x0
	bge		_0803e93c
	neg		r5, r5
_0803e93c:
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	mov		r2, #0x3c
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	ldr		r3, [sp, #0x14]
	ldrb	r1, [r3, #0x0]
	cmp		r1, #0x0
	beq		_0803e960
	cmp		r1, #0x2
	beq		_0803e964
	b		_0803e966

_0803e95c:	.4byte 0x0000FFFF

_0803e960:
	mov		r2, #0x34
	b		_0803e966
_0803e964:
	mov		r2, #0x46
_0803e966:
	cmp		r0, r2
	blt		_0803e972
	sub		r0, #0x10
	cmp		r0, r2
	bge		_0803e97a
	b		_0803e978
_0803e972:
	add		r0, #0x4
	cmp		r0, r2
	ble		_0803e97a
_0803e978:
	add		r0, r2, #0x0
_0803e97a:
	mov		r7, r10
	strb	r0, [r7, #0x0]
	mov		r1, r8
	add		r1, #0x7a
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803e98e
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_0803e99e
_0803e98e:
	ldr		r1, [sp, #0x4]
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	bne		_0803e99e
	cmp		r6, #0xc
	bgt		_0803e99e
	cmp		r5, #0xc
	ble		_0803e9aa
_0803e99e:
	lsl		r1, r4, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	bl		sub_0803e6f4
	b		_0803ec60
_0803e9aa:
	mov		r2, r9
	strh	r4, [r2, #0x26]
	b		_0803ec60
_0803e9b0:
	ldr		r3, [sp, #0x4]
	cmp		r3, #0x0
	bne		_0803e9fc
	mov		r3, #0x74
	mov		r1, r8
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803e9d4
	ldr		r5, _0803e9d8
	add		r0, r4, r5
	ldrb	r0, [r0, #0x0]
	mov		r10, r1
	cmp		r0, #0x0
	beq		_0803e9dc
	cmp		r0, #0x2
	beq		_0803e9e0
	b		_0803e9e2

.incbin "base.gba", 0x3E9D2, 0x2

_0803e9d4:	.4byte 0x030031C4
_0803e9d8:	.4byte 0x000007DC

_0803e9dc:
	mov		r3, #0x6c
	b		_0803e9e2
_0803e9e0:
	mov		r3, #0x7e
_0803e9e2:
	cmp		r2, r3
	blt		_0803e9ee
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803e9f6
	b		_0803e9f4
_0803e9ee:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803e9f6
_0803e9f4:
	add		r2, r3, #0x0
_0803e9f6:
	mov		r6, r10
	strb	r2, [r6, #0x0]
	b		_0803ec5a
_0803e9fc:
	ldr		r0, [sp, #0x4]
	ldr		r1, [r0, #0x0]
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803ea0e
	ldr		r3, _0803ea88
	add		r0, r0, r3
_0803ea0e:
	asr		r7, r0, #0x10
	ldr		r4, [sp, #0x4]
	ldr		r1, [r4, #0x4]
	mov		r5, r9
	ldr		r0, [r5, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803ea22
	ldr		r6, _0803ea88
	add		r1, r1, r6
_0803ea22:
	asr		r4, r1, #0x10
	add		r6, r7, #0x0
	cmp		r6, #0x0
	bge		_0803ea2c
	neg		r6, r6
_0803ea2c:
	add		r5, r4, #0x0
	cmp		r5, #0x0
	bge		_0803ea34
	neg		r5, r5
_0803ea34:
	add		r0, r7, #0x0
	mul		r0, r7
	add		r1, r4, #0x0
	mul		r1, r4
	add		r0, r0, r1
	str		r0, [sp, #0x0]
	mov		r0, #0x36
	add		r0, r8
	mov		r12, r0
	ldrb	r3, [r0, #0x0]
	mov		r2, r8
	add		r2, #0x79
	ldrb	r0, [r2, #0x0]
	mov		r1, r8
	add		r1, #0x78
	cmp		r0, r3
	beq		_0803ea5e
	strb	r3, [r2, #0x0]
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
_0803ea5e:
	ldrb	r3, [r1, #0x0]
	cmp		r3, #0x0
	bne		_0803ea94
	mov		r1, #0xd0
	lsl		r1, r1, #0x8
	mov		r2, r8
	add		r2, #0x5a
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r2, #0x0]
	mov		r2, r8
	str		r1, [r2, #0x30]
	ldrh	r1, [r2, #0x34]
	ldr		r0, _0803ea8c
	and		r0, r1
	strh	r0, [r2, #0x34]
	str		r3, [r2, #0x18]
	ldr		r0, _0803ea90
	str		r0, [r2, #0x14]
	b		_0803ed58

.incbin "base.gba", 0x3EA86, 0x2

_0803ea88:	.4byte 0x0000FFFF
_0803ea8c:	.4byte 0x0000FFFD
_0803ea90:	.4byte 0x0804123D

_0803ea94:
	ldr		r0, _0803eb24
	ldrh	r3, [r0, #0x14]
	mov		r2, r12
	ldrb	r1, [r2, #0x0]
	add		r0, r1, #0x1
	cmp		r0, r3
	blt		_0803eaa6
	sub		r0, r3, #0x1
	sub		r0, r1, r0
_0803eaa6:
	mov		r10, r0
	add		r0, r1, #0x2
	cmp		r0, r3
	blt		_0803eab2
	sub		r0, r3, #0x2
	sub		r0, r1, r0
_0803eab2:
	mov		r12, r0
	sub		r2, r1, #0x1
	cmp		r2, #0x0
	bge		_0803eabe
	sub		r0, r3, #0x1
	add		r2, r1, r0
_0803eabe:
	ldr		r0, [sp, #0x4]
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	cmp		r0, r1
	beq		_0803eb5e
	cmp		r0, r10
	beq		_0803eb5e
	cmp		r0, r12
	beq		_0803eb5e
	mov		r1, #0x0
	cmp		r0, r2
	bne		_0803ead8
	mov		r1, #0x1
_0803ead8:
	cmp		r1, #0x0
	bne		_0803eb5e
	ldr		r0, _0803eb28
	add		r0, #0x24
	mov		r3, r8
	ldr		r1, [r3, #0x0]
	cmp		r1, #0x0
	bge		_0803eaec
	ldr		r4, _0803eb2c
	add		r1, r1, r4
_0803eaec:
	asr		r1, r1, #0x10
	mov		r5, r8
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_0803eafa
	ldr		r6, _0803eb2c
	add		r2, r2, r6
_0803eafa:
	asr		r2, r2, #0x10
	mov		r3, #0x1
	bl		sub_0802c35c
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	mov		r3, #0x74
	mov		r1, r8
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r7, _0803eb24
	ldr		r5, _0803eb30
	add		r0, r7, r5
	ldrb	r0, [r0, #0x0]
	mov		r10, r1
	cmp		r0, #0x0
	beq		_0803eb34
	cmp		r0, #0x2
	beq		_0803eb38
	b		_0803eb3a

.incbin "base.gba", 0x3EB22, 0x2

_0803eb24:	.4byte 0x030031C4
_0803eb28:	.4byte RunGameLogic_CallBack
_0803eb2c:	.4byte 0x0000FFFF
_0803eb30:	.4byte 0x000007DC

_0803eb34:
	mov		r3, #0x6c
	b		_0803eb3a
_0803eb38:
	mov		r3, #0x7e
_0803eb3a:
	cmp		r2, r3
	blt		_0803eb46
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803eb4e
	b		_0803eb4c
_0803eb46:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803eb4e
_0803eb4c:
	add		r2, r3, #0x0
_0803eb4e:
	mov		r6, r10
	strb	r2, [r6, #0x0]
	lsl		r1, r4, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	bl		sub_0803e6f4
	b		_0803ec5a
_0803eb5e:
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	ldr		r0, _0803eb90
	ldr		r1, [sp, #0x0]
	cmp		r1, r0
	ble		_0803ebae
	mov		r3, #0x74
	mov		r1, r8
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r7, _0803eb94
	ldr		r0, _0803eb98
	add		r7, r7, r0
	ldrb	r0, [r7, #0x0]
	mov		r10, r1
	cmp		r0, #0x0
	beq		_0803eb9c
	cmp		r0, #0x2
	beq		_0803eba0
	b		_0803eba2

.incbin "base.gba", 0x3EB8E, 0x2

_0803eb90:	.4byte 0x0000018F
_0803eb94:	.4byte 0x030031C4
_0803eb98:	.4byte 0x000007DC

_0803eb9c:
	mov		r3, #0x6c
	b		_0803eba2
_0803eba0:
	mov		r3, #0x7e
_0803eba2:
	cmp		r2, r3
	blt		_0803ebf6
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803ebfe
	b		_0803ebfc
_0803ebae:
	ldr		r2, [sp, #0x4]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x4c
	cmp		r0, #0x0
	beq		_0803ebc0
	mov		r1, #0x3c
_0803ebc0:
	add		r3, r1, #0x0
	mov		r1, r8
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r7, _0803ebdc
	ldr		r0, _0803ebe0
	add		r7, r7, r0
	ldrb	r0, [r7, #0x0]
	mov		r10, r1
	cmp		r0, #0x0
	beq		_0803ebe4
	cmp		r0, #0x2
	beq		_0803ebe8
	b		_0803ebea

_0803ebdc:	.4byte 0x030031C4
_0803ebe0:	.4byte 0x000007DC

_0803ebe4:
	sub		r3, #0x8
	b		_0803ebea
_0803ebe8:
	add		r3, #0xa
_0803ebea:
	cmp		r2, r3
	blt		_0803ebf6
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803ebfe
	b		_0803ebfc
_0803ebf6:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803ebfe
_0803ebfc:
	add		r2, r3, #0x0
_0803ebfe:
	mov		r1, r10
	strb	r2, [r1, #0x0]
	mov		r1, r8
	add		r1, #0x7a
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803ec22
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	lsl		r1, r4, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	bl		sub_0803e6f4
	mov		r2, r8
	add		r2, #0x4c
	str		r2, [sp, #0x10]
	b		_0803ec60
_0803ec22:
	ldr		r3, [sp, #0x4]
	ldr		r0, [r3, #0x8]
	cmp		r0, #0x0
	beq		_0803ec3c
	lsl		r1, r4, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	bl		sub_0803e6f4
	mov		r4, r8
	add		r4, #0x4c
	str		r4, [sp, #0x10]
	b		_0803ec60
_0803ec3c:
	cmp		r6, #0xc
	bgt		_0803ec44
	cmp		r5, #0xc
	ble		_0803ec56
_0803ec44:
	lsl		r1, r4, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	bl		sub_0803e6f4
	mov		r5, r8
	add		r5, #0x4c
	str		r5, [sp, #0x10]
	b		_0803ec60
_0803ec56:
	mov		r6, r9
	strh	r4, [r6, #0x26]
_0803ec5a:
	mov		r7, r8
	add		r7, #0x4c
	str		r7, [sp, #0x10]
_0803ec60:
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	lsl		r4, r0, #0x4
	add		r5, r4, #0x0
	ldr		r6, _0803ece0
	mov		r3, r9
	mov		r7, #0x26
	ldrsh	r2, [r3, r7]
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803ec78
	add		r1, #0x3f
_0803ec78:
	asr		r3, r1, #0x6
	ldr		r1, _0803ece4
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0803ec90
	add		r0, #0x7f
_0803ec90:
	asr		r0, r0, #0x7
	mov		r4, r9
	str		r0, [r4, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0803ece4
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r5
	cmp		r0, #0x0
	bge		_0803ecb0
	add		r0, #0x7f
_0803ecb0:
	asr		r0, r0, #0x7
	mov		r5, r9
	str		r0, [r5, #0x2c]
	ldr		r6, [sp, #0x10]
	ldrh	r1, [r6, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ed2c
	mov		r0, r8
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	mov		r7, r8
	ldrh	r1, [r7, #0x10]
	ldr		r3, _0803ece8
	add		r4, r0, #0x0
	cmp		r1, r3
	beq		_0803ed04
	cmp		r1, r3
	bgt		_0803ecf0
	ldr		r0, _0803ecec
	cmp		r1, r0
	beq		_0803ecfc
	b		_0803ed1c

_0803ece0:	.4byte 0x08101068
_0803ece4:	.4byte 0x000003FF
_0803ece8:	.4byte 0x00008402
_0803ecec:	.4byte 0x00008401

_0803ecf0:
	ldr		r0, _0803ecf8
	cmp		r1, r0
	beq		_0803ed0c
	b		_0803ed1c

_0803ecf8:	.4byte 0x00008403

_0803ecfc:
	ldr		r1, _0803ed00
	b		_0803ed0e

_0803ed00:	.4byte 0x081086c0

_0803ed04:
	ldr		r1, _0803ed08
	b		_0803ed0e

_0803ed08:	.4byte 0x081086d8

_0803ed0c:
	ldr		r1, _0803ed18
_0803ed0e:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803ed1e

.incbin "base.gba", 0x3ED16, 0x2

_0803ed18:	.4byte 0x081086f0

_0803ed1c:
	mov		r0, #0x0
_0803ed1e:
	mov		r1, r8
	str		r0, [r1, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_0803ed2a
	mov		r2, #0x0
_0803ed2a:
	strb	r2, [r4, #0x0]
_0803ed2c:
	ldr		r2, [sp, #0x10]
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x10
	bne		_0803ed46
	ldr		r3, [sp, #0x8]
	ldr		r0, [r3, #0x48]
	ldr		r1, _0803ed68
	and		r0, r1
	str		r0, [r3, #0x48]
_0803ed46:
	mov		r4, r9
	ldr		r0, [r4, #0x0]
	ldr		r1, [r4, #0x28]
	add		r0, r0, r1
	str		r0, [r4, #0x0]
	ldr		r0, [r4, #0x4]
	ldr		r1, [r4, #0x2c]
	add		r0, r0, r1
	str		r0, [r4, #0x4]
_0803ed58:
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803ed68:	.4byte 0xfffeffff
	thumb_func_end sub_0803e740

	thumb_func_start sub_0803ed6c
sub_0803ed6c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	ldr		r0, [r6, #0x7c]
	mov		r10, r0
	add		r5, r6, #0x0
	ldr		r4, [r5, #0x54]
	add		r0, r5, #0x0
	ldr		r1, _0803ee18
	bl		sub_0803e4a0
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_0803ed92
	ldr		r2, _0803ee1c
	add		r1, r1, r2
_0803ed92:
	asr		r1, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_0803ed9e
	ldr		r0, _0803ee1c
	add		r2, r2, r0
_0803ed9e:
	asr		r2, r2, #0x10
	ldr		r3, [r5, #0x8]
	cmp		r3, #0x0
	bge		_0803edaa
	ldr		r0, _0803ee1c
	add		r3, r3, r0
_0803edaa:
	asr		r3, r3, #0x10
	ldr		r0, _0803ee18
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803edc2
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r5, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803edc2:
	ldrh	r0, [r5, #0x38]
	cmp		r0, #0x0
	beq		_0803edcc
	sub		r0, #0x1
	strh	r0, [r5, #0x38]
_0803edcc:
	mov		r2, #0x0
	add		r0, r5, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803edea
	mov		r0, #0x0
	cmp		r1, #0x26
	bne		_0803ede4
	mov		r0, #0x1
_0803ede4:
	cmp		r0, #0x0
	bne		_0803edea
	mov		r2, #0x1
_0803edea:
	cmp		r2, #0x0
	bne		_0803ee00
	mov		r1, #0x0
	add		r0, r6, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0803edfc
	mov		r1, #0x1
_0803edfc:
	cmp		r1, #0x0
	beq		_0803ee28
_0803ee00:
	ldr		r0, [r4, #0x48]
	ldr		r1, _0803ee20
	and		r0, r1
	str		r0, [r4, #0x48]
	ldr		r1, _0803ee18
	ldr		r2, _0803ee24
	add		r0, r1, r2
	add		r1, r6, #0x0
	bl		sub_080491c0
	b		_0803f028

.incbin "base.gba", 0x3EE16, 0x2

_0803ee18:	.4byte 0x030031C4
_0803ee1c:	.4byte 0x0000FFFF
_0803ee20:	.4byte 0xfffeffff
_0803ee24:	.4byte 0x0000070C

_0803ee28:
	ldrh	r1, [r5, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r5, #0x34]
	mov		r4, r10
	ldr		r1, [r4, #0x0]
	ldr		r0, [r5, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803ee44
	ldr		r1, _0803eea8
	add		r0, r0, r1
_0803ee44:
	asr		r2, r0, #0x10
	mov		r4, r10
	ldr		r1, [r4, #0x4]
	ldr		r0, [r5, #0x4]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803ee56
	ldr		r1, _0803eea8
	add		r0, r0, r1
_0803ee56:
	asr		r1, r0, #0x10
	mov		r9, r2
	cmp		r2, #0x0
	bge		_0803ee64
	mov		r4, r9
	neg		r4, r4
	mov		r9, r4
_0803ee64:
	mov		r8, r1
	cmp		r1, #0x0
	bge		_0803ee70
	mov		r0, r8
	neg		r0, r0
	mov		r8, r0
_0803ee70:
	add		r4, r2, #0x0
	mul		r4, r2
	add		r0, r1, #0x0
	mul		r0, r1
	add		r4, r4, r0
	add		r0, r2, #0x0
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldr		r0, _0803eeac
	cmp		r4, r0
	ble		_0803eeca
	mov		r3, #0x74
	add		r1, r6, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803eeb0
	ldr		r0, _0803eeb4
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803eeb8
	cmp		r0, #0x2
	beq		_0803eebc
	b		_0803eebe

.incbin "base.gba", 0x3EEA6, 0x2

_0803eea8:	.4byte 0x0000FFFF
_0803eeac:	.4byte 0x0000018F
_0803eeb0:	.4byte 0x030031C4
_0803eeb4:	.4byte 0x000007DC

_0803eeb8:
	mov		r3, #0x6c
	b		_0803eebe
_0803eebc:
	mov		r3, #0x7e
_0803eebe:
	cmp		r2, r3
	blt		_0803ef12
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803ef1a
	b		_0803ef18
_0803eeca:
	mov		r1, r10
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x4c
	cmp		r0, #0x0
	beq		_0803eedc
	mov		r1, #0x3c
_0803eedc:
	add		r3, r1, #0x0
	add		r1, r6, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803eef8
	ldr		r0, _0803eefc
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803ef00
	cmp		r0, #0x2
	beq		_0803ef04
	b		_0803ef06

_0803eef8:	.4byte 0x030031C4
_0803eefc:	.4byte 0x000007DC

_0803ef00:
	sub		r3, #0x8
	b		_0803ef06
_0803ef04:
	add		r3, #0xa
_0803ef06:
	cmp		r2, r3
	blt		_0803ef12
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803ef1a
	b		_0803ef18
_0803ef12:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803ef1a
_0803ef18:
	add		r2, r3, #0x0
_0803ef1a:
	strb	r2, [r4, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x7a
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803ef2c
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_0803ef40
_0803ef2c:
	mov		r1, r10
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	bne		_0803ef40
	mov		r2, r9
	cmp		r2, #0xc
	bgt		_0803ef40
	mov		r0, r8
	cmp		r0, #0xc
	ble		_0803ef4c
_0803ef40:
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	add		r0, r6, #0x0
	bl		sub_0803e6f4
	b		_0803ef4e
_0803ef4c:
	strh	r7, [r5, #0x26]
_0803ef4e:
	ldrb	r0, [r4, #0x0]
	lsl		r4, r0, #0x4
	add		r7, r4, #0x0
	ldr		r1, _0803efc8
	mov		r8, r1
	mov		r0, #0x26
	ldrsh	r2, [r5, r0]
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803ef64
	add		r1, #0x3f
_0803ef64:
	asr		r3, r1, #0x6
	ldr		r1, _0803efcc
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r8
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0803ef7c
	add		r0, #0x7f
_0803ef7c:
	asr		r0, r0, #0x7
	str		r0, [r5, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0803efcc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r7
	cmp		r0, #0x0
	bge		_0803ef9a
	add		r0, #0x7f
_0803ef9a:
	asr		r0, r0, #0x7
	str		r0, [r5, #0x2c]
	add		r2, r6, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803f012
	add		r0, r6, #0x0
	add		r0, #0x70
	ldrb	r3, [r0, #0x0]
	ldrh	r1, [r6, #0x10]
	ldr		r4, _0803efd0
	add		r7, r0, #0x0
	cmp		r1, r4
	beq		_0803efec
	cmp		r1, r4
	bgt		_0803efd8
	ldr		r0, _0803efd4
	cmp		r1, r0
	beq		_0803efe4
	b		_0803f004

_0803efc8:	.4byte 0x08101068
_0803efcc:	.4byte 0x000003FF
_0803efd0:	.4byte 0x00008402
_0803efd4:	.4byte 0x00008401

_0803efd8:
	ldr		r0, _0803efe0
	cmp		r1, r0
	beq		_0803eff4
	b		_0803f004

_0803efe0:	.4byte 0x00008403

_0803efe4:
	ldr		r1, _0803efe8
	b		_0803eff6

_0803efe8:	.4byte 0x081086c0

_0803efec:
	ldr		r1, _0803eff0
	b		_0803eff6

_0803eff0:	.4byte 0x081086d8

_0803eff4:
	ldr		r1, _0803f000
_0803eff6:
	lsl		r0, r3, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803f006

.incbin "base.gba", 0x3EFFE, 0x2

_0803f000:	.4byte 0x081086f0

_0803f004:
	mov		r0, #0x0
_0803f006:
	str		r0, [r6, #0x48]
	add		r3, #0x1
	cmp		r3, #0x5
	ble		_0803f010
	mov		r3, #0x0
_0803f010:
	strb	r3, [r7, #0x0]
_0803f012:
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
	ldr		r0, [r5, #0x0]
	ldr		r1, [r5, #0x28]
	add		r0, r0, r1
	str		r0, [r5, #0x0]
	ldr		r0, [r5, #0x4]
	ldr		r1, [r5, #0x2c]
	add		r0, r0, r1
	str		r0, [r5, #0x4]
_0803f028:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3F036, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r5, r0, #0x0
	add		r7, r5, #0x0
	ldr		r4, [r5, #0x54]
	ldr		r1, _0803f0dc
	bl		sub_0803e4a0
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_0803f058
	ldr		r0, _0803f0e0
	add		r1, r1, r0
_0803f058:
	asr		r1, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_0803f064
	ldr		r0, _0803f0e0
	add		r2, r2, r0
_0803f064:
	asr		r2, r2, #0x10
	ldr		r3, [r5, #0x8]
	cmp		r3, #0x0
	bge		_0803f070
	ldr		r0, _0803f0e0
	add		r3, r3, r0
_0803f070:
	asr		r3, r3, #0x10
	ldr		r0, _0803f0dc
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803f088
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r5, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803f088:
	ldrh	r0, [r5, #0x38]
	cmp		r0, #0x0
	beq		_0803f092
	sub		r0, #0x1
	strh	r0, [r5, #0x38]
_0803f092:
	mov		r2, #0x0
	add		r0, r5, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803f0b0
	mov		r0, #0x0
	cmp		r1, #0x26
	bne		_0803f0aa
	mov		r0, #0x1
_0803f0aa:
	cmp		r0, #0x0
	bne		_0803f0b0
	mov		r2, #0x1
_0803f0b0:
	cmp		r2, #0x0
	bne		_0803f0c6
	mov		r1, #0x0
	add		r0, r7, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0803f0c2
	mov		r1, #0x1
_0803f0c2:
	cmp		r1, #0x0
	beq		_0803f0ec
_0803f0c6:
	ldr		r0, [r4, #0x48]
	ldr		r1, _0803f0e4
	and		r0, r1
	str		r0, [r4, #0x48]
	ldr		r1, _0803f0dc
	ldr		r2, _0803f0e8
	add		r0, r1, r2
	add		r1, r7, #0x0
	bl		sub_080491c0
	b		_0803f2f4

_0803f0dc:	.4byte 0x030031C4
_0803f0e0:	.4byte 0x0000FFFF
_0803f0e4:	.4byte 0xfffeffff
_0803f0e8:	.4byte 0x0000070C

_0803f0ec:
	ldrh	r1, [r5, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r5, #0x34]
	ldr		r0, _0803f174
	mov		r1, #0x0
	bl		sub_08044894
	mov		r10, r0
	ldr		r1, [r0, #0x0]
	ldr		r0, [r5, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803f110
	ldr		r4, _0803f178
	add		r0, r0, r4
_0803f110:
	asr		r2, r0, #0x10
	mov		r0, r10
	ldr		r1, [r0, #0x4]
	ldr		r0, [r5, #0x4]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803f122
	ldr		r1, _0803f178
	add		r0, r0, r1
_0803f122:
	asr		r1, r0, #0x10
	mov		r9, r2
	cmp		r2, #0x0
	bge		_0803f130
	mov		r4, r9
	neg		r4, r4
	mov		r9, r4
_0803f130:
	mov		r8, r1
	cmp		r1, #0x0
	bge		_0803f13c
	mov		r0, r8
	neg		r0, r0
	mov		r8, r0
_0803f13c:
	add		r4, r2, #0x0
	mul		r4, r2
	add		r0, r1, #0x0
	mul		r0, r1
	add		r4, r4, r0
	add		r0, r2, #0x0
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	ldr		r0, _0803f17c
	cmp		r4, r0
	ble		_0803f196
	mov		r3, #0x74
	add		r1, r7, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803f174
	ldr		r0, _0803f180
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803f184
	cmp		r0, #0x2
	beq		_0803f188
	b		_0803f18a

.incbin "base.gba", 0x3F172, 0x2

_0803f174:	.4byte 0x030031C4
_0803f178:	.4byte 0x0000FFFF
_0803f17c:	.4byte 0x0000018F
_0803f180:	.4byte 0x000007DC

_0803f184:
	mov		r3, #0x6c
	b		_0803f18a
_0803f188:
	mov		r3, #0x7e
_0803f18a:
	cmp		r2, r3
	blt		_0803f1de
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803f1e6
	b		_0803f1e4
_0803f196:
	mov		r1, r10
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x4c
	cmp		r0, #0x0
	beq		_0803f1a8
	mov		r1, #0x3c
_0803f1a8:
	add		r3, r1, #0x0
	add		r1, r7, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803f1c4
	ldr		r0, _0803f1c8
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803f1cc
	cmp		r0, #0x2
	beq		_0803f1d0
	b		_0803f1d2

_0803f1c4:	.4byte 0x030031C4
_0803f1c8:	.4byte 0x000007DC

_0803f1cc:
	sub		r3, #0x8
	b		_0803f1d2
_0803f1d0:
	add		r3, #0xa
_0803f1d2:
	cmp		r2, r3
	blt		_0803f1de
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803f1e6
	b		_0803f1e4
_0803f1de:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803f1e6
_0803f1e4:
	add		r2, r3, #0x0
_0803f1e6:
	strb	r2, [r4, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x7a
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803f1f8
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_0803f20c
_0803f1f8:
	mov		r1, r10
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	bne		_0803f20c
	mov		r2, r9
	cmp		r2, #0xc
	bgt		_0803f20c
	mov		r0, r8
	cmp		r0, #0xc
	ble		_0803f218
_0803f20c:
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	add		r0, r7, #0x0
	bl		sub_0803e6f4
	b		_0803f21a
_0803f218:
	strh	r6, [r5, #0x26]
_0803f21a:
	ldrb	r0, [r4, #0x0]
	lsl		r4, r0, #0x4
	add		r6, r4, #0x0
	ldr		r1, _0803f294
	mov		r8, r1
	mov		r0, #0x26
	ldrsh	r2, [r5, r0]
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803f230
	add		r1, #0x3f
_0803f230:
	asr		r3, r1, #0x6
	ldr		r1, _0803f298
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r8
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0803f248
	add		r0, #0x7f
_0803f248:
	asr		r0, r0, #0x7
	str		r0, [r5, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0803f298
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r6
	cmp		r0, #0x0
	bge		_0803f266
	add		r0, #0x7f
_0803f266:
	asr		r0, r0, #0x7
	str		r0, [r5, #0x2c]
	add		r2, r7, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803f2de
	add		r0, r7, #0x0
	add		r0, #0x70
	ldrb	r3, [r0, #0x0]
	ldrh	r1, [r7, #0x10]
	ldr		r4, _0803f29c
	add		r6, r0, #0x0
	cmp		r1, r4
	beq		_0803f2b8
	cmp		r1, r4
	bgt		_0803f2a4
	ldr		r0, _0803f2a0
	cmp		r1, r0
	beq		_0803f2b0
	b		_0803f2d0

_0803f294:	.4byte 0x08101068
_0803f298:	.4byte 0x000003FF
_0803f29c:	.4byte 0x00008402
_0803f2a0:	.4byte 0x00008401

_0803f2a4:
	ldr		r0, _0803f2ac
	cmp		r1, r0
	beq		_0803f2c0
	b		_0803f2d0

_0803f2ac:	.4byte 0x00008403

_0803f2b0:
	ldr		r1, _0803f2b4
	b		_0803f2c2

_0803f2b4:	.4byte 0x081086c0

_0803f2b8:
	ldr		r1, _0803f2bc
	b		_0803f2c2

_0803f2bc:	.4byte 0x081086d8

_0803f2c0:
	ldr		r1, _0803f2cc
_0803f2c2:
	lsl		r0, r3, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803f2d2

.incbin "base.gba", 0x3F2CA, 0x2

_0803f2cc:	.4byte 0x081086f0

_0803f2d0:
	mov		r0, #0x0
_0803f2d2:
	str		r0, [r7, #0x48]
	add		r3, #0x1
	cmp		r3, #0x5
	ble		_0803f2dc
	mov		r3, #0x0
_0803f2dc:
	strb	r3, [r6, #0x0]
_0803f2de:
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
	ldr		r0, [r5, #0x0]
	ldr		r1, [r5, #0x28]
	add		r0, r0, r1
	str		r0, [r5, #0x0]
	ldr		r0, [r5, #0x4]
	ldr		r1, [r5, #0x2c]
	add		r0, r0, r1
	str		r0, [r5, #0x4]
_0803f2f4:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3F302, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r7, [r4, #0x7c]
	add		r6, r4, #0x0
	ldr		r0, _0803f340
	add		r0, #0x24
	mov		r8, r0
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803f386
	add		r0, r4, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r4, #0x10]
	ldr		r3, _0803f344
	add		r5, r0, #0x0
	cmp		r1, r3
	beq		_0803f360
	cmp		r1, r3
	bgt		_0803f34c
	ldr		r0, _0803f348
	cmp		r1, r0
	beq		_0803f358
	b		_0803f378

_0803f340:	.4byte RunGameLogic_CallBack
_0803f344:	.4byte 0x00008402
_0803f348:	.4byte 0x00008401

_0803f34c:
	ldr		r0, _0803f354
	cmp		r1, r0
	beq		_0803f368
	b		_0803f378

_0803f354:	.4byte 0x00008403

_0803f358:
	ldr		r1, _0803f35c
	b		_0803f36a

_0803f35c:	.4byte 0x081086c0

_0803f360:
	ldr		r1, _0803f364
	b		_0803f36a

_0803f364:	.4byte 0x081086d8

_0803f368:
	ldr		r1, _0803f374
_0803f36a:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803f37a

.incbin "base.gba", 0x3F372, 0x2

_0803f374:	.4byte 0x081086f0

_0803f378:
	mov		r0, #0x0
_0803f37a:
	str		r0, [r4, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_0803f384
	mov		r2, #0x0
_0803f384:
	strb	r2, [r5, #0x0]
_0803f386:
	add		r5, r4, #0x0
	add		r5, #0x4c
	ldrh	r0, [r5, #0x0]
	add		r0, #0x1
	strh	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x1e
	bne		_0803f420
	ldr		r1, [r7, #0x0]
	ldr		r0, [r6, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803f3a6
	ldr		r1, _0803f3d8
	add		r0, r0, r1
_0803f3a6:
	asr		r2, r0, #0x10
	ldr		r1, [r7, #0x4]
	ldr		r0, [r6, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803f3b6
	ldr		r0, _0803f3d8
	add		r1, r1, r0
_0803f3b6:
	add		r0, r2, #0x0
	asr		r1, r1, #0x10
	bl		sub_08028738
	strh	r0, [r6, #0x26]
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	ldr		r0, _0803f3dc
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0803f3ee
	cmp		r0, #0x1
	bgt		_0803f3e0
	cmp		r0, #0x0
	beq		_0803f3e6
	b		_0803f3fe

_0803f3d8:	.4byte 0x0000FFFF
_0803f3dc:	.4byte 0x000007DC

_0803f3e0:
	cmp		r0, #0x2
	beq		_0803f3f6
	b		_0803f3fe
_0803f3e6:
	add		r1, r4, #0x0
	add		r1, #0x71
	mov		r0, #0x40
	b		_0803f3fc
_0803f3ee:
	add		r1, r4, #0x0
	add		r1, #0x71
	mov		r0, #0x48
	b		_0803f3fc
_0803f3f6:
	add		r1, r4, #0x0
	add		r1, #0x71
	mov		r0, #0x52
_0803f3fc:
	strb	r0, [r1, #0x0]
_0803f3fe:
	ldrh	r1, [r6, #0x10]
	ldr		r0, _0803f410
	cmp		r1, r0
	beq		_0803f414
	add		r0, #0x1
	cmp		r1, r0
	beq		_0803f41c
	b		_0803f420

.incbin "base.gba", 0x3F40E, 0x2

_0803f410:	.4byte 0x00008402

_0803f414:
	ldr		r0, _0803f418
	b		_0803f41e

_0803f418:	.4byte sub_0803ed6c

_0803f41c:
	ldr		r0, _0803f42c
_0803f41e:
	str		r0, [r4, #0x14]
_0803f420:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3F42A, 0x2

_0803f42c:	.4byte 0x0803f039
	thumb_func_end sub_0803ed6c

	thumb_func_start sub_0803f430
sub_0803f430:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r5, r0, #0x0
	mov		r8, r5
	ldr		r0, _0803f470
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r0, r5, #0x0
	add		r0, #0x4c
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803f4b6
	add		r0, r5, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r3, _0803f474
	add		r4, r0, #0x0
	cmp		r1, r3
	beq		_0803f490
	cmp		r1, r3
	bgt		_0803f47c
	ldr		r0, _0803f478
	cmp		r1, r0
	beq		_0803f488
	b		_0803f4a8

_0803f470:	.4byte RunGameLogic_CallBack
_0803f474:	.4byte 0x00008402
_0803f478:	.4byte 0x00008401

_0803f47c:
	ldr		r0, _0803f484
	cmp		r1, r0
	beq		_0803f498
	b		_0803f4a8

_0803f484:	.4byte 0x00008403

_0803f488:
	ldr		r1, _0803f48c
	b		_0803f49a

_0803f48c:	.4byte 0x081086c0

_0803f490:
	ldr		r1, _0803f494
	b		_0803f49a

_0803f494:	.4byte 0x081086d8

_0803f498:
	ldr		r1, _0803f4a4
_0803f49a:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803f4aa

.incbin "base.gba", 0x3F4A2, 0x2

_0803f4a4:	.4byte 0x081086f0

_0803f4a8:
	mov		r0, #0x0
_0803f4aa:
	str		r0, [r5, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_0803f4b4
	mov		r2, #0x0
_0803f4b4:
	strb	r2, [r4, #0x0]
_0803f4b6:
	add		r0, r5, #0x0
	add		r0, #0x4c
	ldrh	r1, [r0, #0x0]
	add		r1, #0x1
	strh	r1, [r0, #0x0]
	mov		r2, r8
	add		r2, #0x36
	ldrb	r2, [r2, #0x0]
	str		r2, [sp, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _0803f4f4
	str		r0, [sp, #0x4]
	cmp		r1, r2
	ble		_0803f500
	mov		r1, #0xd0
	lsl		r1, r1, #0x8
	add		r2, r5, #0x0
	add		r2, #0x5a
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r2, #0x0]
	str		r1, [r5, #0x30]
	ldrh	r1, [r5, #0x34]
	ldr		r0, _0803f4f8
	and		r0, r1
	strh	r0, [r5, #0x34]
	mov		r0, #0x0
	str		r0, [r5, #0x18]
	ldr		r0, _0803f4fc
	str		r0, [r5, #0x14]
	b		_0803f5e4

_0803f4f4:	.4byte 0x0A8B0000
_0803f4f8:	.4byte 0x0000FFFD
_0803f4fc:	.4byte 0x0804123D

_0803f500:
	mov		r6, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_0803f5e4
	ldr		r2, _0803f5f4
	mov		r10, r2
	ldr		r0, _0803f5f8
	mov		r9, r0
_0803f516:
	lsl		r1, r6, #0x2
	ldr		r2, _0803f5fc
	add		r0, r7, r2
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r4, [r0, r1]
	cmp		r4, #0x0
	bne		_0803f5d6
	add		r0, #0x2a
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7f
	and		r0, r1
	ldr		r2, [sp, #0x0]
	cmp		r2, r0
	bne		_0803f5d6
	ldr		r1, [r3, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803f54a
	ldr		r0, _0803f600
	add		r1, r1, r0
_0803f54a:
	asr		r1, r1, #0x10
	mov		r12, r1
	ldr		r1, [r3, #0x4]
	mov		r2, r8
	ldr		r0, [r2, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803f55e
	ldr		r0, _0803f600
	add		r1, r1, r0
_0803f55e:
	asr		r1, r1, #0x10
	mov		r0, r12
	cmp		r0, #0x0
	bge		_0803f568
	neg		r0, r0
_0803f568:
	cmp		r1, #0x0
	bge		_0803f56e
	neg		r1, r1
_0803f56e:
	cmp		r0, #0x20
	bgt		_0803f5d6
	cmp		r1, #0x20
	bgt		_0803f5d6
	str		r3, [r5, #0x7c]
	ldr		r1, [sp, #0x4]
	strh	r4, [r1, #0x0]
	ldr		r0, _0803f604
	str		r0, [r5, #0x14]
	ldr		r2, _0803f608
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803f5d6
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0803f5a2
	mov		r2, #0x40
_0803f5a2:
	add		r4, r2, #0x0
	cmp		r4, #0x0
	beq		_0803f5d6
	mov		r0, #0x7f
	bl		sub_0807073c
	mov		r0, r9
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	mov		r2, r9
	ldrh	r1, [r2, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_0807169c
_0803f5d6:
	add		r6, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_0803f516
_0803f5e4:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0803f5f4:	.4byte 0x08124544
_0803f5f8:	.4byte 0x081249c0
_0803f5fc:	.4byte 0x000007F4
_0803f600:	.4byte 0x0000FFFF
_0803f604:	.4byte 0x0803f305
_0803f608:	.4byte 0x00000814
	thumb_func_end sub_0803f430

	thumb_func_start sub_0803f60c
sub_0803f60c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r0, [r4, #0x54]
	mov		r9, r0
	ldr		r0, _0803f65c
	add		r0, #0x24
	mov		r10, r0
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	beq		_0803f62e
	sub		r0, #0x1
	strh	r0, [r4, #0x38]
_0803f62e:
	add		r2, r4, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	add		r7, r2, #0x0
	cmp		r0, #0x0
	bne		_0803f6a2
	add		r0, r4, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r4, #0x10]
	ldr		r3, _0803f660
	add		r6, r0, #0x0
	cmp		r1, r3
	beq		_0803f67c
	cmp		r1, r3
	bgt		_0803f668
	ldr		r0, _0803f664
	cmp		r1, r0
	beq		_0803f674
	b		_0803f694

.incbin "base.gba", 0x3F65A, 0x2

_0803f65c:	.4byte RunGameLogic_CallBack
_0803f660:	.4byte 0x00008402
_0803f664:	.4byte 0x00008401

_0803f668:
	ldr		r0, _0803f670
	cmp		r1, r0
	beq		_0803f684
	b		_0803f694

_0803f670:	.4byte 0x00008403

_0803f674:
	ldr		r1, _0803f678
	b		_0803f686

_0803f678:	.4byte 0x081086c0

_0803f67c:
	ldr		r1, _0803f680
	b		_0803f686

_0803f680:	.4byte 0x081086d8

_0803f684:
	ldr		r1, _0803f690
_0803f686:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803f696

.incbin "base.gba", 0x3F68E, 0x2

_0803f690:	.4byte 0x081086f0

_0803f694:
	mov		r0, #0x0
_0803f696:
	str		r0, [r4, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_0803f6a0
	mov		r2, #0x0
_0803f6a0:
	strb	r2, [r6, #0x0]
_0803f6a2:
	ldrh	r0, [r7, #0x0]
	add		r0, #0x1
	strh	r0, [r7, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r2, [r5, #0x4]
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_0803f6c0
	add		r1, r5, #0x0
	add		r1, #0x4e
	mov		r0, #0x26
	b		_0803f6e8
_0803f6c0:
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_0803f6ca
	ldr		r2, _0803f708
	add		r1, r1, r2
_0803f6ca:
	lsr		r1, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_0803f6d6
	ldr		r0, _0803f708
	add		r2, r2, r0
_0803f6d6:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_0802c490
	add		r1, r5, #0x0
	add		r1, #0x4e
_0803f6e8:
	strb	r0, [r1, #0x0]
	mov		r3, #0x0
	add		r1, r4, #0x0
	add		r1, #0x4e
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x90
	and		r0, r2
	add		r6, r1, #0x0
	cmp		r0, #0x80
	bne		_0803f6fe
	mov		r3, #0x1
_0803f6fe:
	cmp		r3, #0x0
	beq		_0803f710
	ldr		r0, _0803f70c
	b		_0803f7d2

.incbin "base.gba", 0x3F706, 0x2

_0803f708:	.4byte 0x0000FFFF
_0803f70c:	.4byte sub_08041278

_0803f710:
	mov		r1, #0x0
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_0803f72c
	mov		r3, #0x0
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x26
	bne		_0803f726
	mov		r3, #0x1
_0803f726:
	cmp		r3, #0x0
	bne		_0803f72c
	mov		r1, #0x1
_0803f72c:
	cmp		r1, #0x0
	bne		_0803f744
	mov		r1, #0x0
	mov		r8, r1
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x26
	bne		_0803f73e
	mov		r2, #0x1
	mov		r8, r2
_0803f73e:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0803f76c
_0803f744:
	mov		r1, r9
	ldr		r0, [r1, #0x48]
	ldr		r1, _0803f760
	and		r0, r1
	mov		r2, r9
	str		r0, [r2, #0x48]
	ldr		r1, _0803f764
	ldr		r2, _0803f768
	add		r0, r1, r2
	add		r1, r4, #0x0
	bl		sub_080491c0
	b		_0803f7d4

.incbin "base.gba", 0x3F75E, 0x2

_0803f760:	.4byte 0xfffeffff
_0803f764:	.4byte 0x030031C4
_0803f768:	.4byte 0x0000070C

_0803f76c:
	ldrh	r0, [r5, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	strh	r1, [r5, #0x34]
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0803f782
	ldr		r0, _0803f7e4
	add		r1, r1, r0
_0803f782:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0803f78e
	ldr		r0, _0803f7e4
	add		r2, r2, r0
_0803f78e:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_0803f79a
	ldr		r0, _0803f7e4
	add		r3, r3, r0
_0803f79a:
	asr		r3, r3, #0x10
	mov		r0, r10
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803f7b2
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803f7b2:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x10
	bne		_0803f7c4
	mov		r2, r9
	ldr		r0, [r2, #0x48]
	ldr		r1, _0803f7e8
	and		r0, r1
	str		r0, [r2, #0x48]
_0803f7c4:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x60
	bne		_0803f7d4
	mov		r2, r8
	strh	r2, [r7, #0x0]
	ldr		r0, _0803f7ec
_0803f7d2:
	str		r0, [r4, #0x14]
_0803f7d4:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3F7E2, 0x2

_0803f7e4:	.4byte 0x0000FFFF
_0803f7e8:	.4byte 0xfffeffff
_0803f7ec:	.4byte sub_0803f430
	thumb_func_end sub_0803f60c

	thumb_func_start sub_0803f7f0
sub_0803f7f0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r7, r0, #0x0
	add		r5, r7, #0x0
	ldr		r0, [r7, #0x54]
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	ldr		r1, _0803f89c
	bl		sub_0803e4a0
	ldr		r1, [r7, #0x0]
	cmp		r1, #0x0
	bge		_0803f816
	ldr		r2, _0803f8a0
	add		r1, r1, r2
_0803f816:
	asr		r1, r1, #0x10
	ldr		r2, [r7, #0x4]
	cmp		r2, #0x0
	bge		_0803f822
	ldr		r3, _0803f8a0
	add		r2, r2, r3
_0803f822:
	asr		r2, r2, #0x10
	ldr		r3, [r7, #0x8]
	cmp		r3, #0x0
	bge		_0803f82e
	ldr		r4, _0803f8a0
	add		r3, r3, r4
_0803f82e:
	asr		r3, r3, #0x10
	ldr		r0, _0803f89c
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803f846
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r7, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803f846:
	ldrh	r0, [r7, #0x38]
	cmp		r0, #0x0
	beq		_0803f850
	sub		r0, #0x1
	strh	r0, [r7, #0x38]
_0803f850:
	mov		r2, #0x0
	add		r0, r7, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803f86e
	mov		r0, #0x0
	cmp		r1, #0x26
	bne		_0803f868
	mov		r0, #0x1
_0803f868:
	cmp		r0, #0x0
	bne		_0803f86e
	mov		r2, #0x1
_0803f86e:
	cmp		r2, #0x0
	bne		_0803f884
	mov		r1, #0x0
	add		r0, r5, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0803f880
	mov		r1, #0x1
_0803f880:
	cmp		r1, #0x0
	beq		_0803f8ac
_0803f884:
	ldr		r6, [sp, #0x0]
	ldr		r0, [r6, #0x48]
	ldr		r1, _0803f8a4
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r1, _0803f89c
	ldr		r2, _0803f8a8
	add		r0, r1, r2
	add		r1, r5, #0x0
	bl		sub_080491c0
	b		_0803fc8a

_0803f89c:	.4byte 0x030031C4
_0803f8a0:	.4byte 0x0000FFFF
_0803f8a4:	.4byte 0xfffeffff
_0803f8a8:	.4byte 0x0000070C

_0803f8ac:
	ldrh	r1, [r7, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r7, #0x34]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r4, [r0, #0x0]
	add		r3, r5, #0x0
	add		r3, #0x79
	ldrb	r1, [r3, #0x0]
	mov		r8, r0
	add		r2, r5, #0x0
	add		r2, #0x78
	cmp		r1, r4
	beq		_0803f8d6
	strb	r4, [r3, #0x0]
	ldrb	r0, [r2, #0x0]
	sub		r0, #0x1
	strb	r0, [r2, #0x0]
_0803f8d6:
	ldrb	r3, [r2, #0x0]
	cmp		r3, #0x0
	bne		_0803f904
	mov		r1, #0xd0
	lsl		r1, r1, #0x8
	add		r2, r5, #0x0
	add		r2, #0x5a
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r2, #0x0]
	str		r1, [r5, #0x30]
	ldrh	r1, [r5, #0x34]
	ldr		r0, _0803f8fc
	and		r0, r1
	strh	r0, [r5, #0x34]
	str		r3, [r5, #0x18]
	ldr		r0, _0803f900
	str		r0, [r5, #0x14]
	b		_0803fc8a

_0803f8fc:	.4byte 0x0000FFFD
_0803f900:	.4byte 0x0804123D

_0803f904:
	ldr		r6, [r5, #0x7c]
	cmp		r6, #0x0
	beq		_0803f924
	ldr		r0, _0803f91c
	mov		r1, #0x0
	bl		sub_08044894
	add		r6, r0, #0x0
	str		r6, [r5, #0x7c]
	ldr		r0, _0803f920
	b		_0803f926

.incbin "base.gba", 0x3F91A, 0x2

_0803f91c:	.4byte 0x030031C4
_0803f920:	.4byte 0x0803E209

_0803f924:
	ldr		r0, _0803f94c
_0803f926:
	str		r0, [r5, #0x18]
	cmp		r6, #0x0
	beq		_0803f980
	ldr		r4, _0803f950
	ldrh	r3, [r4, #0x14]
	mov		r0, r8
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x1
	cmp		r0, r3
	blt		_0803f93e
	sub		r0, r3, #0x1
	sub		r0, r1, r0
_0803f93e:
	mov		r8, r0
	add		r0, r1, #0x2
	cmp		r0, r3
	bge		_0803f954
	add		r4, r0, #0x0
	b		_0803f958

.incbin "base.gba", 0x3F94A, 0x2

_0803f94c:	.4byte 0x0803DFC1
_0803f950:	.4byte 0x030031C4

_0803f954:
	sub		r0, r3, #0x2
	sub		r4, r1, r0
_0803f958:
	sub		r2, r1, #0x1
	cmp		r2, #0x0
	bge		_0803f962
	sub		r0, r3, #0x1
	add		r2, r1, r0
_0803f962:
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	cmp		r0, r1
	beq		_0803f9f6
	cmp		r0, r8
	beq		_0803f9f6
	cmp		r0, r4
	beq		_0803f9f6
	mov		r1, #0x0
	cmp		r0, r2
	bne		_0803f97c
	mov		r1, #0x1
_0803f97c:
	cmp		r1, #0x0
	bne		_0803f9f6
_0803f980:
	ldr		r0, _0803f9c4
	add		r0, #0x24
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_0803f98e
	ldr		r2, _0803f9c8
	add		r1, r1, r2
_0803f98e:
	asr		r1, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_0803f99a
	ldr		r3, _0803f9c8
	add		r2, r2, r3
_0803f99a:
	asr		r2, r2, #0x10
	mov		r3, #0x1
	bl		sub_0802c35c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	mov		r3, #0x74
	add		r1, r5, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803f9cc
	ldr		r6, _0803f9d0
	add		r0, r4, r6
	ldrb	r0, [r0, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803f9d4
	cmp		r0, #0x2
	beq		_0803f9d8
	b		_0803f9da

_0803f9c4:	.4byte RunGameLogic_CallBack
_0803f9c8:	.4byte 0x0000FFFF
_0803f9cc:	.4byte 0x030031C4
_0803f9d0:	.4byte 0x000007DC

_0803f9d4:
	mov		r3, #0x6c
	b		_0803f9da
_0803f9d8:
	mov		r3, #0x7e
_0803f9da:
	cmp		r2, r3
	blt		_0803f9e6
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803f9ee
	b		_0803f9ec
_0803f9e6:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803f9ee
_0803f9ec:
	add		r2, r3, #0x0
_0803f9ee:
	strb	r2, [r4, #0x0]
	mov		r0, r8
	lsl		r1, r0, #0x10
	b		_0803fb08
_0803f9f6:
	ldr		r1, [r6, #0x0]
	ldr		r0, [r7, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803fa04
	ldr		r1, _0803fa68
	add		r0, r0, r1
_0803fa04:
	asr		r2, r0, #0x10
	ldr		r1, [r6, #0x4]
	ldr		r0, [r7, #0x4]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803fa14
	ldr		r3, _0803fa68
	add		r0, r0, r3
_0803fa14:
	asr		r1, r0, #0x10
	mov		r10, r2
	cmp		r2, #0x0
	bge		_0803fa22
	mov		r4, r10
	neg		r4, r4
	mov		r10, r4
_0803fa22:
	mov		r9, r1
	cmp		r1, #0x0
	bge		_0803fa2e
	mov		r0, r9
	neg		r0, r0
	mov		r9, r0
_0803fa2e:
	add		r4, r2, #0x0
	mul		r4, r2
	add		r0, r1, #0x0
	mul		r0, r1
	add		r4, r4, r0
	add		r0, r2, #0x0
	bl		sub_08028738
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	ldr		r0, _0803fa6c
	cmp		r4, r0
	ble		_0803fa8a
	mov		r3, #0x74
	add		r1, r5, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803fa70
	ldr		r0, _0803fa74
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803fa78
	cmp		r0, #0x2
	beq		_0803fa7c
	b		_0803fa7e

.incbin "base.gba", 0x3FA66, 0x2

_0803fa68:	.4byte 0x0000FFFF
_0803fa6c:	.4byte 0x0000018F
_0803fa70:	.4byte 0x030031C4
_0803fa74:	.4byte 0x000007DC

_0803fa78:
	mov		r3, #0x6c
	b		_0803fa7e
_0803fa7c:
	mov		r3, #0x7e
_0803fa7e:
	cmp		r2, r3
	blt		_0803fad2
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803fada
	b		_0803fad8
_0803fa8a:
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	mov		r1, #0x4c
	cmp		r0, #0x0
	beq		_0803fa9a
	mov		r1, #0x3c
_0803fa9a:
	add		r3, r1, #0x0
	add		r1, r5, #0x0
	add		r1, #0x71
	ldrb	r2, [r1, #0x0]
	ldr		r4, _0803fab8
	ldr		r0, _0803fabc
	add		r4, r4, r0
	ldrb	r0, [r4, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0803fac0
	cmp		r0, #0x2
	beq		_0803fac4
	b		_0803fac6

.incbin "base.gba", 0x3FAB6, 0x2

_0803fab8:	.4byte 0x030031C4
_0803fabc:	.4byte 0x000007DC

_0803fac0:
	sub		r3, #0x8
	b		_0803fac6
_0803fac4:
	add		r3, #0xa
_0803fac6:
	cmp		r2, r3
	blt		_0803fad2
	sub		r2, #0x10
	cmp		r2, r3
	bge		_0803fada
	b		_0803fad8
_0803fad2:
	add		r2, #0x4
	cmp		r2, r3
	ble		_0803fada
_0803fad8:
	add		r2, r3, #0x0
_0803fada:
	strb	r2, [r4, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x7a
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0803faec
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_0803fb04
_0803faec:
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	beq		_0803faf8
	mov		r3, r8
	lsl		r1, r3, #0x10
	b		_0803fb08
_0803faf8:
	mov		r6, r10
	cmp		r6, #0xc
	bgt		_0803fb04
	mov		r0, r9
	cmp		r0, #0xc
	ble		_0803fb12
_0803fb04:
	mov		r2, r8
	lsl		r1, r2, #0x10
_0803fb08:
	asr		r1, r1, #0x10
	add		r0, r5, #0x0
	bl		sub_0803e6f4
	b		_0803fb16
_0803fb12:
	mov		r3, r8
	strh	r3, [r7, #0x26]
_0803fb16:
	ldrb	r0, [r4, #0x0]
	lsl		r4, r0, #0x4
	add		r6, r4, #0x0
	ldr		r0, _0803fb90
	mov		r8, r0
	mov		r1, #0x26
	ldrsh	r2, [r7, r1]
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0803fb2c
	add		r1, #0x3f
_0803fb2c:
	asr		r3, r1, #0x6
	ldr		r1, _0803fb94
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r8
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_0803fb44
	add		r0, #0x7f
_0803fb44:
	asr		r0, r0, #0x7
	str		r0, [r7, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0803fb94
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r6
	cmp		r0, #0x0
	bge		_0803fb62
	add		r0, #0x7f
_0803fb62:
	asr		r0, r0, #0x7
	str		r0, [r7, #0x2c]
	add		r2, r5, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803fbda
	add		r0, r5, #0x0
	add		r0, #0x70
	ldrb	r3, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r4, _0803fb98
	add		r6, r0, #0x0
	cmp		r1, r4
	beq		_0803fbb4
	cmp		r1, r4
	bgt		_0803fba0
	ldr		r0, _0803fb9c
	cmp		r1, r0
	beq		_0803fbac
	b		_0803fbcc

_0803fb90:	.4byte 0x08101068
_0803fb94:	.4byte 0x000003FF
_0803fb98:	.4byte 0x00008402
_0803fb9c:	.4byte 0x00008401

_0803fba0:
	ldr		r0, _0803fba8
	cmp		r1, r0
	beq		_0803fbbc
	b		_0803fbcc

_0803fba8:	.4byte 0x00008403

_0803fbac:
	ldr		r1, _0803fbb0
	b		_0803fbbe

_0803fbb0:	.4byte 0x081086c0

_0803fbb4:
	ldr		r1, _0803fbb8
	b		_0803fbbe

_0803fbb8:	.4byte 0x081086d8

_0803fbbc:
	ldr		r1, _0803fbc8
_0803fbbe:
	lsl		r0, r3, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803fbce

.incbin "base.gba", 0x3FBC6, 0x2

_0803fbc8:	.4byte 0x081086f0

_0803fbcc:
	mov		r0, #0x0
_0803fbce:
	str		r0, [r5, #0x48]
	add		r3, #0x1
	cmp		r3, #0x5
	ble		_0803fbd8
	mov		r3, #0x0
_0803fbd8:
	strb	r3, [r6, #0x0]
_0803fbda:
	add		r1, r2, #0x0
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x10
	bne		_0803fbf4
	ldr		r3, [sp, #0x0]
	ldr		r0, [r3, #0x48]
	ldr		r1, _0803fc9c
	and		r0, r1
	str		r0, [r3, #0x48]
_0803fbf4:
	ldrh	r1, [r2, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803fc7a
	ldr		r0, _0803fca0
	ldr		r4, _0803fca4
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803fc7a
	ldr		r0, _0803fca8
	add		r1, r7, #0x0
	bl		sub_08045bf4
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _0803fca8
	add		r1, r7, #0x0
	bl		sub_080466c4
	add		r6, r0, #0x0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r0, #0x80
	bl		sub_0807073c
	ldr		r0, _0803fcac
	mov		r8, r0
	ldr		r5, _0803fcb0
	mov		r1, #0x80
	lsl		r1, r1, #0x3
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
	add		r2, r6, #0x0
	bl		sub_0807169c
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_08071704
_0803fc7a:
	ldr		r0, [r7, #0x0]
	ldr		r1, [r7, #0x28]
	add		r0, r0, r1
	str		r0, [r7, #0x0]
	ldr		r0, [r7, #0x4]
	ldr		r1, [r7, #0x2c]
	add		r0, r0, r1
	str		r0, [r7, #0x4]
_0803fc8a:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3FC9A, 0x2

_0803fc9c:	.4byte 0xfffeffff
_0803fca0:	.4byte RunGameLogic_CallBack
_0803fca4:	.4byte 0x00000838
_0803fca8:	.4byte 0x030031C4
_0803fcac:	.4byte 0x08124544
_0803fcb0:	.4byte 0x081245c8
	thumb_func_end sub_0803f7f0

	thumb_func_start sub_0803fcb4
sub_0803fcb4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	add		r7, r4, #0x0
	ldr		r0, _0803fd64
	add		r0, #0x24
	mov		r9, r0
	ldr		r6, [r4, #0x54]
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0803e4a0
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0803fcdc
	ldr		r0, _0803fd68
	add		r1, r1, r0
_0803fcdc:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0803fce8
	ldr		r0, _0803fd68
	add		r2, r2, r0
_0803fce8:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_0803fcf4
	ldr		r0, _0803fd68
	add		r3, r3, r0
_0803fcf4:
	asr		r3, r3, #0x10
	mov		r0, r9
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0803fd0c
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0803fd0c:
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	beq		_0803fd16
	sub		r0, #0x1
	strh	r0, [r4, #0x38]
_0803fd16:
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	bne		_0803fd20
	str		r0, [r4, #0x28]
	str		r0, [r4, #0x2c]
_0803fd20:
	mov		r3, #0x0
	add		r1, r4, #0x0
	add		r1, #0x4e
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_0803fd3e
	mov		r0, #0x0
	cmp		r2, #0x26
	bne		_0803fd38
	mov		r0, #0x1
_0803fd38:
	cmp		r0, #0x0
	bne		_0803fd3e
	mov		r3, #0x1
_0803fd3e:
	cmp		r3, #0x0
	bne		_0803fd50
	mov		r2, #0x0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x26
	bne		_0803fd4c
	mov		r2, #0x1
_0803fd4c:
	cmp		r2, #0x0
	beq		_0803fd74
_0803fd50:
	ldr		r0, [r6, #0x48]
	ldr		r1, _0803fd6c
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r0, _0803fd70
	add		r0, r9
	add		r1, r4, #0x0
	bl		sub_080491c0
	b		_0803ff58

_0803fd64:	.4byte RunGameLogic_CallBack
_0803fd68:	.4byte 0x0000FFFF
_0803fd6c:	.4byte 0xfffeffff
_0803fd70:	.4byte 0x0000070C

_0803fd74:
	ldrh	r1, [r7, #0x34]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r7, #0x34]
	add		r2, r4, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	mov		r10, r2
	cmp		r0, #0x0
	bne		_0803fdee
	add		r0, r4, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r4, #0x10]
	ldr		r3, _0803fdac
	add		r5, r0, #0x0
	cmp		r1, r3
	beq		_0803fdc8
	cmp		r1, r3
	bgt		_0803fdb4
	ldr		r0, _0803fdb0
	cmp		r1, r0
	beq		_0803fdc0
	b		_0803fde0

_0803fdac:	.4byte 0x00008402
_0803fdb0:	.4byte 0x00008401

_0803fdb4:
	ldr		r0, _0803fdbc
	cmp		r1, r0
	beq		_0803fdd0
	b		_0803fde0

_0803fdbc:	.4byte 0x00008403

_0803fdc0:
	ldr		r1, _0803fdc4
	b		_0803fdd2

_0803fdc4:	.4byte 0x081086c0

_0803fdc8:
	ldr		r1, _0803fdcc
	b		_0803fdd2

_0803fdcc:	.4byte 0x081086d8

_0803fdd0:
	ldr		r1, _0803fddc
_0803fdd2:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0803fde2

.incbin "base.gba", 0x3FDDA, 0x2

_0803fddc:	.4byte 0x081086f0

_0803fde0:
	mov		r0, #0x0
_0803fde2:
	str		r0, [r4, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_0803fdec
	mov		r2, #0x0
_0803fdec:
	strb	r2, [r5, #0x0]
_0803fdee:
	mov		r5, r10
	ldrh	r0, [r5, #0x0]
	add		r0, #0x1
	strh	r0, [r5, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	ldr		r0, [r7, #0x0]
	ldr		r1, [r7, #0x28]
	add		r0, r0, r1
	str		r0, [r7, #0x0]
	ldr		r0, [r7, #0x4]
	ldr		r1, [r7, #0x2c]
	add		r0, r0, r1
	str		r0, [r7, #0x4]
	mov		r0, r9
	mov		r1, #0x0
	bl		sub_08044894
	str		r0, [r4, #0x7c]
	add		r6, r0, #0x0
	mov		r0, #0x0
	ldrsh	r1, [r5, r0]
	ldr		r0, _0803fe90
	cmp		r1, r0
	ble		_0803fea4
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	ldr		r0, _0803fe94
	str		r0, [r4, #0x14]
	ldr		r0, _0803fe98
	add		r0, r9
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0803fe3e
	b		_0803ff58
_0803fe3e:
	mov		r0, r9
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0803fe50
	mov		r2, #0x40
_0803fe50:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	bne		_0803fe58
	b		_0803ff58
_0803fe58:
	mov		r0, #0x7f
	bl		sub_0807073c
	ldr		r5, _0803fe9c
	ldr		r4, _0803fea0
	mov		r1, #0xfe
	lsl		r1, r1, #0x2
	add		r4, r4, r1
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
	b		_0803ff58

.incbin "base.gba", 0x3FE8E, 0x2

_0803fe90:	.4byte 0x00000A8B
_0803fe94:	.4byte 0x0803f305
_0803fe98:	.4byte 0x00000814
_0803fe9c:	.4byte 0x08124544
_0803fea0:	.4byte 0x081245c8

_0803fea4:
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7f
	and		r0, r1
	cmp		r8, r0
	bne		_0803ff58
	add		r0, r6, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r3, [r0, r1]
	cmp		r3, #0x0
	bne		_0803ff58
	ldr		r1, [r6, #0x0]
	ldr		r0, [r7, #0x0]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0803fecc
	ldr		r0, _0803ff68
	add		r1, r1, r0
_0803fecc:
	asr		r2, r1, #0x10
	ldr		r1, [r6, #0x4]
	ldr		r0, [r7, #0x4]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0803fedc
	ldr		r1, _0803ff68
	add		r0, r0, r1
_0803fedc:
	asr		r0, r0, #0x10
	add		r1, r2, #0x0
	cmp		r1, #0x0
	bge		_0803fee6
	neg		r1, r1
_0803fee6:
	cmp		r0, #0x0
	bge		_0803feec
	neg		r0, r0
_0803feec:
	cmp		r1, #0x60
	bgt		_0803ff58
	cmp		r0, #0x60
	bgt		_0803ff58
	mov		r0, r10
	strh	r3, [r0, #0x0]
	ldr		r0, _0803ff6c
	str		r0, [r4, #0x14]
	ldr		r0, _0803ff70
	add		r0, r9
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0803ff58
	mov		r0, r9
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0803ff1e
	mov		r2, #0x40
_0803ff1e:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0803ff58
	mov		r0, #0x7f
	bl		sub_0807073c
	ldr		r5, _0803ff74
	ldr		r4, _0803ff78
	mov		r1, #0xfe
	lsl		r1, r1, #0x2
	add		r4, r4, r1
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
_0803ff58:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3FF66, 0x2

_0803ff68:	.4byte 0x0000FFFF
_0803ff6c:	.4byte 0x0803f305
_0803ff70:	.4byte 0x00000814
_0803ff74:	.4byte 0x08124544
_0803ff78:	.4byte 0x081245c8
	thumb_func_end sub_0803fcb4

	thumb_func_start sub_0803ff7c
sub_0803ff7c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r0, [r4, #0x54]
	mov		r9, r0
	ldr		r0, _0803ffcc
	add		r0, #0x24
	mov		r10, r0
	ldrh	r0, [r4, #0x38]
	cmp		r0, #0x0
	beq		_0803ff9e
	sub		r0, #0x1
	strh	r0, [r4, #0x38]
_0803ff9e:
	add		r2, r4, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	add		r7, r2, #0x0
	cmp		r0, #0x0
	bne		_08040012
	add		r0, r4, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r4, #0x10]
	ldr		r3, _0803ffd0
	add		r6, r0, #0x0
	cmp		r1, r3
	beq		_0803ffec
	cmp		r1, r3
	bgt		_0803ffd8
	ldr		r0, _0803ffd4
	cmp		r1, r0
	beq		_0803ffe4
	b		_08040004

.incbin "base.gba", 0x3FFCA, 0x2

_0803ffcc:	.4byte RunGameLogic_CallBack
_0803ffd0:	.4byte 0x00008402
_0803ffd4:	.4byte 0x00008401

_0803ffd8:
	ldr		r0, _0803ffe0
	cmp		r1, r0
	beq		_0803fff4
	b		_08040004

_0803ffe0:	.4byte 0x00008403

_0803ffe4:
	ldr		r1, _0803ffe8
	b		_0803fff6

_0803ffe8:	.4byte 0x081086c0

_0803ffec:
	ldr		r1, _0803fff0
	b		_0803fff6

_0803fff0:	.4byte 0x081086d8

_0803fff4:
	ldr		r1, _08040000
_0803fff6:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_08040006

.incbin "base.gba", 0x3FFFE, 0x2

_08040000:	.4byte 0x081086f0

_08040004:
	mov		r0, #0x0
_08040006:
	str		r0, [r4, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_08040010
	mov		r2, #0x0
_08040010:
	strb	r2, [r6, #0x0]
_08040012:
	ldrh	r0, [r7, #0x0]
	add		r0, #0x1
	strh	r0, [r7, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r2, [r5, #0x4]
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_08040030
	add		r1, r5, #0x0
	add		r1, #0x4e
	mov		r0, #0x26
	b		_08040058
_08040030:
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_0804003a
	ldr		r2, _08040078
	add		r1, r1, r2
_0804003a:
	lsr		r1, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_08040046
	ldr		r0, _08040078
	add		r2, r2, r0
_08040046:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_0802c490
	add		r1, r5, #0x0
	add		r1, #0x4e
_08040058:
	strb	r0, [r1, #0x0]
	mov		r3, #0x0
	add		r1, r4, #0x0
	add		r1, #0x4e
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x90
	and		r0, r2
	add		r6, r1, #0x0
	cmp		r0, #0x80
	bne		_0804006e
	mov		r3, #0x1
_0804006e:
	cmp		r3, #0x0
	beq		_08040080
	ldr		r0, _0804007c
	b		_08040142

.incbin "base.gba", 0x40076, 0x2

_08040078:	.4byte 0x0000FFFF
_0804007c:	.4byte sub_08041278

_08040080:
	mov		r1, #0x0
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	beq		_0804009c
	mov		r3, #0x0
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x26
	bne		_08040096
	mov		r3, #0x1
_08040096:
	cmp		r3, #0x0
	bne		_0804009c
	mov		r1, #0x1
_0804009c:
	cmp		r1, #0x0
	bne		_080400b4
	mov		r1, #0x0
	mov		r8, r1
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x26
	bne		_080400ae
	mov		r2, #0x1
	mov		r8, r2
_080400ae:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_080400dc
_080400b4:
	mov		r1, r9
	ldr		r0, [r1, #0x48]
	ldr		r1, _080400d0
	and		r0, r1
	mov		r2, r9
	str		r0, [r2, #0x48]
	ldr		r1, _080400d4
	ldr		r2, _080400d8
	add		r0, r1, r2
	add		r1, r4, #0x0
	bl		sub_080491c0
	b		_08040144

.incbin "base.gba", 0x400CE, 0x2

_080400d0:	.4byte 0xfffeffff
_080400d4:	.4byte 0x030031C4
_080400d8:	.4byte 0x0000070C

_080400dc:
	ldrh	r0, [r5, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	strh	r1, [r5, #0x34]
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_080400f2
	ldr		r0, _08040154
	add		r1, r1, r0
_080400f2:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_080400fe
	ldr		r0, _08040154
	add		r2, r2, r0
_080400fe:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_0804010a
	ldr		r0, _08040154
	add		r3, r3, r0
_0804010a:
	asr		r3, r3, #0x10
	mov		r0, r10
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_08040122
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_08040122:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x10
	bne		_08040134
	mov		r2, r9
	ldr		r0, [r2, #0x48]
	ldr		r1, _08040158
	and		r0, r1
	str		r0, [r2, #0x48]
_08040134:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x60
	bne		_08040144
	mov		r2, r8
	strh	r2, [r7, #0x0]
	ldr		r0, _0804015c
_08040142:
	str		r0, [r4, #0x14]
_08040144:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x40152, 0x2

_08040154:	.4byte 0x0000FFFF
_08040158:	.4byte 0xfffeffff
_0804015c:	.4byte sub_0803fcb4
	thumb_func_end sub_0803ff7c

	thumb_func_start sub_08040160
sub_08040160:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r9, r5
	ldr		r6, [r5, #0x54]
	mov		r0, #0x8
	mov		r1, #0x0
	mov		r10, r1
	mov		r2, #0x0
	mov		r8, r2
	mov		r4, #0x8
	strh	r0, [r5, #0x38]
	ldr		r0, [r6, #0x0]
	str		r0, [r5, #0x0]
	ldr		r2, [r6, #0x4]
	str		r2, [r5, #0x4]
	mov		r1, r8
	str		r1, [r5, #0x8]
	strb	r4, [r5, #0xe]
	strb	r4, [r5, #0xd]
	strb	r4, [r5, #0xc]
	str		r1, [r5, #0x28]
	str		r1, [r5, #0x2c]
	str		r1, [r5, #0x30]
	cmp		r0, #0x0
	bge		_080401a0
	ldr		r1, _08040230
	add		r0, r0, r1
_080401a0:
	asr		r1, r0, #0x10
	cmp		r2, #0x0
	bge		_080401aa
	ldr		r0, _08040230
	add		r2, r2, r0
_080401aa:
	asr		r2, r2, #0x10
	ldr		r0, _08040234
	mov		r3, #0x0
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_080401c4
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r5, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_080401c4:
	mov		r2, #0xbe
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x4c
	mov		r1, r8
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	mov		r2, r10
	strb	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x28
	strb	r4, [r0, #0x0]
	add		r2, r5, #0x0
	add		r2, #0x71
	mov		r0, r10
	strb	r0, [r2, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x78
	mov		r0, #0x30
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x79
	mov		r1, r10
	strb	r1, [r0, #0x0]
	mov		r0, r8
	str		r0, [r5, #0x7c]
	add		r4, r5, #0x0
	add		r4, #0x80
	strb	r1, [r4, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x74
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	ldrh	r3, [r5, #0x10]
	ldr		r0, _08040238
	add		r7, r2, #0x0
	str		r1, [sp, #0x0]
	cmp		r3, r0
	bne		_08040222
	b		_08040368
_08040222:
	cmp		r3, r0
	bgt		_0804023c
	sub		r0, #0x1
	cmp		r3, r0
	beq		_0804024c
	b		_080407a2

.incbin "base.gba", 0x4022E, 0x2

_08040230:	.4byte 0x0000FFFF
_08040234:	.4byte 0x030031C4
_08040238:	.4byte 0x00008402

_0804023c:
	ldr		r0, _08040248
	cmp		r3, r0
	bne		_08040244
	b		_08040594
_08040244:
	b		_080407a2

.incbin "base.gba", 0x40246, 0x2

_08040248:	.4byte 0x00008403

_0804024c:
	mov		r1, #0x26
	ldrsh	r4, [r5, r1]
	add		r0, r6, #0x0
	bl		sub_080373bc
	add		r4, r4, r0
	strh	r4, [r5, #0x26]
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08040268
	ldr		r2, _08040344
	add		r0, r0, r2
_08040268:
	asr		r1, r0, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	cmp		r0, #0x0
	bge		_08040278
	add		r2, #0xf
	add		r0, r1, r2
_08040278:
	asr		r0, r0, #0x4
	strb	r0, [r7, #0x0]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x63
	bls		_08040288
	mov		r0, #0x64
	strb	r0, [r7, #0x0]
_08040288:
	ldrb	r0, [r7, #0x0]
	lsl		r2, r0, #0x4
	ldr		r6, _08040348
	mov		r0, #0x26
	ldrsh	r3, [r5, r0]
	add		r1, r3, #0x0
	cmp		r3, #0x0
	bge		_0804029a
	add		r1, #0x3f
_0804029a:
	asr		r4, r1, #0x6
	ldr		r1, _0804034c
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_080402b2
	add		r0, #0x7f
_080402b2:
	asr		r0, r0, #0x7
	mov		r1, r9
	str		r0, [r1, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _0804034c
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_080402d2
	add		r0, #0x7f
_080402d2:
	asr		r0, r0, #0x7
	mov		r2, r9
	str		r0, [r2, #0x2c]
	mov		r0, #0x7
	ldr		r1, [sp, #0x0]
	strb	r0, [r1, #0x0]
	ldr		r0, _08040350
	str		r0, [r5, #0x14]
	ldr		r0, _08040354
	str		r0, [r5, #0x18]
	ldr		r2, _08040358
	ldr		r1, _0804035c
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080402fa
	b		_080407a2
_080402fa:
	add		r0, r2, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0804030c
	mov		r2, #0x40
_0804030c:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	bne		_08040314
	b		_080407a2
_08040314:
	mov		r0, #0x7b
	bl		sub_0807073c
	ldr		r5, _08040360
	ldr		r4, _08040364
	mov		r2, #0xf6
	lsl		r2, r2, #0x2
	add		r4, r4, r2
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
	b		_08040682

_08040344:	.4byte 0x0000FFFF
_08040348:	.4byte 0x08101068
_0804034c:	.4byte 0x000003FF
_08040350:	.4byte sub_0803e594
_08040354:	.4byte sub_0803dfc0
_08040358:	.4byte 0x030031C4
_0804035c:	.4byte 0x00000814
_08040360:	.4byte 0x08124544
_08040364:	.4byte 0x081245c8

_08040368:
	mov		r0, #0x26
	ldrsh	r1, [r5, r0]
	ldr		r0, _08040418
	cmp		r1, r0
	bne		_08040440
	add		r0, r6, #0x0
	bl		sub_080373bc
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	ldr		r6, _0804041c
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0804038c
	add		r1, #0x3f
_0804038c:
	asr		r3, r1, #0x6
	ldr		r1, _08040420
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0xb
	cmp		r0, #0x0
	bge		_080403a4
	add		r0, #0x7f
_080403a4:
	asr		r4, r0, #0x7
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040420
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0xb
	cmp		r0, #0x0
	bge		_080403c0
	add		r0, #0x7f
_080403c0:
	asr		r1, r0, #0x7
	ldr		r0, [r5, #0x0]
	add		r0, r0, r4
	str		r0, [r5, #0x0]
	ldr		r0, [r5, #0x4]
	add		r0, r0, r1
	str		r0, [r5, #0x4]
	ldr		r0, _08040424
	str		r0, [r5, #0x14]
	ldr		r0, _08040428
	str		r0, [r5, #0x18]
	ldr		r2, _0804042c
	ldr		r1, _08040430
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080403ea
	b		_080407a2
_080403ea:
	ldr		r0, _08040434
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080403fc
	mov		r2, #0x40
_080403fc:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	bne		_08040404
	b		_080407a2
_08040404:
	mov		r0, #0x86
	bl		sub_0807073c
	ldr		r5, _08040438
	ldr		r4, _0804043c
	mov		r2, #0x86
	lsl		r2, r2, #0x3
	add		r4, r4, r2
	b		_08040664

.incbin "base.gba", 0x40416, 0x2

_08040418:	.4byte 0xFFFF8000
_0804041c:	.4byte 0x08101068
_08040420:	.4byte 0x000003FF
_08040424:	.4byte sub_0803f60c
_08040428:	.4byte sub_0803dfc0
_0804042c:	.4byte RunGameLogic_CallBack
_08040430:	.4byte 0x00000838
_08040434:	.4byte 0x030031C4
_08040438:	.4byte 0x08124544
_0804043c:	.4byte 0x081245c8

_08040440:
	ldr		r1, _08040458
	ldr		r2, _0804045c
	add		r0, r1, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08040460
	mov		r0, r8
	b		_0804047e

.incbin "base.gba", 0x40456, 0x2

_08040458:	.4byte RunGameLogic_CallBack
_0804045c:	.4byte 0x000007FE

_08040460:
	add		r0, r6, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_08040472
	str		r2, [r5, #0x7c]
	b		_08040480
_08040472:
	sub		r1, r0, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r0, _08040570
	bl		sub_08044894
_0804047e:
	str		r0, [r5, #0x7c]
_08040480:
	add		r0, r6, #0x0
	bl		sub_080373bc
	mov		r1, r9
	strh	r0, [r1, #0x26]
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08040498
	ldr		r2, _08040574
	add		r0, r0, r2
_08040498:
	asr		r1, r0, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	cmp		r0, #0x0
	bge		_080404a8
	add		r2, #0xf
	add		r0, r1, r2
_080404a8:
	asr		r0, r0, #0x4
	strb	r0, [r7, #0x0]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x73
	bls		_080404b8
	mov		r0, #0x74
	strb	r0, [r7, #0x0]
_080404b8:
	ldrb	r0, [r7, #0x0]
	lsl		r2, r0, #0x4
	ldr		r6, _08040578
	mov		r0, r9
	mov		r1, #0x26
	ldrsh	r3, [r0, r1]
	add		r1, r3, #0x0
	cmp		r3, #0x0
	bge		_080404cc
	add		r1, #0x3f
_080404cc:
	asr		r4, r1, #0x6
	ldr		r1, _0804057c
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_080404e4
	add		r0, #0x7f
_080404e4:
	asr		r0, r0, #0x7
	mov		r1, r9
	str		r0, [r1, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _0804057c
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08040504
	add		r0, #0x7f
_08040504:
	asr		r0, r0, #0x7
	mov		r2, r9
	str		r0, [r2, #0x2c]
	ldr		r0, _08040580
	str		r0, [r5, #0x14]
	ldr		r0, _08040584
	str		r0, [r5, #0x18]
	ldr		r1, _08040570
	ldr		r2, _08040588
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08040526
	b		_080407a2
_08040526:
	ldr		r0, _08040570
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08040538
	mov		r2, #0x40
_08040538:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	bne		_08040540
	b		_080407a2
_08040540:
	mov		r0, #0x7b
	bl		sub_0807073c
	ldr		r5, _0804058c
	ldr		r4, _08040590
	mov		r0, #0xf6
	lsl		r0, r0, #0x2
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
	b		_08040682

_08040570:	.4byte 0x030031C4
_08040574:	.4byte 0x0000FFFF
_08040578:	.4byte 0x08101068
_0804057c:	.4byte 0x000003FF
_08040580:	.4byte sub_0803e740
_08040584:	.4byte sub_0803dfc0
_08040588:	.4byte 0x00000814
_0804058c:	.4byte 0x08124544
_08040590:	.4byte 0x081245c8

_08040594:
	add		r0, r6, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	bne		_080405a6
	mov		r1, r10
	strb	r1, [r4, #0x0]
	b		_080405b2
_080405a6:
	mov		r2, r10
	strb	r2, [r4, #0x0]
	ldr		r0, _0804068c
	mov		r1, #0x0
	bl		sub_08044894
_080405b2:
	str		r0, [r5, #0x7c]
	mov		r0, r9
	mov		r2, #0x26
	ldrsh	r1, [r0, r2]
	ldr		r0, _08040690
	cmp		r1, r0
	bne		_080406b0
	add		r0, r6, #0x0
	bl		sub_080373bc
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	ldr		r6, _08040694
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_080405da
	add		r1, #0x3f
_080405da:
	asr		r3, r1, #0x6
	ldr		r1, _08040698
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0xb
	cmp		r0, #0x0
	bge		_080405f2
	add		r0, #0x7f
_080405f2:
	asr		r4, r0, #0x7
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040698
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0xb
	cmp		r0, #0x0
	bge		_0804060e
	add		r0, #0x7f
_0804060e:
	asr		r1, r0, #0x7
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	add		r0, r0, r4
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x4]
	add		r0, r0, r1
	str		r0, [r2, #0x4]
	ldr		r0, _0804069c
	str		r0, [r5, #0x14]
	ldr		r0, _080406a0
	str		r0, [r5, #0x18]
	ldr		r1, _0804068c
	ldr		r2, _080406a4
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804063a
	b		_080407a2
_0804063a:
	ldr		r0, _0804068c
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0804064c
	mov		r2, #0x40
_0804064c:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	bne		_08040654
	b		_080407a2
_08040654:
	mov		r0, #0x86
	bl		sub_0807073c
	ldr		r5, _080406a8
	ldr		r4, _080406ac
	mov		r0, #0x86
	lsl		r0, r0, #0x3
	add		r4, r4, r0
_08040664:
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
	mov		r1, #0x3
_08040682:
	add		r2, r6, #0x0
	bl		sub_0807169c
	b		_080407a2

.incbin "base.gba", 0x4068A, 0x2

_0804068c:	.4byte 0x030031C4
_08040690:	.4byte 0xFFFF8000
_08040694:	.4byte 0x08101068
_08040698:	.4byte 0x000003FF
_0804069c:	.4byte sub_0803ff7c
_080406a0:	.4byte sub_0803e208
_080406a4:	.4byte 0x00000814
_080406a8:	.4byte 0x08124544
_080406ac:	.4byte 0x081245c8

_080406b0:
	add		r0, r6, #0x0
	bl		sub_080373bc
	mov		r1, r9
	strh	r0, [r1, #0x26]
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_080406c8
	ldr		r2, _080407b4
	add		r0, r0, r2
_080406c8:
	asr		r1, r0, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	cmp		r0, #0x0
	bge		_080406d8
	add		r2, #0xf
	add		r0, r1, r2
_080406d8:
	asr		r0, r0, #0x4
	add		r1, r7, #0x0
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x73
	bls		_080406ea
	mov		r0, #0x74
	strb	r0, [r1, #0x0]
_080406ea:
	ldrb	r0, [r7, #0x0]
	lsl		r2, r0, #0x4
	ldr		r6, _080407b8
	mov		r0, r9
	mov		r1, #0x26
	ldrsh	r3, [r0, r1]
	add		r1, r3, #0x0
	cmp		r3, #0x0
	bge		_080406fe
	add		r1, #0x3f
_080406fe:
	asr		r4, r1, #0x6
	ldr		r1, _080407bc
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08040716
	add		r0, #0x7f
_08040716:
	asr		r0, r0, #0x7
	mov		r1, r9
	str		r0, [r1, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _080407bc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08040736
	add		r0, #0x7f
_08040736:
	asr		r0, r0, #0x7
	mov		r2, r9
	str		r0, [r2, #0x2c]
	ldr		r0, _080407c0
	str		r0, [r5, #0x14]
	ldr		r0, _080407c4
	str		r0, [r5, #0x18]
	ldr		r1, _080407c8
	ldr		r2, _080407cc
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080407a2
	ldr		r0, _080407c8
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_08040768
	mov		r2, #0x40
_08040768:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_080407a2
	mov		r0, #0x7b
	bl		sub_0807073c
	ldr		r5, _080407d0
	ldr		r4, _080407d4
	mov		r0, #0xf6
	lsl		r0, r0, #0x2
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
_080407a2:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x407B2, 0x2

_080407b4:	.4byte 0x0000FFFF
_080407b8:	.4byte 0x08101068
_080407bc:	.4byte 0x000003FF
_080407c0:	.4byte sub_0803f7f0
_080407c4:	.4byte sub_0803e208
_080407c8:	.4byte 0x030031C4
_080407cc:	.4byte 0x00000814
_080407d0:	.4byte 0x08124544
_080407d4:	.4byte 0x081245c8
	thumb_func_end sub_08040160

	thumb_func_start sub_080407d8
sub_080407d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	ldr		r6, [r5, #0x54]
	mov		r12, r5
	add		r7, r5, #0x0
	add		r7, #0x4c
	mov		r0, #0x0
	ldrsh	r1, [r7, r0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	mov		r1, #0xe
	mov		r9, r1
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x10
	strh	r0, [r5, #0x26]
	ldr		r4, [r6, #0x0]
	ldr		r1, _08040878
	mov		r8, r1
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bge		_0804080a
	add		r0, #0x3f
_0804080a:
	asr		r3, r0, #0x6
	ldr		r0, _0804087c
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, r9
	mul		r1, r0
	add		r0, r1, #0x0
	add		r0, r4, r0
	str		r0, [r5, #0x0]
	ldr		r4, [r6, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0804087c
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, r9
	mul		r1, r0
	add		r0, r1, #0x0
	sub		r0, r4, r0
	str		r0, [r5, #0x4]
	ldr		r0, [r6, #0x8]
	str		r0, [r5, #0x8]
	add		r0, r6, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldrh	r1, [r7, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_080408c2
	add		r0, r5, #0x0
	add		r0, #0x70
	ldrb	r2, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r3, _08040880
	add		r4, r0, #0x0
	cmp		r1, r3
	beq		_0804089c
	cmp		r1, r3
	bgt		_08040888
	ldr		r0, _08040884
	cmp		r1, r0
	beq		_08040894
	b		_080408b4

.incbin "base.gba", 0x40876, 0x2

_08040878:	.4byte 0x08101068
_0804087c:	.4byte 0x000003FF
_08040880:	.4byte 0x00008402
_08040884:	.4byte 0x00008401

_08040888:
	ldr		r0, _08040890
	cmp		r1, r0
	beq		_080408a4
	b		_080408b4

_08040890:	.4byte 0x00008403

_08040894:
	ldr		r1, _08040898
	b		_080408a6

_08040898:	.4byte 0x081086c0

_0804089c:
	ldr		r1, _080408a0
	b		_080408a6

_080408a0:	.4byte 0x081086d8

_080408a4:
	ldr		r1, _080408b0
_080408a6:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_080408b6

.incbin "base.gba", 0x408AE, 0x2

_080408b0:	.4byte 0x081086f0

_080408b4:
	mov		r0, #0x0
_080408b6:
	str		r0, [r5, #0x48]
	add		r2, #0x1
	cmp		r2, #0x5
	ble		_080408c0
	mov		r2, #0x0
_080408c0:
	strb	r2, [r4, #0x0]
_080408c2:
	add		r1, r5, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r2, r0, #0x0
	cmp		r1, #0x3
	bne		_080408de
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	beq		_080408fe
_080408de:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x4
	bne		_080408ea
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	beq		_080408fe
_080408ea:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_080408fe
	mov		r1, r12
	ldrh	r0, [r1, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	b		_0804090a
_080408fe:
	mov		r1, r12
	ldrh	r0, [r1, #0x34]
	ldr		r1, _08040948
	and		r1, r0
	ldr		r0, _0804094c
	and		r1, r0
_0804090a:
	mov		r0, r12
	strh	r1, [r0, #0x34]
	add		r0, r6, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804093c
	ldr		r4, [r6, #0x48]
	mov		r0, #0x84
	lsl		r0, r0, #0x9
	and		r4, r0
	cmp		r4, #0x0
	bne		_0804093c
	strh	r4, [r5, #0x26]
	add		r0, r5, #0x0
	bl		sub_08040160
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	orr		r0, r1
	str		r0, [r6, #0x48]
	str		r4, [r5, #0x6c]
_0804093c:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08040948:	.4byte 0x0000FFFE
_0804094c:	.4byte 0x0000FFFD
	thumb_func_end sub_080407d8

	thumb_func_start sub_08040950
sub_08040950:
	push	{ r4, r5, r6, lr }
	mov		r12, r0
	ldr		r6, [r0, #0x54]
	ldr		r4, _080409d4
	mov		r5, #0x0
	mov		r3, #0xe
	strh	r5, [r0, #0x26]
	ldr		r1, [r6, #0x0]
	ldr		r2, _080409d8
	ldr		r0, [r2, #0x0]
	mul		r0, r3
	add		r1, r1, r0
	mov		r0, r12
	str		r1, [r0, #0x0]
	ldr		r1, [r6, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r2, r2, r0
	ldr		r0, [r2, #0x0]
	mul		r0, r3
	sub		r1, r1, r0
	mov		r0, r12
	str		r1, [r0, #0x4]
	ldr		r0, [r6, #0x8]
	mov		r1, r12
	str		r0, [r1, #0x8]
	add		r0, r6, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	mov		r1, r12
	ldrh	r0, [r1, #0x34]
	mov		r1, #0x1
	mov		r2, #0x0
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	mov		r1, r12
	strh	r0, [r1, #0x34]
	ldr		r0, _080409dc
	str		r0, [r1, #0x18]
	mov		r0, r12
	add		r0, #0x4c
	strh	r5, [r0, #0x0]
	add		r0, #0x25
	strb	r2, [r0, #0x0]
	ldr		r0, _080409e0
	str		r0, [r1, #0x14]
	ldr		r0, _080409e4
	add		r4, r4, r0
	ldr		r4, [r4, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080409cc
	cmp		r6, r4
	bne		_080409cc
	mov		r0, #0x7a
	bl		sub_0807073c
_080409cc:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x409D2, 0x2

_080409d4:	.4byte RunGameLogic_CallBack
_080409d8:	.4byte 0x08101068
_080409dc:	.4byte 0x0803E0F1
_080409e0:	.4byte sub_080407d8
_080409e4:	.4byte 0x00000838
	thumb_func_end sub_08040950

	thumb_func_start sub_080409e8
sub_080409e8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	ldr		r4, [r5, #0x54]
	mov		r8, r5
	ldr		r0, _08040a10
	add		r1, r4, #0x0
	add		r1, #0x7e
	ldrb	r1, [r1, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08040a14
	add		r0, r4, #0x0
	bl		sub_08037380
	b		_08040a22

.incbin "base.gba", 0x40A0E, 0x2

_08040a10:	.4byte 0x08106e8c

_08040a14:
	add		r1, r4, #0x0
	add		r1, #0x56
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
_08040a22:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r5, #0x26]
	ldr		r6, [r4, #0x0]
	ldr		r7, _08040aa0
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08040a36
	add		r1, #0x3f
_08040a36:
	asr		r3, r1, #0x6
	ldr		r1, _08040aa4
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r5, #0x0]
	ldr		r6, [r4, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040aa4
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r5, #0x4]
	ldr		r0, [r4, #0x8]
	str		r0, [r5, #0x8]
	add		r0, r4, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	add		r2, r5, #0x0
	add		r2, #0x4c
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x7
	and		r0, r1
	add		r6, r2, #0x0
	cmp		r0, #0x0
	bne		_08040aea
	add		r0, r5, #0x0
	add		r0, #0x70
	ldrb	r3, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r2, _08040aa8
	add		r7, r0, #0x0
	cmp		r1, r2
	beq		_08040ac4
	cmp		r1, r2
	bgt		_08040ab0
	ldr		r0, _08040aac
	cmp		r1, r0
	beq		_08040abc
	b		_08040adc

_08040aa0:	.4byte 0x08101068
_08040aa4:	.4byte 0x000003FF
_08040aa8:	.4byte 0x00008402
_08040aac:	.4byte 0x00008401

_08040ab0:
	ldr		r0, _08040ab8
	cmp		r1, r0
	beq		_08040acc
	b		_08040adc

_08040ab8:	.4byte 0x00008403

_08040abc:
	ldr		r1, _08040ac0
	b		_08040ace

_08040ac0:	.4byte 0x081086c0

_08040ac4:
	ldr		r1, _08040ac8
	b		_08040ace

_08040ac8:	.4byte 0x081086d8

_08040acc:
	ldr		r1, _08040ad8
_08040ace:
	lsl		r0, r3, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_08040ade

.incbin "base.gba", 0x40AD6, 0x2

_08040ad8:	.4byte 0x081086f0

_08040adc:
	mov		r0, #0x0
_08040ade:
	str		r0, [r5, #0x48]
	add		r3, #0x1
	cmp		r3, #0x5
	ble		_08040ae8
	mov		r3, #0x0
_08040ae8:
	strb	r3, [r7, #0x0]
_08040aea:
	ldrh	r0, [r6, #0x0]
	add		r0, #0x1
	strh	r0, [r6, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r3, r0, #0x0
	cmp		r1, #0x3
	bne		_08040b02
	ldr		r0, [r4, #0x8]
	cmp		r0, #0x0
	beq		_08040b22
_08040b02:
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x4
	bne		_08040b0e
	ldr		r0, [r4, #0x8]
	cmp		r0, #0x0
	beq		_08040b22
_08040b0e:
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x2
	beq		_08040b22
	mov		r2, r8
	ldrh	r0, [r2, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	b		_08040b30
_08040b22:
	mov		r1, r8
	ldrh	r0, [r1, #0x34]
	ldr		r1, _08040b78
	and		r1, r0
	ldr		r0, _08040b7c
	and		r1, r0
	mov		r2, r8
_08040b30:
	strh	r1, [r2, #0x34]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08040b54
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0xf3
	ble		_08040b54
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfe
	and		r0, r1
	strb	r0, [r2, #0x0]
_08040b54:
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r2, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r2
	cmp		r0, #0x0
	bne		_08040bbc
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08040b80
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	and		r0, r2
	b		_08040b94

.incbin "base.gba", 0x40B76, 0x2

_08040b78:	.4byte 0x0000FFFE
_08040b7c:	.4byte 0x0000FFFD

_08040b80:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08040bbc
	mov		r0, #0x2
	and		r0, r1
_08040b94:
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_08040b9e
	ldr		r2, _08040bc8
	add		r1, r2, #0x0
_08040b9e:
	mov		r0, r8
	strh	r1, [r0, #0x26]
	add		r0, r5, #0x0
	bl		sub_08040160
	mov		r2, #0xc6
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	orr		r0, r1
	str		r0, [r4, #0x48]
_08040bbc:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x40BC6, 0x2

_08040bc8:	.4byte 0xFFFF8000
	thumb_func_end sub_080409e8

	thumb_func_start sub_08040bcc
sub_08040bcc:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	add		r0, r5, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0x0
	mov		r12, r1
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _08040c64
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08040bf0
	add		r1, #0x3f
_08040bf0:
	asr		r3, r1, #0x6
	ldr		r1, _08040c68
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040c68
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r4, #0x34]
	ldr		r0, _08040c6c
	str		r0, [r4, #0x18]
	add		r1, r4, #0x0
	add		r1, #0x4c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x71
	mov		r1, r12
	strb	r1, [r0, #0x0]
	ldrh	r1, [r4, #0x10]
	ldr		r0, _08040c70
	cmp		r1, r0
	beq		_08040c8c
	cmp		r1, r0
	bgt		_08040c74
	sub		r0, #0x1
	cmp		r1, r0
	beq		_08040c80
	b		_08040ca6

.incbin "base.gba", 0x40C62, 0x2

_08040c64:	.4byte 0x08101068
_08040c68:	.4byte 0x000003FF
_08040c6c:	.4byte sub_0803e0f0
_08040c70:	.4byte 0x00008402

_08040c74:
	ldr		r0, _08040c7c
	cmp		r1, r0
	beq		_08040c9c
	b		_08040ca6

_08040c7c:	.4byte 0x00008403

_08040c80:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	b		_08040ca4
_08040c8c:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	ldr		r0, _08040c98
	b		_08040ca4

.incbin "base.gba", 0x40C96, 0x2

_08040c98:	.4byte 0x00001002

_08040c9c:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	ldr		r0, _08040cb0
_08040ca4:
	strh	r0, [r1, #0x0]
_08040ca6:
	ldr		r0, _08040cb4
	str		r0, [r4, #0x14]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08040cb0:	.4byte 0x00001004
_08040cb4:	.4byte sub_080409e8
	thumb_func_end sub_08040bcc

	thumb_func_start sub_08040cb8
sub_08040cb8:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_080290c0
	mov		r2, #0x0
	mov		r1, #0x0
	strh	r4, [r5, #0x10]
	mov		r0, #0x9
	strb	r0, [r5, #0xe]
	strb	r0, [r5, #0xd]
	strb	r0, [r5, #0xc]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strb	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x8
	strh	r1, [r0, #0x0]
	ldrh	r1, [r5, #0x10]
	ldr		r0, _08040cfc
	cmp		r1, r0
	beq		_08040d18
	cmp		r1, r0
	bgt		_08040d00
	sub		r0, #0x1
	cmp		r1, r0
	beq		_08040d0c
	b		_08040d30

.incbin "base.gba", 0x40CFA, 0x2

_08040cfc:	.4byte 0x00008402

_08040d00:
	ldr		r0, _08040d08
	cmp		r1, r0
	beq		_08040d24
	b		_08040d30

_08040d08:	.4byte 0x00008403

_08040d0c:
	ldr		r0, _08040d14
	ldr		r0, [r0, #0x0]
	b		_08040d32

.incbin "base.gba", 0x40D12, 0x2

_08040d14:	.4byte 0x081086c0

_08040d18:
	ldr		r0, _08040d20
	ldr		r0, [r0, #0x0]
	b		_08040d32

.incbin "base.gba", 0x40D1E, 0x2

_08040d20:	.4byte 0x081086d8

_08040d24:
	ldr		r0, _08040d2c
	ldr		r0, [r0, #0x0]
	b		_08040d32

.incbin "base.gba", 0x40D2A, 0x2

_08040d2c:	.4byte 0x081086f0

_08040d30:
	mov		r0, #0x0
_08040d32:
	str		r0, [r5, #0x48]
	add		r0, r5, #0x0
	add		r0, #0x70
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	add		r0, #0x8
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	strb	r1, [r0, #0x0]
	sub		r0, #0x8
	strb	r1, [r0, #0x0]
	add		r0, #0x9
	strb	r1, [r0, #0x0]
	sub		r0, #0x6
	strb	r1, [r0, #0x0]
	str		r1, [r5, #0x7c]
	add		r0, #0xc
	strb	r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08040cb8

	thumb_func_start sub_08040d5c
sub_08040d5c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _08040ddc
	bl		sub_08040cb8
	add		r0, r5, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _08040de0
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08040d82
	add		r1, #0x3f
_08040d82:
	asr		r3, r1, #0x6
	ldr		r1, _08040de4
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040de4
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r0, _08040de8
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _08040dec
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08040ddc:	.4byte 0x00008401
_08040de0:	.4byte 0x08101068
_08040de4:	.4byte 0x000003FF
_08040de8:	.4byte 0x08040BCD
_08040dec:	.4byte 0xfffeffff
	thumb_func_end sub_08040d5c

	thumb_func_start sub_08040df0
sub_08040df0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	ldr		r5, [r7, #0x54]
	mov		r6, #0x0
	mov		r0, #0xe
	mov		r8, r0
	ldr		r1, _08040e24
	mov		r9, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r2, r9
	mov		r10, r2
_08040e10:
	cmp		r6, #0x0
	beq		_08040e30
	ldr		r1, _08040e28
	ldr		r2, _08040e2c
	add		r0, r1, r2
	bl		sub_08049164
	add		r4, r0, #0x0
	b		_08040e32

.incbin "base.gba", 0x40E22, 0x2

_08040e24:	.4byte 0x08101068
_08040e28:	.4byte 0x030031C4
_08040e2c:	.4byte 0x0000070C

_08040e30:
	add		r4, r7, #0x0
_08040e32:
	add		r0, r4, #0x0
	ldr		r1, _08040eac
	bl		sub_08040cb8
	str		r5, [r4, #0x54]
	mov		r0, #0x0
	strh	r0, [r4, #0x26]
	ldr		r1, [r5, #0x0]
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	mov		r2, r8
	mul		r2, r0
	add		r0, r2, #0x0
	add		r1, r1, r0
	str		r1, [r4, #0x0]
	ldr		r1, [r5, #0x4]
	mov		r2, r10
	ldr		r0, [r2, #0x0]
	mov		r2, r8
	mul		r2, r0
	add		r0, r2, #0x0
	sub		r1, r1, r0
	str		r1, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r1, _08040eb0
	lsl		r0, r6, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x74
	strb	r1, [r0, #0x0]
	ldr		r0, _08040eb4
	str		r0, [r4, #0x14]
	ldr		r0, _08040eb8
	str		r0, [r4, #0x6c]
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08040e10
	ldr		r0, [r5, #0x48]
	ldr		r1, _08040ebc
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08040eac:	.4byte 0x00008401
_08040eb0:	.4byte 0x08108708
_08040eb4:	.4byte 0x080412BD
_08040eb8:	.4byte 0x080412dd
_08040ebc:	.4byte 0xfffeffff
	thumb_func_end sub_08040df0

	thumb_func_start sub_08040ec0
sub_08040ec0:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _08040f40
	bl		sub_08040cb8
	add		r0, r5, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _08040f44
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08040ee6
	add		r1, #0x3f
_08040ee6:
	asr		r3, r1, #0x6
	ldr		r1, _08040f48
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08040f48
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r0, _08040f4c
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _08040f50
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08040f40:	.4byte 0x00008402
_08040f44:	.4byte 0x08101068
_08040f48:	.4byte 0x000003FF
_08040f4c:	.4byte 0x08040BCD
_08040f50:	.4byte 0xfffeffff
	thumb_func_end sub_08040ec0

	thumb_func_start sub_08040f54
sub_08040f54:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	ldr		r5, [r7, #0x54]
	mov		r6, #0x0
	mov		r0, #0xe
	mov		r8, r0
	ldr		r1, _08040f88
	mov		r9, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r2, r9
	mov		r10, r2
_08040f74:
	cmp		r6, #0x0
	beq		_08040f94
	ldr		r1, _08040f8c
	ldr		r2, _08040f90
	add		r0, r1, r2
	bl		sub_08049164
	add		r4, r0, #0x0
	b		_08040f96

.incbin "base.gba", 0x40F86, 0x2

_08040f88:	.4byte 0x08101068
_08040f8c:	.4byte 0x030031C4
_08040f90:	.4byte 0x0000070C

_08040f94:
	add		r4, r7, #0x0
_08040f96:
	add		r0, r4, #0x0
	ldr		r1, _08041010
	bl		sub_08040cb8
	str		r5, [r4, #0x54]
	mov		r0, #0x0
	strh	r0, [r4, #0x26]
	ldr		r1, [r5, #0x0]
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	mov		r2, r8
	mul		r2, r0
	add		r0, r2, #0x0
	add		r1, r1, r0
	str		r1, [r4, #0x0]
	ldr		r1, [r5, #0x4]
	mov		r2, r10
	ldr		r0, [r2, #0x0]
	mov		r2, r8
	mul		r2, r0
	add		r0, r2, #0x0
	sub		r1, r1, r0
	str		r1, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r1, _08041014
	lsl		r0, r6, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x74
	strb	r1, [r0, #0x0]
	ldr		r0, _08041018
	str		r0, [r4, #0x14]
	ldr		r0, _0804101c
	str		r0, [r4, #0x6c]
	add		r6, #0x1
	cmp		r6, #0x2
	ble		_08040f74
	ldr		r0, [r5, #0x48]
	ldr		r1, _08041020
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08041010:	.4byte 0x00008402
_08041014:	.4byte 0x08108714
_08041018:	.4byte 0x080412BD
_0804101c:	.4byte 0x080412dd
_08041020:	.4byte 0xfffeffff
	thumb_func_end sub_08040f54

	thumb_func_start sub_08041024
sub_08041024:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _080410a4
	bl		sub_08040cb8
	add		r0, r5, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _080410a8
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0804104a
	add		r1, #0x3f
_0804104a:
	asr		r3, r1, #0x6
	ldr		r1, _080410ac
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _080410ac
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r0, _080410b0
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _080410b4
	and		r0, r1
	str		r0, [r5, #0x48]
	mov		r0, #0xbe
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080410a4:	.4byte 0x00008403
_080410a8:	.4byte 0x08101068
_080410ac:	.4byte 0x000003FF
_080410b0:	.4byte 0x08040BCD
_080410b4:	.4byte 0xfffeffff
	thumb_func_end sub_08041024

	thumb_func_start sub_080410b8
sub_080410b8:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r0, r1, #0x0
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_080410c8
	ldr		r2, _080410fc
	add		r1, r1, r2
_080410c8:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_080410d4
	ldr		r3, _080410fc
	add		r2, r2, r3
_080410d4:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_080410e0
	ldr		r5, _080410fc
	add		r3, r3, r5
_080410e0:
	asr		r3, r3, #0x10
	bl		sub_0802c3d4
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_080410f6
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_080410f6:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_080410fc:	.4byte 0x0000FFFF
	thumb_func_end sub_080410b8

	thumb_func_start sub_08041100
sub_08041100:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r5, #0x0
	mov		r3, #0x0
	bl		sub_0802c750
	cmp		r0, #0x0
	beq		_0804111e
	add		r1, r4, #0x0
	add		r1, #0x4e
	mov		r0, #0x26
	b		_08041146
_0804111e:
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_08041128
	ldr		r0, _08041150
	add		r1, r1, r0
_08041128:
	lsr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_08041134
	ldr		r0, _08041150
	add		r2, r2, r0
_08041134:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	add		r0, r5, #0x0
	mov		r3, #0x0
	bl		sub_0802c490
	add		r1, r4, #0x0
	add		r1, #0x4e
_08041146:
	strb	r0, [r1, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4114E, 0x2

_08041150:	.4byte 0x0000FFFF
	thumb_func_end sub_08041100

	thumb_func_start sub_08041154
sub_08041154:
	add		r2, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	bne		_08041164
	ldr		r0, [r2, #0x8]
	cmp		r0, #0x0
	beq		_08041180
_08041164:
	add		r0, r2, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r3, r0, #0x0
	cmp		r1, #0x4
	bne		_08041176
	ldr		r0, [r2, #0x8]
	cmp		r0, #0x0
	beq		_08041180
_08041176:
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x2
	beq		_08041180
	mov		r0, #0x1
	b		_08041182
_08041180:
	mov		r0, #0x0
_08041182:
	bx		lr
	thumb_func_end sub_08041154

	thumb_func_start sub_08041184
sub_08041184:
	push	{ r4, lr }
	mov		r2, #0x5a
	add		r2, r2, r0
	mov		r12, r2
	mov		r3, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	mov		r4, r12
	strh	r2, [r4, #0x0]
	str		r1, [r0, #0x30]
	ldrh	r2, [r0, #0x34]
	ldr		r1, _080411ac
	and		r1, r2
	strh	r1, [r0, #0x34]
	str		r3, [r0, #0x18]
	ldr		r1, _080411b0
	str		r1, [r0, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080411ac:	.4byte 0x0000FFFD
_080411b0:	.4byte 0x0804123d
	thumb_func_end sub_08041184

	thumb_func_start sub_080411b4
sub_080411b4:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	beq		_080411d4
	mov		r0, #0x0
	str		r0, [r3, #0x14]
	ldr		r1, _080411d0
	add		r0, r2, r1
	add		r1, r3, #0x0
	bl		sub_080491c0
	b		_080411ee

_080411d0:	.4byte 0x0000070C

_080411d4:
	mov		r4, #0x5a
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r4, r3]
	str		r1, [r3, #0x30]
	ldrh	r1, [r3, #0x34]
	ldr		r0, _080411f4
	and		r0, r1
	strh	r0, [r3, #0x34]
	str		r2, [r3, #0x18]
	ldr		r0, _080411f8
	str		r0, [r3, #0x14]
_080411ee:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080411f4:	.4byte 0x0000FFFD
_080411f8:	.4byte 0x0804123D
	thumb_func_end sub_080411b4

	thumb_func_start sub_080411fc
sub_080411fc:
	push	{ lr }
	add		r3, r0, #0x0
	cmp		r2, #0x1
	beq		_0804122c
	cmp		r2, #0x1
	bgt		_0804120e
	cmp		r2, #0x0
	beq		_08041216
	b		_08041234
_0804120e:
	cmp		r2, #0x2
	beq		_08041224
	cmp		r2, #0x3
	bne		_08041234
_08041216:
	ldr		r0, [r3, #0x28]
	neg		r0, r0
	str		r0, [r3, #0x28]
	ldr		r0, [r3, #0x2c]
	neg		r0, r0
	str		r0, [r3, #0x2c]
	b		_08041234
_08041224:
	mov		r2, #0x2
	bl		sub_0803e314
	b		_08041236
_0804122c:
	mov		r2, #0x0
	bl		sub_0803e314
	b		_08041236
_08041234:
	mov		r0, #0x1
_08041236:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x4123A, 0x2
	push	{ r4, lr }
	add		r2, r0, #0x0
	ldr		r3, _08041270
	ldr		r1, [r2, #0x8]
	ldr		r0, [r2, #0x30]
	add		r1, r1, r0
	str		r1, [r2, #0x8]
	ldr		r4, _08041274
	add		r0, r0, r4
	str		r0, [r2, #0x30]
	cmp		r1, #0x0
	bge		_08041268
	mov		r0, #0x0
	str		r0, [r2, #0x8]
	str		r0, [r2, #0x30]
	str		r0, [r2, #0x14]
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r3, r1
	add		r1, r2, #0x0
	bl		sub_080491c0
_08041268:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4126E, 0x2

_08041270:	.4byte RunGameLogic_CallBack
_08041274:	.4byte 0xFFFFE600
	thumb_func_end sub_080411fc

	thumb_func_start sub_08041278
sub_08041278:
	push	{ r4, lr }
	ldr		r3, [r0, #0x54]
	ldr		r1, [r3, #0x48]
	ldr		r2, _080412b0
	and		r1, r2
	str		r1, [r3, #0x48]
	mov		r2, #0xd0
	lsl		r2, r2, #0x8
	mov		r1, #0x5a
	add		r1, r1, r0
	mov		r12, r1
	mov		r3, #0x0
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	mov		r4, r12
	strh	r1, [r4, #0x0]
	str		r2, [r0, #0x30]
	ldrh	r2, [r0, #0x34]
	ldr		r1, _080412b4
	and		r1, r2
	strh	r1, [r0, #0x34]
	str		r3, [r0, #0x18]
	ldr		r1, _080412b8
	str		r1, [r0, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x412AE, 0x2

_080412b0:	.4byte 0xfffeffff
_080412b4:	.4byte 0x0000FFFD
_080412b8:	.4byte 0x0804123D
	thumb_func_end sub_08041278

	thumb_func_start sub_080412bc
sub_080412bc:
	push	{ lr }
	add		r1, r0, #0x0
	add		r2, r1, #0x0
	add		r2, #0x74
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080412d2
	add		r0, r1, #0x0
	bl		sub_08040950
	b		_080412d6
_080412d2:
	sub		r0, #0x1
	strb	r0, [r2, #0x0]
_080412d6:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x412DA, 0x2
	push	{ r4, lr }
	add		r1, r0, #0x0
	ldr		r4, [r1, #0x54]
	ldr		r0, _08041308
	ldr		r2, [r4, #0x48]
	ldr		r3, _0804130c
	and		r2, r3
	str		r2, [r4, #0x48]
	mov		r2, #0xbe
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	ldrb	r2, [r4, #0x0]
	sub		r2, #0x1
	strb	r2, [r4, #0x0]
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_080491c0
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08041308:	.4byte RunGameLogic_CallBack
_0804130c:	.4byte 0xfffeffff
	thumb_func_end sub_080412bc

	thumb_func_start sub_08041310
sub_08041310:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r2, r1, #0x0
	ldr		r3, [r5, #0x54]
	ldr		r6, _080413c0
	add		r7, r6, #0x0
	add		r7, #0x24
	ldrh	r1, [r2, #0x10]
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r1
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_080413b8
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r4, r0
	beq		_080413b8
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r4, r0
	bne		_0804134a
	add		r0, r2, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_080413b8
_0804134a:
	ldr		r0, [r3, #0x48]
	ldr		r1, _080413c4
	and		r0, r1
	str		r0, [r3, #0x48]
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r5, #0x0
	bl		sub_08041184
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r4, r0
	bne		_080413b8
	ldr		r1, _080413c8
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080413b8
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_080413b8
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _080413cc
	ldr		r4, _080413d0
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
_080413b8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x413BE, 0x2

_080413c0:	.4byte RunGameLogic_CallBack
_080413c4:	.4byte 0xfffeffff
_080413c8:	.4byte 0x00000838
_080413cc:	.4byte 0x08124544
_080413d0:	.4byte 0x081245c8
	thumb_func_end sub_08041310

	thumb_func_start sub_080413d4
sub_080413d4:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r3, r1, #0x0
	ldr		r2, [r5, #0x54]
	ldr		r6, _0804148c
	add		r7, r6, #0x0
	add		r7, #0x24
	ldrh	r1, [r3, #0x10]
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r1
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_08041486
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r4, r0
	beq		_08041486
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r4, r0
	bne		_0804140e
	add		r0, r3, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_08041486
_0804140e:
	ldr		r0, [r2, #0x48]
	ldr		r1, _08041490
	and		r0, r1
	str		r0, [r2, #0x48]
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r2, r0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r5, #0x0
	bl		sub_08041184
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r4, r0
	bne		_08041486
	ldr		r1, _08041494
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08041486
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_08041486
	mov		r0, #0x7c
	bl		sub_0807073c
	ldr		r5, _08041498
	ldr		r4, _0804149c
	mov		r0, #0xf8
	lsl		r0, r0, #0x2
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
_08041486:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0804148c:	.4byte RunGameLogic_CallBack
_08041490:	.4byte 0xfffeffff
_08041494:	.4byte 0x00000838
_08041498:	.4byte 0x08124544
_0804149c:	.4byte 0x081245c8
	thumb_func_end sub_080413d4

	thumb_func_start sub_080414a0
sub_080414a0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	mov		r10, r6
	ldr		r0, [r6, #0x54]
	mov		r8, r0
	ldr		r5, _080415a0
	mov		r1, #0x24
	add		r1, r1, r5
	mov		r9, r1
	add		r1, r6, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	mov		r4, #0x0
	strh	r0, [r1, #0x0]
	ldrh	r0, [r6, #0x38]
	cmp		r0, #0x0
	beq		_080414d0
	sub		r0, #0x1
	strh	r0, [r6, #0x38]
_080414d0:
	ldr		r0, [r6, #0x0]
	ldr		r1, [r6, #0x28]
	add		r0, r0, r1
	str		r0, [r6, #0x0]
	ldr		r0, [r6, #0x4]
	ldr		r1, [r6, #0x2c]
	add		r0, r0, r1
	str		r0, [r6, #0x4]
	ldr		r0, [r6, #0x8]
	ldr		r1, [r6, #0x30]
	add		r0, r0, r1
	str		r0, [r6, #0x8]
	ldr		r0, _080415a4
	add		r1, r1, r0
	str		r1, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_080410b8
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	bgt		_080415f4
	str		r4, [r6, #0x8]
	str		r4, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_080410b8
	str		r4, [r6, #0x14]
	ldr		r1, _080415a8
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08041566
	mov		r0, r9
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0804152c
	mov		r2, #0x40
_0804152c:
	add		r7, r2, #0x0
	cmp		r7, #0x0
	beq		_08041566
	mov		r0, #0x7a
	bl		sub_0807073c
	ldr		r5, _080415ac
	ldr		r4, _080415b0
	mov		r0, #0xf4
	lsl		r0, r0, #0x2
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
	add		r2, r7, #0x0
	bl		sub_0807169c
_08041566:
	mov		r0, r10
	ldr		r1, _080415b4
	bl		sub_08041100
	mov		r2, #0x0
	add		r0, r6, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x80
	bne		_08041580
	mov		r2, #0x1
_08041580:
	cmp		r2, #0x0
	bne		_08041592
	mov		r0, #0x0
	add		r2, r1, #0x0
	cmp		r2, #0x26
	bne		_0804158e
	mov		r0, #0x1
_0804158e:
	cmp		r0, #0x0
	beq		_080415b8
_08041592:
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r6, #0x0
	bl		sub_08041184
	b		_0804160c

.incbin "base.gba", 0x4159E, 0x2

_080415a0:	.4byte RunGameLogic_CallBack
_080415a4:	.4byte 0xFFFFE600
_080415a8:	.4byte 0x00000838
_080415ac:	.4byte 0x08124544
_080415b0:	.4byte 0x081245c8
_080415b4:	.4byte 0x030031C4

_080415b8:
	mov		r3, #0x0
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080415d0
	mov		r0, #0x0
	cmp		r2, #0x26
	bne		_080415ca
	mov		r0, #0x1
_080415ca:
	cmp		r0, #0x0
	bne		_080415d0
	mov		r3, #0x1
_080415d0:
	cmp		r3, #0x0
	beq		_080415f4
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	ldr		r1, _080415ec
	and		r0, r1
	mov		r1, r8
	str		r0, [r1, #0x48]
	ldr		r0, _080415f0
	add		r0, r9
	add		r1, r6, #0x0
	bl		sub_080491c0
	b		_0804160c

_080415ec:	.4byte 0xfffeffff
_080415f0:	.4byte 0x0000070C

_080415f4:
	add		r0, r6, #0x0
	add		r0, #0x4c
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x10
	bne		_0804160c
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	ldr		r1, _0804161c
	and		r0, r1
	mov		r1, r8
	str		r0, [r1, #0x48]
_0804160c:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4161A, 0x2

_0804161c:	.4byte 0xfffeffff
	thumb_func_end sub_080414a0

	thumb_func_start sub_08041620
sub_08041620:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	str		r6, [sp, #0x0]
	ldr		r0, [r6, #0x54]
	mov		r8, r0
	ldr		r0, _080416b4
	add		r0, #0x24
	mov		r10, r0
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r0, r8
	mov		r1, #0x0
	mov		r9, r1
	mov		r2, r9
	strh	r2, [r0, #0x0]
	mov		r0, r9
	str		r0, [r6, #0x8]
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_080416c0
	mov		r0, r8
	bl		sub_080373bc
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r6, #0x26]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	str		r1, [r6, #0x8]
	ldr		r4, _080416b8
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08041678
	add		r1, #0x3f
_08041678:
	asr		r3, r1, #0x6
	ldr		r1, _080416bc
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r4
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	str		r0, [r6, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _080416bc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0x4
	str		r0, [r6, #0x2c]
	mov		r0, #0xd0
	lsl		r0, r0, #0x9
	str		r0, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r10
	bl		sub_080410b8
	b		_08041734

.incbin "base.gba", 0x416B2, 0x2

_080416b4:	.4byte RunGameLogic_CallBack
_080416b8:	.4byte 0x08101068
_080416bc:	.4byte 0x000003FF

_080416c0:
	mov		r0, r8
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r7, r0, #0x3
	ldr		r0, _080417c4
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	add		r0, #0x1
	mov		r2, r10
	ldrh	r1, [r2, #0x14]
	cmp		r7, r1
	blt		_080416da
	sub		r7, r7, r1
_080416da:
	cmp		r0, #0x3
	bne		_080416e0
	mov		r0, #0x0
_080416e0:
	lsl		r4, r0, #0x18
	lsr		r4, r4, #0x18
	mov		r0, r10
	add		r1, r7, #0x0
	add		r2, r4, #0x0
	bl		sub_0802c5d0
	add		r5, r0, #0x0
	mov		r0, r10
	add		r1, r7, #0x0
	add		r2, r4, #0x0
	bl		sub_0802c610
	add		r2, r0, #0x0
	mov		r0, r9
	strh	r0, [r6, #0x26]
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	str		r0, [r6, #0x8]
	ldr		r0, [r6, #0x0]
	lsl		r5, r5, #0x13
	sub		r0, r5, r0
	cmp		r0, #0x0
	bge		_08041712
	add		r0, #0x1f
_08041712:
	asr		r0, r0, #0x5
	str		r0, [r6, #0x28]
	ldr		r1, [r6, #0x4]
	lsl		r0, r2, #0x13
	sub		r0, r0, r1
	cmp		r0, #0x0
	bge		_08041722
	add		r0, #0x1f
_08041722:
	asr		r0, r0, #0x5
	str		r0, [r6, #0x2c]
	mov		r0, #0xd0
	lsl		r0, r0, #0x9
	str		r0, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r10
	bl		sub_080410b8
_08041734:
	ldr		r0, _080417c8
	str		r0, [r6, #0x18]
	mov		r0, #0x8
	mov		r1, #0x0
	strh	r0, [r6, #0x38]
	ldr		r0, [sp, #0x0]
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	orr		r0, r1
	mov		r2, r8
	str		r0, [r2, #0x48]
	ldr		r0, _080417cc
	ldr		r1, [sp, #0x0]
	str		r0, [r1, #0x14]
	ldr		r0, _080417d0
	add		r0, r10
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080417b4
	mov		r0, r10
	add		r1, r6, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0804177a
	mov		r2, #0x40
_0804177a:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_080417b4
	mov		r0, #0x7b
	bl		sub_0807073c
	ldr		r5, _080417d4
	ldr		r4, _080417d8
	mov		r2, #0xf6
	lsl		r2, r2, #0x2
	add		r4, r4, r2
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
_080417b4:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080417c4:	.4byte 0x00000191
_080417c8:	.4byte sub_08041310
_080417cc:	.4byte sub_080414a0
_080417d0:	.4byte 0x00000814
_080417d4:	.4byte 0x08124544
_080417d8:	.4byte 0x081245c8
	thumb_func_end sub_08041620

	thumb_func_start sub_080417dc
sub_080417dc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	add		r7, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r0, _08041830
	add		r0, #0x24
	mov		r8, r0
	mov		r9, r8
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	mov		r1, r8
	bl		sub_08041100
	mov		r2, #0x0
	add		r0, r4, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x80
	bne		_08041816
	mov		r2, #0x1
_08041816:
	cmp		r2, #0x0
	beq		_08041838
	ldr		r0, [r6, #0x48]
	ldr		r1, _08041834
	and		r0, r1
	str		r0, [r6, #0x48]
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r4, #0x0
	bl		sub_08041184
	b		_080418f4

.incbin "base.gba", 0x4182E, 0x2

_08041830:	.4byte RunGameLogic_CallBack
_08041834:	.4byte 0xfffeffff

_08041838:
	mov		r3, #0x0
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08041854
	mov		r2, #0x0
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x26
	bne		_0804184e
	mov		r2, #0x1
_0804184e:
	cmp		r2, #0x0
	bne		_08041854
	mov		r3, #0x1
_08041854:
	cmp		r3, #0x0
	bne		_0804186a
	mov		r5, #0x0
	add		r0, r7, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_08041866
	mov		r5, #0x1
_08041866:
	cmp		r5, #0x0
	beq		_08041888
_0804186a:
	ldr		r0, [r6, #0x48]
	ldr		r1, _08041880
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r0, _08041884
	add		r0, r8
	add		r1, r7, #0x0
	bl		sub_080491c0
	b		_080418f4

.incbin "base.gba", 0x4187E, 0x2

_08041880:	.4byte 0xfffeffff
_08041884:	.4byte 0x0000070C

_08041888:
	str		r5, [r4, #0x8]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_080410b8
	ldr		r0, _08041900
	str		r0, [r4, #0x18]
	str		r5, [r7, #0x14]
	ldr		r0, _08041904
	add		r0, r8
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080418f4
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_080466c4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_080418ba
	mov		r2, #0x40
_080418ba:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_080418f4
	mov		r0, #0x7a
	bl		sub_0807073c
	ldr		r5, _08041908
	ldr		r4, _0804190c
	mov		r0, #0xf4
	lsl		r0, r0, #0x2
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
_080418f4:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08041900:	.4byte sub_08041310
_08041904:	.4byte 0x00000814
_08041908:	.4byte 0x08124544
_0804190c:	.4byte 0x081245c8
	thumb_func_end sub_080417dc

	thumb_func_start sub_08041910
sub_08041910:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r4, [r5, #0x54]
	add		r7, r5, #0x0
	add		r1, r5, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _0804193c
	add		r0, r4, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08041940
	add		r0, r4, #0x0
	bl		sub_08037380
	b		_0804194e

_0804193c:	.4byte 0x08106e8c

_08041940:
	add		r1, r4, #0x0
	add		r1, #0x56
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
_0804194e:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r5, #0x26]
	ldr		r6, [r4, #0x0]
	ldr		r1, _080419b8
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08041964
	add		r1, #0x3f
_08041964:
	asr		r3, r1, #0x6
	ldr		r1, _080419bc
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r5, #0x0]
	ldr		r6, [r4, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _080419bc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r5, #0x4]
	ldr		r0, [r4, #0x8]
	str		r0, [r5, #0x8]
	add		r0, r4, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_08041154
	cmp		r0, #0x0
	beq		_080419c0
	ldrh	r0, [r7, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	b		_080419ca

_080419b8:	.4byte 0x08101068
_080419bc:	.4byte 0x000003FF

_080419c0:
	ldrh	r0, [r7, #0x34]
	ldr		r1, _080419f8
	and		r1, r0
	ldr		r0, _080419fc
	and		r1, r0
_080419ca:
	strh	r1, [r7, #0x34]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08041a00
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r2, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r2
	cmp		r0, #0x0
	bne		_08041a40
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r2
	cmp		r0, #0x0
	bne		_08041a32
	add		r0, r5, #0x0
	bl		sub_080417dc
	b		_08041a40

_080419f8:	.4byte 0x0000FFFE
_080419fc:	.4byte 0x0000FFFD

_08041a00:
	add		r0, r5, #0x0
	add		r0, #0x4c
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0xf3
	ble		_08041a1a
	mov		r0, #0xc8
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfe
	and		r0, r1
	strb	r0, [r2, #0x0]
_08041a1a:
	mov		r1, #0xc8
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrb	r2, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r2
	cmp		r0, #0x0
	bne		_08041a40
	mov		r0, #0x2
	and		r0, r2
	cmp		r0, #0x0
	bne		_08041a3a
_08041a32:
	add		r0, r5, #0x0
	bl		sub_08041620
	b		_08041a40
_08041a3a:
	add		r0, r5, #0x0
	bl		sub_080417dc
_08041a40:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41A46, 0x2
	thumb_func_end sub_08041910

	thumb_func_start sub_08041a48
sub_08041a48:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_080290c0
	mov		r2, #0x0
	mov		r1, #0x0
	strh	r4, [r5, #0x10]
	mov		r0, #0x4
	strb	r0, [r5, #0xe]
	strb	r0, [r5, #0xd]
	strb	r0, [r5, #0xc]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strb	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x8
	strh	r1, [r0, #0x0]
	ldr		r0, _08041a80
	str		r0, [r5, #0x48]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08041a80:	.4byte 0x08096568
	thumb_func_end sub_08041a48

	thumb_func_start sub_08041a84
sub_08041a84:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r1, _08041b10
	bl		sub_08041a48
	add		r0, r6, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r7, [r6, #0x0]
	ldr		r1, _08041b14
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08041aae
	add		r1, #0x3f
_08041aae:
	asr		r3, r1, #0x6
	ldr		r1, _08041b18
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r7, r0
	str		r0, [r4, #0x0]
	ldr		r4, [r6, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08041b18
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r4, r0
	str		r0, [r5, #0x4]
	ldr		r0, [r6, #0x8]
	str		r0, [r5, #0x8]
	add		r0, r6, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r0, _08041b1c
	str		r0, [r5, #0x14]
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	ldr		r0, _08041b20
	strh	r0, [r1, #0x0]
	ldrh	r0, [r5, #0x34]
	mov		r1, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r5, #0x34]
	ldr		r0, _08041b24
	str		r0, [r5, #0x18]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08041b10:	.4byte 0x00008001
_08041b14:	.4byte 0x08101068
_08041b18:	.4byte 0x000003FF
_08041b1c:	.4byte sub_08041910
_08041b20:	.4byte 0x00001005
_08041b24:	.4byte sub_080413d4
	thumb_func_end sub_08041a84

	thumb_func_start sub_08041b28
sub_08041b28:
	bx		lr

.incbin "base.gba", 0x41B2A, 0x2
	thumb_func_end sub_08041b28

	thumb_func_start sub_08041b2c
sub_08041b2c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r2, _08041bb4
	add		r1, r4, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x1d
	ble		_08041b56
	mov		r0, #0x0
	str		r0, [r4, #0x14]
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	add		r1, r4, #0x0
	bl		sub_080491c0
_08041b56:
	add		r0, r5, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _08041bb8
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08041b70
	add		r1, #0x3f
_08041b70:
	asr		r3, r1, #0x6
	ldr		r1, _08041bbc
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r7
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08041bbc
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r6, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r5, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r5, #0x0
	add		r0, #0x36
	ldrb	r1, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08041bb4:	.4byte RunGameLogic_CallBack
_08041bb8:	.4byte 0x08101068
_08041bbc:	.4byte 0x000003FF
	thumb_func_end sub_08041b2c

	thumb_func_start sub_08041bc0
sub_08041bc0:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_080290c0
	mov		r2, #0x0
	mov		r1, #0x0
	strh	r4, [r5, #0x10]
	mov		r0, #0x8
	strb	r0, [r5, #0xe]
	strb	r0, [r5, #0xd]
	strb	r0, [r5, #0xc]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strb	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x8
	strh	r1, [r0, #0x0]
	str		r1, [r5, #0x48]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41BF6, 0x2
	thumb_func_end sub_08041bc0

	thumb_func_start sub_08041bf8
sub_08041bf8:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r4, r5, #0x0
	ldr		r6, [r5, #0x54]
	ldr		r1, _08041c78
	bl		sub_08041bc0
	add		r0, r6, #0x0
	bl		sub_08037380
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r5, #0x26]
	ldr		r7, [r6, #0x0]
	ldr		r1, _08041c7c
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08041c22
	add		r1, #0x3f
_08041c22:
	asr		r3, r1, #0x6
	ldr		r1, _08041c80
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r7, r0
	str		r0, [r5, #0x0]
	ldr		r5, [r6, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08041c80
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	sub		r0, r5, r0
	str		r0, [r4, #0x4]
	ldr		r0, [r6, #0x8]
	str		r0, [r4, #0x8]
	add		r0, r6, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x36
	strb	r0, [r1, #0x0]
	ldr		r0, _08041c84
	str		r0, [r4, #0x14]
	mov		r0, #0x0
	str		r0, [r4, #0x18]
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r4, #0x34]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41C76, 0x2

_08041c78:	.4byte 0x00008003
_08041c7c:	.4byte 0x08101068
_08041c80:	.4byte 0x000003FF
_08041c84:	.4byte 0x08041B2D
	thumb_func_end sub_08041bf8

	thumb_func_start sub_08041c88
sub_08041c88:
	push	{ r4, lr }
	ldr		r2, [r0, #0x54]
	ldr		r1, _08041ca8
	strh	r1, [r0, #0x10]
	add		r2, #0xb2
	ldrh	r3, [r2, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x8
	add		r1, r4, #0x0
	orr		r1, r3
	strh	r1, [r2, #0x0]
	bl		sub_08041bf8
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08041ca8:	.4byte 0x00008003
	thumb_func_end sub_08041c88

	thumb_func_start sub_08041cac
sub_08041cac:
	push	{ r4, lr }
	ldr		r2, [r0, #0x54]
	add		r2, #0xb2
	ldrh	r3, [r2, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x8
	add		r1, r4, #0x0
	orr		r1, r3
	strh	r1, [r2, #0x0]
	mov		r1, #0x96
	lsl		r1, r1, #0x2
	str		r1, [r0, #0x70]
	ldr		r1, _08041cd0
	str		r1, [r0, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41CCE, 0x2

_08041cd0:	.4byte sub_08041d04
	thumb_func_end sub_08041cac

	thumb_func_start sub_08041cd4
sub_08041cd4:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _08041d00
	ldr		r3, [r1, #0x54]
	add		r3, #0xb2
	ldrh	r4, [r3, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	add		r2, r5, #0x0
	mov		r5, #0x0
	orr		r2, r4
	strh	r2, [r3, #0x0]
	str		r5, [r1, #0x14]
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_080491c0
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41CFE, 0x2

_08041d00:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08041cd4

	thumb_func_start sub_08041d04
sub_08041d04:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, _08041d30
	ldr		r1, [r4, #0x54]
	ldr		r0, [r4, #0x70]
	sub		r0, #0x1
	str		r0, [r4, #0x70]
	cmp		r0, #0x0
	bgt		_08041d2a
	add		r0, r1, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	add		r1, r4, #0x0
	bl		sub_080491c0
_08041d2a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08041d30:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08041d04

	thumb_func_start sub_08041d34
sub_08041d34:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _08041d60
	ldr		r3, [r1, #0x54]
	add		r3, #0xb2
	ldrh	r4, [r3, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	add		r2, r5, #0x0
	mov		r5, #0x0
	orr		r2, r4
	strh	r2, [r3, #0x0]
	str		r5, [r1, #0x14]
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_080491c0
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41D5E, 0x2

_08041d60:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08041d34

	thumb_func_start sub_08041d64
sub_08041d64:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _08041d90
	ldr		r3, [r1, #0x54]
	add		r3, #0xb2
	ldrh	r4, [r3, #0x0]
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	add		r2, r5, #0x0
	mov		r5, #0x0
	orr		r2, r4
	strh	r2, [r3, #0x0]
	str		r5, [r1, #0x14]
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_080491c0
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41D8E, 0x2

_08041d90:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08041d64

	thumb_func_start sub_08041d94
sub_08041d94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r9, r0
	ldr		r0, [r0, #0x54]
	mov		r8, r0
	ldr		r4, _08041ea4
	mov		r1, #0x24
	add		r1, r1, r4
	mov		r10, r1
	ldr		r2, _08041ea8
	add		r5, r4, r2
	ldr		r0, [r5, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08041dc8
	mov		r0, #0x4
	bl		sub_0804bc78
	mov		r0, #0x7e
	bl		sub_0807073c
_08041dc8:
	mov		r2, r8
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08041eac
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r3, _08041eb0
	add		r1, r4, r3
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r0, _08041eb4
	add		r1, r4, r0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r7, #0x0
	ldr		r1, _08041eb8
	add		r0, r4, r1
	ldrb	r2, [r0, #0x0]
	cmp		r7, r2
	bge		_08041e88
_08041df2:
	lsl		r0, r7, #0x2
	ldr		r3, _08041ea4
	ldr		r2, _08041ebc
	add		r1, r3, r2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	cmp		r4, r8
	beq		_08041e7e
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r6, [r0, r3]
	cmp		r6, #0x0
	bne		_08041e7e
	add		r5, r4, #0x0
	add		r5, #0x78
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x2
	beq		_08041e7e
	cmp		r0, #0x3
	beq		_08041e7e
	cmp		r0, #0x5
	beq		_08041e7e
	cmp		r0, #0x6
	beq		_08041e7e
	cmp		r0, #0x7
	beq		_08041e7e
	ldr		r1, _08041ec0
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	bne		_08041e3c
	ldr		r0, _08041ec4
	ldr		r1, _08041ec8
	mov		r2, #0x0
	bl		sub_08029d24
	str		r4, [r0, #0x54]
_08041e3c:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x2
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xb6
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	strh	r0, [r1, #0x0]
	sub		r2, #0x40
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x1
	bne		_08041e6c
	add		r0, r4, #0x0
	add		r0, #0xbc
	str		r6, [r0, #0x0]
_08041e6c:
	add		r1, r4, #0x0
	add		r1, #0x68
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	mov		r1, r10
	bl		sub_0803ccc8
_08041e7e:
	add		r7, #0x1
	ldr		r0, _08041ecc
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	blt		_08041df2
_08041e88:
	mov		r0, #0x0
	mov		r1, r9
	str		r0, [r1, #0x14]
	ldr		r0, _08041ed0
	add		r0, r10
	bl		sub_080491c0
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08041ea4:	.4byte RunGameLogic_CallBack
_08041ea8:	.4byte 0x00000838
_08041eac:	.4byte 0x0000FFBF
_08041eb0:	.4byte 0x00000C82
_08041eb4:	.4byte 0x0000080D
_08041eb8:	.4byte 0x00000814
_08041ebc:	.4byte 0x00000818
_08041ec0:	.4byte 0x030039D8
_08041ec4:	.4byte 0x08041f15
_08041ec8:	.4byte 0x08108720
_08041ecc:	.4byte 0x030039B4
_08041ed0:	.4byte 0x0000070C
	thumb_func_end sub_08041d94

	thumb_func_start sub_08041ed4
sub_08041ed4:
	push	{ r4, r5, lr }
	ldr		r0, _08041ef8
	ldr		r1, _08041efc
	add		r5, r0, r1
	ldrh	r4, [r5, #0x0]
	cmp		r4, #0x0
	beq		_08041ef0
	cmp		r4, #0x1
	bne		_08041eec
	mov		r0, #0x4
	bl		sub_0804bdb0
_08041eec:
	sub		r4, #0x1
	strh	r4, [r5, #0x0]
_08041ef0:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x41EF6, 0x2

_08041ef8:	.4byte RunGameLogic_CallBack
_08041efc:	.4byte 0x00000C82

.incbin "base.gba", 0x41F00, 0x14
	mov		r1, #0x0
	strh	r1, [r0, #0x10]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	strh	r1, [r0, #0x24]
	ldrh	r2, [r0, #0x34]
	mov		r1, #0x1
	orr		r1, r2
	strh	r1, [r0, #0x34]
	ldr		r2, [r0, #0x54]
	mov		r3, #0x20
	ldrsh	r1, [r2, r3]
	strh	r1, [r0, #0x20]
	mov		r3, #0x22
	ldrsh	r1, [r2, r3]
	strh	r1, [r0, #0x22]
	bx		lr

.incbin "base.gba", 0x41F36, 0x9A
	thumb_func_end sub_08041ed4

	thumb_func_start sub_08041fd0
sub_08041fd0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	ldr		r4, [r6, #0x54]
	ldr		r7, _0804207c
	mov		r0, #0x24
	add		r0, r0, r7
	mov		r8, r0
	add		r0, r4, #0x0
	add		r0, #0xac
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r4, #0x48]
	add		r1, r3, #0x0
	and		r0, r1
	mov		r1, #0xd2
	cmp		r0, #0x0
	beq		_0804200c
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
_0804200c:
	add		r0, r4, #0x0
	add		r0, #0x6a
	strh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x2
	bl		sub_08037358
	add		r1, r4, #0x0
	add		r1, #0x66
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x0
	beq		_08042038
	strh	r5, [r1, #0x0]
	ldr		r3, _08042080
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08042038
	mov		r0, #0x8
	bl		sub_0804bdb0
_08042038:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042054
	add		r2, r4, #0x0
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x6
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08042054:
	ldr		r0, _0804207c
	ldr		r1, _08042080
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08042066
	mov		r0, #0x10
	bl		sub_0804bc78
_08042066:
	ldr		r0, _08042084
	add		r0, r8
	add		r1, r6, #0x0
	bl		sub_080491c0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4207A, 0x2

_0804207c:	.4byte RunGameLogic_CallBack
_08042080:	.4byte 0x00000838
_08042084:	.4byte 0x0000070C
	thumb_func_end sub_08041fd0

	thumb_func_start sub_08042088
sub_08042088:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r8, r0
	ldr		r4, _080420fc
	mov		r0, #0x24
	add		r0, r0, r4
	mov		r9, r0
	mov		r1, r8
	ldr		r6, [r1, #0x54]
	mov		r5, #0x0
	add		r0, r6, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _08042100
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_080420c8
	mov		r0, #0x81
	bl		sub_0807073c
	mov		r0, #0x8
	bl		sub_0804bc78
_080420c8:
	mov		r7, #0x0
	ldr		r1, _08042104
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r5, r0
	bge		_08042160
_080420d4:
	lsl		r1, r7, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r9
	bl		sub_08044894
	add		r4, r0, #0x0
	cmp		r6, r4
	beq		_08042154
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r5, [r0, #0x0]
	cmp		r5, #0x0
	blt		_08042112
	cmp		r5, #0x2
	ble		_0804210c
	ldr		r0, _08042108
	cmp		r5, r0
	beq		_08042110
	b		_08042112

_080420fc:	.4byte RunGameLogic_CallBack
_08042100:	.4byte 0x00000838
_08042104:	.4byte 0x00000815
_08042108:	.4byte 0x0000100E

_0804210c:
	mov		r5, #0x0
	b		_08042154
_08042110:
	ldr		r5, _08042128
_08042112:
	ldr		r0, _0804212c
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_08042134
	add		r1, r5, #0x0
	ldr		r0, _08042130
	bl		sub_08048af8
	b		_08042140

.incbin "base.gba", 0x42126, 0x2

_08042128:	.4byte 0x00001009
_0804212c:	.4byte 0x00000814
_08042130:	.4byte 0x0000100B

_08042134:
	cmp		r4, r0
	bne		_08042140
	add		r0, r5, #0x0
	mov		r1, #0x2
	bl		sub_08048af8
_08042140:
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_080373dc
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_080373dc
	cmp		r5, #0x0
	bne		_08042176
_08042154:
	add		r7, #0x1
	ldr		r0, _080421a4
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	blt		_080420d4
_08042160:
	cmp		r5, #0x0
	bne		_08042176
	ldr		r0, _080421a8
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_08042176
	ldr		r0, _080421ac
	mov		r1, #0x0
	bl		sub_08048af8
_08042176:
	mov		r0, r9
	mov		r1, #0x0
	bl		sub_08044894
	add		r4, r0, #0x0
	cmp		r6, r4
	beq		_080421bc
	mov		r0, r8
	str		r4, [r0, #0x54]
	ldrh	r1, [r0, #0x34]
	ldr		r0, _080421b0
	and		r0, r1
	mov		r2, #0x0
	ldr		r1, _080421b4
	and		r0, r1
	mov		r1, r8
	strh	r0, [r1, #0x34]
	mov		r0, r8
	add		r0, #0x70
	strh	r2, [r0, #0x0]
	ldr		r0, _080421b8
	str		r0, [r1, #0x14]
	b		_080421c6

_080421a4:	.4byte 0x000007F1
_080421a8:	.4byte 0x00000814
_080421ac:	.4byte 0x0000100B
_080421b0:	.4byte 0x0000FFFD
_080421b4:	.4byte 0x0000FFFE
_080421b8:	.4byte sub_08042260

_080421bc:
	ldr		r0, _080421d4
	add		r0, r9
	mov		r1, r8
	bl		sub_080491c0
_080421c6:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x421D2, 0x2

_080421d4:	.4byte 0x0000070C
	thumb_func_end sub_08042088

	thumb_func_start sub_080421d8
sub_080421d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r3, r0, #0x0
	ldr		r6, [r3, #0x54]
	ldr		r0, [r6, #0x0]
	mov		r12, r0
	ldr		r1, _08042258
	mov		r8, r1
	mov		r7, #0x26
	ldrsh	r2, [r3, r7]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_080421f8
	add		r0, #0x3f
_080421f8:
	asr		r5, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r5
	ldr		r1, _0804225c
	mov		r9, r1
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r1, [r0, #0x0]
	add		r4, r3, #0x0
	add		r4, #0x74
	mov		r7, #0x0
	ldrsh	r0, [r4, r7]
	mul		r1, r0
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	cmp		r0, #0x0
	bge		_08042220
	add		r0, #0xf
_08042220:
	asr		r0, r0, #0x4
	add		r0, r12
	str		r0, [r3, #0x0]
	ldr		r6, [r6, #0x4]
	add		r0, r5, #0x0
	mov		r1, r9
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r1, [r0, #0x0]
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	mul		r1, r0
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	cmp		r0, #0x0
	bge		_08042244
	add		r0, #0xf
_08042244:
	asr		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r3, #0x4]
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x42256, 0x2

_08042258:	.4byte 0x08101068
_0804225c:	.4byte 0x000003FF
	thumb_func_end sub_080421d8

	thumb_func_start sub_08042260
sub_08042260:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	ldr		r1, _08042290
	mov		r0, #0x24
	add		r0, r0, r1
	mov		r8, r0
	ldr		r7, [r4, #0x54]
	add		r6, r4, #0x0
	add		r0, r6, #0x0
	add		r0, #0x70
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	add		r2, r1, #0x0
	cmp		r0, #0x7
	bls		_08042286
	b		_08042602
_08042286:
	lsl		r0, r0, #0x2
	ldr		r1, _08042294
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08042290:	.4byte RunGameLogic_CallBack
_08042294:	.4byte 0x08042298
_08042298:	.4byte 0x080422b8

.incbin "base.gba", 0x4229C, 0x1C
	thumb_func_end sub_08042260


.incbin "base.gba", 0x422B8, 0x34A

_08042602:

.incbin "base.gba", 0x42602, 0x1E
	thumb_func_start sub_08042620
sub_08042620:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r0, _08042658
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_08049164
	add		r4, r0, #0x0
	bl		sub_0803d1c8
	str		r5, [r4, #0x54]
	ldrh	r1, [r4, #0x34]
	ldr		r0, _0804265c
	and		r0, r1
	mov		r2, #0x0
	ldr		r1, _08042660
	and		r0, r1
	strh	r0, [r4, #0x34]
	add		r0, r4, #0x0
	add		r0, #0x70
	strh	r2, [r0, #0x0]
	ldr		r0, _08042664
	str		r0, [r4, #0x14]
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_08042658:	.4byte RunGameLogic_CallBack
_0804265c:	.4byte 0x0000FFFD
_08042660:	.4byte 0x0000FFFE
_08042664:	.4byte 0x08042261
	thumb_func_end sub_08042620

	thumb_func_start sub_08042668
sub_08042668:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	mov		r0, #0xdc
	lsl		r0, r0, #0x3
	add		r5, r4, r0
	ldr		r1, _08042708
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r5, #0x0
	bl		sub_08027188
	ldr		r0, _0804270c
	add		r1, r4, r0
	mov		r6, #0x0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	ldr		r0, _08042710
	add		r1, r4, r0
	mov		r2, #0x0
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r0, _08042714
	add		r1, r4, r0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	ldr		r1, _08042718
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	ldr		r1, _0804271c
	add		r0, r4, r1
	str		r6, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_080447f4
	bl		sub_0800ec10
	ldr		r0, _08042720
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x80
	orr		r0, r1
	mov		r1, #0xbf
	and		r0, r1
	strb	r0, [r2, #0x0]
	ldr		r1, _08042724
	add		r0, r4, r1
	add		r1, r5, #0x0
	mov		r2, #0x10
	bl		sub_08049108
	ldr		r1, _08042728
	add		r0, r4, r1
	add		r1, r5, #0x0
	mov		r2, #0x10
	bl		sub_08049108
	ldr		r1, _0804272c
	add		r0, r4, r1
	add		r1, r5, #0x0
	bl		sub_08054e58
	ldr		r1, _08042730
	add		r0, r4, r1
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_08049108
	mov		r0, #0xc7
	lsl		r0, r0, #0x4
	add		r1, r4, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _08042734
	add		r4, r4, r1
	str		r6, [r4, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08042708:	.4byte 0x0202A400
_0804270c:	.4byte 0x000007D7
_08042710:	.4byte 0x000007DA
_08042714:	.4byte 0x000007DC
_08042718:	.4byte 0x000007E9
_0804271c:	.4byte 0x00000BE4
_08042720:	.4byte 0x000007D4
_08042724:	.4byte 0x0000070C
_08042728:	.4byte 0x0000071C
_0804272c:	.4byte 0x0000072C
_08042730:	.4byte 0x000006FC
_08042734:	.4byte 0x00000C88
	thumb_func_end sub_08042668

	thumb_func_start sub_08042738
sub_08042738:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r5, r0, #0x0
	bl		sub_08029f34
	ldr		r1, _0804278c
	ldr		r2, _08042790
	ldr		r3, _08042794
	bl		sub_08029ee4
	ldr		r4, _08042798
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x28
	bl		_CallHardwareSetCpuFast
	add		r0, r5, #0x0
	bl		sub_080485cc
	add		r0, r5, #0x0
	bl		sub_08043048
	ldr		r1, [r5, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080427bc
	mov		r0, #0x2
	and		r1, r0
	cmp		r1, #0x0
	beq		_080427a0
	ldr		r1, _0804279c
	b		_080427be

.incbin "base.gba", 0x4278A, 0x2

_0804278c:	.4byte 0x08082868
_08042790:	.4byte 0x06012000
_08042794:	.4byte 0x80001000
_08042798:	.4byte 0x080827a8
_0804279c:	.4byte sub_08044afc

_080427a0:
	add		r0, r5, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _080427b4
	cmp		r0, #0xe
	bne		_080427be
	ldr		r1, _080427b8
	b		_080427be

_080427b4:	.4byte 0x08044a61
_080427b8:	.4byte 0x08044aa9

_080427bc:
	ldr		r1, _08042824
_080427be:
	mov		r2, #0xfa
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	bl		_UpdateGame
	add		r0, r5, #0x0
	bl		sub_0804cca4
	bl		_UpdateGame
	add		r0, r5, #0x0
	bl		sub_08045aec
	ldr		r3, _08042828
	add		r2, r5, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	ldr		r0, _0804282c
	add		r0, r5, r0
	str		r0, [sp, #0x10]
	ldr		r1, _08042830
	mov		r2, #0x0
	add		r0, r1, #0x0
	add		r0, #0x1c
_080427f8:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	cmp		r0, r1
	bge		_080427f8
	ldr		r1, _08042834
	add		r4, r5, r1
	ldrh	r2, [r4, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bne		_08042816
	b		_08042930
_08042816:
	cmp		r1, r0
	bgt		_08042838
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0804284e
	b		_08042b18

_08042824:	.4byte sub_080449d8
_08042828:	.4byte 0x000007D4
_0804282c:	.4byte 0x00000C88
_08042830:	.4byte 0x03005FE0
_08042834:	.4byte 0x000007DA

_08042838:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_08042842
	b		_08042aac
_08042842:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	bne		_0804284c
	b		_08042a74
_0804284c:
	b		_08042b18
_0804284e:
	add		r0, r5, #0x0
	bl		sub_080449a4
	ldr		r2, [sp, #0x10]
	ldr		r0, [r2, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_080428a4
	mov		r1, #0x6
	ldr		r3, _08042884
	add		r0, r5, r3
	str		r1, [r0, #0x0]
	ldr		r0, [sp, #0x10]
	ldr		r1, [r0, #0x0]
	and		r2, r1
	cmp		r2, #0x0
	beq		_0804288c
	mov		r0, #0x10
	and		r1, r0
	cmp		r1, #0x0
	beq		_0804288c
	ldr		r2, _08042888
	add		r1, r5, r2
	mov		r0, #0x85
	lsl		r0, r0, #0x8
	b		_08042894

_08042884:	.4byte 0x00000BE4
_08042888:	.4byte 0x000007E6

_0804288c:
	ldr		r3, _080428a0
	add		r1, r5, r3
	mov		r0, #0x83
	lsl		r0, r0, #0x8
_08042894:
	strh	r0, [r1, #0x0]
	add		r0, r5, #0x0
	bl		sub_08048d30
	b		_08042916

.incbin "base.gba", 0x4289E, 0x2

_080428a0:	.4byte 0x000007E6

_080428a4:
	ldr		r1, _080428c0
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_080428c8
	ldr		r2, _080428c4
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	b		_08042916

.incbin "base.gba", 0x428BE, 0x2

_080428c0:	.4byte 0x000007DA
_080428c4:	.4byte 0x00000BE4

_080428c8:
	mov		r1, #0x6
	ldr		r3, _08042900
	add		r0, r5, r3
	str		r1, [r0, #0x0]
	ldr		r0, _08042904
	ldrh	r0, [r0, #0xe]
	mov		r1, #0x3
	cmp		r0, #0x0
	beq		_080428dc
	mov		r1, #0x5
_080428dc:
	lsl		r0, r1, #0x8
	ldr		r2, _08042908
	add		r1, r2, #0x0
	add		r0, r0, r1
	ldr		r3, _0804290c
	add		r1, r5, r3
	strh	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042910
	add		r0, r5, #0x0
	bl		sub_080483a8
	b		_08042916

.incbin "base.gba", 0x428FE, 0x2

_08042900:	.4byte 0x00000BE4
_08042904:	.4byte 0x03002FE0
_08042908:	.4byte 0xFFFF8000
_0804290c:	.4byte 0x000007E6

_08042910:
	add		r0, r5, #0x0
	bl		sub_08048d90
_08042916:
	ldr		r0, _08042928
	add		r1, r5, r0
	mov		r2, #0x0
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	ldr		r1, _0804292c
	add		r0, r5, r1
	strh	r2, [r0, #0x0]
	b		_08042b18

_08042928:	.4byte 0x000007F1
_0804292c:	.4byte 0x00000BEE

_08042930:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r2
	cmp		r0, #0x0
	beq		_08042942
	add		r0, r5, #0x0
	bl		sub_080483a8
	b		_0804294e
_08042942:
	add		r0, r5, #0x0
	bl		sub_08048d30
	add		r0, r5, #0x0
	bl		sub_08048d90
_0804294e:
	mov		r0, #0x6
	ldr		r3, _08042a3c
	add		r2, r5, r3
	str		r0, [r2, #0x0]
	ldr		r0, _08042a40
	add		r1, r5, r0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	ldr		r1, _08042a44
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	mov		r10, r2
	cmp		r0, #0x0
	bne		_08042a06
	ldr		r2, [sp, #0x10]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	blt		_08042a06
	mov		r3, #0x0
	mov		r9, r3
	mov		r6, #0x0
	mov		r0, #0xbf
	lsl		r0, r0, #0x4
	add		r7, r5, r0
_08042984:
	lsl		r0, r6, #0xc
	ldr		r1, _08042a48
	add		r4, r0, r1
	add		r0, r4, #0x0
	add		r0, #0x8
	ldrh	r2, [r0, #0x2]
	ldrb	r3, [r0, #0x9]
	ldrb	r1, [r4, #0x8]
	mov		r8, r1
	cmp		r6, #0x0
	bne		_080429aa
	mov		r1, #0x0
	ldr		r0, _08042a4c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080429a6
	mov		r1, #0x1
_080429a6:
	cmp		r1, #0x0
	beq		_080429f0
_080429aa:
	cmp		r6, #0x1
	bne		_080429be
	mov		r1, #0x0
	ldr		r0, _08042a4c
	ldrh	r0, [r0, #0x2]
	cmp		r0, #0x0
	bne		_080429ba
	mov		r1, #0x1
_080429ba:
	cmp		r1, #0x0
	beq		_080429f0
_080429be:
	cmp		r2, #0x0
	beq		_080429f0
	ldr		r2, _08042a50
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, r3
	bne		_080429f0
	mov		r3, #0x1
	mov		r9, r3
	ldr		r0, _08042a40
	add		r1, r5, r0
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	mov		r1, r8
	mov		r2, #0x1
	bl		sub_08044818
	add		r0, r7, #0x0
	add		r7, #0x18
	add		r1, r4, #0x0
	add		r1, #0x28
	bl		sub_0802a300
_080429f0:
	add		r6, #0x1
	cmp		r6, #0x1
	ble		_08042984
	mov		r1, r9
	cmp		r1, #0x0
	beq		_08042a06
	ldr		r2, _08042a44
	add		r1, r5, r2
	mov		r0, #0x88
	lsl		r0, r0, #0x6
	strh	r0, [r1, #0x0]
_08042a06:
	ldr		r3, _08042a54
	add		r0, r5, r3
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r1, [sp, #0x10]
	ldr		r0, [r1, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_08042a6c
	mov		r0, #0x6
	mov		r3, r10
	str		r0, [r3, #0x0]
	ldr		r1, [r1, #0x0]
	and		r2, r1
	cmp		r2, #0x0
	beq		_08042a5c
	mov		r0, #0x10
	and		r1, r0
	cmp		r1, #0x0
	beq		_08042a5c
	ldr		r0, _08042a58
	add		r1, r5, r0
	mov		r0, #0x85
	lsl		r0, r0, #0x8
	strh	r0, [r1, #0x0]
	b		_08042b18

_08042a3c:	.4byte 0x00000BE4
_08042a40:	.4byte 0x000007F1
_08042a44:	.4byte 0x000007DA
_08042a48:	.4byte 0x02020400
_08042a4c:	.4byte 0x03002FE0
_08042a50:	.4byte 0x000007DD
_08042a54:	.4byte 0x00000BEE
_08042a58:	.4byte 0x000007E6

_08042a5c:
	ldr		r2, _08042a68
	add		r1, r5, r2
	mov		r0, #0x83
	lsl		r0, r0, #0x8
	strh	r0, [r1, #0x0]
	b		_08042b18

_08042a68:	.4byte 0x000007E6

_08042a6c:
	add		r0, r5, #0x0
	bl		sub_080449a4
	b		_08042b18
_08042a74:
	mov		r1, #0x6
	ldr		r3, _08042a9c
	add		r0, r5, r3
	str		r1, [r0, #0x0]
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r1, [r0, #0x0]
	ldr		r2, _08042aa0
	add		r0, r5, r2
	mov		r2, #0x0
	strb	r1, [r0, #0x0]
	add		r3, #0xa
	add		r0, r5, r3
	strh	r2, [r0, #0x0]
	ldr		r0, _08042aa4
	add		r1, r5, r0
	ldr		r0, _08042aa8
	strh	r0, [r1, #0x0]
	b		_08042b18

_08042a9c:	.4byte 0x00000BE4
_08042aa0:	.4byte 0x000007F1
_08042aa4:	.4byte 0x000007E6
_08042aa8:	.4byte 0x0000FFFF

_08042aac:
	mov		r1, #0x6
	ldr		r2, _08042b64
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	ldr		r1, _08042b68
	add		r6, r5, r1
	mov		r1, #0x0
	strb	r0, [r6, #0x0]
	add		r2, #0xa
	add		r0, r5, r2
	strh	r1, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_080449a4
	ldr		r2, _08042b6c
	ldrh	r0, [r2, #0x6]
	mov		r1, #0x3
	cmp		r0, #0x0
	beq		_08042adc
	mov		r1, #0x5
_08042adc:
	lsl		r0, r1, #0x8
	ldr		r3, _08042b70
	add		r1, r3, #0x0
	add		r0, r0, r1
	ldr		r3, _08042b74
	add		r1, r5, r3
	strh	r0, [r1, #0x0]
	mov		r1, #0x0
	ldrh	r0, [r2, #0xa]
	cmp		r0, #0x0
	bne		_08042af4
	mov		r1, #0x1
_08042af4:
	cmp		r1, #0x0
	beq		_08042b18
	mov		r4, #0x0
	ldrb	r6, [r6, #0x0]
	cmp		r4, r6
	bge		_08042b18
	ldr		r0, _08042b78
	add		r6, r5, r0
_08042b04:
	ldmia	r6!, { r0 }
	ldr		r1, _08042b7c
	bl		sub_080373dc
	add		r4, #0x1
	ldr		r1, _08042b68
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042b04
_08042b18:
	ldr		r2, _08042b80
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08042b2a
	b		_08042d88
_08042b2a:
	bl		sub_08002c18
	mov		r1, #0x3
	and		r1, r0
	cmp		r1, #0x0
	beq		_08042b44
	ldr		r3, _08042b80
	add		r0, r5, r3
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042c24
_08042b44:
	mov		r7, #0x7
	ldr		r1, _08042b84
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08042b88
	ldr		r2, _08042b78
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r8, r7
	mov		r3, r8
	and		r3, r0
	mov		r8, r3
	b		_08042b8c

_08042b64:	.4byte 0x00000BE4
_08042b68:	.4byte 0x000007F1
_08042b6c:	.4byte 0x03002FE0
_08042b70:	.4byte 0xFFFF8000
_08042b74:	.4byte 0x000007E6
_08042b78:	.4byte 0x000007F4
_08042b7c:	.4byte 0x00001008
_08042b80:	.4byte 0x000007DA
_08042b84:	.4byte 0x00000814

_08042b88:
	mov		r0, #0x0
	mov		r8, r0
_08042b8c:
	mov		r6, #0x0
	ldr		r1, _08042c18
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_08042c64
_08042b98:
	lsl		r2, r6, #0x2
	mov		r9, r2
	add		r3, r6, #0x1
	mov		r10, r3
	cmp		r6, #0x0
	ble		_08042bd6
	ldr		r0, _08042c1c
	ldr		r1, _08042c20
	add		r3, r5, r1
	mov		r2, #0x7
	mov		r12, r2
	mov		r2, r8
	lsl		r1, r2, #0x5
	add		r4, r6, #0x0
	lsl		r2, r7, #0x2
	add		r1, r1, r0
	add		r2, r2, r1
_08042bba:
	ldr		r0, [r3, #0x0]
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, r12
	and		r0, r1
	ldr		r1, [r2, #0x0]
	cmp		r0, r1
	bne		_08042bce
	sub		r2, #0x4
	sub		r7, #0x1
_08042bce:
	add		r3, #0x4
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08042bba
_08042bd6:
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_08042bfa
	ldr		r2, _08042c1c
	lsl		r1, r7, #0x2
	mov		r3, r8
	lsl		r0, r3, #0x5
	add		r1, r1, r0
	add		r1, r1, r2
	sub		r7, #0x1
	ldr		r1, [r1, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_08044818
_08042bfa:
	ldr		r1, _08042c20
	add		r0, r5, r1
	add		r0, r9
	ldr		r0, [r0, #0x0]
	add		r0, #0xc4
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	mov		r6, r10
	ldr		r2, _08042c18
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_08042b98
	b		_08042c64

.incbin "base.gba", 0x42C16, 0x2

_08042c18:	.4byte 0x000007F1
_08042c1c:	.4byte 0x08108840
_08042c20:	.4byte 0x000007F4

_08042c24:
	mov		r4, #0x0
	ldr		r3, _08042c2c
	add		r0, r5, r3
	b		_08042c5e

_08042c2c:	.4byte 0x000007F1

_08042c30:
	lsl		r0, r4, #0x2
	ldr		r2, _08042c90
	add		r1, r5, r2
	add		r1, r1, r0
	ldr		r1, [r1, #0x0]
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042c58
	add		r0, r1, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7
	and		r1, r0
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_08044818
_08042c58:
	add		r4, #0x1
	ldr		r1, _08042c94
	add		r0, r5, r1
_08042c5e:
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042c30
_08042c64:
	ldr		r2, _08042c98
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x0
	bne		_08042c74
	b		_08042d6e
_08042c74:
	ldr		r3, _08042c9c
	add		r0, r5, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08042ca0
	ldr		r1, _08042c90
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7
	and		r1, r0
	b		_08042ca2

.incbin "base.gba", 0x42C8E, 0x2

_08042c90:	.4byte 0x000007F4
_08042c94:	.4byte 0x000007F1
_08042c98:	.4byte 0x000007DA
_08042c9c:	.4byte 0x00000814

_08042ca0:
	mov		r1, #0x0
_08042ca2:
	lsl		r0, r1, #0x5
	ldr		r1, _08042cb4
	add		r0, r0, r1
	mov		r9, r0
	mov		r7, #0x7
	mov		r4, #0x0
	ldr		r2, _08042cb8
	add		r0, r5, r2
	b		_08042cec

_08042cb4:	.4byte 0x08108840
_08042cb8:	.4byte 0x000007F1

_08042cbc:
	lsl		r1, r4, #0x2
	ldr		r3, _08042d08
	add		r0, r5, r3
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042ce6
	lsl		r0, r7, #0x1
	add		r1, r2, #0x0
	add		r1, #0xba
	strh	r0, [r1, #0x0]
	lsl		r1, r7, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_080448a8
	sub		r7, #0x1
_08042ce6:
	add		r4, #0x1
	ldr		r1, _08042d0c
	add		r0, r5, r1
_08042cec:
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042cbc
	mov		r4, #0x7
	ldr		r2, _08042d0c
	add		r2, r2, r5
	mov		r8, r2
_08042cfa:
	lsl		r0, r4, #0x2
	add		r0, r9
	ldr		r6, [r0, #0x0]
	mov		r3, #0x0
	sub		r4, #0x1
	b		_08042d56

.incbin "base.gba", 0x42D06, 0x2

_08042d08:	.4byte 0x000007F4
_08042d0c:	.4byte 0x000007F1

_08042d10:
	lsl		r1, r3, #0x2
	ldr		r2, _08042d50
	add		r0, r5, r2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, r6
	bne		_08042d54
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08042d5e
	lsl		r0, r7, #0x1
	add		r1, r2, #0x0
	add		r1, #0xba
	strh	r0, [r1, #0x0]
	ldrh	r1, [r1, #0x0]
	lsr		r1, r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_080448a8
	sub		r7, #0x1
	b		_08042d5e

.incbin "base.gba", 0x42D4E, 0x2

_08042d50:	.4byte 0x000007F4

_08042d54:
	add		r3, #0x1
_08042d56:
	mov		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r3, r0
	blt		_08042d10
_08042d5e:
	cmp		r4, #0x0
	bge		_08042cfa
	ldr		r1, _08042d80
	add		r2, r5, r1
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08042d84
	and		r0, r1
	strh	r0, [r2, #0x0]
_08042d6e:
	bl		sub_08002c18
	add		r1, r0, #0x0
	mov		r0, #0x3
	and		r0, r1
	bl		sub_0803c7d4
	b		_08042dd6

.incbin "base.gba", 0x42D7E, 0x2

_08042d80:	.4byte 0x000007DA
_08042d84:	.4byte 0x0000FF7F

_08042d88:
	mov		r6, #0x0
	ldr		r2, _08042de4
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_08042dd6
	mov		r7, #0x0
_08042d96:
	lsl		r1, r6, #0x2
	ldr		r3, _08042de8
	add		r0, r5, r3
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	lsl		r0, r6, #0x1
	add		r4, r2, #0x0
	add		r4, #0xba
	strh	r0, [r4, #0x0]
	ldrh	r1, [r4, #0x0]
	lsr		r1, r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_080448a8
	ldr		r1, _08042dec
	add		r0, r5, r1
	ldrh	r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r1, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042dca
	strh	r7, [r4, #0x0]
_08042dca:
	add		r6, #0x1
	ldr		r3, _08042de4
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_08042d96
_08042dd6:
	add		r7, r5, #0x0
	mov		r6, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	b		_08042ea0

.incbin "base.gba", 0x42DE2, 0x2

_08042de4:	.4byte 0x000007F1
_08042de8:	.4byte 0x000007F4
_08042dec:	.4byte 0x000007DA

_08042df0:
	lsl		r1, r6, #0x18
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	bl		sub_08044894
	add		r4, r0, #0x0
	add		r0, #0xba
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0x1
	add		r0, sp, #0xc
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	add		r2, sp, #0x4
	add		r3, sp, #0x8
	bl		sub_0802c5a0
	ldr		r1, [sp, #0x4]
	ldr		r2, [sp, #0x8]
	ldr		r0, [sp, #0xC]
	str		r0, [sp, #0x0]
	add		r0, r4, #0x0
	mov		r3, #0x0
	bl		sub_08037120
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0803595c
	ldr		r2, [sp, #0x10]
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	bge		_08042e46
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	lsr		r1, r1, #0x8
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	mov		r3, #0xbc
	lsl		r3, r3, #0x1
	add		r1, r4, r3
	strh	r0, [r1, #0x0]
	b		_08042e98
_08042e46:
	ldr		r1, _08042ef0
	add		r0, r5, r1
	ldrh	r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r1, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042e72
	mov		r1, #0x0
	ldr		r0, _08042ef4
	ldrh	r0, [r0, #0xc]
	cmp		r0, #0x0
	bne		_08042e64
	mov		r1, #0x1
_08042e64:
	cmp		r1, #0x0
	beq		_08042e72
	mov		r3, #0xbc
	lsl		r3, r3, #0x1
	add		r1, r4, r3
	mov		r0, #0xa
	strh	r0, [r1, #0x0]
_08042e72:
	ldr		r1, _08042ef0
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042e98
	mov		r1, #0x0
	ldr		r0, _08042ef4
	ldrh	r0, [r0, #0x12]
	cmp		r0, #0x0
	bne		_08042e8c
	mov		r1, #0x1
_08042e8c:
	cmp		r1, #0x0
	bne		_08042e98
	mov		r2, #0xbc
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
_08042e98:
	add		r6, #0x1
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r0, r5, r3
_08042ea0:
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_08042df0
	ldr		r0, _08042ef8
	add		r4, r5, r0
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08042eb8
	ldr		r1, _08042efc
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_08042eb8:
	add		r0, r5, #0x0
	bl		sub_08048b28
	ldr		r2, _08042ef0
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_08042f04
	ldr		r1, _08042f00
	mov		r3, #0xbf
	lsl		r3, r3, #0x4
	add		r0, r5, r3
	bl		sub_0802a300
	mov		r1, #0xc2
	lsl		r1, r1, #0x4
	add		r0, r5, r1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0802a2e0
	b		_08042f2e

.incbin "base.gba", 0x42EEE, 0x2

_08042ef0:	.4byte 0x000007DA
_08042ef4:	.4byte 0x03002FE0
_08042ef8:	.4byte 0x00000814
_08042efc:	.4byte 0x000007F4
_08042f00:	.4byte 0x02024428

_08042f04:
	ldr		r1, _08042f88
	add		r3, r1, #0x0
	add		r3, #0x8
	ldr		r0, [r4, #0x0]
	add		r0, #0x4c
	ldrb	r2, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r2
	strb	r0, [r1, #0x8]
	ldr		r2, _08042f8c
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	strb	r0, [r3, #0x9]
	strh	r6, [r3, #0x2]
	mov		r3, #0xc2
	lsl		r3, r3, #0x4
	add		r0, r5, r3
	add		r1, #0x28
	ldr		r2, _08042f90
	bl		sub_0802a2e0
_08042f2e:
	mov		r0, #0x0
	bl		sub_08037c64
	ldr		r0, [sp, #0x10]
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bge		_08042fa4
	mov		r0, #0x4
	and		r1, r0
	cmp		r1, #0x0
	beq		_08042fdc
	mov		r4, #0x0
	ldr		r1, _08042f94
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08042fdc
_08042f50:
	lsl		r1, r4, #0x2
	ldr		r2, _08042f98
	add		r0, r5, r2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldr		r3, _08042f9c
	add		r0, r5, r3
	ldr		r0, [r0, #0x0]
	cmp		r2, r0
	beq		_08042f72
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08042f7a
_08042f72:
	add		r0, r2, #0x0
	ldr		r1, _08042fa0
	bl		sub_080373dc
_08042f7a:
	add		r4, #0x1
	ldr		r1, _08042f94
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042f50
	b		_08042fdc

_08042f88:	.4byte 0x02024400
_08042f8c:	.4byte 0x000007DD
_08042f90:	.4byte 0x00000FD6
_08042f94:	.4byte 0x000007F1
_08042f98:	.4byte 0x000007F4
_08042f9c:	.4byte 0x00000814
_08042fa0:	.4byte 0x00001008

_08042fa4:
	ldr		r2, _08043030
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	cmp		r0, r1
	bne		_08042fdc
	mov		r4, #0x0
	ldr		r3, _08043034
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08042fdc
	ldr		r0, _08043038
	add		r6, r5, r0
_08042fc8:
	ldmia	r6!, { r0 }
	ldr		r1, _0804303c
	bl		sub_080373dc
	add		r4, #0x1
	ldr		r1, _08043034
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08042fc8
_08042fdc:
	add		r0, r5, #0x0
	bl		sub_080459f0
	ldr		r2, _08043040
	add		r0, r5, r2
	mov		r1, #0x0
	mov		r2, #0x0
	strh	r2, [r0, #0x0]
	mov		r3, #0xc6
	lsl		r3, r3, #0x4
	add		r0, r5, r3
	strb	r1, [r0, #0x0]
	add		r3, #0x2
	add		r0, r5, r3
	strh	r2, [r0, #0x0]
	ldr		r2, _08043044
	add		r0, r5, r2
	strb	r1, [r0, #0x0]
	add		r3, #0x20
	add		r0, r5, r3
	strb	r1, [r0, #0x0]
	add		r2, #0x11
	add		r0, r5, r2
	strb	r1, [r0, #0x0]
	add		r3, #0x2
	add		r0, r5, r3
	strb	r1, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_0803d224
	add		r0, r5, #0x0
	bl		sub_0803ca24
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4302E, 0x2

_08043030:	.4byte 0x000007DA
_08043034:	.4byte 0x000007F1
_08043038:	.4byte 0x000007F4
_0804303c:	.4byte 0x00001008
_08043040:	.4byte 0x00000C5E
_08043044:	.4byte 0x00000C72
	thumb_func_end sub_08042738

	thumb_func_start sub_08043048
sub_08043048:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	bl		sub_08029f98
	ldr		r1, _0804308c
	add		r0, r5, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0802b490
	ldr		r2, _08043090
	add		r6, r5, r2
	ldr		r1, [r6, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x18
	cmp		r1, #0x0
	bge		_08043094
	mov		r0, #0x1
	and		r1, r0
	cmp		r1, #0x0
	beq		_08043078
	add		r0, r5, #0x0
	bl		sub_0802c554
_08043078:
	ldr		r1, [r6, #0x0]
	and		r4, r1
	cmp		r4, #0x0
	beq		_08043158
	mov		r0, #0x2
	and		r1, r0
	cmp		r1, #0x0
	beq		_08043158
	b		_08043126

.incbin "base.gba", 0x4308A, 0x2

_0804308c:	.4byte 0x000007DD
_08043090:	.4byte 0x00000C88

_08043094:
	ldr		r1, _080430b8
	add		r0, r5, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_08043158
	cmp		r1, r0
	bgt		_080430bc
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_080430ce
	b		_08043158

.incbin "base.gba", 0x430B6, 0x2

_080430b8:	.4byte 0x000007DA

_080430bc:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0804312e
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_08043120
	b		_08043158
_080430ce:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_08043100
	mov		r1, #0x0
	ldr		r4, _080430fc
	ldrh	r0, [r4, #0x10]
	cmp		r0, #0x0
	bne		_080430e2
	mov		r1, #0x1
_080430e2:
	cmp		r1, #0x0
	beq		_080430ec
	add		r0, r5, #0x0
	bl		sub_0804cb10
_080430ec:
	mov		r1, #0x0
	ldrh	r0, [r4, #0x12]
	cmp		r0, #0x0
	bne		_080430f6
	mov		r1, #0x1
_080430f6:
	cmp		r1, #0x0
	beq		_08043158
	b		_08043114

_080430fc:	.4byte 0x03002FE0

_08043100:
	ldr		r2, _0804311c
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043158
	add		r0, r5, #0x0
	bl		sub_0804cb10
_08043114:
	add		r0, r5, #0x0
	bl		sub_0802c554
	b		_08043158

_0804311c:	.4byte 0x000007DA

_08043120:
	add		r0, r5, #0x0
	bl		sub_0802c554
_08043126:
	add		r0, r5, #0x0
	bl		sub_0804cb10
	b		_08043158
_0804312e:
	mov		r1, #0x0
	ldr		r4, _08043174
	ldrh	r0, [r4, #0x8]
	cmp		r0, #0x0
	bne		_0804313a
	mov		r1, #0x1
_0804313a:
	cmp		r1, #0x0
	beq		_08043144
	add		r0, r5, #0x0
	bl		sub_0804cb10
_08043144:
	mov		r1, #0x0
	ldrh	r0, [r4, #0xc]
	cmp		r0, #0x0
	bne		_0804314e
	mov		r1, #0x1
_0804314e:
	cmp		r1, #0x0
	beq		_08043158
	add		r0, r5, #0x0
	bl		sub_0802c554
_08043158:
	ldr		r1, _08043178
	mov		r0, #0x48
	bl		sub_08029fcc
	ldr		r2, _0804317c
	add		r1, r5, r2
	str		r0, [r1, #0x0]
	mov		r1, #0x49
	add		r2, #0x4
	add		r0, r5, r2
	strb	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08043174:	.4byte 0x03002FE0
_08043178:	.4byte sub_08044934
_0804317c:	.4byte 0x00000BCC
	thumb_func_end sub_08043048

	thumb_func_start sub_08043180
sub_08043180:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	ldr		r0, _080431bc
	add		r6, r5, r0
	add		r0, r6, #0x0
	bl		sub_08029048
	ldr		r1, _080431c0
	add		r0, r5, r1
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_080431b0
_08043198:
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080431aa
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08029000
_080431aa:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_08043198
_080431b0:
	mov		r4, #0x0
	mov		r2, #0xfe
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	b		_080431e8

.incbin "base.gba", 0x431BA, 0x2

_080431bc:	.4byte 0x0000057C
_080431c0:	.4byte 0x00000714

_080431c4:
	lsl		r1, r4, #0x2
	ldr		r2, _08043238
	add		r0, r5, r2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldrh	r0, [r2, #0x34]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080431e0
	add		r0, r6, #0x0
	add		r1, r2, #0x0
	bl		sub_08029000
_080431e0:
	add		r4, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
_080431e8:
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_080431c4
	ldr		r2, _0804323c
	add		r0, r5, r2
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08043210
_080431f8:
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804320a
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08029024
_0804320a:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_080431f8
_08043210:
	ldr		r1, _08043240
	add		r0, r5, r1
	ldr		r4, [r0, #0x8]
	cmp		r4, #0x0
	beq		_08043232
_0804321a:
	ldrh	r0, [r4, #0x34]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804322c
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08029024
_0804322c:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_0804321a
_08043232:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08043238:	.4byte 0x000007F4
_0804323c:	.4byte 0x00000704
_08043240:	.4byte 0x000006EC
	thumb_func_end sub_08043180

	thumb_func_start sub_08043244
sub_08043244:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r4, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0804328a
	ldr		r7, _08043338
	add		r2, r5, r7
	mov		r7, #0x80
	lsl		r7, r7, #0x8
	mov		r3, #0xbc
	lsl		r3, r3, #0x1
	add		r6, r0, #0x0
_0804326e:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r1, #0x48]
	and		r0, r7
	cmp		r0, #0x0
	beq		_08043282
	add		r0, r1, r3
	ldrh	r0, [r0, #0x0]
	cmp		r0, r4
	ble		_08043282
	add		r4, r0, #0x0
_08043282:
	add		r2, #0x4
	sub		r6, #0x1
	cmp		r6, #0x0
	bne		_0804326e
_0804328a:
	mov		r6, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r2, _0804333c
	add		r2, r5, r2
	str		r2, [sp, #0x0]
	ldrb	r7, [r0, #0x0]
	cmp		r6, r7
	bge		_080432d0
	ldr		r1, _08043340
	mov		r9, r1
	add		r3, r0, #0x0
	ldr		r7, _08043338
	add		r2, r5, r7
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	mov		r8, r0
	mov		r1, #0xbc
	lsl		r1, r1, #0x1
	mov		r10, r1
_080432b4:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r1, #0x48]
	mov		r7, r9
	and		r0, r7
	cmp		r0, r8
	bne		_080432c6
	mov		r7, r10
	add		r0, r1, r7
	strh	r4, [r0, #0x0]
_080432c6:
	add		r2, #0x4
	add		r6, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r6, r0
	blt		_080432b4
_080432d0:
	mov		r6, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_080432e0
	b		_080433f8
_080432e0:
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	mov		r10, r2
	ldr		r7, _08043344
	add		r7, r7, r5
	mov		r9, r7
	ldr		r0, _08043348
	add		r0, r0, r5
	mov		r8, r0
_080432f2:
	lsl		r0, r6, #0x2
	ldr		r2, _08043338
	add		r1, r5, r2
	add		r1, r1, r0
	ldr		r4, [r1, #0x0]
	mov		r7, #0x0
	ldr		r0, [r4, #0x48]
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043318
	add		r0, r4, #0x0
	add		r0, #0xec
	ldrb	r1, [r0, #0x0]
	lsl		r1, r1, #0x1
	add		r2, #0x28
	add		r0, r5, r2
	add		r0, r0, r1
	ldrh	r7, [r0, #0x0]
_08043318:
	ldr		r1, _0804334c
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043350
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	cmp		r4, r0
	bne		_0804336e
	mov		r7, #0xbf
	lsl		r7, r7, #0x4
	add		r0, r5, r7
	b		_08043366

.incbin "base.gba", 0x43336, 0x2

_08043338:	.4byte 0x000007F4
_0804333c:	.4byte 0x000007D4
_08043340:	.4byte 0x0000A020
_08043344:	.4byte 0x00000BD8
_08043348:	.4byte 0x00000814
_0804334c:	.4byte 0x000007DA

_08043350:
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804336e
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r4, r0
	beq		_0804336e
	mov		r0, r9
_08043366:
	bl		sub_0802a30c
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
_0804336e:
	ldr		r2, _080433c8
	add		r0, r5, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, r10
	and		r0, r1
	cmp		r0, #0x0
	bne		_080433a6
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r4, r0
	bne		_080433a6
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080433a6
	mov		r2, #0xc2
	lsl		r2, r2, #0x4
	add		r0, r5, r2
	add		r1, r7, #0x0
	bl		sub_0802a274
	cmp		r0, #0x0
	bne		_080433a6
	ldr		r0, _080433cc
	add		r1, r5, r0
	mov		r0, #0x3
	strh	r0, [r1, #0x0]
_080433a6:
	ldr		r1, [sp, #0x0]
	ldrb	r0, [r1, #0x0]
	mov		r1, #0xf
	and		r1, r0
	cmp		r1, #0x2
	beq		_080433d0
	cmp		r1, #0x2
	blt		_080433e4
	cmp		r1, #0x6
	bgt		_080433e4
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	add		r2, r7, #0x0
	bl		sub_08035ec8
	b		_080433e4

.incbin "base.gba", 0x433C6, 0x2

_080433c8:	.4byte 0x000007DA
_080433cc:	.4byte 0x00000BEE

_080433d0:
	mov		r2, #0xc6
	lsl		r2, r2, #0x4
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080433e4
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_0803a880
_080433e4:
	mov		r7, #0x18
	add		r9, r7
	add		r6, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_080433f8
	b		_080432f2
_080433f8:
	ldr		r2, [sp, #0x0]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0xf
	and		r1, r0
	cmp		r1, #0x2
	beq		_0804341c
	cmp		r1, #0x2
	blt		_0804341c
	cmp		r1, #0x6
	bgt		_0804341c
	add		r0, r5, #0x0
	bl		sub_0803745c
	add		r0, r5, #0x0
	bl		sub_0803ca58
	bl		sub_08048a14
_0804341c:
	mov		r6, #0x0
	ldr		r7, _08043464
	add		r0, r5, r7
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_0804343a
_08043428:
	ldr		r1, [r4, #0x14]
	cmp		r1, #0x0
	beq		_08043434
	add		r0, r4, #0x0
	bl		sub_0807d7d4
_08043434:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_08043428
_0804343a:
	ldr		r1, _08043468
	add		r0, r5, r1
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08043488
_08043444:
	ldr		r7, [r4, #0x3c]
	ldr		r1, [r4, #0x14]
	cmp		r1, #0x0
	beq		_08043452
	add		r0, r4, #0x0
	bl		sub_0807d7d4
_08043452:
	ldrh	r1, [r4, #0x10]
	ldr		r0, _0804346c
	cmp		r1, r0
	beq		_08043480
	cmp		r1, r0
	bgt		_08043474
	ldr		r0, _08043470
	b		_0804347c

.incbin "base.gba", 0x43462, 0x2

_08043464:	.4byte 0x00000704
_08043468:	.4byte 0x00000714
_0804346c:	.4byte 0x00008401
_08043470:	.4byte 0x00008001

_08043474:
	ldr		r0, _080434ec
	cmp		r1, r0
	beq		_08043480
	add		r0, #0x1
_0804347c:
	cmp		r1, r0
	bne		_08043482
_08043480:
	add		r6, #0x1
_08043482:
	add		r4, r7, #0x0
	cmp		r4, #0x0
	bne		_08043444
_08043488:
	ldr		r2, _080434f0
	add		r0, r5, r2
	strb	r6, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0804d764
	ldr		r7, _080434f4
	add		r0, r5, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080434b0
_0804349e:
	ldr		r4, [r0, #0x3c]
	ldr		r1, [r0, #0x14]
	cmp		r1, #0x0
	beq		_080434aa
	bl		sub_0807d7d4
_080434aa:
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bne		_0804349e
_080434b0:
	ldr		r0, _080434f8
	add		r5, r5, r0
	mov		r4, #0x0
_080434b6:
	add		r0, r5, r4
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080434d6
	lsl		r1, r4, #0x2
	add		r0, r5, #0x0
	add		r0, #0x20
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_080434d6
	bl		sub_0807d7d4
_080434d6:
	add		r4, #0x1
	cmp		r4, #0x1f
	ble		_080434b6
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080434ec:	.4byte 0x00008402
_080434f0:	.4byte 0x00000C83
_080434f4:	.4byte 0x00000724
_080434f8:	.4byte 0x0000072C
	thumb_func_end sub_08043244

	thumb_func_start sub_080434fc
sub_080434fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r6, r0, #0x0
	ldr		r1, _08043524
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043528
	mov		r2, #0x6
	mov		r8, r2
	mov		r7, #0x3
	b		_0804352c

.incbin "base.gba", 0x43522, 0x2

_08043524:	.4byte 0x000007DA

_08043528:
	mov		r7, #0x8
	mov		r8, r7
_0804352c:
	ldr		r1, _08043540
	add		r0, r6, r1
	ldr		r4, [r0, #0x0]
	ldr		r2, _08043544
	add		r2, r2, r6
	mov		r9, r2
	cmp		r4, #0x0
	beq		_080435b8
	b		_0804354c

.incbin "base.gba", 0x4353E, 0x2

_08043540:	.4byte 0x00000704
_08043544:	.4byte 0x00000BE8

_08043548:
	cmp		r7, #0x0
	beq		_080435b8
_0804354c:
	ldrh	r0, [r4, #0x34]
	mov		r5, #0x1
	and		r0, r5
	cmp		r0, #0x0
	beq		_080435b2
	add		r0, r4, #0x0
	add		r0, #0x36
	ldrb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08045a9c
	cmp		r0, #0x0
	beq		_080435b2
	add		r0, r4, #0x0
	bl		sub_08029138
	add		r0, r4, #0x0
	bl		sub_08029174
	cmp		r0, #0x0
	beq		_080435b2
	mov		r1, #0x24
	ldrsh	r0, [r4, r1]
	str		r0, [sp, #0xC]
	str		r5, [sp, #0x10]
	add		r5, r4, #0x0
	add		r5, #0x20
	mov		r2, #0x24
	ldrsh	r1, [r4, r2]
	add		r0, r4, #0x0
	add		r0, #0x80
	ldr		r0, [r0, #0x0]
	mul		r1, r0
	add		r2, r1, #0x0
	cmp		r1, #0x0
	bge		_08043596
	add		r2, #0xff
_08043596:
	asr		r3, r2, #0x8
	ldr		r0, [r4, #0x48]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	add		r1, sp, #0xc
	str		r1, [sp, #0x4]
	add		r1, r5, #0x0
	add		r2, r3, #0x0
	bl		sub_0802951c
	sub		r7, #0x1
	mov		r2, #0x1
	neg		r2, r2
	add		r8, r2
_080435b2:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_08043548
_080435b8:
	mov		r7, r9
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	beq		_080435cc
	ldr		r1, _080435c8
	add		r0, r6, r1
	ldr		r4, [r0, #0x8]
	b		_080435d2

_080435c8:	.4byte 0x000006EC

_080435cc:
	ldr		r2, _080435dc
	add		r0, r6, r2
	ldr		r4, [r0, #0xc]
_080435d2:
	cmp		r4, #0x0
	beq		_0804367a
	mov		r7, #0x1
	mov		r10, r7
	b		_080435e6

_080435dc:	.4byte 0x000006EC

_080435e0:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0804367a
_080435e6:
	ldrh	r0, [r4, #0x34]
	mov		r1, r10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043668
	add		r0, r4, #0x0
	add		r0, #0x36
	ldrb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08045a9c
	cmp		r0, #0x0
	beq		_08043668
	add		r0, r4, #0x0
	bl		sub_08029138
	add		r0, r4, #0x0
	bl		sub_08029174
	cmp		r0, #0x0
	beq		_08043668
	mov		r2, #0x24
	ldrsh	r0, [r4, r2]
	str		r0, [sp, #0xC]
	mov		r7, r10
	str		r7, [sp, #0x10]
	add		r5, r4, #0x0
	add		r5, #0x20
	mov		r0, #0x24
	ldrsh	r2, [r4, r0]
	add		r0, r4, #0x0
	add		r0, #0x56
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	add		r3, r2, #0x0
	mul		r3, r0
	cmp		r3, #0x0
	bge		_08043634
	add		r3, #0xff
_08043634:
	asr		r3, r3, #0x8
	add		r0, r4, #0x0
	add		r0, #0x58
	mov		r7, #0x0
	ldrsh	r0, [r0, r7]
	add		r1, r2, #0x0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_08043648
	add		r1, #0xff
_08043648:
	asr		r1, r1, #0x8
	ldr		r0, [r4, #0x4c]
	str		r1, [sp, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x5a
	mov		r7, #0x0
	ldrsh	r1, [r1, r7]
	str		r1, [sp, #0x4]
	add		r1, sp, #0xc
	str		r1, [sp, #0x8]
	add		r1, r5, #0x0
	bl		sub_080299c0
	mov		r2, #0x1
	neg		r2, r2
	add		r8, r2
_08043668:
	mov		r7, r9
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	beq		_08043674
	ldr		r4, [r4, #0x3c]
	b		_08043676
_08043674:
	ldr		r4, [r4, #0x40]
_08043676:
	cmp		r4, #0x0
	bne		_080435e0
_0804367a:
	ldr		r1, _08043760
	add		r0, r6, r1
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_080436f0
	mov		r7, #0x1
_08043686:
	ldrh	r0, [r4, #0x34]
	and		r0, r7
	cmp		r0, #0x0
	beq		_080436ea
	add		r0, r4, #0x0
	add		r0, #0x36
	ldrb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08045a9c
	cmp		r0, #0x0
	beq		_080436ea
	add		r0, r4, #0x0
	bl		sub_08029138
	add		r0, r4, #0x0
	bl		sub_08029174
	cmp		r0, #0x0
	beq		_080436ea
	mov		r2, #0x24
	ldrsh	r0, [r4, r2]
	str		r0, [sp, #0xC]
	str		r7, [sp, #0x10]
	add		r5, r4, #0x0
	add		r5, #0x20
	add		r0, r4, #0x0
	add		r0, #0x58
	mov		r2, #0x24
	ldrsh	r1, [r4, r2]
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	mul		r1, r0
	add		r2, r1, #0x0
	cmp		r1, #0x0
	bge		_080436d0
	add		r2, #0xff
_080436d0:
	asr		r3, r2, #0x8
	ldr		r0, [r4, #0x48]
	add		r1, r4, #0x0
	add		r1, #0x5a
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	str		r1, [sp, #0x0]
	add		r1, sp, #0xc
	str		r1, [sp, #0x4]
	add		r1, r5, #0x0
	add		r2, r3, #0x0
	bl		sub_0802951c
_080436ea:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_08043686
_080436f0:
	ldr		r2, _08043764
	add		r0, r6, r2
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08043750
	mov		r7, #0x1
_080436fc:
	ldrh	r0, [r4, #0x34]
	and		r0, r7
	cmp		r0, #0x0
	beq		_0804374a
	add		r0, r4, #0x0
	bl		sub_08029174
	cmp		r0, #0x0
	beq		_0804374a
	ldr		r5, [r4, #0x48]
	cmp		r5, #0x0
	beq		_0804374a
	mov		r1, #0x24
	ldrsh	r0, [r4, r1]
	str		r0, [sp, #0xC]
	str		r7, [sp, #0x10]
	add		r6, r4, #0x0
	add		r6, #0x20
	add		r0, r4, #0x0
	add		r0, #0x58
	mov		r2, #0x24
	ldrsh	r1, [r4, r2]
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	mul		r1, r0
	add		r2, r1, #0x0
	cmp		r1, #0x0
	bge		_08043736
	add		r2, #0xff
_08043736:
	asr		r3, r2, #0x8
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	add		r0, sp, #0xc
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r3, #0x0
	bl		sub_0802951c
_0804374a:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_080436fc
_08043750:
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08043760:	.4byte 0x00000714
_08043764:	.4byte 0x00000724
	thumb_func_end sub_080434fc

	thumb_func_start sub_08043768
sub_08043768:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x58
	mov		r8, r0
	ldr		r0, _08043790
	add		r0, r8
	str		r0, [sp, #0x50]
	mov		r1, #0x0
	mov		r10, r1
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	mov		r2, sp
	add		r2, #0x3c
	str		r2, [sp, #0x54]
	b		_080438f2

.incbin "base.gba", 0x4378E, 0x2

_08043790:	.4byte 0x00000824

_08043794:
	mov		r3, r10
	lsl		r1, r3, #0x2
	ldr		r0, _080437e8
	add		r0, r8
	add		r0, r0, r1
	ldr		r5, [r0, #0x0]
	add		r6, r5, #0x0
	add		r0, r5, #0x0
	bl		sub_08036480
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r0, #0xc9
	lsl		r0, r0, #0x1
	add		r2, r5, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xca
	and		r0, r1
	strb	r0, [r2, #0x0]
	add		r2, r4, #0x0
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x50]
	bl		sub_08036d30
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	cmp		r1, #0x0
	beq		_08043806
	ldr		r0, _080437ec
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_080437f4
	ldr		r0, _080437f0
	ldr		r0, [r0, #0x14]
	mov		r1, #0x1
	and		r0, r1
	b		_08043802

.incbin "base.gba", 0x437E6, 0x2

_080437e8:	.4byte 0x000007F4
_080437ec:	.4byte 0x00000814
_080437f0:	.4byte RunGameLogic_CallBack

_080437f4:
	cmp		r1, #0x20
	ble		_080437fe
	ldr		r0, _0804381c
	cmp		r1, r0
	ble		_080438e8
_080437fe:
	mov		r0, #0x1
	and		r0, r2
_08043802:
	cmp		r0, #0x0
	bne		_080438e8
_08043806:
	add		r0, r5, #0x0
	bl		sub_08037220
	cmp		r0, #0x0
	beq		_08043820
	add		r0, r6, #0x0
	bl		sub_08029138
	mov		r4, #0x0
	str		r4, [r5, #0x44]
	b		_080438e8

_0804381c:	.4byte 0x00000157

_08043820:
	add		r0, r6, #0x0
	bl		sub_08029138
	add		r2, r4, #0x0
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x50]
	bl		sub_08036758
	str		r0, [r5, #0x44]
	add		r0, r6, #0x0
	bl		sub_08029174
	cmp		r0, #0x0
	beq		_080438e8
	add		r0, r5, #0x0
	bl		sub_08037340
	cmp		r0, #0x0
	beq		_08043850
	ldr		r0, _0804384c
	b		_08043854

.incbin "base.gba", 0x4384A, 0x2

_0804384c:	.4byte 0x00007FFF

_08043850:
	mov		r1, #0x24
	ldrsh	r0, [r6, r1]
_08043854:
	str		r0, [sp, #0x8]
	mov		r2, #0x1
	str		r2, [sp, #0xC]
	ldr		r0, _0804388c
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x6
	add		r1, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043898
	ldr		r0, _08043890
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	beq		_08043898
	ldr		r0, _08043894
	ldr		r0, [r0, #0x14]
	and		r0, r2
	cmp		r0, #0x0
	beq		_08043898
	mov		r4, #0xc9
	lsl		r4, r4, #0x1
	add		r2, r5, r4
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x20
	b		_080438e4

_0804388c:	.4byte 0x000007DA
_08043890:	.4byte 0x00000814
_08043894:	.4byte RunGameLogic_CallBack

_08043898:
	mov		r0, #0x20
	add		r0, r0, r6
	mov		r9, r0
	mov		r1, #0x24
	ldrsh	r4, [r6, r1]
	add		r0, r5, #0x0
	bl		sub_08037420
	add		r2, r4, #0x0
	mul		r2, r0
	cmp		r2, #0x0
	bge		_080438b2
	add		r2, #0xff
_080438b2:
	asr		r7, r2, #0x8
	mov		r2, #0x24
	ldrsh	r4, [r6, r2]
	add		r0, r5, #0x0
	bl		sub_0803743c
	mul		r0, r4
	cmp		r0, #0x0
	bge		_080438c6
	add		r0, #0xff
_080438c6:
	asr		r3, r0, #0x8
	ldr		r0, [r5, #0x44]
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	add		r1, sp, #0x8
	str		r1, [sp, #0x4]
	mov		r1, r9
	add		r2, r7, #0x0
	bl		sub_0802951c
	mov		r3, #0xc9
	lsl		r3, r3, #0x1
	add		r2, r5, r3
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x35
_080438e4:
	orr		r0, r1
	strb	r0, [r2, #0x0]
_080438e8:
	mov		r4, #0x1
	add		r10, r4
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
_080438f2:
	ldrb	r0, [r0, #0x0]
	cmp		r10, r0
	bge		_080438fa
	b		_08043794
_080438fa:
	ldr		r0, _080439b4
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08043910
	b		_08043aa4
_08043910:
	ldr		r0, _080439b8
	add		r0, r8
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043922
	b		_08043c0c
_08043922:
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r4, r0, #0x1
	add		r6, r2, #0x0
	mov		r1, #0xc9
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080439cc
	cmp		r4, #0x0
	ble		_080439cc
	add		r7, sp, #0x10
_08043942:
	sub		r4, #0x1
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r8
	bl		sub_08044894
	add		r6, r0, #0x0
	add		r0, #0x66
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bgt		_080439c8
	mov		r3, #0xc9
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	ldrb	r1, [r0, #0x0]
	mov		r3, #0x1
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_080439cc
	add		r2, r6, #0x0
	mov		r4, #0x24
	ldrsh	r0, [r2, r4]
	str		r0, [sp, #0x10]
	str		r3, [r7, #0x4]
	ldrh	r1, [r2, #0x20]
	ldr		r0, _080439bc
	ldr		r4, [sp, #0x18]
	and		r4, r0
	orr		r4, r1
	str		r4, [sp, #0x18]
	mov		r0, #0x22
	ldrsh	r5, [r2, r0]
	mov		r3, #0x24
	ldrsh	r1, [r2, r3]
	mov		r0, #0x90
	lsl		r0, r0, #0x6
	bl		sub_0807d80c
	sub		r5, r5, r0
	lsl		r5, r5, #0x10
	ldr		r0, _080439c0
	and		r4, r0
	orr		r4, r5
	str		r4, [sp, #0x18]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _080439c4
	add		r1, sp, #0x18
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_080439cc

.incbin "base.gba", 0x439B2, 0x2

_080439b4:	.4byte 0x000007DA
_080439b8:	.4byte 0x00000814
_080439bc:	.4byte 0xffff0000
_080439c0:	.4byte 0x0000FFFF
_080439c4:	.4byte 0x080968a0

_080439c8:
	cmp		r4, #0x0
	bgt		_08043942
_080439cc:
	mov		r4, #0xc9
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_080439de
	b		_08043c0c
_080439de:
	ldr		r0, _08043a8c
	add		r0, r8
	ldr		r0, [r0, #0x0]
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r4, r0, #0x1
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r4, r0
	blt		_080439fa
	b		_08043c0c
_080439fa:
	add		r4, #0x1
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r8
	bl		sub_08044894
	add		r6, r0, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bgt		_08043a94
	mov		r2, #0xc9
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043a24
	b		_08043c0c
_08043a24:
	add		r2, r6, #0x0
	mov		r3, #0x24
	ldrsh	r0, [r2, r3]
	str		r0, [sp, #0x10]
	add		r7, sp, #0x10
	mov		r0, #0x1
	str		r0, [r7, #0x4]
	mov		r4, #0x20
	ldrsh	r5, [r2, r4]
	mov		r0, #0x0
	mov		r9, r0
	add		r6, sp, #0x18
	strh	r5, [r6, #0x0]
	mov		r1, #0x22
	ldrsh	r4, [r2, r1]
	mov		r3, #0x24
	ldrsh	r1, [r2, r3]
	add		r1, #0x80
	mov		r0, #0xd8
	lsl		r0, r0, #0x6
	bl		sub_0807d80c
	sub		r4, r4, r0
	add		r1, r6, #0x0
	strh		r4, [r1, #0x2]
	cmp		r5, #0xf3
	ble		_08043a5c
	b		_08043c0c
_08043a5c:
	mov		r0, #0x4
	neg		r0, r0
	cmp		r5, r0
	bgt		_08043a66
	b		_08043c0c
_08043a66:
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xc8
	ble		_08043a70
	b		_08043c0c
_08043a70:
	cmp		r0, #0xa0
	ble		_08043a78
	mov		r0, #0xa0
	strh		r0, [r1, #0x2]
_08043a78:
	mov		r4, r9
	str		r4, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _08043a90
	add		r1, r6, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_08043c0c

_08043a8c:	.4byte 0x00000814
_08043a90:	.4byte 0x080968a8

_08043a94:
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r4, r0
	blt		_080439fa
	b		_08043c0c
_08043aa4:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08043ab6
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_08043ab6
	b		_08043c0c
_08043ab6:
	ldr		r0, _08043ae4
	add		r0, r8
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043ac8
	b		_08043c0c
_08043ac8:
	mov		r7, #0x0
	mov		r10, r2
	mov		r0, #0xc9
	lsl		r0, r0, #0x1
	add		r0, r10
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043ade
	b		_08043c0c
_08043ade:
	mov		r0, #0x0
	mov		r9, r0
	b		_08043bfe

_08043ae4:	.4byte 0x00000814

_08043ae8:
	mov		r2, r9
	lsl		r1, r2, #0x2
	ldr		r0, _08043b8c
	add		r0, r8
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	cmp		r2, r10
	bne		_08043afa
	b		_08043bfa
_08043afa:
	add		r0, r2, #0x0
	add		r0, #0x66
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	ble		_08043b08
	b		_08043bf8
_08043b08:
	mov		r4, #0xc9
	lsl		r4, r4, #0x1
	add		r0, r2, r4
	ldrb	r1, [r0, #0x0]
	mov		r3, #0x1
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043bf8
	mov		r1, #0x24
	ldrsh	r0, [r2, r1]
	str		r0, [sp, #0x1C]
	add		r6, sp, #0x1c
	str		r3, [r6, #0x4]
	ldrh	r1, [r2, #0x20]
	ldr		r0, _08043b90
	ldr		r5, [sp, #0x24]
	and		r5, r0
	orr		r5, r1
	str		r5, [sp, #0x24]
	mov		r3, #0x22
	ldrsh	r4, [r2, r3]
	mov		r0, #0x24
	ldrsh	r1, [r2, r0]
	mov		r0, #0x90
	lsl		r0, r0, #0x6
	bl		sub_0807d80c
	sub		r4, r4, r0
	lsl		r4, r4, #0x10
	ldr		r1, _08043b94
	add		r2, r1, #0x0
	and		r2, r5
	orr		r2, r4
	str		r2, [sp, #0x24]
	add		r0, sp, #0x24
	mov		r4, #0x0
	ldrsh	r3, [r0, r4]
	add		r4, r0, #0x0
	cmp		r3, #0xf3
	bgt		_08043bf8
	mov		r0, #0x4
	neg		r0, r0
	cmp		r3, r0
	ble		_08043bf8
	asr		r0, r2, #0x10
	cmp		r0, #0xc8
	bgt		_08043bf8
	cmp		r0, #0xa0
	ble		_08043b76
	and		r2, r1
	mov		r0, #0xa0
	lsl		r0, r0, #0x10
	orr		r2, r0
	str		r2, [sp, #0x24]
_08043b76:
	mov		r0, r9
	cmp		r0, #0x1
	beq		_08043bb8
	cmp		r7, #0x1
	beq		_08043ba8
	cmp		r7, #0x1
	bgt		_08043b98
	cmp		r7, #0x0
	beq		_08043b9e
	b		_08043be4

.incbin "base.gba", 0x43B8A, 0x2

_08043b8c:	.4byte 0x000007F4
_08043b90:	.4byte 0xffff0000
_08043b94:	.4byte 0x0000FFFF

_08043b98:
	cmp		r7, #0x2
	beq		_08043bb0
	b		_08043be4
_08043b9e:
	ldr		r2, _08043ba4
	b		_08043be6

.incbin "base.gba", 0x43BA2, 0x2

_08043ba4:	.4byte 0x080968b8

_08043ba8:
	ldr		r2, _08043bac
	b		_08043be6

_08043bac:	.4byte 0x080968c0

_08043bb0:
	ldr		r2, _08043bb4
	b		_08043be6

_08043bb4:	.4byte 0x080968c8

_08043bb8:
	cmp		r7, #0x1
	beq		_08043bd4
	cmp		r7, #0x1
	bgt		_08043bc6
	cmp		r7, #0x0
	beq		_08043bcc
	b		_08043be4
_08043bc6:
	cmp		r7, #0x2
	beq		_08043bdc
	b		_08043be4
_08043bcc:
	ldr		r2, _08043bd0
	b		_08043be6

_08043bd0:	.4byte 0x080968d0

_08043bd4:
	ldr		r2, _08043bd8
	b		_08043be6

_08043bd8:	.4byte 0x080968d8

_08043bdc:
	ldr		r2, _08043be0
	b		_08043be6

_08043be0:	.4byte 0x080968e0

_08043be4:
	mov		r2, #0x0
_08043be6:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	add		r0, r2, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08043bf8:
	add		r7, #0x1
_08043bfa:
	mov		r1, #0x1
	add		r9, r1
_08043bfe:
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r9, r0
	bge		_08043c0c
	b		_08043ae8
_08043c0c:
	ldr		r0, _08043ccc
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	cmp		r0, r1
	bne		_08043cf2
	ldr		r0, _08043cd0
	add		r0, r8
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043cf2
	mov		r3, #0xc9
	lsl		r3, r3, #0x1
	add		r0, r2, r3
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043cf2
	mov		r4, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08043cf2
	add		r6, sp, #0x28
_08043c50:
	lsl		r1, r4, #0x2
	ldr		r0, _08043cd4
	add		r0, r8
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldr		r0, _08043cd0
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r2, r0
	beq		_08043ce4
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r3, #0x20
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043ce4
	mov		r4, #0xc9
	lsl		r4, r4, #0x1
	add		r0, r2, r4
	ldrb	r1, [r0, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043cf2
	mov		r1, #0x24
	ldrsh	r0, [r2, r1]
	str		r0, [sp, #0x28]
	mov		r0, #0x1
	str		r0, [r6, #0x4]
	ldrh	r1, [r2, #0x20]
	ldr		r0, _08043cd8
	ldr		r4, [sp, #0x30]
	and		r4, r0
	orr		r4, r1
	str		r4, [sp, #0x30]
	mov		r3, #0x22
	ldrsh	r5, [r2, r3]
	mov		r0, #0x24
	ldrsh	r1, [r2, r0]
	mov		r0, #0x90
	lsl		r0, r0, #0x6
	bl		sub_0807d80c
	sub		r5, r5, r0
	lsl		r5, r5, #0x10
	ldr		r0, _08043cdc
	and		r4, r0
	orr		r4, r5
	str		r4, [sp, #0x30]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	ldr		r0, _08043ce0
	add		r1, sp, #0x30
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_08043cf2

.incbin "base.gba", 0x43CCA, 0x2

_08043ccc:	.4byte 0x000007DA
_08043cd0:	.4byte 0x00000814
_08043cd4:	.4byte 0x000007F4
_08043cd8:	.4byte 0xffff0000
_08043cdc:	.4byte 0x0000FFFF
_08043ce0:	.4byte 0x080968e8

_08043ce4:
	add		r4, #0x1
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08043c50
_08043cf2:
	ldr		r7, _08043d98
	add		r7, r8
	mov		r5, #0x0
	mov		r1, #0x1
	mov		r9, r1
	add		r6, sp, #0x34
_08043cfe:
	add		r0, r7, r5
	ldrb	r1, [r0, #0x0]
	mov		r0, r9
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043d42
	lsl		r1, r5, #0x2
	add		r0, r7, #0x0
	add		r0, #0x20
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	ldrb	r1, [r4, #0x10]
	mov		r0, r9
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043d42
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	beq		_08043d42
	mov		r2, #0x24
	ldrsh	r0, [r4, r2]
	str		r0, [sp, #0x34]
	mov		r3, r9
	str		r3, [r6, #0x4]
	ldr		r0, [r4, #0x4]
	add		r1, r4, #0x0
	add		r1, #0x14
	ldr		r2, [r4, #0x1c]
	ldr		r3, [r4, #0x20]
	ldr		r4, [r4, #0x18]
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	bl		sub_0802951c
_08043d42:
	add		r5, #0x1
	cmp		r5, #0x1f
	ble		_08043cfe
	ldr		r0, _08043d9c
	add		r0, r8
	ldr		r5, [r0, #0x0]
	add		r7, r5, #0x0
	add		r7, #0x20
	mov		r4, #0x24
	ldrsh	r0, [r5, r4]
	str		r0, [sp, #0x3C]
	mov		r0, #0x0
	ldr		r1, [sp, #0x54]
	str		r0, [r1, #0x4]
	add		r0, r5, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043d70
	b		_08043e9c
_08043d70:
	ldr		r0, [r5, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043d7c
	b		_08043e9c
_08043d7c:
	ldr		r2, [r5, #0x8]
	cmp		r2, #0x0
	beq		_08043d84
	b		_08043e9c
_08043d84:
	mov		r6, #0x1
	add		r0, r5, #0x0
	add		r0, #0x85
	ldrb	r1, [r0, #0x0]
	add		r4, r0, #0x0
	cmp		r1, #0x54
	bne		_08043da0
	mov		r6, #0x2
	b		_08043db6

.incbin "base.gba", 0x43D96, 0x2

_08043d98:	.4byte 0x0000072C
_08043d9c:	.4byte 0x00000814

_08043da0:
	cmp		r1, #0x5a
	bne		_08043da8
	mov		r6, #0x3
	b		_08043db6
_08043da8:
	cmp		r1, #0x5c
	bne		_08043db0
	mov		r6, #0x4
	b		_08043db6
_08043db0:
	cmp		r1, #0x58
	bne		_08043db6
	mov		r6, #0x5
_08043db6:
	add		r1, r5, #0x0
	add		r1, #0xb4
	ldrh	r3, [r1, #0x0]
	mov		r0, #0xc
	and		r0, r3
	cmp		r0, #0x0
	bne		_08043ddc
	add		r0, r5, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08043dd4
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x4f
	bhi		_08043ddc
_08043dd4:
	mov		r0, #0x1
	and		r0, r3
	cmp		r0, #0x0
	beq		_08043e28
_08043ddc:
	add		r0, r5, #0x0
	add		r0, #0x7e
	ldrb	r3, [r0, #0x0]
	sub		r0, r3, #0x7
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bls		_08043e28
	add		r0, r3, #0x0
	cmp		r0, #0x5
	beq		_08043e28
	cmp		r0, #0x6
	beq		_08043e28
	cmp		r0, #0xd
	beq		_08043e28
	cmp		r0, #0xf
	bne		_08043e08
	add		r0, r5, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	bne		_08043e28
_08043e08:
	add		r0, r5, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08043e18
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x50
	beq		_08043e44
_08043e18:
	str		r6, [sp, #0x0]
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x50]
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x54]
	bl		sub_08037bfc
	b		_08043e44
_08043e28:
	cmp		r2, #0x0
	bne		_08043e44
	ldrh	r1, [r1, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043e44
	str		r6, [sp, #0x0]
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x50]
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x54]
	bl		sub_08037bfc
_08043e44:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x5c
	bne		_08043e9c
	ldr		r0, _08043eb8
	ldr		r0, [r0, #0x14]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043e9c
	mov		r2, #0x20
	ldrsh	r0, [r5, r2]
	add		r0, #0x2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _08043ebc
	ldr		r1, [sp, #0x4C]
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x4C]
	mov		r3, #0x22
	ldrsh	r0, [r5, r3]
	add		r0, #0x7
	lsl		r0, r0, #0x10
	ldr		r2, _08043ec0
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x4C]
	mov		r4, #0x24
	ldrsh	r0, [r5, r4]
	str		r0, [sp, #0x44]
	mov		r0, #0x88
	lsl		r0, r0, #0x1
	add		r4, sp, #0x44
	str		r0, [r4, #0x4]
	mov		r0, #0x24
	ldrsh	r3, [r5, r0]
	ldr		r0, _08043ec4
	add		r1, sp, #0x4c
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r2, r3, #0x0
	bl		sub_0802951c
_08043e9c:
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x50]
	ldr		r2, [sp, #0x54]
	bl		sub_08037ba8
	add		sp, #0x58
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x43EB6, 0x2

_08043eb8:	.4byte RunGameLogic_CallBack
_08043ebc:	.4byte 0xffff0000
_08043ec0:	.4byte 0x0000FFFF
_08043ec4:	.4byte 0x08096838
	thumb_func_end sub_08043768

	thumb_func_start sub_08043ec8
sub_08043ec8:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r1, _08043ee8
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	mov		r1, #0xf
	and		r1, r0
	cmp		r1, #0x4
	bne		_08043edc
	b		_080440ea
_08043edc:
	cmp		r1, #0x4
	ble		_08043eec
	cmp		r1, #0x5
	bne		_08043ee6
	b		_08044158
_08043ee6:
	b		_0804415c

_08043ee8:	.4byte 0x000007D4

_08043eec:
	cmp		r1, #0x1
	bge		_08043ef2
	b		_0804415c
_08043ef2:
	ldr		r1, _08043f18
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bne		_08043f08
	b		_08044068
_08043f08:
	cmp		r1, r0
	bgt		_08043f1c
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08043f44
	b		_0804415c

.incbin "base.gba", 0x43F16, 0x2

_08043f18:	.4byte 0x000007DA

_08043f1c:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08043f30
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	bne		_08043f2e
	b		_080440dc
_08043f2e:
	b		_0804415c
_08043f30:
	ldr		r1, _08043f78
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08043f44
	bl		sub_08047d34
_08043f44:
	add		r0, r4, #0x0
	bl		sub_080472e8
	add		r0, r4, #0x0
	bl		sub_08048b94
	ldr		r1, _08043f7c
	add		r0, r4, r1
	ldr		r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	bge		_08043f80
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08043f6e
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	cmp		r1, #0x0
	beq		_08043f86
_08043f6e:
	add		r0, r4, #0x0
	bl		sub_0804741c
	b		_08043f86

.incbin "base.gba", 0x43F76, 0x2

_08043f78:	.4byte 0x00000814
_08043f7c:	.4byte 0x00000C88

_08043f80:
	add		r0, r4, #0x0
	bl		sub_0804741c
_08043f86:
	add		r0, r4, #0x0
	bl		sub_08047e68
	ldr		r1, [r5, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r1, #0x0
	bge		_08043fa6
	mov		r0, #0x2
	and		r1, r0
	cmp		r1, #0x0
	beq		_0804403e
	add		r0, r4, #0x0
	bl		sub_08046e50
	b		_0804403e
_08043fa6:
	ldr		r3, _08043fc8
	mov		r5, #0x0
	ldr		r1, _08043fcc
	add		r0, r3, r1
	ldr		r1, [r0, #0x0]
	and		r2, r1
	cmp		r2, #0x0
	beq		_08043fd0
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_08044038
	mov		r0, #0x4
	and		r1, r0
	cmp		r1, #0x0
	bne		_08044038
	b		_0804403e

_08043fc8:	.4byte RunGameLogic_CallBack
_08043fcc:	.4byte 0x00000CAC

_08043fd0:
	ldr		r1, _08043ff0
	add		r0, r3, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08043ff4
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08044014
_08043fec:
	mov		r5, #0x1
	b		_08044038

_08043ff0:	.4byte 0x000007FE

_08043ff4:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_08043fec
	mov		r1, #0x0
	ldr		r0, _08044010
	ldrh	r0, [r0, #0x10]
	cmp		r0, #0x0
	bne		_08044008
	mov		r1, #0x1
_08044008:
	cmp		r1, #0x0
	beq		_08044034
	b		_08043fec

.incbin "base.gba", 0x4400E, 0x2

_08044010:	.4byte 0x03002FE0

_08044014:
	mov		r1, #0x0
	ldr		r2, _08044060
	ldrh	r0, [r2, #0x8]
	cmp		r0, #0x0
	bne		_08044020
	mov		r1, #0x1
_08044020:
	cmp		r1, #0x0
	bne		_08044032
	mov		r1, #0x0
	ldrh	r0, [r2, #0xa]
	cmp		r0, #0x0
	bne		_0804402e
	mov		r1, #0x1
_0804402e:
	cmp		r1, #0x0
	beq		_08044034
_08044032:
	mov		r5, #0x1
_08044034:
	cmp		r5, #0x0
	beq		_0804403e
_08044038:
	add		r0, r4, #0x0
	bl		sub_08046e50
_0804403e:
	ldr		r1, _08044064
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08044052
	add		r0, r4, #0x0
	bl		sub_080482e4
_08044052:
	add		r0, r4, #0x0
	bl		sub_08047ae0
	add		r0, r4, #0x0
	bl		sub_08048c5c
	b		_08044150

_08044060:	.4byte 0x03002FE0
_08044064:	.4byte 0x000007DA

_08044068:
	add		r0, r4, #0x0
	bl		sub_080472e8
	add		r0, r4, #0x0
	bl		sub_08048b94
	add		r0, r4, #0x0
	bl		sub_08046e50
	ldr		r1, _080440d4
	add		r0, r4, r1
	ldr		r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	bge		_0804408e
	mov		r0, #0x1
	and		r1, r0
	cmp		r1, #0x0
	bne		_0804409e
_0804408e:
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bge		_080440a4
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	cmp		r1, #0x0
	beq		_080440a4
_0804409e:
	add		r0, r4, #0x0
	bl		sub_0804741c
_080440a4:
	add		r0, r4, #0x0
	bl		sub_08047e68
	ldr		r1, _080440d8
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_080440c6
	add		r0, r4, #0x0
	bl		sub_0804825c
	add		r0, r4, #0x0
	bl		sub_080482e4
_080440c6:
	add		r0, r4, #0x0
	bl		sub_08048cdc
	add		r0, r4, #0x0
	bl		sub_08048e4c
	b		_0804415c

_080440d4:	.4byte 0x00000C88
_080440d8:	.4byte 0x000007DA

_080440dc:
	add		r0, r4, #0x0
	bl		sub_08046e50
	add		r0, r4, #0x0
	bl		sub_0804764c
	b		_08044150
_080440ea:
	ldr		r1, _0804410c
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_0804413c
	cmp		r1, r0
	bgt		_08044110
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08044122
	b		_08044150

_0804410c:	.4byte 0x000007DA

_08044110:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08044122
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_0804414a
	b		_08044150
_08044122:
	add		r0, r4, #0x0
	bl		sub_080472e8
	add		r0, r4, #0x0
	bl		sub_08047ae0
	add		r0, r4, #0x0
	bl		sub_08048c5c
	add		r0, r4, #0x0
	bl		sub_0804741c
	b		_08044150
_0804413c:
	add		r0, r4, #0x0
	bl		sub_080472e8
	add		r0, r4, #0x0
	bl		sub_08048eb8
	b		_0804415c
_0804414a:
	add		r0, r4, #0x0
	bl		sub_0804764c
_08044150:
	add		r0, r4, #0x0
	bl		sub_08048cdc
	b		_0804415c
_08044158:
	bl		sub_0801f568
_0804415c:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44162, 0x2
	thumb_func_end sub_08043ec8

	thumb_func_start sub_08044164
sub_08044164:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	add		r3, r0, #0x0
	lsl		r0, r1, #0x18
	lsr		r2, r0, #0x18
	cmp		r2, #0x0
	beq		_080441e8
	lsr		r0, r0, #0x19
	lsl		r0, r0, #0x2
	ldr		r4, _080441f4
	add		r1, r3, r4
	add		r0, r1, r0
	ldr		r6, [r0, #0x0]
	cmp		r6, #0x0
	beq		_080441e8
	mov		r8, r1
_08044188:
	sub		r7, r2, #0x2
	lsr		r0, r7, #0x1f
	add		r0, r7, r0
	asr		r0, r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x16
	add		r0, r8
	ldr		r5, [r0, #0x0]
	cmp		r5, #0x0
	beq		_080441e8
	add		r0, r6, #0x0
	str		r2, [sp, #0x0]
	bl		sub_080374b0
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_080374b0
	ldr		r2, [sp, #0x0]
	cmp		r4, r0
	ble		_080441e8
	ldr		r0, [r5, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080441e8
	lsr		r0, r2, #0x1
	lsl		r0, r0, #0x2
	add		r0, r8
	str		r5, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xba
	strh	r2, [r0, #0x0]
	lsl		r0, r7, #0x18
	lsr		r2, r0, #0x18
	lsr		r0, r0, #0x19
	lsl		r0, r0, #0x2
	mov		r3, r8
	add		r1, r3, r0
	str		r6, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xba
	strh	r2, [r0, #0x0]
	cmp		r2, #0x0
	beq		_080441e8
	ldr		r6, [r1, #0x0]
	cmp		r6, #0x0
	bne		_08044188
_080441e8:
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080441f4:	.4byte 0x00000C38
	thumb_func_end sub_08044164

	thumb_func_start sub_080441f8
sub_080441f8:
	push	{ r4, r5, r6, r7, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r3, r1, #0x19
	cmp		r3, #0x0
	beq		_08044258
	lsl		r0, r3, #0x2
	ldr		r4, _08044260
	add		r1, r2, r4
	add		r0, r1, r0
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08044258
	mov		r12, r1
_08044214:
	sub		r0, r3, #0x1
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	lsl		r0, r6, #0x2
	mov		r7, r12
	add		r5, r7, r0
	ldr		r2, [r5, #0x0]
	cmp		r2, #0x0
	beq		_08044258
	ldr		r1, _08044264
	add		r0, r4, r1
	add		r1, r2, r1
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bls		_08044258
	lsl		r0, r3, #0x2
	add		r0, r12
	str		r2, [r0, #0x0]
	lsl		r1, r3, #0x1
	add		r0, r2, #0x0
	add		r0, #0xba
	strh	r1, [r0, #0x0]
	add		r3, r6, #0x0
	str		r4, [r5, #0x0]
	lsl		r1, r3, #0x1
	add		r0, r4, #0x0
	add		r0, #0xba
	strh	r1, [r0, #0x0]
	cmp		r3, #0x0
	beq		_08044258
	ldr		r4, [r5, #0x0]
	cmp		r4, #0x0
	bne		_08044214
_08044258:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4425E, 0x2

_08044260:	.4byte 0x00000C38
_08044264:	.4byte 0x0000017D
	thumb_func_end sub_080441f8

	thumb_func_start sub_08044268
sub_08044268:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	ldr		r0, _080442b0
	add		r2, r7, r0
	ldrb	r3, [r2, #0x0]
	mov		r0, #0xf
	and		r0, r3
	cmp		r0, #0x4
	bne		_08044282
	b		_08044658
_08044282:
	cmp		r0, #0x4
	ble		_08044288
	b		_08044676
_08044288:
	cmp		r0, #0x3
	beq		_0804428e
	b		_08044676
_0804428e:
	ldr		r1, _080442b4
	add		r0, r7, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_080442cc
	cmp		r1, r0
	bgt		_080442b8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0804433c
	b		_08044676

_080442b0:	.4byte 0x000007D4
_080442b4:	.4byte 0x000007DA

_080442b8:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_080442c2
	b		_080444d8
_080442c2:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_080443b4
	b		_08044676
_080442cc:
	ldr		r3, _08044330
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080442de
	b		_08044676
_080442de:
	mov		r3, #0x1
	mov		r6, #0xfe
	lsl		r6, r6, #0x3
	add		r0, r7, r6
	add		r5, r2, #0x0
	ldr		r1, _08044334
	mov		r8, r1
	ldrb	r2, [r0, #0x0]
	cmp		r3, r2
	bge		_0804431a
	mov		r6, #0x31
	neg		r6, r6
	mov		r12, r6
	ldr		r1, _08044338
	mov		r9, r1
	mov		r2, #0xff
	lsl		r2, r2, #0x3
	add		r4, r7, r2
	add		r2, r0, #0x0
_08044304:
	ldmia	r4!, { r1 }
	ldr		r0, [r1, #0x48]
	mov		r6, r12
	and		r0, r6
	mov		r6, r9
	orr		r0, r6
	str		r0, [r1, #0x48]
	add		r3, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r3, r0
	blt		_08044304
_0804431a:
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	mov		r1, #0x4
	mov		r2, #0x0
	orr		r0, r1
	strb	r0, [r5, #0x0]
	mov		r1, r8
	str		r2, [r1, #0x0]
	b		_08044676

.incbin "base.gba", 0x4432E, 0x2

_08044330:	.4byte 0x00000814
_08044334:	.4byte 0x03002338
_08044338:	.4byte 0x00002030

_0804433c:
	mov		r4, #0x0
	ldr		r3, _080443a0
	add		r0, r7, r3
	ldrb	r6, [r0, #0x0]
	cmp		r4, r6
	bge		_08044370
	add		r5, r0, #0x0
	ldr		r0, _080443a4
	add		r3, r7, r0
	mov		r6, #0x20
	mov		r1, #0x7f
	mov		r12, r1
_08044354:
	ldr		r0, [r3, #0x0]
	ldr		r0, [r0, #0x48]
	and		r0, r6
	cmp		r0, #0x0
	beq		_08044366
	ldrb	r1, [r2, #0x0]
	mov		r0, r12
	and		r0, r1
	strb	r0, [r2, #0x0]
_08044366:
	add		r3, #0x4
	add		r4, #0x1
	ldrb	r0, [r5, #0x0]
	cmp		r4, r0
	blt		_08044354
_08044370:
	ldr		r1, _080443a8
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08044382
	b		_08044676
_08044382:
	ldr		r2, _080443ac
	add		r3, r7, r2
	ldrb	r1, [r3, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	mov		r1, #0x4
	mov		r2, #0x0
	orr		r0, r1
	strb	r0, [r3, #0x0]
	ldr		r0, _080443b0
	str		r2, [r0, #0x0]
	bl		sub_08048a34
	b		_08044676

.incbin "base.gba", 0x4439E, 0x2

_080443a0:	.4byte 0x000007D7
_080443a4:	.4byte 0x000007F4
_080443a8:	.4byte 0x00000814
_080443ac:	.4byte 0x000007D4
_080443b0:	.4byte 0x03002338

_080443b4:
	mov		r5, #0x0
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r0, r7, r3
	ldrb	r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_080443de
	ldr		r6, _080443f8
	ldr		r0, _080443fc
	add		r3, r7, r0
	add		r4, r1, #0x0
_080443ca:
	ldr		r2, [r3, #0x0]
	add		r0, r2, r6
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080443d6
	add		r5, #0x1
_080443d6:
	add		r3, #0x4
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080443ca
_080443de:
	cmp		r5, #0x1
	ble		_080443e4
	b		_08044676
_080443e4:
	mov		r4, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldr		r2, _08044400
	add		r5, r7, r2
	ldr		r3, _08044404
	add		r6, r7, r3
	b		_08044464

.incbin "base.gba", 0x443F6, 0x2

_080443f8:	.4byte 0x0000017D
_080443fc:	.4byte 0x000007F4
_08044400:	.4byte 0x000007D4
_08044404:	.4byte 0x00000BE4

_08044408:
	lsl		r1, r4, #0x2
	ldr		r2, _08044448
	add		r0, r7, r2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x48]
	mov		r0, #0x38
	orr		r1, r0
	mov		r0, #0x88
	lsl		r0, r0, #0x4
	orr		r1, r0
	str		r1, [r2, #0x48]
	add		r1, r2, #0x0
	add		r1, #0xbc
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r3, _0804444c
	add		r0, r7, r3
	ldrh	r0, [r0, #0x0]
	add		r3, #0x26
	add		r1, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08044450
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_080441f8
	b		_0804445c

.incbin "base.gba", 0x44446, 0x2

_08044448:	.4byte 0x000007F4
_0804444c:	.4byte 0x000007DA

_08044450:
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08044164
_0804445c:
	add		r4, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r7, r1
_08044464:
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08044408
	mov		r0, #0x8
	str		r0, [r6, #0x0]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	mov		r1, #0x4
	mov		r2, #0x0
	mov		r8, r2
	orr		r0, r1
	strb	r0, [r5, #0x0]
	ldr		r1, _08044498
	mov		r0, #0xb4
	str		r0, [r1, #0x0]
	ldr		r3, _0804449c
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	bne		_080444a4
	ldr		r6, _080444a0
	b		_080444a6

_08044498:	.4byte 0x03002338
_0804449c:	.4byte 0x00000814
_080444a0:	.4byte 0x080972bc

_080444a4:
	ldr		r6, _080444cc
_080444a6:
	mov		r4, #0x78
	mov		r5, #0x3f
	ldr		r0, _080444d0
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_08054e88
	mov		r2, #0x0
	strh	r4, [r0, #0x14]
	strh	r5, [r0, #0x16]
	str		r6, [r0, #0x4]
	mov		r3, r8
	str		r3, [r0, #0xc]
	ldr		r1, _080444d4
	str		r1, [r0, #0x0]
	strb	r2, [r0, #0x10]
	b		_08044676

.incbin "base.gba", 0x444CA, 0x2

_080444cc:	.4byte 0x080972c4
_080444d0:	.4byte RunGameLogic_CallBack
_080444d4:	.4byte 0x08044b69

_080444d8:
	mov		r5, #0x1
	mov		r1, #0x0
	mov		r6, #0xfe
	lsl		r6, r6, #0x3
	add		r0, r7, r6
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r1, r0
	bge		_0804450a
	ldr		r2, _08044630
	add		r4, r7, r2
	mov		r6, #0x20
	add		r2, r0, #0x0
_080444f2:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x16
	add		r0, r4, r0
	ldr		r3, [r0, #0x0]
	ldr		r0, [r3, #0x48]
	and		r0, r6
	cmp		r0, #0x0
	bne		_08044504
	mov		r5, #0x0
_08044504:
	add		r1, #0x1
	cmp		r1, r2
	blt		_080444f2
_0804450a:
	cmp		r5, #0x0
	bne		_08044510
	b		_08044676
_08044510:
	ldr		r3, _08044634
	add		r2, r7, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x7f
	and		r0, r1
	strb	r0, [r2, #0x0]
	mov		r6, #0xfe
	lsl		r6, r6, #0x3
	add		r0, r7, r6
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x16
	ldr		r3, _08044630
	add		r1, r7, r3
	add		r1, r1, r0
	ldr		r3, [r1, #0x0]
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	add		r5, r2, #0x0
	cmp		r0, #0x0
	bne		_08044556
	add		r0, r3, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xf
	beq		_08044556
	add		r0, r3, #0x0
	add		r0, #0xcc
	ldrh	r0, [r0, #0x0]
	add		r2, r3, #0x0
	add		r2, #0xbc
	cmp		r0, #0x0
	beq		_08044588
_08044556:
	ldr		r0, [r3, #0x48]
	ldr		r1, _08044638
	and		r0, r1
	str		r0, [r3, #0x48]
	add		r2, r3, #0x0
	add		r2, #0xbc
	add		r0, r3, #0x0
	add		r0, #0x50
	mov		r4, #0x0
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	sub		r0, #0x2
	strh	r1, [r0, #0x0]
	str		r1, [r2, #0x0]
	add		r0, #0x7e
	strh	r1, [r0, #0x0]
	add		r1, r3, #0x0
	add		r1, #0x7e
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0xf
	bne		_08044588
	strb	r4, [r1, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x78
	strb	r4, [r0, #0x0]
_08044588:
	ldr		r0, [r3, #0x48]
	mov		r1, #0x88
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r3, #0x48]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08044676
	add		r0, r3, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08044676
	ldr		r6, _0804463c
	add		r4, r7, r6
	ldr		r0, [r4, #0x0]
	cmp		r0, r3
	bne		_080445de
	ldr		r0, _08044640
	add		r1, r7, r0
	ldr		r2, _08044644
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	mov		r6, #0xbb
	lsl		r6, r6, #0x4
	add		r1, r7, r6
	add		r2, #0x4
	add		r0, r7, r2
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	add		r6, #0x14
	add		r0, r7, r6
	ldrh	r1, [r0, #0x0]
	sub		r2, #0xc
	add		r0, r7, r2
	strh	r1, [r0, #0x0]
	add		r6, #0x2
	add		r0, r7, r6
	ldrh	r1, [r0, #0x0]
	add		r2, #0x2
	add		r0, r7, r2
	strh	r1, [r0, #0x0]
_080445de:
	ldr		r1, [r3, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080445f2
	ldr		r0, _08044648
	and		r1, r0
	mov		r0, #0x38
	orr		r1, r0
	str		r1, [r3, #0x48]
_080445f2:
	ldrh	r1, [r3, #0x34]
	ldr		r0, _0804464c
	and		r0, r1
	strh	r0, [r3, #0x34]
	add		r2, r3, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r6, #0x80
	lsl		r6, r6, #0x6
	add		r0, r6, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r3, r0
	bne		_08044618
	mov		r1, #0x12
	ldr		r2, _08044650
	add		r0, r7, r2
	str		r1, [r0, #0x0]
_08044618:
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	mov		r1, #0x4
	orr		r0, r1
	strb	r0, [r5, #0x0]
	ldr		r1, _08044654
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	b		_08044676

.incbin "base.gba", 0x4462E, 0x2

_08044630:	.4byte 0x00000C38
_08044634:	.4byte 0x000007D4
_08044638:	.4byte 0xffffdfff
_0804463c:	.4byte 0x00000814
_08044640:	.4byte 0x00000BAC
_08044644:	.4byte 0x00000BBC
_08044648:	.4byte 0xFFFFDFC7
_0804464c:	.4byte 0x0000FFFD
_08044650:	.4byte 0x00000BE4
_08044654:	.4byte 0x03002338

_08044658:
	ldr		r1, _08044668
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0804466c
	sub		r0, #0x1
	str		r0, [r1, #0x0]
	b		_08044676

.incbin "base.gba", 0x44666, 0x2

_08044668:	.4byte 0x03002338

_0804466c:
	mov		r0, #0xf0
	and		r0, r3
	mov		r1, #0x5
	orr		r0, r1
	strb	r0, [r2, #0x0]
_08044676:
	mov		r2, #0x0
	ldr		r3, _080446b4
	add		r0, r7, r3
	ldrb	r6, [r0, #0x0]
	cmp		r2, r6
	bge		_080446a8
	add		r3, r0, #0x0
	ldr		r0, _080446b8
	add		r1, r7, r0
	mov		r5, #0x20
	ldr		r4, _080446bc
_0804468c:
	ldr		r0, [r1, #0x0]
	ldr		r0, [r0, #0x48]
	and		r0, r5
	cmp		r0, #0x0
	beq		_0804469c
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
_0804469c:
	add		r1, #0x4
	add		r4, #0x4
	add		r2, #0x1
	ldrb	r6, [r3, #0x0]
	cmp		r2, r6
	blt		_0804468c
_080446a8:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080446b4:	.4byte 0x000007D7
_080446b8:	.4byte 0x000007F4
_080446bc:	.4byte 0x03005FE0
	thumb_func_end sub_08044268

	thumb_func_start sub_080446c0
sub_080446c0:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r2, #0x0
	lsl		r1, r1, #0x10
	lsr		r6, r1, #0x10
	add		r4, r5, #0x0
	ldr		r0, _080446f4
	ldr		r1, _080446f8
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_0804476e
	ldr		r2, _080446fc
	add		r0, r4, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	cmp		r0, #0x30
	bne		_08044704
	ldr		r0, _08044700
	add		r1, r4, r0
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	b		_0804476e

.incbin "base.gba", 0x446F2, 0x2

_080446f4:	.4byte RunGameLogic_CallBack
_080446f8:	.4byte 0x0000080D
_080446fc:	.4byte 0x00000C5E
_08044700:	.4byte 0x000007E9

_08044704:
	cmp		r0, #0x3
	bgt		_08044710
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044710:
	cmp		r0, #0x7
	ble		_08044764
	cmp		r0, #0xb
	bgt		_08044720
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044720:
	cmp		r0, #0xf
	ble		_08044764
	cmp		r0, #0x13
	bgt		_08044730
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044730:
	cmp		r0, #0x17
	ble		_08044764
	cmp		r0, #0x1b
	bgt		_08044740
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044740:
	cmp		r0, #0x1f
	ble		_08044764
	cmp		r0, #0x23
	bgt		_08044750
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044750:
	cmp		r0, #0x27
	ble		_08044764
	cmp		r0, #0x2b
	bgt		_08044760
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	b		_0804476c
_08044760:
	cmp		r0, #0x2f
	bgt		_0804476e
_08044764:
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	ldr		r2, _08044784
	add		r0, r2, #0x0
_0804476c:
	strh	r0, [r1, #0x0]
_0804476e:
	ldr		r1, [r4, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080447a8
	mov		r0, #0x2
	and		r1, r0
	cmp		r1, #0x0
	beq		_0804478c
	ldr		r1, _08044788
	b		_080447aa

_08044784:	.4byte 0x00007FFF
_08044788:	.4byte 0x08044AFD

_0804478c:
	add		r0, r4, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _080447a0
	cmp		r0, #0xe
	bne		_080447aa
	ldr		r1, _080447a4
	b		_080447aa

_080447a0:	.4byte 0x08044A61
_080447a4:	.4byte 0x08044AA9

_080447a8:
	ldr		r1, _080447c4
_080447aa:
	mov		r2, #0xfa
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	add		r0, r4, #0x0
	add		r2, r7, #0x0
	bl		sub_0802b914
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080447c4:	.4byte 0x080449D9
	thumb_func_end sub_080446c0

	thumb_func_start sub_080447c8
sub_080447c8:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r1, #0x0
	bl		sub_08044894
	ldr		r1, [r0, #0x0]
	ldr		r2, [r0, #0x4]
	add		r0, #0x7c
	mov		r5, #0x80
	lsl		r5, r5, #0x8
	add		r3, r5, #0x0
	ldrh	r0, [r0, #0x0]
	add		r3, r3, r0
	lsl		r3, r3, #0x10
	asr		r3, r3, #0x10
	add		r0, r4, #0x0
	bl		sub_0802c4e0
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x447F2, 0x2
	thumb_func_end sub_080447c8

	thumb_func_start sub_080447f4
sub_080447f4:
	ldr		r2, _08044810
	add		r1, r0, r2
	mov		r2, #0x0
	str		r2, [r1, #0x0]
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r1, r0, r3
	strb	r2, [r1, #0x0]
	ldr		r1, _08044814
	add		r0, r0, r1
	mov		r1, #0x8
	strb	r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x4480E, 0x2

_08044810:	.4byte 0x00000814
_08044814:	.4byte 0x000007F1
	thumb_func_end sub_080447f4

	thumb_func_start sub_08044818
sub_08044818:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r6, r2, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r3, r5, r0
	add		r0, #0x1
	add		r1, r5, r0
	ldrb	r0, [r3, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bcs		_0804488c
	ldr		r2, _0804487c
	add		r1, r0, #0x0
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x5
	ldr		r3, _08044880
	add		r0, r0, r3
	add		r4, r0, r2
	lsl		r2, r1, #0x2
	ldr		r3, _08044884
	add		r0, r5, r3
	add		r0, r0, r2
	str		r4, [r0, #0x0]
	add		r0, r4, #0x0
	add		r2, r7, #0x0
	add		r3, r6, #0x0
	bl		sub_08035d4c
	cmp		r6, #0x0
	beq		_0804486a
	ldr		r0, _08044888
	add		r1, r5, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0804486a
	str		r4, [r1, #0x0]
_0804486a:
	mov		r3, #0xfe
	lsl		r3, r3, #0x3
	add		r1, r5, r3
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x1
	b		_0804488e

.incbin "base.gba", 0x4487A, 0x2

_0804487c:	.4byte RunGameLogic_CallBack
_08044880:	.4byte 0x00000D78
_08044884:	.4byte 0x000007F4
_08044888:	.4byte 0x00000814

_0804488c:
	mov		r0, #0x0
_0804488e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08044818

	thumb_func_start sub_08044894
sub_08044894:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x16
	ldr		r2, _080448a4
	add		r0, r0, r2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x448A2, 0x2

_080448a4:	.4byte 0x00000C38
	thumb_func_end sub_08044894

	thumb_func_start sub_080448a8
sub_080448a8:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x16
	ldr		r3, _080448b8
	add		r0, r0, r3
	add		r0, r0, r1
	str		r2, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x448B6, 0x2

_080448b8:	.4byte 0x00000C38
	thumb_func_end sub_080448a8

	thumb_func_start sub_080448bc
sub_080448bc:
	push	{ lr }
	ldr		r1, _080448cc
	add		r0, r0, r1
	bl		sub_08029050
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x448CA, 0x2

_080448cc:	.4byte 0x0000057C
	thumb_func_end sub_080448bc

	thumb_func_start sub_080448d0
sub_080448d0:
	push	{ r4, lr }
	ldr		r4, _080448e0
	add		r0, r0, r4
	bl		sub_0802a73c
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080448e0:	.4byte 0x00000824
	thumb_func_end sub_080448d0

	thumb_func_start sub_080448e4
sub_080448e4:
	push	{ lr }
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	add		r2, r3, #0x0
	ldr		r3, [sp, #0x0+0x4]
	lsl		r3, r3, #0x10
	asr		r3, r3, #0x10
	bl		sub_0802aa88
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x448FA, 0x2
	thumb_func_end sub_080448e4

	thumb_func_start sub_080448fc
sub_080448fc:
	push	{ lr }
	add		r2, r0, #0x0
	add		r3, r1, #0x0
	ldr		r1, _08044920
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08044924
	add		r0, r3, #0x0
	add		r0, #0xba
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	bl		sub_080441f8
	b		_08044930

_08044920:	.4byte 0x000007DA

_08044924:
	add		r0, r3, #0x0
	add		r0, #0xba
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	bl		sub_08044164
_08044930:
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080448fc

	thumb_func_start sub_08044934
sub_08044934:
	push	{ r4, r5, lr }
	ldr		r5, _08044980
	ldr		r0, _08044984
	add		r4, r5, r0
	add		r0, r4, #0x0
	bl		sub_0802a95c
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_0802a960
	ldr		r2, _08044988
	ldr		r1, _0804498c
	str		r0, [r1, #0x0]
	str		r2, [r1, #0x4]
	ldr		r0, _08044990
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
	ldr		r0, _08044994
	mov		r4, #0x2
	strh	r4, [r0, #0x0]
	ldr		r0, _08044998
	add		r5, r5, r0
	ldr		r1, [r5, #0x0]
	cmp		r1, #0x0
	bne		_0804496c
	ldr		r1, _0804499c
_0804496c:
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r1, _080449a0
	ldrh	r0, [r1, #0x0]
	orr		r0, r4
	strh	r0, [r1, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08044980:	.4byte RunGameLogic_CallBack
_08044984:	.4byte 0x00000848
_08044988:	.4byte BG2Rotation_ScalingParameterA_dx_
_0804498c:	.4byte DMA0SourceAddress
_08044990:	.4byte 0xA6600004
_08044994:	.4byte InterruptRequestFlags_IRQAcknowledge
_08044998:	.4byte 0x000007F4
_0804499c:	.4byte 0x080270F1
_080449a0:	.4byte InterruptEnableRegister
	thumb_func_end sub_08044934

	thumb_func_start sub_080449a4
sub_080449a4:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r1, _080449d0
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	bl		sub_0802c6c8
	mov		r2, #0x83
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	cmp		r0, #0x0
	beq		_080449c2
	mov		r0, #0x85
	lsl		r0, r0, #0x8
	add		r1, r0, #0x0
_080449c2:
	ldr		r2, _080449d4
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x449CE, 0x2

_080449d0:	.4byte 0x000007DD
_080449d4:	.4byte 0x000007E6
	thumb_func_end sub_080449a4

	thumb_func_start sub_080449d8
sub_080449d8:
	push	{ lr }
	ldr		r0, _08044a34
	ldr		r1, _08044a38
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_080449f4
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
_080449f4:
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044a3c
	and		r0, r1
	ldr		r3, _08044a40
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08044a44
	ldr		r2, _08044a48
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldr		r3, _08044a4c
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	add		r1, #0x44
	ldr		r0, _08044a50
	str		r0, [r1, #0x0]
	ldr		r1, _08044a54
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r2, _08044a58
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044a5c
	and		r0, r1
	strh	r0, [r2, #0x0]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44A32, 0x2

_08044a34:	.4byte RunGameLogic_CallBack
_08044a38:	.4byte 0x0000080D
_08044a3c:	.4byte 0x0000FFF8
_08044a40:	.4byte 0x00000401
_08044a44:	.4byte BG1Control
_08044a48:	.4byte 0x00002F05
_08044a4c:	.4byte 0x0000F889
_08044a50:	.4byte 0x10082C42
_08044a54:	.4byte 0x080270F1
_08044a58:	.4byte InterruptEnableRegister
_08044a5c:	.4byte 0x0000FFFD
	push	{ lr }
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044a90
	and		r0, r1
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08044a94
	ldr		r2, _08044a98
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r1, _08044a9c
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r2, _08044aa0
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044aa4
	and		r0, r1
	strh	r0, [r2, #0x0]
	pop		{ r0 }
	bx		r0

_08044a90:	.4byte 0x0000FFF8
_08044a94:	.4byte BG2Control
_08044a98:	.4byte 0x0000F889
_08044a9c:	.4byte 0x080270F1
_08044aa0:	.4byte InterruptEnableRegister
_08044aa4:	.4byte 0x0000FFFD
	push	{ lr }
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044ae0
	and		r0, r1
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08044ae4
	ldr		r2, _08044ae8
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	add		r1, #0x44
	ldr		r0, _08044aec
	str		r0, [r1, #0x0]
	ldr		r1, _08044af0
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r2, _08044af4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044af8
	and		r0, r1
	strh	r0, [r2, #0x0]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44ADE, 0x2

_08044ae0:	.4byte 0x0000FFF8
_08044ae4:	.4byte BG2Control
_08044ae8:	.4byte 0x0000F889
_08044aec:	.4byte 0x060D3B44
_08044af0:	.4byte 0x080270F1
_08044af4:	.4byte InterruptEnableRegister
_08044af8:	.4byte 0x0000FFFD
	thumb_func_end sub_080449d8

	thumb_func_start sub_08044afc
sub_08044afc:
	push	{ lr }
	ldr		r0, _08044b48
	ldr		r1, _08044b4c
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_08044b18
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0xa0
	lsl		r1, r1, #0x13
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
_08044b18:
	mov		r2, #0x80
	lsl		r2, r2, #0x13
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044b50
	and		r0, r1
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r1, _08044b54
	ldr		r2, _08044b58
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r1, _08044b5c
	mov		r0, #0x1
	bl		sub_0807df68
	ldr		r2, _08044b60
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08044b64
	and		r0, r1
	strh	r0, [r2, #0x0]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44B46, 0x2

_08044b48:	.4byte RunGameLogic_CallBack
_08044b4c:	.4byte 0x0000080D
_08044b50:	.4byte 0x0000FFF8
_08044b54:	.4byte BG2Control
_08044b58:	.4byte 0x0000F88B
_08044b5c:	.4byte 0x080270F1
_08044b60:	.4byte InterruptEnableRegister
_08044b64:	.4byte 0x0000FFFD
	add		r2, r0, #0x0
	ldr		r0, [r2, #0xc]
	cmp		r0, #0x0
	beq		_08044b76
	sub		r0, #0x1
	str		r0, [r2, #0xc]
	b		_08044b84
_08044b76:
	str		r0, [r2, #0x2c]
	ldrb	r0, [r2, #0x10]
	mov		r1, #0x5
	orr		r1, r0
	strb	r1, [r2, #0x10]
	ldr		r0, _08044b88
	str		r0, [r2, #0x0]
_08044b84:
	bx		lr

.incbin "base.gba", 0x44B86, 0x2

_08044b88:	.4byte sub_08044b8c
	thumb_func_end sub_08044afc

	thumb_func_start sub_08044b8c
sub_08044b8c:
	push	{ r4, lr }
	add		r2, r0, #0x0
	ldr		r1, [r2, #0x2c]
	ldr		r3, _08044be0
	mov		r4, #0x2c
	ldrsh	r0, [r2, r4]
	cmp		r0, #0x0
	bge		_08044b9e
	add		r0, #0x3f
_08044b9e:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08044bb0
	ldr		r3, _08044be4
	add		r0, r0, r3
_08044bb0:
	asr		r3, r0, #0xd
	ldr		r0, _08044be8
	cmp		r1, r0
	ble		_08044bc0
	mov		r0, #0x78
	str		r0, [r2, #0xc]
	ldr		r0, _08044bec
	str		r0, [r2, #0x0]
_08044bc0:
	ldrh	r0, [r2, #0x16]
	sub		r0, r0, r3
	strh	r0, [r2, #0x16]
	mov		r4, #0x80
	lsl		r4, r4, #0x4
	add		r0, r1, r4
	str		r0, [r2, #0x2c]
	asr		r1, r1, #0x8
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	sub		r0, r0, r1
	str		r0, [r2, #0x1c]
	str		r0, [r2, #0x20]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08044be0:	.4byte 0x08101068
_08044be4:	.4byte 0x00001FFF
_08044be8:	.4byte 0x0000FFFF
_08044bec:	.4byte 0x08044bf1
	add		r1, r0, #0x0
	ldr		r0, [r1, #0xc]
	cmp		r0, #0x0
	beq		_08044bfe
	sub		r0, #0x1
	str		r0, [r1, #0xc]
	b		_08044c04
_08044bfe:
	str		r0, [r1, #0x2c]
	ldr		r0, _08044c08
	str		r0, [r1, #0x0]
_08044c04:
	bx		lr

.incbin "base.gba", 0x44C06, 0x2

_08044c08:	.4byte sub_08044c0c
	thumb_func_end sub_08044b8c

	thumb_func_start sub_08044c0c
sub_08044c0c:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x2c]
	ldr		r1, _08044c68
	mov		r2, #0x2c
	ldrsh	r0, [r4, r2]
	cmp		r0, #0x0
	bge		_08044c1e
	add		r0, #0x3f
_08044c1e:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08044c30
	ldr		r1, _08044c6c
	add		r0, r0, r1
_08044c30:
	asr		r6, r0, #0xd
	ldr		r0, _08044c70
	cmp		r5, r0
	ble		_08044c46
	ldr		r0, _08044c74
	mov		r2, #0xea
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	add		r1, r4, #0x0
	bl		sub_08054ed0
_08044c46:
	ldrh	r0, [r4, #0x16]
	sub		r0, r0, r6
	strh	r0, [r4, #0x16]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r5, r1
	str		r0, [r4, #0x2c]
	asr		r0, r5, #0x8
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r0, r2
	str		r0, [r4, #0x1c]
	str		r0, [r4, #0x20]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44C66, 0x2

_08044c68:	.4byte 0x08101068
_08044c6c:	.4byte 0x00001FFF
_08044c70:	.4byte 0x0000FFFF
_08044c74:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08044c0c

	thumb_func_start sub_08044c78
sub_08044c78:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r8, r2
	ldr		r1, _08044cdc
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08044ce4
	ldr		r2, _08044ce0
	add		r0, r6, r2
	ldrb	r5, [r0, #0x0]
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c5d0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x3
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	sub		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_0802c610
	add		r1, r0, #0x0
	lsl		r1, r1, #0x3
	mov		r2, r8
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	sub		r1, r1, r0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	add		r0, r4, #0x0
	bl		sub_08028738
	b		_08044cf6

_08044cdc:	.4byte 0x00000BA8
_08044ce0:	.4byte 0x00000BAA

_08044ce4:
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	mov		r0, r8
	lsl		r2, r0, #0x10
	asr		r2, r2, #0x10
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0802c35c
_08044cf6:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08044c78

	thumb_func_start sub_08044d08
sub_08044d08:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r7, r0, #0x0
	ldr		r0, _08044da0
	add		r0, r0, r7
	mov		r8, r0
	str		r7, [sp, #0x0]
	ldr		r4, [r0, #0x18]
	cmp		r4, #0x0
	bge		_08044d28
	ldr		r1, _08044da4
	add		r4, r4, r1
_08044d28:
	lsr		r4, r4, #0x10
	mov		r0, r8
	ldr		r2, [r0, #0x1c]
	cmp		r2, #0x0
	bge		_08044d36
	ldr		r1, _08044da4
	add		r2, r2, r1
_08044d36:
	ldr		r1, _08044da8
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	lsl		r4, r4, #0x10
	asr		r1, r4, #0x10
	lsr		r0, r2, #0x10
	str		r0, [sp, #0x4]
	asr		r2, r2, #0x10
	add		r0, r7, #0x0
	mov		r3, #0x0
	bl		sub_0802c3d4
	add		r6, r0, #0x0
	mov		r0, #0x7f
	and		r6, r0
	ldr		r1, _08044dac
	add		r0, r7, r1
	ldrh	r5, [r0, #0x0]
	mov		r0, #0x2
	mov		r9, r0
	mov		r0, #0x2
	and		r5, r0
	lsl		r0, r5, #0x10
	lsr		r5, r0, #0x10
	str		r4, [sp, #0x8]
	cmp		r6, #0x7f
	beq		_08044d92
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_0802c650
	mov		r1, #0x80
	and		r1, r0
	cmp		r1, #0x0
	beq		_08044db4
	mov		r0, r10
	ldr		r1, [r0, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08044d8e
	mov		r2, #0x1
_08044d8e:
	cmp		r2, #0x0
	beq		_08044db4
_08044d92:
	mov		r1, r9
	orr		r5, r1
	lsl		r0, r5, #0x10
	lsr		r5, r0, #0x10
	ldr		r0, _08044db0
	add		r6, r7, r0
	b		_08044dbc

_08044da0:	.4byte 0x00000824
_08044da4:	.4byte 0x0000FFFF
_08044da8:	.4byte 0x00000814
_08044dac:	.4byte 0x00000BA8
_08044db0:	.4byte 0x00000BAA

_08044db4:
	ldr		r0, _08044dfc
	add		r0, r8
	strb	r6, [r0, #0x0]
	add		r6, r0, #0x0
_08044dbc:
	mov		r0, #0xe1
	lsl		r0, r0, #0x2
	add		r0, r8
	strh	r5, [r0, #0x0]
	mov		r1, r8
	ldrh	r4, [r1, #0x14]
	ldr		r0, [sp, #0x8]
	asr		r1, r0, #0x10
	ldr		r0, [sp, #0x4]
	lsl		r2, r0, #0x10
	asr		r2, r2, #0x10
	add		r0, r7, #0x0
	bl		sub_08044c78
	ldr		r1, _08044e00
	add		r3, r7, r1
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	lsl		r4, r4, #0x10
	asr		r0, r4, #0x10
	sub		r2, r1, r0
	cmp		r2, #0x0
	blt		_08044e04
	mov		r1, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r2, r0
	ble		_08044df6
	mov		r1, #0x1
_08044df6:
	str		r1, [r3, #0x0]
	b		_08044e14

.incbin "base.gba", 0x44DFA, 0x2

_08044dfc:	.4byte 0x00000386
_08044e00:	.4byte 0x00000BE8

_08044e04:
	mov		r2, #0x0
	sub		r1, r0, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r1, r0
	ble		_08044e12
	mov		r2, #0x1
_08044e12:
	str		r2, [r3, #0x0]
_08044e14:
	ldrb	r2, [r6, #0x0]
	ldr		r1, _08044e3c
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08044e40
	sub		r3, r2, #0x6
	add		r4, r2, #0x0
	add		r4, #0x8
	ldr		r0, [sp, #0x0]
	ldrh	r1, [r0, #0x14]
	cmp		r3, #0x0
	bge		_08044e32
	sub		r0, r2, #0x5
	add		r3, r0, r1
_08044e32:
	cmp		r4, r1
	ble		_08044e5a
	add		r0, r2, #0x7
	b		_08044e58

.incbin "base.gba", 0x44E3A, 0x2

_08044e3c:	.4byte 0x00000BE8

_08044e40:
	add		r3, r2, #0x0
	sub		r3, #0x8
	add		r4, r2, #0x6
	ldr		r0, [sp, #0x0]
	ldrh	r1, [r0, #0x14]
	cmp		r3, #0x0
	bge		_08044e52
	sub		r0, r2, #0x7
	add		r3, r0, r1
_08044e52:
	cmp		r4, r1
	ble		_08044e5a
	add		r0, r2, #0x5
_08044e58:
	sub		r4, r0, r1
_08044e5a:
	ldr		r1, _08044e78
	add		r0, r7, r1
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	add		r0, r7, r1
	strb	r4, [r0, #0x0]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x44E76, 0x2

_08044e78:	.4byte 0x00000BEC
	thumb_func_end sub_08044d08

	thumb_func_start sub_08044e7c
sub_08044e7c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x30
	add		r7, r0, #0x0
	ldr		r0, _08044eb4
	add		r0, r7, r0
	str		r0, [sp, #0x18]
	ldr		r1, _08044eb8
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r2, [sp, #0x18]
	mov		r10, r2
	ldr		r3, _08044ebc
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x12
	bls		_08044eaa
	bl		sub_080459d0
_08044eaa:
	lsl		r0, r0, #0x2
	ldr		r1, _08044ec0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08044eb4:	.4byte 0x00000824
_08044eb8:	.4byte 0x00000814
_08044ebc:	.4byte 0x00000BE4
_08044ec0:	.4byte 0x08044ec4
_08044ec4:	.4byte 0x08044f10

.incbin "base.gba", 0x44EC8, 0x48
	thumb_func_end sub_08044e7c


.incbin "base.gba", 0x44F10, 0xA0
_08044fb0:	.4byte 0x08044fc8

.incbin "base.gba", 0x44FB4, 0xA1C
	thumb_func_start sub_080459d0
sub_080459d0:
	add		sp, #0x30
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x459E0, 0x10
	thumb_func_end sub_080459d0

	thumb_func_start sub_080459f0
sub_080459f0:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r6, r0, #0x0
	ldr		r0, _08045a5c
	add		r4, r6, r0
	ldr		r1, _08045a60
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	add		r0, r4, #0x0
	bl		sub_0802a980
	ldr		r5, _08045a64
	ldrh	r2, [r5, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x78
	bl		sub_0802aa20
	ldrh	r1, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_0802a990
	ldrh	r1, [r5, #0x2]
	add		r0, r4, #0x0
	bl		sub_0802a9a0
	ldrh	r1, [r5, #0x6]
	add		r0, r4, #0x0
	bl		sub_0802a9b0
	mov		r0, r8
	add		r0, #0x7c
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0802a9cc
	mov		r0, r8
	ldr		r1, [r0, #0x0]
	ldr		r2, [r0, #0x4]
	add		r0, r4, #0x0
	bl		sub_0802a9e8
	add		r0, r4, #0x0
	bl		sub_0802ac00
	add		r6, #0xbc
	ldrh	r0, [r5, #0x8]
	str		r0, [r6, #0x3c]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08045a5c:	.4byte 0x00000824
_08045a60:	.4byte 0x00000814
_08045a64:	.4byte 0x08108940
	thumb_func_end sub_080459f0

	thumb_func_start sub_08045a68
sub_08045a68:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r0, _08045a98
	add		r4, r5, r0
	add		r0, r5, #0x0
	bl		sub_08044d08
	add		r0, r5, #0x0
	bl		sub_08044e7c
	add		r0, r4, #0x0
	bl		sub_0802addc
	ldr		r1, [r4, #0x18]
	ldr		r2, [r4, #0x1c]
	mov		r0, #0x14
	ldrsh	r3, [r4, r0]
	add		r0, r5, #0x0
	bl		sub_0802c518
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x45A96, 0x2

_08045a98:	.4byte 0x00000824
	thumb_func_end sub_08045a68

	thumb_func_start sub_08045a9c
sub_08045a9c:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r3, r1, #0x18
	add		r4, r3, #0x0
	ldr		r1, _08045ad0
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08045ae4
	ldr		r5, _08045ad4
	add		r0, r2, r5
	add		r5, #0x1
	add		r1, r2, r5
	ldrb	r2, [r0, #0x0]
	ldrb	r0, [r1, #0x0]
	cmp		r2, r0
	bhi		_08045ad8
	cmp		r3, r2
	bcc		_08045ae0
	cmp		r3, r0
	bhi		_08045ae0
	b		_08045ae4

_08045ad0:	.4byte 0x000007DA
_08045ad4:	.4byte 0x00000BEC

_08045ad8:
	cmp		r4, r2
	bcs		_08045ae4
	cmp		r4, r0
	bls		_08045ae4
_08045ae0:
	mov		r0, #0x0
	b		_08045ae6
_08045ae4:
	mov		r0, #0x1
_08045ae6:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08045a9c

	thumb_func_start sub_08045aec
sub_08045aec:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _08045b3c
	mov		r1, #0x0
	strb	r1, [r0, #0x2]
	ldr		r2, _08045b40
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	sub		r2, #0xa
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	add		r0, r4, r2
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	ldr		r0, _08045b44
	ldr		r1, _08045b48
	mov		r2, #0x10
	bl		sub_08071b6c
	add		r0, r4, #0x0
	bl		sub_0802c72c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x12
	bhi		_08045bea
	lsl		r0, r0, #0x2
	ldr		r1, _08045b4c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08045b3c:	.4byte 0x03006D70
_08045b40:	.4byte 0x00000C7C
_08045b44:	.4byte 0x0810894c
_08045b48:	.4byte 0x03002368
_08045b4c:	.4byte 0x08045b50
_08045b50:	.4byte 0x08045bc8

.incbin "base.gba", 0x45B54, 0x48
	thumb_func_end sub_08045aec


.incbin "base.gba", 0x45B9C, 0x4E

_08045bea:

.incbin "base.gba", 0x45BEA, 0xA
	thumb_func_start sub_08045bf4
sub_08045bf4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r2, r0, #0x0
	add		r3, r1, #0x0
	ldr		r0, _08045c30
	add		r4, r2, r0
	ldr		r7, [r4, #0x18]
	ldr		r1, [r4, #0x1c]
	mov		r12, r1
	ldr		r1, _08045c34
	add		r0, r2, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x3
	bne		_08045c3c
	ldr		r1, _08045c38
	add		r0, r2, r1
	ldr		r2, [r0, #0x0]
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08045c3c
	add		r0, r2, #0x0
	add		r0, #0xbc
	ldr		r5, [r0, #0x0]
	b		_08045c3e

.incbin "base.gba", 0x45C2E, 0x2

_08045c30:	.4byte 0x00000824
_08045c34:	.4byte 0x000007D4
_08045c38:	.4byte 0x00000814

_08045c3c:
	mov		r5, #0x0
_08045c3e:
	mov		r0, #0x14
	ldrsh	r2, [r4, r0]
	mov		r8, r2
	ldrh	r1, [r3, #0x10]
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	and		r2, r1
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r2, r0
	beq		_08045c5e
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r2, r0
	beq		_08045c6e
	b		_08045c8e
_08045c5e:
	ldr		r2, [r3, #0x0]
	ldr		r1, [r3, #0x4]
	add		r0, r3, #0x0
	add		r0, #0x7a
	ldrh	r6, [r0, #0x0]
	add		r0, #0x42
	ldr		r4, [r0, #0x0]
	b		_08045c92
_08045c6e:
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	mov		r0, #0x84
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bne		_08045c8e
	ldr		r2, [r3, #0x0]
	ldr		r1, [r3, #0x4]
	mov		r0, #0x26
	ldrsh	r6, [r3, r0]
	add		r0, r3, #0x0
	add		r0, #0x71
	ldrb	r0, [r0, #0x0]
	lsl		r4, r0, #0x4
	b		_08045c92
_08045c8e:
	mov		r0, #0x0
	b		_08045d36
_08045c92:
	sub		r0, r7, r2
	cmp		r0, #0x0
	bge		_08045c9c
	ldr		r2, _08045d40
	add		r0, r0, r2
_08045c9c:
	asr		r0, r0, #0x14
	mov		r2, r12
	sub		r1, r2, r1
	cmp		r1, #0x0
	bge		_08045caa
	ldr		r2, _08045d40
	add		r1, r1, r2
_08045caa:
	asr		r1, r1, #0x14
	bl		sub_08028738
	lsl		r0, r0, #0x10
	add		r1, r4, #0x0
	cmp		r4, #0x0
	bge		_08045cbc
	ldr		r2, _08045d44
	add		r1, r4, r2
_08045cbc:
	asr		r4, r1, #0x17
	cmp		r4, #0x10
	ble		_08045cc4
	mov		r4, #0x10
_08045cc4:
	asr		r2, r0, #0x10
	lsl		r0, r6, #0x10
	asr		r0, r0, #0x10
	sub		r0, r2, r0
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08045cd6
	neg		r0, r0
_08045cd6:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	mov		r1, #0x0
	cmp		r0, r3
	bgt		_08045ce6
	mov		r1, #0x1
_08045ce6:
	cmp		r1, #0x0
	bne		_08045cec
	neg		r4, r4
_08045cec:
	add		r0, r5, #0x0
	cmp		r5, #0x0
	bge		_08045cf6
	ldr		r1, _08045d44
	add		r0, r5, r1
_08045cf6:
	asr		r5, r0, #0x17
	cmp		r5, #0x10
	ble		_08045cfe
	mov		r5, #0x10
_08045cfe:
	mov		r1, r8
	sub		r0, r2, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08045d0c
	neg		r0, r0
_08045d0c:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0x0
	cmp		r0, r3
	bgt		_08045d18
	mov		r1, #0x1
_08045d18:
	cmp		r1, #0x0
	bne		_08045d1e
	neg		r5, r5
_08045d1e:
	ldr		r3, _08045d48
	add		r2, r4, #0x0
	add		r2, #0x10
	add		r1, r5, #0x0
	add		r1, #0x10
	lsl		r0, r1, #0x5
	add		r0, r0, r1
	add		r0, r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
_08045d36:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08045d40:	.4byte 0x000FFFFF
_08045d44:	.4byte 0x007FFFFF
_08045d48:	.4byte 0x0810896c
	thumb_func_end sub_08045bf4

	thumb_func_start sub_08045d4c
sub_08045d4c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	mov		r8, r0
	ldr		r0, _08045e20
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r0, _08045e24
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	mov		r1, #0xf
	and		r1, r0
	str		r1, [sp, #0x8]
	ldr		r0, _08045e28
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r2, #0xf0
	lsl		r2, r2, #0x4
	mov		r10, r2
	mov		r3, r10
	and		r3, r0
	mov		r10, r3
	ldr		r0, _08045e28
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	mov		r1, #0x1
	and		r1, r0
	cmp		r1, #0x0
	beq		_08045d92
	bl		sub_08046668
_08045d92:
	ldr		r2, _08045e2c
	ldrb	r0, [r2, #0x2]
	cmp		r0, #0x0
	beq		_08045da2
	strb	r1, [r2, #0x2]
	mov		r0, #0x1c
	bl		sub_0807073c
_08045da2:
	mov		r0, r9
	add		r0, #0x78
	str		r0, [sp, #0x14]
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x4
	ble		_08045db0
	b		_08045f90
_08045db0:
	cmp		r1, #0x3
	bge		_08045db6
	b		_08045f62
_08045db6:
	mov		r2, r9
	ldr		r1, [r2, #0x48]
	mov		r0, #0x28
	and		r0, r1
	cmp		r0, #0x28
	beq		_08045dc4
	b		_08045f62
_08045dc4:
	mov		r6, #0x0
	mov		r0, #0x9
	neg		r0, r0
	and		r1, r0
	str		r1, [r2, #0x48]
	ldr		r5, _08045e30
	ldr		r0, _08045e34
	ldrh	r1, [r0, #0x2c]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08070f0c
	mov		r4, #0x5
	ldr		r0, _08045e38
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r3, _08045e3c
	add		r3, r8
	str		r3, [sp, #0x10]
	cmp		r4, r0
	bge		_08045e0a
	add		r7, r0, #0x0
	add		r5, #0x3c
_08045df8:
	cmp		r4, #0x8
	beq		_08045e02
	ldr		r0, [r5, #0x0]
	bl		sub_08070f0c
_08045e02:
	add		r5, #0xc
	add		r4, #0x1
	cmp		r4, r7
	blt		_08045df8
_08045e0a:
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r10, r0
	beq		_08045e98
	cmp		r10, r0
	bgt		_08045e40
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r10, r0
	beq		_08045e52
	b		_08045f32

_08045e20:	.4byte 0x00000814
_08045e24:	.4byte 0x000007D4
_08045e28:	.4byte 0x000007DA
_08045e2c:	.4byte 0x03006D70
_08045e30:	.4byte 0x08124544
_08045e34:	.4byte 0x081245c8
_08045e38:	.4byte 0x0000000B
_08045e3c:	.4byte 0x00000C88

_08045e40:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r10, r0
	beq		_08045f14
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r10, r0
	beq		_08045ef8
	b		_08045f32
_08045e52:
	mov		r0, r9
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r2, r0, #0x1
	ldr		r0, _08045e78
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08045e84
	ldr		r6, _08045e7c
	cmp		r2, #0x3
	bgt		_08045f32
	ldr		r6, _08045e80
	cmp		r2, #0x0
	ble		_08045f32
	b		_08045f30

.incbin "base.gba", 0x45E76, 0x2

_08045e78:	.4byte 0x000007DA
_08045e7c:	.4byte 0x08109230
_08045e80:	.4byte 0x081091f0

_08045e84:
	ldr		r6, _08045e90
	cmp		r2, #0x0
	bne		_08045f32
_08045e8a:
	ldr		r6, _08045e94
	b		_08045f32

.incbin "base.gba", 0x45E8E, 0x2

_08045e90:	.4byte 0x08109210
_08045e94:	.4byte 0x081091f0

_08045e98:
	ldr		r0, _08045eec
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_08045f30
	mov		r7, #0x0
	mov		r0, r9
	bl		sub_080374cc
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r2, sp, #0x4
	mov		r0, r9
	mov		r1, sp
	bl		sub_0801ce24
	ldr		r5, _08045ef0
	add		r5, r8
	ldrb	r0, [r5, #0x0]
	mov		r1, #0x0
	add		r2, r4, #0x0
	bl		sub_08057224
	cmp		r0, #0x0
	bne		_08045ee2
	ldr		r1, [sp, #0x4]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldrb	r0, [r5, #0x0]
	bl		sub_0805729c
	cmp		r0, #0x0
	beq		_08045ee4
_08045ee2:
	mov		r7, #0x1
_08045ee4:
	ldr		r6, _08045ef4
	cmp		r7, #0x0
	beq		_08045f32
	b		_08045e8a

_08045eec:	.4byte 0x000007DA
_08045ef0:	.4byte 0x000007DD
_08045ef4:	.4byte 0x08109210

_08045ef8:
	mov		r0, r9
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	bne		_08045f0c
	mov		r0, #0x21
	bl		sub_0807073c
	b		_08045f32
_08045f0c:
	mov		r0, #0x22
	bl		sub_0807073c
	b		_08045f32
_08045f14:
	mov		r0, r9
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r1, r0, #0x1
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r1, #0x0
	beq		_08045e8a
	sub		r0, #0x1
	ldr		r6, _08045f80
	cmp		r1, r0
	bge		_08045f32
_08045f30:
	ldr		r6, _08045f84
_08045f32:
	ldr		r1, [sp, #0x10]
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bge		_08045f54
	mov		r0, r9
	bl		sub_080374cc
	add		r1, r0, #0x0
	ldr		r0, _08045f88
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08069544
	ldr		r6, _08045f84
	cmp		r0, #0x0
	beq		_08045f54
	ldr		r6, _08045f8c
_08045f54:
	cmp		r6, #0x0
	beq		_08045f62
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x0
	bl		sub_08029d24
_08045f62:
	ldr		r2, [sp, #0x8]
	cmp		r2, #0x4
	bgt		_08045f90
	cmp		r2, #0x2
	blt		_08045f74
	mov		r0, r9
	mov		r1, r8
	bl		sub_0803ac38
_08045f74:
	ldr		r3, [sp, #0x8]
	cmp		r3, #0x3
	bge		_08045fa4
	cmp		r3, #0x2
	beq		_08045f9a
	b		_08046360

_08045f80:	.4byte 0x08109250
_08045f84:	.4byte 0x08109210
_08045f88:	.4byte 0x02022400
_08045f8c:	.4byte 0x081091f0

_08045f90:
	ldr		r0, [sp, #0x8]
	cmp		r0, #0x5
	bne		_08045f98
	b		_0804633c
_08045f98:
	b		_08046360
_08045f9a:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r10, r0
	bne		_08045fa4
	b		_08046360
_08045fa4:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r10, r0
	bne		_08045fec
	mov		r1, r9
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08045fec
	ldr		r1, _08045fe0
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08045fc4
	b		_08046360
_08045fc4:
	ldr		r3, _08045fe4
	ldr		r2, _08045fe8
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
	b		_08046360

_08045fe0:	.4byte 0x00000C74
_08045fe4:	.4byte 0x08124544
_08045fe8:	.4byte 0x081245c8

_08045fec:
	ldr		r0, _080460e4
	add		r0, r8
	mov		r6, #0x0
	ldr		r7, [r0, #0x18]
	ldr		r0, [r0, #0x1c]
	mov		r10, r0
	mov		r5, #0x80
	lsl		r5, r5, #0x7
	mov		r4, #0x0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	bge		_0804605c
_0804600a:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r8
	bl		sub_08044894
	add		r2, r0, #0x0
	cmp		r2, r9
	beq		_0804604e
	ldr		r0, [r2, #0x0]
	sub		r1, r7, r0
	cmp		r1, #0x0
	bge		_08046026
	ldr		r3, _080460e8
	add		r1, r1, r3
_08046026:
	asr		r1, r1, #0x10
	ldr		r0, [r2, #0x4]
	mov		r3, r10
	sub		r0, r3, r0
	cmp		r0, #0x0
	bge		_08046036
	ldr		r3, _080460e8
	add		r0, r0, r3
_08046036:
	asr		r0, r0, #0x10
	add		r3, r1, #0x0
	mul		r3, r1
	add		r1, r3, #0x0
	add		r3, r0, #0x0
	mul		r3, r0
	add		r0, r3, #0x0
	add		r0, r1, r0
	cmp		r0, r5
	bge		_0804604e
	add		r6, r2, #0x0
	add		r5, r0, #0x0
_0804604e:
	add		r4, #0x1
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_0804600a
_0804605c:
	cmp		r6, #0x0
	bne		_08046062
	b		_080462f4
_08046062:
	ldr		r1, _080460ec
	add		r1, r8
	ldr		r0, [r1, #0x0]
	cmp		r6, r0
	beq		_08046076
	str		r6, [r1, #0x0]
	ldr		r1, _080460f0
	add		r1, r8
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08046076:
	ldr		r2, _080460f4
	add		r3, r6, #0x0
	add		r3, #0x4c
	ldrb	r1, [r3, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r2, [r0, #0x0]
	ldr		r4, _080460f8
	add		r4, r8
	strh	r2, [r4, #0x0]
	ldr		r0, [r6, #0x0]
	sub		r1, r7, r0
	str		r3, [sp, #0x18]
	cmp		r1, #0x0
	bge		_0804609c
	ldr		r0, _080460e8
	add		r1, r1, r0
_0804609c:
	asr		r1, r1, #0x10
	ldr		r0, [r6, #0x4]
	mov		r3, r10
	sub		r0, r3, r0
	cmp		r0, #0x0
	bge		_080460ac
	ldr		r3, _080460e8
	add		r0, r0, r3
_080460ac:
	asr		r0, r0, #0x10
	add		r3, r1, #0x0
	mul		r3, r1
	add		r1, r3, #0x0
	add		r3, r0, #0x0
	mul		r3, r0
	add		r0, r3, #0x0
	add		r5, r1, r0
	ldr		r0, _080460fc
	cmp		r5, r0
	ble		_080460c4
	b		_080462dc
_080460c4:
	mov		r0, r8
	add		r1, r6, #0x0
	bl		sub_08045bf4
	lsl		r0, r0, #0x10
	asr		r4, r0, #0x10
	ldr		r0, [r6, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_08046100
	add		r0, r6, #0x0
	bl		sub_0803abc4
	b		_08046106

_080460e4:	.4byte 0x00000824
_080460e8:	.4byte 0x0000FFFF
_080460ec:	.4byte 0x00000C78
_080460f0:	.4byte 0x00000C76
_080460f4:	.4byte 0x081077c4
_080460f8:	.4byte 0x00000C74
_080460fc:	.4byte 0x00003FFF

_08046100:
	add		r0, r6, #0x0
	bl		sub_0803ab38
_08046106:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r4
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0xC]
	lsl		r0, r0, #0x10
	asr		r7, r0, #0x10
	add		r0, r6, #0x0
	add		r1, r7, #0x0
	bl		sub_0803b3c4
	add		r3, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	sub		r1, r0, r5
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08046130
	ldr		r2, _08046188
	add		r0, r1, r2
_08046130:
	asr		r0, r0, #0xb
	lsl		r2, r0, #0x3
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0804613c
	add		r0, #0x7f
_0804613c:
	asr		r1, r0, #0x7
	lsl		r0, r3, #0x10
	lsr		r0, r0, #0x10
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0804614a
	add		r0, #0xff
_0804614a:
	asr		r0, r0, #0x8
	add		r0, r2, r0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r10, r0
	ldr		r3, [sp, #0x18]
	ldrb	r1, [r3, #0x0]
	mov		r2, #0x8
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804621c
	mov		r1, r9
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	beq		_0804616c
	b		_08046360
_0804616c:
	mov		r3, #0xcd
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08046190
	ldr		r1, _0804618c
	add		r1, r8
	mov		r0, #0x64
	strh	r0, [r1, #0x0]
	b		_080461b2

.incbin "base.gba", 0x46186, 0x2

_08046188:	.4byte 0x000007FF
_0804618c:	.4byte 0x00000C74

_08046190:
	add		r0, r2, #0x0
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x0
	beq		_080461ac
	ldr		r1, _080461a8
	add		r1, r8
	mov		r0, #0x63
	strh	r0, [r1, #0x0]
	b		_080461b2

.incbin "base.gba", 0x461A6, 0x2

_080461a8:	.4byte 0x00000C74

_080461ac:
	ldr		r0, _08046210
	add		r0, r8
	strh	r1, [r0, #0x0]
_080461b2:
	ldr		r1, _08046210
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_080461be
	b		_08046360
_080461be:
	add		r4, r0, #0x0
	ldr		r0, [sp, #0xC]
	lsl		r5, r0, #0x10
	asr		r5, r5, #0x10
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r6, _08046214
	ldr		r0, _08046218
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	bl		sub_0807092c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	mov		r2, r10
	bl		sub_0807169c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r5, #0x0
	bl		sub_08071704
	b		_08046360

.incbin "base.gba", 0x4620E, 0x2

_08046210:	.4byte 0x00000C74
_08046214:	.4byte 0x08124544
_08046218:	.4byte 0x081245c8

_0804621c:
	ldr		r0, _08046274
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08046284
	ldr		r0, _08046278
	add		r0, r8
	ldrh	r4, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807073c
	ldr		r5, _0804627c
	ldr		r0, _08046280
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
	mov		r2, r10
	bl		sub_0807169c
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r2, r7, #0x0
	mov		r1, #0x1
	bl		sub_08071704
	b		_080462c0

_08046274:	.4byte 0x00000C76
_08046278:	.4byte 0x00000C74
_0804627c:	.4byte 0x08124544
_08046280:	.4byte 0x081245c8

_08046284:
	ldr		r5, _080462cc
	add		r5, r8
	ldrh	r0, [r5, #0x0]
	ldr		r6, _080462d0
	ldr		r4, _080462d4
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	mov		r2, r10
	bl		sub_0807169c
	ldrh	r0, [r5, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	add		r2, r7, #0x0
	mov		r1, #0x1
	bl		sub_08071704
_080462c0:
	ldr		r1, _080462d8
	add		r1, r8
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_08046360

.incbin "base.gba", 0x462CA, 0x2

_080462cc:	.4byte 0x00000C74
_080462d0:	.4byte 0x08124544
_080462d4:	.4byte 0x081245c8
_080462d8:	.4byte 0x00000C76

_080462dc:
	ldr		r0, _080462f0
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08046322
	cmp		r2, #0x0
	beq		_08046322
	ldrh	r0, [r4, #0x0]
	b		_08046308

.incbin "base.gba", 0x462EE, 0x2

_080462f0:	.4byte 0x00000C76

_080462f4:
	ldr		r0, _0804632c
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08046322
	ldr		r1, _08046330
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08046322
_08046308:
	ldr		r3, _08046334
	ldr		r2, _08046338
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
_08046322:
	ldr		r1, _0804632c
	add		r1, r8
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_08046360

_0804632c:	.4byte 0x00000C76
_08046330:	.4byte 0x00000C74
_08046334:	.4byte 0x08124544
_08046338:	.4byte 0x081245c8

_0804633c:
	ldr		r1, _08046444
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08046360
	ldr		r3, _08046448
	ldr		r2, _0804644c
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
_08046360:
	ldr		r1, [sp, #0x14]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x4
	bne		_0804636a
	b		_080465e0
_0804636a:
	ldr		r0, _08046450
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804637a
	b		_08046580
_0804637a:
	mov		r2, r9
	ldr		r1, [r2, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08046388
	b		_08046580
_08046388:
	mov		r0, r9
	add		r0, #0xb4
	ldrh	r3, [r0, #0x0]
	ldr		r0, _08046454
	and		r0, r3
	cmp		r0, #0x0
	beq		_08046398
	b		_08046580
_08046398:
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	and		r1, r0
	cmp		r1, #0x0
	beq		_080463bc
	mov		r0, r9
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_080463ae
	b		_08046580
_080463ae:
	mov		r0, r9
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_080463bc
	b		_08046580
_080463bc:
	mov		r0, r9
	add		r0, #0x7e
	ldrb	r2, [r0, #0x0]
	add		r0, r2, #0x0
	cmp		r0, #0xd
	bne		_080463ca
	b		_08046580
_080463ca:
	cmp		r0, #0x5
	bne		_080463d0
	b		_08046580
_080463d0:
	cmp		r0, #0x6
	bne		_080463d6
	b		_08046580
_080463d6:
	cmp		r0, #0x7
	bne		_080463dc
	b		_08046580
_080463dc:
	cmp		r0, #0x8
	bne		_080463e2
	b		_08046580
_080463e2:
	cmp		r0, #0xf
	bne		_080463e8
	b		_08046580
_080463e8:
	mov		r0, r9
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_08046400
	sub		r0, #0x37
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x50
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xf
	bls		_08046426
_08046400:
	sub		r0, r2, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x3
	bhi		_08046412
	mov		r0, #0x24
	and		r0, r3
	cmp		r0, #0x0
	bne		_08046426
_08046412:
	cmp		r1, #0x0
	blt		_08046418
	b		_08046580
_08046418:
	mov		r0, r9
	add		r0, #0x88
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bne		_08046426
	b		_08046580
_08046426:
	mov		r0, r9
	add		r0, #0x85
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804645c
	ldr		r0, _08046458
	lsr		r1, r1, #0x1
	mov		r2, #0xf
	and		r1, r2
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	b		_0804645e

_08046444:	.4byte 0x00000C74
_08046448:	.4byte 0x08124544
_0804644c:	.4byte 0x081245c8
_08046450:	.4byte 0x000007D4
_08046454:	.4byte 0x00008001
_08046458:	.4byte 0x03002368

_0804645c:
	mov		r0, #0x0
_0804645e:
	add		r4, r0, #0x0
	ldr		r5, _08046474
	add		r5, r8
	ldrh	r3, [r5, #0x0]
	cmp		r4, r3
	beq		_0804650c
	cmp		r4, #0x0
	beq		_08046478
	bl		sub_0807073c
	b		_08046494

_08046474:	.4byte 0x00000C7C

_08046478:
	ldr		r3, _080464d8
	ldr		r2, _080464dc
	mov		r1, #0x8c
	lsl		r1, r1, #0x2
	add		r0, r2, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08070e28
_08046494:
	ldr		r5, _080464e0
	add		r5, r8
	strh	r4, [r5, #0x0]
	mov		r2, r9
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_080464a8
	ldr		r3, _080464e4
	add		r0, r0, r3
_080464a8:
	asr		r0, r0, #0x12
	mov		r3, #0x3f
	and		r0, r3
	lsl		r2, r0, #0xa
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_080464ba
	ldr		r1, _080464e4
	add		r0, r0, r1
_080464ba:
	asr		r0, r0, #0x12
	and		r0, r3
	lsl		r1, r0, #0x4
	orr		r1, r2
	ldr		r2, _080464e8
	add		r2, r8
	strh	r1, [r2, #0x0]
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x53
	bgt		_080464ec
	cmp		r0, #0x52
	bge		_08046504
	cmp		r0, #0x51
	beq		_080464f0
	b		_0804655a

_080464d8:	.4byte 0x08124544
_080464dc:	.4byte 0x081245c8
_080464e0:	.4byte 0x00000C7C
_080464e4:	.4byte 0x0003FFFF
_080464e8:	.4byte 0x00000C7E

_080464ec:
	cmp		r0, #0x89
	bne		_0804655a
_080464f0:
	ldr		r2, _08046500
	add		r2, r8
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x6
	orr		r0, r1
	strh	r0, [r2, #0x0]
	b		_0804655a

.incbin "base.gba", 0x464FE, 0x2

_08046500:	.4byte 0x00000C7E

_08046504:
	mov		r0, #0x4
	orr		r1, r0
	strh	r1, [r2, #0x0]
	b		_0804655a
_0804650c:
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x51
	blt		_0804655a
	cmp		r0, #0x53
	ble		_0804651a
	cmp		r0, #0x89
	bne		_0804655a
_0804651a:
	mov		r2, r9
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_08046528
	ldr		r3, _08046574
	add		r0, r0, r3
_08046528:
	asr		r0, r0, #0x12
	mov		r3, #0x3f
	and		r0, r3
	lsl		r2, r0, #0xa
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0804653a
	ldr		r1, _08046574
	add		r0, r0, r1
_0804653a:
	asr		r0, r0, #0x12
	and		r0, r3
	lsl		r1, r0, #0x4
	orr		r1, r2
	ldr		r0, _08046578
	add		r0, r8
	ldrh	r3, [r0, #0x0]
	mov		r2, #0xf
	and		r2, r3
	cmp		r2, #0x0
	bne		_08046568
	ldr		r0, _0804657c
	and		r0, r3
	cmp		r0, r1
	beq		_0804655a
	strh	r2, [r5, #0x0]
_0804655a:
	ldr		r0, _08046578
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_080465e0
_08046568:
	ldr		r1, _08046578
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_080465e0

_08046574:	.4byte 0x0003FFFF
_08046578:	.4byte 0x00000C7E
_0804657c:	.4byte 0x0000FFF0

_08046580:
	ldr		r2, _08046648
	add		r2, r8
	ldrh	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_080465e0
	mov		r3, r9
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	and		r0, r1
	cmp		r0, #0x0
	bne		_080465d2
	mov		r0, r9
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_080465d2
	ldrh	r0, [r2, #0x0]
	ldr		r3, _0804664c
	ldr		r2, _08046650
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
	mov		r2, #0xcd
	lsl		r2, r2, #0x1
	add		r2, r9
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_080465d2:
	ldr		r0, _08046648
	add		r0, r8
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r0, _08046654
	add		r0, r8
	strh	r1, [r0, #0x0]
_080465e0:
	mov		r0, r9
	mov		r1, r8
	bl		sub_0803b0f8
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	add		r0, r9
	ldr		r2, [r0, #0x0]
	mov		r0, #0xc2
	lsl		r0, r0, #0x1
	add		r0, r9
	ldr		r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x8
	and		r1, r0
	ldr		r0, [sp, #0x8]
	cmp		r0, #0x3
	bne		_08046658
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_08046614
	mov		r0, #0xe0
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bne		_08046658
_08046614:
	mov		r3, #0x22
	ldrsh	r1, [r2, r3]
	mov		r0, #0x18
	neg		r0, r0
	cmp		r1, r0
	ble		_08046658
	mov		r4, #0xc8
	lsl		r4, r4, #0x4
	add		r4, r8
	ldrh	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08046632
	mov		r0, #0x69
	bl		sub_0807073c
_08046632:
	ldrh	r0, [r4, #0x0]
	add		r0, #0x1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x15
	bls		_08046662
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	b		_08046662

.incbin "base.gba", 0x46646, 0x2

_08046648:	.4byte 0x00000C7C
_0804664c:	.4byte 0x08124544
_08046650:	.4byte 0x081245c8
_08046654:	.4byte 0x00000C7E

_08046658:
	mov		r1, #0xc8
	lsl		r1, r1, #0x4
	add		r1, r8
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08046662:
	mov		r0, r8
	bl		sub_0803b2b0
	thumb_func_end sub_08045d4c

	thumb_func_start sub_08046668
sub_08046668:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x46678, 0x4C
	thumb_func_end sub_08046668

	thumb_func_start sub_080466c4
sub_080466c4:
	push	{ r4, lr }
	add		r4, r1, #0x0
	ldr		r1, _08046704
	add		r0, r0, r1
	add		r3, r0, #0x0
	ldr		r1, [r4, #0x0]
	ldr		r0, [r3, #0x18]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_080466dc
	ldr		r2, _08046708
	add		r1, r1, r2
_080466dc:
	asr		r2, r1, #0x10
	ldr		r1, [r4, #0x4]
	ldr		r0, [r3, #0x1c]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_080466ec
	ldr		r1, _08046708
	add		r0, r0, r1
_080466ec:
	asr		r0, r0, #0x10
	add		r1, r2, #0x0
	mul		r1, r2
	add		r2, r0, #0x0
	mul		r2, r0
	add		r0, r2, #0x0
	add		r1, r1, r0
	ldr		r0, _0804670c
	cmp		r1, r0
	ble		_08046710
	mov		r0, #0x0
	b		_08046728

_08046704:	.4byte 0x00000824
_08046708:	.4byte 0x0000FFFF
_0804670c:	.4byte 0x0003FFFF

_08046710:
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0804671a
	ldr		r1, _08046730
	add		r0, r0, r1
_0804671a:
	asr		r1, r0, #0xa
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r2, #0x0
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
_08046728:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x4672E, 0x2

_08046730:	.4byte 0x000003FF
	thumb_func_end sub_080466c4

	thumb_func_start sub_08046734
sub_08046734:
	push	{ r4, r5, r6, r7, lr }
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r2, r1, #0x0
	ldr		r0, _08046770
	cmp		r1, r0
	bne		_08046744
	b		_08046b7c
_08046744:
	cmp		r1, r0
	bgt		_080467c4
	sub		r0, #0x7
	cmp		r1, r0
	bne		_08046750
	b		_08046a64
_08046750:
	cmp		r1, r0
	bgt		_0804678c
	sub		r0, #0x3
	cmp		r1, r0
	bne		_0804675c
	b		_08046aa4
_0804675c:
	cmp		r1, r0
	bgt		_08046774
	cmp		r1, #0x2
	bne		_08046766
	b		_08046b7c
_08046766:
	sub		r0, #0x1
	cmp		r1, r0
	bne		_0804676e
	b		_08046ae4
_0804676e:
	b		_08046c6c

_08046770:	.4byte 0x0000100B

_08046774:
	ldr		r0, _08046788
	cmp		r1, r0
	bne		_0804677c
	b		_08046bbc
_0804677c:
	add		r0, #0x1
	cmp		r1, r0
	bne		_08046784
	b		_08046bfc
_08046784:
	b		_08046c6c

.incbin "base.gba", 0x46786, 0x2

_08046788:	.4byte 0x00001002

_0804678c:
	ldr		r0, _080467a8
	cmp		r1, r0
	bne		_08046794
	b		_080469a4
_08046794:
	cmp		r1, r0
	bgt		_080467ac
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08046858
	add		r0, #0x1
	cmp		r1, r0
	bne		_080467a6
	b		_08046a24
_080467a6:
	b		_08046c6c

_080467a8:	.4byte 0x00001007

_080467ac:
	ldr		r0, _080467c0
	cmp		r1, r0
	bne		_080467b4
	b		_080469e4
_080467b4:
	cmp		r1, r0
	ble		_080467ba
	b		_080468d0
_080467ba:
	mov		r7, #0x4
	mov		r4, #0x0
	b		_0804690c

_080467c0:	.4byte 0x00001009

_080467c4:
	ldr		r0, _080467ec
	cmp		r1, r0
	bne		_080467cc
	b		_08046bbc
_080467cc:
	cmp		r1, r0
	bgt		_08046814
	ldr		r0, _080467f0
	cmp		r1, r0
	bne		_080467d8
	b		_080469e4
_080467d8:
	cmp		r1, r0
	bgt		_080467f4
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08046894
	add		r0, #0x1
	cmp		r1, r0
	bne		_080467ea
	b		_08046b3c
_080467ea:
	b		_08046c6c

_080467ec:	.4byte 0x00002002
_080467f0:	.4byte 0x0000100E

_080467f4:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r1, r0
	bne		_080467fe
	b		_08046ae4
_080467fe:
	cmp		r1, r0
	ble		_08046804
	b		_08046aa4
_08046804:
	ldr		r0, _08046810
	cmp		r1, r0
	bne		_0804680c
	b		_08046964
_0804680c:
	b		_08046c6c

.incbin "base.gba", 0x4680E, 0x2

_08046810:	.4byte 0x0000100F

_08046814:
	ldr		r0, _08046830
	cmp		r1, r0
	beq		_08046858
	cmp		r1, r0
	bgt		_08046834
	sub		r0, #0x2
	cmp		r1, r0
	bne		_08046826
	b		_08046bfc
_08046826:
	add		r0, #0x1
	cmp		r1, r0
	bne		_0804682e
	b		_08046a64
_0804682e:
	b		_08046c6c

_08046830:	.4byte 0x00002005

_08046834:
	ldr		r0, _08046848
	cmp		r1, r0
	beq		_080468d0
	cmp		r1, r0
	bgt		_0804684c
	sub		r0, #0x3
	cmp		r1, r0
	bne		_08046846
	b		_080469a4
_08046846:
	b		_08046c6c

_08046848:	.4byte 0x0000200A

_0804684c:
	ldr		r0, _08046854
	cmp		r2, r0
	beq		_08046894
	b		_08046c6c

_08046854:	.4byte 0x0000200C

_08046858:
	mov		r6, #0x1
	mov		r4, #0x0
	ldr		r7, _0804688c
	ldr		r0, _08046890
	add		r5, r0, #0x2
_08046862:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046872:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046872
	cmp		r4, #0x1
	ble		_08046862
	b		_08046c30

_0804688c:	.4byte 0x00000FFF
_08046890:	.4byte 0x08109268

_08046894:
	mov		r6, #0x2
	mov		r4, #0x0
	ldr		r7, _080468c8
	ldr		r0, _080468cc
	add		r5, r0, #0x4
_0804689e:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_080468ae:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080468ae
	cmp		r4, #0x1
	ble		_0804689e
	b		_08046c30

_080468c8:	.4byte 0x00000FFF
_080468cc:	.4byte 0x08109268

_080468d0:
	mov		r6, #0x3
	mov		r4, #0x0
	ldr		r7, _08046904
	ldr		r0, _08046908
	add		r5, r0, #0x6
_080468da:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_080468ea:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080468ea
	cmp		r4, #0x1
	ble		_080468da
	b		_08046c30

_08046904:	.4byte 0x00000FFF
_08046908:	.4byte 0x08109268

_0804690c:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	add		r5, r4, #0x0
	lsl		r1, r7, #0x1
	ldr		r6, _0804695c
	ldr		r0, _08046960
	add		r4, r1, r0
	mov		r3, #0x1
_08046926:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r4, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046926
	add		r4, r5, #0x0
	cmp		r4, #0x1
	ble		_0804690c
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_0804694c
	mov		r7, #0xb
_0804694c:
	cmp		r7, #0x10
	bne		_08046952
	mov		r7, #0xa
_08046952:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	b		_08046c48

.incbin "base.gba", 0x4695A, 0x2

_0804695c:	.4byte 0x00000FFF
_08046960:	.4byte 0x08109268

_08046964:
	mov		r6, #0x5
	mov		r4, #0x0
	ldr		r7, _0804699c
	ldr		r0, _080469a0
	add		r5, r0, #0x0
	add		r5, #0xa
_08046970:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046980:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046980
	cmp		r4, #0x1
	ble		_08046970
	b		_08046c30

.incbin "base.gba", 0x4699A, 0x2

_0804699c:	.4byte 0x00000FFF
_080469a0:	.4byte 0x08109268

_080469a4:
	mov		r6, #0x6
	mov		r4, #0x0
	ldr		r7, _080469dc
	ldr		r0, _080469e0
	add		r5, r0, #0x0
	add		r5, #0xc
_080469b0:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_080469c0:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080469c0
	cmp		r4, #0x1
	ble		_080469b0
	b		_08046c30

.incbin "base.gba", 0x469DA, 0x2

_080469dc:	.4byte 0x00000FFF
_080469e0:	.4byte 0x08109268

_080469e4:
	mov		r6, #0x7
	mov		r4, #0x0
	ldr		r7, _08046a1c
	ldr		r0, _08046a20
	add		r5, r0, #0x0
	add		r5, #0xe
_080469f0:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046a00:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046a00
	cmp		r4, #0x1
	ble		_080469f0
	b		_08046c30

.incbin "base.gba", 0x46A1A, 0x2

_08046a1c:	.4byte 0x00000FFF
_08046a20:	.4byte 0x08109268

_08046a24:
	mov		r6, #0x8
	mov		r4, #0x0
	ldr		r7, _08046a5c
	ldr		r0, _08046a60
	add		r5, r0, #0x0
	add		r5, #0x10
_08046a30:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046a40:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046a40
	cmp		r4, #0x1
	ble		_08046a30
	b		_08046c30

.incbin "base.gba", 0x46A5A, 0x2

_08046a5c:	.4byte 0x00000FFF
_08046a60:	.4byte 0x08109268

_08046a64:
	mov		r6, #0x9
	mov		r4, #0x0
	ldr		r7, _08046a9c
	ldr		r0, _08046aa0
	add		r5, r0, #0x0
	add		r5, #0x12
_08046a70:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046a80:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046a80
	cmp		r4, #0x1
	ble		_08046a70
	b		_08046c30

.incbin "base.gba", 0x46A9A, 0x2

_08046a9c:	.4byte 0x00000FFF
_08046aa0:	.4byte 0x08109268

_08046aa4:
	mov		r6, #0xa
	mov		r4, #0x0
	ldr		r7, _08046adc
	ldr		r0, _08046ae0
	add		r5, r0, #0x0
	add		r5, #0x14
_08046ab0:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046ac0:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046ac0
	cmp		r4, #0x1
	ble		_08046ab0
	b		_08046c30

.incbin "base.gba", 0x46ADA, 0x2

_08046adc:	.4byte 0x00000FFF
_08046ae0:	.4byte 0x08109268

_08046ae4:
	mov		r7, #0xb
	mov		r4, #0x0
	ldr		r6, _08046b34
	ldr		r0, _08046b38
	add		r5, r0, #0x0
	add		r5, #0x16
_08046af0:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046b00:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046b00
	cmp		r4, #0x1
	ble		_08046af0
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_08046b24
	mov		r7, #0xb
_08046b24:
	cmp		r7, #0x10
	bne		_08046b2a
	mov		r7, #0xa
_08046b2a:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	b		_08046c48

.incbin "base.gba", 0x46B32, 0x2

_08046b34:	.4byte 0x00000FFF
_08046b38:	.4byte 0x08109268

_08046b3c:
	mov		r6, #0xc
	mov		r4, #0x0
	ldr		r7, _08046b74
	ldr		r0, _08046b78
	add		r5, r0, #0x0
	add		r5, #0x18
_08046b48:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046b58:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046b58
	cmp		r4, #0x1
	ble		_08046b48
	b		_08046c30

.incbin "base.gba", 0x46B72, 0x2

_08046b74:	.4byte 0x00000FFF
_08046b78:	.4byte 0x08109268

_08046b7c:
	mov		r6, #0xd
	mov		r4, #0x0
	ldr		r7, _08046bb4
	ldr		r0, _08046bb8
	add		r5, r0, #0x0
	add		r5, #0x1a
_08046b88:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046b98:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046b98
	cmp		r4, #0x1
	ble		_08046b88
	b		_08046c30

.incbin "base.gba", 0x46BB2, 0x2

_08046bb4:	.4byte 0x00000FFF
_08046bb8:	.4byte 0x08109268

_08046bbc:
	mov		r6, #0xf
	mov		r4, #0x0
	ldr		r7, _08046bf4
	ldr		r0, _08046bf8
	add		r5, r0, #0x0
	add		r5, #0x1e
_08046bc8:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046bd8:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046bd8
	cmp		r4, #0x1
	ble		_08046bc8
	b		_08046c30

.incbin "base.gba", 0x46BF2, 0x2

_08046bf4:	.4byte 0x00000FFF
_08046bf8:	.4byte 0x08109268

_08046bfc:
	mov		r6, #0x10
	mov		r4, #0x0
	ldr		r7, _08046c58
	ldr		r0, _08046c5c
	add		r5, r0, #0x0
	add		r5, #0x20
_08046c08:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046c18:
	ldrh	r0, [r2, #0x0]
	add		r1, r7, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046c18
	cmp		r4, #0x1
	ble		_08046c08
_08046c30:
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r6, #0xf
	bne		_08046c3c
	mov		r6, #0xb
_08046c3c:
	cmp		r6, #0x10
	bne		_08046c42
	mov		r6, #0xa
_08046c42:
	bl		sub_08029f34
	lsl		r1, r6, #0x7
_08046c48:
	ldr		r2, _08046c60
	add		r1, r1, r2
	ldr		r2, _08046c64
	ldr		r3, _08046c68
	bl		sub_08029ee4
	b		_08046cc0

.incbin "base.gba", 0x46C56, 0x2

_08046c58:	.4byte 0x00000FFF
_08046c5c:	.4byte 0x08109268
_08046c60:	.4byte 0x0808ac60
_08046c64:	.4byte 0x06000E00
_08046c68:	.4byte 0x80000040

_08046c6c:
	mov		r7, #0x0
	mov		r4, #0x0
	ldr		r6, _08046cc8
	ldr		r5, _08046ccc
_08046c74:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046c84:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046c84
	cmp		r4, #0x1
	ble		_08046c74
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_08046ca8
	mov		r7, #0xb
_08046ca8:
	cmp		r7, #0x10
	bne		_08046cae
	mov		r7, #0xa
_08046cae:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	ldr		r2, _08046cd0
	add		r1, r1, r2
	ldr		r2, _08046cd4
	ldr		r3, _08046cd8
	bl		sub_08029ee4
_08046cc0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x46CC6, 0x2

_08046cc8:	.4byte 0x00000FFF
_08046ccc:	.4byte 0x08109268
_08046cd0:	.4byte 0x0808ac60
_08046cd4:	.4byte 0x06000E00
_08046cd8:	.4byte 0x80000040
	thumb_func_end sub_08046734

	thumb_func_start sub_08046cdc
sub_08046cdc:
	push	{ r4, r5, r6, r7, lr }
	ldr		r1, _08046d58
	ldr		r0, _08046d5c
	add		r2, r1, r0
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _08046d60
	add		r2, r1, r0
	ldr		r0, _08046d64
	strh	r0, [r2, #0x0]
	mov		r0, #0xc9
	lsl		r0, r0, #0x4
	add		r1, r1, r0
	mov		r0, #0x1
	neg		r0, r0
	strh	r0, [r1, #0x0]
	mov		r7, #0x0
	mov		r4, #0x0
	ldr		r6, _08046d68
	ldr		r5, _08046d6c
_08046d04:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046d14:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046d14
	cmp		r4, #0x1
	ble		_08046d04
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_08046d38
	mov		r7, #0xb
_08046d38:
	cmp		r7, #0x10
	bne		_08046d3e
	mov		r7, #0xa
_08046d3e:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	ldr		r2, _08046d70
	add		r1, r1, r2
	ldr		r2, _08046d74
	ldr		r3, _08046d78
	bl		sub_08029ee4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x46D56, 0x2

_08046d58:	.4byte RunGameLogic_CallBack
_08046d5c:	.4byte 0x00000C92
_08046d60:	.4byte 0x00000C8E
_08046d64:	.4byte 0x0000FFFF
_08046d68:	.4byte 0x00000FFF
_08046d6c:	.4byte 0x08109268
_08046d70:	.4byte 0x0808ac60
_08046d74:	.4byte 0x06000E00
_08046d78:	.4byte 0x80000040
	thumb_func_end sub_08046cdc

	thumb_func_start sub_08046d7c
sub_08046d7c:
	push	{ r4, r5, lr }
	ldr		r2, _08046dac
	ldr		r0, _08046db0
	add		r4, r2, r0
	ldrh	r3, [r4, #0x0]
	add		r1, r3, #0x0
	ldr		r0, _08046db4
	cmp		r1, r0
	bne		_08046dc0
	ldr		r1, _08046db8
	mov		r5, #0xc9
	lsl		r5, r5, #0x4
	add		r0, r2, r5
	strh	r3, [r0, #0x0]
	strh	r1, [r4, #0x0]
	ldr		r0, _08046dbc
	add		r1, r2, r0
	mov		r0, #0xa0
	strh	r0, [r1, #0x0]
	ldrh	r0, [r4, #0x0]
	bl		sub_08046734
	b		_08046dec

.incbin "base.gba", 0x46DAA, 0x2

_08046dac:	.4byte RunGameLogic_CallBack
_08046db0:	.4byte 0x00000C8E
_08046db4:	.4byte 0x00001008
_08046db8:	.4byte 0x0000100F
_08046dbc:	.4byte 0x00000C92

_08046dc0:
	ldr		r0, _08046de0
	cmp		r1, r0
	bne		_08046de8
	sub		r0, #0x8
	mov		r5, #0xc9
	lsl		r5, r5, #0x4
	add		r1, r2, r5
	strh	r3, [r1, #0x0]
	strh	r0, [r4, #0x0]
	ldr		r1, _08046de4
	add		r2, r2, r1
	mov		r1, #0xa0
	strh	r1, [r2, #0x0]
	bl		sub_08046734
	b		_08046dec

_08046de0:	.4byte 0x0000100F
_08046de4:	.4byte 0x00000C92

_08046de8:
	bl		sub_08046cdc
_08046dec:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x46DF2, 0x2
	thumb_func_end sub_08046d7c

	thumb_func_start sub_08046df4
sub_08046df4:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	ldr		r1, _08046e3c
	add		r0, r6, r1
	ldr		r4, [r0, #0x0]
	bl		sub_08046cdc
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r5, [r0, #0x0]
	cmp		r5, #0x0
	beq		_08046e34
	ldr		r1, _08046e40
	ldr		r4, _08046e44
	add		r2, r1, r4
	ldrh	r3, [r2, #0x0]
	add		r4, #0x2
	add		r0, r1, r4
	mov		r4, #0x0
	strh	r3, [r0, #0x0]
	strh	r5, [r2, #0x0]
	ldr		r0, _08046e48
	add		r1, r1, r0
	mov		r0, #0xa0
	strh	r0, [r1, #0x0]
	ldrh	r0, [r2, #0x0]
	bl		sub_08046734
	ldr		r1, _08046e4c
	add		r0, r6, r1
	strh	r4, [r0, #0x0]
_08046e34:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x46E3A, 0x2

_08046e3c:	.4byte 0x00000814
_08046e40:	.4byte RunGameLogic_CallBack
_08046e44:	.4byte 0x00000C8E
_08046e48:	.4byte 0x00000C92
_08046e4c:	.4byte 0x00000C6E
	thumb_func_end sub_08046df4

	thumb_func_start sub_08046e50
sub_08046e50:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r3, _08046f00
	mov		r1, #0x24
	add		r1, r1, r3
	mov		r8, r1
	ldr		r1, _08046f04
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08046e70
	b		_080470ca
_08046e70:
	ldr		r1, _08046f08
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	add		r2, r1, #0x0
	cmp		r2, #0x0
	bne		_08046e7e
	b		_080470b8
_08046e7e:
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08046e88
	b		_0804709c
_08046e88:
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08046e92
	b		_08047064
_08046e92:
	mov		r1, #0xc9
	lsl		r1, r1, #0x4
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08046f0c
	cmp		r1, r0
	beq		_08046eb8
	add		r0, #0x7
	cmp		r1, r0
	beq		_08046eb8
	sub		r0, #0x4
	cmp		r1, r0
	beq		_08046ec4
	ldr		r1, _08046f10
	add		r0, r3, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_08046eb8
	b		_08046ff8
_08046eb8:
	ldr		r0, _08046f14
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08046f18
	cmp		r1, r0
	bne		_08046fac
_08046ec4:
	ldr		r0, _08046f1c
	add		r0, r8
	ldrh	r2, [r0, #0x0]
	cmp		r2, #0x2
	bne		_08046f28
	mov		r7, #0x0
	mov		r4, #0x0
	ldr		r6, _08046f20
	ldr		r5, _08046f24
_08046ed6:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046ee6:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046ee6
	cmp		r4, #0x1
	ble		_08046ed6
	b		_08046f68

_08046f00:	.4byte RunGameLogic_CallBack
_08046f04:	.4byte 0x00000814
_08046f08:	.4byte 0x00000C92
_08046f0c:	.4byte 0x00001008
_08046f10:	.4byte 0x00000C8E
_08046f14:	.4byte 0x00000C6C
_08046f18:	.4byte 0x0000100B
_08046f1c:	.4byte 0x00000C6A
_08046f20:	.4byte 0x00000FFF
_08046f24:	.4byte 0x08109268

_08046f28:
	ldr		r0, _08046f90
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08046f94
	cmp		r1, r0
	bne		_08046fac
	cmp		r2, r1
	bne		_08046fac
	mov		r7, #0x0
	mov		r4, #0x0
	ldr		r6, _08046f98
	ldr		r5, _08046f9c
_08046f40:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08046f50:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08046f50
	cmp		r4, #0x1
	ble		_08046f40
_08046f68:
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_08046f74
	mov		r7, #0xb
_08046f74:
	cmp		r7, #0x10
	bne		_08046f7a
	mov		r7, #0xa
_08046f7a:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	ldr		r2, _08046fa0
	add		r1, r1, r2
	ldr		r2, _08046fa4
	ldr		r3, _08046fa8
	bl		sub_08029ee4
	b		_08046fb6

.incbin "base.gba", 0x46F8E, 0x2

_08046f90:	.4byte 0x00000C6C
_08046f94:	.4byte 0x0000100B
_08046f98:	.4byte 0x00000FFF
_08046f9c:	.4byte 0x08109268
_08046fa0:	.4byte 0x0808ac60
_08046fa4:	.4byte 0x06000E00
_08046fa8:	.4byte 0x80000040

_08046fac:
	ldr		r0, _08046fd4
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	bl		sub_08046734
_08046fb6:
	ldr		r0, _08046fd4
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08046fd8
	cmp		r1, r0
	bne		_08046fe0
	ldr		r0, _08046fdc
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08046fe0
	mov		r0, #0x82
	bl		sub_0807073c
	b		_0804709c

_08046fd4:	.4byte 0x00000C6C
_08046fd8:	.4byte 0x0000100B
_08046fdc:	.4byte 0x00000C6A

_08046fe0:
	ldr		r0, _08046ff4
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_0804709c
	mov		r0, #0x83
	bl		sub_0807073c
	b		_0804709c

.incbin "base.gba", 0x46FF2, 0x2

_08046ff4:	.4byte 0x00000C6A

_08046ff8:
	mov		r7, #0x0
	mov		r4, #0x0
	ldr		r6, _08047050
	ldr		r5, _08047054
_08047000:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, #0x1
_08047010:
	ldrh	r0, [r2, #0x0]
	add		r1, r6, #0x0
	and		r1, r0
	ldrh	r0, [r5, #0x0]
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08047010
	cmp		r4, #0x1
	ble		_08047000
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r7, #0xf
	bne		_08047034
	mov		r7, #0xb
_08047034:
	cmp		r7, #0x10
	bne		_0804703a
	mov		r7, #0xa
_0804703a:
	bl		sub_08029f34
	lsl		r1, r7, #0x7
	ldr		r2, _08047058
	add		r1, r1, r2
	ldr		r2, _0804705c
	ldr		r3, _08047060
	bl		sub_08029ee4
	b		_0804709c

.incbin "base.gba", 0x4704E, 0x2

_08047050:	.4byte 0x00000FFF
_08047054:	.4byte 0x08109268
_08047058:	.4byte 0x0808ac60
_0804705c:	.4byte 0x06000E00
_08047060:	.4byte 0x80000040

_08047064:
	cmp		r2, #0x40
	bls		_08047092
	mov		r1, #0xc9
	lsl		r1, r1, #0x4
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _080470a8
	cmp		r1, r0
	beq		_08047092
	add		r0, #0x7
	cmp		r1, r0
	beq		_08047092
	sub		r0, #0x4
	cmp		r1, r0
	beq		_08047092
	ldr		r1, _080470ac
	add		r0, r3, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_08047092
	mov		r0, #0x68
	bl		sub_0807073c
_08047092:
	ldr		r0, _080470b0
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	bl		sub_08046734
_0804709c:
	ldr		r1, _080470b4
	add		r1, r8
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_080470ca

_080470a8:	.4byte 0x00001008
_080470ac:	.4byte 0x00000C8E
_080470b0:	.4byte 0x00000C6A
_080470b4:	.4byte 0x00000C6E

_080470b8:
	ldr		r0, _080470d4
	add		r1, r3, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x2
	bne		_080470c4
	strh	r2, [r1, #0x0]
_080470c4:
	ldrh	r0, [r1, #0x0]
	bl		sub_08046734
_080470ca:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080470d4:	.4byte 0x00000C8E
	thumb_func_end sub_08046e50

	thumb_func_start sub_080470d8
sub_080470d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	str		r1, [sp, #0xC]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r10, r2
	mov		r12, sp
	add		r0, sp, #0x4
	mov		r8, r0
	add		r1, sp, #0x8
	mov		r9, r1
	ldr		r0, _08047138
	cmp		r3, r0
	bhi		_08047140
	ldr		r0, _0804713c
	mul		r0, r3
	lsr		r6, r0, #0x13
	mov		r0, #0x64
	mul		r0, r6
	sub		r7, r3, r0
	cmp		r7, #0x63
	bls		_08047118
	sub		r7, #0x64
	add		r6, #0x1
_08047118:
	lsl		r0, r6, #0x4
	add		r0, r0, r6
	lsl		r1, r0, #0x8
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	lsr		r2, r0, #0x13
	lsl		r0, r2, #0x4
	sub		r0, r0, r2
	lsl		r0, r0, #0x2
	sub		r6, r6, r0
	cmp		r6, #0x3b
	bls		_08047146
	sub		r6, #0x3c
	add		r2, #0x1
	b		_08047146

.incbin "base.gba", 0x47136, 0x2

_08047138:	.4byte 0x0000EA5F
_0804713c:	.4byte 0x0000147A

_08047140:
	mov		r2, #0x9
	mov		r6, #0x3b
	mov		r7, #0x63
_08047146:
	ldr		r1, _08047288
	add		r0, r2, #0x0
	mul		r0, r1
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r2, r0
	mov		r5, #0xf
	and		r3, r5
	lsl		r0, r3, #0x4
	and		r4, r5
	add		r2, r0, r4
	add		r0, r6, #0x0
	mul		r0, r1
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r6, r0
	and		r3, r5
	lsl		r0, r3, #0x4
	and		r4, r5
	add		r6, r0, r4
	add		r0, r7, #0x0
	mul		r0, r1
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r7, r0
	and		r3, r5
	lsl		r0, r3, #0x4
	and		r4, r5
	add		r7, r0, r4
	mov		r0, r12
	str		r2, [r0, #0x0]
	mov		r1, r8
	str		r6, [r1, #0x0]
	mov		r6, r9
	str		r7, [r6, #0x0]
	mov		r0, #0x0
	ldr		r1, [sp, #0xC]
	mov		r2, r10
	bl		sub_080281b0
	mov		r12, r0
	ldr		r1, [sp, #0x0]
	lsl		r1, r1, #0x18
	ldr		r4, _0804728c
	lsr		r2, r1, #0x1c
	lsl		r0, r2, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	mov		r6, #0xc0
	lsl		r6, r6, #0x8
	add		r3, r6, #0x0
	orr		r0, r3
	mov		r6, r12
	strh	r0, [r6, #0x0]
	lsr		r1, r1, #0x18
	and		r1, r5
	lsl		r0, r1, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x2]
	add		r6, #0x40
	add		r2, #0xa
	lsl		r2, r2, #0x1
	add		r2, r2, r4
	ldrh	r0, [r2, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x0]
	add		r1, #0xa
	lsl		r1, r1, #0x1
	add		r1, r1, r4
	ldrh	r0, [r1, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x2]
	ldr		r1, [sp, #0x4]
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x1c
	lsl		r0, r2, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	mov		r6, r12
	strh	r0, [r6, #0x6]
	lsr		r1, r1, #0x18
	and		r1, r5
	lsl		r0, r1, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x8]
	add		r6, #0x46
	add		r2, #0xa
	lsl		r2, r2, #0x1
	add		r2, r2, r4
	ldrh	r0, [r2, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x0]
	add		r6, #0x2
	add		r1, #0xa
	lsl		r1, r1, #0x1
	add		r1, r1, r4
	ldrh	r0, [r1, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0x0]
	ldr		r1, [sp, #0x8]
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x1c
	lsl		r0, r2, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	mov		r6, r12
	strh	r0, [r6, #0xc]
	lsr		r1, r1, #0x18
	and		r1, r5
	lsl		r0, r1, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	strh	r0, [r6, #0xe]
	mov		r5, r12
	add		r5, #0x4c
	add		r2, #0xa
	lsl		r2, r2, #0x1
	add		r2, r2, r4
	ldrh	r0, [r2, #0x0]
	orr		r0, r3
	strh	r0, [r5, #0x0]
	add		r5, #0x2
	add		r1, #0xa
	lsl		r1, r1, #0x1
	add		r1, r1, r4
	ldrh	r0, [r1, #0x0]
	orr		r0, r3
	strh	r0, [r5, #0x0]
	ldr		r0, _08047290
	strh	r0, [r6, #0x4]
	sub		r0, #0x3
	strh	r0, [r6, #0xa]
	mov		r1, #0x0
	strh	r1, [r6, #0x0]
	mov		r0, r12
	add		r0, #0x40
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08047288:	.4byte 0x0000CCCD
_0804728c:	.4byte 0x0810928a
_08047290:	.4byte 0x0000C05A
	thumb_func_end sub_080470d8

	thumb_func_start sub_08047294
sub_08047294:
	ldr		r2, _080472d8
	ldrb	r1, [r2, #0xC]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080472c0
	ldr		r1, _080472dc
	ldrb	r0, [r2, #0x4]
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, r0, r1
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x4]
	add		r0, #0x1
	strb	r0, [r2, #0x4]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x3c
	bne		_080472c0
	mov		r0, #0x0
	strb	r0, [r2, #0x4]
_080472c0:
	add		r3, r2, #0x0
	ldrb	r1, [r3, #0xC]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080472e6
	ldr		r0, [r3, #0x0]
	ldr		r1, _080472e0
	cmp		r0, r1
	bhi		_080472e4
	strh		r0, [r3, #0x6]
	b		_080472e6

_080472d8:	.4byte 0x03006000
_080472dc:	.4byte 0x081092b2
_080472e0:	.4byte 0x0000EA5F

_080472e4:
	strh		r1, [r2, #0x6]
_080472e6:
	bx		lr
	thumb_func_end sub_08047294

	thumb_func_start sub_080472e8
sub_080472e8:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r4, _0804734c
	ldrb	r1, [r4, #0x8]
	cmp		r1, #0x0
	beq		_080473d8
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0804738c
	ldrb	r1, [r4, #0xC]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08047354
	mov		r0, #0xf7
	and		r0, r1
	strb	r0, [r4, #0xC]
	ldrh		r0, [r4, #0xA]
	mov		r1, #0x16
	mov		r2, #0x0
	bl		sub_080470d8
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _08047350
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	ldrh	r0, [r1, #0x2]
	strh	r0, [r3, #0x2]
	ldrh	r0, [r1, #0x4]
	strh	r0, [r3, #0x4]
	add		r2, r3, #0x0
	add		r2, #0x40
	ldrh	r0, [r1, #0x6]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x8]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0xa]
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
	b		_0804738c

_0804734c:	.4byte 0x03006000
_08047350:	.4byte 0x081092ee

_08047354:
	mov		r0, #0x0
	mov		r1, #0x16
	mov		r2, #0x0
	bl		sub_080281b0
	add		r5, r0, #0x0
	ldrb	r0, [r4, #0xC]
	mov		r1, #0x8
	orr		r0, r1
	strb	r0, [r4, #0xC]
	mov		r0, #0x0
	mov		r3, #0x0
_0804736c:
	add		r2, r0, #0x1
	mov		r1, #0x7
	lsl		r0, r0, #0x6
	add		r0, r0, r5
	add		r0, #0xe
_08047376:
	strh	r3, [r0, #0x0]
	sub		r0, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08047376
	add		r0, r2, #0x0
	cmp		r0, #0x1
	ble		_0804736c
	mov		r0, #0x1
	bl		sub_080281fc
_0804738c:
	ldr		r1, _080473d0
	ldrb	r0, [r1, #0x8]
	sub		r0, #0x1
	strb	r0, [r1, #0x8]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_08047414
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _080473d4
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	ldrh	r0, [r1, #0x2]
	strh	r0, [r3, #0x2]
	ldrh	r0, [r1, #0x4]
	strh	r0, [r3, #0x4]
	add		r2, r3, #0x0
	add		r2, #0x40
	ldrh	r0, [r1, #0x6]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0x8]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	ldrh	r0, [r1, #0xa]
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08047414

_080473d0:	.4byte 0x03006000
_080473d4:	.4byte 0x081092fa

_080473d8:
	ldrb	r2, [r4, #0xC]
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	bne		_08047414
	ldr		r1, _08047400
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047404
	ldrh		r0, [r4, #0x6]
	mov		r1, #0x16
	mov		r2, #0x0
	bl		sub_080470d8
	b		_08047414

.incbin "base.gba", 0x473FE, 0x2

_08047400:	.4byte 0x00000814

_08047404:
	mov		r0, #0x10
	orr		r0, r2
	strb	r0, [r4, #0xC]
	ldrh		r0, [r4, #0x6]
	mov		r1, #0x16
	mov		r2, #0x0
	bl		sub_080470d8
_08047414:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4741A, 0x2
	thumb_func_end sub_080472e8

	thumb_func_start sub_0804741c
sub_0804741c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	ldr		r1, _080474dc
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r0, r8
	ldrh	r3, [r0, #0x0]
	ldr		r2, _080474e0
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_08047482
	sub		r1, #0x3a
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08047460
	mov		r1, #0x0
	ldr		r0, _080474e4
	ldrh	r0, [r0, #0x12]
	cmp		r0, #0x0
	bne		_0804745a
	mov		r1, #0x1
_0804745a:
	cmp		r1, #0x0
	bne		_08047460
	b		_0804757e
_08047460:
	ldr		r2, _080474e8
	add		r0, r6, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_08047482
	mov		r1, #0x0
	ldr		r0, _080474e4
	ldrh	r0, [r0, #0xc]
	cmp		r0, #0x0
	bne		_0804747c
	mov		r1, #0x1
_0804747c:
	cmp		r1, #0x0
	bne		_08047482
	b		_0804757e
_08047482:
	ldr		r0, _080474ec
	add		r5, r3, #0x0
	mul		r5, r0
	cmp		r5, #0x0
	bge		_08047490
	ldr		r0, _080474f0
	add		r5, r5, r0
_08047490:
	asr		r5, r5, #0x13
	mov		r7, #0xf
	and		r5, r7
	lsl		r4, r5, #0x2
	add		r4, r4, r5
	lsl		r4, r4, #0x1
	sub		r4, r3, r4
	and		r4, r7
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x1
	str		r3, [sp, #0x0]
	bl		sub_080281b0
	ldr		r2, _080474f4
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		r5, #0x10
	mov		r2, #0xb0
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	orr		r5, r1
	strh	r5, [r0, #0x2]
	add		r4, #0x10
	orr		r4, r1
	strh	r4, [r0, #0x4]
	ldr		r3, [sp, #0x0]
	cmp		r3, #0x1
	bgt		_080474d6
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_080474fc
_080474d6:
	ldr		r4, _080474f8
	b		_08047544

.incbin "base.gba", 0x474DA, 0x2

_080474dc:	.4byte 0x00000814
_080474e0:	.4byte 0x00000C88
_080474e4:	.4byte 0x03002FE0
_080474e8:	.4byte 0x000007DA
_080474ec:	.4byte 0x0000CCCD
_080474f0:	.4byte 0x0007FFFF
_080474f4:	.4byte 0x0000C020
_080474f8:	.4byte 0x08080600

_080474fc:
	ldr		r0, _08047524
	ldr		r4, [r0, #0x10]
	ldr		r1, _08047528
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	cmp		r0, #0x3
	bne		_0804753a
	cmp		r3, #0x0
	bgt		_0804752c
	mov		r0, #0x1f
	and		r0, r4
	cmp		r0, #0x0
	bne		_0804753a
	mov		r0, #0xc2
	bl		sub_0807073c
	b		_0804753a

.incbin "base.gba", 0x47522, 0x2

_08047524:	.4byte RunGameLogic_CallBack
_08047528:	.4byte 0x000007D4

_0804752c:
	mov		r0, #0x3f
	and		r0, r4
	cmp		r0, #0x0
	bne		_0804753a
	mov		r0, #0xc2
	bl		sub_0807073c
_0804753a:
	mov		r0, #0x8
	and		r4, r0
	cmp		r4, #0x0
	beq		_08047560
	ldr		r4, _0804755c
_08047544:
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xb1
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x3
	bl		sub_08071b6c
	b		_08047578

_0804755c:	.4byte 0x080805f0

_08047560:
	ldr		r4, _0804758c
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xb1
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x3
	bl		sub_08071b6c
_08047578:
	mov		r0, #0x1
	bl		sub_08028168
_0804757e:
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4758A, 0x2

_0804758c:	.4byte 0x080805f8
	thumb_func_end sub_0804741c

	thumb_func_start sub_08047590
sub_08047590:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r2, r0, #0x0
	mov		r9, r1
	ldr		r1, _080475c0
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080475c8
	mov		r3, r9
	lsl		r1, r3, #0x2
	ldr		r7, _080475c4
	add		r0, r2, r7
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_080475d4

.incbin "base.gba", 0x475BE, 0x2

_080475c0:	.4byte 0x000007DA
_080475c4:	.4byte 0x000007F4

_080475c8:
	mov		r0, r9
	lsl		r1, r0, #0x18
	lsr		r1, r1, #0x18
	add		r0, r2, #0x0
	bl		sub_08044894
_080475d4:
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r3, #0x7
	and		r3, r0
	ldr		r0, _08047640
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	cmp		r0, r3
	beq		_08047630
	ldr		r0, _08047644
	add		r0, r3, r0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r1, _08047648
	add		r5, r0, r1
	mov		r1, #0x0
	mov		r2, r9
	lsl		r0, r2, #0x1
	add		r0, r9
	mov		r8, r0
_080475fc:
	mov		r4, #0x0
	add		r6, r1, #0x3
	add		r1, #0x1
	mov		r10, r1
_08047604:
	add		r4, #0x1
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r7, r8
	add		r2, r7, r6
	str		r3, [sp, #0x0]
	bl		sub_080281b0
	strh	r5, [r0, #0x0]
	add		r5, #0x1
	ldr		r3, [sp, #0x0]
	cmp		r4, #0x1
	ble		_08047604
	mov		r1, r10
	cmp		r1, #0x1
	ble		_080475fc
	ldr		r0, _08047640
	add		r0, r9
	strb	r3, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
_08047630:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08047640:	.4byte 0x03002390
_08047644:	.4byte 0x08109306
_08047648:	.4byte 0x0000D080
	thumb_func_end sub_08047590

	thumb_func_start sub_0804764c
sub_0804764c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	mov		r8, r0
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0xC]
	cmp		r0, #0x4
	ble		_0804766c
	mov		r0, #0x4
	str		r0, [sp, #0xC]
_0804766c:
	mov		r4, #0x0
	ldr		r1, [sp, #0xC]
	cmp		r4, r1
	bge		_08047720
	mov		r0, sp
	add		r0, #0x8
	str		r0, [sp, #0x10]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	mov		r9, r1
_08047680:
	lsl		r1, r4, #0x2
	ldr		r0, _080476e8
	add		r0, r8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _080476ec
	add		r0, r0, r1
	ldrb	r5, [r0, #0x0]
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_08047590
	ldr		r0, _080476f0
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	add		r1, r4, #0x1
	mov		r10, r1
	cmp		r0, #0x0
	bne		_08047718
	cmp		r5, #0x0
	beq		_080476f8
	cmp		r5, #0x0
	beq		_08047718
	lsl		r0, r4, #0x1
	add		r0, r0, r4
	lsl		r0, r0, #0x13
	mov		r1, #0xc0
	lsl		r1, r1, #0xd
	add		r7, r0, r1
	add		r6, r1, #0x0
	add		r4, r5, #0x0
_080476c2:
	lsr		r0, r6, #0x10
	orr		r0, r7
	str		r0, [sp, #0x8]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _080476f4
	add		r1, sp, #0x8
	mov		r2, r9
	mov		r3, r9
	bl		sub_0802951c
	mov		r0, #0xa0
	lsl		r0, r0, #0xb
	add		r6, r6, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080476c2
	b		_08047718

_080476e8:	.4byte 0x000007F4
_080476ec:	.4byte 0x0000017D
_080476f0:	.4byte 0x000007D4
_080476f4:	.4byte 0x080972cc

_080476f8:
	mov		r0, #0x8
	ldr		r1, [sp, #0x10]
	strh	r0, [r1, #0x0]
	lsl		r0, r4, #0x1
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r0, #0x18
	strh	r0, [r1, #0x2]
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _08047734
	add		r1, sp, #0x8
	mov		r2, r9
	mov		r3, r9
	bl		sub_0802951c
_08047718:
	mov		r4, r10
	ldr		r0, [sp, #0xC]
	cmp		r4, r0
	blt		_08047680
_08047720:
	bl		sub_080478a4
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08047734:	.4byte 0x080972d4
	thumb_func_end sub_0804764c

	thumb_func_start sub_08047738
sub_08047738:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	mov		r2, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r7, _080477dc
	ldr		r1, _080477e0
	mov		r8, r1
	ldrb	r1, [r0, #0x0]
	cmp		r2, r1
	bge		_0804776a
	ldr		r6, _080477e4
	mov		r4, #0xff
	add		r3, r0, #0x0
_0804775a:
	add		r1, r2, r6
	ldrb	r0, [r1, #0x0]
	orr		r0, r4
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r2, r0
	blt		_0804775a
_0804776a:
	mov		r0, #0x0
	str		r0, [r7, #0x0]
	mov		r1, r8
	str		r0, [r1, #0x0]
	ldr		r2, _080477e8
	add		r0, r5, r2
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_08047800
	ldr		r1, _080477ec
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	add		r2, #0x16
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	sub		r5, r0, #0x1
	add		r4, r1, #0x0
	add		r4, #0xba
	ldrh	r0, [r4, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	beq		_080477b8
	bl		sub_08029f34
	ldrh	r1, [r4, #0x0]
	lsr		r1, r1, #0x1
	sub		r1, #0x1
	lsl		r1, r1, #0x6
	ldr		r2, _080477f0
	add		r1, r1, r2
	ldr		r2, _080477f4
	ldr		r3, _080477f8
	bl		sub_08029ee4
_080477b8:
	ldrh	r0, [r4, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, r5
	bge		_08047884
	bl		sub_08029f34
	ldrh	r1, [r4, #0x0]
	lsr		r1, r1, #0x1
	add		r1, #0x1
	lsl		r1, r1, #0x6
	ldr		r2, _080477f0
	add		r1, r1, r2
	ldr		r2, _080477fc
	ldr		r3, _080477f8
	bl		sub_08029ee4
	b		_08047884

.incbin "base.gba", 0x477DA, 0x2

_080477dc:	.4byte 0x03002398
_080477e0:	.4byte 0x0300239C
_080477e4:	.4byte 0x03002390
_080477e8:	.4byte 0x000007DA
_080477ec:	.4byte 0x00000814
_080477f0:	.4byte 0x080884e8
_080477f4:	.4byte 0x06012640
_080477f8:	.4byte 0x80000020
_080477fc:	.4byte 0x06012680

_08047800:
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bne		_08047824
	bl		sub_08029f34
	ldr		r1, _08047818
	ldr		r2, _0804781c
	ldr		r3, _08047820
	bl		sub_08029ee4
	b		_08047884

_08047818:	.4byte 0x080887e8
_0804781c:	.4byte 0x06012640
_08047820:	.4byte 0x80000040

_08047824:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08047834
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	bne		_08047884
_08047834:
	ldr		r1, _08047890
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r4, #0x0
	mov		r7, #0x0
	mov		r2, #0xfe
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08047884
	ldr		r6, _08047894
_0804784e:
	lsl		r0, r4, #0x2
	ldr		r2, _08047898
	add		r1, r5, r2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, r8
	beq		_08047876
	bl		sub_08029f34
	lsl		r1, r4, #0x6
	ldr		r2, _0804789c
	add		r1, r1, r2
	add		r2, r6, #0x0
	ldr		r3, _080478a0
	bl		sub_08029ee4
	add		r6, #0x40
	add		r7, #0x1
	cmp		r7, #0x2
	bgt		_08047884
_08047876:
	add		r4, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_0804784e
_08047884:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4788E, 0x2

_08047890:	.4byte 0x00000814
_08047894:	.4byte 0x06012640
_08047898:	.4byte 0x000007F4
_0804789c:	.4byte 0x080886e8
_080478a0:	.4byte 0x80000020
	thumb_func_end sub_08047738

	thumb_func_start sub_080478a4
sub_080478a4:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _080478cc
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r12, r1
	ldr		r2, _080478d0
	add		r1, r0, r2
	ldr		r2, [r1, #0x0]
	ldr		r1, _080478d4
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080478d8
	add		r0, r2, #0x0
	add		r0, #0xec
	ldrb	r1, [r0, #0x0]
	b		_080478e0

_080478cc:	.4byte RunGameLogic_CallBack
_080478d0:	.4byte 0x00000838
_080478d4:	.4byte 0x000007FE

_080478d8:
	add		r0, r2, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r1, r0, #0x1
_080478e0:
	mov		r5, #0x0
	mov		r4, #0x0
	ldr		r2, _08047910
	ldr		r0, [r2, #0x0]
	ldr		r7, _08047914
	cmp		r1, r0
	beq		_080479a0
	str		r1, [r2, #0x0]
	mov		r0, #0x6
	str		r0, [r7, #0x0]
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_08047918
	cmp		r0, #0x3
	beq		_08047938
	add		r0, r1, #0x0
	cmp		r1, #0x1
	beq		_08047984
	cmp		r1, #0x1
	bgt		_08047972
	b		_0804796c

_08047910:	.4byte 0x0300239C
_08047914:	.4byte 0x03002398

_08047918:
	cmp		r1, #0x0
	beq		_08047928
	cmp		r1, #0x1
	beq		_08047930
	ldr		r4, _08047924
	b		_0804799e

_08047924:	.4byte 0x081093f8

_08047928:
	ldr		r4, _0804792c
	b		_0804799e

_0804792c:	.4byte 0x08109434

_08047930:
	ldr		r4, _08047934
	b		_0804799e

_08047934:	.4byte 0x08109470

_08047938:
	cmp		r1, #0x1
	beq		_08047954
	cmp		r1, #0x1
	bgt		_08047946
	cmp		r1, #0x0
	beq		_0804794c
	b		_08047964
_08047946:
	cmp		r1, #0x2
	beq		_0804795c
	b		_08047964
_0804794c:
	ldr		r4, _08047950
	b		_0804799e

_08047950:	.4byte 0x08109578

_08047954:
	ldr		r4, _08047958
	b		_0804799e

_08047958:	.4byte 0x081095cc

_0804795c:
	ldr		r4, _08047960
	b		_0804799e

_08047960:	.4byte 0x08109620

_08047964:
	ldr		r4, _08047968
	b		_0804799e

_08047968:	.4byte 0x08109524

_0804796c:
	cmp		r0, #0x0
	beq		_0804797c
	b		_0804799c
_08047972:
	cmp		r1, #0x2
	beq		_0804798c
	cmp		r1, #0x3
	beq		_08047994
	b		_0804799c
_0804797c:
	ldr		r4, _08047980
	b		_0804799e

_08047980:	.4byte 0x081097dc

_08047984:
	ldr		r4, _08047988
	b		_0804799e

_08047988:	.4byte 0x08109848

_0804798c:
	ldr		r4, _08047990
	b		_0804799e

_08047990:	.4byte 0x081098b4

_08047994:
	ldr		r4, _08047998
	b		_0804799e

_08047998:	.4byte 0x08109920

_0804799c:
	ldr		r4, _080479c4
_0804799e:
	mov		r5, #0x1
_080479a0:
	ldr		r3, _080479c8
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_080479aa
	str		r0, [r7, #0x0]
_080479aa:
	add		r6, r7, #0x0
	ldr		r2, [r6, #0x0]
	cmp		r2, #0x0
	ble		_080479cc
	ldrb	r1, [r3, #0xC]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08047a78
	sub		r0, r2, #0x1
	str		r0, [r6, #0x0]
	b		_08047a78

.incbin "base.gba", 0x479C2, 0x2

_080479c4:	.4byte 0x08109770
_080479c8:	.4byte 0x03006000

_080479cc:
	cmp		r2, #0x0
	bne		_08047a78
	sub		r0, r2, #0x1
	str		r0, [r7, #0x0]
	mov		r0, #0xfe
	lsl		r0, r0, #0x3
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_080479ee
	cmp		r0, #0x3
	beq		_08047a10
	cmp		r1, #0x1
	beq		_08047a5c
	cmp		r1, #0x1
	bgt		_08047a4a
	b		_08047a44
_080479ee:
	cmp		r1, #0x0
	beq		_08047a00
	cmp		r1, #0x1
	beq		_08047a08
	ldr		r4, _080479fc
	b		_08047a76

.incbin "base.gba", 0x479FA, 0x2

_080479fc:	.4byte 0x081093f8

_08047a00:
	ldr		r4, _08047a04
	b		_08047a76

_08047a04:	.4byte 0x081094ac

_08047a08:
	ldr		r4, _08047a0c
	b		_08047a76

_08047a0c:	.4byte 0x081094e8

_08047a10:
	cmp		r1, #0x1
	beq		_08047a2c
	cmp		r1, #0x1
	bgt		_08047a1e
	cmp		r1, #0x0
	beq		_08047a24
	b		_08047a3c
_08047a1e:
	cmp		r1, #0x2
	beq		_08047a34
	b		_08047a3c
_08047a24:
	ldr		r4, _08047a28
	b		_08047a76

_08047a28:	.4byte 0x08109674

_08047a2c:
	ldr		r4, _08047a30
	b		_08047a76

_08047a30:	.4byte 0x081096c8

_08047a34:
	ldr		r4, _08047a38
	b		_08047a76

_08047a38:	.4byte 0x0810971c

_08047a3c:
	ldr		r4, _08047a40
	b		_08047a76

_08047a40:	.4byte 0x08109524

_08047a44:
	cmp		r1, #0x0
	beq		_08047a54
	b		_08047a74
_08047a4a:
	cmp		r1, #0x2
	beq		_08047a64
	cmp		r1, #0x3
	beq		_08047a6c
	b		_08047a74
_08047a54:
	ldr		r4, _08047a58
	b		_08047a76

_08047a58:	.4byte 0x0810998c

_08047a5c:
	ldr		r4, _08047a60
	b		_08047a76

_08047a60:	.4byte 0x081099f8

_08047a64:
	ldr		r4, _08047a68
	b		_08047a76

_08047a68:	.4byte 0x08109a64

_08047a6c:
	ldr		r4, _08047a70
	b		_08047a76

_08047a70:	.4byte 0x08109ad0

_08047a74:
	ldr		r4, _08047ad0
_08047a76:
	mov		r5, #0x1
_08047a78:
	cmp		r5, #0x0
	beq		_08047a94
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x2
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	mov		r0, #0x1
	bl		sub_080281fc
_08047a94:
	ldr		r0, _08047ad4
	ldr		r1, [r0, #0x10]
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047ac8
	mov		r0, #0x4
	and		r1, r0
	ldr		r4, _08047ad8
	cmp		r1, #0x0
	beq		_08047aac
	ldr		r4, _08047adc
_08047aac:
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xb9
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x2
	bl		sub_08071b6c
	mov		r0, #0x1
	bl		sub_08028168
_08047ac8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x47ACE, 0x2

_08047ad0:	.4byte 0x08109770
_08047ad4:	.4byte RunGameLogic_CallBack
_08047ad8:	.4byte 0x080805ec
_08047adc:	.4byte 0x080805e8
	thumb_func_end sub_080478a4

	thumb_func_start sub_08047ae0
sub_08047ae0:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r1, _08047c50
	add		r0, r4, r1
	ldr		r5, [r0, #0x0]
	add		r3, r5, #0x0
	add		r3, #0xba
	ldrh	r0, [r3, #0x0]
	lsr		r7, r0, #0x1
	sub		r1, #0x3a
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08047b10
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08047b10
	b		_08047d22
_08047b10:
	ldr		r2, _08047c54
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	cmp		r0, r7
	beq		_08047b72
	ldr		r0, _08047c58
	add		r1, r4, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldrh	r0, [r3, #0x0]
	lsr		r1, r0, #0x1
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r1, r0
	ble		_08047b72
	sub		r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r4, #0x0
	bl		sub_08044894
	add		r2, r0, #0x0
	ldr		r1, _08047c50
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047b72
	ldr		r3, _08047c5c
	add		r0, r2, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x7
	and		r1, r0
	add		r0, r2, #0x0
	add		r0, #0x58
	ldrh	r2, [r0, #0x0]
	mov		r0, #0x10
	and		r0, r2
	lsl		r1, r1, #0x2
	cmp		r0, #0x0
	bne		_08047b6a
	add		r1, #0x2
_08047b6a:
	add		r0, r1, r3
	ldrh	r0, [r0, #0x0]
	bl		sub_0807073c
_08047b72:
	ldr		r1, _08047c54
	add		r2, r5, #0x0
	add		r2, #0xba
	ldrh	r0, [r2, #0x0]
	lsr		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r3, _08047c58
	add		r1, r4, r3
	ldr		r0, [r1, #0x0]
	add		r5, r2, #0x0
	cmp		r0, #0x0
	beq		_08047c04
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r1, _08047c60
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	bne		_08047bea
	add		r3, #0x4
	add		r0, r4, r3
	ldrb	r0, [r0, #0x0]
	sub		r6, r0, #0x1
	ldrh	r0, [r5, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, #0x0
	beq		_08047bca
	bl		sub_08029f34
	ldrh	r1, [r5, #0x0]
	lsr		r1, r1, #0x1
	sub		r1, #0x1
	lsl		r1, r1, #0x6
	ldr		r2, _08047c64
	add		r1, r1, r2
	ldr		r2, _08047c68
	ldr		r3, _08047c6c
	bl		sub_08029ee4
_08047bca:
	ldrh	r0, [r5, #0x0]
	lsr		r0, r0, #0x1
	cmp		r0, r6
	bge		_08047bea
	bl		sub_08029f34
	ldrh	r1, [r5, #0x0]
	lsr		r1, r1, #0x1
	add		r1, #0x1
	lsl		r1, r1, #0x6
	ldr		r2, _08047c64
	add		r1, r1, r2
	ldr		r2, _08047c70
	ldr		r3, _08047c6c
	bl		sub_08029ee4
_08047bea:
	ldr		r1, _08047c74
	mov		r0, #0x20
	strh	r0, [r1, #0x0]
	bl		sub_08029f34
	ldr		r2, _08047c78
	lsl		r1, r7, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r2, _08047c7c
	ldr		r3, _08047c80
	bl		sub_08029ee4
_08047c04:
	ldr		r2, _08047c74
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, #0x0
	bgt		_08047c12
	b		_08047d22
_08047c12:
	sub		r1, #0x1
	strh	r1, [r2, #0x0]
	lsl		r0, r1, #0x10
	cmp		r0, #0x0
	ble		_08047c90
	mov		r0, #0x4
	and		r1, r0
	ldr		r3, _08047c84
	cmp		r1, #0x0
	beq		_08047c28
	sub		r3, #0x8
_08047c28:
	mov		r1, #0x0
	ldr		r6, _08047c88
	ldr		r0, _08047c8c
	add		r5, r4, r0
	add		r4, r6, #0x0
_08047c32:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r0, #0x1
	add		r1, r1, r4
	ldrh	r2, [r3, #0x0]
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3
	ble		_08047c32
	b		_08047ce0

.incbin "base.gba", 0x47C4E, 0x2

_08047c50:	.4byte 0x00000814
_08047c54:	.4byte 0x030023A8
_08047c58:	.4byte 0x000007EC
_08047c5c:	.4byte 0x08107874
_08047c60:	.4byte 0x000007DA
_08047c64:	.4byte 0x080884e8
_08047c68:	.4byte 0x06012640
_08047c6c:	.4byte 0x80000020
_08047c70:	.4byte 0x06012680
_08047c74:	.4byte 0x0203EF04
_08047c78:	.4byte 0x08109310
_08047c7c:	.4byte 0x06001C00
_08047c80:	.4byte 0x800000B0
_08047c84:	.4byte 0x080805e0
_08047c88:	.4byte 0x030023A0
_08047c8c:	.4byte 0x000007D4

_08047c90:
	ldrh	r0, [r5, #0x0]
	lsr		r2, r0, #0x1
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	ldrb	r3, [r0, #0x0]
	add		r1, r2, #0x0
	cmp		r3, #0x1
	ble		_08047cb6
	sub		r0, r3, #0x1
	cmp		r1, r0
	bne		_08047caa
	mov		r1, #0x7
_08047caa:
	cmp		r3, #0x2
	ble		_08047cb6
	sub		r0, r3, #0x2
	cmp		r2, r0
	bne		_08047cb6
	mov		r1, #0x5
_08047cb6:
	lsl		r1, r1, #0x3
	ldr		r0, _08047d28
	add		r3, r1, r0
	mov		r1, #0x0
	ldr		r6, _08047d2c
	ldr		r0, _08047d30
	add		r5, r4, r0
	add		r4, r6, #0x0
_08047cc6:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r0, #0x1
	add		r1, r1, r4
	ldrh	r2, [r3, #0x0]
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3
	ble		_08047cc6
_08047ce0:
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047d22
	mov		r0, #0x0
	bl		sub_08028130
	add		r3, r0, #0x0
	mov		r1, #0xc9
	lsl		r1, r1, #0x1
	add		r2, r3, r1
	ldrh	r0, [r6, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrh	r0, [r6, #0x2]
	strh	r0, [r2, #0x0]
	add		r1, r6, #0x4
	mov		r0, #0xcb
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrh	r0, [r1, #0x2]
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
_08047d22:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08047d28:	.4byte 0x08080590
_08047d2c:	.4byte 0x030023A0
_08047d30:	.4byte 0x000007D4
	thumb_func_end sub_08047ae0

	thumb_func_start sub_08047d34
sub_08047d34:
	push	{ r4, r5, r6, lr }
	ldr		r4, _08047db8
	add		r5, r4, #0x0
	add		r5, #0x24
	ldr		r1, _08047dbc
	add		r0, r4, r1
	ldr		r3, [r0, #0x0]
	ldr		r1, _08047dc0
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	ldr		r2, _08047dc4
	cmp		r0, #0x0
	bge		_08047d5c
	mov		r0, #0x7
	strh	r0, [r1, #0x0]
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	strh	r0, [r2, #0x0]
_08047d5c:
	mov		r6, #0x0
	ldrsh	r0, [r2, r6]
	cmp		r0, #0x1f
	ble		_08047dd8
	add		r0, r3, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r3, r0, #0x1
	ldr		r1, _08047dc8
	add		r0, r4, r1
	ldrb	r2, [r0, #0x0]
	add		r1, r3, #0x0
	cmp		r2, #0x1
	ble		_08047d8c
	sub		r0, r2, #0x1
	cmp		r1, r0
	bne		_08047d80
	mov		r1, #0x7
_08047d80:
	cmp		r2, #0x2
	ble		_08047d8c
	sub		r0, r2, #0x2
	cmp		r3, r0
	bne		_08047d8c
	mov		r1, #0x5
_08047d8c:
	lsl		r1, r1, #0x3
	ldr		r0, _08047dcc
	add		r3, r1, r0
	mov		r1, #0x0
	ldr		r6, _08047dd0
	ldr		r0, _08047dd4
	add		r5, r5, r0
	add		r4, r6, #0x0
_08047d9c:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r0, #0x1
	add		r1, r1, r4
	ldrh	r2, [r3, #0x0]
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3
	ble		_08047d9c
	b		_08047e0c

_08047db8:	.4byte RunGameLogic_CallBack
_08047dbc:	.4byte 0x00000838
_08047dc0:	.4byte 0x0203EF06
_08047dc4:	.4byte 0x030023AA
_08047dc8:	.4byte 0x00000814
_08047dcc:	.4byte 0x08080590
_08047dd0:	.4byte 0x030023A0
_08047dd4:	.4byte 0x000007D4

_08047dd8:
	ldrh	r1, [r1, #0x0]
	mov		r0, #0x4
	and		r0, r1
	ldr		r3, _08047e5c
	cmp		r0, #0x0
	beq		_08047de6
	sub		r3, #0x8
_08047de6:
	mov		r1, #0x0
	ldr		r6, _08047e60
	mov		r0, #0xff
	lsl		r0, r0, #0x3
	add		r5, r4, r0
	add		r4, r6, #0x0
_08047df2:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r0, #0x1
	add		r1, r1, r4
	ldrh	r2, [r3, #0x0]
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3
	ble		_08047df2
_08047e0c:
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047e4e
	mov		r0, #0x0
	bl		sub_08028130
	add		r3, r0, #0x0
	mov		r1, #0xc9
	lsl		r1, r1, #0x1
	add		r2, r3, r1
	ldrh	r0, [r6, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrh	r0, [r6, #0x2]
	strh	r0, [r2, #0x0]
	add		r1, r6, #0x4
	mov		r6, #0xcb
	lsl		r6, r6, #0x1
	add		r2, r3, r6
	ldrh	r0, [r1, #0x0]
	strh	r0, [r2, #0x0]
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrh	r0, [r1, #0x2]
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
_08047e4e:
	ldr		r0, _08047e64
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x47E5A, 0x2

_08047e5c:	.4byte 0x080805e0
_08047e60:	.4byte 0x030023A0
_08047e64:	.4byte 0x0203EF06
	thumb_func_end sub_08047d34

	thumb_func_start sub_08047e68
sub_08047e68:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r9, r0
	ldr		r0, _08047f30
	add		r0, r9
	ldr		r7, [r0, #0x0]
	ldr		r0, _08047f34
	ldr		r4, [r0, #0x0]
	add		r6, r0, #0x0
	cmp		r4, #0x0
	bne		_08047e86
	b		_08048170
_08047e86:
	add		r0, r7, #0x0
	add		r0, #0x90
	ldrb	r3, [r0, #0x0]
	ldr		r1, _08047f38
	ldr		r2, [r1, #0x0]
	mov		r10, r0
	add		r5, r1, #0x0
	cmp		r3, r2
	beq		_08047f7a
	str		r3, [r5, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r1, #0x84
	lsl		r1, r1, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_08047f7a
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0xff
	beq		_08047f7a
	ldr		r0, _08047f3c
	mov		r8, r0
	mov		r3, #0x0
_08047eb2:
	ldr		r1, [r6, #0x0]
	add		r4, r3, r1
	ldrb	r2, [r4, #0x0]
	ldr		r0, [r5, #0x0]
	cmp		r2, r0
	bne		_08047f70
	ldr		r1, _08047f40
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _08047f44
	str		r3, [r0, #0x0]
	ldr		r0, _08047f48
	mov		r6, #0x0
	str		r6, [r0, #0x0]
	ldr		r0, _08047f4c
	str		r2, [r0, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	sub		r0, #0x7f
	mov		r1, r8
	str		r0, [r1, #0x0]
	ldrb	r4, [r4, #0x2]
	bl		sub_08029f34
	ldr		r2, _08047f50
	mov		r1, #0x81
	neg		r1, r1
	and		r1, r4
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r2, _08047f54
	ldr		r3, _08047f58
	bl		sub_08029ee4
	mov		r0, #0x80
	and		r4, r0
	ldr		r5, _08047f5c
	cmp		r4, #0x0
	beq		_08047f08
	ldr		r5, _08047f60
_08047f08:
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_080490ac
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r0, _08047f64
	str		r6, [r0, #0x0]
	ldr		r0, _08047f68
	str		r6, [r0, #0x0]
	ldr		r0, _08047f6c
	str		r6, [r0, #0x0]
	b		_08047f7a

.incbin "base.gba", 0x47F2E, 0x2

_08047f30:	.4byte 0x00000814
_08047f34:	.4byte 0x030023AC
_08047f38:	.4byte 0x0203EF08
_08047f3c:	.4byte 0x0203EF10
_08047f40:	.4byte 0x030023B0
_08047f44:	.4byte 0x030023B4
_08047f48:	.4byte 0x030023B8
_08047f4c:	.4byte 0x0203EF0C
_08047f50:	.4byte 0x08109330
_08047f54:	.4byte 0x06000C80
_08047f58:	.4byte 0x800000C0
_08047f5c:	.4byte 0x08109b3c
_08047f60:	.4byte 0x08109b58
_08047f64:	.4byte 0x0203EF14
_08047f68:	.4byte 0x0203EF18
_08047f6c:	.4byte 0x0203EF1C

_08047f70:
	add		r3, #0x4
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xff
	bne		_08047eb2
_08047f7a:
	ldr		r0, _08048000
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08047f84
	b		_08048170
_08047f84:
	ldr		r0, _08048004
	ldr		r1, [r0, #0x0]
	ldr		r0, _08048008
	ldr		r0, [r0, #0x0]
	add		r1, r1, r0
	ldrb	r0, [r1, #0x1]
	lsl		r0, r0, #0x2
	mov		r8, r0
	ldrb	r2, [r1, #0x2]
	mov		r12, r2
	ldrb	r5, [r1, #0x3]
	add		r3, r7, #0x0
	add		r3, #0xc6
	ldrh	r2, [r3, #0x0]
	lsr		r2, r2, #0x8
	sub		r2, #0x7f
	ldr		r0, _0804800c
	add		r0, r9
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	mov		r1, #0x7f
	and		r0, r1
	ldr		r1, _08048010
	mov		r9, r3
	cmp		r2, r0
	bne		_08047fc4
	mov		r0, #0x80
	and		r0, r5
	cmp		r0, #0x0
	beq		_08047fc4
	mov		r0, r8
	str		r0, [r1, #0x0]
_08047fc4:
	mov		r2, #0xc2
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	ldr		r3, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x8
	and		r3, r0
	cmp		r3, #0x0
	beq		_08047fe2
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r3, r0
	beq		_08047fe2
	mov		r0, r8
	str		r0, [r1, #0x0]
_08047fe2:
	ldr		r0, [r1, #0x0]
	cmp		r0, r8
	blt		_08047fea
	b		_080480e0
_08047fea:
	mov		r6, #0x0
	mov		r3, #0x0
	mov		r0, #0xf
	and		r0, r5
	cmp		r0, #0x1
	beq		_0804801e
	cmp		r0, #0x1
	bgt		_08048014
	cmp		r0, #0x0
	beq		_0804801a
	b		_08048028

_08048000:	.4byte 0x030023B0
_08048004:	.4byte 0x030023B4
_08048008:	.4byte 0x030023AC
_0804800c:	.4byte 0x000007E6
_08048010:	.4byte 0x030023B8

_08048014:
	cmp		r0, #0x2
	beq		_08048024
	b		_08048028
_0804801a:
	mov		r6, #0x6
	b		_08048026
_0804801e:
	mov		r6, #0x3
	mov		r3, #0x1
	b		_08048028
_08048024:
	mov		r6, #0xa
_08048026:
	mov		r3, #0x2
_08048028:
	ldr		r4, _0804805c
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bne		_08048068
	ldr		r2, _08048060
	ldr		r0, [r2, #0x0]
	cmp		r0, r6
	ble		_080480a8
	str		r1, [r2, #0x0]
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	ldr		r4, _08048064
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	mov		r0, #0x1
	bl		sub_080281fc
	b		_080480a8

.incbin "base.gba", 0x4805A, 0x2

_0804805c:	.4byte 0x0203EF14
_08048060:	.4byte 0x0203EF18
_08048064:	.4byte 0x08109b74

_08048068:
	ldr		r2, _080480b8
	ldr		r0, [r2, #0x0]
	cmp		r0, r3
	ble		_080480a8
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	mov		r0, #0x1
	sub		r0, r0, r1
	str		r0, [r4, #0x0]
	mov		r0, #0x80
	mov		r1, r12
	and		r1, r0
	ldr		r4, _080480bc
	cmp		r1, #0x0
	beq		_08048088
	ldr		r4, _080480c0
_08048088:
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r1, _080480c4
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_080480a8:
	mov		r0, #0xf
	and		r0, r5
	cmp		r0, #0x1
	beq		_080480c8
	ldr		r1, _080480b8
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	b		_080480fe

_080480b8:	.4byte 0x0203EF18
_080480bc:	.4byte 0x08109b3c
_080480c0:	.4byte 0x08109b58
_080480c4:	.4byte 0x0203EF1C

_080480c8:
	ldr		r0, _080480d8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	bgt		_08048100
	ldr		r1, _080480dc
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	b		_080480fe

_080480d8:	.4byte 0x0203EF1C
_080480dc:	.4byte 0x0203EF18

_080480e0:
	ldr		r4, _08048114
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r1, _08048118
	mov		r0, #0x0
_080480fe:
	str		r0, [r1, #0x0]
_08048100:
	mov		r0, #0x40
	and		r0, r5
	cmp		r0, #0x0
	bne		_08048120
	ldr		r1, _0804811c
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	b		_08048170

.incbin "base.gba", 0x48112, 0x2

_08048114:	.4byte 0x08109b74
_08048118:	.4byte 0x030023B0
_0804811c:	.4byte 0x030023B8

_08048120:
	mov		r2, r9
	ldrh	r0, [r2, #0x0]
	lsr		r0, r0, #0x8
	sub		r0, #0x7f
	ldr		r1, _08048144
	ldr		r1, [r1, #0x0]
	cmp		r0, r1
	ble		_08048150
	ldr		r0, _08048148
	mov		r2, r10
	ldrb	r1, [r2, #0x0]
	ldrh	r0, [r0, #0x38]
	add		r1, r1, r0
	ldr		r0, _0804814c
	ldr		r0, [r0, #0x0]
	sub		r1, r1, r0
	b		_0804815a

.incbin "base.gba", 0x48142, 0x2

_08048144:	.4byte 0x0203EF10
_08048148:	.4byte RunGameLogic_CallBack
_0804814c:	.4byte 0x0203EF0C

_08048150:
	mov		r2, r10
	ldrb	r0, [r2, #0x0]
	ldr		r1, _08048180
	ldr		r1, [r1, #0x0]
	sub		r1, r0, r1
_0804815a:
	cmp		r1, #0x0
	bge		_08048160
	neg		r1, r1
_08048160:
	mov		r0, #0x30
	and		r5, r0
	asr		r0, r5, #0x4
	cmp		r1, r0
	ble		_08048170
	ldr		r0, _08048184
	mov		r1, r8
	str		r1, [r0, #0x0]
_08048170:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4817E, 0x2

_08048180:	.4byte 0x0203EF0C
_08048184:	.4byte 0x030023B8
	thumb_func_end sub_08047e68

	thumb_func_start sub_08048188
sub_08048188:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _08048240
	add		r6, r0, #0x0
	add		r6, #0x24
	add		r0, r6, #0x0
	bl		sub_0802c80c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r0, #0x13
	ldr		r2, [r4, #0x0]
	asr		r2, r0
	add		r2, #0xa8
	lsl		r2, r2, #0x10
	ldr		r1, [r4, #0x4]
	asr		r1, r0
	add		r1, #0x58
	lsl		r1, r1, #0x10
	lsr		r2, r2, #0x10
	orr		r2, r1
	str		r2, [sp, #0x8]
	ldr		r3, _08048244
	cmp		r5, #0x0
	bne		_080481cc
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080481cc
	ldr		r3, _08048248
_080481cc:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_080481e4
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_080481e6
_080481e4:
	ldr		r3, _0804824c
_080481e6:
	cmp		r5, #0x0
	beq		_080481f8
	ldr		r0, _08048250
	ldr		r0, [r0, #0x0]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_080481f8
	ldr		r3, _08048254
_080481f8:
	ldr		r1, _08048258
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0804821a
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08048238
_0804821a:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r3, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	cmp		r5, #0x0
	beq		_08048238
	ldr		r1, _08048250
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_08048238:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08048240:	.4byte RunGameLogic_CallBack
_08048244:	.4byte 0x08109350
_08048248:	.4byte 0x08109360
_0804824c:	.4byte 0x08109368
_08048250:	.4byte 0x03002388
_08048254:	.4byte 0x08109358
_08048258:	.4byte 0x00000814
	thumb_func_end sub_08048188

	thumb_func_start sub_0804825c
sub_0804825c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	ldr		r0, _080482d8
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_080482ce
	ldr		r0, _080482dc
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080482ce
	ldr		r0, _080482e0
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_080482ce
	mov		r7, #0xa0
	mov		r0, #0x0
_0804828e:
	mov		r4, #0x0
	add		r5, r0, #0x2
	add		r6, r0, #0x1
_08048294:
	add		r1, r4, #0x2
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xf0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x8
	ble		_08048294
	add		r0, r6, #0x0
	cmp		r0, #0x2
	ble		_0804828e
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r2, _080482d8
	add		r2, r8
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x40
	orr		r0, r1
	strh	r0, [r2, #0x0]
_080482ce:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080482d8:	.4byte 0x00000C68
_080482dc:	.4byte 0x00000BEE
_080482e0:	.4byte 0x00000C88
	thumb_func_end sub_0804825c

	thumb_func_start sub_080482e4
sub_080482e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	ldr		r0, _08048348
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0804839a
	ldr		r0, _0804834c
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0804839a
	ldr		r0, _08048350
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_08048354
	mov		r7, #0xc0
	mov		r0, #0x0
_08048316:
	mov		r4, #0x0
	add		r5, r0, #0x2
	add		r6, r0, #0x1
_0804831c:
	add		r1, r4, #0x0
	add		r1, #0x13
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xf0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x8
	ble		_0804831c
	add		r0, r6, #0x0
	cmp		r0, #0x2
	ble		_08048316
	b		_08048388

_08048348:	.4byte 0x00000C68
_0804834c:	.4byte 0x00000BEE
_08048350:	.4byte 0x00000C88

_08048354:
	mov		r7, #0xa0
	mov		r0, #0x0
_08048358:
	mov		r4, #0x0
	add		r5, r0, #0x2
	add		r6, r0, #0x1
_0804835e:
	add		r1, r4, #0x0
	add		r1, #0x13
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xf0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x8
	ble		_0804835e
	add		r0, r6, #0x0
	cmp		r0, #0x2
	ble		_08048358
_08048388:
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r2, _080483a4
	add		r2, r8
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x20
	orr		r0, r1
	strh	r0, [r2, #0x0]
_0804839a:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080483a4:	.4byte 0x00000C68
	thumb_func_end sub_080482e4

	thumb_func_start sub_080483a8
sub_080483a8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	ldr		r2, _0804841c
	add		r2, r8
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08048420
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r7, #0xa0
	bl		sub_08029f34
	ldr		r1, _08048424
	ldr		r2, _08048428
	ldr		r3, _0804842c
	bl		sub_08029ee4
	mov		r0, #0x0
_080483ce:
	mov		r4, #0x0
	add		r5, r0, #0x2
	add		r6, r0, #0x1
_080483d4:
	add		r1, r4, #0x0
	add		r1, #0x15
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xd0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x8
	ble		_080483d4
	add		r0, r6, #0x0
	cmp		r0, #0x1
	ble		_080483ce
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r2, _0804841c
	add		r2, r8
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x10
	orr		r0, r1
	strh	r0, [r2, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4841A, 0x2

_0804841c:	.4byte 0x00000C68
_08048420:	.4byte 0x0000FFEF
_08048424:	.4byte 0x08080968
_08048428:	.4byte 0x06001400
_0804842c:	.4byte 0x80000120
	thumb_func_end sub_080483a8

	thumb_func_start sub_08048430
sub_08048430:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r5, _080484e0
	ldr		r0, _080484e4
	add		r0, r0, r5
	mov		r8, r0
	ldrh	r0, [r0, #0x0]
	mov		r6, #0xf0
	lsl		r6, r6, #0x4
	add		r1, r6, #0x0
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_080484c2
	ldr		r4, _080484e8
	mov		r0, #0x0
	mov		r1, #0x4
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	ldr		r4, _080484ec
	mov		r0, #0x0
	mov		r1, #0x9
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
	ldr		r1, _080484f0
	add		r0, r5, r1
	ldrh	r4, [r0, #0x0]
	lsr		r4, r4, #0x8
	mov		r0, #0x7
	and		r4, r0
	mov		r0, #0x0
	mov		r1, #0xa
	mov		r2, #0x0
	bl		sub_080281b0
	ldr		r3, _080484f4
	lsl		r1, r4, #0x1
	add		r1, r1, r3
	ldrh	r1, [r1, #0x0]
	mov		r7, #0xc0
	lsl		r7, r7, #0x8
	add		r2, r7, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0xa
	lsl		r4, r4, #0x1
	add		r4, r4, r3
	ldrh	r1, [r4, #0x0]
	orr		r1, r2
	strh	r1, [r0, #0x0]
	ldr		r4, _080484f8
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
_080484c2:
	mov		r3, #0x0
	ldr		r1, _080484fc
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bge		_08048500
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_08048560
	mov		r0, #0x4
	and		r1, r0
	cmp		r1, #0x0
	bne		_08048560
	b		_08048574

_080484e0:	.4byte RunGameLogic_CallBack
_080484e4:	.4byte 0x000007FE
_080484e8:	.4byte 0x081093b4
_080484ec:	.4byte 0x08109b90
_080484f0:	.4byte 0x0000080A
_080484f4:	.4byte 0x0810928a
_080484f8:	.4byte 0x081093c4
_080484fc:	.4byte 0x00000CAC

_08048500:
	mov		r7, r8
	ldrh	r2, [r7, #0x0]
	add		r1, r6, #0x0
	and		r1, r2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0804851c
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0804853c
_08048518:
	mov		r3, #0x1
	b		_08048560
_0804851c:
	mov		r0, #0x10
	and		r0, r2
	cmp		r0, #0x0
	beq		_08048518
	mov		r1, #0x0
	ldr		r0, _08048538
	ldrh	r0, [r0, #0x10]
	cmp		r0, #0x0
	bne		_08048530
	mov		r1, #0x1
_08048530:
	cmp		r1, #0x0
	beq		_0804855c
	b		_08048518

.incbin "base.gba", 0x48536, 0x2

_08048538:	.4byte 0x03002FE0

_0804853c:
	mov		r1, #0x0
	ldr		r2, _080485c0
	ldrh	r0, [r2, #0x8]
	cmp		r0, #0x0
	bne		_08048548
	mov		r1, #0x1
_08048548:
	cmp		r1, #0x0
	bne		_0804855a
	mov		r1, #0x0
	ldrh	r0, [r2, #0xa]
	cmp		r0, #0x0
	bne		_08048556
	mov		r1, #0x1
_08048556:
	cmp		r1, #0x0
	beq		_0804855c
_0804855a:
	mov		r3, #0x1
_0804855c:
	cmp		r3, #0x0
	beq		_08048574
_08048560:
	ldr		r4, _080485c4
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_080490ac
_08048574:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r0, #0x0
	ldr		r1, _080485c8
	mov		r8, r1
_0804857e:
	mov		r4, #0x0
	add		r5, r0, #0x0
	add		r5, #0xc
	add		r7, r0, #0x1
_08048586:
	add		r1, r4, #0x0
	add		r1, #0x16
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r1, r6, #0x0
	mov		r2, r8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r6, #0x1
	add		r4, #0x1
	cmp		r4, #0x7
	ble		_08048586
	add		r0, r7, #0x0
	cmp		r0, #0x7
	ble		_0804857e
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x485BE, 0x2

_080485c0:	.4byte 0x03002FE0
_080485c4:	.4byte 0x081093d4
_080485c8:	.4byte 0xFFFFB000
	thumb_func_end sub_08048430

	thumb_func_start sub_080485cc
sub_080485cc:
	push	{ r4, lr }
	sub		sp, #0x8
	add		r4, r0, #0x0
	ldr		r1, _0804862c
	add		r0, r4, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r2, _08048630
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	sub		r2, #0x2
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	bl		sub_08029f34
	ldr		r1, _08048634
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _08048638
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0804863c
	ldr		r2, _08048640
	ldr		r3, _08048644
	bl		sub_08029ee4
	ldr		r0, _08048648
	add		r4, r4, r0
	ldrh	r0, [r4, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_0804867e
	cmp		r1, r0
	bgt		_0804864c
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0804867e
	b		_0804868c

_0804862c:	.4byte 0x00000C68
_08048630:	.4byte 0x00000C6C
_08048634:	.4byte 0x0807e190
_08048638:	.4byte 0x80001000
_0804863c:	.4byte 0x0203EF20
_08048640:	.4byte 0x06001C00
_08048644:	.4byte 0x810000B0
_08048648:	.4byte 0x000007DA

_0804864c:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	bne		_0804868c
	ldr		r0, _08048704
	ldr		r1, _08048708
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _0804870c
	ldr		r1, _08048710
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _08048714
	ldr		r1, _08048718
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r4, _0804871c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x18
	bl		_CallHardwareSetCpuFast
_0804867e:
	bl		sub_08029f34
	ldr		r1, _08048720
	ldr		r2, _08048724
	ldr		r3, _08048728
	bl		sub_08029ee4
_0804868c:
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [sp, #0x0]
	ldr		r1, _0804872c
	ldr		r2, _08048730
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
	ldr		r4, _08048734
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x30
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x0
	bl		sub_08028130
	mov		r2, #0x9f
	lsl		r2, r2, #0x1
	add		r1, r0, r2
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r1, _08048738
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _0804873c
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r0, _08048740
	str		r0, [sp, #0x4]
	add		r4, sp, #0x4
	mov		r0, #0x1
	bl		sub_080281a4
	add		r1, r0, #0x0
	ldr		r2, _08048744
	add		r0, r4, #0x0
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x3
	bl		sub_080281fc
	add		sp, #0x8
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08048704:	.4byte 0x080889c8
_08048708:	.4byte 0x06011180
_0804870c:	.4byte 0x08088b6c
_08048710:	.4byte 0x06011400
_08048714:	.4byte 0x08088a88
_08048718:	.4byte 0x06011C00
_0804871c:	.4byte 0x08088968
_08048720:	.4byte 0x08080190
_08048724:	.4byte 0x06001000
_08048728:	.4byte 0x80000200
_0804872c:	.4byte 0x06002E00
_08048730:	.4byte 0x01000008
_08048734:	.4byte 0x0807e0d0
_08048738:	.4byte 0x06003800
_0804873c:	.4byte 0x06003000
_08048740:	.4byte 0x91709170
_08048744:	.4byte 0x01000200
	thumb_func_end sub_080485cc

	thumb_func_start sub_08048748
sub_08048748:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r4, _080487d0
	mov		r0, #0x24
	add		r0, r0, r4
	mov		r10, r0
	ldr		r0, _080487d4
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	strb	r1, [r0, #0x4]
	mov		r2, #0x0
	strh		r1, [r0, #0x6]
	strb	r2, [r0, #0x8]
	strh		r1, [r0, #0xA]
	strb	r2, [r0, #0xC]
	bl		sub_08048430
	mov		r0, r10
	bl		sub_08046df4
	mov		r1, #0xb3
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0xc4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08048790
	add		r0, r1, r0
	ldr		r1, _080487d8
	bl		_CallHardwareLZ77DecompressToMemory16Bit
_08048790:
	ldr		r2, _080487dc
	add		r0, r4, r2
	ldr		r1, [r0, #0x0]
	mov		r3, #0x81
	lsl		r3, r3, #0x4
	add		r2, r4, r3
	mov		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r2, _080487e0
	add		r1, #0xba
	ldrh	r0, [r1, #0x0]
	lsr		r0, r0, #0x1
	strh	r0, [r2, #0x0]
	ldr		r1, _080487e4
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_080487c6
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_08048822
_080487c6:
	mov		r7, #0xe0
	mov		r5, #0x0
_080487ca:
	mov		r4, #0x0
	add		r6, r5, #0x1
	b		_08048808

_080487d0:	.4byte RunGameLogic_CallBack
_080487d4:	.4byte 0x03006000
_080487d8:	.4byte 0x06002000
_080487dc:	.4byte 0x00000838
_080487e0:	.4byte 0x030023A8
_080487e4:	.4byte 0x000007FE

_080487e8:
	add		r4, #0x1
	add		r2, r5, #0x0
	add		r2, #0x10
	mov		r0, #0x0
	add		r1, r4, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xc0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
_08048808:
	cmp		r5, #0x2
	bne		_08048812
	cmp		r4, #0x4
	ble		_080487e8
	b		_08048816
_08048812:
	cmp		r4, #0x2
	ble		_080487e8
_08048816:
	add		r5, r6, #0x0
	cmp		r5, #0x2
	ble		_080487ca
	mov		r0, #0x1
	bl		sub_080281fc
_08048822:
	mov		r0, r10
	bl		sub_08047738
	ldr		r0, _08048900
	ldr		r1, _08048904
	ldr		r4, _08048908
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	ldr		r3, _0804890c
	ldr		r2, _08048910
	ldr		r1, _08048914
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	str		r0, [r3, #0x0]
	ldr		r1, _08048918
	ldr		r0, [r4, #0x14]
	str		r0, [r1, #0x0]
	ldr		r0, _0804891c
	add		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	cmp		r0, r1
	bne		_080488b8
	bl		sub_08029f34
	ldr		r1, _08048920
	ldr		r2, _08048924
	ldr		r3, _08048928
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0804892c
	ldr		r2, _08048930
	ldr		r3, _08048934
	bl		sub_08029ee4
	mov		r7, #0x0
	mov		r0, #0x0
	ldr		r1, _08048938
	mov		r9, r1
_08048884:
	mov		r5, #0x0
	add		r6, r0, #0x0
	add		r6, #0xe
	add		r0, #0x1
	mov		r8, r0
	lsl		r0, r7, #0x1
	mov		r2, r9
	add		r4, r0, r2
_08048894:
	mov		r0, #0x0
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldrh	r1, [r4, #0x0]
	strh	r1, [r0, #0x0]
	add		r4, #0x2
	add		r7, #0x1
	add		r5, #0x1
	cmp		r5, #0x5
	ble		_08048894
	mov		r0, r8
	cmp		r0, #0x4
	ble		_08048884
	mov		r0, #0x1
	bl		sub_080281fc
_080488b8:
	ldr		r0, _0804891c
	add		r0, r10
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	cmp		r0, r1
	beq		_080488f2
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0x0
	bl		sub_080281b0
	ldr		r3, _0804893c
	ldrh	r1, [r3, #0x2]
	mov		r4, #0xc0
	lsl		r4, r4, #0x8
	add		r2, r4, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	ldrh	r1, [r3, #0x16]
	orr		r1, r2
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
_080488f2:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08048900:	.4byte RunGameLogic_CallBack
_08048904:	.4byte 0x08102bf8
_08048908:	.4byte 0x00000801
_0804890c:	.4byte 0x030023B0
_08048910:	.4byte 0x030023B4
_08048914:	.4byte 0x030023B8
_08048918:	.4byte 0x030023AC
_0804891c:	.4byte 0x000007DA
_08048920:	.4byte 0x08082568
_08048924:	.4byte 0x06002800
_08048928:	.4byte 0x80000120
_0804892c:	.4byte 0x08081d68
_08048930:	.4byte 0x06017800
_08048934:	.4byte 0x80000400
_08048938:	.4byte 0x08109378
_0804893c:	.4byte 0x0810928a

.incbin "base.gba", 0x48940, 0x18
	thumb_func_end sub_08048748

	thumb_func_start sub_08048958
sub_08048958:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r12, r1
	mov		r8, r2
	mov		r9, r3
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	ldr		r0, _080489a4
	cmp		r1, r0
	bhi		_080489ac
	ldr		r0, _080489a8
	mul		r0, r1
	lsr		r5, r0, #0x13
	mov		r0, #0x64
	mul		r0, r5
	sub		r7, r1, r0
	cmp		r7, #0x63
	bls		_08048984
	sub		r7, #0x64
	add		r5, #0x1
_08048984:
	lsl		r0, r5, #0x4
	add		r0, r0, r5
	lsl		r1, r0, #0x8
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	lsr		r6, r0, #0x13
	lsl		r0, r6, #0x4
	sub		r0, r0, r6
	lsl		r0, r0, #0x2
	sub		r5, r5, r0
	cmp		r5, #0x3b
	bls		_080489b2
	sub		r5, #0x3c
	add		r6, #0x1
	b		_080489b2

.incbin "base.gba", 0x489A2, 0x2

_080489a4:	.4byte 0x0000EA5F
_080489a8:	.4byte 0x0000147A

_080489ac:
	mov		r6, #0x9
	mov		r5, #0x3b
	mov		r7, #0x63
_080489b2:
	ldr		r2, _08048a10
	add		r0, r6, #0x0
	mul		r0, r2
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r6, r0
	mov		r1, #0xf
	and		r3, r1
	lsl		r0, r3, #0x4
	and		r4, r1
	add		r6, r0, r4
	add		r0, r5, #0x0
	mul		r0, r2
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r5, r0
	and		r3, r1
	lsl		r0, r3, #0x4
	and		r4, r1
	add		r5, r0, r4
	add		r0, r7, #0x0
	mul		r0, r2
	lsr		r3, r0, #0x13
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r7, r0
	and		r3, r1
	lsl		r0, r3, #0x4
	and		r4, r1
	add		r7, r0, r4
	mov		r0, r12
	str		r6, [r0, #0x0]
	mov		r0, r8
	str		r5, [r0, #0x0]
	mov		r0, r9
	str		r7, [r0, #0x0]
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08048a10:	.4byte 0x0000CCCD
	thumb_func_end sub_08048958

	thumb_func_start sub_08048a14
sub_08048a14:
	ldr		r2, _08048a30
	ldrb	r1, [r2, #0xC]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08048a2e
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	mov		r1, #0x4
	orr		r0, r1
	strb	r0, [r2, #0xC]
_08048a2e:
	bx		lr

_08048a30:	.4byte 0x03006000
	thumb_func_end sub_08048a14

	thumb_func_start sub_08048a34
sub_08048a34:
	ldr		r1, _08048a44
	ldrb	r2, [r1, #0xC]
	mov		r0, #0xfd
	and		r0, r2
	strb	r0, [r1, #0xC]
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x48A42, 0x2

_08048a44:	.4byte 0x03006000
	thumb_func_end sub_08048a34

	thumb_func_start sub_08048a48
sub_08048a48:
	ldr		r0, _08048a50
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x48A4E, 0x2

_08048a50:	.4byte 0x03006000

.incbin "base.gba", 0x48A54, 0x70
	thumb_func_end sub_08048a48

	thumb_func_start sub_08048ac4
sub_08048ac4:
	push	{ r4, r5, lr }
	ldr		r2, _08048aec
	ldr		r1, _08048af0
	add		r3, r2, r1
	ldrh	r4, [r3, #0x0]
	mov		r5, #0xc9
	lsl		r5, r5, #0x4
	add		r1, r2, r5
	strh	r4, [r1, #0x0]
	strh	r0, [r3, #0x0]
	ldr		r0, _08048af4
	add		r2, r2, r0
	mov		r0, #0xa0
	strh	r0, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	bl		sub_08046734
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08048aec:	.4byte RunGameLogic_CallBack
_08048af0:	.4byte 0x00000C8E
_08048af4:	.4byte 0x00000C92
	thumb_func_end sub_08048ac4

	thumb_func_start sub_08048af8
sub_08048af8:
	push	{ r4, lr }
	ldr		r3, _08048b20
	mov		r4, #0xc9
	lsl		r4, r4, #0x4
	add		r2, r3, r4
	strh	r0, [r2, #0x0]
	ldr		r0, _08048b24
	add		r2, r3, r0
	strh	r1, [r2, #0x0]
	add		r4, #0x2
	add		r3, r3, r4
	mov		r0, #0xa0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r2, #0x0]
	bl		sub_08046734
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48B1E, 0x2

_08048b20:	.4byte RunGameLogic_CallBack
_08048b24:	.4byte 0x00000C8E
	thumb_func_end sub_08048af8

	thumb_func_start sub_08048b28
sub_08048b28:
	ldr		r1, _08048b3c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _08048b40
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x48B3A, 0x2

_08048b3c:	.4byte 0x00000814
_08048b40:	.4byte 0x030023A8
	thumb_func_end sub_08048b28

	thumb_func_start sub_08048b44
sub_08048b44:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x10
	mov		r1, #0xe0
	lsl		r1, r1, #0xb
	and		r1, r0
	lsr		r4, r1, #0x10
	cmp		r4, #0x0
	bne		_08048b56
	mov		r4, #0x1
_08048b56:
	mov		r0, #0x0
	mov		r1, #0x8
	mov		r2, #0x0
	bl		sub_080281b0
	ldr		r3, _08048b90
	lsl		r1, r4, #0x1
	add		r1, r1, r3
	ldrh	r1, [r1, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x8
	add		r2, r5, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r1, r4, #0x0
	add		r1, #0xa
	lsl		r1, r1, #0x1
	add		r1, r1, r3
	ldrh	r1, [r1, #0x0]
	orr		r1, r2
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48B8E, 0x2

_08048b90:	.4byte 0x0810928a
	thumb_func_end sub_08048b44

	thumb_func_start sub_08048b94
sub_08048b94:
	push	{ lr }
	ldr		r1, _08048bbc
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r2, r0, #0x8
	add		r3, r2, #0x0
	sub		r3, #0x7f
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08048bc0
	add		r0, r2, #0x0
	sub		r0, #0x80
	lsl		r0, r0, #0x10
	b		_08048bc2

.incbin "base.gba", 0x48BBA, 0x2

_08048bbc:	.4byte 0x00000814

_08048bc0:
	lsl		r0, r3, #0x10
_08048bc2:
	lsr		r0, r0, #0x10
	bl		sub_08048b44
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08048b94

	thumb_func_start sub_08048bcc
sub_08048bcc:
	push	{ r4, r5, r6, r7, lr }
	ldr		r2, _08048c0c
	add		r1, r0, r2
	ldr		r2, [r1, #0x0]
	ldr		r1, _08048c10
	add		r3, r0, r1
	mov		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r3, _08048c14
	add		r2, #0xba
	ldrh	r1, [r2, #0x0]
	lsr		r1, r1, #0x1
	strh	r1, [r3, #0x0]
	ldr		r2, _08048c18
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08048c02
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_08048c56
_08048c02:
	mov		r7, #0xe0
	mov		r5, #0x0
_08048c06:
	mov		r4, #0x0
	add		r6, r5, #0x1
	b		_08048c3c

_08048c0c:	.4byte 0x00000814
_08048c10:	.4byte 0x000007EC
_08048c14:	.4byte 0x030023A8
_08048c18:	.4byte 0x000007DA

_08048c1c:
	add		r4, #0x1
	add		r2, r5, #0x0
	add		r2, #0x10
	mov		r0, #0x0
	add		r1, r4, #0x0
	bl		sub_080281b0
	add		r2, r7, #0x0
	add		r1, r2, #0x1
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	mov		r3, #0xc0
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r2, r1
	strh	r2, [r0, #0x0]
_08048c3c:
	cmp		r5, #0x2
	bne		_08048c46
	cmp		r4, #0x4
	ble		_08048c1c
	b		_08048c4a
_08048c46:
	cmp		r4, #0x2
	ble		_08048c1c
_08048c4a:
	add		r5, r6, #0x0
	cmp		r5, #0x2
	ble		_08048c06
	mov		r0, #0x1
	bl		sub_080281fc
_08048c56:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08048bcc

	thumb_func_start sub_08048c5c
sub_08048c5c:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldrb	r5, [r0, #0x0]
	cmp		r5, #0x4
	ble		_08048c6e
	mov		r5, #0x4
_08048c6e:
	mov		r4, #0x0
	cmp		r4, r5
	bge		_08048c82
_08048c74:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08047590
	add		r4, #0x1
	cmp		r4, r5
	blt		_08048c74
_08048c82:
	bl		sub_080478a4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08048c5c

	thumb_func_start sub_08048c8c
sub_08048c8c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r0, #0x0
	ldr		r1, _08048cd8
	mov		r8, r1
_08048c9c:
	mov		r4, #0x0
	add		r5, r0, #0x0
	add		r5, #0xc
	add		r7, r0, #0x1
_08048ca4:
	add		r1, r4, #0x0
	add		r1, #0x16
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r1, r6, #0x0
	mov		r2, r8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r6, #0x1
	add		r4, #0x1
	cmp		r4, #0x7
	ble		_08048ca4
	add		r0, r7, #0x0
	cmp		r0, #0x7
	ble		_08048c9c
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48CD6, 0x2

_08048cd8:	.4byte 0xFFFFB000
	thumb_func_end sub_08048c8c

	thumb_func_start sub_08048cdc
sub_08048cdc:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r1, _08048cf8
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08048d24
	ldr		r2, _08048cfc
	add		r0, r4, r2
	ldr		r6, [r0, #0x0]
	mov		r5, #0x0
	b		_08048d18

_08048cf8:	.4byte 0x000007D4
_08048cfc:	.4byte 0x00000814

_08048d00:
	lsl		r1, r5, #0x2
	ldr		r2, _08048d2c
	add		r0, r4, r2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	cmp		r0, r6
	bne		_08048d12
	mov		r1, #0x1
_08048d12:
	bl		sub_08048188
	add		r5, #0x1
_08048d18:
	mov		r1, #0xfe
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r5, r0
	blt		_08048d00
_08048d24:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48D2A, 0x2

_08048d2c:	.4byte 0x000007F4
	thumb_func_end sub_08048cdc

	thumb_func_start sub_08048d30
sub_08048d30:
	push	{ lr }
	ldr		r1, _08048d58
	add		r3, r0, r1
	ldrh	r2, [r3, #0x0]
	ldr		r1, _08048d5c
	and		r1, r2
	strh	r1, [r3, #0x0]
	ldr		r1, _08048d60
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_08048d70
	bl		sub_08029f34
	ldr		r1, _08048d64
	ldr		r2, _08048d68
	ldr		r3, _08048d6c
	bl		sub_08029ee4
	b		_08048d7e

_08048d58:	.4byte 0x00000C68
_08048d5c:	.4byte 0x0000FFBF
_08048d60:	.4byte 0x00000C88
_08048d64:	.4byte 0x08080608
_08048d68:	.4byte 0x06001400
_08048d6c:	.4byte 0x800001B0

_08048d70:
	bl		sub_08029f34
	ldr		r1, _08048d84
	ldr		r2, _08048d88
	ldr		r3, _08048d8c
	bl		sub_08029ee4
_08048d7e:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48D82, 0x2

_08048d84:	.4byte 0x08080f08
_08048d88:	.4byte 0x06001400
_08048d8c:	.4byte 0x800001B0
	thumb_func_end sub_08048d30

	thumb_func_start sub_08048d90
sub_08048d90:
	push	{ lr }
	ldr		r1, _08048db0
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	ldr		r1, _08048db4
	and		r1, r2
	strh	r1, [r0, #0x0]
	bl		sub_08029f34
	ldr		r1, _08048db8
	ldr		r2, _08048dbc
	ldr		r3, _08048dc0
	bl		sub_08029ee4
	pop		{ r0 }
	bx		r0

_08048db0:	.4byte 0x00000C68
_08048db4:	.4byte 0x0000FFDF
_08048db8:	.4byte 0x08080ba8
_08048dbc:	.4byte 0x06001800
_08048dc0:	.4byte 0x800001B0
	thumb_func_end sub_08048d90

	thumb_func_start sub_08048dc4
sub_08048dc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	bl		sub_08029f34
	ldr		r1, _08048e30
	ldr		r2, _08048e34
	ldr		r3, _08048e38
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _08048e3c
	ldr		r2, _08048e40
	ldr		r3, _08048e44
	bl		sub_08029ee4
	mov		r7, #0x0
	mov		r0, #0x0
	ldr		r1, _08048e48
	mov		r9, r1
_08048df0:
	mov		r5, #0x0
	add		r6, r0, #0x0
	add		r6, #0xe
	add		r0, #0x1
	mov		r8, r0
	lsl		r0, r7, #0x1
	mov		r1, r9
	add		r4, r0, r1
_08048e00:
	mov		r0, #0x0
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldrh	r1, [r4, #0x0]
	strh	r1, [r0, #0x0]
	add		r4, #0x2
	add		r7, #0x1
	add		r5, #0x1
	cmp		r5, #0x5
	ble		_08048e00
	mov		r0, r8
	cmp		r0, #0x4
	ble		_08048df0
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08048e30:	.4byte 0x08082568
_08048e34:	.4byte 0x06002800
_08048e38:	.4byte 0x80000120
_08048e3c:	.4byte 0x08081d68
_08048e40:	.4byte 0x06017800
_08048e44:	.4byte 0x80000400
_08048e48:	.4byte 0x08109378
	thumb_func_end sub_08048dc4

	thumb_func_start sub_08048e4c
sub_08048e4c:
	push	{ lr }
	sub		sp, #0xc
	ldr		r2, _08048e88
	add		r1, r0, r2
	ldr		r2, [r1, #0x0]
	ldr		r1, _08048e8c
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08048eac
	ldr		r0, _08048e90
	str		r0, [sp, #0x8]
	add		r0, r2, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08048e74
	neg		r0, r0
_08048e74:
	lsl		r0, r0, #0x5
	lsr		r1, r0, #0x10
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bhi		_08048e94
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r1, r1, r2
	b		_08048e98

_08048e88:	.4byte 0x00000814
_08048e8c:	.4byte 0x000007D4
_08048e90:	.4byte 0x00880018

_08048e94:
	mov		r1, #0xe0
	lsl		r1, r1, #0x8
_08048e98:
	ldr		r0, _08048eb4
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	add		r2, r3, #0x0
	bl		sub_0802951c
_08048eac:
	add		sp, #0xc
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48EB2, 0x2

_08048eb4:	.4byte 0x08109370
	thumb_func_end sub_08048e4c

	thumb_func_start sub_08048eb8
sub_08048eb8:
	push	{ r4, r5, r6, r7, lr }
	mov		r0, #0x0
	mov		r7, #0x0
_08048ebe:
	mov		r4, #0x0
	add		r5, r0, #0x0
	add		r5, #0xe
	add		r6, r0, #0x1
_08048ec6:
	mov		r0, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	strh	r7, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0x5
	ble		_08048ec6
	add		r0, r6, #0x0
	cmp		r0, #0x4
	ble		_08048ebe
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48EEA, 0x2
	thumb_func_end sub_08048eb8

	thumb_func_start sub_08048eec
sub_08048eec:
	push	{ r4, lr }
	ldr		r4, _08048f1c
	ldrb	r1, [r4, #0xC]
	mov		r0, #0xf7
	and		r0, r1
	strb	r0, [r4, #0xC]
	mov		r0, #0x78
	strb	r0, [r4, #0x8]
	ldr		r0, _08048f20
	ldr		r1, _08048f24
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r1, r0, #0x0
	add		r1, #0xc6
	ldrh	r1, [r1, #0x0]
	lsr		r1, r1, #0x8
	sub		r1, #0x81
	bl		sub_080374c0
	strh		r0, [r4, #0xA]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x48F1A, 0x2

_08048f1c:	.4byte 0x03006000
_08048f20:	.4byte RunGameLogic_CallBack
_08048f24:	.4byte 0x00000838

.incbin "base.gba", 0x48F28, 0xB4
	thumb_func_end sub_08048eec

	thumb_func_start sub_08048fdc
sub_08048fdc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	mov		r4, #0x0
	lsl		r0, r6, #0x1
	mov		r8, r0
	ldr		r7, _08049054
	ldr		r0, _08049058
	mov		r9, r0
_08048ff4:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	add		r5, r4, #0x0
	mov		r0, r8
	add		r0, r9
	ldrh	r4, [r0, #0x0]
	mov		r3, #0x1
_0804900c:
	ldrh	r1, [r2, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0804900c
	add		r4, r5, #0x0
	cmp		r4, #0x1
	ble		_08048ff4
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r6, #0xf
	bne		_08049030
	mov		r6, #0xb
_08049030:
	cmp		r6, #0x10
	bne		_08049036
	mov		r6, #0xa
_08049036:
	bl		sub_08029f34
	lsl		r1, r6, #0x7
	ldr		r2, _0804905c
	add		r1, r1, r2
	ldr		r2, _08049060
	ldr		r3, _08049064
	bl		sub_08029ee4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08049054:	.4byte 0x00000FFF
_08049058:	.4byte 0x08109268
_0804905c:	.4byte 0x0808ac60
_08049060:	.4byte 0x06000E00
_08049064:	.4byte 0x80000040
	thumb_func_end sub_08048fdc

	thumb_func_start sub_08049068
sub_08049068:
	push	{ r4, r5, lr }
	ldr		r4, _08049090
	lsl		r2, r0, #0x1
	add		r2, r2, r4
	ldrh	r2, [r2, #0x0]
	mov		r5, #0xc0
	lsl		r5, r5, #0x8
	add		r3, r5, #0x0
	orr		r2, r3
	strh	r2, [r1, #0x0]
	add		r1, #0x40
	add		r0, #0xa
	lsl		r0, r0, #0x1
	add		r0, r0, r4
	ldrh	r0, [r0, #0x0]
	orr		r0, r3
	strh	r0, [r1, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08049090:	.4byte 0x0810928a

.incbin "base.gba", 0x49094, 0x18
	thumb_func_end sub_08049068

	thumb_func_start sub_080490ac
sub_080490ac:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldrh	r5, [r3, #0x0]
	add		r3, #0x2
	ldrh	r6, [r3, #0x0]
	add		r3, #0x2
	mov		r2, #0x0
	cmp		r2, r6
	bge		_080490ec
	mov		r0, #0x20
	sub		r0, r0, r5
	lsl		r7, r0, #0x1
_080490c4:
	add		r4, r2, #0x1
	cmp		r5, #0x0
	beq		_080490e4
	add		r0, r5, #0x0
_080490cc:
	ldrh	r2, [r3, #0x0]
	cmp		r2, #0x0
	beq		_080490da
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r1, #0x2
	b		_080490de
_080490da:
	add		r1, #0x2
	add		r3, #0x2
_080490de:
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_080490cc
_080490e4:
	add		r1, r1, r7
	add		r2, r4, #0x0
	cmp		r2, r6
	blt		_080490c4
_080490ec:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x490F2, 0x16
	thumb_func_end sub_080490ac

	thumb_func_start sub_08049108
sub_08049108:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	bl		sub_08028890
	add		r0, r5, #0x0
	add		r0, #0x8
	bl		sub_08028890
	cmp		r4, #0x0
	ble		_08049138
_08049120:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x84
	bl		sub_080271b8
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08028898
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08049120
_08049138:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x4913E, 0x26
	thumb_func_end sub_08049108

	thumb_func_start sub_08049164
sub_08049164:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	bl		sub_08028880
	cmp		r0, #0x0
	beq		_080491a0
	ldr		r5, [r4, #0xc]
	ldr		r1, [r5, #0x6c]
	cmp		r1, #0x0
	beq		_0804917e
	add		r0, r5, #0x0
	bl		sub_0807d7d4
_0804917e:
	add		r0, r4, #0x0
	bl		sub_08028880
	cmp		r0, #0x0
	beq		_08049196
	ldr		r5, [r4, #0xc]
	add		r4, #0x8
	add		r0, r4, #0x0
	bl		sub_08028914
	add		r0, r4, #0x0
	b		_080491ac
_08049196:
	ldr		r5, [r4, #0x4]
	add		r0, r4, #0x0
	bl		sub_08028914
	b		_080491a8
_080491a0:
	ldr		r5, [r4, #0x4]
	add		r0, r4, #0x0
	bl		sub_08028914
_080491a8:
	add		r0, r4, #0x0
	add		r0, #0x8
_080491ac:
	add		r1, r5, #0x0
	bl		sub_08028898
	add		r0, r5, #0x0
	bl		sub_0803d1c8
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08049164

	thumb_func_start sub_080491c0
sub_080491c0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r0, #0x8
	bl		sub_08028930
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08028898
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x491DA, 0x2
	thumb_func_end sub_080491c0

	thumb_func_start sub_080491dc
sub_080491dc:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	bl		sub_08028890
	add		r0, r5, #0x0
	add		r0, #0x8
	bl		sub_08028890
	cmp		r4, #0x0
	ble		_0804920c
_080491f4:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x70
	bl		sub_080271b8
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08028898
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080491f4
_0804920c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x49212, 0x2
	thumb_func_end sub_080491dc

	thumb_func_start sub_08049214
sub_08049214:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	bl		sub_08028880
	cmp		r0, #0x0
	beq		_0804923c
	add		r4, r5, #0x0
	add		r4, #0x8
	add		r0, r4, #0x0
	bl		sub_08028880
	cmp		r0, #0x0
	beq		_08049232
	mov		r0, #0x0
	b		_08049252
_08049232:
	ldr		r6, [r5, #0xc]
	add		r0, r4, #0x0
	bl		sub_08028914
	b		_08049248
_0804923c:
	ldr		r6, [r5, #0x0]
	add		r0, r5, #0x0
	bl		sub_080288f8
	add		r4, r5, #0x0
	add		r4, #0x8
_08049248:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08028898
	add		r0, r6, #0x0
_08049252:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08049214

	thumb_func_start sub_08049258
sub_08049258:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r0, #0x8
	bl		sub_08028930
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08028898
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x49272, 0x2
	thumb_func_end sub_08049258

	thumb_func_start sub_08049274
sub_08049274:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r4, [r5, #0x54]
	add		r3, r4, #0x0
	add		r3, #0xa4
	ldrh	r1, [r3, #0x0]
	ldr		r0, _080492b8
	and		r0, r1
	mov		r2, #0x0
	ldr		r1, _080492bc
	and		r0, r1
	strh	r0, [r3, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r2, [r0, #0x0]
	str		r2, [r5, #0x60]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r5, #0x24]
	add		r0, #0x88
	add		r2, r4, r0
	ldr		r0, [r2, #0x0]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, _080492c0
	ldr		r1, _080492c4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_080492cc
	ldr		r0, _080492c8
	b		_080492ce

.incbin "base.gba", 0x492B6, 0x2

_080492b8:	.4byte 0x0000FF7F
_080492bc:	.4byte 0x0000FEFF
_080492c0:	.4byte RunGameLogic_CallBack
_080492c4:	.4byte 0x00000838
_080492c8:	.4byte 0x0810a08c

_080492cc:
	ldr		r0, _080492d8
_080492ce:
	str		r0, [r5, #0x5c]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x492D6, 0x2

_080492d8:	.4byte 0x0810a144
	thumb_func_end sub_08049274

	thumb_func_start sub_080492dc
sub_080492dc:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r3, [r4, #0x54]
	add		r2, r3, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08049314
	and		r0, r1
	mov		r1, #0x0
	strh	r0, [r2, #0x0]
	mov		r0, #0x78
	strh	r0, [r4, #0x20]
	sub		r0, #0x88
	strh	r0, [r4, #0x22]
	ldr		r0, _08049318
	strh	r0, [r4, #0x24]
	add		r0, r4, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	str		r1, [r4, #0x60]
	ldr		r0, _0804931c
	ldr		r1, _08049320
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r3, r0
	bne		_08049328
	ldr		r0, _08049324
	b		_0804932a

_08049314:	.4byte 0x0000FFEF
_08049318:	.4byte 0x00000105
_0804931c:	.4byte RunGameLogic_CallBack
_08049320:	.4byte 0x00000838
_08049324:	.4byte 0x0810a50c

_08049328:
	ldr		r0, _08049334
_0804932a:
	str		r0, [r4, #0x5c]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x49332, 0x2

_08049334:	.4byte 0x0810a544
	thumb_func_end sub_080492dc

	thumb_func_start sub_08049338
sub_08049338:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r4, [r5, #0x54]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08049374
	and		r0, r1
	mov		r3, #0x0
	ldr		r1, _08049378
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x78
	strh	r0, [r5, #0x20]
	sub		r0, #0x88
	strh	r0, [r5, #0x22]
	ldr		r0, _0804937c
	strh	r0, [r5, #0x24]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r3, [r0, #0x0]
	str		r3, [r5, #0x60]
	ldr		r0, _08049380
	ldr		r1, _08049384
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0804938c
	ldr		r0, _08049388
	b		_0804938e

_08049374:	.4byte 0x0000FFDF
_08049378:	.4byte 0x0000FBFF
_0804937c:	.4byte 0x00000105
_08049380:	.4byte RunGameLogic_CallBack
_08049384:	.4byte 0x00000838
_08049388:	.4byte 0x0810a55c

_0804938c:
	ldr		r0, _08049398
_0804938e:
	str		r0, [r5, #0x5c]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x49396, 0x2

_08049398:	.4byte 0x0810a594
	thumb_func_end sub_08049338

	thumb_func_start sub_0804939c
sub_0804939c:
	push	{ lr }
	add		r2, r0, #0x0
	ldr		r3, [r2, #0x54]
	mov		r1, #0x22
	ldrsh	r0, [r2, r1]

