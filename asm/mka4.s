	.include "defines.s"
	.include "ram.s"
	.include "macros.s"
    

	thumb_func_start sub_0806a0fc
sub_0806a0fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	ldr		r0, _0806a15c
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	bl		sub_08060bf4
	add		r5, r0, #0x0
	bl		sub_08057370
	mov		r1, #0xee
	lsl		r1, r1, #0x3
	add		r2, r0, r1
	ldr		r1, _0806a160
	add		r1, r10
	mov		r3, #0x0
	ldr		r4, _0806a164
_0806a126:
	ldrb	r0, [r2, #0x0]
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x1
	add		r3, #0x1
	cmp		r3, r4
	bls		_0806a126
	add		r0, r5, #0x0
	bl		clearMgbUnkString5
	mov		r0, #0x0
	str		r0, [sp, #0xC]
	ldr		r0, _0806a15c
	ldr		r3, [r0, #0x0]
	ldr		r0, _0806a160
	add		r2, r3, r0
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_0806a150
	mov		r1, #0x2
_0806a150:
	str		r1, [sp, #0x10]
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0806a168
	mov		r1, #0x2
	b		_0806a17a

_0806a15c:	.4byte 0x0203EBE0
_0806a160:	.4byte 0x00005F14
_0806a164:	.4byte 0x00000363

_0806a168:
	ldr		r1, _0806a280
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x0
	cmp		r0, #0x0
	ble		_0806a17a
	mov		r1, #0x6
_0806a17a:
	str		r1, [sp, #0x14]
	mov		r0, #0xff
	str		r0, [sp, #0x18]
	ldr		r1, _0806a284
	add		r1, r10
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a288
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
	ldr		r2, _0806a28c
	str		r6, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a290
	str		r6, [sp, #0x0]
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
	ldr		r2, _0806a294
	str		r6, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x3
	mov		r1, #0xc
	mov		r2, #0x1a
	mov		r3, #0x11
	bl		sub_080600b4
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r2, _0806a298
	ldr		r1, [r2, #0x0]
	ldr		r0, _0806a29c
	cmp		r1, r0
	beq		_0806a230
	b		_0806a432
_0806a230:
	mov		r6, r10
	add		r6, #0x3c
	mov		r7, #0xf
	mov		r8, r5
	mov		r1, #0x0
	mov		r9, r1
	add		r5, r2, #0x0
_0806a23e:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r6, #0x0
	ldr		r1, _0806a2a0
	mov		r3, #0x3
	bl		sub_08058c20
	mov		r4, #0x0
	ldrsb	r4, [r6, r4]
	ldr		r0, [sp, #0x18]
	cmp		r0, r4
	bne		_0806a26e
	b		_0806a36e
_0806a26e:
	ldrb	r1, [r6, #0x0]
	str		r1, [sp, #0x18]
	cmp		r4, #0x1
	beq		_0806a2dc
	cmp		r4, #0x1
	bgt		_0806a2a4
	cmp		r4, #0x0
	beq		_0806a2aa
	b		_0806a368

_0806a280:	.4byte 0x00006273
_0806a284:	.4byte 0x00006B74
_0806a288:	.4byte 0x08110e38
_0806a28c:	.4byte 0x08110e50
_0806a290:	.4byte 0x08110e64
_0806a294:	.4byte 0x08110e74
_0806a298:	.4byte RunGameLogic_CallBack
_0806a29c:	.4byte 0x0806A0FD
_0806a2a0:	.4byte 0x08110e20

_0806a2a4:
	cmp		r4, #0x2
	beq		_0806a328
	b		_0806a368
_0806a2aa:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0806a2d8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	b		_0806a30c

_0806a2d8:	.4byte 0x08110e80

_0806a2dc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0806a320
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
_0806a30c:
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0806a324
	bl		sub_08013e9c
	b		_0806a368

.incbin "base.gba", 0x6A31E, 0x2

_0806a320:	.4byte 0x08110eb0
_0806a324:	.4byte 0x08110df0

_0806a328:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0806a384
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0806a388
	bl		sub_08013e9c
_0806a368:
	mov		r0, #0x1
	bl		sub_080281fc
_0806a36e:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806a390
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0806a38c
	b		_0806a3e8

.incbin "base.gba", 0x6A382, 0x2

_0806a384:	.4byte 0x08110ee0
_0806a388:	.4byte 0x08110df0
_0806a38c:	.4byte 0x08069C05

_0806a390:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806a428
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	lsl		r0, r0, #0x2
	add		r0, sp
	add		r0, #0xc
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	beq		_0806a3c8
	mov		r0, #0x91
	bl		sub_0807073c
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	lsl		r0, r0, #0x2
	add		r0, sp
	add		r0, #0xc
	ldr		r0, [r0, #0x0]
	bl		sub_08069ac4
	mov		r0, #0x1
	bl		sub_080281fc
	b		_0806a428
_0806a3c8:
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp		r0, #0x1
	beq		_0806a3fc
	cmp		r0, #0x1
	bgt		_0806a3e0
	cmp		r0, #0x0
	beq		_0806a3e6
	b		_0806a428
_0806a3e0:
	cmp		r0, #0x2
	beq		_0806a420
	b		_0806a428
_0806a3e6:
	ldr		r0, _0806a3f8
_0806a3e8:
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r5, #0x8]
	b		_0806a428

.incbin "base.gba", 0x6A3F6, 0x2

_0806a3f8:	.4byte sub_0806a868

_0806a3fc:
	mov		r0, #0xd7
	lsl		r0, r0, #0x7
	add		r0, r10
	str		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_0806ad3c
	ldr		r0, _0806a41c
_0806a40c:
	str		r0, [r5, #0x0]
	ldrb	r0, [r5, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r5, #0x8]
	b		_0806a432

.incbin "base.gba", 0x6A41A, 0x2

_0806a41c:	.4byte 0x0806A0FD

_0806a420:
	ldr		r0, _0806a424
	b		_0806a40c

_0806a424:	.4byte sub_0806a448

_0806a428:
	ldr		r1, [r5, #0x0]
	ldr		r0, _0806a444
	cmp		r1, r0
	bne		_0806a432
	b		_0806a23e
_0806a432:
	mov		r0, #0x1
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806a444:	.4byte 0x0806A0FD
	thumb_func_end sub_0806a0fc

	thumb_func_start sub_0806a448
sub_0806a448:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _0806a4e8
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r0, _0806a4ec
	add		r0, r9
	mov		r8, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a4f0
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	mov		r7, #0x18
	str		r7, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a4f4
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x7
	bl		sub_08013e9c
	mov		r2, r8
	ldr		r1, [r2, #0x20]
	ldr		r0, [r2, #0x24]
	cmp		r1, r0
	bne		_0806a4fc
	add		r0, r1, #0x0
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x5
	mov		r2, #0x9
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a4f8
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r4, #0xb
	b		_0806a560

_0806a4e8:	.4byte 0x0203EBE0
_0806a4ec:	.4byte 0x00005F14
_0806a4f0:	.4byte 0x08110f10
_0806a4f4:	.4byte 0x08110f30
_0806a4f8:	.4byte 0x08110f5c

_0806a4fc:
	add		r0, r1, #0x0
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x5
	mov		r2, #0x9
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a5a0
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r1, r8
	ldr		r0, [r1, #0x24]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x5
	mov		r2, #0xb
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a5a4
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r4, #0xd
_0806a560:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a5a8
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	mov		r10, r0
	str		r0, [sp, #0x4]
	mov		r5, #0x18
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	add		r1, r4, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_080602e0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806a5b0
	ldr		r0, _0806a5ac
	b		_0806a726

_0806a5a0:	.4byte 0x08110f64
_0806a5a4:	.4byte 0x08110f6c
_0806a5a8:	.4byte 0x08110f74
_0806a5ac:	.4byte 0x0806A0FD

_0806a5b0:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a6c4
	str		r7, [sp, #0x0]
	mov		r1, r10
	str		r1, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r6, #0xe
	mov		r0, r8
	bl		sub_080642fc
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0806a6d4
	ldr		r1, _0806a6c8
	mov		r0, #0x2
	bl		sub_08013d0c
	cmp		r5, #0x63
	ble		_0806a61c
	add		r0, r5, #0x0
	mov		r1, #0x64
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r6, #0xf
	mov		r0, #0x0
	mov		r1, #0xe
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
_0806a61c:
	cmp		r5, #0x9
	ble		_0806a654
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xb
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
_0806a654:
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xb
	bl		sub_080281b0
	mov		r5, #0x4
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a6cc
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0xb
	bl		sub_08013e9c
	add		r6, #0x2
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a6d0
	str		r7, [sp, #0x0]
	mov		r0, r10
	str		r0, [sp, #0x4]
	str		r4, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0xb
	bl		sub_08013e9c
	b		_0806a6dc

_0806a6c4:	.4byte 0x08110f10
_0806a6c8:	.4byte 0x08112c28
_0806a6cc:	.4byte 0x08110f94
_0806a6d0:	.4byte 0x08110f9c

_0806a6d4:
	ldr		r1, _0806a710
	mov		r0, #0x2
	bl		sub_08013d0c
_0806a6dc:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x6
	mov		r1, #0xf
	mov		r2, #0x0
	bl		sub_080601c8
	cmp		r0, #0x0
	beq		_0806a740
	ldr		r0, _0806a714
	add		r0, r9
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0806a724
	ldr		r0, _0806a718
	bl		sub_080602d4
	ldr		r0, _0806a71c
	bl		sub_0806581c
	ldr		r0, _0806a720
	b		_0806a726

_0806a710:	.4byte 0x08112ce8
_0806a714:	.4byte 0x00006B74
_0806a718:	.4byte sub_0806a78c
_0806a71c:	.4byte 0x0806A449
_0806a720:	.4byte 0x080657B1

_0806a724:
	ldr		r0, _0806a738
_0806a726:
	ldr		r2, _0806a73c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0806a764

.incbin "base.gba", 0x6A736, 0x2

_0806a738:	.4byte sub_0806a78c
_0806a73c:	.4byte RunGameLogic_CallBack

_0806a740:
	ldr		r1, _0806a778
	add		r1, r9
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0806a77c
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	ldr		r1, _0806a780
	cmp		r0, #0x0
	beq		_0806a756
	ldr		r1, _0806a784
_0806a756:
	ldr		r0, _0806a788
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0806a764:
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6A776, 0x2

_0806a778:	.4byte 0x00006B74
_0806a77c:	.4byte 0x00006B7C
_0806a780:	.4byte 0x0806A0FD
_0806a784:	.4byte 0x0806A449
_0806a788:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806a448

	thumb_func_start sub_0806a78c
sub_0806a78c:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0806a7ac
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_080638b0
	cmp		r0, #0x0
	bne		_0806a7b0
	add		r0, r4, #0x0
	bl		clearMgbUnkString5
	b		_0806a840

_0806a7ac:	.4byte 0x0203EBE0

_0806a7b0:
	ldr		r0, _0806a808
	add		r4, r5, r0
	bl		sub_08057370
	mov		r2, #0xee
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	mov		r2, #0x0
	ldr		r3, _0806a80c
_0806a7c2:
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	bls		_0806a7c2
	bl		sub_08057428
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806a814
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a810
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x17
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0806a834

_0806a808:	.4byte 0x00005F14
_0806a80c:	.4byte 0x00000363
_0806a810:	.4byte 0x08110fac

_0806a814:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a85c
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	bl		sub_08013e9c
_0806a834:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806a840:
	ldr		r0, _0806a860
	ldr		r2, _0806a864
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6A85A, 0x2

_0806a85c:	.4byte 0x08110fd0
_0806a860:	.4byte 0x0806A0FD
_0806a864:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806a78c

	thumb_func_start sub_0806a868
sub_0806a868:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x18
	ldr		r0, _0806a918
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	ldr		r0, _0806a91c
	add		r0, r8
	mov		r9, r0
	add		r1, sp, #0xc
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r1, _0806a920
	add		r1, r8
	ldr		r2, _0806a924
	add		r0, sp, #0xc
	bl		sub_08071b6c
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r1, r9
	ldrb	r4, [r1, #0x0]
	cmp		r4, #0x0
	bne		_0806a8a6
	b		_0806aa14
_0806a8a6:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a928
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	mov		r7, #0x18
	str		r7, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a92c
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r1, r9
	ldr		r0, [r1, #0x30]
	add		r4, sp, #0x10
	add		r1, r4, #0x0
	bl		sub_08059d38
	mov		r1, r9
	ldr		r0, [r1, #0x30]
	cmp		r0, #0x0
	bne		_0806a934
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a930
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r4, #0xb
	b		_0806a97a

_0806a918:	.4byte 0x0203EBE0
_0806a91c:	.4byte 0x00005F14
_0806a920:	.4byte 0x0000094C
_0806a924:	.4byte 0x01001140
_0806a928:	.4byte 0x08110ffc
_0806a92c:	.4byte 0x08111018
_0806a930:	.4byte 0x08111040

_0806a934:
	add		r0, r4, #0x0
	mov		r1, #0x5
	mov		r2, #0x8
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a9d8
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a9dc
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r4, #0xd
_0806a97a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a9e0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	mov		r5, #0x18
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	add		r1, r4, #0x0
	bl		sub_08013e9c
	add		r4, #0x2
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806a9e4
	str		r7, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x5
	add		r1, r4, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_080602e0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806a9ec
	ldr		r0, _0806a9e8
	b		_0806aa82

.incbin "base.gba", 0x6A9D6, 0x2

_0806a9d8:	.4byte 0x08111050
_0806a9dc:	.4byte 0x08110f30
_0806a9e0:	.4byte 0x08111068
_0806a9e4:	.4byte 0x08111080
_0806a9e8:	.4byte 0x0806A0FD

_0806a9ec:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806aa10
	str		r7, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08013e9c
	b		_0806aa40

_0806aa10:	.4byte 0x08110ffc

_0806aa14:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806aa6c
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
_0806aa40:
	mov		r0, #0x8
	bl		sub_0806022c
	cmp		r0, #0x0
	beq		_0806aa9c
	ldr		r0, _0806aa70
	add		r0, r8
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0806aa80
	ldr		r0, _0806aa74
	bl		sub_080602d4
	ldr		r0, _0806aa78
	bl		sub_0806581c
	ldr		r0, _0806aa7c
	b		_0806aa82

.incbin "base.gba", 0x6AA6A, 0x2

_0806aa6c:	.4byte 0x08110ffc
_0806aa70:	.4byte 0x00006B74
_0806aa74:	.4byte sub_0806aaec
_0806aa78:	.4byte 0x0806A869
_0806aa7c:	.4byte 0x080657B1

_0806aa80:
	ldr		r0, _0806aa94
_0806aa82:
	ldr		r2, _0806aa98
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0806aac8

.incbin "base.gba", 0x6AA92, 0x2

_0806aa94:	.4byte sub_0806aaec
_0806aa98:	.4byte RunGameLogic_CallBack

_0806aa9c:
	ldr		r2, _0806aad8
	ldr		r1, _0806aadc
	add		r1, r8
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0806aae0
	add		r0, r8
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806aaba
	mov		r1, r9
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0806aaba
	ldr		r2, _0806aae4
_0806aaba:
	ldr		r0, _0806aae8
	str		r2, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0806aac8:
	mov		r0, #0x1
	add		sp, #0x18
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806aad8:	.4byte 0x0806A0FD
_0806aadc:	.4byte 0x00006B74
_0806aae0:	.4byte 0x00006B7C
_0806aae4:	.4byte 0x0806A869
_0806aae8:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806a868

	thumb_func_start sub_0806aaec
sub_0806aaec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x24
	ldr		r0, _0806ab70
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	mov		r8, r0
	ldr		r0, _0806ab74
	add		r4, r7, r0
	bl		sub_08063500
	cmp		r0, #0x0
	bne		_0806ab0e
	b		_0806ad0c
_0806ab0e:
	ldr		r1, _0806ab78
	add		r2, r7, r1
	mov		r5, #0x0
_0806ab14:
	ldrb	r1, [r4, #0x0]
	cmp		r1, #0xa
	beq		_0806ab2a
	cmp		r1, #0xd
	beq		_0806ab2a
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	add		r4, #0x1
	cmp		r1, r0
	beq		_0806ab14
	mov		r5, #0x1
_0806ab2a:
	cmp		r5, #0x0
	bne		_0806ab80
	bl		sub_080642ac
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_0806ab4e
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806ab4e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806ab7c
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	b		_0806acbc

_0806ab70:	.4byte 0x0203EBE0
_0806ab74:	.4byte 0x0000094C
_0806ab78:	.4byte 0x00005F14
_0806ab7c:	.4byte 0x081110a8

_0806ab80:
	ldrb	r0, [r4, #0x0]
	add		r5, sp, #0x14
	add		r6, sp, #0x1c
	b		_0806ab8c
_0806ab88:
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
_0806ab8c:
	cmp		r0, #0xa
	beq		_0806ab94
	cmp		r0, #0xd
	bne		_0806ab88
_0806ab94:
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
_0806ab98:
	add		r4, #0x1
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_0806ab98
	ldr		r2, _0806ac08
	add		r0, r7, r2
	add		r1, sp, #0xc
	bl		sub_08059b60
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08059cb4
	add		r0, r4, #0x0
	add		r0, #0xa
	add		r1, r6, #0x0
	bl		sub_08059cb4
	add		r0, sp, #0xc
	bl		sub_08059a88
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08059fd4
	cmp		r4, r0
	blt		_0806abde
	add		r0, r6, #0x0
	bl		sub_08059fd4
	cmp		r4, r0
	ble		_0806ac10
_0806abde:
	bl		sub_080642ac
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_0806abfe
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806abfe:
	ldr		r1, _0806ac0c
	mov		r0, #0x3
	bl		sub_08013d0c
	b		_0806ad00

_0806ac08:	.4byte 0x00000552
_0806ac0c:	.4byte 0x081147c4

_0806ac10:
	bl		sub_0806361c
	ldr		r4, _0806acc4
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_0806ac5c
	add		r1, r4, #0x0
	add		r1, #0x8
	ldrh	r0, [r1, #0x2]
	cmp		r0, #0x0
	beq		_0806ac5c
	mov		r0, #0x0
	strh	r0, [r1, #0x2]
	ldr		r1, _0806acc8
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r0, r4, #0x0
	bl		sub_08071b6c
	mov		r0, #0xc
	bl		sub_0805768c
	bl		sub_08057370
	mov		r3, #0xbf
	lsl		r3, r3, #0x4
	add		r0, r0, r3
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r1, r3, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	bl		sub_08057428
_0806ac5c:
	ldr		r1, _0806accc
	mov		r0, #0xb4
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	ldr		r2, _0806acd0
	and		r0, r2
	str		r0, [r1, #0x0]
	ldr		r1, _0806acd4
	add		r4, r7, r1
	bl		sub_08057370
	mov		r2, #0xee
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	mov		r2, #0x0
	ldr		r3, _0806acd8
_0806ac7e:
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	bls		_0806ac7e
	bl		sub_08057428
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806ace0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806acdc
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x8
_0806acbc:
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0806ad00

_0806acc4:	.4byte 0x02029400
_0806acc8:	.4byte 0x02020400
_0806accc:	.4byte 0x02033780
_0806acd0:	.4byte 0xffefffff
_0806acd4:	.4byte 0x00005F14
_0806acd8:	.4byte 0x00000363
_0806acdc:	.4byte 0x081110d4

_0806ace0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806ad30
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
_0806ad00:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806ad0c:
	mov		r0, r8
	bl		clearMgbUnkString5
	ldr		r0, _0806ad34
	ldr		r2, _0806ad38
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x24
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806ad30:	.4byte 0x081110f4
_0806ad34:	.4byte 0x0806A0FD
_0806ad38:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806aaec

	thumb_func_start sub_0806ad3c
sub_0806ad3c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x34
	mov		r8, r0
	ldr		r0, _0806ada4
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x24]
	ldr		r1, _0806ada8
	add		r0, r0, r1
	mov		r10, r0
	ldr		r2, [sp, #0x24]
	ldr		r7, _0806adac
	add		r0, r2, r7
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x7
	asr		r0, r0, #0x3
	add		r0, #0x3
	str		r0, [sp, #0x2C]
	ldr		r0, [sp, #0x24]
	ldr		r1, _0806adb0
	add		r2, r0, r1
	ldr		r7, [sp, #0x2C]
	cmp		r7, #0x0
	beq		_0806ad80
	mov		r3, #0x0
	add		r1, sp, #0xc
	add		r6, r7, #0x0
_0806ad78:
	stmia	r1!, {  r3 }
	sub		r6, #0x1
	cmp		r6, #0x0
	bne		_0806ad78
_0806ad80:
	add		r5, r2, #0x0
	mov		r0, #0x4
	str		r0, [sp, #0x28]
	ldr		r1, [sp, #0x2C]
	cmp		r0, r1
	bgt		_0806ade4
_0806ad8c:
	ldr		r0, [sp, #0x28]
	sub		r0, #0x4
	lsl		r1, r0, #0x2
	add		r1, sp
	add		r1, #0xc
	str		r5, [r1, #0x0]
	mov		r6, #0x0
	add		r7, r0, #0x0
	ldr		r2, [sp, #0x28]
	add		r2, #0x1
	mov		r9, r2
	b		_0806adb6

_0806ada4:	.4byte 0x0203EBE0
_0806ada8:	.4byte 0x00005F14
_0806adac:	.4byte 0x00005F51
_0806adb0:	.4byte 0x00005F52

_0806adb4:
	add		r6, #0x1
_0806adb6:
	cmp		r6, #0x7
	bgt		_0806adda
	ldrb	r0, [r5, #0x0]
	mov		r4, r10
	add		r4, #0x3d
	cmp		r0, #0x0
	beq		_0806adcc
_0806adc4:
	add		r5, #0x1
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0806adc4
_0806adcc:
	add		r5, #0x1
	ldrb	r1, [r4, #0x0]
	lsl		r0, r7, #0x3
	add		r0, r0, r6
	add		r0, #0x1
	cmp		r1, r0
	bgt		_0806adb4
_0806adda:
	mov		r7, r9
	str		r7, [sp, #0x28]
	ldr		r0, [sp, #0x2C]
	cmp		r7, r0
	ble		_0806ad8c
_0806ade4:
	mov		r1, r8
	cmp		r1, #0x0
	beq		_0806adfe
	ldr		r2, [sp, #0x2C]
	lsl		r0, r2, #0x2
	mov		r1, sp
	add		r1, r1, r0
	add		r1, #0xc
	b		_0806adf8
_0806adf6:
	sub		r1, #0x4
_0806adf8:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0806adf6
_0806adfe:
	mov		r7, #0x1
	str		r7, [sp, #0x28]
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0806ae0c
	ldr		r1, [sp, #0x2C]
	str		r1, [sp, #0x28]
_0806ae0c:
	ldr		r2, [sp, #0x28]
	cmp		r2, #0x0
	bgt		sub_0806ae16
	bl		sub_0806ba2e
	thumb_func_end sub_0806ad3c

	non_word_aligned_thumb_func_start sub_0806ae16
sub_0806ae16:
	ldr		r7, [sp, #0x28]
	cmp		r7, #0x1
	beq		_0806ae40
	cmp		r7, #0x1
	bgt		_0806ae2c
	cmp		r7, #0x0
	bne		_0806ae28
	bl		sub_0806ba34
_0806ae28:
	bl		sub_0806b976
_0806ae2c:
	ldr		r0, [sp, #0x28]
	cmp		r0, #0x2
	bne		_0806ae34
	b		_0806b1dc
_0806ae34:
	cmp		r0, #0x3
	bne		_0806ae3c
	bl		sub_0806b87a
_0806ae3c:
	bl		sub_0806b976
_0806ae40:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r6, #0x16
	str		r6, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x2
	ldr		r2, _0806aeb4
	bl		sub_08013e9c
	mov		r2, r10
	ldr		r1, [r2, #0x20]
	ldr		r0, [r2, #0x24]
	cmp		r1, r0
	bne		_0806aebc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x4
	ldr		r2, _0806aeb8
	bl		sub_08013e9c
	mov		r1, r10
	ldr		r0, [r1, #0x20]
	add		r4, sp, #0x1c
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	mov		r2, #0x4
	bl		sub_080698d0
	mov		r6, #0x6
	b		_0806af40

.incbin "base.gba", 0x6AEB2, 0x2

.align 2, 0
_0806aeb4:	.4byte 0x0811111c
_0806aeb8:	.4byte 0x08111130

_0806aebc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x4
	ldr		r2, _0806af84
	bl		sub_08013e9c
	mov		r7, r10
	ldr		r0, [r7, #0x20]
	add		r4, sp, #0x1c
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	mov		r2, #0x4
	bl		sub_080698d0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x17
	mov		r1, #0x4
	ldr		r2, _0806af88
	bl		sub_08013e9c
	ldr		r0, [r7, #0x24]
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	mov		r2, #0x6
	bl		sub_080698d0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x17
	mov		r1, #0x6
	ldr		r2, _0806af8c
	bl		sub_08013e9c
	mov		r6, #0x8
_0806af40:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, #0x0
	mov		r8, r2
	str		r2, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r5, #0x16
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	add		r1, r6, #0x0
	ldr		r2, _0806af90
	bl		sub_08013e9c
	mov		r0, r10
	ldr		r1, [r0, #0x28]
	ldr		r0, [r0, #0x2c]
	cmp		r1, r0
	bne		_0806af94
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	add		r2, r6, #0x0
	bl		sub_080698d0
	b		_0806aff8

.incbin "base.gba", 0x6AF82, 0x2

_0806af84:	.4byte 0x08111144
_0806af88:	.4byte 0x08110f64
_0806af8c:	.4byte 0x08110f6c
_0806af90:	.4byte 0x08111158

_0806af94:
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	add		r2, r6, #0x0
	bl		sub_080698d0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r8
	str		r1, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x17
	add		r1, r6, #0x0
	ldr		r2, _0806b0f4
	bl		sub_08013e9c
	add		r6, #0x2
	mov		r2, r10
	ldr		r0, [r2, #0x2c]
	add		r1, r4, #0x0
	bl		sub_08059d38
	add		r0, r4, #0x0
	mov		r1, #0xd
	add		r2, r6, #0x0
	bl		sub_080698d0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r8
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x17
	add		r1, r6, #0x0
	ldr		r2, _0806b0f8
	bl		sub_08013e9c
_0806aff8:
	add		r6, #0x2
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0x4
	add		r1, r6, #0x0
	ldr		r2, _0806b0fc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0xd
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r7, r0, #0x0
	mov		r5, r10
	add		r5, #0x3c
	mov		r0, #0x3a
	add		r0, r10
	mov		r9, r0
	mov		r1, r10
	add		r1, #0x3b
	str		r1, [sp, #0x30]
	ldr		r2, _0806b100
	mov		r8, r2
	mov		r4, #0x3
_0806b03e:
	ldrb	r0, [r5, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _0806b104
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0806b03e
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	mov		r0, #0xb0
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _0806b108
	mov		r0, #0x10
	str		r0, [sp, #0x0]
	add		r0, r1, #0x0
	mov		r3, #0x0
	bl		sub_08005ddc
	mov		r3, #0x0
	mov		r1, #0xe0
	lsl		r1, r1, #0x2
	mov		r8, r1
	ldr		r2, _0806b10c
	add		r4, r2, #0x0
	mov		r0, #0xe3
	lsl		r0, r0, #0x2
	add		r5, r0, #0x0
	add		r2, r7, #0x0
	add		r2, #0x40
	add		r1, r7, #0x0
_0806b08c:
	mov		r7, r8
	add		r0, r3, r7
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		r0, r3, r5
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	add		r3, #0x1
	cmp		r3, #0xb
	ble		_0806b08c
	add		r6, #0x2
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0x4
	add		r1, r6, #0x0
	ldr		r2, _0806b110
	bl		sub_08013e9c
	mov		r1, r9
	ldrb	r0, [r1, #0x0]
	add		r1, r4, #0x0
	and		r1, r0
	cmp		r1, #0x0
	bne		_0806b118
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0xd
	add		r1, r6, #0x0
	ldr		r2, _0806b114
	bl		sub_08013e9c
	b		_0806b148

.incbin "base.gba", 0x6B0F2, 0x2

_0806b0f4:	.4byte 0x08110f64
_0806b0f8:	.4byte 0x08110f6c
_0806b0fc:	.4byte 0x0811116c
_0806b100:	.4byte 0x08102bf8
_0806b104:	.4byte 0x0600F000
_0806b108:	.4byte 0x080ce084
_0806b10c:	.4byte 0xFFFFB000
_0806b110:	.4byte 0x08111180
_0806b114:	.4byte 0x08111194

_0806b118:
	cmp		r1, #0x8
	bhi		_0806b148
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806b17c
	mov		r0, r9
	ldrb	r1, [r0, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	sub		r0, #0x1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0xd
	add		r1, r6, #0x0
	bl		sub_08013e9c
_0806b148:
	add		r6, #0x2
	ldr		r1, [sp, #0x30]
	ldrb	r0, [r1, #0x0]
	mov		r5, #0xf
	add		r4, r5, #0x0
	and		r4, r0
	cmp		r4, #0x0
	beq		_0806b184
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0x4
	add		r1, r6, #0x0
	ldr		r2, _0806b180
	bl		sub_08013e9c
	b		_0806b1a2

.incbin "base.gba", 0x6B17A, 0x2

_0806b17c:	.4byte 0x081111a4
_0806b180:	.4byte 0x08111254

_0806b184:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	add		r1, r6, #0x0
	ldr		r2, _0806b1c8
	bl		sub_08013e9c
_0806b1a2:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x3
	mov		r1, #0x0
	bl		sub_08059f00
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806b1cc
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r1, [sp, #0x28]
	sub		r1, #0x1
	str		r1, [sp, #0x28]
	bl		sub_0806ba24
_0806b1c8:
	asr		r0, r6, #0x9
	lsr		r1, r2, #0x20
_0806b1cc:
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r2, [sp, #0x28]
	add		r2, #0x1
	str		r2, [sp, #0x28]
	bl		sub_0806ba24
_0806b1dc:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r6, #0x16
	str		r6, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x2
	ldr		r2, _0806b2c0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x4
	ldr		r2, _0806b2c4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x6
	ldr		r2, _0806b2c8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x8
	ldr		r2, _0806b2cc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xa
	ldr		r2, _0806b2d0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xc
	ldr		r2, _0806b2d4
	bl		sub_08013e9c
	mov		r0, r10
	add		r0, #0x3a
	ldrb	r0, [r0, #0x0]
	mov		r4, #0xf0
	and		r4, r0
	cmp		r4, #0x0
	beq		_0806b2dc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x4
	ldr		r2, _0806b2d8
	bl		sub_08013e9c
	b		_0806b2f8

.incbin "base.gba", 0x6B2BE, 0x2

_0806b2c0:	.4byte 0x0811111c
_0806b2c4:	.4byte 0x0811128c
_0806b2c8:	.4byte 0x081112a0
_0806b2cc:	.4byte 0x081112b4
_0806b2d0:	.4byte 0x081112c8
_0806b2d4:	.4byte 0x081112dc
_0806b2d8:	.4byte 0x081112f0

_0806b2dc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x4
	ldr		r2, _0806b330
	bl		sub_08013e9c
_0806b2f8:
	mov		r1, r10
	add		r1, #0x38
	ldrb	r0, [r1, #0x0]
	mov		r5, #0xf
	add		r4, r5, #0x0
	and		r4, r0
	add		r7, r1, #0x0
	cmp		r4, #0x0
	bne		_0806b334
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x6
	ldr		r2, _0806b330
	bl		sub_08013e9c
	mov		r6, r10
	add		r6, #0x39
	b		_0806b38a

.incbin "base.gba", 0x6B32E, 0x2

_0806b330:	.4byte 0x081112f8

_0806b334:
	mov		r1, r10
	add		r1, #0x39
	ldrb	r0, [r1, #0x0]
	add		r4, r5, #0x0
	and		r4, r0
	add		r6, r1, #0x0
	cmp		r4, #0x0
	beq		_0806b36c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r2, #0x16
	str		r2, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x6
	ldr		r2, _0806b368
	bl		sub_08013e9c
	b		_0806b38a

.incbin "base.gba", 0x6B366, 0x2

_0806b368:	.4byte 0x08111300

_0806b36c:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x6
	ldr		r2, _0806b3b8
	bl		sub_08013e9c
_0806b38a:
	ldrb	r0, [r6, #0x0]
	mov		r4, #0xf0
	and		r4, r0
	cmp		r4, #0x0
	beq		_0806b3c0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x8
	ldr		r2, _0806b3bc
	bl		sub_08013e9c
	b		_0806b3e0

_0806b3b8:	.4byte 0x081112f0
_0806b3bc:	.4byte 0x08111310

_0806b3c0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	mov		r2, #0x16
	str		r2, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0x8
	ldr		r2, _0806b410
	bl		sub_08013e9c
_0806b3e0:
	ldrb	r0, [r7, #0x0]
	mov		r4, #0xf0
	and		r4, r0
	cmp		r4, #0x0
	beq		_0806b418
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r1, #0x16
	str		r1, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0xa
	ldr		r2, _0806b414
	bl		sub_08013e9c
	b		_0806b438

.incbin "base.gba", 0x6B40E, 0x2

_0806b410:	.4byte 0x081112f8
_0806b414:	.4byte 0x081112f0

_0806b418:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0xa
	ldr		r2, _0806b53c
	bl		sub_08013e9c
_0806b438:
	mov		r0, r10
	add		r0, #0x3b
	ldrb	r0, [r0, #0x0]
	lsr		r0, r0, #0x4
	lsl		r1, r0, #0x2
	add		r5, r1, r0
	mov		r6, #0xd
	cmp		r5, #0x9
	ble		_0806b482
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0xc
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r5, r0, #0x0
	mov		r6, #0xe
_0806b482:
	lsl		r4, r5, #0x10
	asr		r4, r4, #0x10
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0xc
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf
	lsl		r7, r2, #0xc
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	add		r6, #0x1
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	mov		r2, #0x16
	str		r2, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0xc
	ldr		r2, _0806b540
	bl		sub_08013e9c
	ldr		r1, [sp, #0x24]
	mov		r2, #0xd7
	lsl		r2, r2, #0x7
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	cmp		r0, #0x0
	beq		_0806b4da
	b		_0806b6d0
_0806b4da:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r8
	str		r0, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	mov		r2, #0x16
	str		r2, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xe
	ldr		r2, _0806b544
	bl		sub_08013e9c
	mov		r6, #0xd
	mov		r0, r10
	bl		sub_080642fc
	add		r5, r0, #0x0
	ldr		r0, _0806b548
	add		r0, r10
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r9, r0
	cmp		r5, #0x0
	bne		_0806b550
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, r8
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r1, #0x16
	str		r1, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, #0xe
	ldr		r2, _0806b54c
	bl		sub_08013e9c
	mov		r6, #0x11
	b		_0806b60a

_0806b53c:	.4byte 0x081112f8
_0806b540:	.4byte 0x08111320
_0806b544:	.4byte 0x08111328
_0806b548:	.4byte 0x0000035E
_0806b54c:	.4byte 0x0811133c

_0806b550:
	cmp		r5, #0x63
	ble		_0806b57e
	add		r0, r5, #0x0
	mov		r1, #0x64
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r6, #0xe
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
_0806b57e:
	cmp		r5, #0x9
	ble		_0806b5bc
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r5, r0, #0x0
_0806b5bc:
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, r8
	str		r2, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0xe
	ldr		r2, _0806b6c4
	bl		sub_08013e9c
	add		r6, #0x2
_0806b60a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	add		r0, r6, #0x0
	add		r6, #0x1
	mov		r1, #0x0
	mov		r8, r1
	str		r1, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r5, #0x16
	str		r5, [sp, #0x8]
	mov		r1, #0xe
	ldr		r2, _0806b6c8
	bl		sub_08013e9c
	mov		r2, r9
	cmp		r2, #0x9
	ble		_0806b674
	mov		r0, r9
	mov		r1, #0xa
	bl		sub_0807d80c
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	mov		r0, r9
	mov		r1, #0xa
	bl		sub_0807d8d8
	mov		r9, r0
_0806b674:
	mov		r0, r9
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	add		r0, r6, #0x0
	mov		r1, r8
	str		r1, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r1, #0xe
	ldr		r2, _0806b6cc
	bl		sub_08013e9c
	b		_0806b794

.incbin "base.gba", 0x6B6C2, 0x2

_0806b6c4:	.4byte 0x08110f94
_0806b6c8:	.4byte 0x08111348
_0806b6cc:	.4byte 0x0811134c

_0806b6d0:
	ldr		r1, _0806b850
	add		r1, r10
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	mov		r5, #0x0
	cmp		r0, #0x0
	blt		_0806b6e0
	add		r5, r0, #0x0
_0806b6e0:
	mov		r6, #0xd
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xe
	ldr		r2, _0806b854
	bl		sub_08013e9c
	cmp		r5, #0x9
	ble		_0806b746
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r6, #0xe
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r5, r0, #0x0
_0806b746:
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0xe
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xf0
	lsl		r2, r2, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0xe
	ldr		r2, _0806b858
	bl		sub_08013e9c
_0806b794:
	ldr		r4, _0806b85c
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_0806b82c
	add		r4, #0x8
	ldrh	r0, [r4, #0x2]
	cmp		r0, #0x0
	beq		_0806b82c
	ldr		r1, [sp, #0x24]
	ldr		r2, _0806b860
	add		r0, r1, r2
	ldr		r2, [r0, #0x0]
	add		r2, #0x14
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r0, #0xc
	mov		r1, #0x0
	bl		sub_08058fdc
	ldrh	r0, [r4, #0x2]
	add		r6, r0, #0x0
	cmp		r6, #0x0
	beq		_0806b82c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x10
	ldr		r2, _0806b864
	bl		sub_08013e9c
	ldr		r0, _0806b850
	add		r0, r10
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bgt		_0806b814
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x10
	ldr		r2, _0806b868
	bl		sub_08013e9c
_0806b814:
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x10
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r6, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
_0806b82c:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x3
	mov		r1, #0x0
	bl		sub_08059f00
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806b86c
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r7, [sp, #0x28]
	sub		r7, #0x1
	b		_0806ba22

.incbin "base.gba", 0x6B84E, 0x2

_0806b850:	.4byte 0x0000035F
_0806b854:	.4byte 0x08111358
_0806b858:	.4byte 0x0811136c
_0806b85c:	.4byte 0x02029400
_0806b860:	.4byte 0x00005F28
_0806b864:	.4byte 0x08111374
_0806b868:	.4byte 0x08111394

_0806b86c:
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r0, [sp, #0x28]
	add		r0, #0x1
	str		r0, [sp, #0x28]
	b		_0806b96a
	thumb_func_end sub_0806ae16

	non_word_aligned_thumb_func_start sub_0806b87a
sub_0806b87a:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	ldr		r2, [sp, #0x28]
	str		r2, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x2
	ldr		r2, _0806b94c
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x6
	ldr		r2, _0806b950
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x8
	ldr		r2, _0806b954
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r2, #0x16
	str		r2, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xa
	ldr		r2, _0806b958
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r1, #0x16
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xc
	ldr		r2, _0806b95c
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x3
	mov		r1, #0x0
	bl		sub_08059f00
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806b960
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r2, #0x2
	str		r2, [sp, #0x28]
	bl		sub_0806ae16
		
	.2byte	0x0
	

.align 2, 0
_0806b94c:
	asr		r4, r3, #0x4
	lsr		r1, r2, #0x20
_0806b950:
	asr		r0, r5, #0xe
	lsr		r1, r2, #0x20
_0806b954:
	asr		r4, r2, #0xf
	lsr		r1, r2, #0x20
_0806b958:
	asr		r4, r7, #0xf
	lsr		r1, r2, #0x20
_0806b95c:
	asr		r4, r4, #0x10
	lsr		r1, r2, #0x20
_0806b960:
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r7, #0x4
	str		r7, [sp, #0x28]
_0806b96a:
	mov		r0, r10
	add		r0, #0x3d
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		sub_0806ba24
	b		_0806ba38
	thumb_func_end sub_0806b87a

	non_word_aligned_thumb_func_start sub_0806b976
sub_0806b976:
	ldr		r4, [sp, #0x28]
	sub		r4, #0x4
	lsl		r0, r4, #0x2
	add		r0, sp
	add		r0, #0xc
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r6, #0x0
	add		r7, r4, #0x0
	mov		r4, r10
	add		r4, #0x3d
	ldr		r0, [sp, #0x28]
	add		r0, #0x1
	mov		r9, r0
	mov		r1, #0x2
	mov		r8, r1
_0806b99a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r1, #0x16
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, r8
	add		r2, r5, #0x0
	bl		sub_08013ec0
	b		_0806b9c0
_0806b9be:
	add		r5, #0x1
_0806b9c0:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0806b9be
	add		r5, #0x1
	ldrb	r1, [r4, #0x0]
	lsl		r0, r7, #0x3
	add		r0, r0, r6
	add		r0, #0x1
	cmp		r1, r0
	ble		_0806b9de
	mov		r2, #0x2
	add		r8, r2
	add		r6, #0x1
	cmp		r6, #0x7
	ble		_0806b99a
_0806b9de:
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r7, [sp, #0x2c]
	cmp		r9, r7
	ble		_0806b9f0
	bl		sub_080602e0
	b		_0806b9f8
_0806b9f0:
	mov		r0, #0x3
	mov		r1, #0x0
	bl		sub_08059f00
_0806b9f8:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806ba0e
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, [sp, #0x28]
	sub		r0, #0x1
	str		r0, [sp, #0x28]
	b		sub_0806ba24
_0806ba0e:
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r1, r9
	str		r1, [sp, #0x28]
	ldr		r2, [sp, #0x2c]
	cmp		r1, r2
	ble		sub_0806ba24
	mov		r7, #0x1
	neg		r7, r7
_0806ba22:
	str		r7, [sp, #0x28]
	thumb_func_end sub_0806b976

	thumb_func_start sub_0806ba24
sub_0806ba24:
	ldr		r0, [sp, #0x28]
	cmp		r0, #0x0
	ble		sub_0806ba2e
	bl		sub_0806ae16
	thumb_func_end sub_0806ba24

	non_word_aligned_thumb_func_start sub_0806ba2e
sub_0806ba2e:
	ldr		r1, [sp, #0x28]
	cmp		r1, #0x0
	bne		_0806ba38
	thumb_func_end sub_0806ba2e

	non_word_aligned_thumb_func_start sub_0806ba34
sub_0806ba34:
	mov		r0, #0x0
	b		_0806ba3a
_0806ba38:
	mov		r0, #0x1
_0806ba3a:
	add		sp, #0x34
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6BA4A, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	ldr		r0, _0806ba94
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0xc]
	ldr		r1, _0806ba98
	add		r1, r0, r1
	str		r1, [sp, #0x10]
	mov		r2, #0x0
	ldr		r3, _0806ba9c
	mov		r10, r3
_0806ba6a:
	ldr		r1, [sp, #0xc]
	mov		r3, #0xd7
	lsl		r3, r3, #0x7
	add		r0, r1, r3
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	add		r0, r2, #0x0
	bl		sub_0806ad3c
	cmp		r0, #0x0
	bne		_0806baa4
	ldr		r0, _0806baa0
	mov		r1, r10
	str		r0, [r1, #0x0]
	ldrb	r0, [r1, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	mov		r2, r10
	b		_0806bd22

.incbin "base.gba", 0x6BA92, 0x2

_0806ba94:	.4byte 0x0203EBE0
_0806ba98:	.4byte 0x00005F14
_0806ba9c:	.4byte RunGameLogic_CallBack
_0806baa0:	.4byte 0x08069C05

_0806baa4:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r3, [sp, #0x10]
	ldr		r0, _0806bbc8
	add		r4, r3, r0
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	bgt		_0806baba
	b		_0806bbe0
_0806baba:
	add		r6, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	mov		r9, r1
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	mov		r8, r2
	str		r2, [sp, #0x4]
	mov		r7, #0x16
	str		r7, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x3
	ldr		r2, _0806bbcc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x6
	ldr		r2, _0806bbd0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, r9
	str		r2, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	ldr		r2, _0806bbd4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r9
	str		r1, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xb
	ldr		r2, _0806bbd8
	bl		sub_08013e9c
	mov		r5, #0xb
	cmp		r6, #0x9
	ble		_0806bb80
	add		r0, r6, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x3
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r3, #0xc0
	lsl		r3, r3, #0x6
	orr		r1, r3
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r3
	strh	r4, [r0, #0x0]
	add		r0, r6, #0x0
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r6, r0, #0x0
	mov		r5, #0xc
_0806bb80:
	lsl		r4, r6, #0x10
	asr		r4, r4, #0x10
	mov		r0, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x3
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x6
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r2
	strh	r4, [r0, #0x0]
	add		r5, #0x1
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	str		r7, [sp, #0x8]
	add		r0, r5, #0x0
	mov		r1, #0x3
	ldr		r2, _0806bbdc
	bl		sub_08013e9c
	b		_0806bc42

.incbin "base.gba", 0x6BBC6, 0x2

_0806bbc8:	.4byte 0x0000035F
_0806bbcc:	.4byte 0x08111438
_0806bbd0:	.4byte 0x08111440
_0806bbd4:	.4byte 0x08111464
_0806bbd8:	.4byte 0x0811148c
_0806bbdc:	.4byte 0x081114a4

_0806bbe0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, #0x0
	str		r2, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x4
	ldr		r2, _0806bc64
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x6
	ldr		r2, _0806bc68
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	ldr		r2, _0806bc6c
	bl		sub_08013e9c
_0806bc42:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0xe
	mov		r1, #0x0
	bl		sub_080601b8
	cmp		r0, #0x0
	bne		_0806bc8c
	ldr		r2, [sp, #0xc]
	ldr		r3, _0806bc70
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806bc74
	mov		r2, #0x1
	b		_0806ba6a

_0806bc64:	.4byte 0x081114bc
_0806bc68:	.4byte 0x081114d8
_0806bc6c:	.4byte 0x08111440
_0806bc70:	.4byte 0x00006B7C

_0806bc74:
	ldr		r0, _0806bc88
	mov		r1, r10
	str		r0, [r1, #0x0]
	ldrb	r0, [r1, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	mov		r2, r10
	b		_0806bd22

.incbin "base.gba", 0x6BC86, 0x2

_0806bc88:	.4byte 0x08069C05

_0806bc8c:
	ldr		r3, [sp, #0x10]
	ldr		r0, _0806bd38
	add		r1, r3, r0
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x0
	blt		_0806bca0
	sub		r0, r2, #0x1
	strb	r0, [r1, #0x0]
_0806bca0:
	ldr		r1, [sp, #0xc]
	ldr		r2, _0806bd3c
	add		r4, r1, r2
	bl		sub_08057370
	mov		r3, #0xee
	lsl		r3, r3, #0x3
	add		r1, r0, r3
	mov		r2, #0x0
	ldr		r3, _0806bd40
_0806bcb4:
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	bls		_0806bcb4
	ldr		r0, _0806bd44
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2
	bl		sub_080708d4
	mov		r4, #0x1f
_0806bcce:
	bl		_UpdateGame
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0806bcce
	bl		sub_08057428
	bl		sub_08057370
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r1, r3, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	bl		sub_08056adc
	bl		sub_08057370
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	ldr		r1, _0806bd48
	and		r1, r2
	strh	r1, [r0, #0x0]
	mov		r4, #0x2f
_0806bd0a:
	bl		_UpdateGame
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0806bd0a
	ldr		r0, _0806bd4c
	ldr		r2, _0806bd50
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
_0806bd22:
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6BD36, 0x2

_0806bd38:	.4byte 0x0000035F
_0806bd3c:	.4byte 0x00005F14
_0806bd40:	.4byte 0x00000363
_0806bd44:	.4byte 0x08124544
_0806bd48:	.4byte 0x00007FFF
_0806bd4c:	.4byte sub_0806bd54
_0806bd50:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806ba34

	thumb_func_start sub_0806bd54
sub_0806bd54:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	ldr		r0, _0806be34
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	ldr		r7, _0806be38
	add		r7, r8
	ldr		r6, _0806be3c
	add		r6, r8
	add		r0, r6, #0x0
	bl		sub_08002c5c
	mov		r1, #0x0
	str		r1, [r6, #0x8]
	str		r1, [r6, #0xc]
	ldr		r0, _0806be40
	add		r0, r8
	str		r1, [r0, #0x0]
	ldr		r0, _0806be44
	add		r0, r8
	str		r1, [r0, #0x0]
	mov		r2, #0x1
	neg		r2, r2
	mov		r1, #0x3
	ldr		r0, _0806be48
	add		r0, r8
_0806bd8c:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0806bd8c
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r6, #0x4]
	str		r0, [r6, #0x10]
	str		r0, [r6, #0x14]
	str		r0, [r6, #0x18]
	str		r0, [r6, #0x1c]
	str		r0, [r6, #0x20]
	ldr		r0, _0806be4c
	add		r1, r6, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [r6, #0x50]
	bl		_UpdateGame
	ldr		r5, _0806be50
	ldr		r4, _0806be54
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _0806be58
	bl		sub_0807df78
	mov		r1, #0x3
	neg		r1, r1
	mov		r0, #0x1
	bl		sub_0807df78
	ldr		r1, _0806be5c
	mov		r0, #0x1
	bl		sub_0807df68
	add		r0, r6, #0x0
	bl		sub_08001b54
	add		r0, r7, #0x0
	add		r0, #0x3a
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x0
	bne		_0806be98
	mov		r0, #0x2
	bl		sub_0807073c
_0806bdfa:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x0
	bl		sub_08007110
	cmp		r0, #0x0
	beq		_0806bdfa
	ldr		r2, _0806be60
	ldr		r0, _0806be64
	ldrh	r1, [r0, #0x14]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2
	bl		sub_080708d4
	mov		r4, #0x0
	ldr		r7, _0806be68
	mov		r6, #0xff
	ldr		r5, _0806be6c
_0806be26:
	cmp		r4, #0x20
	bgt		_0806be70
	strh	r6, [r7, #0x0]
	lsr		r0, r4, #0x1f
	add		r0, r4, r0
	asr		r0, r0, #0x1
	b		_0806be74

_0806be34:	.4byte 0x0203EBE0
_0806be38:	.4byte 0x00005F14
_0806be3c:	.4byte 0x00006B84
_0806be40:	.4byte 0x00007C20
_0806be44:	.4byte 0x00007C24
_0806be48:	.4byte 0x00006BB4
_0806be4c:	.4byte 0x00000D84
_0806be50:	.4byte sub_08001dd0
_0806be54:	.4byte RunGameLogic_CallBack
_0806be58:	.4byte 0x00010001
_0806be5c:	.4byte 0x080270F1
_0806be60:	.4byte 0x08124544
_0806be64:	.4byte 0x081245c8
_0806be68:	.4byte ColorSpecialEffectsSElection
_0806be6c:	.4byte Brightness_Fade_In_Out_Coefficient

_0806be70:
	strh	r6, [r7, #0x0]
	mov		r0, #0x10
_0806be74:
	strh	r0, [r5, #0x0]
	bl		_UpdateGame
	add		r4, #0x1
	cmp		r4, #0x2f
	ble		_0806be26
	mov		r1, #0x80
	lsl		r1, r1, #0x13
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	ldr		r2, _0806bed4
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
_0806be98:
	mov		r5, #0x0
	ldr		r4, _0806bed8
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r4, #0xc]
	mov		r0, #0x2
	ldr		r1, _0806bedc
	bl		sub_0807df78
	ldr		r0, _0806bee0
	add		r0, r8
	str		r5, [r0, #0x0]
	ldr		r0, _0806bee4
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r4, #0x8]
	mov		r0, #0x1
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6BED2, 0x2

_0806bed4:	.4byte 0x01006000
_0806bed8:	.4byte RunGameLogic_CallBack
_0806bedc:	.4byte 0x00010001
_0806bee0:	.4byte 0x00007DF4
_0806bee4:	.4byte 0x0806c0b1
	thumb_func_end sub_0806bd54

	thumb_func_start sub_0806bee8
sub_0806bee8:
	cmp		r0, #0xf
	bgt		_0806bf24
	ldr		r1, _0806bf1c
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0806bef8
	add		r0, #0x3f
_0806bef8:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x3
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	cmp		r0, #0x0
	bge		_0806bf10
	ldr		r1, _0806bf20
	add		r0, r0, r1
_0806bf10:
	asr		r1, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	sub		r0, r0, r1
	b		_0806bf58

.incbin "base.gba", 0x6BF1A, 0x2

_0806bf1c:	.4byte 0x08101068
_0806bf20:	.4byte 0x00007FFF

_0806bf24:
	cmp		r0, #0x1f
	bgt		_0806bf54
	ldr		r1, _0806bf50
	lsl		r0, r0, #0x1a
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0806bf34
	add		r0, #0x3f
_0806bf34:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0806bf44
	add		r0, #0xff
_0806bf44:
	asr		r1, r0, #0x8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	b		_0806bf58

.incbin "base.gba", 0x6BF4E, 0x2

_0806bf50:	.4byte 0x08101068

_0806bf54:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
_0806bf58:
	bx		lr

.incbin "base.gba", 0x6BF5A, 0x2
	thumb_func_end sub_0806bee8

	thumb_func_start sub_0806bf5c
sub_0806bf5c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	ldr		r0, _0806bfe8
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	ldr		r6, _0806bfec
	add		r6, r9
	ldr		r4, _0806bff0
	add		r4, r9
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0806bfaa
	mov		r7, #0x0
	mov		r5, #0x0
	add		r1, r4, #0x0
	ldr		r2, _0806bff4
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	mov		r8, r0
	add		r3, r2, #0x4
_0806bf8a:
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	str		r0, [r1, #0x4]
	mov		r0, r8
	str		r0, [r1, #0x8]
	str		r5, [r1, #0xc]
	str		r5, [r1, #0x10]
	ldr		r0, [r2, #0x8]
	str		r0, [r1, #0x14]
	add		r1, #0x18
	add		r2, #0x10
	add		r3, #0x10
	add		r7, #0x1
	cmp		r7, #0x6
	ble		_0806bf8a
_0806bfaa:
	mov		r1, #0x90
	add		r1, r1, r4
	mov		r8, r1
	ldr		r0, _0806bff4
	add		r2, r0, #0x0
	add		r2, #0xc
	mov		r7, #0x5
_0806bfb8:
	ldr		r0, [r6, #0x0]
	ldr		r5, [r2, #0x0]
	cmp		r0, r5
	bne		_0806bfce
	mov		r0, #0x1
	str		r0, [r4, #0x10]
	ldr		r0, _0806bff8
	str		r2, [sp, #0x0]
	bl		sub_0807073c
	ldr		r2, [sp, #0x0]
_0806bfce:
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	beq		_0806c02e
	add		r1, r5, #0x0
	add		r1, #0x10
	ldr		r0, [r6, #0x0]
	cmp		r0, r1
	bgt		_0806bffc
	ldr		r0, [r4, #0xc]
	mov		r1, #0xa0
	lsl		r1, r1, #0x7
	add		r0, r0, r1
	b		_0806bffe

_0806bfe8:	.4byte 0x0203EBE0
_0806bfec:	.4byte 0x00007DF4
_0806bff0:	.4byte 0x00007DF8
_0806bff4:	.4byte 0x081114fc
_0806bff8:	.4byte 0x00000187

_0806bffc:
	mov		r0, #0x0
_0806bffe:
	str		r0, [r4, #0xc]
	ldr		r1, [r6, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x1f
	bgt		_0806c016
	str		r2, [sp, #0x0]
	bl		sub_0806bee8
	str		r0, [r4, #0x8]
	ldr		r2, [sp, #0x0]
	b		_0806c01c
_0806c016:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	str		r0, [r4, #0x8]
_0806c01c:
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x69
	ble		_0806c02e
	sub		r0, #0x6a
	cmp		r0, #0x17
	bgt		_0806c02e
	ldr		r0, [r4, #0x4]
	sub		r0, #0x1
	str		r0, [r4, #0x4]
_0806c02e:
	add		r4, #0x18
	add		r2, #0x10
	sub		r7, #0x1
	cmp		r7, #0x0
	bge		_0806bfb8
	ldr		r0, _0806c068
	ldr		r1, [r6, #0x0]
	ldr		r5, [r0, #0x6c]
	cmp		r1, r5
	bne		_0806c050
	mov		r0, #0x1
	mov		r2, r8
	str		r0, [r2, #0x10]
	mov		r0, #0xc4
	lsl		r0, r0, #0x1
	bl		sub_0807073c
_0806c050:
	mov		r4, r8
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	beq		_0806c074
	ldr		r0, [r6, #0x0]
	sub		r0, r0, r5
	cmp		r0, #0x1f
	bgt		_0806c06c
	bl		sub_0806bee8
	str		r0, [r4, #0x8]
	b		_0806c074

_0806c068:	.4byte 0x081114fc

_0806c06c:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r1, r8
	str		r0, [r1, #0x8]
_0806c074:
	ldr		r0, [r6, #0x0]
	cmp		r0, #0xd1
	ble		_0806c0a0
	add		r1, r0, #0x0
	sub		r1, #0xd2
	cmp		r1, #0x18
	bgt		_0806c0a0
	mov		r2, r9
	ldrh	r0, [r2, #0x1a]
	mov		r0, #0xff
	strh	r0, [r2, #0x1a]
	mov		r0, #0x18
	sub		r0, r0, r1
	lsl		r0, r0, #0x4
	neg		r0, r0
	mov		r1, #0x18
	bl		sub_0807d80c
	add		r0, #0x10
	mov		r2, r9
	ldrh	r1, [r2, #0x1e]
	strh	r0, [r2, #0x1e]
_0806c0a0:
	add		sp, #0x4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6C0AE, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x2c
	ldr		r0, _0806c220
	ldr		r7, [r0, #0x0]
	ldr		r0, _0806c224
	add		r0, r7, r0
	str		r0, [sp, #0x14]
	mov		r5, #0x0
	ldr		r6, _0806c228
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r5, [r6, #0xc]
	mov		r0, #0x2
	ldr		r1, _0806c22c
	bl		sub_0807df78
	bl		_UpdateGame
	mov		r0, #0xa0
	lsl		r0, r0, #0x13
	strh	r5, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	strh	r5, [r0, #0x0]
	ldrh	r0, [r7, #0x0]
	mov		r0, #0x82
	lsl		r0, r0, #0x5
	strh	r0, [r7, #0x0]
	ldrh	r0, [r7, #0x1a]
	ldr		r0, _0806c230
	strh	r0, [r7, #0x1a]
	ldrh	r0, [r7, #0x1c]
	mov		r0, #0xbf
	strh	r0, [r7, #0x1c]
	ldrh	r0, [r7, #0x1e]
	mov		r0, #0x10
	strh	r0, [r7, #0x1e]
	ldr		r0, _0806c234
	ldr		r1, _0806c238
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r4, _0806c23c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x0
	bl		sub_08028130
	strh	r5, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r4, _0806c240
	mov		r0, #0x1
	mov		r1, #0x2
	neg		r1, r1
	bl		sub_0807df78
	str		r4, [r6, #0xc]
	mov		r0, #0x2
	ldr		r1, _0806c22c
	bl		sub_0807df78
	ldr		r1, [r6, #0x0]
	ldr		r0, _0806c244
	cmp		r1, r0
	bne		_0806c20e
	ldr		r1, _0806c248
	add		r1, r7, r1
	str		r1, [sp, #0x1c]
	ldr		r2, _0806c24c
	add		r2, r7, r2
	str		r2, [sp, #0x20]
	mov		r0, #0xfc
	lsl		r0, r0, #0x7
	add		r0, r7, r0
	str		r0, [sp, #0x24]
	ldr		r1, _0806c250
	add		r1, r7, r1
	str		r1, [sp, #0x28]
	mov		r2, sp
	add		r2, #0x8
	str		r2, [sp, #0x18]
_0806c16c:
	bl		sub_0802983c
	bl		_UpdateGame
	bl		sub_0806bf5c
	ldr		r0, [sp, #0x14]
	add		r0, #0x14
	mov		r8, r0
	ldr		r7, [sp, #0x28]
	ldr		r6, [sp, #0x24]
	ldr		r5, [sp, #0x20]
	ldr		r4, [sp, #0x1c]
	mov		r1, #0x0
	mov		r10, r1
	mov		r2, #0x6
	mov		r9, r2
_0806c18e:
	ldrh	r2, [r4, #0x0]
	ldr		r1, _0806c254
	ldr		r0, [sp, #0x10]
	and		r0, r1
	orr		r0, r2
	str		r0, [sp, #0x10]
	ldrh	r2, [r5, #0x0]
	lsl		r2, r2, #0x10
	ldr		r1, _0806c258
	and		r0, r1
	orr		r0, r2
	str		r0, [sp, #0x10]
	ldr		r3, [r6, #0x0]
	ldr		r1, [r7, #0x0]
	str		r3, [sp, #0x8]
	mov		r0, #0x1
	ldr		r2, [sp, #0x18]
	str		r0, [r2, #0x4]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_0806c1d0
	ldr		r0, [sp, #0x14]
	add		r0, #0x18
	add		r0, r10
	ldr		r0, [r0, #0x0]
	str		r1, [sp, #0x0]
	ldr		r1, [sp, #0x18]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x10
	add		r2, r3, #0x0
	bl		sub_0802951c
_0806c1d0:
	mov		r2, #0x18
	add		r8, r2
	add		r7, #0x18
	add		r6, #0x18
	add		r5, #0x18
	add		r4, #0x18
	add		r10, r2
	mov		r0, #0x1
	neg		r0, r0
	add		r9, r0
	mov		r1, r9
	cmp		r1, #0x0
	bge		_0806c18e
	ldr		r2, [sp, #0x14]
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r2, _0806c228
	cmp		r0, #0xea
	ble		_0806c206
	ldr		r0, _0806c25c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0806c206:
	ldr		r1, [r2, #0x0]
	ldr		r0, _0806c244
	cmp		r1, r0
	beq		_0806c16c
_0806c20e:
	mov		r0, #0x1
	add		sp, #0x2c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806c220:	.4byte 0x0203EBE0
_0806c224:	.4byte 0x00007DF4
_0806c228:	.4byte RunGameLogic_CallBack
_0806c22c:	.4byte 0x00010001
_0806c230:	.4byte 0x00001044
_0806c234:	.4byte 0x08093478
_0806c238:	.4byte 0x06010000
_0806c23c:	.4byte 0x08092a6c
_0806c240:	.4byte 0x0806d235
_0806c244:	.4byte 0x0806C0B1
_0806c248:	.4byte 0x00007DF8
_0806c24c:	.4byte 0x00007DFC
_0806c250:	.4byte 0x00007E04
_0806c254:	.4byte 0xffff0000
_0806c258:	.4byte 0x0000FFFF
_0806c25c:	.4byte sub_0806c260
	thumb_func_end sub_0806bf5c

	thumb_func_start sub_0806c260
sub_0806c260:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	ldr		r0, _0806c328
	ldr		r1, [r0, #0x0]
	ldr		r0, _0806c32c
	add		r2, r1, r0
	ldr		r3, _0806c330
	add		r0, r1, r3
	ldrb	r6, [r0, #0x0]
	ldr		r0, _0806c334
	add		r4, r0, #0x0
	add		r4, #0x24
	ldr		r5, [r2, #0x18]
	ldr		r2, _0806c338
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mvn		r0, r0
	lsr		r7, r0, #0x1f
	mov		r2, #0x0
	ldr		r0, _0806c33c
	add		r3, r1, r0
_0806c28e:
	mov		r1, sp
	add		r0, r1, r2
	add		r1, r3, r2
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0x3
	ble		_0806c28e
	add		r0, r4, #0x0
	bl		sub_08042668
	bl		sub_08002e8c
	mov		r0, #0x0
	bl		sub_08014ca8
	mov		r0, #0x0
	bl		sub_08014ccc
	mov		r0, #0x0
	bl		sub_08014d38
	mov		r0, #0x0
	bl		sub_08014d14
	ldr		r1, _0806c340
	mov		r0, #0x80
	bl		sub_080588d0
	ldr		r2, _0806c344
	add		r1, r4, r2
	mov		r2, #0x0
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	ldr		r3, _0806c348
	add		r1, r4, r3
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r1, #0xfb
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	strb	r2, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_0802d690
	ldr		r2, _0806c34c
	add		r1, r4, r2
	strb	r0, [r1, #0x0]
	mov		r3, #0x0
	cmp		r5, #0x7
	bhi		_0806c2f6
	add		r3, r5, #0x0
_0806c2f6:
	add		r0, r4, #0x0
	mov		r1, sp
	add		r2, r7, #0x0
	bl		sub_08060ae4
	ldr		r3, _0806c350
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x7f
	and		r0, r1
	strb	r0, [r2, #0x0]
	ldr		r0, _0806c354
	ldr		r2, _0806c334
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6C326, 0x2

_0806c328:	.4byte 0x0203EBE0
_0806c32c:	.4byte 0x00006B84
_0806c330:	.4byte 0x00005F50
_0806c334:	.4byte RunGameLogic_CallBack
_0806c338:	.4byte 0x00006273
_0806c33c:	.4byte 0x00005F4C
_0806c340:	.4byte 0x02022400
_0806c344:	.4byte 0x000007D7
_0806c348:	.4byte 0x000007DC
_0806c34c:	.4byte 0x000007DD
_0806c350:	.4byte 0x000007D4
_0806c354:	.4byte sub_0804b034
	thumb_func_end sub_0806c260

	thumb_func_start sub_0806c358
sub_0806c358:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x14
	ldr		r0, _0806c3e4
	ldr		r7, [r0, #0x0]
	ldr		r0, _0806c3e8
	add		r6, r7, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r5, #0x0
	ldr		r4, _0806c3ec
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_0806c3aa
	add		r1, r4, #0x0
	add		r1, #0x8
	ldrh	r0, [r1, #0x2]
	cmp		r0, #0x0
	beq		_0806c3aa
	add		r1, r0, #0x0
	neg		r0, r1
	orr		r0, r1
	lsr		r5, r0, #0x1f
_0806c3aa:
	cmp		r5, #0x0
	bne		_0806c3f4
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c3f0
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
	b		_0806c578

.incbin "base.gba", 0x6C3E2, 0x2

_0806c3e4:	.4byte 0x0203EBE0
_0806c3e8:	.4byte 0x00005F14
_0806c3ec:	.4byte 0x02029400
_0806c3f0:	.4byte 0x0811156c

_0806c3f4:
	ldr		r1, _0806c490
	add		r0, r7, r1
	ldr		r2, [r0, #0x0]
	add		r2, #0x14
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r0, #0xc
	mov		r1, #0x1
	bl		sub_08058fdc
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c494
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r0, #0x18
	mov		r8, r0
	str		r0, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08013e9c
	ldr		r1, [r6, #0x20]
	ldr		r0, [r6, #0x24]
	cmp		r1, r0
	bne		_0806c4a0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c498
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	ldr		r0, [r6, #0x20]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0xa
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c49c
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r4, #0xd
	b		_0806c524

.incbin "base.gba", 0x6C48E, 0x2

_0806c490:	.4byte 0x00005F28
_0806c494:	.4byte 0x081115a8
_0806c498:	.4byte 0x081115c4
_0806c49c:	.4byte 0x081115d8

_0806c4a0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c564
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x7
	bl		sub_08013e9c
	ldr		r0, [r6, #0x20]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0x9
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c568
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x9
	bl		sub_08013e9c
	ldr		r0, [r6, #0x24]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0xb
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c56c
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r4, #0xe
_0806c524:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c570
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	add		r1, r4, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_080602e0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	beq		_0806c578
	ldr		r0, _0806c574
	b		_0806c57a

.incbin "base.gba", 0x6C562, 0x2

_0806c564:	.4byte 0x081115e4
_0806c568:	.4byte 0x08110f64
_0806c56c:	.4byte 0x081115d8
_0806c570:	.4byte 0x08110f30
_0806c574:	.4byte sub_0806c5a0

_0806c578:
	ldr		r0, _0806c598
_0806c57a:
	ldr		r2, _0806c59c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6C596, 0x2

_0806c598:	.4byte 0x08069C05
_0806c59c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806c358

	thumb_func_start sub_0806c5a0
sub_0806c5a0:
	push	{ r4, lr }
	sub		sp, #0xc
	ldr		r0, _0806c614
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _0806c618
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c61c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0xe
	mov		r1, #0x0
	bl		sub_080601b8
	cmp		r0, #0x0
	bne		_0806c630
	ldr		r1, _0806c620
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	ldr		r1, _0806c624
	cmp		r0, #0x0
	beq		_0806c604
	ldr		r1, _0806c628
_0806c604:
	ldr		r0, _0806c62c
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	b		_0806c640

_0806c614:	.4byte 0x0203EBE0
_0806c618:	.4byte 0x08114330
_0806c61c:	.4byte 0x081115a8
_0806c620:	.4byte 0x00006B7C
_0806c624:	.4byte 0x08069C05
_0806c628:	.4byte 0x0806C359
_0806c62c:	.4byte RunGameLogic_CallBack

_0806c630:
	ldr		r0, _0806c64c
	ldr		r2, _0806c650
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0806c640:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6C64A, 0x2

_0806c64c:	.4byte sub_0806c654
_0806c650:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806c5a0

	thumb_func_start sub_0806c654
sub_0806c654:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0806c6b8
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c6bc
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x8
	bl		sub_0806022c
	cmp		r0, #0x0
	beq		_0806c6ec
	ldr		r1, _0806c6c0
	add		r0, r4, r1
	str		r5, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0806c6d0
	ldr		r0, _0806c6c4
	bl		sub_080602d4
	ldr		r0, _0806c6c8
	bl		sub_0806581c
	ldr		r0, _0806c6cc
	b		_0806c6d2

_0806c6b8:	.4byte 0x0203EBE0
_0806c6bc:	.4byte 0x081115a8
_0806c6c0:	.4byte 0x00006B74
_0806c6c4:	.4byte sub_0806c730
_0806c6c8:	.4byte 0x0806C655
_0806c6cc:	.4byte 0x080657B1

_0806c6d0:
	ldr		r0, _0806c6e4
_0806c6d2:
	ldr		r2, _0806c6e8
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0806c710

.incbin "base.gba", 0x6C6E2, 0x2

_0806c6e4:	.4byte sub_0806c730
_0806c6e8:	.4byte RunGameLogic_CallBack

_0806c6ec:
	ldr		r0, _0806c71c
	add		r1, r4, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r1, _0806c720
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	ldr		r1, _0806c724
	cmp		r0, #0x0
	beq		_0806c702
	ldr		r1, _0806c728
_0806c702:
	ldr		r0, _0806c72c
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0806c710:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6C71A, 0x2

_0806c71c:	.4byte 0x00006B74
_0806c720:	.4byte 0x00006B7C
_0806c724:	.4byte 0x08069C05
_0806c728:	.4byte 0x0806C5A1
_0806c72c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806c654

	thumb_func_start sub_0806c730
sub_0806c730:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	ldr		r0, _0806c7a0
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_0802983c
	bl		_UpdateGame
	bl		sub_08063bd0
	cmp		r0, #0x0
	beq		_0806c7ac
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c7a4
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c7a8
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
	b		_0806c7b2

_0806c7a0:	.4byte 0x0203EBE0
_0806c7a4:	.4byte 0x081115fc
_0806c7a8:	.4byte 0x08111628

_0806c7ac:
	add		r0, r4, #0x0
	bl		clearMgbUnkString5
_0806c7b2:
	ldr		r0, _0806c7cc
	ldr		r2, _0806c7d0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0806c7cc:	.4byte 0x08069C05
_0806c7d0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806c730

	thumb_func_start sub_0806c7d4
sub_0806c7d4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x14
	ldr		r0, _0806c854
	ldr		r6, [r0, #0x0]
	ldr		r0, _0806c858
	add		r7, r6, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r2, _0806c85c
	mov		r1, #0xb4
	lsl		r1, r1, #0x8
	add		r2, r2, r1
	ldr		r0, [r7, #0x14]
	add		r0, #0x14
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r5, [r2, #0x0]
	and		r5, r1
	cmp		r5, #0x0
	beq		_0806c87c
	ldr		r2, _0806c860
	add		r0, r6, r2
	ldrb	r1, [r0, #0x0]
	ldr		r2, _0806c864
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
	ldr		r0, _0806c868
	add		r1, r6, r0
	ldr		r0, [r7, #0x14]
	add		r0, #0x14
	str		r0, [r1, #0x0]
	ldr		r0, _0806c86c
	bl		sub_080602d4
	ldr		r1, _0806c870
	add		r0, r6, r1
	mov		r2, #0x7
	str		r2, [r0, #0x0]
	ldr		r0, _0806c874
	ldr		r1, _0806c878
	str		r0, [r1, #0x0]
	ldrb	r0, [r1, #0x8]
	add		r0, #0x1
	and		r0, r2
	strb	r0, [r1, #0x8]
	b		_0806cac0

.incbin "base.gba", 0x6C852, 0x2

_0806c854:	.4byte 0x0203EBE0
_0806c858:	.4byte 0x00005F14
_0806c85c:	.4byte 0x02033780
_0806c860:	.4byte 0x00005F50
_0806c864:	.4byte 0x00006A44
_0806c868:	.4byte 0x00006A3C
_0806c86c:	.4byte 0x08069C05
_0806c870:	.4byte 0x00006A38
_0806c874:	.4byte 0x08068B81
_0806c878:	.4byte RunGameLogic_CallBack

_0806c87c:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c908
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	mov		r8, r0
	str		r0, [sp, #0x4]
	mov		r1, #0x18
	mov		r9, r1
	str		r1, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x4
	bl		sub_08013e9c
	ldr		r1, [r7, #0x28]
	ldr		r0, [r7, #0x2c]
	cmp		r1, r0
	bne		_0806c914
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c90c
	str		r5, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	ldr		r0, [r7, #0x28]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0xa
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c910
	str		r5, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r5, #0xd
	b		_0806c99e

.incbin "base.gba", 0x6C906, 0x2

_0806c908:	.4byte 0x08111654
_0806c90c:	.4byte 0x0811167c
_0806c910:	.4byte 0x081115d8

_0806c914:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c9e0
	str		r5, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x7
	bl		sub_08013e9c
	ldr		r0, [r7, #0x28]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0x9
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c9e4
	str		r5, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x9
	bl		sub_08013e9c
	ldr		r0, [r7, #0x2c]
	add		r1, sp, #0xc
	bl		sub_08059d38
	add		r0, sp, #0xc
	mov		r1, #0x9
	mov		r2, #0xb
	bl		sub_080698d0
	add		r4, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c9e8
	str		r5, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r5, #0xe
_0806c99e:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806c9ec
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	mov		r9, r0
	str		r0, [sp, #0x4]
	mov		r1, #0x18
	mov		r8, r1
	str		r1, [sp, #0x8]
	mov		r0, #0x5
	add		r1, r5, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_080602e0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x2
	bne		_0806c9f4
	ldr		r0, _0806c9f0
	b		_0806ca82

_0806c9e0:	.4byte 0x08111694
_0806c9e4:	.4byte 0x08110f64
_0806c9e8:	.4byte 0x081115d8
_0806c9ec:	.4byte 0x08110f30
_0806c9f0:	.4byte 0x08069C05

_0806c9f4:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806ca60
	str		r4, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r1, r8
	str		r1, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x8
	bl		sub_0806022c
	cmp		r0, #0x0
	beq		_0806ca9c
	ldr		r2, _0806ca64
	add		r0, r6, r2
	str		r4, [r0, #0x0]
	ldr		r1, _0806ca68
	add		r0, r6, r1
	str		r4, [r0, #0x0]
	ldr		r2, _0806ca6c
	add		r1, r6, r2
	ldr		r0, [r7, #0x14]
	add		r0, #0x14
	str		r0, [r1, #0x0]
	ldr		r1, _0806ca70
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r6, r2
	strb	r1, [r0, #0x0]
	bl		sub_08060298
	cmp		r0, #0x0
	bne		_0806ca80
	ldr		r0, _0806ca74
	bl		sub_080602d4
	ldr		r0, _0806ca78
	bl		sub_0806581c
	ldr		r0, _0806ca7c
	b		_0806ca82

.incbin "base.gba", 0x6CA5E, 0x2

_0806ca60:	.4byte 0x08111654
_0806ca64:	.4byte 0x00006B74
_0806ca68:	.4byte 0x00006A38
_0806ca6c:	.4byte 0x00006A3C
_0806ca70:	.4byte 0x00005F50
_0806ca74:	.4byte sub_0806cae4
_0806ca78:	.4byte 0x0806C7D5
_0806ca7c:	.4byte 0x080657B1

_0806ca80:
	ldr		r0, _0806ca94
_0806ca82:
	ldr		r2, _0806ca98
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	b		_0806cac0

.incbin "base.gba", 0x6CA92, 0x2

_0806ca94:	.4byte sub_0806cae4
_0806ca98:	.4byte RunGameLogic_CallBack

_0806ca9c:
	ldr		r0, _0806cad0
	add		r1, r6, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r1, _0806cad4
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	ldr		r1, _0806cad8
	cmp		r0, #0x0
	beq		_0806cab2
	ldr		r1, _0806cadc
_0806cab2:
	ldr		r0, _0806cae0
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
_0806cac0:
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806cad0:	.4byte 0x00006B74
_0806cad4:	.4byte 0x00006B7C
_0806cad8:	.4byte 0x08069C05
_0806cadc:	.4byte 0x0806C7D5
_0806cae0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806c7d4

	thumb_func_start sub_0806cae4
sub_0806cae4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	ldr		r0, _0806cbdc
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	bl		sub_08060bf4
	mov		r9, r0
	mov		r0, #0xc
	bl		sub_08057878
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	mov		r0, #0xc
	bl		sub_08057850
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	cmp		r6, #0x0
	beq		_0806cb18
	ldr		r0, _0806cbe0
	cmp		r6, r0
	bne		_0806cb1a
_0806cb18:
	mov		r6, #0x0
_0806cb1a:
	bl		sub_0802983c
	bl		_UpdateGame
	lsl		r0, r6, #0x10
	asr		r3, r0, #0x10
	ldr		r0, _0806cbe4
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	lsl		r5, r4, #0x18
	mov		r2, #0x0
	add		r0, r5, #0x0
	cmp		r5, #0x0
	blt		_0806cb38
	lsr		r2, r0, #0x18
_0806cb38:
	add		r0, r3, #0x0
	bl		sub_08063f1c
	add		r7, r0, #0x0
	cmp		r7, #0x0
	beq		_0806cc08
	ldr		r4, _0806cbe8
	add		r4, r8
	ldrb	r0, [r4, #0x0]
	lsr		r1, r5, #0x18
	add		r2, r6, #0x0
	bl		sub_08059294
	ldr		r2, _0806cbec
	mov		r0, #0xb4
	lsl		r0, r0, #0x8
	add		r2, r2, r0
	ldr		r0, [r4, #0x0]
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [r2, #0x0]
	mov		r0, r9
	bl		clearMgbUnkString5
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cbf0
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cbf4
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _0806cbf8
	bl		sub_080602d4
	ldr		r0, _0806cbfc
	add		r0, r8
	mov		r2, #0x7
	str		r2, [r0, #0x0]
	ldr		r0, _0806cc00
	ldr		r1, _0806cc04
	str		r0, [r1, #0x0]
	ldrb	r0, [r1, #0x8]
	add		r0, #0x1
	and		r0, r2
	strb	r0, [r1, #0x8]
	b		_0806cc6e

.incbin "base.gba", 0x6CBDA, 0x2

_0806cbdc:	.4byte 0x0203EBE0
_0806cbe0:	.4byte 0x0000FFFF
_0806cbe4:	.4byte 0x0000698D
_0806cbe8:	.4byte 0x00006A3C
_0806cbec:	.4byte 0x02033780
_0806cbf0:	.4byte 0x081116b0
_0806cbf4:	.4byte 0x081116f8
_0806cbf8:	.4byte 0x08069C05
_0806cbfc:	.4byte 0x00006A38
_0806cc00:	.4byte 0x08068B81
_0806cc04:	.4byte RunGameLogic_CallBack

_0806cc08:
	mov		r0, r9
	bl		clearMgbUnkString5
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cc80
	str		r7, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cc84
	str		r7, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _0806cc88
	ldr		r2, _0806cc8c
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_0806cc6e:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6CC7E, 0x2

_0806cc80:	.4byte 0x081116b0
_0806cc84:	.4byte 0x081116d0
_0806cc88:	.4byte 0x08069C05
_0806cc8c:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806cae4

	thumb_func_start sub_0806cc90
sub_0806cc90:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r10, r0
	mov		r8, r1
	ldr		r0, _0806cdb0
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	mov		r7, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdb4
	str		r7, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	mov		r5, #0x18
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdb8
	str		r7, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdbc
	str		r7, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdc0
	str		r7, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	bl		sub_08013e9c
	ldr		r4, _0806cdc4
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_0806cd38
	ldrh		r1, [r4, #0xA]
	neg		r0, r1
	orr		r0, r1
	lsr		r7, r0, #0x1f
_0806cd38:
	mov		r0, r10
	cmp		r0, #0x0
	beq		_0806cdd8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdc8
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x3
	bl		sub_08013e9c
	cmp		r7, #0x0
	bne		_0806cd64
	b		_0806ceec
_0806cd64:
	ldr		r0, _0806cdcc
	add		r0, r9
	ldr		r2, [r0, #0x0]
	add		r2, #0x14
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r0, #0xc
	mov		r1, #0x0
	bl		sub_08058fdc
	ldr		r1, _0806cdd0
	add		r1, r9
	ldrb	r0, [r1, #0x1a]
	lsl		r0, r0, #0x8
	ldrb	r4, [r1, #0x1b]
	orr		r4, r0
	cmp		r4, #0x0
	bne		_0806cd8a
	b		_0806ceec
_0806cd8a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cdd4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x5
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0xc
	b		_0806cea6

.incbin "base.gba", 0x6CDAE, 0x2

_0806cdb0:	.4byte 0x0203EBE0
_0806cdb4:	.4byte 0x08111718
_0806cdb8:	.4byte 0x08111740
_0806cdbc:	.4byte 0x08111770
_0806cdc0:	.4byte 0x0811179c
_0806cdc4:	.4byte 0x02029400
_0806cdc8:	.4byte 0x081117c4
_0806cdcc:	.4byte 0x00005F28
_0806cdd0:	.4byte 0x00004E4C
_0806cdd4:	.4byte 0x081117e4

_0806cdd8:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0806ce24
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806ce1c
	mov		r0, r10
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x3
	bl		sub_08013e9c
	ldr		r0, _0806ce20
	ldrh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0x3
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	add		r0, r4, #0x0
	mov		r3, #0xf
	bl		sub_0800c674
	b		_0806ce62

.incbin "base.gba", 0x6CE1A, 0x2

_0806ce1c:	.4byte 0x08111804
_0806ce20:	.4byte 0x0203EBE8

_0806ce24:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cebc
	mov		r0, r8
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cec0
	mov		r0, r8
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x3
	bl		sub_08013e9c
_0806ce62:
	cmp		r7, #0x0
	beq		_0806cecc
	mov		r0, #0xc
	mov		r1, #0x0
	mov		r2, #0x14
	bl		sub_08058fdc
	ldr		r1, _0806cec4
	add		r1, r9
	ldrb	r0, [r1, #0x1a]
	lsl		r0, r0, #0x8
	ldrb	r4, [r1, #0x1b]
	orr		r4, r0
	cmp		r4, #0x0
	beq		_0806ceec
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cec8
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x5
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0xe
_0806cea6:
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	add		r0, r4, #0x0
	mov		r3, #0xf
	bl		sub_0800c674
	b		_0806ceec

_0806cebc:	.4byte 0x08111834
_0806cec0:	.4byte 0x08111858
_0806cec4:	.4byte 0x00004E4C
_0806cec8:	.4byte 0x08111864

_0806cecc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806cf08
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x5
	bl		sub_08013e9c
_0806ceec:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0806cf08:	.4byte 0x08111890
	thumb_func_end sub_0806cc90

	thumb_func_start sub_0806cf0c
sub_0806cf0c:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0806cf64
	ldr		r6, [r0, #0x0]
	bl		_OnSelectMGBMenu
	bl		_PrepareMGBMenu
	mov		r0, #0x1
	mov		r1, #0x1
	bl		sub_0806cc90
	ldr		r0, _0806cf68
	ldr		r4, _0806cf6c
	str		r0, [r4, #0x0]
	ldrb	r1, [r4, #0x8]
	add		r1, #0x1
	mov		r5, #0x7
	and		r1, r5
	strb	r1, [r4, #0x8]
	bl		sub_0807d7d0
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _0806cf70
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	and		r0, r5
	strb	r0, [r4, #0x8]
	add		r1, r6, #0x0
	add		r1, #0x49
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	sub		r1, #0xe
	strb	r0, [r1, #0x0]
	sub		r1, #0x2
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6CF62, 0x2

_0806cf64:	.4byte 0x0203EBE0
_0806cf68:	.4byte _LoadMGBBackGround
_0806cf6c:	.4byte RunGameLogic_CallBack
_0806cf70:	.4byte 0x08069C05
	thumb_func_end sub_0806cf0c

	thumb_func_start sub_0806cf74
sub_0806cf74:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0806cfcc
	ldr		r6, [r0, #0x0]
	bl		_OnSelectMGBMenu
	bl		_PrepareMGBMenu
	mov		r0, #0x0
	mov		r1, #0x1
	bl		sub_0806cc90
	ldr		r0, _0806cfd0
	ldr		r4, _0806cfd4
	str		r0, [r4, #0x0]
	ldrb	r1, [r4, #0x8]
	add		r1, #0x1
	mov		r5, #0x7
	and		r1, r5
	strb	r1, [r4, #0x8]
	bl		sub_0807d7d0
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _0806cfd8
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	and		r0, r5
	strb	r0, [r4, #0x8]
	add		r1, r6, #0x0
	add		r1, #0x49
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	sub		r1, #0xe
	strb	r0, [r1, #0x0]
	sub		r1, #0x2
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6CFCA, 0x2

_0806cfcc:	.4byte 0x0203EBE0
_0806cfd0:	.4byte 0x0805A89D
_0806cfd4:	.4byte RunGameLogic_CallBack
_0806cfd8:	.4byte 0x08069C05
	thumb_func_end sub_0806cf74

	thumb_func_start sub_0806cfdc
sub_0806cfdc:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0806d034
	ldr		r6, [r0, #0x0]
	bl		_OnSelectMGBMenu
	bl		_PrepareMGBMenu
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0806cc90
	ldr		r0, _0806d038
	ldr		r4, _0806d03c
	str		r0, [r4, #0x0]
	ldrb	r1, [r4, #0x8]
	add		r1, #0x1
	mov		r5, #0x7
	and		r1, r5
	strb	r1, [r4, #0x8]
	bl		sub_0807d7d0
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _0806d040
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	and		r0, r5
	strb	r0, [r4, #0x8]
	add		r1, r6, #0x0
	add		r1, #0x49
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	sub		r1, #0xe
	strb	r0, [r1, #0x0]
	sub		r1, #0x2
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r0, #0x1
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6D032, 0x2

_0806d034:	.4byte 0x0203EBE0
_0806d038:	.4byte 0x0805A89D
_0806d03c:	.4byte RunGameLogic_CallBack
_0806d040:	.4byte 0x08069C05
	thumb_func_end sub_0806cfdc

	thumb_func_start sub_0806d044
sub_0806d044:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	bl		_OnSelectMGBMenu
	bl		_PrepareMGBMenu
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806d148
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
	ldr		r2, _0806d14c
	str		r6, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806d150
	str		r6, [sp, #0x0]
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
	ldr		r2, _0806d154
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
	ldr		r2, _0806d158
	str		r6, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, #0xa
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x3
	mov		r1, #0xc
	mov		r2, #0x1a
	mov		r3, #0x11
	bl		sub_080600b4
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0806d15c
	ldr		r4, _0806d160
	str		r0, [r4, #0x0]
	ldrb	r1, [r4, #0x8]
	add		r1, #0x1
	mov		r5, #0x7
	and		r1, r5
	strb	r1, [r4, #0x8]
	bl		sub_0807d7d0
	ldr		r0, _0806d164
	ldr		r1, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x49
	mov		r0, #0x1
	strb	r0, [r2, #0x0]
	sub		r2, #0xe
	strb	r0, [r2, #0x0]
	add		r1, #0x39
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	ldr		r0, _0806d168
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	and		r0, r5
	strb	r0, [r4, #0x8]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0806d148:	.4byte 0x08110c38
_0806d14c:	.4byte 0x08110c4c
_0806d150:	.4byte 0x08110c60
_0806d154:	.4byte 0x08110c68
_0806d158:	.4byte 0x081118b4
_0806d15c:	.4byte 0x0805A89D
_0806d160:	.4byte RunGameLogic_CallBack
_0806d164:	.4byte 0x0203EBE0
_0806d168:	.4byte 0x08069C05
	thumb_func_end sub_0806d044

	thumb_func_start sub_0806d16c
sub_0806d16c:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	add		r3, r0, #0x0
	add		r3, #0x10
	lsl		r2, r2, #0xc
	orr		r3, r2
	strh	r3, [r1, #0x0]
	add		r1, #0x40
	add		r0, #0x30
	orr		r0, r2
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x6D184, 0xB0
	ldr		r0, _0806d254
	ldr		r2, [r0, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x13
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r1, #0x50
	ldrh	r0, [r2, #0x1a]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x1c]
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	ldrh	r0, [r2, #0x1e]
	strh	r0, [r1, #0x0]
	bx		lr

_0806d254:	.4byte 0x0203EBE0
	thumb_func_end sub_0806d16c

	thumb_func_start sub_0806d258
sub_0806d258:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r4, r2, #0x0
	mov		r8, r3
	ldr		r3, [sp, #0x0+0x24]
	cmp		r4, #0x1
	beq		_0806d30c
	cmp		r4, #0x1
	bgt		_0806d278
	cmp		r4, #0x0
	beq		_0806d27e
	b		_0806d362
_0806d278:
	cmp		r4, #0x2
	beq		_0806d348
	b		_0806d362
_0806d27e:
	ldr		r0, [r5, #0x34]
	mov		r1, #0x2f
	and		r0, r1
	ldr		r6, _0806d2f8
	cmp		r0, #0xf
	bgt		_0806d28c
	ldr		r6, _0806d2fc
_0806d28c:
	add		r0, r5, #0x0
	add		r0, #0x43
	ldrb	r2, [r0, #0x0]
	lsl		r2, r2, #0x4
	add		r2, r2, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r3
	ldrh	r1, [r0, #0x2]
	lsl		r1, r1, #0x10
	ldrh	r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [sp, #0x8]
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r0, r6, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r0, _0806d300
	lsl		r1, r7, #0x3
	ldr		r2, _0806d304
	add		r1, r1, r2
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	mov		r7, #0x0
	add		r5, sp, #0x8
	mov		r1, r8
	lsl		r0, r1, #0x3
	add		r4, r0, #0x4
	mov		r6, #0x5
_0806d2d6:
	strh	r4, [r5, #0x0]
	mov		r0, #0x1d
	strh		r0, [r5, #0x2]
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _0806d308
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r4, #0x8
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0806d2d6
	b		_0806d362

.incbin "base.gba", 0x6D2F6, 0x2

_0806d2f8:	.4byte 0x080e4978
_0806d2fc:	.4byte 0x080e495c
_0806d300:	.4byte 0x080e4804
_0806d304:	.4byte 0x08112058
_0806d308:	.4byte 0x080e4820

_0806d30c:
	ldr		r0, _0806d340
	add		r1, r5, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0806d31e
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_0806d31e:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0806d362
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _0806d344
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0806d362

_0806d340:	.4byte 0x00006B68
_0806d344:	.4byte 0x080e478c

_0806d348:
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _0806d374
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0806d362:
	bl		sub_08064b28
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6D372, 0x2

_0806d374:	.4byte 0x080e478c
	thumb_func_end sub_0806d258

	thumb_func_start sub_0806d378
sub_0806d378:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	ldr		r4, _0806d478
	ldr		r6, [r4, #0x0]
	ldr		r0, _0806d47c
	mov		r10, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806d480
	mov		r1, #0x0
	mov		r9, r1
	str		r1, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	mov		r8, r0
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	bl		sub_08013e9c
	ldr		r0, [r4, #0x0]
	add		r0, #0x43
	ldrb	r4, [r0, #0x0]
	mov		r5, #0xf
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	lsl		r4, r4, #0x4
	mov		r0, r10
	add		r0, #0xc
	add		r4, r4, r0
	ldr		r2, [r4, #0x0]
	mov		r1, r9
	str		r1, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x2
	bl		sub_08013e9c
	ldr		r4, _0806d484
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x12
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	add		r6, #0x43
	ldrb	r0, [r6, #0x0]
	mov		r1, #0x12
	bl		sub_0807ddf0
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	lsl		r0, r5, #0x3
	add		r0, r0, r5
	lsl		r5, r0, #0x1
	mov		r7, #0x0
	lsl		r0, r0, #0x5
	mov		r1, r10
	add		r4, r0, r1
_0806d416:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldrh	r1, [r4, #0x0]
	add		r0, r1, #0x0
	sub		r0, #0x18
	cmp		r0, #0x0
	bge		_0806d42e
	add		r0, #0x7
_0806d42e:
	asr		r6, r0, #0x3
	ldrh	r0, [r4, #0x2]
	add		r1, r0, #0x0
	sub		r1, #0x8
	cmp		r1, #0x0
	bge		_0806d43c
	sub		r1, r0, #0x1
_0806d43c:
	asr		r1, r1, #0x3
	ldr		r2, [r4, #0xc]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	bl		sub_08013e9c
	add		r4, #0x10
	add		r5, #0x1
	cmp		r5, #0x2e
	bgt		_0806d460
	add		r7, #0x1
	cmp		r7, #0x11
	ble		_0806d416
_0806d460:
	mov		r0, #0x1
	bl		sub_080281fc
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6D476, 0x2

_0806d478:	.4byte 0x0203EBE0
_0806d47c:	.4byte 0x081118c0
_0806d480:	.4byte 0x08112070
_0806d484:	.4byte 0x08095b7c
	thumb_func_end sub_0806d378

	thumb_func_start sub_0806d488
sub_0806d488:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r9, r0
	mov		r10, r1
	add		r5, r3, #0x0
	mov		r0, #0x0
	mov		r8, r0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806d558
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		r0, r5, #0x0
	mov		r1, #0x12
	bl		sub_0807d80c
	add		r7, r0, #0x0
	ldr		r0, _0806d55c
	add		r0, r9
	mov		r1, r8
	str		r1, [r0, #0x0]
	mov		r0, r9
	add		r0, #0x43
	strb	r5, [r0, #0x0]
	ldr		r0, _0806d560
	ldr		r0, [r0, #0x0]
	add		r0, #0x43
	ldrb	r4, [r0, #0x0]
	mov		r5, #0xf
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r0, _0806d564
	lsl		r4, r4, #0x4
	add		r0, #0xc
	add		r4, r4, r0
	ldr		r2, [r4, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x2
	bl		sub_08013e9c
	bl		sub_0806d378
	mov		r0, #0x1
	bl		sub_080281fc
_0806d520:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r1, r9
	ldr		r0, [r1, #0x34]
	add		r0, #0x1
	str		r0, [r1, #0x34]
	mov		r0, r8
	cmp		r0, #0x0
	bne		_0806d5fc
	mov		r4, r9
	add		r4, #0x43
	ldr		r6, _0806d564
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x40
	beq		_0806d584
	cmp		r5, #0x40
	bgt		_0806d568
	cmp		r5, #0x10
	beq		_0806d5a2
	cmp		r5, #0x20
	beq		_0806d598
	b		_0806d5f4

.incbin "base.gba", 0x6D556, 0x2

_0806d558:	.4byte 0x08095bc8
_0806d55c:	.4byte 0x00006B68
_0806d560:	.4byte 0x0203EBE0
_0806d564:	.4byte 0x081118c0

_0806d568:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r5, r0
	beq		_0806d5d6
	cmp		r5, r0
	bgt		_0806d57a
	cmp		r5, #0x80
	beq		_0806d58e
	b		_0806d5f4
_0806d57a:
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r5, r0
	beq		_0806d5b8
	b		_0806d5f4
_0806d584:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x4]
	b		_0806d5aa
_0806d58e:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x5]
	b		_0806d5aa
_0806d598:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x6]
	b		_0806d5aa
_0806d5a2:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x7]
_0806d5aa:
	cmp		r0, #0xff
	beq		_0806d5f4
	strb	r0, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
	b		_0806d5f4
_0806d5b8:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x8]
	cmp		r0, #0xff
	beq		_0806d5f4
	strb	r0, [r4, #0x0]
	mov		r0, #0xbe
	bl		sub_0807073c
	mov		r0, #0x2
	cmp		r7, #0x0
	beq		_0806d5f2
	sub		r0, r7, #0x1
	b		_0806d5f2
_0806d5d6:
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x9]
	cmp		r0, #0xff
	beq		_0806d5f4
	strb	r0, [r4, #0x0]
	mov		r0, #0xbe
	bl		sub_0807073c
	mov		r0, #0x0
	cmp		r7, #0x2
	beq		_0806d5f2
	add		r0, r7, #0x1
_0806d5f2:
	add		r7, r0, #0x0
_0806d5f4:
	cmp		r5, #0x0
	beq		_0806d5fc
	bl		sub_0806d378
_0806d5fc:
	ldr		r0, _0806d654
	str		r0, [sp, #0x0]
	mov		r0, r9
	add		r1, r7, #0x0
	mov		r2, r8
	mov		r3, r10
	bl		sub_0806d258
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806d638
	mov		r1, r8
	cmp		r1, #0x0
	bne		_0806d622
	mov		r0, #0x8e
	bl		sub_0807073c
_0806d622:
	mov		r0, r8
	cmp		r0, #0x1
	bne		_0806d62e
	mov		r0, #0x8f
	bl		sub_0807073c
_0806d62e:
	mov		r1, r8
	cmp		r1, #0x1
	bgt		_0806d638
	mov		r0, #0x1
	add		r8, r0
_0806d638:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806d662
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r1, r8
	cmp		r1, #0x0
	bne		_0806d658
	mov		r0, #0x0
	b		_0806d66c

.incbin "base.gba", 0x6D652, 0x2

_0806d654:	.4byte 0x081118c0

_0806d658:
	mov		r0, r8
	cmp		r0, #0x1
	bne		_0806d662
	mov		r1, #0x0
	mov		r8, r1
_0806d662:
	mov		r0, r8
	cmp		r0, #0x1
	bgt		_0806d66a
	b		_0806d520
_0806d66a:
	mov		r0, #0x1
_0806d66c:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806d488

	thumb_func_start sub_0806d67c
sub_0806d67c:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	ldr		r5, _0806d6e8
	ldr		r0, [r5, #0x0]
	bl		sub_08060bf4
	add		r1, r0, #0x0
	add		r1, #0x4a
	ldrb	r2, [r1, #0x0]
	sub		r2, #0x10
	lsl		r1, r2, #0x2
	add		r1, r1, r2
	lsl		r1, r1, #0x1
	add		r0, #0x4b
	sub		r1, #0x10
	ldrb	r0, [r0, #0x0]
	add		r1, r1, r0
	ldr		r0, _0806d6ec
	add		r1, r1, r0
	ldrb	r4, [r1, #0x0]
	ldr		r5, [r5, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r6, r0, #0x0
	ldr		r2, _0806d6f0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xc
	add		r3, r4, #0x0
	bl		sub_0806d488
	cmp		r0, #0x0
	beq		_0806d6ce
	add		r0, r5, #0x0
	add		r0, #0x43
	ldrb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x2d
	strb	r1, [r0, #0x0]
_0806d6ce:
	ldr		r0, _0806d6f4
	ldr		r2, _0806d6f8
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_0806d6e8:	.4byte 0x0203EBE0
_0806d6ec:	.4byte 0x081124b4
_0806d6f0:	.4byte 0x0806D67D
_0806d6f4:	.4byte sub_0805be94
_0806d6f8:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806d67c

	thumb_func_start sub_0806d6fc
sub_0806d6fc:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	ldr		r0, _0806d728
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r6, r0, #0x0
	ldr		r2, _0806d72c
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xc
	add		r3, r4, #0x0
	bl		sub_0806d488
	cmp		r0, #0x0
	bne		_0806d730
	mov		r0, #0x0
	b		_0806d73e

.incbin "base.gba", 0x6D726, 0x2

_0806d728:	.4byte 0x0203EBE0
_0806d72c:	.4byte sub_0806d67c

_0806d730:
	add		r0, r5, #0x0
	add		r0, #0x43
	ldrb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x2d
	strb	r1, [r0, #0x0]
	mov		r0, #0x1
_0806d73e:
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6D746, 0x2
	thumb_func_end sub_0806d6fc

	thumb_func_start sub_0806d748
sub_0806d748:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	mov		r8, r2
	add		r5, r3, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r0, _0806d78c
	lsl		r4, r4, #0x4
	add		r0, #0xc
	add		r4, r4, r0
	ldr		r2, [r4, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, r8
	bl		sub_08013e9c
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0806d78c:	.4byte 0x081118c0
	thumb_func_end sub_0806d748

	thumb_func_start sub_0806d790
sub_0806d790:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _0806d7d0
	ldr		r0, [r0, #0x0]
	add		r0, #0x43
	ldrb	r4, [r0, #0x0]
	mov		r5, #0xf
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r0, _0806d7d4
	lsl		r4, r4, #0x4
	add		r0, #0xc
	add		r4, r4, r0
	ldr		r2, [r4, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x2
	bl		sub_08013e9c
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6D7CE, 0x2

_0806d7d0:	.4byte 0x0203EBE0
_0806d7d4:	.4byte 0x081118c0
	thumb_func_end sub_0806d790

	thumb_func_start sub_0806d7d8
sub_0806d7d8:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d800
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d81a
_0806d800:
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d81a:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d840
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0xc
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d85a
_0806d840:
	mov		r0, #0x0
	mov		r1, #0xc
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xc
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d85a:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d880
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d89a
_0806d880:
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xd
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d89a:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d8c0
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d8da
_0806d8c0:
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d8da:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d900
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0x10
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d91a
_0806d900:
	mov		r0, #0x0
	mov		r1, #0x10
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x10
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d91a:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d940
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0x11
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d95a
_0806d940:
	mov		r0, #0x0
	mov		r1, #0x11
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x11
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d95a:
	add		r5, #0x1
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806d980
	add		r4, r1, #0x0
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806d99a
_0806d980:
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r4, #0x0
	strh	r4, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x6
	bl		sub_080281b0
	strh	r4, [r0, #0x0]
_0806d99a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0806d7d8

	thumb_func_start sub_0806d9a0
sub_0806d9a0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r0, [sp, #0x0+0x28]
	mov		r9, r0
	ldr		r0, [sp, #0x4+0x28]
	ldr		r1, [sp, #0x8+0x28]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	cmp		r2, #0x1
	bne		_0806d9c4
	b		_0806db38
_0806d9c4:
	cmp		r2, #0x1
	bgt		_0806d9ce
	cmp		r2, #0x0
	beq		_0806d9d6
	b		_0806db8e
_0806d9ce:
	cmp		r2, #0x2
	bne		_0806d9d4
	b		_0806db74
_0806d9d4:
	b		_0806db8e
_0806d9d6:
	lsl		r1, r0, #0x18
	asr		r1, r1, #0x18
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldrh	r1, [r0, #0x2]
	lsl		r1, r1, #0x10
	ldrh	r0, [r0, #0x0]
	orr		r0, r1
	str		r0, [sp, #0x8]
	cmp		r5, #0x0
	bne		_0806da08
	ldr		r0, [r6, #0x34]
	mov		r1, #0x2f
	and		r0, r1
	ldr		r1, _0806da00
	cmp		r0, #0xf
	bgt		_0806da16
	ldr		r1, _0806da04
	b		_0806da16

_0806da00:	.4byte 0x080e47b0
_0806da04:	.4byte 0x080e4794

_0806da08:
	ldr		r0, [r6, #0x34]
	mov		r1, #0x2f
	and		r0, r1
	ldr		r1, _0806da38
	cmp		r0, #0xf
	bgt		_0806da16
	ldr		r1, _0806da3c
_0806da16:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r1, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	cmp		r4, #0x1
	beq		_0806da94
	cmp		r4, #0x1
	bgt		_0806da40
	cmp		r4, #0x0
	beq		_0806da46
	b		_0806db8e

.incbin "base.gba", 0x6DA36, 0x2

_0806da38:	.4byte 0x080e47e8
_0806da3c:	.4byte 0x080e47cc

_0806da40:
	cmp		r4, #0x2
	beq		_0806dadc
	b		_0806db8e
_0806da46:
	mov		r4, #0x0
	cmp		r4, r9
	blt		_0806da4e
	b		_0806db8e
_0806da4e:
	mov		r7, #0x0
	add		r5, sp, #0x8
_0806da52:
	add		r0, r6, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, r4
	bne		_0806da66
	ldr		r0, [r6, #0x34]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0806da88
_0806da66:
	mov		r1, #0x64
	cmp		r4, #0x2
	bgt		_0806da6e
	mov		r1, #0x5c
_0806da6e:
	lsl		r0, r4, #0x3
	add		r0, r0, r1
	strh	r0, [r5, #0x0]
	mov		r0, #0x35
	strh		r0, [r5, #0x2]
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _0806da90
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0806da88:
	add		r4, #0x1
	cmp		r4, r9
	blt		_0806da52
	b		_0806db8e

_0806da90:	.4byte 0x080e4820

_0806da94:
	mov		r4, #0x0
	cmp		r4, r9
	bge		_0806db8e
	mov		r8, r4
	add		r5, sp, #0x8
	mov		r7, #0x4c
_0806daa0:
	add		r0, r6, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, r4
	bne		_0806dab4
	ldr		r0, [r6, #0x34]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0806dacc
_0806dab4:
	strh	r7, [r5, #0x0]
	mov		r0, #0x35
	strh		r0, [r5, #0x2]
	mov		r0, r8
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _0806dad8
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0806dacc:
	add		r7, #0x8
	add		r4, #0x1
	cmp		r4, r9
	blt		_0806daa0
	b		_0806db8e

.incbin "base.gba", 0x6DAD6, 0x2

_0806dad8:	.4byte 0x080e4820

_0806dadc:
	mov		r4, #0x0
	cmp		r4, r9
	bge		_0806db8e
	add		r5, sp, #0x8
_0806dae4:
	add		r0, r6, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, r4
	bne		_0806daf8
	ldr		r0, [r6, #0x34]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0806db2a
_0806daf8:
	mov		r0, #0xf
	and		r0, r4
	lsl		r1, r0, #0x3
	cmp		r0, #0x7
	bgt		_0806db08
	add		r0, r1, #0x0
	add		r0, #0x34
	b		_0806db0c
_0806db08:
	add		r0, r1, #0x0
	add		r0, #0x44
_0806db0c:
	mov		r1, #0x0
	strh	r0, [r5, #0x0]
	mov		r0, #0x3d
	cmp		r4, #0xf
	bgt		_0806db18
	mov		r0, #0x2d
_0806db18:
	strh		r0, [r5, #0x2]
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	ldr		r0, _0806db34
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0806db2a:
	add		r4, #0x1
	cmp		r4, r9
	blt		_0806dae4
	b		_0806db8e

.incbin "base.gba", 0x6DB32, 0x2

_0806db34:	.4byte 0x080e4820

_0806db38:
	ldr		r0, _0806db6c
	add		r1, r6, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0806db4a
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_0806db4a:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0806db8e
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _0806db70
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	b		_0806db8e

_0806db6c:	.4byte 0x00006B68
_0806db70:	.4byte 0x080e478c

_0806db74:
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _0806dba0
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_0806db8e:
	bl		sub_08064b28
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0806dba0:	.4byte 0x080e478c
	thumb_func_end sub_0806d9a0

	thumb_func_start sub_0806dba4
sub_0806dba4:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	bl		sub_08026fa0
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r1, r0, #0x0
	cmp		r0, #0x20
	beq		_0806dc4a
	cmp		r0, #0x20
	bgt		_0806dbc4
	cmp		r0, #0x10
	beq		_0806dc6e
	b		_0806dc90
_0806dbc4:
	cmp		r1, #0x40
	beq		_0806dbce
	cmp		r1, #0x80
	beq		_0806dc0c
	b		_0806dc90
_0806dbce:
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	mov		r1, #0x0
	ldrsb	r1, [r6, r1]
	ldrb	r0, [r0, #0x8]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r1, r0
	beq		_0806dbee
	mov		r0, #0x8d
	bl		sub_0807073c
_0806dbee:
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldrb	r0, [r0, #0x8]
	strb	r0, [r6, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	mov		r1, #0x4
	ldrsb	r1, [r0, r1]
	b		_0806dc5c
_0806dc0c:
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	mov		r1, #0x0
	ldrsb	r1, [r6, r1]
	ldrb	r0, [r0, #0x9]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r1, r0
	beq		_0806dc2c
	mov		r0, #0x8d
	bl		sub_0807073c
_0806dc2c:
	mov		r1, #0x0
	ldrsb	r1, [r4, r1]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldrb	r0, [r0, #0x9]
	strb	r0, [r6, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	mov		r1, #0x5
	ldrsb	r1, [r0, r1]
	b		_0806dc5c
_0806dc4a:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r5
	ldrb	r1, [r1, #0x6]
	lsl		r1, r1, #0x18
	asr		r1, r1, #0x18
_0806dc5c:
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806dc90
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
	b		_0806dc90
_0806dc6e:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r5
	ldrb	r1, [r1, #0x7]
	lsl		r1, r1, #0x18
	asr		r1, r1, #0x18
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0806dc90
	strb	r1, [r4, #0x0]
	mov		r0, #0x8d
	bl		sub_0807073c
_0806dc90:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6DC96, 0x2
	thumb_func_end sub_0806dba4

	thumb_func_start sub_0806dc98
sub_0806dc98:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	mov		r9, r0
	str		r1, [sp, #0x10]
	add		r5, r2, #0x0
	ldr		r0, [sp, #0x8+0x38]
	mov		r8, r0
	mov		r1, #0x0
	mov		r10, r1
	mov		r2, r9
	cmp		r2, #0x2
	bne		_0806dcba
	mov		r1, #0x1
_0806dcba:
	add		r0, sp, #0xc
	strb	r1, [r0, #0x0]
	mov		r3, sp
	add		r3, #0xd
	mov		r4, #0x3
	strb	r4, [r3, #0x0]
	mov		r2, sp
	add		r2, #0xe
	mov		r6, r10
	strb	r6, [r2, #0x0]
	ldr		r1, [sp, #0x10]
	ldr		r6, _0806dd30
	add		r0, r1, r6
	mov		r1, r10
	str		r1, [r0, #0x0]
	ldr		r0, [sp, #0x10]
	add		r0, #0x44
	strb	r1, [r0, #0x0]
	ldr		r1, [sp, #0x10]
	add		r1, #0x45
	ldr		r0, [sp, #0x0+0x38]
	strb	r0, [r1, #0x0]
	add		r6, r1, #0x0
	ldr		r0, [sp, #0x4+0x38]
	cmp		r0, #0x0
	beq		_0806dcf6
	mov		r0, #0x1
	mov		r2, sp
	strb	r0, [r2, #0xE]
	strb	r4, [r2, #0xD]
_0806dcf6:
	add		r0, r5, #0x0
	ldr		r4, [sp, #0xc+0x38]
	bl		sub_0807d7e0
	mov		r0, #0x1
	bl		sub_080281fc
_0806dd04:
	mov		r0, #0x0
	str		r0, [sp, #0x14]
	bl		sub_0802983c
	bl		_UpdateGame
	ldr		r1, [sp, #0x10]
	ldr		r0, [r1, #0x34]
	add		r0, #0x1
	str		r0, [r1, #0x34]
	mov		r2, r9
	cmp		r2, #0x2
	beq		_0806dd40
	mov		r4, sp
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	bne		_0806dd38
	ldr		r3, _0806dd34
	add		r0, sp, #0xc
	b		_0806dd5a

.incbin "base.gba", 0x6DD2E, 0x2

_0806dd30:	.4byte 0x00006B68
_0806dd34:	.4byte 0x08112098

_0806dd38:
	ldr		r3, _0806dd3c
	b		_0806dd56

_0806dd3c:	.4byte 0x08112110

_0806dd40:
	mov		r1, sp
	mov		r0, #0xe
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x0
	bne		_0806dd54
	ldr		r3, _0806dd50
	add		r0, sp, #0xc
	b		_0806dd5a

_0806dd50:	.4byte 0x08112140

_0806dd54:
	ldr		r3, _0806dd80
_0806dd56:
	mov		r0, sp
	add		r0, #0xd
_0806dd5a:
	mov		r2, r10
	cmp		r2, #0x0
	bne		_0806dd6a
	add		r1, r3, #0x0
	mov		r2, sp
	add		r2, #0xe
	bl		sub_0806dba4
_0806dd6a:
	mov		r4, r9
	cmp		r4, #0x2
	beq		_0806dd90
	mov		r1, sp
	mov		r0, #0xe
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x0
	bne		_0806dd88
	ldr		r3, _0806dd84
	add		r0, sp, #0xc
	b		_0806ddaa

_0806dd80:	.4byte 0x08112200
_0806dd84:	.4byte 0x08112098

_0806dd88:
	ldr		r3, _0806dd8c
	b		_0806dda6

_0806dd8c:	.4byte 0x08112110

_0806dd90:
	mov		r2, sp
	mov		r0, #0xe
	ldrsb	r0, [r2, r0]
	cmp		r0, #0x0
	bne		_0806dda4
	ldr		r3, _0806dda0
	add		r0, sp, #0xc
	b		_0806ddaa

_0806dda0:	.4byte 0x08112140

_0806dda4:
	ldr		r3, _0806de28
_0806dda6:
	mov		r0, sp
	add		r0, #0xd
_0806ddaa:
	mov		r4, r8
	str		r4, [sp, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	str		r0, [sp, #0x4]
	mov		r1, sp
	mov		r0, #0xe
	ldrsb	r0, [r1, r0]
	str		r0, [sp, #0x8]
	mov		r0, r9
	ldr		r1, [sp, #0x10]
	mov		r2, r10
	bl		sub_0806d9a0
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0806ddd4
	b		_0806dff2
_0806ddd4:
	mov		r2, r10
	cmp		r2, #0x0
	beq		_0806dddc
	b		_0806dfd8
_0806dddc:
	mov		r4, sp
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	bne		_0806de2c
	mov		r0, #0xbf
	bl		sub_0807073c
	add		r4, r6, #0x0
	ldrb	r0, [r6, #0x0]
	mov		r3, r8
	sub		r3, #0x1
	cmp		r0, r3
	bge		_0806de12
	add		r2, r3, #0x0
	cmp		r3, r0
	ble		_0806de12
	mov		r0, r8
	sub		r0, #0x2
	add		r1, r0, r5
_0806de04:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r1, #0x1]
	sub		r1, #0x1
	sub		r2, #0x1
	ldrb	r0, [r4, #0x0]
	cmp		r2, r0
	bgt		_0806de04
_0806de12:
	ldrb	r0, [r6, #0x0]
	add		r0, r5, r0
	add		r1, sp, #0xc
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	ldrb	r0, [r6, #0x0]
	cmp		r0, r3
	blt		_0806de86
	mov		r1, #0x1
	str		r1, [sp, #0x14]
	b		_0806dfe8

_0806de28:	.4byte 0x08112200

_0806de2c:
	mov		r2, sp
	mov		r0, #0xd
	ldrsb	r0, [r2, r0]
	cmp		r0, #0x1
	beq		_0806de60
	cmp		r0, #0x1
	bgt		_0806de40
	cmp		r0, #0x0
	beq		_0806de4a
	b		_0806dfe8
_0806de40:
	cmp		r0, #0x2
	beq		_0806de8c
	cmp		r0, #0x3
	beq		_0806def4
	b		_0806dfe8
_0806de4a:
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0806de52
	b		_0806dfd0
_0806de52:
	mov		r0, #0xc1
	bl		sub_0807073c
	ldrb	r0, [r6, #0x0]
	sub		r0, #0x1
	strb	r0, [r6, #0x0]
	b		_0806dfe8
_0806de60:
	ldrb	r1, [r6, #0x0]
	mov		r0, r8
	sub		r0, #0x1
	cmp		r1, r0
	blt		_0806de6c
	b		_0806dfd0
_0806de6c:
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r4, #0x1
	neg		r4, r4
	cmp		r0, r4
	bne		_0806de7e
	b		_0806dfd0
_0806de7e:
	mov		r0, #0xc1
	bl		sub_0807073c
	ldrb	r0, [r6, #0x0]
_0806de86:
	add		r0, #0x1
	strb	r0, [r6, #0x0]
	b		_0806dfe8
_0806de8c:
	ldrb	r2, [r6, #0x0]
	cmp		r2, r8
	bge		_0806ded8
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	bne		_0806deb4
_0806dea2:
	add		r2, #0x1
	cmp		r2, r8
	bge		_0806ded8
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r1
	beq		_0806dea2
_0806deb4:
	cmp		r2, r8
	bge		_0806ded8
	ldrb	r2, [r6, #0x0]
	mov		r3, r8
	sub		r3, #0x1
	cmp		r2, r3
	bge		_0806dece
_0806dec2:
	add		r0, r5, r2
	ldrb	r1, [r0, #0x1]
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, r3
	blt		_0806dec2
_0806dece:
	add		r0, r5, r2
	mov		r2, #0x1
	neg		r2, r2
	strb	r2, [r0, #0x0]
	b		_0806deec
_0806ded8:
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	beq		_0806dfd0
	sub		r0, #0x1
	strb	r0, [r6, #0x0]
	ldrb	r0, [r6, #0x0]
	add		r0, r5, r0
	mov		r4, #0x1
	neg		r4, r4
	strb	r4, [r0, #0x0]
_0806deec:
	mov		r0, #0xc0
	bl		sub_0807073c
	b		_0806dfe8
_0806def4:
	mov		r4, #0x1
	mov		r0, r9
	cmp		r0, #0x1
	beq		_0806df2e
	cmp		r0, #0x1
	bgt		_0806df06
	cmp		r0, #0x0
	beq		_0806df0e
	b		_0806dfc0
_0806df06:
	mov		r1, r9
	cmp		r1, #0x2
	beq		_0806df8a
	b		_0806dfc0
_0806df0e:
	mov		r2, #0x0
	cmp		r2, r8
	bge		_0806dfc0
	mov		r1, #0x1
	neg		r1, r1
_0806df18:
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r1
	bne		_0806df26
	mov		r4, #0x0
_0806df26:
	add		r2, #0x1
	cmp		r2, r8
	blt		_0806df18
	b		_0806dfc0
_0806df2e:
	mov		r4, #0x0
	mov		r2, r8
	sub		r2, #0x1
	cmp		r2, #0x0
	blt		_0806dfc0
	add		r0, r5, r2
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	add		r3, r0, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0806df5e
	add		r7, r0, #0x0
	add		r1, r3, #0x0
_0806df4c:
	sub		r1, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	blt		_0806dfc0
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	add		r3, r1, #0x0
	cmp		r0, r7
	beq		_0806df4c
_0806df5e:
	cmp		r2, #0x0
	blt		_0806dfc0
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	beq		_0806df80
_0806df6e:
	sub		r2, #0x1
	cmp		r2, #0x0
	blt		_0806df80
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r1
	bne		_0806df6e
_0806df80:
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0806dfc0
	b		_0806dfc4
_0806df8a:
	mov		r2, #0x0
	cmp		r2, r8
	bge		_0806dfa0
_0806df90:
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xf
	bls		_0806df9a
	mov		r4, #0x0
_0806df9a:
	add		r2, #0x1
	cmp		r2, r8
	blt		_0806df90
_0806dfa0:
	cmp		r4, #0x0
	beq		_0806dfd0
	mov		r4, #0x0
	mov		r2, #0x0
	cmp		r4, r8
	bge		_0806dfc0
_0806dfac:
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_0806dfba
	mov		r4, #0x1
_0806dfba:
	add		r2, #0x1
	cmp		r2, r8
	blt		_0806dfac
_0806dfc0:
	cmp		r4, #0x0
	beq		_0806dfd0
_0806dfc4:
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r1, #0x1
	add		r10, r1
	b		_0806dfe8
_0806dfd0:
	mov		r0, #0x91
	bl		sub_0807073c
	b		_0806dfe8
_0806dfd8:
	mov		r2, r10
	cmp		r2, #0x1
	bne		_0806dfe8
	mov		r0, #0x8f
	bl		sub_0807073c
	mov		r4, #0x2
	mov		r10, r4
_0806dfe8:
	add		r0, r5, #0x0
	ldr		r1, [sp, #0xc+0x38]
	bl		sub_0807d7d4
	b		_0806e0a8
_0806dff2:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806e0c2
	mov		r2, r10
	cmp		r2, #0x0
	bne		_0806e0b0
	mov		r3, #0x0
	mov		r4, sp
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x0
	bne		_0806e036
	mov		r1, #0x0
	cmp		r10, r8
	bge		_0806e02c
	mov		r2, #0x1
	neg		r2, r2
_0806e018:
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r2
	beq		_0806e026
	mov		r3, #0x1
_0806e026:
	add		r1, #0x1
	cmp		r1, r8
	blt		_0806e018
_0806e02c:
	cmp		r3, #0x0
	bne		_0806e040
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0806e040
_0806e036:
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r0, #0x0
	b		_0806e0ea
_0806e040:
	mov		r0, #0xc0
	bl		sub_0807073c
	add		r3, r6, #0x0
	ldrb	r1, [r3, #0x0]
	add		r2, r5, r1
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	mov		r4, #0x1
	neg		r4, r4
	cmp		r0, r4
	beq		_0806e072
	add		r1, #0x1
	mov		r0, r8
	add		r3, r0, r5
	cmp		r1, r8
	bge		_0806e098
	sub		r1, r0, r1
_0806e064:
	ldrb	r0, [r2, #0x1]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0806e064
	b		_0806e098
_0806e072:
	cmp		r1, #0x0
	beq		_0806e07a
	sub		r0, r1, #0x1
	strb	r0, [r3, #0x0]
_0806e07a:
	ldrb	r0, [r6, #0x0]
	add		r1, r0, #0x1
	mov		r2, r8
	add		r3, r2, r5
	cmp		r1, r8
	bge		_0806e098
	add		r2, r0, r5
	mov		r4, r8
	sub		r1, r4, r1
_0806e08c:
	ldrb	r0, [r2, #0x1]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_0806e08c
_0806e098:
	sub		r0, r3, #0x1
	mov		r1, #0x1
	neg		r1, r1
	strb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	ldr		r2, [sp, #0xc+0x38]
	bl		sub_0807d7d8
_0806e0a8:
	mov		r0, #0x1
	bl		sub_080281fc
	b		_0806e0d0
_0806e0b0:
	mov		r4, r10
	cmp		r4, #0x1
	bne		_0806e0d0
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r0, #0x0
	mov		r10, r0
	b		_0806e0d0
_0806e0c2:
	mov		r0, #0x8
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806e0d0
	mov		r1, #0x1
	str		r1, [sp, #0x14]
_0806e0d0:
	ldr		r2, [sp, #0x14]
	cmp		r2, #0x0
	beq		_0806e0e0
	mov		r0, #0x1
	mov		r4, sp
	strb	r0, [r4, #0xE]
	mov		r0, #0x3
	strb	r0, [r4, #0xD]
_0806e0e0:
	mov		r0, r10
	cmp		r0, #0x1
	bgt		_0806e0e8
	b		_0806dd04
_0806e0e8:
	mov		r0, #0x1
_0806e0ea:
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6E0FA, 0x2
	thumb_func_end sub_0806dc98

	thumb_func_start sub_0806e0fc
sub_0806e0fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r7, sp, #0x10
	mov		r10, sp
	ldr		r0, _0806e138
	ldr		r6, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08060bf4
	mov		r8, r0
	sub		sp, #0x8
	add		r5, sp, #0x10
	mov		r0, #0x0
	mov		r9, r0
	mov		r2, #0x0
	mov		r0, r8
	add		r0, #0x4a
	str		r0, [r7, #0x0]
	add		r3, r0, #0x0
_0806e12a:
	add		r0, r3, r2
	ldrb	r1, [r0, #0x0]
	cmp		r1, #0xe
	ble		_0806e13c
	sub		r1, #0x10
	b		_0806e140

.incbin "base.gba", 0x6E136, 0x2

_0806e138:	.4byte 0x0203EBE0

_0806e13c:
	mov		r1, #0x1
	neg		r1, r1
_0806e140:
	add		r0, r5, r2
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0x6
	ble		_0806e12a
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806e200
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0806e204
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	add		r0, r5, #0x0
	bl		sub_0806d7d8
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		r3, r5, #0x0
	mov		r1, #0x6
	mov		r2, #0x6
	ldrsb	r2, [r5, r2]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0806e1b6
_0806e1a4:
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_0806e1b6
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r2
	beq		_0806e1a4
_0806e1b6:
	add		r1, #0x1
	cmp		r1, #0x6
	ble		_0806e1c2
	mov		r1, #0x6
	mov		r0, #0x1
	mov		r9, r0
_0806e1c2:
	ldr		r3, _0806e208
	str		r1, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, #0x7
	str		r0, [sp, #0x8]
	ldr		r0, _0806e20c
	str		r0, [sp, #0xC]
	mov		r0, #0x0
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	bl		sub_0806dc98
	cmp		r0, #0x0
	beq		_0806e210
	mov		r2, #0x0
	mov		r4, r8
	add		r4, #0x51
	ldr		r3, [r7, #0x0]
_0806e1e8:
	add		r1, r3, r2
	add		r0, r5, r2
	ldrb	r0, [r0, #0x0]
	add		r0, #0x10
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	cmp		r2, #0x6
	ble		_0806e1e8
	mov		r0, #0x50
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	b		_0806e212

_0806e200:	.4byte 0x08095d28
_0806e204:	.4byte 0x08095ee4
_0806e208:	.4byte 0x0806e225
_0806e20c:	.4byte 0x0806D7D9

_0806e210:
	mov		r0, #0x0
_0806e212:
	mov		sp, r10
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	push	{ lr }
	bl		sub_0806e0fc
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806e0fc

	thumb_func_start sub_0806e230
sub_0806e230:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x24
	add		r7, sp, #0x10
	mov		r1, sp
	add		r0, r1, #0x0
	str		r0, [r7, #0x8]
	ldr		r0, _0806e26c
	ldr		r0, [r0, #0x0]
	str		r0, [r7, #0x0]
	bl		sub_08060bf4
	sub		sp, #0xc
	add		r4, sp, #0x10
	mov		r8, r4
	mov		r1, #0x0
	str		r1, [r7, #0x4]
	mov		r2, #0x0
	add		r0, #0x3e
	str		r0, [r7, #0xC]
	add		r3, r0, #0x0
_0806e260:
	add		r0, r3, r2
	ldrb	r1, [r0, #0x0]
	cmp		r1, #0xe
	ble		_0806e270
	sub		r1, #0x10
	b		_0806e274

_0806e26c:	.4byte 0x0203EBE0

_0806e270:
	mov		r1, #0x1
	neg		r1, r1
_0806e274:
	mov		r4, r8
	add		r0, r4, r2
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0xb
	ble		_0806e260
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806e30c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e310
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0xa
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x2
	bl		sub_08013e9c
	ldr		r4, _0806e314
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	mov		r5, r8
	mov		r0, #0x1
	neg		r0, r0
	mov		r10, r0
	mov		r6, #0x9
	mov		r1, #0x0
	mov		r9, r1
	mov		r4, #0xb
	str		r4, [r7, #0x10]
_0806e2ec:
	mov		r0, #0x0
	ldrsb	r0, [r5, r0]
	cmp		r0, r10
	beq		_0806e318
	add		r4, r0, #0x0
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806e334

_0806e30c:	.4byte 0x08095d28
_0806e310:	.4byte 0x08112230
_0806e314:	.4byte 0x08095ee4

_0806e318:
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r1, r9
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x6
	bl		sub_080281b0
	mov		r4, r9
	strh	r4, [r0, #0x0]
_0806e334:
	add		r5, #0x1
	add		r6, #0x1
	ldr		r0, [r7, #0x10]
	sub		r0, #0x1
	str		r0, [r7, #0x10]
	cmp		r0, #0x0
	bge		_0806e2ec
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r3, r8
	mov		r1, #0xb
	mov		r2, #0xb
	ldrsb	r2, [r3, r2]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0806e370
_0806e35e:
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_0806e370
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r2
	beq		_0806e35e
_0806e370:
	add		r1, #0x1
	cmp		r1, #0xb
	ble		_0806e378
	mov		r1, #0xb
_0806e378:
	cmp		r1, #0x0
	ble		_0806e380
	mov		r4, #0x1
	str		r4, [r7, #0x4]
_0806e380:
	ldr		r3, _0806e3b8
	str		r1, [sp, #0x0]
	ldr		r0, [r7, #0x4]
	str		r0, [sp, #0x4]
	mov		r0, #0xc
	str		r0, [sp, #0x8]
	ldr		r0, _0806e3bc
	str		r0, [sp, #0xC]
	mov		r0, #0x1
	ldr		r1, [r7, #0x0]
	mov		r2, r8
	bl		sub_0806dc98
	cmp		r0, #0x0
	beq		_0806e3c0
	mov		r2, #0x0
	ldr		r3, [r7, #0xC]
_0806e3a2:
	add		r1, r3, r2
	mov		r4, r8
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	add		r0, #0x10
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	cmp		r2, #0xb
	ble		_0806e3a2
	mov		r0, #0x1
	b		_0806e3c2

_0806e3b8:	.4byte 0x0806e3d9
_0806e3bc:	.4byte sub_0806e3e4

_0806e3c0:
	mov		r0, #0x0
_0806e3c2:
	ldr		r1, [r7, #0x8]
	mov		sp, r1
	add		sp, #0x24
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6E3D6, 0x2
	push	{ lr }
	bl		sub_0806e230
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806e230

	thumb_func_start sub_0806e3e4
sub_0806e3e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	mov		r0, #0x1
	neg		r0, r0
	mov		r9, r0
	mov		r6, #0x9
	mov		r1, #0x0
	mov		r8, r1
	mov		r7, #0xb
_0806e3fc:
	mov		r0, #0x0
	ldrsb	r0, [r5, r0]
	cmp		r0, r9
	beq		_0806e41c
	add		r4, r0, #0x0
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	b		_0806e438
_0806e41c:
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r1, r8
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x6
	bl		sub_080281b0
	mov		r1, r8
	strh	r1, [r0, #0x0]
_0806e438:
	add		r5, #0x1
	add		r6, #0x1
	sub		r7, #0x1
	cmp		r7, #0x0
	bge		_0806e3fc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6E44E, 0x2
	thumb_func_end sub_0806e3e4

	thumb_func_start sub_0806e450
sub_0806e450:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	add		r6, r0, #0x0
	ldr		r0, _0806e4fc
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r7, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806e500
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r4, _0806e504
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e508
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0806e50c
	str		r0, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x1
	str		r0, [sp, #0x8]
	str		r4, [sp, #0xC]
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x10
	mov		r3, #0x7
	bl		sub_08064ea4
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_0806e4f2
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		setMgbUnkString1
_0806e4f2:
	add		r0, r4, #0x0
	add		sp, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806e4fc:	.4byte 0x0203EBE0
_0806e500:	.4byte 0x08094a9c
_0806e504:	.4byte 0x08096048
_0806e508:	.4byte 0x08112244
_0806e50c:	.4byte sub_0806e510
	thumb_func_end sub_0806e450

	thumb_func_start sub_0806e510
sub_0806e510:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x1c
	add		r0, sp, #0xc
	bl		sub_0806e450
	cmp		r0, #0x0
	beq		_0806e5da
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e5a4
	mov		r7, #0x0
	str		r7, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r6, #0x14
	str		r6, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e5a8
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806e5b0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e5ac
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0806e5ce

.incbin "base.gba", 0x6E5A2, 0x2

_0806e5a4:	.4byte 0x0811226c
_0806e5a8:	.4byte 0x0811228c
_0806e5ac:	.4byte 0x081122b0

_0806e5b0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e5e8
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
_0806e5ce:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806e5da:
	bl		sub_08060434
	mov		r0, #0x1
	add		sp, #0x1c
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806e5e8:	.4byte 0x081122cc
	thumb_func_end sub_0806e510

	thumb_func_start sub_0806e5ec
sub_0806e5ec:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	add		r6, r0, #0x0
	ldr		r0, _0806e698
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r7, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806e69c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r4, _0806e6a0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e6a4
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _0806e6a8
	str		r0, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x1
	str		r0, [sp, #0x8]
	str		r4, [sp, #0xC]
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x80
	mov		r3, #0x4
	bl		sub_08064ea4
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_0806e68e
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		setMgbUnkString4
_0806e68e:
	add		r0, r4, #0x0
	add		sp, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806e698:	.4byte 0x0203EBE0
_0806e69c:	.4byte 0x08094a9c
_0806e6a0:	.4byte 0x08096048
_0806e6a4:	.4byte 0x081122f0
_0806e6a8:	.4byte sub_0806e6ac
	thumb_func_end sub_0806e5ec

	thumb_func_start sub_0806e6ac
sub_0806e6ac:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x8c
	add		r0, sp, #0xc
	bl		sub_0806e5ec
	cmp		r0, #0x0
	beq		_0806e776
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e740
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
	ldr		r2, _0806e744
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806e74c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e748
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_0806e76a

.incbin "base.gba", 0x6E73E, 0x2

_0806e740:	.4byte 0x0811231c
_0806e744:	.4byte 0x08112340
_0806e748:	.4byte 0x08112364

_0806e74c:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806e784
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
_0806e76a:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806e776:
	bl		sub_08060434
	mov		r0, #0x1
	add		sp, #0x8c
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806e784:	.4byte 0x08112384
	thumb_func_end sub_0806e6ac

	thumb_func_start sub_0806e788
sub_0806e788:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r5, r0, #0x0
	str		r1, [sp, #0xC]
	str		r2, [sp, #0x10]
	add		r7, r3, #0x0
	mov		r4, #0x0
	add		r6, r5, #0x0
	mov		r0, #0xf
	mov		r9, r0
_0806e7a4:
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	add		r6, #0x1
	cmp		r0, #0x0
	beq		_0806e7b0
	mov		r4, #0x1
_0806e7b0:
	mov		r1, #0x1
	neg		r1, r1
	add		r9, r1
	mov		r2, r9
	cmp		r2, #0x0
	bge		_0806e7a4
	add		r6, r5, #0x0
	cmp		r4, #0x0
	bne		_0806e7c4
	b		_0806ea54
_0806e7c4:
	mov		r0, #0x0
	mov		r9, r0
	lsl		r7, r7, #0xc
	mov		r10, r7
_0806e7cc:
	mov		r1, #0x7
	mov		r2, r9
	and		r1, r2
	lsl		r0, r1, #0x1
	ldr		r2, [sp, #0xC]
	add		r5, r2, r0
	cmp		r1, #0x3
	ble		_0806e7de
	add		r5, #0x1
_0806e7de:
	ldr		r7, [sp, #0x10]
	mov		r0, r9
	cmp		r0, #0x7
	ble		_0806e7e8
	add		r7, #0x2
_0806e7e8:
	mov		r0, #0x0
	add		r1, r5, #0x0
	add		r2, r7, #0x0
	bl		sub_080281b0
	add		r4, r0, #0x0
	ldrb	r0, [r6, #0x0]
	lsr		r2, r0, #0x4
	cmp		r2, #0xf
	bhi		_0806e872
	lsl		r0, r2, #0x2
	ldr		r1, _0806e808
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x6E806, 0x2

_0806e808:	.4byte 0x0806e80c
_0806e80c:	.4byte 0x0806e84c

.incbin "base.gba", 0x6E810, 0x3C
	thumb_func_end sub_0806e788


.incbin "base.gba", 0x6E84C, 0x26

_0806e872:

.incbin "base.gba", 0x6E872, 0x2A
_0806e89c:	.4byte 0x0806e8a0
_0806e8a0:	.4byte 0x0806e8e0

.incbin "base.gba", 0x6E8A4, 0x62

_0806e906:

.incbin "base.gba", 0x6E906, 0x32
_0806e938:	.4byte 0x0806e93c
_0806e93c:	.4byte 0x0806e97c

.incbin "base.gba", 0x6E940, 0x62

_0806e9a2:

.incbin "base.gba", 0x6E9A2, 0x2A
_0806e9cc:	.4byte 0x0806e9d0
_0806e9d0:	.4byte 0x0806ea10

.incbin "base.gba", 0x6E9D4, 0x62

_0806ea36:

.incbin "base.gba", 0x6EA36, 0x1C
_0806ea52:

.incbin "base.gba", 0x6EA52, 0x2
_0806ea54:

.incbin "base.gba", 0x6EA54, 0x1E
_0806ea72:

.incbin "base.gba", 0x6EA72, 0x16
_0806ea88:	.4byte 0x081123ac
	thumb_func_start sub_0806ea8c
sub_0806ea8c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	mov		r0, #0x0
	mov		r8, r0
_0806ea98:
	mov		r0, #0xf
	mov		r1, r8
	and		r0, r1
	add		r4, r0, #0x0
	add		r4, #0x8
	cmp		r0, #0x7
	bgt		_0806eaa8
	add		r4, r0, #0x6
_0806eaa8:
	mov		r6, #0x6
	mov		r0, r8
	cmp		r0, #0xf
	bgt		_0806eab2
	mov		r6, #0x4
_0806eab2:
	mov		r0, #0x0
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r7, r0, #0x0
	ldrb	r2, [r5, #0x0]
	cmp		r2, #0xf
	bhi		_0806eb3a
	lsl		r0, r2, #0x2
	ldr		r1, _0806ead0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x6EACE, 0x2

_0806ead0:	.4byte 0x0806ead4
_0806ead4:	.4byte 0x0806eb14

.incbin "base.gba", 0x6EAD8, 0x3C
	thumb_func_end sub_0806ea8c


.incbin "base.gba", 0x6EB14, 0x26

_0806eb3a:

.incbin "base.gba", 0x6EB3A, 0x2E
_0806eb68:	.4byte 0x0806eb6c
_0806eb6c:	.4byte 0x0806ebac

.incbin "base.gba", 0x6EB70, 0x62

_0806ebd2:

.incbin "base.gba", 0x6EBD2, 0x1E
_0806ebf0:

.incbin "base.gba", 0x6EBF0, 0x10
_0806ec00:	.4byte 0x0000F020
	thumb_func_start sub_0806ec04
sub_0806ec04:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	add		r7, sp, #0x10
	str		r0, [r7, #0x0]
	mov		r10, sp
	ldr		r0, _0806ed24
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	sub		sp, #0x20
	add		r5, sp, #0x10
	mov		r0, #0x0
	mov		r9, r0
	mov		r3, #0x0
	mov		r6, #0xf
	mov		r4, #0xf
	add		r2, r5, #0x0
_0806ec2c:
	ldr		r1, [r7, #0x0]
	add		r0, r1, r3
	ldrb	r1, [r0, #0x0]
	lsr		r0, r1, #0x4
	and		r0, r6
	strb	r0, [r2, #0x0]
	and		r1, r4
	strb	r1, [r2, #0x1]
	add		r2, #0x2
	add		r3, #0x1
	cmp		r3, #0xf
	ble		_0806ec2c
	mov		r1, #0x0
	mov		r3, #0x0
_0806ec48:
	add		r0, r5, r3
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806ec52
	mov		r1, #0x1
_0806ec52:
	add		r3, #0x1
	cmp		r3, #0x1f
	ble		_0806ec48
	cmp		r1, #0x0
	bne		_0806ec6e
	mov		r3, #0x0
	mov		r2, #0xff
_0806ec60:
	add		r1, r5, r3
	ldrb	r0, [r1, #0x0]
	orr		r0, r2
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	cmp		r3, #0x1f
	ble		_0806ec60
_0806ec6e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806ed28
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0806ed2c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	add		r0, r5, #0x0
	bl		sub_0806ea8c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		r3, r5, #0x0
	mov		r1, #0x1f
	mov		r2, #0x1f
	ldrsb	r2, [r5, r2]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0806ecda
_0806ecc8:
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_0806ecda
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r2
	beq		_0806ecc8
_0806ecda:
	add		r1, #0x1
	cmp		r1, #0x1f
	ble		_0806ece6
	mov		r1, #0x1f
	mov		r4, #0x1
	mov		r9, r4
_0806ece6:
	ldr		r3, _0806ed30
	str		r1, [sp, #0x0]
	mov		r0, r9
	str		r0, [sp, #0x4]
	mov		r0, #0x20
	str		r0, [sp, #0x8]
	ldr		r0, _0806ed34
	str		r0, [sp, #0xC]
	mov		r0, #0x2
	mov		r1, r8
	add		r2, r5, #0x0
	bl		sub_0806dc98
	cmp		r0, #0x0
	beq		_0806ed38
	mov		r3, #0x0
	add		r2, r5, #0x0
_0806ed08:
	ldr		r4, [r7, #0x0]
	add		r1, r4, r3
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x4
	ldrb	r4, [r2, #0x1]
	add		r0, r0, r4
	strb	r0, [r1, #0x0]
	add		r2, #0x2
	add		r3, #0x1
	cmp		r3, #0xf
	ble		_0806ed08
	mov		r0, #0x1
	b		_0806ed3a

.incbin "base.gba", 0x6ED22, 0x2

_0806ed24:	.4byte 0x0203EBE0
_0806ed28:	.4byte 0x080961a8
_0806ed2c:	.4byte 0x08096378
_0806ed30:	.4byte sub_0806ed4c
_0806ed34:	.4byte 0x0806EA8D

_0806ed38:
	mov		r0, #0x0
_0806ed3a:
	mov		sp, r10
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806ec04

	thumb_func_start sub_0806ed4c
sub_0806ed4c:
	push	{ lr }
	ldr		r0, _0806ed7c
	ldr		r0, [r0, #0x0]
	ldr		r1, _0806ed80
	add		r0, r0, r1
	bl		sub_0806ec04
	cmp		r0, #0x0
	beq		_0806ed64
	mov		r0, #0x91
	bl		sub_0807073c
_0806ed64:
	ldr		r0, _0806ed84
	ldr		r2, _0806ed88
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6ED7A, 0x2

_0806ed7c:	.4byte 0x0203EBE0
_0806ed80:	.4byte 0x00007DB4
_0806ed84:	.4byte 0x0805DF81
_0806ed88:	.4byte RunGameLogic_CallBack

.incbin "base.gba", 0x6ED8C, 0x18
_0806eda4:	.4byte 0x0806ede4

.incbin "base.gba", 0x6EDA8, 0x3C
	thumb_func_end sub_0806ed4c


.incbin "base.gba", 0x6EDE4, 0x30
	thumb_func_start sub_0806ee14
sub_0806ee14:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	mov		r8, r2
	add		r5, r3, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r0, _0806ee58
	lsl		r4, r4, #0x2
	add		r4, r4, r0
	ldr		r2, [r4, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, r8
	bl		sub_08013e9c
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6EE56, 0x2

_0806ee58:	.4byte 0x081123f4
	thumb_func_end sub_0806ee14

	thumb_func_start sub_0806ee5c
sub_0806ee5c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	str		r1, [sp, #0x10]
	mov		r10, r2
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	ldr		r0, _0806eec0
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	mov		r8, r0
	cmp		r3, #0x0
	bne		_0806ee7e
	mov		r0, #0x1
_0806ee7e:
	add		r4, r5, #0x0
	add		r4, #0x38
	strb	r0, [r4, #0x0]
	mov		r1, r8
	str		r1, [r5, #0x34]
	ldr		r2, _0806eec4
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	ldr		r1, _0806eec8
	add		r0, r5, r1
	mov		r2, r8
	strb	r2, [r0, #0x0]
	bl		sub_0802983c
	bl		_UpdateGame
	lsl		r6, r6, #0x3
	str		r6, [sp, #0x14]
	add		r0, sp, #0xc
	mov		r9, r0
	mov		r7, #0x0
_0806eea8:
	mov		r6, #0x0
	mov		r0, #0x30
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806eecc
	mov		r6, #0x8d
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x1
	sub		r0, r0, r1
	strb	r0, [r4, #0x0]
	b		_0806ef12

_0806eec0:	.4byte 0x0203EBE0
_0806eec4:	.4byte 0x00005F10
_0806eec8:	.4byte 0x00006B7C

_0806eecc:
	ldr		r1, [sp, #0x10]
	cmp		r1, #0x0
	ble		_0806eee8
	ldr		r2, _0806eee4
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bgt		_0806eee8
	mov		r6, #0x90
	mov		r0, #0x4
	mov		r8, r0
	b		_0806ef12

_0806eee4:	.4byte 0x00005F10

_0806eee8:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806eef8
	mov		r6, #0x90
	mov		r1, #0x3
	b		_0806ef10
_0806eef8:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806ef12
	mov		r6, #0x8e
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_0806ef10
	mov		r1, #0x2
_0806ef10:
	mov		r8, r1
_0806ef12:
	mov		r0, #0x60
	ldr		r1, [sp, #0x14]
	add		r1, #0x8
	lsl		r1, r1, #0x10
	ldr		r2, _0806ef58
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0x8]
	mov		r0, #0x90
	and		r0, r2
	orr		r0, r1
	str		r0, [sp, #0xC]
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _0806ef5c
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	ldr		r0, _0806ef60
	mov		r1, r9
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r1, [r5, #0x34]
	mov		r0, #0x1f
	and		r0, r1
	cmp		r0, #0x13
	bgt		_0806ef68
	ldr		r2, _0806ef64
	b		_0806ef74

_0806ef58:	.4byte 0x0000FFFF
_0806ef5c:	.4byte 0x080e46f4
_0806ef60:	.4byte 0x080e46fc
_0806ef64:	.4byte 0x080e4704

_0806ef68:
	mov		r0, #0x20
	and		r1, r0
	ldr		r2, _0806efcc
	cmp		r1, #0x0
	beq		_0806ef74
	ldr		r2, _0806efd0
_0806ef74:
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	mov		r1, r9
	cmp		r0, #0x0
	bne		_0806ef80
	add		r1, sp, #0x8
_0806ef80:
	str		r7, [sp, #0x0]
	str		r7, [sp, #0x4]
	add		r0, r2, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	cmp		r6, #0x0
	beq		_0806ef98
	add		r0, r6, #0x0
	bl		sub_0807073c
_0806ef98:
	bl		sub_0802983c
	bl		_UpdateGame
	mov		r0, r10
	cmp		r0, #0x0
	beq		_0806efaa
	bl		sub_0807d7f8
_0806efaa:
	ldr		r0, [r5, #0x34]
	add		r0, #0x1
	str		r0, [r5, #0x34]
	mov		r1, r8
	cmp		r1, #0x0
	bne		_0806efb8
	b		_0806eea8
_0806efb8:
	mov		r0, r8
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6EFCA, 0x2

_0806efcc:	.4byte 0x080e4724
_0806efd0:	.4byte 0x080e4714
	thumb_func_end sub_0806ee5c

	thumb_func_start sub_0806efd4
sub_0806efd4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	mov		r8, r1
	add		r7, r2, #0x0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r9, r0
	ldr		r0, _0806f01c
	ldr		r4, [r0, #0x0]
	mov		r6, #0x0
	str		r6, [r4, #0x34]
	ldr		r1, _0806f020
	add		r0, r4, r1
	str		r6, [r0, #0x0]
	ldr		r1, _0806f024
	add		r0, r4, r1
	strb	r6, [r0, #0x0]
	bl		sub_0802983c
	bl		_UpdateGame
_0806f004:
	mov		r5, #0x0
	mov		r0, r8
	cmp		r0, #0x0
	ble		_0806f028
	ldr		r1, _0806f020
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r8, r0
	bgt		_0806f028
	mov		r5, #0x90
	mov		r6, #0x4
	b		_0806f046

_0806f01c:	.4byte 0x0203EBE0
_0806f020:	.4byte 0x00005F10
_0806f024:	.4byte 0x00006B7C

_0806f028:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806f038
	mov		r5, #0x90
	mov		r6, #0x3
	b		_0806f046
_0806f038:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806f046
	mov		r5, #0x8e
	mov		r6, #0x1
_0806f046:
	ldr		r0, _0806f0b0
	add		r1, r4, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_0806f058
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_0806f058:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_0806f07a
	mov		r1, r9
	lsl		r0, r1, #0x13
	mov		r1, #0xd8
	orr		r1, r0
	str		r1, [sp, #0x8]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	ldr		r0, _0806f0b4
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0806f07a:
	cmp		r5, #0x0
	beq		_0806f084
	add		r0, r5, #0x0
	bl		sub_0807073c
_0806f084:
	bl		sub_0802983c
	bl		_UpdateGame
	cmp		r7, #0x0
	beq		_0806f094
	bl		sub_0807d7ec
_0806f094:
	ldr		r0, [r4, #0x34]
	add		r0, #0x1
	str		r0, [r4, #0x34]
	cmp		r6, #0x0
	beq		_0806f004
	add		r0, r6, #0x0
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6F0AE, 0x2

_0806f0b0:	.4byte 0x00006B68
_0806f0b4:	.4byte 0x080e478c
	thumb_func_end sub_0806efd4

	thumb_func_start sub_0806f0b8
sub_0806f0b8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x8
	ldr		r0, _0806f14c
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_08057370
	add		r0, #0x1c
	mov		r1, sp
	mov		r2, #0x5
	bl		sub_08057300
	add		r4, #0x10
	add		r0, r4, #0x0
	bl		sub_080648e4
	cmp		r0, #0x0
	beq		_0806f19c
	mov		r6, #0x1
	add		r0, r4, #0x0
	mov		r1, sp
	mov		r2, #0x5
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806f19e
	bl		sub_08057370
	ldr		r4, _0806f150
	ldr		r1, _0806f154
	mov		r8, r1
	ldr		r1, _0806f158
	mov		r9, r1
	add		r5, r0, #0x0
	add		r5, #0x1c
	mov		r7, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f15c
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f160
	ldr		r0, _0806f15c
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f17a

.incbin "base.gba", 0x6F14A, 0x2

_0806f14c:	.4byte 0x0203EBE0
_0806f150:	.4byte 0x08113b58
_0806f154:	.4byte 0x08113bb8
_0806f158:	.4byte 0x08113c04
_0806f15c:	.4byte 0x00008003

_0806f160:
	mov		r0, #0x4
	mov		r1, #0x1
	neg		r1, r1
_0806f166:
	strb	r7, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f166
	ldr		r0, _0806f198
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f17a:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f18e
	mov		r4, #0x3
_0806f18e:
	cmp		r4, #0x3
	bne		_0806f19e
	mov		r6, #0x0
	b		_0806f19e

.incbin "base.gba", 0x6F196, 0x2

_0806f198:	.4byte 0x00008003

_0806f19c:
	mov		r6, #0x3
_0806f19e:
	add		r0, r6, #0x0
	add		sp, #0x8
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6F1AE, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	bl		sub_08057370
	mov		r10, r0
	ldr		r0, _0806f260
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_08057370
	ldr		r5, _0806f264
	add		r0, r0, r5
	add		r4, #0x1c
	add		r1, r4, #0x0
	mov		r2, #0x11
	bl		sub_08057300
	bl		sub_08057370
	add		r0, r0, r5
	mov		r1, sp
	mov		r2, #0x11
	bl		sub_08057300
	mov		r9, r4
_0806f1ee:
	mov		r0, #0x1
	str		r0, [sp, #0x14]
	mov		r0, r9
	mov		r1, #0x1
	bl		sub_080656b0
	cmp		r0, #0x0
	bne		_0806f200
	b		_0806f3e8
_0806f200:
	mov		r0, sp
	mov		r1, r9
	mov		r2, #0x11
	bl		sub_08057328
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0806f212
	b		_0806f3e4
_0806f212:
	mov		r6, #0x1
	ldr		r0, _0806f260
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x3
	ldr		r1, _0806f268
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
	add		r2, r0, #0x0
	ldr		r1, _0806f26c
	add		r4, r4, r1
	mov		r1, #0x0
	cmp		r0, #0x1
	bne		_0806f250
	mov		r1, #0x1
_0806f250:
	str		r1, [r4, #0x0]
	cmp		r0, #0x2
	beq		_0806f314
	cmp		r0, #0x2
	bgt		_0806f270
	cmp		r0, #0x1
	beq		_0806f278
	b		_0806f3ea

_0806f260:	.4byte 0x0203EBE0
_0806f264:	.4byte 0x00000AD4
_0806f268:	.4byte 0x08112e48
_0806f26c:	.4byte 0x00006B78

_0806f270:
	cmp		r2, #0x3
	bne		_0806f276
	b		_0806f3dc
_0806f276:
	b		_0806f3ea
_0806f278:
	ldr		r0, _0806f2fc
	add		r0, r10
	strb	r6, [r0, #0x0]
	bl		sub_08057370
	ldr		r1, _0806f300
	add		r0, r0, r1
	mov		r1, r9
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	beq		_0806f294
	b		_0806f3ea
_0806f294:
	bl		sub_08057370
	add		r1, r0, #0x0
	ldr		r0, _0806f300
	add		r1, r1, r0
	mov		r0, r9
	mov		r2, #0x10
	bl		sub_08057300
	bl		sub_08057370
	ldr		r7, _0806f304
	ldr		r1, _0806f308
	mov		r8, r1
	ldr		r1, _0806f300
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f30c
	ldr		r1, _0806f310
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	bne		_0806f372
	mov		r0, #0x0
	mov		r1, #0x1
	neg		r1, r1
_0806f2f0:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f2f0
	b		_0806f3ac

_0806f2fc:	.4byte 0x00000AE5
_0806f300:	.4byte 0x00000AD4
_0806f304:	.4byte 0x08113cb8
_0806f308:	.4byte 0x08113d00
_0806f30c:	.4byte 0x00008003
_0806f310:	.4byte 0x08113c58

_0806f314:
	ldr		r0, _0806f380
	add		r0, r10
	strb	r5, [r0, #0x0]
	bl		sub_08057370
	ldr		r1, _0806f384
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806f3ea
	ldr		r0, _0806f388
	bl		sub_080579d0
	bl		sub_08057370
	ldr		r7, _0806f38c
	ldr		r1, _0806f390
	mov		r8, r1
	ldr		r1, _0806f384
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f394
	ldr		r1, _0806f398
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f39c
_0806f372:
	ldr		r0, _0806f394
	add		r1, r7, #0x0
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f3b6

.incbin "base.gba", 0x6F37E, 0x2

_0806f380:	.4byte 0x00000AE5
_0806f384:	.4byte 0x00000AD4
_0806f388:	.4byte 0x08112518
_0806f38c:	.4byte 0x08113dac
_0806f390:	.4byte 0x08113df0
_0806f394:	.4byte 0x00008003
_0806f398:	.4byte 0x08113d50

_0806f39c:
	mov		r0, #0x0
	mov		r1, #0x1
	neg		r1, r1
_0806f3a2:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f3a2
_0806f3ac:
	ldr		r0, _0806f3d8
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f3b6:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f3ca
	mov		r4, #0x3
_0806f3ca:
	mov		r1, #0x3
	eor		r1, r4
	neg		r0, r1
	orr		r0, r1
	lsr		r6, r0, #0x1f
	b		_0806f3ea

.incbin "base.gba", 0x6F3D6, 0x2

_0806f3d8:	.4byte 0x00008003

_0806f3dc:
	mov		r0, #0x0
	str		r0, [sp, #0x14]
	mov		r6, #0x0
	b		_0806f3ea
_0806f3e4:
	mov		r6, #0x1
	b		_0806f3f2
_0806f3e8:
	mov		r6, #0x3
_0806f3ea:
	ldr		r1, [sp, #0x14]
	cmp		r1, #0x0
	bne		_0806f3f2
	b		_0806f1ee
_0806f3f2:
	add		r0, r6, #0x0
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f0b8

	thumb_func_start sub_0806f404
sub_0806f404:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0806f440
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r2, r0, #0x0
	add		r3, r2, #0x0
	add		r3, #0x2d
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x2e
	bls		_0806f44c
	add		r0, r2, #0x0
	add		r0, #0x4a
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x10
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r1, r2, #0x0
	add		r1, #0x4b
	sub		r0, #0x10
	ldrb	r1, [r1, #0x0]
	add		r1, r0, r1
	cmp		r1, #0x63
	ble		_0806f444
	mov		r0, #0x0
	b		_0806f44a

_0806f440:	.4byte 0x0203EBE0

_0806f444:
	ldr		r0, _0806f4cc
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
_0806f44a:
	strb	r0, [r3, #0x0]
_0806f44c:
	add		r4, r2, #0x0
	add		r4, #0x2d
	ldrb	r0, [r4, #0x0]
	bl		sub_0806d6fc
	cmp		r0, #0x0
	beq		_0806f530
	mov		r7, #0x1
	bl		sub_08057370
	ldr		r1, _0806f4d0
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r4, #0x0]
	cmp		r0, r1
	beq		_0806f532
	bl		sub_08057370
	ldr		r1, _0806f4d0
	add		r0, r0, r1
	ldrb	r1, [r4, #0x0]
	strb	r1, [r0, #0x0]
	bl		sub_08057370
	ldr		r4, _0806f4d4
	ldr		r1, _0806f4d8
	mov		r8, r1
	ldr		r1, _0806f4dc
	mov		r9, r1
	ldr		r1, _0806f4d0
	add		r5, r0, r1
	mov		r6, #0x2f
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f4e0
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f4e4
	ldr		r0, _0806f4e0
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f4fe

_0806f4cc:	.4byte 0x081124b4
_0806f4d0:	.4byte 0x00000AE6
_0806f4d4:	.4byte 0x0811404c
_0806f4d8:	.4byte 0x081140ac
_0806f4dc:	.4byte 0x081140f8
_0806f4e0:	.4byte 0x00008003

_0806f4e4:
	mov		r0, #0x0
	mov		r1, #0x1
	neg		r1, r1
_0806f4ea:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f4ea
	ldr		r0, _0806f528
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f4fe:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f512
	mov		r4, #0x3
_0806f512:
	cmp		r4, #0x3
	bne		_0806f518
	mov		r7, #0x0
_0806f518:
	ldr		r0, _0806f52c
	mov		r1, #0xb4
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	b		_0806f532

.incbin "base.gba", 0x6F526, 0x2

_0806f528:	.4byte 0x00008003
_0806f52c:	.4byte 0x02033780

_0806f530:
	mov		r7, #0x3
_0806f532:
	add		r0, r7, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f404

	thumb_func_start sub_0806f540
sub_0806f540:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0806f5d8
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_0806e230
	cmp		r0, #0x0
	beq		_0806f62c
	mov		r7, #0x1
	bl		sub_08057370
	ldr		r1, _0806f5dc
	add		r0, r0, r1
	add		r4, #0x3e
	add		r1, r4, #0x0
	mov		r2, #0xc
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806f62e
	bl		sub_08057370
	add		r1, r0, #0x0
	ldr		r0, _0806f5dc
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0xc
	bl		sub_08057300
	bl		sub_08057370
	ldr		r4, _0806f5e0
	ldr		r1, _0806f5e4
	mov		r8, r1
	ldr		r1, _0806f5e8
	mov		r9, r1
	ldr		r1, _0806f5dc
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f5ec
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f5f0
	ldr		r0, _0806f5ec
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f60a

_0806f5d8:	.4byte 0x0203EBE0
_0806f5dc:	.4byte 0x00000B8D
_0806f5e0:	.4byte 0x08113e3c
_0806f5e4:	.4byte 0x08113ea0
_0806f5e8:	.4byte 0x08113eec
_0806f5ec:	.4byte 0x00008003

_0806f5f0:
	mov		r0, #0xb
	mov		r1, #0x1
	neg		r1, r1
_0806f5f6:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f5f6
	ldr		r0, _0806f628
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f60a:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f61e
	mov		r4, #0x3
_0806f61e:
	cmp		r4, #0x3
	bne		_0806f62e
	mov		r7, #0x0
	b		_0806f62e

.incbin "base.gba", 0x6F626, 0x2

_0806f628:	.4byte 0x00008003

_0806f62c:
	mov		r7, #0x3
_0806f62e:
	add		r0, r7, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f540

	thumb_func_start sub_0806f63c
sub_0806f63c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0806f6e0
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r5, r0, #0x0
	bl		sub_0806e0fc
	cmp		r0, #0x0
	beq		_0806f734
	mov		r7, #0x1
	bl		sub_08057370
	ldr		r1, _0806f6e4
	add		r0, r0, r1
	add		r4, r5, #0x0
	add		r4, #0x4a
	add		r1, r4, #0x0
	mov		r2, #0x8
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806f736
	add		r1, r5, #0x0
	add		r1, #0x2d
	mov		r0, #0x2f
	strb	r0, [r1, #0x0]
	bl		sub_08057370
	add		r1, r0, #0x0
	ldr		r0, _0806f6e4
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_08057300
	bl		sub_08057370
	ldr		r4, _0806f6e8
	ldr		r1, _0806f6ec
	mov		r8, r1
	ldr		r1, _0806f6f0
	mov		r9, r1
	ldr		r1, _0806f6e4
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f6f4
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f6f8
	ldr		r0, _0806f6f4
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f712

.incbin "base.gba", 0x6F6DE, 0x2

_0806f6e0:	.4byte 0x0203EBE0
_0806f6e4:	.4byte 0x00000B75
_0806f6e8:	.4byte 0x08113f40
_0806f6ec:	.4byte 0x08113fa4
_0806f6f0:	.4byte 0x08113ff4
_0806f6f4:	.4byte 0x00008003

_0806f6f8:
	mov		r0, #0x7
	mov		r1, #0x1
	neg		r1, r1
_0806f6fe:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f6fe
	ldr		r0, _0806f730
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f712:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f726
	mov		r4, #0x3
_0806f726:
	cmp		r4, #0x3
	bne		_0806f736
	mov		r7, #0x0
	b		_0806f736

.incbin "base.gba", 0x6F72E, 0x2

_0806f730:	.4byte 0x00008003

_0806f734:
	mov		r7, #0x3
_0806f736:
	add		r0, r7, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f63c

	thumb_func_start sub_0806f744
sub_0806f744:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0806f7e0
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	add		r4, #0x52
	add		r0, r4, #0x0
	bl		sub_0806e5ec
	cmp		r0, #0x0
	beq		_0806f834
	mov		r7, #0x1
	bl		sub_08057370
	ldr		r1, _0806f7e4
	add		r0, r0, r1
	add		r1, r4, #0x0
	mov		r2, #0x80
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806f836
	bl		sub_08057370
	add		r1, r0, #0x0
	ldr		r0, _0806f7e4
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x80
	bl		sub_08057300
	bl		sub_08057370
	ldr		r4, _0806f7e8
	ldr		r1, _0806f7ec
	mov		r8, r1
	ldr		r1, _0806f7f0
	mov		r9, r1
	ldr		r1, _0806f7e4
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f7f4
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f7f8
	ldr		r0, _0806f7f4
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f812

.incbin "base.gba", 0x6F7DE, 0x2

_0806f7e0:	.4byte 0x0203EBE0
_0806f7e4:	.4byte 0x00000AF5
_0806f7e8:	.4byte 0x0811414c
_0806f7ec:	.4byte 0x081141ac
_0806f7f0:	.4byte 0x081141f4
_0806f7f4:	.4byte 0x00008003

_0806f7f8:
	mov		r0, #0x7f
	mov		r1, #0x1
	neg		r1, r1
_0806f7fe:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f7fe
	ldr		r0, _0806f830
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f812:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f826
	mov		r4, #0x3
_0806f826:
	cmp		r4, #0x3
	bne		_0806f836
	mov		r7, #0x0
	b		_0806f836

.incbin "base.gba", 0x6F82E, 0x2

_0806f830:	.4byte 0x00008003

_0806f834:
	mov		r7, #0x3
_0806f836:
	add		r0, r7, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f744

	thumb_func_start sub_0806f844
sub_0806f844:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0806f8e0
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	add		r4, #0x2e
	add		r0, r4, #0x0
	bl		sub_0806e450
	cmp		r0, #0x0
	beq		_0806f934
	mov		r7, #0x1
	bl		sub_08057370
	ldr		r1, _0806f8e4
	add		r0, r0, r1
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_08057328
	cmp		r0, #0x0
	bne		_0806f936
	bl		sub_08057370
	add		r1, r0, #0x0
	ldr		r0, _0806f8e4
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		sub_08057300
	bl		sub_08057370
	ldr		r4, _0806f8e8
	ldr		r1, _0806f8ec
	mov		r8, r1
	ldr		r1, _0806f8f0
	mov		r9, r1
	ldr		r1, _0806f8e4
	add		r5, r0, r1
	mov		r6, #0x0
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r0, _0806f8f4
	add		r1, r4, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_0806f8f8
	ldr		r0, _0806f8f4
	mov		r1, r8
	bl		sub_08013d0c
	mov		r4, #0x1
	b		_0806f912

.incbin "base.gba", 0x6F8DE, 0x2

_0806f8e0:	.4byte 0x0203EBE0
_0806f8e4:	.4byte 0x00000B7D
_0806f8e8:	.4byte 0x08114244
_0806f8ec:	.4byte 0x081142a0
_0806f8f0:	.4byte 0x081142e4
_0806f8f4:	.4byte 0x00008003

_0806f8f8:
	mov		r0, #0xf
	mov		r1, #0x1
	neg		r1, r1
_0806f8fe:
	strb	r6, [r5, #0x0]
	add		r5, #0x1
	sub		r0, #0x1
	cmp		r0, r1
	bne		_0806f8fe
	ldr		r0, _0806f930
	mov		r1, r9
	bl		sub_08013d0c
	mov		r4, #0x2
_0806f912:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0806f970
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	beq		_0806f926
	mov		r4, #0x3
_0806f926:
	cmp		r4, #0x3
	bne		_0806f936
	mov		r7, #0x0
	b		_0806f936

.incbin "base.gba", 0x6F92E, 0x2

_0806f930:	.4byte 0x00008003

_0806f934:
	mov		r7, #0x3
_0806f936:
	add		r0, r7, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f844

	thumb_func_start sub_0806f944
sub_0806f944:
	push	{ lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r2, #0x0
	bl		sub_0806f95c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f944

	thumb_func_start sub_0806f95c
sub_0806f95c:
	push	{ lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r3, #0x1
	bl		sub_0806ee5c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f95c

	thumb_func_start sub_0806f970
sub_0806f970:
	push	{ lr }
	mov		r0, #0x12
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0806efd4
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806f970

	thumb_func_start sub_0806f984
sub_0806f984:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	lsl		r0, r4, #0x8
	ldr		r1, _0806f9b4
	add		r0, r0, r1
	ldr		r1, _0806f9b8
	bl		sub_08013d0c
	add		r4, #0x7
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_0806f95c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6F9B2, 0x2

_0806f9b4:	.4byte 0x00008002
_0806f9b8:	.4byte 0x08112b28
	thumb_func_end sub_0806f984

	thumb_func_start sub_0806f9bc
sub_0806f9bc:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
_0806f9c2:
	sub		r0, r4, #0x1
	cmp		r0, #0x6
	bhi		_0806fa18
	lsl		r0, r0, #0x2
	ldr		r1, _0806f9d4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x6F9D2, 0x2

_0806f9d4:	.4byte 0x0806f9d8
_0806f9d8:	.4byte 0x0806f9fa

.incbin "base.gba", 0x6F9DC, 0x18
	thumb_func_end sub_0806f9bc


.incbin "base.gba", 0x6F9F4, 0x6

_0806f9fa:

.incbin "base.gba", 0x6F9FA, 0x1E

_0806fa18:

.incbin "base.gba", 0x6FA18, 0x64
	thumb_func_start sub_0806fa7c
sub_0806fa7c:
.incbin "base.gba", 0x6FA7C, 0x2
	bx		r2
_0806fa80:
.incbin "base.gba", 0x6FA80, 0x4
.incbin "base.gba", 0x6FA84, 0x4
.incbin "base.gba", 0x6FA88, 0x4
	thumb_func_end sub_0806fa7c

	thumb_func_start sub_0806fa8c
sub_0806fa8c:
	ldr		r0, _0806faf8
	ldr		r0, [r0, #0x0]
	ldr		r2, _0806fafc
	ldr		r3, [r0, #0x0]
	cmp		r2, r3
	beq		_0806fa9a
	bx		lr
_0806fa9a:
	add		r3, #0x1
	str		r3, [r0, #0x0]
	push	{ r4, r5, r6, r7, lr }
	mov		r1, r8
	mov		r2, r9
	mov		r3, r10
	mov		r4, r11
	push	{ r0, r1, r2, r3, r4 }
	sub		sp, #0x18
	ldrb	r1, [r0, #0xc]
	cmp		r1, #0x0
	beq		_0806fabe
	ldr		r2, _0806fb04
	ldrb	r2, [r2, #0x0]
	cmp		r2, #0xa0
	bcs		_0806fabc
	add		r2, #0xe4
_0806fabc:
	add		r1, r1, r2
_0806fabe:
	str		r1, [sp, #0x14]
	ldr		r3, [r0, #0x20]
	cmp		r3, #0x0
	beq		_0806face
	ldr		r0, [r0, #0x24]
	bl		sub_0806fe3a
	ldr		r0, [sp, #0x18]
_0806face:
	ldr		r3, [r0, #0x28]
	bl		sub_0806fe3a
	ldr		r0, [sp, #0x18]
	ldr		r3, [r0, #0x10]
	mov		r8, r3
	ldr		r5, _0806fb08
	add		r5, r5, r0
	ldrb	r4, [r0, #0x4]
	sub		r7, r4, #0x1
	bls		_0806faee
	ldrb	r1, [r0, #0xb]
	sub		r1, r1, r7
	mov		r2, r8
	mul		r2, r1
	add		r5, r5, r2
_0806faee:
	str		r5, [sp, #0x8]
	ldr		r6, _0806fb0c
	ldr		r3, _0806fb00
	bx		r3

.incbin "base.gba", 0x6FAF6, 0x2

_0806faf8:	.4byte 0x03007FF0
_0806fafc:	.4byte 0x68736D53
_0806fb00:	.4byte 0x03002991
_0806fb04:	.4byte VerticalCounter_LY_
_0806fb08:	.4byte 0x00000350
_0806fb0c:	.4byte 0x00000630

_0806fb10:
	ldrb	r3, [r0, #0x5]
	cmp		r3, #0x0
	beq		_0806fb5c
.incbin "base.gba", 0x6FB16, 0x2
	bx		r1

.incbin "base.gba", 0x6FB1A, 0x2
_0806fb1c:
.incbin "base.gba", 0x6FB1C, 0x4
.incbin "base.gba", 0x6FB20, 0x4
.incbin "base.gba", 0x6FB24, 0x4
.incbin "base.gba", 0x6FB28, 0x4
_0806fb2c:
.incbin "base.gba", 0x6FB2C, 0x4
.incbin "base.gba", 0x6FB30, 0x4
.incbin "base.gba", 0x6FB34, 0x4
.incbin "base.gba", 0x6FB38, 0x4
.incbin "base.gba", 0x6FB3C, 0x4
.incbin "base.gba", 0x6FB40, 0x4
.incbin "base.gba", 0x6FB44, 0x4
.incbin "base.gba", 0x6FB48, 0x4
.incbin "base.gba", 0x6FB4C, 0x4
.incbin "base.gba", 0x6FB50, 0x4
.incbin "base.gba", 0x6FB54, 0x4
.incbin "base.gba", 0x6FB58, 0x4
_0806fb5c:
	mov		r0, #0x0
	mov		r1, r8
	lsr		r1, r1, #0x3
	bcc		_0806fb66
	stmia	r5!, { r0 }
_0806fb66:
	lsr		r1, r1, #0x1
	bcc		_0806fb6e
	stmia	r5!, { r0 }
	stmia	r5!, { r0 }
_0806fb6e:
	stmia	r5!, { r0 }
	stmia	r5!, { r0 }
	stmia	r5!, { r0 }
	stmia	r5!, { r0 }
	sub		r1, #0x1
	bgt		_0806fb6e
_0806fb7a:
	ldr		r4, [sp, #0x18]
	ldr		r0, [r4, #0x18]
	mov		r12, r0
	ldrb	r0, [r4, #0x6]
	add		r4, #0x50
_0806fb84:
	str		r0, [sp, #0x4]
	ldr		r3, [r4, #0x24]
	ldr		r0, [sp, #0x14]
	cmp		r0, #0x0
	beq		_0806fba4
	ldr		r1, _0806fba0
	ldrb	r1, [r1, #0x0]
	cmp		r1, #0xa0
	bcs		_0806fb98
	add		r1, #0xe4
_0806fb98:
	cmp		r1, r0
	bcc		_0806fba4
	b		_0806fe26

.incbin "base.gba", 0x6FB9E, 0x2

_0806fba0:	.4byte VerticalCounter_LY_

_0806fba4:
	ldrb	r6, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r6
	bne		_0806fbae
	b		_0806fe1c
_0806fbae:
	mov		r0, #0x80
	tst		r0, r6
	beq		_0806fbde
	mov		r0, #0x40
	tst		r0, r6
	bne		_0806fbee
	mov		r6, #0x3
	strb	r6, [r4, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x10
	str		r0, [r4, #0x28]
	ldr		r0, [r3, #0xc]
	str		r0, [r4, #0x18]
	mov		r5, #0x0
	strb	r5, [r4, #0x9]
	str		r5, [r4, #0x1c]
	ldrb	r2, [r3, #0x3]
	mov		r0, #0xc0
	tst		r0, r2
	beq		_0806fc36
	mov		r0, #0x10
	orr		r6, r0
	strb	r6, [r4, #0x0]
	b		_0806fc36
_0806fbde:
	ldrb	r5, [r4, #0x9]
	mov		r0, #0x4
	tst		r0, r6
	beq		_0806fbf4
	ldrb	r0, [r4, #0xd]
	sub		r0, #0x1
	strb	r0, [r4, #0xd]
	bhi		_0806fc44
_0806fbee:
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	b		_0806fe1c
_0806fbf4:
	mov		r0, #0x40
	tst		r0, r6
	beq		_0806fc14
	ldrb	r0, [r4, #0x7]
	mul		r5, r0
	lsr		r5, r5, #0x8
	ldrb	r0, [r4, #0xc]
	cmp		r5, r0
	bhi		_0806fc44
_0806fc06:
	ldrb	r5, [r4, #0xc]
	cmp		r5, #0x0
	beq		_0806fbee
	mov		r0, #0x4
	orr		r6, r0
	strb	r6, [r4, #0x0]
	b		_0806fc44
_0806fc14:
	mov		r2, #0x3
	and		r2, r6
	cmp		r2, #0x2
	bne		_0806fc32
	ldrb	r0, [r4, #0x5]
	mul		r5, r0
	lsr		r5, r5, #0x8
	ldrb	r0, [r4, #0x6]
	cmp		r5, r0
	bhi		_0806fc44
	add		r5, r0, #0x0
	beq		_0806fc06
	sub		r6, #0x1
	strb	r6, [r4, #0x0]
	b		_0806fc44
_0806fc32:
	cmp		r2, #0x3
	bne		_0806fc44
_0806fc36:
	ldrb	r0, [r4, #0x4]
	add		r5, r5, r0
	cmp		r5, #0xff
	bcc		_0806fc44
	mov		r5, #0xff
	sub		r6, #0x1
	strb	r6, [r4, #0x0]
_0806fc44:
	strb	r5, [r4, #0x9]
	ldr		r0, [sp, #0x18]
	ldrb	r0, [r0, #0x7]
	add		r0, #0x1
	mul		r0, r5
	lsr		r5, r0, #0x4
	ldrb	r0, [r4, #0x2]
	ldrb	r1, [r4, #0x3]
	add		r0, r0, r1
	mul		r0, r5
	lsr		r0, r0, #0x9
	strb	r0, [r4, #0xa]
	mov		r0, #0x10
	and		r0, r6
	str		r0, [sp, #0x10]
	beq		_0806fc74
	add		r0, r3, #0x0
	add		r0, #0x10
	ldr		r1, [r3, #0x8]
	add		r0, r0, r1
	str		r0, [sp, #0xc]
	ldr		r0, [r3, #0xc]
	sub		r0, r0, r1
	str		r0, [sp, #0x10]
_0806fc74:
	ldr		r5, [sp, #0x8]
	ldr		r2, [r4, #0x18]
	ldr		r3, [r4, #0x28]
.incbin "base.gba", 0x6fc7A, 0x2
	bx		r0

.incbin "base.gba", 0x6FC7E, 0x2
_0806fc80:
.incbin "base.gba", 0x6FC80, 0x4
.incbin "base.gba", 0x6FC84, 0x4
.incbin "base.gba", 0x6FC88, 0x4
.incbin "base.gba", 0x6FC8C, 0x4
.incbin "base.gba", 0x6FC90, 0x4
.incbin "base.gba", 0x6FC94, 0x4
_0806fc98:
.incbin "base.gba", 0x6FC98, 0x4
.incbin "base.gba", 0x6FC9C, 0x4
.incbin "base.gba", 0x6FCA0, 0x4
.incbin "base.gba", 0x6FCA4, 0x4
.incbin "base.gba", 0x6FCA8, 0x4
.incbin "base.gba", 0x6FCAC, 0x4
.incbin "base.gba", 0x6FCB0, 0x4
.incbin "base.gba", 0x6FCB4, 0x4
.incbin "base.gba", 0x6FCB8, 0x4
.incbin "base.gba", 0x6FCBC, 0x4
.incbin "base.gba", 0x6FCC0, 0x4
_0806fcc4:
.incbin "base.gba", 0x6FCC4, 0x4
_0806fcc8:
.incbin "base.gba", 0x6FCC8, 0x4
.incbin "base.gba", 0x6FCCC, 0x4
.incbin "base.gba", 0x6FCD0, 0x4
.incbin "base.gba", 0x6FCD4, 0x4
.incbin "base.gba", 0x6FCD8, 0x4
.incbin "base.gba", 0x6FCDC, 0x4
.incbin "base.gba", 0x6FCE0, 0x4
.incbin "base.gba", 0x6FCE4, 0x4
.incbin "base.gba", 0x6FCE8, 0x4
.incbin "base.gba", 0x6FCEC, 0x4
.incbin "base.gba", 0x6FCF0, 0x4
_0806fcf4:
.incbin "base.gba", 0x6FCF4, 0x4
_0806fcf8:
.incbin "base.gba", 0x6FCF8, 0x4
.incbin "base.gba", 0x6FCFC, 0x4
.incbin "base.gba", 0x6FD00, 0x4
.incbin "base.gba", 0x6FD04, 0x4
.incbin "base.gba", 0x6FD08, 0x4
.incbin "base.gba", 0x6FD0C, 0x4
_0806fd10:
.incbin "base.gba", 0x6FD10, 0x4
.incbin "base.gba", 0x6FD14, 0x4
.incbin "base.gba", 0x6FD18, 0x4
.incbin "base.gba", 0x6FD1C, 0x4
.incbin "base.gba", 0x6FD20, 0x4
.incbin "base.gba", 0x6FD24, 0x4
_0806fd28:
.incbin "base.gba", 0x6FD28, 0x4
.incbin "base.gba", 0x6FD2C, 0x4
.incbin "base.gba", 0x6FD30, 0x4
.incbin "base.gba", 0x6FD34, 0x4
.incbin "base.gba", 0x6FD38, 0x4
_0806fd3c:
.incbin "base.gba", 0x6FD3C, 0x4
.incbin "base.gba", 0x6FD40, 0x4
.incbin "base.gba", 0x6FD44, 0x4
.incbin "base.gba", 0x6FD48, 0x4
_0806fd4c:
.incbin "base.gba", 0x6FD4C, 0x4
.incbin "base.gba", 0x6FD50, 0x4
.incbin "base.gba", 0x6FD54, 0x4
_0806fd58:
.incbin "base.gba", 0x6FD58, 0x4
.incbin "base.gba", 0x6FD5C, 0x4
.incbin "base.gba", 0x6FD60, 0x4
.incbin "base.gba", 0x6FD64, 0x4
_0806fd68:
.incbin "base.gba", 0x6FD68, 0x4
.incbin "base.gba", 0x6FD6C, 0x4
.incbin "base.gba", 0x6FD70, 0x4
.incbin "base.gba", 0x6FD74, 0x4
.incbin "base.gba", 0x6FD78, 0x4
.incbin "base.gba", 0x6FD7C, 0x4
.incbin "base.gba", 0x6FD80, 0x4
.incbin "base.gba", 0x6FD84, 0x4
_0806fd88:
.incbin "base.gba", 0x6FD88, 0x4
.incbin "base.gba", 0x6FD8C, 0x4
.incbin "base.gba", 0x6FD90, 0x4
.incbin "base.gba", 0x6FD94, 0x4
.incbin "base.gba", 0x6FD98, 0x4
.incbin "base.gba", 0x6FD9C, 0x4
.incbin "base.gba", 0x6FDA0, 0x4
_0806fda4:
.incbin "base.gba", 0x6FDA4, 0x4
_0806fda8:
.incbin "base.gba", 0x6FDA8, 0x4
.incbin "base.gba", 0x6FDAC, 0x4
.incbin "base.gba", 0x6FDB0, 0x4
.incbin "base.gba", 0x6FDB4, 0x4
.incbin "base.gba", 0x6FDB8, 0x4
.incbin "base.gba", 0x6FDBC, 0x4
.incbin "base.gba", 0x6FDC0, 0x4
.incbin "base.gba", 0x6FDC4, 0x4
.incbin "base.gba", 0x6FDC8, 0x4
.incbin "base.gba", 0x6FDCC, 0x4
.incbin "base.gba", 0x6FDD0, 0x4
.incbin "base.gba", 0x6FDD4, 0x4
.incbin "base.gba", 0x6FDD8, 0x4
_0806fddc:
.incbin "base.gba", 0x6FDDC, 0x4
.incbin "base.gba", 0x6FDE0, 0x4
.incbin "base.gba", 0x6FDE4, 0x4
_0806fde8:
.incbin "base.gba", 0x6FDE8, 0x4
.incbin "base.gba", 0x6FDEC, 0x4
.incbin "base.gba", 0x6FDF0, 0x4
.incbin "base.gba", 0x6FDF4, 0x4
.incbin "base.gba", 0x6FDF8, 0x4
.incbin "base.gba", 0x6FDFC, 0x4
.incbin "base.gba", 0x6FE00, 0x4
.incbin "base.gba", 0x6FE04, 0x4
_0806fe08:
.incbin "base.gba", 0x6FE08, 0x4
.incbin "base.gba", 0x6FE0C, 0x4
_0806fe10:
.incbin "base.gba", 0x6FE10, 0x4
.incbin "base.gba", 0x6FE14, 0x4
.incbin "base.gba", 0x6FE18, 0x4
_0806fe1c:
	ldr		r0, [sp, #0x4]
	sub		r0, #0x1
	ble		_0806fe26
	add		r4, #0x40
	b		_0806fb84
_0806fe26:
	ldr		r0, [sp, #0x18]
	ldr		r3, _0806fe3c
	str		r3, [r0, #0x0]
	add		sp, #0x1c
	pop		{ r0, r1, r2, r3, r4, r5, r6, r7 }
	mov		r8, r0
	mov		r9, r1
	mov		r10, r2
	mov		r11, r3
	pop		{ r3 }
	thumb_func_end sub_0806fa8c

	non_word_aligned_thumb_func_start sub_0806fe3a
sub_0806fe3a:
	bx		r3

.align 2, 0
_0806fe3c:	.4byte 0x68736D53
	mov		r12, r4
	mov		r1, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	mov		r4, #0x0
	stmia	r0!, {  r1, r2, r3, r4 }
	stmia	r0!, {  r1, r2, r3, r4 }
	stmia	r0!, {  r1, r2, r3, r4 }
	stmia	r0!, {  r1, r2, r3, r4 }
	mov		r4, r12
	bx		lr

.incbin "base.gba", 0x6FE56, 0x2
	thumb_func_end sub_0806fe3a

	thumb_func_start sub_0806fe58
sub_0806fe58:
	ldr		r3, [r0, #0x2c]
	cmp		r3, #0x0
	beq		_0806fe76
	ldr		r1, [r0, #0x34]
	ldr		r2, [r0, #0x30]
	cmp		r2, #0x0
	beq		_0806fe6a
	str		r1, [r2, #0x34]
	b		_0806fe6c
_0806fe6a:
	str		r1, [r3, #0x20]
_0806fe6c:
	cmp		r1, #0x0
	beq		_0806fe72
	str		r2, [r1, #0x30]
_0806fe72:
	mov		r1, #0x0
	str		r1, [r0, #0x2c]
_0806fe76:
	bx		lr
	thumb_func_end sub_0806fe58

	thumb_func_start sub_0806fe78
sub_0806fe78:
	push	{ r4, r5, lr }
	add		r5, r1, #0x0
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_0806fe9c
_0806fe82:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_0806fe90
	mov		r0, #0x40
	orr		r1, r0
	strb	r1, [r4, #0x0]
_0806fe90:
	add		r0, r4, #0x0
	bl		sub_0806fe58
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_0806fe82
_0806fe9c:
	mov		r0, #0x0
	strb	r0, [r5, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6FEA6, 0x2
	thumb_func_end sub_0806fe78

	thumb_func_start sub_0806fea8
sub_0806fea8:
	mov		r12, lr
	mov		r1, #0x24
	ldr		r2, _0806fed8
_0806feae:
	ldr		r3, [r2, #0x0]
	bl		sub_0806fec2
	stmia	r0!, {  r3 }
	add		r2, #0x4
	sub		r1, #0x1
	bgt		_0806feae
	bx		r12

.incbin "base.gba", 0x6FEBE, 0x2
	thumb_func_end sub_0806fea8

	thumb_func_start sub_0806fec0
sub_0806fec0:
	ldrb	r3, [r2, #0x0]
	thumb_func_end sub_0806fec0

	non_word_aligned_thumb_func_start sub_0806fec2
sub_0806fec2:
	push	{ r0 }
	lsr		r0, r2, #0x19
	bne		_0806fed4
	ldr		r0, _0806fed8
	cmp		r2, r0
	bcc		_0806fed2
	lsr		r0, r2, #0xe
	beq		_0806fed4
_0806fed2:
	mov		r3, #0x0
_0806fed4:
	pop		{ r0 }
	bx		lr

.align 2, 0
_0806fed8:	.4byte 0x08115300
	thumb_func_end sub_0806fec2

	non_word_aligned_thumb_func_start sub_0806fedc
sub_0806fedc:
	ldr		r2, [r1, #0x40]
	thumb_func_end sub_0806fedc

	non_word_aligned_thumb_func_start sub_0806fede
sub_0806fede:
	add		r3, r2, #0x1
	str		r3, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	b		sub_0806fec2

.incbin "base.gba", 0x6FEE6, 0x2
	push	{ lr }
_0806feea:
	ldr		r2, [r1, #0x40]
	ldrb	r0, [r2, #0x3]
	lsl		r0, r0, #0x8
	ldrb	r3, [r2, #0x2]
	orr		r0, r3
	lsl		r0, r0, #0x8
	ldrb	r3, [r2, #0x1]
	orr		r0, r3
	lsl		r0, r0, #0x8
	bl		sub_0806fec0
	orr		r0, r3
	str		r0, [r1, #0x40]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6FF08, 0x1

_0806ff09:	.4byte 0x082a0378

.incbin "base.gba", 0x6FF0D, 0x17
	ldrb	r2, [r1, #0x2]
	cmp		r2, #0x0
	beq		_0806ff36
	sub		r2, #0x1
	strb	r2, [r1, #0x2]
	lsl		r2, r2, #0x2
	add		r3, r1, r2
	ldr		r2, [r3, #0x44]
	str		r2, [r1, #0x40]
_0806ff36:
	bx		lr
	thumb_func_end sub_0806fede

	thumb_func_start sub_0806ff38
sub_0806ff38:
	push	{ lr }
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	cmp		r3, #0x0
	bne		_0806ff48
	add		r2, #0x1
	str		r2, [r1, #0x40]
	b		_0806feea
_0806ff48:
	ldrb	r3, [r1, #0x3]
	add		r3, #0x1
	strb	r3, [r1, #0x3]
	mov		r12, r3
	bl		sub_0806fedc
	cmp		r12, r3
	bcs		_0806ff5a
	b		_0806feea
_0806ff5a:
	mov		r3, #0x0
	strb	r3, [r1, #0x3]
	add		r2, #0x5
	str		r2, [r1, #0x40]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6FF66, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	strb	r3, [r1, #0x1d]
	bx		r12

.incbin "base.gba", 0x6FF72, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	lsl		r3, r3, #0x1
	strh	r3, [r0, #0x1c]
	ldrh	r2, [r0, #0x1e]
	mul		r3, r2
	lsr		r3, r3, #0x8
	strh	r3, [r0, #0x20]
	bx		r12
	mov		r12, lr
	bl		sub_0806fedc
	strb	r3, [r1, #0xa]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0xc
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12

.incbin "base.gba", 0x6FF9A, 0x2
	mov		r12, lr
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	add		r2, #0x1
	str		r2, [r1, #0x40]
	lsl		r2, r3, #0x1
	add		r2, r2, r3
	lsl		r2, r2, #0x2
	ldr		r3, [r0, #0x30]
	add		r2, r2, r3
	ldr		r3, [r2, #0x0]
	bl		sub_0806fec2
	str		r3, [r1, #0x24]
	ldr		r3, [r2, #0x4]
	bl		sub_0806fec2
	str		r3, [r1, #0x28]
	ldr		r3, [r2, #0x8]
	bl		sub_0806fec2
	str		r3, [r1, #0x2c]
	bx		r12

.incbin "base.gba", 0x6FFCA, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	strb	r3, [r1, #0x12]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0x3
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12

.incbin "base.gba", 0x6FFDE, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	sub		r3, #0x40
	strb	r3, [r1, #0x14]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0x3
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12
	mov		r12, lr
	bl		sub_0806fedc
	sub		r3, #0x40
	strb	r3, [r1, #0xe]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0xc
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12
	mov		r12, lr
	bl		sub_0806fedc
	strb	r3, [r1, #0xf]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0xc
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12

.incbin "base.gba", 0x7001A, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	strb	r3, [r1, #0x1b]
	bx		r12

.incbin "base.gba", 0x70026, 0x2
	mov		r12, lr
	bl		sub_0806fedc
	ldrb	r0, [r1, #0x18]
	cmp		r0, r3
	beq		_0807003e
	strb	r3, [r1, #0x18]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0xf
	orr		r3, r2
	strb	r3, [r1, #0x0]
_0807003e:
	bx		r12
	mov		r12, lr
	bl		sub_0806fedc
	sub		r3, #0x40
	strb	r3, [r1, #0xc]
	ldrb	r3, [r1, #0x0]
	mov		r2, #0xc
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		r12
	mov		r12, lr
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	add		r2, #0x1
	ldr		r0, _08070068
	add		r0, r0, r3
	bl		sub_0806fede
	strb	r3, [r0, #0x0]
	bx		r12

_08070068:	.4byte Channel1Sweepregister_NR10_
	thumb_func_end sub_0806ff38

	thumb_func_start sub_0807006c
sub_0807006c:
	ldr		r0, _08070308
	ldr		r0, [r0, #0x0]
	ldr		r2, _0807030c
	ldr		r3, [r0, #0x0]
	sub		r3, r3, r2
	cmp		r3, #0x1
	bhi		_0807009e
	ldrb	r1, [r0, #0x4]
	sub		r1, #0x1
	strb	r1, [r0, #0x4]
	bgt		_0807009e
	ldrb	r1, [r0, #0xb]
	strb	r1, [r0, #0x4]
	ldr		r2, _080700a0
	ldr		r1, [r2, #0x8]
	lsl		r1, r1, #0x7
	bcc		_08070092
	ldr		r1, _080700a4
	str		r1, [r2, #0x8]
_08070092:
	mov		r1, #0x4
	lsl		r1, r1, #0x8
	strh	r1, [r2, #0xa]
	mov		r1, #0xb6
	lsl		r1, r1, #0x8
	strh	r1, [r2, #0xa]
_0807009e:
	bx		lr

_080700a0:	.4byte DMA1SourceAddress
_080700a4:	.4byte 0x84400004
	ldr		r2, _0807030c
	ldr		r3, [r0, #0x34]
	cmp		r2, r3
	beq		_080700b2
	bx		lr
_080700b2:
	add		r3, #0x1
	str		r3, [r0, #0x34]
	push	{ r0, lr }
	ldr		r3, [r0, #0x38]
	cmp		r3, #0x0
	beq		_080700c4
	ldr		r0, [r0, #0x3c]
	bl		sub_08070300
_080700c4:
	pop		{ r0 }
	push	{ r4, r5, r6, r7 }
	mov		r4, r8
	mov		r5, r9
	mov		r6, r10
	mov		r7, r11
	push	{ r4, r5, r6, r7 }
	add		r7, r0, #0x0
	ldr		r0, [r7, #0x4]
	cmp		r0, #0x0
	bge		_080700dc
	b		_080702f0
_080700dc:
	ldr		r0, _08070308
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	add		r0, r7, #0x0
	bl		sub_08070f4c
	ldr		r0, [r7, #0x4]
	cmp		r0, #0x0
	bge		_080700f0
	b		_080702f0
_080700f0:
	ldrh	r0, [r7, #0x22]
	ldrh	r1, [r7, #0x20]
	add		r0, r0, r1
	b		_08070240
_080700f8:
	ldrb	r6, [r7, #0x8]
	ldr		r5, [r7, #0x2c]
	mov		r3, #0x1
	mov		r4, #0x0
_08070100:
	ldrb	r0, [r5, #0x0]
	mov		r1, #0x80
	tst		r1, r0
	bne		_0807010a
	b		_0807021c
_0807010a:
	mov		r10, r3
	orr		r4, r3
	mov		r11, r4
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_0807013e
_08070116:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_08070132
	ldrb	r0, [r4, #0x10]
	cmp		r0, #0x0
	beq		_08070138
	sub		r0, #0x1
	strb	r0, [r4, #0x10]
	bne		_08070138
	mov		r0, #0x40
	orr		r1, r0
	strb	r1, [r4, #0x0]
	b		_08070138
_08070132:
	add		r0, r4, #0x0
	bl		sub_08070a90
_08070138:
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_08070116
_0807013e:
	ldrb	r3, [r5, #0x0]
	mov		r0, #0x40
	tst		r0, r3
	beq		_080701bc
	add		r0, r5, #0x0
	bl		sub_08070aa4
	mov		r0, #0x80
	strb	r0, [r5, #0x0]
	mov		r0, #0x2
	strb	r0, [r5, #0xf]
	mov		r0, #0x40
	strb	r0, [r5, #0x13]
	mov		r0, #0x16
	strb	r0, [r5, #0x19]
	mov		r0, #0x1
	add		r1, r5, #0x6
	strb	r0, [r1, #0x1e]
	b		_080701bc
_08070164:
	ldr		r2, [r5, #0x40]
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x80
	bcs		_08070170
	ldrb	r1, [r5, #0x7]
	b		_0807017a
_08070170:
	add		r2, #0x1
	str		r2, [r5, #0x40]
	cmp		r1, #0xbd
	bcc		_0807017a
	strb	r1, [r5, #0x7]
_0807017a:
	cmp		r1, #0xcf
	bcc		_08070190
	mov		r0, r8
	ldr		r3, [r0, #0x38]
	add		r0, r1, #0x0
	sub		r0, #0xcf
	add		r1, r7, #0x0
	add		r2, r5, #0x0
	bl		sub_08070300
	b		_080701bc
_08070190:
	cmp		r1, #0xb0
	bls		_080701b2
	add		r0, r1, #0x0
	sub		r0, #0xb1
	strb	r0, [r7, #0xa]
	mov		r3, r8
	ldr		r3, [r3, #0x34]
	lsl		r0, r0, #0x2
	ldr		r3, [r3, r0]
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08070300
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08070218
	b		_080701bc
_080701b2:
	ldr		r0, _08070304
	sub		r1, #0x80
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	strb	r0, [r5, #0x1]
_080701bc:
	ldrb	r0, [r5, #0x1]
	cmp		r0, #0x0
	beq		_08070164
	sub		r0, #0x1
	strb	r0, [r5, #0x1]
	ldrb	r1, [r5, #0x19]
	cmp		r1, #0x0
	beq		_08070218
	ldrb	r0, [r5, #0x17]
	cmp		r0, #0x0
	beq		_08070218
	ldrb	r0, [r5, #0x1c]
	cmp		r0, #0x0
	beq		_080701de
	sub		r0, #0x1
	strb	r0, [r5, #0x1c]
	b		_08070218
_080701de:
	ldrb	r0, [r5, #0x1a]
	add		r0, r0, r1
	strb	r0, [r5, #0x1a]
	add		r1, r0, #0x0
	sub		r0, #0x40
	lsl		r0, r0, #0x18
	bpl		_080701f2
	lsl		r2, r1, #0x18
	asr		r2, r2, #0x18
	b		_080701f6
_080701f2:
	mov		r0, #0x80
	sub		r2, r0, r1
_080701f6:
	ldrb	r0, [r5, #0x17]
	mul		r0, r2
	asr		r2, r0, #0x6
	ldrb	r0, [r5, #0x16]
	eor		r0, r2
	lsl		r0, r0, #0x18
	beq		_08070218
	strb	r2, [r5, #0x16]
	ldrb	r0, [r5, #0x0]
	ldrb	r1, [r5, #0x18]
	cmp		r1, #0x0
	bne		_08070212
	mov		r1, #0xc
	b		_08070214
_08070212:
	mov		r1, #0x3
_08070214:
	orr		r0, r1
	strb	r0, [r5, #0x0]
_08070218:
	mov		r3, r10
	mov		r4, r11
_0807021c:
	sub		r6, #0x1
	ble		_08070228
	mov		r0, #0x50
	add		r5, r5, r0
	lsl		r3, r3, #0x1
	b		_08070100
_08070228:
	ldr		r0, [r7, #0xc]
	add		r0, #0x1
	str		r0, [r7, #0xc]
	cmp		r4, #0x0
	bne		_0807023a
	mov		r0, #0x80
	lsl		r0, r0, #0x18
	str		r0, [r7, #0x4]
	b		_080702f0
_0807023a:
	str		r4, [r7, #0x4]
	ldrh	r0, [r7, #0x22]
	sub		r0, #0x96
_08070240:
	strh	r0, [r7, #0x22]
	cmp		r0, #0x96
	bcc		_08070248
	b		_080700f8
_08070248:
	ldrb	r2, [r7, #0x8]
	ldr		r5, [r7, #0x2c]
_0807024c:
	ldrb	r0, [r5, #0x0]
	mov		r1, #0x80
	tst		r1, r0
	beq		_080702e6
	mov		r1, #0xf
	tst		r1, r0
	beq		_080702e6
	mov		r9, r2
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08071014
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_080702dc
_0807026a:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	bne		_0807027a
	add		r0, r4, #0x0
	bl		sub_08070a90
	b		_080702d6
_0807027a:
	ldrb	r0, [r4, #0x1]
	mov		r6, #0x7
	and		r6, r0
	ldrb	r3, [r5, #0x0]
	mov		r0, #0x3
	tst		r0, r3
	beq		_08070298
	bl		sub_08070354
	cmp		r6, #0x0
	beq		_08070298
	ldrb	r0, [r4, #0x1d]
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r4, #0x1d]
_08070298:
	ldrb	r3, [r5, #0x0]
	mov		r0, #0xc
	tst		r0, r3
	beq		_080702d6
	ldrb	r1, [r4, #0x8]
	mov		r0, #0x8
	ldrsb	r0, [r5, r0]
	add		r2, r1, r0
	bpl		_080702ac
	mov		r2, #0x0
_080702ac:
	cmp		r6, #0x0
	beq		_080702ca
	mov		r0, r8
	ldr		r3, [r0, #0x30]
	add		r1, r2, #0x0
	ldrb	r2, [r5, #0x9]
	add		r0, r6, #0x0
	bl		sub_08070300
	str		r0, [r4, #0x20]
	ldrb	r0, [r4, #0x1d]
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r4, #0x1d]
	b		_080702d6
_080702ca:
	add		r1, r2, #0x0
	ldrb	r2, [r5, #0x9]
	ldr		r0, [r4, #0x24]
	bl		sub_08070614
	str		r0, [r4, #0x20]
_080702d6:
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_0807026a
_080702dc:
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xf0
	and		r0, r1
	strb	r0, [r5, #0x0]
	mov		r2, r9
_080702e6:
	sub		r2, #0x1
	ble		_080702f0
	mov		r0, #0x50
	add		r5, r5, r0
	bgt		_0807024c
_080702f0:
	ldr		r0, _0807030c
	str		r0, [r7, #0x34]
	pop		{ r0, r1, r2, r3, r4, r5, r6, r7 }
	mov		r8, r0
	mov		r9, r1
	mov		r10, r2
	mov		r11, r3
	pop		{ r3 }
	thumb_func_end sub_0807006c

	thumb_func_start sub_08070300
sub_08070300:
	bx		r3

.incbin "base.gba", 0x70302, 0x2

_08070304:	.4byte 0x08115574
_08070308:	.4byte 0x03007FF0
_0807030c:	.4byte 0x68736D53
	thumb_func_end sub_08070300

	thumb_func_start sub_08070310
sub_08070310:
	push	{ r4, r5, r6, lr }
	add		r5, r1, #0x0
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x80
	tst		r0, r1
	beq		_08070348
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_08070346
	mov		r6, #0x0
_08070324:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0807033e
	ldrb	r0, [r4, #0x1]
	mov		r3, #0x7
	and		r0, r3
	beq		_0807033c
	ldr		r3, _08070350
	ldr		r3, [r3, #0x0]
	ldr		r3, [r3, #0x2c]
	bl		sub_08070300
_0807033c:
	strb	r6, [r4, #0x0]
_0807033e:
	str		r6, [r4, #0x2c]
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_08070324
_08070346:
	str		r4, [r5, #0x20]
_08070348:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7034E, 0x2

_08070350:	.4byte 0x03007FF0
	thumb_func_end sub_08070310

	thumb_func_start sub_08070354
sub_08070354:
	ldrb	r1, [r4, #0x12]
	mov		r0, #0x14
	ldrsb	r2, [r4, r0]
	mov		r3, #0x80
	add		r3, r3, r2
	mul		r3, r1
	ldrb	r0, [r5, #0x10]
	mul		r0, r3
	asr		r0, r0, #0xe
	cmp		r0, #0xff
	bls		_0807036c
	mov		r0, #0xff
_0807036c:
	strb	r0, [r4, #0x2]
	mov		r3, #0x7f
	sub		r3, r3, r2
	mul		r3, r1
	ldrb	r0, [r5, #0x11]
	mul		r0, r3
	asr		r0, r0, #0xe
	cmp		r0, #0xff
	bls		_08070380
	mov		r0, #0xff
_08070380:
	strb	r0, [r4, #0x3]
	bx		lr
	thumb_func_end sub_08070354

	thumb_func_start sub_08070384
sub_08070384:
	push	{ r4, r5, r6, r7, lr }
	mov		r4, r8
	mov		r5, r9
	mov		r6, r10
	mov		r7, r11
	push	{ r4, r5, r6, r7 }
	sub		sp, #0x18
	str		r1, [sp, #0x0]
	add		r5, r2, #0x0
	ldr		r1, _0807057c
	ldr		r1, [r1, #0x0]
	str		r1, [sp, #0x4]
	ldr		r1, _08070580
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x4]
	ldr		r3, [r5, #0x40]
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_080703ca
	strb	r0, [r5, #0x5]
	add		r3, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_080703c8
	strb	r0, [r5, #0x6]
	add		r3, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_080703c8
	ldrb	r1, [r5, #0x4]
	add		r1, r1, r0
	strb	r1, [r5, #0x4]
	add		r3, #0x1
_080703c8:
	str		r3, [r5, #0x40]
_080703ca:
	mov		r0, #0x0
	str		r0, [sp, #0x14]
	add		r4, r5, #0x0
	add		r4, #0x24
	ldrb	r2, [r4, #0x0]
	mov		r0, #0xc0
	tst		r0, r2
	beq		_0807041c
	ldrb	r3, [r5, #0x5]
	mov		r0, #0x40
	tst		r0, r2
	beq		_080703ea
	ldr		r1, [r5, #0x2c]
	add		r1, r1, r3
	ldrb	r0, [r1, #0x0]
	b		_080703ec
_080703ea:
	add		r0, r3, #0x0
_080703ec:
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	ldr		r0, [r5, #0x28]
	add		r1, r1, r0
	mov		r9, r1
	mov		r6, r9
	ldrb	r1, [r6, #0x0]
	mov		r0, #0xc0
	tst		r0, r1
	beq		_08070404
	b		_0807056a
_08070404:
	mov		r0, #0x80
	tst		r0, r2
	beq		_08070420
	ldrb	r1, [r6, #0x3]
	mov		r0, #0x80
	tst		r0, r1
	beq		_08070418
	sub		r1, #0xc0
	lsl		r1, r1, #0x1
	str		r1, [sp, #0x14]
_08070418:
	ldrb	r3, [r6, #0x1]
	b		_08070420
_0807041c:
	mov		r9, r4
	ldrb	r3, [r5, #0x5]
_08070420:
	str		r3, [sp, #0x8]
	ldr		r6, [sp, #0x0]
	ldrb	r1, [r6, #0x9]
	ldrb	r0, [r5, #0x1d]
	add		r0, r0, r1
	cmp		r0, #0xff
	bls		_08070430
	mov		r0, #0xff
_08070430:
	str		r0, [sp, #0x10]
	mov		r6, r9
	ldrb	r0, [r6, #0x0]
	mov		r6, #0x7
	and		r6, r0
	str		r6, [sp, #0xC]
	beq		_08070470
	ldr		r0, [sp, #0x4]
	ldr		r4, [r0, #0x1c]
	cmp		r4, #0x0
	bne		_08070448
	b		_0807056a
_08070448:
	sub		r6, #0x1
	lsl		r0, r6, #0x6
	add		r4, r4, r0
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_080704c4
	mov		r0, #0x40
	tst		r0, r1
	bne		_080704c4
	ldrb	r1, [r4, #0x13]
	ldr		r0, [sp, #0x10]
	cmp		r1, r0
	bcc		_080704c4
	beq		_08070468
	b		_0807056a
_08070468:
	ldr		r0, [r4, #0x2c]
	cmp		r0, r5
	bcs		_080704c4
	b		_0807056a
_08070470:
	ldr		r6, [sp, #0x10]
	add		r7, r5, #0x0
	mov		r2, #0x0
	mov		r8, r2
	ldr		r4, [sp, #0x4]
	ldrb	r3, [r4, #0x6]
	add		r4, #0x50
_0807047e:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_080704c4
	mov		r0, #0x40
	tst		r0, r1
	beq		_08070498
	cmp		r2, #0x0
	bne		_0807049c
	add		r2, #0x1
	ldrb	r6, [r4, #0x13]
	ldr		r7, [r4, #0x2c]
	b		_080704b6
_08070498:
	cmp		r2, #0x0
	bne		_080704b8
_0807049c:
	ldrb	r0, [r4, #0x13]
	cmp		r0, r6
	bcs		_080704a8
	add		r6, r0, #0x0
	ldr		r7, [r4, #0x2c]
	b		_080704b6
_080704a8:
	bhi		_080704b8
	ldr		r0, [r4, #0x2c]
	cmp		r0, r7
	bls		_080704b4
	add		r7, r0, #0x0
	b		_080704b6
_080704b4:
	bcc		_080704b8
_080704b6:
	mov		r8, r4
_080704b8:
	add		r4, #0x40
	sub		r3, #0x1
	bgt		_0807047e
	mov		r4, r8
	cmp		r4, #0x0
	beq		_0807056a
_080704c4:
	add		r0, r4, #0x0
	bl		sub_08070a90
	mov		r1, #0x0
	str		r1, [r4, #0x30]
	ldr		r3, [r5, #0x20]
	str		r3, [r4, #0x34]
	cmp		r3, #0x0
	beq		_080704d8
	str		r4, [r3, #0x30]
_080704d8:
	str		r4, [r5, #0x20]
	str		r5, [r4, #0x2c]
	ldrb	r0, [r5, #0x1b]
	strb	r0, [r5, #0x1c]
	cmp		r0, r1
	beq		_080704ea
	add		r1, r5, #0x0
	bl		sub_080705c4
_080704ea:
	ldr		r0, [sp, #0x0]
	add		r1, r5, #0x0
	bl		sub_08071014
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x10]
	ldr		r0, [sp, #0x10]
	strb	r0, [r4, #0x13]
	ldr		r0, [sp, #0x8]
	strb	r0, [r4, #0x8]
	ldr		r0, [sp, #0x14]
	strb	r0, [r4, #0x14]
	mov		r6, r9
	ldrb	r0, [r6, #0x0]
	strb	r0, [r4, #0x1]
	ldr		r7, [r6, #0x4]
	str		r7, [r4, #0x24]
	ldr		r0, [r6, #0x8]
	str		r0, [r4, #0x4]
	ldrh	r0, [r5, #0x1e]
	strh	r0, [r4, #0xc]
	bl		sub_08070354
	ldrb	r1, [r4, #0x8]
	mov		r0, #0x8
	ldrsb	r0, [r5, r0]
	add		r3, r1, r0
	bpl		_08070524
	mov		r3, #0x0
_08070524:
	ldr		r6, [sp, #0xC]
	cmp		r6, #0x0
	beq		_08070552
	mov		r6, r9
	ldrb	r0, [r6, #0x2]
	strb	r0, [r4, #0x1e]
	ldrb	r1, [r6, #0x3]
	mov		r0, #0x80
	tst		r0, r1
	bne		_0807053e
	mov		r0, #0x70
	tst		r0, r1
	bne		_08070540
_0807053e:
	mov		r1, #0x8
_08070540:
	strb	r1, [r4, #0x1f]
	ldrb	r2, [r5, #0x9]
	add		r1, r3, #0x0
	ldr		r0, [sp, #0xC]
	ldr		r3, [sp, #0x4]
	ldr		r3, [r3, #0x30]
	bl		sub_08070300
	b		_0807055c
_08070552:
	ldrb	r2, [r5, #0x9]
	add		r1, r3, #0x0
	add		r0, r7, #0x0
	bl		sub_08070614
_0807055c:
	str		r0, [r4, #0x20]
	mov		r0, #0x80
	strb	r0, [r4, #0x0]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	strb	r0, [r5, #0x0]
_0807056a:
	add		sp, #0x18
	pop		{ r0, r1, r2, r3, r4, r5, r6, r7 }
	mov		r8, r0
	mov		r9, r1
	mov		r10, r2
	mov		r11, r3
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7057A, 0x2

_0807057c:	.4byte 0x03007FF0
_08070580:	.4byte 0x08115574
	push	{ r4, r5 }
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	cmp		r3, #0x80
	bcs		_08070596
	strb	r3, [r1, #0x5]
	add		r2, #0x1
	str		r2, [r1, #0x40]
	b		_08070598
_08070596:
	ldrb	r3, [r1, #0x5]
_08070598:
	ldr		r1, [r1, #0x20]
	cmp		r1, #0x0
	beq		_080705c0
	mov		r4, #0x83
	mov		r5, #0x40
_080705a2:
	ldrb	r2, [r1, #0x0]
	tst		r2, r4
	beq		_080705ba
	tst		r2, r5
	bne		_080705ba
	ldrb	r0, [r1, #0x11]
	cmp		r0, r3
	bne		_080705ba
	mov		r0, #0x40
	orr		r2, r0
	strb	r2, [r1, #0x0]
	b		_080705c0
_080705ba:
	ldr		r1, [r1, #0x34]
	cmp		r1, #0x0
	bne		_080705a2
_080705c0:
	pop		{ r4, r5 }
	bx		lr
	thumb_func_end sub_08070384

	thumb_func_start sub_080705c4
sub_080705c4:
	mov		r2, #0x0
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x1a]
	ldrb	r2, [r1, #0x18]
	cmp		r2, #0x0
	bne		_080705d4
	mov		r2, #0xc
	b		_080705d6
_080705d4:
	mov		r2, #0x3
_080705d6:
	ldrb	r3, [r1, #0x0]
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x705DE, 0x2
	thumb_func_end sub_080705c4

	thumb_func_start sub_080705e0
sub_080705e0:
	ldr		r2, [r1, #0x40]
	add		r3, r2, #0x1
	str		r3, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	bx		lr

.incbin "base.gba", 0x705EA, 0x2
	mov		r12, lr
	bl		sub_080705e0
	strb	r3, [r1, #0x19]
	cmp		r3, #0x0
	bne		_080705fc
	bl		sub_080705c4
_080705fc:
	bx		r12

.incbin "base.gba", 0x705FE, 0x2
	mov		r12, lr
	bl		sub_080705e0
	strb	r3, [r1, #0x17]
	cmp		r3, #0x0
	bne		_08070610
	bl		sub_080705c4
_08070610:
	bx		r12

.incbin "base.gba", 0x70612, 0x2
	thumb_func_end sub_080705e0

	thumb_func_start sub_08070614
sub_08070614:
	push	{ r4, r5, r6, r7, lr }
	mov		r12, r0
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	lsl		r7, r2, #0x18
	cmp		r6, #0xb2
	bls		_08070628
	mov		r6, #0xb2
	mov		r7, #0xff
	lsl		r7, r7, #0x18
_08070628:
	ldr		r3, _08070670
	add		r0, r6, r3
	ldrb	r5, [r0, #0x0]
	ldr		r4, _08070674
	mov		r2, #0xf
	add		r0, r5, #0x0
	and		r0, r2
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	lsr		r1, r5, #0x4
	ldr		r5, [r0, #0x0]
	lsr		r5, r1
	add		r0, r6, #0x1
	add		r0, r0, r3
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x0
	and		r0, r2
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	lsr		r1, r1, #0x4
	ldr		r0, [r0, #0x0]
	lsr		r0, r1
	mov		r1, r12
	ldr		r4, [r1, #0x4]
	sub		r0, r0, r5
	add		r1, r7, #0x0
	bl		sub_0806fa7c
	add		r1, r0, #0x0
	add		r1, r5, r1
	add		r0, r4, #0x0
	bl		sub_0806fa7c
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08070670:	.4byte 0x08115390
_08070674:	.4byte 0x08115444

.incbin "base.gba", 0x70678, 0x20
	thumb_func_end sub_08070614

	thumb_func_start sub_08070698
sub_08070698:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, [r2, #0x34]
	ldr		r0, _080706b4
	cmp		r3, r0
	bne		_080706b0
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r2, #0x28]
_080706b0:
	bx		lr

.incbin "base.gba", 0x706B2, 0x2

_080706b4:	.4byte 0x68736D53
	thumb_func_end sub_08070698

	thumb_func_start sub_080706b8
sub_080706b8:
	push	{ r4, r5, r6, lr }
	ldr		r0, _0807070c
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	ldr		r1, _08070710
	ldr		r2, _08070714
	bl		sub_08071b6c
	ldr		r0, _08070718
	bl		sub_08070ab8
	ldr		r0, _0807071c
	bl		sub_08070974
	ldr		r0, _08070720
	bl		sub_08070c28
	ldr		r0, _08070724
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08070706
	ldr		r5, _08070728
	add		r6, r0, #0x0
_080706ea:
	ldr		r4, [r5, #0x0]
	ldr		r1, [r5, #0x4]
	ldrb	r2, [r5, #0x8]
	add		r0, r4, #0x0
	bl		sub_08070db0
	ldrh	r0, [r5, #0xa]
	strb	r0, [r4, #0xb]
	ldr		r0, _0807072c
	str		r0, [r4, #0x18]
	add		r5, #0xc
	sub		r6, #0x1
	cmp		r6, #0x0
	bne		_080706ea
_08070706:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0807070c:	.4byte 0x0806fb11
_08070710:	.4byte 0x03002990
_08070714:	.4byte DMA_Unused
_08070718:	.4byte 0x03006020
_0807071c:	.4byte 0x03006B30
_08070720:	.4byte 0x0093C600
_08070724:	.4byte 0x0000000B
_08070728:	.4byte 0x08124544
_0807072c:	.4byte 0x03006D70
	thumb_func_end sub_080706b8

	thumb_func_start sub_08070730
sub_08070730:
	push	{ lr }
	bl		sub_0806fa8c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7073A, 0x2
	thumb_func_end sub_08070730

	thumb_func_start sub_0807073c
sub_0807073c:
	push	{ lr }
	lsl		r0, r0, #0x10
	ldr		r2, _08070760
	ldr		r1, _08070764
	lsr		r0, r0, #0xd
	add		r0, r0, r1
	ldrh	r3, [r0, #0x4]
	lsl		r1, r3, #0x1
	add		r1, r1, r3
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r2, [r1, #0x0]
	ldr		r1, [r0, #0x0]
	add		r0, r2, #0x0
	bl		sub_08070e28
	pop		{ r0 }
	bx		r0

_08070760:	.4byte 0x08124544
_08070764:	.4byte 0x081245c8

.incbin "base.gba", 0x70768, 0xA0
	thumb_func_end sub_0807073c

	thumb_func_start sub_08070808
sub_08070808:
	push	{ lr }
	lsl		r0, r0, #0x10
	ldr		r2, _08070834
	ldr		r1, _08070838
	lsr		r0, r0, #0xd
	add		r0, r0, r1
	ldrh	r3, [r0, #0x4]
	lsl		r1, r3, #0x1
	add		r1, r1, r3
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r2, [r1, #0x0]
	ldr		r1, [r2, #0x0]
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bne		_0807082e
	add		r0, r2, #0x0
	bl		sub_08070f0c
_0807082e:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70832, 0x2

_08070834:	.4byte 0x08124544
_08070838:	.4byte 0x081245c8

.incbin "base.gba", 0x7083C, 0x34
	thumb_func_end sub_08070808

	thumb_func_start sub_08070870
sub_08070870:
	push	{ r4, r5, lr }
	ldr		r0, _08070894
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_0807088e
	ldr		r5, _08070898
	add		r4, r0, #0x0
_08070880:
	ldr		r0, [r5, #0x0]
	bl		sub_08070f0c
	add		r5, #0xc
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08070880
_0807088e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08070894:	.4byte 0x0000000B
_08070898:	.4byte 0x08124544

.incbin "base.gba", 0x7089C, 0x38
	thumb_func_end sub_08070870

	thumb_func_start sub_080708d4
sub_080708d4:
	push	{ lr }
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08070698
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x708E2, 0x2
	thumb_func_end sub_080708d4

	thumb_func_start sub_080708e4
sub_080708e4:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, [r2, #0x34]
	ldr		r0, _080708fc
	cmp		r3, r0
	bne		_080708fa
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	ldr		r0, _08070900
	strh	r0, [r2, #0x28]
_080708fa:
	bx		lr

_080708fc:	.4byte 0x68736D53
_08070900:	.4byte 0x00000101
	thumb_func_end sub_080708e4

	thumb_func_start sub_08070904
sub_08070904:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, [r2, #0x34]
	ldr		r0, _08070924
	cmp		r3, r0
	bne		_08070922
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov		r0, #0x2
	strh	r0, [r2, #0x28]
	ldr		r0, [r2, #0x4]
	ldr		r1, _08070928
	and		r0, r1
	str		r0, [r2, #0x4]
_08070922:
	bx		lr

_08070924:	.4byte 0x68736D53
_08070928:	.4byte 0x7FFFFFFF
	thumb_func_end sub_08070904

	thumb_func_start sub_0807092c
sub_0807092c:
	push	{ r4, r5, r6, r7, lr }
	ldrb	r5, [r0, #0x8]
	ldr		r4, [r0, #0x2c]
	cmp		r5, #0x0
	ble		_0807096e
	mov		r7, #0x80
_08070938:
	ldrb	r1, [r4, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070966
	mov		r6, #0x40
	add		r0, r6, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070966
	add		r0, r4, #0x0
	bl		sub_08070aa4
	strb	r7, [r4, #0x0]
	mov		r0, #0x2
	strb	r0, [r4, #0xf]
	strb	r6, [r4, #0x13]
	mov		r0, #0x16
	strb	r0, [r4, #0x19]
	add		r1, r4, #0x0
	add		r1, #0x24
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
_08070966:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_08070938
_0807096e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0807092c

	thumb_func_start sub_08070974
sub_08070974:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r1, _08070a3c
	mov		r0, #0x8f
	strh	r0, [r1, #0x0]
	ldr		r3, _08070a40
	mov		r2, #0x0
	strh	r2, [r3, #0x0]
	ldr		r0, _08070a44
	mov		r1, #0x8
	strb	r1, [r0, #0x0]
	add		r0, #0x6
	strb	r1, [r0, #0x0]
	add		r0, #0x10
	strb	r1, [r0, #0x0]
	sub		r0, #0x14
	mov		r1, #0x80
	strb	r1, [r0, #0x0]
	add		r0, #0x8
	strb	r1, [r0, #0x0]
	add		r0, #0x10
	strb	r1, [r0, #0x0]
	sub		r0, #0xd
	strb	r2, [r0, #0x0]
	mov		r0, #0x77
	strb	r0, [r3, #0x0]
	ldr		r0, _08070a48
	ldr		r4, [r0, #0x0]
	ldr		r6, [r4, #0x0]
	ldr		r0, _08070a4c
	cmp		r6, r0
	bne		_08070a34
	add		r0, r6, #0x1
	str		r0, [r4, #0x0]
	ldr		r1, _08070a50
	ldr		r0, _08070a54
	str		r0, [r1, #0x20]
	ldr		r0, _08070a58
	str		r0, [r1, #0x44]
	ldr		r0, _08070a5c
	str		r0, [r1, #0x4c]
	ldr		r0, _08070a60
	str		r0, [r1, #0x70]
	ldr		r0, _08070a64
	str		r0, [r1, #0x74]
	ldr		r0, _08070a68
	str		r0, [r1, #0x78]
	ldr		r0, _08070a6c
	str		r0, [r1, #0x7c]
	add		r2, r1, #0x0
	add		r2, #0x80
	ldr		r0, _08070a70
	str		r0, [r2, #0x0]
	add		r1, #0x84
	ldr		r0, _08070a74
	str		r0, [r1, #0x0]
	str		r5, [r4, #0x1c]
	ldr		r0, _08070a78
	str		r0, [r4, #0x28]
	ldr		r0, _08070a7c
	str		r0, [r4, #0x2c]
	ldr		r0, _08070a80
	str		r0, [r4, #0x30]
	ldr		r0, _08070a84
	mov		r1, #0x0
	strb	r0, [r4, #0xc]
	str		r1, [sp, #0x0]
	ldr		r2, _08070a88
	mov		r0, sp
	add		r1, r5, #0x0
	bl		sub_08071b6c
	mov		r0, #0x1
	strb	r0, [r5, #0x1]
	mov		r0, #0x11
	strb	r0, [r5, #0x1c]
	add		r1, r5, #0x0
	add		r1, #0x41
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	add		r1, #0x1b
	mov		r0, #0x22
	strb	r0, [r1, #0x0]
	add		r1, #0x25
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	add		r1, #0x1b
	mov		r0, #0x44
	strb	r0, [r1, #0x0]
	add		r1, #0x24
	mov		r0, #0x4
	strb	r0, [r1, #0x1]
	mov		r0, #0x88
	strb	r0, [r1, #0x1c]
	str		r6, [r4, #0x0]
_08070a34:
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08070a3c:	.4byte ControlSoundon_off_NR52_
_08070a40:	.4byte ControlStereo_Volume_Enable_NR50_NR51_
_08070a44:	.4byte Channel1Duty_Length_Envelope_NR11_NR12_ + 0x1
_08070a48:	.4byte 0x03007FF0
_08070a4c:	.4byte 0x68736D53
_08070a50:	.4byte 0x03006AA0
_08070a54:	.4byte sub_080718e8
_08070a58:	.4byte 0x080705ed
_08070a5c:	.4byte 0x08070601
_08070a60:	.4byte sub_08071a40
_08070a64:	.4byte 0x08070585
_08070a68:	.4byte 0x08070B85
_08070a6c:	.4byte 0x08070311
_08070a70:	.4byte 0x08070F4D
_08070a74:	.4byte 0x08071015
_08070a78:	.4byte sub_08071228
_08070a7c:	.4byte sub_08071170
_08070a80:	.4byte 0x080710c9
_08070a84:	.4byte 0x00000040
_08070a88:	.4byte 0x05000040

.incbin "base.gba", 0x70A8C, 0x4
	thumb_func_end sub_08070974

	thumb_func_start sub_08070a90
sub_08070a90:
	push	{ lr }
	ldr		r1, _08070aa0
	ldr		r1, [r1, #0x0]
	bl		sub_0807d7d4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70A9E, 0x2

_08070aa0:	.4byte 0x03006B28
	thumb_func_end sub_08070a90

	thumb_func_start sub_08070aa4
sub_08070aa4:
	push	{ lr }
	ldr		r1, _08070ab4
	ldr		r1, [r1, #0x0]
	bl		sub_0807d7d4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70AB2, 0x2

_08070ab4:	.4byte 0x03006B2C
	thumb_func_end sub_08070aa4

	thumb_func_start sub_08070ab8
sub_08070ab8:
	push	{ r4, r5, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r3, #0x0
	str		r3, [r5, #0x0]
	ldr		r2, _08070b50
	ldr		r0, [r2, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x12
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070ad4
	ldr		r0, _08070b54
	str		r0, [r2, #0x0]
_08070ad4:
	ldr		r1, _08070b58
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	sub		r1, #0x42
	mov		r0, #0x8f
	strh	r0, [r1, #0x0]
	sub		r1, #0x2
	ldr		r2, _08070b5c
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _08070b60
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3f
	and		r0, r1
	mov		r1, #0x40
	orr		r0, r1
	strb	r0, [r2, #0x0]
	ldr		r1, _08070b64
	mov		r2, #0xd4
	lsl		r2, r2, #0x2
	add		r0, r5, r2
	str		r0, [r1, #0x0]
	add		r1, #0x4
	ldr		r0, _08070b68
	str		r0, [r1, #0x0]
	ldr		r0, _08070b6c
	str		r5, [r0, #0x0]
	str		r3, [sp, #0x0]
	ldr		r2, _08070b70
	mov		r0, sp
	add		r1, r5, #0x0
	bl		sub_08071b6c
	mov		r0, #0x8
	strb	r0, [r5, #0x6]
	mov		r0, #0xf
	strb	r0, [r5, #0x7]
	ldr		r0, _08070b74
	str		r0, [r5, #0x38]
	ldr		r0, _08070b78
	str		r0, [r5, #0x28]
	str		r0, [r5, #0x2c]
	str		r0, [r5, #0x30]
	str		r0, [r5, #0x3c]
	ldr		r4, _08070b7c
	add		r0, r4, #0x0
	bl		sub_0806fea8
	str		r4, [r5, #0x34]
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	bl		sub_08070b84
	ldr		r0, _08070b80
	str		r0, [r5, #0x0]
	add		sp, #0x4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70B4E, 0x2

_08070b50:	.4byte DMA1WordCount
_08070b54:	.4byte 0x84400004
_08070b58:	.4byte DMA1Control
_08070b5c:	.4byte 0x00000B0E
_08070b60:	.4byte SoundPWMControl + 0x1
_08070b64:	.4byte DMA1SourceAddress
_08070b68:	.4byte ChannelAFIFO_Data0_3
_08070b6c:	.4byte 0x03007FF0
_08070b70:	.4byte 0x05000260
_08070b74:	.4byte 0x08070385
_08070b78:	.4byte 0x08071b61
_08070b7c:	.4byte 0x03006AA0
_08070b80:	.4byte 0x68736D53
	thumb_func_end sub_08070ab8

	thumb_func_start sub_08070b84
sub_08070b84:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldr		r0, _08070c04
	ldr		r4, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0xc
	and		r0, r2
	lsr		r2, r0, #0x10
	mov		r6, #0x0
	strb	r2, [r4, #0x8]
	ldr		r1, _08070c08
	sub		r0, r2, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r5, [r0, #0x0]
	str		r5, [r4, #0x10]
	mov		r0, #0xc6
	lsl		r0, r0, #0x3
	add		r1, r5, #0x0
	bl		sub_0807d80c
	strb	r0, [r4, #0xb]
	ldr		r0, _08070c0c
	mul		r0, r5
	ldr		r1, _08070c10
	add		r0, r0, r1
	ldr		r1, _08070c14
	bl		sub_0807d80c
	add		r1, r0, #0x0
	str		r1, [r4, #0x14]
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	bl		sub_0807d80c
	add		r0, #0x1
	asr		r0, r0, #0x1
	str		r0, [r4, #0x18]
	ldr		r0, _08070c18
	strh	r6, [r0, #0x0]
	ldr		r4, _08070c1c
	ldr		r0, _08070c20
	add		r1, r5, #0x0
	bl		sub_0807d80c
	neg		r0, r0
	strh	r0, [r4, #0x0]
	bl		sub_08070d78
	ldr		r1, _08070c24
_08070be8:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x9f
	beq		_08070be8
	ldr		r1, _08070c24
_08070bf0:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x9f
	bne		_08070bf0
	ldr		r1, _08070c18
	mov		r0, #0x80
	strh	r0, [r1, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70C02, 0x2

_08070c04:	.4byte 0x03007FF0
_08070c08:	.4byte 0x08115474
_08070c0c:	.4byte 0x00091D1B
_08070c10:	.4byte 0x00001388
_08070c14:	.4byte 0x00002710
_08070c18:	.4byte Timer0Control
_08070c1c:	.4byte Timer0Counter_Reload
_08070c20:	.4byte 0x00044940
_08070c24:	.4byte VerticalCounter_LY_
	thumb_func_end sub_08070b84

	thumb_func_start sub_08070c28
sub_08070c28:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r0, _08070cb4
	ldr		r5, [r0, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r0, _08070cb8
	cmp		r1, r0
	bne		_08070cae
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	mov		r4, #0xff
	and		r4, r3
	cmp		r4, #0x0
	beq		_08070c4a
	mov		r0, #0x7f
	and		r4, r0
	strb	r4, [r5, #0x5]
_08070c4a:
	mov		r4, #0xf0
	lsl		r4, r4, #0x4
	and		r4, r3
	cmp		r4, #0x0
	beq		_08070c6a
	lsr		r0, r4, #0x8
	strb	r0, [r5, #0x6]
	mov		r4, #0xc
	add		r0, r5, #0x0
	add		r0, #0x50
	mov		r1, #0x0
_08070c60:
	strb	r1, [r0, #0x0]
	sub		r4, #0x1
	add		r0, #0x40
	cmp		r4, #0x0
	bne		_08070c60
_08070c6a:
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r3
	cmp		r4, #0x0
	beq		_08070c78
	lsr		r0, r4, #0xc
	strb	r0, [r5, #0x7]
_08070c78:
	mov		r4, #0xb0
	lsl		r4, r4, #0x10
	and		r4, r3
	cmp		r4, #0x0
	beq		_08070c96
	mov		r0, #0xc0
	lsl		r0, r0, #0xe
	and		r0, r4
	lsr		r4, r0, #0xe
	ldr		r2, _08070cbc
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3f
	and		r0, r1
	orr		r0, r4
	strb	r0, [r2, #0x0]
_08070c96:
	mov		r4, #0xf0
	lsl		r4, r4, #0xc
	and		r4, r3
	cmp		r4, #0x0
	beq		_08070caa
	bl		sub_08070d14
	add		r0, r4, #0x0
	bl		sub_08070b84
_08070caa:
	ldr		r0, _08070cb8
	str		r0, [r5, #0x0]
_08070cae:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08070cb4:	.4byte 0x03007FF0
_08070cb8:	.4byte 0x68736D53
_08070cbc:	.4byte SoundPWMControl + 0x1
	thumb_func_end sub_08070c28

	thumb_func_start sub_08070cc0
sub_08070cc0:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _08070d0c
	ldr		r6, [r0, #0x0]
	ldr		r1, [r6, #0x0]
	ldr		r0, _08070d10
	cmp		r1, r0
	bne		_08070d06
	add		r0, r1, #0x1
	str		r0, [r6, #0x0]
	mov		r5, #0xc
	add		r4, r6, #0x0
	add		r4, #0x50
	mov		r0, #0x0
_08070cda:
	strb	r0, [r4, #0x0]
	sub		r5, #0x1
	add		r4, #0x40
	cmp		r5, #0x0
	bgt		_08070cda
	ldr		r4, [r6, #0x1c]
	cmp		r4, #0x0
	beq		_08070d02
	mov		r5, #0x1
	mov		r7, #0x0
_08070cee:
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, [r6, #0x2c]
	bl		sub_0807d7d4
	strb	r7, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x40
	cmp		r5, #0x4
	ble		_08070cee
_08070d02:
	ldr		r0, _08070d10
	str		r0, [r6, #0x0]
_08070d06:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08070d0c:	.4byte 0x03007FF0
_08070d10:	.4byte 0x68736D53
	thumb_func_end sub_08070cc0

	thumb_func_start sub_08070d14
sub_08070d14:
	push	{ lr }
	sub		sp, #0x4
	ldr		r0, _08070d60
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x0]
	ldr		r3, _08070d64
	add		r0, r1, r3
	cmp		r0, #0x1
	bhi		_08070d5a
	add		r0, r1, #0x0
	add		r0, #0xa
	str		r0, [r2, #0x0]
	ldr		r3, _08070d68
	ldr		r0, [r3, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x12
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070d3e
	ldr		r0, _08070d6c
	str		r0, [r3, #0x0]
_08070d3e:
	ldr		r1, _08070d70
	mov		r3, #0x80
	lsl		r3, r3, #0x3
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xd4
	lsl		r0, r0, #0x2
	add		r1, r2, r0
	ldr		r2, _08070d74
	mov		r0, sp
	bl		sub_08071b6c
_08070d5a:
	add		sp, #0x4
	pop		{ r0 }
	bx		r0

_08070d60:	.4byte 0x03007FF0
_08070d64:	.4byte 0x978C92AD
_08070d68:	.4byte DMA1WordCount
_08070d6c:	.4byte 0x84400004
_08070d70:	.4byte DMA1Control
_08070d74:	.4byte 0x0500018C
	thumb_func_end sub_08070d14

	thumb_func_start sub_08070d78
sub_08070d78:
	push	{ r4, lr }
	ldr		r0, _08070da4
	ldr		r2, [r0, #0x0]
	ldr		r3, [r2, #0x0]
	ldr		r0, _08070da8
	cmp		r3, r0
	beq		_08070d9c
	ldr		r1, _08070dac
	mov		r4, #0xb6
	lsl		r4, r4, #0x8
	add		r0, r4, #0x0
	strh	r0, [r1, #0x0]
	ldrb	r0, [r2, #0x4]
	mov		r0, #0x0
	strb	r0, [r2, #0x4]
	add		r0, r3, #0x0
	sub		r0, #0xa
	str		r0, [r2, #0x0]
_08070d9c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70DA2, 0x2

_08070da4:	.4byte 0x03007FF0
_08070da8:	.4byte 0x68736D53
_08070dac:	.4byte DMA1Control
	thumb_func_end sub_08070d78

	thumb_func_start sub_08070db0
sub_08070db0:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r4, r2, #0x18
	cmp		r4, #0x0
	beq		_08070e14
	cmp		r4, #0x10
	bls		_08070dc4
	mov		r4, #0x10
_08070dc4:
	ldr		r0, _08070e1c
	ldr		r5, [r0, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r0, _08070e20
	cmp		r1, r0
	bne		_08070e14
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	add		r0, r7, #0x0
	bl		sub_08070aa4
	str		r6, [r7, #0x2c]
	strb	r4, [r7, #0x8]
	mov		r0, #0x80
	lsl		r0, r0, #0x18
	str		r0, [r7, #0x4]
	cmp		r4, #0x0
	beq		_08070df8
	mov		r1, #0x0
_08070dea:
	strb	r1, [r6, #0x0]
	sub		r0, r4, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	add		r6, #0x50
	cmp		r4, #0x0
	bne		_08070dea
_08070df8:
	ldr		r0, [r5, #0x20]
	cmp		r0, #0x0
	beq		_08070e08
	str		r0, [r7, #0x38]
	ldr		r0, [r5, #0x24]
	str		r0, [r7, #0x3c]
	mov		r0, #0x0
	str		r0, [r5, #0x20]
_08070e08:
	str		r7, [r5, #0x24]
	ldr		r0, _08070e24
	str		r0, [r5, #0x20]
	ldr		r0, _08070e20
	str		r0, [r5, #0x0]
	str		r0, [r7, #0x34]
_08070e14:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x70E1A, 0x2

_08070e1c:	.4byte 0x03007FF0
_08070e20:	.4byte 0x68736D53
_08070e24:	.4byte 0x080700a9
	thumb_func_end sub_08070db0

	thumb_func_start sub_08070e28
sub_08070e28:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	ldr		r1, [r5, #0x34]
	ldr		r0, _08070f08
	cmp		r1, r0
	bne		_08070efe
	ldrb	r0, [r5, #0xb]
	ldrb	r2, [r7, #0x2]
	cmp		r0, #0x0
	beq		_08070e6a
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08070e54
	ldr		r1, [r5, #0x2c]
	mov		r0, #0x40
	ldrb	r1, [r1, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_08070e60
_08070e54:
	ldr		r1, [r5, #0x4]
	ldrh	r0, [r5, #0x4]
	cmp		r0, #0x0
	beq		_08070e6a
	cmp		r1, #0x0
	blt		_08070e6a
_08070e60:
	ldrb	r0, [r7, #0x2]
	add		r2, r0, #0x0
	ldrb	r0, [r5, #0x9]
	cmp		r0, r2
	bhi		_08070efe
_08070e6a:
	ldr		r0, [r5, #0x34]
	add		r0, #0x1
	str		r0, [r5, #0x34]
	mov		r1, #0x0
	str		r1, [r5, #0x4]
	str		r7, [r5, #0x0]
	ldr		r0, [r7, #0x4]
	str		r0, [r5, #0x30]
	strb	r2, [r5, #0x9]
	str		r1, [r5, #0xc]
	mov		r0, #0x96
	strh	r0, [r5, #0x1c]
	strh	r0, [r5, #0x20]
	add		r0, #0x6a
	strh	r0, [r5, #0x1e]
	strh	r1, [r5, #0x22]
	strh	r1, [r5, #0x24]
	mov		r6, #0x0
	ldr		r4, [r5, #0x2c]
	ldrb	r1, [r7, #0x0]
	cmp		r6, r1
	bge		_08070eca
	ldrb	r0, [r5, #0x8]
	cmp		r6, r0
	bge		_08070eea
	mov		r8, r6
_08070e9e:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08070310
	mov		r0, #0xc0
	strb	r0, [r4, #0x0]
	mov		r1, r8
	str		r1, [r4, #0x20]
	lsl		r1, r6, #0x2
	add		r0, r7, #0x0
	add		r0, #0x8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r4, #0x40]
	add		r6, #0x1
	add		r4, #0x50
	ldrb	r0, [r7, #0x0]
	cmp		r6, r0
	bge		_08070eca
	ldrb	r1, [r5, #0x8]
	cmp		r6, r1
	blt		_08070e9e
_08070eca:
	ldrb	r0, [r5, #0x8]
	cmp		r6, r0
	bge		_08070eea
	mov		r1, #0x0
	mov		r8, r1
_08070ed4:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08070310
	mov		r0, r8
	strb	r0, [r4, #0x0]
	add		r6, #0x1
	add		r4, #0x50
	ldrb	r1, [r5, #0x8]
	cmp		r6, r1
	blt		_08070ed4
_08070eea:
	mov		r0, #0x80
	ldrb	r1, [r7, #0x3]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070efa
	ldrb	r0, [r7, #0x3]
	bl		sub_08070c28
_08070efa:
	ldr		r0, _08070f08
	str		r0, [r5, #0x34]
_08070efe:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08070f08:	.4byte 0x68736D53
	thumb_func_end sub_08070e28

	thumb_func_start sub_08070f0c
sub_08070f0c:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	ldr		r1, [r6, #0x34]
	ldr		r0, _08070f48
	cmp		r1, r0
	bne		_08070f42
	add		r0, r1, #0x1
	str		r0, [r6, #0x34]
	ldr		r0, [r6, #0x4]
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	orr		r0, r1
	str		r0, [r6, #0x4]
	ldrb	r4, [r6, #0x8]
	ldr		r5, [r6, #0x2c]
	cmp		r4, #0x0
	ble		_08070f3e
_08070f2e:
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08070310
	sub		r4, #0x1
	add		r5, #0x50
	cmp		r4, #0x0
	bgt		_08070f2e
_08070f3e:
	ldr		r0, _08070f48
	str		r0, [r6, #0x34]
_08070f42:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08070f48:	.4byte 0x68736D53
	thumb_func_end sub_08070f0c

	thumb_func_start sub_08070f4c
sub_08070f4c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldrh	r1, [r6, #0x24]
	cmp		r1, #0x0
	beq		_0807100e
	ldrh	r0, [r6, #0x26]
	sub		r0, #0x1
	strh	r0, [r6, #0x26]
	ldr		r3, _08070f8c
	add		r2, r3, #0x0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0x0
	bne		_0807100e
	strh	r1, [r6, #0x26]
	ldrh	r1, [r6, #0x28]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070f90
	add		r0, r1, #0x0
	add		r0, #0x10
	strh	r0, [r6, #0x28]
	and		r0, r2
	cmp		r0, #0xff
	bls		_08070fe2
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r6, #0x28]
	strh	r3, [r6, #0x24]
	b		_08070fe2

.incbin "base.gba", 0x70F8A, 0x2

_08070f8c:	.4byte 0x0000FFFF

_08070f90:
	add		r0, r1, #0x0
	sub		r0, #0x10
	strh	r0, [r6, #0x28]
	and		r0, r2
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bgt		_08070fe2
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	cmp		r5, #0x0
	ble		_08070fc2
_08070fa6:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08070310
	mov		r0, #0x1
	ldrh	r7, [r6, #0x28]
	and		r0, r7
	cmp		r0, #0x0
	bne		_08070fba
	strb	r0, [r4, #0x0]
_08070fba:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_08070fa6
_08070fc2:
	mov		r0, #0x1
	ldrh	r1, [r6, #0x28]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08070fd6
	ldr		r0, [r6, #0x4]
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	orr		r0, r1
	b		_08070fda
_08070fd6:
	mov		r0, #0x80
	lsl		r0, r0, #0x18
_08070fda:
	str		r0, [r6, #0x4]
	mov		r0, #0x0
	strh	r0, [r6, #0x24]
	b		_0807100e
_08070fe2:
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	cmp		r5, #0x0
	ble		_0807100e
	mov		r3, #0x80
	mov		r7, #0x0
	mov		r2, #0x3
_08070ff0:
	ldrb	r1, [r4, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071006
	ldrh	r7, [r6, #0x28]
	lsr		r0, r7, #0x2
	strb	r0, [r4, #0x13]
	add		r0, r1, #0x0
	orr		r0, r2
	strb	r0, [r4, #0x0]
_08071006:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_08070ff0
_0807100e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08070f4c

	thumb_func_start sub_08071014
sub_08071014:
	push	{ r4, lr }
	add		r2, r1, #0x0
	mov		r0, #0x1
	ldrb	r1, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071078
	ldrb	r3, [r2, #0x13]
	ldrb	r1, [r2, #0x12]
	add		r0, r3, #0x0
	mul		r0, r1
	lsr		r3, r0, #0x5
	ldrb	r4, [r2, #0x18]
	cmp		r4, #0x1
	bne		_0807103c
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	add		r0, #0x80
	mul		r0, r3
	lsr		r3, r0, #0x7
_0807103c:
	mov		r0, #0x14
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x1
	mov		r1, #0x15
	ldrsb	r1, [r2, r1]
	add		r1, r0, r1
	cmp		r4, #0x2
	bne		_08071052
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	add		r1, r1, r0
_08071052:
	mov		r0, #0x80
	neg		r0, r0
	cmp		r1, r0
	bge		_0807105e
	add		r1, r0, #0x0
	b		_08071064
_0807105e:
	cmp		r1, #0x7f
	ble		_08071064
	mov		r1, #0x7f
_08071064:
	add		r0, r1, #0x0
	add		r0, #0x80
	mul		r0, r3
	lsr		r0, r0, #0x8
	strb	r0, [r2, #0x10]
	mov		r0, #0x7f
	sub		r0, r0, r1
	mul		r0, r3
	lsr		r0, r0, #0x8
	strb	r0, [r2, #0x11]
_08071078:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x4
	and		r0, r1
	add		r3, r1, #0x0
	cmp		r0, #0x0
	beq		_080710bc
	mov		r0, #0xe
	ldrsb	r0, [r2, r0]
	ldrb	r1, [r2, #0xf]
	mul		r0, r1
	mov		r1, #0xc
	ldrsb	r1, [r2, r1]
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	mov		r0, #0xa
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	mov		r0, #0xb
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	ldrb	r0, [r2, #0xd]
	add		r1, r0, r1
	ldrb	r0, [r2, #0x18]
	cmp		r0, #0x0
	bne		_080710b6
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x4
	add		r1, r1, r0
_080710b6:
	asr		r0, r1, #0x8
	strb	r0, [r2, #0x8]
	strb	r1, [r2, #0x9]
_080710bc:
	mov		r0, #0xfa
	and		r0, r3
	strb	r0, [r2, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	push	{ r4, r5, r6, r7, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r12, r2
	cmp		r0, #0x4
	bne		_08071100
	cmp		r5, #0x14
	bhi		_080710e4
	mov		r5, #0x0
	b		_080710f2
_080710e4:
	add		r0, r5, #0x0
	sub		r0, #0x15
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	cmp		r5, #0x3b
	bls		_080710f2
	mov		r5, #0x3b
_080710f2:
	ldr		r0, _080710fc
	add		r0, r5, r0
	ldrb	r0, [r0, #0x0]
	b		_08071162

.incbin "base.gba", 0x710FA, 0x2

_080710fc:	.4byte 0x08115528

_08071100:
	cmp		r5, #0x23
	bhi		_0807110c
	mov		r0, #0x0
	mov		r12, r0
	mov		r5, #0x0
	b		_0807111e
_0807110c:
	add		r0, r5, #0x0
	sub		r0, #0x24
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	cmp		r5, #0x82
	bls		_0807111e
	mov		r5, #0x82
	mov		r1, #0xff
	mov		r12, r1
_0807111e:
	ldr		r3, _08071168
	add		r0, r5, r3
	ldrb	r6, [r0, #0x0]
	ldr		r4, _0807116c
	mov		r2, #0xf
	add		r0, r6, #0x0
	and		r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r4
	mov		r7, #0x0
	ldrsh	r1, [r0, r7]
	asr		r0, r6, #0x4
	add		r6, r1, #0x0
	asr		r6, r0
	add		r0, r5, #0x1
	add		r0, r0, r3
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x0
	and		r0, r2
	lsl		r0, r0, #0x1
	add		r0, r0, r4
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	asr		r1, r1, #0x4
	asr		r0, r1
	sub		r0, r0, r6
	mov		r7, r12
	mul		r7, r0
	add		r0, r7, #0x0
	asr		r0, r0, #0x8
	add		r0, r6, r0
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	add		r0, r0, r1
_08071162:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08071168:	.4byte 0x0811548c
_0807116c:	.4byte 0x08115510
	thumb_func_end sub_08071014

	thumb_func_start sub_08071170
sub_08071170:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, #0x0
	cmp		r0, #0x2
	beq		_08071198
	cmp		r0, #0x2
	bgt		_08071184
	cmp		r0, #0x1
	beq		_0807118a
	b		_080711ac
_08071184:
	cmp		r1, #0x3
	beq		_080711a0
	b		_080711ac
_0807118a:
	ldr		r1, _08071194
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	b		_080711b4

_08071194:	.4byte Channel1Duty_Length_Envelope_NR11_NR12_ + 0x1

_08071198:
	ldr		r1, _0807119c
	b		_080711ae

_0807119c:	.4byte Channel2Duty_Length_Envelope_NR21_NR22_ + 0x1

_080711a0:
	ldr		r1, _080711a8
	mov		r0, #0x0
	b		_080711b6

.incbin "base.gba", 0x711A6, 0x2

_080711a8:	.4byte Channel3Stop_WaveRAMselect_NR30_

_080711ac:
	ldr		r1, _080711bc
_080711ae:
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	add		r1, #0x4
_080711b4:
	mov		r0, #0x80
_080711b6:
	strb	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x711BA, 0x2

_080711bc:	.4byte Channel4Length_Envelope_NR41_NR42_ + 0x1
	thumb_func_end sub_08071170

	thumb_func_start sub_080711c0
sub_080711c0:
	push	{ r4, lr }
	add		r1, r0, #0x0
	ldrb	r0, [r1, #0x2]
	lsl		r2, r0, #0x18
	lsr		r4, r2, #0x18
	ldrb	r3, [r1, #0x3]
	lsl		r0, r3, #0x18
	lsr		r3, r0, #0x18
	cmp		r4, r3
	bcc		_080711e0
	lsr		r0, r2, #0x19
	cmp		r0, r3
	bcc		_080711ec
	mov		r0, #0xf
	strb	r0, [r1, #0x1b]
	b		_080711fa
_080711e0:
	lsr		r0, r0, #0x19
	cmp		r0, r4
	bcc		_080711ec
	mov		r0, #0xf0
	strb	r0, [r1, #0x1b]
	b		_080711fa
_080711ec:
	mov		r0, #0xff
	strb	r0, [r1, #0x1b]
	ldrb	r2, [r1, #0x3]
	ldrb	r3, [r1, #0x2]
	add		r0, r2, r3
	lsr		r0, r0, #0x4
	b		_0807120a
_080711fa:
	ldrb	r2, [r1, #0x3]
	ldrb	r3, [r1, #0x2]
	add		r0, r2, r3
	lsr		r0, r0, #0x4
	strb	r0, [r1, #0xa]
	cmp		r0, #0xf
	bls		_0807120c
	mov		r0, #0xf
_0807120a:
	strb	r0, [r1, #0xa]
_0807120c:
	ldrb	r2, [r1, #0x6]
	ldrb	r3, [r1, #0xa]
	add		r0, r2, #0x0
	mul		r0, r3
	add		r0, #0xf
	asr		r0, r0, #0x4
	strb	r0, [r1, #0x19]
	ldrb	r0, [r1, #0x1c]
	ldrb	r2, [r1, #0x1b]
	and		r0, r2
	strb	r0, [r1, #0x1b]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080711c0

	thumb_func_start sub_08071228
sub_08071228:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	ldr		r0, _08071248
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	ldrb	r0, [r0, #0xa]
	cmp		r0, #0x0
	beq		_0807124c
	sub		r0, #0x1
	ldr		r1, [sp, #0x4]
	strb	r0, [r1, #0xa]
	b		_08071252

_08071248:	.4byte 0x03007FF0

_0807124c:
	mov		r0, #0xe
	ldr		r2, [sp, #0x4]
	strb	r0, [r2, #0xa]
_08071252:
	mov		r6, #0x1
	ldr		r0, [sp, #0x4]
	ldr		r4, [r0, #0x1c]
_08071258:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	and		r0, r1
	add		r2, r6, #0x1
	mov		r10, r2
	mov		r2, #0x40
	add		r2, r2, r4
	mov		r9, r2
	cmp		r0, #0x0
	bne		_0807126e
	b		_08071658
_0807126e:
	cmp		r6, #0x2
	beq		_080712a0
	cmp		r6, #0x2
	bgt		_0807127c
	cmp		r6, #0x1
	beq		_08071282
	b		_080712d8
_0807127c:
	cmp		r6, #0x3
	beq		_080712b8
	b		_080712d8
_08071282:
	ldr		r0, _08071294
	str		r0, [sp, #0x8]
	ldr		r7, _08071298
	ldr		r2, _0807129c
	str		r2, [sp, #0xC]
	add		r0, #0x4
	str		r0, [sp, #0x10]
	add		r2, #0x2
	b		_080712e8

_08071294:	.4byte Channel1Sweepregister_NR10_
_08071298:	.4byte Channel1Duty_Length_Envelope_NR11_NR12_
_0807129c:	.4byte Channel1Duty_Length_Envelope_NR11_NR12_ + 0x1

_080712a0:
	ldr		r0, _080712ac
	str		r0, [sp, #0x8]
	ldr		r7, _080712b0
	ldr		r2, _080712b4
	b		_080712e0

.incbin "base.gba", 0x712AA, 0x2

_080712ac:	.4byte Channel1Sweepregister_NR10_ + 0x1
_080712b0:	.4byte Channel2Duty_Length_Envelope_NR21_NR22_
_080712b4:	.4byte Channel2Duty_Length_Envelope_NR21_NR22_ + 0x1

_080712b8:
	ldr		r0, _080712cc
	str		r0, [sp, #0x8]
	ldr		r7, _080712d0
	ldr		r2, _080712d4
	str		r2, [sp, #0xC]
	add		r0, #0x4
	str		r0, [sp, #0x10]
	add		r2, #0x2
	b		_080712e8

.incbin "base.gba", 0x712CA, 0x2

_080712cc:	.4byte Channel3Stop_WaveRAMselect_NR30_
_080712d0:	.4byte Channel3Length_Volume_NR31_NR32_
_080712d4:	.4byte Channel3Length_Volume_NR31_NR32_ + 0x1

_080712d8:
	ldr		r0, _08071338
	str		r0, [sp, #0x8]
	ldr		r7, _0807133c
	ldr		r2, _08071340
_080712e0:
	str		r2, [sp, #0xC]
	add		r0, #0xb
	str		r0, [sp, #0x10]
	add		r2, #0x4
_080712e8:
	str		r2, [sp, #0x14]
	ldr		r0, [sp, #0x4]
	ldrb	r0, [r0, #0xa]
	str		r0, [sp, #0x0]
	ldr		r2, [sp, #0xC]
	ldrb	r0, [r2, #0x0]
	mov		r8, r0
	add		r2, r1, #0x0
	mov		r0, #0x80
	and		r0, r2
	cmp		r0, #0x0
	beq		_080713de
	mov		r3, #0x40
	add		r0, r3, #0x0
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	add		r0, r6, #0x1
	mov		r10, r0
	mov		r1, #0x40
	add		r1, r1, r4
	mov		r9, r1
	cmp		r5, #0x0
	bne		_08071402
	mov		r0, #0x3
	strb	r0, [r4, #0x0]
	strb	r0, [r4, #0x1d]
	add		r0, r4, #0x0
	str		r3, [sp, #0x18]
	bl		sub_080711c0
	ldr		r3, [sp, #0x18]
	cmp		r6, #0x2
	beq		_08071350
	cmp		r6, #0x2
	bgt		_08071344
	cmp		r6, #0x1
	beq		_0807134a
	b		_080713a4

.incbin "base.gba", 0x71336, 0x2

_08071338:	.4byte Channel3Stop_WaveRAMselect_NR30_ + 0x1
_0807133c:	.4byte Channel4Length_Envelope_NR41_NR42_
_08071340:	.4byte Channel4Length_Envelope_NR41_NR42_ + 0x1

_08071344:
	cmp		r6, #0x3
	beq		_0807135c
	b		_080713a4
_0807134a:
	ldrb	r0, [r4, #0x1f]
	ldr		r2, [sp, #0x8]
	strb	r0, [r2, #0x0]
_08071350:
	ldr		r0, [r4, #0x24]
	lsl		r0, r0, #0x6
	ldrb	r1, [r4, #0x1e]
	add		r0, r1, r0
	strb	r0, [r7, #0x0]
	b		_080713b0
_0807135c:
	ldr		r1, [r4, #0x24]
	ldr		r0, [r4, #0x28]
	cmp		r1, r0
	beq		_08071384
	ldr		r2, [sp, #0x8]
	strb	r3, [r2, #0x0]
	ldr		r1, _08071398
	ldr		r2, [r4, #0x24]
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	add		r1, #0x4
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x0]
	add		r1, #0x4
	ldr		r0, [r2, #0x8]
	str		r0, [r1, #0x0]
	add		r1, #0x4
	ldr		r0, [r2, #0xc]
	str		r0, [r1, #0x0]
	str		r2, [r4, #0x28]
_08071384:
	ldr		r0, [sp, #0x8]
	strb	r5, [r0, #0x0]
	ldrb	r0, [r4, #0x1e]
	strb	r0, [r7, #0x0]
	ldrb	r0, [r4, #0x1e]
	cmp		r0, #0x0
	beq		_0807139c
	mov		r0, #0xc0
	b		_080713be

.incbin "base.gba", 0x71396, 0x2

_08071398:	.4byte Channel3WavePatternRAM_2banks___

_0807139c:
	mov		r1, #0x80
	neg		r1, r1
	strb	r1, [r4, #0x1a]
	b		_080713c0
_080713a4:
	ldrb	r0, [r4, #0x1e]
	strb	r0, [r7, #0x0]
	ldr		r0, [r4, #0x24]
	lsl		r0, r0, #0x3
	ldr		r2, [sp, #0x10]
	strb	r0, [r2, #0x0]
_080713b0:
	ldrb	r0, [r4, #0x4]
	add		r0, #0x8
	mov		r8, r0
	ldrb	r0, [r4, #0x1e]
	cmp		r0, #0x0
	beq		_080713be
	mov		r0, #0x40
_080713be:
	strb	r0, [r4, #0x1a]
_080713c0:
	ldrb	r1, [r4, #0x4]
	mov		r2, #0x0
	strb	r1, [r4, #0xb]
	mov		r0, #0xff
	and		r0, r1
	add		r1, r6, #0x1
	mov		r10, r1
	mov		r1, #0x40
	add		r1, r1, r4
	mov		r9, r1
	cmp		r0, #0x0
	bne		_080713da
	b		_08071516
_080713da:
	strb	r2, [r4, #0x9]
	b		_08071544
_080713de:
	mov		r0, #0x4
	and		r0, r2
	cmp		r0, #0x0
	beq		_08071410
	ldrb	r0, [r4, #0xd]
	sub		r0, #0x1
	strb	r0, [r4, #0xd]
	mov		r2, #0xff
	and		r0, r2
	lsl		r0, r0, #0x18
	add		r1, r6, #0x1
	mov		r10, r1
	mov		r2, #0x40
	add		r2, r2, r4
	mov		r9, r2
	cmp		r0, #0x0
	ble		_08071402
	b		_08071556
_08071402:
	lsl		r0, r6, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08071170
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	b		_08071654
_08071410:
	mov		r0, #0x40
	and		r0, r1
	add		r2, r6, #0x1
	mov		r10, r2
	mov		r2, #0x40
	add		r2, r2, r4
	mov		r9, r2
	cmp		r0, #0x0
	beq		_08071450
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071450
	mov		r0, #0xfc
	and		r0, r1
	mov		r2, #0x0
	strb	r0, [r4, #0x0]
	ldrb	r1, [r4, #0x7]
	strb	r1, [r4, #0xb]
	mov		r0, #0xff
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071482
	mov		r0, #0x1
	ldrb	r1, [r4, #0x1d]
	orr		r0, r1
	strb	r0, [r4, #0x1d]
	cmp		r6, #0x3
	beq		_08071544
	ldrb	r2, [r4, #0x7]
	mov		r8, r2
	b		_08071544
_08071450:
	ldrb	r0, [r4, #0xb]
	cmp		r0, #0x0
	bne		_08071544
	cmp		r6, #0x3
	bne		_08071462
	mov		r0, #0x1
	ldrb	r1, [r4, #0x1d]
	orr		r0, r1
	strb	r0, [r4, #0x1d]
_08071462:
	add		r0, r4, #0x0
	bl		sub_080711c0
	mov		r0, #0x3
	ldrb	r2, [r4, #0x0]
	and		r0, r2
	cmp		r0, #0x0
	bne		_080714b6
	ldrb	r0, [r4, #0x9]
	sub		r0, #0x1
	strb	r0, [r4, #0x9]
	mov		r1, #0xff
	and		r0, r1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bgt		_080714b2
_08071482:
	ldrb	r2, [r4, #0xc]
	ldrb	r1, [r4, #0xa]
	add		r0, r2, #0x0
	mul		r0, r1
	add		r0, #0xff
	asr		r0, r0, #0x8
	mov		r1, #0x0
	strb	r0, [r4, #0x9]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_08071402
	mov		r0, #0x4
	ldrb	r2, [r4, #0x0]
	orr		r0, r2
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	ldrb	r1, [r4, #0x1d]
	orr		r0, r1
	strb	r0, [r4, #0x1d]
	cmp		r6, #0x3
	beq		_08071556
	mov		r2, #0x8
	mov		r8, r2
	b		_08071556
_080714b2:
	ldrb	r0, [r4, #0x7]
	b		_08071542
_080714b6:
	cmp		r0, #0x1
	bne		_080714c2
_080714ba:
	ldrb	r0, [r4, #0x19]
	strb	r0, [r4, #0x9]
	mov		r0, #0x7
	b		_08071542
_080714c2:
	cmp		r0, #0x2
	bne		_08071506
	ldrb	r0, [r4, #0x9]
	sub		r0, #0x1
	strb	r0, [r4, #0x9]
	mov		r1, #0xff
	and		r0, r1
	lsl		r0, r0, #0x18
	ldrb	r2, [r4, #0x19]
	lsl		r1, r2, #0x18
	cmp		r0, r1
	bgt		_08071502
_080714da:
	ldrb	r0, [r4, #0x6]
	cmp		r0, #0x0
	bne		_080714ea
	mov		r0, #0xfc
	ldrb	r1, [r4, #0x0]
	and		r0, r1
	strb	r0, [r4, #0x0]
	b		_08071482
_080714ea:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x1
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	ldrb	r2, [r4, #0x1d]
	orr		r0, r2
	strb	r0, [r4, #0x1d]
	cmp		r6, #0x3
	beq		_080714ba
	mov		r0, #0x8
	mov		r8, r0
	b		_080714ba
_08071502:
	ldrb	r0, [r4, #0x5]
	b		_08071542
_08071506:
	ldrb	r0, [r4, #0x9]
	add		r0, #0x1
	strb	r0, [r4, #0x9]
	mov		r1, #0xff
	and		r0, r1
	ldrb	r2, [r4, #0xa]
	cmp		r0, r2
	bcc		_08071540
_08071516:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x1
	mov		r2, #0x0
	strb	r0, [r4, #0x0]
	ldrb	r1, [r4, #0x5]
	strb	r1, [r4, #0xb]
	mov		r0, #0xff
	and		r0, r1
	cmp		r0, #0x0
	beq		_080714da
	mov		r0, #0x1
	ldrb	r1, [r4, #0x1d]
	orr		r0, r1
	strb	r0, [r4, #0x1d]
	ldrb	r0, [r4, #0xa]
	strb	r0, [r4, #0x9]
	cmp		r6, #0x3
	beq		_08071544
	ldrb	r2, [r4, #0x5]
	mov		r8, r2
	b		_08071544
_08071540:
	ldrb	r0, [r4, #0x4]
_08071542:
	strb	r0, [r4, #0xb]
_08071544:
	ldrb	r0, [r4, #0xb]
	sub		r0, #0x1
	strb	r0, [r4, #0xb]
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x0
	bne		_08071556
	sub		r0, #0x1
	str		r0, [sp, #0x0]
	b		_08071450
_08071556:
	mov		r0, #0x2
	ldrb	r1, [r4, #0x1d]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080715ce
	cmp		r6, #0x3
	bgt		_08071596
	mov		r0, #0x8
	ldrb	r2, [r4, #0x1]
	and		r0, r2
	cmp		r0, #0x0
	beq		_08071596
	ldr		r0, _08071580
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3f
	bgt		_08071588
	ldr		r0, [r4, #0x20]
	add		r0, #0x2
	ldr		r1, _08071584
	b		_08071592

.incbin "base.gba", 0x7157E, 0x2

_08071580:	.4byte SoundPWMControl + 0x1
_08071584:	.4byte 0x000007FC

_08071588:
	cmp		r0, #0x7f
	bgt		_08071596
	ldr		r0, [r4, #0x20]
	add		r0, #0x1
	ldr		r1, _080715a4
_08071592:
	and		r0, r1
	str		r0, [r4, #0x20]
_08071596:
	cmp		r6, #0x4
	beq		_080715a8
	ldr		r0, [r4, #0x20]
	ldr		r1, [sp, #0x10]
	strb	r0, [r1, #0x0]
	b		_080715b6

.incbin "base.gba", 0x715A2, 0x2

_080715a4:	.4byte 0x000007FE

_080715a8:
	ldr		r2, [sp, #0x10]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x8
	and		r1, r0
	ldr		r0, [r4, #0x20]
	orr		r0, r1
	strb	r0, [r2, #0x0]
_080715b6:
	mov		r0, #0xc0
	ldrb	r1, [r4, #0x1a]
	and		r0, r1
	add		r1, r4, #0x0
	add		r1, #0x21
	ldrb	r1, [r1, #0x0]
	add		r0, r1, r0
	strb	r0, [r4, #0x1a]
	mov		r2, #0xff
	and		r0, r2
	ldr		r1, [sp, #0x14]
	strb	r0, [r1, #0x0]
_080715ce:
	mov		r0, #0x1
	ldrb	r2, [r4, #0x1d]
	and		r0, r2
	cmp		r0, #0x0
	beq		_08071654
	ldr		r1, _08071618
	ldrb	r0, [r1, #0x0]
	ldrb	r2, [r4, #0x1c]
	bic		r0, r2
	ldrb	r2, [r4, #0x1b]
	orr		r0, r2
	strb	r0, [r1, #0x0]
	cmp		r6, #0x3
	bne		_08071620
	ldr		r0, _0807161c
	ldrb	r1, [r4, #0x9]
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	ldr		r2, [sp, #0xC]
	strb	r0, [r2, #0x0]
	mov		r1, #0x80
	add		r0, r1, #0x0
	ldrb	r2, [r4, #0x1a]
	and		r0, r2
	cmp		r0, #0x0
	beq		_08071654
	ldr		r0, [sp, #0x8]
	strb	r1, [r0, #0x0]
	ldrb	r0, [r4, #0x1a]
	ldr		r1, [sp, #0x14]
	strb	r0, [r1, #0x0]
	mov		r0, #0x7f
	ldrb	r2, [r4, #0x1a]
	and		r0, r2
	strb	r0, [r4, #0x1a]
	b		_08071654

.incbin "base.gba", 0x71616, 0x2

_08071618:	.4byte ControlStereo_Volume_Enable_NR50_NR51_ + 0x1
_0807161c:	.4byte 0x08115564

_08071620:
	mov		r0, #0xf
	mov		r1, r8
	and		r1, r0
	mov		r8, r1
	ldrb	r2, [r4, #0x9]
	lsl		r0, r2, #0x4
	add		r0, r8
	ldr		r1, [sp, #0xC]
	strb	r0, [r1, #0x0]
	mov		r2, #0x80
	ldrb	r0, [r4, #0x1a]
	orr		r0, r2
	ldr		r1, [sp, #0x14]
	strb	r0, [r1, #0x0]
	cmp		r6, #0x1
	bne		_08071654
	ldr		r0, [sp, #0x8]
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08071654
	ldrb	r0, [r4, #0x1a]
	orr		r0, r2
	ldr		r1, [sp, #0x14]
	strb	r0, [r1, #0x0]
_08071654:
	mov		r0, #0x0
	strb	r0, [r4, #0x1d]
_08071658:
	mov		r6, r10
	mov		r4, r9
	cmp		r6, #0x4
	bgt		_08071662
	b		_08071258
_08071662:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71672, 0x2
	thumb_func_end sub_08071228

	thumb_func_start sub_08071674
sub_08071674:
	push	{ r4, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, [r2, #0x34]
	ldr		r0, _08071698
	cmp		r3, r0
	bne		_08071690
	strh	r1, [r2, #0x1e]
	ldrh	r4, [r2, #0x1c]
	add		r0, r1, #0x0
	mul		r0, r4
	asr		r0, r0, #0x8
	strh	r0, [r2, #0x20]
_08071690:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71696, 0x2

_08071698:	.4byte 0x68736D53
	thumb_func_end sub_08071674

	thumb_func_start sub_0807169c
sub_0807169c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	lsl		r6, r2, #0x10
	ldr		r3, [r4, #0x34]
	ldr		r0, _08071700
	cmp		r3, r0
	bne		_080716f4
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r1, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_080716f0
	mov		r0, #0x80
	mov		r8, r0
	lsr		r6, r6, #0x12
	mov		r0, #0x3
	mov		r12, r0
_080716cc:
	add		r0, r7, #0x0
	and		r0, r5
	cmp		r0, #0x0
	beq		_080716e6
	ldrb	r3, [r1, #0x0]
	mov		r0, r8
	and		r0, r3
	cmp		r0, #0x0
	beq		_080716e6
	strb	r6, [r1, #0x13]
	mov		r0, r12
	orr		r0, r3
	strb	r0, [r1, #0x0]
_080716e6:
	sub		r2, #0x1
	add		r1, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_080716cc
_080716f0:
	ldr		r0, _08071700
	str		r0, [r4, #0x34]
_080716f4:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08071700:	.4byte 0x68736D53
	thumb_func_end sub_0807169c

	thumb_func_start sub_08071704
sub_08071704:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r12, r1
	lsl		r2, r2, #0x10
	lsr		r6, r2, #0x10
	ldr		r3, [r4, #0x34]
	ldr		r0, _08071774
	cmp		r3, r0
	bne		_08071766
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r3, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_08071762
	mov		r0, #0x80
	mov		r9, r0
	lsl		r0, r6, #0x10
	asr		r7, r0, #0x18
	mov		r0, #0xc
	mov		r8, r0
_0807173c:
	mov		r0, r12
	and		r0, r5
	cmp		r0, #0x0
	beq		_08071758
	ldrb	r1, [r3, #0x0]
	mov		r0, r9
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071758
	strb	r7, [r3, #0xb]
	strb	r6, [r3, #0xd]
	mov		r0, r8
	orr		r0, r1
	strb	r0, [r3, #0x0]
_08071758:
	sub		r2, #0x1
	add		r3, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_0807173c
_08071762:
	ldr		r0, _08071774
	str		r0, [r4, #0x34]
_08071766:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08071774:	.4byte 0x68736D53
	thumb_func_end sub_08071704

	thumb_func_start sub_08071778
sub_08071778:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	lsl		r2, r2, #0x18
	lsr		r6, r2, #0x18
	ldr		r3, [r4, #0x34]
	ldr		r0, _080717dc
	cmp		r3, r0
	bne		_080717d0
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r1, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_080717cc
	mov		r0, #0x80
	mov		r8, r0
	mov		r0, #0x3
	mov		r12, r0
_080717a8:
	add		r0, r7, #0x0
	and		r0, r5
	cmp		r0, #0x0
	beq		_080717c2
	ldrb	r3, [r1, #0x0]
	mov		r0, r8
	and		r0, r3
	cmp		r0, #0x0
	beq		_080717c2
	strb	r6, [r1, #0x15]
	mov		r0, r12
	orr		r0, r3
	strb	r0, [r1, #0x0]
_080717c2:
	sub		r2, #0x1
	add		r1, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_080717a8
_080717cc:
	ldr		r0, _080717dc
	str		r0, [r4, #0x34]
_080717d0:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080717dc:	.4byte 0x68736D53
	thumb_func_end sub_08071778

	thumb_func_start sub_080717e0
sub_080717e0:
	add		r1, r0, #0x0
	mov		r2, #0x0
	mov		r0, #0x0
	strb	r0, [r1, #0x1a]
	strb	r0, [r1, #0x16]
	ldrb	r0, [r1, #0x18]
	cmp		r0, #0x0
	bne		_080717f4
	mov		r0, #0xc
	b		_080717f6
_080717f4:
	mov		r0, #0x3
_080717f6:
	ldrb	r2, [r1, #0x0]
	orr		r0, r2
	strb	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x717FE, 0x2
	thumb_func_end sub_080717e0

	thumb_func_start sub_08071800
sub_08071800:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r10, r1
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r8, r2
	ldr		r1, [r6, #0x34]
	ldr		r0, _08071870
	cmp		r1, r0
	bne		_08071860
	add		r0, r1, #0x1
	str		r0, [r6, #0x34]
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	mov		r7, #0x1
	cmp		r5, #0x0
	ble		_0807185c
	mov		r9, r8
_08071830:
	mov		r0, r10
	and		r0, r7
	cmp		r0, #0x0
	beq		_08071852
	mov		r0, #0x80
	ldrb	r1, [r4, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08071852
	mov		r0, r8
	strb	r0, [r4, #0x17]
	mov		r1, r9
	cmp		r1, #0x0
	bne		_08071852
	add		r0, r4, #0x0
	bl		sub_080717e0
_08071852:
	sub		r5, #0x1
	add		r4, #0x50
	lsl		r7, r7, #0x1
	cmp		r5, #0x0
	bgt		_08071830
_0807185c:
	ldr		r0, _08071870
	str		r0, [r6, #0x34]
_08071860:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7186E, 0x2

_08071870:	.4byte 0x68736D53
	thumb_func_end sub_08071800

	thumb_func_start sub_08071874
sub_08071874:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r10, r1
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r8, r2
	ldr		r1, [r6, #0x34]
	ldr		r0, _080718e4
	cmp		r1, r0
	bne		_080718d4
	add		r0, r1, #0x1
	str		r0, [r6, #0x34]
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	mov		r7, #0x1
	cmp		r5, #0x0
	ble		_080718d0
	mov		r9, r8
_080718a4:
	mov		r0, r10
	and		r0, r7
	cmp		r0, #0x0
	beq		_080718c6
	mov		r0, #0x80
	ldrb	r1, [r4, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_080718c6
	mov		r0, r8
	strb	r0, [r4, #0x19]
	mov		r1, r9
	cmp		r1, #0x0
	bne		_080718c6
	add		r0, r4, #0x0
	bl		sub_080717e0
_080718c6:
	sub		r5, #0x1
	add		r4, #0x50
	lsl		r7, r7, #0x1
	cmp		r5, #0x0
	bgt		_080718a4
_080718d0:
	ldr		r0, _080718e4
	str		r0, [r6, #0x34]
_080718d4:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x718E2, 0x2

_080718e4:	.4byte 0x68736D53
	thumb_func_end sub_08071874

	thumb_func_start sub_080718e8
sub_080718e8:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r1, [r6, #0x40]
	ldrb	r5, [r1, #0x0]
	add		r2, r1, #0x1
	str		r2, [r6, #0x40]
	ldr		r0, [r4, #0x18]
	ldrb	r1, [r1, #0x1]
	add		r3, r1, r0
	add		r0, r2, #0x1
	str		r0, [r6, #0x40]
	ldrb	r2, [r2, #0x1]
	add		r0, #0x1
	str		r0, [r6, #0x40]
	cmp		r5, #0x11
	bls		_0807190c
	b		_08071a3a
_0807190c:
	lsl		r0, r5, #0x2
	ldr		r1, _08071918
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x71916, 0x2

_08071918:	.4byte 0x0807191c
_0807191c:	.4byte 0x08071964

.incbin "base.gba", 0x71920, 0x44
	thumb_func_end sub_080718e8


.incbin "base.gba", 0x71964, 0xD6

_08071a3a:

.incbin "base.gba", 0x71A3A, 0x6
	thumb_func_start sub_08071a40
sub_08071a40:
	push	{ lr }
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	add		r2, #0x1
	str		r2, [r1, #0x40]
	ldr		r2, _08071a5c
	lsl		r3, r3, #0x2
	add		r3, r3, r2
	ldr		r2, [r3, #0x0]
	bl		sub_0807d7d8
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71A5A, 0x2

_08071a5c:	.4byte 0x081155a8
	thumb_func_end sub_08071a40

	thumb_func_start sub_08071a60
sub_08071a60:
	push	{ lr }
	ldr		r2, _08071a70
	ldr		r2, [r2, #0x0]
	bl		sub_0807d7d8
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71A6E, 0x2

_08071a70:	.4byte 0x03006AA0
	thumb_func_end sub_08071a60

	thumb_func_start sub_08071a74
sub_08071a74:
	push	{ r4, lr }
	ldr		r2, [r1, #0x40]
	ldr		r0, _08071aac
	and		r4, r0
	ldrb	r0, [r2, #0x0]
	orr		r4, r0
	ldrb	r0, [r2, #0x1]
	lsl		r3, r0, #0x8
	ldr		r0, _08071ab0
	and		r4, r0
	orr		r4, r3
	ldrb	r0, [r2, #0x2]
	lsl		r3, r0, #0x10
	ldr		r0, _08071ab4
	and		r4, r0
	orr		r4, r3
	ldrb	r0, [r2, #0x3]
	lsl		r3, r0, #0x18
	ldr		r0, _08071ab8
	and		r4, r0
	orr		r4, r3
	str		r4, [r1, #0x28]
	add		r2, #0x4
	str		r2, [r1, #0x40]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71AAA, 0x2

_08071aac:	.4byte 0xFFFFFF00
_08071ab0:	.4byte 0xFFFF00FF
_08071ab4:	.4byte 0xFF00FFFF
_08071ab8:	.4byte 0x00FFFFFF
	ldr		r0, [r1, #0x40]
	ldrb	r2, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x24
	strb	r2, [r0, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71ACE, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r2, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x2c
	strb	r2, [r0, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71AE2, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x2d
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71AF6, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x2e
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71B0A, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x2f
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71B1E, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r2, [r0, #0x0]
	strb	r2, [r1, #0x1e]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr
	ldr		r0, [r1, #0x40]
	ldrb	r2, [r0, #0x0]
	strb	r2, [r1, #0x1f]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr
	ldr		r0, [r1, #0x40]
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x26
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71B4A, 0x2
	ldr		r0, [r1, #0x40]
	ldrb	r0, [r0, #0x0]
	add		r2, r1, #0x0
	add		r2, #0x27
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x40]
	add		r0, #0x1
	str		r0, [r1, #0x40]
	bx		lr

.incbin "base.gba", 0x71B5E, 0x2
	bx		lr

.incbin "base.gba", 0x71B62, 0x2
	thumb_func_end sub_08071a74

