	.include "defines.s"
	.include "ram.s"
	.include "macros.s"


	thumb_func_start sub_083087cc
sub_083087cc:
	push	{ r4, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	mov		r0, #0xe
	ldrsb	r0, [r4, r0]
	cmp		r0, #0x14
	bls		_083087dc
	b		_08308ab0
_083087dc:
	lsl		r0, r0, #0x2
	ldr		r1, _083087e8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3087E6, 0x2

_083087e8:	.4byte 0x020027EC

.incbin "base.gba", 0x3087EC, 0x2C4

_08308ab0:
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083087cc

	thumb_func_start sub_08308ab8
sub_08308ab8:
	ldrh	r2, [r0, #0x0]
	add		r0, #0x2
	cmp		r2, r1
	bgt		_08308ac2
	sub		r1, r2, #0x1
_08308ac2:
	cmp		r1, #0x0
	ble		_08308ace
_08308ac6:
	add		r0, #0x6
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_08308ac6
_08308ace:
	ldrh	r0, [r0, #0x2]
	ldr		r2, _08308ae4
	add		r1, r2, #0x0
	and		r1, r0
	add		r0, r1, #0x0
	cmp		r0, #0xff
	bls		_08308ae0
	eor		r0, r2
	neg		r0, r0
_08308ae0:
	bx		lr

.incbin "base.gba", 0x308AE2, 0x2

_08308ae4:	.4byte 0x000001FF
	thumb_func_end sub_08308ab8

	thumb_func_start sub_08308ae8
sub_08308ae8:
	ldrh	r2, [r0, #0x0]
	add		r0, #0x2
	cmp		r2, r1
	bgt		_08308af2
	sub		r1, r2, #0x1
_08308af2:
	cmp		r1, #0x0
	ble		_08308afe
_08308af6:
	add		r0, #0x6
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_08308af6
_08308afe:
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	bx		lr

.incbin "base.gba", 0x308B06, 0x2
	thumb_func_end sub_08308ae8

	thumb_func_start sub_08308b08
sub_08308b08:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r4, r2, #0x0
	ldr		r0, [r3, #0x0]
	mov		r9, r0
	ldrh	r1, [r0, #0x0]
	mov		r8, r1
	mov		r7, #0x0
	cmp		r7, r8
	bge		_08308b7a
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	mov		r10, r0
	mov		r5, r8
	sub		r5, #0x1
	add		r6, r3, #0x0
_08308b34:
	ldr		r0, [r6, #0x4]
	str		r0, [r4, #0x0]
	mov		r1, r10
	strh	r1, [r4, #0x4]
	mov		r0, r9
	add		r1, r5, #0x0
	bl		sub_08308ae8
	ldr		r1, [sp, #0x4]
	add		r0, r1, r0
	strh	r0, [r4, #0x6]
	mov		r0, r10
	strh	r0, [r4, #0xa]
	strh	r0, [r4, #0x8]
	mov		r1, #0x0
	strh	r1, [r4, #0xc]
	mov		r0, #0x1
	strb	r0, [r4, #0xe]
	strh	r1, [r4, #0x10]
	mov		r0, r9
	add		r1, r5, #0x0
	bl		sub_08308ab8
	ldr		r1, [sp, #0x0]
	add		r0, r1, r0
	strh	r0, [r4, #0x12]
	strb	r7, [r4, #0x16]
	mov		r0, r8
	strb	r0, [r4, #0x17]
	add		r4, #0x18
	sub		r5, #0x1
	add		r6, #0x4
	add		r7, #0x1
	cmp		r7, r8
	blt		_08308b34
_08308b7a:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x308B8A, 0x6
	thumb_func_end sub_08308b08

	thumb_func_start sub_08308b90
sub_08308b90:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r7, r0, #0x0
	mov		r5, #0x0
	mov		r1, #0xa9
	lsl		r1, r1, #0x2
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bge		_08308bba
	add		r6, r7, r1
	add		r4, r7, #0x0
	add		r4, #0x4c
_08308baa:
	add		r0, r4, #0x0
	bl		sub_083087cc
	add		r4, #0x18
	add		r5, #0x1
	ldr		r0, [r6, #0x0]
	cmp		r5, r0
	blt		_08308baa
_08308bba:
	mov		r5, #0x0
	mov		r3, #0xa9
	lsl		r3, r3, #0x2
	add		r1, r7, r3
	ldr		r0, [r1, #0x0]
	cmp		r5, r0
	bge		_08308c06
	add		r6, r1, #0x0
_08308bca:
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
	bl		sub_0830f6a0
	add		r5, r4, #0x0
	ldr		r0, [r6, #0x0]
	cmp		r5, r0
	blt		_08308bca
_08308c06:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x308C0E, 0x1CB2
	thumb_func_end sub_08308b90

	thumb_func_start sub_0830a8c0
sub_0830a8c0:
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
	ldr		r0, _0830a8ec
	strh	r1, [r0, #0x0]
	ldr		r2, _0830a8f0
	ldr		r3, _0830a8f4
	add		r0, r3, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _0830a8f8
	strh	r1, [r0, #0x0]
	bx		lr

_0830a8ec:	.4byte SIOModeSelect_GeneralPurposeData
_0830a8f0:	.4byte SIOControlRegister
_0830a8f4:	.4byte 0x00002003
_0830a8f8:	.4byte SIOData_Normal_8bitandUARTMode
	thumb_func_end sub_0830a8c0

	thumb_func_start sub_0830a8fc
sub_0830a8fc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	bl		sub_0830ae20
	cmp		r0, #0x0
	beq		_0830a912
	b		_0830acda
_0830a912:
	add		r0, r7, #0x0
	add		r0, #0x4a
	ldrb	r1, [r0, #0x0]
	mov		r10, r0
	cmp		r1, #0xf
	bls		_0830a926
	sub		r0, r1, #0x1
	mov		r1, r10
	strb	r0, [r1, #0x0]
	b		_0830acda
_0830a926:
	add		r1, r7, #0x0
	add		r1, #0x48
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0830a950
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	ldr		r0, _0830a94c
	ldrh	r0, [r0, #0x0]
	mov		r5, #0xfc
	and		r5, r0
	cmp		r5, #0x8
	beq		_0830a950
	add		r0, r7, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x8
	eor		r0, r5
	b		_0830acdc

_0830a94c:	.4byte SIOControlRegister

_0830a950:
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xdf
	bls		_0830a9a2
	add		r0, r7, #0x0
	bl		sub_0830ae30
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0830a964
	b		_0830acdc
_0830a964:
	add		r0, r7, #0x0
	add		r0, #0x4b
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0830a980
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xe1
	bls		_0830a980
	add		r0, r7, #0x0
	bl		sub_0830ae20
	cmp		r0, #0x0
	bne		_0830a980
	b		_0830acca
_0830a980:
	add		r0, r7, #0x0
	bl		sub_0830ae20
	cmp		r0, #0x0
	beq		_0830a98c
	b		_0830acda
_0830a98c:
	ldrh	r0, [r7, #0x16]
	cmp		r0, #0x0
	bne		_0830a99c
	add		r0, r7, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x71
	b		_0830acdc
_0830a99c:
	sub		r0, #0x1
	strh	r0, [r7, #0x16]
	b		_0830acda
_0830a9a2:
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0x2
	bne		_0830a9aa
	b		_0830aae0
_0830a9aa:
	cmp		r0, #0x2
	bgt		_0830a9b8
	cmp		r0, #0x0
	beq		_0830a9c6
	cmp		r0, #0x1
	beq		_0830aa82
	b		_0830ac18
_0830a9b8:
	cmp		r0, #0xd0
	bne		_0830a9be
	b		_0830ab2c
_0830a9be:
	cmp		r0, #0xd1
	bne		_0830a9c4
	b		_0830abc6
_0830a9c4:
	b		_0830ac18
_0830a9c6:
	mov		r3, #0xe
	mov		r5, #0x3
	ldr		r0, _0830aa0c
	ldrh	r0, [r0, #0x6]
	add		r1, r0, #0x0
	ldr		r0, _0830aa10
	ldrb	r2, [r7, #0x1e]
	add		r6, r2, #0x0
	cmp		r1, r0
	bne		_0830a9ee
	add		r4, r1, #0x0
	ldr		r1, _0830aa14
_0830a9de:
	asr		r3, r3, #0x1
	sub		r1, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	beq		_0830a9ee
	ldrh	r0, [r1, #0x0]
	cmp		r0, r4
	beq		_0830a9de
_0830a9ee:
	mov		r0, #0xe
	and		r3, r0
	strb	r3, [r7, #0x1d]
	mov		r5, #0x3
	ldr		r0, _0830aa0c
	ldrh	r0, [r0, #0x6]
	add		r4, r0, #0x0
	asr		r0, r2, #0x3
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830aa1c
	ldr		r0, _0830aa18
	b		_0830aa42

.incbin "base.gba", 0x30AA0A, 0x2

_0830aa0c:	.4byte SIOData0_Parent__Multi_PlayerMode_
_0830aa10:	.4byte 0x0000FFFF
_0830aa14:	.4byte SIOData3_3rdChild__Multi_PlayerMode_
_0830aa18:	.4byte 0x00007208

_0830aa1c:
	sub		r5, #0x1
	cmp		r5, #0x0
	beq		_0830aa48
	lsl		r0, r5, #0x1
	ldr		r1, _0830aa70
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	add		r0, r2, #0x0
	asr		r0, r5
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830aa1c
	add		r0, r1, #0x0
	lsl		r0, r5
	mov		r1, #0xe4
	lsl		r1, r1, #0x7
	orr		r0, r1
_0830aa42:
	cmp		r4, r0
	beq		_0830aa1c
	mov		r3, #0x0
_0830aa48:
	add		r0, r3, #0x0
	and		r0, r6
	strb	r0, [r7, #0x1e]
	cmp		r3, #0x0
	bne		_0830aa58
	mov		r0, #0xf
	mov		r2, r10
	strb	r0, [r2, #0x0]
_0830aa58:
	mov		r1, r10
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0830aa74
	ldrb	r0, [r7, #0x1d]
	ldrb	r2, [r7, #0x1e]
	cmp		r0, r2
	beq		_0830aa7a
	add		r0, r7, #0x0
	bl		sub_0830ad38
	b		_0830aa82

_0830aa70:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830aa74:
	sub		r0, #0x1
	mov		r1, r10
	strb	r0, [r1, #0x0]
_0830aa7a:
	ldrb	r1, [r7, #0x1e]
	mov		r2, #0xc4
	lsl		r2, r2, #0x7
	b		_0830ab82
_0830aa82:
	add		r1, r7, #0x0
	add		r1, #0x49
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r5, #0x3
	mov		r12, r1
	ldr		r3, _0830aad8
_0830aa90:
	lsl		r0, r5, #0x1
	ldr		r2, _0830aadc
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	asr		r0, r4, #0x8
	sub		r2, r5, #0x1
	cmp		r0, #0x72
	bne		_0830aaba
	lsl		r0, r2, #0x1
	add		r0, r0, r3
	strh	r4, [r0, #0x0]
	mov		r0, #0xff
	and		r4, r0
	mov		r0, #0x1
	lsl		r0, r5
	cmp		r4, r0
	bne		_0830aaba
	ldrb	r0, [r1, #0x0]
	orr		r4, r0
	strb	r4, [r1, #0x0]
_0830aaba:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_0830aa90
	ldrb	r0, [r7, #0x1d]
	mov		r1, r12
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0830aa7a
	mov		r0, #0x2
	strb	r0, [r7, #0x18]
	mov		r2, r12
	ldrb	r1, [r2, #0x0]
	mov		r2, #0xc2
	lsl		r2, r2, #0x7
	b		_0830ab82

_0830aad8:	.4byte 0x03000184
_0830aadc:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830aae0:
	mov		r5, #0x3
	mov		r0, #0x49
	add		r0, r0, r7
	mov		r12, r0
	mov		r4, r12
	mov		r6, #0x1
	ldr		r1, _0830ab24
	mov		r9, r1
	ldr		r2, _0830ab28
	mov		r8, r2
_0830aaf4:
	ldrb	r3, [r4, #0x0]
	add		r0, r3, #0x0
	asr		r0, r5
	and		r0, r6
	sub		r2, r5, #0x1
	cmp		r0, #0x0
	beq		_0830ab1a
	lsl		r0, r5, #0x1
	add		r0, r8
	ldrh	r1, [r0, #0x0]
	lsl		r0, r2, #0x1
	add		r0, r9
	ldrh	r0, [r0, #0x0]
	cmp		r1, r0
	beq		_0830ab1a
	add		r0, r6, #0x0
	lsl		r0, r5
	eor		r3, r0
	strb	r3, [r4, #0x0]
_0830ab1a:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_0830aaf4
	b		_0830ac80

.incbin "base.gba", 0x30AB22, 0x2

_0830ab24:	.4byte 0x03000184
_0830ab28:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830ab2c:
	mov		r3, #0x1
	mov		r5, #0x3
	mov		r0, #0x49
	add		r0, r0, r7
	mov		r12, r0
	add		r6, r7, #0x0
	add		r6, #0x19
	ldr		r1, _0830ab90
	mov		r8, r1
_0830ab3e:
	lsl		r0, r5, #0x1
	ldr		r2, _0830ab94
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	add		r4, r0, #0x0
	sub		r2, r5, #0x1
	add		r0, r6, r2
	strb	r4, [r0, #0x0]
	mov		r0, r12
	ldrb	r1, [r0, #0x0]
	asr		r1, r5
	mov		r0, #0x1
	and		r1, r0
	cmp		r1, #0x0
	beq		_0830ab72
	asr		r0, r4, #0x8
	sub		r0, #0x72
	cmp		r0, #0x1
	bls		_0830ab66
	b		_0830acd0
_0830ab66:
	lsl		r0, r2, #0x1
	add		r0, r8
	ldrh	r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0830ab72
	mov		r3, #0x0
_0830ab72:
	add		r5, r2, #0x0
	cmp		r5, #0x0
	bne		_0830ab3e
	cmp		r3, #0x0
	bne		_0830ab98
	ldrb	r1, [r7, #0x1c]
	mov		r2, #0xc6
	lsl		r2, r2, #0x7
_0830ab82:
	add		r0, r2, #0x0
	orr		r1, r0
	add		r0, r7, #0x0
	bl		sub_0830acec
	b		_0830acdc

.incbin "base.gba", 0x30AB8E, 0x2

_0830ab90:	.4byte 0x03000184
_0830ab94:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830ab98:
	mov		r0, #0xd1
	strb	r0, [r7, #0x18]
	mov		r3, #0x11
	mov		r5, #0x3
	add		r1, r6, #0x2
_0830aba2:
	ldrb	r0, [r1, #0x0]
	add		r3, r3, r0
	sub		r1, #0x1
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0830aba2
	strb	r3, [r7, #0x14]
	mov		r0, #0xff
	and		r3, r0
	mov		r1, #0xc8
	lsl		r1, r1, #0x7
	add		r0, r1, #0x0
	orr		r3, r0
	add		r0, r7, #0x0
	add		r1, r3, #0x0
	bl		sub_0830acec
	b		_0830acdc
_0830abc6:
	mov		r5, #0x3
	mov		r2, #0x49
	ldrb	r1, [r2, r7]
	ldr		r2, _0830ac04
	mov		r3, #0x1
_0830abd0:
	ldrh	r0, [r2, #0x0]
	add		r4, r0, #0x0
	add		r0, r1, #0x0
	asr		r0, r5
	and		r0, r3
	cmp		r0, #0x0
	beq		_0830abe4
	asr		r0, r4, #0x8
	cmp		r0, #0x73
	bne		_0830acd0
_0830abe4:
	sub		r2, #0x2
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0830abd0
	add		r0, r7, #0x0
	bl		sub_083272dc
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_0830ac08
	mov		r0, #0xe0
	strb	r0, [r7, #0x18]
	add		r0, #0xb0
	strh	r0, [r7, #0x16]
	b		_0830acda

.incbin "base.gba", 0x30AC02, 0x2

_0830ac04:	.4byte SIOData3_3rdChild__Multi_PlayerMode_

_0830ac08:
	add		r0, r7, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x1e
	mov		r1, r10
	strb	r0, [r1, #0x0]
	mov		r0, #0x70
	b		_0830acdc
_0830ac18:
	mov		r5, #0x3
	mov		r2, #0x49
	add		r2, r2, r7
	mov		r12, r2
	mov		r8, r12
	mov		r0, #0x1
	mov		r9, r0
_0830ac26:
	mov		r1, r8
	ldrb	r6, [r1, #0x0]
	add		r0, r6, #0x0
	asr		r0, r5
	mov		r2, r9
	and		r0, r2
	cmp		r0, #0x0
	beq		_0830ac60
	lsl		r0, r5, #0x1
	ldr		r1, _0830ac7c
	add		r0, r0, r1
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
	bne		_0830ac5a
	mov		r0, #0xff
	and		r4, r0
	cmp		r4, r3
	beq		_0830ac60
_0830ac5a:
	eor		r6, r3
	mov		r2, r8
	strb	r6, [r2, #0x0]
_0830ac60:
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0830ac26
	ldrb	r0, [r7, #0x18]
	cmp		r0, #0xc4
	bne		_0830ac80
	mov		r0, r12
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xe
	and		r0, r1
	strb	r0, [r7, #0x1e]
	strb	r5, [r7, #0x18]
	b		_0830aa7a

.incbin "base.gba", 0x30AC7A, 0x2

_0830ac7c:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830ac80:
	mov		r1, r12
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0830ac92
	add		r0, r7, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x50
	b		_0830acdc
_0830ac92:
	ldrb	r0, [r7, #0x18]
	add		r0, #0x2
	strb	r0, [r7, #0x18]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xc4
	bne		_0830aca2
	b		_0830aa7a
_0830aca2:
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
	bl		sub_0830acec
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_0830acdc
	add		r0, r7, #0x0
	add		r0, #0x4b
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0830acda
_0830acca:
	bl		sub_0830af34
	b		_0830a926
_0830acd0:
	add		r0, r7, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x60
	b		_0830acdc
_0830acda:
	mov		r0, #0x0
_0830acdc:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30ACEA, 0x2
	thumb_func_end sub_0830a8fc

	thumb_func_start sub_0830acec
sub_0830acec:
	push	{ r4, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, _0830ad18
	ldrh	r0, [r3, #0x0]
	mov		r4, #0x8c
	and		r4, r0
	cmp		r4, #0x8
	bne		_0830ad24
	ldr		r0, _0830ad1c
	strh	r1, [r0, #0x0]
	ldr		r1, _0830ad20
	add		r0, r1, #0x0
	strh	r0, [r3, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x48
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x0
	b		_0830ad30

.incbin "base.gba", 0x30AD16, 0x2

_0830ad18:	.4byte SIOControlRegister
_0830ad1c:	.4byte SIOData_Normal_8bitandUARTMode
_0830ad20:	.4byte 0x00002083

_0830ad24:
	add		r0, r2, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x8
	eor		r4, r0
	add		r0, r4, #0x0
_0830ad30:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30AD36, 0x2
	thumb_func_end sub_0830acec

	thumb_func_start sub_0830ad38
sub_0830ad38:
	push	{ lr }
	add		r1, r0, #0x0
	ldrb	r0, [r1, #0x18]
	cmp		r0, #0x0
	beq		_0830ad4a
	add		r0, r1, #0x0
	bl		sub_0830a8c0
	b		_0830ad56
_0830ad4a:
	add		r2, r1, #0x0
	add		r2, #0x4a
	strb	r0, [r2, #0x0]
	strb	r0, [r1, #0x1e]
	mov		r0, #0x1
	strb	r0, [r1, #0x18]
_0830ad56:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30AD5A, 0xC6
	thumb_func_end sub_0830ad38

	thumb_func_start sub_0830ae20
sub_0830ae20:
	ldrb	r0, [r0, #0x18]
	cmp		r0, #0xe9
	beq		_0830ae2a
	mov		r0, #0x0
	b		_0830ae2c
_0830ae2a:
	mov		r0, #0x1
_0830ae2c:
	bx		lr

.incbin "base.gba", 0x30AE2E, 0x2
	thumb_func_end sub_0830ae20

	thumb_func_start sub_0830ae30
sub_0830ae30:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	ldrb	r0, [r3, #0x18]
	cmp		r0, #0xe0
	beq		_0830ae4c
	cmp		r0, #0xe0
	blt		_0830ae5c
	cmp		r0, #0xe8
	bgt		_0830ae5c
	cmp		r0, #0xe7
	blt		_0830ae5c
	mov		r4, #0x3
	ldrb	r5, [r3, #0x1e]
	b		_0830aebc
_0830ae4c:
	mov		r1, #0x0
	mov		r0, #0xe1
	strb	r0, [r3, #0x18]
	str		r1, [r3, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0xd
	str		r0, [r3, #0x0]
	b		_0830aeae
_0830ae5c:
	mov		r4, #0x3
	ldrb	r5, [r3, #0x1e]
	mov		r6, #0x1
	ldr		r1, _0830aeb8
_0830ae64:
	ldrh	r0, [r1, #0x0]
	add		r2, r0, #0x0
	add		r0, r5, #0x0
	asr		r0, r4
	and		r0, r6
	cmp		r0, #0x0
	beq		_0830ae78
	ldr		r0, [r3, #0x4]
	cmp		r2, r0
	bne		_0830ae4c
_0830ae78:
	sub		r1, #0x2
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0830ae64
	ldrb	r0, [r3, #0x18]
	add		r0, #0x1
	strb	r0, [r3, #0x18]
	ldr		r1, [r3, #0x0]
	ldrh	r0, [r3, #0x0]
	str		r0, [r3, #0x4]
	cmp		r1, #0x0
	bne		_0830aea6
	ldr		r0, [r3, #0x28]
	add		r1, r0, #0x0
	add		r1, #0xac
	ldrb	r1, [r1, #0x0]
	add		r0, #0xad
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	orr		r1, r0
	str		r1, [r3, #0x4]
	lsl		r1, r1, #0x5
	str		r1, [r3, #0x0]
_0830aea6:
	ldr		r0, [r3, #0x0]
	lsr		r0, r0, #0x5
	str		r0, [r3, #0x0]
_0830aeac:
	ldrh	r1, [r3, #0x0]
_0830aeae:
	add		r0, r3, #0x0
	bl		sub_0830acec
	b		_0830af14

.incbin "base.gba", 0x30AEB6, 0x2

_0830aeb8:	.4byte SIOData3_3rdChild__Multi_PlayerMode_

_0830aebc:
	lsl		r0, r4, #0x1
	ldr		r1, _0830af04
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	add		r2, r0, #0x0
	add		r0, r5, #0x0
	asr		r0, r4
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830aed8
	ldr		r0, [r3, #0x4]
	cmp		r2, r0
	bne		_0830af08
_0830aed8:
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0830aebc
	ldrb	r0, [r3, #0x18]
	add		r0, #0x1
	strb	r0, [r3, #0x18]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xe9
	beq		_0830af12
	ldr		r0, [r3, #0x28]
	add		r1, r0, #0x0
	add		r1, #0xae
	ldrb	r1, [r1, #0x0]
	add		r0, #0xaf
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	orr		r1, r0
	str		r1, [r3, #0x0]
	str		r1, [r3, #0x4]
	b		_0830aeac

.incbin "base.gba", 0x30AF02, 0x2

_0830af04:	.4byte SIOData0_Parent__Multi_PlayerMode_

_0830af08:
	add		r0, r3, #0x0
	bl		sub_0830a8c0
	mov		r0, #0x71
	b		_0830af14
_0830af12:
	mov		r0, #0x0
_0830af14:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30AF1A, 0x2
	thumb_func_end sub_0830ae30

	thumb_func_start sub_0830af1c
sub_0830af1c:
	mov		r2, pc
	lsr		r2, r2, #0x18
	mov		r1, #0xc
	cmp		r2, #0x2
	beq		_0830af2e
	mov		r1, #0xd
	cmp		r2, #0x8
	beq		_0830af2e
	mov		r1, #0x4
_0830af2e:
	sub		r0, r0, r1
	bgt		_0830af2e
	bx		lr
	thumb_func_end sub_0830af1c

	thumb_func_start sub_0830af34
sub_0830af34:
	push	{ r4, r5, lr }
	mov		r2, #0x0
	ldr		r3, _0830af68
	ldrh	r1, [r3, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830af58
	ldr		r5, _0830af6c
	mov		r4, #0x80
_0830af48:
	add		r2, #0x1
	cmp		r2, r5
	bgt		_0830af58
	ldrh	r1, [r3, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_0830af48
_0830af58:
	mov		r0, #0x96
	lsl		r0, r0, #0x2
	bl		sub_0830af1c
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30AF66, 0x2

_0830af68:	.4byte SIOControlRegister
_0830af6c:	.4byte 0x0000795C
	thumb_func_end sub_0830af34

	thumb_func_start sub_0830af70
sub_0830af70:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r3, _0830b038
	mov		r4, #0x0
	strh	r4, [r3, #0x0]
	ldr		r2, _0830b03c
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0830b040
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	ldr		r0, _0830b044
	strh	r4, [r0, #0x0]
	sub		r2, #0xd8
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	str		r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	ldr		r3, _0830b048
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r4, _0830b04c
	ldr		r2, _0830b050
	mov		r0, sp
	add		r1, r4, #0x0
	bl		sub_083272c4
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
_0830afe6:
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
	ble		_0830afe6
	mov		r0, #0x0
	ldr		r3, _0830b038
	strh	r0, [r3, #0x0]
	ldr		r2, _0830b03c
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

.incbin "base.gba", 0x30B036, 0x2

_0830b038:	.4byte InterruptMasterEnableRegister
_0830b03c:	.4byte InterruptEnableRegister
_0830b040:	.4byte 0x0000FF3F
_0830b044:	.4byte SIOModeSelect_GeneralPurposeData
_0830b048:	.4byte 0x00004003
_0830b04c:	.4byte 0x03002E80
_0830b050:	.4byte 0x05000050

.incbin "base.gba", 0x30B054, 0x9C0
	thumb_func_end sub_0830af70

	thumb_func_start sub_0830ba14
sub_0830ba14:
	lsl		r0, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r3, r1, #0x0
	mov		r2, #0x0
	cmp		r0, #0x0
	beq		_0830ba32
	cmp		r1, #0x7
	bhi		_0830ba2c
	add		r2, r1, #0x0
	add		r2, #0x5c
	b		_0830ba82
_0830ba2c:
	add		r2, r1, #0x0
	add		r2, #0x50
	b		_0830ba82
_0830ba32:
	cmp		r3, #0x9
	bhi		_0830ba82
	lsl		r0, r3, #0x2
	ldr		r1, _0830ba40
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0830ba40:	.4byte 0x02005A44

.incbin "base.gba", 0x30BA44, 0x3E

_0830ba82:
	add		r0, r2, #0x0
	bx		lr

.incbin "base.gba", 0x30BA86, 0x2
	thumb_func_end sub_0830ba14

	thumb_func_start sub_0830ba88
sub_0830ba88:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	str		r0, [sp, #0x0]
	ldr		r0, _0830bac0
	ldr		r1, _0830bac4
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	mov		r8, r0
	mov		r2, #0x0
	mov		r9, r2
	sub		r0, #0x1
	cmp		r9, r0
	bge		_0830bb1c
	mov		r3, #0xc0
	lsl		r3, r3, #0x8
	mov		r10, r3
_0830bab0:
	mov		r4, #0x2
	mov		r0, r8
	cmp		r0, #0x3
	beq		_0830bac8
	cmp		r0, #0x4
	beq		_0830bace
	mov		r7, #0x9
	b		_0830bad0

_0830bac0:	.4byte 0x030031D0
_0830bac4:	.4byte 0x0000076F

_0830bac8:
	mov		r4, #0x3
	mov		r7, #0x7
	b		_0830bad0
_0830bace:
	mov		r7, #0x6
_0830bad0:
	mov		r6, r9
	add		r6, #0x1
	lsl		r5, r6, #0x18
	lsr		r5, r5, #0x18
	mov		r0, #0x0
	add		r1, r5, #0x0
	bl		sub_0830ba14
	mov		r1, r9
	mul		r1, r4
	add		r4, r1, #0x0
	add		r4, r7, r4
	lsl		r4, r4, #0x6
	ldr		r2, [sp, #0x0]
	add		r4, r4, r2
	mov		r1, r10
	orr		r1, r0
	strh	r1, [r4, #0x2]
	mov		r0, #0x1
	add		r1, r5, #0x0
	bl		sub_0830ba14
	add		r2, r4, #0x0
	add		r2, #0x42
	mov		r1, r10
	orr		r1, r0
	strh	r1, [r2, #0x0]
	add		r4, #0x44
	mov		r0, r9
	add		r0, #0xd0
	mov		r3, r10
	orr		r0, r3
	strh	r0, [r4, #0x0]
	mov		r9, r6
	mov		r0, r8
	sub		r0, #0x1
	cmp		r9, r0
	blt		_0830bab0
_0830bb1c:
	mov		r2, #0x0
	cmp		r2, r8
	blt		_0830bb24
	b		_0830bc5a
_0830bb24:
	lsl		r1, r2, #0x2
	ldr		r4, _0830bb4c
	mov		r3, #0xed
	lsl		r3, r3, #0x3
	add		r0, r4, r3
	add		r0, r0, r1
	ldr		r7, [r0, #0x0]
	mov		r4, #0x0
	str		r4, [sp, #0x4]
	mov		r0, #0x0
	str		r0, [sp, #0x8]
	str		r1, [sp, #0x10]
	mov		r1, r8
	cmp		r1, #0x3
	beq		_0830bb66
	cmp		r1, #0x3
	bgt		_0830bb50
	cmp		r1, #0x2
	beq		_0830bb58
	b		_0830bb8e

_0830bb4c:	.4byte 0x030031F4

_0830bb50:
	mov		r3, r8
	cmp		r3, #0x4
	beq		_0830bb7a
	b		_0830bb8e
_0830bb58:
	mov		r0, #0xb
	mul		r0, r2
	add		r0, #0x9
	str		r0, [sp, #0x4]
	mov		r4, #0x9
	str		r4, [sp, #0x8]
	b		_0830bb8e
_0830bb66:
	add		r0, r7, #0x0
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x1
	lsl		r0, r0, #0x3
	add		r0, #0x6
	str		r0, [sp, #0x4]
	mov		r0, #0x7
	str		r0, [sp, #0x8]
	b		_0830bb8e
_0830bb7a:
	add		r0, r7, #0x0
	add		r0, #0xba
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0x1
	lsl		r0, r1, #0x3
	sub		r0, r0, r1
	add		r0, #0x5
	str		r0, [sp, #0x4]
	mov		r1, #0x6
	str		r1, [sp, #0x8]
_0830bb8e:
	mov		r3, #0x0
	mov		r9, r3
	mov		r4, #0x1
	neg		r4, r4
	add		r4, r8
	mov		r10, r4
	add		r2, #0x1
	str		r2, [sp, #0xC]
	cmp		r9, r10
	bge		_0830bc52
_0830bba2:
	ldr		r1, _0830bd04
	mov		r2, #0xf1
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	mov		r6, #0xc0
	lsl		r6, r6, #0x8
	cmp		r0, r7
	bne		_0830bbb8
	mov		r6, #0xb0
	lsl		r6, r6, #0x8
_0830bbb8:
	mov		r4, #0x2
	mov		r3, r8
	cmp		r3, #0x3
	bne		_0830bbc2
	mov		r4, #0x3
_0830bbc2:
	ldr		r0, _0830bd08
	ldr		r5, [sp, #0x10]
	add		r5, r9
	add		r5, r5, r0
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_083273d8
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x0
	bl		sub_0830ba14
	mov		r1, r9
	mul		r1, r4
	ldr		r4, [sp, #0x8]
	add		r1, r4, r1
	ldr		r2, [sp, #0x4]
	lsl		r4, r2, #0x1
	lsl		r1, r1, #0x6
	ldr		r3, [sp, #0x0]
	add		r1, r1, r3
	add		r4, r4, r1
	add		r1, r6, #0x0
	orr		r1, r0
	strh	r1, [r4, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_083273d8
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x1
	bl		sub_0830ba14
	add		r2, r4, #0x0
	add		r2, #0x40
	add		r1, r6, #0x0
	orr		r1, r0
	strh	r1, [r2, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_08327450
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x0
	bl		sub_0830ba14
	add		r1, r6, #0x0
	orr		r1, r0
	strh	r1, [r4, #0x2]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_08327450
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x1
	bl		sub_0830ba14
	add		r4, #0x42
	orr		r6, r0
	strh	r6, [r4, #0x0]
	mov		r4, #0x1
	add		r9, r4
	cmp		r9, r10
	blt		_0830bba2
_0830bc52:
	ldr		r2, [sp, #0xC]
	cmp		r2, r8
	bge		_0830bc5a
	b		_0830bb24
_0830bc5a:
	ldr		r0, [sp, #0x0]
	mov		r2, #0x88
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	ldr		r3, _0830bd0c
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	ldr		r4, [sp, #0x0]
	mov		r0, #0x90
	lsl		r0, r0, #0x3
	add		r1, r4, r0
	ldr		r2, _0830bd10
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r5, _0830bd14
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_083273d8
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x0
	bl		sub_0830ba14
	ldr		r3, _0830bd18
	add		r1, r4, r3
	mov		r2, #0xc0
	lsl		r2, r2, #0x8
	add		r4, r2, #0x0
	orr		r0, r4
	strh	r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_083273d8
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x1
	bl		sub_0830ba14
	ldr		r3, [sp, #0x0]
	ldr		r2, _0830bd1c
	add		r1, r3, r2
	orr		r0, r4
	strh	r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_08327450
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x0
	bl		sub_0830ba14
	ldr		r3, [sp, #0x0]
	ldr		r2, _0830bd20
	add		r1, r3, r2
	orr		r0, r4
	strh	r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0xa
	bl		sub_08327450
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, #0x1
	bl		sub_0830ba14
	ldr		r3, [sp, #0x0]
	ldr		r2, _0830bd24
	add		r1, r3, r2
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0830bd04:	.4byte 0x030031F4
_0830bd08:	.4byte 0x03002FC0
_0830bd0c:	.4byte 0x0000C037
_0830bd10:	.4byte 0x0000C038
_0830bd14:	.4byte 0x03002D68
_0830bd18:	.4byte 0x00000444
_0830bd1c:	.4byte 0x00000484
_0830bd20:	.4byte 0x00000446
_0830bd24:	.4byte 0x00000486

.incbin "base.gba", 0x30BD28, 0x17C0
	thumb_func_end sub_0830ba88

	thumb_func_start sub_0830d4e8
sub_0830d4e8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r0, _0830d538
	mov		r8, r0
	mov		r0, #0x18
	mov		r1, #0x6
	bl		sub_0830d550
	mov		r3, #0x0
	mov		r2, #0x0
	ldr		r1, _0830d53c
	mov		r12, r1
	ldr		r6, _0830d540
	ldr		r5, _0830d544
	ldr		r4, _0830d548
_0830d508:
	lsl		r0, r3, #0x1
	mov		r7, r12
	strh	r2, [r7, #0x0]
	strh	r2, [r6, #0x0]
	strh	r2, [r5, #0x0]
	strh	r2, [r4, #0x0]
	ldr		r1, _0830d54c
	add		r0, r0, r1
	mov		r7, r8
	ldrh	r1, [r7, #0x20]
	strh	r1, [r0, #0x0]
	mov		r0, #0x2
	add		r12, r0
	add		r6, #0x2
	add		r5, #0x2
	add		r4, #0x2
	add		r3, #0x1
	cmp		r3, #0x3
	ble		_0830d508
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0830d538:	.4byte 0x030031D0
_0830d53c:	.4byte 0x030051B8
_0830d540:	.4byte 0x030051A8
_0830d544:	.4byte 0x03005100
_0830d548:	.4byte 0x03005190
_0830d54c:	.4byte 0x03000198
	thumb_func_end sub_0830d4e8

	thumb_func_start sub_0830d550
sub_0830d550:
	ldr		r3, _0830d568
	strh	r0, [r3, #0x20]
	strh	r1, [r3, #0x22]
	ldr		r2, _0830d56c
	mov		r1, #0x3
_0830d55a:
	ldrh	r0, [r3, #0x20]
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0830d55a
	bx		lr

_0830d568:	.4byte 0x030031D0
_0830d56c:	.4byte 0x03000198
	thumb_func_end sub_0830d550

	thumb_func_start sub_0830d570
sub_0830d570:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r7, _0830d5d0
	ldr		r0, _0830d5d4
	mov		r10, r0
	ldr		r1, _0830d5d8
	mov		r9, r1
	ldr		r2, _0830d5dc
	mov		r8, r2
	ldr		r0, _0830d5e0
	mov		r12, r0
	mov		r5, r12
	mov		r6, #0x0
	ldr		r4, _0830d5e4
_0830d592:
	mov		r1, r10
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	ldr		r2, _0830d5e8
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
	beq		_0830d5ec
	ldrh	r0, [r5, #0x0]
	cmp		r3, r0
	bne		_0830d5ec
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_0830d5f0
	strh	r3, [r1, #0x0]
	ldrh	r0, [r7, #0x22]
	b		_0830d5ee

.incbin "base.gba", 0x30D5CE, 0x2

_0830d5d0:	.4byte 0x030031D0
_0830d5d4:	.4byte 0x030051B8
_0830d5d8:	.4byte 0x03005100
_0830d5dc:	.4byte 0x030051A8
_0830d5e0:	.4byte 0x03005190
_0830d5e4:	.4byte 0x03000198
_0830d5e8:	.4byte 0x000003FF

_0830d5ec:
	ldrh	r0, [r7, #0x20]
_0830d5ee:
	strh	r0, [r4, #0x0]
_0830d5f0:
	strh	r3, [r5, #0x0]
	add		r5, #0x2
	add		r6, #0x2
	add		r4, #0x2
	mov		r0, r12
	add		r0, #0x6
	cmp		r5, r0
	ble		_0830d592
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30D60E, 0x166
	thumb_func_end sub_0830d570

	thumb_func_start sub_0830d774
sub_0830d774:
	push	{ r4, r5, lr }
	ldr		r5, _0830d79c
	mov		r4, #0x0
_0830d77a:
	str		r4, [r5, #0x0]
	bl		sub_083272fc
	bl		sub_08325e88
	bl		sub_0830da08
	cmp		r0, #0x0
	bne		_0830d77a
	bl		sub_0830d570
	bl		sub_0831019c
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30D79A, 0x2

_0830d79c:	.4byte 0x030001A4

.incbin "base.gba", 0x30D7A0, 0x68
	thumb_func_end sub_0830d774

	thumb_func_start sub_0830d808
sub_0830d808:
	push	{ r4, lr }
	add		r4, r0, #0x0
	str		r1, [r4, #0x0]
	str		r1, [r4, #0x4]
	str		r2, [r4, #0x8]
	mov		r3, #0x0
	lsr		r2, r2, #0x2
	cmp		r3, r2
	bcs		_0830d828
	mov		r2, #0x0
_0830d81c:
	stmia	r1!, {  r2 }
	add		r3, #0x1
	ldr		r0, [r4, #0x8]
	lsr		r0, r0, #0x2
	cmp		r3, r0
	bcc		_0830d81c
_0830d828:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30D82E, 0x2
	thumb_func_end sub_0830d808

	thumb_func_start sub_0830d830
sub_0830d830:
	ldr		r1, [r0, #0x0]
	str		r1, [r0, #0x4]
	bx		lr

.incbin "base.gba", 0x30D836, 0x2
	thumb_func_end sub_0830d830

	thumb_func_start sub_0830d838
sub_0830d838:
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
	bhi		_0830d880
	add		r6, r2, #0x0
	str		r4, [r3, #0x4]
	add		r0, r6, #0x0
	mov		r1, #0x0
	lsr		r2, r5, #0x2
	cmp		r1, r2
	bcs		_0830d86a
	mov		r3, #0x0
_0830d860:
	str		r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r2
	bcc		_0830d860
_0830d86a:
	mov		r1, #0x0
	mov		r2, #0x3
	and		r2, r5
	cmp		r1, r2
	bcs		_0830d880
	mov		r3, #0x0
_0830d876:
	strb	r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r2
	bcc		_0830d876
_0830d880:
	add		r0, r6, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30D888, 0x8
	thumb_func_end sub_0830d838

	thumb_func_start sub_0830d890
sub_0830d890:
	push	{ r4, r5, r6, lr }
	bl		sub_0830e2c8
	ldr		r1, _0830d8e0
	ldrh	r2, [r1, #0x16]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r2
	mov		r2, #0x0
	strh	r0, [r1, #0x16]
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
_0830d8ba:
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, r6
	strb	r3, [r1, #0x0]
	add		r0, r0, r5
	strb	r3, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0x3
	ble		_0830d8ba
	mov		r0, #0x0
	strb	r0, [r4, #0xa]
	strb	r0, [r4, #0xb]
	strb	r0, [r4, #0xc]
	ldr		r1, _0830d8e4
	ldr		r0, _0830d8e8
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0830d8e0:	.4byte 0x03003030
_0830d8e4:	.4byte 0x00003FFF
_0830d8e8:	.4byte 0x030001F0
	thumb_func_end sub_0830d890

	thumb_func_start sub_0830d8ec
sub_0830d8ec:
	push	{ lr }
	ldr		r0, _0830d8fc
	bl		sub_0830e1d8
	bl		sub_0830d890
	pop		{ r0 }
	bx		r0

_0830d8fc:	.4byte 0x0202A8D0
	thumb_func_end sub_0830d8ec

	thumb_func_start sub_0830d900
sub_0830d900:
	push	{ r4, lr }
	ldr		r2, _0830d938
	ldrb	r0, [r2, #0x1]
	mov		r1, #0xc0
	orr		r0, r1
	strb	r0, [r2, #0x1]
	mov		r1, #0xc1
	neg		r1, r1
	mov		r0, #0x1
	bl		sub_08327560
	ldr		r1, _0830d93c
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	ldr		r4, _0830d940
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_08327550
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_08327550
	bl		sub_0830d890
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0830d938:	.4byte SIOModeSelect_GeneralPurposeData
_0830d93c:	.4byte InterruptRequestFlags_IRQAcknowledge
_0830d940:	.4byte 0x02007771
	thumb_func_end sub_0830d900

	thumb_func_start sub_0830d944
sub_0830d944:
	push	{ lr }
	bl		sub_0830e5c0
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_0830d952
	mov		r1, #0x1
_0830d952:
	add		r0, r1, #0x0
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0830d944

	thumb_func_start sub_0830d958
sub_0830d958:
	ldr		r0, _0830d96c
	mov		r1, #0x0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0830d968
	mov		r1, #0x1
_0830d968:
	add		r0, r1, #0x0
	bx		lr

_0830d96c:	.4byte 0x03003030
	thumb_func_end sub_0830d958

	thumb_func_start sub_0830d970
sub_0830d970:
	ldr		r0, _0830d984
	mov		r1, #0x0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	ble		_0830d980
	mov		r1, #0x1
_0830d980:
	add		r0, r1, #0x0
	bx		lr

_0830d984:	.4byte 0x03003030
	thumb_func_end sub_0830d970

	thumb_func_start sub_0830d988
sub_0830d988:
	push	{ r4, r5, lr }
	ldr		r5, _0830d9c0
	ldrh	r4, [r5, #0x0]
	bl		sub_0830d944
	cmp		r0, #0x0
	beq		_0830d9d0
	bl		sub_0830d958
	cmp		r0, #0x0
	beq		_0830d9f0
	ldr		r0, _0830d9c4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830d9b4
	ldr		r1, _0830d9c8
	mov		r0, #0x0
	strh	r0, [r1, #0x16]
	bl		sub_0830d900
_0830d9b4:
	add		r0, r4, #0x0
	bl		sub_0830e11c
	ldr		r0, _0830d9cc
	strh	r0, [r5, #0x0]
	b		_0830d9f0

_0830d9c0:	.4byte 0x030001F0
_0830d9c4:	.4byte SIOControlRegister
_0830d9c8:	.4byte 0x03003030
_0830d9cc:	.4byte 0x00003FFF

_0830d9d0:
	ldr		r0, _0830d9f8
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_0830d9e0
	mov		r1, #0x0
_0830d9e0:
	ldr		r0, _0830d9fc
	ldrh	r2, [r0, #0x0]
	ldr		r0, _0830da00
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldr		r0, _0830da04
	and		r0, r2
	strh	r0, [r1, #0x0]
_0830d9f0:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30D9F6, 0x2

_0830d9f8:	.4byte 0x03003030
_0830d9fc:	.4byte KeyStatus
_0830da00:	.4byte 0x030051B8
_0830da04:	.4byte 0x000003FF
	thumb_func_end sub_0830d988

	thumb_func_start sub_0830da08
sub_0830da08:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r0, #0x1
	str		r0, [sp, #0xC]
	ldr		r4, _0830da80
	ldrh	r1, [r4, #0x16]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830da7c
	bl		sub_0830e64c
	add		r2, r0, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_0830da5e
	mov		r0, #0x0
	ldrsb	r0, [r4, r0]
	cmp		r0, r2
	beq		_0830da5e
	ldrh	r0, [r4, #0x16]
	mov		r1, #0xff
	lsl		r1, r1, #0x8
	and		r1, r0
	mov		r0, #0x0
	strh	r1, [r4, #0x16]
	strb	r0, [r4, #0x1]
	mov		r1, #0x0
	add		r4, #0xd
	mov		r3, #0x0
_0830da50:
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	add		r0, r0, r4
	strb	r3, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0x3
	ble		_0830da50
_0830da5e:
	ldr		r4, _0830da80
	mov		r6, #0x0
	strb	r2, [r4, #0x0]
	ldr		r5, _0830da84
	ldr		r0, [r5, #0x0]
	cmp		r0, #0xa
	ble		_0830da74
	strh	r6, [r4, #0x16]
	bl		sub_0830d900
	str		r6, [r5, #0x0]
_0830da74:
	bl		sub_0830d944
	cmp		r0, #0x0
	bne		_0830da88
_0830da7c:
	mov		r0, #0x0
	b		_0830dce0

_0830da80:	.4byte 0x03003030
_0830da84:	.4byte 0x03005198

_0830da88:
	mov		r10, r4
	b		_0830dc74
_0830da8c:
	ldr		r0, _0830db0c
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	mov		r0, sp
	bl		sub_0830e014
	mov		r1, #0x1
	neg		r1, r1
	cmp		r0, r1
	bne		_0830daa2
	b		_0830dc6e
_0830daa2:
	mov		r1, r10
	strb	r4, [r1, #0xa]
	ldr		r2, _0830db10
	mov		r12, r2
	ldr		r5, _0830db14
	mov		r3, r12
	mov		r2, sp
_0830dab0:
	ldrh	r0, [r2, #0x0]
	cmp		r0, r5
	beq		_0830dac0
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r3, #0xa]
	orr		r0, r1
	strb	r0, [r3, #0xa]
_0830dac0:
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0830dab0
	mov		r3, r12
	ldrb	r0, [r3, #0xa]
	cmp		r0, #0x0
	bne		_0830dad2
	b		_0830dc6e
_0830dad2:
	ldrb	r1, [r3, #0xb]
	cmp		r0, r1
	beq		_0830dba4
	mov		r4, #0x0
	mov		r5, r12
	mov		r2, #0xd
	add		r2, r12
	mov		r8, r2
	ldr		r3, _0830db18
	mov		r9, r3
	mov		r6, #0x0
	mov		r3, sp
	mov		r7, #0x0
_0830daec:
	ldrh	r1, [r3, #0x0]
	add		r2, r1, #0x0
	ldr		r0, _0830db14
	cmp		r2, r0
	bne		_0830db1c
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r5, #0xb]
	bic		r1, r0
	strb	r1, [r5, #0xb]
	lsr		r0, r6, #0x18
	add		r0, r8
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	b		_0830db54

.incbin "base.gba", 0x30DB0A, 0x2

_0830db0c:	.4byte 0x03005198
_0830db10:	.4byte 0x03003030
_0830db14:	.4byte 0x0000FFFF
_0830db18:	.4byte 0x00003FFF

_0830db1c:
	mov		r0, r9
	and		r0, r1
	cmp		r0, r9
	beq		_0830db54
	ldr		r0, _0830db98
	cmp		r2, r0
	bne		_0830db3c
	mov		r0, #0x1
	lsl		r0, r4
	ldrb	r1, [r5, #0xb]
	orr		r0, r1
	strb	r0, [r5, #0xb]
	lsr		r0, r6, #0x18
	add		r0, r8
	mov		r1, #0x2
	strb	r1, [r0, #0x0]
_0830db3c:
	ldrb	r1, [r5, #0xc]
	add		r0, r1, #0x0
	asr		r0, r4
	mov		r2, #0x1
	and		r0, r2
	cmp		r0, #0x0
	bne		_0830db54
	add		r0, r2, #0x0
	lsl		r0, r4
	orr		r1, r0
	mov		r2, r12
	strb	r1, [r2, #0xc]
_0830db54:
	ldr		r1, _0830db9c
	add		r0, r7, r1
	ldr		r2, _0830dba0
	strh	r2, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	add		r6, r6, r0
	add		r3, #0x2
	add		r7, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0830daec
	mov		r2, #0x2
	mov		r3, r10
	ldrh	r1, [r3, #0x16]
	mov		r3, #0xff
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r1, r0
	mov		r3, #0x0
	orr		r1, r2
	mov		r0, r10
	strh	r1, [r0, #0x16]
	strb	r3, [r0, #0x1]
	ldrb	r0, [r0, #0xc]
	mov		r1, r10
	ldrb	r1, [r1, #0xa]
	cmp		r0, r1
	bne		_0830dc6e
	mov		r2, r12
	strb	r3, [r2, #0xc]
	mov		r3, #0x0
	str		r3, [sp, #0xC]
	b		_0830dc8a

_0830db98:	.4byte 0x00004B4D
_0830db9c:	.4byte 0x030051B8
_0830dba0:	.4byte 0x000003FF

_0830dba4:
	mov		r1, r12
	ldrh	r0, [r1, #0x16]
	mov		r2, #0xff
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	and		r0, r1
	mov		r3, #0x1
	orr		r0, r3
	mov		r1, r12
	strh	r0, [r1, #0x16]
	mov		r4, #0x0
	mov		r2, #0xd
	add		r2, r12
	mov		r9, r2
	mov		r7, #0x0
	mov		r6, r12
	add		r6, #0x2
	mov		r5, sp
	ldr		r3, _0830dbe4
	mov		r8, r3
_0830dbcc:
	ldrh	r2, [r5, #0x0]
	add		r1, r2, #0x0
	ldr		r0, _0830dbe8
	cmp		r1, r0
	bne		_0830dbec
	strh	r2, [r6, #0x0]
	lsr		r0, r7, #0x18
	add		r0, r9
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
	b		_0830dc1c

.incbin "base.gba", 0x30DBE2, 0x2

_0830dbe4:	.4byte 0x00003FFF
_0830dbe8:	.4byte 0x0000FFFF

_0830dbec:
	mov		r0, r8
	and		r0, r2
	cmp		r0, r8
	beq		_0830dc1c
	ldr		r3, _0830dca0
	cmp		r1, r3
	beq		_0830dc1c
	ldr		r0, _0830dca4
	ldrb	r1, [r0, #0xc]
	add		r0, r1, #0x0
	asr		r0, r4
	mov		r3, #0x1
	and		r0, r3
	cmp		r0, #0x0
	bne		_0830dc1c
	add		r0, r3, #0x0
	lsl		r0, r4
	orr		r1, r0
	mov		r0, r12
	strb	r1, [r0, #0xc]
	strh	r2, [r6, #0x0]
	lsr		r0, r7, #0x18
	add		r0, r9
	strb	r3, [r0, #0x0]
_0830dc1c:
	mov		r1, #0x80
	lsl		r1, r1, #0x11
	add		r7, r7, r1
	add		r6, #0x2
	add		r5, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0830dbcc
	mov		r2, r10
	ldrb	r0, [r2, #0xc]
	ldrb	r3, [r2, #0xb]
	cmp		r0, r3
	bne		_0830dc6e
	mov		r5, #0x0
	mov		r4, #0x0
	ldr		r6, _0830dca4
	ldr		r7, _0830dca8
	add		r3, r6, #0x2
	ldr		r2, _0830dcac
_0830dc42:
	ldrb	r0, [r6, #0xb]
	asr		r0, r4
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830dc50
	add		r5, #0x1
_0830dc50:
	ldrh	r1, [r3, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_0830dc42
	mov		r0, #0x0
	mov		r2, r10
	strb	r5, [r2, #0x1]
	strb	r0, [r2, #0xc]
	mov		r3, #0x0
	str		r3, [sp, #0xC]
_0830dc6e:
	ldr		r0, [sp, #0xC]
	cmp		r0, #0x0
	beq		_0830dc8a
_0830dc74:
	mov		r0, #0x0
	bl		sub_0830e5d8
	str		r0, [sp, #0x8]
	cmp		r0, #0x0
	ble		_0830dc82
	b		_0830da8c
_0830dc82:
	ldr		r1, _0830dcb0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0830dc8a:
	ldr		r1, [sp, #0x8]
	cmp		r1, #0x2
	bgt		_0830dcde
	ldr		r0, _0830dca4
	ldrb	r0, [r0, #0x16]
	cmp		r0, #0x1
	beq		_0830dcb4
	cmp		r0, #0x2
	beq		_0830dcd8
	b		_0830dcde

.incbin "base.gba", 0x30DC9E, 0x2

_0830dca0:	.4byte 0x00004B4D
_0830dca4:	.4byte 0x03003030
_0830dca8:	.4byte 0x000003FF
_0830dcac:	.4byte 0x030051B8
_0830dcb0:	.4byte 0x03005198

_0830dcb4:
	ldr		r0, _0830dccc
	ldrh	r0, [r0, #0x0]
	ldr		r1, _0830dcd0
	and		r1, r0
	ldr		r0, _0830dcd4
	ldrh	r2, [r0, #0x0]
	mov		r0, #0xe0
	lsl		r0, r0, #0x5
	and		r0, r2
	orr		r1, r0
	b		_0830dcda

.incbin "base.gba", 0x30DCCA, 0x2

_0830dccc:	.4byte KeyStatus
_0830dcd0:	.4byte 0x000003FF
_0830dcd4:	.4byte 0x030051B0

_0830dcd8:
	ldr		r1, _0830dcf0
_0830dcda:
	ldr		r0, _0830dcf4
	strh	r1, [r0, #0x0]
_0830dcde:
	ldr		r0, [sp, #0xC]
_0830dce0:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0830dcf0:	.4byte 0x00004B4D
_0830dcf4:	.4byte 0x030001F0
	thumb_func_end sub_0830da08

	thumb_func_start sub_0830dcf8
sub_0830dcf8:
	push	{ r4, lr }
	ldr		r4, _0830dd14
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_0830dd1c
	ldr		r0, _0830dd18
	strh	r1, [r0, #0x16]
	bl		sub_0830d900
	b		_0830dd44

_0830dd14:	.4byte SIOControlRegister
_0830dd18:	.4byte 0x03003030

_0830dd1c:
	bl		sub_0830d970
	cmp		r0, #0x0
	beq		_0830dd44
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830dd38
	ldr		r1, _0830dd4c
	mov		r0, #0x0
	strh	r0, [r1, #0x16]
	bl		sub_0830d900
_0830dd38:
	ldr		r4, _0830dd50
	ldrh	r0, [r4, #0x0]
	bl		sub_0830e11c
	ldr		r0, _0830dd54
	strh	r0, [r4, #0x0]
_0830dd44:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30DD4A, 0x2

_0830dd4c:	.4byte 0x03003030
_0830dd50:	.4byte 0x030001F0
_0830dd54:	.4byte 0x00003FFF
	thumb_func_end sub_0830dcf8

	thumb_func_start sub_0830dd58
sub_0830dd58:
	cmp		r0, r1
	bls		_0830dd64
	sub		r0, r0, r1
	asr		r0, r0, #0x1
	sub		r0, r2, r0
	b		_0830dd68
_0830dd64:
	sub		r0, r1, r0
	asr		r0, r0, #0x1
_0830dd68:
	bx		lr

.incbin "base.gba", 0x30DD6A, 0x96
	thumb_func_end sub_0830dd58

	thumb_func_start sub_0830de00
sub_0830de00:
	ldr		r1, _0830de10
	neg		r0, r0
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0xc3
	strh	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x30DE0E, 0x2

_0830de10:	.4byte Timer3Counter_Reload

.incbin "base.gba", 0x30DE14, 0x200
	thumb_func_end sub_0830de00

	thumb_func_start sub_0830e014
sub_0830e014:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r1, _0830e03c
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0830e10c
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x1
	bne		_0830e044
	ldr		r1, _0830e040
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	strh	r0, [r4, #0x2]
	b		_0830e104

_0830e03c:	.4byte 0x03000294
_0830e040:	.4byte 0x00007FFF

_0830e044:
	ldr		r2, _0830e058
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x8]
	cmp		r1, r0
	bne		_0830e060
	ldr		r1, _0830e05c
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	b		_0830e0ae

_0830e058:	.4byte 0x030001F8
_0830e05c:	.4byte 0x00007FFF

_0830e060:
	ldr		r0, _0830e0bc
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830e0c8
	mov		r7, #0x0
	add		r0, r4, #0x2
	mov		r12, r0
	ldr		r1, _0830e0c0
	mov		r8, r1
	add		r6, r2, #0x4
_0830e078:
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
	bne		_0830e09e
	ldr		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
_0830e09e:
	add		r6, #0x10
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_0830e078
	ldr		r1, _0830e0c4
	add		r0, r1, #0x0
	strh	r0, [r4, #0x0]
	mov		r4, r12
_0830e0ae:
	strh	r0, [r4, #0x0]
	add		r4, #0x2
	strh	r0, [r4, #0x0]
	strh	r0, [r4, #0x2]
	mov		r0, #0x1
	neg		r0, r0
	b		_0830e110

_0830e0bc:	.4byte 0x03005238
_0830e0c0:	.4byte 0x030002A0
_0830e0c4:	.4byte 0x00007FFF

_0830e0c8:
	mov		r7, #0x0
	add		r6, r2, #0x4
	ldr		r0, _0830e108
	mov		r8, r0
_0830e0d0:
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
	bne		_0830e0fc
	ldr		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
_0830e0fc:
	add		r6, #0x10
	add		r7, #0x1
	cmp		r7, #0x3
	ble		_0830e0d0
_0830e104:
	mov		r0, #0x5
	b		_0830e110

_0830e108:	.4byte 0x030002A0

_0830e10c:
	mov		r0, #0x8
	neg		r0, r0
_0830e110:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E11A, 0x2
	thumb_func_end sub_0830e014

	thumb_func_start sub_0830e11c
sub_0830e11c:
	push	{ lr }
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r0, _0830e130
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x3
	ble		_0830e134
	mov		r0, #0x4
	neg		r0, r0
	b		_0830e1d4

_0830e130:	.4byte 0x0300024C

_0830e134:
	ldr		r0, _0830e15c
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0830e1d0
	ldr		r0, _0830e160
	strh	r2, [r0, #0x0]
	cmp		r1, #0x0
	bne		_0830e1ba
	mov		r1, #0x0
	ldr		r0, _0830e164
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x36]
	cmp		r0, #0x0
	beq		_0830e16c
	ldr		r0, _0830e168
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0830e16e
	b		_0830e172

.incbin "base.gba", 0x30E15A, 0x2

_0830e15c:	.4byte 0x03000294
_0830e160:	.4byte SIOData_Normal_8bitandUARTMode
_0830e164:	.4byte 0x030002A0
_0830e168:	.4byte 0x03000284

_0830e16c:
	mov		r1, #0x1
_0830e16e:
	cmp		r1, #0x0
	beq		_0830e1ba
_0830e172:
	ldr		r0, _0830e190
	ldr		r0, [r0, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830e19c
	ldr		r1, _0830e194
	ldr		r0, _0830e198
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	b		_0830e19e

.incbin "base.gba", 0x30E18E, 0x2

_0830e190:	.4byte 0x03000254
_0830e194:	.4byte 0x0202A91C
_0830e198:	.4byte 0x03004AF4

_0830e19c:
	mov		r1, #0x0
_0830e19e:
	cmp		r1, #0x0
	beq		_0830e1aa
	add		r0, r1, #0x0
	bl		sub_0830de00
	b		_0830e1ba
_0830e1aa:
	ldr		r2, _0830e1c4
	ldr		r0, _0830e1c8
	ldr		r0, [r0, #0x0]
	mov		r3, #0xc1
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_0830e1ba:
	ldr		r1, _0830e1cc
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r0, #0x5
	b		_0830e1d4

_0830e1c4:	.4byte SIOControlRegister
_0830e1c8:	.4byte 0x03000250
_0830e1cc:	.4byte 0x03000284

_0830e1d0:
	mov		r0, #0x8
	neg		r0, r0
_0830e1d4:
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0830e11c

	thumb_func_start sub_0830e1d8
sub_0830e1d8:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r0, _0830e27c
	mov		r5, #0x0
	str		r5, [r0, #0x0]
	ldr		r6, _0830e280
	str		r4, [r6, #0x0]
	ldr		r0, _0830e284
	str		r5, [r0, #0x0]
	ldr		r1, _0830e288
	ldr		r0, _0830e28c
	str		r5, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r2, _0830e290
	str		r5, [r2, #0x0]
	ldr		r3, _0830e294
	ldrh	r1, [r4, #0x30]
	mov		r0, #0x3
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, _0830e298
	str		r5, [r0, #0x0]
	ldr		r0, [r4, #0x0]
	str		r0, [r2, #0x0]
	ldrh	r0, [r4, #0x2e]
	add		r7, r3, #0x0
	cmp		r0, #0x0
	bne		_0830e216
	mov		r0, #0xa
	strh	r0, [r4, #0x2e]
_0830e216:
	ldr		r0, _0830e29c
	str		r5, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r1, _0830e2a0
	ldr		r0, [r6, #0x0]
	ldrh	r0, [r0, #0x2c]
	strh	r0, [r1, #0x0]
	ldr		r4, _0830e2a4
	ldr		r3, _0830e2a8
	ldr		r5, _0830e2ac
	mov		r2, #0x3
_0830e22e:
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x2]
	add		r1, #0x2
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0830e22e
	mov		r2, #0x0
	str		r2, [r3, #0x0]
	str		r2, [r4, #0x0]
	ldr		r0, _0830e2b0
	strh	r2, [r0, #0x0]
	ldr		r3, _0830e2b4
	ldr		r0, [r7, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x6
	add		r1, r4, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r0, _0830e2b8
	strh	r2, [r0, #0x0]
	mov		r0, #0x7
	add		r1, r5, #0x0
	bl		sub_08327550
	ldr		r1, _0830e2bc
	mov		r0, #0x6
	bl		sub_08327550
	ldr		r1, _0830e2c0
	mov		r0, #0x2
	bl		sub_08327560
	ldr		r1, _0830e2c4
	mov		r0, #0xf0
	str		r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0830e27c:	.4byte 0x030051C0
_0830e280:	.4byte 0x030002A0
_0830e284:	.4byte 0x03004AF4
_0830e288:	.4byte 0x03000298
_0830e28c:	.4byte 0x03000294
_0830e290:	.4byte 0x03000254
_0830e294:	.4byte 0x03000250
_0830e298:	.4byte 0x03000264
_0830e29c:	.4byte 0x03000268
_0830e2a0:	.4byte 0x030002A8
_0830e2a4:	.4byte 0x030002B4
_0830e2a8:	.4byte 0x030002B8
_0830e2ac:	.4byte 0x02007FED
_0830e2b0:	.4byte SIOModeSelect_GeneralPurposeData
_0830e2b4:	.4byte SIOControlRegister
_0830e2b8:	.4byte Timer3Control
_0830e2bc:	.4byte 0x02007E15
_0830e2c0:	.4byte 0x000100C0
_0830e2c4:	.4byte 0x0300024C
	thumb_func_end sub_0830e1d8

	thumb_func_start sub_0830e2c8
sub_0830e2c8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	ldr		r0, _0830e374
	mov		r2, #0x0
	str		r2, [r0, #0x0]
	ldr		r1, _0830e378
	ldr		r0, _0830e37c
	str		r2, [r0, #0x0]
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r3, _0830e380
	ldr		r0, [r3, #0x0]
	mov		r1, #0x4
	neg		r1, r1
	and		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, _0830e384
	str		r2, [r0, #0x0]
	ldr		r0, _0830e388
	str		r2, [r0, #0x0]
	ldr		r0, _0830e38c
	str		r2, [r0, #0x0]
	ldr		r0, _0830e390
	str		r2, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r0, _0830e394
	str		r2, [r0, #0x4]
	ldr		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	ldr		r0, _0830e398
	str		r2, [r0, #0x0]
	ldr		r1, _0830e39c
	str		r2, [r1, #0x0]
	ldr		r3, _0830e3a0
	ldr		r0, [r3, #0x0]
	ldr		r0, [r0, #0x4]
	str		r0, [r1, #0x8]
	str		r0, [r1, #0x4]
	ldrh	r0, [r1, #0xc]
	strh	r2, [r1, #0xc]
	mov		r4, #0x0
	mov		r9, r3
	ldr		r7, _0830e3a4
	mov		r6, #0x0
	ldr		r0, _0830e3a8
	mov		r8, r0
	add		r3, r7, #0x0
	add		r5, r3, #0x0
	mov		r1, #0xff
	mov		r12, r1
_0830e332:
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
	ble		_0830e332
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0830e374:	.4byte 0x0300029C
_0830e378:	.4byte 0x03000298
_0830e37c:	.4byte 0x03000294
_0830e380:	.4byte 0x03000254
_0830e384:	.4byte 0x03000260
_0830e388:	.4byte 0x03000280
_0830e38c:	.4byte 0x03000284
_0830e390:	.4byte 0x03000268
_0830e394:	.4byte 0x03000288
_0830e398:	.4byte 0x030002BC
_0830e39c:	.4byte 0x03000238
_0830e3a0:	.4byte 0x030002A0
_0830e3a4:	.4byte 0x030001F8
_0830e3a8:	.4byte 0x03000270
	thumb_func_end sub_0830e2c8

	thumb_func_start sub_0830e3ac
sub_0830e3ac:
	push	{ r4, r5, lr }
	ldr		r4, _0830e3c0
	ldr		r3, [r4, #0x0]
	cmp		r3, #0x0
	beq		_0830e3c8
	cmp		r3, #0x1
	beq		_0830e434
	ldr		r0, _0830e3c4
	ldr		r0, [r0, #0x0]
	b		_0830e4cc

_0830e3c0:	.4byte 0x030002BC
_0830e3c4:	.4byte 0x0300024C

_0830e3c8:
	ldr		r0, _0830e418
	strh	r3, [r0, #0x0]
	ldr		r1, _0830e41c
	ldr		r0, _0830e420
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x2c]
	mvn		r0, r0
	strh	r0, [r1, #0x0]
	ldr		r2, _0830e424
	ldr		r0, _0830e428
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
	beq		_0830e4c8
	mov		r0, #0x40
	and		r0, r2
	cmp		r0, #0x0
	bne		_0830e4c8
	ldr		r1, _0830e42c
	mov		r0, #0x4
	and		r0, r2
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0830e40c
	mov		r0, #0xf0
	str		r0, [r1, #0x0]
_0830e40c:
	ldr		r0, _0830e430
	str		r3, [r0, #0x0]
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	b		_0830e4c8

.incbin "base.gba", 0x30E416, 0x2

_0830e418:	.4byte SIOModeSelect_GeneralPurposeData
_0830e41c:	.4byte SIOData_Normal_8bitandUARTMode
_0830e420:	.4byte 0x030002A0
_0830e424:	.4byte SIOControlRegister
_0830e428:	.4byte 0x03000250
_0830e42c:	.4byte 0x0300024C
_0830e430:	.4byte 0x030051C0

_0830e434:
	ldr		r0, _0830e480
	ldrh	r0, [r0, #0x0]
	add		r2, r0, #0x0
	ldr		r0, _0830e484
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0830e49c
	mov		r1, #0x40
	and		r1, r2
	cmp		r1, #0x0
	bne		_0830e49c
	ldr		r0, _0830e488
	str		r1, [r0, #0x0]
	ldr		r1, _0830e48c
	mov		r0, #0x30
	and		r0, r2
	asr		r0, r0, #0x4
	str		r0, [r1, #0x0]
	ldr		r2, _0830e490
	lsl		r1, r0, #0x4
	add		r1, r1, r2
	ldrh	r2, [r1, #0xe]
	strh	r3, [r1, #0xe]
	ldr		r3, _0830e494
	ldr		r1, [r3, #0x0]
	mov		r2, #0x4
	neg		r2, r2
	and		r1, r2
	str		r1, [r3, #0x0]
	ldr		r1, [r3, #0x0]
	mov		r2, #0x2
	orr		r1, r2
	str		r1, [r3, #0x0]
	ldr		r1, _0830e498
	str		r2, [r1, #0x0]
	str		r2, [r4, #0x0]
	b		_0830e4cc

.incbin "base.gba", 0x30E47E, 0x2

_0830e480:	.4byte SIOControlRegister
_0830e484:	.4byte 0x030051C0
_0830e488:	.4byte 0x03000248
_0830e48c:	.4byte 0x0300024C
_0830e490:	.4byte 0x030001F8
_0830e494:	.4byte 0x03000254
_0830e498:	.4byte 0x03000294

_0830e49c:
	ldr		r1, _0830e4d4
	ldr		r0, _0830e4d8
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x2c]
	mvn		r0, r0
	strh	r0, [r1, #0x0]
	ldr		r2, _0830e4dc
	ldr		r0, _0830e4e0
	ldr		r0, [r0, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _0830e4e4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0830e4c8
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strh	r0, [r2, #0x0]
_0830e4c8:
	mov		r0, #0x1
	neg		r0, r0
_0830e4cc:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E4D2, 0x2

_0830e4d4:	.4byte SIOData_Normal_8bitandUARTMode
_0830e4d8:	.4byte 0x030002A0
_0830e4dc:	.4byte SIOControlRegister
_0830e4e0:	.4byte 0x03000250
_0830e4e4:	.4byte 0x0300024C

.incbin "base.gba", 0x30E4E8, 0xD8
	thumb_func_end sub_0830e3ac

	thumb_func_start sub_0830e5c0
sub_0830e5c0:
	ldr		r0, _0830e5d0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0830e5d4
	mov		r0, #0x8
	neg		r0, r0
	b		_0830e5d6

.incbin "base.gba", 0x30E5CE, 0x2

_0830e5d0:	.4byte 0x03000294

_0830e5d4:
	mov		r0, #0x0
_0830e5d6:
	bx		lr
	thumb_func_end sub_0830e5c0

	thumb_func_start sub_0830e5d8
sub_0830e5d8:
	push	{ r4, lr }
	ldr		r2, _0830e610
	lsl		r3, r0, #0x4
	add		r1, r2, #0x4
	add		r1, r3, r1
	ldr		r4, [r1, #0x0]
	add		r2, #0x8
	add		r3, r3, r2
	ldr		r1, [r3, #0x0]
	ldr		r2, _0830e614
	ldr		r2, [r2, #0x0]
	lsl		r0, r0, #0x3
	add		r2, #0x10
	add		r2, r2, r0
	ldr		r2, [r2, #0x0]
	add		r0, r4, #0x0
	bl		sub_0830dd58
	add		r1, r0, #0x0
	ldr		r2, _0830e618
	ldr		r0, [r2, #0x0]
	cmp		r1, r0
	ble		_0830e608
	str		r1, [r2, #0x0]
_0830e608:
	add		r0, r1, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0830e610:	.4byte 0x030001F8
_0830e614:	.4byte 0x030002A0
_0830e618:	.4byte 0x030002B8

.incbin "base.gba", 0x30E61C, 0x30
	thumb_func_end sub_0830e5d8

	thumb_func_start sub_0830e64c
sub_0830e64c:
	push	{ lr }
	bl		sub_0830e3ac
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E656, 0x6A
	thumb_func_end sub_0830e64c

	thumb_func_start sub_0830e6c0
sub_0830e6c0:
	lsl		r0, r0, #0x9
	ldr		r1, _0830e6c8
	add		r0, r0, r1
	bx		lr

_0830e6c8:	.4byte 0x030002C0
	thumb_func_end sub_0830e6c0

	thumb_func_start sub_0830e6cc
sub_0830e6cc:
	ldr		r1, _0830e6d4
	str		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x30E6D2, 0x2

_0830e6d4:	.4byte 0x030006C0

.incbin "base.gba", 0x30E6D8, 0xC
	thumb_func_end sub_0830e6cc

	thumb_func_start sub_0830e6e4
sub_0830e6e4:
	lsl		r0, r0, #0xb
	lsl		r2, r2, #0x5
	add		r2, r2, r1
	lsl		r2, r2, #0x1
	ldr		r1, _0830e6f4
	add		r2, r2, r1
	add		r0, r0, r2
	bx		lr

_0830e6f4:	.4byte 0x030006C8

.incbin "base.gba", 0x30E6F8, 0x38
	thumb_func_end sub_0830e6e4

	thumb_func_start sub_0830e730
sub_0830e730:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r2, _0830e740
	ldrh	r1, [r2, #0x0]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

.incbin "base.gba", 0x30E73E, 0x2

_0830e740:	.4byte 0x030016C8

.incbin "base.gba", 0x30E744, 0x68
	thumb_func_end sub_0830e730

	thumb_func_start sub_0830e7ac
sub_0830e7ac:
	push	{ r4, r5, r6, lr }
	cmp		r0, #0x0
	bge		_0830e7b4
	neg		r0, r0
_0830e7b4:
	ldr		r2, _0830e804
	add		r4, r2, #0x0
	and		r4, r0
	cmp		r1, #0x0
	bge		_0830e7c0
	neg		r1, r1
_0830e7c0:
	add		r5, r2, #0x0
	and		r5, r1
	cmp		r4, r5
	bcs		_0830e7ce
	add		r0, r4, #0x0
	add		r4, r5, #0x0
	add		r5, r0, #0x0
_0830e7ce:
	cmp		r5, #0x0
	beq		_0830e7fa
	mov		r6, #0x2
_0830e7d4:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_083272c8
	add		r2, r0, #0x0
	add		r0, r2, #0x0
	mul		r0, r2
	add		r2, r0, #0x0
	add		r1, r2, #0x4
	bl		sub_083272c8
	add		r2, r0, #0x0
	lsl		r0, r2, #0x1
	mul		r0, r4
	add		r4, r4, r0
	mul		r5, r2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0830e7d4
_0830e7fa:
	add		r0, r4, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E802, 0x2

_0830e804:	.4byte 0x7FFFFFFF
	thumb_func_end sub_0830e7ac

	thumb_func_start sub_0830e808
sub_0830e808:
	push	{ lr }
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_083272bc
	lsl		r0, r0, #0x10
	mov		r1, #0x80
	lsl		r1, r1, #0x17
	add		r0, r0, r1
	lsr		r0, r0, #0x10
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E824, 0x1C
	thumb_func_end sub_0830e808

	thumb_func_start sub_0830e840
sub_0830e840:
	push	{ lr }
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_083272bc
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30E85C, 0x10
	thumb_func_end sub_0830e840

	thumb_func_start sub_0830e86c
sub_0830e86c:
	add		r2, r0, #0x0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	beq		_0830e87c
	str		r1, [r0, #0x0]
	b		_0830e87e
_0830e87c:
	str		r1, [r2, #0x0]
_0830e87e:
	str		r1, [r2, #0x4]
	bx		lr

.incbin "base.gba", 0x30E882, 0x2E
	thumb_func_end sub_0830e86c

	thumb_func_start sub_0830e8b0
sub_0830e8b0:
	add		r3, r0, #0x0
	ldr		r2, [r3, #0x4]
	str		r2, [r1, #0x4]
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	cmp		r2, #0x0
	beq		_0830e8c2
	str		r1, [r2, #0x0]
	b		_0830e8c4
_0830e8c2:
	str		r1, [r3, #0x0]
_0830e8c4:
	str		r1, [r3, #0x4]
	bx		lr
	thumb_func_end sub_0830e8b0

	thumb_func_start sub_0830e8c8
sub_0830e8c8:
	add		r3, r0, #0x0
	ldr		r0, [r1, #0x4]
	str		r0, [r2, #0x4]
	str		r1, [r2, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_0830e8da
	str		r2, [r0, #0x0]
	b		_0830e8dc
_0830e8da:
	str		r2, [r3, #0x0]
_0830e8dc:
	str		r2, [r1, #0x4]
	bx		lr

.incbin "base.gba", 0x30E8E0, 0x50
	thumb_func_end sub_0830e8c8

	thumb_func_start sub_0830e930
sub_0830e930:
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r0, [r3, #0x0]
	cmp		r2, r0
	bne		_0830e940
	ldr		r0, [r2, #0x0]
	str		r0, [r3, #0x0]
	b		_0830e946
_0830e940:
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
_0830e946:
	ldr		r0, [r3, #0x4]
	cmp		r2, r0
	bne		_0830e952
	ldr		r0, [r2, #0x4]
	str		r0, [r3, #0x4]
	b		_0830e958
_0830e952:
	ldr		r1, [r2, #0x0]
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0x4]
_0830e958:
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	str		r0, [r2, #0x4]
	bx		lr
	thumb_func_end sub_0830e930

	thumb_func_start sub_0830e960
sub_0830e960:
	mov		r1, #0x0
	str		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x30E968, 0x8
	thumb_func_end sub_0830e960

	thumb_func_start sub_0830e970
sub_0830e970:
	add		r3, r0, #0x0
	mov		r0, #0x0
	ldr		r2, [r3, #0x0]
	str		r0, [r1, #0x40]
	str		r2, [r1, #0x3c]
	cmp		r2, #0x0
	beq		_0830e982
	str		r1, [r2, #0x40]
	b		_0830e984
_0830e982:
	str		r1, [r3, #0x4]
_0830e984:
	str		r1, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x30E988, 0x18
	thumb_func_end sub_0830e970

	thumb_func_start sub_0830e9a0
sub_0830e9a0:
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x3c]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0830e9b0
	mov		r0, #0x0
	str		r0, [r1, #0x40]
	b		_0830e9b2
_0830e9b0:
	str		r1, [r0, #0x4]
_0830e9b2:
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	str		r0, [r2, #0x3c]
	add		r0, r2, #0x0
	bx		lr
	thumb_func_end sub_0830e9a0

	thumb_func_start sub_0830e9bc
sub_0830e9bc:
	ldr		r2, [r0, #0x4]
	ldr		r1, [r2, #0x40]
	str		r1, [r0, #0x4]
	cmp		r1, #0x0
	beq		_0830e9cc
	mov		r0, #0x0
	str		r0, [r1, #0x3c]
	b		_0830e9ce
_0830e9cc:
	str		r1, [r0, #0x0]
_0830e9ce:
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	str		r0, [r2, #0x3c]
	add		r0, r2, #0x0
	bx		lr
	thumb_func_end sub_0830e9bc

	thumb_func_start sub_0830e9d8
sub_0830e9d8:
	push	{ lr }
	add		r2, r0, #0x0
	add		r3, r1, #0x0
	ldr		r0, [r2, #0x0]
	cmp		r1, r0
	bne		_0830e9ec
	add		r0, r2, #0x0
	bl		sub_0830e9a0
	b		_0830ea0c
_0830e9ec:
	ldr		r0, [r2, #0x4]
	cmp		r1, r0
	bne		_0830e9fa
	add		r0, r2, #0x0
	bl		sub_0830e9bc
	b		_0830ea0c
_0830e9fa:
	ldr		r1, [r3, #0x40]
	ldr		r0, [r3, #0x3c]
	str		r0, [r1, #0x3c]
	ldr		r1, [r3, #0x3c]
	ldr		r0, [r3, #0x40]
	str		r0, [r1, #0x40]
	mov		r0, #0x0
	str		r0, [r3, #0x40]
	str		r0, [r3, #0x3c]
_0830ea0c:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30EA10, 0x40
	thumb_func_end sub_0830e9d8

	thumb_func_start sub_0830ea50
sub_0830ea50:
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x30EA54, 0x4
	thumb_func_end sub_0830ea50

	thumb_func_start sub_0830ea58
sub_0830ea58:
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x30EA5C, 0x4
	thumb_func_end sub_0830ea58

	thumb_func_start sub_0830ea60
sub_0830ea60:
	mov		r1, #0x0
	str		r1, [r0, #0x4]
	str		r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_0830ea60

	thumb_func_start sub_0830ea68
sub_0830ea68:
	mov		r1, #0x0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0830ea72
	mov		r1, #0x1
_0830ea72:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x30EA76, 0xA
	thumb_func_end sub_0830ea68

	thumb_func_start sub_0830ea80
sub_0830ea80:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	ldrb	r2, [r3, #0x0]
	cmp		r2, #0x18
	beq		_0830ea9c
	lsl		r1, r2, #0x2
	add		r0, r3, #0x4
	add		r0, r0, r1
	str		r4, [r0, #0x0]
	add		r2, #0x1
	strb	r2, [r3, #0x0]
	mov		r0, #0x1
	b		_0830ea9e
_0830ea9c:
	mov		r0, #0x0
_0830ea9e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0830ea80

	thumb_func_start sub_0830eaa4
sub_0830eaa4:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	ldrb	r2, [r3, #0x1]
	cmp		r2, #0x40
	beq		_0830eac0
	lsl		r1, r2, #0x2
	add		r0, #0x64
	add		r0, r0, r1
	str		r4, [r0, #0x0]
	add		r2, #0x1
	strb	r2, [r3, #0x1]
	mov		r0, #0x1
	b		_0830eac2
_0830eac0:
	mov		r0, #0x0
_0830eac2:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0830eaa4

	thumb_func_start sub_0830eac8
sub_0830eac8:
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
	bge		_0830eb28
	mov		r10, r0
_0830eae4:
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
	bge		_0830eb14
	lsl		r0, r3, #0x2
	add		r1, r0, r6
_0830eafe:
	ldr		r0, [r1, #0x0]
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	cmp		r0, r5
	bge		_0830eb0c
	add		r5, r0, #0x0
	add		r4, r3, #0x0
_0830eb0c:
	add		r1, #0x4
	add		r3, #0x1
	cmp		r3, r7
	blt		_0830eafe
_0830eb14:
	lsl		r1, r4, #0x2
	add		r1, r1, r6
	ldr		r3, [r1, #0x0]
	add		r2, r2, r6
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	str		r3, [r2, #0x0]
	mov		r2, r12
	cmp		r2, r10
	blt		_0830eae4
_0830eb28:
	mov		r3, #0x0
	mov		r2, #0x0
	mov		r4, #0x0
	cmp		r2, r7
	bge		_0830eb68
_0830eb32:
	lsl		r0, r3, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	add		r0, #0x36
	add		r3, #0x1
	mov		r10, r3
	add		r3, r4, #0x1
	ldrb	r1, [r0, #0x0]
	cmp		r2, r1
	bgt		_0830eb56
	add		r1, r0, #0x0
_0830eb48:
	mov		r5, r8
	add		r0, r5, r2
	strb	r4, [r0, #0x0]
	add		r2, #0x1
	ldrb	r0, [r1, #0x0]
	cmp		r2, r0
	ble		_0830eb48
_0830eb56:
	add		r4, r3, #0x0
	mov		r3, r10
	cmp		r3, r7
	blt		_0830eb32
	b		_0830eb68
_0830eb60:
	mov		r1, r8
	add		r0, r1, r2
	strb	r4, [r0, #0x0]
	add		r2, #0x1
_0830eb68:
	cmp		r2, r9
	blt		_0830eb60
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30EB7A, 0x636
	thumb_func_end sub_0830eac8

	thumb_func_start sub_0830f1b0
sub_0830f1b0:
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

.incbin "base.gba", 0x30F1E2, 0x4A
	thumb_func_end sub_0830f1b0

	thumb_func_start sub_0830f22c
sub_0830f22c:
	mov		r3, #0x1e
	ldrsh	r2, [r0, r3]
	mov		r3, #0x1e
	ldrsh	r0, [r1, r3]
	mov		r1, #0x0
	cmp		r2, r0
	bge		_0830f23c
	mov		r1, #0x1
_0830f23c:
	add		r0, r1, #0x0
	bx		lr
	thumb_func_end sub_0830f22c

	thumb_func_start sub_0830f240
sub_0830f240:
	mov		r3, #0x20
	ldrsh	r2, [r0, r3]
	mov		r3, #0x20
	ldrsh	r0, [r1, r3]
	mov		r1, #0x0
	cmp		r2, r0
	ble		_0830f250
	mov		r1, #0x1
_0830f250:
	add		r0, r1, #0x0
	bx		lr
	thumb_func_end sub_0830f240

	thumb_func_start sub_0830f254
sub_0830f254:
	ldrb	r0, [r0, #0x1e]
	ldrb	r1, [r1, #0x1e]
	sub		r0, r0, r1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_0830f26a
	neg		r0, r0
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
_0830f26a:
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x30F26E, 0x2
	thumb_func_end sub_0830f254

	thumb_func_start sub_0830f270
sub_0830f270:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r6, r0, #0x0
	ldr		r4, _0830f2a8
	add		r4, #0x24
	add		r5, r6, #0x0
	add		r5, #0x1c
	add		r3, r6, #0x0
	add		r3, #0x24
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	bl		sub_0831ed70
	add		r2, r6, #0x0
	add		r2, #0x20
	ldr		r3, [r6, #0x8]
	mov		r1, #0x24
	ldrsh	r0, [r6, r1]
	str		r0, [sp, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0831ed84
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0830f2a8:	.4byte 0x030031D0

.incbin "base.gba", 0x30F2AC, 0x7C
	thumb_func_end sub_0830f270

	thumb_func_start sub_0830f328
sub_0830f328:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r6, _0830f364
	ldr		r5, [r6, #0x0]
	cmp		r5, #0x1f
	bgt		_0830f36c
	lsl		r3, r5, #0x5
	ldr		r2, _0830f368
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
	b		_0830f370

.incbin "base.gba", 0x30F362, 0x2

_0830f364:	.4byte 0x030016DC
_0830f368:	.4byte 0x030016E6

_0830f36c:
	mov		r0, #0x1
	neg		r0, r0
_0830f370:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x30F376, 0x2
	thumb_func_end sub_0830f328

	thumb_func_start sub_0830f378
sub_0830f378:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x28
	mov		r10, r0
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r1, r10
	ldrh	r1, [r1, #0x4]
	str		r1, [sp, #0x0]
	mov		r2, r10
	ldrh	r2, [r2, #0x6]
	str		r2, [sp, #0x4]
	ldrh	r3, [r0, #0x0]
	str		r3, [sp, #0x8]
	mov		r4, #0x2
	add		r8, r4
	mov		r5, r10
	ldrh	r5, [r5, #0x20]
	str		r5, [sp, #0xC]
	mov		r6, r10
	ldrh	r6, [r6, #0x22]
	str		r6, [sp, #0x10]
	ldr		r0, _0830f480
	ldr		r1, [r0, #0x0]
	ldr		r2, _0830f484
	cmp		r1, r2
	ble		_0830f3b6
	b		_0830f4de
_0830f3b6:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	ldr		r1, [sp, #0xC]
	cmp		r1, r0
	bne		_0830f490
	ldr		r3, [sp, #0x10]
	cmp		r3, r1
	bne		_0830f490
	mov		r4, r10
	ldr		r0, [r4, #0x18]
	cmp		r0, r1
	bne		_0830f490
	ldr		r5, [sp, #0x8]
	cmp		r5, #0x0
	bgt		_0830f3d6
	b		_0830f676
_0830f3d6:
	mov		r12, r2
	ldr		r7, _0830f488
	add		r6, r7, #0x4
	mov		r9, r6
_0830f3de:
	ldr		r0, _0830f480
	ldr		r6, [r0, #0x0]
	cmp		r6, r12
	ble		_0830f3e8
	b		_0830f676
_0830f3e8:
	mov		r1, r8
	ldrh	r5, [r1, #0x0]
	mov		r2, #0x2
	add		r8, r2
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
	mov		r0, r8
	ldrh	r5, [r0, #0x0]
	mov		r1, #0x2
	add		r8, r1
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
	ldr		r1, _0830f48c
	and		r0, r1
	str		r0, [r3, #0x0]
	mov		r0, r8
	ldrh	r5, [r0, #0x0]
	mov		r1, #0x2
	add		r8, r1
	add		r4, r9
	strh	r5, [r4, #0x0]
	add		r2, r9
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
	ldr		r4, _0830f480
	str		r0, [r4, #0x0]
	ldr		r5, [sp, #0x8]
	sub		r5, #0x1
	str		r5, [sp, #0x8]
	cmp		r5, #0x0
	bgt		_0830f3de
	b		_0830f676

.incbin "base.gba", 0x30F47E, 0x2

_0830f480:	.4byte 0x030016D8
_0830f484:	.4byte 0x000001FF
_0830f488:	.4byte 0x030016E0
_0830f48c:	.4byte 0xfffffcff

_0830f490:
	mov		r6, r8
	ldrh	r5, [r6, #0x2]
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r0, r5
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_0830f4a2
	sub		r1, #0x2
_0830f4a2:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r5, r0
	mov		r2, #0x1
	cmp		r5, #0x0
	beq		_0830f4b0
	sub		r2, #0x2
_0830f4b0:
	mov		r3, r10
	mov		r4, #0x18
	ldrsh	r0, [r3, r4]
	mul		r0, r1
	strh	r0, [r3, #0x18]
	mov		r5, #0x1a
	ldrsh	r0, [r3, r5]
	mul		r0, r1
	strh	r0, [r3, #0x1a]
	mov		r6, #0x1c
	ldrsh	r0, [r3, r6]
	mul		r0, r2
	strh	r0, [r3, #0x1c]
	mov		r1, #0x1e
	ldrsh	r0, [r3, r1]
	mul		r0, r2
	strh	r0, [r3, #0x1e]
	mov		r0, r10
	bl		sub_0830f328
	str		r0, [sp, #0x18]
	cmp		r0, #0x0
	bge		_0830f4e4
_0830f4de:
	mov		r0, #0x1
	neg		r0, r0
	b		_0830f678
_0830f4e4:
	ldr		r0, [sp, #0xC]
	cmp		r0, #0xff
	ble		_0830f4f0
	ldr		r0, [sp, #0x10]
	cmp		r0, #0xff
	bgt		_0830f4f8
_0830f4f0:
	mov		r2, #0xc0
	lsl		r2, r2, #0x2
	str		r2, [sp, #0x14]
	b		_0830f4fe
_0830f4f8:
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	str		r3, [sp, #0x14]
_0830f4fe:
	ldr		r4, [sp, #0x8]
	cmp		r4, #0x0
	bgt		_0830f506
	b		_0830f676
_0830f506:
	mov		r5, r8
	ldrh	r0, [r5, #0x0]
	lsr		r3, r0, #0xe
	ldrh	r0, [r5, #0x2]
	lsr		r4, r0, #0xe
	ldr		r6, _0830f5a0
	ldr		r0, [r6, #0x0]
	ldr		r1, _0830f5a4
	cmp		r0, r1
	ble		_0830f51c
	b		_0830f676
_0830f51c:
	ldrh	r5, [r5, #0x0]
	mov		r2, #0x2
	add		r8, r2
	mov		r2, #0xff
	and		r2, r5
	lsl		r0, r2, #0x18
	asr		r6, r0, #0x18
	ldr		r1, _0830f5a8
	lsl		r4, r4, #0x2
	lsl		r3, r3, #0x4
	add		r0, r4, r3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	add		r7, r6, r0
	lsl		r6, r7, #0x8
	add		r0, r6, #0x0
	ldr		r1, [sp, #0x10]
	str		r2, [sp, #0x20]
	str		r3, [sp, #0x24]
	bl		sub_083272c8
	add		r6, r0, #0x0
	sub		r0, r6, r7
	ldr		r2, [sp, #0x20]
	add		r6, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r7, r4, #0x0
	ldr		r3, [sp, #0x24]
	add		r4, r3, #0x0
	ldr		r3, [sp, #0x14]
	cmp		r3, r0
	beq		_0830f564
	mov		r0, r9
	sub		r6, r6, r0
_0830f564:
	ldr		r1, _0830f5a0
	ldr		r2, [r1, #0x0]
	lsl		r2, r2, #0x1
	ldr		r0, _0830f5ac
	add		r2, r2, r0
	ldr		r3, [sp, #0x4]
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r6
	mov		r1, #0xff
	and		r0, r1
	mov		r6, #0xff
	lsl		r6, r6, #0x8
	add		r1, r6, #0x0
	and		r5, r1
	orr		r0, r5
	strh	r0, [r2, #0x0]
	mov		r0, r8
	ldrh	r5, [r0, #0x0]
	mov		r1, #0x2
	add		r8, r1
	add		r2, r5, #0x0
	ldr		r3, _0830f5a4
	and		r2, r3
	cmp		r2, #0xff
	ble		_0830f5b0
	add		r0, r2, #0x0
	eor		r0, r3
	neg		r6, r0
	b		_0830f5b2

_0830f5a0:	.4byte 0x030016D8
_0830f5a4:	.4byte 0x000001FF
_0830f5a8:	.4byte 0x0202A970
_0830f5ac:	.4byte 0x030016E0

_0830f5b0:
	add		r6, r2, #0x0
_0830f5b2:
	ldr		r1, _0830f688
	add		r0, r7, r4
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	add		r7, r6, r4
	lsl		r6, r7, #0x8
	add		r0, r6, #0x0
	ldr		r1, [sp, #0xC]
	str		r2, [sp, #0x20]
	bl		sub_083272c8
	add		r6, r0, #0x0
	sub		r0, r6, r7
	ldr		r2, [sp, #0x20]
	add		r6, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	ldr		r1, [sp, #0x14]
	cmp		r1, r0
	beq		_0830f5dc
	sub		r6, r6, r4
_0830f5dc:
	ldr		r2, _0830f68c
	ldr		r4, [r2, #0x0]
	lsl		r7, r4, #0x1
	ldr		r0, _0830f690
	add		r3, r7, r0
	ldr		r1, [sp, #0x0]
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r6
	ldr		r2, _0830f694
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
	ldr		r2, _0830f690
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
	ldr		r1, _0830f698
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r6, [sp, #0x14]
	orr		r0, r6
	str		r0, [r2, #0x0]
	ldr		r0, _0830f69c
	add		r0, r7, r0
	str		r0, [sp, #0x1C]
	mov		r1, r8
	ldrh	r0, [r1, #0x0]
	ldr		r2, [sp, #0x1C]
	strh	r0, [r2, #0x0]
	mov		r5, #0x2
	add		r8, r5
	ldr		r6, _0830f69c
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
	ldr		r3, _0830f68c
	str		r4, [r3, #0x0]
	ldr		r4, [sp, #0x8]
	sub		r4, #0x1
	str		r4, [sp, #0x8]
	cmp		r4, #0x0
	ble		_0830f676
	b		_0830f506
_0830f676:
	mov		r0, #0x0
_0830f678:
	add		sp, #0x28
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0830f688:	.4byte 0x0202A940
_0830f68c:	.4byte 0x030016D8
_0830f690:	.4byte 0x030016E2
_0830f694:	.4byte 0x000001FF
_0830f698:	.4byte 0xfffffcff
_0830f69c:	.4byte 0x030016E4
	thumb_func_end sub_0830f378

	thumb_func_start sub_0830f6a0
sub_0830f6a0:
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
	bne		_0830f788
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
	beq		_0830f6e2
	cmp		r6, #0x0
	bne		_0830f6e8
_0830f6e2:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r12, r6
_0830f6e8:
	ldr		r1, _0830f778
	ldr		r7, [sp, #0x0+0x44]
	lsl		r0, r7, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0830f6f8
	add		r0, #0x3f
_0830f6f8:
	asr		r3, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r4, _0830f77c
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	mov		r8, r0
	ldr		r0, [r0, #0x0]
	mov		r7, r12
	mul		r7, r0
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_0830f71a
	ldr		r7, _0830f780
	add		r0, r0, r7
_0830f71a:
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
	bge		_0830f736
	ldr		r7, _0830f780
	add		r0, r0, r7
_0830f736:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1A]
	ldr		r1, [r1, #0x0]
	neg		r0, r6
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0830f748
	ldr		r1, _0830f780
	add		r0, r0, r1
_0830f748:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1C]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mul		r0, r6
	cmp		r0, #0x0
	bge		_0830f75a
	ldr		r3, _0830f780
	add		r0, r0, r3
_0830f75a:
	asr		r0, r0, #0xf
	strh		r0, [r5, #0x1E]
	mov		r7, r12
	strh		r7, [r5, #0x20]
	strh		r6, [r5, #0x22]
	ldr		r4, _0830f784
	mov		r0, #0x1
	str		r0, [r4, #0x0]
	add		r0, r5, #0x0
	bl		sub_0830f378
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	b		_0830f8a6

.incbin "base.gba", 0x30F776, 0x2

_0830f778:	.4byte 0x0202A9A0
_0830f77c:	.4byte 0x000003FF
_0830f780:	.4byte 0x00007FFF
_0830f784:	.4byte 0x03002174

_0830f788:
	ldr		r0, _0830f7b0
	ldr		r1, [r0, #0x0]
	mov		r10, r0
	cmp		r1, #0x1f
	ble		_0830f794
	b		_0830f8a6
_0830f794:
	mov		r0, #0x34
	mul		r1, r0
	ldr		r0, _0830f7b4
	add		r2, r1, r0
	ldr		r3, _0830f7b8
	ldr		r1, [r3, #0x0]
	cmp		r1, #0x0
	bne		_0830f7c0
	ldr		r0, _0830f7bc
	str		r2, [r0, #0x0]
	str		r2, [r3, #0x0]
	str		r1, [r2, #0x4]
	str		r1, [r2, #0x0]
	b		_0830f7ce

_0830f7b0:	.4byte 0x03002168
_0830f7b4:	.4byte 0x03001AE0
_0830f7b8:	.4byte 0x03002160
_0830f7bc:	.4byte 0x03002164

_0830f7c0:
	ldr		r1, _0830f8b8
	ldr		r0, [r1, #0x0]
	str		r2, [r0, #0x0]
	str		r0, [r2, #0x4]
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	str		r2, [r1, #0x0]
_0830f7ce:
	mov		r0, r10
	ldr		r1, [r0, #0x0]
	mov		r0, #0x34
	add		r5, r1, #0x0
	mul		r5, r0
	ldr		r3, _0830f8bc
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
	beq		_0830f81c
	cmp		r6, #0x0
	bne		_0830f822
_0830f81c:
	mov		r6, #0x80
	lsl		r6, r6, #0x1
	mov		r12, r6
_0830f822:
	ldr		r1, _0830f8c0
	ldr		r3, [sp, #0x0+0x44]
	lsl		r0, r3, #0x10
	asr		r2, r0, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0830f832
	add		r0, #0x3f
_0830f832:
	asr		r3, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r4, _0830f8c4
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	mov		r8, r0
	ldr		r0, [r0, #0x0]
	mov		r7, r12
	mul		r7, r0
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_0830f854
	ldr		r7, _0830f8c8
	add		r0, r0, r7
_0830f854:
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
	bge		_0830f870
	ldr		r7, _0830f8c8
	add		r0, r0, r7
_0830f870:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1a]
	ldr		r1, [r1, #0x0]
	neg		r0, r6
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0830f882
	ldr		r1, _0830f8c8
	add		r0, r0, r1
_0830f882:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1c]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mul		r0, r6
	cmp		r0, #0x0
	bge		_0830f894
	ldr		r3, _0830f8c8
	add		r0, r0, r3
_0830f894:
	asr		r0, r0, #0xf
	strh	r0, [r5, #0x1e]
	mov		r7, r12
	strh	r7, [r5, #0x20]
	strh	r6, [r5, #0x22]
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0830f8a6:
	add		sp, #0x24
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30F8B6, 0x2

_0830f8b8:	.4byte 0x03002164
_0830f8bc:	.4byte 0x03001AE8
_0830f8c0:	.4byte 0x0202A9A0
_0830f8c4:	.4byte 0x000003FF
_0830f8c8:	.4byte 0x00007FFF
	thumb_func_end sub_0830f6a0

	thumb_func_start sub_0830f8cc
sub_0830f8cc:
	push	{ r4, lr }
	ldr		r0, _0830f8ec
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0830f8e6
_0830f8d6:
	add		r4, r0, #0x0
	add		r0, r4, #0x0
	add		r0, #0x10
	bl		sub_0830f378
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0830f8d6
_0830f8e6:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0830f8ec:	.4byte 0x03002160
	thumb_func_end sub_0830f8cc

	thumb_func_start sub_0830f8f0
sub_0830f8f0:
	push	{ r4, lr }
	sub		sp, #0xc
	ldr		r4, [sp, #0x14]
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
	bl		sub_0830f6a0
	add		sp, #0xc
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30F916, 0x2A2
	thumb_func_end sub_0830f8f0

	thumb_func_start sub_0830fbb8
sub_0830fbb8:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	ldr		r0, _0830fc04
	mov		r1, #0xe8
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083214a4
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_0830fbfc
	add		r1, r4, #0x0
	add		r1, #0x4c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	str		r5, [r4, #0x5c]
	str		r6, [r4, #0x60]
	add		r1, #0x18
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	ldr		r0, _0830fc08
	str		r0, [r4, #0x14]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r4, #0x0
	add		r0, #0x58
	strh	r1, [r0, #0x0]
	cmp		r7, #0x0
	beq		_0830fbfc
	add		r0, r4, #0x0
	bl		sub_08327320
_0830fbfc:
	add		r0, r4, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0830fc04:	.4byte 0x030031D0
_0830fc08:	.4byte 0x02009DB1
	thumb_func_end sub_0830fbb8

	thumb_func_start sub_0830fc0c
sub_0830fc0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x5c]
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x83
	bne		_0830fc1e
	b		_0830fd30
_0830fc1e:
	cmp		r0, #0x83
	bgt		_0830fc4e
	cmp		r0, #0x41
	beq		_0830fc84
	cmp		r0, #0x41
	bgt		_0830fc3c
	cmp		r0, #0x11
	beq		_0830fc7e
	cmp		r0, #0x11
	ble		_0830fc34
	b		_0830fda0
_0830fc34:
	cmp		r0, #0x0
	bne		_0830fc3a
	b		_0830fda4
_0830fc3a:
	b		_0830fda0
_0830fc3c:
	cmp		r0, #0x43
	beq		_0830fc8e
	cmp		r0, #0x43
	blt		_0830fc8a
	cmp		r0, #0x81
	beq		_0830fd00
	cmp		r0, #0x82
	beq		_0830fd08
	b		_0830fda0
_0830fc4e:
	cmp		r0, #0xf2
	beq		_0830fcd6
	cmp		r0, #0xf2
	bgt		_0830fc6a
	cmp		r0, #0x85
	beq		_0830fd00
	cmp		r0, #0x85
	blt		_0830fd58
	cmp		r0, #0x86
	bne		_0830fc64
	b		_0830fd98
_0830fc64:
	cmp		r0, #0xf1
	beq		_0830fcb8
	b		_0830fda0
_0830fc6a:
	cmp		r0, #0xf5
	beq		_0830fcaa
	cmp		r0, #0xf5
	bgt		_0830fc78
	cmp		r0, #0xf4
	beq		_0830fca0
	b		_0830fda0
_0830fc78:
	cmp		r0, #0xf6
	beq		_0830fcde
	b		_0830fda0
_0830fc7e:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x48]
	b		_0830fcc8
_0830fc84:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x68]
	b		_0830fcc8
_0830fc8a:
	ldr		r0, [r5, #0x4]
	b		_0830fda4
_0830fc8e:
	ldr		r0, [r5, #0x4]
	str		r0, [r4, #0x60]
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	mov		r1, #0x2
	b		_0830fcd0
_0830fca0:
	ldr		r1, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_08327308
	b		_0830fcc8
_0830fcaa:
	ldr		r1, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_08327308
	cmp		r0, #0x0
	beq		_0830fda6
	b		_0830fcc8
_0830fcb8:
	ldr		r1, [r5, #0x4]
	cmp		r1, #0x0
	beq		_0830fcc8
	sub		r1, #0x1
	add		r0, r4, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	b		_0830fda0
_0830fcc8:
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
_0830fcd0:
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_0830fda0
_0830fcd6:
	ldr		r0, [r5, #0x4]
	lsl		r0, r0, #0x3
	add		r0, r5, r0
	b		_0830fcf0
_0830fcde:
	ldr		r1, [r5, #0x4]
	ldr		r0, [r4, #0x68]
	cmp		r0, #0x0
	beq		_0830fcec
	lsl		r0, r1, #0x3
	add		r0, r5, r0
	b		_0830fcf0
_0830fcec:
	add		r0, r5, #0x0
	add		r0, #0x8
_0830fcf0:
	str		r0, [r4, #0x5c]
	add		r2, r4, #0x0
	add		r2, #0x64
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	b		_0830fda6
_0830fd00:
	ldrh	r0, [r5, #0x4]
	bl		sub_08325e94
	b		_0830fcc8
_0830fd08:
	ldr		r2, [r5, #0x4]
	ldr		r0, _0830fd28
	ldr		r1, _0830fd2c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0830fcc8
	lsl		r0, r2, #0x10
	lsr		r0, r0, #0x10
	bl		sub_08325e94
	b		_0830fcc8

.incbin "base.gba", 0x30FD26, 0x2

_0830fd28:	.4byte 0x030031D0
_0830fd2c:	.4byte 0x000007AC

_0830fd30:
	ldrh	r0, [r5, #0x4]
	ldr		r3, _0830fd50
	ldr		r2, _0830fd54
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
	b		_0830fcc8

.incbin "base.gba", 0x30FD4E, 0x2

_0830fd50:	.4byte 0x0202E890
_0830fd54:	.4byte 0x0202E8F0

_0830fd58:
	ldr		r0, _0830fd8c
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r7, r4, #0x0
	add		r7, #0x64
	add		r5, #0x8
	mov		r8, r5
	cmp		r0, #0x0
	beq		_0830fd80
	ldr		r6, _0830fd90
	add		r5, r0, #0x0
_0830fd6e:
	ldr		r0, [r6, #0x0]
	ldr		r1, _0830fd94
	ldr		r1, [r1, #0x8]
	bl		sub_08326580
	add		r6, #0xc
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_0830fd6e
_0830fd80:
	ldrb	r1, [r7, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r7, #0x0]
	mov		r0, r8
	b		_0830fda4

_0830fd8c:	.4byte 0x00000008
_0830fd90:	.4byte 0x0202E890
_0830fd94:	.4byte 0x0202E8F0

_0830fd98:
	ldrh	r0, [r5, #0x4]
	bl		sub_08325f60
	b		_0830fcc8
_0830fda0:
	add		r0, r5, #0x0
	add		r0, #0x8
_0830fda4:
	str		r0, [r4, #0x5c]
_0830fda6:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0830fc0c

	thumb_func_start sub_0830fdb0
sub_0830fdb0:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r1, r5, #0x0
	add		r1, #0x4c
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_0830fdc8
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	b		_0830fdf6
_0830fdc8:
	ldr		r0, [r5, #0x5c]
	cmp		r0, #0x0
	beq		_0830fdf6
	add		r4, r5, #0x0
	add		r4, #0x64
	mov		r6, #0xfe
_0830fdd4:
	ldrb	r1, [r4, #0x0]
	add		r0, r6, #0x0
	and		r0, r1
	strb	r0, [r4, #0x0]
	add		r0, r5, #0x0
	bl		sub_0830fc0c
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_0830fdd4
	ldr		r0, [r5, #0x5c]
	cmp		r0, #0x0
	bne		_0830fdf6
	ldr		r0, _0830fe1c
	str		r0, [r5, #0x14]
_0830fdf6:
	ldr		r2, [r5, #0x60]
	cmp		r2, #0x0
	beq		_0830fe26
	add		r4, r5, #0x0
	add		r4, #0x64
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0830fe20
	add		r0, r5, #0x0
	bl		sub_0832730c
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xfd
	and		r0, r1
	strb	r0, [r4, #0x0]
	b		_0830fe26

.incbin "base.gba", 0x30FE1A, 0x2

_0830fe1c:	.4byte 0x02009E2D

_0830fe20:
	add		r0, r5, #0x0
	bl		sub_0832730c
_0830fe26:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0830fdb0

	thumb_func_start sub_0830fe2c
sub_0830fe2c:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, _0830fe40
	mov		r2, #0xe8
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_08321500
	pop		{ r0 }
	bx		r0

_0830fe40:	.4byte 0x030031D0

.incbin "base.gba", 0x30FE44, 0x18
	thumb_func_end sub_0830fe2c

	thumb_func_start sub_0830fe5c
sub_0830fe5c:
	add		r1, r0, #0x0
	ldr		r0, [r1, #0x14]
	cmp		r0, #0x0
	beq		_0830fe68
	mov		r0, #0x0
	b		_0830fe6c
_0830fe68:
	mov		r0, #0x1
	str		r0, [r1, #0x14]
_0830fe6c:
	bx		lr

.incbin "base.gba", 0x30FE6E, 0x2
	thumb_func_end sub_0830fe5c

	thumb_func_start sub_0830fe70
sub_0830fe70:
	mov		r1, #0x0
	str		r1, [r0, #0x14]
	bx		lr

.incbin "base.gba", 0x30FE76, 0x2
	thumb_func_end sub_0830fe70

	thumb_func_start sub_0830fe78
sub_0830fe78:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r0, #0x8
	ldr		r1, _0830fe98
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	bl		sub_0830d808
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	str		r0, [r4, #0x0]
	str		r0, [r4, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x30FE96, 0x2

_0830fe98:	.4byte 0x03004B00
	thumb_func_end sub_0830fe78

	thumb_func_start sub_0830fe9c
sub_0830fe9c:
	push	{ r4, lr }
	add		r4, r0, #0x0
_0830fea0:
	add		r0, r4, #0x0
	bl		sub_0830fe5c
	cmp		r0, #0x0
	beq		_0830fea0
	add		r0, r4, #0x0
	add		r0, #0x8
	bl		sub_0830d830
	mov		r0, #0x0
	str		r0, [r4, #0x4]
	str		r0, [r4, #0x0]
	add		r0, r4, #0x0
	bl		sub_0830fe70
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0830fe9c

	thumb_func_start sub_0830fec4
sub_0830fec4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r7, r2, #0x0
	mov		r8, r3
_0830fed2:
	add		r0, r5, #0x0
	bl		sub_0830fe5c
	cmp		r0, #0x0
	beq		_0830fed2
	add		r0, r5, #0x0
	add		r0, #0x8
	mov		r1, #0x1
	mov		r2, #0x10
	bl		sub_0830d838
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_0830fefe
	str		r6, [r4, #0x4]
	str		r7, [r4, #0x8]
	mov		r0, r8
	str		r0, [r4, #0xc]
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830e86c
_0830fefe:
	add		r0, r5, #0x0
	bl		sub_0830fe70
	add		r0, r4, #0x0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0830fec4

	thumb_func_start sub_0830ff10
sub_0830ff10:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x0]
	bl		sub_0830fe5c
	cmp		r0, #0x0
	beq		_0830ffea
	ldr		r0, [sp, #0x0]
	ldr		r6, [r0, #0x0]
	add		r0, #0x8
	str		r0, [sp, #0x4]
	cmp		r6, #0x0
	beq		_0830ffdc
	ldr		r1, _0830ffa8
	mov		r9, r1
_0830ff36:
	ldr		r5, [r6, #0x4]
	ldr		r4, [r6, #0x8]
	ldr		r1, [r6, #0xc]
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	and		r0, r1
	mov		r2, #0x1
	mov		r8, r2
	cmp		r0, #0x0
	beq		_0830ff4e
	mov		r7, #0x2
	mov		r8, r7
_0830ff4e:
	add		r3, r1, #0x0
	ldr		r0, _0830ffac
	and		r3, r0
	mov		r2, r8
	lsl		r3, r2
	mov		r7, #0xc0
	lsl		r7, r7, #0x11
	mov		r12, r7
	mov		r0, r12
	and		r0, r1
	mov		r12, r0
	mov		r2, #0xc0
	lsl		r2, r2, #0xf
	and		r2, r1
	str		r2, [sp, #0x8]
	ldr		r7, [r6, #0x0]
	mov		r10, r7
_0830ff70:
	add		r2, r3, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r3, r0
	bls		_0830ff7c
	add		r2, r0, #0x0
_0830ff7c:
	mov		r0, r9
	str		r5, [r0, #0x0]
	str		r4, [r0, #0x4]
	ldr		r1, [r6, #0xc]
	ldr		r0, _0830ffb0
	and		r1, r0
	add		r0, r2, #0x0
	mov		r7, r8
	asr		r0, r7
	ldr		r7, _0830ffac
	and		r0, r7
	orr		r1, r0
	mov		r0, r9
	str		r1, [r0, #0x8]
	mov		r1, r12
	cmp		r1, #0x0
	beq		_0830ffb4
	mov		r0, #0x80
	lsl		r0, r0, #0x10
	cmp		r12, r0
	beq		_0830ffb8
	b		_0830ffba

_0830ffa8:	.4byte DMA3SourceAddress
_0830ffac:	.4byte 0x0000FFFF
_0830ffb0:	.4byte 0xffff0000

_0830ffb4:
	add		r5, r5, r2
	b		_0830ffba
_0830ffb8:
	sub		r5, r5, r2
_0830ffba:
	ldr		r7, [sp, #0x8]
	cmp		r7, #0x0
	beq		_0830ffca
	mov		r0, #0x80
	lsl		r0, r0, #0xe
	cmp		r7, r0
	beq		_0830ffce
	b		_0830ffd0
_0830ffca:
	add		r4, r4, r2
	b		_0830ffd0
_0830ffce:
	sub		r4, r4, r2
_0830ffd0:
	sub		r3, r3, r2
	cmp		r3, #0x0
	bne		_0830ff70
	mov		r6, r10
	cmp		r6, #0x0
	bne		_0830ff36
_0830ffdc:
	ldr		r0, [sp, #0x4]
	bl		sub_0830d830
	mov		r0, #0x0
	ldr		r1, [sp, #0x0]
	str		r0, [r1, #0x4]
	str		r0, [r1, #0x0]
_0830ffea:
	ldr		r0, [sp, #0x0]
	bl		sub_0830fe70
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0830ff10

	thumb_func_start sub_08310000
sub_08310000:
	ldr		r0, _08310004
	bx		lr

_08310004:	.4byte 0x03002178
	thumb_func_end sub_08310000

	thumb_func_start sub_08310008
sub_08310008:
	push	{ r4, lr }
	ldr		r1, _0831003c
	ldrb	r0, [r1, #0x1]
	mov		r3, #0x0
	strb	r3, [r1, #0x1]
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x21
	neg		r0, r0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldr		r4, _08310040
	str		r3, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x8
	ldr		r1, _08310044
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	bl		sub_0830d808
	add		r0, r4, #0x0
	bl		sub_0830ea60
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31003A, 0x2

_0831003c:	.4byte GeneralLCDStatus_STAT_LYC_
_08310040:	.4byte 0x03005220
_08310044:	.4byte 0x030030D0
	thumb_func_end sub_08310008

	thumb_func_start sub_08310048
sub_08310048:
	push	{ r4, lr }
	ldr		r1, _08310074
	ldrb	r0, [r1, #0x1]
	mov		r3, #0x0
	strb	r3, [r1, #0x1]
	ldrb	r2, [r1, #0x0]
	mov		r0, #0x21
	neg		r0, r0
	and		r0, r2
	strb	r0, [r1, #0x0]
	ldr		r4, _08310078
	str		r3, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x8
	bl		sub_0830d830
	add		r0, r4, #0x0
	bl		sub_0830ea60
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08310074:	.4byte GeneralLCDStatus_STAT_LYC_
_08310078:	.4byte 0x03005220
	thumb_func_end sub_08310048

	thumb_func_start sub_0831007c
sub_0831007c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r7, _083100a4
	add		r0, r7, #0x0
	mov		r1, #0x1
	mov		r2, #0x10
	bl		sub_0830d838
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_083100ea
	str		r4, [r5, #0x8]
	str		r6, [r5, #0xc]
	add		r0, r7, #0x0
	sub		r0, #0x8
	bl		sub_0830ea50
	b		_083100ae

.incbin "base.gba", 0x3100A2, 0x2

_083100a4:	.4byte 0x03005228

_083100a8:
	ldr		r0, _083100c4
	bl		sub_0830ea58
_083100ae:
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_083100c8
	ldr		r0, [r1, #0x8]
	cmp		r0, r4
	ble		_083100a8
	ldr		r0, _083100c4
	add		r2, r5, #0x0
	bl		sub_0830e8c8
	b		_083100d0

_083100c4:	.4byte 0x03005220

_083100c8:
	ldr		r0, _083100f4
	add		r1, r5, #0x0
	bl		sub_0830e8b0
_083100d0:
	ldr		r4, _083100f4
	add		r0, r4, #0x0
	bl		sub_0830ea50
	ldr		r2, _083100f8
	str		r0, [r4, #0x14]
	ldr		r0, [r0, #0x8]
	ldrb	r1, [r2, #0x1]
	strb	r0, [r2, #0x1]
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x20
	orr		r0, r1
	strb	r0, [r2, #0x0]
_083100ea:
	add		r0, r5, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3100F2, 0x2

_083100f4:	.4byte 0x03005220
_083100f8:	.4byte GeneralLCDStatus_STAT_LYC_
	thumb_func_end sub_0831007c

	thumb_func_start sub_083100fc
sub_083100fc:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, _0831010c
	bl		sub_0830e930
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31010A, 0x2

_0831010c:	.4byte 0x03005220
	thumb_func_end sub_083100fc

	thumb_func_start sub_08310110
sub_08310110:
	push	{ r4, r5, lr }
	ldr		r5, _0831014c
	ldr		r4, [r5, #0x14]
	ldr		r0, [r4, #0xc]
	bl		sub_08327304
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830ea58
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_08310132
	add		r0, r5, #0x0
	bl		sub_0830ea50
	add		r4, r0, #0x0
_08310132:
	ldr		r2, _08310150
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

.incbin "base.gba", 0x31014A, 0x2

_0831014c:	.4byte 0x03005220
_08310150:	.4byte GeneralLCDStatus_STAT_LYC_
	thumb_func_end sub_08310110

	thumb_func_start sub_08310154
sub_08310154:
	ldr		r1, _08310168
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r1, #0x4]
	str		r0, [r1, #0x8]
	strb	r0, [r1, #0xd]
	strb	r0, [r1, #0xe]
	strb	r0, [r1, #0xf]
	strb	r0, [r1, #0xc]
	bx		lr

_08310168:	.4byte 0x030051D0
	thumb_func_end sub_08310154

	thumb_func_start sub_0831016c
sub_0831016c:
	push	{ r4, lr }
	ldr		r4, _08310180
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	beq		_08310184
	bl		sub_08327304
	mov		r0, #0x1
	b		_08310186

.incbin "base.gba", 0x31017E, 0x2

_08310180:	.4byte 0x030051D0

_08310184:
	mov		r0, #0x2
_08310186:
	strb	r0, [r4, #0xc]
	ldr		r0, _08310198
	ldrb	r1, [r0, #0xe]
	mov		r2, #0x0
	strb	r1, [r0, #0xd]
	strb	r2, [r0, #0xf]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08310198:	.4byte 0x030051D0
	thumb_func_end sub_0831016c

	thumb_func_start sub_0831019c
sub_0831019c:
	push	{ r4, lr }
	ldr		r1, _083101d8
	ldrb	r2, [r1, #0xc]
	mov		r0, #0x2
	and		r0, r2
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_083101ec
	mov		r0, #0x80
	and		r0, r2
	cmp		r0, #0x0
	bne		_083101ec
	ldrb	r0, [r4, #0xd]
	sub		r0, #0x1
	strb	r0, [r4, #0xd]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bgt		_08310200
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_083101dc
	bl		sub_08327304
	ldrb	r0, [r4, #0xf]
	add		r0, #0x1
	strb	r0, [r4, #0xf]
	ldrb	r0, [r4, #0xe]
	strb	r0, [r4, #0xd]
	b		_08310200

.incbin "base.gba", 0x3101D6, 0x2

_083101d8:	.4byte 0x030051D0

_083101dc:
	ldr		r1, [r4, #0x8]
	cmp		r1, #0x0
	beq		_083101e6
	bl		sub_08327308
_083101e6:
	bl		sub_08310154
	b		_08310200
_083101ec:
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08310200
	mov		r0, #0xfe
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r4, #0xc]
_08310200:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x310206, 0x11A
	thumb_func_end sub_0831019c

	thumb_func_start sub_08310320
sub_08310320:
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x9
	lsl		r2, r2, #0x4
	ldr		r1, _08310330
	add		r2, r2, r1
	add		r0, r0, r2
	bx		lr

_08310330:	.4byte 0x03005240

.incbin "base.gba", 0x310334, 0xC
	thumb_func_end sub_08310320

	thumb_func_start sub_08310340
sub_08310340:
	ldr		r2, [r0, #0x50]
	mov		r1, #0x1
	sub		r1, r1, r2
	str		r1, [r0, #0x50]
	bx		lr

.incbin "base.gba", 0x31034A, 0x1E
	thumb_func_end sub_08310340

	thumb_func_start sub_08310368
sub_08310368:
	push	{ lr }
	lsl		r1, r1, #0x10
	str		r1, [r0, #0xc]
	bl		sub_083104d4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x310376, 0x15E
	thumb_func_end sub_08310368

	thumb_func_start sub_083104d4
sub_083104d4:
	push	{ lr }
	ldr		r1, [r0, #0xc]
	ldr		r2, [r0, #0x30]
	add		r1, r1, r2
	str		r1, [r0, #0x34]
	bl		sub_08310584
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3104E6, 0x1A
	thumb_func_end sub_083104d4

	thumb_func_start sub_08310500
sub_08310500:
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
	bge		_0831051a
	neg		r1, r3
_0831051a:
	ldr		r0, _08310528
	cmp		r1, r0
	bgt		_0831052c
	mov		r2, #0x0
	mov		r4, #0x10
	b		_08310550

.incbin "base.gba", 0x310526, 0x2

_08310528:	.4byte 0x0000FFFF

_0831052c:
	ldr		r0, _08310538
	cmp		r1, r0
	bgt		_0831053c
	mov		r2, #0x5
	mov		r4, #0xb
	b		_08310550

_08310538:	.4byte 0x000FFFFF

_0831053c:
	ldr		r0, _08310548
	cmp		r1, r0
	bgt		_0831054c
	mov		r2, #0x9
	mov		r4, #0x7
	b		_08310550

_08310548:	.4byte 0x00FFFFFF

_0831054c:
	mov		r2, #0xd
	mov		r4, #0x3
_08310550:
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
	thumb_func_end sub_08310500

	thumb_func_start sub_08310584
sub_08310584:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	add		r5, #0x80
	ldr		r6, _0831060c
	mov		r0, #0x16
	ldrsh	r1, [r4, r0]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0831059e
	add		r0, #0x3f
_0831059e:
	asr		r2, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r3, _08310610
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
_083105be:
	ldr		r0, [r4, #0x10]
	cmp		r0, #0x0
	bge		_083105c8
	ldr		r1, _08310614
	add		r0, r0, r1
_083105c8:
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
	bge		_083105e0
	add		r0, #0x7f
_083105e0:
	asr		r1, r0, #0x7
	ldr		r0, [r4, #0x34]
	bl		sub_08327340
	str		r0, [r5, #0x0]
	mul		r0, r7
	cmp		r0, #0x0
	bge		_083105f4
	ldr		r1, _08310618
	add		r0, r0, r1
_083105f4:
	asr		r0, r0, #0xf
	str		r0, [r5, #0x4]
	add		r5, #0x8
	add		r6, #0x1
	cmp		r6, #0x9f
	ble		_083105be
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31060A, 0x2

_0831060c:	.4byte 0x0202A9A0
_08310610:	.4byte 0x000003FF
_08310614:	.4byte 0x0000FFFF
_08310618:	.4byte 0x00007FFF

.incbin "base.gba", 0x31061C, 0x14
	thumb_func_end sub_08310584

	thumb_func_start sub_08310630
sub_08310630:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r6, _08310670
	mov		r0, #0x16
	ldrsh	r2, [r4, r0]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08310642
	add		r0, #0x3f
_08310642:
	asr		r3, r0, #0x6
	ldr		r0, _08310674
	add		r1, r0, #0x0
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r5, [r0, #0x0]
	cmp		r5, #0x0
	beq		_08310678
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _08310674
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		sub_083272c8
	b		_0831067a

.incbin "base.gba", 0x31066E, 0x2

_08310670:	.4byte 0x0202A9A0
_08310674:	.4byte 0x000003FF

_08310678:
	mov		r0, #0x0
_0831067a:
	add		r3, r0, #0x0
	ldr		r2, [r4, #0x10]
	sub		r1, r2, #0x1
	ldr		r0, _083106a0
	cmp		r1, r0
	bls		_08310690
	cmp		r2, #0x0
	bge		_083106ac
	ldr		r0, _083106a4
	cmp		r2, r0
	ble		_083106ac
_08310690:
	add		r0, r2, #0x0
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0831069c
	ldr		r1, _083106a8
	add		r0, r0, r1
_0831069c:
	asr		r0, r0, #0x10
	b		_0831075e

_083106a0:	.4byte 0x0000FFFE
_083106a4:	.4byte 0xffff0000
_083106a8:	.4byte 0x0000FFFF

_083106ac:
	ldr		r0, _083106d8
	sub		r1, r2, #0x1
	cmp		r1, r0
	bls		_083106be
	cmp		r2, #0x0
	bge		_083106e4
	ldr		r0, _083106dc
	cmp		r2, r0
	ble		_083106e4
_083106be:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_083106c6
	add		r0, #0xf
_083106c6:
	asr		r0, r0, #0x4
	mul		r0, r3
	cmp		r0, #0x0
	bge		_083106d2
	ldr		r1, _083106e0
	add		r0, r0, r1
_083106d2:
	asr		r1, r0, #0x1b
	b		_08310768

.incbin "base.gba", 0x3106D6, 0x2

_083106d8:	.4byte 0x000FFFFE
_083106dc:	.4byte 0xFFF00000
_083106e0:	.4byte 0x07FFFFFF

_083106e4:
	ldr		r0, _08310710
	cmp		r1, r0
	bls		_083106f6
	cmp		r2, #0x0
	bge		_08310718
	mov		r0, #0xff
	lsl		r0, r0, #0x18
	cmp		r2, r0
	ble		_08310718
_083106f6:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_083106fe
	add		r0, #0xff
_083106fe:
	asr		r0, r0, #0x8
	mul		r0, r3
	cmp		r0, #0x0
	bge		_0831070a
	ldr		r1, _08310714
	add		r0, r0, r1
_0831070a:
	asr		r1, r0, #0x17
	b		_08310768

.incbin "base.gba", 0x31070E, 0x2

_08310710:	.4byte 0x00FFFFFE
_08310714:	.4byte 0x007FFFFF

_08310718:
	ldr		r0, _08310744
	cmp		r1, r0
	bls		_0831072a
	cmp		r2, #0x0
	bge		_08310750
	mov		r0, #0xf0
	lsl		r0, r0, #0x18
	cmp		r2, r0
	ble		_08310750
_0831072a:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08310734
	ldr		r1, _08310748
	add		r0, r2, r1
_08310734:
	asr		r0, r0, #0xc
	mul		r0, r3
	cmp		r0, #0x0
	bge		_08310740
	ldr		r1, _0831074c
	add		r0, r0, r1
_08310740:
	asr		r1, r0, #0x13
	b		_08310768

_08310744:	.4byte 0x0FFFFFFE
_08310748:	.4byte 0x00000FFF
_0831074c:	.4byte 0x0007FFFF

_08310750:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_0831075a
	ldr		r1, _08310774
	add		r0, r0, r1
_0831075a:
	asr		r0, r0, #0x10
	mul		r0, r3
_0831075e:
	cmp		r0, #0x0
	bge		_08310766
	ldr		r1, _08310778
	add		r0, r0, r1
_08310766:
	asr		r1, r0, #0xf
_08310768:
	ldr		r0, [r4, #0x28]
	sub		r0, r0, r1
	str		r0, [r4, #0x2c]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08310774:	.4byte 0x0000FFFF
_08310778:	.4byte 0x00007FFF
	thumb_func_end sub_08310630

	thumb_func_start sub_0831077c
sub_0831077c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	mov		r10, r0
	ldr		r4, _083108a0
	mov		r2, #0x14
	ldrsh	r1, [r0, r2]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08310798
	add		r0, #0x3f
_08310798:
	asr		r2, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r3, _083108a4
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
	mov		r9, r4
	mov		r0, #0xde
	lsl		r0, r0, #0x2
	add		r0, r10
	mov		r8, r0
	mov		r2, r10
	ldr		r1, [r2, #0x50]
	mov		r0, r10
	mov		r2, #0x5f
	bl		sub_08310320
	add		r3, r0, #0x0
	mov		r1, r10
	add		r1, #0x18
	mov		r4, r10
	ldr		r0, [r4, #0x18]
	cmp		r0, #0x0
	bge		_083107e0
	add		r0, #0xff
_083107e0:
	asr		r0, r0, #0x8
	str		r0, [sp, #0x8]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_083107ec
	add		r0, #0xff
_083107ec:
	asr		r0, r0, #0x8
	str		r0, [sp, #0xc]
	mov		r1, r10
	ldr		r0, [r1, #0x24]
	neg		r0, r0
	str		r0, [sp, #0x10]
	ldr		r0, [r1, #0x28]
	mov		r2, r9
	sub		r5, r2, r0
	ldr		r4, _083108a8
	mov		r12, r4
_08310802:
	mov		r0, r8
	ldr		r1, [r0, #0x4]
	ldr		r2, [r0, #0x0]
	ldr		r4, [sp, #0x0]
	add		r0, r1, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_08310814
	add		r0, r12
_08310814:
	asr		r7, r0, #0xf
	neg		r0, r2
	ldr		r4, [sp, #0x4]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_08310822
	add		r0, r12
_08310822:
	asr		r6, r0, #0xf
	ldr		r4, [sp, #0x4]
	add		r0, r1, #0x0
	mul		r0, r4
	cmp		r0, #0x0
	bge		_08310830
	add		r0, r12
_08310830:
	asr		r4, r0, #0xf
	ldr		r1, [sp, #0x0]
	add		r0, r2, #0x0
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0831083e
	add		r0, r12
_0831083e:
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
	ldr		r1, [sp, #0xc]
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
	add		r8, r2
	sub		r5, #0x1
	mov		r4, #0x1
	neg		r4, r4
	add		r9, r4
	mov		r0, r9
	cmp		r0, #0x3f
	bgt		_08310802
	mov		r0, r10
	bl		sub_08310340
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_083108a0:	.4byte 0x0202A9A0
_083108a4:	.4byte 0x000003FF
_083108a8:	.4byte 0x00007FFF
	thumb_func_end sub_0831077c

	thumb_func_start sub_083108ac
sub_083108ac:
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
	ldr		r0, _0831090c
	mov		r12, r0
	add		r0, r2, r0
	ldr		r3, _08310910
	cmp		r0, r3
	bls		_08310914
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_08310aba

_0831090c:	.4byte 0x03FFFFFF
_08310910:	.4byte 0x07FFFFFE

_08310914:
	ldr		r0, [r5, #0x4]
	ldr		r1, [r7, #0x4]
	sub		r0, r0, r1
	str		r0, [sp, #0x4]
	ldr		r1, _0831092c
	add		r0, r0, r1
	cmp		r0, r3
	bls		_08310930
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r2, #0x0
	b		_08310aba

_0831092c:	.4byte 0x03FFFFFF

_08310930:
	ldr		r0, [r7, #0x8]
	neg		r0, r0
	str		r0, [sp, #0x8]
	add		r0, r12
	cmp		r0, r3
	bls		_08310944
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_08310aba
_08310944:
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0831094c
	add		r0, #0x7f
_0831094c:
	asr		r1, r0, #0x7
	mov		r0, r9
	cmp		r0, #0x0
	bge		_08310956
	add		r0, #0xf
_08310956:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08310960
	add		r0, #0x1f
_08310960:
	asr		r0, r0, #0x5
	str		r0, [sp, #0x38]
	mov		r0, r10
	cmp		r0, #0x0
	bge		_0831096c
	add		r0, #0xf
_0831096c:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08310976
	add		r0, #0x1f
_08310976:
	asr		r0, r0, #0x5
	mov		r12, r0
	ldr		r0, [sp, #0x1C]
	cmp		r0, #0x0
	bge		_08310982
	add		r0, #0xf
_08310982:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0831098c
	add		r0, #0x1f
_0831098c:
	asr		r0, r0, #0x5
	mov		r10, r0
	ldr		r2, [sp, #0x34]
	ldr		r1, [r2, #0x4]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0831099c
	add		r0, #0x7f
_0831099c:
	asr		r2, r0, #0x7
	ldr		r0, [sp, #0x20]
	cmp		r0, #0x0
	bge		_083109a6
	add		r0, #0xf
_083109a6:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_083109b0
	add		r0, #0x1f
_083109b0:
	asr		r0, r0, #0x5
	mov		r9, r0
	ldr		r0, [sp, #0x24]
	cmp		r0, #0x0
	bge		_083109bc
	add		r0, #0xf
_083109bc:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_083109c6
	add		r0, #0x1f
_083109c6:
	asr		r7, r0, #0x5
	ldr		r0, [sp, #0x28]
	cmp		r0, #0x0
	bge		_083109d0
	add		r0, #0xf
_083109d0:
	asr		r0, r0, #0x4
	mul		r0, r2
	cmp		r0, #0x0
	bge		_083109da
	add		r0, #0x1f
_083109da:
	asr		r5, r0, #0x5
	ldr		r0, [sp, #0x34]
	ldr		r2, [r0, #0x8]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_083109e8
	add		r0, #0x7f
_083109e8:
	asr		r1, r0, #0x7
	ldr		r0, [sp, #0x2C]
	cmp		r0, #0x0
	bge		_083109f2
	add		r0, #0xf
_083109f2:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_083109fc
	add		r0, #0x1f
_083109fc:
	asr		r3, r0, #0x5
	ldr		r0, [sp, #0x30]
	cmp		r0, #0x0
	bge		_08310a06
	add		r0, #0xf
_08310a06:
	asr		r0, r0, #0x4
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08310a10
	add		r0, #0x1f
_08310a10:
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
	bgt		_08310a3e
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r2, #0x0
	b		_08310aba
_08310a3e:
	ldr		r0, _08310a48
	cmp		r2, r0
	bgt		_08310a4c
	lsl		r0, r2, #0x8
	b		_08310a56

_08310a48:	.4byte 0x001FFFFF

_08310a4c:
	cmp		r1, #0x0
	bge		_08310a52
	add		r1, #0xff
_08310a52:
	asr		r1, r1, #0x8
	add		r0, r2, #0x0
_08310a56:
	bl		sub_083272c8
	strh	r0, [r4, #0x0]
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x20
	lsl		r0, r0, #0x10
	mov		r1, #0xf8
	lsl		r1, r1, #0x12
	cmp		r0, r1
	bls		_08310a72
	mov		r1, #0x1
	neg		r1, r1
	add		r0, r1, #0x0
	b		_08310aba
_08310a72:
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	bl		sub_083272c8
	cmp		r0, #0x0
	bge		_08310a84
	add		r0, #0xff
_08310a84:
	asr		r5, r0, #0x8
	mov		r1, r8
	ldr		r0, [r1, #0x4]
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	bl		sub_083272c8
	cmp		r0, #0x0
	bge		_08310a98
	add		r0, #0xff
_08310a98:
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
_08310aba:
	strh	r0, [r4, #0x0]
	add		sp, #0x3c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083108ac

	thumb_func_start sub_08310acc
sub_08310acc:
	push	{ lr }
	add		r2, r1, #0x0
	add		r2, #0x1c
	add		r3, r1, #0x0
	add		r3, #0x24
	bl		sub_083108ac
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x310ADE, 0x2
	thumb_func_end sub_08310acc

	thumb_func_start sub_08310ae0
sub_08310ae0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	cmp		r4, #0x0
	bne		_08310af0
	mov		r0, #0x0
	b		_08310b2e
_08310af0:
	add		r2, r4, #0x0
	cmp		r4, #0x0
	bge		_08310af8
	neg		r2, r4
_08310af8:
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_08310b02
	ldr		r2, _08310b14
	add		r0, r0, r2
_08310b02:
	asr		r2, r0, #0xe
	lsl		r0, r1, #0x10
	asr		r1, r0, #0x10
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_08310b18
	add		r0, r2, #0x0
	b		_08310b1e

_08310b14:	.4byte 0x00003FFF

_08310b18:
	lsl		r0, r2, #0x8
	bl		sub_083272c8
_08310b1e:
	cmp		r4, #0x0
	bge		_08310b2a
	neg		r0, r0
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	b		_08310b2e
_08310b2a:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
_08310b2e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08310ae0

	thumb_func_start sub_08310b34
sub_08310b34:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r0, r2, #0x0
	lsl		r3, r3, #0x10
	lsr		r1, r3, #0x10
	mov		r2, #0x0
	cmp		r0, #0x0
	beq		_08310b52
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_08310ae0
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08310b52:
	ldrh	r0, [r4, #0x0]
	strh	r0, [r5, #0x0]
	ldrh	r1, [r4, #0x2]
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	sub		r1, r1, r0
	strh	r1, [r5, #0x2]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x310B66, 0x1D6
	thumb_func_end sub_08310b34

	thumb_func_start sub_08310d3c
sub_08310d3c:
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
	blt		_08310d8a
	add		r5, #0xe4
	add		r0, r1, r5
	strh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08310d9c
	b		_08310d9a
_08310d8a:
	ldr		r5, _08310db0
	add		r0, r1, r5
	strh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_08310d9c
_08310d9a:
	strh	r1, [r4, #0x0]
_08310d9c:
	ldr		r0, _08310db4
	add		r1, r2, r0
	ldrh	r3, [r1, #0x0]
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x27
	bgt		_08310db8
	add		r0, r3, #0x0
	add		r0, #0x8
	b		_08310dba

_08310db0:	.4byte 0xFFFFFB80
_08310db4:	.4byte 0x00000396

_08310db8:
	mov		r0, #0x30
_08310dba:
	strh	r0, [r1, #0x0]
	ldr		r5, _08310e08
	add		r0, r2, r5
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_08310dda
	ldr		r3, _08310e0c
	add		r0, r2, r3
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	cmp		r1, #0x0
	bne		_08310dda
	add		r5, #0x4
	add		r0, r2, r5
	strh	r1, [r0, #0x0]
_08310dda:
	ldr		r0, _08310e0c
	add		r4, r2, r0
	ldr		r1, _08310e08
	add		r3, r2, r1
	ldrh	r0, [r4, #0x0]
	ldrh	r1, [r3, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_08310e14
	ldr		r5, _08310e10
	add		r0, r2, r5
	ldrh	r0, [r0, #0x0]
	add		r0, r1, r0
	strh	r0, [r3, #0x0]
	ldrh	r1, [r4, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08310e2e
	b		_08310e2c

.incbin "base.gba", 0x310E06, 0x2

_08310e08:	.4byte 0x00000392
_08310e0c:	.4byte 0x000003A2
_08310e10:	.4byte 0x00000396

_08310e14:
	cmp		r0, #0x0
	bge		_08310e2e
	ldr		r5, _08310e50
	add		r0, r2, r5
	ldrh	r0, [r0, #0x0]
	sub		r0, r1, r0
	strh	r0, [r3, #0x0]
	ldrh	r1, [r4, #0x0]
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_08310e2e
_08310e2c:
	strh	r1, [r3, #0x0]
_08310e2e:
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
	ble		_08310e54
	ldrh	r0, [r2, #0x0]
	add		r0, #0x1
	b		_08310e5c

.incbin "base.gba", 0x310E4E, 0x2

_08310e50:	.4byte 0x00000396

_08310e54:
	cmp		r1, #0x0
	bge		_08310e5e
	ldrh	r0, [r2, #0x0]
	sub		r0, #0x1
_08310e5c:
	strh	r0, [r2, #0x0]
_08310e5e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08310d3c

	thumb_func_start sub_08310e64
sub_08310e64:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	ldr		r1, _08310ea0
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bge		_08310e7a
	add		r0, #0x3f
_08310e7a:
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

.incbin "base.gba", 0x310E9E, 0x2

_08310ea0:	.4byte 0x0202A9A0
	thumb_func_end sub_08310e64

	thumb_func_start sub_08310ea4
sub_08310ea4:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r1, #0xe4
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	ldr		r2, _08310ee8
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	cmp		r1, #0x0
	bge		_08310eba
	add		r1, #0x3f
_08310eba:
	asr		r1, r1, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08310eec
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

_08310ee8:	.4byte 0x0202A9A0
_08310eec:	.4byte 0x000003FF

.incbin "base.gba", 0x310EF0, 0x18
	thumb_func_end sub_08310ea4

	thumb_func_start sub_08310f08
sub_08310f08:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r2, _08310f20
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	add		r2, r0, #0x0
	add		r2, #0x88
	ldr		r2, [r2, #0x0]
	add		r0, r0, r2
	add		r0, r0, r1
	bx		lr

.incbin "base.gba", 0x310F1E, 0x2

_08310f20:	.4byte 0x00000574
	thumb_func_end sub_08310f08

	thumb_func_start sub_08310f24
sub_08310f24:
	push	{ lr }
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	bl		sub_08310f08
	ldrb	r0, [r0, #0x0]
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08310f24

	thumb_func_start sub_08310f34
sub_08310f34:
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
	bl		sub_08310fac
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08311824
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08311858
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r0, r8
	cmp		r0, #0x0
	bge		_08310f76
	add		r0, #0x7
_08310f76:
	asr		r0, r0, #0x3
	sub		r0, r7, r0
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r3, r0, #0x1
	mov		r2, r9
	cmp		r2, #0x0
	bge		_08310f88
	add		r2, #0x7
_08310f88:
	asr		r1, r2, #0x3
	sub		r1, r4, r1
	lsr		r0, r1, #0x1f
	add		r1, r1, r0
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0xf
	asr		r1, r1, #0x10
	bl		sub_0830e840
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08310f34

	thumb_func_start sub_08310fac
sub_08310fac:
	cmp		r1, #0x0
	bge		_08310fb2
	add		r1, #0xf
_08310fb2:
	asr		r3, r1, #0x4
	cmp		r2, #0x0
	bge		_08310fba
	add		r2, #0xf
_08310fba:
	asr		r2, r2, #0x4
	ldr		r1, _08310fd8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrb	r1, [r0, #0x4]
	mul		r1, r2
	lsl		r1, r1, #0x6
	add		r1, r3, r1
	add		r2, r0, #0x0
	add		r2, #0xf0
	ldr		r2, [r2, #0x0]
	add		r0, r0, r2
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

_08310fd8:	.4byte 0x00000574
	thumb_func_end sub_08310fac

	thumb_func_start sub_08310fdc
sub_08310fdc:
	push	{ r4, lr }
	add		r3, r1, #0x0
	ldr		r1, [r3, #0x0]
	cmp		r1, #0x0
	bge		_08310fea
	ldr		r2, _08311010
	add		r1, r1, r2
_08310fea:
	asr		r4, r1, #0x10
	ldr		r2, [r3, #0x4]
	cmp		r2, #0x0
	bge		_08310ff6
	ldr		r1, _08311010
	add		r2, r2, r1
_08310ff6:
	asr		r2, r2, #0x10
	ldr		r1, [r3, #0x8]
	cmp		r1, #0x0
	bge		_08311002
	ldr		r3, _08311010
	add		r1, r1, r3
_08311002:
	asr		r3, r1, #0x10
	add		r1, r4, #0x0
	bl		sub_08310fac
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08311010:	.4byte 0x0000FFFF
	thumb_func_end sub_08310fdc

	thumb_func_start sub_08311014
sub_08311014:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08311a18
	add		r1, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r0, r4, #0x0
	bl		sub_08310f24
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x311032, 0x426
	thumb_func_end sub_08311014

	thumb_func_start sub_08311458
sub_08311458:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	ldr		r1, _08311490
	add		r0, r6, r1
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r4, #0x0
	cmp		r0, #0x0
	beq		_08311474
	add		r4, r7, r0
_08311474:
	cmp		r4, #0x0
	beq		_08311510
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_08311510
	ldr		r3, _08311494
	mov		r8, r3
_08311482:
	add		r0, #0x7f
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	cmp		r5, #0x7
	bls		_08311498
	add		r4, #0x4
	b		_0831150a

_08311490:	.4byte 0x00000574
_08311494:	.4byte 0x03003945

_08311498:
	add		r4, #0x1
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	bl		sub_08311aa8
	cmp		r0, #0x0
	beq		_083114b4
	lsl		r2, r5, #0x4
	add		r1, r6, #0x0
	add		r1, #0x24
	add		r1, r1, r2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	b		_083114c6
_083114b4:
	lsl		r2, r5, #0x4
	add		r1, r6, #0x0
	add		r1, #0x24
	add		r1, r1, r2
	ldrb	r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	mov		r3, #0x80
	lsl		r3, r3, #0xb
	add		r0, r0, r3
_083114c6:
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
	beq		_08311500
	add		r1, r6, #0x0
	add		r1, #0x2c
	add		r1, r1, r2
	ldr		r2, _083114fc
	lsl		r0, r5, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	b		_08311508

.incbin "base.gba", 0x3114FA, 0x2

_083114fc:	.4byte 0x0202B9A0

_08311500:
	add		r0, r6, #0x0
	add		r0, #0x2c
	add		r0, r0, r2
	str		r1, [r0, #0x0]
_08311508:
	add		r4, #0x1
_0831150a:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08311482
_08311510:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31151A, 0x2
	thumb_func_end sub_08311458

	thumb_func_start sub_0831151c
sub_0831151c:
	ldr		r2, _0831155c
	add		r0, r0, r2
	ldr		r3, [r0, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	mov		r2, #0x0
	cmp		r0, #0x0
	beq		_08311530
	add		r2, r3, r0
_08311530:
	cmp		r2, #0x0
	beq		_08311584
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08311584
	mov		r3, #0x80
	lsl		r3, r3, #0xb
_0831153e:
	cmp		r0, #0x89
	bne		_08311560
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r1, #0x0]
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r1, #0x4]
	add		r2, #0x2
	b		_0831157e

.incbin "base.gba", 0x31155A, 0x2

_0831155c:	.4byte 0x00000574

_08311560:
	cmp		r0, #0x8a
	bne		_0831157c
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r1, #0x8]
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x13
	add		r0, r0, r3
	str		r0, [r1, #0xc]
	add		r2, #0x2
	b		_0831157e
_0831157c:
	add		r2, #0x4
_0831157e:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0831153e
_08311584:
	bx		lr

.incbin "base.gba", 0x311586, 0x36
	thumb_func_end sub_0831151c

	thumb_func_start sub_083115bc
sub_083115bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x20
	add		r7, r0, #0x0
	ldr		r4, _083115f0
	ldr		r1, _083115f4
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xf0
	lsl		r1, r1, #0x4
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	beq		_08311612
	cmp		r1, r0
	bgt		_083115f8
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r1, r0
	beq		_0831160a
	b		_0831175a

.incbin "base.gba", 0x3115EE, 0x2

_083115f0:	.4byte 0x030031D0
_083115f4:	.4byte 0x00000772

_083115f8:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	beq		_08311634
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r1, r0
	beq		_0831160a
	b		_0831175a
_0831160a:
	add		r0, r7, #0x0
	bl		sub_08311458
	b		_0831175a
_08311612:
	add		r0, r7, #0x0
	mov		r1, sp
	bl		sub_0831151c
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
	b		_0831175a
_08311634:
	add		r6, sp, #0x10
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_0831151c
	ldr		r2, _08311654
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_083116bc
	cmp		r0, #0x3
	bgt		_08311658
	cmp		r0, #0x2
	beq		_0831165e
	b		_08311748

.incbin "base.gba", 0x311652, 0x2

_08311654:	.4byte 0x0000076F

_08311658:
	cmp		r0, #0x4
	beq		_083116e4
	b		_08311748
_0831165e:
	ldr		r4, [sp, #0x10]
	lsl		r0, r4, #0x1
	ldr		r1, [r6, #0x8]
	mov		r10, r1
	add		r0, r10
	mov		r1, #0x3
	bl		sub_08327340
	mov		r9, r0
	str		r0, [r7, #0x24]
	ldr		r5, [r6, #0x4]
	lsl		r0, r5, #0x1
	ldr		r6, [r6, #0xC]
	mov		r8, r6
	add		r0, r8
	mov		r1, #0x3
	bl		sub_08327340
	add		r6, r0, #0x0
	str		r6, [r7, #0x28]
	add		r4, r10
	add		r4, r10
	add		r0, r4, #0x0
	mov		r1, #0x3
	bl		sub_08327340
	add		r4, r0, #0x0
	str		r4, [r7, #0x34]
	add		r5, r8
	add		r5, r8
	add		r0, r5, #0x0
	mov		r1, #0x3
	bl		sub_08327340
	ldr		r1, _083116b8
	mov		r2, r9
	and		r2, r1
	str		r2, [r7, #0x24]
	and		r6, r1
	str		r6, [r7, #0x28]
	and		r4, r1
	str		r4, [r7, #0x34]
	and		r0, r1
	str		r0, [r7, #0x38]
	b		_08311748

_083116b8:	.4byte 0xffff0000

_083116bc:
	ldr		r0, [sp, #0x10]
	str		r0, [r7, #0x24]
	ldr		r1, [r6, #0x4]
	str		r1, [r7, #0x28]
	ldr		r3, [r6, #0x8]
	add		r0, r0, r3
	asr		r0, r0, #0x1
	ldr		r2, [r6, #0xC]
	add		r1, r1, r2
	asr		r1, r1, #0x1
	str		r3, [r7, #0x44]
	str		r2, [r7, #0x48]
	ldr		r2, _083116e0
	and		r0, r2
	str		r0, [r7, #0x34]
	and		r1, r2
	str		r1, [r7, #0x38]
	b		_08311748

_083116e0:	.4byte 0xffff0000

_083116e4:
	ldr		r4, [sp, #0x10]
	str		r4, [r7, #0x24]
	ldr		r5, [r6, #0x4]
	str		r5, [r7, #0x28]
	lsl		r0, r4, #0x1
	ldr		r1, [r6, #0x8]
	mov		r10, r1
	add		r0, r10
	mov		r1, #0x3
	bl		sub_08327340
	mov		r8, r0
	str		r0, [r7, #0x34]
	lsl		r0, r5, #0x1
	ldr		r6, [r6, #0xC]
	mov		r9, r6
	add		r0, r9
	mov		r1, #0x3
	bl		sub_08327340
	add		r6, r0, #0x0
	str		r6, [r7, #0x38]
	add		r4, r10
	add		r4, r10
	add		r0, r4, #0x0
	mov		r1, #0x3
	bl		sub_08327340
	add		r4, r0, #0x0
	str		r4, [r7, #0x44]
	add		r5, r9
	add		r5, r9
	add		r0, r5, #0x0
	mov		r1, #0x3
	bl		sub_08327340
	mov		r2, r10
	str		r2, [r7, #0x54]
	mov		r1, r9
	str		r1, [r7, #0x58]
	ldr		r1, _0831176c
	mov		r2, r8
	and		r2, r1
	str		r2, [r7, #0x34]
	and		r6, r1
	str		r6, [r7, #0x38]
	and		r4, r1
	str		r4, [r7, #0x44]
	and		r0, r1
	str		r0, [r7, #0x48]
_08311748:
	add		r1, r7, #0x0
	add		r1, #0x2c
	mov		r2, #0x0
	add		r0, r7, #0x0
	add		r0, #0x5c
_08311752:
	str		r2, [r0, #0x0]
	sub		r0, #0x10
	cmp		r0, r1
	bge		_08311752
_0831175a:
	add		sp, #0x20
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31176A, 0x2

_0831176c:	.4byte 0xffff0000
	thumb_func_end sub_083115bc

	thumb_func_start sub_08311770
sub_08311770:
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

.incbin "base.gba", 0x31179A, 0x2
	thumb_func_end sub_08311770

	thumb_func_start sub_0831179c
sub_0831179c:
	ldr		r0, [r0, #0x20]
	bx		lr
	thumb_func_end sub_0831179c

	thumb_func_start sub_083117a0
sub_083117a0:
	push	{ lr }
	add		r2, r0, #0x0
	lsl		r0, r2, #0x3
	add		r2, r0, #0x0
	sub		r2, #0x8
	lsl		r0, r1, #0x3
	add		r1, r0, #0x0
	sub		r1, #0x8
	cmp		r2, #0x0
	bne		_083117c8
	cmp		r1, #0x0
	bne		_083117bc
	mov		r0, #0x80
	b		_083117fc
_083117bc:
	mvn		r0, r1
	asr		r1, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r1, r0
	b		_083117ec
_083117c8:
	cmp		r1, #0x0
	bne		_083117dc
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r2, #0x0
	bge		_083117d8
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
_083117d8:
	add		r1, r0, #0x0
	b		_083117ec
_083117dc:
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
_083117ec:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_083117f6
	add		r0, #0xff
_083117f6:
	asr		r0, r0, #0x8
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
_083117fc:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x311800, 0x10
	thumb_func_end sub_083117a0

	thumb_func_start sub_08311810
sub_08311810:
	ldrb	r1, [r0, #0x3]
	add		r1, r0, r1
	ldrb	r0, [r0, #0x4]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	add		r0, r1, #0x0
	bx		lr

.incbin "base.gba", 0x31181E, 0x6
	thumb_func_end sub_08311810

	thumb_func_start sub_08311824
sub_08311824:
	push	{ r4, lr }
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r4, #0x7f
	and		r4, r1
	ldr		r3, _08311854
	add		r1, r0, r3
	ldr		r1, [r1, #0x0]
	add		r3, r1, #0x0
	add		r3, #0xf4
	ldr		r3, [r3, #0x0]
	add		r1, r1, r3
	ldrh	r0, [r0, #0x14]
	mul		r0, r2
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	ldrb	r1, [r1, #0x1]
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08311854:	.4byte 0x00000574
	thumb_func_end sub_08311824

	thumb_func_start sub_08311858
sub_08311858:
	push	{ r4, lr }
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r4, #0x7f
	and		r4, r1
	ldr		r3, _08311888
	add		r1, r0, r3
	ldr		r1, [r1, #0x0]
	add		r3, r1, #0x0
	add		r3, #0xf4
	ldr		r3, [r3, #0x0]
	add		r1, r1, r3
	ldrh	r0, [r0, #0x14]
	mul		r0, r2
	add		r0, r0, r4
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	ldrb	r0, [r1, #0x2]
	ldrb	r1, [r1, #0x3]
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08311888:	.4byte 0x00000574
	thumb_func_end sub_08311858

	thumb_func_start sub_0831188c
sub_0831188c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	mov		r4, #0x7f
	and		r4, r1
	ldr		r1, _083118c0
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	add		r1, r0, #0x0
	add		r1, #0xcc
	ldr		r1, [r1, #0x0]
	add		r0, r0, r1
	bl		sub_08311810
	ldr		r1, _083118c4
	ldrh	r2, [r5, #0x14]
	ldr		r3, _083118c8
	add		r1, r1, r3
	ldrb	r1, [r1, #0x0]
	mul		r1, r2
	add		r1, r1, r4
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldrb	r0, [r0, #0x4]
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_083118c0:	.4byte 0x00000574
_083118c4:	.4byte 0x030031D0
_083118c8:	.4byte 0x00000BFC
	thumb_func_end sub_0831188c

	thumb_func_start sub_083118cc
sub_083118cc:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r3, #0xbc
	cmp		r1, #0x0
	bge		_083118d8
	add		r1, #0x7
_083118d8:
	asr		r1, r1, #0x3
	ldr		r0, [r3, #0x20]
	add		r4, r0, r1
	cmp		r2, #0x0
	bge		_083118e4
	add		r2, #0x7
_083118e4:
	asr		r0, r2, #0x3
	lsl		r0, r0, #0x1
	ldr		r1, [r3, #0x2c]
	mul		r0, r1
	add		r0, r4, r0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_083118cc

	thumb_func_start sub_083118f4
sub_083118f4:
	cmp		r1, #0x0
	bge		_083118fa
	add		r1, #0xf
_083118fa:
	asr		r0, r1, #0x4
	cmp		r0, #0x3f
	bhi		_08311916
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08311908
	add		r0, #0xf
_08311908:
	asr		r0, r0, #0x4
	cmp		r0, #0x0
	blt		_08311916
	cmp		r0, #0x3f
	bgt		_08311916
	mov		r0, #0x0
	b		_08311918
_08311916:
	mov		r0, #0x1
_08311918:
	bx		lr

.incbin "base.gba", 0x31191A, 0x2
	thumb_func_end sub_083118f4

	thumb_func_start sub_0831191c
sub_0831191c:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r3, #0xbc
	cmp		r1, #0x0
	bge		_08311928
	add		r1, #0x7
_08311928:
	asr		r0, r1, #0x3
	mov		r4, #0x7f
	and		r0, r4
	ldr		r1, [r3, #0x14]
	add		r1, r1, r0
	cmp		r2, #0x0
	bge		_08311938
	add		r2, #0x7
_08311938:
	asr		r0, r2, #0x3
	and		r0, r4
	lsl		r0, r0, #0x7
	add		r0, r1, r0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x311946, 0x2
	thumb_func_end sub_0831191c

	thumb_func_start sub_08311948
sub_08311948:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x10]
	bx		lr
	thumb_func_end sub_08311948

	thumb_func_start sub_08311954
sub_08311954:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x18]
	bx		lr
	thumb_func_end sub_08311954

	thumb_func_start sub_08311960
sub_08311960:
	mov		r1, #0xaf
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x1c]
	bx		lr
	thumb_func_end sub_08311960

	thumb_func_start sub_0831196c
sub_0831196c:
	cmp		r1, #0x0
	blt		_08311988
	add		r3, r0, #0x0
	add		r3, #0xbc
	ldr		r0, [r3, #0x2c]
	lsl		r0, r0, #0x14
	cmp		r1, r0
	bge		_08311988
	cmp		r2, #0x0
	blt		_08311988
	ldr		r0, [r3, #0x30]
	lsl		r0, r0, #0x14
	cmp		r2, r0
	blt		_0831198c
_08311988:
	mov		r0, #0x1
	b		_0831198e
_0831198c:
	mov		r0, #0x0
_0831198e:
	bx		lr
	thumb_func_end sub_0831196c

	thumb_func_start sub_08311990
sub_08311990:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldrh	r0, [r0, #0x14]
	sub		r0, #0x1
	cmp		r1, r0
	beq		_083119a4
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	b		_083119a6
_083119a4:
	mov		r0, #0x0
_083119a6:
	bx		lr
	thumb_func_end sub_08311990

	thumb_func_start sub_083119a8
sub_083119a8:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r0, r1, #0x18
	cmp		r0, #0x0
	bne		_083119b4
	ldrb	r0, [r2, #0x14]
_083119b4:
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bx		lr
	thumb_func_end sub_083119a8

	thumb_func_start sub_083119bc
sub_083119bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	mov		r8, r3
	mov		r9, r8
	bl		sub_0831191c
	add		r7, r0, #0x0
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_083118f4
	cmp		r0, #0x0
	bne		_08311a0a
	mov		r2, #0x2
	neg		r2, r2
	and		r2, r7
	mov		r0, #0x1
	and		r0, r7
	cmp		r0, #0x0
	beq		_083119fc
	ldrb	r0, [r2, #0x0]
	mov		r3, r8
	lsl		r1, r3, #0x8
	b		_08311a06
_083119fc:
	ldrh	r1, [r2, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r1
	mov		r1, r9
_08311a06:
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08311a0a:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311A16, 0x2
	thumb_func_end sub_083119bc

	thumb_func_start sub_08311a18
sub_08311a18:
	push	{ lr }
	bl		sub_083118cc
	ldrb	r0, [r0, #0x0]
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08311a18

	thumb_func_start sub_08311a24
sub_08311a24:
	ldr		r1, _08311a38
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0xca
	ldrb	r1, [r0, #0x0]
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	bx		lr

.incbin "base.gba", 0x311A36, 0x2

_08311a38:	.4byte 0x00000574

.incbin "base.gba", 0x311A3C, 0x24
	thumb_func_end sub_08311a24

	thumb_func_start sub_08311a60
sub_08311a60:
	mov		r0, #0x1
	bx		lr

.incbin "base.gba", 0x311A64, 0x44
	thumb_func_end sub_08311a60

	thumb_func_start sub_08311aa8
sub_08311aa8:
	mov		r0, #0x1
	bx		lr
	thumb_func_end sub_08311aa8

	thumb_func_start sub_08311aac
sub_08311aac:
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
	bl		sub_08311af8
	ldr		r1, [r5, #0x38]
	ldrb	r0, [r4, #0x3]
	mov		r2, #0x2
	and		r2, r0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	bl		sub_08311b68
	ldr		r0, _08311aec
	str		r0, [r5, #0x2c]
	add		r0, r4, #0x0
	add		r0, #0xd4
	ldr		r0, [r0, #0x0]
	add		r4, r4, r0
	str		r4, [r5, #0x34]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311AEA, 0x2

_08311aec:	.4byte 0x0600C000

.incbin "base.gba", 0x311AF0, 0x8
	thumb_func_end sub_08311aac

	thumb_func_start sub_08311af8
sub_08311af8:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	add		r5, r2, #0x0
	mov		r0, #0x0
	str		r0, [r3, #0x0]
	ldr		r0, _08311b24
	ldrh	r0, [r0, #0x0]
	mov		r2, #0xc0
	lsl		r2, r2, #0x8
	add		r1, r2, #0x0
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r1, r0
	beq		_08311b3a
	cmp		r1, r0
	bgt		_08311b28
	cmp		r1, #0x0
	beq		_08311b36
	b		_08311b46

.incbin "base.gba", 0x311B22, 0x2

_08311b24:	.4byte BG2Control

_08311b28:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_08311b3e
	cmp		r1, r2
	beq		_08311b42
	b		_08311b46
_08311b36:
	mov		r0, #0x10
	b		_08311b44
_08311b3a:
	mov		r0, #0x20
	b		_08311b44
_08311b3e:
	mov		r0, #0x40
	b		_08311b44
_08311b42:
	mov		r0, #0x80
_08311b44:
	str		r0, [r3, #0x24]
_08311b46:
	ldr		r0, [r3, #0x24]
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r0, r0, #0x1
	str		r0, [r3, #0x28]
	lsl		r0, r4, #0x6
	str		r0, [r3, #0x2c]
	lsl		r0, r5, #0x6
	str		r0, [r3, #0x30]
	ldr		r0, _08311b64
	str		r0, [r3, #0x20]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311B62, 0x2

_08311b64:	.4byte 0x0600C000
	thumb_func_end sub_08311af8

	thumb_func_start sub_08311b68
sub_08311b68:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r1, #0x0
	ldr		r5, [r0, #0x1c]
	cmp		r2, #0x0
	beq		_08311ba2
	add		r6, r5, #0x0
	mov		r4, #0x0
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08311b8a
	add		r0, r5, r0
_08311b7e:
	lsl		r1, r4, #0xc
	add		r1, r7, r1
	bl		sub_083272d4
	bl		sub_0830d774
_08311b8a:
	add		r4, #0x1
	cmp		r4, #0xf
	bgt		_08311ba8
	lsl		r0, r4, #0x1
	add		r0, r6, r0
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08311b8a
	add		r0, r5, r0
	cmp		r4, #0x3
	ble		_08311b7e
	b		_08311ba8
_08311ba2:
	add		r0, r5, #0x0
	bl		sub_083272d4
_08311ba8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311BAE, 0x12
	thumb_func_end sub_08311b68

	thumb_func_start sub_08311bc0
sub_08311bc0:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	bne		_08311c00
	mov		r0, sp
	mov		r5, #0x0
	strh	r5, [r0, #0x0]
	ldr		r4, _08311bfc
	and		r4, r3
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	orr		r4, r0
	mov		r0, sp
	add		r2, r4, #0x0
	bl		sub_083272c4
	mov		r0, sp
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, [r6, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r7, r1
	add		r2, r4, #0x0
	bl		sub_083272c4
	b		_08311c2a

_08311bfc:	.4byte 0x001FFFFF

_08311c00:
	asr		r0, r2, #0x1
	lsl		r0, r0, #0x1
	ldr		r4, [r6, #0x20]
	add		r4, r4, r0
	ldr		r5, _08311c34
	and		r5, r3
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	add		r2, r5, #0x0
	bl		sub_083272c4
	ldr		r0, [r6, #0x2c]
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldr		r1, [r6, #0x28]
	lsl		r1, r1, #0x1
	add		r1, r7, r1
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_083272c4
_08311c2a:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311C32, 0x2

_08311c34:	.4byte 0x001FFFFF
	thumb_func_end sub_08311bc0

	thumb_func_start sub_08311c38
sub_08311c38:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r6, [r5, #0x38]
	lsl		r0, r6, #0x1
	ldr		r2, [r5, #0x24]
	sub		r1, r2, #0x1
	and		r0, r1
	add		r1, r0, #0x0
	mul		r1, r2
	ldr		r0, [r5, #0x14]
	add		r7, r0, r1
	cmp		r6, #0x0
	blt		_08311c66
	ldr		r0, [r5, #0x30]
	cmp		r6, r0
	bge		_08311c66
	ldr		r3, [r5, #0x28]
	ldr		r2, [r5, #0x34]
	cmn		r2, r3
	blt		_08311c66
	ldr		r4, [r5, #0x2c]
	cmp		r2, r4
	blt		_08311c76
_08311c66:
	mov		r2, #0x1
	neg		r2, r2
	ldr		r3, [r5, #0x28]
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08311bc0
	b		_08311d06
_08311c76:
	add		r0, r6, #0x0
	mul		r0, r4
	lsl		r0, r0, #0x2
	lsl		r1, r2, #0x1
	add		r6, r0, r1
	cmp		r2, #0x0
	bge		_08311cae
	sub		r4, r3, #0x1
	and		r4, r2
	lsl		r1, r4, #0x1
	add		r1, r7, r1
	mov		r2, #0x1
	neg		r2, r2
	sub		r3, r3, r4
	add		r0, r5, #0x0
	bl		sub_08311bc0
	ldr		r0, [r5, #0x2c]
	lsl		r0, r0, #0x2
	ldr		r1, [r5, #0x38]
	add		r2, r1, #0x0
	mul		r2, r0
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_08311bc0
	b		_08311d06
_08311cae:
	sub		r0, r4, r3
	cmp		r2, r0
	ble		_08311cd2
	sub		r4, r3, #0x1
	and		r4, r2
	mov		r2, #0x1
	neg		r2, r2
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_08311bc0
	lsl		r1, r4, #0x1
	add		r1, r7, r1
	ldr		r3, [r5, #0x28]
	sub		r3, r3, r4
	add		r0, r5, #0x0
	b		_08311cde
_08311cd2:
	sub		r4, r3, #0x1
	and		r4, r2
	cmp		r4, #0x0
	bne		_08311ce6
	add		r0, r5, #0x0
	add		r1, r7, #0x0
_08311cde:
	add		r2, r6, #0x0
	bl		sub_08311bc0
	b		_08311d06
_08311ce6:
	sub		r2, r3, r4
	lsl		r2, r2, #0x1
	add		r2, r6, r2
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_08311bc0
	lsl		r1, r4, #0x1
	add		r1, r7, r1
	ldr		r3, [r5, #0x28]
	sub		r3, r3, r4
	add		r0, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_08311bc0
_08311d06:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08311c38

	thumb_func_start sub_08311d0c
sub_08311d0c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r0, #0x0
	str		r0, [r4, #0x34]
	str		r0, [r4, #0x38]
	ldr		r0, [r4, #0x28]
	cmp		r0, #0x0
	ble		_08311d30
	add		r5, r0, #0x0
_08311d1e:
	add		r0, r4, #0x0
	bl		sub_08311c38
	ldr		r0, [r4, #0x38]
	add		r0, #0x1
	str		r0, [r4, #0x38]
	sub		r5, #0x1
	cmp		r5, #0x0
	bne		_08311d1e
_08311d30:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x311D36, 0x42
	thumb_func_end sub_08311d0c

	thumb_func_start sub_08311d78
sub_08311d78:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1f
	bls		_08311d84
	mov		r0, #0x1
	b		_08311d86
_08311d84:
	mov		r0, #0x0
_08311d86:
	bx		lr
	thumb_func_end sub_08311d78

	thumb_func_start sub_08311d88
sub_08311d88:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r5, #0x0
	add		r0, r4, #0x0
	bl		sub_08311d78
	cmp		r0, #0x0
	bne		_08311dbc
	mov		r1, #0x0
	ldr		r2, _08311db8
_08311d9e:
	lsl		r0, r1, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, r4
	bne		_08311daa
	add		r5, r1, #0x0
_08311daa:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_08311d9e
	b		_08311dd6

.incbin "base.gba", 0x311DB6, 0x2

_08311db8:	.4byte 0x0202B9A8

_08311dbc:
	mov		r1, #0x0
	ldr		r2, _08311de0
_08311dc0:
	lsl		r0, r1, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, r4
	bne		_08311dcc
	add		r5, r1, #0x0
_08311dcc:
	add		r0, r1, #0x1
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x13
	bls		_08311dc0
_08311dd6:
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x311DDE, 0x2

_08311de0:	.4byte 0x0202BA08

.incbin "base.gba", 0x311DE4, 0x334
	thumb_func_end sub_08311d88

	thumb_func_start sub_08312118
sub_08312118:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _08312184
	ldr		r0, _08312188
	add		r3, r2, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x13
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0831218c
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
	ldr		r0, _08312190
	add		r2, r2, r0
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_08312194
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x0]
	orr		r0, r4
	strh	r0, [r3, #0x0]
	b		_0831219e

.incbin "base.gba", 0x312182, 0x2

_08312184:	.4byte 0x030031D0
_08312188:	.4byte 0x0000057C
_0831218c:	.4byte 0x0000FFF8
_08312190:	.4byte 0x00000781

_08312194:
	ldrh	r0, [r3, #0x0]
	ldr		r1, _0831220c
	and		r1, r0
	ldrh	r0, [r3, #0x0]
	strh	r1, [r3, #0x0]
_0831219e:
	mov		r0, #0x0
	str		r0, [r3, #0x4]
	ldr		r0, _08312210
	str		r0, [sp, #0x0]
	ldr		r0, _08312214
	str		r0, [sp, #0x4]
	ldr		r0, _08312218
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
	bge		_083121d2
	add		r0, #0x3f
_083121d2:
	asr		r0, r0, #0x6
	sub		r0, #0x28
	ldrh	r1, [r3, #0xe]
	strh	r0, [r3, #0xe]
	ldrh	r0, [r3, #0x10]
	mov		r4, #0x26
	strh	r4, [r3, #0x10]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_083121e8
	add		r0, #0x7f
_083121e8:
	asr		r0, r0, #0x7
	ldrh	r1, [r3, #0x12]
	strh	r0, [r3, #0x12]
	ldrh	r0, [r3, #0x14]
	strh	r4, [r3, #0x14]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bge		_083121fa
	add		r0, #0xff
_083121fa:
	asr		r0, r0, #0x8
	ldrh	r1, [r3, #0x16]
	strh	r0, [r3, #0x16]
	ldrh	r0, [r3, #0x18]
	strh	r4, [r3, #0x18]
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0831220c:	.4byte 0x0000F7FF
_08312210:	.4byte 0x00000F07
_08312214:	.4byte 0x00000E07
_08312218:	.4byte 0x00000D07

.incbin "base.gba", 0x31221C, 0x41C
	thumb_func_end sub_08312118

	thumb_func_start sub_08312638
sub_08312638:
	push	{ r4, r5, r6, r7, lr }
	mov		r12, r0
	ldr		r0, _0831268c
	ldr		r1, _08312690
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldrh	r4, [r0, #0x20]
	ldrh	r5, [r0, #0x22]
	mov		r2, #0x0
	ldrh	r6, [r0, #0x24]
	cmp		r12, r0
	bne		_08312736
	mov		r3, r12
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08312736
	mov		r1, r12
	add		r1, #0x5a
	ldrh	r3, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r3
	add		r7, r1, #0x0
	cmp		r0, #0x0
	beq		_08312736
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r3
	cmp		r0, #0x0
	beq		_0831270a
	mov		r0, r12
	add		r0, #0x5c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_083126a4
	cmp		r0, #0x1
	bgt		_08312694
	cmp		r0, #0x0
	beq		_0831269e
	b		_083126c4

_0831268c:	.4byte 0x030031D0
_08312690:	.4byte 0x000007AC

_08312694:
	cmp		r0, #0x2
	beq		_083126ae
	cmp		r0, #0x3
	beq		_083126b8
	b		_083126c4
_0831269e:
	mov		r0, r12
	add		r0, #0x50
	b		_083126bc
_083126a4:
	mov		r0, r12
	add		r0, #0x50
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	b		_083126c2
_083126ae:
	mov		r0, r12
	add		r0, #0x4e
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	b		_083126c2
_083126b8:
	mov		r0, r12
	add		r0, #0x4e
_083126bc:
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mvn		r0, r0
_083126c2:
	lsr		r2, r0, #0x1f
_083126c4:
	mov		r0, r12
	add		r0, #0xbc
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bge		_083126d2
	mov		r0, #0x1
	eor		r2, r0
_083126d2:
	cmp		r2, #0x0
	beq		_083126f0
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r5, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r6, #0x10
	mov		r4, #0x80
	lsl		r4, r4, #0x9
	add		r2, r2, r4
	asr		r2, r2, #0x10
	lsr		r3, r3, #0x1f
	bl		sub_08324aa0
	b		_08312732
_083126f0:
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r5, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r6, #0x10
	mov		r4, #0x80
	lsl		r4, r4, #0x9
	add		r2, r2, r4
	asr		r2, r2, #0x10
	lsr		r3, r3, #0x1f
	bl		sub_08324b04
	b		_08312732
_0831270a:
	sub		r0, r3, #0x4
	ldr		r2, _0831273c
	add		r1, r2, #0x0
	and		r0, r1
	strh	r0, [r7, #0x0]
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r5, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r6, #0x10
	mov		r3, #0x80
	lsl		r3, r3, #0x9
	add		r2, r2, r3
	asr		r2, r2, #0x10
	mov		r3, r12
	add		r3, #0xbc
	ldr		r3, [r3, #0x0]
	lsr		r3, r3, #0x1f
	bl		sub_08324a3c
_08312732:
	mov		r0, #0x0
	strh	r0, [r7, #0x0]
_08312736:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831273c:	.4byte 0x00003FFF
	thumb_func_end sub_08312638

	thumb_func_start sub_08312740
sub_08312740:
	add		r2, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_0831276e
	add		r1, r2, #0x0
	add		r1, #0x76
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xe
	bhi		_08312758
	add		r0, #0x1
	strh	r0, [r1, #0x0]
_08312758:
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0xf
	str		r0, [r2, #0x8]
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0xb
	add		r1, r2, #0x0
	add		r1, #0x82
	strh	r0, [r1, #0x0]
	mov		r0, #0x1
	b		_08312776
_0831276e:
	add		r1, r2, #0x0
	add		r1, #0x76
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08312776:
	bx		lr
	thumb_func_end sub_08312740

	thumb_func_start sub_08312778
sub_08312778:
	add		r3, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x7
	bhi		_083127f6
	lsl		r0, r0, #0x2
	ldr		r1, _0831278c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0831278c:	.4byte 0x0200C790

.incbin "base.gba", 0x312790, 0x66

_083127f6:
	bx		lr

.incbin "base.gba", 0x3127F8, 0x4
	thumb_func_end sub_08312778

	thumb_func_start sub_083127fc
sub_083127fc:
	add		r2, r0, #0x0
	mov		r1, #0xce
	lsl		r1, r1, #0x1
	add		r0, r2, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08312820
	ldr		r1, _0831281c
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	b		_08312852

.incbin "base.gba", 0x31281A, 0x2

_0831281c:	.4byte 0x0202BFEC

_08312820:
	cmp		r0, #0x1
	bne		_0831283c
	ldr		r1, _08312838
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x11
	b		_0831284e

_08312838:	.4byte 0x0202BFEC

_0831283c:
	ldr		r1, _08312864
	add		r0, r2, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x12
_0831284e:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
_08312852:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bne		_08312868
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	b		_0831287a

_08312864:	.4byte 0x0202BFEC

_08312868:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x7
	cmp		r0, #0x0
	bge		_08312878
	add		r0, #0xff
_08312878:
	asr		r0, r0, #0x8
_0831287a:
	bx		lr
	thumb_func_end sub_083127fc

	thumb_func_start sub_0831287c
sub_0831287c:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_083127fc
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
	thumb_func_end sub_0831287c

	thumb_func_start sub_08312898
sub_08312898:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_083127fc
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
	thumb_func_end sub_08312898

	thumb_func_start sub_083128b8
sub_083128b8:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r1, r4, #0x0
	add		r1, #0x6a
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08312924
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_083128e6
	add		r0, r4, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r2, r3, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	b		_08312924
_083128e6:
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
	ldr		r0, _083129d8
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r0, #0xc
	strb	r1, [r0, #0x0]
	ldr		r0, _083129dc
	ldr		r1, _083129e0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0831291c
	mov		r0, #0x10
	bl		sub_08323b80
_0831291c:
	ldrh	r1, [r5, #0x0]
	ldr		r0, _083129e4
	and		r0, r1
	strh	r0, [r5, #0x0]
_08312924:
	add		r0, r4, #0x0
	add		r0, #0xac
	mov		r2, #0x0
	ldrsh	r1, [r0, r2]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_0831294c
	add		r0, #0xa
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0xff
	bgt		_08312948
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0831294c
_08312948:
	mov		r0, #0x0
	strh	r0, [r6, #0x0]
_0831294c:
	add		r1, r4, #0x0
	add		r1, #0x66
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	beq		_08312976
	sub		r0, r2, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_08312976
	ldr		r0, _083129dc
	ldr		r1, _083129e0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08312976
	mov		r0, #0x8
	bl		sub_08323b80
_08312976:
	add		r0, r4, #0x0
	add		r0, #0x68
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	ble		_083129b4
	sub		r0, r2, #0x1
	strh	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_083129b4
	add		r0, r4, #0x0
	mov		r1, #0x4
	bl		sub_08317658
	ldr		r0, _083129dc
	ldr		r1, _083129e0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_083129b4
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_083129b4
	mov		r0, #0x28
	bl		sub_08325e94
_083129b4:
	add		r1, r5, #0x0
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x0
	bge		_083129c2
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_083129c2:
	mov		r3, #0x0
	ldrsh	r0, [r5, r3]
	cmp		r0, #0x0
	beq		_083129ec
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	ldr		r0, _083129e8
	add		r3, r1, #0x0
	and		r3, r0
	b		_083129f8

_083129d8:	.4byte 0x00007FFF
_083129dc:	.4byte 0x030031D0
_083129e0:	.4byte 0x000007AC
_083129e4:	.4byte 0x0000FFFC
_083129e8:	.4byte 0x0000FFEF

_083129ec:
	add		r2, r4, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x10
	add		r3, r1, #0x0
	orr		r3, r0
_083129f8:
	strh	r3, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x8
	bne		_08312a0e
	mov		r0, #0x20
	add		r1, r3, #0x0
	orr		r1, r0
	b		_08312a14
_08312a0e:
	ldr		r0, _08312a24
	add		r1, r3, #0x0
	and		r1, r0
_08312a14:
	strh	r1, [r2, #0x0]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0xa
	bne		_08312a2c
	ldr		r0, _08312a28
	and		r0, r1
	b		_08312a30

.incbin "base.gba", 0x312A22, 0x2

_08312a24:	.4byte 0x0000FFDF
_08312a28:	.4byte 0x0000FFBF

_08312a2c:
	mov		r0, #0x40
	orr		r0, r1
_08312a30:
	strh	r0, [r2, #0x0]
	add		r2, r6, #0x0
	ldrh	r5, [r2, #0x0]
	mov		r0, #0x0
	ldrsh	r3, [r2, r0]
	cmp		r3, #0x0
	beq		_08312a5c
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08312a5c
	cmp		r3, #0x9
	ble		_08312a58
	add		r0, r5, #0x0
	sub		r0, #0xa
	strh	r0, [r2, #0x0]
	b		_08312a5c
_08312a58:
	mov		r0, #0x0
	strh	r0, [r6, #0x0]
_08312a5c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x312A62, 0x2
	thumb_func_end sub_083128b8

	thumb_func_start sub_08312a64
sub_08312a64:
	push	{ r4, lr }
	add		r1, r0, #0x0
	add		r4, r1, #0x0
	add		r4, #0xac
	ldrh	r2, [r4, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r4, r3]
	cmp		r0, #0x0
	beq		_08312a9c
	add		r0, r1, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08312a86
	mov		r0, #0x0
	b		_08312a9a
_08312a86:
	mov		r0, #0x3f
	and		r0, r2
	cmp		r0, #0x0
	bne		_08312a96
	add		r0, r1, #0x0
	mov		r1, #0x5
	bl		sub_083178b8
_08312a96:
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
_08312a9a:
	strh	r0, [r4, #0x0]
_08312a9c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x312AA2, 0x2
	thumb_func_end sub_08312a64

	thumb_func_start sub_08312aa4
sub_08312aa4:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r2, r5, #0x0
	add		r2, #0x64
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08312aca
	ldrh	r1, [r5, #0x38]
	mov		r0, #0xdf
	lsl		r0, r0, #0x7
	cmp		r1, r0
	bne		_08312aca
	mov		r4, #0x0
	strb	r4, [r2, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0x7
	bl		sub_08317658
	strh	r4, [r5, #0x38]
_08312aca:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08312aa4

	thumb_func_start sub_08312ad0
sub_08312ad0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r1, _08312b0c
	add		r1, #0x24
	bl		sub_08316514
	ldr		r1, _08312b10
	and		r1, r0
	add		r5, r4, #0x0
	add		r5, #0xca
	strh	r1, [r5, #0x0]
	add		r0, r4, #0x0
	bl		sub_083163d4
	add		r1, r4, #0x0
	add		r1, #0x7c
	ldrh	r0, [r5, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	ldr		r0, _08312b14
	cmp		r1, r0
	ble		_08312b18
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	b		_08312b32

.incbin "base.gba", 0x312B0A, 0x2

_08312b0c:	.4byte 0x030031D0
_08312b10:	.4byte 0xFFFFFF00
_08312b14:	.4byte 0x000005FF

_08312b18:
	ldr		r0, _08312b28
	cmp		r1, r0
	bge		_08312b2c
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	b		_08312b32

_08312b28:	.4byte 0xFFFFFA00

_08312b2c:
	add		r1, r4, #0x0
	add		r1, #0x96
	mov		r0, #0x0
_08312b32:
	strh	r0, [r1, #0x0]
	add		r2, r1, #0x0
	ldrh	r3, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _08312b4c
	cmp		r1, r0
	bgt		_08312b50
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_08312b54

.incbin "base.gba", 0x312B4A, 0x2

_08312b4c:	.4byte 0x01FFFFFF

_08312b50:
	mov		r0, #0x80
	lsl		r0, r0, #0x7
_08312b54:
	orr		r0, r3
	strh	r0, [r2, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x312B5E, 0x2
	thumb_func_end sub_08312ad0

	thumb_func_start sub_08312b60
sub_08312b60:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	mov		r0, #0xbd
	lsl		r0, r0, #0x1
	add		r6, r4, r0
	ldrh	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_08312b72
	b		_08312d4a
_08312b72:
	cmp		r0, #0x1
	bne		_08312b78
	b		_08312d4a
_08312b78:
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	bne		_08312b88
	b		_08312d4a
_08312b88:
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08312b96
	b		_08312d4a
_08312b96:
	mov		r2, #0xbe
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08312ba4
	b		_08312d4a
_08312ba4:
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	and		r1, r0
	cmp		r1, #0x0
	beq		_08312bb0
	b		_08312d4a
_08312bb0:
	ldr		r5, _08312bfc
	ldr		r1, _08312c00
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08312bc0
	bl		sub_0832045c
_08312bc0:
	mov		r2, #0xe6
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	bl		sub_083214a4
	add		r2, r0, #0x0
	str		r4, [r2, #0x54]
	ldrh	r1, [r6, #0x0]
	ldr		r0, _08312c04
	cmp		r1, r0
	bne		_08312bd8
	b		_08312d1c
_08312bd8:
	cmp		r1, r0
	bgt		_08312c4c
	sub		r0, #0x6
	cmp		r1, r0
	bne		_08312be4
	b		_08312cd0
_08312be4:
	cmp		r1, r0
	bgt		_08312c1c
	sub		r0, #0x4
	cmp		r1, r0
	beq		_08312cb8
	cmp		r1, r0
	bgt		_08312c08
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08312cb0
	b		_08312d3c

.incbin "base.gba", 0x312BFA, 0x2

_08312bfc:	.4byte 0x030031D0
_08312c00:	.4byte 0x000007AC
_08312c04:	.4byte 0x0000100C

_08312c08:
	ldr		r0, _08312c18
	cmp		r1, r0
	beq		_08312cc0
	add		r0, #0x1
	cmp		r1, r0
	beq		_08312cc8
	b		_08312d3c

.incbin "base.gba", 0x312C16, 0x2

_08312c18:	.4byte 0x00001004

_08312c1c:
	ldr		r0, _08312c34
	cmp		r1, r0
	beq		_08312ce0
	cmp		r1, r0
	bgt		_08312c38
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08312cd8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08312d08
	b		_08312d3c

_08312c34:	.4byte 0x00001009

_08312c38:
	ldr		r0, _08312c48
	cmp		r1, r0
	beq		_08312d24
	add		r0, #0x1
	cmp		r1, r0
	bne		_08312c46
	b		_08312d34
_08312c46:
	b		_08312d3c

_08312c48:	.4byte 0x0000100A

_08312c4c:
	ldr		r0, _08312c68
	cmp		r1, r0
	beq		_08312cc0
	cmp		r1, r0
	bgt		_08312c80
	ldr		r0, _08312c6c
	cmp		r1, r0
	beq		_08312cf8
	cmp		r1, r0
	bgt		_08312c70
	sub		r0, #0x1
	cmp		r1, r0
	beq		_08312cf0
	b		_08312d3c

_08312c68:	.4byte 0x00002004
_08312c6c:	.4byte 0x0000100F

_08312c70:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r1, r0
	beq		_08312cb0
	add		r0, #0x2
	cmp		r1, r0
	beq		_08312cb8
	b		_08312d3c
_08312c80:
	ldr		r0, _08312c98
	cmp		r1, r0
	beq		_08312cd8
	cmp		r1, r0
	bgt		_08312c9c
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08312cc8
	add		r0, #0x1
	cmp		r1, r0
	beq		_08312cd0
	b		_08312d3c

_08312c98:	.4byte 0x00002007

_08312c9c:
	ldr		r0, _08312cac
	cmp		r1, r0
	beq		_08312d24
	add		r0, #0x2
	cmp		r1, r0
	beq		_08312d1c
	b		_08312d3c

.incbin "base.gba", 0x312CAA, 0x2

_08312cac:	.4byte 0x0000200A

_08312cb0:
	add		r0, r2, #0x0
	bl		sub_0831cc48
	b		_08312d2a
_08312cb8:
	add		r0, r2, #0x0
	bl		sub_0831ccdc
	b		_08312d2a
_08312cc0:
	add		r0, r2, #0x0
	bl		sub_0831cd70
	b		_08312d2a
_08312cc8:
	add		r0, r2, #0x0
	bl		sub_0831d498
	b		_08312d2a
_08312cd0:
	add		r0, r2, #0x0
	bl		sub_0831d53c
	b		_08312d2a
_08312cd8:
	add		r0, r2, #0x0
	bl		sub_0831d69c
	b		_08312d2a
_08312ce0:
	add		r0, r2, #0x0
	bl		sub_0831d6f0
	ldr		r1, _08312cec
	b		_08312d10

.incbin "base.gba", 0x312CEA, 0x2

_08312cec:	.4byte 0x0000100E

_08312cf0:
	add		r0, r2, #0x0
	bl		sub_0831d718
	b		_08312d4a
_08312cf8:
	add		r0, r2, #0x0
	bl		sub_0831d778
	ldr		r1, _08312d04
	b		_08312d10

.incbin "base.gba", 0x312D02, 0x2

_08312d04:	.4byte 0x00001007

_08312d08:
	add		r0, r2, #0x0
	bl		sub_0831d748
	ldr		r1, _08312d18
_08312d10:
	add		r0, r4, #0x0
	bl		sub_08317a88
	b		_08312d4a

_08312d18:	.4byte 0x0000100F

_08312d1c:
	add		r0, r2, #0x0
	bl		sub_0831d7e0
	b		_08312d2a
_08312d24:
	add		r0, r2, #0x0
	bl		sub_0831d9ec
_08312d2a:
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_08317a88
	b		_08312d4a
_08312d34:
	add		r0, r2, #0x0
	bl		sub_0831da88
	b		_08312d4a
_08312d3c:
	add		r0, r2, #0x0
	bl		sub_0831d498
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_08317a88
_08312d4a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08312b60

	thumb_func_start sub_08312d50
sub_08312d50:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r5, r1, #0x10
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x40
	ble		_08312d66
	mov		r0, #0x40
_08312d66:
	ldrh	r1, [r1, #0x0]
	cmp		r1, #0x4
	bhi		_08312d70
	lsl		r2, r0, #0xf
	b		_08312d9e
_08312d70:
	cmp		r1, #0x14
	bhi		_08312d80
	lsl		r0, r0, #0x11
	ldr		r1, _08312d7c
	add		r2, r0, r1
	b		_08312d9e

_08312d7c:	.4byte 0xFFF60000

_08312d80:
	cmp		r1, #0x24
	bhi		_08312d8e
	lsl		r0, r0, #0x10
	mov		r1, #0x90
	lsl		r1, r1, #0xd
	add		r2, r0, r1
	b		_08312d9e
_08312d8e:
	cmp		r1, #0x40
	bhi		_08312d9c
	lsl		r0, r0, #0xf
	mov		r1, #0x88
	lsl		r1, r1, #0xe
	add		r2, r0, r1
	b		_08312d9e
_08312d9c:
	mov		r2, #0x0
_08312d9e:
	add		r1, r4, #0x0
	add		r1, #0xa8
	add		r0, r4, #0x0
	add		r0, #0x8c
	ldr		r0, [r0, #0x0]
	add		r0, r0, r2
	str		r0, [r1, #0x0]
	ldr		r1, [r4, #0x48]
	cmp		r1, #0x0
	beq		_08312e6e
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r0, r1, #0x0
	and		r0, r2
	cmp		r0, #0x0
	bne		_08312e6e
	mov		r0, #0x20
	and		r1, r0
	cmp		r1, #0x0
	bne		_08312e38
	add		r0, r4, #0x0
	add		r0, #0x96
	mov		r3, #0x0
	strh	r5, [r0, #0x0]
	add		r0, r5, #0x0
	and		r0, r2
	cmp		r0, #0x0
	bne		_08312dde
	mov		r0, #0x10
	and		r0, r5
	cmp		r0, #0x0
	beq		_08312dee
_08312dde:
	add		r1, r4, #0x0
	add		r1, #0xb0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	sub		r1, #0x5c
	mov		r0, #0x7
	strb	r0, [r1, #0x0]
	b		_08312e2c
_08312dee:
	add		r0, r4, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08312e0a
	add		r0, r4, #0x0
	add		r0, #0xb0
	mov		r1, #0x1
	strb	r1, [r0, #0x0]
	sub		r0, #0x5c
	strb	r1, [r0, #0x0]
	b		_08312e2c
_08312e0a:
	add		r0, r4, #0x0
	add		r0, #0xb0
	strb	r3, [r0, #0x0]
	ldr		r1, _08312e34
	sub		r0, #0x2a
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x54
	strb	r0, [r2, #0x0]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08312e2c
	strb	r3, [r2, #0x0]
_08312e2c:
	add		r0, r4, #0x0
	bl		sub_08312b60
	b		_08312e5c

_08312e34:	.4byte 0x0202BE04

_08312e38:
	add		r0, r4, #0x0
	bl		sub_08312ad0
	add		r3, r4, #0x0
	add		r3, #0x96
	mov		r0, #0x40
	and		r0, r5
	ldrh	r1, [r3, #0x0]
	orr		r0, r1
	mov		r2, #0x0
	strh	r0, [r3, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xb0
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x54
	strb	r2, [r0, #0x0]
_08312e5c:
	add		r0, r4, #0x0
	bl		sub_08313aac
	add		r0, r4, #0x0
	bl		sub_0831377c
	add		r0, r4, #0x0
	bl		sub_08312f2c
_08312e6e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08312d50

	thumb_func_start sub_08312e74
sub_08312e74:
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
	ble		_08312e90
	str		r0, [r2, #0x0]
_08312e90:
	mov		r0, #0x7a
	add		r0, r0, r3
	mov		r12, r0
	ldr		r4, _08312f00
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bge		_08312ea2
	add		r0, #0x3f
_08312ea2:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r1, [r0, #0x0]
	mov		r5, #0x2
	ldrsh	r0, [r2, r5]
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08312eba
	ldr		r1, _08312f04
	add		r0, r0, r1
_08312eba:
	asr		r0, r0, #0xf
	add		r1, r3, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r5, r12
	mov		r0, #0x0
	ldrsh	r1, [r5, r0]
	cmp		r1, #0x0
	bge		_08312ece
	add		r1, #0x3f
_08312ece:
	asr		r1, r1, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08312f08
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	mov		r4, #0x2
	ldrsh	r1, [r2, r4]
	neg		r0, r0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_08312ef0
	ldr		r5, _08312f04
	add		r1, r1, r5
_08312ef0:
	asr		r1, r1, #0xf
	add		r0, r3, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x312EFE, 0x2

_08312f00:	.4byte 0x0202A9A0
_08312f04:	.4byte 0x00007FFF
_08312f08:	.4byte 0x000003FF
	thumb_func_end sub_08312e74

	thumb_func_start sub_08312f0c
sub_08312f0c:
	add		r3, r0, #0x0
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
	bx		lr
	thumb_func_end sub_08312f0c

	thumb_func_start sub_08312f2c
sub_08312f2c:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08312f80
	add		r2, r3, #0x0
	add		r2, #0xbc
	ldr		r1, [r2, #0x0]
	ldr		r0, _08312f50
	cmp		r1, r0
	ble		_08312f58
	add		r0, r3, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	ldr		r2, _08312f54
	b		_08312f68

_08312f50:	.4byte 0x001FFFFF
_08312f54:	.4byte 0xFFF00000

_08312f58:
	ldr		r0, _08312f70
	cmp		r1, r0
	bgt		_08312f74
	add		r0, r3, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0xd
_08312f68:
	orr		r1, r2
	str		r1, [r0, #0x0]
	b		_083132ac

.incbin "base.gba", 0x312F6E, 0x2

_08312f70:	.4byte 0xFFE00000

_08312f74:
	add		r1, r3, #0x0
	add		r1, #0xc0
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	b		_083132ac
_08312f80:
	add		r0, r3, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r7, r0, #0x0
	cmp		r1, #0xb
	bhi		_08313056
	lsl		r0, r1, #0x2
	ldr		r1, _08312f98
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x312F96, 0x2

_08312f98:	.4byte 0x0200CF9C

.incbin "base.gba", 0x312F9C, 0xBA

_08313056:
	add		r0, r3, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	add		r6, r0, #0x0
	add		r4, r3, #0x0
	add		r4, #0xc0
	cmp		r1, #0x0
	bgt		_0831306e
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_0831306e
	b		_083132a6
_0831306e:
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0xc
	bls		_08313076
	b		_0831329c
_08313076:
	lsl		r0, r0, #0x2
	ldr		r1, _08313080
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08313080:	.4byte 0x0200D084

.incbin "base.gba", 0x313084, 0x218

_0831329c:
	ldr		r0, [r6, #0x0]
	ldr		r1, [r4, #0x0]
	add		r0, r0, r1
	cmp		r0, #0x0
	bgt		_083132ac
_083132a6:
	mov		r0, #0x0
	str		r0, [r6, #0x0]
	str		r0, [r4, #0x0]
_083132ac:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3132B2, 0x3F2
	thumb_func_end sub_08312f2c

	thumb_func_start sub_083136a4
sub_083136a4:
	mov		r12, r0
	mov		r2, r12
	add		r2, #0xbc
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	bge		_083136b2
	neg		r1, r1
_083136b2:
	ldr		r0, _083136e0
	cmp		r1, r0
	bgt		_083136cc
	mov		r0, r12
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	beq		_083136e4
_083136cc:
	mov		r0, r12
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bge		_083136da
	add		r0, #0x7
_083136da:
	lsl		r0, r0, #0xd
	lsr		r1, r0, #0x10
	b		_08313742

_083136e0:	.4byte 0x006FFFFF

_083136e4:
	mov		r0, r12
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x4
	beq		_08313700
	mov		r0, r12
	add		r0, #0x88
	strh	r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_083136fc
	neg		r0, r0
_083136fc:
	asr		r2, r0, #0x14
	b		_08313702
_08313700:
	mov		r2, #0x8
_08313702:
	mov		r0, r12
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08313728
	ldr		r0, _08313724
	lsl		r1, r2, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	b		_08313742

.incbin "base.gba", 0x313722, 0x2

_08313724:	.4byte 0x0202C00C

_08313728:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08313740
	ldr		r1, _0831373c
	lsl		r0, r2, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	b		_08313742

_0831373c:	.4byte 0x0202C00C

_08313740:
	mov		r1, #0x0
_08313742:
	mov		r0, r12
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08313752
	lsl		r0, r1, #0x10
	neg		r0, r0
	lsr		r1, r0, #0x10
_08313752:
	mov		r2, r12
	add		r2, #0x7c
	ldrh	r0, [r2, #0x0]
	add		r0, r0, r1
	strh	r0, [r2, #0x0]
	mov		r1, r12
	add		r1, #0x80
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	mov		r3, r12
	add		r3, #0x7a
	strh	r0, [r3, #0x0]
	mov		r1, r12
	add		r1, #0x82
	ldrh	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	mov		r1, r12
	add		r1, #0x56
	strh	r0, [r1, #0x0]
	bx		lr
	thumb_func_end sub_083136a4

	thumb_func_start sub_0831377c
sub_0831377c:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08313794
	add		r1, r2, #0x0
	add		r1, #0x88
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_0831386e
_08313794:
	add		r0, r2, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x3
	and		r0, r1
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	cmp		r0, r4
	beq		_0831386e
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
	bls		_0831386e
	cmp		r1, #0xd
	beq		_0831386e
	add		r0, r2, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831380a
	add		r0, r2, #0x0
	add		r0, #0x88
	ldrh	r2, [r0, #0x0]
	mov		r4, #0x0
	ldrsh	r1, [r0, r4]
	add		r4, r0, #0x0
	cmp		r1, #0x0
	bgt		_08313802
	mov		r5, #0x0
	ldrsh	r0, [r4, r5]
	neg		r0, r0
	mov		r6, #0x0
	ldrsh	r1, [r3, r6]
	cmp		r0, r1
	blt		_083137fe
	ldrh	r0, [r3, #0x0]
	neg		r0, r0
	b		_08313806
_083137fe:
	ldrh	r0, [r3, #0x4]
	b		_08313804
_08313802:
	ldrh	r0, [r3, #0x2]
_08313804:
	sub		r0, r2, r0
_08313806:
	strh	r0, [r4, #0x0]
	b		_0831386e
_0831380a:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_08313844
	add		r1, r2, #0x0
	add		r1, #0x88
	ldrh	r5, [r1, #0x0]
	mov		r0, #0x0
	ldrsh	r2, [r1, r0]
	add		r4, r1, #0x0
	cmp		r2, #0x0
	blt		_0831383c
	ldrh	r1, [r3, #0x0]
	mov		r6, #0x0
	ldrsh	r0, [r3, r6]
	cmp		r2, r0
	blt		_08313836
	add		r0, r1, #0x0
	b		_08313806
_08313836:
	ldrh	r3, [r3, #0x4]
	add		r0, r5, r3
	b		_08313806
_0831383c:
	ldrh	r0, [r3, #0x2]
	add		r0, r5, r0
	strh	r0, [r1, #0x0]
	b		_0831386e
_08313844:
	add		r1, r2, #0x0
	add		r1, #0x88
	ldrh	r2, [r1, #0x0]
	mov		r5, #0x0
	ldrsh	r0, [r1, r5]
	cmp		r0, #0x0
	bge		_08313860
	ldrh	r0, [r3, #0x6]
	add		r0, r2, r0
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_0831386e
	b		_0831386c
_08313860:
	ldrh	r0, [r3, #0x6]
	sub		r0, r2, r0
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0831386e
_0831386c:
	strh	r4, [r1, #0x0]
_0831386e:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831377c

	thumb_func_start sub_08313874
sub_08313874:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r2, r4, #0x0
	add		r2, #0xb8
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	cmp		r0, #0x0
	bne		_08313888
	b		_08313a92
_08313888:
	sub		r0, r1, #0x1
	strh	r0, [r2, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x3b
	bne		_083138ac
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r3, _08313938
	add		r0, r3, #0x0
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	ldr		r1, _0831393c
	cmp		r0, r1
	bls		_083138ac
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
_083138ac:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	mov		r0, #0xa0
	lsl		r0, r0, #0x12
	add		r2, r4, #0x0
	add		r2, #0xb8
	cmp		r1, r0
	bgt		_083138c2
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
_083138c2:
	ldr		r3, [r4, #0x48]
	mov		r0, #0x20
	and		r3, r0
	cmp		r3, #0x0
	bne		_08313954
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r0, [r0, #0x0]
	mov		r1, #0x86
	lsl		r1, r1, #0x7
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	cmp		r1, r0
	bne		_08313954
	ldr		r0, _08313940
	strh	r3, [r2, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x7e
	mov		r1, #0xe
	strb	r1, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x82
	strh	r3, [r1, #0x0]
	ldr		r1, _08313944
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_083139e8
	mov		r2, #0x20
	ldrsh	r0, [r4, r2]
	mov		r3, #0x22
	ldrsh	r1, [r4, r3]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x5
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_0832517c
	ldr		r0, _08313948
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0831394c
	ldr		r1, _08313950
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	mov		r0, #0x40
	bl		sub_08325e94
	b		_083139e8

.incbin "base.gba", 0x313936, 0x2

_08313938:	.4byte 0x000012FF
_0831393c:	.4byte 0x25FE0000
_08313940:	.4byte 0x030031D0
_08313944:	.4byte 0x000007AC
_08313948:	.4byte 0x0202C43C
_0831394c:	.4byte 0x0202E890
_08313950:	.4byte 0x0202E8F0

_08313954:
	mov		r0, #0x0
	ldrsh	r5, [r2, r0]
	cmp		r5, #0x0
	beq		_083139ec
	cmp		r5, #0x37
	ble		_08313970
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_083139e6
_08313970:
	cmp		r5, #0x2f
	ble		_08313988
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r2, _08313984
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_083139e6

.incbin "base.gba", 0x313982, 0x2

_08313984:	.4byte 0xFFFFFA00

_08313988:
	cmp		r5, #0x27
	ble		_0831399c
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_083139e6
_0831399c:
	cmp		r5, #0x1f
	ble		_083139b4
	add		r1, r4, #0x0
	add		r1, #0x82
	ldr		r2, _083139b0
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_083139e6

.incbin "base.gba", 0x3139AE, 0x2

_083139b0:	.4byte 0xFFFFFA00

_083139b4:
	cmp		r5, #0x17
	ble		_083139c8
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r2, #0xc0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	b		_083139e6
_083139c8:
	cmp		r5, #0xf
	ble		_083139e8
	add		r1, r4, #0x0
	add		r1, #0x82
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp		r0, #0x0
	ble		_083139e4
	ldr		r3, _083139e0
	add		r0, r2, r3
	b		_083139e6

_083139e0:	.4byte 0xFFFFFA00

_083139e4:
	mov		r0, #0x0
_083139e6:
	strh	r0, [r1, #0x0]
_083139e8:
	mov		r0, #0x1
	b		_08313a94
_083139ec:
	add		r0, r4, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_08313a10
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_083178b8
	add		r2, r4, #0x0
	add		r2, #0x74
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08313a10:
	add		r0, r4, #0x0
	add		r0, #0x92
	strh	r5, [r0, #0x0]
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r0, _08313a9c
	ldr		r1, _08313aa0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08313a92
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08313a92
	mov		r6, #0x0
	mov		r5, #0x0
	ldr		r2, _08313aa4
	ldr		r3, _08313aa8
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r4, r3, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08313a5a
	ldr		r1, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r1, r0
	bne		_08313a5a
	mov		r5, #0x1
_08313a5a:
	cmp		r5, #0x0
	beq		_08313a88
	mov		r4, #0x0
	mov		r1, #0xcc
	lsl		r1, r1, #0x1
	add		r3, r3, r1
	ldrh	r0, [r3, #0x4]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_08313a82
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08313a82
	mov		r4, #0x1
_08313a82:
	cmp		r4, #0x0
	bne		_08313a88
	mov		r6, #0x1
_08313a88:
	cmp		r6, #0x0
	bne		_08313a92
	mov		r0, #0x33
	bl		sub_08325e94
_08313a92:
	mov		r0, #0x0
_08313a94:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x313A9A, 0x2

_08313a9c:	.4byte 0x030031D0
_08313aa0:	.4byte 0x000007AC
_08313aa4:	.4byte 0x0202E890
_08313aa8:	.4byte 0x0202E8F0
	thumb_func_end sub_08313874

	thumb_func_start sub_08313aac
sub_08313aac:
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
	bne		_08313ace
	ldr		r0, _08313ae8
	and		r0, r1
	strh	r0, [r2, #0x0]
_08313ace:
	add		r0, r5, #0x0
	add		r0, #0x7e
	ldrb	r1, [r0, #0x0]
	mov		r8, r0
	cmp		r1, #0xf
	bls		_08313ade
	bl		sub_08314300
_08313ade:
	lsl		r0, r1, #0x2
	ldr		r1, _08313aec
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08313ae8:	.4byte 0x0000FFD3
_08313aec:	.4byte 0x0200DAF0

.incbin "base.gba", 0x313AF0, 0x810
	thumb_func_end sub_08313aac

	thumb_func_start sub_08314300
sub_08314300:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08314300

	thumb_func_start sub_0831430c
sub_0831430c:
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
	ldr		r7, _08314344
	cmp		r2, #0x0
	beq		_0831435e
	lsl		r0, r6, #0x4
	add		r0, r0, r7
	ldrh	r0, [r0, #0xc]
	add		r1, r0, #0x0
	cmp		r2, #0x0
	ble		_08314348
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	sub		r0, r5, r0
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0831435e
	b		_0831435a

.incbin "base.gba", 0x314342, 0x2

_08314344:	.4byte 0x0202BCE4

_08314348:
	cmp		r2, #0x0
	bge		_0831435e
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r5
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	ble		_0831435e
_0831435a:
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_0831435e:
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
	ble		_0831438c
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	sub		r0, r3, r0
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	asr		r0, r0, #0x10
	mvn		r0, r0
	lsr		r5, r0, #0x1f
	b		_083143a2
_0831438c:
	cmp		r2, #0x0
	bge		_083143a2
	mov		r1, r12
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	add		r0, r0, r3
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	cmp		r0, #0x0
	bgt		_083143a2
	mov		r5, #0x1
_083143a2:
	cmp		r5, #0x0
	beq		_083143ac
	mov		r2, r8
	strh	r7, [r2, #0x0]
	b		_08314482
_083143ac:
	ldr		r3, _08314454
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
	beq		_0831447c
	add		r1, r4, #0x0
	add		r1, #0xbc
	add		r0, r4, #0x0
	add		r0, #0xa8
	ldr		r0, [r0, #0x0]
	ldr		r6, _08314458
	add		r0, r0, r6
	ldr		r1, [r1, #0x0]
	cmp		r1, r0
	blt		_08314460
	add		r0, r4, #0x0
	add		r0, #0x84
	ldrb	r1, [r0, #0x0]
	add		r6, r0, #0x0
	cmp		r1, #0x8
	beq		_08314460
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08314482
	ldr		r2, _0831445c
	add		r0, r3, r2
	ldr		r0, [r0, #0x0]
	cmp		r0, r4
	bne		_0831440a
	mov		r0, #0x20
	and		r1, r0
	cmp		r1, #0x0
	bne		_0831440a
	mov		r0, #0x43
	bl		sub_08325e94
_0831440a:
	add		r0, r4, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_08314436
	mov		r3, #0xf1
	lsl		r3, r3, #0x3
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08314436
	mov		r1, #0x20
	ldrsh	r0, [r4, r1]
	mov		r2, #0x22
	ldrsh	r1, [r4, r2]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x1
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_08324bb0
_08314436:
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
	b		_0831446c

.incbin "base.gba", 0x314452, 0x2

_08314454:	.4byte 0x030031D0
_08314458:	.4byte 0xFF800000
_0831445c:	.4byte 0x000007AC

_08314460:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08314482
_0831446c:
	ldrh	r1, [r5, #0x0]
	ldr		r0, _08314478
	and		r0, r1
	strh	r0, [r5, #0x0]
	b		_08314482

.incbin "base.gba", 0x314476, 0x2

_08314478:	.4byte 0x0000FFBF

_0831447c:
	add		r0, r4, #0x0
	add		r0, #0x7e
	strb	r1, [r0, #0x0]
_08314482:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831430c

	thumb_func_start sub_0831448c
sub_0831448c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _083144d4
	lsl		r1, r1, #0x4
	add		r1, r1, r0
	ldrh	r4, [r1, #0xc]
	ldrh	r7, [r1, #0xe]
	add		r5, r6, #0x0
	add		r5, #0x82
	mov		r1, #0x0
	ldrsh	r0, [r5, r1]
	cmp		r0, #0x0
	ble		_083144be
	add		r0, r6, #0x0
	bl		sub_08314524
	mov		r2, #0x0
	ldrsh	r1, [r5, r2]
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	cmp		r1, r0
	ble		_083144be
	lsl		r0, r4, #0x10
	neg		r0, r0
	lsr		r4, r0, #0x10
_083144be:
	add		r1, r6, #0x0
	add		r1, #0x82
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	ldrh	r2, [r1, #0x0]
	add		r0, r0, r2
	strh	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3144D2, 0x2

_083144d4:	.4byte 0x0202BCE4
	thumb_func_end sub_0831448c

	thumb_func_start sub_083144d8
sub_083144d8:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _08314520
	lsl		r1, r1, #0x4
	add		r1, r1, r0
	ldrh	r4, [r1, #0xc]
	ldrh	r7, [r1, #0xe]
	add		r5, r6, #0x0
	add		r5, #0x82
	mov		r1, #0x0
	ldrsh	r0, [r5, r1]
	cmp		r0, #0x0
	bge		_0831450c
	add		r0, r6, #0x0
	bl		sub_08314524
	mov		r0, #0x0
	ldrsh	r1, [r5, r0]
	neg		r1, r1
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	cmp		r1, r0
	ble		_0831450c
	lsl		r0, r4, #0x10
	neg		r0, r0
	lsr		r4, r0, #0x10
_0831450c:
	add		r2, r6, #0x0
	add		r2, #0x82
	ldrh	r1, [r2, #0x0]
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	sub		r1, r1, r0
	strh	r1, [r2, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08314520:	.4byte 0x0202BCE4
	thumb_func_end sub_083144d8

	thumb_func_start sub_08314524
sub_08314524:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r4, #0xb4
	ldrh	r2, [r4, #0x0]
	mov		r1, #0x25
	neg		r1, r1
	and		r2, r1
	add		r0, #0x82
	ldrh	r3, [r0, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x4
	add		r0, r3, r1
	lsl		r0, r0, #0x10
	ldr		r1, _08314564
	cmp		r0, r1
	bls		_08314548
	mov		r0, #0x4
	orr		r2, r0
_08314548:
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r0, r3, r1
	lsl		r0, r0, #0x10
	ldr		r1, _08314568
	cmp		r0, r1
	bls		_0831455a
	mov		r0, #0x20
	orr		r2, r0
_0831455a:
	strh	r2, [r4, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x314562, 0x2

_08314564:	.4byte 0x17FF0000
_08314568:	.4byte 0x2FFF0000
	thumb_func_end sub_08314524

	thumb_func_start sub_0831456c
sub_0831456c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, _083145d4
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r0, r6, #0x0
	add		r0, #0x90
	ldrb	r5, [r0, #0x0]
	ldrb	r1, [r0, #0x0]
	ldrh	r0, [r7, #0x14]
	sub		r0, #0x1
	cmp		r1, r0
	bne		_08314588
	sub		r5, #0x1
_08314588:
	lsl		r5, r5, #0x18
	lsr		r5, r5, #0x18
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_08311824
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x0
	bl		sub_08311858
	add		r5, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0xd
	lsl		r5, r5, #0x10
	asr		r5, r5, #0xd
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	mov		r3, #0x0
	bl		sub_08310f34
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

.incbin "base.gba", 0x3145D2, 0x2

_083145d4:	.4byte 0x030031D0
	thumb_func_end sub_0831456c

	thumb_func_start sub_083145d8
sub_083145d8:
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
	beq		_08314624
	lsl		r0, r1, #0x10
	cmp		r0, #0x0
	ble		_0831460c
	ldr		r0, _08314604
	cmp		r1, r0
	bls		_08314620
	ldr		r1, _08314608
	b		_08314616

_08314604:	.4byte 0x000001FF
_08314608:	.4byte 0xFFFFFEC0

_0831460c:
	ldr		r0, _0831461c
	cmp		r5, r0
	bhi		_08314620
	mov		r1, #0xa0
	lsl		r1, r1, #0x1
_08314616:
	add		r0, r4, r1
	strh	r0, [r2, #0x0]
	b		_08314622

_0831461c:	.4byte 0x0000FDFF

_08314620:
	strh	r3, [r2, #0x0]
_08314622:
	mov		r6, #0x1
_08314624:
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
	bne		_08314640
	mov		r0, #0x1
_08314640:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x314646, 0x142
	thumb_func_end sub_083145d8

	thumb_func_start sub_08314788
sub_08314788:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r1, r4, #0x0
	add		r1, #0x86
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x9
	bls		_083147b4
	add		r2, r4, #0x0
	add		r2, #0xbc
	ldr		r0, _0831480c
	ldrb	r1, [r1, #0x0]
	sub		r1, #0xa
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	ldr		r1, [r2, #0x0]
	cmp		r1, r0
	blt		_083147b4
	ldr		r3, _08314810
	add		r0, r1, r3
	str		r0, [r2, #0x0]
_083147b4:
	ldr		r0, _08314814
	ldr		r1, _08314818
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_083147de
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_083147de
	mov		r0, #0x20
	bl		sub_08325e94
	mov		r3, #0xcd
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_083147de:
	add		r1, r4, #0x0
	add		r1, #0x52
	mov		r0, #0xe0
	strh	r0, [r1, #0x0]
	add		r1, #0x26
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x48]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0831480c:	.4byte 0x0202BE68
_08314810:	.4byte 0xFFC00000
_08314814:	.4byte 0x030031D0
_08314818:	.4byte 0x000007AC
	thumb_func_end sub_08314788

	thumb_func_start sub_0831481c
sub_0831481c:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r2, r3, #0x0
	add		r2, #0xbc
	ldr		r1, [r2, #0x0]
	ldr		r0, _08314860
	cmp		r1, r0
	bgt		_08314830
	add		r0, #0x1
	str		r0, [r2, #0x0]
_08314830:
	add		r1, r3, #0x0
	add		r1, #0x52
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	add		r1, #0x26
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	add		r2, r3, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x8
	add		r0, r4, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, [r3, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r3, #0x48]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08314860:	.4byte 0x00FFFFFF
	thumb_func_end sub_0831481c

	thumb_func_start sub_08314864
sub_08314864:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	ldr		r0, _08314890
	add		r7, r0, #0x0
	add		r7, #0x24
	mov		r9, r7
	add		r0, r5, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x9
	bls		_08314884
	bl		sub_083152e4
_08314884:
	lsl		r0, r0, #0x2
	ldr		r1, _08314894
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x31488E, 0x2

_08314890:	.4byte 0x030031D0
_08314894:	.4byte 0x0200E898

.incbin "base.gba", 0x314898, 0xA4C
	thumb_func_end sub_08314864

	thumb_func_start sub_083152e4
sub_083152e4:
	add		r0, r5, #0x0
	bl		sub_08312f0c
	add		r0, r5, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	ldr		r0, [r5, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
	str		r0, [r5, #0x48]
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083152e4

	thumb_func_start sub_0831530c
sub_0831530c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	ldr		r0, _08315350
	mov		r12, r0
	mov		r1, #0x24
	add		r1, r12
	mov		r9, r1
	add		r7, r4, #0x0
	add		r7, #0xb4
	ldrh	r6, [r7, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	mov		r8, r2
	mov		r0, r8
	and		r0, r6
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x0
	beq		_08315354
	add		r1, r4, #0x0
	add		r1, #0x7e
	mov		r2, #0x0
	mov		r0, #0xd
	strb	r0, [r1, #0x0]
	add		r1, #0x6
	mov		r0, #0xa
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x88
	strh	r2, [r0, #0x0]
	b		_08315602

_08315350:	.4byte 0x030031D0

_08315354:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r6
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0x0
	beq		_08315398
	add		r0, r4, #0x0
	add		r0, #0x82
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	mov		r1, #0x8
	cmp		r0, #0x0
	bge		_08315372
	mov		r1, #0x7
_08315372:
	add		r0, r4, #0x0
	add		r0, #0x7e
	strb	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	ldrh	r1, [r7, #0x0]
	ldr		r0, _08315394
	and		r0, r1
	strh	r0, [r7, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x88
	strh	r2, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xb8
	mov		r0, #0x3c
	strh	r0, [r1, #0x0]
	b		_08315602

_08315394:	.4byte 0x0000E7FF

_08315398:
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r0, r6
	cmp		r0, #0x0
	beq		_083153ec
	add		r1, r4, #0x0
	add		r1, #0xbc
	ldr		r0, [r1, #0x0]
	mov		r2, #0xe0
	lsl		r2, r2, #0x12
	cmp		r0, r2
	ble		_083153b2
	str		r2, [r1, #0x0]
_083153b2:
	add		r0, r4, #0x0
	add		r0, #0x84
	strb	r3, [r0, #0x0]
	add		r0, #0x44
	mov		r2, #0x3c
	strh	r2, [r0, #0x0]
	sub		r0, #0x46
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mov		r1, #0x6
	cmp		r0, #0x0
	bge		_083153cc
	mov		r1, #0x5
_083153cc:
	add		r0, r4, #0x0
	add		r0, #0x7e
	strb	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r3, [r0, #0x0]
	add		r0, #0x8
	strh	r3, [r0, #0x0]
	add		r0, #0x30
	strh	r2, [r0, #0x0]
	ldrh	r1, [r7, #0x0]
	ldr		r0, _083153e8
	and		r0, r1
	strh	r0, [r7, #0x0]
	b		_08315602

_083153e8:	.4byte 0x0000E7FF

_083153ec:
	add		r1, r4, #0x0
	add		r1, #0xb2
	ldrh	r2, [r1, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r0, r2
	add		r5, r1, #0x0
	cmp		r0, #0x0
	beq		_08315470
	ldr		r1, _08315464
	add		r3, r4, #0x0
	add		r3, #0x7e
	ldrb	r0, [r3, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	cmp		r2, #0x0
	beq		_08315414
	b		_08315602
_08315414:
	add		r1, r4, #0x0
	add		r1, #0xcc
	mov		r0, #0x32
	strh	r0, [r1, #0x0]
	mov		r0, #0xe
	strb	r0, [r3, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x80
	strh	r2, [r0, #0x0]
	ldrh	r1, [r5, #0x0]
	ldr		r0, _08315468
	and		r0, r1
	strh	r0, [r5, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	beq		_08315458
	ldr		r0, _0831546c
	add		r0, r12
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08315458
	mov		r2, #0x20
	ldrsh	r0, [r4, r2]
	mov		r3, #0x22
	ldrsh	r1, [r4, r3]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x1
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_08324b68
_08315458:
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r9
	ldr		r0, [r0, #0x0]
	b		_083154d2

.incbin "base.gba", 0x315462, 0x2

_08315464:	.4byte 0x0202BE80
_08315468:	.4byte 0x00007FFF
_0831546c:	.4byte 0x000007AC

_08315470:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r2
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	beq		_0831549c
	mov		r0, #0x2
	orr		r0, r6
	strh	r0, [r7, #0x0]
	ldrh	r1, [r5, #0x0]
	ldr		r0, _08315498
	and		r0, r1
	strh	r0, [r5, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x84
	mov		r0, #0x9
	strb	r0, [r1, #0x0]
	b		_08315602

.incbin "base.gba", 0x315496, 0x2

_08315498:	.4byte 0x0000DFFF

_0831549c:
	mov		r6, #0x1
	add		r0, r6, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_08315518
	strh	r1, [r5, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xcc
	mov		r1, #0x18
	strh	r1, [r0, #0x0]
	ldr		r5, _08315510
	add		r5, r12
	ldr		r0, [r5, #0x0]
	cmp		r4, r0
	bne		_083154d0
	mov		r1, #0x20
	ldrsh	r0, [r4, r1]
	mov		r2, #0x22
	ldrsh	r1, [r4, r2]
	mov		r3, #0x24
	ldrsh	r2, [r4, r3]
	sub		r2, #0x1
	lsl		r2, r2, #0x10
	asr		r2, r2, #0x10
	bl		sub_08324b68
_083154d0:
	ldr		r0, [r5, #0x0]
_083154d2:
	cmp		r0, r4
	bne		_083154e6
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_083154e6
	mov		r0, #0x26
	bl		sub_08325e94
_083154e6:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x84
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08315506
	b		_08315602
_08315506:
	ldr		r0, _08315514
	and		r0, r1
	strh	r0, [r2, #0x0]
	b		_08315602

.incbin "base.gba", 0x31550E, 0x2

_08315510:	.4byte 0x000007AC
_08315514:	.4byte 0x0000FFDE

_08315518:
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r2
	cmp		r0, #0x0
	beq		_0831558c
	ldr		r0, _08315558
	and		r0, r2
	strh	r0, [r5, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x52
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	str		r2, [r4, #0x8]
	add		r1, #0x2c
	mov		r0, #0xc
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, r8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08315566
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831555c
	strh	r3, [r7, #0x0]
	b		_08315574

_08315558:	.4byte 0x0000BFFF

_0831555c:
	mov		r1, r12
	ldr		r0, [r1, #0x10]
	and		r0, r6
	cmp		r0, #0x0
	beq		_0831556e
_08315566:
	mov		r0, #0xa0
	lsl		r0, r0, #0x8
	strh	r0, [r7, #0x0]
	b		_08315574
_0831556e:
	add		r0, r4, #0x0
	add		r0, #0xb4
	strh	r3, [r0, #0x0]
_08315574:
	add		r0, r4, #0x0
	add		r0, #0x84
	mov		r1, #0x1
	strb	r1, [r0, #0x0]
	sub		r0, #0xc
	strb	r1, [r0, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x48]
	b		_08315602
_0831558c:
	mov		r3, #0x80
	add		r0, r3, #0x0
	and		r0, r2
	cmp		r0, #0x0
	beq		_083155a8
	ldr		r0, _083155a4
	and		r0, r2
	strh	r0, [r5, #0x0]
	add		r0, r4, #0x0
	bl		sub_0831481c
	b		_08315602

_083155a4:	.4byte 0x0000FF7F

_083155a8:
	ldr		r1, [r4, #0x48]
	add		r0, r1, #0x0
	and		r0, r3
	cmp		r0, #0x0
	bne		_083155d6
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r2, [r0, #0x0]
	mov		r0, #0x24
	and		r0, r2
	cmp		r0, #0x4
	beq		_083155c8
	mov		r0, #0x18
	and		r0, r2
	cmp		r0, #0x8
	bne		_083155d0
_083155c8:
	add		r0, r4, #0x0
	bl		sub_08314788
	b		_083155d6
_083155d0:
	ldr		r0, _08315610
	and		r1, r0
	str		r1, [r4, #0x48]
_083155d6:
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08315602
	ldr		r0, _08315614
	and		r0, r1
	strh	r0, [r5, #0x0]
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08315602
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08315602
	mov		r0, #0x34
	bl		sub_08325e94
_08315602:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31560E, 0x2

_08315610:	.4byte 0xFFFFF7FF
_08315614:	.4byte 0x0000FFFD
	thumb_func_end sub_0831530c

	thumb_func_start sub_08315618
sub_08315618:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r0, [r6, #0x48]
	ldr		r1, _08315654
	and		r0, r1
	str		r0, [r6, #0x48]
	add		r4, r6, #0x0
	add		r4, #0x4e
	mov		r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp		r0, #0x0
	bne		_08315658
	add		r0, r6, #0x0
	add		r0, #0x50
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	add		r7, r0, #0x0
	cmp		r2, #0x0
	bne		_08315658
	add		r0, #0x2c
	ldrh	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x7a
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x80
	strh	r2, [r0, #0x0]
	add		r5, r6, #0x0
	add		r5, #0xbc
	b		_08315698

_08315654:	.4byte 0xffffefff

_08315658:
	add		r4, r6, #0x0
	add		r4, #0x4e
	add		r5, r6, #0x0
	add		r5, #0x50
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	mov		r2, #0x0
	ldrsh	r1, [r5, r2]
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	add		r7, r5, #0x0
	add		r2, r6, #0x0
	add		r2, #0x7c
	add		r5, r0, #0x0
	cmp		r1, #0x0
	blt		_083156be
	ldrh	r0, [r2, #0x0]
	sub		r0, r3, r0
	add		r1, r6, #0x0
	add		r1, #0x80
	strh	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x84
	mov		r1, #0xb
	strb	r1, [r0, #0x0]
	sub		r0, #0x6
	strb	r1, [r0, #0x0]
_08315698:
	add		r1, r6, #0x0
	add		r1, #0x92
	ldrh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x11
	strh	r0, [r1, #0x0]
	cmp		r0, #0xff
	bgt		_083156ae
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
_083156ae:
	mov		r1, #0x0
	ldrsh	r0, [r4, r1]
	mov		r2, #0x0
	ldrsh	r1, [r7, r2]
	bl		sub_0830e7ac
	lsl		r0, r0, #0x10
	str		r0, [r5, #0x0]
_083156be:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08315618

	thumb_func_start sub_083156c4
sub_083156c4:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, [r4, #0x48]
	ldr		r1, _08315718
	and		r0, r1
	str		r0, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0x4e
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	cmp		r0, #0x0
	bne		_083156e8
	add		r0, r4, #0x0
	add		r0, #0x50
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08315712
_083156e8:
	add		r1, r4, #0x0
	add		r1, #0x50
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	mov		r2, #0x0
	ldrsh	r1, [r1, r2]
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	add		r2, r4, #0x0
	add		r2, #0x82
	strh	r0, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x84
	mov		r0, #0xb
	strb	r0, [r1, #0x0]
_08315712:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08315718:	.4byte 0xffffefff
	thumb_func_end sub_083156c4

	thumb_func_start sub_0831571c
sub_0831571c:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	add		r4, r3, #0x0
	add		r4, #0xb4
	ldrh	r7, [r4, #0x0]
	mov		r0, #0x1
	and		r0, r7
	cmp		r0, #0x0
	beq		_08315788
	add		r0, r3, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	mov		r6, #0x40
	neg		r6, r6
	cmp		r0, #0x0
	beq		_08315744
	add		r6, #0x30
_08315744:
	add		r2, r3, #0x0
	add		r2, #0x92
	ldrh	r5, [r2, #0x0]
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	ldr		r0, _08315764
	cmp		r1, r0
	ble		_08315768
	add		r0, r5, r6
	strh	r0, [r2, #0x0]
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x20
	orr		r0, r1
	strh	r0, [r4, #0x0]
	b		_08315788

.incbin "base.gba", 0x315762, 0x2

_08315764:	.4byte 0x000001FF

_08315768:
	ldr		r0, _08315790
	and		r0, r7
	strh	r0, [r4, #0x0]
	add		r2, r3, #0x0
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08315794
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r3, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_08315788:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31578E, 0x2

_08315790:	.4byte 0x0000FFDE
_08315794:	.4byte 0x0000FFFD
	thumb_func_end sub_0831571c

	thumb_func_start sub_08315798
sub_08315798:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r0, r6, #0x0
	bl		sub_08311a24
	cmp		r0, #0x0
	bne		_08315890
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_083157b6
	cmp		r0, #0x7
	bne		_08315890
_083157b6:
	ldr		r0, _08315834
	add		r1, r4, #0x0
	add		r1, #0x7e
	ldrb	r1, [r1, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08315890
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08316514
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08316514
	add		r1, r4, #0x0
	add		r1, #0x7a
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	lsl		r0, r5, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_083157fa
	neg		r0, r0
_083157fa:
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08315808
	neg		r0, r0
_08315808:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0xb0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	bne		_0831583c
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_08315890
	ldr		r0, _08315838
	and		r1, r0
	str		r1, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x4
	b		_0831588a

_08315834:	.4byte 0x0202BE80
_08315838:	.4byte 0xfffffbff

_0831583c:
	ldr		r2, [r4, #0x48]
	mov		r6, #0x80
	lsl		r6, r6, #0x3
	add		r0, r2, #0x0
	and		r0, r6
	cmp		r0, #0x0
	beq		_0831586c
	lsl		r1, r5, #0x10
	ldr		r0, _08315864
	cmp		r1, r0
	bgt		_08315890
	ldr		r0, _08315868
	and		r2, r0
	str		r2, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x4
	b		_0831588a

_08315864:	.4byte 0x2FFF0000
_08315868:	.4byte 0xfffffbff

_0831586c:
	lsl		r1, r5, #0x10
	ldr		r0, _08315898
	cmp		r1, r0
	ble		_08315890
	lsl		r1, r3, #0x10
	ldr		r0, _0831589c
	cmp		r1, r0
	ble		_08315890
	orr		r2, r6
	str		r2, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
_0831588a:
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08315890:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x315896, 0x2

_08315898:	.4byte 0x67FF0000
_0831589c:	.4byte 0x57FF0000
	thumb_func_end sub_08315798

	thumb_func_start sub_083158a0
sub_083158a0:
	add		r2, r0, #0x0
	add		r0, #0x60
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_083158d8
	ldrh	r0, [r2, #0x38]
	cmp		r0, #0x0
	beq		_083158bc
	sub		r0, #0x1
	strh	r0, [r2, #0x38]
	b		_083158d8
_083158bc:
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_083158d4
	ldr		r0, [r2, #0x48]
	ldr		r1, _083158d0
	and		r0, r1
	b		_083158e0

.incbin "base.gba", 0x3158CE, 0x2

_083158d0:	.4byte 0xffffbfff

_083158d4:
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
_083158d8:
	ldr		r0, [r2, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
_083158e0:
	str		r0, [r2, #0x48]
	bx		lr
	thumb_func_end sub_083158a0

	thumb_func_start sub_083158e4
sub_083158e4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	cmp		r2, #0x7
	bhi		_083159c2
	lsl		r0, r2, #0x2
	ldr		r1, _08315900
	add		r1, r0, r1
	ldr		r1, [r1, #0x0]
	mov		r9, r0
	mov		pc, r1

_08315900:	.4byte 0x0200F904

.incbin "base.gba", 0x315904, 0xBE

_083159c2:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _083159d8
	strh	r0, [r1, #0x0]
	mov		r0, #0x1
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_083159d8:	.4byte 0x0000C007
	thumb_func_end sub_083158e4

	thumb_func_start sub_083159dc
sub_083159dc:
	push	{ lr }
	add		r3, r0, #0x0
	cmp		r2, #0x1
	beq		_08315a0a
	cmp		r2, #0x1
	bgt		_083159ee
	cmp		r2, #0x0
	beq		_083159f6
	b		_08315a14
_083159ee:
	cmp		r2, #0x2
	beq		_08315a00
	cmp		r2, #0x3
	bne		_08315a14
_083159f6:
	add		r2, r3, #0x0
	add		r2, #0x4e
	ldrh	r0, [r2, #0x0]
	neg		r0, r0
	strh	r0, [r2, #0x0]
_08315a00:
	add		r0, r3, #0x0
	mov		r2, #0x2
	bl		sub_083158e4
	b		_08315a16
_08315a0a:
	add		r0, r3, #0x0
	mov		r2, #0x0
	bl		sub_083158e4
	b		_08315a16
_08315a14:
	mov		r0, #0x1
_08315a16:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x315A1A, 0x2
	thumb_func_end sub_083159dc

	thumb_func_start sub_08315a1c
sub_08315a1c:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldr		r0, _08315a5c
	add		r5, r0, #0x0
	add		r5, #0x24
	ldr		r1, [r2, #0x0]
	cmp		r1, #0x0
	bge		_08315a30
	ldr		r0, _08315a60
	add		r1, r1, r0
_08315a30:
	asr		r6, r1, #0x10
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	bge		_08315a3c
	ldr		r1, _08315a60
	add		r0, r0, r1
_08315a3c:
	asr		r4, r0, #0x10
	add		r0, r5, #0x0
	bl		sub_08311948
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x8
	beq		_08315a64
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x0
	bl		sub_083119bc
	b		_08315a70

.incbin "base.gba", 0x315A5A, 0x2

_08315a5c:	.4byte 0x030031D0
_08315a60:	.4byte 0x0000FFFF

_08315a64:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	mov		r3, #0x8
	bl		sub_083119bc
_08315a70:
	ldr		r0, _08315a84
	ldr		r1, _08315a88
	add		r0, r0, r1
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x1
	orr		r1, r2
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08315a84:	.4byte 0x030031D0
_08315a88:	.4byte 0x00000B86
	thumb_func_end sub_08315a1c

	thumb_func_start sub_08315a8c
sub_08315a8c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	add		r0, #0x85
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8f
	bhi		_08315b64
	cmp		r0, #0x81
	bls		_08315b64
	cmp		r0, #0x84
	beq		_08315aac
	add		r0, r7, #0x0
	bl		sub_08315a1c
	b		_08315b64
_08315aac:
	add		r0, r7, #0x0
	bl		sub_08315a1c
	ldr		r0, _08315b50
	add		r1, r7, #0x0
	add		r1, #0xbc
	ldr		r4, [r1, #0x0]
	ldr		r1, _08315b54
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_08315b40
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08315b40
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08315ad6
	neg		r0, r4
_08315ad6:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08315b58
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r1, r4, #0x0
	cmp		r1, #0x0
	bge		_08315aea
	neg		r1, r1
_08315aea:
	asr		r4, r1, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0x2b
	bl		sub_08325e94
	ldr		r0, _08315b5c
	mov		r8, r0
	ldr		r5, _08315b60
	mov		r1, #0xac
	lsl		r1, r1, #0x1
	add		r5, r5, r1
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_08326df4
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326e5c
_08315b40:
	add		r0, r7, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08315b64
	mov		r0, #0x0
	b		_08315b66

_08315b50:	.4byte 0x030031D0
_08315b54:	.4byte 0x000007AC
_08315b58:	.4byte 0xFFFFFE00
_08315b5c:	.4byte 0x0202E890
_08315b60:	.4byte 0x0202E8F0

_08315b64:
	mov		r0, #0x1
_08315b66:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08315a8c

	thumb_func_start sub_08315b70
sub_08315b70:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	mov		r10, r1
	ldr		r1, [r7, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08315b8c
	mov		r2, #0x1
_08315b8c:
	cmp		r2, #0x0
	beq		_08315b92
	b		_08315de2
_08315b92:
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_0831196c
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08315bba
	ldr		r0, [r7, #0x48]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r7, #0x48]
	mov		r0, r10
	mov		r1, #0x0
	bl		sub_08310f24
	add		r1, r7, #0x0
	add		r1, #0x85
	b		_08315de8
_08315bba:
	ldr		r0, [r7, #0x0]
	cmp		r0, #0x0
	bge		_08315bc4
	ldr		r1, _08315c64
	add		r0, r0, r1
_08315bc4:
	lsr		r1, r0, #0x10
	ldr		r2, [r7, #0x4]
	cmp		r2, #0x0
	bge		_08315bd0
	ldr		r0, _08315c64
	add		r2, r2, r0
_08315bd0:
	asr		r2, r2, #0x10
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08315bda
	add		r0, r2, #0x7
_08315bda:
	asr		r0, r0, #0x3
	lsl		r3, r0, #0x8
	lsl		r0, r1, #0x10
	asr		r1, r0, #0x10
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08315bea
	add		r0, r1, #0x7
_08315bea:
	asr		r0, r0, #0x3
	add		r3, r3, r0
	mov		r9, r3
	mov		r0, r10
	mov		r3, #0x0
	bl		sub_08311014
	add		r5, r7, #0x0
	add		r5, #0x85
	strb	r0, [r5, #0x0]
	mov		r1, #0x90
	and		r1, r0
	cmp		r1, #0x80
	beq		_08315c08
	b		_08315dce
_08315c08:
	add		r0, r7, #0x0
	bl		sub_08315a8c
	cmp		r0, #0x0
	bne		_08315c14
	b		_08315dea
_08315c14:
	add		r0, r7, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_08315c68
	add		r2, r7, #0x0
	add		r2, #0x4e
	ldrh	r3, [r2, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	add		r1, r7, #0x0
	add		r1, #0x50
	cmp		r0, #0x0
	bne		_08315c3e
	mov		r4, #0x0
	ldrsh	r0, [r1, r4]
	cmp		r0, #0x0
	beq		_08315c58
_08315c3e:
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
	bl		sub_08317f6c
_08315c58:
	add		r1, r7, #0x0
	add		r1, #0x60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_08315dec

.incbin "base.gba", 0x315C62, 0x2

_08315c64:	.4byte 0x0000FFFF

_08315c68:
	add		r1, r7, #0x0
	add		r1, #0x62
	mov		r0, #0x8
	strh	r0, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x9c
	strh	r4, [r0, #0x0]
	add		r2, r7, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08315c9c
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r4, _08315ca0
	add		r4, #0x24
	mov		r0, r10
	bl		sub_08311948
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	mov		r8, r4
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x84
	bne		_08315ca4
	mov		r3, #0x2b
	b		_08315cb2

_08315c9c:	.4byte 0x0000FFBF
_08315ca0:	.4byte 0x030031D0

_08315ca4:
	cmp		r1, #0x0
	beq		_08315cac
	cmp		r1, #0xc
	bne		_08315cb0
_08315cac:
	mov		r3, #0x3c
	b		_08315cb2
_08315cb0:
	mov		r3, #0x3b
_08315cb2:
	lsl		r3, r3, #0x10
	mov		r5, #0x0
	ldr		r2, _08315d94
	ldr		r1, _08315d98
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
	beq		_08315cda
	ldr		r1, [r1, #0x0]
	ldr		r0, [r6, #0x0]
	cmp		r1, r0
	bne		_08315cda
	mov		r5, #0x1
_08315cda:
	cmp		r5, #0x0
	bne		_08315d6c
	lsr		r5, r3, #0x10
	add		r0, r7, #0x0
	add		r0, #0xbc
	ldr		r4, [r0, #0x0]
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_08315d6c
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08315d6c
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08315d04
	neg		r0, r4
_08315d04:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08315d9c
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r4, #0x0
	cmp		r0, #0x0
	bge		_08315d18
	neg		r0, r0
_08315d18:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	add		r0, r5, #0x0
	bl		sub_08325e94
	ldr		r2, _08315d94
	mov		r8, r2
	ldr		r0, _08315d98
	lsl		r5, r5, #0x3
	add		r5, r5, r0
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_08326df4
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326e5c
_08315d6c:
	add		r1, r7, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	mov		r4, r9
	sub		r0, r4, r0
	strh	r4, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08315da4
	neg		r0, r0
	lsl		r0, r0, #0x10
	ldr		r1, _08315da0
	add		r0, r0, r1
	lsr		r2, r0, #0x10
	cmp		r0, #0x0
	bge		_08315db6
	mov		r2, #0x4
	b		_08315db6

.incbin "base.gba", 0x315D92, 0x2

_08315d94:	.4byte 0x0202E890
_08315d98:	.4byte 0x0202E8F0
_08315d9c:	.4byte 0xFFFFFE00
_08315da0:	.4byte 0xFF060000

_08315da4:
	sub		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08315db6
	sub		r0, #0xfd
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08315db6:
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x10
	cmp		r0, #0x7
	bls		_08315dc2
	mov		r0, #0x1
	b		_08315dec
_08315dc2:
	asr		r2, r2, #0x10
	add		r0, r7, #0x0
	mov		r1, r10
	bl		sub_083158e4
	b		_08315dec
_08315dce:
	ldr		r0, [r7, #0x48]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x48]
	add		r0, r7, #0x0
	add		r0, #0x5e
	mov		r2, r9
	strh	r2, [r0, #0x0]
	b		_08315dea
_08315de2:
	add		r1, r7, #0x0
	add		r1, #0x85
	mov		r0, #0x40
_08315de8:
	strb	r0, [r1, #0x0]
_08315dea:
	mov		r0, #0x0
_08315dec:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x315DFA, 0x2
	thumb_func_end sub_08315b70

	thumb_func_start sub_08315dfc
sub_08315dfc:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r4, r5, #0x0
	add		r4, #0x60
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08315e14
	b		_08315f4c
_08315e14:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08315b70
	cmp		r0, #0x0
	beq		_08315e4e
	ldrh	r2, [r4, #0x0]
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r0, r2
	strh	r0, [r4, #0x0]
	add		r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x18
	ldrh	r1, [r4, #0x0]
	cmp		r2, #0x7
	bhi		_08315e3e
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	b		_08315e42
_08315e3e:
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
_08315e42:
	orr		r1, r0
	orr		r1, r2
	add		r0, r5, #0x0
	add		r0, #0x60
	strh	r1, [r0, #0x0]
	b		_08315f92
_08315e4e:
	ldrh	r1, [r4, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08315f3c
	ldr		r0, [r5, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r5, #0x48]
	add		r4, r5, #0x0
	add		r4, #0x4e
	mov		r0, #0x0
	ldrsh	r2, [r4, r0]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08315e74
	neg		r0, r2
_08315e74:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r5, #0x0
	add		r0, #0x50
	mov		r6, #0x0
	ldrsh	r1, [r0, r6]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	bge		_08315e88
	neg		r1, r1
_08315e88:
	lsl		r0, r1, #0x10
	lsr		r1, r0, #0x10
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xbf
	bgt		_08315e9c
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xbf
	ble		_08315f0c
_08315e9c:
	add		r0, r5, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _08315ec4
	cmp		r1, r0
	ble		_08315ec8
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08315eb0
	add		r0, r2, #0x3
_08315eb0:
	asr		r0, r0, #0x2
	strh	r0, [r4, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x0
	bge		_08315ebe
	add		r0, #0x3
_08315ebe:
	asr		r0, r0, #0x2
	strh	r0, [r6, #0x0]
	b		_08315f3c

_08315ec4:	.4byte 0x04FFFFFF

_08315ec8:
	ldr		r0, _08315f04
	add		r3, r5, #0x0
	add		r3, #0x5c
	ldrh	r1, [r3, #0x0]
	lsl		r1, r1, #0x1
	add		r0, r1, r0
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08315ee0
	add		r0, #0xff
_08315ee0:
	asr		r0, r0, #0x8
	strh	r0, [r4, #0x0]
	mov		r0, #0x0
	ldrsh	r2, [r6, r0]
	ldr		r1, _08315f08
	ldrh	r0, [r3, #0x0]
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08315efc
	add		r0, #0xff
_08315efc:
	asr		r0, r0, #0x8
	strh	r0, [r6, #0x0]
	b		_08315f3c

.incbin "base.gba", 0x315F02, 0x2

_08315f04:	.4byte 0x0202C070
_08315f08:	.4byte 0x0202C078

_08315f0c:
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	cmp		r0, #0x0
	beq		_08315f24
	ldr		r2, _08315f48
	add		r1, r2, #0x0
	cmp		r0, #0x0
	blt		_08315f22
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
_08315f22:
	strh	r1, [r4, #0x0]
_08315f24:
	mov		r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp		r0, #0x0
	beq		_08315f3c
	ldr		r2, _08315f48
	add		r1, r2, #0x0
	cmp		r0, #0x0
	blt		_08315f3a
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r1, r0, #0x0
_08315f3a:
	strh	r1, [r6, #0x0]
_08315f3c:
	add		r1, r5, #0x0
	add		r1, #0x60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_08315f92

.incbin "base.gba", 0x315F46, 0x2

_08315f48:	.4byte 0xFFFFFF00

_08315f4c:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08315b70
	cmp		r0, #0x0
	beq		_08315f90
	add		r0, r5, #0x0
	add		r0, #0x56
	ldrh	r1, [r0, #0x0]
	lsr		r1, r1, #0xe
	ldr		r0, _08315f88
	lsl		r1, r1, #0x1
	add		r0, r1, r0
	ldrh	r0, [r0, #0x0]
	add		r3, r5, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	strh	r0, [r3, #0x0]
	ldr		r0, _08315f8c
	add		r1, r1, r0
	ldrh	r1, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	add		r0, #0xa
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	b		_08315f92

.incbin "base.gba", 0x315F86, 0x2

_08315f88:	.4byte 0x0202C060
_08315f8c:	.4byte 0x0202C068

_08315f90:
	strh	r0, [r4, #0x0]
_08315f92:
	ldr		r1, [r5, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_08315fa0
	mov		r2, #0x1
_08315fa0:
	cmp		r2, #0x0
	bne		_08316018
	ldr		r1, [r5, #0x0]
	ldr		r2, [r5, #0x4]
	add		r0, r7, #0x0
	mov		r3, #0x0
	bl		sub_0831196c
	cmp		r0, #0x0
	beq		_08315fcc
	ldr		r0, [r5, #0x48]
	mov		r1, #0x1
	orr		r0, r1
	str		r0, [r5, #0x48]
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_08310f24
	add		r1, r5, #0x0
	add		r1, #0x85
	strb	r0, [r1, #0x0]
	b		_08316018
_08315fcc:
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_08315fd6
	ldr		r1, _08316024
	add		r0, r0, r1
_08315fd6:
	lsr		r2, r0, #0x10
	ldr		r0, [r5, #0x4]
	cmp		r0, #0x0
	bge		_08315fe2
	ldr		r6, _08316024
	add		r0, r0, r6
_08315fe2:
	lsr		r3, r0, #0x10
	add		r0, r5, #0x0
	add		r0, #0x85
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x90
	bne		_08316018
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08315ffc
	add		r0, #0x7
_08315ffc:
	asr		r0, r0, #0x3
	lsl		r0, r0, #0x3
	add		r1, r0, #0x4
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_0831600c
	add		r0, #0x7
_0831600c:
	asr		r2, r0, #0x3
	lsl		r2, r2, #0x3
	add		r2, #0x4
	add		r0, r5, #0x0
	bl		sub_083195bc
_08316018:
	add		r0, r5, #0x0
	bl		sub_083158a0
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08316024:	.4byte 0x0000FFFF

.incbin "base.gba", 0x316028, 0x18
	thumb_func_end sub_08315dfc

	thumb_func_start sub_08316040
sub_08316040:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, _083160b0
	add		r6, r1, #0x0
	add		r6, #0x24
	add		r0, #0xf0
	mov		r3, #0x0
	ldrsh	r5, [r0, r3]
	mov		r0, #0x6
	ldrsh	r7, [r4, r0]
	ldr		r3, _083160b4
	add		r1, r1, r3
	ldrh	r1, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316068
	b		_083161ce
_08316068:
	ldr		r1, [r4, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316074
	b		_083161ce
_08316074:
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x6
	bne		_08316080
	b		_083161ce
_08316080:
	mov		r0, #0xc1
	neg		r0, r0
	and		r1, r0
	str		r1, [r4, #0x48]
	add		r0, r2, #0x0
	bl		sub_0831179c
	cmp		r0, r5
	beq		_083160b8
	cmp		r0, r5
	blt		_083160b8
	cmp		r0, r7
	ble		_0831609c
	b		_083161ce
_0831609c:
	add		r2, r4, #0x0
	add		r2, #0x91
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x74
	bhi		_083160a8
	b		_083161ce
_083160a8:
	sub		r0, #0x1
	strb	r0, [r2, #0x0]
	b		_083161ce

.incbin "base.gba", 0x3160AE, 0x2

_083160b0:	.4byte 0x030031D0
_083160b4:	.4byte 0x00000772

_083160b8:
	cmp		r0, r7
	bgt		_083160be
	b		_083161ce
_083160be:
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
	ble		_083161ce
	mov		r7, #0x0
	strh	r2, [r1, #0x0]
	cmp		r0, #0x80
	beq		_083161ce
	ldr		r2, _08316150
	add		r0, r6, r2
	ldrh	r2, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	sub		r0, r1, r2
	cmp		r0, #0x0
	blt		_0831615c
	ldr		r5, [r4, #0x48]
	mov		r0, #0x20
	and		r5, r0
	cmp		r5, #0x0
	bne		_083161ce
	mov		r3, #0xf1
	lsl		r3, r3, #0x3
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0831612a
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bl		sub_08320664
	mov		r1, #0x8
	ldr		r2, _08316154
	add		r0, r6, r2
	str		r1, [r0, #0x0]
_0831612a:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08317980
	ldr		r0, [r4, #0x48]
	mov		r1, #0x39
	neg		r1, r1
	and		r0, r1
	ldr		r1, _08316158
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x82
	strh	r5, [r0, #0x0]
	sub		r0, #0x2
	strh	r5, [r0, #0x0]
	sub		r0, #0x2
	strb	r7, [r0, #0x0]
	b		_083161ce

_08316150:	.4byte 0x0000075A
_08316154:	.4byte 0x00000B58
_08316158:	.4byte 0x00002038

_0831615c:
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r0, r1, r3
	cmp		r0, r2
	bne		_083161a0
	ldr		r0, [r4, #0x48]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r3, #0xf1
	lsl		r3, r3, #0x3
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08316184
	ldr		r1, _0831619c
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_0830fbb8
_08316184:
	add		r0, r4, #0x0
	add		r0, #0xa4
	ldrh	r1, [r0, #0x0]
	mov		r2, #0x80
	orr		r1, r2
	strh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08317980
	b		_083161ce

.incbin "base.gba", 0x31619A, 0x2

_0831619c:	.4byte 0x0202C080

_083161a0:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_083161c6
	mov		r0, #0x13
	bl		sub_08325e94
_083161c6:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08317980
_083161ce:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08316040

	thumb_func_start sub_083161d4
sub_083161d4:
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
	bge		_083161f2
	ldr		r0, _08316220
	add		r1, r1, r0
_083161f2:
	lsr		r7, r1, #0x10
	ldr		r2, [r5, #0x4]
	cmp		r2, #0x0
	bge		_083161fe
	ldr		r1, _08316220
	add		r2, r2, r1
_083161fe:
	lsr		r4, r2, #0x10
	ldr		r2, _08316224
	add		r2, r2, r5
	mov		r8, r2
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r2, [r5, #0x4]
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_0831196c
	cmp		r0, #0x0
	beq		_08316228
	ldr		r0, [r5, #0x48]
	mov		r1, #0x1
	b		_083162b0

_08316220:	.4byte 0x0000FFFF
_08316224:	.4byte 0x0000019B

_08316228:
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	lsl		r2, r4, #0x10
	asr		r2, r2, #0x10
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_08310fac
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r7, #0x80
	add		r0, r4, #0x0
	and		r0, r7
	cmp		r0, #0x0
	beq		_0831627c
	mov		r1, #0x7f
	and		r4, r1
	cmp		r4, #0x7f
	bne		_08316258
	ldr		r0, [r5, #0x48]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r5, #0x48]
	b		_0831626a
_08316258:
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r2, [r0, #0x0]
	cmp		r4, r2
	beq		_0831626a
	strb	r4, [r0, #0x0]
	and		r4, r1
	sub		r0, #0x5a
	strb	r4, [r0, #0x0]
_0831626a:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_08316040
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_0831ed60
	b		_083162d4
_0831627c:
	cmp		r4, #0x7f
	beq		_083162ac
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_0831ed60
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0831188c
	mov		r1, r8
	strb	r0, [r1, #0x0]
	and		r0, r7
	cmp		r0, #0x0
	beq		_083162b6
	ldr		r1, [r5, #0x8]
	mov		r2, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	cmp		r1, r0
	ble		_083162a8
	mov		r2, #0x1
_083162a8:
	cmp		r2, #0x0
	beq		_083162b6
_083162ac:
	ldr		r0, [r5, #0x48]
	mov		r1, #0x2
_083162b0:
	orr		r0, r1
	str		r0, [r5, #0x48]
	b		_083162d4
_083162b6:
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r2, [r0, #0x0]
	cmp		r4, r2
	beq		_083162d4
	strb	r4, [r0, #0x0]
	mov		r0, #0x7f
	and		r4, r0
	add		r0, r5, #0x0
	add		r0, #0x36
	strb	r4, [r0, #0x0]
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_0831ed60
_083162d4:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3162DE, 0x2
	thumb_func_end sub_083161d4

	thumb_func_start sub_083162e0
sub_083162e0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r2, r1, #0x10
	asr		r1, r1, #0x10
	ldr		r0, _08316320
	cmp		r1, r0
	ble		_083162f2
	add		r2, r0, #0x0
_083162f2:
	mov		r1, #0xba
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r3, [r0, #0x0]
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x16
	mov		r0, #0x7
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x9a
	ldrb	r2, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r2
	lsl		r0, r0, #0x3
	add		r1, r1, r0
	add		r3, #0x24
	add		r3, r3, r1
	ldrb	r0, [r3, #0x0]
	lsl		r0, r0, #0x4
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x31631E, 0x2

_08316320:	.4byte 0x000001FF
	thumb_func_end sub_083162e0

	thumb_func_start sub_08316324
sub_08316324:
	push	{ r4, r5, r6, lr }
	mov		r12, r0
	add		r0, #0xb6
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	cmp		r0, r1
	ble		_0831633a
	add		r2, r1, #0x0
_0831633a:
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
	bne		_08316356
	neg		r0, r3
	lsl		r0, r0, #0x10
	b		_08316358
_08316356:
	lsl		r0, r3, #0x10
_08316358:
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
	ble		_08316380
	add		r0, r5, #0x0
	sub		r0, #0x40
	strh	r0, [r2, #0x0]
	b		_083163ca
_08316380:
	lsl		r0, r3, #0x10
	cmp		r0, #0x0
	blt		_08316398
	ldr		r1, _08316394
	add		r0, r3, r1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_083163ca
	b		_083163a6

_08316394:	.4byte 0xFFFFFB80

_08316398:
	mov		r2, #0x90
	lsl		r2, r2, #0x3
	add		r0, r3, r2
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_083163ca
_083163a6:
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
	ldr		r0, _083163d0
	and		r0, r1
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	add		r1, r4, #0x0
	orr		r0, r1
	strh	r0, [r6, #0x0]
_083163ca:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_083163d0:	.4byte 0x000040FF
	thumb_func_end sub_08316324

	thumb_func_start sub_083163d4
sub_083163d4:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r2, r4, #0x0
	add		r2, #0xca
	add		r5, r4, #0x0
	add		r5, #0x7a
	ldrh	r0, [r2, #0x0]
	ldrh	r1, [r5, #0x0]
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_08316408
	ldr		r0, _08316404
	cmp		r1, r0
	ble		_08316428
	add		r0, r4, #0x0
	bl		sub_083162e0
	ldrh	r5, [r5, #0x0]
	add		r0, r0, r5
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	b		_0831642a

_08316404:	.4byte 0x000001FF

_08316408:
	ldr		r0, _08316424
	cmp		r1, r0
	bge		_08316428
	neg		r1, r1
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	add		r0, r4, #0x0
	bl		sub_083162e0
	ldrh	r1, [r5, #0x0]
	sub		r1, r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	b		_0831642a

_08316424:	.4byte 0xFFFFFE00

_08316428:
	ldrh	r1, [r2, #0x0]
_0831642a:
	add		r0, r4, #0x0
	add		r0, #0x7a
	strh	r1, [r0, #0x0]
	sub		r0, #0x24
	strh	r1, [r0, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31643A, 0x86
	thumb_func_end sub_083163d4

	thumb_func_start sub_083164c0
sub_083164c0:
	push	{ r4, lr }
	mov		r12, r0
	ldr		r0, _0831650c
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	mov		r3, #0x3
	and		r3, r0
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r0, r12
	ldrh	r4, [r0, #0x0]
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	add		r0, r12
	ldr		r1, [r0, #0x0]
	mov		r0, r12
	add		r0, #0x9a
	ldrb	r2, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r2
	lsl		r0, r0, #0x2
	add		r3, r3, r0
	add		r1, #0x10
	add		r1, r1, r3
	ldrb	r0, [r1, #0x0]
	lsl		r2, r0, #0x4
	cmp		r4, #0x10
	ble		_083164fa
	mov		r4, #0x10
_083164fa:
	lsl		r1, r4, #0x1
	ldr		r0, _08316510
	add		r0, r12
	ldrb	r0, [r0, #0x0]
	add		r0, r2, r0
	add		r0, r0, r1
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0831650c:	.4byte 0x0000019B
_08316510:	.4byte 0x0000019D
	thumb_func_end sub_083164c0

	thumb_func_start sub_08316514
sub_08316514:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, [r4, #0x48]
	mov		r1, #0x3
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316574
	add		r6, r4, #0x0
	add		r6, #0x90
	ldrb	r1, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_08311824
	lsl		r1, r0, #0x3
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_0831653e
	ldr		r2, _08316570
	add		r0, r0, r2
_0831653e:
	asr		r0, r0, #0x10
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldrb	r1, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r2, #0x0
	bl		sub_08311858
	lsl		r2, r0, #0x3
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_0831655c
	ldr		r3, _08316570
	add		r0, r0, r3
_0831655c:
	asr		r1, r0, #0x10
	sub		r1, r2, r1
	lsl		r0, r7, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	b		_0831659c

.incbin "base.gba", 0x31656E, 0x2

_08316570:	.4byte 0x0000FFFF

_08316574:
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0831657e
	ldr		r0, _083165ac
	add		r1, r1, r0
_0831657e:
	lsr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0831658a
	ldr		r3, _083165ac
	add		r2, r2, r3
_0831658a:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	ldr		r3, _083165b0
	add		r0, r4, r3
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08310f34
_0831659c:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3165AA, 0x2

_083165ac:	.4byte 0x0000FFFF
_083165b0:	.4byte 0x00000191
	thumb_func_end sub_08316514

	thumb_func_start sub_083165b4
sub_083165b4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	bl		sub_08316514
	ldr		r1, _083165e8
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0xca
	mov		r7, #0x0
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
	beq		_083166c0
	cmp		r0, #0x1
	bgt		_083165ec
	cmp		r0, #0x0
	beq		_083165f6
	b		_08316760

_083165e8:	.4byte 0xFFFFFF00

_083165ec:
	cmp		r0, #0x8
	beq		_08316678
	cmp		r0, #0xb
	beq		_083166ca
	b		_08316760
_083165f6:
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_083164c0
	add		r2, r0, #0x0
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08316610
	ldr		r3, _08316640
	add		r0, r1, r3
_08316610:
	asr		r0, r0, #0x10
	sub		r0, r2, r0
	cmp		r0, #0x0
	blt		_08316648
	asr		r0, r1, #0x10
	ldr		r1, _08316644
	cmp		r0, r1
	ble		_08316622
	add		r0, r1, #0x0
_08316622:
	asr		r1, r0, #0x6
	mov		r0, #0xf
	and		r1, r0
	add		r2, r4, #0x0
	add		r2, #0xc0
	mov		r3, #0xba
	lsl		r3, r3, #0x1
	add		r0, r4, r3
	ldr		r0, [r0, #0x0]
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0xc
	str		r0, [r2, #0x0]
	b		_08316766

.incbin "base.gba", 0x31663E, 0x2

_08316640:	.4byte 0x0000FFFF
_08316644:	.4byte 0x000003FF

_08316648:
	neg		r0, r0
	ldr		r1, _08316670
	cmp		r0, r1
	ble		_08316652
	add		r0, r1, #0x0
_08316652:
	add		r2, r4, #0x0
	add		r2, #0xc0
	ldrh	r1, [r2, #0x0]
	str		r1, [r2, #0x0]
	ldr		r3, _08316674
	asr		r0, r0, #0x6
	lsl		r0, r0, #0x1
	add		r0, r0, r3
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	lsl		r0, r0, #0x10
	orr		r1, r0
	str		r1, [r2, #0x0]
	b		_08316766

.incbin "base.gba", 0x31666E, 0x2

_08316670:	.4byte 0x000001FF
_08316674:	.4byte 0x0202C0A0

_08316678:
	add		r1, r4, #0x0
	add		r1, #0xcc
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_083166aa
	sub		r1, #0x10
	ldr		r0, [r1, #0x0]
	mov		r2, #0xfc
	lsl		r2, r2, #0x13
	cmp		r0, r2
	ble		_0831669a
	str		r2, [r1, #0x0]
	add		r1, #0x4
	b		_083166c4
_0831669a:
	add		r0, r4, #0x0
	add		r0, #0xc0
	ldrh	r1, [r0, #0x0]
	mov		r2, #0xc8
	lsl		r2, r2, #0xe
	orr		r1, r2
	str		r1, [r0, #0x0]
	b		_08316766
_083166aa:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _083166bc
	and		r0, r1
	strh	r0, [r2, #0x0]
_083166b6:
	strb	r7, [r5, #0x0]
	b		_08316766

.incbin "base.gba", 0x3166BA, 0x2

_083166bc:	.4byte 0x0000FF3F

_083166c0:
	add		r1, r4, #0x0
	add		r1, #0xc0
_083166c4:
	ldrh	r0, [r1, #0x0]
	str		r0, [r1, #0x0]
	b		_08316766
_083166ca:
	ldr		r2, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r2, r0
	cmp		r2, #0x0
	bne		_08316766
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _08316704
	add		r3, r4, #0x0
	add		r3, #0x82
	cmp		r1, r0
	bgt		_083166e8
	strh	r2, [r3, #0x0]
_083166e8:
	ldrh	r0, [r3, #0x0]
	mov		r2, #0x0
	ldrsh	r1, [r3, r2]
	cmp		r1, #0x0
	bge		_08316708
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_0831672c
	b		_083166b6

.incbin "base.gba", 0x316702, 0x2

_08316704:	.4byte 0x00FFFFFF

_08316708:
	cmp		r1, #0x0
	ble		_08316718
	ldr		r2, _08316728
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_083166b6
_08316718:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	cmp		r1, #0x0
	bne		_0831672c
	add		r0, r4, #0x0
	add		r0, #0x84
	strb	r1, [r0, #0x0]
	b		_08316766

_08316728:	.4byte 0xFFFFFC00

_0831672c:
	mov		r2, #0x0
	ldrsh	r1, [r3, r2]
	cmp		r1, #0x0
	bge		_08316736
	neg		r1, r1
_08316736:
	ldr		r0, _08316758
	cmp		r1, r0
	ble		_08316740
	mov		r1, #0xfc
	lsl		r1, r1, #0x6
_08316740:
	asr		r0, r1, #0xb
	mov		r1, #0x7
	and		r0, r1
	add		r2, r4, #0x0
	add		r2, #0xc0
	ldr		r1, _0831675c
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	str		r0, [r2, #0x0]
	b		_08316766

_08316758:	.4byte 0x00003FFF
_0831675c:	.4byte 0x0202BE48

_08316760:
	add		r0, r4, #0x0
	bl		sub_08312f2c
_08316766:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083165b4

	thumb_func_start sub_0831676c
sub_0831676c:
	bx		lr

.incbin "base.gba", 0x31676E, 0x2
	thumb_func_end sub_0831676c

	thumb_func_start sub_08316770
sub_08316770:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x2c
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
	bl		sub_08317898
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
	bge		_0831681e
	ldr		r0, _08316974
	add		r1, r1, r0
_0831681e:
	asr		r1, r1, #0x10
	ldr		r2, [r6, #0x4]
	cmp		r2, #0x0
	bge		_0831682a
	ldr		r0, _08316974
	add		r2, r2, r0
_0831682a:
	asr		r2, r2, #0x10
	ldr		r0, [sp, #0x0]
	mov		r3, #0x0
	bl		sub_08310fac
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
	mov		r10, r0
	sub		r1, #0x5c
	str		r1, [sp, #0x14]
	mov		r2, #0x66
	add		r2, r2, r6
	mov		r9, r2
	mov		r0, #0x5a
	add		r0, r0, r6
	mov		r12, r0
	add		r1, #0xa
	str		r1, [sp, #0x20]
	mov		r2, #0x64
	add		r2, r2, r6
	mov		r8, r2
	add		r5, r6, #0x0
	add		r5, #0xac
	add		r0, r6, #0x0
	add		r0, #0xb8
	str		r0, [sp, #0x8]
	add		r1, #0x2
	str		r1, [sp, #0x24]
	add		r2, r6, #0x0
	add		r2, #0xd0
	str		r2, [sp, #0x18]
	add		r0, #0x1c
	str		r0, [sp, #0x1C]
	sub		r1, #0x14
	str		r1, [sp, #0x10]
	add		r7, r6, #0x0
	add		r7, #0xd8
	sub		r2, #0x4b
	str		r2, [sp, #0x28]
	sub		r0, #0x2c
	str		r0, [sp, #0x4]
	sub		r1, #0x6
	str		r1, [sp, #0xC]
	add		r1, #0x80
	mov		r2, #0x0
	add		r0, #0x3c
_083168b4:
	strh	r2, [r0, #0x0]
	sub		r0, #0x2
	cmp		r0, r1
	bge		_083168b4
	mov		r4, #0x0
	str		r4, [r3, #0x0]
	mov		r2, r10
	strh	r4, [r2, #0x0]
	ldr		r0, [sp, #0x14]
	strh	r4, [r0, #0x0]
	mov		r1, r9
	strh	r4, [r1, #0x0]
	mov		r2, r12
	strh	r4, [r2, #0x0]
	ldr		r0, [sp, #0x20]
	strh	r4, [r0, #0x0]
	mov		r2, #0x0
	mov		r1, r8
	strb	r2, [r1, #0x0]
	strh	r4, [r5, #0x0]
	strh	r4, [r6, #0x38]
	mov		r1, #0xc9
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	strb	r2, [r0, #0x0]
	ldr		r2, [sp, #0x8]
	strh	r4, [r2, #0x0]
	ldr		r0, [sp, #0x24]
	strh	r4, [r0, #0x0]
	ldr		r1, [sp, #0x18]
	str		r4, [r1, #0x0]
	ldr		r2, [sp, #0x1C]
	str		r4, [r2, #0x0]
	mov		r1, #0xca
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	strh	r4, [r0, #0x0]
	mov		r2, #0xcb
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	sub		r1, #0x94
	strh	r1, [r0, #0x0]
	add		r2, #0x2
	add		r0, r6, r2
	strh	r1, [r0, #0x0]
	add		r1, #0x9a
	add		r0, r6, r1
	mov		r2, #0x0
	strb	r2, [r0, #0x0]
	add		r0, r6, #0x0
	ldr		r1, [sp, #0x0]
	bl		sub_0831791c
	ldr		r2, _08316978
	add		r1, r6, r2
	strb	r0, [r1, #0x0]
	ldr		r0, [sp, #0x10]
	strh	r4, [r0, #0x0]
	ldrb	r1, [r7, #0x0]
	mov		r0, #0x4
	neg		r0, r0
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r7, #0x0]
	ldrh	r1, [r7, #0x0]
	ldr		r0, _0831697c
	and		r0, r1
	strh	r0, [r7, #0x0]
	ldrb	r1, [r7, #0x1]
	mov		r0, #0x1f
	and		r0, r1
	strb	r0, [r7, #0x1]
	mov		r2, #0x0
	ldr		r1, [sp, #0x28]
	strb	r2, [r1, #0x0]
	ldr		r1, _08316980
	add		r0, r6, r1
	strb	r2, [r0, #0x0]
	ldr		r2, [sp, #0x4]
	str		r4, [r2, #0x0]
	ldr		r0, [sp, #0xC]
	strh	r4, [r0, #0x0]
	ldrh	r0, [r6, #0x34]
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r6, #0x34]
	add		sp, #0x2c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x316972, 0x2

_08316974:	.4byte 0x0000FFFF
_08316978:	.4byte 0x00000191
_0831697c:	.4byte 0xFFFFE003
_08316980:	.4byte 0x0000019B

.incbin "base.gba", 0x316984, 0x8
	thumb_func_end sub_08316770

	thumb_func_start sub_0831698c
sub_0831698c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldrb	r5, [r0, #0x0]
	add		r2, r6, #0x0
	add		r2, #0x8c
	ldr		r1, _08316a04
	lsl		r0, r5, #0x1
	add		r0, r0, r1
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	ldr		r1, _08316a08
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	str		r0, [r2, #0x0]
	ldr		r2, _08316a0c
	mov		r12, r2
	add		r3, r6, #0x0
	add		r3, #0xf4
	ldr		r2, _08316a10
	add		r4, r2, #0x0
	add		r4, #0x1e
_083169be:
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	lsl		r1, r0, #0x4
	cmp		r5, #0x1
	ble		_083169d2
	asr		r0, r1, #0x1
	add		r1, r1, r0
	cmp		r1, #0x31
	bgt		_083169d2
	mov		r1, #0xe0
_083169d2:
	strh	r1, [r3, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	cmp		r2, r4
	ble		_083169be
	mov		r4, #0x0
	ldr		r0, _08316a14
	mov		r2, #0x8a
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	add		r2, r0, #0x0
	sub		r2, #0x14
_083169ea:
	cmp		r4, #0x9
	ble		_08316a24
	mov		r3, #0x0
	ldrsh	r0, [r2, r3]
	lsl		r0, r0, #0x4
	cmp		r5, #0x1
	beq		_08316a28
	cmp		r5, #0x1
	bgt		_08316a18
	cmp		r5, #0x0
	beq		_08316a20
	b		_08316a28

.incbin "base.gba", 0x316A02, 0x2

_08316a04:	.4byte 0x0202C0B0
_08316a08:	.4byte 0x0000039E
_08316a0c:	.4byte 0x0202BF00
_08316a10:	.4byte 0x0202BDA8
_08316a14:	.4byte 0x0202BDC8

_08316a18:
	cmp		r5, #0x3
	bgt		_08316a28
	add		r0, #0xa0
	b		_08316a28
_08316a20:
	sub		r0, #0x80
	b		_08316a28
_08316a24:
	mov		r0, #0x1
	neg		r0, r0
_08316a28:
	strh	r0, [r1, #0x0]
	add		r1, #0x2
	add		r2, #0x2
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_083169ea
	mov		r0, #0x9a
	lsl		r0, r0, #0x1
	add		r3, r6, r0
	ldr		r2, _08316a88
	mov		r4, #0x3
	add		r0, #0x2
	add		r1, r6, r0
_08316a42:
	ldrh	r0, [r2, #0x0]
	strh	r0, [r3, #0x0]
	ldrh	r0, [r2, #0x2]
	strh	r0, [r1, #0x0]
	ldrh	r0, [r2, #0x4]
	strh	r0, [r1, #0x2]
	ldrh	r0, [r2, #0x6]
	strh	r0, [r1, #0x4]
	add		r3, #0x8
	add		r2, #0x8
	add		r1, #0x8
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08316a42
	mov		r2, #0xba
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	mov		r0, #0x4c
	mul		r0, r5
	add		r0, r12
	str		r0, [r1, #0x0]
	ldr		r3, _08316a8c
	add		r0, r7, r3
	ldrb	r0, [r0, #0x0]
	bl		sub_08311aa8
	cmp		r0, #0x0
	beq		_08316a98
	ldr		r0, _08316a90
	add		r0, r5, r0
	ldrb	r0, [r0, #0x0]
	ldr		r2, _08316a94
	add		r1, r6, r2
	b		_08316a9c

.incbin "base.gba", 0x316A86, 0x2

_08316a88:	.4byte 0x0202BDD4
_08316a8c:	.4byte 0x00000751
_08316a90:	.4byte 0x0202BFE4
_08316a94:	.4byte 0x0000019D

_08316a98:
	ldr		r3, _08316aa4
	add		r1, r6, r3
_08316a9c:
	strb	r0, [r1, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08316aa4:	.4byte 0x0000019D
	thumb_func_end sub_0831698c

	thumb_func_start sub_08316aa8
sub_08316aa8:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r3, #0x0
	ldr		r1, _08316acc
	add		r1, #0x24
	add		r0, #0x4c
	strb	r2, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0831698c
	cmp		r4, #0x0
	beq		_08316ad8
	ldr		r0, _08316ad0
	str		r0, [r5, #0x48]
	ldr		r0, _08316ad4
	b		_08316ae0

.incbin "base.gba", 0x316ACA, 0x2

_08316acc:	.4byte 0x030031D0
_08316ad0:	.4byte 0x00008040
_08316ad4:	.4byte 0x00002001

_08316ad8:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	str		r0, [r5, #0x48]
	add		r0, #0x2
_08316ae0:
	strh	r0, [r5, #0x10]
	mov		r0, #0xa
	strb	r0, [r5, #0xe]
	strb	r0, [r5, #0xd]
	strb	r0, [r5, #0xc]
	ldr		r0, _08316b68
	str		r0, [r5, #0x18]
	add		r2, r5, #0x0
	add		r2, #0x58
	mov		r4, #0x0
	mov		r3, #0x0
	mov		r0, #0x5b
	strh	r0, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316b1a
	add		r1, r5, #0x0
	add		r1, #0x68
	ldr		r0, _08316b6c
	strh	r0, [r1, #0x0]
	ldrh	r1, [r2, #0x0]
	sub		r0, #0x10
	and		r0, r1
	strh	r0, [r2, #0x0]
_08316b1a:
	ldr		r0, _08316b70
	add		r1, r5, r0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xec
	strb	r6, [r0, #0x0]
	ldrh	r0, [r5, #0x34]
	mov		r1, #0x1
	orr		r0, r1
	strh	r0, [r5, #0x34]
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r5, r1
	strb	r4, [r0, #0x0]
	add		r1, #0x4
	add		r0, r5, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r5, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r5, r1
	str		r3, [r0, #0x0]
	add		r1, #0x4
	add		r0, r5, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r5, r1
	strh	r3, [r0, #0x0]
	add		r1, #0x2
	add		r0, r5, r1
	strb	r4, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08316b68:	.4byte 0x020113E9
_08316b6c:	.4byte 0x0000FFFF
_08316b70:	.4byte 0x0000017D
	thumb_func_end sub_08316aa8

	thumb_func_start sub_08316b74
sub_08316b74:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, #0x1
	bl		sub_0830e6c0
	add		r1, r0, #0x0
	add		r4, #0xec
	ldrb	r0, [r4, #0x0]
	add		r0, #0x8
	lsl		r0, r0, #0x5
	add		r1, r1, r0
	add		r0, r5, #0x0
	mov		r2, #0x8
	bl		sub_083272c0
	mov		r0, #0x1
	bl		sub_0830e6cc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08316b74

	thumb_func_start sub_08316ba0
sub_08316ba0:
	push	{ r4, lr }
	mov		r12, r0
	ldr		r4, [sp, #0x8]
	str		r1, [r0, #0x0]
	str		r2, [r0, #0x4]
	str		r3, [r0, #0x8]
	cmp		r2, #0x0
	bge		_08316bb4
	ldr		r0, _08316bdc
	add		r2, r2, r0
_08316bb4:
	asr		r1, r2, #0x10
	mov		r0, r12
	add		r0, #0xf0
	strh	r1, [r0, #0x0]
	sub		r0, #0x9a
	strh	r4, [r0, #0x0]
	ldr		r0, _08316bdc
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

_08316bdc:	.4byte 0x0000FFFF
	thumb_func_end sub_08316ba0

	thumb_func_start sub_08316be0
sub_08316be0:
	bx		lr

.incbin "base.gba", 0x316BE2, 0x2
	thumb_func_end sub_08316be0

	thumb_func_start sub_08316be4
sub_08316be4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	lsl		r2, r2, #0x10
	lsr		r7, r2, #0x10
	add		r6, r5, #0x0
	ldr		r1, [r4, #0x48]
	mov		r0, #0x80
	lsl		r0, r0, #0xa
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316c1e
	ldr		r0, _08316d14
	and		r1, r0
	str		r1, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xb8
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x1
	ble		_08316c1e
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
_08316c1e:
	ldr		r1, [r4, #0x4]
	cmp		r1, #0x0
	bge		_08316c28
	ldr		r0, _08316d18
	add		r1, r1, r0
_08316c28:
	asr		r1, r1, #0x10
	add		r0, r4, #0x0
	add		r0, #0xf0
	strh	r1, [r0, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bge		_08316c3a
	ldr		r1, _08316d18
	add		r0, r0, r1
_08316c3a:
	asr		r0, r0, #0x10
	add		r1, r4, #0x0
	add		r1, #0xee
	strh	r0, [r1, #0x0]
	ldr		r1, [r4, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r4, #0x0]
	ldr		r1, [r4, #0x4]
	add		r0, r4, #0x0
	add		r0, #0x50
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	str		r1, [r4, #0x4]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_083161d4
	add		r0, r4, #0x0
	bl		sub_083128b8
	add		r0, r4, #0x0
	bl		sub_08312638
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08315dfc
	add		r0, r4, #0x0
	bl		sub_08312aa4
	add		r0, r4, #0x0
	bl		sub_08312740
	add		r0, r4, #0x0
	bl		sub_08312778
	ldr		r1, _08316d1c
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08316ca6
	add		r0, r4, #0x0
	bl		sub_08316be0
_08316ca6:
	add		r0, r4, #0x0
	bl		sub_0831676c
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_08316cbe
	add		r0, r4, #0x0
	bl		sub_08312e74
_08316cbe:
	add		r0, r4, #0x0
	bl		sub_08314864
	add		r0, r4, #0x0
	bl		sub_083136a4
	add		r0, r4, #0x0
	add		r1, r7, #0x0
	bl		sub_08312d50
	add		r0, r4, #0x0
	bl		sub_08312a64
	add		r0, r4, #0x0
	bl		sub_0831571c
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08316cf2
	add		r0, r4, #0x0
	bl		sub_08317524
_08316cf2:
	ldr		r0, _08316d20
	ldr		r0, [r0, #0x10]
	mov		r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_08316d0c
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08315798
	add		r0, r4, #0x0
	bl		sub_08319b4c
_08316d0c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x316D12, 0x2

_08316d14:	.4byte 0xfffdffff
_08316d18:	.4byte 0x0000FFFF
_08316d1c:	.4byte 0x0000074E
_08316d20:	.4byte 0x030031D0

.incbin "base.gba", 0x316D24, 0xAC
	thumb_func_end sub_08316be4

	thumb_func_start sub_08316dd0
sub_08316dd0:
	mov		r2, #0x24
	ldrsh	r1, [r0, r2]
	ldr		r0, _08316de0
	cmp		r1, r0
	bgt		_08316de4
	mov		r0, #0x0
	b		_08316df6

.incbin "base.gba", 0x316DDE, 0x2

_08316de0:	.4byte 0x000001FF

_08316de4:
	ldr		r0, _08316df0
	cmp		r1, r0
	ble		_08316df4
	mov		r0, #0x2
	b		_08316df6

.incbin "base.gba", 0x316DEE, 0x2

_08316df0:	.4byte 0x000003FF

_08316df4:
	mov		r0, #0x1
_08316df6:
	bx		lr
	thumb_func_end sub_08316dd0

	thumb_func_start sub_08316df8
sub_08316df8:
	push	{ r4, lr }
	add		r2, r0, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	mov		r4, #0x7
	and		r4, r0
	add		r0, r2, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08316e2c
	ldr		r0, _08316e24
	ldr		r0, [r0, #0x10]
	lsr		r0, r0, #0x2
	mov		r1, #0x3
	and		r0, r1
	lsl		r0, r0, #0x5
	ldr		r1, _08316e28
	add		r1, r0, r1
	b		_08316e8e

.incbin "base.gba", 0x316E22, 0x2

_08316e24:	.4byte 0x030031D0
_08316e28:	.4byte 0x020274A2

_08316e2c:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r3, #0x0
	ldrsh	r1, [r0, r3]
	ldr		r0, _08316e4c
	cmp		r1, r0
	ble		_08316e58
	ldr		r0, _08316e50
	ldr		r0, [r0, #0x10]
	lsr		r0, r0, #0x2
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08316e58
	ldr		r1, _08316e54
	b		_08316e8e

_08316e4c:	.4byte 0x00000127
_08316e50:	.4byte 0x030031D0
_08316e54:	.4byte 0x020274A2

_08316e58:
	mov		r0, #0xca
	lsl		r0, r0, #0x1
	add		r3, r2, r0
	ldrh	r2, [r3, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
	and		r0, r2
	cmp		r0, #0x0
	beq		_08316e88
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r2
	ldr		r1, _08316e80
	cmp		r0, #0x0
	beq		_08316e78
	sub		r1, #0x20
_08316e78:
	ldr		r0, _08316e84
	and		r0, r2
	strh	r0, [r3, #0x0]
	b		_08316e8e

_08316e80:	.4byte 0x02027542
_08316e84:	.4byte 0x00009FFF

_08316e88:
	lsl		r1, r4, #0x5
	ldr		r0, _08316e98
	add		r1, r1, r0
_08316e8e:
	add		r0, r1, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x316E96, 0x2

_08316e98:	.4byte 0x0202A0F6
	thumb_func_end sub_08316df8

	thumb_func_start sub_08316e9c
sub_08316e9c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	add		r1, r5, #0x0
	add		r1, #0xd4
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	beq		_08316ed2
	str		r4, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_0830e6c0
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	add		r0, #0xec
	ldrb	r0, [r0, #0x0]
	add		r0, #0x8
	lsl		r0, r0, #0x5
	add		r0, #0x6
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0xd
	bl		sub_083272c4
	mov		r0, #0x1
	bl		sub_0830e6cc
_08316ed2:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08316e9c

	thumb_func_start sub_08316ed8
sub_08316ed8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08316df8
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08316e9c
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x316EEE, 0x2
	thumb_func_end sub_08316ed8

	thumb_func_start sub_08316ef0
sub_08316ef0:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	add		r0, #0xec
	ldrb	r5, [r0, #0x0]
	sub		r0, #0x30
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_08316f02
	neg		r0, r0
_08316f02:
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	beq		_08316f20
	cmp		r0, #0xf
	bls		_08316f0e
	mov		r0, #0xf
_08316f0e:
	ldr		r1, _08316f1c
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	add		r4, r2, #0x0
	add		r4, #0xd8
	b		_08316f32

_08316f1c:	.4byte 0x0202C0F2

_08316f20:
	add		r2, #0xd8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3
	and		r0, r1
	mov		r1, #0x0
	add		r4, r2, #0x0
	cmp		r0, #0x2
	bne		_08316f32
	mov		r1, #0x1
_08316f32:
	ldrh	r3, [r4, #0x0]
	ldr		r0, _08316f6c
	and		r0, r3
	cmp		r0, #0x0
	beq		_08316f78
	ldr		r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	lsr		r0, r0, #0x15
	sub		r0, #0x1
	ldr		r2, _08316f70
	add		r5, r2, #0x0
	and		r0, r5
	lsl		r0, r0, #0x2
	ldr		r6, _08316f74
	add		r2, r6, #0x0
	and		r2, r3
	orr		r2, r0
	strh	r2, [r4, #0x0]
	ldr		r0, [r4, #0x0]
	lsl		r0, r0, #0x13
	lsr		r0, r0, #0x15
	cmp		r0, r1
	bls		_08317000
	and		r1, r5
	lsl		r0, r1, #0x2
	and		r2, r6
	orr		r2, r0
	strh	r2, [r4, #0x0]
	b		_08317000

_08316f6c:	.4byte 0x00001FFC
_08316f70:	.4byte 0x000007FF
_08316f74:	.4byte 0xFFFFE003

_08316f78:
	cmp		r1, #0x0
	beq		_08317000
	ldr		r0, _08316f9c
	and		r1, r0
	lsl		r1, r1, #0x2
	ldr		r0, _08316fa0
	and		r0, r3
	orr		r0, r1
	strh	r0, [r4, #0x0]
	add		r3, r4, #0x0
	ldr		r0, [r4, #0x0]
	lsl		r1, r0, #0x1e
	lsr		r0, r1, #0x1e
	cmp		r0, #0x1
	bhi		_08316fa4
	add		r0, #0x1
	b		_08316fa6

.incbin "base.gba", 0x316F9A, 0x2

_08316f9c:	.4byte 0x000007FF
_08316fa0:	.4byte 0xFFFFE003

_08316fa4:
	mov		r0, #0x0
_08316fa6:
	mov		r1, #0x3
	and		r1, r0
	ldrb	r2, [r3, #0x0]
	mov		r0, #0x4
	neg		r0, r0
	and		r0, r2
	orr		r0, r1
	strb	r0, [r3, #0x0]
	ldr		r1, [r4, #0x0]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x1d
	add		r1, #0x1
	lsl		r1, r1, #0x5
	ldrb	r2, [r4, #0x1]
	mov		r0, #0x1f
	and		r0, r2
	orr		r0, r1
	strb	r0, [r4, #0x1]
	ldr		r4, [r4, #0x0]
	lsl		r4, r4, #0x1e
	lsr		r4, r4, #0x1c
	ldr		r0, _08317008
	add		r4, r4, r0
	mov		r0, #0x1
	bl		sub_0830e6c0
	lsl		r5, r5, #0x5
	add		r0, r5, r0
	mov		r2, #0x81
	lsl		r2, r2, #0x1
	add		r1, r0, r2
	ldrh	r0, [r4, #0x0]
	strh	r0, [r1, #0x0]
	mov		r0, #0x1
	bl		sub_0830e6c0
	add		r5, r5, r0
	mov		r0, #0x82
	lsl		r0, r0, #0x1
	add		r5, r5, r0
	ldrh	r0, [r4, #0x2]
	strh	r0, [r5, #0x0]
	mov		r0, #0x1
	bl		sub_0830e6cc
_08317000:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x317006, 0x2

_08317008:	.4byte 0x0202C0B6
	thumb_func_end sub_08316ef0

	thumb_func_start sub_0831700c
sub_0831700c:
	add		r1, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x3
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bhi		_08317022
	ldr		r0, [r1, #0x8]
	cmp		r0, #0x0
	beq		_08317040
_08317022:
	add		r0, r1, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0xf
	beq		_08317040
	add		r0, r1, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x8
	bne		_08317044
	add		r0, r1, #0x0
	add		r0, #0x9c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x3c
	bhi		_08317044
_08317040:
	mov		r0, #0x1
	b		_08317046
_08317044:
	mov		r0, #0x0
_08317046:
	bx		lr
	thumb_func_end sub_0831700c

	thumb_func_start sub_08317048
sub_08317048:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r6, _083170e4
	ldr		r0, _083170e8
	add		r5, r6, r0
	cmp		r5, #0x0
	bne		_08317058
	b		_083171a8
_08317058:
	add		r0, r4, #0x0
	bl		sub_08317828
	cmp		r0, #0x0
	beq		_08317064
	b		_08317194
_08317064:
	ldr		r1, _083170ec
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	beq		_08317070
	b		_08317194
_08317070:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831707c
	b		_08317194
_0831707c:
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
	bge		_0831709e
	neg		r1, r1
_0831709e:
	lsl		r0, r1, #0x8
	lsr		r1, r0, #0x10
	cmp		r1, #0xe
	bls		_083170a8
	mov		r1, #0xe
_083170a8:
	ldr		r0, _083170f0
	add		r0, r1, r0
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x0
	bge		_083170bc
	neg		r1, r1
_083170bc:
	asr		r1, r1, #0x15
	cmp		r1, #0xe
	ble		_083170c4
	mov		r1, #0xe
_083170c4:
	ldr		r0, _083170f4
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	cmp		r3, r0
	bls		_083170d0
	add		r3, r0, #0x0
_083170d0:
	ldr		r1, _083170f8
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_083170fc
	asr		r0, r0, #0x18
	add		r0, r3, r0
	b		_08317100

.incbin "base.gba", 0x3170E2, 0x2

_083170e4:	.4byte 0x030031D0
_083170e8:	.4byte 0x000007BC
_083170ec:	.4byte 0x000007AC
_083170f0:	.4byte 0x0202C112
_083170f4:	.4byte 0x0202C121
_083170f8:	.4byte 0x00000B4E

_083170fc:
	asr		r0, r0, #0x18
	sub		r0, r3, r0
_08317100:
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	add		r0, r4, #0x0
	add		r0, #0x82
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_08317114
	neg		r0, r0
_08317114:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x12
	ble		_08317120
	mov		r1, #0x12
_08317120:
	mov		r0, #0x12
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	sub		r0, r0, r1
	lsl		r1, r0, #0x10
	asr		r0, r1, #0x10
	cmp		r3, r0
	ble		_08317132
	lsr		r3, r1, #0x10
_08317132:
	cmp		r2, #0x0
	beq		_08317164
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_0831713e
	mov		r3, #0x0
_0831713e:
	cmp		r3, #0x0
	beq		_08317158
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x0
	blt		_08317150
	add		r0, r3, #0x2
	sub		r0, r2, r0
	b		_08317154
_08317150:
	add		r0, r3, #0x2
	add		r0, r2, r0
_08317154:
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
_08317158:
	lsl		r0, r2, #0x18
	asr		r1, r0, #0x18
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	asr		r2, r1, #0x1
	b		_083171a2
_08317164:
	mov		r1, #0x0
	ldrsh	r0, [r7, r1]
	cmp		r0, #0x0
	blt		_08317176
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	bge		_08317180
	add		r0, r2, r3
	b		_08317184
_08317176:
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	blt		_08317180
	add		r0, r2, r3
	b		_08317184
_08317180:
	add		r0, r3, #0x2
	sub		r0, r2, r0
_08317184:
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	lsl		r0, r2, #0x18
	asr		r1, r0, #0x18
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	asr		r2, r1, #0x1
	b		_083171a2
_08317194:
	mov		r3, #0x14
	ldrsh	r0, [r5, r3]
	add		r1, r4, #0x0
	add		r1, #0x56
	ldrh	r1, [r1, #0x0]
	sub		r0, r0, r1
	asr		r2, r0, #0x9
_083171a2:
	mov		r0, #0x7f
	and		r2, r0
	b		_083171aa
_083171a8:
	mov		r2, #0x0
_083171aa:
	add		r0, r2, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3171B2, 0x2
	thumb_func_end sub_08317048

	thumb_func_start sub_083171b4
sub_083171b4:
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
	bne		_083171ec
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	ldr		r0, _083171e4
	cmp		r1, r0
	bgt		_083171ec
	ldr		r0, _083171e8
	ldr		r3, [r0, #0x10]
	mov		r0, #0x1
	and		r3, r0
	b		_083171ee

.incbin "base.gba", 0x3171E2, 0x2

_083171e4:	.4byte 0x009FFFFF
_083171e8:	.4byte 0x030031D0

_083171ec:
	mov		r3, #0x0
_083171ee:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	add		r7, r2, #0x0
	cmp		r0, #0x0
	bne		_08317220
	mov		r5, #0x1
	and		r5, r6
	sub		r2, #0x2f
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1e
	and		r0, r1
	cmp		r0, #0xc
	bls		_0831721c
	lsr		r0, r6, #0x1
	mov		r1, #0x1
	and		r0, r1
	add		r0, r5, r0
	add		r3, r3, r0
	b		_08317224
_0831721c:
	add		r3, r3, r5
	b		_08317224
_08317220:
	add		r2, r4, #0x0
	add		r2, #0x85
_08317224:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x5c
	bne		_0831723c
	ldrh	r1, [r7, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831723c
	add		r0, r3, #0x4
	lsl		r0, r0, #0x18
	b		_0831723e
_0831723c:
	lsl		r0, r3, #0x18
_0831723e:
	lsr		r1, r0, #0x18
	mov		r2, r12
	ldrh	r0, [r2, #0x2]
	add		r0, r0, r1
	strh	r0, [r2, #0x2]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31724E, 0x2
	thumb_func_end sub_083171b4

	thumb_func_start sub_08317250
sub_08317250:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	lsl		r2, r2, #0x18
	mov		r1, #0x0
	mov		r0, #0xfc
	lsl		r0, r0, #0x16
	and		r0, r2
	lsr		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_0831726a
	cmp		r0, #0x3f
	bne		_08317296
_0831726a:
	add		r0, r4, #0x0
	bl		sub_08317828
	cmp		r0, #0x0
	beq		_08317284
	add		r0, r4, #0x0
	add		r0, #0x6d
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x1
	and		r1, r0
	neg		r0, r1
	orr		r0, r1
	b		_0831728e
_08317284:
	add		r0, r4, #0x0
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mvn		r0, r0
_0831728e:
	asr		r1, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r1, r0
_08317296:
	ldrh	r0, [r5, #0x4]
	orr		r1, r0
	strh	r1, [r5, #0x4]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3172A2, 0x2
	thumb_func_end sub_08317250

	thumb_func_start sub_083172a4
sub_083172a4:
	add		r2, r1, #0x0
	add		r0, #0x76
	ldrh	r0, [r0, #0x0]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_083172b2
	mov		r1, #0x3
_083172b2:
	lsl		r0, r1, #0xa
	ldrh	r1, [r2, #0x6]
	orr		r0, r1
	strh	r0, [r2, #0x6]
	bx		lr
	thumb_func_end sub_083172a4

	thumb_func_start sub_083172bc
sub_083172bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r10, r2
	ldr		r4, _083173d0
	add		r5, r6, #0x0
	add		r5, #0xec
	ldrb	r0, [r5, #0x0]
	mov		r8, r0
	bl		sub_0831a26c
	add		r7, r0, #0x0
	ldr		r1, _083173d4
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, r6
	beq		_08317334
	ldr		r2, _083173d8
	add		r0, r4, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	and		r0, r1
	cmp		r0, #0x0
	bne		_08317334
	ldr		r1, _083173dc
	add		r0, r6, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bne		_08317318
	ldr		r0, [r4, #0x10]
	mov		r1, #0x7
	and		r0, r1
	ldrb	r2, [r5, #0x0]
	and		r1, r2
	cmp		r0, r1
	beq		_08317334
_08317318:
	mov		r0, #0x1
	neg		r0, r0
	mov		r1, r8
	lsl		r1, r1, #0x3
	mov		r9, r1
	cmp		r3, r0
	bne		_08317390
	ldr		r0, [r4, #0x10]
	mov		r1, #0x3
	and		r0, r1
	ldrb	r2, [r5, #0x0]
	and		r1, r2
	cmp		r0, r1
	bne		_08317390
_08317334:
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r0, [r0, #0x0]
	strb	r0, [r7, #0x0]
	mov		r2, r10
	strb	r2, [r7, #0x1]
	add		r0, r6, #0x0
	bl		sub_08316dd0
	strb	r0, [r7, #0x2]
	mov		r2, #0xce
	lsl		r2, r2, #0x1
	add		r1, r6, r2
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	bl		sub_08317828
	cmp		r0, #0x0
	beq		_08317360
	add		r0, r6, #0x0
	add		r0, #0x6c
	ldrb	r0, [r0, #0x0]
_08317360:
	strb	r0, [r7, #0x3]
	mov		r0, r8
	lsl		r4, r0, #0x3
	ldr		r5, _083173e0
	add		r5, r4, r5
	mov		r2, r8
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_0831a288
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_083171b4
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	mov		r2, r10
	bl		sub_08317250
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_083172a4
	mov		r9, r4
_08317390:
	ldr		r1, _083173e4
	mov		r2, #0xe9
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_083173bc
	add		r0, r6, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_083173bc
	add		r0, r6, #0x0
	bl		sub_08316ef0
	add		r0, r6, #0x0
	bl		sub_08316ed8
_083173bc:
	ldr		r0, _083173e0
	add		r0, r9
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3173CE, 0x2

_083173d0:	.4byte 0x030031D0
_083173d4:	.4byte 0x000007AC
_083173d8:	.4byte 0x00000772
_083173dc:	.4byte 0x0202BEC0
_083173e0:	.4byte 0x03002198
_083173e4:	.4byte 0x030031F4
	thumb_func_end sub_083172bc

	thumb_func_start sub_083173e8
sub_083173e8:
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
	beq		_08317432
	cmp		r1, r0
	bgt		_0831740c
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r1, r0
	beq		_08317416
	b		_0831744c
_0831740c:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_08317420
	b		_0831744c
_08317416:
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_08319140
	b		_0831744c
_08317420:
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r4, r0
	beq		_0831744c
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_08318c70
	b		_0831744c
_08317432:
	ldr		r0, _08317454
	ldr		r1, _08317458
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831744c
	add		r0, r3, #0x0
	add		r1, r2, #0x0
	bl		sub_08318984
_0831744c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x317452, 0x2

_08317454:	.4byte 0x030031D0
_08317458:	.4byte 0x00000772
	thumb_func_end sub_083173e8

	thumb_func_start sub_0831745c
sub_0831745c:
	add		r1, r0, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r1, #0x90
	ldrb	r1, [r1, #0x0]
	add		r0, r0, r1
	bx		lr

.incbin "base.gba", 0x31746C, 0x18
	thumb_func_end sub_0831745c

	thumb_func_start sub_08317484
sub_08317484:
	push	{ lr }
	cmp		r1, #0x0
	beq		_08317492
	mov		r1, #0x9
	bl		sub_08317658
	b		_08317498
_08317492:
	mov		r1, #0x8
	bl		sub_08317658
_08317498:
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08317484

	thumb_func_start sub_0831749c
sub_0831749c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_0830f22c
	cmp		r0, #0x0
	beq		_083174bc
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f240
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08317484
	b		_083174cc
_083174bc:
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0830f240
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08317484
_083174cc:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3174D2, 0x2
	thumb_func_end sub_0831749c

	thumb_func_start sub_083174d4
sub_083174d4:
	push	{ r4, r5, r6, lr }
	ldr		r2, _08317518
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
	beq		_08317512
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_083119a8
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r5
	beq		_08317512
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08311990
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r5
	bne		_0831751c
_08317512:
	mov		r0, #0x1
	b		_0831751e

.incbin "base.gba", 0x317516, 0x2

_08317518:	.4byte 0x030031D0

_0831751c:
	mov		r0, #0x0
_0831751e:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_083174d4

	thumb_func_start sub_08317524
sub_08317524:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	ldr		r0, _0831758c
	mov		r1, #0x24
	add		r1, r1, r0
	mov		r9, r1
	mov		r7, #0x0
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	mov		r8, r1
	mov		r6, #0x0
	ldr		r1, _08317590
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	bge		_083175b4
_0831754a:
	lsl		r1, r6, #0x2
	mov		r0, #0xed
	lsl		r0, r0, #0x3
	add		r0, r9
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	cmp		r5, r4
	beq		_083175a8
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_083174d4
	cmp		r0, #0x0
	beq		_083175a8
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f22c
	cmp		r0, #0x0
	beq		_08317594
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f254
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x37
	bgt		_083175a8
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0831749c
	b		_083175a8

_0831758c:	.4byte 0x030031D0
_08317590:	.4byte 0x00000789

_08317594:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f254
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r8, r0
	ble		_083175a8
	mov		r8, r0
	add		r7, r4, #0x0
_083175a8:
	add		r6, #0x1
	ldr		r0, _083175cc
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	cmp		r6, r0
	blt		_0831754a
_083175b4:
	cmp		r7, #0x0
	beq		_083175c0
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_0831749c
_083175c0:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_083175cc:	.4byte 0x00000765
	thumb_func_end sub_08317524

	thumb_func_start sub_083175d0
sub_083175d0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	ldr		r1, _08317654
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
	bl		sub_08310fdc
	add		r6, r0, #0x0
	mov		r0, #0x7f
	and		r6, r0
	cmp		r4, #0x0
	beq		_08317634
_083175fe:
	ldr		r0, [r4, #0x54]
	cmp		r0, r5
	beq		_0831762e
	add		r0, r5, #0x0
	add		r0, #0x90
	ldrb	r0, [r0, #0x0]
	cmp		r0, r6
	bne		_0831762e
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f22c
	cmp		r0, #0x0
	beq		_0831762e
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0830f254
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r7, r0
	ble		_0831762e
	add		r7, r0, #0x0
	mov		r8, r4
_0831762e:
	ldr		r4, [r4, #0x3c]
	cmp		r4, #0x0
	bne		_083175fe
_08317634:
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0831764a
	add		r0, r5, #0x0
	mov		r1, r8
	bl		sub_0830f240
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08317484
_0831764a:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08317654:	.4byte 0x030031D0
	thumb_func_end sub_083175d0

	thumb_func_start sub_08317658
sub_08317658:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08317682
	cmp		r5, #0x2
	beq		_0831767c
	cmp		r5, #0xf
	bne		_08317682
	add		r0, r4, #0x0
	bl		sub_08324498
	b		_08317682
_0831767c:
	add		r0, r4, #0x0
	bl		sub_08324068
_08317682:
	sub		r0, r5, #0x1
	cmp		r0, #0x6
	bhi		_083176da
	lsl		r0, r0, #0x2
	ldr		r1, _08317694
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x317692, 0x2

_08317694:	.4byte 0x02011698

.incbin "base.gba", 0x317698, 0x42

_083176da:
	sub		r0, r5, #0x3
	cmp		r0, #0xb
	bhi		_08317746
	lsl		r0, r0, #0x2
	ldr		r1, _083176ec
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x3176EA, 0x2

_083176ec:	.4byte 0x020116F0

.incbin "base.gba", 0x3176F0, 0x56

_08317746:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08317658

	thumb_func_start sub_0831774c
sub_0831774c:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, [r4, #0x70]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	sub		r0, #0x1
	cmp		r0, #0x6
	bhi		_083177ae
	lsl		r0, r0, #0x2
	ldr		r1, _08317768
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x317766, 0x2

_08317768:	.4byte 0x0201176C

.incbin "base.gba", 0x31776C, 0x42

_083177ae:
	add		r0, r4, #0x0
	add		r0, #0x72
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	sub		r0, #0x3
	cmp		r0, #0xb
	bhi		_08317822
	lsl		r0, r0, #0x2
	ldr		r1, _083177c8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_083177c8:	.4byte 0x020117CC

.incbin "base.gba", 0x3177CC, 0x56

_08317822:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831774c

	thumb_func_start sub_08317828
sub_08317828:
	add		r1, r0, #0x0
	add		r1, #0x6e
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	cmp		r0, #0x2
	beq		_08317842
	cmp		r0, #0x2
	blt		_08317852
	cmp		r0, #0x9
	bgt		_08317852
	cmp		r0, #0x8
	blt		_08317852
_08317842:
	ldrh	r0, [r1, #0x0]
	mov		r1, #0xf8
	lsl		r1, r1, #0x1
	and		r1, r0
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	b		_08317854
_08317852:
	mov		r0, #0x0
_08317854:
	bx		lr

.incbin "base.gba", 0x317856, 0x1A
	thumb_func_end sub_08317828

	thumb_func_start sub_08317870
sub_08317870:
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
	ldr		r0, _08317894
	and		r0, r2
	strh	r0, [r1, #0x0]
	ldrb	r2, [r1, #0x1]
	mov		r0, #0x1
	and		r0, r2
	strb	r0, [r1, #0x1]
	bx		lr

_08317894:	.4byte 0xFFFFFE0F
	thumb_func_end sub_08317870

	thumb_func_start sub_08317898
sub_08317898:
	push	{ r4, lr }
	add		r4, r0, #0x0
	mov		r1, #0x0
	bl		sub_08317870
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_08317870
	add		r0, r4, #0x0
	mov		r1, #0x2
	bl		sub_08317870
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08317898

	thumb_func_start sub_083178b8
sub_083178b8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x18
	mov		r3, #0x0
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08317916
	sub		r0, r2, #0x1
	cmp		r0, #0x4
	bhi		_08317902
	lsl		r0, r0, #0x2
	ldr		r1, _083178dc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_083178dc:	.4byte 0x020118E0

.incbin "base.gba", 0x3178E0, 0x22

_08317902:
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	cmp		r0, r1
	ble		_08317912
	add		r0, r1, #0x0
_08317912:
	sub		r0, r1, r0
	strh	r0, [r2, #0x0]
_08317916:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083178b8

	thumb_func_start sub_0831791c
sub_0831791c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	add		r0, #0x91
	ldrb	r0, [r0, #0x0]
	mov		r5, #0x7f
	and		r5, r0
	cmp		r0, #0x7f
	bne		_08317932
	mov		r0, #0x0
	b		_08317958
_08317932:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08317940
	mov		r0, #0x1
	b		_08317958
_08317940:
	add		r0, r2, #0x0
	bl		sub_08311960
	add		r1, r4, #0x0
	add		r1, #0xba
	ldrh	r1, [r1, #0x0]
	lsr		r1, r1, #0x1
	mov		r2, #0x5
	mul		r1, r2
	add		r0, r0, r5
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
_08317958:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x31795E, 0x2
	thumb_func_end sub_0831791c

	thumb_func_start sub_08317960
sub_08317960:
	add		r1, r0, #0x0
	add		r1, #0x7c
	add		r0, #0x82
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	bx		lr
	thumb_func_end sub_08317960

	thumb_func_start sub_08317978
sub_08317978:
	add		r0, #0x7c
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	bx		lr
	thumb_func_end sub_08317978

	thumb_func_start sub_08317980
sub_08317980:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r0, #0xc6
	ldrh	r0, [r0, #0x0]
	lsr		r0, r0, #0x8
	add		r4, r0, #0x0
	sub		r4, #0x81
	cmp		r4, #0x4
	bhi		_083179e0
	bl		sub_08320678
	add		r2, r5, #0x0
	add		r2, #0xe8
	ldr		r1, [r2, #0x0]
	sub		r0, r0, r1
	ldr		r3, _083179bc
	add		r6, r2, #0x0
	cmp		r0, r3
	bhi		_083179c0
	bl		sub_08320678
	lsl		r2, r4, #0x1
	add		r1, r5, #0x0
	add		r1, #0xdc
	add		r1, r1, r2
	ldr		r2, [r6, #0x0]
	sub		r0, r0, r2
	strh	r0, [r1, #0x0]
	b		_083179ca

_083179bc:	.4byte 0x0000EA5F

_083179c0:
	lsl		r1, r4, #0x1
	add		r0, r5, #0x0
	add		r0, #0xdc
	add		r0, r0, r1
	strh	r3, [r0, #0x0]
_083179ca:
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_083179da
	bl		sub_083208f0
_083179da:
	bl		sub_08320678
	str		r0, [r6, #0x0]
_083179e0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3179E6, 0x2
	thumb_func_end sub_08317980

	thumb_func_start sub_083179e8
sub_083179e8:
	lsl		r1, r1, #0x1
	add		r0, #0xdc
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x3179F2, 0x2A
	thumb_func_end sub_083179e8

	thumb_func_start sub_08317a1c
sub_08317a1c:
	add		r1, r0, #0x0
	ldr		r0, _08317a40
	cmp		r1, r0
	beq		_08317a72
	cmp		r1, r0
	bgt		_08317a58
	sub		r0, #0x3
	cmp		r1, r0
	beq		_08317a72
	cmp		r1, r0
	bgt		_08317a44
_08317a32:
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08317a72
	add		r0, #0x1
	cmp		r1, r0
	beq		_08317a80
	b		_08317a84

_08317a40:	.4byte 0x00001005

_08317a44:
	ldr		r0, _08317a54
	cmp		r1, r0
	beq		_08317a80
	add		r0, #0x1
	cmp		r1, r0
	beq		_08317a72
	b		_08317a84

.incbin "base.gba", 0x317A52, 0x2

_08317a54:	.4byte 0x00001003

_08317a58:
	ldr		r0, _08317a78
	cmp		r1, r0
	beq		_08317a72
	cmp		r1, r0
	ble		_08317a32
	ldr		r0, _08317a7c
	cmp		r1, r0
	beq		_08317a72
	cmp		r1, r0
	blt		_08317a80
	add		r0, #0x1
	cmp		r1, r0
	bne		_08317a84
_08317a72:
	mov		r0, #0x1
	b		_08317a86

.incbin "base.gba", 0x317A76, 0x2

_08317a78:	.4byte 0x00002002
_08317a7c:	.4byte 0x00002004

_08317a80:
	mov		r0, #0x3
	b		_08317a86
_08317a84:
	mov		r0, #0x0
_08317a86:
	bx		lr
	thumb_func_end sub_08317a1c

	thumb_func_start sub_08317a88
sub_08317a88:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r6, r0, #0x0
	mov		r8, r1
	ldr		r5, _08317ac4
	mov		r0, r8
	bl		sub_08317a1c
	add		r4, r0, #0x0
	mov		r0, #0xbd
	lsl		r0, r0, #0x1
	add		r6, r6, r0
	ldrh	r0, [r6, #0x0]
	bl		sub_08317a1c
	ldr		r1, _08317ac8
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

.incbin "base.gba", 0x317AC2, 0x2

_08317ac4:	.4byte 0x030031D0
_08317ac8:	.4byte 0x00000C1C

.incbin "base.gba", 0x317ACC, 0x4A0
	thumb_func_end sub_08317a88

	thumb_func_start sub_08317f6c
sub_08317f6c:
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

.incbin "base.gba", 0x317F8E, 0x2
	thumb_func_end sub_08317f6c

	thumb_func_start sub_08317f90
sub_08317f90:
	mov		r12, r0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_08317fb6
	mov		r0, r12
	add		r0, #0x58
	ldrh	r3, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r3
	cmp		r0, #0x0
	bne		_08317fae
	mov		r0, #0x1
	b		_08317fe2
_08317fae:
	mov		r0, #0x20
	and		r0, r3
	cmp		r0, #0x0
	beq		_08317fbc
_08317fb6:
	mov		r0, #0x80
	lsl		r0, r0, #0xa
	b		_08317fe2
_08317fbc:
	ldr		r2, _08317fe4
	mov		r1, #0x7
	and		r1, r3
	mov		r0, #0x10
	and		r0, r3
	lsl		r1, r1, #0x3
	cmp		r0, #0x0
	bne		_08317fce
	add		r1, #0x4
_08317fce:
	add		r2, r1, r2
	mov		r0, #0xbc
	lsl		r0, r0, #0x1
	add		r0, r12
	ldrh	r0, [r0, #0x0]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	ldr		r0, [r2, #0x0]
	add		r0, r0, r1
_08317fe2:
	bx		lr

_08317fe4:	.4byte 0x0202C180
	thumb_func_end sub_08317f90

	thumb_func_start sub_08317fe8
sub_08317fe8:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _08318008
	ldr		r0, [r0, #0x10]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831800c
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0xc0
	lsl		r3, r3, #0x2
	b		_08318016

.incbin "base.gba", 0x318006, 0x2

_08318008:	.4byte 0x030031D0

_0831800c:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x2
_08318016:
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xb6
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	strh	r0, [r1, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x74
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x1
	bl		sub_083178b8
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_083180b2
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_083180b2
	mov		r6, #0x0
	mov		r5, #0x0
	ldr		r2, _083180b8
	ldr		r3, _083180bc
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r4, r3, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_0831807a
	ldr		r1, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r1, r0
	bne		_0831807a
	mov		r5, #0x1
_0831807a:
	cmp		r5, #0x0
	beq		_083180a8
	mov		r4, #0x0
	mov		r1, #0xcc
	lsl		r1, r1, #0x1
	add		r3, r3, r1
	ldrh	r0, [r3, #0x4]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_083180a2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_083180a2
	mov		r4, #0x1
_083180a2:
	cmp		r4, #0x0
	bne		_083180a8
	mov		r6, #0x1
_083180a8:
	cmp		r6, #0x0
	bne		_083180b2
	mov		r0, #0x33
	bl		sub_08325e94
_083180b2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_083180b8:	.4byte 0x0202E890
_083180bc:	.4byte 0x0202E8F0
	thumb_func_end sub_08317fe8

	thumb_func_start sub_083180c0
sub_083180c0:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r4, r3, #0x0
	ldr		r0, [r5, #0x0]
	sub		r0, r0, r1
	cmp		r0, #0x0
	bge		_083180d2
	ldr		r1, _083180f0
	add		r0, r0, r1
_083180d2:
	asr		r1, r0, #0x10
	ldr		r0, [r5, #0x4]
	sub		r0, r0, r2
	cmp		r0, #0x0
	bge		_083180e0
	ldr		r2, _083180f0
	add		r0, r0, r2
_083180e0:
	asr		r2, r0, #0x10
	cmp		r1, #0x0
	bne		_083180f4
	cmp		r2, #0x0
	bne		_083180f4
	ldr		r2, [sp, #0x0+0x10]
	b		_08318104

.incbin "base.gba", 0x3180EE, 0x2

_083180f0:	.4byte 0x0000FFFF

_083180f4:
	lsl		r0, r1, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08318104:
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	cmp		r4, r1
	bgt		_0831810e
	add		r4, r1, #0x0
_0831810e:
	ldr		r0, _08318130
	cmp		r4, r0
	ble		_08318118
	mov		r4, #0x80
	lsl		r4, r4, #0x3
_08318118:
	cmp		r4, r1
	beq		_0831813c
	ldr		r0, _08318134
	ldr		r0, [r0, #0x10]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318138
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	add		r2, r2, r0
	b		_0831813c

_08318130:	.4byte 0x000003FF
_08318134:	.4byte 0x030031D0

_08318138:
	ldr		r1, _08318198
	add		r2, r2, r1
_0831813c:
	ldr		r6, _0831819c
	lsl		r0, r2, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831814a
	add		r1, #0x3f
_0831814a:
	asr		r3, r1, #0x6
	ldr		r1, _083181a0
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	mul		r0, r4
	cmp		r0, #0x0
	bge		_08318164
	ldr		r1, _083181a4
	add		r0, r0, r1
_08318164:
	asr		r0, r0, #0xf
	add		r1, r5, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _083181a0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	add		r1, r4, #0x0
	mul		r1, r0
	cmp		r1, #0x0
	bge		_0831818a
	ldr		r2, _083181a4
	add		r1, r1, r2
_0831818a:
	asr		r1, r1, #0xf
	add		r0, r5, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08318198:	.4byte 0xFFFFC000
_0831819c:	.4byte 0x0202A9A0
_083181a0:	.4byte 0x000003FF
_083181a4:	.4byte 0x00007FFF
	thumb_func_end sub_083180c0

	thumb_func_start sub_083181a8
sub_083181a8:
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
	bge		_083181c2
	ldr		r1, _083181f0
	add		r0, r0, r1
_083181c2:
	asr		r4, r0, #0x10
	ldr		r0, [r6, #0x4]
	sub		r1, r0, r2
	cmp		r1, #0x0
	bge		_083181d0
	ldr		r2, _083181f0
	add		r1, r1, r2
_083181d0:
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	asr		r0, r0, #0x10
	sub		r0, r1, r0
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	blt		_083181f8
	ldr		r2, _083181f4
	b		_083181fc

.incbin "base.gba", 0x3181EE, 0x2

_083181f0:	.4byte 0x0000FFFF
_083181f4:	.4byte 0xFFFFC000

_083181f8:
	mov		r2, #0x80
	lsl		r2, r2, #0x7
_083181fc:
	add		r0, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	cmp		r5, r2
	bgt		_0831820c
	add		r5, r2, #0x0
_0831820c:
	ldr		r4, _08318270
	cmp		r5, r4
	ble		_08318216
	mov		r5, #0x80
	lsl		r5, r5, #0x3
_08318216:
	lsl		r0, r0, #0x10
	asr		r7, r0, #0x10
	ldr		r0, _08318274
	mov		r12, r0
	add		r2, r7, #0x0
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08318228
	add		r0, #0x3f
_08318228:
	asr		r3, r0, #0x6
	add		r0, r3, #0x0
	and		r0, r4
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	mul		r0, r5
	cmp		r0, #0x0
	bge		_0831823e
	ldr		r1, _08318278
	add		r0, r0, r1
_0831823e:
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
	bge		_08318260
	ldr		r2, _08318278
	add		r0, r0, r2
_08318260:
	asr		r1, r0, #0xf
	add		r0, r6, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	add		r0, r7, #0x0
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08318270:	.4byte 0x000003FF
_08318274:	.4byte 0x0202A9A0
_08318278:	.4byte 0x00007FFF
	thumb_func_end sub_083181a8

	thumb_func_start sub_0831827c
sub_0831827c:
	add		r3, r0, #0x0
	add		r0, #0x4e
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	neg		r1, r2
	cmp		r1, #0x0
	blt		_083182a4
	cmp		r1, #0x80
	bgt		_08318292
	mov		r1, #0x80
	b		_083182b6
_08318292:
	ldr		r0, _083182a0
	cmp		r1, r0
	ble		_083182b6
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	b		_083182b6

.incbin "base.gba", 0x31829E, 0x2

_083182a0:	.4byte 0x000003FF

_083182a4:
	cmp		r2, #0x80
	bgt		_083182ae
	mov		r1, #0x80
	neg		r1, r1
	b		_083182b6
_083182ae:
	ldr		r0, _083182d4
	cmp		r2, r0
	ble		_083182b6
	ldr		r1, _083182d8
_083182b6:
	add		r0, r3, #0x0
	add		r0, #0x4e
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	neg		r1, r2
	add		r3, r0, #0x0
	cmp		r1, #0x0
	blt		_083182ec
	cmp		r1, #0x80
	bgt		_083182dc
	mov		r1, #0x80
	b		_083182fe

.incbin "base.gba", 0x3182D2, 0x2

_083182d4:	.4byte 0x000003FF
_083182d8:	.4byte 0xFFFFFC00

_083182dc:
	ldr		r0, _083182e8
	cmp		r1, r0
	ble		_083182fe
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	b		_083182fe

_083182e8:	.4byte 0x000003FF

_083182ec:
	cmp		r2, #0x80
	bgt		_083182f6
	mov		r1, #0x80
	neg		r1, r1
	b		_083182fe
_083182f6:
	ldr		r0, _08318304
	cmp		r2, r0
	ble		_083182fe
	ldr		r1, _08318308
_083182fe:
	strh	r1, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x318302, 0x2

_08318304:	.4byte 0x000003FF
_08318308:	.4byte 0xFFFFFC00
	thumb_func_end sub_0831827c

	thumb_func_start sub_0831830c
sub_0831830c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x34
	add		r6, r0, #0x0
	add		r7, r1, #0x0
	ldr		r0, _08318344
	add		r0, #0x24
	mov		r9, r0
	add		r0, r6, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318348
	add		r2, r7, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318358
	b		_083184be

_08318344:	.4byte 0x030031D0

_08318348:
	add		r2, r7, #0x0
	add		r2, #0x58
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318358
	b		_08318514
_08318358:
	add		r1, r6, #0x0
	add		r1, #0x58
	ldrh	r4, [r1, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x8
	add		r0, r3, #0x0
	and		r0, r4
	add		r5, r1, #0x0
	cmp		r0, #0x0
	beq		_08318378
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318378
	b		_0831861c
_08318378:
	mov		r3, #0x40
	add		r0, r3, #0x0
	and		r0, r4
	cmp		r0, #0x0
	bne		_08318470
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831838e
	b		_08318514
_0831838e:
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	add		r0, r6, #0x0
	add		r0, #0x5a
	ldr		r1, _0831845c
	mov		r8, r1
	mov		r2, r8
	strh	r2, [r0, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	mov		r10, r3
	orr		r0, r3
	str		r0, [r6, #0x48]
	mov		r5, #0x8
	strh	r5, [r6, #0x38]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_08317fe8
	ldr		r1, [r7, #0x0]
	ldr		r2, [r7, #0x4]
	add		r0, r7, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	add		r3, r4, #0x0
	bl		sub_083181a8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	add		r0, r7, #0x0
	add		r0, #0x5a
	mov		r1, r8
	strh	r1, [r0, #0x0]
	ldr		r0, [r7, #0x48]
	mov		r2, r10
	orr		r0, r2
	str		r0, [r7, #0x48]
	strh	r5, [r7, #0x38]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_08317fe8
	lsl		r4, r4, #0x10
	ldr		r3, _08318460
	mov		r0, #0x80
	lsl		r0, r0, #0x18
	add		r4, r4, r0
	asr		r4, r4, #0x10
	add		r1, r4, #0x0
	cmp		r4, #0x0
	bge		_08318400
	add		r1, #0x3f
_08318400:
	asr		r2, r1, #0x6
	ldr		r1, _08318464
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r3
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_0831841a
	ldr		r1, _08318468
	add		r0, r0, r1
_0831841a:
	asr		r0, r0, #0xf
	add		r1, r7, #0x0
	add		r1, #0x4e
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r1, _08318464
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_0831843e
	ldr		r2, _08318468
	add		r0, r0, r2
_0831843e:
	asr		r1, r0, #0xf
	add		r0, r7, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
	ldr		r4, _0831846c
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x0
	bl		sub_0830fbb8
	str		r6, [r0, #0x54]
	mov		r0, #0x0
	add		r1, r4, #0x0
	b		_083184f8

.incbin "base.gba", 0x31845A, 0x2

_0831845c:	.4byte 0x00008007
_08318460:	.4byte 0x0202A9A0
_08318464:	.4byte 0x000003FF
_08318468:	.4byte 0x00007FFF
_0831846c:	.4byte 0x0202C200

_08318470:
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_083184ac
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _083184a8
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
	bl		sub_08317fe8
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x7a
	mov		r6, #0x0
	ldrsh	r0, [r0, r6]
	b		_083184e8

.incbin "base.gba", 0x3184A6, 0x2

_083184a8:	.4byte 0x00008007

_083184ac:
	mov		r3, #0x10
	add		r0, r3, #0x0
	and		r0, r4
	cmp		r0, #0x0
	beq		_0831850c
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318560
_083184be:
	add		r1, r7, #0x0
	add		r1, #0x5a
	ldr		r0, _08318504
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
	bl		sub_08317fe8
	ldr		r1, [r6, #0x0]
	ldr		r2, [r6, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x7a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
_083184e8:
	str		r0, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	bl		sub_083181a8
	ldr		r1, _08318508
	mov		r0, #0x0
_083184f8:
	mov		r2, #0x0
	bl		sub_0830fbb8
	str		r7, [r0, #0x54]
	b		_08318960

.incbin "base.gba", 0x318502, 0x2

_08318504:	.4byte 0x00008007
_08318508:	.4byte 0x0202C200

_0831850c:
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318560
_08318514:
	add		r1, r6, #0x0
	add		r1, #0x5a
	ldr		r0, _08318558
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
	bl		sub_08317fe8
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
	bl		sub_083181a8
	ldr		r1, _0831855c
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_0830fbb8
	str		r6, [r0, #0x54]
	b		_08318960

_08318558:	.4byte 0x00008007
_0831855c:	.4byte 0x0202C200

_08318560:
	ldrh	r1, [r5, #0x0]
	mov		r3, #0x20
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r9, r0
	cmp		r0, #0x0
	beq		_083185c8
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	cmp		r0, #0x0
	bne		_0831861c
	mov		r0, #0x5a
	add		r0, r0, r7
	mov		r9, r0
	ldr		r1, _083185c4
	mov		r10, r1
	mov		r2, r10
	strh	r2, [r0, #0x0]
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
	bl		sub_083180c0
	mov		r1, r10
	mov		r0, r9
	strh	r1, [r0, #0x0]
	ldr		r0, [r7, #0x48]
	orr		r0, r5
	str		r0, [r7, #0x48]
	strh	r4, [r7, #0x38]
	add		r0, r7, #0x0
	b		_08318610

.incbin "base.gba", 0x3185C2, 0x2

_083185c4:	.4byte 0x00008007

_083185c8:
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831861c
	mov		r2, #0x5a
	add		r2, r2, r6
	mov		r8, r2
	ldr		r3, _08318618
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
	bl		sub_083180c0
	mov		r2, r10
	mov		r1, r8
	strh	r2, [r1, #0x0]
	ldr		r0, [r6, #0x48]
	orr		r0, r5
	str		r0, [r6, #0x48]
	strh	r4, [r6, #0x38]
	add		r0, r6, #0x0
_08318610:
	mov		r1, #0x3
	bl		sub_083178b8
	b		_08318960

_08318618:	.4byte 0x00008007

_0831861c:
	add		r0, r6, #0x0
	bl		sub_08317f90
	str		r0, [sp, #0x10]
	add		r0, r7, #0x0
	bl		sub_08317f90
	mov		r10, r0
	ldr		r3, [sp, #0x10]
	cmp		r3, r10
	bge		_08318640
	add		r0, r6, #0x0
	add		r1, r3, #0x0
	add		r6, r7, #0x0
	add		r7, r0, #0x0
	mov		r0, r10
	str		r0, [sp, #0x10]
	mov		r10, r1
_08318640:
	add		r0, r6, #0x0
	add		r0, #0x5a
	ldr		r3, _083186dc
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
	bl		sub_083178b8
	add		r0, r7, #0x0
	mov		r1, #0x3
	bl		sub_083178b8
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
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _083186e0
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_083186e8
	mov		r5, #0x80
	lsl		r5, r5, #0x6
	cmp		r1, r5
	bgt		_083186ce
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_083186ce:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _083186e4
	cmp		r0, r1
	ble		_0831870e
	add		r0, r4, r5
	b		_0831870a

_083186dc:	.4byte 0x00008007
_083186e0:	.4byte 0xFFFF8000
_083186e4:	.4byte 0x5FFF0000

_083186e8:
	ldr		r0, _08318848
	cmp		r1, r0
	blt		_083186f8
	mov		r2, #0xa0
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_083186f8:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _0831884c
	cmp		r0, r1
	bgt		_0831870e
	mov		r3, #0xe0
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_0831870a:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0831870e:
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r1, r4, #0x0
	str		r0, [sp, #0x14]
	cmp		r4, #0x0
	bge		_0831871c
	add		r1, #0x3f
_0831871c:
	asr		r5, r1, #0x6
	ldr		r0, _08318850
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _08318854
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	sub		r0, r2, r5
	ldr		r3, _08318850
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r2, _08318854
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r12, r0
	add		r3, r6, #0x0
	add		r3, #0x4e
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	mov		r9, r0
	mov		r0, r9
	mul		r0, r1
	str		r0, [sp, #0x28]
	add		r1, r6, #0x0
	add		r1, #0x50
	mov		r0, #0x0
	ldrsh	r2, [r1, r0]
	mov		r8, r2
	mov		r2, r12
	mov		r0, r8
	mul		r0, r2
	ldr		r2, [sp, #0x28]
	sub		r0, r2, r0
	str		r3, [sp, #0x18]
	str		r1, [sp, #0x20]
	cmp		r0, #0x0
	bge		_08318772
	ldr		r3, _08318858
	add		r0, r0, r3
_08318772:
	asr		r0, r0, #0xf
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	ldr		r1, _08318850
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r2, _08318854
	add		r0, r0, r2
	ldr		r5, [r0, #0x0]
	mov		r3, r12
	mov		r1, r9
	mul		r1, r3
	mov		r0, r8
	mul		r0, r5
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318798
	ldr		r1, _08318858
	add		r0, r0, r1
_08318798:
	asr		r0, r0, #0xf
	str		r0, [sp, #0x8]
	add		r2, r7, #0x0
	add		r2, #0x4e
	str		r2, [sp, #0x30]
	mov		r0, #0x0
	ldrsh	r3, [r2, r0]
	mov		r9, r3
	mov		r1, r9
	mul		r1, r5
	str		r1, [sp, #0x28]
	add		r1, r7, #0x0
	add		r1, #0x50
	mov		r3, #0x0
	ldrsh	r2, [r1, r3]
	mov		r8, r2
	mov		r2, r12
	mov		r0, r8
	mul		r0, r2
	ldr		r3, [sp, #0x28]
	sub		r2, r3, r0
	ldr		r0, [sp, #0x30]
	str		r0, [sp, #0x1C]
	str		r1, [sp, #0x24]
	cmp		r2, #0x0
	bge		_083187d0
	ldr		r1, _08318858
	add		r2, r2, r1
_083187d0:
	asr		r2, r2, #0xf
	str		r2, [sp, #0xC]
	mov		r2, r12
	mov		r1, r9
	mul		r1, r2
	mov		r0, r8
	mul		r0, r5
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_083187e8
	ldr		r3, _08318858
	add		r0, r0, r3
_083187e8:
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
	bl		sub_08327340
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
	bl		sub_08327340
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x58
	add		r1, r7, #0x0
	add		r1, #0x58
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	cmp		r0, r1
	beq		_08318860
	sub		r1, r5, r4
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bgt		_08318886
	ldr		r3, _0831885c
	add		r4, r5, r3
	b		_08318886

_08318848:	.4byte 0xFFFFE000
_0831884c:	.4byte 0xFFFFA000
_08318850:	.4byte 0x000003FF
_08318854:	.4byte 0x0202A9A0
_08318858:	.4byte 0x00007FFF
_0831885c:	.4byte 0xFFFFFE00

_08318860:
	sub		r1, r5, r4
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	cmp		r1, r0
	bgt		_08318886
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
	ldr		r1, _08318970
	add		r4, r0, r1
_08318886:
	ldr		r7, _08318974
	ldr		r2, [sp, #0x14]
	asr		r3, r2, #0x10
	add		r0, r3, #0x0
	cmp		r3, #0x0
	bge		_08318894
	add		r0, #0x3f
_08318894:
	asr		r2, r0, #0x6
	ldr		r6, _08318978
	add		r1, r6, #0x0
	add		r0, r2, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r7
	ldr		r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r2
	ldr		r6, _08318978
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
	bge		_083188c8
	ldr		r1, _0831897c
	add		r0, r0, r1
_083188c8:
	asr		r0, r0, #0xf
	mov		r8, r0
	add		r0, r2, #0x0
	mov		r2, r10
	and		r0, r2
	lsl		r0, r0, #0x2
	ldr		r6, _08318974
	add		r0, r0, r6
	ldr		r2, [r0, #0x0]
	ldr		r0, [sp, #0x8]
	add		r1, r0, #0x0
	mul		r1, r2
	add		r0, r5, #0x0
	mul		r0, r7
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_083188ee
	ldr		r1, _0831897c
	add		r0, r0, r1
_083188ee:
	asr		r6, r0, #0xf
	add		r1, r4, #0x0
	mul		r1, r2
	mov		r0, r9
	mul		r0, r7
	add		r1, r1, r0
	cmp		r1, #0x0
	bge		_08318902
	ldr		r0, _0831897c
	add		r1, r1, r0
_08318902:
	asr		r5, r1, #0xf
	mov		r1, r9
	mul		r1, r2
	add		r0, r4, #0x0
	mul		r0, r7
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318916
	ldr		r1, _0831897c
	add		r0, r0, r1
_08318916:
	asr		r0, r0, #0xf
	mov		r4, #0x80
	lsl		r4, r4, #0x3
	cmp		r8, r4
	ble		_08318922
	mov		r8, r4
_08318922:
	ldr		r3, _08318980
	cmp		r8, r3
	bge		_0831892a
	mov		r8, r3
_0831892a:
	cmp		r6, r4
	ble		_08318930
	add		r6, r4, #0x0
_08318930:
	cmp		r6, r3
	bge		_08318936
	add		r6, r3, #0x0
_08318936:
	cmp		r5, r4
	ble		_0831893c
	add		r5, r4, #0x0
_0831893c:
	cmp		r5, r3
	bge		_08318942
	add		r5, r3, #0x0
_08318942:
	cmp		r0, r4
	ble		_08318948
	add		r0, r4, #0x0
_08318948:
	cmp		r0, r3
	bge		_0831894e
	add		r0, r3, #0x0
_0831894e:
	mov		r3, r8
	ldr		r2, [sp, #0x18]
	strh	r3, [r2, #0x0]
	ldr		r1, [sp, #0x20]
	strh	r6, [r1, #0x0]
	ldr		r2, [sp, #0x1C]
	strh	r5, [r2, #0x0]
	ldr		r3, [sp, #0x24]
	strh	r0, [r3, #0x0]
_08318960:
	add		sp, #0x34
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08318970:	.4byte 0xFFFFFF00
_08318974:	.4byte 0x0202A9A0
_08318978:	.4byte 0x000003FF
_0831897c:	.4byte 0x00007FFF
_08318980:	.4byte 0xFFFFFC00
	thumb_func_end sub_0831830c

	thumb_func_start sub_08318984
sub_08318984:
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
	ble		_083189a6
	b		_08318b58
_083189a6:
	mov		r0, r9
	add		r0, #0x60
	mov		r1, r10
	add		r1, #0x60
	ldrh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x0]
	orr		r0, r2
	cmp		r0, #0x0
	beq		_083189ba
	b		_08318b58
_083189ba:
	mov		r0, r9
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_083189c6
	b		_08318b58
_083189c6:
	mov		r0, r10
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_083189d2
	b		_08318b58
_083189d2:
	mov		r2, r9
	ldr		r0, [r2, #0x8]
	ldr		r1, _08318b68
	cmp		r0, r1
	ble		_083189de
	b		_08318b58
_083189de:
	mov		r2, r10
	ldr		r0, [r2, #0x8]
	cmp		r0, r1
	ble		_083189e8
	b		_08318b58
_083189e8:
	mov		r0, r9
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_083189f6
	b		_08318b58
_083189f6:
	mov		r0, r10
	add		r0, #0x66
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	beq		_08318a04
	b		_08318b58
_08318a04:
	mov		r0, r9
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318a16
	b		_08318b4e
_08318a16:
	mov		r0, r10
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08318a26
	b		_08318b4e
_08318a26:
	ldr		r2, _08318b6c
	mov		r1, r9
	add		r1, #0xbc
	mov		r0, r10
	add		r0, #0xbc
	ldr		r7, [r0, #0x0]
	ldr		r1, [r1, #0x0]
	cmp		r7, r1
	bge		_08318a3a
	add		r7, r1, #0x0
_08318a3a:
	ldr		r1, _08318b70
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	cmp		r9, r0
	bne		_08318ac2
	mov		r2, r9
	ldr		r0, [r2, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318ac2
	add		r0, r7, #0x0
	cmp		r7, #0x0
	bge		_08318a58
	neg		r0, r7
_08318a58:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r1, _08318b74
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r4, r7, #0x0
	cmp		r7, #0x0
	bge		_08318a6c
	neg		r4, r7
_08318a6c:
	asr		r4, r4, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0x3b
	bl		sub_08325e94
	ldr		r2, _08318b78
	mov		r8, r2
	ldr		r5, _08318b7c
	mov		r0, #0xec
	lsl		r0, r0, #0x1
	add		r5, r5, r0
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_08326df4
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326e5c
_08318ac2:
	ldr		r1, _08318b80
	mov		r2, #0xf1
	lsl		r2, r2, #0x3
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	cmp		r10, r0
	bne		_08318b4e
	mov		r1, r10
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318b4e
	add		r0, r7, #0x0
	cmp		r7, #0x0
	bge		_08318ae4
	neg		r0, r7
_08318ae4:
	lsl		r0, r0, #0x6
	lsr		r0, r0, #0x16
	ldr		r2, _08318b74
	add		r0, r0, r2
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r0, r7, #0x0
	cmp		r0, #0x0
	bge		_08318af8
	neg		r0, r0
_08318af8:
	asr		r4, r0, #0x14
	mov		r0, #0x3f
	and		r4, r0
	add		r4, #0xc0
	lsl		r6, r6, #0x10
	asr		r6, r6, #0x10
	mov		r0, #0x3b
	bl		sub_08325e94
	ldr		r0, _08318b78
	mov		r8, r0
	ldr		r5, _08318b7c
	mov		r1, #0xec
	lsl		r1, r1, #0x1
	add		r5, r5, r1
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r4, #0x0
	bl		sub_08326df4
	ldrh	r1, [r5, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r8
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326e5c
_08318b4e:
	mov		r0, r9
	mov		r1, r10
	ldr		r2, [sp, #0x0]
	bl		sub_0831830c
_08318b58:
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08318b68:	.4byte 0x0004FFFF
_08318b6c:	.4byte 0x030031D0
_08318b70:	.4byte 0x000007AC
_08318b74:	.4byte 0xFFFFFE00
_08318b78:	.4byte 0x0202E890
_08318b7c:	.4byte 0x0202E8F0
_08318b80:	.4byte 0x030031F4
	thumb_func_end sub_08318984

	thumb_func_start sub_08318b84
sub_08318b84:
	mov		r1, #0x3
	strh	r1, [r0, #0x38]
	add		r0, #0xb4
	ldrh	r2, [r0, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r1, r3, #0x0
	orr		r1, r2
	strh	r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_08318b84

	thumb_func_start sub_08318b98
sub_08318b98:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	ldr		r0, _08318bc4
	add		r7, r0, #0x0
	add		r7, #0x24
	add		r4, r6, #0x0
	ldrh	r1, [r6, #0x10]
	ldr		r0, _08318bc8
	cmp		r1, r0
	bne		_08318bec
	add		r2, r5, #0x0
	add		r2, #0x4e
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	ble		_08318bcc
	add		r3, r0, #0x0
	b		_08318bce

_08318bc4:	.4byte 0x030031D0
_08318bc8:	.4byte 0x00008403

_08318bcc:
	add		r3, r1, #0x0
_08318bce:
	add		r2, r5, #0x0
	add		r2, #0x50
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	cmp		r0, r1
	ble		_08318be0
	add		r1, r0, #0x0
_08318be0:
	lsl		r0, r3, #0x7
	str		r0, [r4, #0x28]
	lsl		r0, r1, #0x7
	str		r0, [r4, #0x2c]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
_08318bec:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08317fe8
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r6, #0x0
	add		r0, #0x71
	ldrb	r3, [r0, #0x0]
	lsl		r3, r3, #0x3
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	add		r0, r5, #0x0
	bl		sub_083180c0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318c60
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_08318c60
	mov		r0, #0x45
	bl		sub_08325e94
	ldr		r5, _08318c68
	ldr		r4, _08318c6c
	mov		r0, #0x8a
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_08318c60:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08318c68:	.4byte 0x0202E890
_08318c6c:	.4byte 0x0202E8F0
	thumb_func_end sub_08318b98

	thumb_func_start sub_08318c70
sub_08318c70:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r6, _08318d24
	add		r7, r6, #0x0
	add		r7, #0x24
	add		r0, #0x60
	add		r1, #0x50
	ldrh	r2, [r0, #0x0]
	ldrh	r0, [r1, #0x0]
	orr		r0, r2
	cmp		r0, #0x0
	beq		_08318c8c
	b		_08318db8
_08318c8c:
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_08318c98
	b		_08318db8
_08318c98:
	ldr		r0, [r4, #0x8]
	ldr		r1, _08318d28
	cmp		r0, r1
	ble		_08318ca2
	b		_08318db8
_08318ca2:
	ldr		r0, [r5, #0x8]
	cmp		r0, r1
	ble		_08318caa
	b		_08318db8
_08318caa:
	add		r0, r4, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_08318cb8
	b		_08318db8
_08318cb8:
	ldrh	r3, [r5, #0x10]
	ldr		r0, _08318d2c
	cmp		r3, r0
	bne		_08318cc2
	b		_08318db8
_08318cc2:
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	beq		_08318d3c
	ldr		r1, _08318d30
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08318db8
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_08318db8
	mov		r0, #0x2b
	bl		sub_08325e94
	ldr		r5, _08318d34
	ldr		r4, _08318d38
	mov		r2, #0xac
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
	b		_08318db8

_08318d24:	.4byte 0x030031D0
_08318d28:	.4byte 0x00041FFF
_08318d2c:	.4byte 0x00008003
_08318d30:	.4byte 0x000007AC
_08318d34:	.4byte 0x0202E890
_08318d38:	.4byte 0x0202E8F0

_08318d3c:
	add		r2, r4, #0x0
	add		r2, #0x5a
	ldr		r0, _08318d6c
	strh	r0, [r2, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
	ldr		r0, _08318d70
	cmp		r3, r0
	bne		_08318d74
	ldrh	r1, [r2, #0x0]
	sub		r0, #0x2
	and		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08318b84
	b		_08318db8

.incbin "base.gba", 0x318D6A, 0x2

_08318d6c:	.4byte 0x00008007
_08318d70:	.4byte 0x00008001

_08318d74:
	cmp		r3, r0
	blt		_08318db8
	ldr		r0, _08318da0
	cmp		r3, r0
	bgt		_08318db8
	sub		r0, #0x2
	cmp		r3, r0
	blt		_08318db8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08318b98
	ldr		r1, [r5, #0x54]
	cmp		r1, r4
	beq		_08318dac
	ldr		r2, _08318da4
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bne		_08318dac
	ldr		r1, _08318da8
	b		_08318dae

_08318da0:	.4byte 0x00008403
_08318da4:	.4byte 0x000007AC
_08318da8:	.4byte 0x0202C1C0

_08318dac:
	ldr		r1, _08318dc0
_08318dae:
	mov		r0, #0x0
	mov		r2, #0x0
	bl		sub_0830fbb8
	str		r4, [r0, #0x54]
_08318db8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x318DBE, 0x2

_08318dc0:	.4byte 0x0202C1E8
	thumb_func_end sub_08318c70

	thumb_func_start sub_08318dc4
sub_08318dc4:
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
	bge		_08318de2
	ldr		r4, _08318e40
	add		r0, r0, r4
_08318de2:
	asr		r0, r0, #0x10
	sub		r2, r2, r0
	add		r0, r6, #0x0
	add		r0, #0xf0
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	ldr		r1, [r1, #0x4]
	cmp		r1, #0x0
	bge		_08318df8
	ldr		r4, _08318e40
	add		r1, r1, r4
_08318df8:
	asr		r1, r1, #0x10
	sub		r1, r0, r1
	lsl		r0, r2, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r6, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _08318e44
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_08318e4c
	mov		r5, #0x80
	lsl		r5, r5, #0x4
	cmp		r1, r5
	bgt		_08318e32
	mov		r1, #0xf0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08318e32:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _08318e48
	cmp		r0, r1
	ble		_08318e72
	add		r0, r4, r5
	b		_08318e6e

_08318e40:	.4byte 0x0000FFFF
_08318e44:	.4byte 0xFFFF8000
_08318e48:	.4byte 0x77FF0000

_08318e4c:
	ldr		r0, _08318f78
	cmp		r1, r0
	blt		_08318e5c
	mov		r2, #0x88
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08318e5c:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _08318f7c
	cmp		r0, r1
	bgt		_08318e72
	mov		r3, #0xf8
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_08318e6e:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08318e72:
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08318e7e
	add		r0, #0x3f
_08318e7e:
	asr		r5, r0, #0x6
	ldr		r0, _08318f80
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	and		r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _08318f84
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	str		r5, [sp, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	mov		r10, r2
	sub		r0, r2, r5
	ldr		r3, _08318f80
	mov		r9, r3
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r2, _08318f84
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
	bge		_08318ed2
	ldr		r1, _08318f88
	add		r0, r0, r1
_08318ed2:
	asr		r2, r0, #0xf
	add		r0, r5, #0x0
	mov		r3, r9
	and		r0, r3
	lsl		r0, r0, #0x2
	ldr		r6, _08318f84
	add		r0, r0, r6
	ldr		r6, [r0, #0x0]
	mov		r1, r8
	mul		r1, r7
	mov		r0, r12
	mul		r0, r6
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318ef4
	ldr		r1, _08318f88
	add		r0, r0, r1
_08318ef4:
	asr		r5, r0, #0xf
	lsr		r0, r0, #0x1f
	add		r0, r5, r0
	asr		r5, r0, #0x1
	neg		r0, r2
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r2, r0, #0x1
	cmp		r2, #0xff
	bgt		_08318f0a
	mov		r2, r10
_08318f0a:
	add		r1, r2, #0x0
	mul		r1, r6
	add		r0, r5, #0x0
	mul		r0, r7
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318f1c
	ldr		r3, _08318f88
	add		r0, r0, r3
_08318f1c:
	asr		r3, r0, #0xf
	mov		r4, r10
	ldr		r1, [sp, #0x0]
	sub		r0, r4, r1
	mov		r4, r9
	and		r0, r4
	lsl		r0, r0, #0x2
	ldr		r1, _08318f84
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	mul		r1, r6
	mul		r0, r2
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318f40
	ldr		r2, _08318f88
	add		r0, r0, r2
_08318f40:
	asr		r0, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_08318f4c
	add		r3, r2, #0x0
_08318f4c:
	ldr		r1, _08318f8c
	cmp		r3, r1
	bge		_08318f54
	add		r3, r1, #0x0
_08318f54:
	cmp		r0, r2
	ble		_08318f5a
	add		r0, r2, #0x0
_08318f5a:
	cmp		r0, r1
	bge		_08318f60
	add		r0, r1, #0x0
_08318f60:
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

_08318f78:	.4byte 0xFFFFF800
_08318f7c:	.4byte 0xFFFF8800
_08318f80:	.4byte 0x000003FF
_08318f84:	.4byte 0x0202A9A0
_08318f88:	.4byte 0x00007FFF
_08318f8c:	.4byte 0xFFFFFC00
	thumb_func_end sub_08318dc4

	thumb_func_start sub_08318f90
sub_08318f90:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, [r5, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_08318fa4
	ldr		r1, _08319034
	add		r0, r0, r1
_08318fa4:
	asr		r3, r0, #0x10
	ldr		r1, [r5, #0x4]
	ldr		r0, [r2, #0x4]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_08318fb4
	ldr		r0, _08319034
	add		r1, r1, r0
_08318fb4:
	add		r0, r3, #0x0
	asr		r1, r1, #0x10
	bl		sub_0830e808
	ldr		r6, _08319038
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_08318fca
	add		r1, #0x3f
_08318fca:
	asr		r4, r1, #0x6
	ldr		r1, _0831903c
	add		r0, r1, #0x0
	add		r1, r4, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_08318fe4
	ldr		r1, _08319040
	add		r0, r0, r1
_08318fe4:
	asr		r3, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r4
	ldr		r1, _0831903c
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x9
	neg		r0, r0
	cmp		r0, #0x0
	bge		_08319002
	ldr		r1, _08319040
	add		r0, r0, r1
_08319002:
	asr		r1, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r3, r0
	ble		_0831900e
	add		r3, r0, #0x0
_0831900e:
	cmp		r1, r0
	ble		_08319014
	add		r1, r0, #0x0
_08319014:
	ldr		r0, _08319044
	cmp		r3, r0
	bge		_0831901c
	add		r3, r0, #0x0
_0831901c:
	cmp		r1, r0
	bge		_08319022
	add		r1, r0, #0x0
_08319022:
	add		r0, r5, #0x0
	add		r0, #0x4e
	strh	r3, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x319032, 0x2

_08319034:	.4byte 0x0000FFFF
_08319038:	.4byte 0x0202A9A0
_0831903c:	.4byte 0x000003FF
_08319040:	.4byte 0x00007FFF
_08319044:	.4byte 0xFFFFFC00
	thumb_func_end sub_08318f90

	thumb_func_start sub_08319048
sub_08319048:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r1, _08319064
	add		r1, #0x24
	bl		sub_08317fe8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08318dc4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08319064:	.4byte 0x030031D0
	thumb_func_end sub_08319048

	thumb_func_start sub_08319068
sub_08319068:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	ldr		r1, [r2, #0x8]
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	cmp		r1, r0
	ble		_0831907e
	ldr		r0, [r2, #0x30]
	cmp		r0, #0x0
	blt		_083190a4
_0831907e:
	add		r0, r4, #0x0
	bl		sub_0831827c
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
	b		_083190e4
_083190a4:
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
	ldr		r0, _083190ec
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0xe0
	lsl		r0, r0, #0x7
	strh	r0, [r4, #0x38]
	add		r1, r4, #0x0
	add		r1, #0x64
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x35
	bl		sub_08325f60
	add		r0, r4, #0x0
	mov		r1, #0x5
	bl		sub_08317658
	add		r0, r4, #0x0
	mov		r1, #0x4
	bl		sub_083178b8
_083190e4:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3190EA, 0x2

_083190ec:	.4byte 0x0000FFD3
	thumb_func_end sub_08319068

	thumb_func_start sub_083190f0
sub_083190f0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r1, _0831910c
	add		r1, #0x24
	bl		sub_08317fe8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08318f90
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0831910c:	.4byte 0x030031D0

.incbin "base.gba", 0x319110, 0x10
	thumb_func_end sub_083190f0

	thumb_func_start sub_08319120
sub_08319120:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r1, _0831913c
	add		r1, #0x24
	bl		sub_08317fe8
	add		r4, #0x68
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r4, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31913A, 0x2

_0831913c:	.4byte 0x030031D0
	thumb_func_end sub_08319120

	thumb_func_start sub_08319140
sub_08319140:
	push	{ r4, lr }
	add		r4, r0, #0x0
	add		r2, r1, #0x0
	ldrh	r1, [r4, #0x38]
	cmp		r1, #0x1
	ble		_0831914e
	b		_083192b4
_0831914e:
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_08319158
	b		_083192b4
_08319158:
	add		r0, r4, #0x0
	add		r0, #0x66
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08319166
	b		_083192b4
_08319166:
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp		r0, #0x0
	beq		_08319184
	ldr		r0, _0831917c
	ldr		r1, _08319180
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_083192b4

_0831917c:	.4byte 0x030031D0
_08319180:	.4byte 0x000007AC

_08319184:
	ldrh	r3, [r2, #0x10]
	ldr		r0, _083191b4
	cmp		r3, r0
	bne		_0831918e
	b		_083192b4
_0831918e:
	cmp		r1, #0x0
	beq		_083191bc
	add		r1, r4, #0x0
	add		r1, #0x5a
	ldr		r0, _083191b8
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
	add		r0, r4, #0x0
	add		r1, r2, #0x0
	bl		sub_08318f90
	b		_083192b4

.incbin "base.gba", 0x3191B2, 0x2

_083191b4:	.4byte 0x00001007
_083191b8:	.4byte 0x00008007

_083191bc:
	add		r1, r4, #0x0
	add		r1, #0x5a
	ldr		r0, _083191e4
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	orr		r0, r1
	str		r0, [r4, #0x48]
	mov		r0, #0x8
	strh	r0, [r4, #0x38]
	ldr		r1, _083191e8
	add		r0, r3, r1
	cmp		r0, #0x1d
	bhi		_083192b4
	lsl		r0, r0, #0x2
	ldr		r1, _083191ec
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_083191e4:	.4byte 0x00008007
_083191e8:	.4byte 0xFFFFF000
_083191ec:	.4byte 0x020131F0

.incbin "base.gba", 0x3191F0, 0xC4

_083192b4:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3192BA, 0x2
	thumb_func_end sub_08319140

	thumb_func_start sub_083192bc
sub_083192bc:
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
	ldr		r2, _0831933c
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
	bl		sub_0830e808
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r5, #0x0
	add		r0, #0x7a
	ldrh	r4, [r0, #0x0]
	ldr		r0, _08319340
	add		r3, r4, r0
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r1, r0, #0x10
	cmp		r1, #0x0
	blt		_08319348
	mov		r6, #0x80
	lsl		r6, r6, #0x4
	cmp		r1, r6
	bgt		_0831932e
	mov		r1, #0xf0
	lsl		r1, r1, #0x7
	add		r0, r4, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0831932e:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	ldr		r1, _08319344
	cmp		r0, r1
	ble		_0831936e
	add		r0, r4, r6
	b		_0831936a

_0831933c:	.4byte 0x00008007
_08319340:	.4byte 0xFFFF8000
_08319344:	.4byte 0x77FF0000

_08319348:
	ldr		r0, _08319470
	cmp		r1, r0
	blt		_08319358
	mov		r2, #0x88
	lsl		r2, r2, #0x8
	add		r0, r4, r2
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_08319358:
	sub		r0, r3, r2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	ldr		r1, _08319474
	cmp		r0, r1
	bgt		_0831936e
	mov		r3, #0xf8
	lsl		r3, r3, #0x8
	add		r0, r4, r3
_0831936a:
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0831936e:
	ldr		r4, _08319478
	mov		r10, r4
	lsl		r0, r2, #0x10
	asr		r4, r0, #0x10
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_0831937e
	add		r0, #0x3f
_0831937e:
	asr		r6, r0, #0x6
	ldr		r0, _0831947c
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
	ldr		r3, _0831947c
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
	bge		_083193cc
	ldr		r1, _08319480
	add		r0, r0, r1
_083193cc:
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
	bge		_083193ec
	ldr		r1, _08319480
	add		r0, r0, r1
_083193ec:
	asr		r5, r0, #0xf
	lsr		r0, r0, #0x1f
	add		r0, r5, r0
	asr		r5, r0, #0x1
	neg		r0, r2
	lsr		r1, r0, #0x1f
	add		r0, r0, r1
	asr		r2, r0, #0x1
	cmp		r2, #0xff
	bgt		_08319402
	mov		r2, r9
_08319402:
	add		r1, r2, #0x0
	mul		r1, r6
	add		r0, r5, #0x0
	mul		r0, r7
	add		r0, r1, r0
	cmp		r0, #0x0
	bge		_08319414
	ldr		r3, _08319480
	add		r0, r0, r3
_08319414:
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
	bge		_08319436
	ldr		r1, _08319480
	add		r0, r0, r1
_08319436:
	asr		r0, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_08319442
	add		r3, r2, #0x0
_08319442:
	ldr		r1, _08319484
	cmp		r3, r1
	bge		_0831944a
	add		r3, r1, #0x0
_0831944a:
	cmp		r0, r2
	ble		_08319450
	add		r0, r2, #0x0
_08319450:
	cmp		r0, r1
	bge		_08319456
	add		r0, r1, #0x0
_08319456:
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

.incbin "base.gba", 0x31946E, 0x2

_08319470:	.4byte 0xFFFFF800
_08319474:	.4byte 0xFFFF8800
_08319478:	.4byte 0x0202A9A0
_0831947c:	.4byte 0x000003FF
_08319480:	.4byte 0x00007FFF
_08319484:	.4byte 0xFFFFFC00
	thumb_func_end sub_083192bc

	thumb_func_start sub_08319488
sub_08319488:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	add		r1, r4, #0x0
	add		r1, #0x5a
	ldr		r0, _08319544
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
	bge		_083194ae
	ldr		r1, _08319548
	add		r0, r0, r1
_083194ae:
	asr		r0, r0, #0x10
	sub		r3, r0, r3
	ldr		r0, [r4, #0x4]
	cmp		r0, #0x0
	bge		_083194bc
	ldr		r1, _08319548
	add		r0, r0, r1
_083194bc:
	asr		r0, r0, #0x10
	sub		r2, r0, r2
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	bl		sub_0830e808
	ldr		r6, _0831954c
	lsl		r0, r0, #0x10
	asr		r2, r0, #0x10
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_083194da
	add		r1, #0x3f
_083194da:
	asr		r5, r1, #0x6
	ldr		r1, _08319550
	add		r0, r1, #0x0
	add		r1, r5, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r6
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x9
	cmp		r0, #0x0
	bge		_083194f4
	ldr		r1, _08319554
	add		r0, r0, r1
_083194f4:
	asr		r3, r0, #0xf
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r5
	ldr		r1, _08319550
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x9
	neg		r0, r0
	cmp		r0, #0x0
	bge		_08319512
	ldr		r1, _08319554
	add		r0, r0, r1
_08319512:
	asr		r1, r0, #0xf
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	cmp		r3, r2
	ble		_0831951e
	add		r3, r2, #0x0
_0831951e:
	ldr		r0, _08319558
	cmp		r3, r0
	bge		_08319526
	add		r3, r0, #0x0
_08319526:
	cmp		r1, r2
	ble		_0831952c
	add		r1, r2, #0x0
_0831952c:
	cmp		r1, r0
	bge		_08319532
	add		r1, r0, #0x0
_08319532:
	add		r0, r4, #0x0
	add		r0, #0x4e
	strh	r3, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x319542, 0x2

_08319544:	.4byte 0x00008007
_08319548:	.4byte 0x0000FFFF
_0831954c:	.4byte 0x0202A9A0
_08319550:	.4byte 0x000003FF
_08319554:	.4byte 0x00007FFF
_08319558:	.4byte 0xFFFFFC00
	thumb_func_end sub_08319488

	thumb_func_start sub_0831955c
sub_0831955c:
	push	{ r4, lr }
	ldr		r0, _083195a4
	mov		r3, #0xe2
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	ldr		r3, [r0, #0x8]
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_08319570
	add		r0, r1, #0x7
_08319570:
	asr		r1, r0, #0x3
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0831957a
	add		r0, r2, #0x7
_0831957a:
	asr		r2, r0, #0x3
	cmp		r3, #0x0
	beq		_083195b2
	ldr		r4, _083195a8
_08319582:
	ldr		r0, [r3, #0x0]
	cmp		r0, #0x0
	bge		_0831958a
	add		r0, r0, r4
_0831958a:
	asr		r0, r0, #0x13
	cmp		r0, r1
	bne		_083195ac
	ldr		r0, [r3, #0x4]
	cmp		r0, #0x0
	bge		_08319598
	add		r0, r0, r4
_08319598:
	asr		r0, r0, #0x13
	cmp		r0, r2
	bne		_083195ac
	add		r0, r3, #0x0
	b		_083195b4

.incbin "base.gba", 0x3195A2, 0x2

_083195a4:	.4byte 0x030031D0
_083195a8:	.4byte 0x0007FFFF

_083195ac:
	ldr		r3, [r3, #0x3c]
	cmp		r3, #0x0
	bne		_08319582
_083195b2:
	mov		r0, #0x0
_083195b4:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x3195BA, 0x2
	thumb_func_end sub_0831955c

	thumb_func_start sub_083195bc
sub_083195bc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r7, r2, #0x0
	ldrh	r0, [r5, #0x38]
	mov		r8, r0
	cmp		r0, #0x1
	bgt		_08319646
	add		r0, r5, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x6
	beq		_08319646
	add		r0, r5, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_08319646
	add		r0, r5, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_0831960a
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_0831955c
	add		r4, r0, #0x0
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08319646
	add		r1, r5, #0x0
	bl		sub_0832730c
	b		_08319646
_0831960a:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	bl		sub_0831955c
	add		r4, r0, #0x0
	ldr		r0, [r4, #0x60]
	cmp		r0, #0x0
	bne		_08319646
	mov		r0, r8
	cmp		r0, #0x0
	beq		_0831962e
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	bl		sub_08319488
	b		_08319646
_0831962e:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	bl		sub_083192bc
	ldr		r2, [r4, #0x18]
	cmp		r2, #0x0
	beq		_08319646
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0832730c
_08319646:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083195bc

	thumb_func_start sub_08319650
sub_08319650:
	push	{ r4, r5, lr }
	add		r4, r1, #0x0
	ldr		r0, _08319690
	mov		r1, #0xe2
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r1, [r0, #0x8]
	add		r0, r4, #0x0
	cmp		r4, #0x0
	bge		_08319666
	add		r0, r4, #0x7
_08319666:
	asr		r4, r0, #0x3
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_08319670
	add		r0, r2, #0x7
_08319670:
	asr		r2, r0, #0x3
	cmp		r1, #0x0
	beq		_083196c4
	ldr		r5, _08319694
_08319678:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bge		_08319680
	add		r0, r0, r5
_08319680:
	asr		r0, r0, #0x13
	sub		r3, r4, r0
	cmp		r3, #0x0
	blt		_08319698
	cmp		r3, #0x4
	bgt		_083196be
	b		_0831969e

.incbin "base.gba", 0x31968E, 0x2

_08319690:	.4byte 0x030031D0
_08319694:	.4byte 0x0007FFFF

_08319698:
	sub		r0, r0, r4
	cmp		r0, #0x4
	bgt		_083196be
_0831969e:
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_083196a6
	add		r0, r0, r5
_083196a6:
	asr		r0, r0, #0x13
	sub		r3, r2, r0
	cmp		r3, #0x0
	blt		_083196b4
	cmp		r3, #0x4
	bgt		_083196be
	b		_083196ba
_083196b4:
	sub		r0, r0, r2
	cmp		r0, #0x4
	bgt		_083196be
_083196ba:
	add		r0, r1, #0x0
	b		_083196c6
_083196be:
	ldr		r1, [r1, #0x3c]
	cmp		r1, #0x0
	bne		_08319678
_083196c4:
	mov		r0, #0x0
_083196c6:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08319650

	thumb_func_start sub_083196cc
sub_083196cc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	ldr		r0, _0831981c
	add		r0, #0x24
	mov		r8, r0
	add		r0, r4, #0x0
	add		r0, #0x58
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_083196ea
	b		_08319812
_083196ea:
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	beq		_083196f8
	b		_08319812
_083196f8:
	add		r0, r4, #0x0
	add		r0, #0x66
	mov		r2, #0x0
	ldrsh	r5, [r0, r2]
	cmp		r5, #0x0
	beq		_08319706
	b		_08319812
_08319706:
	ldr		r0, [r4, #0x0]
	add		r6, r0, #0x0
	ldr		r3, [r4, #0x4]
	add		r7, r3, #0x0
	add		r1, r0, #0x0
	cmp		r0, #0x0
	bge		_08319718
	ldr		r2, _08319820
	add		r1, r0, r2
_08319718:
	asr		r1, r1, #0x10
	add		r2, r3, #0x0
	cmp		r3, #0x0
	bge		_08319724
	ldr		r0, _08319820
	add		r2, r3, r0
_08319724:
	asr		r2, r2, #0x10
	add		r0, r4, #0x0
	bl		sub_08319650
	add		r3, r0, #0x0
	ldrh	r0, [r3, #0x34]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08319812
	add		r1, r4, #0x0
	add		r1, #0x9c
	mov		r2, #0x0
	mov		r0, #0x5c
	strh	r0, [r1, #0x0]
	sub		r1, #0x24
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	sub		r1, #0x16
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x88
	strh	r5, [r0, #0x0]
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r4, #0x48]
	add		r0, r4, #0x0
	add		r0, #0x7e
	strb	r2, [r0, #0x0]
	cmp		r3, #0x0
	beq		_0831979a
	ldr		r0, [r3, #0x0]
	ldr		r1, [r3, #0x4]
	sub		r0, r0, r6
	cmp		r0, #0x0
	bge		_08319780
	ldr		r2, _08319824
	add		r0, r0, r2
_08319780:
	asr		r0, r0, #0xd
	add		r2, r4, #0x0
	add		r2, #0x4e
	strh	r0, [r2, #0x0]
	sub		r0, r1, r7
	cmp		r0, #0x0
	bge		_08319792
	ldr		r1, _08319824
	add		r0, r0, r1
_08319792:
	asr		r1, r0, #0xd
	add		r0, r4, #0x0
	add		r0, #0x50
	strh	r1, [r0, #0x0]
_0831979a:
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08319812
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319812
	mov		r6, #0x0
	mov		r5, #0x0
	ldr		r2, _08319828
	ldr		r3, _0831982c
	mov		r0, #0xcc
	lsl		r0, r0, #0x1
	add		r4, r3, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_083197da
	ldr		r1, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	cmp		r1, r0
	bne		_083197da
	mov		r5, #0x1
_083197da:
	cmp		r5, #0x0
	beq		_08319808
	mov		r4, #0x0
	mov		r1, #0xcc
	lsl		r1, r1, #0x1
	add		r3, r3, r1
	ldrh	r0, [r3, #0x4]
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	ldr		r0, [r1, #0x4]
	cmp		r0, #0x0
	bge		_08319802
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08319802
	mov		r4, #0x1
_08319802:
	cmp		r4, #0x0
	bne		_08319808
	mov		r6, #0x1
_08319808:
	cmp		r6, #0x0
	bne		_08319812
	mov		r0, #0x33
	bl		sub_08325e94
_08319812:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831981c:	.4byte 0x030031D0
_08319820:	.4byte 0x0000FFFF
_08319824:	.4byte 0x00001FFF
_08319828:	.4byte 0x0202E890
_0831982c:	.4byte 0x0202E8F0
	thumb_func_end sub_083196cc

	thumb_func_start sub_08319830
sub_08319830:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	ldr		r0, _08319874
	add		r6, r0, #0x0
	add		r6, #0x24
	add		r1, r4, #0x0
	add		r1, #0x62
	mov		r2, #0x0
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x9c
	ldrh	r0, [r3, #0x0]
	cmp		r0, #0x3b
	bls		_08319878
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x8
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	sub		r0, #0x1
	strh	r0, [r3, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x82
	mov		r3, #0xc0
	lsl		r3, r3, #0x4
	add		r0, r3, #0x0
	ldrh	r3, [r1, #0x0]
	add		r0, r0, r3
	strh	r0, [r1, #0x0]
	add		r5, r2, #0x0
	b		_0831989c

_08319874:	.4byte 0x030031D0

_08319878:
	add		r5, r4, #0x0
	add		r5, #0xb4
	cmp		r0, #0x0
	beq		_083198a6
	ldrh	r1, [r5, #0x0]
	ldr		r0, _08319930
	and		r0, r1
	strh	r0, [r5, #0x0]
	ldrh	r0, [r3, #0x0]
	sub		r0, #0x1
	strh	r0, [r3, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xbc
	str		r2, [r0, #0x0]
	sub		r0, #0x6e
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
_0831989c:
	add		r0, r4, #0x0
	add		r0, #0x9c
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0831992a
_083198a6:
	add		r0, r4, #0x0
	add		r0, #0x4e
	mov		r2, #0x0
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x52
	mov		r0, #0xbc
	lsl		r0, r0, #0x2
	strh	r0, [r1, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	str		r0, [r4, #0x8]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	strh	r0, [r5, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x78
	mov		r1, #0x1
	strb	r1, [r0, #0x0]
	add		r0, #0xc
	strb	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x7e
	mov		r0, #0xc
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x80
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	add		r0, #0x3e
	str		r2, [r0, #0x0]
	add		r1, #0x3e
	mov		r0, #0xf8
	lsl		r0, r0, #0x11
	str		r0, [r1, #0x0]
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_083198fc
	ldr		r0, _08319934
	add		r1, r1, r0
_083198fc:
	lsr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_08319908
	ldr		r3, _08319934
	add		r2, r2, r3
_08319908:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	add		r0, r6, #0x0
	mov		r3, #0x0
	bl		sub_08310f34
	add		r1, r4, #0x0
	add		r1, #0x7c
	strh	r0, [r1, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x7a
	strh	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x56
	strh	r1, [r0, #0x0]
_0831992a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08319930:	.4byte 0x0000FFF7
_08319934:	.4byte 0x0000FFFF
	thumb_func_end sub_08319830

	thumb_func_start sub_08319938
sub_08319938:
	mov		r12, r0
	mov		r3, r12
	add		r3, #0x92
	mov		r0, #0x0
	ldrsh	r2, [r3, r0]
	ldr		r0, _08319968
	cmp		r2, r0
	ble		_08319970
	add		r3, #0x20
	ldrh	r1, [r3, #0x0]
	ldr		r0, _0831996c
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
	b		_083199de

.incbin "base.gba", 0x319966, 0x2

_08319968:	.4byte 0x000005BF
_0831996c:	.4byte 0x0000FFFE

_08319970:
	ldr		r0, _0831999c
	cmp		r2, r0
	bgt		_083199c0
	mov		r2, #0x0
	ldrsh	r0, [r3, r2]
	cmp		r0, r1
	blt		_083199c0
	mov		r0, r12
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_083199a0
	mov		r0, r12
	add		r0, #0xb2
	ldrh	r2, [r0, #0x0]
	mov		r1, #0x1
	orr		r1, r2
	b		_083199aa

.incbin "base.gba", 0x31999A, 0x2

_0831999c:	.4byte 0x000003BF

_083199a0:
	mov		r0, r12
	add		r0, #0xb2
	ldrh	r2, [r0, #0x0]
	ldr		r1, _083199bc
	and		r1, r2
_083199aa:
	strh	r1, [r0, #0x0]
	add		r3, r0, #0x0
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _083199bc
	and		r0, r1
	strh	r0, [r2, #0x0]
	b		_083199d8

_083199bc:	.4byte 0x0000FFFE

_083199c0:
	mov		r3, r12
	add		r3, #0xb2
	ldrh	r2, [r3, #0x0]
	ldr		r1, _083199e4
	add		r0, r1, #0x0
	and		r0, r2
	strh	r0, [r3, #0x0]
	mov		r2, r12
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	and		r1, r0
	strh	r1, [r2, #0x0]
_083199d8:
	ldrh	r1, [r3, #0x0]
	ldr		r0, _083199e8
	and		r0, r1
_083199de:
	strh	r0, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x3199E2, 0x2

_083199e4:	.4byte 0x0000FFFE
_083199e8:	.4byte 0x0000FFFD
	thumb_func_end sub_08319938

	thumb_func_start sub_083199ec
sub_083199ec:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	add		r5, #0x96
	strh	r1, [r5, #0x0]
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	bl		sub_08319938
	ldrh	r1, [r5, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319a28
	add		r0, r4, #0x0
	add		r0, #0x98
	ldrh	r0, [r0, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x92
	cmp		r0, #0x0
	bne		_08319a6c
	ldr		r1, _08319a24
	add		r0, r1, #0x0
	ldrh	r2, [r3, #0x0]
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	b		_08319a6c

_08319a24:	.4byte 0xFFFFFF00

_08319a28:
	add		r5, r4, #0x0
	add		r5, #0x98
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08319a50
	add		r0, r4, #0x0
	add		r0, #0x92
	ldrh	r1, [r0, #0x0]
	add		r1, #0x20
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _08319a4c
	add		r3, r0, #0x0
	cmp		r1, r2
	ble		_08319a7a
	ldrh	r0, [r5, #0x0]
	sub		r0, #0x1
	b		_08319a6a

_08319a4c:	.4byte 0x0FBF0000

_08319a50:
	add		r0, r4, #0x0
	add		r0, #0x92
	ldr		r2, _08319a8c
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _08319a90
	add		r3, r0, #0x0
	cmp		r1, r2
	bgt		_08319a6c
	mov		r0, #0x0
_08319a6a:
	strh	r0, [r5, #0x0]
_08319a6c:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	ldr		r0, _08319a94
	cmp		r1, r0
	ble		_08319a7a
	add		r0, #0x1
	strh	r0, [r3, #0x0]
_08319a7a:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_08319a86
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_08319a86:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08319a8c:	.4byte 0xFFFFFE00
_08319a90:	.4byte 0x0DBF0000
_08319a94:	.4byte 0x00000FBF
	thumb_func_end sub_083199ec

	thumb_func_start sub_08319a98
sub_08319a98:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	mov		r1, #0xe0
	lsl		r1, r1, #0x1
	bl		sub_08319938
	add		r0, r4, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319ad4
	add		r0, r4, #0x0
	add		r0, #0x98
	ldrh	r0, [r0, #0x0]
	add		r3, r4, #0x0
	add		r3, #0x92
	cmp		r0, #0x0
	bne		_08319b20
	ldr		r1, _08319ad0
	add		r0, r1, #0x0
	ldrh	r2, [r3, #0x0]
	add		r0, r0, r2
	strh	r0, [r3, #0x0]
	b		_08319b20

.incbin "base.gba", 0x319ACE, 0x2

_08319ad0:	.4byte 0xFFFFF800

_08319ad4:
	add		r5, r4, #0x0
	add		r5, #0x98
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08319b04
	add		r0, r4, #0x0
	add		r0, #0x92
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _08319b00
	add		r3, r0, #0x0
	cmp		r1, r2
	ble		_08319b2e
	ldrh	r0, [r5, #0x0]
	sub		r0, #0x1
	b		_08319b1e

.incbin "base.gba", 0x319AFE, 0x2

_08319b00:	.4byte 0x0FBF0000

_08319b04:
	add		r0, r4, #0x0
	add		r0, #0x92
	ldr		r2, _08319b40
	add		r1, r2, #0x0
	ldrh	r2, [r0, #0x0]
	add		r1, r1, r2
	strh	r1, [r0, #0x0]
	lsl		r1, r1, #0x10
	ldr		r2, _08319b44
	add		r3, r0, #0x0
	cmp		r1, r2
	bgt		_08319b20
	mov		r0, #0x0
_08319b1e:
	strh	r0, [r5, #0x0]
_08319b20:
	mov		r0, #0x0
	ldrsh	r1, [r3, r0]
	ldr		r0, _08319b48
	cmp		r1, r0
	ble		_08319b2e
	add		r0, #0x1
	strh	r0, [r3, #0x0]
_08319b2e:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_08319b3a
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_08319b3a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08319b40:	.4byte 0xFFFFF000
_08319b44:	.4byte 0x0DBF0000
_08319b48:	.4byte 0x00000FBF
	thumb_func_end sub_08319a98

	thumb_func_start sub_08319b4c
sub_08319b4c:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r0, #0x78
	ldrb	r2, [r0, #0x0]
	cmp		r2, #0x1
	bne		_08319b5a
	b		_08319ca0
_08319b5a:
	cmp		r2, #0x2
	bne		_08319b60
	b		_08319ca0
_08319b60:
	cmp		r2, #0x3
	bne		_08319b66
	b		_08319ca0
_08319b66:
	cmp		r2, #0x4
	bne		_08319b6c
	b		_08319ca0
_08319b6c:
	cmp		r2, #0x5
	bne		_08319b72
	b		_08319ca0
_08319b72:
	cmp		r2, #0x6
	bne		_08319b78
	b		_08319ca0
_08319b78:
	cmp		r2, #0x7
	bne		_08319b84
	add		r0, r3, #0x0
	bl		sub_08319a98
	b		_08319ca0
_08319b84:
	ldr		r0, _08319bd8
	ldr		r1, _08319bdc
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	ldr		r1, _08319be0
	add		r4, r0, r1
	cmp		r2, #0x8
	beq		_08319bba
	add		r0, r3, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xd
	beq		_08319bba
	sub		r0, #0x5
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x2
	bhi		_08319be4
	add		r0, r3, #0x0
	add		r0, #0xb8
	mov		r2, #0x0
	ldrsh	r0, [r0, r2]
	cmp		r0, #0x0
	bne		_08319be4
_08319bba:
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
	bge		_08319ca0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_08319ca0

.incbin "base.gba", 0x319BD6, 0x2

_08319bd8:	.4byte 0x030031D0
_08319bdc:	.4byte 0x00000774
_08319be0:	.4byte 0x0202C218

_08319be4:
	add		r0, r3, #0x0
	add		r0, #0x96
	ldrh	r0, [r0, #0x0]
	mov		r1, #0xc0
	lsl		r1, r1, #0x8
	and		r1, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bne		_08319c02
	add		r0, r3, #0x0
	add		r0, #0x64
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08319c0e
_08319c02:
	add		r1, r3, #0x0
	add		r1, #0x92
	ldrh	r0, [r4, #0x4]
	ldrh	r6, [r1, #0x0]
	add		r0, r0, r6
	b		_08319c5a
_08319c0e:
	add		r0, r3, #0x0
	add		r0, #0x86
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x9
	bhi		_08319c60
	add		r0, r3, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08319c50
	add		r0, r3, #0x0
	add		r0, #0x92
	mov		r1, #0x0
	ldrsh	r2, [r0, r1]
	mov		r3, #0x0
	ldrsh	r1, [r4, r3]
	ldr		r5, _08319c44
	add		r1, r1, r5
	add		r3, r0, #0x0
	cmp		r2, r1
	blt		_08319c48
	ldrh	r0, [r4, #0x8]
	ldrh	r6, [r3, #0x0]
	add		r0, r0, r6
	b		_08319c80

_08319c44:	.4byte 0xFFFFFE00

_08319c48:
	ldrh	r0, [r4, #0x2]
	ldrh	r1, [r3, #0x0]
	add		r0, r0, r1
	b		_08319c80
_08319c50:
	add		r1, r3, #0x0
	add		r1, #0x92
	ldrh	r0, [r4, #0x2]
	ldrh	r2, [r1, #0x0]
	add		r0, r0, r2
_08319c5a:
	strh	r0, [r1, #0x0]
	add		r3, r1, #0x0
	b		_08319c82
_08319c60:
	mov		r5, #0x0
	ldrsh	r0, [r4, r5]
	add		r3, #0x92
	cmp		r0, #0x0
	bge		_08319c6c
	add		r0, #0x3
_08319c6c:
	ldrh	r2, [r3, #0x0]
	mov		r6, #0x0
	ldrsh	r1, [r3, r6]
	asr		r0, r0, #0x2
	cmp		r1, r0
	blt		_08319c7c
	ldrh	r0, [r4, #0x6]
	b		_08319c7e
_08319c7c:
	ldrh	r0, [r4, #0x2]
_08319c7e:
	add		r0, r2, r0
_08319c80:
	strh	r0, [r3, #0x0]
_08319c82:
	add		r2, r3, #0x0
	mov		r0, #0x0
	ldrsh	r1, [r2, r0]
	ldrh	r5, [r4, #0x0]
	mov		r6, #0x0
	ldrsh	r0, [r4, r6]
	cmp		r1, r0
	blt		_08319c94
	strh	r5, [r2, #0x0]
_08319c94:
	mov		r1, #0x0
	ldrsh	r0, [r3, r1]
	cmp		r0, #0x0
	bge		_08319ca0
	mov		r0, #0x0
	strh	r0, [r3, #0x0]
_08319ca0:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x319CA6, 0x2
	thumb_func_end sub_08319b4c

	thumb_func_start sub_08319ca8
sub_08319ca8:
	push	{ r4, lr }
	add		r2, r0, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08319cbe
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	b		_08319d26
_08319cbe:
	add		r0, r2, #0x0
	add		r0, #0x92
	mov		r1, #0x0
	ldrsh	r3, [r0, r1]
	mov		r1, #0x0
	sub		r0, #0xe
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xc
	bne		_08319cd4
	mov		r1, #0x80
	lsl		r1, r1, #0x2
_08319cd4:
	cmp		r0, #0x8
	bne		_08319cde
	mov		r4, #0x80
	lsl		r4, r4, #0x2
	add		r1, r1, r4
_08319cde:
	add		r0, r2, #0x0
	add		r0, #0x68
	mov		r4, #0x0
	ldrsh	r0, [r0, r4]
	cmp		r0, #0x0
	beq		_08319cf0
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r1, r1, r0
_08319cf0:
	mov		r4, #0xbc
	lsl		r4, r4, #0x1
	add		r0, r2, r4
	ldrh	r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	ldr		r0, _08319d2c
	add		r2, r3, r0
	add		r0, r2, #0x0
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08319d0c
	ldr		r3, _08319d30
	add		r0, r0, r3
_08319d0c:
	asr		r0, r0, #0xc
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08319d18
	ldr		r4, _08319d30
	add		r0, r0, r4
_08319d18:
	asr		r0, r0, #0xc
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	add		r1, r1, r2
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
_08319d26:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08319d2c:	.4byte 0xFFFFF000
_08319d30:	.4byte 0x00000FFF

.incbin "base.gba", 0x319D34, 0x74
	thumb_func_end sub_08319ca8

	thumb_func_start sub_08319da8
sub_08319da8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x18
	lsl		r1, r1, #0x10
	lsr		r3, r1, #0x10
	cmp		r1, #0x0
	bge		_08319dba
	mov		r3, #0x0
_08319dba:
	lsl		r0, r3, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0xf
	ble		_08319dc4
	mov		r3, #0xf
_08319dc4:
	ldr		r2, _08319de4
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

.incbin "base.gba", 0x319DE2, 0x2

_08319de4:	.4byte 0x0202C23C
	thumb_func_end sub_08319da8

	thumb_func_start sub_08319de8
sub_08319de8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	mov		r8, r1
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08319e38
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r4, r7, r0
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x3
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319e0e
	b		_08319f86
_08319e0e:
	ldr		r2, _08319e30
	ldr		r0, _08319e34
	add		r0, #0xa8
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	strb	r0, [r4, #0x0]
	b		_08319f86

.incbin "base.gba", 0x319E2E, 0x2

_08319e30:	.4byte 0x0202E890
_08319e34:	.4byte 0x0202E8F0

_08319e38:
	mov		r0, #0xe9
	lsl		r0, r0, #0x3
	add		r0, r8
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_08319e84
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_08319e56
	b		_08319f86
_08319e56:
	ldr		r2, _08319e7c
	ldr		r0, _08319e80
	add		r0, #0xa8
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r7, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xfc
	and		r0, r1
	strb	r0, [r2, #0x0]
	b		_08319f86

_08319e7c:	.4byte 0x0202E890
_08319e80:	.4byte 0x0202E8F0

_08319e84:
	add		r0, r7, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, #0x3
	beq		_08319f86
	cmp		r1, #0x5
	beq		_08319f86
	cmp		r1, #0x6
	beq		_08319f86
	add		r0, r7, #0x0
	bl		sub_08319ca8
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	add		r4, r7, #0x0
	add		r4, #0x94
	mov		r2, #0x0
	ldrsh	r0, [r4, r2]
	cmp		r0, #0x0
	bgt		_08319ebc
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	add		r0, r7, #0x0
	bl		sub_08319da8
	lsl		r0, r0, #0x10
	b		_08319ede
_08319ebc:
	lsl		r1, r6, #0x10
	asr		r1, r1, #0x10
	add		r0, r7, #0x0
	bl		sub_08319da8
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r2, #0x0
	ldrsh	r1, [r4, r2]
	mul		r1, r0
	ldr		r0, _08319f90
	mul		r0, r1
	cmp		r0, #0x0
	bge		_08319edc
	ldr		r1, _08319f94
	add		r0, r0, r1
_08319edc:
	lsl		r0, r0, #0x1
_08319ede:
	lsr		r2, r0, #0x10
	ldr		r0, _08319f98
	add		r0, #0x24
	mov		r8, r0
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x2
	bne		_08319f0c
	add		r0, r7, #0x0
	add		r0, #0x9c
	ldrh	r0, [r0, #0x0]
	mul		r0, r2
	cmp		r0, #0x0
	bge		_08319efa
	add		r0, #0x3f
_08319efa:
	lsl		r0, r0, #0xa
	lsr		r6, r0, #0x10
	add		r2, r6, #0x0
	lsl		r0, r2, #0x10
	asr		r1, r0, #0x10
	lsr		r0, r0, #0x1f
	add		r1, r1, r0
	lsl		r1, r1, #0xf
	lsr		r6, r1, #0x10
_08319f0c:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x4
	bne		_08319f1a
	mov		r6, #0xf0
	lsl		r6, r6, #0x8
	mov		r2, #0x80
	lsl		r2, r2, #0x1
_08319f1a:
	ldr		r5, _08319f9c
	ldr		r4, _08319fa0
	add		r4, #0xa8
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	bl		sub_08326df4
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	lsl		r2, r6, #0x10
	asr		r2, r2, #0x10
	mov		r1, #0x1
	bl		sub_08326e5c
	mov		r2, #0xcd
	lsl		r2, r2, #0x1
	add		r0, r7, r2
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319f86
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_08319f86
	ldr		r0, [r7, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319f86
	mov		r0, #0x15
	bl		sub_08325e94
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r7, r0
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0xfd
	and		r1, r0
	strb	r1, [r2, #0x0]
_08319f86:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08319f90:	.4byte 0x00000155
_08319f94:	.4byte 0x00007FFF
_08319f98:	.4byte 0x030031D0
_08319f9c:	.4byte 0x0202E890
_08319fa0:	.4byte 0x0202E8F0
	thumb_func_end sub_08319de8

	thumb_func_start sub_08319fa4
sub_08319fa4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	ldr		r2, [r4, #0x48]
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	add		r0, r2, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_08319fba
	b		_0831a144
_08319fba:
	mov		r0, #0x20
	and		r0, r2
	cmp		r0, #0x0
	bne		_0831a07a
	add		r0, r4, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r7, r0, #0x0
	cmp		r1, #0x4
	bne		_08319fd0
	b		_0831a144
_08319fd0:
	add		r5, r4, #0x0
	add		r5, #0x96
	ldrh	r1, [r5, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08319fe0
	b		_0831a108
_08319fe0:
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831a064
	add		r0, r4, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xf
	bne		_0831a064
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831a064
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r2, r4, r0
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831a02a
	mov		r0, #0x10
	orr		r0, r1
	strb	r0, [r2, #0x0]
	mov		r0, #0x35
	bl		sub_08325e94
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	orr		r0, r1
	str		r0, [r4, #0x48]
_0831a02a:
	ldrh	r1, [r5, #0x0]
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	and		r0, r1
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	cmp		r0, #0x0
	beq		_0831a03c
	add		r2, #0xde
_0831a03c:
	ldr		r3, _0831a05c
	ldr		r0, _0831a060
	mov		r1, #0xd4
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	bl		sub_08326df4
	b		_0831a144

.incbin "base.gba", 0x31A05A, 0x2

_0831a05c:	.4byte 0x0202E890
_0831a060:	.4byte 0x0202E8F0

_0831a064:
	mov		r0, #0xcd
	lsl		r0, r0, #0x1
	add		r5, r4, r0
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831a082
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r5, #0x0]
_0831a07a:
	mov		r0, #0x35
	bl		sub_08325f60
	b		_0831a144
_0831a082:
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	ble		_0831a092
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x0
	beq		_0831a0d4
_0831a092:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831a144
	ldr		r0, _0831a0c4
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0831a0c8
	ldr		r1, _0831a0cc
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	ldr		r0, [r4, #0x48]
	ldr		r1, _0831a0d0
	and		r0, r1
	b		_0831a0f8

.incbin "base.gba", 0x31A0C2, 0x2

_0831a0c4:	.4byte 0x0202C43C
_0831a0c8:	.4byte 0x0202E890
_0831a0cc:	.4byte 0x0202E8F0
_0831a0d0:	.4byte 0xfffbffff

_0831a0d4:
	ldr		r0, [r4, #0x48]
	mov		r6, #0x80
	lsl		r6, r6, #0xb
	and		r0, r6
	cmp		r0, #0x0
	bne		_0831a144
	ldr		r2, _0831a104
	asr		r0, r1, #0x18
	cmp		r0, #0x3
	ble		_0831a0ea
	mov		r0, #0x3
_0831a0ea:
	lsl		r0, r0, #0x1
	add		r0, r0, r2
	ldrh	r0, [r0, #0x0]
	bl		sub_08325e94
	ldr		r0, [r4, #0x48]
	orr		r0, r6
_0831a0f8:
	str		r0, [r4, #0x48]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r5, #0x0]
	b		_0831a144

_0831a104:	.4byte 0x0202C43C

_0831a108:
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	and		r2, r0
	cmp		r2, #0x0
	beq		_0831a144
	ldr		r0, _0831a14c
	ldrh	r0, [r0, #0x0]
	ldr		r2, _0831a150
	ldr		r1, _0831a154
	lsl		r0, r0, #0x3
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	ldr		r0, [r4, #0x48]
	ldr		r1, _0831a158
	and		r0, r1
	str		r0, [r4, #0x48]
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_0831a144:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31A14A, 0x2

_0831a14c:	.4byte 0x0202C43C
_0831a150:	.4byte 0x0202E890
_0831a154:	.4byte 0x0202E8F0
_0831a158:	.4byte 0xfffbffff
	thumb_func_end sub_08319fa4

	thumb_func_start sub_0831a15c
sub_0831a15c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r5, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	mov		r8, r0
	mov		r1, #0xf3
	lsl		r1, r1, #0x3
	add		r2, r5, r1
	mov		r6, #0xf1
	lsl		r6, r6, #0x3
	add		r0, r5, r6
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831a252
	ldr		r0, [r2, #0x18]
	mov		r9, r0
	ldr		r2, [r2, #0x1c]
	mov		r12, r2
	ldr		r1, _0831a20c
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0831a1ee
	ldr		r7, _0831a210
	mov		r2, #0xed
	lsl		r2, r2, #0x3
	add		r3, r5, r2
	add		r4, r0, #0x0
_0831a1a4:
	ldr		r2, [r3, #0x0]
	cmp		r2, r10
	beq		_0831a1e6
	add		r0, r2, #0x0
	add		r0, #0x6a
	mov		r6, #0x0
	ldrsh	r0, [r0, r6]
	cmp		r0, #0x0
	beq		_0831a1e6
	ldr		r0, [r2, #0x0]
	mov		r6, r9
	sub		r1, r6, r0
	cmp		r1, #0x0
	bge		_0831a1c2
	add		r1, r1, r7
_0831a1c2:
	asr		r1, r1, #0x10
	ldr		r0, [r2, #0x4]
	mov		r2, r12
	sub		r0, r2, r0
	cmp		r0, #0x0
	bge		_0831a1d0
	add		r0, r0, r7
_0831a1d0:
	asr		r0, r0, #0x10
	add		r6, r1, #0x0
	mul		r6, r1
	add		r1, r6, #0x0
	add		r2, r0, #0x0
	mul		r2, r0
	add		r0, r2, #0x0
	add		r0, r1, r0
	cmp		r0, r8
	bge		_0831a1e6
	mov		r8, r0
_0831a1e6:
	add		r3, #0x4
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0831a1a4
_0831a1ee:
	ldr		r0, _0831a214
	cmp		r8, r0
	bgt		_0831a252
	ldr		r6, _0831a218
	add		r1, r5, r6
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0831a21c
	mov		r0, #0x18
	strb	r0, [r1, #0x0]
	mov		r0, #0x42
	bl		sub_08325e94
	b		_0831a220

.incbin "base.gba", 0x31A20A, 0x2

_0831a20c:	.4byte 0x00000764
_0831a210:	.4byte 0x0000FFFF
_0831a214:	.4byte 0x00007FFF
_0831a218:	.4byte 0x00000BF6

_0831a21c:
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
_0831a220:
	mov		r0, r8
	cmp		r0, #0x0
	bge		_0831a22a
	ldr		r1, _0831a260
	add		r0, r0, r1
_0831a22a:
	asr		r0, r0, #0xa
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	sub		r2, r2, r0
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	ldr		r3, _0831a264
	ldr		r0, _0831a268
	mov		r6, #0x84
	lsl		r6, r6, #0x2
	add		r0, r0, r6
	ldrh		r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	bl		sub_08326df4
_0831a252:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831a260:	.4byte 0x000003FF
_0831a264:	.4byte 0x0202E890
_0831a268:	.4byte 0x0202E8F0
	thumb_func_end sub_0831a15c

	thumb_func_start sub_0831a26c
sub_0831a26c:
	ldr		r0, _0831a270
	bx		lr

_0831a270:	.4byte 0x030021C0

.incbin "base.gba", 0x31A274, 0x14
	thumb_func_end sub_0831a26c

	thumb_func_start sub_0831a288
sub_0831a288:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r7, r2, #0x18
	bl		sub_0831a31c
	add		r6, r0, #0x0
	mov		r0, #0x1
	strh	r0, [r5, #0x0]
	add		r0, r4, #0x0
	bl		sub_0831a2d4
	strh	r0, [r5, #0x2]
	add		r0, r4, #0x0
	bl		sub_0831a2e4
	add		r1, r0, #0x0
	strh	r1, [r5, #0x4]
	ldr		r2, [r4, #0x4]
	ldr		r1, _0831a2d0
	cmp		r2, r1
	bhi		_0831a2c8
	add		r0, r7, #0x0
	add		r0, #0x8
	lsl		r0, r0, #0xc
	mov		r3, #0x80
	lsl		r3, r3, #0x2
	add		r1, r6, r3
	orr		r0, r1
	strh	r0, [r5, #0x6]
	add		r0, r2, r6
_0831a2c8:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x31A2CE, 0x2

_0831a2d0:	.4byte 0x07FFFFFF
	thumb_func_end sub_0831a288

	thumb_func_start sub_0831a2d4
sub_0831a2d4:
	ldr		r1, _0831a2e0
	ldrb	r0, [r0, #0x2]
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x31A2DE, 0x2

_0831a2e0:	.4byte 0x0202C4C4
	thumb_func_end sub_0831a2d4

	thumb_func_start sub_0831a2e4
sub_0831a2e4:
	add		r3, r0, #0x0
	mov		r2, #0x0
	ldrb	r1, [r3, #0x1]
	mov		r0, #0x3f
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831a308
	cmp		r0, #0x3f
	beq		_0831a308
	mov		r0, #0x40
	and		r1, r0
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	neg		r0, r0
	asr		r2, r0, #0x1f
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r2, r0
_0831a308:
	ldr		r0, _0831a318
	ldrb	r1, [r3, #0x2]
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	orr		r2, r0
	add		r0, r2, #0x0
	bx		lr

_0831a318:	.4byte 0x0202C4C8
	thumb_func_end sub_0831a2e4

	thumb_func_start sub_0831a31c
sub_0831a31c:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	mov		r4, #0x0
	ldrb	r2, [r3, #0x1]
	add		r5, r2, #0x0
	ldr		r1, [r3, #0x4]
	ldr		r0, _0831a350
	cmp		r1, r0
	bls		_0831a3fa
	ldrb	r1, [r3, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831a3a8
	mov		r0, #0x3f
	and		r0, r2
	cmp		r0, #0x0
	beq		_0831a360
	cmp		r0, #0x3f
	beq		_0831a360
	ldr		r1, _0831a354
	cmp		r2, #0x3f
	bls		_0831a358
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0831a35a

_0831a350:	.4byte 0x07FFFFFF
_0831a354:	.4byte 0x0202C444

_0831a358:
	add		r0, r2, #0x0
_0831a35a:
	add		r0, r1, r0
	ldrb	r1, [r0, #0x0]
	b		_0831a382
_0831a360:
	ldrb	r1, [r3, #0x3]
	cmp		r1, #0x0
	bne		_0831a382
	add		r0, r5, #0x0
	sub		r0, #0x3f
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x1
	bhi		_0831a37c
	ldr		r0, _0831a378
	add		r0, #0x3f
	b		_0831a37e

_0831a378:	.4byte 0x0202C444

_0831a37c:
	ldr		r0, _0831a394
_0831a37e:
	ldrb	r0, [r0, #0x0]
	add		r1, r0, #0x0
_0831a382:
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0831a398
	cmp		r0, #0x1
	ble		_0831a3d6
	cmp		r0, #0x2
	beq		_0831a3a0
	b		_0831a43c

.incbin "base.gba", 0x31A392, 0x2

_0831a394:	.4byte 0x0202C444

_0831a398:
	lsl		r0, r1, #0x9
	mov		r1, #0x88
	lsl		r1, r1, #0x9
	b		_0831a43a
_0831a3a0:
	lsl		r0, r1, #0x7
	mov		r1, #0xa4
	lsl		r1, r1, #0x9
	b		_0831a43a
_0831a3a8:
	cmp		r2, #0x0
	beq		_0831a3c2
	ldr		r1, _0831a3b8
	cmp		r2, #0x3f
	bls		_0831a3bc
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0831a3be

_0831a3b8:	.4byte 0x0202C484

_0831a3bc:
	add		r0, r2, #0x0
_0831a3be:
	add		r0, r1, r0
	b		_0831a3ca
_0831a3c2:
	ldrb	r1, [r3, #0x3]
	cmp		r1, #0x0
	bne		_0831a3cc
	ldr		r0, _0831a3dc
_0831a3ca:
	ldrb	r1, [r0, #0x0]
_0831a3cc:
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0831a3ea
	cmp		r0, #0x1
	bgt		_0831a3e0
_0831a3d6:
	cmp		r0, #0x0
	beq		_0831a3e6
	b		_0831a43c

_0831a3dc:	.4byte 0x0202C484

_0831a3e0:
	cmp		r0, #0x2
	beq		_0831a3f2
	b		_0831a43c
_0831a3e6:
	lsl		r4, r1, #0xb
	b		_0831a43c
_0831a3ea:
	lsl		r0, r1, #0x9
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	b		_0831a43a
_0831a3f2:
	lsl		r0, r1, #0x7
	mov		r1, #0xa0
	lsl		r1, r1, #0x8
	b		_0831a43a
_0831a3fa:
	ldr		r1, _0831a408
	cmp		r2, #0x3f
	bls		_0831a40c
	mov		r0, #0x7f
	sub		r0, r0, r2
	b		_0831a40e

.incbin "base.gba", 0x31A406, 0x2

_0831a408:	.4byte 0x0202C444

_0831a40c:
	add		r0, r5, #0x0
_0831a40e:
	add		r0, r1, r0
	ldrb	r1, [r0, #0x0]
	ldrb	r0, [r3, #0x2]
	cmp		r0, #0x1
	beq		_0831a42c
	cmp		r0, #0x1
	bgt		_0831a422
	cmp		r0, #0x0
	beq		_0831a428
	b		_0831a43c
_0831a422:
	cmp		r0, #0x2
	beq		_0831a434
	b		_0831a43c
_0831a428:
	lsl		r4, r1, #0x6
	b		_0831a43c
_0831a42c:
	lsl		r0, r1, #0x4
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	b		_0831a43a
_0831a434:
	lsl		r0, r1, #0x2
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
_0831a43a:
	add		r4, r0, r1
_0831a43c:
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0831a31c

	thumb_func_start sub_0831a444
sub_0831a444:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_0830f1b0
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
_0831a462:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0831a462
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

.incbin "base.gba", 0x31A49E, 0x32
	thumb_func_end sub_0831a444

	thumb_func_start sub_0831a4d0
sub_0831a4d0:
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
	ldr		r1, _0831a500
	str		r1, [r0, #0x14]
	ldr		r1, _0831a504
	str		r1, [r0, #0x18]
	ldr		r1, _0831a508
	str		r1, [r0, #0x48]
	add		r0, #0x4c
	strh	r2, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x31A4FE, 0x2

_0831a500:	.4byte 0x020145F5
_0831a504:	.4byte 0x020146ED
_0831a508:	.4byte 0x02027940
	thumb_func_end sub_0831a4d0

	thumb_func_start sub_0831a50c
sub_0831a50c:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	ldr		r0, _0831a540
	ldr		r1, _0831a544
	add		r0, r0, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831a5e6
	mov		r0, #0x1
	bl		sub_0830e6c0
	add		r6, r0, #0x0
	add		r6, #0xc8
	ldr		r0, _0831a548
	ldr		r0, [r0, #0x0]
	asr		r7, r0, #0x2
	mov		r1, #0x1f
	and		r7, r1
	add		r5, r1, #0x0
	and		r5, r0
	cmp		r5, #0xf
	bgt		_0831a54c
	lsl		r0, r5, #0x1
	b		_0831a550

_0831a540:	.4byte 0x030031D0
_0831a544:	.4byte 0x0000076C
_0831a548:	.4byte 0x030021D8

_0831a54c:
	sub		r0, r1, r5
	lsl		r0, r0, #0x1
_0831a550:
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
	strh	r0, [r3, #0x2]
	add		r0, r5, #0x0
	and		r0, r2
	lsl		r0, r0, #0xa
	orr		r1, r0
	strh	r1, [r3, #0x4]
	sub		r1, r2, r5
	and		r1, r2
	add		r0, r1, #0x0
	orr		r0, r4
	strh	r0, [r3, #0x6]
	mov		r2, sp
	mov		r3, #0xb8
	lsl		r3, r3, #0x2
	add		r0, r3, #0x0
	orr		r1, r0
	strh	r1, [r2, #0x8]
	mov		r0, sp
	ldrh	r0, [r0, #0x0]
	strh	r0, [r6, #0x2]
	cmp		r7, #0x7
	bgt		_0831a5ac
	mov		r0, sp
	ldrh	r0, [r0, #0x8]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh	r0, [r0, #0x2]
	b		_0831a5d6
_0831a5ac:
	cmp		r7, #0xf
	bgt		_0831a5bc
	mov		r0, sp
	ldrh	r0, [r0, #0x2]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh	r0, [r0, #0x4]
	b		_0831a5d6
_0831a5bc:
	cmp		r7, #0x17
	bgt		_0831a5cc
	mov		r0, sp
	ldrh	r0, [r0, #0x4]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh	r0, [r0, #0x6]
	b		_0831a5d6
_0831a5cc:
	mov		r0, sp
	ldrh	r0, [r0, #0x6]
	strh	r0, [r6, #0x0]
	mov		r0, sp
	ldrh	r0, [r0, #0x8]
_0831a5d6:
	strh	r0, [r6, #0x4]
	mov		r0, #0x1
	bl		sub_0830e6cc
	ldr		r1, _0831a5f0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0831a5e6:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31A5EE, 0x2

_0831a5f0:	.4byte 0x030021D8

.incbin "base.gba", 0x31A5F4, 0x40
	thumb_func_end sub_0831a50c

	thumb_func_start sub_0831a634
sub_0831a634:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r5, [r3, #0x70]
	ldr		r2, [r3, #0x74]
	ldr		r4, _0831a6a8
	cmp		r5, #0x0
	bne		_0831a652
	cmp		r2, #0x0
	bne		_0831a652
	ldr		r0, [r4, #0x0]
	str		r0, [r3, #0x48]
	ldr		r2, [r4, #0x4]
	mov		r0, #0xc0
	lsl		r0, r0, #0xc
	str		r0, [r3, #0x8]
_0831a652:
	lsl		r0, r5, #0x3
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0831a6e4
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0831a6ce
	add		r5, #0x1
	lsl		r1, r5, #0x3
	add		r0, r4, #0x4
	add		r0, r1, r0
	ldr		r2, [r0, #0x0]
	add		r1, r1, r4
	ldr		r4, [r1, #0x0]
	cmp		r4, #0x0
	bne		_0831a6cc
	ldr		r2, _0831a6ac
	ldrh	r1, [r3, #0x34]
	ldr		r0, _0831a6b0
	and		r0, r1
	strh	r0, [r3, #0x34]
	str		r4, [r3, #0x8]
	ldr		r0, _0831a6b4
	str		r0, [r3, #0x48]
	add		r1, r3, #0x0
	add		r1, #0x80
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r0, _0831a6b8
	add		r2, r2, r0
	ldrh	r1, [r2, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x4
	and		r0, r1
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	cmp		r0, r1
	bne		_0831a6bc
	mov		r0, #0x78
	b		_0831a6be

.incbin "base.gba", 0x31A6A6, 0x2

_0831a6a8:	.4byte 0x0202C600
_0831a6ac:	.4byte 0x030031D0
_0831a6b0:	.4byte 0x0000FFFE
_0831a6b4:	.4byte 0x02027940
_0831a6b8:	.4byte 0x00000772

_0831a6bc:
	mov		r0, #0x2
_0831a6be:
	str		r0, [r3, #0x70]
	ldr		r0, _0831a6c8
	str		r0, [r3, #0x14]
	b		_0831a6e4

.incbin "base.gba", 0x31A6C6, 0x2

_0831a6c8:	.4byte 0x020147D9

_0831a6cc:
	str		r4, [r3, #0x48]
_0831a6ce:
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
_0831a6e4:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31A6EA, 0x586
	thumb_func_end sub_0831a634

	thumb_func_start sub_0831ac70
sub_0831ac70:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r0, r1, #0x0
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0831ac80
	ldr		r2, _0831acb4
	add		r1, r1, r2
_0831ac80:
	asr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0831ac8c
	ldr		r3, _0831acb4
	add		r2, r2, r3
_0831ac8c:
	asr		r2, r2, #0x10
	ldr		r3, [r4, #0x8]
	cmp		r3, #0x0
	bge		_0831ac98
	ldr		r5, _0831acb4
	add		r3, r3, r5
_0831ac98:
	asr		r3, r3, #0x10
	bl		sub_08310fac
	add		r1, r0, #0x0
	cmp		r1, #0x7f
	beq		_0831acae
	mov		r0, #0x7f
	and		r1, r0
	add		r0, r4, #0x0
	add		r0, #0x36
	strb	r1, [r0, #0x0]
_0831acae:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0831acb4:	.4byte 0x0000FFFF
	thumb_func_end sub_0831ac70

	thumb_func_start sub_0831acb8
sub_0831acb8:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r1, [r4, #0x0]
	ldr		r2, [r4, #0x4]
	add		r0, r5, #0x0
	mov		r3, #0x0
	bl		sub_0831196c
	cmp		r0, #0x0
	beq		_0831acd6
	add		r1, r4, #0x0
	add		r1, #0x4e
	mov		r0, #0x26
	b		_0831acfe
_0831acd6:
	ldr		r1, [r4, #0x0]
	cmp		r1, #0x0
	bge		_0831ace0
	ldr		r0, _0831ad08
	add		r1, r1, r0
_0831ace0:
	lsr		r1, r1, #0x10
	ldr		r2, [r4, #0x4]
	cmp		r2, #0x0
	bge		_0831acec
	ldr		r0, _0831ad08
	add		r2, r2, r0
_0831acec:
	lsl		r1, r1, #0x10
	asr		r1, r1, #0x10
	asr		r2, r2, #0x10
	add		r0, r5, #0x0
	mov		r3, #0x0
	bl		sub_08311014
	add		r1, r4, #0x0
	add		r1, #0x4e
_0831acfe:
	strb	r0, [r1, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31AD06, 0x2

_0831ad08:	.4byte 0x0000FFFF
	thumb_func_end sub_0831acb8

	thumb_func_start sub_0831ad0c
sub_0831ad0c:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_0831acb8
	add		r4, #0x4e
	ldrb	r4, [r4, #0x0]
	mov		r0, #0x90
	and		r0, r4
	cmp		r0, #0x80
	beq		_0831ad2c
	mov		r0, #0x20
	and		r0, r4
	cmp		r0, #0x0
	bne		_0831ad2c
	mov		r0, #0x0
	b		_0831ad2e
_0831ad2c:
	mov		r0, #0x1
_0831ad2e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0831ad0c

	thumb_func_start sub_0831ad34
sub_0831ad34:
	add		r2, r0, #0x0
	add		r0, #0x78
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x3
	bne		_0831ad44
	ldr		r0, [r2, #0x8]
	cmp		r0, #0x0
	beq		_0831ad60
_0831ad44:
	add		r0, r2, #0x0
	add		r0, #0x78
	ldrb	r1, [r0, #0x0]
	add		r3, r0, #0x0
	cmp		r1, #0x4
	bne		_0831ad56
	ldr		r0, [r2, #0x8]
	cmp		r0, #0x0
	beq		_0831ad60
_0831ad56:
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x2
	beq		_0831ad60
	mov		r0, #0x1
	b		_0831ad62
_0831ad60:
	mov		r0, #0x0
_0831ad62:
	bx		lr
	thumb_func_end sub_0831ad34

	thumb_func_start sub_0831ad64
sub_0831ad64:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831adc8
	add		r0, r2, #0x0
	add		r1, r3, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831ad8e
	mov		r2, #0x40
_0831ad8e:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0831adc8
	mov		r0, #0x29
	bl		sub_08325e94
	ldr		r5, _0831add0
	ldr		r4, _0831add4
	mov		r0, #0xa4
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831adc8:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31ADCE, 0x2

_0831add0:	.4byte 0x0202E890
_0831add4:	.4byte 0x0202E8F0
	thumb_func_end sub_0831ad64

	thumb_func_start sub_0831add8
sub_0831add8:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831ae3c
	add		r0, r2, #0x0
	add		r1, r3, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831ae02
	mov		r2, #0x40
_0831ae02:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0831ae3c
	mov		r0, #0x24
	bl		sub_08325e94
	ldr		r5, _0831ae44
	ldr		r4, _0831ae48
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831ae3c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31AE42, 0x2

_0831ae44:	.4byte 0x0202E890
_0831ae48:	.4byte 0x0202E8F0
	thumb_func_end sub_0831add8

	thumb_func_start sub_0831ae4c
sub_0831ae4c:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831aeb0
	add		r0, r2, #0x0
	add		r1, r3, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831ae76
	mov		r2, #0x40
_0831ae76:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0831aeb0
	mov		r0, #0x25
	bl		sub_08325e94
	ldr		r5, _0831aeb8
	ldr		r4, _0831aebc
	mov		r0, #0x94
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x3
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831aeb0:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31AEB6, 0x2

_0831aeb8:	.4byte 0x0202E890
_0831aebc:	.4byte 0x0202E8F0
	thumb_func_end sub_0831ae4c

	thumb_func_start sub_0831aec0
sub_0831aec0:
	push	{ r4, lr }
	add		r2, r0, #0x0
	ldr		r3, _0831aef4
	ldr		r1, [r2, #0x8]
	ldr		r0, [r2, #0x30]
	add		r1, r1, r0
	str		r1, [r2, #0x8]
	ldr		r4, _0831aef8
	add		r0, r0, r4
	str		r0, [r2, #0x30]
	cmp		r1, #0x0
	bge		_0831aeec
	mov		r0, #0x0
	str		r0, [r2, #0x8]
	str		r0, [r2, #0x30]
	str		r0, [r2, #0x14]
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r3, r1
	add		r1, r2, #0x0
	bl		sub_08321500
_0831aeec:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31AEF2, 0x2

_0831aef4:	.4byte 0x030031D0
_0831aef8:	.4byte 0xFFFFE600
	thumb_func_end sub_0831aec0

	thumb_func_start sub_0831aefc
sub_0831aefc:
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
	ldr		r1, _0831af24
	and		r1, r2
	strh	r1, [r0, #0x34]
	str		r3, [r0, #0x18]
	ldr		r1, _0831af28
	str		r1, [r0, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0831af24:	.4byte 0x0000FFFD
_0831af28:	.4byte 0x02014EC1
	thumb_func_end sub_0831aefc

	thumb_func_start sub_0831af2c
sub_0831af2c:
	push	{ lr }
	add		r3, r0, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	beq		_0831af4c
	mov		r0, #0x0
	str		r0, [r3, #0x14]
	ldr		r1, _0831af48
	add		r0, r2, r1
	add		r1, r3, #0x0
	bl		sub_08321500
	b		_0831af52

_0831af48:	.4byte 0x0000070C

_0831af4c:
	add		r0, r3, #0x0
	bl		sub_0831aefc
_0831af52:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31AF56, 0x606
	thumb_func_end sub_0831af2c

	thumb_func_start sub_0831b55c
sub_0831b55c:
	add		r2, r1, #0x0
	ldrh	r1, [r0, #0x10]
	ldr		r0, _0831b574
	cmp		r1, r0
	beq		_0831b58c
	cmp		r1, r0
	bgt		_0831b578
	sub		r0, #0x1
	cmp		r1, r0
	beq		_0831b584
	b		_0831b5a4

.incbin "base.gba", 0x31B572, 0x2

_0831b574:	.4byte 0x00008402

_0831b578:
	ldr		r0, _0831b580
	cmp		r1, r0
	beq		_0831b594
	b		_0831b5a4

_0831b580:	.4byte 0x00008403

_0831b584:
	ldr		r1, _0831b588
	b		_0831b596

_0831b588:	.4byte 0x0202C6E8

_0831b58c:
	ldr		r1, _0831b590
	b		_0831b596

_0831b590:	.4byte 0x0202C700

_0831b594:
	ldr		r1, _0831b5a0
_0831b596:
	lsl		r0, r2, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	b		_0831b5a6

.incbin "base.gba", 0x31B59E, 0x2

_0831b5a0:	.4byte 0x0202C718

_0831b5a4:
	mov		r0, #0x0
_0831b5a6:
	bx		lr
	thumb_func_end sub_0831b55c

	thumb_func_start sub_0831b5a8
sub_0831b5a8:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r0, #0x4c
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831b5d2
	add		r6, r5, #0x0
	add		r6, #0x70
	ldrb	r4, [r6, #0x0]
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0831b55c
	str		r0, [r5, #0x48]
	add		r4, #0x1
	cmp		r4, #0x5
	ble		_0831b5d0
	mov		r4, #0x0
_0831b5d0:
	strb	r4, [r6, #0x0]
_0831b5d2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831b5a8

	thumb_func_start sub_0831b5d8
sub_0831b5d8:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r3, #0x71
	ldrb	r3, [r3, #0x0]
	mov		r4, #0xea
	lsl		r4, r4, #0x3
	add		r2, r2, r4
	ldrb	r2, [r2, #0x0]
	cmp		r2, #0x0
	beq		_0831b5f2
	cmp		r2, #0x2
	beq		_0831b5f6
	b		_0831b5f8
_0831b5f2:
	sub		r1, #0x8
	b		_0831b5f8
_0831b5f6:
	add		r1, #0xa
_0831b5f8:
	cmp		r3, r1
	blt		_0831b604
	sub		r3, #0x10
	cmp		r3, r1
	bge		_0831b60c
	b		_0831b60a
_0831b604:
	add		r3, #0x4
	cmp		r3, r1
	ble		_0831b60c
_0831b60a:
	add		r3, r1, #0x0
_0831b60c:
	add		r0, #0x71
	strb	r3, [r0, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31B616, 0x14E6
	thumb_func_end sub_0831b5d8

	thumb_func_start sub_0831cafc
sub_0831cafc:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	add		r0, r5, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0x0
	mov		r12, r1
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _0831cb94
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831cb20
	add		r1, #0x3f
_0831cb20:
	asr		r3, r1, #0x6
	ldr		r1, _0831cb98
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
	ldr		r1, _0831cb98
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
	ldr		r0, _0831cb9c
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
	ldr		r0, _0831cba0
	cmp		r1, r0
	beq		_0831cbbc
	cmp		r1, r0
	bgt		_0831cba4
	sub		r0, #0x1
	cmp		r1, r0
	beq		_0831cbb0
	b		_0831cbd6

.incbin "base.gba", 0x31CB92, 0x2

_0831cb94:	.4byte 0x0202A9A0
_0831cb98:	.4byte 0x000003FF
_0831cb9c:	.4byte 0x02015091
_0831cba0:	.4byte 0x00008402

_0831cba4:
	ldr		r0, _0831cbac
	cmp		r1, r0
	beq		_0831cbcc
	b		_0831cbd6

_0831cbac:	.4byte 0x00008403

_0831cbb0:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	b		_0831cbd4
_0831cbbc:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	ldr		r0, _0831cbc8
	b		_0831cbd4

.incbin "base.gba", 0x31CBC6, 0x2

_0831cbc8:	.4byte 0x00001002

_0831cbcc:
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	ldr		r0, _0831cbe0
_0831cbd4:
	strh	r0, [r1, #0x0]
_0831cbd6:
	ldr		r0, _0831cbe4
	str		r0, [r4, #0x14]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831cbe0:	.4byte 0x00001004
_0831cbe4:	.4byte 0x020169E5
	thumb_func_end sub_0831cafc

	thumb_func_start sub_0831cbe8
sub_0831cbe8:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	bl		sub_0830f1b0
	mov		r4, #0x0
	mov		r6, #0x0
	strh	r5, [r7, #0x10]
	mov		r0, #0x9
	strb	r0, [r7, #0xe]
	strb	r0, [r7, #0xd]
	strb	r0, [r7, #0xc]
	add		r0, r7, #0x0
	add		r0, #0x4c
	strh	r6, [r0, #0x0]
	add		r0, #0x2
	strb	r4, [r0, #0x0]
	add		r0, #0x2
	strh	r6, [r0, #0x0]
	add		r0, #0x2
	strh	r6, [r0, #0x0]
	add		r0, #0x8
	strh	r6, [r0, #0x0]
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_0831b55c
	str		r0, [r7, #0x48]
	add		r0, r7, #0x0
	add		r0, #0x70
	strb	r4, [r0, #0x0]
	add		r0, #0x8
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r4, [r0, #0x0]
	sub		r0, #0x8
	strb	r4, [r0, #0x0]
	add		r0, #0x9
	strb	r4, [r0, #0x0]
	sub		r0, #0x6
	strb	r4, [r0, #0x0]
	str		r6, [r7, #0x7c]
	add		r0, #0xc
	strb	r4, [r0, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31CC46, 0x2
	thumb_func_end sub_0831cbe8

	thumb_func_start sub_0831cc48
sub_0831cc48:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _0831ccc8
	bl		sub_0831cbe8
	add		r0, r5, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _0831cccc
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831cc6e
	add		r1, #0x3f
_0831cc6e:
	asr		r3, r1, #0x6
	ldr		r1, _0831ccd0
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
	ldr		r1, _0831ccd0
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
	ldr		r0, _0831ccd4
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _0831ccd8
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

_0831ccc8:	.4byte 0x00008401
_0831cccc:	.4byte 0x0202A9A0
_0831ccd0:	.4byte 0x000003FF
_0831ccd4:	.4byte 0x02016AFD
_0831ccd8:	.4byte 0xfffeffff
	thumb_func_end sub_0831cc48

	thumb_func_start sub_0831ccdc
sub_0831ccdc:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _0831cd5c
	bl		sub_0831cbe8
	add		r0, r5, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _0831cd60
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831cd02
	add		r1, #0x3f
_0831cd02:
	asr		r3, r1, #0x6
	ldr		r1, _0831cd64
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
	ldr		r1, _0831cd64
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
	ldr		r0, _0831cd68
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _0831cd6c
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

_0831cd5c:	.4byte 0x00008402
_0831cd60:	.4byte 0x0202A9A0
_0831cd64:	.4byte 0x000003FF
_0831cd68:	.4byte 0x02016AFD
_0831cd6c:	.4byte 0xfffeffff
	thumb_func_end sub_0831ccdc

	thumb_func_start sub_0831cd70
sub_0831cd70:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r1, _0831cdf0
	bl		sub_0831cbe8
	add		r0, r5, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _0831cdf4
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831cd96
	add		r1, #0x3f
_0831cd96:
	asr		r3, r1, #0x6
	ldr		r1, _0831cdf8
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
	ldr		r1, _0831cdf8
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
	ldr		r0, _0831cdfc
	str		r0, [r4, #0x14]
	ldr		r0, [r5, #0x48]
	ldr		r1, _0831ce00
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

_0831cdf0:	.4byte 0x00008403
_0831cdf4:	.4byte 0x0202A9A0
_0831cdf8:	.4byte 0x000003FF
_0831cdfc:	.4byte 0x02016AFD
_0831ce00:	.4byte 0xfffeffff
	thumb_func_end sub_0831cd70

	thumb_func_start sub_0831ce04
sub_0831ce04:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r2, r1, #0x0
	ldr		r3, [r5, #0x54]
	ldr		r6, _0831ceb4
	add		r7, r6, #0x0
	add		r7, #0x24
	ldrh	r1, [r2, #0x10]
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r1
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_0831ceac
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r4, r0
	beq		_0831ceac
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r4, r0
	bne		_0831ce3e
	add		r0, r2, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_0831ceac
_0831ce3e:
	ldr		r0, [r3, #0x48]
	ldr		r1, _0831ceb8
	and		r0, r1
	str		r0, [r3, #0x48]
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r5, #0x0
	bl		sub_0831aefc
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r4, r0
	bne		_0831ceac
	ldr		r1, _0831cebc
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831ceac
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0831ceac
	mov		r0, #0x2b
	bl		sub_08325e94
	ldr		r5, _0831cec0
	ldr		r4, _0831cec4
	mov		r0, #0xac
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831ceac:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31CEB2, 0x2

_0831ceb4:	.4byte 0x030031D0
_0831ceb8:	.4byte 0xfffeffff
_0831cebc:	.4byte 0x000007AC
_0831cec0:	.4byte 0x0202E890
_0831cec4:	.4byte 0x0202E8F0
	thumb_func_end sub_0831ce04

	thumb_func_start sub_0831cec8
sub_0831cec8:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r3, r1, #0x0
	ldr		r2, [r5, #0x54]
	ldr		r6, _0831cf80
	add		r7, r6, #0x0
	add		r7, #0x24
	ldrh	r1, [r3, #0x10]
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r1
	mov		r0, #0x88
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_0831cf7a
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	cmp		r4, r0
	beq		_0831cf7a
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r4, r0
	bne		_0831cf02
	add		r0, r3, #0x0
	add		r0, #0x66
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_0831cf7a
_0831cf02:
	ldr		r0, [r2, #0x48]
	ldr		r1, _0831cf84
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
	bl		sub_0831aefc
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	cmp		r4, r0
	bne		_0831cf7a
	ldr		r1, _0831cf88
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831cf7a
	add		r0, r7, #0x0
	add		r1, r5, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	beq		_0831cf7a
	mov		r0, #0x2b
	bl		sub_08325e94
	ldr		r5, _0831cf8c
	ldr		r4, _0831cf90
	mov		r0, #0xac
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831cf7a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831cf80:	.4byte 0x030031D0
_0831cf84:	.4byte 0xfffeffff
_0831cf88:	.4byte 0x000007AC
_0831cf8c:	.4byte 0x0202E890
_0831cf90:	.4byte 0x0202E8F0
	thumb_func_end sub_0831cec8

	thumb_func_start sub_0831cf94
sub_0831cf94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r6, r0, #0x0
	mov		r10, r6
	ldr		r0, [r6, #0x54]
	mov		r8, r0
	ldr		r5, _0831d094
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
	beq		_0831cfc4
	sub		r0, #0x1
	strh	r0, [r6, #0x38]
_0831cfc4:
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
	ldr		r0, _0831d098
	add		r1, r1, r0
	str		r1, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_0831ac70
	ldr		r0, [r6, #0x8]
	cmp		r0, #0x0
	bgt		_0831d0e8
	str		r4, [r6, #0x8]
	str		r4, [r6, #0x30]
	add		r0, r6, #0x0
	mov		r1, r9
	bl		sub_0831ac70
	str		r4, [r6, #0x14]
	ldr		r1, _0831d09c
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831d05a
	mov		r0, r9
	add		r1, r6, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831d020
	mov		r2, #0x40
_0831d020:
	add		r7, r2, #0x0
	cmp		r7, #0x0
	beq		_0831d05a
	mov		r0, #0x23
	bl		sub_08325e94
	ldr		r5, _0831d0a0
	ldr		r4, _0831d0a4
	mov		r0, #0x8c
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r7, #0x0
	bl		sub_08326df4
_0831d05a:
	mov		r0, r10
	ldr		r1, _0831d0a8
	bl		sub_0831acb8
	mov		r2, #0x0
	add		r0, r6, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x80
	bne		_0831d074
	mov		r2, #0x1
_0831d074:
	cmp		r2, #0x0
	bne		_0831d086
	mov		r0, #0x0
	add		r2, r1, #0x0
	cmp		r2, #0x26
	bne		_0831d082
	mov		r0, #0x1
_0831d082:
	cmp		r0, #0x0
	beq		_0831d0ac
_0831d086:
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r6, #0x0
	bl		sub_0831aefc
	b		_0831d100

.incbin "base.gba", 0x31D092, 0x2

_0831d094:	.4byte 0x030031D0
_0831d098:	.4byte 0xFFFFE600
_0831d09c:	.4byte 0x000007AC
_0831d0a0:	.4byte 0x0202E890
_0831d0a4:	.4byte 0x0202E8F0
_0831d0a8:	.4byte 0x030031F4

_0831d0ac:
	mov		r3, #0x0
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831d0c4
	mov		r0, #0x0
	cmp		r2, #0x26
	bne		_0831d0be
	mov		r0, #0x1
_0831d0be:
	cmp		r0, #0x0
	bne		_0831d0c4
	mov		r3, #0x1
_0831d0c4:
	cmp		r3, #0x0
	beq		_0831d0e8
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	ldr		r1, _0831d0e0
	and		r0, r1
	mov		r1, r8
	str		r0, [r1, #0x48]
	ldr		r0, _0831d0e4
	add		r0, r9
	add		r1, r6, #0x0
	bl		sub_08321500
	b		_0831d100

_0831d0e0:	.4byte 0xfffeffff
_0831d0e4:	.4byte 0x0000070C

_0831d0e8:
	add		r0, r6, #0x0
	add		r0, #0x4c
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x10
	bne		_0831d100
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	ldr		r1, _0831d110
	and		r0, r1
	mov		r1, r8
	str		r0, [r1, #0x48]
_0831d100:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D10E, 0x2

_0831d110:	.4byte 0xfffeffff
	thumb_func_end sub_0831cf94

	thumb_func_start sub_0831d114
sub_0831d114:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r0, _0831d218
	mov		r9, r0
	mov		r1, #0x24
	add		r1, r9
	mov		r10, r1
	mov		r1, #0xc6
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r7, #0x0
	strh	r7, [r0, #0x0]
	str		r7, [r4, #0x8]
	add		r0, r6, #0x0
	bl		sub_08317978
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	mov		r8, r1
	str		r1, [r4, #0x8]
	ldr		r1, _0831d21c
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831d15c
	add		r1, #0x3f
_0831d15c:
	asr		r3, r1, #0x6
	ldr		r1, _0831d220
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	str		r0, [r4, #0x28]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0831d220
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r12
	ldr		r0, [r0, #0x0]
	neg		r0, r0
	lsl		r0, r0, #0x4
	str		r0, [r5, #0x2c]
	mov		r0, #0xd0
	lsl		r0, r0, #0x9
	str		r0, [r5, #0x30]
	add		r0, r5, #0x0
	mov		r1, r10
	bl		sub_0831ac70
	ldr		r0, _0831d224
	str		r0, [r5, #0x18]
	mov		r0, #0x8
	strh	r0, [r5, #0x38]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r7, [r0, #0x0]
	ldr		r0, [r6, #0x48]
	mov		r1, r8
	orr		r0, r1
	str		r0, [r6, #0x48]
	ldr		r0, _0831d228
	str		r0, [r5, #0x14]
	ldr		r0, _0831d22c
	add		r0, r9
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831d20a
	mov		r0, r10
	add		r1, r5, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831d1d0
	mov		r2, #0x40
_0831d1d0:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0831d20a
	mov		r0, #0x24
	bl		sub_08325e94
	ldr		r5, _0831d230
	ldr		r4, _0831d234
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831d20a:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831d218:	.4byte 0x030031D0
_0831d21c:	.4byte 0x0202A9A0
_0831d220:	.4byte 0x000003FF
_0831d224:	.4byte 0x02016E05
_0831d228:	.4byte 0x02016F95
_0831d22c:	.4byte 0x000007AC
_0831d230:	.4byte 0x0202E890
_0831d234:	.4byte 0x0202E8F0
	thumb_func_end sub_0831d114

	thumb_func_start sub_0831d238
sub_0831d238:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	add		r7, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r0, _0831d28c
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
	bl		sub_0831acb8
	mov		r2, #0x0
	add		r0, r4, #0x0
	add		r0, #0x4e
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x90
	and		r0, r1
	cmp		r0, #0x80
	bne		_0831d272
	mov		r2, #0x1
_0831d272:
	cmp		r2, #0x0
	beq		_0831d294
	ldr		r0, [r6, #0x48]
	ldr		r1, _0831d290
	and		r0, r1
	str		r0, [r6, #0x48]
	mov		r1, #0x9c
	lsl		r1, r1, #0x8
	add		r0, r4, #0x0
	bl		sub_0831aefc
	b		_0831d352

.incbin "base.gba", 0x31D28A, 0x2

_0831d28c:	.4byte 0x030031D0
_0831d290:	.4byte 0xfffeffff

_0831d294:
	mov		r3, #0x0
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831d2b0
	mov		r2, #0x0
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x26
	bne		_0831d2aa
	mov		r2, #0x1
_0831d2aa:
	cmp		r2, #0x0
	bne		_0831d2b0
	mov		r3, #0x1
_0831d2b0:
	cmp		r3, #0x0
	bne		_0831d2c6
	mov		r5, #0x0
	add		r0, r7, #0x0
	add		r0, #0x4e
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x26
	bne		_0831d2c2
	mov		r5, #0x1
_0831d2c2:
	cmp		r5, #0x0
	beq		_0831d2e4
_0831d2c6:
	ldr		r0, [r6, #0x48]
	ldr		r1, _0831d2dc
	and		r0, r1
	str		r0, [r6, #0x48]
	ldr		r0, _0831d2e0
	add		r0, r8
	add		r1, r7, #0x0
	bl		sub_08321500
	b		_0831d352

.incbin "base.gba", 0x31D2DA, 0x2

_0831d2dc:	.4byte 0xfffeffff
_0831d2e0:	.4byte 0x0000070C

_0831d2e4:
	str		r5, [r4, #0x8]
	add		r0, r7, #0x0
	mov		r1, r9
	bl		sub_0831ac70
	ldr		r0, _0831d360
	str		r0, [r4, #0x18]
	str		r5, [r7, #0x14]
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r8
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831d352
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_08320124
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x3f
	bgt		_0831d318
	mov		r2, #0x40
_0831d318:
	add		r6, r2, #0x0
	cmp		r6, #0x0
	beq		_0831d352
	mov		r0, #0x23
	bl		sub_08325e94
	ldr		r5, _0831d364
	ldr		r4, _0831d368
	mov		r0, #0x8c
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r6, #0x0
	bl		sub_08326df4
_0831d352:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D35E, 0x2

_0831d360:	.4byte 0x02016E05
_0831d364:	.4byte 0x0202E890
_0831d368:	.4byte 0x0202E8F0
	thumb_func_end sub_0831d238

	thumb_func_start sub_0831d36c
sub_0831d36c:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	add		r7, r4, #0x0
	add		r1, r4, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _0831d398
	add		r0, r5, #0x0
	add		r0, #0x7e
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0831d39c
	add		r0, r5, #0x0
	bl		sub_08317960
	b		_0831d3aa

_0831d398:	.4byte 0x0202BE80

_0831d39c:
	add		r1, r5, #0x0
	add		r1, #0x56
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
_0831d3aa:
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r1, _0831d414
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831d3c0
	add		r1, #0x3f
_0831d3c0:
	asr		r3, r1, #0x6
	ldr		r1, _0831d418
	add		r0, r1, #0x0
	add		r1, r3, #0x0
	and		r1, r0
	lsl		r1, r1, #0x2
	add		r1, r12
	ldr		r0, [r1, #0x0]
	lsl		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r4, #0x0]
	ldr		r6, [r5, #0x4]
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r3
	ldr		r1, _0831d418
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r12
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
	add		r0, r5, #0x0
	bl		sub_0831ad34
	cmp		r0, #0x0
	beq		_0831d41c
	ldrh	r0, [r7, #0x34]
	mov		r1, #0x1
	orr		r1, r0
	mov		r0, #0x2
	orr		r1, r0
	b		_0831d426

_0831d414:	.4byte 0x0202A9A0
_0831d418:	.4byte 0x000003FF

_0831d41c:
	ldrh	r0, [r7, #0x34]
	ldr		r1, _0831d448
	and		r1, r0
	ldr		r0, _0831d44c
	and		r1, r0
_0831d426:
	strh	r1, [r7, #0x34]
	add		r0, r5, #0x0
	add		r0, #0x96
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831d456
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831d450
	add		r0, r4, #0x0
	bl		sub_0831d114
	b		_0831d456

_0831d448:	.4byte 0x0000FFFE
_0831d44c:	.4byte 0x0000FFFD

_0831d450:
	add		r0, r4, #0x0
	bl		sub_0831d238
_0831d456:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831d36c

	thumb_func_start sub_0831d45c
sub_0831d45c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_0830f1b0
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
	ldr		r0, _0831d494
	str		r0, [r5, #0x48]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0831d494:	.4byte 0x02027920
	thumb_func_end sub_0831d45c

	thumb_func_start sub_0831d498
sub_0831d498:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r5, r4, #0x0
	ldr		r6, [r4, #0x54]
	ldr		r1, _0831d524
	bl		sub_0831d45c
	add		r0, r6, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r7, [r6, #0x0]
	ldr		r1, _0831d528
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831d4c2
	add		r1, #0x3f
_0831d4c2:
	asr		r3, r1, #0x6
	ldr		r1, _0831d52c
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
	ldr		r1, _0831d52c
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
	ldr		r0, _0831d530
	str		r0, [r5, #0x14]
	mov		r0, #0xc6
	lsl		r0, r0, #0x1
	add		r1, r6, r0
	ldr		r0, _0831d534
	strh	r0, [r1, #0x0]
	ldrh	r0, [r5, #0x34]
	mov		r1, #0x1
	orr		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strh	r0, [r5, #0x34]
	ldr		r0, _0831d538
	str		r0, [r5, #0x18]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831d524:	.4byte 0x00008001
_0831d528:	.4byte 0x0202A9A0
_0831d52c:	.4byte 0x000003FF
_0831d530:	.4byte 0x0201736D
_0831d534:	.4byte 0x00001005
_0831d538:	.4byte 0x02016EC9
	thumb_func_end sub_0831d498

	thumb_func_start sub_0831d53c
sub_0831d53c:
	bx		lr

.incbin "base.gba", 0x31D53E, 0x2
	thumb_func_end sub_0831d53c

	thumb_func_start sub_0831d540
sub_0831d540:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	ldr		r2, _0831d5c8
	add		r1, r4, #0x0
	add		r1, #0x4c
	ldrh	r0, [r1, #0x0]
	add		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	cmp		r0, #0x1d
	ble		_0831d56a
	mov		r0, #0x0
	str		r0, [r4, #0x14]
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r2, r1
	add		r1, r4, #0x0
	bl		sub_08321500
_0831d56a:
	add		r0, r5, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r4, #0x26]
	ldr		r6, [r5, #0x0]
	ldr		r7, _0831d5cc
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831d584
	add		r1, #0x3f
_0831d584:
	asr		r3, r1, #0x6
	ldr		r1, _0831d5d0
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
	ldr		r1, _0831d5d0
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

_0831d5c8:	.4byte 0x030031D0
_0831d5cc:	.4byte 0x0202A9A0
_0831d5d0:	.4byte 0x000003FF
	thumb_func_end sub_0831d540

	thumb_func_start sub_0831d5d4
sub_0831d5d4:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_0830f1b0
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

.incbin "base.gba", 0x31D60A, 0x2
	thumb_func_end sub_0831d5d4

	thumb_func_start sub_0831d60c
sub_0831d60c:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r4, r5, #0x0
	ldr		r6, [r5, #0x54]
	ldr		r1, _0831d68c
	bl		sub_0831d5d4
	add		r0, r6, #0x0
	bl		sub_08317960
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	strh	r0, [r5, #0x26]
	ldr		r7, [r6, #0x0]
	ldr		r1, _0831d690
	mov		r12, r1
	add		r2, r0, #0x0
	add		r1, r2, #0x0
	cmp		r2, #0x0
	bge		_0831d636
	add		r1, #0x3f
_0831d636:
	asr		r3, r1, #0x6
	ldr		r1, _0831d694
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
	ldr		r1, _0831d694
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
	ldr		r0, _0831d698
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

.incbin "base.gba", 0x31D68A, 0x2

_0831d68c:	.4byte 0x00008003
_0831d690:	.4byte 0x0202A9A0
_0831d694:	.4byte 0x000003FF
_0831d698:	.4byte 0x02017541
	thumb_func_end sub_0831d60c

	thumb_func_start sub_0831d69c
sub_0831d69c:
	push	{ r4, lr }
	ldr		r2, [r0, #0x54]
	ldr		r1, _0831d6bc
	strh	r1, [r0, #0x10]
	add		r2, #0xb2
	ldrh	r3, [r2, #0x0]
	mov		r4, #0x80
	lsl		r4, r4, #0x8
	add		r1, r4, #0x0
	orr		r1, r3
	strh	r1, [r2, #0x0]
	bl		sub_0831d60c
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0831d6bc:	.4byte 0x00008003
	thumb_func_end sub_0831d69c

	thumb_func_start sub_0831d6c0
sub_0831d6c0:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, _0831d6ec
	ldr		r1, [r4, #0x54]
	ldr		r0, [r4, #0x70]
	sub		r0, #0x1
	str		r0, [r4, #0x70]
	cmp		r0, #0x0
	bgt		_0831d6e6
	add		r0, r1, #0x0
	mov		r1, #0x0
	bl		sub_08317a88
	mov		r1, #0xe6
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	add		r1, r4, #0x0
	bl		sub_08321500
_0831d6e6:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0831d6ec:	.4byte 0x030031D0
	thumb_func_end sub_0831d6c0

	thumb_func_start sub_0831d6f0
sub_0831d6f0:
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
	ldr		r1, _0831d714
	str		r1, [r0, #0x14]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D712, 0x2

_0831d714:	.4byte 0x020176C1
	thumb_func_end sub_0831d6f0

	thumb_func_start sub_0831d718
sub_0831d718:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _0831d744
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
	bl		sub_08321500
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D742, 0x2

_0831d744:	.4byte 0x030031D0
	thumb_func_end sub_0831d718

	thumb_func_start sub_0831d748
sub_0831d748:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _0831d774
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
	bl		sub_08321500
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D772, 0x2

_0831d774:	.4byte 0x030031D0
	thumb_func_end sub_0831d748

	thumb_func_start sub_0831d778
sub_0831d778:
	push	{ r4, r5, lr }
	add		r1, r0, #0x0
	ldr		r0, _0831d7a4
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
	bl		sub_08321500
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D7A2, 0x2

_0831d7a4:	.4byte 0x030031D0

.incbin "base.gba", 0x31D7A8, 0x38
	thumb_func_end sub_0831d778

	thumb_func_start sub_0831d7e0
sub_0831d7e0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r9, r0
	ldr		r0, [r0, #0x54]
	mov		r8, r0
	ldr		r4, _0831d8fc
	ldr		r1, _0831d900
	add		r5, r4, r1
	ldr		r0, [r5, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831d810
	mov		r0, #0x4
	bl		sub_08323a50
	mov		r0, #0x27
	bl		sub_08325e94
_0831d810:
	mov		r2, r8
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0831d904
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r2, _0831d908
	add		r1, r4, r2
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r6, _0831d90c
	add		r1, r4, r6
	mov		r0, #0x2
	strb	r0, [r1, #0x0]
	mov		r7, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	bge		_0831d8d8
	mov		r10, r4
_0831d83e:
	lsl		r0, r7, #0x2
	ldr		r1, _0831d910
	add		r1, r10
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	mov		r3, r10
	cmp		r4, r8
	beq		_0831d8ca
	add		r0, r4, #0x0
	add		r0, #0x6a
	mov		r6, #0x0
	ldrsh	r2, [r0, r6]
	str		r2, [sp, #0x4]
	cmp		r2, #0x0
	bne		_0831d8ca
	add		r5, r4, #0x0
	add		r5, #0x78
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x2
	beq		_0831d8ca
	cmp		r0, #0x3
	beq		_0831d8ca
	cmp		r0, #0x5
	beq		_0831d8ca
	cmp		r0, #0x6
	beq		_0831d8ca
	cmp		r0, #0x7
	beq		_0831d8ca
	ldr		r1, _0831d914
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	bne		_0831d88e
	ldr		r0, _0831d918
	ldr		r1, _0831d91c
	mov		r2, #0x0
	str		r3, [sp, #0x0]
	bl		sub_0830fbb8
	str		r4, [r0, #0x54]
	ldr		r3, [sp, #0x0]
_0831d88e:
	add		r2, r4, #0x0
	add		r2, #0xb4
	ldrh	r0, [r2, #0x0]
	mov		r6, #0xc0
	lsl		r6, r6, #0x2
	add		r1, r6, #0x0
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
	bne		_0831d8c0
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r1, [sp, #0x4]
	str		r1, [r0, #0x0]
_0831d8c0:
	add		r1, r4, #0x0
	add		r1, #0x68
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
_0831d8ca:
	add		r7, #0x1
	mov		r2, #0xf1
	lsl		r2, r2, #0x3
	add		r0, r3, r2
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	blt		_0831d83e
_0831d8d8:
	mov		r0, #0x0
	mov		r6, r9
	str		r0, [r6, #0x14]
	ldr		r1, _0831d920
	ldr		r2, _0831d924
	add		r0, r1, r2
	mov		r1, r9
	bl		sub_08321500
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D8FA, 0x2

_0831d8fc:	.4byte 0x030031D0
_0831d900:	.4byte 0x000007AC
_0831d904:	.4byte 0x0000FFBF
_0831d908:	.4byte 0x00000BF6
_0831d90c:	.4byte 0x00000781
_0831d910:	.4byte 0x0000078C
_0831d914:	.4byte 0x0300397C
_0831d918:	.4byte 0x020177BD
_0831d91c:	.4byte 0x0202C730
_0831d920:	.4byte 0x030031F4
_0831d924:	.4byte 0x0000070C
	thumb_func_end sub_0831d7e0

	thumb_func_start sub_0831d928
sub_0831d928:
	push	{ r4, r5, lr }
	ldr		r0, _0831d94c
	ldr		r1, _0831d950
	add		r5, r0, r1
	ldrh	r4, [r5, #0x0]
	cmp		r4, #0x0
	beq		_0831d944
	cmp		r4, #0x1
	bne		_0831d940
	mov		r0, #0x4
	bl		sub_08323b80
_0831d940:
	sub		r4, #0x1
	strh	r4, [r5, #0x0]
_0831d944:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31D94A, 0x2

_0831d94c:	.4byte 0x030031D0
_0831d950:	.4byte 0x00000BF6

.incbin "base.gba", 0x31D954, 0x98
	thumb_func_end sub_0831d928

	thumb_func_start sub_0831d9ec
sub_0831d9ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	ldr		r4, [r7, #0x54]
	ldr		r6, _0831da7c
	mov		r0, #0x24
	add		r0, r0, r6
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
	add		r1, r4, #0x0
	add		r1, #0x6a
	mov		r0, #0xba
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x2
	bl		sub_08317870
	add		r1, r4, #0x0
	add		r1, #0x66
	mov		r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp		r0, #0x0
	beq		_0831da46
	strh	r5, [r1, #0x0]
	ldr		r3, _0831da80
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0831da46
	mov		r0, #0x8
	bl		sub_08323b80
_0831da46:
	add		r2, r4, #0x0
	add		r2, #0xb2
	ldrh	r1, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x6
	add		r0, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _0831da7c
	ldr		r1, _0831da80
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_0831da68
	mov		r0, #0x10
	bl		sub_08323a50
_0831da68:
	ldr		r0, _0831da84
	add		r0, r8
	add		r1, r7, #0x0
	bl		sub_08321500
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0831da7c:	.4byte 0x030031D0
_0831da80:	.4byte 0x000007AC
_0831da84:	.4byte 0x0000070C
	thumb_func_end sub_0831d9ec

	thumb_func_start sub_0831da88
sub_0831da88:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r8, r0
	ldr		r4, _0831dafc
	mov		r0, #0x24
	add		r0, r0, r4
	mov		r9, r0
	mov		r1, r8
	ldr		r6, [r1, #0x54]
	mov		r5, #0x0
	add		r0, r6, #0x0
	mov		r1, #0x0
	bl		sub_08317a88
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0xb4
	lsl		r0, r0, #0x1
	strh	r0, [r1, #0x0]
	ldr		r1, _0831db00
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0831dac8
	mov		r0, #0x2c
	bl		sub_08325e94
	mov		r0, #0x8
	bl		sub_08323a50
_0831dac8:
	mov		r7, #0x0
	ldr		r1, _0831db04
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r5, r0
	bge		_0831db5c
_0831dad4:
	lsl		r1, r7, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r9
	bl		sub_0831eca8
	add		r4, r0, #0x0
	cmp		r6, r4
	beq		_0831db50
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r5, [r0, #0x0]
	cmp		r5, #0x0
	blt		_0831db12
	cmp		r5, #0x2
	ble		_0831db0c
	ldr		r0, _0831db08
	cmp		r5, r0
	beq		_0831db10
	b		_0831db12

_0831dafc:	.4byte 0x030031D0
_0831db00:	.4byte 0x000007AC
_0831db04:	.4byte 0x00000789
_0831db08:	.4byte 0x0000100E

_0831db0c:
	mov		r5, #0x0
	b		_0831db50
_0831db10:
	ldr		r5, _0831db28
_0831db12:
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0831db30
	add		r1, r5, #0x0
	ldr		r0, _0831db2c
	bl		sub_0832042c
	b		_0831db3c

_0831db28:	.4byte 0x00001009
_0831db2c:	.4byte 0x0000100B

_0831db30:
	cmp		r4, r0
	bne		_0831db3c
	add		r0, r5, #0x0
	mov		r1, #0x2
	bl		sub_0832042c
_0831db3c:
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08317a88
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_08317a88
	cmp		r5, #0x0
	bne		_0831db74
_0831db50:
	add		r7, #0x1
	ldr		r0, _0831dba4
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	cmp		r7, r0
	blt		_0831dad4
_0831db5c:
	cmp		r5, #0x0
	bne		_0831db74
	mov		r0, #0xf1
	lsl		r0, r0, #0x3
	add		r0, r9
	ldr		r0, [r0, #0x0]
	cmp		r6, r0
	bne		_0831db74
	ldr		r0, _0831dba8
	mov		r1, #0x0
	bl		sub_0832042c
_0831db74:
	mov		r0, r9
	mov		r1, #0x0
	bl		sub_0831eca8
	add		r4, r0, #0x0
	cmp		r6, r4
	beq		_0831dbb8
	mov		r0, r8
	str		r4, [r0, #0x54]
	ldrh	r1, [r0, #0x34]
	ldr		r0, _0831dbac
	and		r0, r1
	mov		r2, #0x0
	ldr		r1, _0831dbb0
	and		r0, r1
	mov		r1, r8
	strh	r0, [r1, #0x34]
	mov		r0, r8
	add		r0, #0x70
	strh	r2, [r0, #0x0]
	ldr		r0, _0831dbb4
	str		r0, [r1, #0x14]
	b		_0831dbc2

.incbin "base.gba", 0x31DBA2, 0x2

_0831dba4:	.4byte 0x00000765
_0831dba8:	.4byte 0x0000100B
_0831dbac:	.4byte 0x0000FFFD
_0831dbb0:	.4byte 0x0000FFFE
_0831dbb4:	.4byte 0x02017C99

_0831dbb8:
	ldr		r0, _0831dbd0
	add		r0, r9
	mov		r1, r8
	bl		sub_08321500
_0831dbc2:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31DBCE, 0x2

_0831dbd0:	.4byte 0x0000070C
	thumb_func_end sub_0831da88

	thumb_func_start sub_0831dbd4
sub_0831dbd4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r3, r0, #0x0
	ldr		r6, [r3, #0x54]
	ldr		r0, [r6, #0x0]
	mov		r12, r0
	ldr		r1, _0831dc54
	mov		r8, r1
	mov		r7, #0x26
	ldrsh	r2, [r3, r7]
	add		r0, r2, #0x0
	cmp		r2, #0x0
	bge		_0831dbf4
	add		r0, #0x3f
_0831dbf4:
	asr		r5, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r5
	ldr		r1, _0831dc58
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
	bge		_0831dc1c
	add		r0, #0xf
_0831dc1c:
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
	bge		_0831dc40
	add		r0, #0xf
_0831dc40:
	asr		r0, r0, #0x4
	add		r0, r6, r0
	str		r0, [r3, #0x4]
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31DC52, 0x2

_0831dc54:	.4byte 0x0202A9A0
_0831dc58:	.4byte 0x000003FF

.incbin "base.gba", 0x31DC5C, 0x104C
	thumb_func_end sub_0831dbd4

	thumb_func_start sub_0831eca8
sub_0831eca8:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x16
	ldr		r2, _0831ecb8
	add		r0, r0, r2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x31ECB6, 0x2

_0831ecb8:	.4byte 0x00000BAC
	thumb_func_end sub_0831eca8

	thumb_func_start sub_0831ecbc
sub_0831ecbc:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x16
	ldr		r3, _0831eccc
	add		r0, r0, r3
	add		r0, r0, r1
	str		r2, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x31ECCA, 0x2

_0831eccc:	.4byte 0x00000BAC
	thumb_func_end sub_0831ecbc

	thumb_func_start sub_0831ecd0
sub_0831ecd0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r9, r0
	lsl		r1, r1, #0x18
	lsr		r7, r1, #0x18
	b		_0831ed22
_0831ece2:
	mov		r0, r8
	bl		sub_0831745c
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_0831745c
	cmp		r4, r0
	ble		_0831ed50
	ldr		r0, [r5, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0831ed50
	mov		r0, r9
	mov		r1, r10
	add		r2, r5, #0x0
	bl		sub_0831ecbc
	add		r0, r5, #0x0
	add		r0, #0xba
	strh	r7, [r0, #0x0]
	lsl		r1, r6, #0x18
	lsr		r7, r1, #0x18
	lsr		r1, r1, #0x19
	mov		r0, r9
	mov		r2, r8
	bl		sub_0831ecbc
	mov		r0, r8
	add		r0, #0xba
	strh	r7, [r0, #0x0]
_0831ed22:
	cmp		r7, #0x0
	beq		_0831ed50
	lsr		r0, r7, #0x1
	mov		r10, r0
	mov		r0, r9
	mov		r1, r10
	bl		sub_0831eca8
	mov		r8, r0
	cmp		r0, #0x0
	beq		_0831ed50
	sub		r6, r7, #0x2
	lsr		r1, r6, #0x1f
	add		r1, r6, r1
	asr		r1, r1, #0x1
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r0, r9
	bl		sub_0831eca8
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_0831ece2
_0831ed50:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31ED5E, 0x2
	thumb_func_end sub_0831ecd0

	thumb_func_start sub_0831ed60
sub_0831ed60:
	push	{ lr }
	add		r1, #0xba
	ldrb	r1, [r1, #0x0]
	bl		sub_0831ecd0
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31ED6E, 0x2
	thumb_func_end sub_0831ed60

	thumb_func_start sub_0831ed70
sub_0831ed70:
	push	{ r4, lr }
	mov		r4, #0xf3
	lsl		r4, r4, #0x3
	add		r0, r0, r4
	bl		sub_083108ac
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31ED82, 0x2
	thumb_func_end sub_0831ed70

	thumb_func_start sub_0831ed84
sub_0831ed84:
	push	{ lr }
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	add		r2, r3, #0x0
	ldr		r3, [sp, #0x0+0x4]
	lsl		r3, r3, #0x10
	asr		r3, r3, #0x10
	bl		sub_08310b34
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x31ED9A, 0xBF6
	thumb_func_end sub_0831ed84

	thumb_func_start sub_0831f990
sub_0831f990:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r0, _0831f9e4
	mov		r1, #0x0
	strb	r1, [r0, #0x2]
	mov		r2, #0xbf
	lsl		r2, r2, #0x4
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
	ldr		r0, _0831f9e8
	ldr		r5, _0831f9ec
	add		r1, r5, #0x0
	mov		r2, #0x10
	bl		sub_083272c4
	add		r0, r4, #0x0
	bl		sub_08311948
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x6
	beq		_0831fa04
	cmp		r0, #0x6
	bgt		_0831f9f0
	cmp		r0, #0x0
	beq		_0831fa10
	b		_0831fa16

_0831f9e4:	.4byte 0x03006BA0
_0831f9e8:	.4byte 0x0202C95C
_0831f9ec:	.4byte 0x03002208

_0831f9f0:
	cmp		r0, #0xa
	beq		_0831fa0a
	cmp		r0, #0xc
	bne		_0831fa16
	mov		r1, #0x17
	strh	r1, [r5, #0xc]
	mov		r0, #0x18
	strh	r0, [r5, #0xe]
	strh	r1, [r5, #0x10]
	b		_0831fa16
_0831fa04:
	mov		r0, #0x17
	strh	r0, [r5, #0x2]
	b		_0831fa16
_0831fa0a:
	mov		r0, #0x18
	strh	r0, [r5, #0x2]
	b		_0831fa16
_0831fa10:
	mov		r0, #0x1b
	strh	r0, [r5, #0x0]
	strh	r0, [r5, #0xe]
_0831fa16:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0831f990

	thumb_func_start sub_0831fa1c
sub_0831fa1c:
	mov		r0, #0x0
	bx		lr
	thumb_func_end sub_0831fa1c

	thumb_func_start sub_0831fa20
sub_0831fa20:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r6, r0, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r2, #0xe9
	lsl		r2, r2, #0x3
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	mov		r7, #0xf
	add		r1, r7, #0x0
	and		r1, r0
	str		r1, [sp, #0x0]
	add		r2, #0x6
	add		r0, r6, r2
	ldrh	r0, [r0, #0x0]
	mov		r7, #0xf0
	lsl		r7, r7, #0x4
	mov		r10, r7
	mov		r1, r10
	and		r1, r0
	mov		r10, r1
	add		r0, r6, r2
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831fa68
	b		_0832010e
_0831fa68:
	mov		r2, r8
	add		r2, #0x78
	str		r2, [sp, #0x4]
	ldr		r7, [sp, #0x0]
	cmp		r7, #0x4
	bgt		_0831fb40
	cmp		r7, #0x3
	blt		_0831fb1a
	mov		r0, r8
	ldr		r1, [r0, #0x48]
	mov		r0, #0x28
	and		r0, r1
	cmp		r0, #0x28
	bne		_0831fb1a
	mov		r2, #0x0
	mov		r9, r2
	mov		r0, #0x9
	neg		r0, r0
	and		r1, r0
	mov		r7, r8
	str		r1, [r7, #0x48]
	ldr		r5, _0831fae8
	ldr		r0, _0831faec
	ldrh	r1, [r0, #0x2c]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326664
	mov		r4, #0x5
	ldr		r0, _0831faf0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r4, r0
	bge		_0831fac8
	add		r7, r0, #0x0
	add		r5, #0x3c
_0831fab6:
	cmp		r4, #0x8
	beq		_0831fac0
	ldr		r0, [r5, #0x0]
	bl		sub_08326664
_0831fac0:
	add		r5, #0xc
	add		r4, #0x1
	cmp		r4, r7
	blt		_0831fab6
_0831fac8:
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r10, r0
	bne		_0831fb0a
	mov		r0, r8
	add		r0, #0xba
	ldrh	r0, [r0, #0x0]
	lsr		r1, r0, #0x1
	ldr		r2, _0831faf4
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	cmp		r1, #0x0
	bne		_0831fafc
	ldr		r7, _0831faf8
	b		_0831fb08

.incbin "base.gba", 0x31FAE6, 0x2

_0831fae8:	.4byte 0x0202E890
_0831faec:	.4byte 0x0202E8F0
_0831faf0:	.4byte 0x00000008
_0831faf4:	.4byte 0x00000764
_0831faf8:	.4byte 0x0202C97C

_0831fafc:
	sub		r0, #0x1
	ldr		r2, _0831fb38
	mov		r9, r2
	cmp		r1, r0
	bge		_0831fb0a
	ldr		r7, _0831fb3c
_0831fb08:
	mov		r9, r7
_0831fb0a:
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0831fb1a
	mov		r0, #0x0
	mov		r1, r9
	mov		r2, #0x0
	bl		sub_0830fbb8
_0831fb1a:
	ldr		r1, [sp, #0x0]
	cmp		r1, #0x4
	bgt		_0831fb40
	cmp		r1, #0x2
	blt		_0831fb2c
	mov		r0, r8
	add		r1, r6, #0x0
	bl		sub_08319de8
_0831fb2c:
	ldr		r2, [sp, #0x0]
	cmp		r2, #0x3
	bge		_0831fb54
	cmp		r2, #0x2
	beq		_0831fb4a
	b		_0831fe38

_0831fb38:	.4byte 0x0202C9DC
_0831fb3c:	.4byte 0x0202C99C

_0831fb40:
	ldr		r7, [sp, #0x0]
	cmp		r7, #0x5
	bne		_0831fb48
	b		_0831fe14
_0831fb48:
	b		_0831fe38
_0831fb4a:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r10, r0
	bne		_0831fb54
	b		_0831fe38
_0831fb54:
	mov		r0, #0x80
	lsl		r0, r0, #0x4
	cmp		r10, r0
	bne		_0831fb9c
	mov		r1, r8
	ldr		r0, [r1, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831fb9c
	ldr		r2, _0831fb90
	add		r1, r6, r2
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0831fb74
	b		_0831fe38
_0831fb74:
	ldr		r3, _0831fb94
	ldr		r2, _0831fb98
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
	b		_0831fe38

_0831fb90:	.4byte 0x00000BE8
_0831fb94:	.4byte 0x0202E890
_0831fb98:	.4byte 0x0202E8F0

_0831fb9c:
	mov		r7, #0xf3
	lsl		r7, r7, #0x3
	add		r0, r6, r7
	mov		r5, #0x0
	ldr		r1, [r0, #0x18]
	str		r1, [sp, #0xC]
	ldr		r0, [r0, #0x1c]
	mov		r10, r0
	mov		r3, #0x80
	lsl		r3, r3, #0x7
	mov		r4, #0x0
	ldr		r2, _0831fd18
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	cmp		r5, r0
	bge		_0831fc12
_0831fbbc:
	lsl		r1, r4, #0x18
	lsr		r1, r1, #0x18
	add		r0, r6, #0x0
	str		r3, [sp, #0x8]
	bl		sub_0831eca8
	add		r2, r0, #0x0
	ldr		r3, [sp, #0x8]
	cmp		r2, r8
	beq		_0831fc06
	ldr		r0, [r2, #0x0]
	ldr		r7, [sp, #0xC]
	sub		r1, r7, r0
	cmp		r1, #0x0
	bge		_0831fbde
	ldr		r0, _0831fd1c
	add		r1, r1, r0
_0831fbde:
	asr		r1, r1, #0x10
	ldr		r0, [r2, #0x4]
	mov		r7, r10
	sub		r0, r7, r0
	cmp		r0, #0x0
	bge		_0831fbee
	ldr		r7, _0831fd1c
	add		r0, r0, r7
_0831fbee:
	asr		r0, r0, #0x10
	add		r7, r1, #0x0
	mul		r7, r1
	add		r1, r7, #0x0
	add		r7, r0, #0x0
	mul		r7, r0
	add		r0, r7, #0x0
	add		r0, r1, r0
	cmp		r0, r3
	bge		_0831fc06
	add		r5, r2, #0x0
	add		r3, r0, #0x0
_0831fc06:
	add		r4, #0x1
	ldr		r1, _0831fd18
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_0831fbbc
_0831fc12:
	cmp		r5, #0x0
	bne		_0831fc18
	b		_0831fdcc
_0831fc18:
	ldr		r2, _0831fd20
	add		r1, r6, r2
	ldr		r0, [r1, #0x0]
	cmp		r5, r0
	beq		_0831fc2c
	str		r5, [r1, #0x0]
	ldr		r7, _0831fd24
	add		r1, r6, r7
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_0831fc2c:
	ldr		r0, _0831fd28
	add		r0, r0, r6
	mov		r9, r0
	mov		r0, #0x16
	mov		r1, r9
	strh	r0, [r1, #0x0]
	ldr		r0, [r5, #0x0]
	ldr		r2, [sp, #0xC]
	sub		r1, r2, r0
	cmp		r1, #0x0
	bge		_0831fc46
	ldr		r7, _0831fd1c
	add		r1, r1, r7
_0831fc46:
	asr		r1, r1, #0x10
	ldr		r0, [r5, #0x4]
	mov		r2, r10
	sub		r0, r2, r0
	cmp		r0, #0x0
	bge		_0831fc56
	ldr		r7, _0831fd1c
	add		r0, r0, r7
_0831fc56:
	asr		r0, r0, #0x10
	add		r2, r1, #0x0
	mul		r2, r1
	add		r1, r2, #0x0
	add		r7, r0, #0x0
	mul		r7, r0
	add		r0, r7, #0x0
	add		r7, r1, r0
	ldr		r0, _0831fd2c
	cmp		r7, r0
	ble		_0831fc6e
	b		_0831fd90
_0831fc6e:
	add		r0, r5, #0x0
	bl		sub_08319ca8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_0831fa1c
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r10, r4
	add		r0, r5, #0x0
	mov		r1, r10
	bl		sub_08319da8
	add		r3, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x7
	sub		r1, r0, r7
	add		r0, r1, #0x0
	cmp		r1, #0x0
	bge		_0831fca0
	ldr		r2, _0831fd30
	add		r0, r1, r2
_0831fca0:
	asr		r0, r0, #0xb
	lsl		r2, r0, #0x3
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0831fcac
	add		r0, #0x7f
_0831fcac:
	asr		r1, r0, #0x7
	lsl		r0, r3, #0x10
	lsr		r0, r0, #0x10
	mul		r0, r1
	cmp		r0, #0x0
	bge		_0831fcba
	add		r0, #0xff
_0831fcba:
	asr		r0, r0, #0x8
	add		r0, r2, r0
	lsl		r0, r0, #0x10
	lsr		r7, r0, #0x10
	ldr		r1, _0831fd24
	add		r0, r6, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0831fd3c
	mov		r2, r9
	ldrh	r4, [r2, #0x0]
	add		r0, r4, #0x0
	bl		sub_08325e94
	ldr		r5, _0831fd34
	ldr		r0, _0831fd38
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r7, #0x0
	bl		sub_08326df4
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, r10
	mov		r1, #0x1
	bl		sub_08326e5c
	b		_0831fd78

_0831fd18:	.4byte 0x00000764
_0831fd1c:	.4byte 0x0000FFFF
_0831fd20:	.4byte 0x00000BEC
_0831fd24:	.4byte 0x00000BEA
_0831fd28:	.4byte 0x00000BE8
_0831fd2c:	.4byte 0x00003FFF
_0831fd30:	.4byte 0x000007FF
_0831fd34:	.4byte 0x0202E890
_0831fd38:	.4byte 0x0202E8F0

_0831fd3c:
	mov		r1, r9
	ldrh	r0, [r1, #0x0]
	ldr		r5, _0831fd84
	ldr		r4, _0831fd88
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r1, #0x1
	add		r2, r7, #0x0
	bl		sub_08326df4
	mov		r2, r9
	ldrh	r0, [r2, #0x0]
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, r10
	mov		r1, #0x1
	bl		sub_08326e5c
_0831fd78:
	ldr		r7, _0831fd8c
	add		r1, r6, r7
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0831fe38

.incbin "base.gba", 0x31FD82, 0x2

_0831fd84:	.4byte 0x0202E890
_0831fd88:	.4byte 0x0202E8F0
_0831fd8c:	.4byte 0x00000BEA

_0831fd90:
	ldr		r0, _0831fdc0
	add		r4, r6, r0
	ldrh	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0831fdb8
	mov		r1, r9
	ldrh	r0, [r1, #0x0]
	ldr		r3, _0831fdc4
	ldr		r2, _0831fdc8
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
_0831fdb8:
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	b		_0831fe38

.incbin "base.gba", 0x31FDBE, 0x2

_0831fdc0:	.4byte 0x00000BEA
_0831fdc4:	.4byte 0x0202E890
_0831fdc8:	.4byte 0x0202E8F0

_0831fdcc:
	ldr		r2, _0831fe04
	add		r0, r6, r2
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0831fdfa
	ldr		r7, _0831fe08
	add		r1, r6, r7
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0831fdfa
	ldr		r3, _0831fe0c
	ldr		r2, _0831fe10
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
_0831fdfa:
	ldr		r0, _0831fe04
	add		r1, r6, r0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	b		_0831fe38

_0831fe04:	.4byte 0x00000BEA
_0831fe08:	.4byte 0x00000BE8
_0831fe0c:	.4byte 0x0202E890
_0831fe10:	.4byte 0x0202E8F0

_0831fe14:
	ldr		r2, _0831ff20
	add		r1, r6, r2
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0831fe38
	ldr		r3, _0831ff24
	ldr		r2, _0831ff28
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
_0831fe38:
	ldr		r7, [sp, #0x4]
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x4
	bne		_0831fe42
	b		_0832008c
_0831fe42:
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831fe54
	b		_08320028
_0831fe54:
	mov		r2, r8
	ldr		r1, [r2, #0x48]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831fe62
	b		_08320028
_0831fe62:
	mov		r0, r8
	add		r0, #0xb4
	ldrh	r3, [r0, #0x0]
	ldr		r0, _0831ff2c
	and		r0, r3
	cmp		r0, #0x0
	beq		_0831fe72
	b		_08320028
_0831fe72:
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	and		r1, r0
	cmp		r1, #0x0
	beq		_0831fe96
	mov		r0, r8
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	blt		_0831fe88
	b		_08320028
_0831fe88:
	mov		r0, r8
	add		r0, #0x88
	mov		r7, #0x0
	ldrsh	r0, [r0, r7]
	cmp		r0, #0x0
	bne		_0831fe96
	b		_08320028
_0831fe96:
	mov		r0, r8
	add		r0, #0x7e
	ldrb	r2, [r0, #0x0]
	add		r0, r2, #0x0
	cmp		r0, #0xd
	bne		_0831fea4
	b		_08320028
_0831fea4:
	cmp		r0, #0x5
	bne		_0831feaa
	b		_08320028
_0831feaa:
	cmp		r0, #0x6
	bne		_0831feb0
	b		_08320028
_0831feb0:
	cmp		r0, #0x7
	bne		_0831feb6
	b		_08320028
_0831feb6:
	cmp		r0, #0x8
	bne		_0831febc
	b		_08320028
_0831febc:
	cmp		r0, #0xf
	bne		_0831fec2
	b		_08320028
_0831fec2:
	mov		r0, r8
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0831feda
	sub		r0, #0x37
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x50
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0xf
	bls		_0831ff00
_0831feda:
	sub		r0, r2, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x3
	bhi		_0831feec
	mov		r0, #0x24
	and		r0, r3
	cmp		r0, #0x0
	bne		_0831ff00
_0831feec:
	cmp		r1, #0x0
	blt		_0831fef2
	b		_08320028
_0831fef2:
	mov		r0, r8
	add		r0, #0x88
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp		r0, #0x0
	bne		_0831ff00
	b		_08320028
_0831ff00:
	mov		r0, r8
	add		r0, #0x85
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_0831ff34
	ldr		r0, _0831ff30
	lsr		r1, r1, #0x1
	mov		r2, #0xf
	and		r1, r2
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	b		_0831ff36

.incbin "base.gba", 0x31FF1E, 0x2

_0831ff20:	.4byte 0x00000BE8
_0831ff24:	.4byte 0x0202E890
_0831ff28:	.4byte 0x0202E8F0
_0831ff2c:	.4byte 0x00008001
_0831ff30:	.4byte 0x03002208

_0831ff34:
	mov		r0, #0x0
_0831ff36:
	add		r4, r0, #0x0
	mov		r2, #0xbf
	lsl		r2, r2, #0x4
	add		r5, r6, r2
	ldrh	r7, [r5, #0x0]
	cmp		r4, r7
	beq		_0831ffbc
	cmp		r4, #0x0
	beq		_0831ff4e
	bl		sub_08325e94
	b		_0831ff68
_0831ff4e:
	ldr		r3, _0831ffac
	ldr		r2, _0831ffb0
	add		r0, r2, #0x0
	add		r0, #0xb8
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
_0831ff68:
	mov		r0, #0xbf
	lsl		r0, r0, #0x4
	add		r5, r6, r0
	strh	r4, [r5, #0x0]
	mov		r2, r8
	ldr		r1, [r2, #0x4]
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	bge		_0831ff7e
	ldr		r7, _0831ffb4
	add		r0, r0, r7
_0831ff7e:
	asr		r0, r0, #0x12
	mov		r3, #0x3f
	and		r0, r3
	lsl		r2, r0, #0xa
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0831ff90
	ldr		r1, _0831ffb4
	add		r0, r0, r1
_0831ff90:
	asr		r0, r0, #0x12
	and		r0, r3
	lsl		r1, r0, #0x4
	orr		r1, r2
	ldr		r7, _0831ffb8
	add		r2, r6, r7
	strh	r1, [r2, #0x0]
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x1d
	bne		_08320002
	mov		r0, #0x6
	orr		r1, r0
	strh	r1, [r2, #0x0]
	b		_08320002

_0831ffac:	.4byte 0x0202E890
_0831ffb0:	.4byte 0x0202E8F0
_0831ffb4:	.4byte 0x0003FFFF
_0831ffb8:	.4byte 0x00000BF2

_0831ffbc:
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x1d
	bne		_08320002
	mov		r0, r8
	ldr		r1, [r0, #0x4]
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bge		_0831ffd0
	ldr		r2, _0832001c
	add		r0, r0, r2
_0831ffd0:
	asr		r0, r0, #0x12
	mov		r3, #0x3f
	and		r0, r3
	lsl		r2, r0, #0xa
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0831ffe2
	ldr		r7, _0832001c
	add		r0, r0, r7
_0831ffe2:
	asr		r0, r0, #0x12
	and		r0, r3
	lsl		r1, r0, #0x4
	orr		r1, r2
	ldr		r2, _08320020
	add		r0, r6, r2
	ldrh	r3, [r0, #0x0]
	mov		r2, #0xf
	and		r2, r3
	cmp		r2, #0x0
	bne		_08320010
	ldr		r0, _08320024
	and		r0, r3
	cmp		r0, r1
	beq		_08320002
	strh	r2, [r5, #0x0]
_08320002:
	ldr		r7, _08320020
	add		r0, r6, r7
	ldrh	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832008c
_08320010:
	ldr		r0, _08320020
	add		r1, r6, r0
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0832008c

_0832001c:	.4byte 0x0003FFFF
_08320020:	.4byte 0x00000BF2
_08320024:	.4byte 0x0000FFF0

_08320028:
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r2, r6, r1
	ldrh	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_0832008c
	mov		r7, r8
	ldr		r0, [r7, #0x48]
	mov		r1, #0x80
	lsl		r1, r1, #0xb
	and		r0, r1
	cmp		r0, #0x0
	bne		_0832007c
	mov		r0, r8
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_0832007c
	ldrh	r0, [r2, #0x0]
	ldr		r3, _083200f0
	ldr		r2, _083200f4
	lsl		r0, r0, #0x3
	add		r0, r0, r2
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r0, [r0, #0x0]
	ldr		r1, [r2, #0x8]
	bl		sub_08326580
	mov		r2, #0xcd
	lsl		r2, r2, #0x1
	add		r2, r8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0xef
	and		r0, r1
	strb	r0, [r2, #0x0]
_0832007c:
	mov		r1, #0xbf
	lsl		r1, r1, #0x4
	add		r0, r6, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r2, _083200f8
	add		r0, r6, r2
	strh	r1, [r0, #0x0]
_0832008c:
	mov		r0, r8
	add		r1, r6, #0x0
	bl		sub_08319fa4
	mov		r0, #0xc0
	lsl		r0, r0, #0x1
	add		r0, r8
	ldr		r2, [r0, #0x0]
	mov		r0, #0xc2
	lsl		r0, r0, #0x1
	add		r0, r8
	ldr		r1, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x8
	and		r1, r0
	ldr		r7, [sp, #0x0]
	cmp		r7, #0x3
	bne		_08320100
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	cmp		r1, r0
	beq		_083200c0
	mov		r0, #0xe0
	lsl		r0, r0, #0x8
	cmp		r1, r0
	bne		_08320100
_083200c0:
	mov		r0, #0x22
	ldrsh	r1, [r2, r0]
	mov		r0, #0x18
	neg		r0, r0
	cmp		r1, r0
	ble		_08320100
	ldr		r1, _083200fc
	add		r4, r6, r1
	ldrh	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_083200dc
	mov		r0, #0x12
	bl		sub_08325e94
_083200dc:
	ldrh	r0, [r4, #0x0]
	add		r0, #0x1
	strh	r0, [r4, #0x0]
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x15
	bls		_08320108
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	b		_08320108

_083200f0:	.4byte 0x0202E890
_083200f4:	.4byte 0x0202E8F0
_083200f8:	.4byte 0x00000BF2
_083200fc:	.4byte 0x00000BF4

_08320100:
	ldr		r2, _08320120
	add		r1, r6, r2
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08320108:
	add		r0, r6, #0x0
	bl		sub_0831a15c
_0832010e:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32011E, 0x2

_08320120:	.4byte 0x00000BF4
	thumb_func_end sub_0831fa20

	thumb_func_start sub_08320124
sub_08320124:
	push	{ r4, lr }
	add		r4, r1, #0x0
	mov		r1, #0xf3
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	add		r3, r0, #0x0
	ldr		r1, [r4, #0x0]
	ldr		r0, [r3, #0x18]
	sub		r1, r1, r0
	cmp		r1, #0x0
	bge		_0832013e
	ldr		r2, _08320168
	add		r1, r1, r2
_0832013e:
	asr		r2, r1, #0x10
	ldr		r1, [r4, #0x4]
	ldr		r0, [r3, #0x1c]
	sub		r0, r1, r0
	cmp		r0, #0x0
	bge		_0832014e
	ldr		r1, _08320168
	add		r0, r0, r1
_0832014e:
	asr		r0, r0, #0x10
	add		r1, r2, #0x0
	mul		r1, r2
	add		r2, r0, #0x0
	mul		r2, r0
	add		r0, r2, #0x0
	add		r1, r1, r0
	ldr		r0, _0832016c
	cmp		r1, r0
	ble		_08320170
	mov		r0, #0x0
	b		_08320188

.incbin "base.gba", 0x320166, 0x2

_08320168:	.4byte 0x0000FFFF
_0832016c:	.4byte 0x0003FFFF

_08320170:
	add		r0, r1, #0x0
	cmp		r0, #0x0
	bge		_0832017a
	ldr		r1, _08320190
	add		r0, r0, r1
_0832017a:
	asr		r1, r0, #0xa
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r2, #0x0
	sub		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
_08320188:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x32018E, 0x2

_08320190:	.4byte 0x000003FF
	thumb_func_end sub_08320124

	thumb_func_start sub_08320194
sub_08320194:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	mov		r4, #0x0
	lsl		r0, r6, #0x1
	mov		r8, r0
	ldr		r7, _0832020c
	ldr		r0, _08320210
	mov		r9, r0
_083201ac:
	add		r4, #0x1
	mov		r0, #0x0
	mov		r1, #0xe
	add		r2, r4, #0x0
	bl		sub_0830e6e4
	add		r2, r0, #0x0
	add		r5, r4, #0x0
	mov		r0, r8
	add		r0, r9
	ldrh	r4, [r0, #0x0]
	mov		r3, #0x1
_083201c4:
	ldrh	r1, [r2, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_083201c4
	add		r4, r5, #0x0
	cmp		r4, #0x1
	ble		_083201ac
	mov		r0, #0x1
	bl		sub_0830e730
	cmp		r6, #0xf
	bne		_083201e8
	mov		r6, #0xb
_083201e8:
	cmp		r6, #0x10
	bne		_083201ee
	mov		r6, #0xa
_083201ee:
	bl		sub_08310000
	lsl		r1, r6, #0x7
	ldr		r2, _08320214
	add		r1, r1, r2
	ldr		r2, _08320218
	ldr		r3, _0832021c
	bl		sub_0830fec4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0832020c:	.4byte 0x00000FFF
_08320210:	.4byte 0x0202C9F4
_08320214:	.4byte 0x02026D1C
_08320218:	.4byte 0x06000E00
_0832021c:	.4byte 0x80000040
	thumb_func_end sub_08320194

	thumb_func_start sub_08320220
sub_08320220:
	push	{ lr }
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r2, r1, #0x0
	ldr		r0, _0832025c
	cmp		r1, r0
	bne		_08320230
	b		_08320388
_08320230:
	cmp		r1, r0
	bgt		_083202ac
	sub		r0, #0x7
	cmp		r1, r0
	bne		_0832023c
	b		_08320368
_0832023c:
	cmp		r1, r0
	bgt		_08320278
	sub		r0, #0x3
	cmp		r1, r0
	bne		_08320248
	b		_08320370
_08320248:
	cmp		r1, r0
	bgt		_08320260
	cmp		r1, #0x2
	bne		_08320252
	b		_08320388
_08320252:
	sub		r0, #0x1
	cmp		r1, r0
	bne		_0832025a
	b		_08320378
_0832025a:
	b		_083203a0

_0832025c:	.4byte 0x0000100B

_08320260:
	ldr		r0, _08320274
	cmp		r1, r0
	bne		_08320268
	b		_08320390
_08320268:
	add		r0, #0x1
	cmp		r1, r0
	bne		_08320270
	b		_08320398
_08320270:
	b		_083203a0

.incbin "base.gba", 0x320272, 0x2

_08320274:	.4byte 0x00001002

_08320278:
	ldr		r0, _08320290
	cmp		r1, r0
	beq		_08320350
	cmp		r1, r0
	bgt		_08320294
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08320330
	add		r0, #0x1
	cmp		r1, r0
	beq		_08320360
	b		_083203a0

_08320290:	.4byte 0x00001007

_08320294:
	ldr		r0, _083202a8
	cmp		r1, r0
	beq		_08320358
	cmp		r1, r0
	bgt		_08320340
	mov		r0, #0x4
	bl		sub_08320194
	b		_083203a6

.incbin "base.gba", 0x3202A6, 0x2

_083202a8:	.4byte 0x00001009

_083202ac:
	ldr		r0, _083202d0
	cmp		r1, r0
	beq		_08320390
	cmp		r1, r0
	bgt		_083202f0
	ldr		r0, _083202d4
	cmp		r1, r0
	beq		_08320358
	cmp		r1, r0
	bgt		_083202d8
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08320338
	add		r0, #0x1
	cmp		r1, r0
	beq		_08320380
	b		_083203a0

.incbin "base.gba", 0x3202CE, 0x2

_083202d0:	.4byte 0x00002002
_083202d4:	.4byte 0x0000100E

_083202d8:
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	cmp		r1, r0
	beq		_08320378
	cmp		r1, r0
	bgt		_08320370
	ldr		r0, _083202ec
	cmp		r1, r0
	beq		_08320348
	b		_083203a0

_083202ec:	.4byte 0x0000100F

_083202f0:
	ldr		r0, _08320308
	cmp		r1, r0
	beq		_08320330
	cmp		r1, r0
	bgt		_0832030c
	sub		r0, #0x2
	cmp		r1, r0
	beq		_08320398
	add		r0, #0x1
	cmp		r1, r0
	beq		_08320368
	b		_083203a0

_08320308:	.4byte 0x00002005

_0832030c:
	ldr		r0, _08320320
	cmp		r1, r0
	beq		_08320340
	cmp		r1, r0
	bgt		_08320324
	sub		r0, #0x3
	cmp		r1, r0
	beq		_08320350
	b		_083203a0

.incbin "base.gba", 0x32031E, 0x2

_08320320:	.4byte 0x0000200A

_08320324:
	ldr		r0, _0832032c
	cmp		r2, r0
	beq		_08320338
	b		_083203a0

_0832032c:	.4byte 0x0000200C

_08320330:
	mov		r0, #0x1
	bl		sub_08320194
	b		_083203a6
_08320338:
	mov		r0, #0x2
	bl		sub_08320194
	b		_083203a6
_08320340:
	mov		r0, #0x3
	bl		sub_08320194
	b		_083203a6
_08320348:
	mov		r0, #0x5
	bl		sub_08320194
	b		_083203a6
_08320350:
	mov		r0, #0x6
	bl		sub_08320194
	b		_083203a6
_08320358:
	mov		r0, #0x7
	bl		sub_08320194
	b		_083203a6
_08320360:
	mov		r0, #0x8
	bl		sub_08320194
	b		_083203a6
_08320368:
	mov		r0, #0x9
	bl		sub_08320194
	b		_083203a6
_08320370:
	mov		r0, #0xa
	bl		sub_08320194
	b		_083203a6
_08320378:
	mov		r0, #0xb
	bl		sub_08320194
	b		_083203a6
_08320380:
	mov		r0, #0xc
	bl		sub_08320194
	b		_083203a6
_08320388:
	mov		r0, #0xd
	bl		sub_08320194
	b		_083203a6
_08320390:
	mov		r0, #0xf
	bl		sub_08320194
	b		_083203a6
_08320398:
	mov		r0, #0x10
	bl		sub_08320194
	b		_083203a6
_083203a0:
	mov		r0, #0x0
	bl		sub_08320194
_083203a6:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3203AA, 0xE
	thumb_func_end sub_08320220

	thumb_func_start sub_083203b8
sub_083203b8:
	push	{ lr }
	ldr		r1, _083203e0
	ldr		r0, _083203e4
	add		r2, r1, r0
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
	ldr		r0, _083203e8
	add		r2, r1, r0
	ldr		r0, _083203ec
	strh	r0, [r2, #0x0]
	ldr		r0, _083203f0
	add		r1, r1, r0
	mov		r0, #0x1
	neg		r0, r0
	strh	r0, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_08320194
	pop		{ r0 }
	bx		r0

_083203e0:	.4byte 0x030031D0
_083203e4:	.4byte 0x00000C06
_083203e8:	.4byte 0x00000C02
_083203ec:	.4byte 0x0000FFFF
_083203f0:	.4byte 0x00000C04
	thumb_func_end sub_083203b8

	thumb_func_start sub_083203f4
sub_083203f4:
	push	{ r4, r5, lr }
	ldr		r2, _0832041c
	ldr		r1, _08320420
	add		r3, r2, r1
	ldrh	r4, [r3, #0x0]
	ldr		r5, _08320424
	add		r1, r2, r5
	strh	r4, [r1, #0x0]
	strh	r0, [r3, #0x0]
	ldr		r0, _08320428
	add		r2, r2, r0
	mov		r0, #0xa0
	strh	r0, [r2, #0x0]
	ldrh	r0, [r3, #0x0]
	bl		sub_08320220
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32041A, 0x2

_0832041c:	.4byte 0x030031D0
_08320420:	.4byte 0x00000C02
_08320424:	.4byte 0x00000C04
_08320428:	.4byte 0x00000C06
	thumb_func_end sub_083203f4

	thumb_func_start sub_0832042c
sub_0832042c:
	push	{ r4, lr }
	ldr		r3, _08320450
	ldr		r4, _08320454
	add		r2, r3, r4
	strh	r0, [r2, #0x0]
	ldr		r0, _08320458
	add		r2, r3, r0
	strh	r1, [r2, #0x0]
	add		r4, #0x2
	add		r3, r3, r4
	mov		r0, #0xa0
	strh	r0, [r3, #0x0]
	ldrh	r0, [r2, #0x0]
	bl		sub_08320220
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08320450:	.4byte 0x030031D0
_08320454:	.4byte 0x00000C04
_08320458:	.4byte 0x00000C02
	thumb_func_end sub_0832042c

	thumb_func_start sub_0832045c
sub_0832045c:
	push	{ lr }
	ldr		r0, _08320474
	ldr		r1, _08320478
	add		r0, r0, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0832047c
	cmp		r1, r0
	bne		_08320480
	add		r0, #0x7
	bl		sub_083203f4
	b		_08320498

_08320474:	.4byte 0x030031D0
_08320478:	.4byte 0x00000C02
_0832047c:	.4byte 0x00001008

_08320480:
	ldr		r0, _08320490
	cmp		r1, r0
	bne		_08320494
	sub		r0, #0x8
	bl		sub_083203f4
	b		_08320498

.incbin "base.gba", 0x32048E, 0x2

_08320490:	.4byte 0x0000100F

_08320494:
	bl		sub_083203b8
_08320498:
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0832045c

	thumb_func_start sub_0832049c
sub_0832049c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	ldr		r4, [r0, #0x0]
	bl		sub_083203b8
	mov		r1, #0xbd
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_083204c4
	bl		sub_083203f4
	ldr		r0, _083204cc
	add		r1, r5, r0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_083204c4:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3204CA, 0x2

_083204cc:	.4byte 0x00000BE2
	thumb_func_end sub_0832049c

	thumb_func_start sub_083204d0
sub_083204d0:
	push	{ r4, lr }
	ldr		r3, _08320560
	add		r4, r3, #0x0
	add		r4, #0x24
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_083204ec
	b		_0832063a
_083204ec:
	ldr		r1, _08320564
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	add		r2, r1, #0x0
	cmp		r2, #0x0
	bne		_083204fa
	b		_08320628
_083204fa:
	mov		r0, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08320504
	b		_08320606
_08320504:
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_083205d0
	ldr		r1, _08320568
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0832056c
	cmp		r1, r0
	beq		_0832052e
	add		r0, #0x7
	cmp		r1, r0
	beq		_0832052e
	sub		r0, #0x4
	cmp		r1, r0
	beq		_0832053c
	ldr		r1, _08320570
	add		r0, r3, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_083205c8
_0832052e:
	mov		r1, #0xbe
	lsl		r1, r1, #0x4
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08320574
	cmp		r1, r0
	bne		_0832057c
_0832053c:
	ldr		r1, _08320578
	add		r0, r4, r1
	ldrh	r2, [r0, #0x0]
	cmp		r2, #0x2
	beq		_08320558
	mov		r1, #0xbe
	lsl		r1, r1, #0x4
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08320574
	cmp		r1, r0
	bne		_0832057c
	cmp		r2, r1
	bne		_0832057c
_08320558:
	mov		r0, #0x0
	bl		sub_08320194
	b		_08320588

_08320560:	.4byte 0x030031D0
_08320564:	.4byte 0x00000C06
_08320568:	.4byte 0x00000C04
_0832056c:	.4byte 0x00001008
_08320570:	.4byte 0x00000C02
_08320574:	.4byte 0x0000100B
_08320578:	.4byte 0x00000BDE

_0832057c:
	mov		r1, #0xbe
	lsl		r1, r1, #0x4
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	bl		sub_08320220
_08320588:
	mov		r1, #0xbe
	lsl		r1, r1, #0x4
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _083205a8
	cmp		r1, r0
	bne		_083205b0
	ldr		r1, _083205ac
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_083205b0
	mov		r0, #0x2d
	bl		sub_08325e94
	b		_08320606

_083205a8:	.4byte 0x0000100B
_083205ac:	.4byte 0x00000BDE

_083205b0:
	ldr		r1, _083205c4
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_08320606
	mov		r0, #0x2e
	bl		sub_08325e94
	b		_08320606

.incbin "base.gba", 0x3205C2, 0x2

_083205c4:	.4byte 0x00000BDE

_083205c8:
	mov		r0, #0x0
	bl		sub_08320194
	b		_08320606
_083205d0:
	cmp		r2, #0x40
	bls		_083205fc
	ldr		r1, _08320614
	add		r0, r3, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, _08320618
	cmp		r1, r0
	beq		_083205fc
	add		r0, #0x7
	cmp		r1, r0
	beq		_083205fc
	sub		r0, #0x4
	cmp		r1, r0
	beq		_083205fc
	ldr		r1, _0832061c
	add		r0, r3, r1
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_083205fc
	mov		r0, #0x11
	bl		sub_08325e94
_083205fc:
	ldr		r1, _08320620
	add		r0, r4, r1
	ldrh	r0, [r0, #0x0]
	bl		sub_08320220
_08320606:
	ldr		r0, _08320624
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0832063a

.incbin "base.gba", 0x320612, 0x2

_08320614:	.4byte 0x00000C04
_08320618:	.4byte 0x00001008
_0832061c:	.4byte 0x00000C02
_08320620:	.4byte 0x00000BDE
_08320624:	.4byte 0x00000BE2

_08320628:
	ldr		r0, _08320640
	add		r1, r3, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x2
	bne		_08320634
	strh	r2, [r1, #0x0]
_08320634:
	ldrh	r0, [r1, #0x0]
	bl		sub_08320220
_0832063a:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08320640:	.4byte 0x00000C02

.incbin "base.gba", 0x320644, 0x20
	thumb_func_end sub_083204d0

	thumb_func_start sub_08320664
sub_08320664:
	ldr		r1, _08320674
	ldrb	r2, [r1, #0xc]
	mov		r0, #0xfd
	and		r0, r2
	strb	r0, [r1, #0xc]
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x320672, 0x2

_08320674:	.4byte 0x03005EC0
	thumb_func_end sub_08320664

	thumb_func_start sub_08320678
sub_08320678:
	ldr		r0, _08320680
	ldr		r0, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x32067E, 0x2

_08320680:	.4byte 0x03005EC0
	thumb_func_end sub_08320678

	thumb_func_start sub_08320684
sub_08320684:
	push	{ r4, r5, lr }
	ldr		r4, _083206ac
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

_083206ac:	.4byte 0x0202CA16

.incbin "base.gba", 0x3206B0, 0x240
	thumb_func_end sub_08320684

	thumb_func_start sub_083208f0
sub_083208f0:
	push	{ r4, lr }
	ldr		r4, _08320920
	ldrb	r1, [r4, #0xc]
	mov		r0, #0xf7
	and		r0, r1
	strb	r0, [r4, #0xc]
	mov		r0, #0x78
	strb	r0, [r4, #0x8]
	ldr		r0, _08320924
	ldr		r1, _08320928
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	add		r1, r0, #0x0
	add		r1, #0xc6
	ldrh	r1, [r1, #0x0]
	lsr		r1, r1, #0x8
	sub		r1, #0x81
	bl		sub_083179e8
	strh	r0, [r4, #0xa]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32091E, 0x2

_08320920:	.4byte 0x03005EC0
_08320924:	.4byte 0x030031D0
_08320928:	.4byte 0x000007AC

.incbin "base.gba", 0x32092C, 0x260
	thumb_func_end sub_083208f0

	thumb_func_start sub_08320b8c
sub_08320b8c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	mov		r2, #0x0
	ldr		r1, _08320c20
	add		r0, r5, r1
	ldr		r7, _08320c24
	ldr		r1, _08320c28
	mov		r8, r1
	ldrb	r1, [r0, #0x0]
	cmp		r2, r1
	bge		_08320bbc
	ldr		r6, _08320c2c
	mov		r4, #0xff
	add		r3, r0, #0x0
_08320bac:
	add		r1, r2, r6
	ldrb	r0, [r1, #0x0]
	orr		r0, r4
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r2, r0
	blt		_08320bac
_08320bbc:
	mov		r0, #0x0
	str		r0, [r7, #0x0]
	mov		r1, r8
	str		r0, [r1, #0x0]
	mov		r2, #0xf1
	lsl		r2, r2, #0x3
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r4, #0x0
	mov		r7, #0x0
	ldr		r1, _08320c20
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	bge		_08320c14
	ldr		r6, _08320c30
_08320bde:
	lsl		r0, r4, #0x2
	mov		r2, #0xed
	lsl		r2, r2, #0x3
	add		r1, r5, r2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, r8
	beq		_08320c08
	bl		sub_08310000
	lsl		r1, r4, #0x6
	ldr		r2, _08320c34
	add		r1, r1, r2
	add		r2, r6, #0x0
	ldr		r3, _08320c38
	bl		sub_0830fec4
	add		r6, #0x40
	add		r7, #0x1
	cmp		r7, #0x2
	bgt		_08320c14
_08320c08:
	add		r4, #0x1
	ldr		r1, _08320c20
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r4, r0
	blt		_08320bde
_08320c14:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x320C1E, 0x2

_08320c20:	.4byte 0x00000764
_08320c24:	.4byte 0x03002238
_08320c28:	.4byte 0x0300223C
_08320c2c:	.4byte 0x03002230
_08320c30:	.4byte 0x06012640
_08320c34:	.4byte 0x02026AFC
_08320c38:	.4byte 0x80000020

.incbin "base.gba", 0x320C3C, 0x334
	thumb_func_end sub_08320b8c

	thumb_func_start sub_08320f70
sub_08320f70:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x40
	and		r0, r1
	cmp		r0, #0x0
	bne		_08320fb4
	mov		r2, #0xf1
	lsl		r2, r2, #0x3
	add		r0, r4, r2
	ldr		r6, [r0, #0x0]
	mov		r5, #0x0
	b		_08320faa
_08320f90:
	lsl		r1, r5, #0x2
	mov		r2, #0xed
	lsl		r2, r2, #0x3
	add		r0, r4, r2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	cmp		r0, r6
	bne		_08320fa4
	mov		r1, #0x1
_08320fa4:
	bl		sub_08320fc0
	add		r5, #0x1
_08320faa:
	ldr		r1, _08320fbc
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r5, r0
	blt		_08320f90
_08320fb4:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x320FBA, 0x2

_08320fbc:	.4byte 0x00000764
	thumb_func_end sub_08320f70

	thumb_func_start sub_08320fc0
sub_08320fc0:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	ldr		r0, _08321070
	add		r6, r0, #0x0
	add		r6, #0x24
	add		r0, r6, #0x0
	bl		sub_08311a60
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
	ldr		r3, _08321074
	cmp		r5, #0x0
	bne		_08320ff8
	ldr		r3, _08321078
_08320ff8:
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08321010
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08321012
_08321010:
	ldr		r3, _0832107c
_08321012:
	cmp		r5, #0x0
	beq		_08321024
	ldr		r0, _08321080
	ldr		r0, [r0, #0x0]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08321024
	ldr		r3, _08321084
_08321024:
	mov		r1, #0xf1
	lsl		r1, r1, #0x3
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08321048
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08321066
_08321048:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	str		r0, [sp, #0x4]
	add		r0, r3, #0x0
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0830f6a0
	cmp		r5, #0x0
	beq		_08321066
	ldr		r1, _08321080
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_08321066:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32106E, 0x2

_08321070:	.4byte 0x030031D0
_08321074:	.4byte 0x0202CAAC
_08321078:	.4byte 0x0202CABC
_0832107c:	.4byte 0x0202CAC4
_08321080:	.4byte 0x03002228
_08321084:	.4byte 0x0202CAB4

.incbin "base.gba", 0x321088, 0x364
	thumb_func_end sub_08320fc0

	thumb_func_start sub_083213ec
sub_083213ec:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldrh	r5, [r3, #0x0]
	add		r3, #0x2
	ldrh	r6, [r3, #0x0]
	add		r3, #0x2
	mov		r2, #0x0
	cmp		r2, r6
	bge		_0832142c
	mov		r0, #0x20
	sub		r0, r0, r5
	lsl		r7, r0, #0x1
_08321404:
	add		r4, r2, #0x1
	cmp		r5, #0x0
	beq		_08321424
	add		r0, r5, #0x0
_0832140c:
	ldrh	r2, [r3, #0x0]
	cmp		r2, #0x0
	beq		_0832141a
	strh	r2, [r1, #0x0]
	add		r3, #0x2
	add		r1, #0x2
	b		_0832141e
_0832141a:
	add		r1, #0x2
	add		r3, #0x2
_0832141e:
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_0832140c
_08321424:
	add		r1, r1, r7
	add		r2, r4, #0x0
	cmp		r2, r6
	blt		_08321404
_0832142c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x321432, 0x2
	thumb_func_end sub_083213ec

	thumb_func_start sub_08321434
sub_08321434:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	bl		sub_0830e960
	add		r0, r5, #0x0
	add		r0, #0x8
	bl		sub_0830e960
	cmp		r4, #0x0
	ble		_08321464
_0832144c:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x84
	bl		sub_0830d838
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_0830e970
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0832144c
_08321464:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32146A, 0x3A
	thumb_func_end sub_08321434

	thumb_func_start sub_083214a4
sub_083214a4:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	bl		sub_0830ea68
	cmp		r0, #0x0
	beq		_083214e0
	ldr		r5, [r4, #0xc]
	ldr		r1, [r5, #0x6c]
	cmp		r1, #0x0
	beq		_083214be
	add		r0, r5, #0x0
	bl		sub_08327308
_083214be:
	add		r0, r4, #0x0
	bl		sub_0830ea68
	cmp		r0, #0x0
	beq		_083214d6
	ldr		r5, [r4, #0xc]
	add		r4, #0x8
	add		r0, r4, #0x0
	bl		sub_0830e9bc
	add		r0, r4, #0x0
	b		_083214ec
_083214d6:
	ldr		r5, [r4, #0x4]
	add		r0, r4, #0x0
	bl		sub_0830e9bc
	b		_083214e8
_083214e0:
	ldr		r5, [r4, #0x4]
	add		r0, r4, #0x0
	bl		sub_0830e9bc
_083214e8:
	add		r0, r4, #0x0
	add		r0, #0x8
_083214ec:
	add		r1, r5, #0x0
	bl		sub_0830e970
	add		r0, r5, #0x0
	bl		sub_0831a444
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_083214a4

	thumb_func_start sub_08321500
sub_08321500:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r0, #0x8
	bl		sub_0830e9d8
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0830e970
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32151A, 0x2
	thumb_func_end sub_08321500

	thumb_func_start sub_0832151c
sub_0832151c:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	bl		sub_0830e960
	add		r0, r5, #0x0
	add		r0, #0x8
	bl		sub_0830e960
	cmp		r4, #0x0
	ble		_0832154c
_08321534:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x70
	bl		sub_0830d838
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_0830e970
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08321534
_0832154c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x321552, 0x5DE
	thumb_func_end sub_0832151c

	thumb_func_start sub_08321b30
sub_08321b30:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	ldr		r4, [r5, #0x54]
	add		r2, r4, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08321b6c
	and		r0, r1
	mov		r3, #0x0
	ldr		r1, _08321b70
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x78
	strh	r0, [r5, #0x20]
	sub		r0, #0x88
	strh	r0, [r5, #0x22]
	ldr		r0, _08321b74
	strh	r0, [r5, #0x24]
	add		r0, r5, #0x0
	add		r0, #0x4c
	strh	r3, [r0, #0x0]
	str		r3, [r5, #0x60]
	ldr		r0, _08321b78
	ldr		r1, _08321b7c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r4, r0
	bne		_08321b84
	ldr		r0, _08321b80
	b		_08321b86

_08321b6c:	.4byte 0x0000FFDF
_08321b70:	.4byte 0x0000FBFF
_08321b74:	.4byte 0x00000105
_08321b78:	.4byte 0x030031D0
_08321b7c:	.4byte 0x000007AC
_08321b80:	.4byte 0x0202D4E4

_08321b84:
	ldr		r0, _08321b90
_08321b86:
	str		r0, [r5, #0x5c]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x321B8E, 0x2

_08321b90:	.4byte 0x0202D51C
	thumb_func_end sub_08321b30

	thumb_func_start sub_08321b94
sub_08321b94:
	push	{ lr }
	add		r2, r0, #0x0
	ldr		r3, [r2, #0x54]
	mov		r1, #0x22
	ldrsh	r0, [r2, r1]
	add		r0, #0x2
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0x0
	strh	r0, [r2, #0x22]
	cmp		r0, #0x57
	ble		_08321c04
	mov		r0, #0x58
	strh	r0, [r2, #0x22]
	add		r0, r2, #0x0
	add		r0, #0x4c
	strh	r1, [r0, #0x0]
	str		r1, [r2, #0x60]
	ldr		r0, _08321be0
	ldr		r1, _08321be4
	add		r0, r0, r1
	ldr		r1, [r2, #0x54]
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bne		_08321c00
	ldr		r0, _08321be8
	str		r0, [r2, #0x5c]
	add		r0, r3, #0x0
	add		r0, #0x72
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	cmp		r0, #0xb
	beq		_08321bec
	cmp		r0, #0xd
	beq		_08321bf6
	b		_08321c04

.incbin "base.gba", 0x321BDE, 0x2

_08321be0:	.4byte 0x030031D0
_08321be4:	.4byte 0x000007AC
_08321be8:	.4byte 0x0202D3A4

_08321bec:
	add		r0, r3, #0x0
	mov		r1, #0xc
	bl		sub_08317658
	b		_08321c04
_08321bf6:
	add		r0, r3, #0x0
	mov		r1, #0xe
	bl		sub_08317658
	b		_08321c04
_08321c00:
	ldr		r0, _08321c08
	str		r0, [r2, #0x5c]
_08321c04:
	pop		{ r0 }
	bx		r0

_08321c08:	.4byte 0x0202D3E4
	thumb_func_end sub_08321b94

	thumb_func_start sub_08321c0c
sub_08321c0c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x54]
	add		r2, r5, #0x0
	add		r2, #0xa4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08321c64
	and		r0, r1
	mov		r3, #0x0
	ldr		r1, _08321c68
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x78
	strh	r0, [r4, #0x20]
	sub		r0, #0xf8
	strh	r0, [r4, #0x22]
	ldr		r0, _08321c6c
	strh	r0, [r4, #0x24]
	add		r0, r4, #0x0
	add		r0, #0x4c
	strh	r3, [r0, #0x0]
	ldr		r0, _08321c70
	str		r0, [r4, #0x60]
	ldr		r0, _08321c74
	ldr		r1, _08321c78
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r5, r0
	bne		_08321c80
	ldr		r0, _08321c7c
	str		r0, [r4, #0x5c]
	add		r0, r5, #0x0
	add		r0, #0x72
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1c
	lsr		r0, r0, #0x1c
	cmp		r0, #0xe
	bne		_08321c84
	add		r0, r5, #0x0
	mov		r1, #0x2
	bl		sub_08317870
	b		_08321c84

.incbin "base.gba", 0x321C62, 0x2

_08321c64:	.4byte 0x0000FFBF
_08321c68:	.4byte 0x0000EFFF
_08321c6c:	.4byte 0x00000105
_08321c70:	.4byte 0x0201CA81
_08321c74:	.4byte 0x030031D0
_08321c78:	.4byte 0x000007AC
_08321c7c:	.4byte 0x0202D534

_08321c80:
	ldr		r0, _08321c8c
	str		r0, [r4, #0x5c]
_08321c84:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x321C8A, 0x2

_08321c8c:	.4byte 0x0202D564

.incbin "base.gba", 0x321C90, 0x46C
	thumb_func_end sub_08321c0c

	thumb_func_start sub_083220fc
sub_083220fc:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, [r4, #0x68]
	cmp		r0, #0x1c
	bls		_08322108
	b		_083225f0
_08322108:
	lsl		r0, r0, #0x2
	ldr		r1, _08322114
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x322112, 0x2

_08322114:	.4byte 0x0201C118

.incbin "base.gba", 0x322118, 0x4D8

_083225f0:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3225F6, 0x145A
	thumb_func_end sub_083220fc

	thumb_func_start sub_08323a50
sub_08323a50:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	ldr		r2, _08323a8c
	add		r6, r2, #0x0
	add		r6, #0x24
	ldr		r1, _08323a90
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	beq		_08323a6e
	b		_08323b76
_08323a6e:
	cmp		r5, #0x10
	bne		_08323a98
	ldr		r0, _08323a94
	add		r4, r2, r0
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x1f
	bhi		_08323a98
	mov		r0, #0xa
	bl		sub_08325e94
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x10
	orr		r0, r1
	strb	r0, [r4, #0x0]
	b		_08323b76

_08323a8c:	.4byte 0x030031D0
_08323a90:	.4byte 0x000007AC
_08323a94:	.4byte 0x00000C0A

_08323a98:
	ldr		r1, _08323ab4
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, r5
	bcs		_08323b6a
	add		r2, r6, #0x0
	sub		r0, r5, #0x1
	cmp		r0, #0x1f
	bhi		_08323b6a
	lsl		r0, r0, #0x2
	ldr		r1, _08323ab8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08323ab4:	.4byte 0x00000BE6
_08323ab8:	.4byte 0x0201DABC

.incbin "base.gba", 0x323ABC, 0xAE

_08323b6a:
	ldr		r0, _08323b7c
	add		r2, r6, r0
	ldrb	r1, [r2, #0x0]
	add		r0, r5, #0x0
	orr		r0, r1
	strb	r0, [r2, #0x0]
_08323b76:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08323b7c:	.4byte 0x00000BE6
	thumb_func_end sub_08323a50

	thumb_func_start sub_08323b80
sub_08323b80:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	ldr		r1, _08323bbc
	add		r4, r1, #0x0
	add		r4, #0x24
	ldr		r3, _08323bc0
	add		r0, r1, r3
	ldr		r5, [r0, #0x0]
	ldr		r0, [r5, #0x48]
	mov		r3, #0x20
	and		r0, r3
	cmp		r0, #0x0
	bne		_08323c50
	ldr		r0, _08323bc4
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	bic		r0, r2
	strb	r0, [r1, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r1, r2
	bcs		_08323c50
	add		r0, r1, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_08323bc8
	mov		r0, #0x9
	bl		sub_08325e94
	b		_08323c50

_08323bbc:	.4byte 0x030031D0
_08323bc0:	.4byte 0x000007AC
_08323bc4:	.4byte 0x00000C0A

_08323bc8:
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08323bd8
	mov		r0, #0xa
	bl		sub_08325e94
	b		_08323c50
_08323bd8:
	mov		r6, #0x8
	add		r0, r1, #0x0
	and		r0, r6
	cmp		r0, #0x0
	bne		_08323bfa
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_08323bf2
	mov		r0, #0xb
	bl		sub_08325e94
	b		_08323c50
_08323bf2:
	mov		r0, #0x2
	and		r1, r0
	cmp		r1, #0x0
	beq		_08323c02
_08323bfa:
	mov		r0, #0xc
	bl		sub_08325e94
	b		_08323c50
_08323c02:
	add		r0, r4, #0x0
	bl		sub_08311954
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	ldr		r0, [r5, #0x48]
	and		r0, r6
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r6, r1, #0x0
	cmp		r0, #0x0
	beq		_08323c20
	mov		r3, #0xa0
	lsl		r3, r3, #0x1
	add		r6, r3, #0x0
_08323c20:
	add		r0, r4, #0x0
	bl		sub_08325e94
	ldr		r5, _08323c58
	ldr		r0, _08323c5c
	lsl		r4, r4, #0x3
	add		r4, r4, r0
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	bl		sub_08326084
	ldrh	r1, [r4, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r6, #0x0
	bl		sub_08326dcc
_08323c50:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x323C56, 0x2

_08323c58:	.4byte 0x0202E890
_08323c5c:	.4byte 0x0202E8F0
	thumb_func_end sub_08323b80

	thumb_func_start sub_08323c60
sub_08323c60:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	mov		r8, r6
	ldr		r1, _08323c88
	add		r0, r6, r1
	ldrb	r7, [r0, #0x0]
	mov		r4, #0x0
	ldr		r2, _08323c8c
	add		r0, r6, r2
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x94
	ldr		r0, [r0, #0x0]
	mov		r5, #0x0
	cmp		r0, #0x0
	beq		_08323ca2
	add		r5, r1, r0
	b		_08323ca2

_08323c88:	.4byte 0x00000751
_08323c8c:	.4byte 0x00000574

_08323c90:
	ldrb	r1, [r5, #0x0]
	add		r0, r7, #0x0
	bl		sub_08323d9c
	ldr		r1, _08323cd4
	cmp		r0, r1
	bne		_08323ca0
	add		r4, #0x1
_08323ca0:
	add		r5, #0x4
_08323ca2:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08323c90
	ldr		r1, _08323cd8
	add		r0, r6, r1
	mov		r2, #0xdc
	lsl		r2, r2, #0x3
	add		r1, r6, r2
	add		r2, r4, #0x0
	bl		sub_08321434
	cmp		r4, #0x0
	ble		_08323d2a
	ldr		r0, _08323cdc
	add		r0, r8
	ldr		r1, [r0, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x94
	ldr		r0, [r0, #0x0]
	mov		r5, #0x0
	cmp		r0, #0x0
	beq		_08323d24
	add		r5, r1, r0
	b		_08323d24

.incbin "base.gba", 0x323CD2, 0x2

_08323cd4:	.4byte 0xffff0000
_08323cd8:	.4byte 0x000006FC
_08323cdc:	.4byte 0x00000574

_08323ce0:
	ldrb	r1, [r5, #0x0]
	add		r0, r7, #0x0
	bl		sub_08323d9c
	ldr		r1, _08323cf4
	cmp		r0, r1
	beq		_08323cf8
	add		r5, #0x4
	b		_08323d24

.incbin "base.gba", 0x323CF2, 0x2

_08323cf4:	.4byte 0xffff0000

_08323cf8:
	add		r5, #0x1
	ldr		r1, _08323d34
	add		r0, r6, r1
	bl		sub_083214a4
	add		r4, r0, #0x0
	bl		sub_0831a4d0
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x13
	add		r5, #0x1
	str		r0, [r4, #0x0]
	ldrb	r0, [r5, #0x0]
	lsl		r0, r0, #0x13
	add		r5, #0x1
	str		r0, [r4, #0x4]
	mov		r0, #0x0
	str		r0, [r4, #0x8]
	ldrb	r0, [r5, #0x0]
	add		r4, #0x36
	strb	r0, [r4, #0x0]
	add		r5, #0x1
_08323d24:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08323ce0
_08323d2a:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08323d34:	.4byte 0x000006FC
	thumb_func_end sub_08323c60

	thumb_func_start sub_08323d38
sub_08323d38:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r2, _08323d50
	add		r0, r1, r2
	sub		r2, #0xc
	add		r1, r1, r2
	mov		r2, #0x0
	bl		sub_0832151c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x323D4E, 0x2

_08323d50:	.4byte 0x000006EC

.incbin "base.gba", 0x323D54, 0x4
	thumb_func_end sub_08323d38

	thumb_func_start sub_08323d58
sub_08323d58:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_0830f1b0
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	mov		r2, #0x0
	strh	r0, [r4, #0x10]
	mov		r0, #0x8
	strb	r0, [r4, #0xe]
	strb	r0, [r4, #0xd]
	strb	r0, [r4, #0xc]
	mov		r0, #0x1
	strh	r0, [r4, #0x34]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	add		r0, r4, #0x0
	add		r0, #0x56
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	str		r2, [r4, #0x5c]
	ldrh	r1, [r4, #0x34]
	ldr		r0, _08323d98
	and		r0, r1
	strh	r0, [r4, #0x34]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x323D96, 0x2

_08323d98:	.4byte 0x0000FFFD
	thumb_func_end sub_08323d58

	thumb_func_start sub_08323d9c
sub_08323d9c:
	ldr		r3, _08323dac
	ldr		r2, _08323db0
	cmp		r1, #0x7f
	bgt		_08323db4
	lsl		r0, r1, #0x2
	add		r0, r0, r3
	b		_08323dbc

.incbin "base.gba", 0x323DAA, 0x2

_08323dac:	.4byte 0x0202D8D8
_08323db0:	.4byte 0x0202D8E0

_08323db4:
	lsl		r0, r1, #0x2
	add		r0, r0, r2
	ldr		r1, _08323dc0
	add		r0, r0, r1
_08323dbc:
	ldr		r0, [r0, #0x0]
	bx		lr

_08323dc0:	.4byte 0xFFFFFE00
	thumb_func_end sub_08323d9c

	thumb_func_start sub_08323dc4
sub_08323dc4:
	push	{ r4, r5, lr }
	ldr		r4, [r0, #0x68]
	ldr		r0, _08323e00
	lsl		r4, r4, #0x2
	add		r0, r4, r0
	ldr		r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_0830e6c0
	add		r1, r0, #0x0
	add		r1, #0x4a
	add		r0, r5, #0x0
	mov		r2, #0x9
	bl		sub_083272c4
	mov		r0, #0x0
	bl		sub_0830e6c0
	ldr		r1, _08323e04
	add		r4, r4, r1
	ldr		r1, [r4, #0x0]
	ldrh	r1, [r1, #0x0]
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_0830e6cc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x323DFE, 0x2

_08323e00:	.4byte 0x0202D924
_08323e04:	.4byte 0x0202D934

.incbin "base.gba", 0x323E08, 0x260
	thumb_func_end sub_08323dc4

	thumb_func_start sub_08324068
sub_08324068:
	mov		r12, r0
	mov		r3, r12
	add		r3, #0x6e
	ldrb	r1, [r3, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0x2
	beq		_083240ba
	mov		r0, #0x10
	neg		r0, r0
	and		r0, r1
	mov		r1, #0x2
	orr		r0, r1
	strb	r0, [r3, #0x0]
	ldr		r2, _083240bc
	mov		r0, r12
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r2, [r0, #0x0]
	ldrh	r1, [r3, #0x0]
	ldr		r0, _083240c0
	and		r0, r1
	strh	r0, [r3, #0x0]
	ldrb	r1, [r2, #0x1]
	lsl		r1, r1, #0x1
	ldrb	r2, [r3, #0x1]
	mov		r0, #0x1
	and		r0, r2
	orr		r0, r1
	strb	r0, [r3, #0x1]
	mov		r2, r12
	add		r2, #0x6d
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x2
	neg		r0, r0
	and		r0, r1
	strb	r0, [r2, #0x0]
_083240ba:
	bx		lr

_083240bc:	.4byte 0x0202DB70
_083240c0:	.4byte 0xFFFFFE0F
	thumb_func_end sub_08324068

	thumb_func_start sub_083240c4
sub_083240c4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	lsl		r1, r1, #0x18
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r8, r2
	mov		r0, #0x6e
	add		r0, r0, r7
	mov		r12, r0
	ldr		r0, [r0, #0x0]
	lsl		r2, r0, #0x10
	lsr		r5, r2, #0x19
	lsl		r0, r0, #0x17
	lsr		r4, r0, #0x1b
	ldr		r3, _08324124
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r2, [r0, #0x0]
	mov		r0, #0x7
	and		r0, r2
	lsl		r0, r0, #0x2
	add		r0, r0, r3
	ldr		r6, [r0, #0x0]
	mov		r2, #0xc1
	lsl		r2, r2, #0x18
	add		r1, r1, r2
	lsr		r1, r1, #0x18
	cmp		r1, #0x1
	bhi		_08324108
	ldr		r0, _08324128
	cmp		r8, r0
	bls		_08324130
_08324108:
	mov		r0, r12
	ldrh	r1, [r0, #0x0]
	ldr		r0, _0832412c
	and		r0, r1
	mov		r1, r12
	strh	r0, [r1, #0x0]
	ldrb	r1, [r6, #0x1]
	lsl		r1, r1, #0x1
	mov		r0, r12
	ldrb	r2, [r0, #0x1]
	mov		r0, #0x1
	and		r0, r2
	orr		r0, r1
	b		_08324146

_08324124:	.4byte 0x0202DB70
_08324128:	.4byte 0x000001FF
_0832412c:	.4byte 0xFFFFFE0F

_08324130:
	sub		r0, r5, #0x1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	cmp		r5, #0x0
	beq		_0832414c
	lsl		r2, r5, #0x1
	mov		r0, r12
	ldrb	r1, [r0, #0x1]
	mov		r0, #0x1
	and		r0, r1
	orr		r0, r2
_08324146:
	mov		r1, r12
	strb	r0, [r1, #0x1]
	b		_083241bc
_0832414c:
	add		r0, r4, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	lsl		r0, r4, #0x2
	add		r0, r0, r6
	ldrb	r3, [r0, #0x1]
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x0
	ldrsb	r2, [r0, r2]
	mov		r0, #0x1
	neg		r0, r0
	add		r5, r7, #0x0
	add		r5, #0x6c
	cmp		r2, r0
	bne		_08324182
_0832416a:
	add		r0, r4, r3
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	lsl		r0, r4, #0x2
	add		r0, r0, r6
	ldrb	r3, [r0, #0x1]
	ldrb	r1, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, r2
	beq		_0832416a
_08324182:
	strb	r1, [r5, #0x0]
	lsl		r0, r3, #0x18
	asr		r5, r0, #0x18
	cmp		r5, #0x0
	beq		_083241b4
	add		r2, r7, #0x0
	add		r2, #0x6e
	mov		r0, #0x1f
	and		r4, r0
	lsl		r3, r4, #0x4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _083241b0
	and		r0, r1
	orr		r0, r3
	strh	r0, [r2, #0x0]
	lsl		r3, r5, #0x1
	ldrb	r1, [r2, #0x1]
	mov		r0, #0x1
	and		r0, r1
	orr		r0, r3
	strb	r0, [r2, #0x1]
	b		_083241bc

.incbin "base.gba", 0x3241AE, 0x2

_083241b0:	.4byte 0xFFFFFE0F

_083241b4:
	add		r0, r7, #0x0
	mov		r1, #0x0
	bl		sub_08317870
_083241bc:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3241C6, 0x126
	thumb_func_end sub_083240c4

	thumb_func_start sub_083242ec
sub_083242ec:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r3, _08324354
	mov		r0, #0x72
	add		r0, r0, r4
	mov		r12, r0
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x10
	neg		r0, r0
	and		r0, r1
	mov		r1, #0xc
	orr		r0, r1
	mov		r1, r12
	strb	r0, [r1, #0x0]
	ldr		r0, _08324358
	ldrb	r1, [r0, #0x1]
	lsl		r1, r1, #0x1
	mov		r0, r12
	ldrb	r2, [r0, #0x1]
	mov		r0, #0x1
	and		r0, r2
	orr		r0, r1
	mov		r1, r12
	strb	r0, [r1, #0x1]
	ldrh	r1, [r1, #0x0]
	ldr		r0, _0832435c
	and		r0, r1
	mov		r1, r12
	strh	r0, [r1, #0x0]
	ldr		r0, _08324360
	add		r3, r3, r0
	ldr		r0, [r3, #0x0]
	cmp		r4, r0
	bne		_0832434c
	ldr		r0, [r4, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0832434c
	mov		r1, #0xcd
	lsl		r1, r1, #0x1
	add		r2, r4, r1
	ldrb	r0, [r2, #0x0]
	mov		r1, #0xfc
	and		r1, r0
	mov		r0, #0xdf
	and		r1, r0
	strb	r1, [r2, #0x0]
_0832434c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x324352, 0x2

_08324354:	.4byte 0x030031D0
_08324358:	.4byte 0x0202DBA0
_0832435c:	.4byte 0xFFFFFE0F
_08324360:	.4byte 0x000007AC
	thumb_func_end sub_083242ec

	thumb_func_start sub_08324364
sub_08324364:
	push	{ lr }
	add		r2, r0, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832437e
	add		r0, r2, #0x0
	mov		r1, #0x2
	bl		sub_08317870
_0832437e:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x324382, 0xAE
	thumb_func_end sub_08324364

	thumb_func_start sub_08324430
sub_08324430:
	push	{ lr }
	add		r3, r0, #0x0
	ldr		r2, _0832446c
	mov		r0, #0x72
	add		r0, r0, r3
	mov		r12, r0
	ldrb	r1, [r0, #0x0]
	mov		r0, #0x10
	neg		r0, r0
	and		r0, r1
	mov		r1, #0xe
	orr		r0, r1
	mov		r1, r12
	strb	r0, [r1, #0x0]
	ldr		r0, _08324470
	add		r2, r2, r0
	ldr		r0, [r2, #0x0]
	cmp		r3, r0
	bne		_08324466
	ldr		r0, [r3, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08324466
	add		r0, r3, #0x0
	bl		sub_083250a8
_08324466:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32446A, 0x2

_0832446c:	.4byte 0x030031D0
_08324470:	.4byte 0x000007AC
	thumb_func_end sub_08324430

	thumb_func_start sub_08324474
sub_08324474:
	push	{ lr }
	add		r2, r0, #0x0
	add		r0, #0xb4
	ldrh	r1, [r0, #0x0]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832448e
	add		r0, r2, #0x0
	mov		r1, #0x2
	bl		sub_08317870
_0832448e:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x324492, 0x6
	thumb_func_end sub_08324474

	thumb_func_start sub_08324498
sub_08324498:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r3, _083244e4
	mov		r0, #0x6e
	add		r0, r0, r4
	mov		r12, r0
	ldrb	r0, [r0, #0x0]
	mov		r1, #0xf
	orr		r0, r1
	mov		r1, r12
	strb	r0, [r1, #0x0]
	ldr		r0, _083244e8
	ldrb	r1, [r0, #0x1]
	lsl		r1, r1, #0x1
	mov		r0, r12
	ldrb	r2, [r0, #0x1]
	mov		r0, #0x1
	and		r0, r2
	orr		r0, r1
	mov		r1, r12
	strb	r0, [r1, #0x1]
	ldrh	r1, [r1, #0x0]
	ldr		r0, _083244ec
	and		r0, r1
	mov		r1, r12
	strh	r0, [r1, #0x0]
	ldr		r0, _083244f0
	add		r3, r3, r0
	ldr		r0, [r3, #0x0]
	cmp		r4, r0
	bne		_083244dc
	add		r0, r4, #0x0
	bl		sub_08324c98
_083244dc:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3244E2, 0x2

_083244e4:	.4byte 0x030031D0
_083244e8:	.4byte 0x0202DBA8
_083244ec:	.4byte 0xFFFFFE0F
_083244f0:	.4byte 0x000007AC
	thumb_func_end sub_08324498

	thumb_func_start sub_083244f4
sub_083244f4:
	push	{ r4, lr }
	add		r4, r0, #0x0
	mov		r0, #0x6e
	add		r0, r0, r4
	mov		r12, r0
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x10
	lsr		r0, r0, #0x19
	lsl		r1, r1, #0x17
	lsr		r3, r1, #0x1b
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0832453a
	add		r0, r3, #0x1
	lsl		r0, r0, #0x18
	lsr		r3, r0, #0x18
	mov		r1, #0x1f
	and		r1, r3
	lsl		r1, r1, #0x4
	mov		r0, r12
	ldrh	r2, [r0, #0x0]
	ldr		r0, _0832454c
	and		r0, r2
	orr		r0, r1
	mov		r1, r12
	strh	r0, [r1, #0x0]
	ldr		r0, _08324550
	lsl		r1, r3, #0x1
	add		r0, #0x1
	add		r1, r1, r0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08324554
_0832453a:
	lsl		r2, r0, #0x1
	mov		r0, r12
	ldrb	r1, [r0, #0x1]
	mov		r0, #0x1
	and		r0, r1
	orr		r0, r2
	mov		r1, r12
	strb	r0, [r1, #0x1]
	b		_08324568

_0832454c:	.4byte 0xFFFFFE0F
_08324550:	.4byte 0x0202DBA8

_08324554:
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_08317870
	add		r0, r4, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x8
	eor		r1, r2
	strb	r1, [r0, #0x0]
_08324568:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32456E, 0x3B2
	thumb_func_end sub_083244f4

	thumb_func_start sub_08324920
sub_08324920:
	mov		r2, #0x0
	str		r2, [r0, #0x0]
	str		r2, [r0, #0x4]
	str		r2, [r0, #0x8]
	str		r2, [r0, #0xc]
	strb	r2, [r0, #0x10]
	strh	r2, [r0, #0x14]
	strh	r2, [r0, #0x16]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	str		r1, [r0, #0x1c]
	str		r1, [r0, #0x20]
	strh	r1, [r0, #0x24]
	str		r2, [r0, #0x18]
	bx		lr

.incbin "base.gba", 0x32493E, 0x2
	thumb_func_end sub_08324920

	thumb_func_start sub_08324940
sub_08324940:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, [r1, #0xc]
	cmp		r0, #0x0
	ble		_08324952
	sub		r0, #0x1
	str		r0, [r1, #0xc]
	mov		r0, #0x1
	b		_0832497c
_08324952:
	ldr		r2, [r1, #0x8]
	ldr		r3, [r2, #0x0]
	cmp		r3, #0x0
	bne		_08324960
	ldr		r0, [r2, #0x4]
	cmp		r0, #0x0
	beq		_0832496e
_08324960:
	str		r3, [r1, #0x4]
	ldr		r0, [r2, #0x4]
	str		r0, [r1, #0xc]
	add		r2, #0x8
	str		r2, [r1, #0x8]
	mov		r0, #0x1
	b		_0832497c
_0832496e:
	ldr		r0, _08324980
	mov		r2, #0xea
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_08324a0c
	mov		r0, #0x0
_0832497c:
	pop		{ r1 }
	bx		r1

_08324980:	.4byte 0x030031D0
	thumb_func_end sub_08324940

	thumb_func_start sub_08324984
sub_08324984:
	push	{ lr }
	add		r1, r0, #0x0
	ldr		r0, _08324998
	mov		r2, #0xea
	lsl		r2, r2, #0x3
	add		r0, r0, r2
	bl		sub_08324a0c
	pop		{ r0 }
	bx		r0

_08324998:	.4byte 0x030031D0
	thumb_func_end sub_08324984

	thumb_func_start sub_0832499c
sub_0832499c:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r4, #0x0
_083249a4:
	add		r0, r6, #0x0
	mov		r1, #0x1
	mov		r2, #0x3c
	bl		sub_0830d838
	add		r2, r5, r4
	mov		r1, #0x0
	strb	r1, [r2, #0x0]
	lsl		r2, r4, #0x2
	add		r1, r5, #0x4
	add		r1, r1, r2
	str		r0, [r1, #0x0]
	add		r4, #0x1
	cmp		r4, #0x3
	ble		_083249a4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0832499c

	thumb_func_start sub_083249c8
sub_083249c8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	mov		r3, #0x0
	ldrb	r1, [r4, #0x0]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_083249ec
	mov		r2, #0x1
_083249da:
	add		r3, #0x1
	cmp		r3, #0x2
	bgt		_083249ec
	add		r0, r4, r3
	ldrb	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_083249da
_083249ec:
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x0]
	lsl		r1, r3, #0x2
	add		r0, r4, #0x4
	add		r0, r0, r1
	ldr		r4, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_08324920
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_083249c8

	thumb_func_start sub_08324a0c
sub_08324a0c:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	mov		r2, #0x0
	ldr		r0, [r3, #0x4]
	cmp		r0, r4
	bne		_08324a1e
	strb	r2, [r3, #0x0]
	b		_08324a36
_08324a1e:
	add		r2, #0x1
	cmp		r2, #0x3
	bgt		_08324a36
	lsl		r0, r2, #0x2
	add		r1, r3, #0x4
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, r4
	bne		_08324a1e
	add		r1, r3, r2
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
_08324a36:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08324a0c

	thumb_func_start sub_08324a3c
sub_08324a3c:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	mov		r8, r3
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _08324a90
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	add		r2, r0, #0x0
	strh	r4, [r2, #0x24]
	ldr		r0, _08324a94
	str		r0, [r2, #0x0]
	strh	r5, [r2, #0x14]
	strh	r6, [r2, #0x16]
	ldr		r0, _08324a98
	mov		r1, r8
	cmp		r1, #0x0
	beq		_08324a78
	ldr		r0, _08324a9c
_08324a78:
	str		r0, [r2, #0x8]
	ldrb	r1, [r2, #0x10]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x10]
	add		r0, r2, #0x0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x324A8E, 0x2

_08324a90:	.4byte 0x030031D0
_08324a94:	.4byte 0x0201E941
_08324a98:	.4byte 0x0202DC14
_08324a9c:	.4byte 0x0202DC44
	thumb_func_end sub_08324a3c

	thumb_func_start sub_08324aa0
sub_08324aa0:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	mov		r8, r3
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _08324af4
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	add		r2, r0, #0x0
	strh	r4, [r2, #0x24]
	ldr		r0, _08324af8
	str		r0, [r2, #0x0]
	strh	r5, [r2, #0x14]
	strh	r6, [r2, #0x16]
	ldr		r0, _08324afc
	mov		r1, r8
	cmp		r1, #0x0
	beq		_08324adc
	ldr		r0, _08324b00
_08324adc:
	str		r0, [r2, #0x8]
	ldrb	r1, [r2, #0x10]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x10]
	add		r0, r2, #0x0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x324AF2, 0x2

_08324af4:	.4byte 0x030031D0
_08324af8:	.4byte 0x0201E941
_08324afc:	.4byte 0x0202DC74
_08324b00:	.4byte 0x0202DCA4
	thumb_func_end sub_08324aa0

	thumb_func_start sub_08324b04
sub_08324b04:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	mov		r8, r3
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _08324b58
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	add		r2, r0, #0x0
	strh	r4, [r2, #0x24]
	ldr		r0, _08324b5c
	str		r0, [r2, #0x0]
	strh	r5, [r2, #0x14]
	strh	r6, [r2, #0x16]
	ldr		r0, _08324b60
	mov		r1, r8
	cmp		r1, #0x0
	beq		_08324b40
	ldr		r0, _08324b64
_08324b40:
	str		r0, [r2, #0x8]
	ldrb	r1, [r2, #0x10]
	mov		r0, #0x1
	orr		r0, r1
	strb	r0, [r2, #0x10]
	add		r0, r2, #0x0
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x324B56, 0x2

_08324b58:	.4byte 0x030031D0
_08324b5c:	.4byte 0x0201E941
_08324b60:	.4byte 0x0202DCD4
_08324b64:	.4byte 0x0202DD04
	thumb_func_end sub_08324b04

	thumb_func_start sub_08324b68
sub_08324b68:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _08324ba4
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	strh	r4, [r0, #0x24]
	ldr		r1, _08324ba8
	str		r1, [r0, #0x0]
	strh	r5, [r0, #0x14]
	strh	r6, [r0, #0x16]
	ldr		r1, _08324bac
	str		r1, [r0, #0x8]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08324ba4:	.4byte 0x030031D0
_08324ba8:	.4byte 0x0201E941
_08324bac:	.4byte 0x0202DD34
	thumb_func_end sub_08324b68

	thumb_func_start sub_08324bb0
sub_08324bb0:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	add		r4, r2, #0x0
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _08324bec
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	strh	r4, [r0, #0x24]
	ldr		r1, _08324bf0
	str		r1, [r0, #0x0]
	strh	r5, [r0, #0x14]
	strh	r6, [r0, #0x16]
	ldr		r1, _08324bf4
	str		r1, [r0, #0x8]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08324bec:	.4byte 0x030031D0
_08324bf0:	.4byte 0x0201E941
_08324bf4:	.4byte 0x0202DD9C
	thumb_func_end sub_08324bb0

	thumb_func_start sub_08324bf8
sub_08324bf8:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r6, r0, #0x0
	add		r3, r1, #0x0
	add		r4, r2, #0x0
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	lsl		r3, r3, #0x10
	lsr		r3, r3, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	ldr		r5, _08324c54
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r5, r1
	str		r3, [sp, #0x0]
	bl		sub_083249c8
	strh	r4, [r0, #0x24]
	ldr		r1, _08324c58
	str		r1, [r0, #0x0]
	strh	r6, [r0, #0x14]
	ldr		r3, [sp, #0x0]
	strh	r3, [r0, #0x16]
	ldr		r3, _08324c5c
	add		r5, r5, r3
	ldr		r2, [r5, #0x0]
	mov		r3, #0x24
	ldrsh	r1, [r2, r3]
	asr		r1, r1, #0x1
	str		r1, [r0, #0x1c]
	mov		r3, #0x24
	ldrsh	r1, [r2, r3]
	asr		r1, r1, #0x1
	str		r1, [r0, #0x20]
	ldr		r1, _08324c60
	str		r1, [r0, #0x8]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x324C52, 0x2

_08324c54:	.4byte 0x030031D0
_08324c58:	.4byte 0x0201E941
_08324c5c:	.4byte 0x000007AC
_08324c60:	.4byte 0x0202DDCC
	thumb_func_end sub_08324bf8

	thumb_func_start sub_08324c64
sub_08324c64:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x28]
	bl		sub_08324940
	cmp		r0, #0x0
	beq		_08324c92
	mov		r1, #0x24
	ldrsh	r0, [r5, r1]
	sub		r0, #0x1
	strh	r0, [r4, #0x24]
	mov		r1, #0x20
	ldrsh	r0, [r5, r1]
	strh	r0, [r4, #0x14]
	mov		r1, #0x22
	ldrsh	r0, [r5, r1]
	strh	r0, [r4, #0x16]
	mov		r1, #0x24
	ldrsh	r0, [r5, r1]
	str		r0, [r4, #0x1c]
	mov		r1, #0x24
	ldrsh	r0, [r5, r1]
	str		r0, [r4, #0x20]
_08324c92:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08324c64

	thumb_func_start sub_08324c98
sub_08324c98:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _08324cc0
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	str		r4, [r0, #0x28]
	ldr		r1, _08324cc4
	str		r1, [r0, #0x0]
	ldr		r1, _08324cc8
	str		r1, [r0, #0x8]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08324cc0:	.4byte 0x030031D0
_08324cc4:	.4byte 0x0201EC65
_08324cc8:	.4byte 0x0202DDEC
	thumb_func_end sub_08324c98

	thumb_func_start sub_08324ccc
sub_08324ccc:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _08324d18
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	str		r4, [r0, #0x28]
	add		r2, r0, #0x0
	add		r2, #0x2c
	mov		r1, #0x0
	strb	r1, [r2, #0x0]
	ldr		r1, _08324d1c
	str		r1, [r0, #0x0]
	ldr		r1, [r4, #0x44]
	str		r1, [r0, #0x4]
	mov		r2, #0x20
	ldrsh	r1, [r4, r2]
	strh	r1, [r0, #0x14]
	mov		r2, #0x22
	ldrsh	r1, [r4, r2]
	sub		r1, #0xa
	strh	r1, [r0, #0x16]
	mov		r2, #0x24
	ldrsh	r1, [r4, r2]
	str		r1, [r0, #0x1c]
	mov		r2, #0x24
	ldrsh	r1, [r4, r2]
	lsl		r1, r1, #0x2
	str		r1, [r0, #0x20]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08324d18:	.4byte 0x030031D0
_08324d1c:	.4byte 0x0201ED21
	thumb_func_end sub_08324ccc

	thumb_func_start sub_08324d20
sub_08324d20:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r6, r0, #0x0
	ldr		r4, [r6, #0x28]
	mov		r0, #0x2c
	add		r0, r0, r6
	mov		r8, r0
	ldrb	r7, [r0, #0x0]
	add		r5, r7, #0x0
	ldr		r0, [r4, #0x44]
	str		r0, [r6, #0x4]
	mov		r1, #0x24
	ldrsh	r0, [r4, r1]
	add		r0, #0x1
	strh	r0, [r6, #0x24]
	mov		r0, #0x20
	ldrsh	r2, [r4, r0]
	ldr		r3, _08324da8
	lsl		r1, r5, #0x1
	add		r1, r1, r5
	add		r0, r1, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	add		r2, r2, r0
	strh	r2, [r6, #0x14]
	mov		r0, #0x22
	ldrsh	r2, [r4, r0]
	add		r0, r3, #0x1
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	add		r2, r2, r0
	strh	r2, [r6, #0x16]
	add		r3, #0x2
	add		r1, r1, r3
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	lsl		r0, r0, #0x7
	str		r0, [r6, #0x18]
	mov		r1, #0x24
	ldrsh	r0, [r4, r1]
	str		r0, [r6, #0x1c]
	mov		r1, #0x24
	ldrsh	r0, [r4, r1]
	lsl		r0, r0, #0x2
	str		r0, [r6, #0x20]
	add		r0, r5, #0x1
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	cmp		r5, #0xe
	bls		_08324d9a
	ldr		r0, _08324dac
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	add		r1, r6, #0x0
	bl		sub_08324a0c
_08324d9a:
	mov		r0, r8
	strb	r7, [r0, #0x0]
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08324da8:	.4byte 0x0202DE34
_08324dac:	.4byte 0x030031D0
	thumb_func_end sub_08324d20

	thumb_func_start sub_08324db0
sub_08324db0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r7, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r8, r1
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r9, r2
	ldr		r4, _08324e74
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r4, r1
	bl		sub_083249c8
	add		r5, r0, #0x0
	add		r6, r7, #0x0
	ldr		r2, _08324e78
	add		r4, r4, r2
	ldr		r0, [r4, #0x0]
	ldr		r0, [r0, #0x48]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08324e18
	ldr		r2, _08324e7c
	ldr		r0, _08324e80
	mov		r1, #0x82
	lsl		r1, r1, #0x2
	add		r3, r0, r1
	ldrh	r1, [r3, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08324e12
	mov		r2, #0x0
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08324e0e
	mov		r2, #0x1
_08324e0e:
	cmp		r2, #0x0
	beq		_08324e18
_08324e12:
	mov		r0, #0x41
	bl		sub_08325e94
_08324e18:
	str		r7, [r5, #0x28]
	ldr		r0, _08324e84
	str		r0, [r5, #0x0]
	ldr		r0, _08324e88
	str		r0, [r5, #0x8]
	mov		r2, #0x24
	ldrsh	r0, [r6, r2]
	sub		r0, #0x1
	strh	r0, [r5, #0x24]
	add		r0, r5, #0x0
	add		r0, #0x2c
	mov		r1, r8
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	mov		r2, r9
	strb	r2, [r0, #0x0]
	mov		r0, #0x20
	ldrsh	r4, [r6, r0]
	mov		r1, r8
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x10
	mov		r2, #0x24
	ldrsh	r1, [r6, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x14]
	mov		r0, #0x22
	ldrsh	r4, [r6, r0]
	mov		r1, r9
	lsl		r0, r1, #0x18
	asr		r0, r0, #0x10
	mov		r2, #0x24
	ldrsh	r1, [r6, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x16]
	add		r0, r5, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x324E72, 0x2

_08324e74:	.4byte 0x030031D0
_08324e78:	.4byte 0x000007AC
_08324e7c:	.4byte 0x0202E890
_08324e80:	.4byte 0x0202E8F0
_08324e84:	.4byte 0x0201EE8D
_08324e88:	.4byte 0x0202DE64
	thumb_func_end sub_08324db0

	thumb_func_start sub_08324e8c
sub_08324e8c:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r7, [r5, #0x28]
	bl		sub_08324940
	cmp		r0, #0x0
	beq		_08324ef0
	mov		r1, #0x24
	ldrsh	r0, [r7, r1]
	sub		r0, #0x1
	strh	r0, [r5, #0x24]
	mov		r2, #0x20
	ldrsh	r4, [r7, r2]
	add		r0, r5, #0x0
	add		r0, #0x2c
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	lsl		r0, r0, #0x8
	mov		r2, #0x24
	ldrsh	r1, [r7, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x14]
	mov		r0, #0x22
	ldrsh	r4, [r7, r0]
	add		r6, r5, #0x0
	add		r6, #0x2d
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	lsl		r0, r0, #0x8
	mov		r2, #0x24
	ldrsh	r1, [r7, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x16]
	ldrb	r0, [r6, #0x0]
	sub		r0, #0x1
	strb	r0, [r6, #0x0]
	add		r0, r7, #0x0
	bl		sub_0831700c
	cmp		r0, #0x0
	bne		_08324ef0
	ldrb	r0, [r5, #0x10]
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r5, #0x10]
_08324ef0:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x324EF6, 0xA6
	thumb_func_end sub_08324e8c

	thumb_func_start sub_08324f9c
sub_08324f9c:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	mov		r9, r0
	add		r4, r1, #0x0
	add		r5, r2, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	lsl		r5, r5, #0x18
	lsr		r5, r5, #0x18
	ldr		r0, _08325020
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	add		r6, r0, #0x0
	mov		r2, r9
	str		r2, [r6, #0x28]
	ldr		r0, _08325024
	str		r0, [r6, #0x0]
	ldr		r0, _08325028
	str		r0, [r6, #0x8]
	mov		r1, #0x24
	ldrsh	r0, [r2, r1]
	sub		r0, #0x1
	strh	r0, [r6, #0x24]
	add		r0, r6, #0x0
	add		r0, #0x2c
	strb	r4, [r0, #0x0]
	add		r0, #0x1
	strb	r5, [r0, #0x0]
	mov		r0, #0x20
	ldrsh	r2, [r2, r0]
	mov		r8, r2
	lsl		r4, r4, #0x18
	asr		r4, r4, #0x10
	mov		r2, r9
	mov		r0, #0x24
	ldrsh	r1, [r2, r0]
	add		r0, r4, #0x0
	bl		sub_083272c8
	add		r8, r0
	mov		r1, r8
	strh	r1, [r6, #0x14]
	mov		r2, r9
	mov		r0, #0x22
	ldrsh	r4, [r2, r0]
	lsl		r5, r5, #0x18
	asr		r5, r5, #0x10
	mov		r0, #0x24
	ldrsh	r1, [r2, r0]
	add		r0, r5, #0x0
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r6, #0x16]
	add		r0, r6, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08325020:	.4byte 0x030031D0
_08325024:	.4byte 0x0201F02D
_08325028:	.4byte 0x0202DE98
	thumb_func_end sub_08324f9c

	thumb_func_start sub_0832502c
sub_0832502c:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r7, [r5, #0x28]
	bl		sub_08324940
	cmp		r0, #0x0
	beq		_0832509c
	mov		r1, #0x24
	ldrsh	r0, [r7, r1]
	sub		r0, #0x1
	strh	r0, [r5, #0x24]
	mov		r2, #0x20
	ldrsh	r4, [r7, r2]
	add		r0, r5, #0x0
	add		r0, #0x2c
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	lsl		r0, r0, #0x8
	mov		r2, #0x24
	ldrsh	r1, [r7, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x14]
	mov		r0, #0x22
	ldrsh	r4, [r7, r0]
	add		r6, r5, #0x0
	add		r6, #0x2d
	mov		r0, #0x0
	ldrsb	r0, [r6, r0]
	lsl		r0, r0, #0x8
	mov		r2, #0x24
	ldrsh	r1, [r7, r2]
	bl		sub_083272c8
	add		r4, r4, r0
	strh	r4, [r5, #0x16]
	ldr		r2, _083250a4
	ldr		r1, [r5, #0xc]
	mov		r0, #0x8
	sub		r0, r0, r1
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r6, #0x0]
	add		r0, r0, r1
	strb	r0, [r6, #0x0]
	add		r0, r7, #0x0
	bl		sub_0831700c
	cmp		r0, #0x0
	bne		_0832509c
	ldrb	r0, [r5, #0x10]
	mov		r1, #0x1
	orr		r0, r1
	strb	r0, [r5, #0x10]
_0832509c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3250A2, 0x2

_083250a4:	.4byte 0x0202DEB8
	thumb_func_end sub_0832502c

	thumb_func_start sub_083250a8
sub_083250a8:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _083250d0
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	str		r4, [r0, #0x28]
	ldr		r1, _083250d4
	str		r1, [r0, #0x0]
	ldr		r1, _083250d8
	str		r1, [r0, #0x8]
	add		r2, r0, #0x0
	add		r2, #0x2e
	mov		r1, #0x0
	strb	r1, [r2, #0x0]
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_083250d0:	.4byte 0x030031D0
_083250d4:	.4byte 0x0201F0DD
_083250d8:	.4byte 0x0202DEA8
	thumb_func_end sub_083250a8

	thumb_func_start sub_083250dc
sub_083250dc:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldr		r7, [r6, #0x28]
	bl		sub_08324940
	cmp		r0, #0x0
	beq		_08325144
	add		r5, r6, #0x0
	add		r5, #0x2e
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_083250fa
	sub		r0, #0x1
	strb	r0, [r5, #0x0]
	b		_08325128
_083250fa:
	ldr		r0, _0832514c
	ldr		r4, [r0, #0x10]
	mov		r0, #0x1f
	add		r1, r4, #0x0
	and		r1, r0
	sub		r1, #0x10
	mov		r2, #0x7
	and		r2, r4
	lsl		r2, r2, #0x19
	lsl		r1, r1, #0x18
	asr		r1, r1, #0x18
	mov		r0, #0xfc
	lsl		r0, r0, #0x18
	add		r2, r2, r0
	asr		r2, r2, #0x18
	add		r0, r7, #0x0
	bl		sub_08324f9c
	mov		r0, #0x3
	and		r4, r0
	lsl		r4, r4, #0x2
	add		r4, #0x4
	strb	r4, [r5, #0x0]
_08325128:
	add		r0, r7, #0x0
	add		r0, #0x72
	ldrb	r1, [r0, #0x0]
	mov		r0, #0xf
	and		r0, r1
	cmp		r0, #0xe
	beq		_08325144
	ldr		r0, _0832514c
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	add		r1, r6, #0x0
	bl		sub_08324a0c
_08325144:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32514A, 0x2

_0832514c:	.4byte 0x030031D0
	thumb_func_end sub_083250dc

	thumb_func_start sub_08325150
sub_08325150:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r5, [r4, #0x28]
	ldr		r0, _08325178
	add		r0, r5, r0
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	ldrh	r1, [r4, #0x16]
	add		r0, r0, r1
	strh	r0, [r4, #0x16]
	add		r0, r4, #0x0
	bl		sub_08324940
	add		r5, #0x1
	str		r5, [r4, #0x28]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325176, 0x2

_08325178:	.4byte 0x0202DED8
	thumb_func_end sub_08325150

	thumb_func_start sub_0832517c
sub_0832517c:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	lsl		r6, r6, #0x10
	lsr		r6, r6, #0x10
	ldr		r0, _083251c8
	mov		r1, #0xea
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	bl		sub_083249c8
	mov		r3, #0x0
	strh	r6, [r0, #0x24]
	ldr		r1, _083251cc
	str		r1, [r0, #0x0]
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r4, #0x8
	strh	r4, [r0, #0x14]
	lsl		r5, r5, #0x10
	asr		r5, r5, #0x10
	sub		r5, #0x20
	strh	r5, [r0, #0x16]
	ldr		r1, _083251d0
	str		r1, [r0, #0x8]
	ldrb	r2, [r0, #0x10]
	mov		r1, #0x1
	orr		r1, r2
	strb	r1, [r0, #0x10]
	str		r3, [r0, #0x28]
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_083251c8:	.4byte 0x030031D0
_083251cc:	.4byte 0x0201F151
_083251d0:	.4byte 0x0202DEC8
	thumb_func_end sub_0832517c

	thumb_func_start sub_083251d4
sub_083251d4:
.incbin "base.gba", 0x3251d4, 0x2
	bx		r2
_083251d8:
.incbin "base.gba", 0x3251D8, 0x4
.incbin "base.gba", 0x3251DC, 0x4
.incbin "base.gba", 0x3251E0, 0x4
	thumb_func_end sub_083251d4

	thumb_func_start sub_083251e4
sub_083251e4:
	ldr		r0, _08325250
	ldr		r0, [r0, #0x0]
	ldr		r2, _08325254
	ldr		r3, [r0, #0x0]
	cmp		r2, r3
	beq		_083251f2
	bx		lr
_083251f2:
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
	beq		_08325216
	ldr		r2, _0832525c
	ldrb	r2, [r2, #0x0]
	cmp		r2, #0xa0
	bcs		_08325214
	add		r2, #0xe4
_08325214:
	add		r1, r1, r2
_08325216:
	str		r1, [sp, #0x14]
	ldr		r3, [r0, #0x20]
	cmp		r3, #0x0
	beq		_08325226
	ldr		r0, [r0, #0x24]
	bl		sub_08325592
	ldr		r0, [sp, #0x18]
_08325226:
	ldr		r3, [r0, #0x28]
	bl		sub_08325592
	ldr		r0, [sp, #0x18]
	ldr		r3, [r0, #0x10]
	mov		r8, r3
	ldr		r5, _08325260
	add		r5, r5, r0
	ldrb	r4, [r0, #0x4]
	sub		r7, r4, #0x1
	bls		_08325246
	ldrb	r1, [r0, #0xb]
	sub		r1, r1, r7
	mov		r2, r8
	mul		r2, r1
	add		r5, r5, r2
_08325246:
	str		r5, [sp, #0x8]
	ldr		r6, _08325264
	ldr		r3, _08325258
	bx		r3

.incbin "base.gba", 0x32524E, 0x2

_08325250:	.4byte 0x03007FF0
_08325254:	.4byte 0x68736D53
_08325258:	.4byte 0x030029A9
_0832525c:	.4byte VerticalCounter_LY_
_08325260:	.4byte 0x00000350
_08325264:	.4byte 0x00000630

.incbin "base.gba", 0x325268, 0x32A
	thumb_func_end sub_083251e4

	non_word_aligned_thumb_func_start sub_08325592
sub_08325592:
	bx		r3

.incbin "base.gba", 0x325594, 0x1C
	thumb_func_end sub_08325592

	non_word_aligned_thumb_func_start sub_083255b0
sub_083255b0:
	ldr		r3, [r0, #0x2c]
	cmp		r3, #0x0
	beq		_083255ce
	ldr		r1, [r0, #0x34]
	ldr		r2, [r0, #0x30]
	cmp		r2, #0x0
	beq		_083255c2
	str		r1, [r2, #0x34]
	b		_083255c4
_083255c2:
	str		r1, [r3, #0x20]
_083255c4:
	cmp		r1, #0x0
	beq		_083255ca
	str		r2, [r1, #0x30]
_083255ca:
	mov		r1, #0x0
	str		r1, [r0, #0x2c]
_083255ce:
	bx		lr
	thumb_func_end sub_083255b0

	thumb_func_start sub_083255d0
sub_083255d0:
	push	{ r4, r5, lr }
	add		r5, r1, #0x0
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_083255f4
_083255da:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_083255e8
	mov		r0, #0x40
	orr		r1, r0
	strb	r1, [r4, #0x0]
_083255e8:
	add		r0, r4, #0x0
	bl		sub_083255b0
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_083255da
_083255f4:
	mov		r0, #0x0
	strb	r0, [r5, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3255FE, 0x2
	thumb_func_end sub_083255d0

	thumb_func_start sub_08325600
sub_08325600:
	mov		r12, lr
	mov		r1, #0x24
	ldr		r2, _08325630
_08325606:
	ldr		r3, [r2, #0x0]
	bl		sub_0832561a
	stmia	r0!, {  r3 }
	add		r2, #0x4
	sub		r1, #0x1
	bgt		_08325606
	bx		r12

.incbin "base.gba", 0x325616, 0x2
	thumb_func_end sub_08325600

	thumb_func_start sub_08325618
sub_08325618:
	ldrb	r3, [r2, #0x0]
	thumb_func_end sub_08325618

	non_word_aligned_thumb_func_start sub_0832561a
sub_0832561a:
	push	{ r0 }
	lsr		r0, r2, #0x19
	bne		_0832562c
	ldr		r0, _08325630
	cmp		r2, r0
	bcc		_0832562a
	lsr		r0, r2, #0xe
	beq		_0832562c
_0832562a:
	mov		r3, #0x0
_0832562c:
	pop		{ r0 }
	bx		lr

.align 2, 0
_08325630:	.4byte 0x0202DEE8
	thumb_func_end sub_0832561a

	thumb_func_start sub_08325634
sub_08325634:
	ldr		r2, [r1, #0x40]
	add		r3, r2, #0x1
	str		r3, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	b		sub_0832561a

.incbin "base.gba", 0x32563E, 0x4
_08325642:
	ldr		r2, [r1, #0x40]
	ldrb	r0, [r2, #0x3]
	lsl		r0, r0, #0x8
	ldrb	r3, [r2, #0x2]
	orr		r0, r3
	lsl		r0, r0, #0x8
	ldrb	r3, [r2, #0x1]
	orr		r0, r3
	lsl		r0, r0, #0x8
	bl		sub_08325618
	orr		r0, r3
	str		r0, [r1, #0x40]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325660, 0x30
	thumb_func_end sub_08325634

	thumb_func_start sub_08325690
sub_08325690:
	push	{ lr }
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	cmp		r3, #0x0
	bne		_083256a0
	add		r2, #0x1
	str		r2, [r1, #0x40]
	b		_08325642
_083256a0:
	ldrb	r3, [r1, #0x3]
	add		r3, #0x1
	strb	r3, [r1, #0x3]
	mov		r12, r3
	bl		sub_08325634
	cmp		r12, r3
	bcs		_083256b2
	b		_08325642
_083256b2:
	mov		r3, #0x0
	strb	r3, [r1, #0x3]
	add		r2, #0x5
	str		r2, [r1, #0x40]
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3256BE, 0x39A
	thumb_func_end sub_08325690

	thumb_func_start sub_08325a58
sub_08325a58:
	bx		r3

.incbin "base.gba", 0x325A5A, 0xE
	thumb_func_end sub_08325a58

	thumb_func_start sub_08325a68
sub_08325a68:
	push	{ r4, r5, r6, lr }
	add		r5, r1, #0x0
	ldrb	r1, [r5, #0x0]
	mov		r0, #0x80
	tst		r0, r1
	beq		_08325aa0
	ldr		r4, [r5, #0x20]
	cmp		r4, #0x0
	beq		_08325a9e
	mov		r6, #0x0
_08325a7c:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_08325a96
	ldrb	r0, [r4, #0x1]
	mov		r3, #0x7
	and		r0, r3
	beq		_08325a94
	ldr		r3, _08325aa8
	ldr		r3, [r3, #0x0]
	ldr		r3, [r3, #0x2c]
	bl		sub_08325a58
_08325a94:
	strb	r6, [r4, #0x0]
_08325a96:
	str		r6, [r4, #0x2c]
	ldr		r4, [r4, #0x34]
	cmp		r4, #0x0
	bne		_08325a7c
_08325a9e:
	str		r4, [r5, #0x20]
_08325aa0:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325AA6, 0x2

_08325aa8:	.4byte 0x03007FF0
	thumb_func_end sub_08325a68

	thumb_func_start sub_08325aac
sub_08325aac:
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
	bls		_08325ac4
	mov		r0, #0xff
_08325ac4:
	strb	r0, [r4, #0x2]
	mov		r3, #0x7f
	sub		r3, r3, r2
	mul		r3, r1
	ldrb	r0, [r5, #0x11]
	mul		r0, r3
	asr		r0, r0, #0xe
	cmp		r0, #0xff
	bls		_08325ad8
	mov		r0, #0xff
_08325ad8:
	strb	r0, [r4, #0x3]
	bx		lr
	thumb_func_end sub_08325aac

	thumb_func_start sub_08325adc
sub_08325adc:
	push	{ r4, r5, r6, r7, lr }
	mov		r4, r8
	mov		r5, r9
	mov		r6, r10
	mov		r7, r11
	push	{ r4, r5, r6, r7 }
	sub		sp, #0x18
	str		r1, [sp, #0x0]
	add		r5, r2, #0x0
	ldr		r1, _08325cd4
	ldr		r1, [r1, #0x0]
	str		r1, [sp, #0x4]
	ldr		r1, _08325cd8
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x4]
	ldr		r3, [r5, #0x40]
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_08325b22
	strb	r0, [r5, #0x5]
	add		r3, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_08325b20
	strb	r0, [r5, #0x6]
	add		r3, #0x1
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x80
	bcs		_08325b20
	ldrb	r1, [r5, #0x4]
	add		r1, r1, r0
	strb	r1, [r5, #0x4]
	add		r3, #0x1
_08325b20:
	str		r3, [r5, #0x40]
_08325b22:
	mov		r0, #0x0
	str		r0, [sp, #0x14]
	add		r4, r5, #0x0
	add		r4, #0x24
	ldrb	r2, [r4, #0x0]
	mov		r0, #0xc0
	tst		r0, r2
	beq		_08325b74
	ldrb	r3, [r5, #0x5]
	mov		r0, #0x40
	tst		r0, r2
	beq		_08325b42
	ldr		r1, [r5, #0x2c]
	add		r1, r1, r3
	ldrb	r0, [r1, #0x0]
	b		_08325b44
_08325b42:
	add		r0, r3, #0x0
_08325b44:
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
	beq		_08325b5c
	b		_08325cc2
_08325b5c:
	mov		r0, #0x80
	tst		r0, r2
	beq		_08325b78
	ldrb	r1, [r6, #0x3]
	mov		r0, #0x80
	tst		r0, r1
	beq		_08325b70
	sub		r1, #0xc0
	lsl		r1, r1, #0x1
	str		r1, [sp, #0x14]
_08325b70:
	ldrb	r3, [r6, #0x1]
	b		_08325b78
_08325b74:
	mov		r9, r4
	ldrb	r3, [r5, #0x5]
_08325b78:
	str		r3, [sp, #0x8]
	ldr		r6, [sp, #0x0]
	ldrb	r1, [r6, #0x9]
	ldrb	r0, [r5, #0x1d]
	add		r0, r0, r1
	cmp		r0, #0xff
	bls		_08325b88
	mov		r0, #0xff
_08325b88:
	str		r0, [sp, #0x10]
	mov		r6, r9
	ldrb	r0, [r6, #0x0]
	mov		r6, #0x7
	and		r6, r0
	str		r6, [sp, #0xC]
	beq		_08325bc8
	ldr		r0, [sp, #0x4]
	ldr		r4, [r0, #0x1c]
	cmp		r4, #0x0
	bne		_08325ba0
	b		_08325cc2
_08325ba0:
	sub		r6, #0x1
	lsl		r0, r6, #0x6
	add		r4, r4, r0
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_08325c1c
	mov		r0, #0x40
	tst		r0, r1
	bne		_08325c1c
	ldrb	r1, [r4, #0x13]
	ldr		r0, [sp, #0x10]
	cmp		r1, r0
	bcc		_08325c1c
	beq		_08325bc0
	b		_08325cc2
_08325bc0:
	ldr		r0, [r4, #0x2c]
	cmp		r0, r5
	bcs		_08325c1c
	b		_08325cc2
_08325bc8:
	ldr		r6, [sp, #0x10]
	add		r7, r5, #0x0
	mov		r2, #0x0
	mov		r8, r2
	ldr		r4, [sp, #0x4]
	ldrb	r3, [r4, #0x6]
	add		r4, #0x50
_08325bd6:
	ldrb	r1, [r4, #0x0]
	mov		r0, #0xc7
	tst		r0, r1
	beq		_08325c1c
	mov		r0, #0x40
	tst		r0, r1
	beq		_08325bf0
	cmp		r2, #0x0
	bne		_08325bf4
	add		r2, #0x1
	ldrb	r6, [r4, #0x13]
	ldr		r7, [r4, #0x2c]
	b		_08325c0e
_08325bf0:
	cmp		r2, #0x0
	bne		_08325c10
_08325bf4:
	ldrb	r0, [r4, #0x13]
	cmp		r0, r6
	bcs		_08325c00
	add		r6, r0, #0x0
	ldr		r7, [r4, #0x2c]
	b		_08325c0e
_08325c00:
	bhi		_08325c10
	ldr		r0, [r4, #0x2c]
	cmp		r0, r7
	bls		_08325c0c
	add		r7, r0, #0x0
	b		_08325c0e
_08325c0c:
	bcc		_08325c10
_08325c0e:
	mov		r8, r4
_08325c10:
	add		r4, #0x40
	sub		r3, #0x1
	bgt		_08325bd6
	mov		r4, r8
	cmp		r4, #0x0
	beq		_08325cc2
_08325c1c:
	add		r0, r4, #0x0
	bl		sub_083261e8
	mov		r1, #0x0
	str		r1, [r4, #0x30]
	ldr		r3, [r5, #0x20]
	str		r3, [r4, #0x34]
	cmp		r3, #0x0
	beq		_08325c30
	str		r4, [r3, #0x30]
_08325c30:
	str		r4, [r5, #0x20]
	str		r5, [r4, #0x2c]
	ldrb	r0, [r5, #0x1b]
	strb	r0, [r5, #0x1c]
	cmp		r0, r1
	beq		_08325c42
	add		r1, r5, #0x0
	bl		sub_08325d1c
_08325c42:
	ldr		r0, [sp, #0x0]
	add		r1, r5, #0x0
	bl		sub_0832676c
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
	bl		sub_08325aac
	ldrb	r1, [r4, #0x8]
	mov		r0, #0x8
	ldrsb	r0, [r5, r0]
	add		r3, r1, r0
	bpl		_08325c7c
	mov		r3, #0x0
_08325c7c:
	ldr		r6, [sp, #0xC]
	cmp		r6, #0x0
	beq		_08325caa
	mov		r6, r9
	ldrb	r0, [r6, #0x2]
	strb	r0, [r4, #0x1e]
	ldrb	r1, [r6, #0x3]
	mov		r0, #0x80
	tst		r0, r1
	bne		_08325c96
	mov		r0, #0x70
	tst		r0, r1
	bne		_08325c98
_08325c96:
	mov		r1, #0x8
_08325c98:
	strb	r1, [r4, #0x1f]
	ldrb	r2, [r5, #0x9]
	add		r1, r3, #0x0
	ldr		r0, [sp, #0xC]
	ldr		r3, [sp, #0x4]
	ldr		r3, [r3, #0x30]
	bl		sub_08325a58
	b		_08325cb4
_08325caa:
	ldrb	r2, [r5, #0x9]
	add		r1, r3, #0x0
	add		r0, r7, #0x0
	bl		sub_08325d6c
_08325cb4:
	str		r0, [r4, #0x20]
	mov		r0, #0x80
	strb	r0, [r4, #0x0]
	ldrb	r1, [r5, #0x0]
	mov		r0, #0xf0
	and		r0, r1
	strb	r0, [r5, #0x0]
_08325cc2:
	add		sp, #0x18
	pop		{ r0, r1, r2, r3, r4, r5, r6, r7 }
	mov		r8, r0
	mov		r9, r1
	mov		r10, r2
	mov		r11, r3
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325CD2, 0x2

_08325cd4:	.4byte 0x03007FF0
_08325cd8:	.4byte 0x0202E15C

.incbin "base.gba", 0x325CDC, 0x40
	thumb_func_end sub_08325adc

	thumb_func_start sub_08325d1c
sub_08325d1c:
	mov		r2, #0x0
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x1a]
	ldrb	r2, [r1, #0x18]
	cmp		r2, #0x0
	bne		_08325d2c
	mov		r2, #0xc
	b		_08325d2e
_08325d2c:
	mov		r2, #0x3
_08325d2e:
	ldrb	r3, [r1, #0x0]
	orr		r3, r2
	strb	r3, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x325D36, 0x36
	thumb_func_end sub_08325d1c

	thumb_func_start sub_08325d6c
sub_08325d6c:
	push	{ r4, r5, r6, r7, lr }
	mov		r12, r0
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	lsl		r7, r2, #0x18
	cmp		r6, #0xb2
	bls		_08325d80
	mov		r6, #0xb2
	mov		r7, #0xff
	lsl		r7, r7, #0x18
_08325d80:
	ldr		r3, _08325dc8
	add		r0, r6, r3
	ldrb	r5, [r0, #0x0]
	ldr		r4, _08325dcc
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
	bl		sub_083251d4
	add		r1, r0, #0x0
	add		r1, r5, r1
	add		r0, r4, #0x0
	bl		sub_083251d4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08325dc8:	.4byte 0x0202DF78
_08325dcc:	.4byte 0x0202E02C

.incbin "base.gba", 0x325DD0, 0xB8
	thumb_func_end sub_08325d6c

	thumb_func_start sub_08325e88
sub_08325e88:
	push	{ lr }
	bl		sub_083251e4
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325E92, 0x2
	thumb_func_end sub_08325e88

	thumb_func_start sub_08325e94
sub_08325e94:
	push	{ lr }
	lsl		r0, r0, #0x10
	ldr		r2, _08325eb8
	ldr		r1, _08325ebc
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
	bl		sub_08326580
	pop		{ r0 }
	bx		r0

_08325eb8:	.4byte 0x0202E890
_08325ebc:	.4byte 0x0202E8F0

.incbin "base.gba", 0x325EC0, 0xA0
	thumb_func_end sub_08325e94

	thumb_func_start sub_08325f60
sub_08325f60:
	push	{ lr }
	lsl		r0, r0, #0x10
	ldr		r2, _08325f8c
	ldr		r1, _08325f90
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
	bne		_08325f86
	add		r0, r2, #0x0
	bl		sub_08326664
_08325f86:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x325F8A, 0x2

_08325f8c:	.4byte 0x0202E890
_08325f90:	.4byte 0x0202E8F0

.incbin "base.gba", 0x325F94, 0xF0
	thumb_func_end sub_08325f60

	thumb_func_start sub_08326084
sub_08326084:
	push	{ r4, r5, r6, r7, lr }
	ldrb	r5, [r0, #0x8]
	ldr		r4, [r0, #0x2c]
	cmp		r5, #0x0
	ble		_083260c6
	mov		r7, #0x80
_08326090:
	ldrb	r1, [r4, #0x0]
	add		r0, r7, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_083260be
	mov		r6, #0x40
	add		r0, r6, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_083260be
	add		r0, r4, #0x0
	bl		sub_083261fc
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
_083260be:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_08326090
_083260c6:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08326084

	thumb_func_start sub_083260cc
sub_083260cc:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r1, _08326194
	mov		r0, #0x8f
	strh	r0, [r1, #0x0]
	ldr		r3, _08326198
	mov		r2, #0x0
	strh	r2, [r3, #0x0]
	ldr		r0, _0832619c
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
	ldr		r0, _083261a0
	ldr		r4, [r0, #0x0]
	ldr		r6, [r4, #0x0]
	ldr		r0, _083261a4
	cmp		r6, r0
	bne		_0832618c
	add		r0, r6, #0x1
	str		r0, [r4, #0x0]
	ldr		r1, _083261a8
	ldr		r0, _083261ac
	str		r0, [r1, #0x20]
	ldr		r0, _083261b0
	str		r0, [r1, #0x44]
	ldr		r0, _083261b4
	str		r0, [r1, #0x4c]
	ldr		r0, _083261b8
	str		r0, [r1, #0x70]
	ldr		r0, _083261bc
	str		r0, [r1, #0x74]
	ldr		r0, _083261c0
	str		r0, [r1, #0x78]
	ldr		r0, _083261c4
	str		r0, [r1, #0x7c]
	add		r2, r1, #0x0
	add		r2, #0x80
	ldr		r0, _083261c8
	str		r0, [r2, #0x0]
	add		r1, #0x84
	ldr		r0, _083261cc
	str		r0, [r1, #0x0]
	str		r5, [r4, #0x1c]
	ldr		r0, _083261d0
	str		r0, [r4, #0x28]
	ldr		r0, _083261d4
	str		r0, [r4, #0x2c]
	ldr		r0, _083261d8
	str		r0, [r4, #0x30]
	ldr		r0, _083261dc
	mov		r1, #0x0
	strb	r0, [r4, #0xc]
	str		r1, [sp, #0x0]
	ldr		r2, _083261e0
	mov		r0, sp
	add		r1, r5, #0x0
	bl		sub_083272c4
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
_0832618c:
	add		sp, #0x4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08326194:	.4byte ControlSoundon_off_NR52_
_08326198:	.4byte ControlStereo_Volume_Enable_NR50_NR51_
_0832619c:	.4byte Channel1Duty_Length_Envelope_NR11_NR12_ + 0x1
_083261a0:	.4byte 0x03007FF0
_083261a4:	.4byte 0x68736D53
_083261a8:	.4byte 0x03006910
_083261ac:	.4byte 0x02021041
_083261b0:	.4byte 0x0201FD45
_083261b4:	.4byte 0x0201FD59
_083261b8:	.4byte 0x02021199
_083261bc:	.4byte 0x0201FCDD
_083261c0:	.4byte 0x020202DD
_083261c4:	.4byte 0x0201FA69
_083261c8:	.4byte 0x020206A5
_083261cc:	.4byte 0x0202076D
_083261d0:	.4byte 0x02020981
_083261d4:	.4byte 0x020208C9
_083261d8:	.4byte 0x02020821
_083261dc:	.4byte 0x00000040
_083261e0:	.4byte 0x05000040

.incbin "base.gba", 0x3261E4, 0x4
	thumb_func_end sub_083260cc

	thumb_func_start sub_083261e8
sub_083261e8:
	push	{ lr }
	ldr		r1, _083261f8
	ldr		r1, [r1, #0x0]
	bl		sub_08327308
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3261F6, 0x2

_083261f8:	.4byte 0x03006998
	thumb_func_end sub_083261e8

	thumb_func_start sub_083261fc
sub_083261fc:
	push	{ lr }
	ldr		r1, _0832620c
	ldr		r1, [r1, #0x0]
	bl		sub_08327308
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32620A, 0x2

_0832620c:	.4byte 0x0300699C
	thumb_func_end sub_083261fc

	thumb_func_start sub_08326210
sub_08326210:
	push	{ r4, r5, lr }
	sub		sp, #0x4
	add		r5, r0, #0x0
	mov		r3, #0x0
	str		r3, [r5, #0x0]
	ldr		r2, _083262a8
	ldr		r0, [r2, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x12
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832622c
	ldr		r0, _083262ac
	str		r0, [r2, #0x0]
_0832622c:
	ldr		r1, _083262b0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	sub		r1, #0x42
	mov		r0, #0x8f
	strh	r0, [r1, #0x0]
	sub		r1, #0x2
	ldr		r2, _083262b4
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _083262b8
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3f
	and		r0, r1
	mov		r1, #0x40
	orr		r0, r1
	strb	r0, [r2, #0x0]
	ldr		r1, _083262bc
	mov		r2, #0xd4
	lsl		r2, r2, #0x2
	add		r0, r5, r2
	str		r0, [r1, #0x0]
	add		r1, #0x4
	ldr		r0, _083262c0
	str		r0, [r1, #0x0]
	ldr		r0, _083262c4
	str		r5, [r0, #0x0]
	str		r3, [sp, #0x0]
	ldr		r2, _083262c8
	mov		r0, sp
	add		r1, r5, #0x0
	bl		sub_083272c4
	mov		r0, #0x8
	strb	r0, [r5, #0x6]
	mov		r0, #0xf
	strb	r0, [r5, #0x7]
	ldr		r0, _083262cc
	str		r0, [r5, #0x38]
	ldr		r0, _083262d0
	str		r0, [r5, #0x28]
	str		r0, [r5, #0x2c]
	str		r0, [r5, #0x30]
	str		r0, [r5, #0x3c]
	ldr		r4, _083262d4
	add		r0, r4, #0x0
	bl		sub_08325600
	str		r4, [r5, #0x34]
	mov		r0, #0x80
	lsl		r0, r0, #0xb
	bl		sub_083262dc
	ldr		r0, _083262d8
	str		r0, [r5, #0x0]
	add		sp, #0x4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3262A6, 0x2

_083262a8:	.4byte DMA1WordCount
_083262ac:	.4byte 0x84400004
_083262b0:	.4byte DMA1Control
_083262b4:	.4byte 0x00000B0E
_083262b8:	.4byte SoundPWMControl + 0x1
_083262bc:	.4byte DMA1SourceAddress
_083262c0:	.4byte ChannelAFIFO_Data0_3
_083262c4:	.4byte 0x03007FF0
_083262c8:	.4byte 0x05000260
_083262cc:	.4byte 0x0201FADD
_083262d0:	.4byte 0x020212B9
_083262d4:	.4byte 0x03006910
_083262d8:	.4byte 0x68736D53
	thumb_func_end sub_08326210

	thumb_func_start sub_083262dc
sub_083262dc:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldr		r0, _0832635c
	ldr		r4, [r0, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0xc
	and		r0, r2
	lsr		r2, r0, #0x10
	mov		r6, #0x0
	strb	r2, [r4, #0x8]
	ldr		r1, _08326360
	sub		r0, r2, #0x1
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	ldrh	r5, [r0, #0x0]
	str		r5, [r4, #0x10]
	mov		r0, #0xc6
	lsl		r0, r0, #0x3
	add		r1, r5, #0x0
	bl		sub_08327340
	strb	r0, [r4, #0xb]
	ldr		r0, _08326364
	mul		r0, r5
	ldr		r1, _08326368
	add		r0, r0, r1
	ldr		r1, _0832636c
	bl		sub_08327340
	add		r1, r0, #0x0
	str		r1, [r4, #0x14]
	mov		r0, #0x80
	lsl		r0, r0, #0x11
	bl		sub_08327340
	add		r0, #0x1
	asr		r0, r0, #0x1
	str		r0, [r4, #0x18]
	ldr		r0, _08326370
	strh	r6, [r0, #0x0]
	ldr		r4, _08326374
	ldr		r0, _08326378
	add		r1, r5, #0x0
	bl		sub_08327340
	neg		r0, r0
	strh	r0, [r4, #0x0]
	bl		sub_083264d0
	ldr		r1, _0832637c
_08326340:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x9f
	beq		_08326340
	ldr		r1, _0832637c
_08326348:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x9f
	bne		_08326348
	ldr		r1, _08326370
	mov		r0, #0x80
	strh	r0, [r1, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32635A, 0x2

_0832635c:	.4byte 0x03007FF0
_08326360:	.4byte 0x0202E05C
_08326364:	.4byte 0x00091D1B
_08326368:	.4byte 0x00001388
_0832636c:	.4byte 0x00002710
_08326370:	.4byte Timer0Control
_08326374:	.4byte Timer0Counter_Reload
_08326378:	.4byte 0x00044940
_0832637c:	.4byte VerticalCounter_LY_
	thumb_func_end sub_083262dc

	thumb_func_start sub_08326380
sub_08326380:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	ldr		r0, _0832640c
	ldr		r5, [r0, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r0, _08326410
	cmp		r1, r0
	bne		_08326406
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	mov		r4, #0xff
	and		r4, r3
	cmp		r4, #0x0
	beq		_083263a2
	mov		r0, #0x7f
	and		r4, r0
	strb	r4, [r5, #0x5]
_083263a2:
	mov		r4, #0xf0
	lsl		r4, r4, #0x4
	and		r4, r3
	cmp		r4, #0x0
	beq		_083263c2
	lsr		r0, r4, #0x8
	strb	r0, [r5, #0x6]
	mov		r4, #0xc
	add		r0, r5, #0x0
	add		r0, #0x50
	mov		r1, #0x0
_083263b8:
	strb	r1, [r0, #0x0]
	sub		r4, #0x1
	add		r0, #0x40
	cmp		r4, #0x0
	bne		_083263b8
_083263c2:
	mov		r4, #0xf0
	lsl		r4, r4, #0x8
	and		r4, r3
	cmp		r4, #0x0
	beq		_083263d0
	lsr		r0, r4, #0xc
	strb	r0, [r5, #0x7]
_083263d0:
	mov		r4, #0xb0
	lsl		r4, r4, #0x10
	and		r4, r3
	cmp		r4, #0x0
	beq		_083263ee
	mov		r0, #0xc0
	lsl		r0, r0, #0xe
	and		r0, r4
	lsr		r4, r0, #0xe
	ldr		r2, _08326414
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x3f
	and		r0, r1
	orr		r0, r4
	strb	r0, [r2, #0x0]
_083263ee:
	mov		r4, #0xf0
	lsl		r4, r4, #0xc
	and		r4, r3
	cmp		r4, #0x0
	beq		_08326402
	bl		sub_0832646c
	add		r0, r4, #0x0
	bl		sub_083262dc
_08326402:
	ldr		r0, _08326410
	str		r0, [r5, #0x0]
_08326406:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0832640c:	.4byte 0x03007FF0
_08326410:	.4byte 0x68736D53
_08326414:	.4byte SoundPWMControl + 0x1
	thumb_func_end sub_08326380

	thumb_func_start sub_08326418
sub_08326418:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _08326464
	ldr		r6, [r0, #0x0]
	ldr		r1, [r6, #0x0]
	ldr		r0, _08326468
	cmp		r1, r0
	bne		_0832645e
	add		r0, r1, #0x1
	str		r0, [r6, #0x0]
	mov		r5, #0xc
	add		r4, r6, #0x0
	add		r4, #0x50
	mov		r0, #0x0
_08326432:
	strb	r0, [r4, #0x0]
	sub		r5, #0x1
	add		r4, #0x40
	cmp		r5, #0x0
	bgt		_08326432
	ldr		r4, [r6, #0x1c]
	cmp		r4, #0x0
	beq		_0832645a
	mov		r5, #0x1
	mov		r7, #0x0
_08326446:
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, [r6, #0x2c]
	bl		sub_08327308
	strb	r7, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x40
	cmp		r5, #0x4
	ble		_08326446
_0832645a:
	ldr		r0, _08326468
	str		r0, [r6, #0x0]
_0832645e:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08326464:	.4byte 0x03007FF0
_08326468:	.4byte 0x68736D53
	thumb_func_end sub_08326418

	thumb_func_start sub_0832646c
sub_0832646c:
	push	{ lr }
	sub		sp, #0x4
	ldr		r0, _083264b8
	ldr		r2, [r0, #0x0]
	ldr		r1, [r2, #0x0]
	ldr		r3, _083264bc
	add		r0, r1, r3
	cmp		r0, #0x1
	bhi		_083264b2
	add		r0, r1, #0x0
	add		r0, #0xa
	str		r0, [r2, #0x0]
	ldr		r3, _083264c0
	ldr		r0, [r3, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x12
	and		r0, r1
	cmp		r0, #0x0
	beq		_08326496
	ldr		r0, _083264c4
	str		r0, [r3, #0x0]
_08326496:
	ldr		r1, _083264c8
	mov		r3, #0x80
	lsl		r3, r3, #0x3
	add		r0, r3, #0x0
	strh	r0, [r1, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xd4
	lsl		r0, r0, #0x2
	add		r1, r2, r0
	ldr		r2, _083264cc
	mov		r0, sp
	bl		sub_083272c4
_083264b2:
	add		sp, #0x4
	pop		{ r0 }
	bx		r0

_083264b8:	.4byte 0x03007FF0
_083264bc:	.4byte 0x978C92AD
_083264c0:	.4byte DMA1WordCount
_083264c4:	.4byte 0x84400004
_083264c8:	.4byte DMA1Control
_083264cc:	.4byte 0x0500018C
	thumb_func_end sub_0832646c

	thumb_func_start sub_083264d0
sub_083264d0:
	push	{ r4, lr }
	ldr		r0, _083264fc
	ldr		r2, [r0, #0x0]
	ldr		r3, [r2, #0x0]
	ldr		r0, _08326500
	cmp		r3, r0
	beq		_083264f4
	ldr		r1, _08326504
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
_083264f4:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3264FA, 0x2

_083264fc:	.4byte 0x03007FF0
_08326500:	.4byte 0x68736D53
_08326504:	.4byte DMA1Control
	thumb_func_end sub_083264d0

	thumb_func_start sub_08326508
sub_08326508:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r4, r2, #0x18
	cmp		r4, #0x0
	beq		_0832656c
	cmp		r4, #0x10
	bls		_0832651c
	mov		r4, #0x10
_0832651c:
	ldr		r0, _08326574
	ldr		r5, [r0, #0x0]
	ldr		r1, [r5, #0x0]
	ldr		r0, _08326578
	cmp		r1, r0
	bne		_0832656c
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	add		r0, r7, #0x0
	bl		sub_083261fc
	str		r6, [r7, #0x2c]
	strb	r4, [r7, #0x8]
	mov		r0, #0x80
	lsl		r0, r0, #0x18
	str		r0, [r7, #0x4]
	cmp		r4, #0x0
	beq		_08326550
	mov		r1, #0x0
_08326542:
	strb	r1, [r6, #0x0]
	sub		r0, r4, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	add		r6, #0x50
	cmp		r4, #0x0
	bne		_08326542
_08326550:
	ldr		r0, [r5, #0x20]
	cmp		r0, #0x0
	beq		_08326560
	str		r0, [r7, #0x38]
	ldr		r0, [r5, #0x24]
	str		r0, [r7, #0x3c]
	mov		r0, #0x0
	str		r0, [r5, #0x20]
_08326560:
	str		r7, [r5, #0x24]
	ldr		r0, _0832657c
	str		r0, [r5, #0x20]
	ldr		r0, _08326578
	str		r0, [r5, #0x0]
	str		r0, [r7, #0x34]
_0832656c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x326572, 0x2

_08326574:	.4byte 0x03007FF0
_08326578:	.4byte 0x68736D53
_0832657c:	.4byte 0x0201F801
	thumb_func_end sub_08326508

	thumb_func_start sub_08326580
sub_08326580:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	ldr		r1, [r5, #0x34]
	ldr		r0, _08326660
	cmp		r1, r0
	bne		_08326656
	ldrb	r0, [r5, #0xb]
	ldrb	r2, [r7, #0x2]
	cmp		r0, #0x0
	beq		_083265c2
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_083265ac
	ldr		r1, [r5, #0x2c]
	mov		r0, #0x40
	ldrb	r1, [r1, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	bne		_083265b8
_083265ac:
	ldr		r1, [r5, #0x4]
	ldrh	r0, [r5, #0x4]
	cmp		r0, #0x0
	beq		_083265c2
	cmp		r1, #0x0
	blt		_083265c2
_083265b8:
	ldrb	r0, [r7, #0x2]
	add		r2, r0, #0x0
	ldrb	r0, [r5, #0x9]
	cmp		r0, r2
	bhi		_08326656
_083265c2:
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
	bge		_08326622
	ldrb	r0, [r5, #0x8]
	cmp		r6, r0
	bge		_08326642
	mov		r8, r6
_083265f6:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08325a68
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
	bge		_08326622
	ldrb	r1, [r5, #0x8]
	cmp		r6, r1
	blt		_083265f6
_08326622:
	ldrb	r0, [r5, #0x8]
	cmp		r6, r0
	bge		_08326642
	mov		r1, #0x0
	mov		r8, r1
_0832662c:
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08325a68
	mov		r0, r8
	strb	r0, [r4, #0x0]
	add		r6, #0x1
	add		r4, #0x50
	ldrb	r1, [r5, #0x8]
	cmp		r6, r1
	blt		_0832662c
_08326642:
	mov		r0, #0x80
	ldrb	r1, [r7, #0x3]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08326652
	ldrb	r0, [r7, #0x3]
	bl		sub_08326380
_08326652:
	ldr		r0, _08326660
	str		r0, [r5, #0x34]
_08326656:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08326660:	.4byte 0x68736D53
	thumb_func_end sub_08326580

	thumb_func_start sub_08326664
sub_08326664:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	ldr		r1, [r6, #0x34]
	ldr		r0, _083266a0
	cmp		r1, r0
	bne		_0832669a
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
	ble		_08326696
_08326686:
	add		r0, r6, #0x0
	add		r1, r5, #0x0
	bl		sub_08325a68
	sub		r4, #0x1
	add		r5, #0x50
	cmp		r4, #0x0
	bgt		_08326686
_08326696:
	ldr		r0, _083266a0
	str		r0, [r6, #0x34]
_0832669a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_083266a0:	.4byte 0x68736D53
	thumb_func_end sub_08326664

	thumb_func_start sub_083266a4
sub_083266a4:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	ldrh	r1, [r6, #0x24]
	cmp		r1, #0x0
	beq		_08326766
	ldrh	r0, [r6, #0x26]
	sub		r0, #0x1
	strh	r0, [r6, #0x26]
	ldr		r3, _083266e4
	add		r2, r3, #0x0
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0x0
	bne		_08326766
	strh	r1, [r6, #0x26]
	ldrh	r1, [r6, #0x28]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_083266e8
	add		r0, r1, #0x0
	add		r0, #0x10
	strh	r0, [r6, #0x28]
	and		r0, r2
	cmp		r0, #0xff
	bls		_0832673a
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	strh	r0, [r6, #0x28]
	strh	r3, [r6, #0x24]
	b		_0832673a

.incbin "base.gba", 0x3266E2, 0x2

_083266e4:	.4byte 0x0000FFFF

_083266e8:
	add		r0, r1, #0x0
	sub		r0, #0x10
	strh	r0, [r6, #0x28]
	and		r0, r2
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bgt		_0832673a
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	cmp		r5, #0x0
	ble		_0832671a
_083266fe:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_08325a68
	mov		r0, #0x1
	ldrh	r7, [r6, #0x28]
	and		r0, r7
	cmp		r0, #0x0
	bne		_08326712
	strb	r0, [r4, #0x0]
_08326712:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_083266fe
_0832671a:
	mov		r0, #0x1
	ldrh	r1, [r6, #0x28]
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832672e
	ldr		r0, [r6, #0x4]
	mov		r1, #0x80
	lsl		r1, r1, #0x18
	orr		r0, r1
	b		_08326732
_0832672e:
	mov		r0, #0x80
	lsl		r0, r0, #0x18
_08326732:
	str		r0, [r6, #0x4]
	mov		r0, #0x0
	strh	r0, [r6, #0x24]
	b		_08326766
_0832673a:
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	cmp		r5, #0x0
	ble		_08326766
	mov		r3, #0x80
	mov		r7, #0x0
	mov		r2, #0x3
_08326748:
	ldrb	r1, [r4, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832675e
	ldrh	r7, [r6, #0x28]
	lsr		r0, r7, #0x2
	strb	r0, [r4, #0x13]
	add		r0, r1, #0x0
	orr		r0, r2
	strb	r0, [r4, #0x0]
_0832675e:
	sub		r5, #0x1
	add		r4, #0x50
	cmp		r5, #0x0
	bgt		_08326748
_08326766:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_083266a4

	thumb_func_start sub_0832676c
sub_0832676c:
	push	{ r4, lr }
	add		r2, r1, #0x0
	mov		r0, #0x1
	ldrb	r1, [r2, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_083267d0
	ldrb	r3, [r2, #0x13]
	ldrb	r1, [r2, #0x12]
	add		r0, r3, #0x0
	mul		r0, r1
	lsr		r3, r0, #0x5
	ldrb	r4, [r2, #0x18]
	cmp		r4, #0x1
	bne		_08326794
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	add		r0, #0x80
	mul		r0, r3
	lsr		r3, r0, #0x7
_08326794:
	mov		r0, #0x14
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x1
	mov		r1, #0x15
	ldrsb	r1, [r2, r1]
	add		r1, r0, r1
	cmp		r4, #0x2
	bne		_083267aa
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	add		r1, r1, r0
_083267aa:
	mov		r0, #0x80
	neg		r0, r0
	cmp		r1, r0
	bge		_083267b6
	add		r1, r0, #0x0
	b		_083267bc
_083267b6:
	cmp		r1, #0x7f
	ble		_083267bc
	mov		r1, #0x7f
_083267bc:
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
_083267d0:
	ldrb	r1, [r2, #0x0]
	mov		r0, #0x4
	and		r0, r1
	add		r3, r1, #0x0
	cmp		r0, #0x0
	beq		_08326814
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
	bne		_0832680e
	mov		r0, #0x16
	ldrsb	r0, [r2, r0]
	lsl		r0, r0, #0x4
	add		r1, r1, r0
_0832680e:
	asr		r0, r1, #0x8
	strb	r0, [r2, #0x8]
	strb	r1, [r2, #0x9]
_08326814:
	mov		r0, #0xfa
	and		r0, r3
	strb	r0, [r2, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x326820, 0x5AC
	thumb_func_end sub_0832676c

	thumb_func_start sub_08326dcc
sub_08326dcc:
	push	{ r4, lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, [r2, #0x34]
	ldr		r0, _08326df0
	cmp		r3, r0
	bne		_08326de8
	strh	r1, [r2, #0x1e]
	ldrh	r4, [r2, #0x1c]
	add		r0, r1, #0x0
	mul		r0, r4
	asr		r0, r0, #0x8
	strh	r0, [r2, #0x20]
_08326de8:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x326DEE, 0x2

_08326df0:	.4byte 0x68736D53
	thumb_func_end sub_08326dcc

	thumb_func_start sub_08326df4
sub_08326df4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	lsl		r6, r2, #0x10
	ldr		r3, [r4, #0x34]
	ldr		r0, _08326e58
	cmp		r3, r0
	bne		_08326e4c
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r1, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_08326e48
	mov		r0, #0x80
	mov		r8, r0
	lsr		r6, r6, #0x12
	mov		r0, #0x3
	mov		r12, r0
_08326e24:
	add		r0, r7, #0x0
	and		r0, r5
	cmp		r0, #0x0
	beq		_08326e3e
	ldrb	r3, [r1, #0x0]
	mov		r0, r8
	and		r0, r3
	cmp		r0, #0x0
	beq		_08326e3e
	strb	r6, [r1, #0x13]
	mov		r0, r12
	orr		r0, r3
	strb	r0, [r1, #0x0]
_08326e3e:
	sub		r2, #0x1
	add		r1, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_08326e24
_08326e48:
	ldr		r0, _08326e58
	str		r0, [r4, #0x34]
_08326e4c:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08326e58:	.4byte 0x68736D53
	thumb_func_end sub_08326df4

	thumb_func_start sub_08326e5c
sub_08326e5c:
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
	ldr		r0, _08326ecc
	cmp		r3, r0
	bne		_08326ebe
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r3, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_08326eba
	mov		r0, #0x80
	mov		r9, r0
	lsl		r0, r6, #0x10
	asr		r7, r0, #0x18
	mov		r0, #0xc
	mov		r8, r0
_08326e94:
	mov		r0, r12
	and		r0, r5
	cmp		r0, #0x0
	beq		_08326eb0
	ldrb	r1, [r3, #0x0]
	mov		r0, r9
	and		r0, r1
	cmp		r0, #0x0
	beq		_08326eb0
	strb	r7, [r3, #0xb]
	strb	r6, [r3, #0xd]
	mov		r0, r8
	orr		r0, r1
	strb	r0, [r3, #0x0]
_08326eb0:
	sub		r2, #0x1
	add		r3, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_08326e94
_08326eba:
	ldr		r0, _08326ecc
	str		r0, [r4, #0x34]
_08326ebe:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08326ecc:	.4byte 0x68736D53
	thumb_func_end sub_08326e5c

	thumb_func_start sub_08326ed0
sub_08326ed0:
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
	ldr		r0, _08326f34
	cmp		r3, r0
	bne		_08326f28
	add		r0, r3, #0x1
	str		r0, [r4, #0x34]
	ldrb	r2, [r4, #0x8]
	ldr		r1, [r4, #0x2c]
	mov		r5, #0x1
	cmp		r2, #0x0
	ble		_08326f24
	mov		r0, #0x80
	mov		r8, r0
	mov		r0, #0x3
	mov		r12, r0
_08326f00:
	add		r0, r7, #0x0
	and		r0, r5
	cmp		r0, #0x0
	beq		_08326f1a
	ldrb	r3, [r1, #0x0]
	mov		r0, r8
	and		r0, r3
	cmp		r0, #0x0
	beq		_08326f1a
	strb	r6, [r1, #0x15]
	mov		r0, r12
	orr		r0, r3
	strb	r0, [r1, #0x0]
_08326f1a:
	sub		r2, #0x1
	add		r1, #0x50
	lsl		r5, r5, #0x1
	cmp		r2, #0x0
	bgt		_08326f00
_08326f24:
	ldr		r0, _08326f34
	str		r0, [r4, #0x34]
_08326f28:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08326f34:	.4byte 0x68736D53
	thumb_func_end sub_08326ed0

	thumb_func_start sub_08326f38
sub_08326f38:
	add		r1, r0, #0x0
	mov		r2, #0x0
	mov		r0, #0x0
	strb	r0, [r1, #0x1a]
	strb	r0, [r1, #0x16]
	ldrb	r0, [r1, #0x18]
	cmp		r0, #0x0
	bne		_08326f4c
	mov		r0, #0xc
	b		_08326f4e
_08326f4c:
	mov		r0, #0x3
_08326f4e:
	ldrb	r2, [r1, #0x0]
	orr		r0, r2
	strb	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x326F56, 0x2
	thumb_func_end sub_08326f38

	thumb_func_start sub_08326f58
sub_08326f58:
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
	ldr		r0, _08326fc8
	cmp		r1, r0
	bne		_08326fb8
	add		r0, r1, #0x1
	str		r0, [r6, #0x34]
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	mov		r7, #0x1
	cmp		r5, #0x0
	ble		_08326fb4
	mov		r9, r8
_08326f88:
	mov		r0, r10
	and		r0, r7
	cmp		r0, #0x0
	beq		_08326faa
	mov		r0, #0x80
	ldrb	r1, [r4, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_08326faa
	mov		r0, r8
	strb	r0, [r4, #0x17]
	mov		r1, r9
	cmp		r1, #0x0
	bne		_08326faa
	add		r0, r4, #0x0
	bl		sub_08326f38
_08326faa:
	sub		r5, #0x1
	add		r4, #0x50
	lsl		r7, r7, #0x1
	cmp		r5, #0x0
	bgt		_08326f88
_08326fb4:
	ldr		r0, _08326fc8
	str		r0, [r6, #0x34]
_08326fb8:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x326FC6, 0x2

_08326fc8:	.4byte 0x68736D53
	thumb_func_end sub_08326f58

	thumb_func_start sub_08326fcc
sub_08326fcc:
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
	ldr		r0, _0832703c
	cmp		r1, r0
	bne		_0832702c
	add		r0, r1, #0x1
	str		r0, [r6, #0x34]
	ldrb	r5, [r6, #0x8]
	ldr		r4, [r6, #0x2c]
	mov		r7, #0x1
	cmp		r5, #0x0
	ble		_08327028
	mov		r9, r8
_08326ffc:
	mov		r0, r10
	and		r0, r7
	cmp		r0, #0x0
	beq		_0832701e
	mov		r0, #0x80
	ldrb	r1, [r4, #0x0]
	and		r0, r1
	cmp		r0, #0x0
	beq		_0832701e
	mov		r0, r8
	strb	r0, [r4, #0x19]
	mov		r1, r9
	cmp		r1, #0x0
	bne		_0832701e
	add		r0, r4, #0x0
	bl		sub_08326f38
_0832701e:
	sub		r5, #0x1
	add		r4, #0x50
	lsl		r7, r7, #0x1
	cmp		r5, #0x0
	bgt		_08326ffc
_08327028:
	ldr		r0, _0832703c
	str		r0, [r6, #0x34]
_0832702c:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x32703A, 0x2

_0832703c:	.4byte 0x68736D53
	thumb_func_end sub_08326fcc

	thumb_func_start sub_08327040
sub_08327040:
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
	bls		_08327064
	b		_08327192
_08327064:
	lsl		r0, r5, #0x2
	ldr		r1, _08327070
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x32706E, 0x2

_08327070:	.4byte 0x02021074

.incbin "base.gba", 0x327074, 0x11E

_08327192:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08327040

	thumb_func_start sub_08327198
sub_08327198:
	push	{ lr }
	ldr		r2, [r1, #0x40]
	ldrb	r3, [r2, #0x0]
	add		r2, #0x1
	str		r2, [r1, #0x40]
	ldr		r2, _083271b4
	lsl		r3, r3, #0x2
	add		r3, r3, r2
	ldr		r2, [r3, #0x0]
	bl		sub_0832730c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3271B2, 0x2

_083271b4:	.4byte 0x0202E190
	thumb_func_end sub_08327198

	thumb_func_start sub_083271b8
sub_083271b8:
	push	{ lr }
	ldr		r2, _083271c8
	ldr		r2, [r2, #0x0]
	bl		sub_0832730c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x3271C6, 0x2

_083271c8:	.4byte 0x03006910
	thumb_func_end sub_083271b8

	thumb_func_start sub_083271cc
sub_083271cc:
	push	{ r4, lr }
	ldr		r2, [r1, #0x40]
	ldr		r0, _08327204
	and		r4, r0
	ldrb	r0, [r2, #0x0]
	orr		r4, r0
	ldrb	r0, [r2, #0x1]
	lsl		r3, r0, #0x8
	ldr		r0, _08327208
	and		r4, r0
	orr		r4, r3
	ldrb	r0, [r2, #0x2]
	lsl		r3, r0, #0x10
	ldr		r0, _0832720c
	and		r4, r0
	orr		r4, r3
	ldrb	r0, [r2, #0x3]
	lsl		r3, r0, #0x18
	ldr		r0, _08327210
	and		r4, r0
	orr		r4, r3
	str		r4, [r1, #0x28]
	add		r2, #0x4
	str		r2, [r1, #0x40]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x327202, 0x2

_08327204:	.4byte 0xFFFFFF00
_08327208:	.4byte 0xFFFF00FF
_0832720c:	.4byte 0xFF00FFFF
_08327210:	.4byte 0x00FFFFFF

.incbin "base.gba", 0x327214, 0xA8
	thumb_func_end sub_083271cc

	thumb_func_start sub_083272bc
sub_083272bc:
	svc		0xa
	bx		lr
	thumb_func_end sub_083272bc

	thumb_func_start sub_083272c0
sub_083272c0:
	svc		0xc
	bx		lr
	thumb_func_end sub_083272c0

	thumb_func_start sub_083272c4
sub_083272c4:
	svc		0xb
	bx		lr
	thumb_func_end sub_083272c4

	thumb_func_start sub_083272c8
sub_083272c8:
	svc		0x6
	bx		lr

.incbin "base.gba", 0x3272CC, 0x8
	thumb_func_end sub_083272c8

	thumb_func_start sub_083272d4
sub_083272d4:
	svc		0x12
	bx		lr

.incbin "base.gba", 0x3272D8, 0x4
	thumb_func_end sub_083272d4

	thumb_func_start sub_083272dc
sub_083272dc:
	mov		r1, #0x1
	svc		0x25
	bx		lr

.incbin "base.gba", 0x3272E2, 0x1A
	thumb_func_end sub_083272dc

	thumb_func_start sub_083272fc
sub_083272fc:
	mov		r2, #0x0
	svc		0x5
	bx		lr

.incbin "base.gba", 0x327302, 0x2
	thumb_func_end sub_083272fc

	thumb_func_start sub_08327304
sub_08327304:
	bx		r0

.incbin "base.gba", 0x327306, 0x2
	thumb_func_end sub_08327304

	thumb_func_start sub_08327308
sub_08327308:
	bx		r1

.incbin "base.gba", 0x32730A, 0x2
	thumb_func_end sub_08327308

	thumb_func_start sub_0832730c
sub_0832730c:
	bx		r2

.incbin "base.gba", 0x32730E, 0x12
	thumb_func_end sub_0832730c

	thumb_func_start sub_08327320
sub_08327320:
	bx		r7

.incbin "base.gba", 0x327322, 0x1E
	thumb_func_end sub_08327320

	thumb_func_start sub_08327340
sub_08327340:
	cmp		r1, #0x0
	beq		_083273c8
	push	{ r4 }
	add		r4, r0, #0x0
	eor		r4, r1
	mov		r12, r4
	mov		r3, #0x1
	mov		r2, #0x0
	cmp		r1, #0x0
	bpl		_08327356
	neg		r1, r1
_08327356:
	cmp		r0, #0x0
	bpl		_0832735c
	neg		r0, r0
_0832735c:
	cmp		r0, r1
	bcc		_083273ba
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_08327364:
	cmp		r1, r4
	bcs		_08327372
	cmp		r1, r0
	bcs		_08327372
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_08327364
_08327372:
	lsl		r4, r4, #0x3
_08327374:
	cmp		r1, r4
	bcs		_08327382
	cmp		r1, r0
	bcs		_08327382
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_08327374
_08327382:
	cmp		r0, r1
	bcc		_0832738a
	sub		r0, r0, r1
	orr		r2, r3
_0832738a:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_08327396
	sub		r0, r0, r4
	lsr		r4, r3, #0x1
	orr		r2, r4
_08327396:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_083273a2
	sub		r0, r0, r4
	lsr		r4, r3, #0x2
	orr		r2, r4
_083273a2:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_083273ae
	sub		r0, r0, r4
	lsr		r4, r3, #0x3
	orr		r2, r4
_083273ae:
	cmp		r0, #0x0
	beq		_083273ba
	lsr		r3, r3, #0x4
	beq		_083273ba
	lsr		r1, r1, #0x4
	b		_08327382
_083273ba:
	add		r0, r2, #0x0
	mov		r4, r12
	cmp		r4, #0x0
	bpl		_083273c4
	neg		r0, r0
_083273c4:
	pop		{ r4 }
	mov		pc, lr
_083273c8:
	push	{ lr }
	bl		sub_083273d4
	mov		r0, #0x0
	pop		{ pc }

.incbin "base.gba", 0x3273D2, 0x2
	thumb_func_end sub_08327340

	thumb_func_start sub_083273d4
sub_083273d4:
	mov		pc, lr

.incbin "base.gba", 0x3273D6, 0x2
	thumb_func_end sub_083273d4

	thumb_func_start sub_083273d8
sub_083273d8:
	cmp		r1, #0x0
	beq		_08327446
	mov		r3, #0x1
	mov		r2, #0x0
	push	{ r4 }
	cmp		r0, r1
	bcc		_08327440
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_083273ea:
	cmp		r1, r4
	bcs		_083273f8
	cmp		r1, r0
	bcs		_083273f8
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_083273ea
_083273f8:
	lsl		r4, r4, #0x3
_083273fa:
	cmp		r1, r4
	bcs		_08327408
	cmp		r1, r0
	bcs		_08327408
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_083273fa
_08327408:
	cmp		r0, r1
	bcc		_08327410
	sub		r0, r0, r1
	orr		r2, r3
_08327410:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0832741c
	sub		r0, r0, r4
	lsr		r4, r3, #0x1
	orr		r2, r4
_0832741c:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_08327428
	sub		r0, r0, r4
	lsr		r4, r3, #0x2
	orr		r2, r4
_08327428:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_08327434
	sub		r0, r0, r4
	lsr		r4, r3, #0x3
	orr		r2, r4
_08327434:
	cmp		r0, #0x0
	beq		_08327440
	lsr		r3, r3, #0x4
	beq		_08327440
	lsr		r1, r1, #0x4
	b		_08327408
_08327440:
	add		r0, r2, #0x0
	pop		{ r4 }
	mov		pc, lr
_08327446:
	push	{ lr }
	bl		sub_083273d4
	mov		r0, #0x0
	pop		{ pc }
	thumb_func_end sub_083273d8

	thumb_func_start sub_08327450
sub_08327450:
	cmp		r1, #0x0
	beq		_08327506
	mov		r3, #0x1
	cmp		r0, r1
	bcs		_0832745c
	mov		pc, lr
_0832745c:
	push	{ r4 }
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_08327462:
	cmp		r1, r4
	bcs		_08327470
	cmp		r1, r0
	bcs		_08327470
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_08327462
_08327470:
	lsl		r4, r4, #0x3
_08327472:
	cmp		r1, r4
	bcs		_08327480
	cmp		r1, r0
	bcs		_08327480
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_08327472
_08327480:
	mov		r2, #0x0
	cmp		r0, r1
	bcc		_08327488
	sub		r0, r0, r1
_08327488:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0832749a
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x1
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0832749a:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_083274ac
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x2
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_083274ac:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_083274be
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x3
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_083274be:
	mov		r12, r3
	cmp		r0, #0x0
	beq		_083274cc
	lsr		r3, r3, #0x4
	beq		_083274cc
	lsr		r1, r1, #0x4
	b		_08327480
_083274cc:
	mov		r4, #0xe
	lsl		r4, r4, #0x1c
	and		r2, r4
	bne		_083274d8
	pop		{ r4 }
	mov		pc, lr
_083274d8:
	mov		r3, r12
	mov		r4, #0x3
	ror		r3, r4
	tst		r2, r3
	beq		_083274e6
	lsr		r4, r1, #0x3
	add		r0, r0, r4
_083274e6:
	mov		r3, r12
	mov		r4, #0x2
	ror		r3, r4
	tst		r2, r3
	beq		_083274f4
	lsr		r4, r1, #0x2
	add		r0, r0, r4
_083274f4:
	mov		r3, r12
	mov		r4, #0x1
	ror		r3, r4
	tst		r2, r3
	beq		_08327502
	lsr		r4, r1, #0x1
	add		r0, r0, r4
_08327502:
	pop		{ r4 }
	mov		pc, lr
_08327506:
	push	{ lr }
	bl		sub_083273d4
	mov		r0, #0x0
	pop		{ pc }

.incbin "base.gba", 0x327510, 0x40
	thumb_func_end sub_08327450

	thumb_func_start sub_08327550
sub_08327550:
	ldr		r2, _0832755c
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	str		r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x32755A, 0x2

_0832755c:	.4byte 0x030051E0
	thumb_func_end sub_08327550

	thumb_func_start sub_08327560
sub_08327560:
	add		r2, r1, #0x0
	cmp		r0, #0x1
	beq		_08327590
	cmp		r0, #0x1
	bgt		_08327578
	cmp		r0, #0x0
	beq		_08327584
	ldr		r1, _08327574
	b		_083275a4

.incbin "base.gba", 0x327572, 0x2

_08327574:	.4byte 0x030027A0

_08327578:
	cmp		r0, #0x2
	beq		_0832759c
	ldr		r1, _08327580
	b		_083275a4

_08327580:	.4byte 0x030027A0

_08327584:
	ldr		r0, _0832758c
	str		r2, [r0, #0x0]
	add		r1, r0, #0x0
	b		_083275a4

_0832758c:	.4byte 0x030027A0

_08327590:
	ldr		r1, _08327598
	ldr		r0, [r1, #0x0]
	and		r0, r2
	b		_083275a2

_08327598:	.4byte 0x030027A0

_0832759c:
	ldr		r1, _083275bc
	ldr		r0, [r1, #0x0]
	orr		r0, r2
_083275a2:
	str		r0, [r1, #0x0]
_083275a4:
	ldr		r0, _083275c0
	ldr		r1, [r1, #0x0]
	strh	r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x9
	and		r2, r1
	cmp		r2, #0x0
	beq		_083275c8
	ldr		r1, _083275c4
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_083275cc

_083275bc:	.4byte 0x030027A0
_083275c0:	.4byte InterruptEnableRegister
_083275c4:	.4byte InterruptMasterEnableRegister

_083275c8:
	ldr		r0, _083275d0
	strh	r2, [r0, #0x0]
_083275cc:
	bx		lr

.incbin "base.gba", 0x3275CE, 0x2

_083275d0:	.4byte InterruptMasterEnableRegister
	thumb_func_end sub_08327560

	thumb_func_start sub_083275d4
sub_083275d4:
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	ldr		r3, _083275fc
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	asr		r0, r0, #0x10
	strh	r0, [r3, #0x0]
	ldr		r0, _08327600
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	asr		r1, r1, #0x10
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	ldr		r1, _08327604
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	bx		lr

_083275fc:	.4byte DMA3SourceAddress
_08327600:	.4byte DMA3DestinationAddress
_08327604:	.4byte DMA3Control

.incbin "base.gba", 0x327608, 0x30
	thumb_func_end sub_083275d4

	thumb_func_start sub_08327638
sub_08327638:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	cmp		r3, #0x0
	ble		_0832766e
	lsl		r0, r0, #0x5
	mov		r4, #0xc0
	lsl		r4, r4, #0x13
	add		r6, r0, r4
	add		r5, r1, #0x0
	lsl		r0, r2, #0x14
	mov		r8, r0
	lsl		r7, r2, #0x5
	add		r4, r3, #0x0
_08327654:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r3, r8
	asr		r2, r3, #0x10
	bl		sub_083275d4
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r6, r6, r0
	add		r5, r5, r7
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_08327654
_0832766e:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7, pc }
	thumb_func_end sub_08327638

	thumb_func_start sub_08327674
sub_08327674:
	push	{ r4, lr }
	mov		r4, #0x80
	lsl		r4, r4, #0x4
	add		r0, r0, r4
	bl		sub_08327638
	pop		{ r4, pc }

.incbin "base.gba", 0x327682, 0x2
	thumb_func_end sub_08327674

	thumb_func_start sub_08327684
sub_08327684:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	cmp		r3, #0x0
	ble		_083276b0
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	lsl		r0, r2, #0x10
	mov		r8, r0
	lsl		r7, r2, #0x1
	add		r4, r3, #0x0
_0832769a:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r3, r8
	asr		r2, r3, #0x10
	bl		sub_083275d4
	add		r6, #0x40
	add		r5, r5, r7
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0832769a
_083276b0:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7, pc }

.incbin "base.gba", 0x3276B6, 0x1894A
	thumb_func_end sub_08327684


.incbin "base.gba", 0x340000, 0x994
	thumb_func_start sub_08340994
sub_08340994:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	add		r5, r0, #0x0
	ldr		r3, _08340a5c
	mov		r4, #0x0
	strh	r4, [r3, #0x0]
	ldr		r2, _08340a60
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08340a64
	and		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	ldr		r0, _08340a68
	strh	r4, [r0, #0x0]
	sub		r2, #0xd8
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	str		r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	ldr		r3, _08340a6c
	add		r1, r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	ldr		r4, _08340a70
	ldr		r2, _08340a74
	mov		r0, sp
	add		r1, r4, #0x0
	bl		sub_0834131c
	strb	r5, [r4, #0x2]
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r4, #0x14]
	add		r0, r4, #0x0
	add		r0, #0x60
	str		r0, [r4, #0x28]
	add		r0, #0x10
	str		r0, [r4, #0x2C]
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
_08340a0a:
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
	ble		_08340a0a
	mov		r0, #0x0
	ldr		r3, _08340a5c
	strh	r0, [r3, #0x0]
	ldr		r2, _08340a60
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

.incbin "base.gba", 0x340A5A, 0x2

_08340a5c:	.4byte InterruptMasterEnableRegister
_08340a60:	.4byte InterruptEnableRegister
_08340a64:	.4byte 0x0000FF3F
_08340a68:	.4byte SIOModeSelect_GeneralPurposeData
_08340a6c:	.4byte 0x00004003
_08340a70:	.4byte 0x03000600
_08340a74:	.4byte 0x05000050
	thumb_func_end sub_08340994

	thumb_func_start sub_08340a78
sub_08340a78:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r12, r1
	mov		r8, r2
	ldr		r5, _08340a98
	ldr		r6, [r5, #0x0]
	ldr		r7, _08340a9c
	ldrb	r0, [r7, #0x1]
	cmp		r0, #0x0
	beq		_08340aa0
	cmp		r0, #0x1
	beq		_08340b0c
	b		_08340b1a

_08340a98:	.4byte SIOControlRegister
_08340a9c:	.4byte 0x03000600

_08340aa0:
	mov		r1, #0x30
	add		r0, r6, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08340b06
	mov		r0, #0x88
	add		r4, r6, #0x0
	and		r4, r0
	cmp		r4, #0x8
	bne		_08340b1a
	mov		r1, #0x4
	add		r0, r6, #0x0
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r2, r0, #0x18
	cmp		r2, #0x0
	bne		_08340b06
	ldr		r1, [r7, #0x14]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	bne		_08340b06
	ldr		r3, _08340b4c
	strh	r2, [r3, #0x0]
	ldr		r2, _08340b50
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08340b54
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
	ldr		r1, _08340b58
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
	sub		r1, #0xf6
	ldr		r0, _08340b5c
	str		r0, [r1, #0x0]
	strb	r4, [r7, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strb	r0, [r5, #0x0]
_08340b06:
	ldr		r1, _08340b60
	mov		r0, #0x1
	strb	r0, [r1, #0x1]
_08340b0c:
	mov		r0, r12
	bl		sub_08340c64
	mov		r0, r9
	mov		r1, r8
	bl		sub_08340b94
_08340b1a:
	ldr		r1, _08340b60
	ldrb	r0, [r1, #0xB]
	add		r0, #0x1
	strb	r0, [r1, #0xB]
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
	bne		_08340b64
	mov		r0, #0x80
	orr		r0, r2
	orr		r0, r3
	b		_08340b68

.incbin "base.gba", 0x340B4A, 0x2

_08340b4c:	.4byte InterruptMasterEnableRegister
_08340b50:	.4byte InterruptEnableRegister
_08340b54:	.4byte 0x0000FF7F
_08340b58:	.4byte InterruptRequestFlags_IRQAcknowledge
_08340b5c:	.4byte 0x000092C6
_08340b60:	.4byte 0x03000600

_08340b64:
	add		r0, r3, #0x0
	orr		r0, r2
_08340b68:
	add		r2, r0, #0x0
	ldrb	r0, [r1, #0x9]
	cmp		r0, #0x0
	beq		_08340b76
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	orr		r2, r0
_08340b76:
	add		r1, r2, #0x0
	lsl		r0, r6, #0x1a
	lsr		r0, r0, #0x1e
	cmp		r0, #0x3
	bls		_08340b86
	mov		r0, #0x80
	lsl		r0, r0, #0x6
	orr		r1, r0
_08340b86:
	add		r0, r1, #0x0
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08340a78

	thumb_func_start sub_08340b94
sub_08340b94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, #0x0
	ldr		r5, _08340c54
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
	ldr		r1, _08340c58
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
	ldrb	r1, [r5, #0xB]
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
	ldr		r2, _08340c5c
	bl		sub_0834131c
	mov		r2, #0x0
	ldr		r1, [r5, #0x28]
_08340c10:
	ldrh	r0, [r1, #0x0]
	add		r7, r7, r0
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, #0x5
	bls		_08340c10
	add		r2, r5, #0x0
	ldr		r1, [r2, #0x28]
	mvn		r0, r7
	strh	r0, [r1, #0x2]
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08340c30
	ldr		r1, _08340c60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_08340c30:
	mov		r0, #0x1
	neg		r0, r0
	str		r0, [r5, #0x14]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08340c4c
	ldrb	r1, [r5, #0x8]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08340c4c
	ldr		r1, _08340c60
	mov		r0, #0xc0
	strh	r0, [r1, #0x0]
_08340c4c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x340C52, 0x2

_08340c54:	.4byte 0x03000600
_08340c58:	.4byte 0x03000740
_08340c5c:	.4byte Undocumented_Greenswap
_08340c60:	.4byte Timer3Control
	thumb_func_end sub_08340b94

	thumb_func_start sub_08340c64
sub_08340c64:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x8]
	ldr		r1, _08340d8c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r6, _08340d90
	add		r3, r6, #0x4
	add		r0, sp, #0x4
	mov		r10, r0
	add		r2, r6, #0x0
	add		r2, #0x40
	mov		r5, #0x3
_08340c86:
	ldr		r1, [r2, #0x10]
	ldr		r0, [r2, #0x0]
	str		r0, [r2, #0x10]
	stmia	r2!, {  r1 }
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08340c86
	ldr		r0, [r3, #0x0]
	str		r0, [sp, #0x0]
	mov		r2, #0x0
	str		r2, [r3, #0x0]
	ldr		r1, _08340d8c
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
_08340cb2:
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
_08340cc6:
	ldrh	r0, [r1, #0x0]
	add		r4, r4, r0
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, #0x5
	bls		_08340cc6
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_08340d24
	lsl		r0, r4, #0x10
	asr		r0, r0, #0x10
	mov		r2, #0x1
	neg		r2, r2
	cmp		r0, r2
	bne		_08340d24
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
	ldr		r2, _08340d94
	bl		sub_0834131c
_08340d24:
	mov		r0, #0x0
	str		r0, [sp, #0x4]
	mov		r4, r9
	add		r0, r6, r4
	ldr		r1, [r0, #0x0]
	add		r1, #0x4
	mov		r0, r10
	ldr		r2, _08340d98
	bl		sub_0834131c
	mov		r5, r8
	cmp		r5, #0x3
	ble		_08340cb2
	ldr		r0, _08340d90
	ldrb	r1, [r0, #0x2]
	ldrb	r2, [r0, #0x3]
	add		r3, r1, #0x0
	orr		r3, r2
	strb	r3, [r0, #0x2]
	mov		r1, #0x1
	and		r1, r2
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_08340dd8
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x8
	bne		_08340d9c
	mov		r0, #0x3
	and		r0, r2
	cmp		r0, #0x0
	beq		_08340d72
	lsl		r0, r2, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r3
	bne		_08340d72
	ldrb	r0, [r6, #0x8]
	mov		r1, #0x10
	orr		r0, r1
	strb	r0, [r6, #0x8]
_08340d72:
	ldrb	r4, [r6, #0x8]
	lsl		r2, r4, #0x1c
	lsr		r2, r2, #0x1c
	mov		r0, #0xe
	ldrb	r3, [r6, #0x2]
	add		r1, r0, #0x0
	and		r1, r2
	and		r0, r3
	cmp		r1, r0
	bne		_08340dbc
	mov		r0, #0x40
	orr		r0, r4
	b		_08340dba

_08340d8c:	.4byte InterruptMasterEnableRegister
_08340d90:	.4byte 0x03000600
_08340d94:	.4byte Undocumented_Greenswap
_08340d98:	.4byte 0x05000002

_08340d9c:
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
_08340dba:
	strb	r0, [r6, #0x8]
_08340dbc:
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
_08340dd8:
	ldrb	r0, [r6, #0x3]
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x340DEA, 0x532
	thumb_func_end sub_08340c64

	thumb_func_start sub_0834131c
sub_0834131c:
	svc		0xb
	bx		lr

.incbin "base.gba", 0x341320, 0x32E0
	thumb_func_end sub_0834131c


.incbin "base.gba", 0x344600, 0x1C0

_083447c0:

.incbin "base.gba", 0x3447C0, 0xBB840
