	.include "defines.s"
	.include "ram.s"
	.include "macros.s"
    
	thumb_func_start sub_08001a4c
sub_08001a4c:
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
_08001a74:	.4byte ColorSpecialEffectsSElection
	thumb_func_end sub_08001a4c

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
	bl		_UpdateGame
	add		r0, r4, #0x0
	bl		sub_08042668
	bl		_UpdateGame
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
_08001fac:	.4byte BG0Control
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

_08002208:	.4byte RunGameLogic_CallBack
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
	bl		_UpdateGame
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
_080023d4:	.4byte Window0HorizontalDimensions
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
	bl		_UpdateGame
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
_08002490:	.4byte RunGameLogic_CallBack
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
_0800274c:	.4byte RunGameLogic_CallBack
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
_08002900:	.4byte RunGameLogic_CallBack
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
_08002b58:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	add		r0, r6, #0x0
	bl		sub_080038ac
	bl		_UpdateGame
	ldr		r0, [r6, #0xc]
	mov		r7, #0x1
	neg		r7, r7
	cmp		r0, r7
	beq		_08002f1e
	ldr		r0, _08003030
	ldr		r4, _08003034
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _08003038
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800303c
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
_08002f1e:
	ldr		r0, [r6, #0x8]
	cmp		r0, r7
	beq		_08002f76
	ldr		r0, _08003040
	ldr		r4, _08003044
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _08003048
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800304c
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
_08002f76:
	ldr		r0, [r6, #0x10]
	cmp		r0, r7
	beq		_08002fce
	ldr		r0, _08003040
	ldr		r4, _08003050
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _08003054
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800304c
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _0800305c
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800304c
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _0800313c
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _08003140
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
_080030ae:
	bl		_UpdateGame
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
_080030fa:
	ldr		r0, _08003154
	ldr		r4, _08003158
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _0800315c
	ldr		r2, _08003160
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	bl		sub_08029f34
	ldr		r1, _08003164
	add		r4, r4, r1
	ldr		r2, _08003168
	ldr		r3, _0800316c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _0800320c
	ldr		r0, [r6, #0xc]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _08003210
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _080032cc
	ldr		r0, [r6, #0x8]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _080032d0
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _080033dc
	ldr		r0, [r6, #0x10]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _080033e0
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _080034e0
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _080034e4
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r5, _08003558
	ldr		r0, [r6, #0x14]
	lsl		r0, r0, #0x3
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x80
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800355c
	mov		r1, #0xc0
	lsl		r1, r1, #0x1
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08003910
	ldr		r3, _08003914
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _080042b0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0xe0
	lsl		r0, r0, #0x3
	add		r1, r4, r0
	ldr		r0, _080042b4
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _08004408
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0xe0
	lsl		r0, r0, #0x3
	add		r1, r4, r0
	ldr		r0, _0800440c
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
	mov		r0, #0xc0
	lsl		r0, r0, #0x5
	add		r5, r5, r0
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08004588
	add		r0, r7, #0x0
	bl		sub_08002e98
	bl		_UpdateGame
	ldr		r4, _08004794
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	ldr		r4, _08004798
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800479c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _080047a0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0x60
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r0, _080047a4
	ldr		r4, _080047a8
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080047ac
	ldr		r3, _080047b0
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _080047b4
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _080047b8
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
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
	bl		_UpdateGame
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0800464a
	ldr		r0, _080047c8
	ldr		r4, _080047cc
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _080047d0
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080047d4
	ldr		r3, _080047d8
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _080047dc
	mov		r1, #0xd8
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080047e0
	ldr		r3, _080047e4
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	bl		_UpdateGame
	ldr		r4, _080047e8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r4, _080047f4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r4, _080047f8
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x3
	bl		sub_080281fc
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800551e
	mov		r5, #0x2
_08005510:
	bl		_UpdateGame
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028130
	mov		r2, #0xa2
	lsl		r2, r2, #0x2
	add		r1, r4, r2
	mov		r2, #0x80
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x2
	bl		sub_080281fc
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08005808
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800580c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _080058ac
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0xb7
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r5, #0x0
	mov		r2, #0x80
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08005d60
	ldr		r4, _08005d64
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
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
	bl		_UpdateGame
_08006e22:
	ldr		r4, _08007054
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	ldr		r4, _08007058
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800705c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		_UpdateGame
	mov		r2, r8
	cmp		r2, #0x0
	beq		_08006f04
	ldr		r0, _08007060
	ldr		r4, _08007064
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08007068
	ldr		r3, _0800706c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08007070
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _08007074
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
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
	bl		_UpdateGame
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_08006eb4
	ldr		r0, _08007084
	ldr		r4, _08007088
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _0800708c
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08007090
	ldr		r3, _08007094
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
_08006f04:
	ldr		r0, _08007098
	ldr		r4, _0800709c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080070b8
	ldr		r3, _080070bc
	add		r1, r4, #0x0
	bl		sub_08029ee4
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r4, _080070cc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r4, _080070d0
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x3
	bl		sub_080281fc
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
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
	bl		_UpdateGame
	ldrb	r1, [r4, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08008558
	mov		r5, #0x2
_0800854a:
	bl		_UpdateGame
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
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
	bl		_UpdateGame
_0800a918:
	ldr		r4, _0800a9ec
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800a9f0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xa0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800a9f4
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xa0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	sub		r4, #0x20
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800a9f8
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r0, #0xe0
	lsl		r0, r0, #0x1
	add		r1, r1, r0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800a9fc
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0800aa00
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0800aa04
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xd0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
	mov		r1, r9
	cmp		r1, #0x0
	beq		_0800ab12
	ldr		r0, _0800ab38
	ldr		r4, _0800ab3c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800ab40
	ldr		r3, _0800ab44
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800ab48
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _0800ab4c
	mov		r1, #0xc0
	lsl		r1, r1, #0x7
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
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
	bl		_UpdateGame
	mov		r2, #0x80
	lsl		r2, r2, #0x6
	add		r6, r6, r2
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0800aac2
	ldr		r0, _0800ab5c
	ldr		r4, _0800ab60
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
	ldr		r0, _0800ab64
	mov		r2, #0xc0
	lsl		r2, r2, #0x4
	add		r1, r4, r2
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800ab68
	ldr		r3, _0800ab6c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
_0800ab12:
	ldr		r0, [r7, #0x10]
	cmp		r0, #0x3
	beq		_0800ab80
	ldr		r0, _0800ab70
	ldr		r4, _0800ab74
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800ab78
	ldr		r1, _0800ab7c
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800abe4
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r4, r4, r2
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
_0800ab98:
	ldr		r0, _0800abe8
	ldr		r4, _0800abec
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800abf0
	mov		r1, #0xc0
	lsl		r1, r1, #0x4
	add		r5, r4, r1
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r0, _0800ad20
	ldr		r5, _0800ad24
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800ad38
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800ad3c
	ldr		r1, _0800ad40
	add		r4, r5, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800ad44
	ldr		r3, _0800ad48
	add		r1, r4, #0x0
	bl		sub_08029ee4
_0800ac74:
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		_UpdateGame
	ldr		r0, _0800ad4c
	mov		r2, #0x80
	lsl		r2, r2, #0x4
	add		r4, r5, r2
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r5, r5, r1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0800ad92
_0800adb0:
	add		r0, r7, #0x0
	bl		sub_08003170
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
_0800adf4:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800ae6c
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
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
	bl		_UpdateGame
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
	bl		_UpdateGame
	ldrb	r1, [r5, #0xc]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0800c578
	add		r4, r5, #0x0
	mov		r5, #0x2
_0800c56a:
	bl		_UpdateGame
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

_0800c664:	.4byte BG0Control
_0800c668:	.4byte 0x0000FF7F
_0800c66c:	.4byte MosaicSize
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r6, _0800c8d8
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c8dc
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0xc0
	lsl		r1, r1, #0x5
	add		r2, r5, r1
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c8e0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r3, #0xc0
	lsl		r3, r3, #0x6
	add		r2, r5, r3
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_UpdateGame
	ldr		r0, _0800c8fc
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r0, _0800c908
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c90c
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c910
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c914
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c918
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c91c
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c920
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c924
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c928
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c92c
	ldr		r3, _0800c930
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c934
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c938
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800c93c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800c940
	add		r1, r4, #0x0
	mov		r3, r9
	bl		sub_08029ee4
	bl		_UpdateGame
	bl		_UpdateGame
	ldr		r0, _0800c944
	ldr		r1, _0800c948
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		getMgbNicknameFromSave
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0800d03c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, _0800d040
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r5, _0800d044
	ldr		r1, _0800d048
	add		r0, r5, #0x0
	bl		sub_0800c72c
	ldr		r0, _0800d04c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r0, _0800d068
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800d06c
	ldr		r3, _0800d070
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800d074
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800d078
	add		r1, r5, #0x0
	add		r3, r7, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0800d07c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800d080
	ldr		r3, _0800d084
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800d0b6
_0800d0d8:
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_0800d12e
_0800d150:
	bl		_UpdateGame
	ldr		r7, [sp, #0x4]
	cmp		r7, #0x4
	bgt		_0800d15c
	b		_0800cfee
_0800d15c:
	mov		r0, r8
	bl		sub_0800e468
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, r8
	bl		sub_0800c94c
	bl		_UpdateGame
	ldr		r4, _0800d244
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x2
	bl		sub_080281fc
	bl		_UpdateGame
	mov		r0, r8
	bl		sub_0800cae0
	bl		sub_08029f34
	ldr		r1, _0800d248
	ldr		r2, _0800d24c
	ldr		r3, _0800d250
	bl		sub_08029ee4
	bl		_UpdateGame
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
_0800d700:	.4byte RunGameLogic_CallBack
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
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	b		_0800eb14
_0800eb08:
	lsl		r0, r2, #0x3
	add		r0, r12
	ldr		r0, [r0, #0x4]
	ldr		r1, [r4, #0x10]
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	b		_0800ebce

.align 2, 0
.pool

PTR_PTR_0800eb94:	.4byte 0x080f52f8

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

PTR_PTR_0800ebe4:	.4byte 0x080f52f8
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _0800f8a4
	ldr		r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r1, #0xe0
	add		r0, r4, #0x0
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f8c0
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8c4
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f8c8
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8cc
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f8dc
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f8e0
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _0800f8f0
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_08011040
	ldr		r0, _0800f8f4
	ldr		r4, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_08028130
	strh	r6, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0800f8f8
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f8fc
	ldr		r3, _0800f900
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f904
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f908
	add		r1, r5, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f90c
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800f910
	ldr		r3, _0800f914
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800f918
	ldr		r0, [r0, #0x0]
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _0800fab4
	ldr		r0, [r0, #0x0]
	ldr		r4, _0800fab8
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800fabc
	ldr		r3, _0800fac0
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fac4
	ldr		r0, [r0, #0x0]
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800fadc
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fae0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800fae4
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		sub_08011040
	ldr		r0, _0800fae8
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0800faec
	add		r1, r4, #0x0
	mov		r3, r8
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_CallHardwareSetCpuFast
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
_0800fe50:	.4byte SIOControlRegister
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
_0800ff2c:	.4byte RunGameLogic_CallBack
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

_08010dbc:	.4byte RunGameLogic_CallBack
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

_08010e64:	.4byte InterruptEnableRegister
_08010e68:	.4byte 0x06001000
_08010e6c:	.4byte 0x030000F8
_08010e70:	.4byte 0x000004E3
_08010e74:	.4byte 0x0800F5C9
_08010e78:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	strh	r7, [r4, #0x0]
	ldr		r0, _08010f5c
	ldr		r1, _08010f60
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _08010f64
	ldr		r1, _08010f68
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _08010f6c
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	ldr		r0, _08010f70
	ldr		r1, _08010f74
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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

_08010fe0:	.4byte DMA0Control
_08010fe4:	.4byte RunGameLogic_CallBack
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

_0801100c:	.4byte RunGameLogic_CallBack
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

_08011030:	.4byte KeyStatus
_08011034:	.4byte 0x000003FF
_08011038:	.4byte 0x03002E70
_0801103c:	.4byte 0x03002D38
	thumb_func_end sub_08011010

	thumb_func_start sub_08011040
sub_08011040:
	push	{ lr }
	bl		_UpdateGame
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

_080111b0:	.4byte SIOControlRegister
_080111b4:	.4byte SIOModeSelect_GeneralPurposeData
_080111b8:	.4byte 0x00002003
_080111bc:	.4byte SIOData_Normal_8bitandUARTMode

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

_0801122c:	.4byte SIOModeSelect_GeneralPurposeData
_08011230:	.4byte SIOControlRegister
_08011234:	.4byte 0x00002003
_08011238:	.4byte SIOData_Normal_8bitandUARTMode

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

_080112ac:	.4byte SIOData0_Parent__Multi_PlayerMode_
_080112b0:	.4byte 0x0000FFFF
_080112b4:	.4byte SIOData3_3rdChild__Multi_PlayerMode_
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

_08011310:	.4byte SIOData0_Parent__Multi_PlayerMode_

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
_08011380:	.4byte SIOData0_Parent__Multi_PlayerMode_

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
_080113cc:	.4byte SIOData0_Parent__Multi_PlayerMode_

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
_0801143c:	.4byte SIOData0_Parent__Multi_PlayerMode_

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

_080114b0:	.4byte SIOData3_3rdChild__Multi_PlayerMode_

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

_080114e4:	.4byte SIOModeSelect_GeneralPurposeData
_080114e8:	.4byte SIOControlRegister
_080114ec:	.4byte 0x00002003
_080114f0:	.4byte SIOData_Normal_8bitandUARTMode

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

_08011558:	.4byte SIOData0_Parent__Multi_PlayerMode_

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

_0801158c:	.4byte SIOModeSelect_GeneralPurposeData
_08011590:	.4byte SIOControlRegister
_08011594:	.4byte 0x00002003
_08011598:	.4byte SIOData_Normal_8bitandUARTMode

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

_08011600:	.4byte SIOModeSelect_GeneralPurposeData
_08011604:	.4byte SIOControlRegister
_08011608:	.4byte 0x00002003
_0801160c:	.4byte SIOData_Normal_8bitandUARTMode

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

_08011638:	.4byte SIOModeSelect_GeneralPurposeData
_0801163c:	.4byte SIOControlRegister
_08011640:	.4byte 0x00002003
_08011644:	.4byte SIOData_Normal_8bitandUARTMode

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

_08011688:	.4byte SIOControlRegister
_0801168c:	.4byte SIOData_Normal_8bitandUARTMode
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

_080116c8:	.4byte SIOModeSelect_GeneralPurposeData
_080116cc:	.4byte 0x00002003
_080116d0:	.4byte SIOData_Normal_8bitandUARTMode
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

_08011708:	.4byte SIOModeSelect_GeneralPurposeData
_0801170c:	.4byte SIOControlRegister
_08011710:	.4byte 0x00002003
_08011714:	.4byte SIOData_Normal_8bitandUARTMode

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

_08011780:	.4byte SIOModeSelect_GeneralPurposeData
_08011784:	.4byte SIOControlRegister
_08011788:	.4byte 0x00002003
_0801178c:	.4byte SIOData_Normal_8bitandUARTMode

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
_080117d0:	.4byte SIOModeSelect_GeneralPurposeData
_080117d4:	.4byte SIOControlRegister
_080117d8:	.4byte 0x00002003
_080117dc:	.4byte SIOData_Normal_8bitandUARTMode

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

_080118e4:	.4byte SIOData3_3rdChild__Multi_PlayerMode_

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

_08011930:	.4byte SIOData0_Parent__Multi_PlayerMode_

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

_08011960:	.4byte SIOModeSelect_GeneralPurposeData
_08011964:	.4byte SIOControlRegister
_08011968:	.4byte 0x00002003
_0801196c:	.4byte SIOData_Normal_8bitandUARTMode

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

_080119a4:	.4byte SIOModeSelect_GeneralPurposeData
_080119a8:	.4byte SIOControlRegister
_080119ac:	.4byte 0x00002003
_080119b0:	.4byte SIOData_Normal_8bitandUARTMode
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

_08011a04:	.4byte SIOControlRegister
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

_08011ad4:	.4byte InterruptMasterEnableRegister
_08011ad8:	.4byte InterruptEnableRegister
_08011adc:	.4byte 0x0000FF3F
_08011ae0:	.4byte SIOModeSelect_GeneralPurposeData
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

_08011b10:	.4byte SIOControlRegister
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

_08011bc4:	.4byte InterruptMasterEnableRegister
_08011bc8:	.4byte InterruptEnableRegister
_08011bcc:	.4byte 0x0000FF7F
_08011bd0:	.4byte InterruptRequestFlags_IRQAcknowledge
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
_08011cd4:	.4byte Undocumented_Greenswap
_08011cd8:	.4byte Timer3Control
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

_08011e04:	.4byte InterruptMasterEnableRegister
_08011e08:	.4byte 0x03002E80
_08011e0c:	.4byte Undocumented_Greenswap
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
_080140e8:	.4byte BG0Control
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	ldr		r4, _0801424c
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_08028168
	ldr		r0, _08014250
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r3, _08014254
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014258
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	add		r2, r6, r1
	ldr		r4, _0801425c
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014260
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0xe0
	lsl		r1, r1, #0x5
	add		r2, r6, r1
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014264
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0xd0
	lsl		r1, r1, #0x6
	add		r2, r6, r1
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014268
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0xe8
	lsl		r1, r1, #0x7
	add		r2, r6, r1
	ldr		r3, _0801426c
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014270
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08014274
	ldr		r4, _08014278
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0801427c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08014280
	ldr		r3, _08014284
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014288
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0801428c
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08014330
	ldr		r3, _08014334
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08014338
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0801433c
	ldr		r3, _08014340
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08014344
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
_08014364:
	mov		r0, #0x1
	bl		sub_080281fc
	bl		_UpdateGame
	ldr		r4, _080143dc
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x2
	bl		sub_080281fc
	bl		_UpdateGame
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

_08014498:	.4byte RunGameLogic_CallBack
_0801449c:	.4byte 0x00000704
_080144a0:	.4byte 0x0202A400
_080144a4:	.4byte 0x03000174
_080144a8:	.4byte Window0HorizontalDimensions
_080144ac:	.4byte InsideofWindow0and1
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
_080146cc:	.4byte RunGameLogic_CallBack
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

_08014758:	.4byte RunGameLogic_CallBack
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
_080162e0:	.4byte BG0Control
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x0
	bl		sub_08028130
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	ldr		r0, _08016544
	ldr		r5, _08016548
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0801654c
	ldr		r3, _08016550
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08016554
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	add		r1, r5, #0x0
	add		r1, #0x20
	ldr		r2, _08016558
	ldr		r4, _0801655c
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08016560
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08016564
	ldr		r3, _08016568
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0801656c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	add		r1, r5, r2
	ldr		r2, _08016570
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08016574
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r1, r5, r2
	ldr		r2, _08016578
	ldr		r3, _0801657c
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08016580
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08016584
	ldr		r4, _08016588
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _0801658c
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08016590
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _08016594
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08016598
	add		r1, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r4, _0801659c
	mov		r0, #0x0
	add		r1, r4, #0x0
	bl		sub_080281c4
	mov		r0, #0x1
	add		r1, r4, #0x0
	bl		sub_080281c4
	ldr		r0, _080165a0
	add		r1, r5, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r2, #0xc0
	lsl		r2, r2, #0x13
	ldr		r3, _080165a4
	add		r1, r5, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r4, _080165a8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_UpdateGame
	ldr		r0, _080165ac
	ldr		r4, _08016548
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080165b0
	ldr		r3, _080165a4
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _080165b4
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _080165b8
	ldr		r3, _080165bc
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
	ldr		r0, _080165c0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	mov		r1, #0xa0
	lsl		r1, r1, #0x5
	add		r4, r4, r1
	ldr		r2, _080165c4
	ldr		r3, _0801655c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_UpdateGame
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
_080166a0:	.4byte RunGameLogic_CallBack
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
_080166d0:	.4byte KeyStatus
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

_080167c4:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
_080169a8:	.4byte RunGameLogic_CallBack

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
_08016a80:	.4byte RunGameLogic_CallBack
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
_08016ac4:	.4byte Window0HorizontalDimensions
_08016ac8:	.4byte 0x08016b9d
	thumb_func_end sub_08016a88

	thumb_func_start sub_08016acc
sub_08016acc:
	push	{ r4, lr }
	ldr		r0, _08016b08
	ldr		r1, _08016b0c
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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

_08016c40:	.4byte RunGameLogic_CallBack
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

_08018104:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
	b		_08019764

.incbin "base.gba", 0x1973E, 0x6

.align 2, 0
_08019744:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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

_0801986c:	.4byte RunGameLogic_CallBack
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

_0801990c:	.4byte RunGameLogic_CallBack
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

_0801ab78:	.4byte RunGameLogic_CallBack
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
_0801b3f8:	.4byte RunGameLogic_CallBack
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

_0801b438:	.4byte RunGameLogic_CallBack
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
_0801b588:	.4byte RunGameLogic_CallBack
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

_0801b660:	.4byte RunGameLogic_CallBack
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
_0801b834:	.4byte RunGameLogic_CallBack
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

_0801ce10:	.4byte RunGameLogic_CallBack
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

_0801ce80:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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

_0801cfa8:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
	b		_0801d00c

.incbin "base.gba", 0x1CFFA, 0x2

_0801cffc:	.4byte 0x080b99bc

_0801d000:
	ldr		r0, _0801d01c
	mov		r2, #0xa0
	lsl		r2, r2, #0x1
	ldr		r1, [sp, #0x0]
	bl		_CallHardwareSetCpuFast
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

_0801d1dc:	.4byte RunGameLogic_CallBack
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

_0801d39c:	.4byte RunGameLogic_CallBack
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
_0801e15c:	.4byte RunGameLogic_CallBack
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

_0801e188:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory16Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	b		_0801e3e4

.incbin "base.gba", 0x1E3CE, 0x2

_0801e3d0:	.4byte RunGameLogic_CallBack
_0801e3d4:	.4byte 0x000007FB
_0801e3d8:	.4byte 0x080ba908

_0801e3dc:
	ldr		r0, _0801e3f0
	add		r1, r7, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	b		_0801e424

.incbin "base.gba", 0x1E416, 0x2

_0801e418:	.4byte 0x080bb2f8

_0801e41c:
	ldr		r0, _0801e540
	add		r1, r7, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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

_0801e6dc:	.4byte RunGameLogic_CallBack
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

_0801e73c:	.4byte RunGameLogic_CallBack
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

_0801f558:	.4byte RunGameLogic_CallBack
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

_0801f57c:	.4byte RunGameLogic_CallBack
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

_0801f618:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareSetCpuFast
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
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
_08023000:	.4byte RunGameLogic_CallBack
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

_08023564:	.4byte RunGameLogic_CallBack

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

_08023628:	.4byte RunGameLogic_CallBack
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

_08023650:	.4byte RunGameLogic_CallBack

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
	bl		_CallHardwareSetCpuFast
	ldrb	r0, [r4, #0x2]
	cmp		r0, #0x1
	beq		_08023830
	cmp		r0, #0x1
	bgt		_08023818
	cmp		r0, #0x0
	beq		_08023822
	b		_080238c6

_08023810:	.4byte 0x080f8a74
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

_08023848:	.4byte RunGameLogic_CallBack

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
_08025788:	.4byte 0x080f8a74

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
	bl		_CallHardwareSetCpuFast
	str		r4, [sp, #0x4]
	add		r4, sp, #0x4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		_CallHardwareSetCpuFast
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
_0802580c:	.4byte RunGameLogic_CallBack
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
	bl		_CallHardwareSetCpuFast
	str		r4, [sp, #0x0]
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _08025c18
	mov		r0, sp
	bl		_CallHardwareSetCpuFast
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
_08025cb8:	.4byte BG0Control
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
	bl		_CallHardwareSetCpuFast
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

_08026314:	.4byte RunGameLogic_CallBack
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

.align 2, 0
.pool

_08026b98:	.4byte 0x000007D4

_08026b9c:
	mov		r0, #0x1
_08026b9e:
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08026b7c

	thumb_func_start sub_08026ba4
sub_08026ba4:
    push       { r4, r5, r6, r7, lr }
    add        r5, r0, #0x0
    add        r4, r1, #0x0
    add        r6, r2, #0x0
    mov        r1, #0x0
    cmp        r1, r3
    bge        _08026bd6
    mov        r0, #0x20
    sub        r0, r0, r6
    lsl        r7, r0, #0x1
_08026bb8:
    add        r2, r1, #0x1
    cmp        r6, #0x0
    ble        _08026bce
    add        r1, r6, #0x0
_08026bc0:
    ldrh       r0, [r5, #0x0]
    strh       r0, [r4, #0x0]
    add        r5, #0x2
    add        r4, #0x2
    sub        r1, #0x1
    cmp        r1, #0x0
    bne        _08026bc0
_08026bce:
    add        r4, r4, r7
    add        r1, r2, #0x0
    cmp        r1, r3
    blt        _08026bb8
_08026bd6:
    pop        { r4, r5, r6, r7 }
    pop        { r0 }
    bx         r0
	thumb_func_end sub_08026ba4
