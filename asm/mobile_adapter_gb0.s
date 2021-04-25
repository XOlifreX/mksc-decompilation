	.include "defines.s"
	.include "ram.s"
	.include "macros.s"


	thumb_func_start sub_08057d24
sub_08057d24:
	push	{ lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r0, _08057d44
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08057d3e
	ldr		r3, _08057d48
	add		r0, r1, #0x0
	mov		r1, #0x0
	bl		sub_08071edc
_08057d3e:
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08057d44:	.4byte 0x030023C4
_08057d48:	.4byte 0x0000B408
	thumb_func_end sub_08057d24

	thumb_func_start sub_08057d4c
sub_08057d4c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r4, r1, #0x18
	ldr		r0, _08057d78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08057d80
	ldr		r0, _08057d7c
	ldr		r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08071f9c
	cmp		r0, #0x0
	bne		_08057d80
	mov		r0, #0x1
	b		_08057d82

_08057d78:	.4byte 0x030023C4
_08057d7c:	.4byte 0x03006E04

_08057d80:
	mov		r0, #0x0
_08057d82:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08057d4c

	thumb_func_start sub_08057d88
sub_08057d88:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r4, r1, #0x18
	ldr		r0, _08057db4
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08057dbc
	ldr		r0, _08057db8
	ldr		r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08071f9c
	cmp		r0, #0x0
	bne		_08057dbc
	mov		r0, #0x1
	b		_08057dbe

_08057db4:	.4byte 0x030023C4
_08057db8:	.4byte 0x03006E04

_08057dbc:
	mov		r0, #0x0
_08057dbe:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08057d88

	thumb_func_start sub_08057dc4
sub_08057dc4:
	push	{ lr }
	sub		sp, #0x20
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, sp
	bl		sub_08056030
	cmp		r0, #0x0
	bne		_08057de4
	mov		r0, sp
	ldrh	r0, [r0, #0x2]
	cmp		r0, #0x0
	beq		_08057de4
	mov		r0, #0x0
	b		_08057de6
_08057de4:
	mov		r0, #0x1
_08057de6:
	add		sp, #0x20
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08057dc4

	thumb_func_start sub_08057dec
sub_08057dec:
	push	{ r4, r5, lr }
	sub		sp, #0x1c
	ldr		r4, _08057e2c
	mov		r0, sp
	bl		getMgbUn2FromSave
	add		r5, sp, #0x14
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x4
	bl		sub_08071b6c
	add		r0, sp, #0x10
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r2, _08057e30
	add		r1, r4, #0x0
	bl		sub_08071b6c
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x4
	bl		sub_08071b6c
	mov		r0, sp
	bl		setMgbUn2FromSave
	add		sp, #0x1c
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08057e2c:	.4byte 0x02032B80
_08057e30:	.4byte 0x010005FA
	thumb_func_end sub_08057dec

	thumb_func_start sub_08057e34
sub_08057e34:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0x8
	ldr		r5, _08057e90
	ldr		r0, _08057e94
	add		r1, r5, r0
	add		r0, #0x80
	add		r6, r5, r0
	add		r0, #0x8
	add		r0, r0, r5
	mov		r8, r0
	ldr		r0, _08057e98
	add		r5, r5, r0
	mov		r0, sp
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	ldr		r2, _08057e9c
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x2
	strh	r4, [r0, #0x0]
	ldr		r2, _08057ea0
	add		r1, r6, #0x0
	bl		sub_08071b6c
	add		r0, sp, #0x4
	strh	r4, [r0, #0x0]
	ldr		r2, _08057ea4
	mov		r1, r8
	bl		sub_08071b6c
	mov		r0, sp
	add		r0, #0x6
	strh	r4, [r0, #0x0]
	ldr		r2, _08057ea8
	add		r1, r5, #0x0
	bl		sub_08071b6c
	add		sp, #0x8
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08057e90:	.4byte 0x02032B80
_08057e94:	.4byte 0x00000AF5
_08057e98:	.4byte 0x00000B8D
_08057e9c:	.4byte 0x01000040
_08057ea0:	.4byte 0x01000004
_08057ea4:	.4byte 0x01000008
_08057ea8:	.4byte 0x01000006
	thumb_func_end sub_08057e34

	thumb_func_start sub_08057eac
sub_08057eac:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	ldr		r6, _08057f00
	lsl		r0, r5, #0x1
	add		r0, r0, r5
	lsl		r0, r0, #0x3
	mov		r1, #0xba
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	add		r1, r0, r6
	add		r3, r1, #0x0
	add		r3, #0x8
	mov		r4, #0x0
	mov		r2, #0x4
_08057ec8:
	ldrb	r0, [r1, #0x0]
	add		r0, r4, r0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	add		r1, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08057ec8
	lsl		r1, r5, #0x1
	mov		r2, #0xf
_08057edc:
	ldrb	r0, [r3, #0x0]
	add		r0, r4, r0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08057edc
	add		r0, r1, r5
	lsl		r0, r0, #0x3
	add		r0, r6, r0
	ldr		r1, _08057f04
	add		r0, r0, r1
	strh	r4, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08057f00:	.4byte 0x02032B80
_08057f04:	.4byte 0x00000BA6

.incbin "base.gba", 0x57F08, 0xA0
	thumb_func_end sub_08057eac

	thumb_func_start sub_08057fa8
sub_08057fa8:
	ldr		r1, _08057fbc
	mov		r0, #0x0
	ldr		r3, _08057fc0
	mov		r2, #0x0
_08057fb0:
	strb	r2, [r1, #0x0]
	add		r1, #0x1
	add		r0, #0x1
	cmp		r0, r3
	bls		_08057fb0
	bx		lr

_08057fbc:	.4byte 0x02033780
_08057fc0:	.4byte 0x0000B407

.incbin "base.gba", 0x57FC4, 0x14
	thumb_func_end sub_08057fa8

	thumb_func_start sub_08057fd8
sub_08057fd8:
	add		r2, r0, #0x6
	mov		r3, #0x4
_08057fdc:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057fdc
	bx		lr

.incbin "base.gba", 0x57FEC, 0x18
	thumb_func_end sub_08057fd8

	thumb_func_start sub_08058004
sub_08058004:
	add		r2, r0, #0x0
	add		r2, #0xf
	mov		r3, #0xf
_0805800a:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0805800a
	bx		lr

.incbin "base.gba", 0x5801A, 0xA2
	thumb_func_end sub_08058004

	thumb_func_start sub_080580bc
sub_080580bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r6, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r7, r1, #0x18
	mov		r0, #0x2
	mov		r10, r0
	bl		sub_08070d14
	ldr		r0, _08058188
	ldrh	r0, [r0, #0x0]
	str		r0, [sp, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	mov		r0, #0x0
	bl		sub_0807df78
	ldr		r1, _0805818c
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058190
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058194
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	ldr		r0, [r1, #0x8]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_0805810c
_08058104:
	ldr		r0, [r1, #0x8]
	and		r0, r2
	cmp		r0, #0x0
	bne		_08058104
_0805810c:
	ldr		r1, _08058198
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058190
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058194
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	ldr		r0, [r1, #0x8]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_08058132
_0805812a:
	ldr		r0, [r1, #0x8]
	and		r0, r2
	cmp		r0, #0x0
	bne		_0805812a
_08058132:
	ldr		r1, _0805819c
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058190
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058194
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	ldr		r0, [r1, #0x8]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_08058158
_08058150:
	ldr		r0, [r1, #0x8]
	and		r0, r2
	cmp		r0, #0x0
	bne		_08058150
_08058158:
	ldr		r1, _080581a0
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058190
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	ldr		r0, _08058194
	and		r0, r2
	strh	r0, [r1, #0xa]
	ldrh	r0, [r1, #0xa]
	ldr		r0, [r1, #0x8]
	mov		r2, #0x80
	lsl		r2, r2, #0x18
	cmp		r0, #0x0
	bge		_0805817e
_08058176:
	ldr		r0, [r1, #0x8]
	and		r0, r2
	cmp		r0, #0x0
	bne		_08058176
_0805817e:
	ldr		r1, _080581a4
	mov		r9, r1
	ldr		r4, _080581a8
	mov		r8, r4
	b		_080581ba

_08058188:	.4byte InterruptEnableRegister
_0805818c:	.4byte DMA0SourceAddress
_08058190:	.4byte 0x0000C5FF
_08058194:	.4byte 0x00007FFF
_08058198:	.4byte DMA1SourceAddress
_0805819c:	.4byte DMA2SourceAddress
_080581a0:	.4byte DMA3SourceAddress
_080581a4:	.4byte GamePakWaitstateControl
_080581a8:	.4byte 0x09FE2FFE

_080581ac:
	mov		r0, r10
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r10, r0
	cmp		r0, #0xff
	beq		_0805824a
_080581ba:
	ldr		r0, _080581cc
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_080581d0
	cmp		r0, #0x2
	beq		_080581f0
_080581c6:
	mov		r4, #0x0
	b		_080581ac

.align 2, 0
.pool

_080581cc:	.4byte 0x02032B50

_080581d0:
	ldr		r0, _080581ec
	ldr		r2, [r0, #0x0]
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_0807d7d8
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_08071f9c
	mov		r4, #0x1
	cmp		r0, #0x0
	beq		_0805824a
	b		_080581c6

_080581ec:	.4byte 0x03006E04

_080581f0:
	add		r3, r6, #0x0
	lsl		r0, r7, #0xc
	mov		r1, #0x86
	lsl		r1, r1, #0x14
	add		r2, r0, r1
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	add		r1, r4, #0x0
	mov		r4, r9
	strh	r1, [r4, #0x0]
	mov		r1, #0x20
	mov		r4, r8
	strh	r1, [r4, #0x0]
	add		r4, r0, #0x0
	mov		r1, #0x80
	lsl		r1, r1, #0x4
_08058210:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_08058210
	mov		r0, r8
	strh	r1, [r0, #0x0]
	ldr		r1, _0805826c
	add		r0, r1, #0x0
	mov		r1, r9
	strh	r0, [r1, #0x0]
	add		r3, r6, #0x0
	mov		r0, #0x86
	lsl		r0, r0, #0x14
	add		r2, r4, r0
	mov		r4, #0x0
	ldr		r5, _08058270
_08058236:
	ldrh	r1, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	cmp		r1, r0
	bne		_080581c6
	add		r4, #0x1
	cmp		r4, r5
	ble		_08058236
	mov		r4, #0x1
_0805824a:
	bl		sub_08027060
	mov		r0, #0x2
	ldr		r1, [sp, #0x0]
	bl		sub_0807df78
	bl		sub_08070d78
	add		r0, r4, #0x0
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805826c:	.4byte 0x00004494
_08058270:	.4byte 0x000007FF
	thumb_func_end sub_080580bc

	thumb_func_start sub_08058274
sub_08058274:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r9, r0
	mov		r0, #0x0
	mov		r8, r0
	mov		r4, #0x0
	ldr		r7, _080582a8
	mov		r12, r7
	ldr		r1, _080582ac
	mov		r10, r1
_08058292:
	lsl		r0, r4, #0x18
	lsr		r1, r0, #0x18
	ldr		r0, _080582b0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_080582b4
	cmp		r0, #0x2
	beq		_080582c6
	add		r6, r4, #0x1
	b		_080582e6

.align 2, 0
.pool

_080582a8:	.4byte 0x02029400
_080582ac:	.4byte 0x07FF0000
_080582b0:	.4byte 0x02032B50

_080582b4:
	add		r0, r1, #0x0
	mov		r1, #0x0
	mov		r2, r12
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	bl		sub_08071edc
	add		r6, r4, #0x1
	b		_080582e6
_080582c6:
	add		r3, r7, #0x0
	lsl		r0, r1, #0xc
	mov		r2, #0x86
	lsl		r2, r2, #0x14
	add		r1, r0, r2
	mov		r2, #0x0
	mov		r5, #0x80
	lsl		r5, r5, #0x4
	add		r6, r4, #0x1
_080582d8:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	add		r1, #0x2
	add		r3, #0x2
	add		r2, #0x1
	cmp		r2, r5
	bcc		_080582d8
_080582e6:
	ldrh	r5, [r7, #0x0]
	add		r1, r7, #0x2
	mov		r2, #0x0
	mov		r3, #0x0
	sub		r0, r1, #0x2
	mov		r12, r0
	mov		r0, r10
	lsr		r4, r0, #0x10
_080582f6:
	ldrh	r0, [r1, #0x0]
	add		r0, r2, r0
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r1, #0x2
	add		r3, #0x1
	cmp		r3, r4
	bcc		_080582f6
	ldr		r1, _0805833c
	add		r0, r1, #0x0
	eor		r2, r0
	mov		r0, #0x0
	cmp		r5, r2
	bne		_08058314
	mov		r0, #0x1
_08058314:
	cmp		r0, #0x0
	beq		_08058326
	ldrh		r1, [r7, #0x4]
	ldrh		r0, [r7, #0x6]
	cmp		r0, r9
	bne		_08058326
	cmp		r1, r8
	bls		_08058326
	mov		r8, r1
_08058326:
	add		r4, r6, #0x0
	cmp		r4, #0xf
	ble		_08058292
	mov		r0, r8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805833c:	.4byte 0x00002CB4
	thumb_func_end sub_08058274

	thumb_func_start sub_08058340
sub_08058340:
	push	{ r4, lr }
	lsl		r1, r1, #0x10
	ldr		r2, _08058374
	add		r1, r1, r2
	add		r2, r0, #0x2
	mov		r3, #0x0
	mov		r4, #0x0
	lsr		r1, r1, #0x11
	cmp		r3, r1
	bcs		_08058364
_08058354:
	ldrh	r0, [r2, #0x0]
	add		r0, r3, r0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, r1
	bcc		_08058354
_08058364:
	ldr		r1, _08058378
	add		r0, r1, #0x0
	eor		r3, r0
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08058374:	.4byte 0xFFFE0000
_08058378:	.4byte 0x00002CB4
	thumb_func_end sub_08058340

	thumb_func_start sub_0805837c
sub_0805837c:
	push	{ r4, r5, lr }
	lsl		r1, r1, #0x10
	ldrh	r5, [r0, #0x0]
	ldr		r2, _080583b0
	add		r1, r1, r2
	add		r2, r0, #0x2
	mov		r3, #0x0
	mov		r4, #0x0
	lsr		r1, r1, #0x11
	cmp		r3, r1
	bcs		_080583a2
_08058392:
	ldrh	r0, [r2, #0x0]
	add		r0, r3, r0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, r1
	bcc		_08058392
_080583a2:
	ldr		r1, _080583b4
	add		r0, r1, #0x0
	eor		r3, r0
	cmp		r5, r3
	beq		_080583b8
	mov		r0, #0x0
	b		_080583ba

_080583b0:	.4byte 0xFFFE0000
_080583b4:	.4byte 0x00002CB4

_080583b8:
	mov		r0, #0x1
_080583ba:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805837c

	thumb_func_start sub_080583c0
sub_080583c0:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	lsl		r4, r3, #0x10
	lsr		r3, r4, #0x10
	ldr		r0, _080583e0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_080583e4
	cmp		r0, #0x2
	beq		_080583f0
	b		_08058414

.align 2, 0
.pool

_080583e0:	.4byte 0x02032B50

_080583e4:
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	add		r2, r5, #0x0
	bl		sub_08071edc
	b		_08058414
_080583f0:
	add		r3, r5, #0x0
	lsl		r1, r1, #0xc
	mov		r5, #0x86
	lsl		r5, r5, #0x14
	add		r0, r2, r5
	add		r1, r1, r0
	mov		r2, #0x0
	lsr		r0, r4, #0x11
	cmp		r2, r0
	bcs		_08058414
	add		r4, r0, #0x0
_08058406:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	add		r1, #0x2
	add		r3, #0x2
	add		r2, #0x1
	cmp		r2, r4
	bcc		_08058406
_08058414:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_080583c0

	thumb_func_start sub_0805841c
sub_0805841c:
	push	{ r4, r5, r6, lr }
	ldr		r0, _080584bc
	mov		r12, r0
	mov		r1, #0x0
	mov		r3, r12
	add		r3, #0xc
	mov		r2, #0x1
	neg		r2, r2
_0805842c:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r3, r0
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x1
	ble		_0805842c
	mov		r1, #0x0
	mov		r4, r12
	add		r4, #0x18
	mov		r5, r12
	add		r5, #0x1a
	mov		r6, r12
	add		r6, #0x1b
	mov		r2, r12
	add		r2, #0xe
	mov		r3, #0x1
	neg		r3, r3
_08058450:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r2, r0
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x9
	ble		_08058450
	mov		r1, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x1
	neg		r3, r3
_08058466:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r2, r0
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x1
	ble		_08058466
	mov		r1, #0x0
	add		r2, r5, #0x0
	mov		r3, #0x1
	neg		r3, r3
_0805847c:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r2, r0
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x0
	ble		_0805847c
	mov		r1, #0x0
	add		r2, r6, #0x0
	mov		r3, #0x1
	neg		r3, r3
_08058492:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r2, r0
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x0
	ble		_08058492
	ldr		r1, _080584c0
	mov		r3, #0x0
	mov		r2, #0x0
	mov		r4, r12
	strh	r1, [r4, #0x4]
	mov		r0, #0x10
	strb	r0, [r4, #0x1c]
	strh	r1, [r4, #0x6]
	strb	r0, [r4, #0x1d]
	strh	r2, [r4, #0x8]
	strb	r3, [r4, #0x1e]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_080584bc:	.4byte 0x02032B50
_080584c0:	.4byte 0x0000FFFF
	thumb_func_end sub_0805841c

	thumb_func_start sub_080584c4
sub_080584c4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r7, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	ldr		r5, _08058510
	add		r0, r5, #0x0
	mov		r1, r8
	bl		sub_08058a0c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x4]
	mov		r0, #0x2
	mov		r9, r0
	mov		r1, r8
	strh	r1, [r7, #0x6]
	ldrh	r0, [r7, #0x4]
	add		r0, #0x1
	strh	r0, [r7, #0x4]
	add		r0, r5, #0x0
	mov		r1, r8
	bl		sub_080585fc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r3, r8
	and		r3, r0
	mov		r0, #0x1
	mov		r10, r0
	b		_08058538

_08058510:	.4byte 0x02032B50

_08058514:
	mov		r1, r10
	lsl		r1, r4
	ldrh	r0, [r5, #0x6]
	bic		r0, r1
	strh	r0, [r5, #0x6]
	ldrh	r0, [r5, #0x8]
	orr		r1, r0
	strh	r1, [r5, #0x8]
	ldrb	r0, [r5, #0x1e]
	add		r0, #0x1
	strb	r0, [r5, #0x1e]
	mov		r0, r9
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r9, r0
	cmp		r0, #0xff
	beq		_080585e8
_08058538:
	add		r0, r5, #0x0
	str		r3, [sp, #0x8]
	bl		sub_0805882c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	ldrh	r0, [r5, #0x20]
	add		r0, #0x1
	strh	r0, [r7, #0x2]
	add		r0, r7, #0x0
	ldr		r1, [sp, #0x4]
	bl		sub_08058340
	strh	r0, [r7, #0x0]
	lsl		r6, r4, #0x18
	lsr		r4, r6, #0x18
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_080580bc
	mov		r12, r0
	ldr		r3, [sp, #0x8]
	cmp		r0, #0x0
	beq		_08058514
	ldr		r1, [sp, #0x0]
	lsl		r0, r1, #0x18
	cmp		r0, #0x0
	blt		_0805857e
	lsr		r0, r0, #0x18
	mov		r1, r10
	lsl		r1, r0
	ldrh	r0, [r5, #0x4]
	orr		r1, r0
	strh	r1, [r5, #0x4]
_0805857e:
	mov		r1, r10
	lsl		r1, r4
	mvn		r1, r1
	ldrh	r2, [r5, #0x4]
	add		r0, r1, #0x0
	and		r0, r2
	strh	r0, [r5, #0x4]
	ldrh	r0, [r5, #0x6]
	and		r1, r0
	strh	r1, [r5, #0x6]
	ldr		r1, _080585ac
	add		r0, r1, #0x0
	mov		r1, r8
	and		r1, r0
	cmp		r1, #0x40
	beq		_080585ce
	cmp		r1, #0x40
	bgt		_080585b0
	cmp		r1, #0x10
	beq		_080585be
	cmp		r1, #0x20
	beq		_080585c6
	b		_080585e8

_080585ac:	.4byte 0x0000FFF0

_080585b0:
	cmp		r1, #0x80
	beq		_080585d6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_080585de
	b		_080585e8
_080585be:
	asr		r1, r6, #0x18
	add		r0, r5, #0x0
	add		r0, #0xc
	b		_080585e4
_080585c6:
	asr		r1, r6, #0x18
	add		r0, r5, #0x0
	add		r0, #0xe
	b		_080585e4
_080585ce:
	asr		r1, r6, #0x18
	add		r0, r5, #0x0
	add		r0, #0x18
	b		_080585e4
_080585d6:
	asr		r1, r6, #0x18
	add		r0, r5, #0x0
	add		r0, #0x1a
	b		_080585e4
_080585de:
	asr		r1, r6, #0x18
	add		r0, r5, #0x0
	add		r0, #0x1b
_080585e4:
	add		r0, r0, r3
	strb	r1, [r0, #0x0]
_080585e8:
	mov		r0, r12
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_080584c4

	thumb_func_start sub_080585fc
sub_080585fc:
	add		r3, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r2, _08058618
	and		r2, r1
	cmp		r2, #0x40
	beq		_0805863e
	cmp		r2, #0x40
	bgt		_0805861c
	cmp		r2, #0x10
	beq		_0805862a
	cmp		r2, #0x20
	beq		_08058634
	b		_08058660

_08058618:	.4byte 0x0000FFF0

_0805861c:
	cmp		r2, #0x80
	beq		_08058648
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r2, r0
	beq		_08058652
	b		_08058660
_0805862a:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r3, #0x0
	add		r0, #0xc
	b		_0805865a
_08058634:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r3, #0x0
	add		r0, #0xe
	b		_0805865a
_0805863e:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r3, #0x0
	add		r0, #0x18
	b		_0805865a
_08058648:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r3, #0x0
	add		r0, #0x1a
	b		_0805865a
_08058652:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r3, #0x0
	add		r0, #0x1b
_0805865a:
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	b		_08058662
_08058660:
	mov		r0, #0xff
_08058662:
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	bx		lr
	thumb_func_end sub_080585fc

	thumb_func_start sub_08058668
sub_08058668:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	ldr		r3, _0805868c
	and		r3, r1
	cmp		r3, #0x40
	beq		_080586b2
	cmp		r3, #0x40
	bgt		_08058690
	cmp		r3, #0x10
	beq		_0805869e
	cmp		r3, #0x20
	beq		_080586a8
	b		_080586d2

.align 2, 0
.pool

_0805868c:	.4byte 0x0000FFF0

_08058690:
	cmp		r3, #0x80
	beq		_080586bc
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r3, r0
	beq		_080586c6
	b		_080586d2
_0805869e:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0xc
	b		_080586ce
_080586a8:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0xe
	b		_080586ce
_080586b2:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x18
	b		_080586ce
_080586bc:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x1a
	b		_080586ce
_080586c6:
	mov		r0, #0xf
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x1b
_080586ce:
	add		r0, r0, r1
	strb	r2, [r0, #0x0]
_080586d2:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08058668

	thumb_func_start sub_080586d8
sub_080586d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x10
	lsr		r5, r2, #0x10
	lsl		r3, r3, #0x18
	lsr		r7, r3, #0x18
	mov		r0, #0x0
	mov		r8, r0
	ldr		r0, _08058704
	and		r0, r5
	cmp		r0, #0x40
	beq		_08058714
	cmp		r0, #0x40
	bgt		_08058708
	cmp		r0, #0x10
	beq		_0805870e
	cmp		r0, #0x20
	beq		_08058714
	b		_08058718

_08058704:	.4byte 0x0000FFF0

_08058708:
	cmp		r0, #0x80
	beq		_08058714
	b		_08058718
_0805870e:
	mov		r0, #0x7
	strh	r0, [r6, #0x8]
	b		_08058718
_08058714:
	mov		r0, #0x9
	strh	r0, [r6, #0x12]
_08058718:
	ldr		r0, _08058730
	and		r0, r5
	cmp		r0, #0x40
	beq		_08058738
	cmp		r0, #0x40
	bgt		_08058734
	cmp		r0, #0x10
	beq		_08058738
	cmp		r0, #0x20
	beq		_08058738
	b		_08058774

.align 2, 0
.pool

_08058730:	.4byte 0x0000FFF0

_08058734:
	cmp		r0, #0x80
	bne		_08058774
_08058738:
	ldr		r0, _08058750
	and		r0, r5
	cmp		r0, #0x40
	beq		_08058764
	cmp		r0, #0x40
	bgt		_08058754
	cmp		r0, #0x10
	beq		_0805875a
	cmp		r0, #0x20
	beq		_08058764
	b		_0805876a

.align 2, 0
.pool

_08058750:	.4byte 0x0000FFF0

_08058754:
	cmp		r0, #0x80
	beq		_08058764
	b		_0805876a
_0805875a:
	ldr		r1, _08058760
	b		_0805876c

.align 2, 0
.pool

_08058760:	.4byte 0x00000BF4

_08058764:
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	b		_0805876c
_0805876a:
	mov		r1, #0x0
_0805876c:
	add		r0, r6, #0x0
	bl		sub_0805837c
	b		_08058776
_08058774:
	mov		r0, #0x0
_08058776:
	cmp		r0, #0x0
	beq		_08058800
	mov		r6, #0xff
	cmp		r5, #0x0
	beq		_080587f2
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_080585fc
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	lsl		r2, r6, #0x18
	asr		r1, r2, #0x18
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0805879e
	mov		r0, #0x1
	mov		r8, r0
	b		_080587b2
_0805879e:
	lsr		r0, r2, #0x18
	bl		sub_08058b8c
	cmp		r0, #0x0
	beq		_080587ac
	mov		r0, #0x1
	mov		r8, r0
_080587ac:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_080587fc
_080587b2:
	lsl		r2, r7, #0x18
	asr		r2, r2, #0x18
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08058668
	ldrb	r3, [r4, #0x1c]
	sub		r0, r3, #0x1
	strb	r0, [r4, #0x1c]
	mov		r5, #0x1
	add		r1, r5, #0x0
	lsl		r1, r7
	mvn		r1, r1
	ldrh	r0, [r4, #0x4]
	add		r2, r1, #0x0
	and		r2, r0
	strh	r2, [r4, #0x4]
	ldrb	r0, [r4, #0x1d]
	sub		r0, #0x1
	strb	r0, [r4, #0x1d]
	ldrh	r0, [r4, #0x6]
	and		r1, r0
	strh	r1, [r4, #0x6]
	lsl		r1, r6, #0x18
	cmp		r1, #0x0
	blt		_080587f2
	strb	r3, [r4, #0x1c]
	lsr		r1, r1, #0x18
	add		r0, r5, #0x0
	lsl		r0, r1
	orr		r0, r2
	strh	r0, [r4, #0x4]
_080587f2:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_080587fc
	add		r0, r6, #0x0
	b		_08058802
_080587fc:
	add		r0, r7, #0x0
	b		_08058802
_08058800:
	mov		r0, #0xff
_08058802:
	lsl		r2, r0, #0x18
	asr		r1, r2, #0x18
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08058820
	ldrb	r0, [r4, #0x1d]
	sub		r0, #0x1
	strb	r0, [r4, #0x1d]
	lsr		r0, r2, #0x18
	mov		r1, #0x1
	lsl		r1, r0
	ldrh	r0, [r4, #0x6]
	bic		r0, r1
	strh	r0, [r4, #0x6]
_08058820:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_080586d8

	thumb_func_start sub_0805882c
sub_0805882c:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	mov		r3, #0xff
	mov		r0, #0x0
	strh	r0, [r5, #0x20]
	ldrh	r0, [r5, #0x6]
	cmp		r0, #0x0
	beq		_08058858
	mov		r4, #0x0
	add		r2, r0, #0x0
	mov		r6, #0x1
_08058842:
	lsl		r0, r4, #0x18
	lsr		r1, r0, #0x18
	add		r0, r6, #0x0
	lsl		r0, r1
	and		r0, r2
	cmp		r0, #0x0
	beq		_08058852
	add		r3, r1, #0x0
_08058852:
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_08058842
_08058858:
	lsl		r0, r3, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	bne		_080588aa
	ldrh	r0, [r5, #0x4]
	cmp		r0, #0x0
	beq		_0805887c
	mov		r4, #0xf
_0805886c:
	add		r0, r5, #0x0
	bl		sub_08058bc0
	lsl		r0, r0, #0x18
	lsr		r3, r0, #0x18
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0805886c
_0805887c:
	lsl		r0, r3, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	bne		_080588aa
	ldrh	r0, [r5, #0x8]
	cmp		r0, #0x0
	beq		_080588aa
	mov		r4, #0x0
	add		r2, r0, #0x0
	mov		r5, #0x1
_08058894:
	lsl		r0, r4, #0x18
	lsr		r1, r0, #0x18
	add		r0, r5, #0x0
	lsl		r0, r1
	and		r0, r2
	cmp		r0, #0x0
	beq		_080588a4
	add		r3, r1, #0x0
_080588a4:
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_08058894
_080588aa:
	lsl		r0, r3, #0x18
	asr		r0, r0, #0x18
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805882c

	thumb_func_start sub_080588b4
sub_080588b4:
	push	{ r4, lr }
	ldr		r4, _080588cc
	bl		sub_08057388
	bl		sub_0805841c
	add		r0, r4, #0x0
	bl		sub_08058998
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080588cc:	.4byte 0x02032B50
	thumb_func_end sub_080588b4

	thumb_func_start sub_080588d0
sub_080588d0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r1
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldr		r5, _08058944
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_080585fc
	lsl		r6, r0, #0x18
	asr		r0, r6, #0x18
	mvn		r0, r0
	lsr		r4, r0, #0x1f
	cmp		r4, #0x0
	beq		_08058938
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08058a0c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	lsr		r6, r6, #0x18
	mov		r0, r8
	add		r1, r6, #0x0
	mov		r2, #0x0
	add		r3, r4, #0x0
	bl		sub_080583c0
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_0805837c
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_08058938
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08058668
	mov		r0, #0x1
	lsl		r0, r6
	ldrh	r1, [r5, #0x6]
	orr		r0, r1
	strh	r0, [r5, #0x6]
	ldrb	r0, [r5, #0x1d]
	add		r0, #0x1
	strb	r0, [r5, #0x1d]
_08058938:
	add		r0, r4, #0x0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08058944:	.4byte 0x02032B50
	thumb_func_end sub_080588d0

	thumb_func_start sub_08058948
sub_08058948:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	ldr		r7, _0805898c
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08058a48
	lsl		r5, r0, #0x18
	cmp		r5, #0x0
	blt		_08058990
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08058a0c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	lsr		r1, r5, #0x18
	add		r0, r6, #0x0
	mov		r2, #0x0
	add		r3, r4, #0x0
	bl		sub_080583c0
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0805837c
	neg		r1, r0
	orr		r1, r0
	lsr		r0, r1, #0x1f
	b		_08058992

.align 2, 0
.pool

_0805898c:	.4byte 0x02032B50

_08058990:
	mov		r0, #0x0
_08058992:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08058948

	thumb_func_start sub_08058998
sub_08058998:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r0, #0x0
	mov		r8, r0
	ldr		r6, _08058a08
_080589a8:
	bl		_UpdateGame
	mov		r1, r8
	lsl		r0, r1, #0x18
	lsr		r7, r0, #0x18
	add		r0, r6, #0x0
	add		r1, r7, #0x0
	mov		r2, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	bl		sub_080583c0
	ldrh		r5, [r6, #0x6]
	mov		r0, r9
	add		r1, r5, #0x0
	bl		sub_08058a0c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08058b58
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0805837c
	cmp		r0, #0x0
	bne		_080589e6
	mov		r5, #0x0
_080589e6:
	mov		r0, r9
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	add		r3, r7, #0x0
	bl		sub_080586d8
	mov		r0, #0x1
	add		r8, r0
	mov		r1, r8
	cmp		r1, #0xf
	ble		_080589a8
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08058a08:	.4byte 0x02029400
	thumb_func_end sub_08058998

	thumb_func_start sub_08058a0c
sub_08058a0c:
	lsl		r1, r1, #0x10
	ldr		r0, _08058a28
	and		r0, r1
	lsr		r0, r0, #0x10
	cmp		r0, #0x40
	beq		_08058a3c
	cmp		r0, #0x40
	bgt		_08058a2c
	cmp		r0, #0x10
	beq		_08058a32
	cmp		r0, #0x20
	beq		_08058a3c
	b		_08058a42

.align 2, 0
.pool

_08058a28:	.4byte 0xFFF00000

_08058a2c:
	cmp		r0, #0x80
	beq		_08058a3c
	b		_08058a42
_08058a32:
	ldr		r0, _08058a38
	b		_08058a44

.align 2, 0
.pool

_08058a38:	.4byte 0x00000BF4

_08058a3c:
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	b		_08058a44
_08058a42:
	mov		r0, #0x0
_08058a44:
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08058a0c

	thumb_func_start sub_08058a48
sub_08058a48:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r10, r1
	mov		r0, #0x0
	mov		r8, r0
	mov		r1, #0xff
	mov		r9, r1
	mov		r6, #0x0
_08058a66:
	lsl		r0, r6, #0x18
	lsr		r5, r0, #0x18
	ldrh	r1, [r7, #0x4]
	mov		r0, #0x1
	lsl		r0, r5
	and		r1, r0
	cmp		r1, #0x0
	beq		_08058a9c
	mov		r4, sp
	mov		r0, sp
	add		r1, r5, #0x0
	mov		r2, #0x0
	mov		r3, #0x8
	bl		sub_080583c0
	ldrh		r0, [r4, #0x6]
	cmp		r0, r10
	bne		_08058a9c
	ldrh		r0, [r4, #0x4]
	cmp		r0, r8
	bls		_08058a9c
	mov		r8, r0
	mov		r9, r5
	mov		r0, r8
	strh	r0, [r7, #0x22]
	ldrh		r0, [r4, #0x2]
	strh	r0, [r7, #0x20]
_08058a9c:
	add		r6, #0x1
	cmp		r6, #0xf
	ble		_08058a66
	mov		r1, r9
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x18
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08058a48

	thumb_func_start sub_08058ab8
sub_08058ab8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	mov		r6, #0x0
	ldr		r4, _08058b18
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	mov		r8, r0
_08058aca:
	mov		r7, #0x0
	lsl		r0, r6, #0x18
	lsr		r5, r0, #0x18
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	mov		r3, r8
	bl		sub_080583c0
	add		r0, r4, #0x0
	mov		r1, r8
	bl		sub_0805837c
	cmp		r0, #0x0
	beq		_08058aea
	ldrh		r7, [r4, #0x2]
_08058aea:
	ldr		r0, _08058b1c
	str		r0, [sp, #0x0]
	mov		r0, sp
	add		r1, r4, #0x0
	ldr		r2, _08058b20
	bl		_CallHardwareSetCpuFast
	strh		r7, [r4, #0x2]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_080580bc
	add		r6, #0x1
	cmp		r6, #0xf
	ble		_08058aca
	bl		sub_0805841c
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08058b18:	.4byte 0x02029400
_08058b1c:	.4byte 0x0000FFFF
_08058b20:	.4byte 0x01000400
	thumb_func_end sub_08058ab8

	thumb_func_start sub_08058b24
sub_08058b24:
	push	{ r4, lr }
	sub		sp, #0x4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r1, _08058b50
	ldr		r2, _08058b54
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
	mov		r4, #0x0
_08058b38:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	ldr		r0, _08058b50
	bl		sub_080580bc
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_08058b38
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08058b50:	.4byte 0x02029400
_08058b54:	.4byte 0x01000400
	thumb_func_end sub_08058b24

	thumb_func_start sub_08058b58
sub_08058b58:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	ldr		r0, _08058b74
	and		r0, r1
	lsr		r0, r0, #0x10
	cmp		r0, #0x40
	beq		_08058b84
	cmp		r0, #0x40
	bgt		_08058b78
	cmp		r0, #0x10
	beq		_08058b7e
	cmp		r0, #0x20
	beq		_08058b84
	b		_08058b88

_08058b74:	.4byte 0xFFF00000

_08058b78:
	cmp		r0, #0x80
	beq		_08058b84
	b		_08058b88
_08058b7e:
	mov		r0, #0x7
	strh	r0, [r2, #0x8]
	b		_08058b88
_08058b84:
	mov		r0, #0x9
	strh	r0, [r2, #0x12]
_08058b88:
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08058b58

	thumb_func_start sub_08058b8c
sub_08058b8c:
	push	{ r4, lr }
	sub		sp, #0x8
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r4, sp
	mov		r0, sp
	mov		r2, #0x0
	mov		r3, #0x8
	bl		sub_080583c0
	ldr		r1, _08058bbc
	mov		r2, #0x0
	ldrh		r0, [r4, #0x4]
	ldrh		r1, [r1, #0x4]
	cmp		r0, r1
	bcs		_08058bb0
	mov		r2, #0x1
_08058bb0:
	add		r0, r2, #0x0
	add		sp, #0x8
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08058bbc:	.4byte 0x02029400
	thumb_func_end sub_08058b8c

	thumb_func_start sub_08058bc0
sub_08058bc0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x8
	add		r6, r0, #0x0
	ldr		r7, _08058c1c
	mov		r0, #0xff
	mov		r8, r0
	mov		r5, #0x0
	mov		r9, sp
_08058bd6:
	lsl		r0, r5, #0x18
	lsr		r4, r0, #0x18
	ldrh	r1, [r6, #0x4]
	mov		r0, #0x1
	lsl		r0, r4
	and		r1, r0
	cmp		r1, #0x0
	beq		_08058c00
	mov		r0, sp
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x8
	bl		sub_080583c0
	mov		r1, r9
	ldrh		r0, [r1, #0x2]
	cmp		r0, r7
	bcs		_08058c00
	add		r7, r0, #0x0
	mov		r8, r4
	strh	r7, [r6, #0x20]
_08058c00:
	add		r5, #0x1
	cmp		r5, #0xf
	ble		_08058bd6
	mov		r1, r8
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x18
	add		sp, #0x8
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08058c1c:	.4byte 0x0000FFFF
	thumb_func_end sub_08058bc0

	thumb_func_start sub_08058c20
sub_08058c20:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r6, [sp, #0x4+0x20]
	ldr		r0, _08058c48
	ldr		r7, [r0, #0x0]
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r1, r0, #0x0
	cmp		r0, #0x20
	beq		_08058c72
	cmp		r0, #0x20
	bgt		_08058c4c
	cmp		r0, #0x10
	beq		_08058c90
	b		_08058cac

.align 2, 0
.pool

_08058c48:	.4byte 0x0203EBE0

_08058c4c:
	cmp		r1, #0x40
	beq		_08058c56
	cmp		r1, #0x80
	beq		_08058c64
	b		_08058cac
_08058c56:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x4
	ldrsb	r1, [r0, r1]
	b		_08058c7e
_08058c64:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x5
	ldrsb	r1, [r0, r1]
	b		_08058c7e
_08058c72:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x6
	ldrsb	r1, [r0, r1]
_08058c7e:
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08058cac
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
	b		_08058cac
_08058c90:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x7
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08058cac
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
_08058cac:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	lsl		r1, r1, #0x3
	ldr		r0, [r7, #0x2c]
	asr		r0, r0, #0x2
	mov		r2, #0x4
	and		r0, r2
	add		r0, #0x8
	add		r1, r1, r0
	lsl		r1, r1, #0x10
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r2, #0x2
	ldrsh	r0, [r0, r2]
	lsl		r0, r0, #0x13
	mov		r2, #0xa0
	lsl		r2, r2, #0xc
	add		r0, r0, r2
	lsr		r1, r1, #0x10
	orr		r1, r0
	str		r1, [sp, #0x8]
	cmp		r6, #0x0
	beq		_08058cec
	cmp		r6, #0x1
	beq		_08058d04
	b		_08058d16
_08058cec:
	ldr		r0, _08058d00
	str		r6, [sp, #0x0]
	str		r6, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_08058d16

.align 2, 0
.pool

_08058d00:	.4byte 0x0810dddc

_08058d04:
	ldr		r0, _08058d20
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08058d16:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08058d20:	.4byte 0x080e4784
	thumb_func_end sub_08058c20

	thumb_func_start sub_08058d24
sub_08058d24:
	asr		r2, r0, #0x10
	mov		r1, #0xff
	and		r2, r1
	ldr		r1, _08058d38
	and		r1, r0
	cmp		r2, #0x10
	bne		_08058d40
	ldr		r0, _08058d3c
	ldr		r0, [r0, #0x0]
	b		_08058fd4

_08058d38:	.4byte 0x00000FFF
_08058d3c:	.4byte 0x0810de24

_08058d40:
	cmp		r2, #0x11
	beq		_08058d48
	cmp		r2, #0x13
	bne		_08058d54
_08058d48:
	ldr		r0, _08058d50
	ldr		r0, [r0, #0x4]
	b		_08058fd4

.align 2, 0
.pool

_08058d50:	.4byte 0x0810de24

_08058d54:
	cmp		r2, #0x12
	bne		_08058d64
	ldr		r0, _08058d60
	ldr		r0, [r0, #0x8]
	b		_08058fd4

.align 2, 0
.pool

_08058d60:	.4byte 0x0810de24

_08058d64:
	cmp		r2, #0x14
	beq		_08058d6c
	cmp		r2, #0x25
	bne		_08058d78
_08058d6c:
	ldr		r0, _08058d74
	ldr		r0, [r0, #0x20]
	b		_08058fd4

.align 2, 0
.pool

_08058d74:	.4byte 0x0810de24

_08058d78:
	cmp		r2, #0x15
	bne		_08058d88
	ldr		r0, _08058d84
	ldr		r0, [r0, #0xc]
	b		_08058fd4

.align 2, 0
.pool

_08058d84:	.4byte 0x0810de24

_08058d88:
	add		r0, r2, #0x0
	sub		r0, #0x16
	cmp		r0, #0x1
	bls		_08058d98
	cmp		r2, #0x20
	beq		_08058d98
	cmp		r2, #0x21
	bne		_08058da4
_08058d98:
	ldr		r0, _08058da0
	ldr		r0, [r0, #0x10]
	b		_08058fd4

.align 2, 0
.pool

_08058da0:	.4byte 0x0810de24

_08058da4:
	cmp		r2, #0x22
	bne		_08058db4
	ldr		r0, _08058db0
	ldr		r0, [r0, #0x14]
	b		_08058fd4

.align 2, 0
.pool

_08058db0:	.4byte 0x0810de24

_08058db4:
	cmp		r2, #0x23
	bne		_08058dc4
	ldr		r0, _08058dc0
	ldr		r0, [r0, #0x18]
	b		_08058fd4

.align 2, 0
.pool

_08058dc0:	.4byte 0x0810de24

_08058dc4:
	cmp		r2, #0x24
	bne		_08058dd4
	ldr		r0, _08058dd0
	ldr		r0, [r0, #0x40]
	b		_08058fd4

.align 2, 0
.pool

_08058dd0:	.4byte 0x0810de24

_08058dd4:
	cmp		r2, #0x26
	bne		_08058de4
	ldr		r0, _08058de0
	ldr		r0, [r0, #0x38]
	b		_08058fd4

.align 2, 0
.pool

_08058de0:	.4byte 0x0810de24

_08058de4:
	cmp		r2, #0x30
	bne		_08058e4c
	cmp		r1, #0x0
	beq		_08058e0c
	mov		r0, #0xa0
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08058e0c
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058e0c
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058e0c
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058e0c
	add		r0, #0x1
	cmp		r1, r0
	bne		_08058e18
_08058e0c:
	ldr		r0, _08058e14
	ldr		r0, [r0, #0x10]
	b		_08058fd4

.align 2, 0
.pool

_08058e14:	.4byte 0x0810de24

_08058e18:
	mov		r0, #0x8a
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08058e34
	mov		r0, #0xaa
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08058e34
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058e34
	add		r0, #0x2
	cmp		r1, r0
	bne		_08058e40
_08058e34:
	ldr		r0, _08058e3c
	ldr		r0, [r0, #0x28]
	b		_08058fd4

.align 2, 0
.pool

_08058e3c:	.4byte 0x0810de24

_08058e40:
	ldr		r0, _08058e48
	ldr		r0, [r0, #0x40]
	b		_08058fd4

.align 2, 0
.pool

_08058e48:	.4byte 0x0810de24

_08058e4c:
	cmp		r2, #0x31
	bne		_08058e90
	cmp		r1, #0x0
	beq		_08058e58
	cmp		r1, #0x4
	bne		_08058e64
_08058e58:
	ldr		r0, _08058e60
	ldr		r0, [r0, #0x10]
	b		_08058fd4

.align 2, 0
.pool

_08058e60:	.4byte 0x0810de24

_08058e64:
	cmp		r1, #0x2
	bne		_08058e74
	ldr		r0, _08058e70
	ldr		r0, [r0, #0x2c]
	b		_08058fd4

.align 2, 0
.pool

_08058e70:	.4byte 0x0810de24

_08058e74:
	cmp		r1, #0x3
	bne		_08058e84
	ldr		r0, _08058e80
	ldr		r0, [r0, #0x30]
	b		_08058fd4

.align 2, 0
.pool

_08058e80:	.4byte 0x0810de24

_08058e84:
	ldr		r0, _08058e8c
	ldr		r0, [r0, #0x40]
	b		_08058fd4

.align 2, 0
.pool

_08058e8c:	.4byte 0x0810de24

_08058e90:
	cmp		r2, #0x32
	bne		_08058f24
	cmp		r1, #0x0
	beq		_08058ec8
	ldr		r0, _08058ed0
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0xfe
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0x4
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08058ec8
	add		r0, #0xfa
	cmp		r1, r0
	bne		_08058ed8
_08058ec8:
	ldr		r0, _08058ed4
	ldr		r0, [r0, #0x10]
	b		_08058fd4

.align 2, 0
.pool

_08058ed0:	.4byte 0x00000301
_08058ed4:	.4byte 0x0810de24

_08058ed8:
	ldr		r2, _08058ee8
	add		r0, r1, r2
	cmp		r0, #0x1
	bhi		_08058ef0
	ldr		r0, _08058eec
	ldr		r0, [r0, #0x34]
	b		_08058fd4

.align 2, 0
.pool

_08058ee8:	.4byte 0xfffffbfd
_08058eec:	.4byte 0x0810de24

_08058ef0:
	mov		r0, #0x81
	lsl		r0, r0, #0x3
	cmp		r1, r0
	bne		_08058f04
	ldr		r0, _08058f00
	ldr		r0, [r0, #0x38]
	b		_08058fd4

.align 2, 0
.pool

_08058f00:	.4byte 0x0810de24

_08058f04:
	ldr		r0, _08058f10
	cmp		r1, r0
	bne		_08058f18
	ldr		r0, _08058f14
	ldr		r0, [r0, #0x24]
	b		_08058fd4

_08058f10:	.4byte 0x00000503
_08058f14:	.4byte 0x0810de24

_08058f18:
	ldr		r0, _08058f20
	ldr		r0, [r0, #0x1c]
	b		_08058fd4

.align 2, 0
.pool

_08058f20:	.4byte 0x0810de24

_08058f24:
	cmp		r2, #0x33
	bne		_08058fd0
	mov		r0, #0x81
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_08058f36
	ldr		r0, _08058f3c
	cmp		r1, r0
	bne		_08058f44
_08058f36:
	ldr		r0, _08058f40
	ldr		r0, [r0, #0x3c]
	b		_08058fd4

_08058f3c:	.4byte 0x00000299
_08058f40:	.4byte 0x0810de24

_08058f44:
	ldr		r0, _08058f50
	cmp		r1, r0
	bne		_08058f58
	ldr		r0, _08058f54
	ldr		r0, [r0, #0x44]
	b		_08058fd4

_08058f50:	.4byte 0x00000103
_08058f54:	.4byte 0x0810de24

_08058f58:
	ldr		r2, _08058f74
	add		r0, r1, r2
	cmp		r0, #0x1
	bls		_08058f6c
	ldr		r0, _08058f78
	cmp		r1, r0
	beq		_08058f6c
	add		r0, #0x3
	cmp		r1, r0
	bne		_08058f80
_08058f6c:
	ldr		r0, _08058f7c
	ldr		r0, [r0, #0x4c]
	b		_08058fd4

.align 2, 0
.pool

_08058f74:	.4byte 0xfffffefc
_08058f78:	.4byte 0x00000203
_08058f7c:	.4byte 0x0810de24

_08058f80:
	mov		r0, #0x83
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_08058f94
	ldr		r0, _08058f90
	ldr		r0, [r0, #0x48]
	b		_08058fd4

.align 2, 0
.pool

_08058f90:	.4byte 0x0810de24

_08058f94:
	ldr		r0, _08058fa0
	cmp		r1, r0
	bne		_08058fa8
	ldr		r0, _08058fa4
	ldr		r0, [r0, #0x50]
	b		_08058fd4

_08058fa0:	.4byte 0x00000201
_08058fa4:	.4byte 0x0810de24

_08058fa8:
	ldr		r0, _08058fbc
	cmp		r1, r0
	beq		_08058fb4
	add		r0, #0x2
	cmp		r1, r0
	bne		_08058fc4
_08058fb4:
	ldr		r0, _08058fc0
	ldr		r0, [r0, #0x10]
	b		_08058fd4

.align 2, 0
.pool

_08058fbc:	.4byte 0x00000202
_08058fc0:	.4byte 0x0810de24

_08058fc4:
	ldr		r0, _08058fcc
	ldr		r0, [r0, #0x1c]
	b		_08058fd4

.align 2, 0
.pool

_08058fcc:	.4byte 0x0810de24

_08058fd0:
	ldr		r0, _08058fd8
	ldr		r0, [r0, #0x54]
_08058fd4:
	bx		lr

.align 2, 0
.pool

_08058fd8:	.4byte 0x0810de24
	thumb_func_end sub_08058d24

	thumb_func_start sub_08058fdc
sub_08058fdc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r8, r2
	ldr		r1, _08059080
	ldr		r7, [r1, #0x0]
	ldr		r1, _08059084
	add		r6, r7, r1
	mov		r1, #0x0
	bl		sub_080574f0
	cmp		r0, #0x0
	beq		_080590d2
	add		r0, r6, #0x0
	bl		getMgbUn2FromSave
	bl		sub_08057370
	ldr		r1, _08059088
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r6, #0x17]
	ldr		r1, _0805908c
	add		r0, r7, r1
	bl		getMgbNicknameFromSave
	mov		r0, #0x0
	bl		sub_08057378
	add		r5, r0, #0x0
	add		r4, r5, #0x0
	add		r4, #0x8
	add		r0, #0xc
	bl		getMgbNicknameFromSave
	ldrb	r0, [r5, #0x8]
	strb	r0, [r6, #0x11]
	ldrh	r1, [r4, #0x2]
	lsr		r0, r1, #0x8
	strb	r0, [r6, #0x1a]
	strb	r1, [r6, #0x1b]
	mov		r0, r8
	strb	r0, [r6, #0x10]
	ldr		r0, _08059090
	add		r1, r7, r0
	mov		r2, #0x80
	lsl		r2, r2, #0x5
_08059046:
	ldrb	r0, [r5, #0x0]
	strb	r0, [r1, #0x0]
	add		r5, #0x1
	add		r1, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_08059046
	mov		r1, r9
	cmp		r1, #0x0
	beq		_080590a0
	ldr		r1, _08059094
	add		r0, r6, r1
	bl		getMgbRealNameFromSave
	ldr		r1, _08059098
	add		r0, r6, r1
	bl		getMgbPhoneNumberFromSave
	ldr		r1, _0805909c
	add		r0, r6, r1
	bl		getMgbZipcodeFromSave
	mov		r1, #0x82
	lsl		r1, r1, #0x5
	add		r0, r6, r1
	bl		getMgbAddressFromSave
	b		_080590d2

.align 2, 0
.pool

_08059080:	.4byte 0x0203EBE0
_08059084:	.4byte 0x00004E4C
_08059088:	.4byte 0x00000AE6
_0805908c:	.4byte 0x00004E5E
_08059090:	.4byte 0x00004E68
_08059094:	.4byte 0x0000101C
_08059098:	.4byte 0x0000102C
_0805909c:	.4byte 0x00001038

_080590a0:
	ldr		r1, _080590e0
	add		r0, r6, r1
	mov		r1, #0x2a
	mov		r2, #0x10
	bl		sub_0806983c
	ldr		r1, _080590e4
	add		r0, r6, r1
	mov		r1, #0xf
	mov		r2, #0xc
	bl		sub_0806983c
	ldr		r1, _080590e8
	add		r0, r6, r1
	mov		r1, #0xf
	mov		r2, #0x8
	bl		sub_0806983c
	mov		r1, #0x82
	lsl		r1, r1, #0x5
	add		r0, r6, r1
	mov		r1, #0x2a
	mov		r2, #0x80
	bl		sub_0806983c
_080590d2:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_080590e0:	.4byte 0x0000101C
_080590e4:	.4byte 0x0000102C
_080590e8:	.4byte 0x00001038
	thumb_func_end sub_08058fdc

	thumb_func_start sub_080590ec
sub_080590ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _08059260
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08057378
	add		r7, r0, #0x0
	ldr		r0, _08059264
	mov		r8, r0
	mov		r1, #0x0
	mov		r9, r1
	ldr		r0, _08059268
	add		r6, r5, r0
	ldrb	r2, [r6, #0x0]
	lsl		r2, r2, #0x18
	ldr		r1, _0805926c
	add		r6, r5, r1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x10
	add		r2, r2, r0
	ldr		r0, _08059270
	add		r6, r5, r0
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x8
	add		r2, r2, r0
	add		r1, #0x2
	add		r6, r5, r1
	ldrb	r0, [r6, #0x0]
	add		r2, r2, r0
	ldr		r0, _08059274
	add		r6, r5, r0
	ldr		r1, _08059278
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r8
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	str		r2, [r0, #0x0]
	ldrb	r4, [r6, #0x0]
	lsl		r4, r4, #0x8
	ldr		r0, _0805927c
	add		r6, r5, r0
	ldrb	r0, [r6, #0x0]
	orr		r4, r0
	ldr		r1, _08059280
	add		r6, r5, r1
	add		r0, r6, #0x0
	mov		r1, #0x0
	bl		setMgbUnk4FromSave
	mov		r0, #0x96
	lsl		r0, r0, #0x4
	add		r6, r5, r0
	cmp		r4, #0x0
	beq		_08059252
	add		r2, r7, #0x0
	add		r2, #0x16
	mov		r1, #0x80
	lsl		r1, r1, #0x5
_08059170:
	ldrb	r0, [r6, #0x0]
	strb	r0, [r7, #0x0]
	add		r6, #0x1
	add		r7, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_08059170
	mov		r1, #0xf
_08059180:
	ldrb	r0, [r6, #0x0]
	strb	r0, [r2, #0x0]
	add		r6, #0x1
	add		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08059180
	mov		r1, #0x1
	mov		r9, r1
	ldrb	r1, [r6, #0x0]
	lsl		r1, r1, #0x18
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r1, r0
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	add		r7, r7, r0
	add		r6, #0x1
	ldr		r0, _08059278
	add		r5, r5, r0
	ldr		r1, [r5, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r8
	mov		r1, #0xec
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	str		r7, [r0, #0x0]
	bl		sub_08057370
	add		r4, r0, #0x0
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r1, _08059284
	add		r4, r4, r1
	strb	r0, [r4, #0x0]
	add		r6, #0x4
	ldrb	r1, [r6, #0x0]
	lsl		r1, r1, #0x18
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r1, r0
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	add		r7, r7, r0
	add		r6, #0x1
	ldr		r1, [r5, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r8
	ldr		r1, _08059288
	add		r0, r0, r1
	str		r7, [r0, #0x0]
	bl		sub_08057370
	add		r4, r0, #0x0
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r1, _0805928c
	add		r4, r4, r1
	strb	r0, [r4, #0x0]
	ldrb	r1, [r6, #0x0]
	lsl		r1, r1, #0x18
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r1, r0
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	ldrb	r0, [r6, #0x1]
	add		r7, r7, r0
	ldr		r1, [r5, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r8
	mov		r1, #0xeb
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	str		r7, [r0, #0x0]
	bl		sub_08057370
	add		r4, r0, #0x0
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r1, _08059290
	add		r4, r4, r1
	strb	r0, [r4, #0x0]
_08059252:
	mov		r0, r9
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08059260:	.4byte 0x0203EBE0
_08059264:	.4byte 0x02033780
_08059268:	.4byte 0x00000952
_0805926c:	.4byte 0x00000953
_08059270:	.4byte 0x00000954
_08059274:	.4byte 0x00000956
_08059278:	.4byte 0x00006A3C
_0805927c:	.4byte 0x00000957
_08059280:	.4byte 0x00000959
_08059284:	.4byte 0x00000B9A
_08059288:	.4byte 0x0000075C
_0805928c:	.4byte 0x00000B9B
_08059290:	.4byte 0x00000B9C
	thumb_func_end sub_080590ec

	thumb_func_start sub_08059294
sub_08059294:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x3c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x0]
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	str		r1, [sp, #0x4]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	str		r2, [sp, #0x8]
	ldr		r0, _08059564
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0xC]
	bl		sub_08057370
	str		r0, [sp, #0x10]
	ldr		r0, [sp, #0xC]
	ldr		r1, _08059568
	add		r5, r0, r1
	mov		r2, #0x0
	str		r2, [sp, #0x14]
	mov		r3, #0x0
	str		r3, [sp, #0x18]
	ldr		r7, [sp, #0x8]
	neg		r0, r7
	orr		r0, r7
	lsr		r0, r0, #0x1f
	str		r0, [sp, #0x2C]
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	mov		r9, r0
	ldr		r0, [sp, #0xC]
	add		r1, #0x1
	add		r5, r0, r1
	ldrb	r0, [r5, #0x0]
	mov		r2, r9
	orr		r2, r0
	mov		r9, r2
	ldr		r3, [sp, #0xC]
	ldr		r7, _0805956c
	add		r5, r3, r7
	ldrb	r5, [r5, #0x0]
	str		r5, [sp, #0x1C]
	ldr		r0, _08059570
	add		r5, r3, r0
	ldrb	r5, [r5, #0x0]
	str		r5, [sp, #0x20]
	add		r1, #0x3
	add		r5, r3, r1
	ldrb	r5, [r5, #0x0]
	str		r5, [sp, #0x24]
	ldr		r2, _08059574
	add		r5, r3, r2
	ldrb	r5, [r5, #0x0]
	str		r5, [sp, #0x28]
	add		r7, #0x4
	add		r5, r3, r7
	ldrb	r0, [r5, #0x0]
	lsl		r7, r0, #0x18
	ldr		r0, _08059578
	add		r5, r3, r0
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r7, r0
	add		r1, #0x4
	add		r5, r3, r1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	add		r2, #0x4
	add		r5, r3, r2
	ldrb	r0, [r5, #0x0]
	add		r7, r7, r0
	ldr		r0, _0805957c
	add		r5, r3, r0
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r10, r0
	add		r1, #0x3
	add		r5, r3, r1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r10, r0
	add		r2, #0x3
	add		r5, r3, r2
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r10, r0
	ldr		r0, _08059580
	add		r5, r3, r0
	ldrb	r0, [r5, #0x0]
	add		r10, r0
	add		r1, #0x3
	add		r5, r3, r1
	ldr		r3, [sp, #0x0]
	lsl		r2, r3, #0x4
	sub		r0, r2, r3
	lsl		r0, r0, #0x7
	ldr		r1, _08059584
	add		r0, r0, r1
	mov		r3, #0xe9
	lsl		r3, r3, #0x3
	add		r1, r0, r3
	mov		r3, r10
	str		r3, [r1, #0x0]
	ldr		r3, _08059588
	add		r1, r0, r3
	str		r7, [r1, #0x0]
	mov		r6, #0x0
	add		r3, r0, #0x0
	str		r2, [sp, #0x34]
	ldr		r0, [sp, #0xC]
	ldr		r1, _0805958c
	add		r0, r0, r1
	mov		r8, r0
	ldr		r2, [sp, #0x0]
	lsl		r2, r2, #0x2
	str		r2, [sp, #0x30]
	mov		r1, #0x0
_0805938c:
	lsl		r0, r6, #0x5
	add		r0, r3, r0
	mov		r4, #0x0
_08059392:
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	add		r4, #0x1
	cmp		r4, #0x1f
	bls		_08059392
	add		r6, #0x1
	cmp		r6, #0xa
	ble		_0805938c
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	mov		r5, r8
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	cmp		r4, #0x0
	beq		_080593e6
	cmp		r4, #0xb
	bls		_080593b8
	mov		r4, #0xb
_080593b8:
	mov		r6, #0x0
	cmp		r6, r4
	bge		_080593e6
	ldr		r3, [sp, #0x34]
	ldr		r1, [sp, #0x0]
	sub		r0, r3, r1
	lsl		r0, r0, #0x7
	ldr		r2, _08059584
	add		r2, r2, r0
	mov		r8, r2
_080593cc:
	lsl		r0, r6, #0x5
	mov		r3, r8
	add		r2, r3, r0
	add		r0, r5, #0x0
	add		r1, r2, #0x0
	bl		sub_0805a1c8
	add		r5, r0, #0x0
	add		r6, #0x1
	cmp		r6, r4
	bge		_080593e6
	cmp		r6, #0xa
	ble		_080593cc
_080593e6:
	mov		r6, #0x0
	add		r0, r5, #0x1
	mov		r8, r0
	ldr		r1, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r1, r2
	lsl		r0, r0, #0x7
	ldr		r1, _08059584
	add		r3, r1, r0
	mov		r2, #0x0
	mov		r1, #0x84
	lsl		r1, r1, #0x3
_080593fe:
	add		r0, r3, r1
	mov		r4, #0x0
_08059402:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	add		r4, #0x1
	cmp		r4, #0x1f
	bls		_08059402
	add		r1, #0x20
	add		r6, #0x1
	cmp		r6, #0xa
	ble		_080593fe
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	mov		r5, r8
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	ldr		r2, [sp, #0x34]
	ldr		r3, [sp, #0x0]
	sub		r0, r2, r3
	lsl		r0, r0, #0x7
	ldr		r2, _08059584
	add		r1, r0, r2
	ldr		r3, _08059590
	add		r0, r1, r3
	str		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_08059466
	cmp		r4, #0xb
	bls		_0805943c
	mov		r4, #0xb
_0805943c:
	mov		r6, #0x0
	cmp		r6, r4
	bge		_08059466
	mov		r8, r1
	mov		r3, #0x84
	lsl		r3, r3, #0x3
_08059448:
	mov		r0, r8
	add		r2, r0, r3
	add		r0, r5, #0x0
	add		r1, r2, #0x0
	str		r3, [sp, #0x38]
	bl		sub_0805a1c8
	add		r5, r0, #0x0
	ldr		r3, [sp, #0x38]
	add		r3, #0x20
	add		r6, #0x1
	cmp		r6, r4
	bge		_08059466
	cmp		r6, #0xa
	ble		_08059448
_08059466:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	mov		r1, #0x0
	mov		r8, r1
	cmp		r4, #0x0
	beq		_080594a8
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r8, r0
	add		r5, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r2, #0x0
	bne		_080594a0
	mov		r8, r1
_080594a0:
	cmp		r8, r7
	bls		_080594a8
	ldr		r3, _08059594
	mov		r8, r3
_080594a8:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	mov		r6, #0x0
	cmp		r4, #0x0
	beq		_080594ee
	ldrb	r0, [r5, #0x0]
	lsl		r6, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r7, [r5, #0x0]
	str		r7, [sp, #0x14]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	str		r0, [sp, #0x18]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	ldr		r1, [sp, #0x18]
	orr		r1, r0
	str		r1, [sp, #0x18]
	add		r5, #0x1
_080594ee:
	bl		sub_08057370
	ldr		r2, [sp, #0x30]
	ldr		r3, [sp, #0x0]
	add		r1, r2, r3
	lsl		r1, r1, #0x2
	mov		r7, #0xb2
	lsl		r7, r7, #0x3
	add		r1, r1, r7
	add		r3, r0, r1
	mov		r4, #0x0
	mov		r1, #0x0
	mov		r0, r9
	strh	r0, [r3, #0xc]
	mov		r2, sp
	ldrb	r2, [r2, #0x1C]
	strb	r2, [r3, #0xe]
	add		r7, sp, #0x20
	ldrb	r7, [r7, #0x0]
	strb	r7, [r3, #0xf]
	add		r0, sp, #0x24
	ldrb	r0, [r0, #0x0]
	strb	r0, [r3, #0x11]
	add		r2, sp, #0x28
	ldrb	r2, [r2, #0x0]
	strb	r2, [r3, #0x12]
	ldr		r7, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r7, r2
	lsl		r0, r0, #0x7
	ldr		r7, _08059584
	add		r2, r7, r0
	ldrh	r0, [r2, #0x4]
	strh	r0, [r3, #0x0]
	ldrb	r0, [r2, #0xb]
	strb	r0, [r3, #0x9]
	str		r1, [r3, #0x4]
	strh	r1, [r3, #0x2]
	ldr		r0, [sp, #0x2C]
	cmp		r0, #0x0
	beq		_080595f0
	ldrb	r1, [r3, #0xb]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08059598
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x0
	beq		_08059598
	mov		r2, r10
	cmp		r2, #0x0
	beq		_08059598
	cmp		r6, #0x0
	beq		_080595b0
	ldr		r7, [sp, #0x18]
	cmp		r7, r1
	bne		_08059598
	str		r6, [r3, #0x4]
	b		_080595b4

_08059564:	.4byte 0x0203EBE0
_08059568:	.4byte 0x0000094C
_0805956c:	.4byte 0x0000094E
_08059570:	.4byte 0x0000094F
_08059574:	.4byte 0x00000951
_08059578:	.4byte 0x00000953
_0805957c:	.4byte 0x00000956
_08059580:	.4byte 0x00000959
_08059584:	.4byte 0x02033780
_08059588:	.4byte 0x00000754
_0805958c:	.4byte 0x0000095B
_08059590:	.4byte 0x00000764
_08059594:	.4byte 0x000FFFFF

_08059598:
	cmp		r6, #0x0
	beq		_080595b0
	ldr		r0, [sp, #0x18]
	ldr		r1, [sp, #0x8]
	cmp		r0, r1
	bhi		_080595b0
	mov		r2, r8
	cmp		r2, #0x1
	bls		_080595b0
	mov		r7, #0x1
	neg		r7, r7
	add		r8, r7
_080595b0:
	mov		r0, r8
	str		r0, [r3, #0x4]
_080595b4:
	mov		r1, sp
	ldrh		r1, [r1, #0x8]
	strh	r1, [r3, #0x2]
	mov		r2, sp
	ldrb	r2, [r2, #0x4]
	strb	r2, [r3, #0x8]
	ldr		r7, [sp, #0x34]
	ldr		r1, [sp, #0x0]
	sub		r0, r7, r1
	lsl		r0, r0, #0x7
	ldr		r2, _080595e8
	add		r0, r0, r2
	ldr		r7, _080595ec
	add		r1, r0, r7
	str		r6, [r1, #0x0]
	mov		r1, #0xdc
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	str		r6, [r0, #0x0]
	mov		r2, sp
	ldrh		r2, [r2, #0x18]
	strh	r2, [r0, #0x4]
	mov		r7, sp
	ldrb	r7, [r7, #0x14]
	strb	r7, [r0, #0xb]
	b		_0805960a

_080595e8:	.4byte 0x02033780
_080595ec:	.4byte 0x00000774

_080595f0:
	ldr		r0, [sp, #0x2C]
	str		r0, [r3, #0x4]
	strh	r0, [r3, #0x2]
	strb	r4, [r3, #0x8]
	ldr		r7, _080597f4
	add		r0, r2, r7
	ldr		r1, [sp, #0x2C]
	str		r1, [r0, #0x0]
	sub		r7, #0x94
	add		r0, r2, r7
	str		r1, [r0, #0x0]
	strh	r1, [r0, #0x4]
	strb	r4, [r0, #0xb]
_0805960a:
	ldr		r0, [r3, #0x4]
	cmp		r0, #0x1
	bne		_08059618
	ldrh	r0, [r3, #0x2]
	strh	r0, [r3, #0x0]
	ldrb	r0, [r3, #0x8]
	strb	r0, [r3, #0x9]
_08059618:
	ldrb	r0, [r3, #0xb]
	mov		r1, #0xfb
	and		r1, r0
	mov		r0, #0xf7
	and		r1, r0
	strb	r1, [r3, #0xb]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0805963a
	cmp		r6, #0x0
	beq		_0805963a
	mov		r0, #0x4
	orr		r1, r0
	mov		r0, #0x8
	orr		r1, r0
	strb	r1, [r3, #0xb]
_0805963a:
	mov		r6, #0x0
	ldr		r2, [sp, #0x34]
	ldr		r3, [sp, #0x0]
	sub		r0, r2, r3
	lsl		r0, r0, #0x7
	ldr		r7, _080597f8
	add		r3, r7, r0
	mov		r2, #0x0
	mov		r7, #0xb0
	lsl		r7, r7, #0x3
_0805964e:
	lsl		r0, r6, #0x5
	add		r0, r0, r7
	add		r1, r3, r0
	mov		r4, #0x0
	add		r0, r6, #0x1
_08059658:
	strb	r2, [r1, #0x0]
	add		r1, #0x1
	add		r4, #0x1
	cmp		r4, #0x1f
	bls		_08059658
	add		r6, r0, #0x0
	cmp		r6, #0xa
	ble		_0805964e
	mov		r4, #0x0
_0805966a:
	lsl		r2, r4, #0x18
	lsr		r2, r2, #0x18
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x0]
	bl		sub_0805a21c
	add		r5, r0, #0x0
	add		r4, #0x1
	cmp		r4, #0xa
	ble		_0805966a
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x13
	bls		_08059686
	b		_08059a6a
_08059686:
	mov		r6, #0x0
	add		r5, #0x6
	ldr		r1, [sp, #0x34]
	sub		r0, r1, r0
	lsl		r0, r0, #0x7
	ldr		r2, _080597f8
	add		r3, r2, r0
	mov		r2, #0x0
	mov		r1, #0xb0
	lsl		r1, r1, #0x2
_0805969a:
	add		r0, r3, r1
	mov		r4, #0x0
_0805969e:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	add		r4, #0x1
	cmp		r4, #0x1f
	bls		_0805969e
	add		r1, #0x20
	add		r6, #0x1
	cmp		r6, #0xa
	ble		_0805969a
	ldrb	r0, [r5, #0x0]
	lsl		r7, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r10, r0
	add		r5, #0x1
	ldr		r3, [sp, #0x34]
	ldr		r1, [sp, #0x0]
	sub		r0, r3, r1
	lsl		r0, r0, #0x7
	ldr		r2, _080597f8
	add		r6, r0, r2
	mov		r3, #0xea
	lsl		r3, r3, #0x3
	add		r0, r6, r3
	mov		r1, r10
	str		r1, [r0, #0x0]
	ldr		r2, _080597fc
	add		r0, r6, r2
	str		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r3, [sp, #0x10]
	ldr		r7, _08059800
	add		r1, r3, r7
	strb	r0, [r1, #0x0]
	mov		r0, #0x0
	mov		r8, r0
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	cmp		r4, #0x0
	beq		_08059750
	cmp		r4, #0xb
	bls		_0805972e
	mov		r4, #0xb
_0805972e:
	cmp		r8, r4
	bge		_08059750
	mov		r9, r6
	mov		r7, #0xb0
	lsl		r7, r7, #0x2
	add		r6, r4, #0x0
_0805973a:
	mov		r1, r9
	add		r2, r1, r7
	add		r0, r5, #0x0
	add		r1, r2, #0x0
	bl		sub_0805a1c8
	add		r5, r0, #0x0
	add		r7, #0x20
	sub		r6, #0x1
	cmp		r6, #0x0
	bne		_0805973a
_08059750:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	cmp		r4, #0x0
	beq		_08059788
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r8, r0
	add		r5, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r2, #0x0
	bne		_08059788
	mov		r3, #0x0
	mov		r8, r3
_08059788:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	mov		r6, #0x0
	cmp		r4, #0x0
	beq		_080597ce
	ldrb	r0, [r5, #0x0]
	lsl		r6, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r7, [r5, #0x0]
	str		r7, [sp, #0x14]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	str		r0, [sp, #0x18]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	ldr		r1, [sp, #0x18]
	orr		r1, r0
	str		r1, [sp, #0x18]
	add		r5, #0x1
_080597ce:
	ldr		r2, [sp, #0x34]
	ldr		r3, [sp, #0x0]
	sub		r0, r2, r3
	lsl		r0, r0, #0x7
	ldr		r7, _080597f8
	add		r2, r0, r7
	mov		r0, #0xee
	lsl		r0, r0, #0x3
	add		r1, r2, r0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r3, [sp, #0x2C]
	cmp		r3, #0x0
	beq		_08059838
	mov		r7, r10
	cmp		r7, #0x0
	beq		_08059804
	mov		r0, r8
	b		_08059806

_080597f4:	.4byte 0x00000774
_080597f8:	.4byte 0x02033780
_080597fc:	.4byte 0x0000075C
_08059800:	.4byte 0x00000B9B

_08059804:
	mov		r0, #0x1
_08059806:
	str		r0, [r1, #0x0]
	ldr		r1, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r1, r2
	lsl		r0, r0, #0x7
	ldr		r3, _08059830
	add		r0, r0, r3
	ldr		r7, _08059834
	add		r1, r0, r7
	str		r6, [r1, #0x0]
	mov		r1, #0xe4
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	str		r6, [r0, #0x0]
	mov		r2, sp
	ldrh		r2, [r2, #0x18]
	strh	r2, [r0, #0x4]
	mov		r3, sp
	ldrb	r3, [r3, #0x14]
	strb	r3, [r0, #0xb]
	b		_08059850

_08059830:	.4byte 0x02033780
_08059834:	.4byte 0x0000077C

_08059838:
	ldr		r7, [sp, #0x2C]
	str		r7, [r1, #0x0]
	ldr		r1, _080599c8
	add		r0, r2, r1
	str		r7, [r0, #0x0]
	mov		r3, #0xe4
	lsl		r3, r3, #0x3
	add		r0, r2, r3
	str		r7, [r0, #0x0]
	mov		r1, #0x0
	strh	r7, [r0, #0x4]
	strb	r1, [r0, #0xb]
_08059850:
	mov		r6, #0x0
	add		r5, #0x6
	ldr		r1, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r1, r2
	lsl		r0, r0, #0x7
	ldr		r7, _080599cc
	add		r3, r7, r0
	mov		r2, #0x0
	mov		r7, #0xb0
	lsl		r7, r7, #0x1
_08059866:
	lsl		r0, r6, #0x5
	add		r0, r0, r7
	add		r1, r3, r0
	mov		r4, #0x0
	add		r0, r6, #0x1
_08059870:
	strb	r2, [r1, #0x0]
	add		r1, #0x1
	add		r4, #0x1
	cmp		r4, #0x1f
	bls		_08059870
	add		r6, r0, #0x0
	cmp		r6, #0xa
	ble		_08059866
	ldrb	r0, [r5, #0x0]
	lsl		r7, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r10, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r10, r0
	add		r5, #0x1
	ldr		r1, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r1, r2
	lsl		r0, r0, #0x7
	ldr		r3, _080599cc
	add		r6, r0, r3
	ldr		r1, _080599d0
	add		r0, r6, r1
	mov		r2, r10
	str		r2, [r0, #0x0]
	mov		r3, #0xeb
	lsl		r3, r3, #0x3
	add		r0, r6, r3
	str		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r7, [sp, #0x10]
	ldr		r2, _080599d4
	add		r1, r7, r2
	strb	r0, [r1, #0x0]
	mov		r3, #0x0
	mov		r8, r3
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	cmp		r4, #0x0
	beq		_08059920
	cmp		r4, #0xb
	bls		_080598fe
	mov		r4, #0xb
_080598fe:
	cmp		r8, r4
	bge		_08059920
	mov		r8, r6
	mov		r7, #0xb0
	lsl		r7, r7, #0x1
	add		r6, r4, #0x0
_0805990a:
	mov		r0, r8
	add		r2, r0, r7
	add		r0, r5, #0x0
	add		r1, r2, #0x0
	bl		sub_0805a1c8
	add		r5, r0, #0x0
	add		r7, #0x20
	sub		r6, #0x1
	cmp		r6, #0x0
	bne		_0805990a
_08059920:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	mov		r1, #0x0
	mov		r8, r1
	cmp		r4, #0x0
	beq		_0805995a
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x18
	mov		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r8, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r8, r0
	add		r5, #0x1
	ldr		r2, [sp, #0x8]
	cmp		r2, #0x0
	bne		_0805995a
	mov		r8, r1
_0805995a:
	ldrb	r0, [r5, #0x0]
	lsl		r4, r0, #0x8
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r4, r0
	add		r5, #0x1
	mov		r6, #0x0
	cmp		r4, #0x0
	beq		_080599a0
	ldrb	r0, [r5, #0x0]
	lsl		r6, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	add		r6, r6, r0
	add		r5, #0x1
	ldrb	r3, [r5, #0x0]
	str		r3, [sp, #0x14]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	str		r0, [sp, #0x18]
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	ldr		r7, [sp, #0x18]
	orr		r7, r0
	str		r7, [sp, #0x18]
	add		r5, #0x1
_080599a0:
	ldr		r1, [sp, #0x34]
	ldr		r2, [sp, #0x0]
	sub		r0, r1, r2
	lsl		r0, r0, #0x7
	ldr		r3, _080599cc
	add		r2, r0, r3
	ldr		r7, _080599d8
	add		r1, r2, r7
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, [sp, #0x2C]
	cmp		r0, #0x0
	beq		_08059a10
	mov		r2, r10
	cmp		r2, #0x0
	beq		_080599dc
	mov		r3, r8
	str		r3, [r1, #0x0]
	b		_080599e0

.align 2, 0
.pool

_080599c8:	.4byte 0x0000077C
_080599cc:	.4byte 0x02033780
_080599d0:	.4byte 0x0000074C
_080599d4:	.4byte 0x00000B9C
_080599d8:	.4byte 0x0000076C

_080599dc:
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_080599e0:
	ldr		r7, [sp, #0x34]
	ldr		r1, [sp, #0x0]
	sub		r0, r7, r1
	lsl		r0, r0, #0x7
	ldr		r2, _08059a0c
	add		r0, r0, r2
	mov		r3, #0xef
	lsl		r3, r3, #0x3
	add		r1, r0, r3
	str		r6, [r1, #0x0]
	mov		r7, #0xe0
	lsl		r7, r7, #0x3
	add		r0, r0, r7
	str		r6, [r0, #0x0]
	mov		r1, sp
	ldrh		r1, [r1, #0x18]
	strh	r1, [r0, #0x4]
	mov		r2, sp
	ldrb	r2, [r2, #0x14]
	strb	r2, [r0, #0xb]
	b		_08059a2a

.align 2, 0
.pool

_08059a0c:	.4byte 0x02033780

_08059a10:
	ldr		r3, [sp, #0x2C]
	str		r3, [r1, #0x0]
	mov		r7, #0xef
	lsl		r7, r7, #0x3
	add		r0, r2, r7
	str		r3, [r0, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	str		r3, [r0, #0x0]
	mov		r1, #0x0
	strh	r3, [r0, #0x4]
	strb	r1, [r0, #0xb]
_08059a2a:
	ldrb	r0, [r5, #0x0]
	lsl		r7, r0, #0x18
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r7, r7, r0
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	add		r7, r7, r0
	ldrb	r0, [r5, #0x1]
	add		r7, r7, r0
	ldr		r3, [sp, #0xC]
	ldr		r1, _08059a7c
	add		r0, r3, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r2, _08059a80
	add		r0, r0, r2
	mov		r3, #0xec
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	str		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_0805a05c
	ldr		r7, [sp, #0x10]
	ldr		r2, _08059a84
	add		r1, r7, r2
	strb	r0, [r1, #0x0]
_08059a6a:
	add		sp, #0x3c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08059a7c:	.4byte 0x00006A3C
_08059a80:	.4byte 0x02033780
_08059a84:	.4byte 0x00000B9A
	thumb_func_end sub_08059294

	thumb_func_start sub_08059a88
sub_08059a88:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldrb	r0, [r5, #0x5]
	add		r0, #0x9
	cmp		r0, #0x17
	ble		_08059af8
	ldrb	r0, [r5, #0x3]
	sub		r2, r0, #0x1
	mov		r1, #0x1
	ldrb	r3, [r5, #0x2]
	cmp		r1, r3
	bge		_08059ac8
	mov		r0, #0x0
	ldrsh	r4, [r5, r0]
	mov		r0, #0x3
	and		r4, r0
	ldr		r7, _08059ab4
	ldr		r6, _08059ab8
_08059aac:
	cmp		r4, #0x0
	beq		_08059abc
	add		r0, r1, r7
	b		_08059abe

_08059ab4:	.4byte 0x0810efd5
_08059ab8:	.4byte 0x0810efe2

_08059abc:
	add		r0, r1, r6
_08059abe:
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, #0x1
	cmp		r1, r3
	blt		_08059aac
_08059ac8:
	mov		r1, #0xfa
	lsl		r1, r1, #0x3
	mov		r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp		r1, r0
	bge		_08059af4
	mov		r4, #0x3
	add		r3, r0, #0x0
_08059ad8:
	add		r0, r1, #0x0
	and		r0, r4
	cmp		r0, #0x0
	beq		_08059ae8
	ldr		r0, _08059ae4
	b		_08059aec

_08059ae4:	.4byte 0x0000016D

_08059ae8:
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
_08059aec:
	add		r2, r2, r0
	add		r1, #0x1
	cmp		r1, r3
	blt		_08059ad8
_08059af4:
	add		r0, r2, #0x1
	b		_08059b5a
_08059af8:
	ldrb	r0, [r5, #0x3]
	sub		r2, r0, #0x1
	mov		r1, #0x1
	ldrb	r3, [r5, #0x2]
	cmp		r1, r3
	bge		_08059b2c
	mov		r0, #0x0
	ldrsh	r4, [r5, r0]
	mov		r0, #0x3
	and		r4, r0
	ldr		r7, _08059b18
	ldr		r6, _08059b1c
_08059b10:
	cmp		r4, #0x0
	beq		_08059b20
	add		r0, r1, r7
	b		_08059b22

_08059b18:	.4byte 0x0810efd5
_08059b1c:	.4byte 0x0810efe2

_08059b20:
	add		r0, r1, r6
_08059b22:
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, #0x1
	cmp		r1, r3
	blt		_08059b10
_08059b2c:
	mov		r1, #0xfa
	lsl		r1, r1, #0x3
	mov		r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp		r1, r0
	bge		_08059b58
	mov		r4, #0x3
	add		r3, r0, #0x0
_08059b3c:
	add		r0, r1, #0x0
	and		r0, r4
	cmp		r0, #0x0
	beq		_08059b4c
	ldr		r0, _08059b48
	b		_08059b50

_08059b48:	.4byte 0x0000016D

_08059b4c:
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
_08059b50:
	add		r2, r2, r0
	add		r1, #0x1
	cmp		r1, r3
	blt		_08059b3c
_08059b58:
	add		r0, r2, #0x0
_08059b5a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08059a88

	thumb_func_start sub_08059b60
sub_08059b60:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r1, _08059bc0
	mov		r0, #0x0
	strb	r0, [r5, #0x4]
	ldrb	r2, [r4, #0x0]
_08059b6e:
	ldrb	r0, [r1, #0x0]
	cmp		r0, r2
	bne		_08059b84
	ldrb	r0, [r1, #0x1]
	ldrb	r3, [r4, #0x1]
	cmp		r0, r3
	bne		_08059b84
	ldrb	r0, [r1, #0x2]
	ldrb	r3, [r4, #0x2]
	cmp		r0, r3
	beq		_08059b94
_08059b84:
	add		r1, #0x3
	ldrb	r0, [r5, #0x4]
	add		r0, #0x1
	strb	r0, [r5, #0x4]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x6
	bls		_08059b6e
_08059b94:
	add		r4, #0x5
	mov		r0, #0x0
	strb	r0, [r5, #0x3]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059bc4
_08059ba0:
	ldrb	r0, [r4, #0x0]
	bl		sub_08059ed8
	ldrb	r1, [r5, #0x3]
	add		r1, r1, r0
	strb	r1, [r5, #0x3]
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059bc4
	ldrb	r1, [r5, #0x3]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r5, #0x3]
	b		_08059ba0

_08059bc0:	.4byte 0x0810efef

_08059bc4:
	add		r4, #0x1
	ldr		r1, _08059c24
	mov		r0, #0x1
	strb	r0, [r5, #0x2]
	ldrb	r2, [r4, #0x0]
_08059bce:
	ldrb	r0, [r1, #0x0]
	cmp		r0, r2
	bne		_08059be4
	ldrb	r0, [r1, #0x1]
	ldrb	r3, [r4, #0x1]
	cmp		r0, r3
	bne		_08059be4
	ldrb	r0, [r1, #0x2]
	ldrb	r3, [r4, #0x2]
	cmp		r0, r3
	beq		_08059bf4
_08059be4:
	add		r1, #0x3
	ldrb	r0, [r5, #0x2]
	add		r0, #0x1
	strb	r0, [r5, #0x2]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xc
	bls		_08059bce
_08059bf4:
	add		r4, #0x4
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059c28
_08059c00:
	ldrb	r0, [r4, #0x0]
	bl		sub_08059ed8
	ldrh	r1, [r5, #0x0]
	add		r1, r1, r0
	strh	r1, [r5, #0x0]
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059c28
	mov		r0, #0x0
	ldrsh	r1, [r5, r0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strh	r0, [r5, #0x0]
	b		_08059c00

.align 2, 0
.pool

_08059c24:	.4byte 0x0810f004

_08059c28:
	add		r4, #0x1
	mov		r0, #0x0
	strb	r0, [r5, #0x5]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3a
	beq		_08059c54
_08059c34:
	ldrb	r0, [r4, #0x0]
	bl		sub_08059ed8
	ldrb	r1, [r5, #0x5]
	add		r1, r1, r0
	strb	r1, [r5, #0x5]
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3a
	beq		_08059c54
	ldrb	r1, [r5, #0x5]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r5, #0x5]
	b		_08059c34
_08059c54:
	add		r4, #0x1
	mov		r0, #0x0
	strb	r0, [r5, #0x6]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3a
	beq		_08059c80
_08059c60:
	ldrb	r0, [r4, #0x0]
	bl		sub_08059ed8
	ldrb	r1, [r5, #0x6]
	add		r1, r1, r0
	strb	r1, [r5, #0x6]
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3a
	beq		_08059c80
	ldrb	r1, [r5, #0x6]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r5, #0x6]
	b		_08059c60
_08059c80:
	add		r4, #0x1
	mov		r0, #0x0
	strb	r0, [r5, #0x7]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059cac
_08059c8c:
	ldrb	r0, [r4, #0x0]
	bl		sub_08059ed8
	ldrb	r1, [r5, #0x7]
	add		r1, r1, r0
	strb	r1, [r5, #0x7]
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x20
	beq		_08059cac
	ldrb	r1, [r5, #0x7]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r5, #0x7]
	b		_08059c8c
_08059cac:
	mov		r0, #0x1
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08059b60

	thumb_func_start sub_08059cb4
sub_08059cb4:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	mov		r6, #0x3
_08059cc0:
	mov		r0, #0x0
	ldrsh	r1, [r4, r0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strh	r0, [r4, #0x0]
	ldrb	r0, [r5, #0x0]
	add		r5, #0x1
	bl		sub_08059ed8
	ldrh	r1, [r4, #0x0]
	add		r1, r1, r0
	strh	r1, [r4, #0x0]
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08059cc0
	mov		r0, #0x0
	strb	r0, [r4, #0x2]
	mov		r6, #0x1
_08059ce6:
	ldrb	r1, [r4, #0x2]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r4, #0x2]
	ldrb	r0, [r5, #0x0]
	add		r5, #0x1
	bl		sub_08059ed8
	ldrb	r1, [r4, #0x2]
	add		r1, r1, r0
	strb	r1, [r4, #0x2]
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08059ce6
	mov		r0, #0x0
	strb	r0, [r4, #0x3]
	mov		r6, #0x1
_08059d0a:
	ldrb	r1, [r4, #0x3]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	strb	r0, [r4, #0x3]
	ldrb	r0, [r5, #0x0]
	add		r5, #0x1
	bl		sub_08059ed8
	ldrb	r1, [r4, #0x3]
	add		r1, r1, r0
	strb	r1, [r4, #0x3]
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08059d0a
	mov		r0, #0x0
	strb	r0, [r4, #0x4]
	strb	r0, [r4, #0x5]
	strb	r0, [r4, #0x6]
	strb	r0, [r4, #0x7]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08059cb4

	thumb_func_start sub_08059d38
sub_08059d38:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	mov		r0, #0xfa
	lsl		r0, r0, #0x3
	strh	r0, [r2, #0x0]
	mov		r5, #0x3
	b		_08059d4e
_08059d48:
	sub		r4, r4, r1
	add		r0, r3, #0x1
	strh	r0, [r2, #0x0]
_08059d4e:
	ldrh	r3, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	ldr		r1, _08059d6c
	cmp		r0, #0x0
	bne		_08059d5c
	add		r1, #0x1
_08059d5c:
	cmp		r4, r1
	bge		_08059d48
	mov		r0, #0x1
	strb	r0, [r2, #0x2]
	mov		r7, #0x3
	ldr		r6, _08059d70
	ldr		r5, _08059d74
	b		_08059d92

_08059d6c:	.4byte 0x0000016D
_08059d70:	.4byte 0x0810efd5
_08059d74:	.4byte 0x0810efe2

_08059d78:
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	and		r0, r7
	cmp		r0, #0x0
	beq		_08059d86
	add		r0, r3, r6
	b		_08059d88
_08059d86:
	add		r0, r3, r5
_08059d88:
	ldrb	r0, [r0, #0x0]
	sub		r4, r4, r0
	ldrb	r0, [r2, #0x2]
	add		r0, #0x1
	strb	r0, [r2, #0x2]
_08059d92:
	ldrb	r0, [r2, #0x2]
	cmp		r0, #0xb
	bhi		_08059db2
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	ldrb	r1, [r2, #0x2]
	and		r0, r7
	add		r3, r1, #0x0
	cmp		r0, #0x0
	beq		_08059daa
	add		r0, r1, r6
	b		_08059dac
_08059daa:
	add		r0, r1, r5
_08059dac:
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08059d78
_08059db2:
	add		r1, r4, #0x1
	mov		r0, #0x0
	strb	r1, [r2, #0x3]
	strb	r0, [r2, #0x4]
	strb	r0, [r2, #0x5]
	strb	r0, [r2, #0x6]
	strb	r0, [r2, #0x7]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_08059d38

	thumb_func_start sub_08059dc8
sub_08059dc8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _08059e54
	ldr		r6, [r0, #0x0]
	mov		r5, #0x0
_08059dd6:
	lsl		r4, r5, #0x2
	add		r0, r4, r5
	ldr		r1, _08059e58
	add		r0, r0, r1
	add		r0, r6, r0
	add		r1, r5, #0x0
	bl		getMgbUnk14FromSaveByOffset
	lsl		r2, r5, #0x4
	mov		r8, r2
	add		r1, r5, #0x1
	mov		r9, r1
	cmp		r0, #0x0
	bne		_08059e1c
	mov		r3, #0x0
	add		r7, r5, #0x0
	add		r7, #0x11
	ldr		r1, _08059e5c
	ldr		r2, _08059e58
	add		r0, r5, r2
	add		r0, r4, r0
	add		r2, r0, r6
_08059e02:
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	add		r3, #0x1
	cmp		r3, #0x3
	ble		_08059e02
	add		r1, r4, r5
	add		r1, r3, r1
	ldr		r2, _08059e58
	add		r0, r6, r2
	add		r0, r0, r1
	strb	r7, [r0, #0x0]
_08059e1c:
	ldr		r0, _08059e60
	add		r0, r8
	add		r0, r6, r0
	add		r1, r5, #0x0
	bl		getMgbUnk1InUnk14FromSaveByOffset
	cmp		r0, #0x0
	bne		_08059e42
	mov		r1, #0x0
	mov		r3, #0xf
	mov		r2, r8
	add		r0, r6, r2
	ldr		r2, _08059e64
	add		r0, r0, r2
_08059e38:
	strb	r1, [r0, #0x0]
	sub		r0, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08059e38
_08059e42:
	mov		r5, r9
	cmp		r5, #0x2
	ble		_08059dd6
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08059e54:	.4byte 0x0203EBE0
_08059e58:	.4byte 0x00007DE4
_08059e5c:	.4byte 0x0810f028
_08059e60:	.4byte 0x00007DB4
_08059e64:	.4byte 0x00007DC3
	thumb_func_end sub_08059dc8

	thumb_func_start sub_08059e68
sub_08059e68:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, _08059ec4
	ldr		r1, _08059ec8
	ldr		r2, _08059ecc
	add		r0, r5, #0x0
	bl		sub_0806927c
	ldr		r0, _08059ed0
	ldr		r3, [r0, #0x0]
	asr		r0, r4, #0x14
	mov		r2, #0xf
	and		r0, r2
	ldr		r1, _08059ed4
	ldr		r1, [r1, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	strh	r0, [r3, #0xc]
	asr		r0, r4, #0x10
	and		r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	strh	r0, [r3, #0xe]
	asr		r0, r4, #0x8
	and		r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	strh	r0, [r3, #0x12]
	asr		r0, r4, #0x4
	and		r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	strh	r0, [r3, #0x14]
	and		r4, r2
	lsl		r4, r4, #0x1
	add		r4, r4, r1
	ldrh	r0, [r4, #0x0]
	strh	r0, [r3, #0x16]
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_08059ec4:	.4byte 0x0203EBF0
_08059ec8:	.4byte 0x0810de08
_08059ecc:	.4byte 0x0000015F
_08059ed0:	.4byte 0x0203EF54
_08059ed4:	.4byte 0x0203EF50
	thumb_func_end sub_08059e68

	thumb_func_start sub_08059ed8
sub_08059ed8:
	add		r1, r0, #0x0
	sub		r0, #0x30
	cmp		r0, #0x9
	bls		_08059efc
	add		r0, r1, #0x0
	sub		r0, #0x61
	cmp		r0, #0x5
	bhi		_08059eec
	add		r0, #0xa
	b		_08059efc
_08059eec:
	add		r0, r1, #0x0
	sub		r0, #0x41
	cmp		r0, #0x5
	bls		_08059ef8
	mov		r0, #0x0
	b		_08059efc
_08059ef8:
	add		r0, r1, #0x0
	sub		r0, #0x37
_08059efc:
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08059ed8

	thumb_func_start sub_08059f00
sub_08059f00:
	push	{ r4, r5, r6, lr }
	add		r4, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	ldr		r0, _08059f30
	ldr		r5, [r0, #0x0]
	ldr		r0, _08059f34
	add		r1, r5, r0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_08059f14:
	bl		sub_0802983c
	bl		_UpdateGame
	cmp		r4, #0x0
	beq		_08059f38
	ldr		r1, _08059f34
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bgt		_08059f38
	mov		r0, #0x0
	b		_08059f4a

.align 2, 0
.pool

_08059f30:	.4byte 0x0203EBE0
_08059f34:	.4byte 0x00005F10

_08059f38:
	add		r0, r6, #0x0
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_08059f14
	bl		sub_08026f7c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
_08059f4a:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08059f00

	thumb_func_start sub_08059f50
sub_08059f50:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r1, r0, #0x0
	cmp		r0, #0x20
	beq		_08059f94
	cmp		r0, #0x20
	bgt		_08059f6e
	cmp		r0, #0x10
	beq		_08059fb2
	b		_08059fce
_08059f6e:
	cmp		r1, #0x40
	beq		_08059f78
	cmp		r1, #0x80
	beq		_08059f86
	b		_08059fce
_08059f78:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x4
	ldrsb	r1, [r0, r1]
	b		_08059fa0
_08059f86:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x5
	ldrsb	r1, [r0, r1]
	b		_08059fa0
_08059f94:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x6
	ldrsb	r1, [r0, r1]
_08059fa0:
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08059fce
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
	b		_08059fce
_08059fb2:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	mov		r1, #0x7
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08059fce
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
_08059fce:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08059f50

	thumb_func_start sub_08059fd4
sub_08059fd4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldrb	r0, [r4, #0x3]
	sub		r2, r0, #0x1
	mov		r1, #0x1
	ldrb	r5, [r4, #0x2]
	cmp		r1, r5
	bge		_0805a00c
	mov		r0, #0x0
	ldrsh	r3, [r4, r0]
	mov		r0, #0x3
	and		r3, r0
	ldr		r7, _08059ff8
	ldr		r6, _08059ffc
_08059ff0:
	cmp		r3, #0x0
	beq		_0805a000
	add		r0, r1, r7
	b		_0805a002

_08059ff8:	.4byte 0x0810efd5
_08059ffc:	.4byte 0x0810efe2

_0805a000:
	add		r0, r1, r6
_0805a002:
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, #0x1
	cmp		r1, r5
	blt		_08059ff0
_0805a00c:
	mov		r1, #0xfa
	lsl		r1, r1, #0x3
	mov		r3, #0x0
	ldrsh	r0, [r4, r3]
	cmp		r1, r0
	bge		_0805a03c
	mov		r6, #0x3
	ldr		r5, _0805a030
	mov		r4, #0xb7
	lsl		r4, r4, #0x1
	add		r3, r0, #0x0
_0805a022:
	add		r0, r1, #0x0
	and		r0, r6
	cmp		r0, #0x0
	beq		_0805a034
	add		r2, r2, r5
	b		_0805a036

.align 2, 0
.pool

_0805a030:	.4byte 0x0000016D

_0805a034:
	add		r2, r2, r4
_0805a036:
	add		r1, #0x1
	cmp		r1, r3
	blt		_0805a022
_0805a03c:
	add		r0, r2, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x5A044, 0x18
	thumb_func_end sub_08059fd4

	thumb_func_start sub_0805a05c
sub_0805a05c:
	add		r1, r0, #0x0
	cmp		r1, #0x0
	ble		_0805a0da
	cmp		r1, #0x9
	ble		_0805a0da
	cmp		r1, #0x63
	bgt		_0805a06e
	mov		r2, #0x2
	b		_0805a0dc
_0805a06e:
	ldr		r0, _0805a078
	cmp		r1, r0
	bgt		_0805a07c
	mov		r2, #0x3
	b		_0805a0dc

_0805a078:	.4byte 0x000003E7

_0805a07c:
	ldr		r0, _0805a088
	cmp		r1, r0
	bgt		_0805a08c
	mov		r2, #0x4
	b		_0805a0dc

.align 2, 0
.pool

_0805a088:	.4byte 0x0000270F

_0805a08c:
	ldr		r0, _0805a098
	cmp		r1, r0
	bgt		_0805a09c
	mov		r2, #0x5
	b		_0805a0dc

.align 2, 0
.pool

_0805a098:	.4byte 0x0001869F

_0805a09c:
	ldr		r0, _0805a0a8
	cmp		r1, r0
	bgt		_0805a0ac
	mov		r2, #0x6
	b		_0805a0dc

.align 2, 0
.pool

_0805a0a8:	.4byte 0x000F423F

_0805a0ac:
	ldr		r0, _0805a0b8
	cmp		r1, r0
	bgt		_0805a0bc
	mov		r2, #0x7
	b		_0805a0dc

.align 2, 0
.pool

_0805a0b8:	.4byte 0x0098967F

_0805a0bc:
	ldr		r0, _0805a0c8
	cmp		r1, r0
	bgt		_0805a0cc
	mov		r2, #0x8
	b		_0805a0dc

.align 2, 0
.pool

_0805a0c8:	.4byte 0x05F5E0FF

_0805a0cc:
	ldr		r0, _0805a0e8
	mov		r2, #0xa
	cmp		r1, r0
	bgt		_0805a0d6
	mov		r2, #0x9
_0805a0d6:
	cmp		r2, #0x0
	bgt		_0805a0dc
_0805a0da:
	mov		r2, #0x1
_0805a0dc:
	cmp		r2, #0x5
	ble		_0805a0e2
	mov		r2, #0x5
_0805a0e2:
	add		r0, r2, #0x0
	bx		lr

.align 2, 0
.pool

_0805a0e8:	.4byte 0x3B9AC9FF
	thumb_func_end sub_0805a05c

	thumb_func_start sub_0805a0ec
sub_0805a0ec:
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bgt		_0805a0f4
	mov		r1, #0x1
_0805a0f4:
	cmp		r1, #0x5
	ble		_0805a0fa
	mov		r1, #0x5
_0805a0fa:
	ldr		r0, _0805a104
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	bx		lr

_0805a104:	.4byte 0x0810f02c
	thumb_func_end sub_0805a0ec

	thumb_func_start sub_0805a108
sub_0805a108:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, #0x0
	cmp		r0, #0x1
	beq		_0805a12c
	cmp		r0, #0x1
	bgt		_0805a11e
	cmp		r0, #0x0
	beq		_0805a124
	b		_0805a15c
_0805a11e:
	cmp		r1, #0x2
	beq		_0805a148
	b		_0805a15c
_0805a124:
	ldr		r4, _0805a128
	b		_0805a12e

_0805a128:	.4byte 0x08094a9c

_0805a12c:
	ldr		r4, _0805a144
_0805a12e:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	b		_0805a15c

.align 2, 0
.pool

_0805a144:	.4byte 0x08094d0c

_0805a148:
	ldr		r4, _0805a16c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
_0805a15c:
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_080281fc
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0805a16c:	.4byte 0x08094f70
	thumb_func_end sub_0805a108

	thumb_func_start sub_0805a170
sub_0805a170:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	bl		sub_08057370
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_08057378
	add		r5, r0, #0x0
	add		r5, #0x8
	lsl		r4, r4, #0x18
	asr		r4, r4, #0x18
	cmp		r4, #0x0
	bge		_0805a194
	mov		r0, #0x0
	b		_0805a1c2
_0805a194:
	mov		r0, #0x0
	bl		sub_08057378
	add		r0, r5, #0x4
	mov		r1, #0x0
	bl		getMgbUnk4FromSave
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x20
	orr		r0, r1
	strb	r0, [r5, #0x0]
	mov		r0, #0xbf
	lsl		r0, r0, #0x4
	add		r2, r6, r0
	mov		r0, #0x1
	lsl		r0, r4
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	bl		sub_08014ccc
	mov		r0, #0x1
_0805a1c2:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805a170

	thumb_func_start sub_0805a1c8
sub_0805a1c8:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldrb	r1, [r4, #0x0]
	lsl		r1, r1, #0x18
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	add		r1, r1, r0
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	add		r1, r1, r0
	add		r4, #0x1
	str		r1, [r5, #0x0]
	ldrb	r0, [r4, #0x0]
	strb	r0, [r5, #0xb]
	add		r4, #0x1
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08057fd8
	add		r4, #0x5
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x8
	add		r4, #0x1
	ldrb	r1, [r4, #0x0]
	orr		r0, r1
	add		r4, #0x1
	strh	r0, [r5, #0x4]
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08058004
	add		r4, #0x10
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805a1c8

	thumb_func_start sub_0805a21c
sub_0805a21c:
	push	{ r4, lr }
	add		r3, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r4, r1, #0x18
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	ldrb	r0, [r3, #0x0]
	lsl		r0, r0, #0x8
	add		r3, #0x1
	ldrb	r1, [r3, #0x0]
	orr		r0, r1
	add		r3, #0x1
	cmp		r0, #0x0
	beq		_0805a262
	cmp		r2, #0xa
	bhi		_0805a260
	ldr		r0, _0805a25c
	lsl		r1, r4, #0x4
	sub		r1, r1, r4
	lsl		r1, r1, #0x7
	add		r1, r1, r0
	lsl		r0, r2, #0x5
	mov		r2, #0xb0
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	add		r1, r1, r0
	add		r0, r3, #0x0
	bl		sub_0805a1c8
	add		r3, r0, #0x0
	b		_0805a262

.align 2, 0
.pool

_0805a25c:	.4byte 0x02033780

_0805a260:
	add		r3, #0x1d
_0805a262:
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_0805a21c

	thumb_func_start sub_0805a26c
sub_0805a26c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, #0x3
	mov		r1, #0xc
	mov		r2, #0x1a
	mov		r3, #0x11
	bl		sub_08060490
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08013d0c
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0805a26c

	thumb_func_start sub_0805a28c
sub_0805a28c:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0805a2ac
	ldr		r4, [r0, #0x0]
	ldr		r0, [r4, #0x2c]
	add		r2, r0, #0x1
	str		r2, [r4, #0x2c]
	ldr		r0, [r4, #0x30]
	cmp		r0, #0x1
	beq		_0805a2ca
	cmp		r0, #0x1
	bgt		_0805a2b0
	cmp		r0, #0x0
	beq		_0805a2ba
	b		_0805a2f8

.align 2, 0
.pool

_0805a2ac:	.4byte 0x0203EBE0

_0805a2b0:
	cmp		r0, #0x2
	beq		_0805a2da
	cmp		r0, #0x3
	beq		_0805a2ea
	b		_0805a2f8
_0805a2ba:
	asr		r0, r2, #0x2
	ldrh	r1, [r4, #0x4]
	strh	r0, [r4, #0x4]
	neg		r0, r2
	asr		r0, r0, #0x2
	ldrh	r1, [r4, #0x6]
	strh	r0, [r4, #0x6]
	b		_0805a2f8
_0805a2ca:
	asr		r0, r2, #0x2
	ldrh	r1, [r4, #0xa]
	strh	r0, [r4, #0xa]
	neg		r0, r2
	asr		r0, r0, #0x2
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	b		_0805a2f8
_0805a2da:
	asr		r0, r2, #0x2
	ldrh	r1, [r4, #0x10]
	strh	r0, [r4, #0x10]
	neg		r0, r2
	asr		r0, r0, #0x2
	ldrh	r1, [r4, #0x12]
	strh	r0, [r4, #0x12]
	b		_0805a2f8
_0805a2ea:
	asr		r0, r2, #0x2
	ldrh	r1, [r4, #0x16]
	strh	r0, [r4, #0x16]
	neg		r0, r2
	asr		r0, r0, #0x2
	ldrh	r1, [r4, #0x18]
	strh	r0, [r4, #0x18]
_0805a2f8:
	mov		r1, #0x80
	lsl		r1, r1, #0x13
	ldrh	r0, [r4, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x8
	ldrh	r0, [r4, #0x2]
	strh	r0, [r1, #0x0]
	add		r1, #0x8
	ldrh	r0, [r4, #0x4]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x6]
	strh	r0, [r1, #0x0]
	sub		r1, #0x8
	ldrh	r0, [r4, #0x8]
	strh	r0, [r1, #0x0]
	add		r1, #0xa
	ldrh	r0, [r4, #0xa]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0xc]
	strh	r0, [r1, #0x0]
	sub		r1, #0xa
	ldrh	r0, [r4, #0xe]
	strh	r0, [r1, #0x0]
	add		r1, #0xc
	ldrh	r0, [r4, #0x10]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x12]
	strh	r0, [r1, #0x0]
	sub		r1, #0xc
	ldrh	r0, [r4, #0x14]
	strh	r0, [r1, #0x0]
	add		r1, #0xe
	ldrh	r0, [r4, #0x16]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x18]
	strh	r0, [r1, #0x0]
	add		r1, #0x32
	ldrh	r0, [r4, #0x1a]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x1c]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x1e]
	strh	r0, [r1, #0x0]
	sub		r1, #0x14
	ldrh	r0, [r4, #0x20]
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	ldrh	r0, [r4, #0x22]
	strh	r0, [r1, #0x0]
	sub		r1, #0x2
	ldrh	r0, [r4, #0x24]
	strh	r0, [r1, #0x0]
	add		r1, #0x4
	ldrh	r0, [r4, #0x26]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x28]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r4, #0x2a]
	strh	r0, [r1, #0x0]
	ldr		r0, _0805a3dc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805a3ca
	ldr		r0, _0805a3e0
	ldr		r1, [r0, #0x0]
	mov		r0, #0x1f
	and		r1, r0
	ldr		r5, _0805a3e4
	cmp		r1, #0x13
	ble		_0805a3a2
	ldr		r5, _0805a3e8
	cmp		r1, #0x17
	ble		_0805a3a2
	ldr		r5, _0805a3ec
	cmp		r1, #0x1b
	bgt		_0805a3a2
	ldr		r5, _0805a3f0
_0805a3a2:
	cmp		r1, #0x14
	bne		_0805a3ac
	mov		r0, #0xc6
	bl		sub_0807073c
_0805a3ac:
	mov		r1, #0x0
	ldr		r0, _0805a3f4
	str		r0, [sp, #0x8]
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r1, _0805a3e0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0805a3ca:
	ldr		r0, _0805a3f8
	add		r1, r4, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0805a3dc:	.4byte 0x0203EF4C
_0805a3e0:	.4byte 0x0203EF48
_0805a3e4:	.4byte 0x080e48d0
_0805a3e8:	.4byte 0x080e48e0
_0805a3ec:	.4byte 0x080e4900
_0805a3f0:	.4byte 0x080e48f0
_0805a3f4:	.4byte 0x007C00D0
_0805a3f8:	.4byte 0x00005F10
	thumb_func_end sub_0805a28c

	thumb_func_start _OnSelectMGBMenu
_OnSelectMGBMenu: @ 0805a3fc
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	ldr		r2, _0805a55c
	ldrh		r1, [r2, #0x16]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	mov		r8, r0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0805a41c
	mov		r0, #0x0
	strh		r0, [r2, #0x16]
	bl		sub_08027744
_0805a41c:
	mov		r0, sp
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	ldr		r1, _0805a560
	str		r0, [r1, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x13
	str		r0, [r1, #0x4]
	ldr		r0, _0805a564
	str		r0, [r1, #0x8]
	ldr		r0, [r1, #0x8]
	ldr		r1, _0805a568
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _0805a56c
	mov		r0, #0x1
	bl		sub_080281c4
	ldr		r6, _0805a570
	ldr		r1, _0805a574
	add		r5, r6, r1
	ldr		r1, _0805a578
	add		r0, r5, #0x0
	mov		r2, r8
	bl		sub_08027188
	ldr		r2, _0805a57c
	add		r0, r5, #0x0
	mov		r1, #0x1
	bl		sub_080271b8
	add		r7, r0, #0x0
	ldr		r0, _0805a580
	str		r7, [r0, #0x0]
	bl		sub_080297c8
	bl		sub_08057fa8
	ldr		r1, _0805a584
	add		r0, r7, r1
	bl		clearMGBUserInfoObject // sub_08060f70
	add		r0, r7, #0x0
	add		r0, #0x39
	mov		r5, #0x0
	strb	r4, [r0, #0x0]
	sub		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, #0x2
	strb	r4, [r0, #0x0]
	add		r0, #0x3
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	bl		clearMgbPassword
	ldr		r1, _0805a588
	add		r0, r7, r1
	str		r5, [r0, #0x0]
	add		r1, #0x4
	add		r0, r7, r1
	str		r5, [r0, #0x0]
	sub		r1, #0xf0
	add		r0, r7, r1
	str		r5, [r0, #0x0]
	add		r1, #0xb
	add		r0, r7, r1
	strb	r4, [r0, #0x0]
	ldrh	r0, [r7, #0x2]
	ldr		r0, _0805a58c
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x8]
	ldr		r0, _0805a590
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
	ldrh	r0, [r7, #0x6]
	strh	r5, [r7, #0x6]
	ldrh	r0, [r7, #0x6]
	ldrh	r1, [r7, #0x4]
	strh	r0, [r7, #0x4]
	ldrh	r0, [r7, #0xc]
	strh	r5, [r7, #0xc]
	ldrh	r0, [r7, #0xc]
	ldrh	r1, [r7, #0xa]
	strh	r0, [r7, #0xa]
	ldrh	r0, [r7, #0x12]
	strh	r5, [r7, #0x12]
	ldrh	r0, [r7, #0x12]
	ldrh	r1, [r7, #0x10]
	strh	r0, [r7, #0x10]
	ldrh	r0, [r7, #0x18]
	strh	r5, [r7, #0x18]
	ldrh	r0, [r7, #0x18]
	ldrh	r1, [r7, #0x16]
	strh	r0, [r7, #0x16]
	str		r5, [r7, #0x2c]
	mov		r0, #0x2
	str		r0, [r7, #0x30]
	ldrh	r0, [r7, #0x2a]
	ldr		r0, _0805a594
	strh	r0, [r7, #0x2a]
	ldrh	r1, [r7, #0x0]
	mov		r0, r8
	orr		r0, r1
	ldrh	r1, [r7, #0x0]
	strh	r0, [r7, #0x0]
	ldr		r4, _0805a598
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r4, [r6, #0xc]
	mov		r0, #0x2
	ldr		r1, _0805a59c
	bl		sub_0807df78
	ldr		r0, _0805a5a0
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
	mov		r0, #0x1
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805a55c:	.4byte 0x03003000
_0805a560:	.4byte DMA3SourceAddress
_0805a564:	.4byte 0x8100C000
_0805a568:	.4byte 0x06001000
_0805a56c:	.4byte 0x06002000
_0805a570:	.4byte RunGameLogic_CallBack
_0805a574:	.4byte 0x00000704
_0805a578:	.4byte 0x0202A400
_0805a57c:	.4byte 0x00007EA0
_0805a580:	.4byte 0x0203EBE0
_0805a584:	.4byte 0x00005F14
_0805a588:	.4byte 0x00006B28
_0805a58c:	.4byte 0x00004208
_0805a590:	.4byte 0x00004409
_0805a594:	.4byte 0x0000303F
_0805a598:	.4byte 0x0805A28D
_0805a59c:	.4byte 0x00010001
_0805a5a0:	.4byte 0x0805A5A5
	thumb_func_end _OnSelectMGBMenu

	thumb_func_start _PrepareMGBMenu
_PrepareMGBMenu: @ 805a5a4
	push	{ r4, r5, r6, lr }
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0805a7b0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0805a7b4
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0805a7b8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r0, _0805a7bc
	ldr		r1, _0805a7c0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7c4
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7c8
	ldr		r1, _0805a7cc
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7d0
	ldr		r1, _0805a7d4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7d8
	ldr		r1, _0805a7dc
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7e0
	ldr		r1, _0805a7e4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a7e8
	ldr		r1, _0805a7ec
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_0806016c
	bl		sub_08029f34
	ldr		r1, _0805a7f0
	ldr		r2, _0805a7f4
	ldr		r3, _0805a7f8
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0805a7fc
	ldr		r2, _0805a800
	ldr		r5, _0805a804
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		sub_08029f34
	ldr		r1, _0805a808
	ldr		r2, _0805a80c
	ldr		r6, _0805a810
	add		r3, r6, #0x0
	bl		sub_08029ee4
	ldr		r0, _0805a814
	ldr		r1, _0805a818
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a81c
	ldr		r1, _0805a820
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a824
	ldr		r1, _0805a828
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _0805a82c
	ldr		r1, _0805a830
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _0805a834
	ldr		r1, _0805a838
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _0805a83c
	ldr		r1, _0805a840
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a844
	ldr		r1, _0805a848
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a84c
	ldr		r1, _0805a850
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805a854
	ldr		r4, _0805a858
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a85c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a860
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a864
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a868
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a86c
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a870
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r4, r2
	ldr		r2, _0805a874
	ldr		r5, _0805a878
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a87c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a880
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a884
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a888
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a88c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a890
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0805a894
	ldr		r2, _0805a898
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805a7b0:	.4byte 0x08092918
_0805a7b4:	.4byte 0x080cdd3c
_0805a7b8:	.4byte 0x0809866c
_0805a7bc:	.4byte 0x08098b0c
_0805a7c0:	.4byte 0x06004000
_0805a7c4:	.4byte 0x080993b8
_0805a7c8:	.4byte 0x080994bc
_0805a7cc:	.4byte 0x06000800
_0805a7d0:	.4byte 0x080c558c
_0805a7d4:	.4byte 0x06008000
_0805a7d8:	.4byte 0x080c5bc0
_0805a7dc:	.4byte 0x06009800
_0805a7e0:	.4byte 0x080c6300
_0805a7e4:	.4byte 0x0600B000
_0805a7e8:	.4byte 0x08092aa8
_0805a7ec:	.4byte 0x0600C000
_0805a7f0:	.4byte 0x080c87cc
_0805a7f4:	.4byte 0x0600D800
_0805a7f8:	.4byte 0x80000600
_0805a7fc:	.4byte 0x080c7bcc
_0805a800:	.4byte 0x0600E400
_0805a804:	.4byte 0x80000400
_0805a808:	.4byte 0x0807f190
_0805a80c:	.4byte 0x0600EC00
_0805a810:	.4byte 0x80000200
_0805a814:	.4byte 0x0809301c
_0805a818:	.4byte 0x0600F400
_0805a81c:	.4byte 0x080cf5d0
_0805a820:	.4byte 0x06007C00
_0805a824:	.4byte 0x08094580
_0805a828:	.4byte 0x06011000
_0805a82c:	.4byte 0x080cec7c
_0805a830:	.4byte 0x06014C00
_0805a834:	.4byte 0x080cf4c0
_0805a838:	.4byte 0x060153C0
_0805a83c:	.4byte 0x080cf428
_0805a840:	.4byte 0x06014CE0
_0805a844:	.4byte 0x080cf4dc
_0805a848:	.4byte 0x06014A00
_0805a84c:	.4byte 0x080cf3dc
_0805a850:	.4byte 0x06014F60
_0805a854:	.4byte 0x080ce26c
_0805a858:	.4byte 0x02010400
_0805a85c:	.4byte 0x06015C00
_0805a860:	.4byte 0x080ce43c
_0805a864:	.4byte 0x06016400
_0805a868:	.4byte 0x080ce524
_0805a86c:	.4byte 0x06016C00
_0805a870:	.4byte 0x080d4200
_0805a874:	.4byte 0x06014800
_0805a878:	.4byte 0x80000100
_0805a87c:	.4byte 0x080ce690
_0805a880:	.4byte 0x06017000
_0805a884:	.4byte 0x080ce8a8
_0805a888:	.4byte 0x06017800
_0805a88c:	.4byte 0x080ce918
_0805a890:	.4byte 0x06017C00
_0805a894:	.4byte _LoadMGBBackGround
_0805a898:	.4byte RunGameLogic_CallBack
	thumb_func_end _PrepareMGBMenu

	thumb_func_start _LoadMGBBackGround
_LoadMGBBackGround: @ 0805a89c
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0805a8e0
	ldr		r4, [r0, #0x0]
	mov		r6, #0x0
	ldr		r2, _0805a8e4
	ldr		r1, [r2, #0x0]
	ldr		r0, _0805a8e8
	cmp		r1, r0
	bne		_0805a91a
	ldr		r0, _0805a8ec
	mov		r8, r0
	add		r5, r2, #0x0
	ldr		r7, _0805a8f0
_0805a8bc:
	bl		_UpdateGame
	add		r6, #0x1
	cmp		r6, #0x10
	bgt		_0805a8f4
	ldrh	r0, [r4, #0x1a]
	mov		r0, #0xbf
	strh	r0, [r4, #0x1a]
	lsl		r0, r6, #0x4
	neg		r0, r0
	cmp		r0, #0x0
	bge		_0805a8d6
	add		r0, #0xf
_0805a8d6:
	asr		r0, r0, #0x4
	add		r0, #0x10
	ldrh	r1, [r4, #0x1e]
	strh	r0, [r4, #0x1e]
	b		_0805a912

_0805a8e0:	.4byte 0x0203EBE0
_0805a8e4:	.4byte RunGameLogic_CallBack
_0805a8e8:	.4byte 0x0805A89D
_0805a8ec:	.4byte _TryLoadMGBMainMenu + 1
_0805a8f0:	.4byte 0x00000844

_0805a8f4:
	ldrh	r0, [r4, #0x1a]
	strh	r7, [r4, #0x1a]
	ldrh	r0, [r4, #0x1c]
	ldr		r0, _0805a928
	strh	r0, [r4, #0x1c]
	mov		r0, #0x25
	bl		sub_0807073c
	mov		r0, r8
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r5, #0x8]
_0805a912:
	ldr		r1, [r5, #0x0]
	ldr		r0, _0805a92c
	cmp		r1, r0
	beq		_0805a8bc
_0805a91a:
	mov		r0, #0x1
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805a928:	.4byte 0x00001008
_0805a92c:	.4byte 0x0805A89D
	thumb_func_end _LoadMGBBackGround

	thumb_func_start _TryLoadMGBMainMenu
_TryLoadMGBMainMenu: @ 0805a930
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x54
	ldr		r0, _0805a9d4
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	bl		sub_08060bf4
	add		r5, r0, #0x0
	bl		mgbLoadMGBDataToEWRAM
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		getMgbNicknameFromMGBStruct
	mov		r8, r0
	add		r0, r5, #0x0
	bl		getMgbPasswordFromMGBStruct
	mov		r10, r0
	add		r0, r5, #0x0
	bl		getMgbPhoneNumberFromMGBStruct_2
	str		r0, [sp, #0x40]
	add		r0, r5, #0x0
	bl		getMgbZipcodeFromMGBStruct_2
	str		r0, [sp, #0x44]
	add		r0, r5, #0x0
	bl		getMgbPrefectureIdFromMGBStruct
	str		r0, [sp, #0x48]
	add		r0, r5, #0x0
	bl		getMgbAddressFromMGBStruct
	str		r0, [sp, #0x4C]
	add		r0, r5, #0x0
	bl		getMgbRealNameFromMGBStruct
	str		r0, [sp, #0x50]
	bl		sub_08057370
	add		r7, r0, #0x0
	mov		r6, #0x0
	add		r0, r4, #0x0
	bl		getMgbUn2FromSave
	cmp		r0, #0x0
	bne		_0805a9a0
	mov		r6, #0x1
	add		r0, r5, #0x0
	bl		clearString
_0805a9a0:
	mov		r0, r8
	bl		getMgbNicknameFromSave
	cmp		r0, #0x0
	bne		_0805a9b4
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		clearMgbNickname
_0805a9b4:
	ldr		r1, _0805a9d8
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805a9dc
	mov		r0, r10
	bl		getMgbPasswordFromSave
	cmp		r0, #0x0
	bne		_0805a9e2
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		clearMgbPassword
	b		_0805a9e2

_0805a9d4:	.4byte 0x0203EBE0
_0805a9d8:	.4byte 0x00000AE5

_0805a9dc:
	add		r0, r5, #0x0
	bl		clearMgbPassword
_0805a9e2:
	ldr		r0, [sp, #0x40]
	bl		getMgbPhoneNumberFromSave
	cmp		r0, #0x0
	bne		_0805a9f6
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		invalidateMgbPhoneNumber
_0805a9f6:
	ldr		r0, [sp, #0x44]
	bl		getMgbZipcodeFromSave
	cmp		r0, #0x0
	bne		_0805aa0a
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		invalidateMgbZipcode
_0805aa0a:
	ldr		r0, [sp, #0x48]
	bl		getMgbPrefectureIdFromSave
	cmp		r0, #0x0
	bne		_0805aa1e
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		invalidateMgbPrefectureId
_0805aa1e:
	ldr		r0, [sp, #0x4C]
	bl		getMgbAddressFromSave
	cmp		r0, #0x0
	bne		_0805aa32
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		clearMgbAddress
_0805aa32:
	ldr		r0, [sp, #0x50]
	bl		getMgbRealNameFromSave
	cmp		r0, #0x0
	bne		_0805aa46
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		clearMgbRealName
_0805aa46:
	bl		sub_08059dc8 @ Password check or???
	cmp		r6, #0x0
	beq		_0805aa78
	ldr		r0, _0805aa68 @ _LoadMGBRegistrationMenu
	ldr		r2, _0805aa6c @ RunGameLogic_CallBack
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	ldr		r1, _0805aa70
	ldr		r0, _0805aa74
	str		r1, [r0, #0x0]
	b		_0805addc

.align 2, 0
.pool

_0805aa68:	.4byte _LoadMGBRegistrationMenu
_0805aa6c:	.4byte RunGameLogic_CallBack
_0805aa70:	.4byte _TryLoadMGBMainMenu + 1
_0805aa74:	.4byte 0x0203ED50

_0805aa78:
	add		r0, r5, #0x0
	bl		clearMgbPassword
	ldr		r1, _0805ab70
	add		r1, r9
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r5, r9
	add		r5, #0x49
	strb	r6, [r5, #0x0]
	ldr		r4, _0805ab74
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r1, _0805ab78
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ab7c
	add		r0, r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r4, _0805ab80
	add		r0, r4, #0x0
	strh	r0, [r3, #0x2e]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805ab84
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r4, #0xb7
	lsl		r4, r4, #0x1
	add		r1, r3, r4
	ldr		r2, _0805ab88
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r10, r5
	ldr		r0, _0805ab8c
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805aaea:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805aaea
	ldr		r4, _0805ab90
	add		r1, r4, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805ab02:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805ab02
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0805ab94
	ldr		r1, _0805ab98
	str		r0, [r1, #0x0]
	ldr		r2, _0805ab9c
	ldr		r1, [r2, #0x0]
	cmp		r1, r0
	beq		_0805ab24
	b		_0805addc
_0805ab24:
	mov		r0, #0x39
	add		r9, r0
	mov		r1, #0xf
	mov		r8, r1
	mov		r7, #0x0
	add		r6, r2, #0x0
_0805ab30:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r3, r8
	str		r3, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r9
	ldr		r1, _0805aba0
	mov		r3, #0x4
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805abe8
	ldr		r0, _0805aba4
	mov		r4, #0xb4
	lsl		r4, r4, #0x8
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805abac
	ldr		r5, _0805aba8
	b		_0805abae

_0805ab70:	.4byte 0x00006B74
_0805ab74:	.4byte 0x08094994
_0805ab78:	.4byte 0x08112540
_0805ab7c:	.4byte 0x0000F20D
_0805ab80:	.4byte 0x0000F60D
_0805ab84:	.4byte 0x0000FA0D
_0805ab88:	.4byte 0x0000FE0D
_0805ab8c:	.4byte 0x0000F20E
_0805ab90:	.4byte 0x0000F22D
_0805ab94:	.4byte _TryLoadMGBMainMenu + 1
_0805ab98:	.4byte 0x0203ED54
_0805ab9c:	.4byte RunGameLogic_CallBack
_0805aba0:	.4byte 0x0810f08c
_0805aba4:	.4byte 0x02033780
_0805aba8:	.4byte 0x0810f074

_0805abac:
	ldr		r5, _0805abe0
_0805abae:
	ldr		r0, [r5, #0x8]
	mov		r4, #0x1
	neg		r4, r4
	cmp		r0, r4
	beq		_0805abc0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	bl		sub_0807073c
_0805abc0:
	ldr		r1, [r5, #0x0]
	cmp		r1, r4
	beq		_0805abca
	ldr		r0, _0805abe4
	str		r1, [r0, #0x0]
_0805abca:
	ldr		r0, [r5, #0x4]
	cmp		r0, r4
	beq		_0805ac58
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
	b		_0805ac58

.align 2, 0
.pool

_0805abe0:	.4byte 0x0810f080
_0805abe4:	.4byte 0x0203ED50

_0805abe8:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805ac58
	add		r1, sp, #0xc
	ldr		r0, _0805ac98
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	mov		r0, r9
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r4, r0, #0x0
	add		r4, sp
	add		r4, #0xc
	ldr		r0, [r4, #0x8]
	mov		r5, #0x1
	neg		r5, r5
	cmp		r0, r5
	beq		_0805ac2a
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	bl		sub_0807073c
_0805ac2a:
	ldr		r1, [r4, #0x0]
	cmp		r1, r5
	beq		_0805ac34
	ldr		r0, _0805ac9c
	str		r1, [r0, #0x0]
_0805ac34:
	ldr		r0, [r4, #0x4]
	cmp		r0, r5
	beq		_0805ac46
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
_0805ac46:
	mov		r1, #0x0
	mov		r2, r9
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	cmp		r0, #0x2
	bne		_0805ac54
	mov		r1, #0x1
_0805ac54:
	mov		r3, r10
	strb	r1, [r3, #0x0]
_0805ac58:
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x1
	add		r5, sp, #0x3c
	mov		r4, #0x0
_0805ac6a:
	add		r2, r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	add		r0, #0x40
	mov		r1, #0x3
_0805ac74:
	strh	r4, [r0, #0x0]
	add		r0, #0x40
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0805ac74
	add		r0, r2, #0x0
	cmp		r0, #0x17
	blt		_0805ac6a
	mov		r0, r9
	mov		r4, #0x0
	ldrsb	r4, [r0, r4]
	cmp		r4, #0x1
	beq		_0805ace4
	cmp		r4, #0x1
	bgt		_0805aca0
	cmp		r4, #0x0
	beq		_0805acaa
	b		_0805adb8

_0805ac98:	.4byte 0x0810f0ac
_0805ac9c:	.4byte 0x0203ED50

_0805aca0:
	cmp		r4, #0x2
	beq		_0805ad2c
	cmp		r4, #0x3
	beq		_0805ad78
	b		_0805adb8
_0805acaa:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805ace0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	b		_0805ad14

.align 2, 0
.pool

_0805ace0:	.4byte 0x0810f0dc

_0805ace4:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r4, r8
	str		r4, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805ad24
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r4, [sp, #0x4]
_0805ad14:
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0805ad28
	bl		sub_08013e9c
	b		_0805adb8

_0805ad24:	.4byte 0x0810f13c
_0805ad28:	.4byte 0x0810f10c

_0805ad2c:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805ad70
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0805ad74
	bl		sub_08013e9c
	b		_0805adb8

.align 2, 0
.pool

_0805ad70:	.4byte 0x0810f16c
_0805ad74:	.4byte 0x0810f19c

_0805ad78:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805adf0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r4, r8
	str		r4, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0805adf4
	bl		sub_08013e9c
_0805adb8:
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r0, _0805adf8
	str		r0, [sp, #0x3C]
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _0805adfc
	add		r1, r5, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r1, [r6, #0x0]
	ldr		r0, _0805ae00
	cmp		r1, r0
	bne		_0805addc
	b		_0805ab30
_0805addc:
	mov		r0, #0x1
	add		sp, #0x54
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805adf0:	.4byte 0x0810f1cc
_0805adf4:	.4byte 0x0810f10c
_0805adf8:	.4byte 0x00140050
_0805adfc:	.4byte 0x08098498
_0805ae00:	.4byte _TryLoadMGBMainMenu + 1
	thumb_func_end _TryLoadMGBMainMenu

	thumb_func_start sub_0805ae04
sub_0805ae04:
	push	{ r4, lr }
	ldr		r1, _0805ae4c
	mov		r0, #0x3
	bl		sub_08013d0c
	ldr		r4, _0805ae50
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0xd
	mov		r1, #0x0
	bl		sub_080601b8
	cmp		r0, #0x0
	bne		_0805ae58
	ldr		r0, _0805ae54
	b		_0805ae5a

.align 2, 0
.pool

_0805ae4c:	.4byte 0x081144cc
_0805ae50:	.4byte 0x080948b0
_0805ae54:	.4byte _TryLoadMGBMainMenu + 1

_0805ae58:
	ldr		r0, _0805ae70
_0805ae5a:
	ldr		r2, _0805ae74
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805ae70:	.4byte 0x0805AE79
_0805ae74:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805ae04

	thumb_func_start sub_0805ae78
sub_0805ae78:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _0805aebc
	ldr		r4, [r0, #0x0]
	mov		r5, #0x0
	ldr		r0, _0805aec0
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2
	bl		sub_080708d4
	ldr		r2, _0805aec4
	ldr		r1, [r2, #0x0]
	ldr		r0, _0805aec8
	cmp		r1, r0
	bne		_0805aefa
	mov		r7, #0xbf
	ldr		r0, _0805aecc
	mov		r8, r0
	add		r6, r2, #0x0
_0805aea0:
	bl		_UpdateGame
	add		r5, #0x1
	cmp		r5, #0x20
	bgt		_0805aed0
	ldrh	r0, [r4, #0x1a]
	strh	r7, [r4, #0x1a]
	lsr		r0, r5, #0x1f
	add		r0, r5, r0
	asr		r0, r0, #0x1
	ldrh	r1, [r4, #0x1e]
	strh	r0, [r4, #0x1e]
	b		_0805aef2

.align 2, 0
.pool

_0805aebc:	.4byte 0x0203EBE0
_0805aec0:	.4byte 0x08124544
_0805aec4:	.4byte RunGameLogic_CallBack
_0805aec8:	.4byte 0x0805AE79
_0805aecc:	.4byte sub_080602fc

_0805aed0:
	ldrh	r0, [r4, #0x1a]
	strh	r7, [r4, #0x1a]
	ldrh	r0, [r4, #0x1e]
	mov		r0, #0x10
	strh	r0, [r4, #0x1e]
	cmp		r5, #0x3c
	ble		_0805aef0
	bl		sub_08070870
	mov		r0, r8
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
_0805aef0:
	add		r5, #0x1
_0805aef2:
	ldr		r1, [r6, #0x0]
	ldr		r0, _0805af08
	cmp		r1, r0
	beq		_0805aea0
_0805aefa:
	mov		r0, #0x1
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805af08:	.4byte 0x0805AE79
	thumb_func_end sub_0805ae78

	thumb_func_start sub_0805af0c
sub_0805af0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805b040
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	mov		r1, #0xff
	str		r1, [sp, #0x8]
	bl		clearMgbPassword
	bl		sub_08060298
	ldr		r4, _0805b044
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r1, _0805b048
	mov		r0, #0x1
	bl		sub_08013d0c
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805b04c
	add		r0, r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r1, _0805b050
	add		r0, r1, #0x0
	strh	r0, [r3, #0x2e]
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	ldr		r2, _0805b054
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805b058
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0805b05c
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805af94:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805af94
	ldr		r0, _0805b060
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805afac:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805afac
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r1, _0805b064
	add		r0, r7, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r2, _0805b068
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	ldr		r1, _0805b06c
	ldr		r0, _0805b070
	str		r1, [r0, #0x0]
	ldr		r2, _0805b074
	ldr		r1, [r2, #0x0]
	ldr		r0, _0805b078
	cmp		r1, r0
	beq		_0805afe4
	b		_0805b1f4
_0805afe4:
	add		r6, r7, #0x0
	add		r6, #0x3e
	mov		r0, #0x1
	mov		r10, r0
	mov		r8, r1
	add		r5, r2, #0x0
	mov		r1, #0x7
	mov		r9, r1
_0805aff4:
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [r7, #0x34]
	add		r0, r1, #0x0
	add		r1, #0x1
	str		r1, [r7, #0x34]
	bl		sub_08069364
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, r10
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	ldr		r1, _0805b07c
	mov		r3, #0x3
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805b088
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0805b080
	mov		r1, r8
	str		r1, [r0, #0x0]
	ldr		r0, _0805b084
	b		_0805b0c0

_0805b040:	.4byte 0x0203EBE0
_0805b044:	.4byte 0x080948b0
_0805b048:	.4byte 0x08112f2c
_0805b04c:	.4byte 0x0000F20D
_0805b050:	.4byte 0x0000F60D
_0805b054:	.4byte 0x0000FA0D
_0805b058:	.4byte 0x0000FE0D
_0805b05c:	.4byte 0x0000F20E
_0805b060:	.4byte 0x0000F22D
_0805b064:	.4byte 0x00006B6C
_0805b068:	.4byte 0x00006B70
_0805b06c:	.4byte _TryLoadMGBMainMenu
_0805b070:	.4byte 0x0203ED54
_0805b074:	.4byte RunGameLogic_CallBack
_0805b078:	.4byte 0x0805AF0D
_0805b07c:	.4byte 0x0810f1fc
_0805b080:	.4byte 0x0203ED50
_0805b084:	.4byte sub_08066db8

_0805b088:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805b178
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x1
	beq		_0805b100
	cmp		r0, #0x1
	bgt		_0805b0a4
	cmp		r0, #0x0
	beq		_0805b0aa
	b		_0805b178
_0805b0a4:
	cmp		r0, #0x2
	beq		_0805b124
	b		_0805b178
_0805b0aa:
	bl		sub_0805b20c
	cmp		r0, #0x0
	beq		_0805b0d8
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r0, _0805b0d0
	mov		r1, r8
	str		r1, [r0, #0x0]
	ldr		r0, _0805b0d4
_0805b0c0:
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r2, r9
	and		r0, r2
	strb	r0, [r5, #0x8]
	b		_0805b178

.align 2, 0
.pool

_0805b0d0:	.4byte 0x0203ED54
_0805b0d4:	.4byte sub_0805b3e0

_0805b0d8:
	mov		r0, #0x91
	bl		sub_0807073c
	ldr		r1, _0805b0f4
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	ldr		r1, _0805b0f8
	cmp		r0, #0x0
	beq		_0805b0ec
	ldr		r1, _0805b0fc
_0805b0ec:
	mov		r0, #0x2
	bl		sub_0805a26c
	b		_0805b178

_0805b0f4:	.4byte 0x00006B7C
_0805b0f8:	.4byte 0x081127e8
_0805b0fc:	.4byte 0x08112830

_0805b100:
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r0, _0805b11c
	mov		r2, r8
	str		r2, [r0, #0x0]
	ldr		r0, _0805b120
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, r9
	and		r0, r1
	strb	r0, [r5, #0x8]
	b		_0805b178

_0805b11c:	.4byte 0x0203ED54
_0805b120:	.4byte sub_0805b270

_0805b124:
	mov		r4, #0x8e
	ldr		r3, _0805b158
	ldr		r2, _0805b15c
	mov		r0, #0xb4
	lsl		r0, r0, #0x8
	add		r2, r2, r0
	ldr		r1, _0805b160
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	mov		r1, r10
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_0805b168
	ldr		r0, _0805b164
	mov		r2, r8
	str		r2, [r0, #0x0]
	str		r3, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, r9
	and		r0, r1
	strb	r0, [r5, #0x8]
	b		_0805b172

.align 2, 0
.pool

_0805b158:	.4byte 0x0805B7F5
_0805b15c:	.4byte 0x02033780
_0805b160:	.4byte 0x00006A3C
_0805b164:	.4byte 0x0203ED54

_0805b168:
	mov		r4, #0x91
	mov		r0, #0x2
	ldr		r1, _0805b1c8
	bl		sub_0805a26c
_0805b172:
	add		r0, r4, #0x0
	bl		sub_0807073c
_0805b178:
	ldr		r2, [sp, #0x8]
	lsl		r0, r2, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x0
	ldrsb	r1, [r6, r1]
	cmp		r0, r1
	beq		_0805b1ec
	ldrb	r0, [r6, #0x0]
	str		r0, [sp, #0x8]
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x1
	mov		r4, #0x0
_0805b19a:
	add		r2, r0, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	add		r0, #0x40
	mov		r1, #0x3
_0805b1a4:
	strh	r4, [r0, #0x0]
	add		r0, #0x40
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0805b1a4
	add		r0, r2, #0x0
	cmp		r0, #0x17
	blt		_0805b19a
	mov		r1, #0x0
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x1
	beq		_0805b1dc
	cmp		r0, #0x1
	bgt		_0805b1cc
	cmp		r0, #0x0
	beq		_0805b1d2
	b		_0805b1e6

_0805b1c8:	.4byte 0x08113414

_0805b1cc:
	cmp		r0, #0x2
	beq		_0805b1e4
	b		_0805b1e6
_0805b1d2:
	ldr		r1, _0805b1d8
	b		_0805b1e6

.align 2, 0
.pool

_0805b1d8:	.4byte 0x08112fec

_0805b1dc:
	ldr		r1, _0805b1e0
	b		_0805b1e6

_0805b1e0:	.4byte 0x08113088

_0805b1e4:
	ldr		r1, _0805b208
_0805b1e6:
	mov		r0, #0x2
	bl		sub_08013d0c
_0805b1ec:
	ldr		r0, [r5, #0x0]
	cmp		r0, r8
	bne		_0805b1f4
	b		_0805aff4
_0805b1f4:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805b208:	.4byte 0x08113124
	thumb_func_end sub_0805af0c

	thumb_func_start sub_0805b20c
sub_0805b20c:
	push	{ r4, r5, lr }
	ldr		r0, _0805b260
	ldr		r4, [r0, #0x0]
	bl		sub_08057370
	add		r5, r0, #0x0
	ldr		r1, _0805b264
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	mov		r3, #0x1
	ldr		r1, _0805b268
	add		r4, r4, r1
	mov		r1, #0x0
	strb	r1, [r4, #0x0]
	lsl		r0, r0, #0x18
	asr		r1, r0, #0x18
	cmp		r1, #0x0
	bge		_0805b242
	mov		r0, #0x3
	strb	r0, [r4, #0x0]
	mov		r3, #0x0
_0805b242:
	ldr		r0, _0805b26c
	add		r2, r5, r0
	add		r0, r1, #0x2
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_0805b256
	mov		r3, #0x0
_0805b256:
	add		r0, r3, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805b260:	.4byte 0x0203EBE0
_0805b264:	.4byte 0x00006A3C
_0805b268:	.4byte 0x00006B7C
_0805b26c:	.4byte 0x00000BE8
	thumb_func_end sub_0805b20c

	thumb_func_start sub_0805b270
sub_0805b270:
	push	{ r4, lr }
	ldr		r0, _0805b2c0
	ldr		r4, [r0, #0x0]
	bl		sub_080604d8
	mov		r0, #0x8
	bl		sub_0806022c
	cmp		r0, #0x0
	beq		_0805b314
	ldr		r1, _0805b2c4
	add		r0, r4, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805b2e4
	ldr		r1, _0805b2c8
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _0805b2cc
	cmp		r0, #0x0
	beq		_0805b2a2
	ldr		r1, _0805b2d0
_0805b2a2:
	ldr		r0, _0805b2d4
	str		r1, [r0, #0x0]
	ldr		r0, _0805b2d8
	bl		sub_0806581c
	ldr		r0, _0805b2dc
	ldr		r2, _0805b2e0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805b354

.align 2, 0
.pool

_0805b2c0:	.4byte 0x0203EBE0
_0805b2c4:	.4byte 0x00006B74
_0805b2c8:	.4byte 0x00006B6C
_0805b2cc:	.4byte sub_08065a6c
_0805b2d0:	.4byte sub_0806604c
_0805b2d4:	.4byte 0x0203ED50
_0805b2d8:	.4byte 0x0805B271
_0805b2dc:	.4byte 0x080657B1
_0805b2e0:	.4byte RunGameLogic_CallBack

_0805b2e4:
	ldr		r1, _0805b304
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _0805b308
	cmp		r0, #0x0
	beq		_0805b2f2
	ldr		r1, _0805b30c
_0805b2f2:
	ldr		r0, _0805b310
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	b		_0805b354

.align 2, 0
.pool

_0805b304:	.4byte 0x00006B6C
_0805b308:	.4byte sub_08065a6c
_0805b30c:	.4byte sub_0806604c
_0805b310:	.4byte RunGameLogic_CallBack

_0805b314:
	bl		sub_0805b20c
	cmp		r0, #0x0
	beq		_0805b334
	ldr		r1, _0805b32c
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805b334
	ldr		r0, _0805b330
	b		_0805b338

.align 2, 0
.pool

_0805b32c:	.4byte 0x00006B7C
_0805b330:	.4byte 0x0805B271

_0805b334:
	ldr		r0, _0805b35c
	ldr		r0, [r0, #0x0]
_0805b338:
	ldr		r2, _0805b360
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	ldr		r0, _0805b364
	add		r2, r4, r0
	sub		r0, #0x4
	add		r1, r4, r0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
_0805b354:
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805b35c:	.4byte 0x0203ED54
_0805b360:	.4byte RunGameLogic_CallBack
_0805b364:	.4byte 0x00006B70
	thumb_func_end sub_0805b270

	thumb_func_start sub_0805b368
sub_0805b368:
	push	{ r4, lr }
	ldr		r0, _0805b39c
	ldr		r4, [r0, #0x0]
	ldr		r1, _0805b3a0
	mov		r0, #0x2
	bl		sub_08013d0c
	mov		r0, #0xe
	mov		r1, #0x0
	bl		sub_080601b8
	ldr		r2, _0805b3a4
	add		r1, r4, r2
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0805b3b0
	ldr		r0, _0805b3a8
	ldr		r2, _0805b3ac
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r2, #0x1
	b		_0805b3c2

_0805b39c:	.4byte 0x0203EBE0
_0805b3a0:	.4byte 0x081132a4
_0805b3a4:	.4byte 0x00006B6C
_0805b3a8:	.4byte 0x0805B271
_0805b3ac:	.4byte RunGameLogic_CallBack

_0805b3b0:
	ldr		r0, _0805b3d4
	ldr		r2, _0805b3d8
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r2, #0x0
_0805b3c2:
	ldr		r0, _0805b3dc
	add		r1, r4, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	add		r0, r2, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805b3d4:	.4byte 0x0805B271
_0805b3d8:	.4byte RunGameLogic_CallBack
_0805b3dc:	.4byte 0x00006B70
	thumb_func_end sub_0805b368

	thumb_func_start sub_0805b3e0
sub_0805b3e0:
	push	{ r4, r5, lr }
	ldr		r0, _0805b42c
	ldr		r4, [r0, #0x0]
	ldr		r5, _0805b430
	bl		sub_0806055c
	ldr		r1, _0805b434
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0805b44c
	ldr		r2, _0805b438
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0805b44c
	mov		r0, #0xb4
	lsl		r0, r0, #0x8
	add		r2, r5, r0
	ldr		r1, _0805b43c
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_0805b44c
	bl		sub_0805b52c
	ldr		r2, _0805b440
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805b448
	ldr		r0, _0805b444
	ldr		r0, [r0, #0x0]
	b		_0805b4ba

_0805b42c:	.4byte 0x0203EBE0
_0805b430:	.4byte 0x02033780
_0805b434:	.4byte 0x00006B70
_0805b438:	.4byte 0x00006B6C
_0805b43c:	.4byte 0x00006A3C
_0805b440:	.4byte 0x00006B7C
_0805b444:	.4byte 0x0203ED54

_0805b448:
	bl		sub_0806055c
_0805b44c:
	mov		r0, #0x8
	bl		sub_0806022c
	cmp		r0, #0x0
	beq		_0805b4d4
	ldr		r1, _0805b474
	add		r0, r4, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805b4a0
	ldr		r2, _0805b478
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805b480
	ldr		r1, _0805b47c
	b		_0805b482

_0805b474:	.4byte 0x00006B74
_0805b478:	.4byte 0x00006B6C
_0805b47c:	.4byte sub_0806604c

_0805b480:
	ldr		r1, _0805b490
_0805b482:
	ldr		r0, _0805b494
	str		r1, [r0, #0x0]
	ldr		r0, _0805b498
	bl		sub_0806581c
	ldr		r0, _0805b49c
	b		_0805b4ba

_0805b490:	.4byte sub_08065d00
_0805b494:	.4byte 0x0203ED50
_0805b498:	.4byte 0x0805B3E1
_0805b49c:	.4byte 0x080657B1

_0805b4a0:
	ldr		r1, _0805b4b0
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805b4b8
	ldr		r0, _0805b4b4
	b		_0805b4ba

.align 2, 0
.pool

_0805b4b0:	.4byte 0x00006B6C
_0805b4b4:	.4byte sub_0806604c

_0805b4b8:
	ldr		r0, _0805b4cc
_0805b4ba:
	ldr		r2, _0805b4d0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805b514

.align 2, 0
.pool

_0805b4cc:	.4byte sub_08065d00
_0805b4d0:	.4byte RunGameLogic_CallBack

_0805b4d4:
	bl		sub_0805b20c
	cmp		r0, #0x0
	beq		_0805b4f4
	ldr		r2, _0805b4ec
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805b4f4
	ldr		r0, _0805b4f0
	b		_0805b4f8

.align 2, 0
.pool

_0805b4ec:	.4byte 0x00006B7C
_0805b4f0:	.4byte 0x0805B3E1

_0805b4f4:
	ldr		r0, _0805b51c
	ldr		r0, [r0, #0x0]
_0805b4f8:
	ldr		r2, _0805b520
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	ldr		r1, _0805b524
	add		r0, r4, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r2, _0805b528
	add		r0, r4, r2
	str		r1, [r0, #0x0]
_0805b514:
	mov		r0, #0x1
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_0805b51c:	.4byte 0x0203ED54
_0805b520:	.4byte RunGameLogic_CallBack
_0805b524:	.4byte 0x00006B70
_0805b528:	.4byte 0x00006B6C
	thumb_func_end sub_0805b3e0

	thumb_func_start sub_0805b52c
sub_0805b52c:
	push	{ r4, lr }
	ldr		r0, _0805b568
	ldr		r4, [r0, #0x0]
	ldr		r1, _0805b56c
	mov		r0, #0x2
	bl		sub_08013d0c
	mov		r0, #0xe
	mov		r1, #0x0
	bl		sub_080601b8
	ldr		r2, _0805b570
	add		r1, r4, r2
	str		r0, [r1, #0x0]
	ldr		r0, _0805b574
	ldr		r2, _0805b578
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	ldr		r0, _0805b57c
	add		r1, r4, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805b568:	.4byte 0x0203EBE0
_0805b56c:	.4byte 0x08113398
_0805b570:	.4byte 0x00006B6C
_0805b574:	.4byte 0x0805B3E1
_0805b578:	.4byte RunGameLogic_CallBack
_0805b57c:	.4byte 0x00006B70
	thumb_func_end sub_0805b52c

	thumb_func_start sub_0805b580
sub_0805b580:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r9, r1
	mov		r8, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r10, r0
	ldr		r0, _0805b5d8
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x38
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	str		r1, [r7, #0x34]
	ldr		r2, _0805b5dc
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	ldr		r2, _0805b5e0
	add		r0, r7, r2
	strb	r1, [r0, #0x0]
_0805b5b0:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x30
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805b5e4
	mov		r0, #0x8d
	bl		sub_0807073c
	add		r0, r7, #0x0
	add		r0, #0x38
	ldrb	r2, [r0, #0x0]
	mov		r1, #0x1
	sub		r1, r1, r2
	strb	r1, [r0, #0x0]
	add		r6, r0, #0x0
	b		_0805b65c

_0805b5d8:	.4byte 0x0203EBE0
_0805b5dc:	.4byte 0x00005F10
_0805b5e0:	.4byte 0x00006B7C

_0805b5e4:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0805b5fe
	mov		r0, r9
	cmp		r0, #0x0
	ble		_0805b630
	ldr		r1, _0805b628
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r9, r0
	bgt		_0805b630
_0805b5fe:
	mov		r0, #0x2
	bl		sub_08026fec
	mov		r1, #0x2
	cmp		r0, #0x0
	beq		_0805b60c
	mov		r1, #0x1
_0805b60c:
	ldr		r2, _0805b62c
	add		r4, r7, r2
	strb	r1, [r4, #0x0]
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r0, #0x1
	strb	r0, [r4, #0x0]
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	b		_0805b710

_0805b628:	.4byte 0x00005F10
_0805b62c:	.4byte 0x00006B7C

_0805b630:
	mov		r0, #0x1
	bl		sub_08026fec
	add		r6, r7, #0x0
	add		r6, #0x38
	cmp		r0, #0x0
	beq		_0805b65c
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r1, #0x0
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x0
	bne		_0805b658
	mov		r1, #0x1
_0805b658:
	add		r0, r1, #0x0
	b		_0805b710
_0805b65c:
	mov		r0, #0x60
	mov		r2, r10
	lsl		r1, r2, #0x13
	mov		r2, #0x80
	lsl		r2, r2, #0xc
	add		r1, r1, r2
	orr		r0, r1
	str		r0, [sp, #0x8]
	mov		r0, #0x90
	orr		r1, r0
	str		r1, [sp, #0xC]
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _0805b6a4
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, sp, #0xc
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _0805b6a8
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r1, [r7, #0x34]
	mov		r0, #0x1f
	and		r0, r1
	cmp		r0, #0x13
	bgt		_0805b6b0
	ldr		r2, _0805b6ac
	b		_0805b6ba

_0805b6a4:	.4byte 0x080e46f4
_0805b6a8:	.4byte 0x080e46fc
_0805b6ac:	.4byte 0x080e4704

_0805b6b0:
	mov		r2, #0x20
	and		r2, r1
	cmp		r2, #0x0
	beq		_0805b6dc
	ldr		r2, _0805b6d8
_0805b6ba:
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	add		r1, r4, #0x0
	cmp		r0, #0x0
	bne		_0805b6c6
	add		r1, sp, #0x8
_0805b6c6:
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r0, r2, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0805b6f8

.align 2, 0
.pool

_0805b6d8:	.4byte 0x080e4714

_0805b6dc:
	ldr		r3, _0805b70c
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	add		r1, r4, #0x0
	cmp		r0, #0x0
	bne		_0805b6ea
	add		r1, sp, #0x8
_0805b6ea:
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	add		r0, r3, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0805b6f8:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0805b702
	bl		sub_0807d7f0
_0805b702:
	ldr		r0, [r7, #0x34]
	add		r0, #0x1
	str		r0, [r7, #0x34]
	b		_0805b5b0

.align 2, 0
.pool

_0805b70c:	.4byte 0x080e4724

_0805b710:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805b580

	thumb_func_start sub_0805b720
sub_0805b720:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _0805b77c
	ldr		r4, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [r4, #0x34]
	ldr		r2, _0805b780
	add		r0, r4, r2
	str		r1, [r0, #0x0]
_0805b736:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0805b756
	cmp		r6, #0x0
	ble		_0805b788
	ldr		r1, _0805b780
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bgt		_0805b788
_0805b756:
	mov		r0, #0x2
	bl		sub_08026fec
	mov		r1, #0x2
	cmp		r0, #0x0
	beq		_0805b764
	mov		r1, #0x1
_0805b764:
	ldr		r2, _0805b784
	add		r0, r4, r2
	strb	r1, [r0, #0x0]
	mov		r0, #0x8e
	bl		sub_0807073c
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x1
	b		_0805b7ec

_0805b77c:	.4byte 0x0203EBE0
_0805b780:	.4byte 0x00005F10
_0805b784:	.4byte 0x00006B7C

_0805b788:
	mov		r0, #0x1
	bl		sub_08026fec
	add		r2, r0, #0x0
	cmp		r2, #0x0
	beq		_0805b7a6
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r0, #0x1
	b		_0805b7ec
_0805b7a6:
	ldr		r0, _0805b7e0
	add		r1, r4, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0805b7b6
	str		r2, [r1, #0x0]
_0805b7b6:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0805b7d0
	ldr		r0, _0805b7e4
	str		r0, [sp, #0x8]
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	ldr		r0, _0805b7e8
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0805b7d0:
	cmp		r5, #0x0
	beq		_0805b7d8
	bl		sub_0807d7e4
_0805b7d8:
	ldr		r0, [r4, #0x34]
	add		r0, #0x1
	str		r0, [r4, #0x34]
	b		_0805b736

_0805b7e0:	.4byte 0x00006B68
_0805b7e4:	.4byte 0x009000D8
_0805b7e8:	.4byte 0x080e4888

_0805b7ec:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805b720

	thumb_func_start sub_0805b7f4
sub_0805b7f4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	ldr		r0, _0805b95c
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r4, r0, #0x0
	ldr		r0, _0805b960
	mov		r10, r0
	bl		sub_08057370
	add		r2, r0, #0x0
	ldr		r1, _0805b964
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	lsl		r1, r0, #0x2
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r1, r1, r3
	add		r2, r2, r1
	str		r2, [sp, #0x8]
	ldr		r6, _0805b968
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	mov		r0, #0xff
	str		r0, [sp, #0xc]
	add		r0, r4, #0x0
	bl		clearMgbPassword
	ldr		r4, _0805b96c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r1, _0805b970
	mov		r0, #0x1
	bl		sub_08013d0c
	ldr		r1, _0805b974
	add		r0, r5, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	mov		r0, #0x0
	bl		sub_080695c0
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805b978
	add		r0, r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r1, _0805b97c
	add		r0, r1, #0x0
	strh	r0, [r3, #0x2e]
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	ldr		r2, _0805b980
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805b984
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0805b988
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805b8c2:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805b8c2
	ldr		r0, _0805b98c
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805b8da:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805b8da
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0805b968
	cmp		r6, r0
	beq		_0805b8fa
	b		_0805bb04
_0805b8fa:
	add		r4, r5, #0x0
	add		r4, #0x3f
	mov		r8, r6
	lsl		r0, r7, #0x18
	asr		r0, r0, #0x18
	mov		r9, r0
_0805b906:
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [r5, #0x34]
	add		r0, r1, #0x0
	add		r1, #0x1
	str		r1, [r5, #0x34]
	bl		sub_08069364
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r4, #0x0
	ldr		r1, _0805b990
	mov		r3, #0x3
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805b99c
	mov		r0, #0x90
	bl		sub_0807073c
	add		r0, r5, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	ldr		r6, _0805b994
	cmp		r0, #0x0
	bne		_0805b956
	b		_0805baa4
_0805b956:
	ldr		r6, _0805b998
	b		_0805baa4

.align 2, 0
.pool

_0805b95c:	.4byte 0x0203EBE0
_0805b960:	.4byte 0x02033780
_0805b964:	.4byte 0x00006A3C
_0805b968:	.4byte 0x0805B7F5
_0805b96c:	.4byte 0x080948b0
_0805b970:	.4byte 0x081135d0
_0805b974:	.4byte 0x00006A44
_0805b978:	.4byte 0x0000F20D
_0805b97c:	.4byte 0x0000F60D
_0805b980:	.4byte 0x0000FA0D
_0805b984:	.4byte 0x0000FE0D
_0805b988:	.4byte 0x0000F20E
_0805b98c:	.4byte 0x0000F22D
_0805b990:	.4byte 0x0810f214
_0805b994:	.4byte 0x0805AF0D
_0805b998:	.4byte _LoadMGBMobileGPMenu

_0805b99c:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0805b9a8
	b		_0805baa4
_0805b9a8:
	mov		r7, #0x8e
	mov		r2, #0x0
	ldrsb	r2, [r4, r2]
	cmp		r2, #0x1
	beq		_0805b9cc
	cmp		r2, #0x1
	bgt		_0805b9bc
	cmp		r2, #0x0
	beq		_0805b9c2
	b		_0805ba9e
_0805b9bc:
	cmp		r2, #0x2
	beq		_0805ba28
	b		_0805ba9e
_0805b9c2:
	ldr		r6, _0805b9c8
	b		_0805ba9e

.align 2, 0
.pool

_0805b9c8:	.4byte sub_0805bb2c

_0805b9cc:
	ldr		r1, _0805ba08
	add		r3, r5, r1
	str		r2, [r3, #0x0]
	mov		r2, r9
	cmp		r2, #0x0
	blt		_0805ba1c
	ldr		r1, [sp, #0x8]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0xa
	bls		_0805b9f8
	ldr		r2, _0805ba0c
	add		r0, r5, r2
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r10
	ldr		r1, _0805ba10
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0xa
	bgt		_0805ba7c
_0805b9f8:
	mov		r0, #0x5
	str		r0, [r3, #0x0]
	ldr		r0, _0805ba14
	mov		r2, r8
	str		r2, [r0, #0x0]
	ldr		r6, _0805ba18
	b		_0805ba9e

.align 2, 0
.pool

_0805ba08:	.4byte 0x00006A38
_0805ba0c:	.4byte 0x00006A3C
_0805ba10:	.4byte 0x00000764
_0805ba14:	.4byte 0x0203ED50
_0805ba18:	.4byte sub_08068b80

_0805ba1c:
	mov		r0, #0x2
	ldr		r1, _0805ba24
	b		_0805ba98

.align 2, 0
.pool

_0805ba24:	.4byte 0x08112aa0

_0805ba28:
	mov		r0, r9
	cmp		r0, #0x0
	bge		_0805ba48
	ldr		r1, _0805ba6c
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r10
	mov		r3, #0xe9
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	ble		_0805ba94
_0805ba48:
	ldr		r1, _0805ba6c
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	add		r0, r10
	mov		r3, #0xe9
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x31
	ble		_0805ba74
	ldr		r1, _0805ba70
	add		r0, r5, r1
	str		r2, [r0, #0x0]
	b		_0805ba7c

.align 2, 0
.pool

_0805ba6c:	.4byte 0x00006A3C
_0805ba70:	.4byte 0x00006A38

_0805ba74:
	ldr		r2, _0805ba88
	add		r1, r5, r2
	mov		r0, #0x6
	str		r0, [r1, #0x0]
_0805ba7c:
	ldr		r0, _0805ba8c
	mov		r3, r8
	str		r3, [r0, #0x0]
	ldr		r6, _0805ba90
	b		_0805ba9e

.align 2, 0
.pool

_0805ba88:	.4byte 0x00006A38
_0805ba8c:	.4byte 0x0203ED50
_0805ba90:	.4byte sub_08068b80

_0805ba94:
	mov		r0, #0x2
	ldr		r1, _0805bac8
_0805ba98:
	bl		sub_0805a26c
	mov		r7, #0x91
_0805ba9e:
	add		r0, r7, #0x0
	bl		sub_0807073c
_0805baa4:
	ldr		r1, [sp, #0xc]
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	cmp		r0, r1
	beq		_0805bafe
	ldrb	r2, [r4, #0x0]
	str		r2, [sp, #0xc]
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x1
	beq		_0805bae0
	cmp		r0, #0x1
	bgt		_0805bacc
	cmp		r0, #0x0
	beq		_0805bad2
	b		_0805baf8

_0805bac8:	.4byte 0x081128c8

_0805bacc:
	cmp		r0, #0x2
	beq		_0805baf0
	b		_0805baf8
_0805bad2:
	mov		r0, #0x2
	ldr		r1, _0805badc
	bl		sub_0805a26c
	b		_0805baf8

_0805badc:	.4byte 0x08113680

_0805bae0:
	mov		r0, #0x2
	ldr		r1, _0805baec
	bl		sub_0805a26c
	b		_0805baf8

.align 2, 0
.pool

_0805baec:	.4byte 0x081138e0

_0805baf0:
	mov		r0, #0x2
	ldr		r1, _0805bb24
	bl		sub_0805a26c
_0805baf8:
	mov		r0, #0x1
	bl		sub_080281fc
_0805bafe:
	cmp		r6, r8
	bne		_0805bb04
	b		_0805b906
_0805bb04:
	ldr		r0, _0805bb28
	str		r6, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805bb24:	.4byte 0x0811395c
_0805bb28:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805b7f4

	thumb_func_start sub_0805bb2c
sub_0805bb2c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	ldr		r0, _0805bcac
	ldr		r5, [r0, #0x0]
	bl		sub_08057370
	ldr		r1, _0805bcb0
	add		r4, r5, r1
	ldr		r2, [r4, #0x0]
	lsl		r1, r2, #0x2
	add		r1, r1, r2
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r0, r0, r1
	mov		r10, r0
	add		r0, r5, #0x0
	bl		sub_08060bf4
	mov		r8, r0
	ldr		r7, _0805bcb4
	ldr		r0, [r4, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	mov		r0, #0xff
	mov		r9, r0
	ldr		r4, _0805bcb8
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r1, _0805bcbc
	mov		r0, #0x1
	bl		sub_08013d0c
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _0805bcc0
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	ldr		r2, _0805bcc4
	add		r0, r2, #0x0
	strh	r0, [r3, #0x2e]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805bcc8
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805bccc
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0805bcd0
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805bbdc:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805bbdc
	lsl		r6, r6, #0x18
	ldr		r0, _0805bcd4
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805bbf6:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805bbf6
	mov		r0, r8
	add		r1, sp, #0xc
	bl		copyMgbPrefectureIdToBuffer
	add		r0, sp, #0xc
	ldrb	r0, [r0, #0x0]
	mov		r1, #0xa
	mov		r2, #0x8
	mov		r3, #0xf
	bl		sub_0806d748
	cmp		r6, #0x0
	blt		_0805bc4c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805bcd8
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0xb
	str		r0, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r1, r10
	ldrb	r0, [r1, #0x8]
	mov		r1, #0xa
	mov		r2, #0xa
	mov		r3, #0xf
	bl		sub_0806ee14
_0805bc4c:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0805bcb4
	cmp		r7, r0
	beq		_0805bc60
	b		_0805bdfe
_0805bc60:
	add		r4, r5, #0x0
	add		r4, #0x40
_0805bc64:
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [r5, #0x34]
	add		r0, r1, #0x0
	add		r1, #0x1
	str		r1, [r5, #0x34]
	bl		sub_08069364
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r4, #0x0
	ldr		r1, _0805bcdc
	mov		r3, #0x3
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805bce4
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r7, _0805bce0
	b		_0805bd9c

.align 2, 0
.pool

_0805bcac:	.4byte 0x0203EBE0
_0805bcb0:	.4byte 0x00006A3C
_0805bcb4:	.4byte 0x0805BB2D
_0805bcb8:	.4byte 0x080948b0
_0805bcbc:	.4byte 0x081137cc
_0805bcc0:	.4byte 0x0000F20D
_0805bcc4:	.4byte 0x0000F60D
_0805bcc8:	.4byte 0x0000FA0D
_0805bccc:	.4byte 0x0000FE0D
_0805bcd0:	.4byte 0x0000F20E
_0805bcd4:	.4byte 0x0000F22D
_0805bcd8:	.4byte 0x0810f22c
_0805bcdc:	.4byte 0x0810f214
_0805bce0:	.4byte 0x0805B7F5

_0805bce4:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805bd9c
	mov		r3, #0x8e
	ldr		r0, _0805bd08
	add		r2, r5, r0
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	str		r0, [r2, #0x0]
	cmp		r0, #0x1
	beq		_0805bd44
	cmp		r0, #0x1
	bgt		_0805bd0c
	cmp		r0, #0x0
	beq		_0805bd12
	b		_0805bd96

_0805bd08:	.4byte 0x00006A38

_0805bd0c:
	cmp		r0, #0x2
	beq		_0805bd7c
	b		_0805bd96
_0805bd12:
	cmp		r6, #0x0
	bge		_0805bd84
	ldr		r1, _0805bd38
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r2, _0805bd3c
	add		r0, r0, r2
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0805bd84
	mov		r0, #0x2
	ldr		r1, _0805bd40
	b		_0805bd90

_0805bd38:	.4byte 0x00006A3C
_0805bd3c:	.4byte 0x02033780
_0805bd40:	.4byte 0x08112a78

_0805bd44:
	cmp		r6, #0x0
	bge		_0805bd64
	ldr		r1, _0805bd68
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r1, _0805bd6c
	add		r0, r0, r1
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805bd70
_0805bd64:
	mov		r0, #0x3
	b		_0805bd82

_0805bd68:	.4byte 0x00006A3C
_0805bd6c:	.4byte 0x02033780

_0805bd70:
	mov		r0, #0x2
	ldr		r1, _0805bd78
	b		_0805bd90

.align 2, 0
.pool

_0805bd78:	.4byte 0x08112a78

_0805bd7c:
	cmp		r6, #0x0
	blt		_0805bd8c
	mov		r0, #0x4
_0805bd82:
	str		r0, [r2, #0x0]
_0805bd84:
	ldr		r7, _0805bd88
	b		_0805bd96

_0805bd88:	.4byte 0x08068B81

_0805bd8c:
	mov		r0, #0x2
	ldr		r1, _0805bdc0
_0805bd90:
	bl		sub_0805a26c
	mov		r3, #0x91
_0805bd96:
	add		r0, r3, #0x0
	bl		sub_0807073c
_0805bd9c:
	mov		r2, r9
	lsl		r0, r2, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	cmp		r0, r1
	beq		_0805bdf6
	ldrb	r0, [r4, #0x0]
	mov		r9, r0
	add		r0, r1, #0x0
	cmp		r0, #0x1
	beq		_0805bdd8
	cmp		r0, #0x1
	bgt		_0805bdc4
	cmp		r0, #0x0
	beq		_0805bdca
	b		_0805bdf0

.align 2, 0
.pool

_0805bdc0:	.4byte 0x08112aa0

_0805bdc4:
	cmp		r0, #0x2
	beq		_0805bde8
	b		_0805bdf0
_0805bdca:
	mov		r0, #0x2
	ldr		r1, _0805bdd4
	bl		sub_0805a26c
	b		_0805bdf0

_0805bdd4:	.4byte 0x08113884

_0805bdd8:
	mov		r0, #0x2
	ldr		r1, _0805bde4
	bl		sub_0805a26c
	b		_0805bdf0

.align 2, 0
.pool

_0805bde4:	.4byte 0x081136f4

_0805bde8:
	mov		r0, #0x2
	ldr		r1, _0805be24
	bl		sub_0805a26c
_0805bdf0:
	mov		r0, #0x1
	bl		sub_080281fc
_0805bdf6:
	ldr		r0, _0805be28
	cmp		r7, r0
	bne		_0805bdfe
	b		_0805bc64
_0805bdfe:
	ldr		r1, _0805be28
	ldr		r0, _0805be2c
	str		r1, [r0, #0x0]
	ldr		r2, _0805be30
	str		r7, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805be24:	.4byte 0x08113760
_0805be28:	.4byte 0x0805BB2D
_0805be2c:	.4byte 0x0203ED50
_0805be30:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805bb2c

	thumb_func_start sub_0805be34
sub_0805be34:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0805be68
	ldr		r4, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_08060bf4
	add		r5, r0, #0x0
	bl		getMgbNicknameFromMGBStruct
	add		r6, r0, #0x0
	add		r0, r5, #0x0
	bl		getMgbPasswordFromMGBStruct
	add		r1, r0, #0x0
	ldr		r0, _0805be6c
	add		r4, r4, r0
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	beq		_0805be64
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0805be74
_0805be64:
	ldr		r0, _0805be70
	b		_0805be76

_0805be68:	.4byte 0x0203EBE0
_0805be6c:	.4byte 0x00006B74
_0805be70:	.4byte 0x0805BE95

_0805be74:
	ldr		r0, _0805be8c
_0805be76:
	ldr		r2, _0805be90
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0805be8c:	.4byte 0x0805FC9D
_0805be90:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805be34

	thumb_func_start sub_0805be94
sub_0805be94:
	push	{ r4, r5, lr }
	ldr		r0, _0805bec0
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		getMgbNicknameFromMGBStruct
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	bl		getMgbPasswordFromMGBStruct
	add		r1, r0, #0x0
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0805bed0
	ldr		r1, _0805bec4
	ldr		r0, _0805bec8
	str		r1, [r0, #0x0]
	ldr		r0, _0805becc
	b		_0805beee

.align 2, 0
.pool

_0805bec0:	.4byte 0x0203EBE0
_0805bec4:	.4byte sub_0805be34
_0805bec8:	.4byte 0x0203ED50
_0805becc:	.4byte 0x080649B1

_0805bed0:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0805bee0
	ldr		r0, _0805bedc
	b		_0805beee

.align 2, 0
.pool

_0805bedc:	.4byte sub_0805be34

_0805bee0:
	ldr		r1, _0805bf04
	ldr		r0, _0805bf08
	str		r1, [r0, #0x0]
	ldr		r0, _0805bf0c
	bl		sub_0806581c
	ldr		r0, _0805bf10
_0805beee:
	ldr		r2, _0805bf14
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_0805bf04:	.4byte 0x0805FC9D
_0805bf08:	.4byte 0x0203ED50
_0805bf0c:	.4byte 0x0805BE95
_0805bf10:	.4byte 0x080657B1
_0805bf14:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805be94

	thumb_func_start sub_0805bf18
sub_0805bf18:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805bf7c
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	mov		r8, r0
	bl		sub_08057370
	mov		r9, r0
	bl		sub_08057370
	ldr		r1, _0805bf80
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0805bf90
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805bf84
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805bf88
	ldr		r1, _0805bf8c
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	b		_0805c0b4

_0805bf7c:	.4byte 0x0203EBE0
_0805bf80:	.4byte 0x00000AD4
_0805bf84:	.4byte 0x080948b0
_0805bf88:	.4byte 0x00008003
_0805bf8c:	.4byte 0x081143e8

_0805bf90:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805c070
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c074
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	mov		r7, #0x14
	str		r7, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x7
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0xa
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	cmp		r0, #0x0
	beq		_0805c0b4
	mov		r0, r8
	bl		clearMgbPassword
	ldr		r0, _0805c078
	bl		setMgbPasswordFromSave
	ldr		r0, _0805c07c
	add		r0, r9
	strb	r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c080
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c084
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0805c08c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c088
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0805c0aa

.align 2, 0
.pool

_0805c070:	.4byte 0x080948b0
_0805c074:	.4byte 0x0810f244
_0805c078:	.4byte 0x0810f260
_0805c07c:	.4byte 0x00000AE5
_0805c080:	.4byte 0x0810f264
_0805c084:	.4byte 0x0810f284
_0805c088:	.4byte 0x0810f2a8

_0805c08c:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c0d8
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
_0805c0aa:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
_0805c0b4:
	ldr		r0, _0805c0dc
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805c0e0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805c0d8:	.4byte 0x0810f2c4
_0805c0dc:	.4byte 0x0203ED50
_0805c0e0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805bf18

	thumb_func_start sub_0805c0e4
sub_0805c0e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x1c
	mov		r8, r0
	ldr		r0, _0805c1b8
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		getMgbNicknameFromMGBStruct
	mov		r9, r0
	add		r0, r4, #0x0
	bl		getMgbPasswordFromMGBStruct
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c1bc
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r7, #0x14
	str		r7, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c1c0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x5
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0xb
	mov		r1, #0x3
	mov		r2, r9
	bl		sub_08013ec0
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0805c1c4
	mov		r1, #0x0
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	beq		_0805c18a
	mov		r2, #0xa
_0805c178:
	mov		r0, sp
	add		r0, r0, r1
	add		r0, #0xc
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0805c178
_0805c18a:
	mov		r0, sp
	add		r0, r0, r1
	add		r0, #0xc
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0xb
	mov		r1, #0x5
	add		r2, sp, #0xc
	bl		sub_08013ec0
	b		_0805c1e2

.align 2, 0
.pool

_0805c1b8:	.4byte 0x0203EBE0
_0805c1bc:	.4byte 0x0810f2e8
_0805c1c0:	.4byte 0x0810f2f8

_0805c1c4:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r8
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0xb
	mov		r1, #0x5
	add		r2, r6, #0x0
	bl		sub_08013ec0
_0805c1e2:
	mov		r0, #0x1
	bl		sub_080281fc
	add		sp, #0x1c
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	push	{ r4, lr }
	ldr		r0, _0805c244
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_0802983c
	bl		_UpdateGame
	add		r0, r4, #0x0
	bl		checkStringIsNotEmpty
	cmp		r0, #0x0
	bne		_0805c226
	add		r0, r4, #0x0
	bl		clearMgbPassword
	bl		sub_080609b8
_0805c226:
	ldr		r0, _0805c248
	ldr		r2, _0805c24c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	add		r0, r4, #0x0
	bl		clearMgbPassword
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805c244:	.4byte 0x0203EBE0
_0805c248:	.4byte _TryLoadMGBMainMenu + 1
_0805c24c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805c0e4

	thumb_func_start sub_0805c250
sub_0805c250:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c2cc
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r6, #0x14
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c2d0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0805c2d8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c2d4
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0805c2f6

_0805c2cc:	.4byte 0x0810f304
_0805c2d0:	.4byte 0x0810f284
_0805c2d4:	.4byte 0x0810f328

_0805c2d8:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c320
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
_0805c2f6:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	ldr		r0, _0805c324
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805c328
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805c320:	.4byte 0x0810f348
_0805c324:	.4byte 0x0203ED50
_0805c328:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805c250

	thumb_func_start sub_0805c32c
sub_0805c32c:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c3a8
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r6, #0x14
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c3ac
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0805c3b4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c3b0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0805c3d2

_0805c3a8:	.4byte 0x0810f36c
_0805c3ac:	.4byte 0x0810f284
_0805c3b0:	.4byte 0x0810f390

_0805c3b4:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c3fc
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
_0805c3d2:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	ldr		r0, _0805c400
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805c404
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805c3fc:	.4byte 0x0810f3b0
_0805c400:	.4byte 0x0203ED50
_0805c404:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805c32c

	thumb_func_start sub_0805c408
sub_0805c408:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0805c468
	ldr		r5, [r0, #0x0]
	bl		sub_0802983c
	bl		_UpdateGame
	bl		sub_0802983c
	bl		_UpdateGame
	bl		sub_08057370
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	mov		r4, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	bl		sub_08056adc
	add		r6, r0, #0x0
	bl		sub_08057370
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	ldr		r1, _0805c46c
	and		r1, r2
	strh	r1, [r0, #0x0]
	str		r4, [r5, #0x34]
_0805c450:
	bl		_UpdateGame
	ldr		r0, [r5, #0x34]
	add		r0, #0x1
	str		r0, [r5, #0x34]
	cmp		r0, #0x3b
	ble		_0805c450
	add		r0, r6, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805c468:	.4byte 0x0203EBE0
_0805c46c:	.4byte 0x00007FFF
	thumb_func_end sub_0805c408

	thumb_func_start sub_0805c470
sub_0805c470:
	push	{ r4, lr }
	sub		sp, #0xc
	ldr		r0, _0805c4bc
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	str		r0, [r4, #0x34]
_0805c47c:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_08026fec
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_0805c4cc
	ldr		r0, _0805c4c0
	add		r1, r4, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0805c4a0
	str		r2, [r1, #0x0]
_0805c4a0:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0805c47c
	ldr		r0, _0805c4c4
	str		r0, [sp, #0x8]
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	ldr		r0, _0805c4c8
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0805c47c

_0805c4bc:	.4byte 0x0203EBE0
_0805c4c0:	.4byte 0x00006B68
_0805c4c4:	.4byte 0x009000D8
_0805c4c8:	.4byte 0x080e478c

_0805c4cc:
	mov		r0, #0x8e
	bl		sub_0807073c
	add		sp, #0xc
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_0805c470

	thumb_func_start sub_0805c4dc
sub_0805c4dc:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	add		r5, r0, #0x0
	ldr		r0, _0805c50c
	ldr		r4, [r0, #0x0]
	ldr		r0, _0805c510
	add		r1, r4, r0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r4, #0x34]
_0805c4f0:
	bl		sub_0802983c
	bl		_UpdateGame
	cmp		r5, #0x0
	beq		_0805c514
	ldr		r1, _0805c510
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bgt		_0805c514
	mov		r0, #0x0
	b		_0805c584

.align 2, 0
.pool

_0805c50c:	.4byte 0x0203EBE0
_0805c510:	.4byte 0x00005F10

_0805c514:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805c52e
	mov		r0, #0x8e
	bl		sub_0807073c
	bl		sub_08026f7c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	b		_0805c584
_0805c52e:
	mov		r0, #0x2
	bl		sub_08026fec
	add		r2, r0, #0x0
	cmp		r2, #0x0
	beq		_0805c54a
	mov		r0, #0x90
	bl		sub_0807073c
	bl		sub_08026f7c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	b		_0805c584
_0805c54a:
	ldr		r0, _0805c578
	add		r1, r4, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0805c55a
	str		r2, [r1, #0x0]
_0805c55a:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0805c4f0
	ldr		r0, _0805c57c
	str		r0, [sp, #0x8]
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	ldr		r0, _0805c580
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0805c4f0

.align 2, 0
.pool

_0805c578:	.4byte 0x00006B68
_0805c57c:	.4byte 0x009000D8
_0805c580:	.4byte 0x080e478c

_0805c584:
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805c4dc

	thumb_func_start sub_0805c58c
sub_0805c58c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x3c
	ldr		r0, _0805c6bc
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	bl		sub_08060bf4
	bl		clearMgbPassword
	mov		r0, #0x0
	bl		sub_0805c0e4
	ldr		r4, _0805c6c0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c6c4
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c6c8
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c6cc
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c6d0
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xf
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r2, r8
	add		r2, #0x41
	strb	r6, [r2, #0x0]
	ldr		r3, _0805c6d4
	ldr		r1, [r3, #0x0]
	ldr		r0, _0805c6d8
	cmp		r1, r0
	beq		_0805c654
	b		_0805c76a
_0805c654:
	add		r7, r2, #0x0
	add		r6, r3, #0x0
_0805c658:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r7, #0x0
	ldr		r1, _0805c6dc
	mov		r3, #0x4
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805c6e8
	ldr		r5, _0805c6e0
	ldr		r0, [r5, #0x8]
	mov		r4, #0x1
	neg		r4, r4
	cmp		r0, r4
	beq		_0805c69c
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	bl		sub_0807073c
_0805c69c:
	ldr		r1, [r5, #0x0]
	cmp		r1, r4
	beq		_0805c6a6
	ldr		r0, _0805c6e4
	str		r1, [r0, #0x0]
_0805c6a6:
	ldr		r0, [r5, #0x4]
	cmp		r0, r4
	beq		_0805c76a
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
	b		_0805c76a

.align 2, 0
.pool

_0805c6bc:	.4byte 0x0203EBE0
_0805c6c0:	.4byte 0x080948b0
_0805c6c4:	.4byte 0x0810f3f8
_0805c6c8:	.4byte 0x0810f410
_0805c6cc:	.4byte 0x0810f424
_0805c6d0:	.4byte 0x0810f438
_0805c6d4:	.4byte RunGameLogic_CallBack
_0805c6d8:	.4byte 0x0805C58D
_0805c6dc:	.4byte 0x0810f3d8
_0805c6e0:	.4byte 0x0810f074
_0805c6e4:	.4byte 0x0203ED50

_0805c6e8:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805c760
	add		r1, sp, #0xc
	ldr		r0, _0805c778
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	ldmia	r0!, { r2, r3, r4 }
	stmia	r1!, {  r2, r3, r4 }
	mov		r0, #0x0
	ldrsb	r0, [r7, r0]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r0, sp, #0x10
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	ldr		r0, _0805c77c
	cmp		r1, r0
	bne		_0805c722
	ldr		r0, _0805c780
	bl		sub_0806581c
_0805c722:
	mov		r1, #0x0
	ldrsb	r1, [r7, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r4, r0, #0x0
	add		r4, sp
	add		r4, #0xc
	ldr		r0, [r4, #0x8]
	mov		r5, #0x1
	neg		r5, r5
	cmp		r0, r5
	beq		_0805c744
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	bl		sub_0807073c
_0805c744:
	ldr		r1, [r4, #0x0]
	cmp		r1, r5
	beq		_0805c74e
	ldr		r0, _0805c784
	str		r1, [r0, #0x0]
_0805c74e:
	ldr		r0, [r4, #0x4]
	cmp		r0, r5
	beq		_0805c760
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
_0805c760:
	ldr		r1, [r6, #0x0]
	ldr		r0, _0805c780
	cmp		r1, r0
	bne		_0805c76a
	b		_0805c658
_0805c76a:
	mov		r0, #0x1
	add		sp, #0x3c
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805c778:	.4byte 0x0810f44c
_0805c77c:	.4byte 0x080657B1
_0805c780:	.4byte 0x0805C58D
_0805c784:	.4byte 0x0203ED50
	thumb_func_end sub_0805c58c

	thumb_func_start sub_0805c788
sub_0805c788:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805c938
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	bl		clearMgbPassword
	bl		sub_08060298
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805c93c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c940
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r5, #0x18
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x2
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c944
	str		r6, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c948
	str		r6, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c94c
	str		r6, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xa
	bl		sub_08013e9c
	ldr		r1, _0805c950
	add		r0, r7, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805c954
	add		r0, r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r1, _0805c958
	add		r0, r1, #0x0
	strh	r0, [r3, #0x2e]
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	ldr		r2, _0805c95c
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805c960
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0805c964
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805c890:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805c890
	ldr		r0, _0805c968
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805c8a8:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805c8a8
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r2, _0805c96c
	ldr		r1, [r2, #0x0]
	ldr		r0, _0805c970
	cmp		r1, r0
	beq		_0805c8cc
	b		_0805caf4
_0805c8cc:
	add		r6, r7, #0x0
	add		r6, #0x3f
	mov		r1, #0xf
	mov		r8, r1
	add		r5, r2, #0x0
	mov		r2, #0x16
	mov		r9, r2
	mov		r0, #0x0
	mov		r10, r0
_0805c8de:
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [r7, #0x34]
	add		r0, r1, #0x0
	add		r1, #0x1
	str		r1, [r7, #0x34]
	bl		sub_08069364
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r1, r8
	str		r1, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	ldr		r1, _0805c974
	mov		r3, #0x3
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_0805c980
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r1, _0805c970
	ldr		r0, _0805c978
	str		r1, [r0, #0x0]
	ldr		r0, _0805c97c
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r2, #0x7
	and		r0, r2
	strb	r0, [r5, #0x8]
	b		_0805c9fa

_0805c938:	.4byte 0x0203EBE0
_0805c93c:	.4byte 0x080948b0
_0805c940:	.4byte 0x0810f494
_0805c944:	.4byte 0x0810f4b0
_0805c948:	.4byte 0x0810f4cc
_0805c94c:	.4byte 0x0810f4e8
_0805c950:	.4byte 0x00006A3C
_0805c954:	.4byte 0x0000F20D
_0805c958:	.4byte 0x0000F60D
_0805c95c:	.4byte 0x0000FA0D
_0805c960:	.4byte 0x0000FE0D
_0805c964:	.4byte 0x0000F20E
_0805c968:	.4byte 0x0000F22D
_0805c96c:	.4byte RunGameLogic_CallBack
_0805c970:	.4byte 0x0805C789
_0805c974:	.4byte 0x0810f214
_0805c978:	.4byte 0x0203ED50
_0805c97c:	.4byte 0x08066DB9

_0805c980:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805c9fa
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x1
	beq		_0805c9bc
	cmp		r0, #0x1
	bgt		_0805c9a2
	cmp		r0, #0x0
	beq		_0805c9a8
	b		_0805c9f2
_0805c9a2:
	cmp		r0, #0x2
	beq		_0805c9e4
	b		_0805c9f2
_0805c9a8:
	ldr		r1, _0805c9b4
	add		r0, r7, r1
	strh	r4, [r0, #0x0]
	ldr		r0, _0805c9b8
	b		_0805c9e6

.align 2, 0
.pool

_0805c9b4:	.4byte 0x00006A4C
_0805c9b8:	.4byte sub_0805cbc4

_0805c9bc:
	ldr		r1, _0805c9d8
	add		r0, r7, r1
	str		r4, [r0, #0x0]
	ldr		r2, _0805c9dc
	add		r0, r7, r2
	strb	r4, [r0, #0x0]
	ldr		r0, _0805c9e0
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	b		_0805c9f0

.align 2, 0
.pool

_0805c9d8:	.4byte 0x00006A48
_0805c9dc:	.4byte 0x00006A47
_0805c9e0:	.4byte sub_0805d290

_0805c9e4:
	ldr		r0, _0805ca0c
_0805c9e6:
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r2, #0x7
	and		r0, r2
_0805c9f0:
	strb	r0, [r5, #0x8]
_0805c9f2:
	ldrb	r1, [r6, #0x0]
	ldr		r2, _0805ca10
	add		r0, r7, r2
	strb	r1, [r0, #0x0]
_0805c9fa:
	mov		r4, #0x0
	ldrsb	r4, [r6, r4]
	cmp		r4, #0x1
	beq		_0805ca50
	cmp		r4, #0x1
	bgt		_0805ca14
	cmp		r4, #0x0
	beq		_0805ca1a
	b		_0805cae4

_0805ca0c:	.4byte sub_0805df80
_0805ca10:	.4byte 0x00006A46

_0805ca14:
	cmp		r4, #0x2
	beq		_0805caa0
	b		_0805cae4
_0805ca1a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805ca4c
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	b		_0805ca82

.align 2, 0
.pool

_0805ca4c:	.4byte 0x0810f504

_0805ca50:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	str		r1, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805ca98
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	str		r1, [sp, #0x0]
_0805ca82:
	mov		r2, r8
	str		r2, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0805ca9c
	bl		sub_08013e9c
	b		_0805cae4

.align 2, 0
.pool

_0805ca98:	.4byte 0x0810f534
_0805ca9c:	.4byte 0x0810f13c

_0805caa0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	str		r1, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0805cb08
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	str		r1, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0805cb0c
	bl		sub_08013e9c
_0805cae4:
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r1, [r5, #0x0]
	ldr		r0, _0805cb10
	cmp		r1, r0
	bne		_0805caf4
	b		_0805c8de
_0805caf4:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805cb08:	.4byte 0x0810f564
_0805cb0c:	.4byte 0x0810f594
_0805cb10:	.4byte 0x0805C789
	thumb_func_end sub_0805c788

	thumb_func_start sub_0805cb14
sub_0805cb14:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	ldr		r4, [sp, #0x0+0x28]
	ldr		r5, [sp, #0x4+0x28]
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x0]
	lsl		r1, r1, #0x10
	lsr		r0, r1, #0x10
	mov		r10, r0
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x10
	lsl		r6, r5, #0xc
	mov		r5, #0xf
	mov		r7, #0xf
	mov		r9, r7
	lsr		r1, r1, #0x14
	and		r1, r5
	lsr		r2, r2, #0x14
	and		r2, r5
	mov		r5, r9
	and		r0, r5
	add		r0, r0, r4
	mov		r12, r0
	add		r2, r4, r2
	str		r2, [sp, #0x4]
	add		r5, r4, #0x0
	add		r5, #0xb
	add		r2, r4, r1
	add		r1, r4, #0x0
	add		r1, #0xa
	mov		r7, #0x1
	mov		r8, r7
_0805cb5e:
	ldr		r0, [sp, #0x0]
	mov		r7, r9
	and		r0, r7
	add		r0, r4, r0
	orr		r0, r6
	strh	r0, [r3, #0x0]
	add		r0, r6, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x2]
	add		r0, r6, #0x0
	orr		r0, r2
	strh	r0, [r3, #0x4]
	mov		r0, r10
	and		r0, r7
	add		r0, r4, r0
	orr		r0, r6
	strh	r0, [r3, #0x6]
	add		r0, r6, #0x0
	orr		r0, r5
	strh	r0, [r3, #0x8]
	add		r0, r6, #0x0
	ldr		r7, [sp, #0x4]
	orr		r0, r7
	strh	r0, [r3, #0xa]
	add		r0, r6, #0x0
	mov		r7, r12
	orr		r0, r7
	strh	r0, [r3, #0xc]
	mov		r0, #0x20
	add		r12, r0
	ldr		r7, [sp, #0x4]
	add		r7, #0x20
	str		r7, [sp, #0x4]
	add		r5, #0x20
	add		r2, #0x20
	add		r1, #0x20
	add		r3, #0x40
	add		r4, #0x20
	sub		r0, #0x21
	add		r8, r0
	mov		r7, r8
	cmp		r7, #0x0
	bge		_0805cb5e
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0805cb14

	thumb_func_start sub_0805cbc4
sub_0805cbc4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	ldr		r0, _0805ceb8
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805cebc
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805cec0
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0x3
	mov		r9, r0
	str		r0, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x2
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805cec4
	str		r5, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805cec8
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x12
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805cecc
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ced0
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _0805ced4
	mov		r8, r1
	str		r5, [sp, #0x0]
	mov		r2, r9
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xd
	mov		r2, r8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ced8
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xf
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xf
	mov		r2, r8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805cedc
	str		r5, [sp, #0x0]
	mov		r1, r9
	str		r1, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x11
	mov		r1, #0xf
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r3, #0xd2
	lsl		r3, r3, #0x2
	add		r2, r0, r3
	ldr		r3, _0805cee0
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805cee4
	add		r2, r0, r1
	ldr		r3, _0805cee8
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0xe2
	lsl		r1, r1, #0x2
	add		r2, r0, r1
	ldr		r3, _0805ceec
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805cef0
	add		r2, r0, r1
	ldr		r3, _0805cef4
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0xf2
	lsl		r1, r1, #0x2
	add		r2, r0, r1
	ldr		r3, _0805cef8
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805cefc
	add		r2, r0, r1
	ldr		r3, _0805cf00
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0x81
	lsl		r1, r1, #0x3
	add		r2, r0, r1
	ldr		r3, _0805cf04
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805cf08
	add		r0, r0, r1
	ldr		r2, _0805cf0c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _0805cf10
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	ldr		r2, _0805cf14
	add		r0, r2, #0x0
	strh	r0, [r3, #0x2e]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805cf18
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805cf1c
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	add		r5, sp, #0x10
	add		r6, sp, #0x14
	ldr		r0, _0805cf20
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805cdac:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805cdac
	ldr		r0, _0805cf24
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805cdc4:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805cdc4
	bl		sub_08057370
	add		r3, r0, #0x0
	ldr		r0, _0805cf28
	add		r0, r10
	ldr		r2, [r0, #0x0]
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0805cde4
	add		r1, r2, #0x3
_0805cde4:
	asr		r1, r1, #0x2
	mov		r0, #0x3
	and		r2, r0
	lsl		r0, r2, #0x5
	lsl		r1, r1, #0x7
	add		r1, r1, r3
	add		r0, r0, r1
	add		r0, #0x64
	ldrh	r0, [r0, #0x2]
	add		r1, sp, #0xc
	add		r2, r5, #0x0
	add		r3, r6, #0x0
	bl		sub_08048958
	ldr		r7, _0805cf2c
	add		r7, r10
	ldrh	r0, [r7, #0x0]
	cmp		r0, #0x0
	beq		_0805ce7a
	ldr		r4, _0805cf30
	add		r1, r4, #0x0
	bl		sub_0807ddf0
	mov		r1, #0xf
	and		r0, r1
	str		r0, [sp, #0xC]
	ldrh	r6, [r7, #0x0]
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0807de68
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r5, #0xfa
	lsl		r5, r5, #0x2
	add		r1, r5, #0x0
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0xc
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_0807de68
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0x64
	bl		sub_0807ddf0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	orr		r4, r0
	str		r4, [sp, #0x10]
	ldrh	r5, [r7, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0x64
	bl		sub_0807de68
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0xc
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	orr		r4, r0
	str		r4, [sp, #0x14]
_0805ce7a:
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x8
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r0, [sp, #0xC]
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, [sp, #0x10]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r2, [sp, #0x14]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r4, #0xc8
	lsl		r4, r4, #0x2
	str		r4, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	bl		sub_0805cb14
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r6, #0x4
	b		_0805d262

.align 2, 0
.pool

_0805ceb8:	.4byte 0x0203EBE0
_0805cebc:	.4byte 0x080948b0
_0805cec0:	.4byte 0x0810f5c4
_0805cec4:	.4byte 0x0810f5e0
_0805cec8:	.4byte 0x0810f5ec
_0805cecc:	.4byte 0x0810f5f0
_0805ced0:	.4byte 0x0810f618
_0805ced4:	.4byte 0x0810f630
_0805ced8:	.4byte 0x0810f638
_0805cedc:	.4byte 0x0810f664
_0805cee0:	.4byte 0x0000F20F
_0805cee4:	.4byte 0x0000034A
_0805cee8:	.4byte 0x0000F60F
_0805ceec:	.4byte 0x0000FA0F
_0805cef0:	.4byte 0x0000038A
_0805cef4:	.4byte 0x0000FE0F
_0805cef8:	.4byte 0x0000F22F
_0805cefc:	.4byte 0x000003CA
_0805cf00:	.4byte 0x0000F62F
_0805cf04:	.4byte 0x0000FA2F
_0805cf08:	.4byte 0x0000040A
_0805cf0c:	.4byte 0x0000FE2F
_0805cf10:	.4byte 0x0000F20D
_0805cf14:	.4byte 0x0000F60D
_0805cf18:	.4byte 0x0000FA0D
_0805cf1c:	.4byte 0x0000FE0D
_0805cf20:	.4byte 0x0000F20E
_0805cf24:	.4byte 0x0000F22D
_0805cf28:	.4byte 0x00006A3C
_0805cf2c:	.4byte 0x00006A4C
_0805cf30:	.4byte 0x00001770

_0805cf34:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x2
	bl		sub_08026fec
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0805cf58
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0805cf54
	b		_0805cff2

.align 2, 0
.pool

_0805cf54:	.4byte 0x0805C789

_0805cf58:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805d050
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r1, [sp, #0xC]
	mov		r4, #0xf
	and		r1, r4
	ldr		r0, _0805cfd4
	add		r3, r1, #0x0
	mul		r3, r0
	ldr		r2, [sp, #0x10]
	lsr		r1, r2, #0x4
	and		r1, r4
	lsl		r0, r1, #0x5
	sub		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x3
	add		r3, r3, r0
	and		r2, r4
	mov		r0, #0x64
	mul		r0, r2
	add		r3, r3, r0
	ldr		r2, [sp, #0x14]
	lsr		r1, r2, #0x4
	and		r1, r4
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r3, r3, r0
	and		r2, r4
	add		r3, r3, r2
	ldr		r0, _0805cfd8
	add		r0, r10
	strh	r3, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	bl		sub_0805ff20
	add		r3, r0, #0x0
	cmp		r3, #0x1
	bne		_0805d00c
	ldr		r0, _0805cfdc
	add		r0, r10
	str		r5, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805cff0
	ldr		r1, _0805cfe0
	ldr		r0, _0805cfe4
	str		r1, [r0, #0x0]
	ldr		r0, _0805cfe8
	bl		sub_0806581c
	ldr		r0, _0805cfec
	b		_0805cff2

.align 2, 0
.pool

_0805cfd4:	.4byte 0x00001770
_0805cfd8:	.4byte 0x00006A4C
_0805cfdc:	.4byte 0x00006B74
_0805cfe0:	.4byte sub_0805e4dc
_0805cfe4:	.4byte 0x0203ED50
_0805cfe8:	.4byte 0x0805CBC5
_0805cfec:	.4byte 0x080657B1

_0805cff0:
	ldr		r0, _0805d004
_0805cff2:
	ldr		r2, _0805d008
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805d050

.align 2, 0
.pool

_0805d004:	.4byte sub_0805e4dc
_0805d008:	.4byte RunGameLogic_CallBack

_0805d00c:
	cmp		r3, #0x2
	bne		_0805d020
	ldr		r0, _0805d040
	ldr		r2, _0805d044
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805d020:
	cmp		r3, #0x3
	bne		_0805d034
	ldr		r0, _0805d048
	ldr		r2, _0805d044
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805d034:
	ldr		r1, _0805d04c
	add		r1, r10
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_0805d26e

.align 2, 0
.pool

_0805d040:	.4byte 0x0805C789
_0805d044:	.4byte RunGameLogic_CallBack
_0805d048:	.4byte 0x0805CBC5
_0805d04c:	.4byte 0x00006B74

_0805d050:
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x20
	beq		_0805d070
	cmp		r0, #0x20
	bgt		_0805d066
	cmp		r0, #0x10
	beq		_0805d074
	b		_0805d1ce
_0805d066:
	cmp		r0, #0x40
	beq		_0805d078
	cmp		r0, #0x80
	beq		_0805d11c
	b		_0805d1ce
_0805d070:
	sub		r6, #0x1
	b		_0805d1ce
_0805d074:
	add		r6, #0x1
	b		_0805d1ce
_0805d078:
	mov		r0, #0x8d
	bl		sub_0807073c
	cmp		r6, #0x4
	bls		_0805d084
	b		_0805d1ce
_0805d084:
	lsl		r0, r6, #0x2
	ldr		r1, _0805d090
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_0805d090:	.4byte 0x0805d094
_0805d094:	.4byte 0x0805d0a8

.incbin "base.gba", 0x5D098, 0xC
_0805d0a4:	.4byte 0x0805d104

_0805d0a8:
	ldr		r1, [sp, #0xC]
	mov		r2, #0x10
	neg		r2, r2
	and		r2, r1
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x8
	bhi		_0805d0bc
	add		r0, r1, #0x1
	orr		r2, r0
_0805d0bc:
	str		r2, [sp, #0xC]
	b		_0805d1ce

.incbin "base.gba", 0x5D0C0, 0x16
	thumb_func_end sub_0805cbc4


.incbin "base.gba", 0x5D0D6, 0x2E

_0805d104:

.incbin "base.gba", 0x5D104, 0x14
_0805d118:

.incbin "base.gba", 0x5D118, 0x4
_0805d11c:

.incbin "base.gba", 0x5D11C, 0x14
_0805d130:	.4byte 0x0805d134
_0805d134:	.4byte 0x0805d148

.incbin "base.gba", 0x5D138, 0xC
_0805d144:	.4byte 0x0805d1b4

_0805d148:

.incbin "base.gba", 0x5D148, 0x14
_0805d15c:

.incbin "base.gba", 0x5D15C, 0x2
_0805d15e:

.incbin "base.gba", 0x5D15E, 0x56

_0805d1b4:

.incbin "base.gba", 0x5D1B4, 0x14
_0805d1c8:

.incbin "base.gba", 0x5D1C8, 0x2
_0805d1ca:

.incbin "base.gba", 0x5D1CA, 0x4
_0805d1ce:

.incbin "base.gba", 0x5D1CE, 0x6
_0805d1d4:

.incbin "base.gba", 0x5D1D4, 0x6
_0805d1da:

.incbin "base.gba", 0x5D1DA, 0x62
_0805d23c:

.incbin "base.gba", 0x5D23C, 0x2
_0805d23e:

.incbin "base.gba", 0x5D23E, 0x1A
_0805d258:

.incbin "base.gba", 0x5D258, 0xA
_0805d262:

.incbin "base.gba", 0x5D262, 0xC
_0805d26e:

.incbin "base.gba", 0x5D26E, 0x12
_0805d280:	.4byte 0x080e4820
_0805d284:	.4byte 0x0810f66d
_0805d288:	.4byte RunGameLogic_CallBack
_0805d28c:	.4byte 0x0805CBC5

	thumb_func_start sub_0805d290
sub_0805d290:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1f4
	ldr		r0, _0805d5d0
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	bl		sub_08060bf4
	str		r0, [sp, #0x1D4]
	mov		r0, #0x0
	str		r0, [sp, #0x1D8]
	bl		sub_08057370
	add		r4, r0, #0x0
	ldr		r0, _0805d5d4
	add		r0, r10
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x1DC]
	mov		r1, #0x0
	mov		r9, r1
	mov		r2, #0x2
	str		r2, [sp, #0x1E4]
	mov		r0, #0x0
	ldr		r1, [sp, #0x1DC]
	bl		sub_080694c4
	bl		sub_0805a05c
	add		r5, sp, #0x2c
	str		r0, [sp, #0x2C]
	mov		r0, #0x1
	ldr		r1, [sp, #0x1DC]
	bl		sub_080694c4
	bl		sub_0805a05c
	str		r0, [r5, #0x4]
	mov		r0, #0x2
	ldr		r1, [sp, #0x1DC]
	bl		sub_080694c4
	bl		sub_0805a05c
	str		r0, [r5, #0x8]
	add		r1, sp, #0x38
	ldr		r3, _0805d5d8
	add		r0, r4, r3
	ldrb	r0, [r0, #0x0]
	str		r0, [sp, #0x38]
	ldr		r2, _0805d5dc
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	str		r0, [r1, #0x4]
	add		r3, #0x2
	add		r4, r4, r3
	ldrb	r0, [r4, #0x0]
	str		r0, [r1, #0x8]
	ldr		r0, [sp, #0x38]
	cmp		r0, #0x0
	bne		_0805d312
	mov		r0, #0x4
	str		r0, [sp, #0x38]
_0805d312:
	ldr		r0, [sp, #0x3C]
	cmp		r0, #0x0
	bne		_0805d31c
	mov		r0, #0x3
	str		r0, [sp, #0x3C]
_0805d31c:
	ldr		r0, [sp, #0x40]
	cmp		r0, #0x0
	bne		_0805d326
	mov		r0, #0x4
	str		r0, [sp, #0x40]
_0805d326:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805d5e0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5e4
	ldr		r0, [sp, #0x1D8]
	str		r0, [sp, #0x0]
	mov		r6, #0x3
	str		r6, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x2
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5e8
	ldr		r1, [sp, #0x1D8]
	str		r1, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5ec
	ldr		r0, [sp, #0x1D8]
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5f0
	ldr		r1, [sp, #0x1D8]
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5f4
	mov		r8, r2
	ldr		r0, [sp, #0x1D8]
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5f8
	ldr		r1, [sp, #0x1D8]
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xf
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, [sp, #0x1D8]
	str		r2, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xf
	mov		r2, r8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805d5fc
	ldr		r0, [sp, #0x1D8]
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x11
	mov		r1, #0xf
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0xd2
	lsl		r1, r1, #0x2
	add		r2, r0, r1
	ldr		r3, _0805d600
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805d604
	add		r2, r0, r1
	ldr		r3, _0805d608
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0xe2
	lsl		r1, r1, #0x2
	add		r2, r0, r1
	ldr		r3, _0805d60c
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805d610
	add		r2, r0, r1
	ldr		r3, _0805d614
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0xf2
	lsl		r1, r1, #0x2
	add		r2, r0, r1
	ldr		r3, _0805d618
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805d61c
	add		r2, r0, r1
	ldr		r3, _0805d620
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	mov		r1, #0x81
	lsl		r1, r1, #0x3
	add		r2, r0, r1
	ldr		r3, _0805d624
	add		r1, r3, #0x0
	strh	r1, [r2, #0x0]
	ldr		r1, _0805d628
	add		r0, r0, r1
	ldr		r2, _0805d62c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08069324
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _0805d630
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	ldr		r2, _0805d634
	add		r0, r2, #0x0
	strh	r0, [r3, #0x2e]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805d638
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805d63c
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, [sp, #0x1DC]
	lsl		r0, r0, #0x2
	str		r0, [sp, #0x1EC]
	mov		r1, #0x12
	add		r1, sp
	mov		r8, r1
	mov		r2, sp
	add		r2, #0x1b
	str		r2, [sp, #0x1E8]
	ldr		r0, _0805d640
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805d4f2:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805d4f2
	ldr		r0, _0805d644
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805d50a:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805d50a
	mov		r7, #0x1
	mov		r6, #0x1
	ldr		r0, _0805d648
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805d528
	add		r6, r0, #0x0
	add		r7, r6, #0x0
_0805d528:
	ldr		r1, _0805d64c
	add		r1, r10
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0805d536
	add		r1, r0, #0x0
	mov		r9, r1
_0805d536:
	ldr		r1, [sp, #0x1E4]
	cmp		r9, r1
	ble		_0805d53e
	mov		r9, r1
_0805d53e:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r4, r0, #0x0
	mov		r0, r9
	ldr		r1, [sp, #0x1DC]
	bl		sub_080694c4
	mov		r1, #0x3
	str		r1, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	mov		r1, #0x9
	mov		r2, #0x8
	add		r3, r4, #0x0
	bl		sub_08067624
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r2, #0x1
	str		r2, [sp, #0x1E0]
	ldr		r0, [sp, #0x1DC]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	asr		r5, r0, #0x18
	bl		sub_08057370
	ldr		r3, [sp, #0x1EC]
	ldr		r2, [sp, #0x1DC]
	add		r1, r3, r2
	lsl		r1, r1, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r1, r1, r3
	add		r4, r0, r1
	mov		r0, r8
	bl		getMgbNicknameFromSave
	ldr		r0, [sp, #0x1E8]
	bl		getMgbUn2FromSave
	cmp		r4, #0x0
	beq		_0805d660
	ldrh	r1, [r4, #0x2]
	cmp		r1, #0x0
	beq		_0805d660
	mov		r0, #0x1
	neg		r0, r0
	cmp		r5, r0
	beq		_0805d650
	add		r0, sp, #0xc
	strh		r1, [r0, #0x4]
	ldr		r0, [r4, #0x4]
	str		r0, [sp, #0xC]
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057850
	add		r1, sp, #0xc
	strb	r0, [r1, #0xB]
	b		_0805d6ac

.align 2, 0
.pool

_0805d5d0:	.4byte 0x0203EBE0
_0805d5d4:	.4byte 0x00006A3C
_0805d5d8:	.4byte 0x00000B9A
_0805d5dc:	.4byte 0x00000B9B
_0805d5e0:	.4byte 0x080948b0
_0805d5e4:	.4byte 0x0810f674
_0805d5e8:	.4byte 0x0810f694
_0805d5ec:	.4byte 0x0810f5f0
_0805d5f0:	.4byte 0x0810f618
_0805d5f4:	.4byte 0x0810f630
_0805d5f8:	.4byte 0x0810f638
_0805d5fc:	.4byte 0x0810f664
_0805d600:	.4byte 0x0000F20F
_0805d604:	.4byte 0x0000034A
_0805d608:	.4byte 0x0000F60F
_0805d60c:	.4byte 0x0000FA0F
_0805d610:	.4byte 0x0000038A
_0805d614:	.4byte 0x0000FE0F
_0805d618:	.4byte 0x0000F22F
_0805d61c:	.4byte 0x000003CA
_0805d620:	.4byte 0x0000F62F
_0805d624:	.4byte 0x0000FA2F
_0805d628:	.4byte 0x0000040A
_0805d62c:	.4byte 0x0000FE2F
_0805d630:	.4byte 0x0000F20D
_0805d634:	.4byte 0x0000F60D
_0805d638:	.4byte 0x0000FA0D
_0805d63c:	.4byte 0x0000FE0D
_0805d640:	.4byte 0x0000F20E
_0805d644:	.4byte 0x0000F22D
_0805d648:	.4byte 0x00006A48
_0805d64c:	.4byte 0x00006A47

_0805d650:
	add		r0, sp, #0xc
	strh		r1, [r0, #0x4]
	ldr		r0, [r4, #0x4]
	str		r0, [sp, #0xC]
	add		r1, sp, #0xc
	ldrb	r0, [r4, #0x8]
	strb	r0, [r1, #0xB]
	b		_0805d6ac
_0805d660:
	add		r1, sp, #0xc
	mov		r0, #0x0
	strh		r0, [r1, #0x4]
	str		r0, [sp, #0xC]
	add		r4, r1, #0x0
	sub		r0, #0x1
	cmp		r5, r0
	beq		_0805d6a8
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057850
	b		_0805d6aa
_0805d67a:
	ldr		r0, _0805d698
	str		r4, [r0, #0x0]
	ldr		r0, _0805d69c
	bl		sub_0806581c
	ldr		r0, _0805d6a0
	ldr		r2, _0805d6a4
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805ddb4

.align 2, 0
.pool

_0805d698:	.4byte 0x0203ED50
_0805d69c:	.4byte 0x0805D291
_0805d6a0:	.4byte 0x080657B1
_0805d6a4:	.4byte RunGameLogic_CallBack

_0805d6a8:
	mov		r0, #0x0
_0805d6aa:
	strb	r0, [r4, #0xB]
_0805d6ac:
	mov		r0, #0x1
	neg		r0, r0
	mov		r1, #0x2
	str		r1, [sp, #0x1E4]
	cmp		r5, r0
	beq		_0805d6ba
	b		_0805dda8
_0805d6ba:
	mov		r2, #0x1
	str		r2, [sp, #0x1E4]
	b		_0805dda8
_0805d6c0:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805d6f4
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0805d6ec
	ldr		r2, _0805d6f0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805d7d8

.align 2, 0
.pool

_0805d6ec:	.4byte 0x0805C789
_0805d6f0:	.4byte RunGameLogic_CallBack

_0805d6f4:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805d7d8
	mov		r4, #0x0
	mov		r2, #0x0
	mov		r5, #0x0
	mov		r1, #0x0
	ldr		r3, [sp, #0x1D8]
	cmp		r3, #0x0
	beq		_0805d726
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_0805d726
	add		r0, r3, #0x0
	add		r0, #0xf
	ldr		r1, _0805d778
	add		r1, r10
	mov		r2, #0x10
	bl		sub_08057300
	ldr		r4, _0805d77c
	mov		r2, #0x1
	mov		r1, #0x8e
_0805d726:
	cmp		r2, #0x0
	bne		_0805d734
	ldr		r0, [sp, #0x1E4]
	cmp		r9, r0
	bgt		_0805d734
	ldr		r4, _0805d780
	mov		r1, #0x8e
_0805d734:
	ldr		r0, _0805d784
	add		r0, r10
	str		r6, [r0, #0x0]
	ldr		r0, _0805d788
	add		r0, r10
	mov		r2, r9
	strb	r2, [r0, #0x0]
	add		r0, r1, #0x0
	bl		sub_0807073c
	cmp		r5, #0x0
	bne		_0805d7d8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	bl		sub_0805ff20
	add		r3, r0, #0x0
	cmp		r3, #0x1
	bne		_0805d794
	ldr		r0, _0805d78c
	add		r0, r10
	str		r5, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	beq		_0805d67a
	ldr		r0, _0805d790
	str		r4, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	b		_0805ddb4

_0805d778:	.4byte 0x00006A4E
_0805d77c:	.4byte sub_0805e638
_0805d780:	.4byte sub_0805e558
_0805d784:	.4byte 0x00006A48
_0805d788:	.4byte 0x00006A47
_0805d78c:	.4byte 0x00006B74
_0805d790:	.4byte RunGameLogic_CallBack

_0805d794:
	cmp		r3, #0x2
	bne		_0805d7a8
	ldr		r0, _0805d7c8
	ldr		r2, _0805d7cc
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805d7a8:
	cmp		r3, #0x3
	bne		_0805d7bc
	ldr		r0, _0805d7d0
	ldr		r2, _0805d7cc
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805d7bc:
	ldr		r1, _0805d7d4
	add		r1, r10
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_0805ddb4

.align 2, 0
.pool

_0805d7c8:	.4byte 0x0805C789
_0805d7cc:	.4byte RunGameLogic_CallBack
_0805d7d0:	.4byte 0x0805D291
_0805d7d4:	.4byte 0x00006B74

_0805d7d8:
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x20
	beq		_0805d7fa
	cmp		r0, #0x20
	bgt		_0805d7ee
	cmp		r0, #0x10
	beq		_0805d814
	b		_0805d9fa
_0805d7ee:
	cmp		r0, #0x40
	beq		_0805d832
	cmp		r0, #0x80
	bne		_0805d7f8
	b		_0805d91c
_0805d7f8:
	b		_0805d9fa
_0805d7fa:
	ldr		r3, [sp, #0x1E0]
	add		r3, #0x1
	str		r3, [sp, #0x1E0]
	mov		r1, r9
	lsl		r0, r1, #0x2
	add		r0, sp
	add		r0, #0x38
	ldr		r0, [r0, #0x0]
	cmp		r3, r0
	ble		_0805d82a
	mov		r2, #0x0
	str		r2, [sp, #0x1E0]
	b		_0805d82a
_0805d814:
	ldr		r3, [sp, #0x1E0]
	sub		r3, #0x1
	str		r3, [sp, #0x1E0]
	cmp		r3, #0x0
	bge		_0805d82a
	mov		r1, r9
	lsl		r0, r1, #0x2
	add		r0, sp
	add		r0, #0x38
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x1E0]
_0805d82a:
	mov		r0, #0x8d
	bl		sub_0807073c
	b		_0805d9fa
_0805d832:
	mov		r0, #0x8d
	bl		sub_0807073c
	ldr		r2, [sp, #0x1E0]
	cmp		r2, #0x5
	bls		_0805d840
	b		_0805d9fa
_0805d840:
	lsl		r0, r2, #0x2
	ldr		r1, _0805d84c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_0805d84c:	.4byte 0x0805d850
_0805d850:	.4byte 0x0805d90e

.incbin "base.gba", 0x5D854, 0xC
_0805d860:	.4byte 0x0805d894

.incbin "base.gba", 0x5D864, 0x30

_0805d894:
	ldr		r1, _0805d8a8
	add		r0, r7, #0x0
	bl		sub_0807de68
	ldr		r1, _0805d8ac
	cmp		r0, r1
	bhi		_0805d8b0
	mov		r2, #0xfa
	lsl		r2, r2, #0x2
	b		_0805d9bc

_0805d8a8:	.4byte 0x00002710
_0805d8ac:	.4byte 0x00002327

_0805d8b0:
	ldr		r3, _0805d8b8
	add		r0, r7, r3
	b		_0805d9be

.align 2, 0
.pool

_0805d8b8:	.4byte 0xFFFFDCD8

.incbin "base.gba", 0x5D8BC, 0x28
	thumb_func_end sub_0805d290


.incbin "base.gba", 0x5D8E4, 0x38

_0805d91c:

.incbin "base.gba", 0x5D91C, 0x18
_0805d934:	.4byte 0x0805d938
_0805d938:	.4byte 0x0805d9ec

.incbin "base.gba", 0x5D93C, 0xC
_0805d948:	.4byte 0x0805d978

.incbin "base.gba", 0x5D94C, 0x2C

_0805d978:

.incbin "base.gba", 0x5D978, 0x14
_0805d98c:	.4byte 0x00002710
_0805d990:	.4byte 0x000003E7
_0805d994:	.4byte 0xFFFFFC18

_0805d998:

.incbin "base.gba", 0x5D998, 0x8
_0805d9a0:	.4byte 0x00002328

.incbin "base.gba", 0x5D9A4, 0x18

_0805d9bc:

.incbin "base.gba", 0x5D9BC, 0x2
_0805d9be:

.incbin "base.gba", 0x5D9BE, 0x3C

_0805d9fa:

.incbin "base.gba", 0x5D9FA, 0x16
_0805da10:

.incbin "base.gba", 0x5DA10, 0x4
_0805da14:

.incbin "base.gba", 0x5DA14, 0x2
_0805da16:

.incbin "base.gba", 0x5DA16, 0xA
_0805da20:

.incbin "base.gba", 0x5DA20, 0xC
_0805da2c:	.4byte 0x0001869F
_0805da30:	.4byte 0xFFFE7960

_0805da34:

.incbin "base.gba", 0x5DA34, 0xC
_0805da40:	.4byte 0x0000270F
_0805da44:	.4byte 0xFFFFD8F0

_0805da48:

.incbin "base.gba", 0x5DA48, 0xC
_0805da54:	.4byte 0x000003E7
_0805da58:	.4byte 0xFFFFFC18

_0805da5c:

.incbin "base.gba", 0x5DA5C, 0x8
_0805da64:

.incbin "base.gba", 0x5DA64, 0x6
_0805da6a:

.incbin "base.gba", 0x5DA6A, 0x28
_0805da92:

.incbin "base.gba", 0x5DA92, 0x6
_0805da98:

.incbin "base.gba", 0x5DA98, 0x4
_0805da9c:

.incbin "base.gba", 0x5DA9C, 0x68
_0805db04:	.4byte 0x0810f6a0

_0805db08:

.incbin "base.gba", 0x5DB08, 0x8
_0805db10:

.incbin "base.gba", 0x5DB10, 0x20
_0805db30:	.4byte 0x0810f6b0

_0805db34:

.incbin "base.gba", 0x5DB34, 0x18
_0805db4c:

.incbin "base.gba", 0x5DB4C, 0xE
_0805db5a:

.incbin "base.gba", 0x5DB5A, 0x36
_0805db90:	.4byte 0x02033780
_0805db94:	.4byte 0x00006A3C

_0805db98:

.incbin "base.gba", 0x5DB98, 0x8
_0805dba0:

.incbin "base.gba", 0x5DBA0, 0x4
_0805dba4:

.incbin "base.gba", 0x5DBA4, 0x4
_0805dba8:

.incbin "base.gba", 0x5DBA8, 0x2
_0805dbaa:

.incbin "base.gba", 0x5DBAA, 0x1E
_0805dbc8:	.4byte 0x00006A38

_0805dbcc:

.incbin "base.gba", 0x5DBCC, 0x22
_0805dbee:

.incbin "base.gba", 0x5DBEE, 0x8
_0805dbf6:

.incbin "base.gba", 0x5DBF6, 0x16
_0805dc0c:

.incbin "base.gba", 0x5DC0C, 0x3E
_0805dc4a:

.incbin "base.gba", 0x5DC4A, 0x10
_0805dc5a:

.incbin "base.gba", 0x5DC5A, 0xA
_0805dc64:

.incbin "base.gba", 0x5DC64, 0x68
_0805dccc:	.4byte 0x00006A38
_0805dcd0:	.4byte 0x0810f6bc

_0805dcd4:

.incbin "base.gba", 0x5DCD4, 0x2C
_0805dd00:

.incbin "base.gba", 0x5DD00, 0x32
_0805dd32:

.incbin "base.gba", 0x5DD32, 0x12
_0805dd44:	.4byte 0x080e4820
_0805dd48:	.4byte 0x0810f6c7
_0805dd4c:	.4byte 0x080e49dc

_0805dd50:

.incbin "base.gba", 0x5DD50, 0x1C
_0805dd6c:

.incbin "base.gba", 0x5DD6C, 0x10
_0805dd7c:

.incbin "base.gba", 0x5DD7C, 0x18
_0805dd94:

.incbin "base.gba", 0x5DD94, 0x10
_0805dda4:

.incbin "base.gba", 0x5DDA4, 0x4
_0805dda8:

.incbin "base.gba", 0x5DDA8, 0xC
_0805ddb4:

.incbin "base.gba", 0x5DDB4, 0x14
_0805ddc8:	.4byte 0x080e49dc
_0805ddcc:	.4byte 0x0810f6c7
_0805ddd0:	.4byte 0x080e4820
_0805ddd4:	.4byte RunGameLogic_CallBack
_0805ddd8:	.4byte 0x0805D291
	thumb_func_start sub_0805dddc
sub_0805dddc:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0805de64
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805de68
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805de6c
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_08060644
	ldr		r2, _0805de70
	add		r1, r5, r2
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	bl		sub_0805ff20
	cmp		r0, #0x1
	bne		_0805de90
	ldr		r1, _0805de74
	add		r0, r5, r1
	str		r4, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805de88
	ldr		r0, _0805de78
	ldr		r1, _0805de7c
	str		r0, [r1, #0x0]
	ldr		r0, _0805de80
	bl		sub_0806581c
	ldr		r2, _0805de84
	b		_0805de9a

_0805de64:	.4byte 0x0203EBE0
_0805de68:	.4byte 0x080948b0
_0805de6c:	.4byte 0x0810f6cc
_0805de70:	.4byte 0x00006A4C
_0805de74:	.4byte 0x00006B74
_0805de78:	.4byte 0x0805E4DD
_0805de7c:	.4byte 0x0203ED50
_0805de80:	.4byte 0x0805DDDD
_0805de84:	.4byte 0x080657B1

_0805de88:
	ldr		r2, _0805de8c
	b		_0805de9a

_0805de8c:	.4byte 0x0805E4DD

_0805de90:
	ldr		r2, _0805deb4
	ldr		r0, _0805deb8
	add		r1, r5, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_0805de9a:
	ldr		r0, _0805debc
	str		r2, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805deb4:	.4byte 0x0805C789
_0805deb8:	.4byte 0x00006B74
_0805debc:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805dddc

	thumb_func_start sub_0805dec0
sub_0805dec0:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0805def4
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x48
	ldrb	r4, [r0, #0x0]
	cmp		r4, #0x0
	bne		_0805defc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805def8
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	bl		sub_08013e9c
	b		_0805df1e

_0805def4:	.4byte 0x0203EBE0
_0805def8:	.4byte 0x0810f708

_0805defc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805df3c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	bl		sub_08013e9c
_0805df1e:
	add		r1, r5, #0x0
	add		r1, #0x48
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0805df44
	bl		sub_08057370
	add		r0, #0xc
	ldr		r2, _0805df40
	add		r1, r5, r2
	mov		r2, #0x10
	bl		sub_08057300
	b		_0805df58

.align 2, 0
.pool

_0805df3c:	.4byte 0x0810f764
_0805df40:	.4byte 0x00006A4E

_0805df44:
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	ldr		r1, _0805df78
	add		r0, r0, r1
	add		r0, r5, r0
	ldr		r2, _0805df7c
	add		r1, r5, r2
	mov		r2, #0x10
	bl		sub_08057300
_0805df58:
	ldr		r1, _0805df7c
	add		r0, r5, r1
	mov		r1, #0x8
	mov		r2, #0x4
	mov		r3, #0xf
	bl		sub_0806e788
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805df78:	.4byte 0x00007DA4
_0805df7c:	.4byte 0x00006A4E
	thumb_func_end sub_0805dec0

	thumb_func_start sub_0805df80
sub_0805df80:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x1c
	ldr		r0, _0805e13c
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	bl		clearMgbPassword
	bl		sub_08059dc8
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e140
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0x3
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x2
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e144
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x5
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e148
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805e14c
	add		r1, r7, r2
	mov		r2, #0x8
	str		r2, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x11
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805e150
	add		r1, r7, r2
	mov		r4, #0xa
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x8
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805e154
	add		r1, r7, r2
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x11
	bl		sub_08064e00
	bl		sub_0805dec0
	ldr		r4, _0805e158
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x3
	mov		r2, #0xc
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _0805e15c
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	ldr		r2, _0805e160
	add		r0, r2, #0x0
	strh	r0, [r3, #0x2e]
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805e164
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0xb7
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r2, _0805e168
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r0, _0805e16c
	add		r4, r0, #0x0
	mov		r2, #0xa1
	lsl		r2, r2, #0x1
	add		r1, r3, r2
	add		r0, r3, #0x2
	mov		r2, #0x15
_0805e0a2:
	strh	r4, [r0, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r0, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805e0a2
	ldr		r0, _0805e170
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	add		r0, #0x40
	mov		r2, #0x3
_0805e0ba:
	strh	r1, [r0, #0x0]
	strh	r1, [r0, #0x2e]
	add		r0, #0x40
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805e0ba
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r2, _0805e174
	ldr		r1, [r2, #0x0]
	ldr		r0, _0805e178
	cmp		r1, r0
	beq		_0805e0de
	b		_0805e26a
_0805e0de:
	add		r6, r7, #0x0
	add		r6, #0x48
	add		r4, r2, #0x0
	mov		r2, #0x7
	mov		r8, r2
	mov		r9, r1
_0805e0ea:
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [r7, #0x34]
	add		r0, r1, #0x0
	add		r1, #0x1
	str		r1, [r7, #0x34]
	bl		sub_08069364
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	ldr		r1, _0805e17c
	mov		r3, #0x4
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805e184
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0805e180
_0805e12e:
	str		r0, [r4, #0x0]
_0805e130:
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, r8
	and		r0, r1
	strb	r0, [r4, #0x8]
	b		_0805e26a

_0805e13c:	.4byte 0x0203EBE0
_0805e140:	.4byte 0x0810f7c0
_0805e144:	.4byte 0x0810f7e0
_0805e148:	.4byte 0x0810f7e8
_0805e14c:	.4byte 0x00007DE4
_0805e150:	.4byte 0x00007DE9
_0805e154:	.4byte 0x00007DEE
_0805e158:	.4byte 0x080948b0
_0805e15c:	.4byte 0x0000F20D
_0805e160:	.4byte 0x0000F60D
_0805e164:	.4byte 0x0000FA0D
_0805e168:	.4byte 0x0000FE0D
_0805e16c:	.4byte 0x0000F20E
_0805e170:	.4byte 0x0000F22D
_0805e174:	.4byte RunGameLogic_CallBack
_0805e178:	.4byte 0x0805DF81
_0805e17c:	.4byte 0x0810f6e8
_0805e180:	.4byte 0x0805C789

_0805e184:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805e254
	mov		r0, #0x8e
	bl		sub_0807073c
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0805e1b0
	ldr		r0, _0805e1ac
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r2, r8
	and		r0, r2
	strb	r0, [r4, #0x8]
	b		_0805e26a

.align 2, 0
.pool

_0805e1ac:	.4byte sub_0805e3e8

_0805e1b0:
	mov		r2, #0x0
	add		r5, r6, #0x0
	ldr		r0, _0805e1ec
	add		r3, r7, r0
_0805e1b8:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0xc
	ldrb	r1, [r5, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x4
	add		r1, r2, r1
	add		r1, r3, r1
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0xf
	ble		_0805e1b8
	ldrb	r0, [r6, #0x0]
	lsl		r0, r0, #0x4
	ldr		r1, _0805e1f0
	add		r0, r0, r1
	add		r0, r7, r0
	bl		sub_0806ec04
	cmp		r0, #0x0
	bne		_0805e1f4
	mov		r2, r9
	str		r2, [r4, #0x0]
	b		_0805e130

.align 2, 0
.pool

_0805e1ec:	.4byte 0x00007DB4
_0805e1f0:	.4byte 0x00007DA4

_0805e1f4:
	mov		r2, #0xf
_0805e1f6:
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805e1f6
	ldr		r0, _0805e214
	bl		sub_0805ff20
	add		r1, r0, #0x0
	cmp		r1, #0x1
	bne		_0805e220
	ldr		r2, _0805e218
	add		r1, r7, r2
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, _0805e21c
	b		_0805e12e

_0805e214:	.4byte 0x00000101
_0805e218:	.4byte 0x00006B74
_0805e21c:	.4byte 0x0805e27d

_0805e220:
	cmp		r1, #0x2
	bne		_0805e232
	mov		r2, r9
	str		r2, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r2, r8
	and		r0, r2
	strb	r0, [r4, #0x8]
_0805e232:
	cmp		r1, #0x3
	bne		_0805e244
	mov		r0, r9
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, r8
	and		r0, r1
	strb	r0, [r4, #0x8]
_0805e244:
	ldr		r2, _0805e250
	add		r1, r7, r2
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	b		_0805e26a

.align 2, 0
.pool

_0805e250:	.4byte 0x00006B74

_0805e254:
	mov		r0, #0xf0
	bl		sub_08027014
	cmp		r0, #0x0
	beq		_0805e262
	bl		sub_0805dec0
_0805e262:
	ldr		r0, [r4, #0x0]
	cmp		r0, r9
	bne		_0805e26a
	b		_0805e0ea
_0805e26a:
	mov		r0, #0x1
	add		sp, #0x1c
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	ldr		r6, _0805e36c
	ldr		r7, [r6, #0x0]
	mov		r9, r7
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805e370
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e374
	mov		r0, #0x0
	mov		r8, r0
	str		r0, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e378
	mov		r1, r8
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x5
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		r0, r7, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	ldr		r2, _0805e37c
	add		r0, r0, r2
	add		r0, r7, r0
	ldr		r2, _0805e380
	add		r1, r7, r2
	mov		r2, #0x10
	bl		sub_08057300
	ldr		r1, _0805e384
	ldr		r6, [r6, #0x0]
	cmp		r1, #0x0
	beq		_0805e31e
	ldr		r0, _0805e388
	bl		sub_08013d0c
_0805e31e:
	mov		r0, #0xf
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	add		r3, r0, #0x0
	ldr		r1, _0805e38c
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805e346
	ldr		r0, _0805e390
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805e394
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805e346:
	cmp		r3, #0x0
	beq		_0805e3b4
	ldr		r2, _0805e398
	add		r0, r7, r2
	mov		r1, r8
	str		r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805e3ac
	ldr		r0, _0805e39c
	ldr		r1, _0805e3a0
	str		r0, [r1, #0x0]
	ldr		r0, _0805e3a4
	bl		sub_0806581c
	ldr		r2, _0805e3a8
	b		_0805e3be

.align 2, 0
.pool

_0805e36c:	.4byte 0x0203EBE0
_0805e370:	.4byte 0x080948b0
_0805e374:	.4byte 0x0810f5f0
_0805e378:	.4byte 0x0810f7f0
_0805e37c:	.4byte 0x00007DA4
_0805e380:	.4byte 0x00006A4E
_0805e384:	.4byte 0x08112b28
_0805e388:	.4byte 0x00008802
_0805e38c:	.4byte 0x00006B7C
_0805e390:	.4byte 0x0203ED54
_0805e394:	.4byte RunGameLogic_CallBack
_0805e398:	.4byte 0x00006B74
_0805e39c:	.4byte sub_0805e638
_0805e3a0:	.4byte 0x0203ED50
_0805e3a4:	.4byte 0x0805E27D
_0805e3a8:	.4byte 0x080657B1

_0805e3ac:
	ldr		r2, _0805e3b0
	b		_0805e3be

_0805e3b0:	.4byte sub_0805e638

_0805e3b4:
	ldr		r2, _0805e3dc
	ldr		r1, _0805e3e0
	add		r1, r9
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_0805e3be:
	ldr		r0, _0805e3e4
	str		r2, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805e3dc:	.4byte 0x0805DF81
_0805e3e0:	.4byte 0x00006B74
_0805e3e4:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805df80

	thumb_func_start sub_0805e3e8
sub_0805e3e8:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0805e46c
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805e470
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e474
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_08057370
	add		r0, #0xc
	ldr		r2, _0805e478
	add		r1, r5, r2
	mov		r2, #0x10
	bl		sub_08057300
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	bl		sub_0805ff20
	cmp		r0, #0x1
	beq		_0805e484
	ldr		r0, _0805e47c
	ldr		r2, _0805e480
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805e4c8

.align 2, 0
.pool

_0805e46c:	.4byte 0x0203EBE0
_0805e470:	.4byte 0x080948b0
_0805e474:	.4byte 0x0810f814
_0805e478:	.4byte 0x00006A4E
_0805e47c:	.4byte 0x0805DF81
_0805e480:	.4byte RunGameLogic_CallBack

_0805e484:
	ldr		r1, _0805e4a4
	add		r0, r5, r1
	str		r4, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0805e4b8
	ldr		r0, _0805e4a8
	ldr		r1, _0805e4ac
	str		r0, [r1, #0x0]
	ldr		r0, _0805e4b0
	bl		sub_0806581c
	ldr		r1, _0805e4b4
	b		_0805e4ba

.align 2, 0
.pool

_0805e4a4:	.4byte 0x00006B74
_0805e4a8:	.4byte 0x0805E639
_0805e4ac:	.4byte 0x0203ED50
_0805e4b0:	.4byte 0x0805DF81
_0805e4b4:	.4byte 0x080657B1

_0805e4b8:
	ldr		r1, _0805e4d4
_0805e4ba:
	ldr		r0, _0805e4d8
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0805e4c8:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805e4d4:	.4byte 0x0805E639
_0805e4d8:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e3e8

	thumb_func_start sub_0805e4dc
sub_0805e4dc:
	push	{ r4, lr }
	ldr		r0, _0805e520
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, _0805e524
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805e528
	add		r4, r4, r2
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	bl		sub_08062c3c
	cmp		r0, #0x0
	beq		_0805e538
	bl		sub_080590ec
	cmp		r0, #0x0
	beq		_0805e538
	ldr		r1, _0805e52c
	ldr		r0, _0805e530
	str		r1, [r0, #0x0]
	ldr		r1, _0805e534
	b		_0805e53a

.align 2, 0
.pool

_0805e520:	.4byte 0x0203EBE0
_0805e524:	.4byte 0x00006A3C
_0805e528:	.4byte 0x00006A4C
_0805e52c:	.4byte sub_0805e99c
_0805e530:	.4byte 0x0203ED50
_0805e534:	.4byte sub_0805f2d8

_0805e538:
	ldr		r1, _0805e550
_0805e53a:
	ldr		r0, _0805e554
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805e550:	.4byte sub_0805ec5c
_0805e554:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e4dc

	thumb_func_start sub_0805e558
sub_0805e558:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x8
	ldr		r0, _0805e598
	ldr		r4, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_08060bf4
	add		r5, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x4]
	mov		r6, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, _0805e59c
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0805e5a0
	cmp		r0, #0x1
	ble		_0805e5ce
	cmp		r0, #0x2
	beq		_0805e5ac
	b		_0805e5ce

.align 2, 0
.pool

_0805e598:	.4byte 0x0203EBE0
_0805e59c:	.4byte 0x00006A47

_0805e5a0:
	mov		r7, #0x1
	add		r0, r5, #0x0
	add		r1, sp, #0x4
	bl		copyMgbPrefectureIdToBuffer
	b		_0805e5ce
_0805e5ac:
	mov		r7, #0x2
	ldr		r5, _0805e5fc
	ldr		r2, _0805e600
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	blt		_0805e5ce
	ldrb	r0, [r5, #0x0]
	mov		r6, #0x7
	and		r6, r0
_0805e5ce:
	ldr		r1, _0805e600
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805e604
	add		r1, r4, r2
	ldr		r1, [r1, #0x0]
	ldr		r3, [sp, #0x4]
	str		r6, [sp, #0x0]
	add		r2, r7, #0x0
	bl		sub_08062828
	cmp		r0, #0x0
	beq		_0805e614
	bl		sub_080590ec
	cmp		r0, #0x0
	beq		_0805e614
	ldr		r1, _0805e608
	ldr		r0, _0805e60c
	str		r1, [r0, #0x0]
	ldr		r1, _0805e610
	b		_0805e616

.align 2, 0
.pool

_0805e5fc:	.4byte 0x02032B30
_0805e600:	.4byte 0x00006A3C
_0805e604:	.4byte 0x00006A48
_0805e608:	.4byte sub_0805e99c
_0805e60c:	.4byte 0x0203ED50
_0805e610:	.4byte sub_0805f2d8

_0805e614:
	ldr		r1, _0805e630
_0805e616:
	ldr		r0, _0805e634
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0x8
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805e630:	.4byte sub_0805ec5c
_0805e634:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e558

	thumb_func_start sub_0805e638
sub_0805e638:
	push	{ r4, lr }
	ldr		r0, _0805e678
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, _0805e67c
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	add		r1, #0x12
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		sub_08062db0
	cmp		r0, #0x0
	beq		_0805e68c
	bl		sub_080590ec
	cmp		r0, #0x0
	beq		_0805e68c
	ldr		r1, _0805e680
	ldr		r0, _0805e684
	str		r1, [r0, #0x0]
	ldr		r1, _0805e688
	b		_0805e68e

_0805e678:	.4byte 0x0203EBE0
_0805e67c:	.4byte 0x00006A3C
_0805e680:	.4byte sub_0805e6ac
_0805e684:	.4byte 0x0203ED50
_0805e688:	.4byte sub_0805f2d8

_0805e68c:
	ldr		r1, _0805e6a4
_0805e68e:
	ldr		r0, _0805e6a8
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805e6a4:	.4byte sub_0805ec5c
_0805e6a8:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e638

	thumb_func_start sub_0805e6ac
sub_0805e6ac:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _0805e7d8
	mov		r8, r0
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	str		r0, [sp, #0xC]
	ldr		r1, _0805e7dc
	str		r1, [sp, #0x10]
	mov		r0, #0x0
	mov		r9, r0
	ldr		r1, _0805e7e0
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	bl		sub_0805a170
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_0805e6e4
	b		_0805e918
_0805e6e4:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e7e4
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e7e8
	mov		r1, r9
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_08057378
	mov		r1, #0x8
	add		r1, r1, r0
	mov		r10, r1
	add		r6, r0, #0x0
	add		r6, #0x16
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	bl		sub_08060bf4
	add		r1, r0, #0x0
	mov		r0, #0x39
	add		r0, r0, r7
	mov		r8, r0
	cmp		r6, #0x0
	beq		_0805e780
	add		r0, r6, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0805e784
	bl		sub_08057370
	mov		r4, #0x0
	ldr		r1, _0805e7ec
	add		r5, r0, r1
_0805e76a:
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0805e784
	add		r5, #0x18
	add		r4, #0x1
	cmp		r4, #0x2
	ble		_0805e76a
_0805e780:
	mov		r0, #0x1
	mov		r9, r0
_0805e784:
	mov		r1, r8
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x1
	bne		_0805e7ae
	add		r0, r7, #0x0
	add		r0, #0x3f
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x2
	bne		_0805e7ae
	add		r0, r7, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805e7ae
	cmp		r0, #0x3
	bhi		_0805e7ae
	mov		r0, #0x0
	mov		r9, r0
_0805e7ae:
	mov		r1, r9
	cmp		r1, #0x0
	bne		_0805e834
	mov		r4, r10
	add		r4, #0xe
	add		r0, r4, #0x0
	ldr		r1, [sp, #0xC]
	mov		r2, #0x10
	bl		sub_08057328
	mov		r8, r4
	cmp		r0, #0x0
	bne		_0805e834
	add		r0, r7, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	sub		r6, r0, #0x1
	mov		r4, #0x0
	ldr		r0, _0805e7f0
	add		r5, r7, r0
	b		_0805e7f8

_0805e7d8:	.4byte 0x0203EBE0
_0805e7dc:	.4byte 0x0805C789
_0805e7e0:	.4byte 0x00006A45
_0805e7e4:	.4byte 0x0810f844
_0805e7e8:	.4byte 0x0810f284
_0805e7ec:	.4byte 0x00000BA8
_0805e7f0:	.4byte 0x00007DB4

_0805e7f4:
	add		r5, #0x10
	add		r4, #0x1
_0805e7f8:
	cmp		r4, #0x2
	bgt		_0805e80c
	add		r0, r5, #0x0
	mov		r1, r8
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	beq		_0805e7f4
	add		r6, r4, #0x0
_0805e80c:
	lsl		r4, r6, #0x2
	add		r4, r4, r6
	ldr		r1, _0805e898
	add		r4, r4, r1
	add		r4, r7, r4
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		getMgbUnk4FromSave
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		setMgbUnk14FromSaveByOffset
	ldr		r1, _0805e89c
	add		r0, r7, r1
	add		r1, r6, #0x0
	bl		setMgbUnk1InUnk14FromSaveByOffset
	bl		sub_08057428
_0805e834:
	bl		sub_0805c408
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0805e84a
	cmp		r6, #0x0
	bne		_0805e8e4
_0805e84a:
	mov		r0, #0x0
	bl		sub_08057378
	add		r4, r0, #0x0
	add		r4, #0x8
	ldr		r1, _0805e8a0
	add		r0, r7, r1
	ldrb	r1, [r0, #0x0]
	add		r0, r7, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	mov		r0, #0x8
	mov		r1, #0x3
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_08060338
	cmp		r6, #0x0
	beq		_0805e8a8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e8a4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xd
	bl		sub_08013e9c
	b		_0805e8e4

.align 2, 0
.pool

_0805e898:	.4byte 0x00007DE4
_0805e89c:	.4byte 0x00006A4E
_0805e8a0:	.4byte 0x00006A3C
_0805e8a4:	.4byte 0x0810f86c

_0805e8a8:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e8fc
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e900
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xe
	bl		sub_08013e9c
_0805e8e4:
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r6, #0x0
	beq		_0805e908
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0805e908
	ldr		r1, _0805e904
	str		r1, [sp, #0x10]
	b		_0805e968

.align 2, 0
.pool

_0805e8fc:	.4byte 0x0810f898
_0805e900:	.4byte 0x0810f8ac
_0805e904:	.4byte sub_0805ed08

_0805e908:
	ldr		r1, _0805e914
	mov		r0, #0x0
	bl		sub_0805b720
	b		_0805e968

.align 2, 0
.pool

_0805e914:	.4byte 0x0806072D

_0805e918:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e990
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805e994
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
_0805e968:
	ldr		r0, _0805e998
	ldr		r1, [sp, #0x10]
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	ldr		r0, [sp, #0xC]
	bl		clearMgbPassword
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805e990:	.4byte 0x0810f8cc
_0805e994:	.4byte 0x0810f8f4
_0805e998:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e6ac

	thumb_func_start sub_0805e99c
sub_0805e99c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _0805ea70
	mov		r10, r0
	ldr		r1, [r0, #0x0]
	mov		r8, r1
	mov		r0, r8
	bl		sub_08060bf4
	str		r0, [sp, #0xC]
	ldr		r0, _0805ea74
	str		r0, [sp, #0x10]
	mov		r1, #0x0
	mov		r9, r1
	ldr		r0, _0805ea78
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	bl		sub_0805a170
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_0805e9d6
	b		_0805ebd8
_0805e9d6:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ea7c
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ea80
	mov		r1, r9
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_08057378
	add		r7, r0, #0x0
	add		r7, #0x8
	add		r6, r0, #0x0
	add		r6, #0x16
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	bl		sub_08060bf4
	add		r1, r0, #0x0
	cmp		r6, #0x0
	beq		_0805ea6a
	add		r0, r6, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0805ea88
	bl		sub_08057370
	mov		r5, #0x0
	ldr		r1, _0805ea84
	add		r4, r0, r1
_0805ea54:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0805ea88
	add		r4, #0x18
	add		r5, #0x1
	cmp		r5, #0x2
	ble		_0805ea54
_0805ea6a:
	mov		r0, #0x1
	mov		r9, r0
	b		_0805eaf8

_0805ea70:	.4byte 0x0203EBE0
_0805ea74:	.4byte 0x0805C789
_0805ea78:	.4byte 0x00006A45
_0805ea7c:	.4byte 0x0810f844
_0805ea80:	.4byte 0x0810f284
_0805ea84:	.4byte 0x00000BA8

_0805ea88:
	add		r6, r7, #0x0
	add		r6, #0xe
	bl		sub_08057370
	add		r7, r6, #0x0
	cmp		r7, #0x0
	beq		_0805eaf8
	mov		r5, #0x0
	ldr		r1, _0805eab4
	add		r4, r0, r1
_0805ea9c:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0805eab8
	add		r4, #0x18
	add		r5, #0x1
	cmp		r5, #0x2
	ble		_0805ea9c
	b		_0805eaf8

_0805eab4:	.4byte 0x00000BA8

_0805eab8:
	mov		r5, #0x0
	ldr		r4, _0805eac0
	add		r4, r8
	b		_0805eac8

_0805eac0:	.4byte 0x00007DB4

_0805eac4:
	add		r4, #0x10
	add		r5, #0x1
_0805eac8:
	cmp		r5, #0x1
	bgt		_0805eada
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	beq		_0805eac4
_0805eada:
	lsl		r4, r5, #0x2
	add		r4, r4, r5
	ldr		r0, _0805eb5c
	add		r4, r4, r0
	add		r4, r8
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		getMgbUnk4FromSave
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		setMgbUnk14FromSaveByOffset
	bl		sub_08057428
_0805eaf8:
	bl		sub_0805c408
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r1, r9
	cmp		r1, #0x0
	beq		_0805eb0e
	cmp		r6, #0x0
	bne		_0805eba4
_0805eb0e:
	mov		r0, #0x0
	bl		sub_08057378
	add		r4, r0, #0x0
	add		r4, #0x8
	ldr		r0, _0805eb60
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, r8
	mov		r2, #0x0
	bl		sub_08069568
	mov		r0, #0x8
	mov		r1, #0x3
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_08060338
	cmp		r6, #0x0
	beq		_0805eb68
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805eb64
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xd
	bl		sub_08013e9c
	b		_0805eba4

.align 2, 0
.pool

_0805eb5c:	.4byte 0x00007DE4
_0805eb60:	.4byte 0x00006A3C
_0805eb64:	.4byte 0x0810f86c

_0805eb68:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ebbc
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ebc0
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xe
	bl		sub_08013e9c
_0805eba4:
	mov		r0, #0x1
	bl		sub_080281fc
	cmp		r6, #0x0
	beq		_0805ebc8
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0805ebc8
	ldr		r1, _0805ebc4
	str		r1, [sp, #0x10]
	b		_0805ec28

.align 2, 0
.pool

_0805ebbc:	.4byte 0x0810f898
_0805ebc0:	.4byte 0x0810f8ac
_0805ebc4:	.4byte sub_0805ed08

_0805ebc8:
	ldr		r1, _0805ebd4
	mov		r0, #0x0
	bl		sub_0805b720
	b		_0805ec28

.align 2, 0
.pool

_0805ebd4:	.4byte 0x0806072D

_0805ebd8:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ec50
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ec54
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
_0805ec28:
	ldr		r0, _0805ec58
	ldr		r1, [sp, #0x10]
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	ldr		r0, [sp, #0xC]
	bl		clearMgbPassword
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805ec50:	.4byte 0x0810f8cc
_0805ec54:	.4byte 0x0810f8f4
_0805ec58:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805e99c

	thumb_func_start sub_0805ec5c
sub_0805ec5c:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	sub		sp, #0xc
	ldr		r0, _0805ecf4
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	mov		r9, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ecf8
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	mov		r8, r0
	str		r0, [sp, #0x4]
	mov		r6, #0x18
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ecfc
	str		r4, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	add		r5, #0x39
	strb	r4, [r5, #0x0]
	ldr		r0, _0805ed00
	ldr		r2, _0805ed04
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, r9
	bl		clearMgbPassword
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805ecf4:	.4byte 0x0203EBE0
_0805ecf8:	.4byte 0x0810f91c
_0805ecfc:	.4byte 0x0810f948
_0805ed00:	.4byte 0x0805C789
_0805ed04:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805ec5c

	thumb_func_start sub_0805ed08
sub_0805ed08:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x14
	mov		r0, #0x0
	bl		sub_08057378
	add		r6, r0, #0x0
	add		r4, r6, #0x0
	add		r4, #0x8
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x8
	mov		r1, #0x3
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_08060338
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805eddc
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ede0
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	bl		sub_08013e9c
	add		r6, #0xc
	mov		r2, #0x0
_0805ed6e:
	mov		r1, sp
	add		r1, r1, r2
	add		r1, #0xc
	ldrb	r0, [r6, #0x0]
	strb	r0, [r1, #0x0]
	add		r6, #0x1
	add		r2, #0x1
	cmp		r2, #0x4
	ble		_0805ed6e
	add		r0, sp, #0xc
	mov		r4, #0x0
	strb	r4, [r0, #0x5]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x8
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	add		r2, sp, #0xc
	bl		sub_08013ec0
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r2, _0805ede4
	mov		r0, #0xf
	mov		r1, #0x0
	bl		sub_0806f95c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _0805ede8
	cmp		r0, #0x1
	bne		_0805edc2
	ldr		r1, _0805edec
_0805edc2:
	ldr		r0, _0805edf0
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805eddc:	.4byte 0x0810f86c
_0805ede0:	.4byte 0x0810f974
_0805ede4:	.4byte 0x0806072D
_0805ede8:	.4byte 0x0805C789
_0805edec:	.4byte sub_0805edf4
_0805edf0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805ed08

	thumb_func_start sub_0805edf4
sub_0805edf4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805ef40
	ldr		r6, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08057378
	mov		r8, r0
	ldr		r0, _0805ef44
	mov		r9, r0
	mov		r7, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ef48
	str		r7, [sp, #0x0]
	mov		r5, #0x3
	str		r5, [sp, #0x4]
	mov		r1, #0x16
	mov		r10, r1
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805ef4c
	add		r1, r6, r2
	mov		r4, #0x8
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x6
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805ef50
	add		r1, r6, r2
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0xd
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805ef54
	add		r1, r6, r2
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x14
	bl		sub_08064e00
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ef58
	str		r7, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, r10
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805ef5c
	str		r7, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r1, r10
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r2, #0xc
	add		r8, r2
	mov		r1, #0xb
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r1, r8
	mov		r2, #0x5
	mov		r3, #0x5
	bl		sub_08064e00
	mov		r0, #0x1
	bl		sub_080281fc
	add		r4, r6, #0x0
	add		r4, #0x42
_0805eee8:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r4, #0x0
	ldr		r1, _0805ef60
	mov		r3, #0x4
	bl		sub_08058c20
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x4
	ldr		r1, _0805ef64
	add		r0, r0, r1
	add		r0, r6, r0
	mov		r1, #0x8
	mov		r2, #0x3
	mov		r3, #0xf
	bl		sub_0806e788
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805ef6c
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r2, _0805ef68
	mov		r9, r2
	b		_0805efa6

_0805ef40:	.4byte 0x0203EBE0
_0805ef44:	.4byte sub_0805efd4
_0805ef48:	.4byte 0x0810f7e0
_0805ef4c:	.4byte 0x00007DE4
_0805ef50:	.4byte 0x00007DE9
_0805ef54:	.4byte 0x00007DEE
_0805ef58:	.4byte 0x0810f9b8
_0805ef5c:	.4byte 0x0810f9e4
_0805ef60:	.4byte 0x0810f9a0
_0805ef64:	.4byte 0x00007DB4
_0805ef68:	.4byte 0x0805ED09

_0805ef6c:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805efa2
	mov		r0, #0x8e
	bl		sub_0807073c
	bl		sub_08057370
	mov		r2, #0x0
	ldrsb	r2, [r4, r2]
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x3
	add		r1, r1, r0
	mov		r0, #0xba
	lsl		r0, r0, #0x4
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	ldr		r1, _0805efc8
	mov		r9, r1
	cmp		r0, #0x0
	beq		_0805efa0
	ldr		r2, _0805efcc
	mov		r9, r2
_0805efa0:
	mov		r7, #0x1
_0805efa2:
	cmp		r7, #0x0
	beq		_0805eee8
_0805efa6:
	ldr		r0, _0805efd0
	mov		r1, r9
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805efc8:	.4byte sub_0805f16c
_0805efcc:	.4byte sub_0805efd4
_0805efd0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805edf4

	thumb_func_start sub_0805efd4
sub_0805efd4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805f140
	ldr		r6, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08057378
	mov		r10, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f144
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0x3
	mov		r8, r0
	str		r0, [sp, #0x4]
	mov		r1, #0x16
	mov		r9, r1
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r7, _0805f148
	add		r1, r6, r7
	mov		r4, #0x8
	str		r4, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x6
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805f14c
	add		r1, r6, r2
	str		r4, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0xd
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r2, _0805f150
	add		r1, r6, r2
	str		r4, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x14
	bl		sub_08064e00
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f154
	str		r5, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f158
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	add		r4, r6, #0x0
	add		r4, #0x42
	mov		r2, #0x0
	ldrsb	r2, [r4, r2]
	lsl		r1, r2, #0x2
	add		r1, r1, r2
	add		r1, r1, r7
	add		r1, r6, r1
	mov		r2, #0xb
	str		r2, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r2, #0x5
	mov		r3, #0x5
	bl		sub_08064e00
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0xc
	add		r10, r1
	mov		r1, #0xd
	str		r1, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r1, r10
	mov		r2, #0x5
	mov		r3, #0x5
	bl		sub_08064e00
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r0, r0, #0x4
	ldr		r1, _0805f15c
	add		r0, r0, r1
	add		r6, r6, r0
	add		r0, r6, #0x0
	mov		r1, #0x8
	mov		r2, #0x3
	mov		r3, #0xf
	bl		sub_0806e788
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0xf
	mov		r1, #0x0
	bl		sub_0806f944
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _0805f160
	cmp		r0, #0x1
	bne		_0805f11e
	ldr		r1, _0805f164
_0805f11e:
	ldr		r0, _0805f168
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805f140:	.4byte 0x0203EBE0
_0805f144:	.4byte 0x0810f7e0
_0805f148:	.4byte 0x00007DE4
_0805f14c:	.4byte 0x00007DE9
_0805f150:	.4byte 0x00007DEE
_0805f154:	.4byte 0x0810fa0c
_0805f158:	.4byte 0x0810f9b8
_0805f15c:	.4byte 0x00007DB4
_0805f160:	.4byte 0x0805EDF5
_0805f164:	.4byte 0x0805F16D
_0805f168:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805efd4

	thumb_func_start sub_0805f16c
sub_0805f16c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0805f264
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08057378
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f268
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r9, r0
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	mov		r10, r0
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f26c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, r10
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	add		r0, r6, #0x0
	add		r0, #0xc
	add		r7, r5, #0x0
	add		r7, #0x42
	mov		r2, #0x0
	ldrsb	r2, [r7, r2]
	lsl		r1, r2, #0x2
	add		r1, r1, r2
	ldr		r2, _0805f270
	mov		r8, r2
	add		r1, r8
	add		r1, r5, r1
	mov		r2, #0x5
	bl		sub_08057300
	add		r6, #0x16
	mov		r1, #0x0
	ldrsb	r1, [r7, r1]
	lsl		r1, r1, #0x4
	ldr		r4, _0805f274
	add		r1, r1, r4
	add		r1, r5, r1
	add		r0, r6, #0x0
	mov		r2, #0x10
	bl		sub_08057300
	mov		r1, #0x0
	ldrsb	r1, [r7, r1]
	lsl		r0, r1, #0x4
	add		r0, r0, r4
	add		r0, r5, r0
	bl		setMgbUnk1InUnk14FromSaveByOffset
	mov		r1, #0x0
	ldrsb	r1, [r7, r1]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	add		r0, r8
	add		r5, r5, r0
	add		r0, r5, #0x0
	bl		setMgbUnk14FromSaveByOffset
	bl		sub_08057428
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0805f27c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f278
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, r10
	str		r0, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0805f29c

_0805f264:	.4byte 0x0203EBE0
_0805f268:	.4byte 0x0810f304
_0805f26c:	.4byte 0x0810f284
_0805f270:	.4byte 0x00007DE4
_0805f274:	.4byte 0x00007DB4
_0805f278:	.4byte 0x0810fa30

_0805f27c:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805f2cc
	str		r4, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
_0805f29c:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	ldr		r0, _0805f2d0
	ldr		r2, _0805f2d4
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805f2cc:	.4byte 0x0810fa50
_0805f2d0:	.4byte 0x0805C789
_0805f2d4:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f16c

	thumb_func_start sub_0805f2d8
sub_0805f2d8:
	push	{ r4, lr }
	ldr		r0, _0805f318
	ldr		r4, [r0, #0x0]
	ldr		r1, _0805f31c
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080575ac
	ldr		r1, _0805f320
	add		r4, r4, r1
	strb	r0, [r4, #0x0]
	lsl		r0, r0, #0x18
	ldr		r1, _0805f324
	cmp		r0, #0x0
	bge		_0805f300
	ldr		r1, _0805f328
_0805f300:
	ldr		r0, _0805f32c
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805f318:	.4byte 0x0203EBE0
_0805f31c:	.4byte 0x00006A3C
_0805f320:	.4byte 0x00006A45
_0805f324:	.4byte sub_0805f408
_0805f328:	.4byte sub_0805f330
_0805f32c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f2d8

	thumb_func_start sub_0805f330
sub_0805f330:
	push	{ r4, lr }
	ldr		r0, _0805f34c
	ldr		r4, [r0, #0x0]
	bl		sub_08057654
	ldr		r1, _0805f350
	add		r4, r4, r1
	strb	r0, [r4, #0x0]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	blt		_0805f358
	ldr		r0, _0805f354
	ldr		r1, [r0, #0x0]
	b		_0805f35a

_0805f34c:	.4byte 0x0203EBE0
_0805f350:	.4byte 0x00006A45
_0805f354:	.4byte 0x0203ED50

_0805f358:
	ldr		r1, _0805f370
_0805f35a:
	ldr		r0, _0805f374
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805f370:	.4byte sub_0805f378
_0805f374:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f330

	thumb_func_start sub_0805f378
sub_0805f378:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0805f3a0
	ldr		r4, [r0, #0x0]
	add		r6, r4, #0x0
	ldr		r1, _0805f3a4
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r5, #0x1
	neg		r5, r5
	cmp		r0, r5
	ble		_0805f3b0
	ldr		r2, _0805f3a8
	add		r0, r4, r2
	strb	r1, [r0, #0x0]
	ldr		r0, _0805f3ac
	ldr		r4, [r0, #0x0]
	b		_0805f3e6

_0805f3a0:	.4byte 0x0203EBE0
_0805f3a4:	.4byte 0x00006B7D
_0805f3a8:	.4byte 0x00006A45
_0805f3ac:	.4byte 0x0203ED50

_0805f3b0:
	mov		r0, #0x0
	bl		sub_0805f554
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r5
	bne		_0805f3d8
	ldr		r0, _0805f3d0
	add		r1, r4, r0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x90
	ldr		r4, _0805f3d4
	b		_0805f3e2

.align 2, 0
.pool

_0805f3d0:	.4byte 0x00006B7C
_0805f3d4:	.4byte 0x0805F2D9

_0805f3d8:
	ldr		r2, _0805f3fc
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
	mov		r0, #0x8e
	ldr		r4, _0805f400
_0805f3e2:
	bl		sub_0807073c
_0805f3e6:
	ldr		r0, _0805f404
	str		r4, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0805f3fc:	.4byte 0x00006A45
_0805f400:	.4byte 0x0805F409
_0805f404:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f378

	thumb_func_start sub_0805f408
sub_0805f408:
	push	{ r4, r5, lr }
	sub		sp, #0x20
	ldr		r0, _0805f434
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08057378
	add		r5, r0, #0x0
	add		r5, #0x8
	ldr		r1, _0805f438
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	blt		_0805f440
	ldr		r2, _0805f43c
	add		r0, r4, r2
	strb	r1, [r0, #0x0]
	b		_0805f4a4

.align 2, 0
.pool

_0805f434:	.4byte 0x0203EBE0
_0805f438:	.4byte 0x00006B7D
_0805f43c:	.4byte 0x00006A45

_0805f440:
	ldr		r1, _0805f4ac
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	mov		r1, sp
	bl		sub_080574a4
	ldr		r1, _0805f4b0
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, sp
	ldrb	r0, [r0, #0x9]
	bl		sub_0802d6e0
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r4, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	ldrb	r0, [r5, #0x9]
	bl		sub_0802d6e0
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r4, #0x0
	mov		r2, #0x1
	bl		sub_08069568
	mov		r0, #0x3
	mov		r1, #0x3
	mov		r2, sp
	mov		r3, #0x0
	bl		sub_08060338
	mov		r0, #0xf
	mov		r1, #0x3
	add		r2, r5, #0x0
	mov		r3, #0x1
	bl		sub_08060338
	ldr		r2, _0805f4b4
	mov		r0, #0xf
	mov		r1, #0x0
	bl		sub_0805b580
	cmp		r0, #0x0
	beq		_0805f4bc
_0805f4a4:
	ldr		r0, _0805f4b8
	ldr		r1, [r0, #0x0]
	b		_0805f4be

.align 2, 0
.pool

_0805f4ac:	.4byte 0x00006A45
_0805f4b0:	.4byte 0x08112644
_0805f4b4:	.4byte 0x080603f5
_0805f4b8:	.4byte 0x0203ED50

_0805f4bc:
	ldr		r1, _0805f4d8
_0805f4be:
	ldr		r0, _0805f4dc
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0x20
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805f4d8:	.4byte sub_0805f4e0
_0805f4dc:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f408

	thumb_func_start sub_0805f4e0
sub_0805f4e0:
	push	{ r4, r5, lr }
	ldr		r0, _0805f524
	ldr		r5, [r0, #0x0]
	ldr		r1, _0805f528
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0xe
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	cmp		r0, #0x0
	beq		_0805f534
	mov		r0, #0x0
	bl		sub_08057378
	mov		r1, #0x0
	strh	r1, [r0, #0xa]
	ldr		r1, _0805f52c
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	ldr		r4, _0805f530
	add		r0, r5, #0x0
	bl		sub_08060bf4
	bl		clearMgbPassword
	b		_0805f536

_0805f524:	.4byte 0x0203EBE0
_0805f528:	.4byte 0x08112734
_0805f52c:	.4byte 0x081127ac
_0805f530:	.4byte 0x0805C789

_0805f534:
	ldr		r4, _0805f54c
_0805f536:
	ldr		r0, _0805f550
	str		r4, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_0805f54c:	.4byte 0x0805F2D9
_0805f550:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f4e0

	thumb_func_start sub_0805f554
sub_0805f554:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x70
	str		r0, [sp, #0x5C]
	ldr		r0, _0805f728
	ldr		r7, [r0, #0x0]
	mov		r0, #0xff
	str		r0, [sp, #0x60]
	mov		r0, #0x0
	bl		sub_080575e8
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x64]
	mov		r0, #0x1
	bl		sub_080575e8
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	str		r0, [sp, #0x68]
	ldr		r0, [sp, #0x64]
	add		r1, sp, #0xc
	bl		sub_080574a4
	add		r4, sp, #0x2c
	ldr		r0, [sp, #0x68]
	add		r1, r4, #0x0
	bl		sub_080574a4
	ldr		r1, _0805f72c
	mov		r0, #0x3
	bl		sub_08013d0c
	add		r1, sp, #0xc
	mov		r8, r1
	add		r3, sp, #0x10
	mov		r2, #0x0
	add		r0, sp, #0x4c
	mov		r9, r0
	mov		r1, sp
	add		r1, #0x30
	str		r1, [sp, #0x6C]
	mov		r4, r9
_0805f5b0:
	add		r1, r4, r2
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r2, #0x1
	cmp		r2, #0x4
	ble		_0805f5b0
	mov		r6, #0x0
	mov		r2, r9
	strb	r6, [r2, #0x5]
	mov		r0, #0x3
	mov		r1, #0x3
	mov		r2, #0x0
	bl		sub_0806963c
	mov		r0, #0x0
	mov		r1, #0x5
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r2, r8
	ldrb	r0, [r2, #0x0]
	mov		r2, #0xb0
	lsl		r2, r2, #0x2
	str		r2, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	add		r2, #0xa0
	mov		r3, #0x9
	bl		sub_0800e5c0
	mov		r0, r8
	ldrh		r4, [r0, #0x2]
	mov		r0, #0x0
	mov		r1, #0x7
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x8
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x6
	mov		r2, r9
	bl		sub_08013ec0
	add		r1, sp, #0x2c
	mov		r10, r1
	ldr		r3, [sp, #0x6C]
	mov		r2, #0x0
	mov		r0, #0x38
	add		r0, r0, r7
	mov		r8, r0
	mov		r4, r9
_0805f63a:
	add		r1, r4, r2
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r2, #0x1
	cmp		r2, #0x4
	ble		_0805f63a
	mov		r5, #0x0
	mov		r1, r9
	strb	r5, [r1, #0x5]
	mov		r0, #0xf
	mov		r1, #0x3
	mov		r2, #0x1
	bl		sub_0806963c
	mov		r0, #0x0
	mov		r1, #0x11
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r2, r10
	ldrb	r0, [r2, #0x0]
	mov		r2, #0xb0
	lsl		r2, r2, #0x2
	str		r2, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	add		r2, #0xa0
	mov		r3, #0x9
	bl		sub_0800e5c0
	mov		r0, r10
	ldrh		r4, [r0, #0x2]
	mov		r0, #0x0
	mov		r1, #0x13
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	mov		r0, #0x8
	str		r0, [sp, #0x8]
	mov		r0, #0x11
	mov		r1, #0x6
	mov		r2, r9
	bl		sub_08013ec0
	add		r0, sp, #0xc
	ldrb	r0, [r0, #0x9]
	bl		sub_0802d6e0
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	mov		r1, #0x35
	add		r1, sp
	ldrb	r0, [r1, #0x0]
	bl		sub_0802d6e0
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r7, #0x0
	mov		r2, #0x1
	bl		sub_08069568
	mov		r2, r8
	strb	r5, [r2, #0x0]
	str		r5, [r7, #0x34]
	ldr		r1, _0805f730
	add		r0, r7, r1
	str		r5, [r0, #0x0]
	ldr		r2, _0805f734
	add		r0, r7, r2
	strb	r5, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0xf
	mov		r10, r0
	ldr		r1, _0805f738
	mov		r9, r1
_0805f6fe:
	ldr		r0, [r7, #0x34]
	add		r0, #0x1
	str		r0, [r7, #0x34]
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x30
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805f73c
	mov		r0, #0x8d
	bl		sub_0807073c
	mov		r2, r8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	sub		r0, r0, r1
	strb	r0, [r2, #0x0]
	b		_0805f7ae

_0805f728:	.4byte 0x0203EBE0
_0805f72c:	.4byte 0x081126c0
_0805f730:	.4byte 0x00005F10
_0805f734:	.4byte 0x00006B7C
_0805f738:	.4byte 0x080e4664

_0805f73c:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0805f758
	ldr		r0, [sp, #0x5C]
	cmp		r0, #0x0
	ble		_0805f784
	ldr		r1, _0805f77c
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r2, [sp, #0x5C]
	cmp		r2, r0
	bgt		_0805f784
_0805f758:
	mov		r0, #0x2
	bl		sub_08026fec
	mov		r1, #0x2
	cmp		r0, #0x0
	beq		_0805f766
	mov		r1, #0x1
_0805f766:
	ldr		r2, _0805f780
	add		r0, r7, r2
	strb	r1, [r0, #0x0]
	mov		r0, #0x90
	bl		sub_0807073c
	bl		sub_0802983c
	bl		_UpdateGame
	b		_0805f814

_0805f77c:	.4byte 0x00005F10
_0805f780:	.4byte 0x00006B7C

_0805f784:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0805f7ae
	mov		r0, #0x8e
	bl		sub_0807073c
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r1, r8
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	ldr		r1, [sp, #0x68]
	cmp		r0, #0x0
	bne		_0805f7aa
	ldr		r1, [sp, #0x64]
_0805f7aa:
	str		r1, [sp, #0x60]
	b		_0805f814
_0805f7ae:
	mov		r5, #0x0
	mov		r0, #0x48
	ldr		r2, _0805f80c
	and		r0, r2
	mov		r1, r10
	orr		r0, r1
	str		r0, [sp, #0x58]
	mov		r0, #0xa8
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x54]
	ldr		r2, _0805f810
	mov		r1, r8
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	add		r6, sp, #0x54
	add		r1, r6, #0x0
	add		r4, sp, #0x58
	cmp		r0, #0x0
	bne		_0805f7d8
	add		r1, r4, #0x0
_0805f7d8:
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	add		r0, r2, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, r9
	add		r1, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, r9
	add		r1, r6, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	bl		sub_08064b28
	b		_0805f6fe

_0805f80c:	.4byte 0x0000FFFF
_0805f810:	.4byte 0x080e4898

_0805f814:
	ldr		r2, _0805f844
	add		r4, r7, r2
	ldrb	r1, [r4, #0x0]
	add		r0, r7, #0x0
	mov		r2, #0x0
	bl		sub_08069568
	ldrb	r1, [r4, #0x0]
	add		r0, r7, #0x0
	mov		r2, #0x1
	bl		sub_08069568
	ldr		r1, [sp, #0x60]
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x18
	add		sp, #0x70
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805f844:	.4byte 0x00006A3C
	thumb_func_end sub_0805f554

	thumb_func_start sub_0805f848
sub_0805f848:
	push	{ r4, lr }
	ldr		r0, _0805f8a0
	ldr		r4, [r0, #0x0]
	ldr		r1, _0805f8a4
	mov		r0, #0x1
	bl		sub_08013d0c
	mov		r0, #0xe
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	cmp		r0, #0x0
	beq		_0805f898
	mov		r0, #0x0
	bl		sub_08057378
	mov		r1, #0x0
	strh	r1, [r0, #0xa]
	ldr		r1, _0805f8a8
	mov		r0, #0x1
	bl		sub_08013d0c
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0805b720
	ldr		r0, _0805f8ac
	ldr		r2, _0805f8b0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	add		r0, r4, #0x0
	bl		sub_08060bf4
	bl		clearMgbPassword
_0805f898:
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805f8a0:	.4byte 0x0203EBE0
_0805f8a4:	.4byte 0x08112734
_0805f8a8:	.4byte 0x081127ac
_0805f8ac:	.4byte 0x0805C789
_0805f8b0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805f848

	thumb_func_start _LoadMGBRegistrationMenu
_LoadMGBRegistrationMenu: @ 0805f8b4
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0xc
	ldr		r4, _0805fa3c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805fa40
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa44
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x4
	str		r0, [sp, #0x4]
	mov		r5, #0x14
	str		r5, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa48
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	mov		r8, r0
	str		r0, [sp, #0x4]
	mov		r0, #0x15
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa4c
	str		r4, [sp, #0x0]
	mov		r6, #0x3
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x11
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa50
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa54
	str		r4, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa58
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xe
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa5c
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa60
	str		r4, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xe
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa64
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xb
	mov		r1, #0xe
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fa68
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x10
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bne		_0805fa70
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r1, _0805fa6c
	b		_0805fa78

.align 2, 0
.pool

_0805fa3c:	.4byte 0x080952e0
_0805fa40:	.4byte 0x080948b0
_0805fa44:	.4byte 0x0810fa78
_0805fa48:	.4byte 0x0810fa94
_0805fa4c:	.4byte 0x0810fae8
_0805fa50:	.4byte 0x0810fafc
_0805fa54:	.4byte 0x0810fb14
_0805fa58:	.4byte 0x0810fb5c
_0805fa5c:	.4byte 0x0810fb6c
_0805fa60:	.4byte 0x0810fb7c
_0805fa64:	.4byte 0x0810fbcc
_0805fa68:	.4byte 0x0810fbd8
_0805fa6c:	.4byte 0x08060755

_0805fa70:
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r1, _0805fa94
_0805fa78:
	ldr		r0, _0805fa98
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0805fa94:	.4byte sub_0805ae78
_0805fa98:	.4byte RunGameLogic_CallBack
	thumb_func_end _LoadMGBRegistrationMenu

	thumb_func_start sub_0805fa9c
sub_0805fa9c:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _0805fb30
	ldr		r0, [r0, #0x0]
	add		r5, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805fb34
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r1, _0805fb38
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0xe
	mov		r1, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0806ee5c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r6, r0, #0x0
	ldr		r1, _0805fb3c
	add		r0, r5, r1
	mov		r1, #0x0
	cmp		r6, #0x1
	bne		_0805faee
	mov		r1, #0x1
_0805faee:
	str		r1, [r0, #0x0]
	sub		r0, r6, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_0805fb60
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		mgbLoadMGBDataToEWRAM
	add		r7, r0, #0x0
	cmp		r6, #0x1
	bne		_0805fb48
	add		r0, r4, #0x0
	bl		getMgbPasswordFromMGBStruct
	add		r5, r0, #0x0
	bl		sub_08057370
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		setMgbPasswordFromSave
	ldr		r0, _0805fb40
	add		r4, r4, r0
	strb	r6, [r4, #0x0]
	bl		sub_08057428
	ldr		r1, _0805fb44
	b		_0805fb4c

.align 2, 0
.pool

_0805fb30:	.4byte 0x0203EBE0
_0805fb34:	.4byte 0x080948b0
_0805fb38:	.4byte 0x08112e48
_0805fb3c:	.4byte 0x00006B78
_0805fb40:	.4byte 0x00000AE5
_0805fb44:	.4byte 0x0805C32D

_0805fb48:
	ldr		r0, _0805fb58
	ldr		r1, [r0, #0x0]
_0805fb4c:
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x0
	bne		_0805fb66
	ldr		r1, _0805fb5c
	b		_0805fb66

.align 2, 0
.pool

_0805fb58:	.4byte 0x0203ED50
_0805fb5c:	.4byte 0x0805fc9d

_0805fb60:
	bl		sub_08065828
	add		r1, r0, #0x0
_0805fb66:
	ldr		r0, _0805fb7c
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0805fb7c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805fa9c

	thumb_func_start sub_0805fb80
sub_0805fb80:
	push	{ r4, r5, lr }
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r5, _0805fbfc
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805fc00
	ldr		r1, _0805fc04
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0xe
	mov		r1, #0x0
	bl		sub_0806f944
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805fbfc:	.4byte 0x080948b0
_0805fc00:	.4byte 0x00008203
_0805fc04:	.4byte 0x08112d8c
	thumb_func_end sub_0805fb80

	thumb_func_start sub_0805fc08
sub_0805fc08:
	push	{ r4, lr }
	ldr		r0, _0805fc30
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	mov		r4, #0x0
	bl		checkStringIsNotEmpty
	cmp		r0, #0x0
	beq		_0805fc3c
	ldr		r0, _0805fc34
	ldr		r4, [r0, #0x0]
	ldr		r2, _0805fc38
	str		r4, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0805fc8c

_0805fc30:	.4byte 0x0203EBE0
_0805fc34:	.4byte 0x0203ED50
_0805fc38:	.4byte RunGameLogic_CallBack

_0805fc3c:
	bl		sub_0805fb80
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x2
	beq		_0805fc70
	cmp		r0, #0x2
	bgt		_0805fc52
	cmp		r0, #0x1
	beq		_0805fc58
	b		_0805fc7a
_0805fc52:
	cmp		r0, #0x3
	beq		_0805fc78
	b		_0805fc7a
_0805fc58:
	bl		sub_080609b8
	ldr		r4, _0805fc68
	cmp		r0, #0x0
	beq		_0805fc7a
	ldr		r4, _0805fc6c
	b		_0805fc7a

.align 2, 0
.pool

_0805fc68:	.4byte 0x0805FC09
_0805fc6c:	.4byte sub_0805c250

_0805fc70:
	ldr		r4, _0805fc74
	b		_0805fc7a

_0805fc74:	.4byte sub_0805ae78

_0805fc78:
	ldr		r4, _0805fc94
_0805fc7a:
	cmp		r4, #0x0
	beq		_0805fc3c
	ldr		r0, _0805fc98
	str		r4, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0805fc8c:
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805fc94:	.4byte 0x080608BD
_0805fc98:	.4byte RunGameLogic_CallBack
	push	{ r4, lr }
	mov		r0, #0x0
	bl		sub_0805c0e4
	ldr		r4, _0805fcdc
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0x9
	bl		sub_0806f984
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x2
	beq		_0805fce4
	cmp		r0, #0x2
	bgt		_0805fcec
	cmp		r0, #0x1
	bne		_0805fcec
	ldr		r1, _0805fce0
	b		_0805fcee

_0805fcdc:	.4byte 0x080948b0
_0805fce0:	.4byte 0x0805c1f9

_0805fce4:
	ldr		r1, _0805fce8
	b		_0805fcee

_0805fce8:	.4byte 0x0805AE79

_0805fcec:
	ldr		r1, _0805fd04
_0805fcee:
	ldr		r0, _0805fd08
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0805fd04:	.4byte 0x08060795
_0805fd08:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0805fc08

	thumb_func_start sub_0805fd0c
sub_0805fd0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x34
	ldr		r0, _0805fe5c
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _0805fe60
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _0805fe64
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	add		r1, sp, #0xc
	bl		sub_080574a4
	add		r6, sp, #0xc
	add		r3, sp, #0x10
	mov		r2, #0x0
	add		r7, sp, #0x2c
	add		r4, r7, #0x0
_0805fd50:
	add		r1, r4, r2
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r2, #0x1
	cmp		r2, #0x4
	ble		_0805fd50
	mov		r0, #0x0
	mov		r9, r0
	mov		r0, r9
	strb	r0, [r7, #0x5]
	mov		r0, #0x8
	mov		r1, #0x3
	mov		r2, #0x0
	bl		sub_0806963c
	mov		r0, #0x0
	mov		r1, #0xa
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldrb	r0, [r6, #0x0]
	mov		r2, #0xb0
	lsl		r2, r2, #0x2
	str		r2, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	add		r2, #0xa0
	mov		r3, #0x9
	bl		sub_0800e5c0
	ldrh		r4, [r6, #0x2]
	mov		r0, #0x0
	mov		r1, #0xc
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x8
	str		r0, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x6
	add		r2, r7, #0x0
	bl		sub_08013ec0
	add		r0, sp, #0xc
	ldrb	r0, [r0, #0x9]
	bl		sub_0802d6e0
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r8
	mov		r2, #0x0
	bl		sub_08069568
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fe68
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r5, #0x3
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fe6c
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r2, _0805fe70
	mov		r0, #0xf
	mov		r1, #0x0
	bl		sub_0806f95c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	ldr		r0, _0805fe74
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, r8
	mov		r2, #0x0
	bl		sub_08069568
	add		r0, r4, #0x0
	add		sp, #0x34
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805fe5c:	.4byte 0x0203EBE0
_0805fe60:	.4byte 0x080948b0
_0805fe64:	.4byte 0x00006B7D
_0805fe68:	.4byte 0x0810fc18
_0805fe6c:	.4byte 0x0810fc38
_0805fe70:	.4byte 0x0806072d
_0805fe74:	.4byte 0x00006A3C
	thumb_func_end sub_0805fd0c

	thumb_func_start sub_0805fe78
sub_0805fe78:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0805fee4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x4
	bl		sub_08013e9c
	ldr		r1, _0805fee8
	ldr		r5, _0805feec
	ldr		r4, [r5, #0x0]
	cmp		r1, #0x0
	beq		_0805feb4
	ldr		r0, _0805fef0
	bl		sub_08013d0c
_0805feb4:
	mov		r0, #0xf
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	add		r3, r0, #0x0
	ldr		r1, _0805fef4
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805fedc
	ldr		r0, _0805fef8
	ldr		r0, [r0, #0x0]
	ldr		r2, _0805fefc
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0805fedc:
	cmp		r3, #0x0
	beq		_0805ff00
	mov		r1, #0x1
	b		_0805ff10

_0805fee4:	.4byte 0x0810f5f0
_0805fee8:	.4byte 0x08112b28
_0805feec:	.4byte 0x0203EBE0
_0805fef0:	.4byte 0x00008802
_0805fef4:	.4byte 0x00006B7C
_0805fef8:	.4byte 0x0203ED54
_0805fefc:	.4byte RunGameLogic_CallBack

_0805ff00:
	ldr		r0, [r5, #0x0]
	ldr		r1, _0805ff1c
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x3
	cmp		r0, #0x0
	bne		_0805ff10
	mov		r1, #0x2
_0805ff10:
	add		r0, r1, #0x0
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0805ff1c:	.4byte 0x00006B7C
	thumb_func_end sub_0805fe78

	thumb_func_start sub_0805ff20
sub_0805ff20:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	ldr		r0, _0805ffd4
	ldr		r0, [r0, #0x0]
	add		r6, r0, #0x0
	ldr		r1, _0805ffd8
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080575ac
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	add		r1, r2, #0x0
	ldr		r0, _0805ffdc
	cmp		r4, r0
	beq		_0805ff4e
	mov		r4, #0x80
	lsl		r4, r4, #0x1
_0805ff4e:
	lsl		r0, r2, #0x18
	cmp		r0, #0x0
	bge		_08060022
	bl		sub_08057654
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_0806000c
_0805ff5e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r0, _0805ffe0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	ldr		r2, _0805ffe4
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0805ffb6
	b		_080600ac
_0805ffb6:
	mov		r5, #0x1
	neg		r5, r5
_0805ffba:
	mov		r0, #0x0
	bl		sub_0805f554
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r5
	ble		_0805ff5e
	ldr		r2, _0805ffe8
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
	b		_0805fffe

.align 2, 0
.pool

_0805ffd4:	.4byte 0x0203EBE0
_0805ffd8:	.4byte 0x00006A3C
_0805ffdc:	.4byte 0x00000101
_0805ffe0:	.4byte 0x080948b0
_0805ffe4:	.4byte 0x0810fbec
_0805ffe8:	.4byte 0x00006B7D

_0805ffec:
	cmp		r0, #0x1
	bne		_080600ac
	ldr		r0, _08060008
	cmp		r4, r0
	beq		_08060012
	bl		sub_0805fe78
	cmp		r0, #0x3
	bne		_080600ac
_0805fffe:
	bl		sub_0805fd0c
	cmp		r0, #0x3
	bne		_0805ffec
	b		_0805ffba

_08060008:	.4byte 0x00000101

_0806000c:
	ldr		r0, _08060018
	cmp		r4, r0
	bne		_0806001c
_08060012:
	mov		r0, #0x1
	b		_080600ac

.align 2, 0
.pool

_08060018:	.4byte 0x00000101

_0806001c:
	bl		sub_0805fe78
	b		_080600ac
_08060022:
	ldr		r2, _08060080
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
_08060028:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r0, _08060084
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	ldr		r2, _08060088
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bne		_080600ac
	b		_0806009e

_08060080:	.4byte 0x00006B7D
_08060084:	.4byte 0x080948b0
_08060088:	.4byte 0x0810fbec

_0806008c:
	cmp		r0, #0x1
	bne		_080600ac
	ldr		r0, _080600a8
	cmp		r4, r0
	beq		_08060012
	bl		sub_0805fe78
	cmp		r0, #0x3
	bne		_080600ac
_0806009e:
	bl		sub_0805fd0c
	cmp		r0, #0x3
	bne		_0806008c
	b		_08060028

_080600a8:	.4byte 0x00000101

_080600ac:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0805ff20

	thumb_func_start sub_080600b4
sub_080600b4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	mov		r9, r2
	mov		r8, r3
	mov		r0, #0x0
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r1, _08060154
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	mov		r2, r9
	sub		r5, r2, r7
	lsl		r0, r5, #0x1
	add		r0, r0, r3
	ldr		r4, _08060158
	add		r1, r4, #0x0
	strh	r1, [r0, #0x0]
	mov		r1, r8
	sub		r0, r1, r6
	lsl		r1, r0, #0x6
	add		r2, r1, r3
	ldr		r4, _0806015c
	add		r1, r4, #0x0
	strh	r1, [r2, #0x0]
	lsl		r0, r0, #0x5
	add		r0, r0, r5
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	ldr		r4, _08060160
	add		r1, r4, #0x0
	strh	r1, [r0, #0x0]
	cmp		r5, #0x1
	ble		_0806011c
	ldr		r0, _08060164
	add		r4, r0, #0x0
	add		r1, r2, #0x2
	add		r2, r3, #0x2
	sub		r0, r5, #0x1
_0806010e:
	strh	r4, [r2, #0x0]
	strh	r4, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x2
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_0806010e
_0806011c:
	mov		r1, r8
	sub		r5, r1, r6
	cmp		r5, #0x1
	ble		_08060148
	ldr		r2, _08060168
	add		r4, r2, #0x0
	mov		r1, r9
	sub		r0, r1, r7
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	add		r2, r0, #0x0
	add		r2, #0x40
	add		r1, r3, #0x0
	add		r1, #0x40
	sub		r0, r5, #0x1
_0806013a:
	strh	r4, [r1, #0x0]
	strh	r4, [r2, #0x0]
	add		r2, #0x40
	add		r1, #0x40
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_0806013a
_08060148:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08060154:	.4byte 0x0000F20D
_08060158:	.4byte 0x0000F60D
_0806015c:	.4byte 0x0000FA0D
_08060160:	.4byte 0x0000FE0D
_08060164:	.4byte 0x0000F20E
_08060168:	.4byte 0x0000F22D
	thumb_func_end sub_080600b4

	thumb_func_start sub_0806016c
sub_0806016c:
	push	{ r4, lr }
	cmp		r0, #0x0
	beq		_08060178
	cmp		r0, #0x1
	beq		_08060194
	b		_080601a8
_08060178:
	ldr		r4, _08060190
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	b		_080601a8

.align 2, 0
.pool

_08060190:	.4byte 0x08094994

_08060194:
	ldr		r4, _080601b4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
_080601a8:
	bl		_UpdateGame
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_080601b4:	.4byte 0x080948b0
	thumb_func_end sub_0806016c

	thumb_func_start sub_080601b8
sub_080601b8:
	push	{ lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r2, #0x0
	bl		sub_0805b580
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080601b8

	thumb_func_start sub_080601c8
sub_080601c8:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x18
	lsr		r3, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r4, r1, #0x18
	ldr		r0, _08060218
	ldr		r5, [r0, #0x0]
	cmp		r2, #0x0
	beq		_080601e6
	lsl		r0, r3, #0x8
	ldr		r1, _0806021c
	add		r0, r0, r1
	add		r1, r2, #0x0
	bl		sub_08013d0c
_080601e6:
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	add		r3, r0, #0x0
	ldr		r1, _08060220
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806020e
	ldr		r0, _08060224
	ldr		r0, [r0, #0x0]
	ldr		r2, _08060228
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0806020e:
	add		r0, r3, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08060218:	.4byte 0x0203EBE0
_0806021c:	.4byte 0x00008002
_08060220:	.4byte 0x00006B7C
_08060224:	.4byte 0x0203ED54
_08060228:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_080601c8

	thumb_func_start sub_0806022c
sub_0806022c:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	mov		r1, #0xe0
	lsl		r1, r1, #0x13
	add		r0, r0, r1
	lsr		r4, r0, #0x18
	ldr		r1, _08060280
	ldr		r0, _08060284
	ldr		r5, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0806024e
	lsl		r0, r2, #0x8
	ldr		r2, _08060288
	add		r0, r0, r2
	bl		sub_08013d0c
_0806024e:
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0805b580
	add		r3, r0, #0x0
	ldr		r1, _0806028c
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08060276
	ldr		r0, _08060290
	ldr		r0, [r0, #0x0]
	ldr		r2, _08060294
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_08060276:
	add		r0, r3, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08060280:	.4byte 0x08112b28
_08060284:	.4byte 0x0203EBE0
_08060288:	.4byte 0x00008002
_0806028c:	.4byte 0x00006B7C
_08060290:	.4byte 0x0203ED54
_08060294:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806022c

	thumb_func_start sub_08060298
sub_08060298:
	push	{ r4, lr }
	ldr		r0, _080602cc
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	bl		getMgbPasswordFromMGBStruct
	add		r4, r0, #0x0
	bl		sub_08057370
	add		r1, r0, #0x0
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_080602c4
	ldr		r2, _080602d0
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080602c4
	add		r0, r4, #0x0
	bl		getMgbPasswordFromSave
_080602c4:
	ldrb	r0, [r4, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_080602cc:	.4byte 0x0203EBE0
_080602d0:	.4byte 0x00000AE5
	thumb_func_end sub_08060298

	thumb_func_start sub_080602d4
sub_080602d4:
	ldr		r1, _080602dc
	str		r0, [r1, #0x0]
	bx		lr

.align 2, 0
.pool

_080602dc:	.4byte 0x0203ED50
	thumb_func_end sub_080602d4

	thumb_func_start sub_080602e0
sub_080602e0:
	push	{ lr }
	mov		r0, #0x0
	bl		sub_0805c4dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080602e0

	thumb_func_start sub_080602f0
sub_080602f0:
	push	{ lr }
	mov		r1, #0x0
	bl		sub_0805b720
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080602f0

	thumb_func_start sub_080602fc
sub_080602fc:
	push	{ r4, r5, lr }
	ldr		r0, _0806032c
	ldr		r4, _08060330
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r5, #0x0
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r4, #0x8]
	mov		r0, #0x1
	sub		r1, #0x9
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _08060334
	bl		sub_0807df78
	mov		r0, #0x1
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0806032c:	.4byte sub_08000e78
_08060330:	.4byte RunGameLogic_CallBack
_08060334:	.4byte 0x00010001
	thumb_func_end sub_080602fc

	thumb_func_start sub_08060338
sub_08060338:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r6, r2, #0x0
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r10, r1
	lsl		r3, r3, #0x18
	lsr		r2, r3, #0x18
	add		r5, r6, #0x4
	mov		r4, #0x0
_08060358:
	mov		r1, sp
	add		r1, r1, r4
	add		r1, #0xc
	ldrb	r0, [r5, #0x0]
	strb	r0, [r1, #0x0]
	add		r5, #0x1
	add		r4, #0x1
	cmp		r4, #0x4
	ble		_08060358
	add		r0, sp, #0xc
	mov		r1, #0x0
	strb	r1, [r0, #0x5]
	add		r0, r7, #0x0
	mov		r1, r10
	bl		sub_0806963c
	add		r3, r7, #0x2
	mov		r8, r3
	mov		r5, r10
	add		r5, #0x5
	mov		r0, #0x0
	mov		r1, r8
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldrb	r0, [r6, #0x0]
	mov		r2, #0xd8
	lsl		r2, r2, #0x2
	mov		r3, #0xb0
	lsl		r3, r3, #0x2
	str		r3, [sp, #0x0]
	mov		r3, #0xf
	mov		r9, r3
	str		r3, [sp, #0x4]
	mov		r3, #0x9
	bl		sub_0800e5c0
	ldrh	r4, [r6, #0x2]
	add		r1, r7, #0x4
	mov		r0, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	add		r0, r4, #0x0
	mov		r3, #0xf
	bl		sub_0800c674
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	add		r1, #0x3
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, #0x8
	str		r0, [sp, #0x8]
	mov		r0, r8
	add		r2, sp, #0xc
	bl		sub_08013ec0
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_08060338

	thumb_func_start sub_80603f4
sub_080603f4:
	push	{ r4, r5, lr }
	sub		sp, #0x10
	mov		r4, #0x0
	ldr		r0, _0806042c
	str		r0, [sp, #0x8]
	add		r0, #0x60
	str		r0, [sp, #0xc]
	ldr		r5, _08060430
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r0, r5, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r1, sp, #0xc
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r0, r5, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0x10
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0806042c:	.4byte 0x00400048
_08060430:	.4byte 0x080e4664
	thumb_func_end sub_080603f4

	thumb_func_start sub_08060434
sub_08060434:
	ldr		r0, _08060448
	ldr		r0, [r0, #0x0]
	ldr		r2, _0806044c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	bx		lr

_08060448:	.4byte 0x0203ED50
_0806044c:	.4byte RunGameLogic_CallBack

.incbin "base.gba", 0x60450, 0x18
	thumb_func_end sub_08060434

	thumb_func_start sub_08060468
sub_08060468:
	ldr		r0, _0806047c
	ldr		r0, [r0, #0x0]
	ldr		r2, _08060480
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	bx		lr

_0806047c:	.4byte 0x0203ED54
_08060480:	.4byte RunGameLogic_CallBack

.incbin "base.gba", 0x60484, 0xC
	thumb_func_end sub_08060468

	thumb_func_start sub_08060490
sub_08060490:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r5, r2, #0x0
	add		r7, r3, #0x0
	mov		r0, #0x0
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	mov		r12, r0
	mov		r0, #0x1
	sub		r5, r5, r4
	cmp		r0, r5
	bge		_080604d0
	sub		r2, r7, r6
_080604b0:
	add		r1, r0, #0x1
	cmp		r2, #0x1
	ble		_080604ca
	mov		r3, #0x0
	lsl		r0, r0, #0x1
	add		r0, r12
	add		r0, #0x40
	sub		r4, r2, #0x1
_080604c0:
	strh	r3, [r0, #0x0]
	add		r0, #0x40
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080604c0
_080604ca:
	add		r0, r1, #0x0
	cmp		r0, r5
	blt		_080604b0
_080604d0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_08060490

	thumb_func_start sub_080604d8
sub_080604d8:
	push	{ r4, r5, lr }
	ldr		r0, _08060528
	ldr		r5, [r0, #0x0]
	ldr		r4, _0806052c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r2, _08060530
	mov		r0, #0xb4
	lsl		r0, r0, #0x8
	add		r2, r2, r0
	ldr		r1, _08060534
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_08060544
	ldr		r1, _08060538
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, _0806053c
	cmp		r0, #0x0
	bne		_0806051e
	ldr		r1, _08060540
_0806051e:
	mov		r0, #0x3
	bl		sub_08013d0c
	b		_0806054c

.align 2, 0
.pool

_08060528:	.4byte 0x0203EBE0
_0806052c:	.4byte 0x080948b0
_08060530:	.4byte 0x02033780
_08060534:	.4byte 0x00006A3C
_08060538:	.4byte 0x00006B6C
_0806053c:	.4byte 0x08113208
_08060540:	.4byte 0x081131e0

_08060544:
	ldr		r1, _08060558
	mov		r0, #0x3
	bl		sub_08013d0c
_0806054c:
	mov		r0, #0x2
	bl		sub_080281fc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08060558:	.4byte 0x08113244
	thumb_func_end sub_080604d8

	thumb_func_start sub_0806055c
sub_0806055c:
	push	{ r4, r5, lr }
	ldr		r0, _0806059c
	ldr		r4, [r0, #0x0]
	ldr		r5, _080605a0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	ldr		r0, _080605a4
	add		r4, r4, r0
	ldr		r0, [r4, #0x0]
	ldr		r1, _080605a8
	cmp		r0, #0x0
	bne		_08060588
	ldr		r1, _080605ac
_08060588:
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x2
	bl		sub_080281fc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_0806059c:	.4byte 0x0203EBE0
_080605a0:	.4byte 0x080948b0
_080605a4:	.4byte 0x00006B6C
_080605a8:	.4byte 0x0811335c
_080605ac:	.4byte 0x08113334

.incbin "base.gba", 0x605B0, 0x94
	thumb_func_end sub_0806055c

	thumb_func_start sub_08060644
sub_08060644:
	push	{ r4, r5, lr }
	ldr		r0, _0806067c
	ldr		r4, [r0, #0x0]
	bl		sub_08057370
	ldr		r1, _08060680
	add		r4, r4, r1
	ldr		r2, [r4, #0x0]
	lsl		r2, r2, #0x18
	lsr		r1, r2, #0x1a
	lsl		r1, r1, #0x7
	add		r1, #0x64
	add		r0, r0, r1
	mov		r1, #0xc0
	lsl		r1, r1, #0x12
	and		r1, r2
	lsr		r1, r1, #0x13
	add		r4, r0, r1
	mov		r3, #0x0
	mov		r5, #0x30
	add		r2, r4, #0x0
_0806066e:
	ldrb	r1, [r2, #0x0]
	add		r0, r5, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08060684
	ldrh	r0, [r2, #0x2]
	b		_0806068e

_0806067c:	.4byte 0x0203EBE0
_08060680:	.4byte 0x00006A3C

_08060684:
	add		r2, #0x4
	add		r3, #0x1
	cmp		r3, #0x4
	ble		_0806066e
	ldrh	r0, [r4, #0x2]
_0806068e:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08060644

	thumb_func_start sub_08060694
sub_08060694:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	bl		sub_08057370
	cmp		r6, #0x0
	bne		_080606a6
	b		_080606c2
_080606a2:
	mov		r0, #0x1
	b		_080606c4
_080606a6:
	mov		r5, #0x0
	ldr		r1, _080606cc
	add		r4, r0, r1
_080606ac:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_080606a2
	add		r4, #0x18
	add		r5, #0x1
	cmp		r5, #0x2
	ble		_080606ac
_080606c2:
	mov		r0, #0x0
_080606c4:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080606cc:	.4byte 0x00000BA8
	thumb_func_end sub_08060694

	thumb_func_start sub_080606d0
sub_080606d0:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	ldr		r0, _08060714
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r1, r0, #0x0
	cmp		r5, #0x0
	beq		_08060722
	add		r0, r5, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806070e
	bl		sub_08057370
	add		r6, r0, #0x0
	mov		r4, #0x0
_080606f6:
	lsl		r1, r4, #0x1
	add		r1, r1, r4
	lsl		r1, r1, #0x3
	add		r1, r1, r6
	ldr		r0, _08060718
	add		r1, r1, r0
	add		r0, r5, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	beq		_0806071c
_0806070e:
	mov		r0, #0x1
	b		_08060724

.align 2, 0
.pool

_08060714:	.4byte 0x0203EBE0
_08060718:	.4byte 0x00000BA8

_0806071c:
	add		r4, #0x1
	cmp		r4, #0x2
	ble		_080606f6
_08060722:
	mov		r0, #0x0
_08060724:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

	push	{ lr }
	sub		sp, #0xc
	mov		r1, #0x0
	ldr		r0, _0806074c
	str		r0, [sp, #0x8]
	ldr		r0, _08060750
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r0 }
	bx		r0

_0806074c:	.4byte 0x00400070
_08060750:	.4byte 0x080e4664
	push	{ r4, lr }
	mov		r0, #0x6
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r4, _08060784
	cmp		r0, #0x1
	bne		_08060768
	ldr		r4, _08060788
_08060768:
	ldr		r0, _0806078c
	bl		sub_0806581c
	ldr		r2, _08060790
	str		r4, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08060784:	.4byte _LoadMGBRegistrationMenu
_08060788:	.4byte 0x08060795
_0806078c:	.4byte 0x08060755
_08060790:	.4byte RunGameLogic_CallBack

	push	{ lr }
	mov		r0, #0x7
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, #0x0
	cmp		r0, #0x1
	beq		_080607c0
	cmp		r0, #0x1
	bgt		_080607b0
	cmp		r0, #0x0
	beq		_080607b6
	b		_080607c8
_080607b0:
	cmp		r1, #0x2
	beq		_080607c0
	b		_080607c8
_080607b6:
	ldr		r1, _080607bc
	b		_080607ca

.align 2, 0
.pool

_080607bc:	.4byte 0x08060795

_080607c0:
	ldr		r1, _080607c4
	b		_080607ca

_080607c4:	.4byte 0x080607E9

_080607c8:
	ldr		r1, _080607e0
_080607ca:
	ldr		r0, _080607e4
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080607e0:	.4byte 0x08060755
_080607e4:	.4byte RunGameLogic_CallBack
	push	{ lr }
	mov		r0, #0x1
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _08060810
	cmp		r0, #0x1
	bne		_080607fc
	ldr		r1, _08060814
_080607fc:
	ldr		r0, _08060818
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

_08060810:	.4byte 0x08060795
_08060814:	.4byte 0x08060821
_08060818:	.4byte RunGameLogic_CallBack

.incbin "base.gba", 0x6081C, 0x4
	thumb_func_end sub_080606d0

	thumb_func_start sub_08060820
sub_08060820:
	push	{ lr }
	mov		r0, #0x2
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _08060848
	cmp		r0, #0x1
	bne		_08060834
	ldr		r1, _0806084c
_08060834:
	ldr		r0, _08060850
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

_08060848:	.4byte 0x080607e9
_0806084c:	.4byte 0x08060855
_08060850:	.4byte RunGameLogic_CallBack
	push	{ lr }
	mov		r0, #0x3
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _0806087c
	cmp		r0, #0x1
	bne		_08060868
	ldr		r1, _08060880
_08060868:
	ldr		r0, _08060884
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

_0806087c:	.4byte 0x08060821
_08060880:	.4byte 0x08060889
_08060884:	.4byte RunGameLogic_CallBack
	push	{ lr }
	mov		r0, #0x4
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _080608b0
	cmp		r0, #0x1
	bne		_0806089c
	ldr		r1, _080608b4
_0806089c:
	ldr		r0, _080608b8
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

_080608b0:	.4byte 0x08060855
_080608b4:	.4byte 0x080608bd
_080608b8:	.4byte RunGameLogic_CallBack
	push	{ lr }
	mov		r0, #0x5
	bl		sub_0806f9bc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _080608e4
	cmp		r0, #0x1
	bne		_080608d0
	ldr		r1, _080608e8
_080608d0:
	ldr		r0, _080608ec
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

_080608e4:	.4byte 0x08060889
_080608e8:	.4byte sub_0805fc08
_080608ec:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08060820

	thumb_func_start sub_080608f0
sub_080608f0:
	push	{ r4, lr }
	sub		sp, #0xc
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r4, _08060950
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08060954
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		sp, #0xc
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08060950:	.4byte 0x080948b0
_08060954:	.4byte 0x0810fbec
	thumb_func_end sub_080608f0

	thumb_func_start sub_08060958
sub_08060958:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	mov		r1, #0x0
	mov		r3, #0x0
_08060960:
	strb	r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, #0xd3
	bls		_08060960
	add		r4, r2, #0x0
	add		r4, #0x4a
	mov		r0, #0x2d
	add		r0, r0, r2
	mov		r12, r0
	add		r5, r2, #0x0
	add		r5, #0x1c
	add		r1, r2, #0x0
	add		r1, #0x3e
	mov		r3, #0xf
	add		r0, r2, #0x0
	add		r0, #0x49
_08060982:
	strb	r3, [r0, #0x0]
	sub		r0, #0x1
	cmp		r0, r1
	bge		_08060982
	add		r1, r4, #0x0
	mov		r3, #0xf
	add		r0, r1, #0x7
_08060990:
	strb	r3, [r0, #0x0]
	sub		r0, #0x1
	cmp		r0, r1
	bge		_08060990
	mov		r1, #0x0
	mov		r0, #0x2f
	mov		r3, r12
	strb	r0, [r3, #0x0]
	str		r1, [r2, #0x18]
	add		r1, r5, #0x0
	mov		r2, #0x0
	add		r0, r1, #0x0
	add		r0, #0x10
_080609aa:
	strb	r2, [r0, #0x0]
	sub		r0, #0x1
	cmp		r0, r1
	bge		_080609aa
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08060958

	thumb_func_start sub_080609b8
sub_080609b8:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x74
	ldr		r0, _080609e8
	ldr		r5, [r0, #0x0]
	ldr		r0, _080609ec
	add		r7, r5, r0
	add		r4, sp, #0x20
	add		r2, sp, #0x44
	add		r3, sp, #0x68
	add		r0, r4, #0x0
	mov		r1, sp
	bl		sub_08061258
	add		r6, r4, #0x0
	cmp		r0, #0x0
	bge		_080609f0
	bl		sub_080616d4
	ldr		r0, [sp, #0x68]
	bl		sub_08064328
	mov		r0, #0x0
	b		_08060ad8

.align 2, 0
.pool

_080609e8:	.4byte 0x0203EBE0
_080609ec:	.4byte 0x00006960

_080609f0:
	add		r4, sp, #0x6c
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_080633c0
	cmp		r0, #0x0
	bne		_08060a02
	mov		r0, #0x0
	b		_08060ad8
_08060a02:
	ldrb	r1, [r4, #0x2]
	ldrb	r0, [r4, #0x3]
	ldrb	r2, [r4, #0x5]
	mov		r12, r2
	ldrb	r2, [r4, #0x6]
	mov		r4, sp
	ldr		r3, _08060ae0
	add		r5, r5, r3
	lsl		r1, r1, #0xc
	lsl		r0, r0, #0x7
	orr		r1, r0
	mov		r0, r12
	lsl		r3, r0, #0x2
	orr		r1, r3
	lsr		r0, r2, #0x4
	orr		r0, r1
	strh	r0, [r6, #0x0]
	mov		r0, #0xf
	and		r2, r0
	lsl		r2, r2, #0xc
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x5
	orr		r2, r0
	ldrb	r0, [r4, #0x1]
	lsr		r0, r0, #0x2
	orr		r0, r2
	strh		r0, [r6, #0x2]
	ldrb	r0, [r4, #0x1]
	mov		r2, #0x3
	add		r1, r2, #0x0
	and		r1, r0
	lsl		r1, r1, #0xe
	ldrb	r0, [r4, #0x2]
	lsl		r0, r0, #0x7
	orr		r1, r0
	ldrb	r0, [r4, #0x3]
	orr		r0, r1
	strh		r0, [r6, #0x4]
	ldrb	r1, [r4, #0x4]
	lsl		r1, r1, #0x9
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x2
	orr		r1, r0
	ldrb	r0, [r4, #0x6]
	lsr		r0, r0, #0x5
	orr		r0, r1
	strh		r0, [r6, #0x6]
	ldrb	r0, [r4, #0x6]
	mov		r1, #0x1f
	and		r1, r0
	lsl		r1, r1, #0xb
	ldrb	r0, [r4, #0x7]
	lsl		r0, r0, #0x4
	orr		r1, r0
	ldrb	r0, [r4, #0xB]
	lsr		r0, r0, #0x3
	orr		r0, r1
	strh		r0, [r6, #0x8]
	ldrb	r0, [r4, #0xB]
	mov		r1, #0x7
	and		r1, r0
	lsl		r1, r1, #0xd
	ldrb	r0, [r4, #0xC]
	lsl		r0, r0, #0x6
	orr		r1, r0
	ldrb	r0, [r5, #0x0]
	lsr		r0, r0, #0x2
	orr		r0, r1
	strh		r0, [r6, #0xA]
	ldrb	r0, [r5, #0x0]
	add		r1, r2, #0x0
	and		r1, r0
	lsl		r1, r1, #0xe
	ldrb	r0, [r5, #0x1]
	lsl		r0, r0, #0x6
	orr		r1, r0
	ldrb	r0, [r5, #0x2]
	lsr		r0, r0, #0x2
	orr		r0, r1
	strh		r0, [r6, #0xC]
	ldrb	r0, [r5, #0x2]
	and		r2, r0
	lsl		r2, r2, #0xe
	ldrb	r0, [r5, #0x3]
	lsl		r0, r0, #0x6
	orr		r2, r0
	ldrb	r0, [r5, #0x4]
	lsr		r0, r0, #0x2
	orr		r0, r2
	strh		r0, [r6, #0xE]
	mov		r4, #0x0
_08060ab8:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	bl		sub_08061010
	add		r1, r7, r4
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_08060ab8
	add		r0, r7, #0x0
	bl		setMgbUn2FromSave
	bl		sub_08057428
	mov		r0, #0x1
_08060ad8:
	add		sp, #0x74
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08060ae0:	.4byte 0x00006970
	thumb_func_end sub_080609b8

	thumb_func_start sub_08060ae4
sub_08060ae4:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r12, r3
	lsl		r2, r2, #0x18
	ldr		r0, _08060b64
	add		r4, r5, r0
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	str		r1, [r4, #0x0]
	cmp		r2, #0x0
	beq		_08060b04
	mov		r0, #0x80
	lsl		r0, r0, #0x17
	orr		r0, r1
	str		r0, [r4, #0x0]
_08060b04:
	ldrb	r2, [r6, #0x0]
	mov		r3, #0xf0
	add		r0, r3, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_08060b18
	ldr		r0, [r4, #0x0]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r4, #0x0]
_08060b18:
	mov		r7, #0xf
	add		r0, r7, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_08060b2a
	ldr		r0, [r4, #0x0]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x0]
_08060b2a:
	ldrb	r2, [r6, #0x1]
	add		r0, r3, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_08060b3c
	ldr		r0, [r4, #0x0]
	mov		r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x0]
_08060b3c:
	add		r0, r7, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_08060b4c
	ldr		r0, [r4, #0x0]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r4, #0x0]
_08060b4c:
	ldrb	r1, [r6, #0x2]
	add		r0, r3, #0x0
	and		r0, r1
	add		r2, r1, #0x0
	cmp		r0, #0x0
	beq		_08060b6c
	ldr		r0, _08060b68
	add		r1, r5, r0
	mov		r0, #0x88
	lsl		r0, r0, #0x1
	b		_08060b74

.align 2, 0
.pool

_08060b64:	.4byte 0x00000C88
_08060b68:	.4byte 0x000007DA

_08060b6c:
	ldr		r0, _08060b98
	add		r1, r5, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
_08060b74:
	strh	r0, [r1, #0x0]
	mov		r1, #0xf
	and		r1, r2
	sub		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x7
	bhi		_08060b9c
	sub		r0, r1, #0x1
	bl		sub_0800ebec
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0x1
	bl		sub_08044818
	b		_08060bac

.align 2, 0
.pool

_08060b98:	.4byte 0x000007DA

_08060b9c:
	mov		r0, r12
	bl		sub_0800ebec
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0x1
	bl		sub_08044818
_08060bac:
	ldr		r2, _08060be8
	add		r1, r5, r2
	sub		r2, #0x20
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldrb	r4, [r6, #0x3]
	lsr		r2, r4, #0x4
	ldr		r0, _08060bec
	add		r3, r5, r0
	ldr		r0, [r3, #0x0]
	ldr		r1, _08060bf0
	and		r0, r1
	lsl		r2, r2, #0x8
	orr		r0, r2
	str		r0, [r3, #0x0]
	mov		r0, #0xf
	and		r0, r4
	cmp		r0, #0x0
	beq		_08060be0
	ldr		r1, _08060bec
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	mov		r2, #0x10
	orr		r1, r2
	str		r1, [r0, #0x0]
_08060be0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08060be8:	.4byte 0x00000814
_08060bec:	.4byte 0x00000C88
_08060bf0:	.4byte 0xFFFF00FF
	thumb_func_end sub_08060ae4
