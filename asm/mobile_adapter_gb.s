	thumb_func_start _MGBLoadUsername
_MGBLoadUsername: @ 08057950
	push	{ r4, lr }
	add		r1, r0, #0x0
	ldr		r0, _0805797c
	add		r3, r0, #0x0
	add		r3, #0x1c
	mov		r4, #0x0
	mov		r2, #0x4
_0805795e:
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0] 
	lsl		r0, r0, #0x18
	add		r3, #0x1
	add		r1, #0x1
	cmp		r0, #0x0
	beq		_0805796e
	mov		r4, #0x1
_0805796e:
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805795e
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 } 
	bx		r1

_0805797c:	.4byte 0x02032B80
	thumb_func_end _MGBLoadUsername

	thumb_func_start sub_08057980
sub_08057980:
	add		r1, r0, #0x0
	ldr		r0, _0805799c
	add		r3, r0, #0x0
	add		r3, #0x1c
	mov		r2, #0x4
_0805798a:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_0805798a
	bx		lr

.align 2, 0
.pool

_0805799c:	.4byte 0x02032B80
	thumb_func_end sub_08057980

	thumb_func_start _MGBLoadPassword
_MGBLoadPassword: @ 080579A0
	add		r2, r0, #0x0
	ldr		r0, _080579b4
	ldr		r3, _080579b8
	add		r1, r0, r3
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_080579bc
	mov		r0, #0x0
	b		_080579ce

	.2byte 	0x0

_080579b4:	.4byte 0x02032B80
_080579b8:	.4byte 0x00000AD4

_080579bc:
	mov		r3, #0x10
_080579be:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080579be
	mov		r0, #0x1
_080579ce:
	bx		lr
	thumb_func_end _MGBLoadPassword

	thumb_func_start sub_080579d0
sub_080579d0:
	add		r1, r0, #0x0
	ldr		r0, _080579ec
	ldr		r2, _080579f0
	add		r3, r0, r2
	mov		r2, #0x10
_080579da:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_080579da
	bx		lr

.align 2, 0
.pool

_080579ec:	.4byte 0x02032B80
_080579f0:	.4byte 0x00000AD4
	thumb_func_end sub_080579d0

	thumb_func_start sub_080579f4
sub_080579f4:
	push	{ r4, lr }
	add		r1, r0, #0x0
	ldr		r0, _08057a20
	add		r3, r0, #0x0
	add		r3, #0x21
	mov		r4, #0x0
	mov		r2, #0x4
_08057a02:
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	add		r3, #0x1
	add		r1, #0x1
	cmp		r0, #0x0
	beq		_08057a12
	mov		r4, #0x1
_08057a12:
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08057a02
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057a20:	.4byte 0x02032B80
	thumb_func_end sub_080579f4

	thumb_func_start sub_08057a24
sub_08057a24:
	add		r1, r0, #0x0
	ldr		r0, _08057a40
	add		r3, r0, #0x0
	add		r3, #0x21
	mov		r2, #0x4
_08057a2e:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08057a2e
	bx		lr

.align 2, 0
.pool

_08057a40:	.4byte 0x02032B80
	thumb_func_end sub_08057a24

	thumb_func_start sub_08057a44
sub_08057a44:
	push	{ r4, lr }
	ldr		r1, _08057a70
	ldr		r2, _08057a74
	add		r1, r1, r2
	add		r2, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0x7f
_08057a52:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	add		r1, #0x1
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08057a62
	mov		r4, #0x1
_08057a62:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057a52
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057a70:	.4byte 0x02032B80
_08057a74:	.4byte 0x00000AF5

.incbin "base.gba", 0x57A78, 0x24
	thumb_func_end sub_08057a44

	thumb_func_start sub_08057a9c
sub_08057a9c:
	push	{ r4, lr }
	ldr		r1, _08057ac8
	ldr		r2, _08057acc
	add		r1, r1, r2
	add		r2, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0x7
_08057aaa:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	add		r1, #0x1
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08057aba
	mov		r4, #0x1
_08057aba:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057aaa
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057ac8:	.4byte 0x02032B80
_08057acc:	.4byte 0x00000B75

.incbin "base.gba", 0x57AD0, 0x24
	thumb_func_end sub_08057a9c

	thumb_func_start sub_08057af4
sub_08057af4:
	ldr		r1, _08057b0c
	ldr		r2, _08057b10
	add		r1, r1, r2
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	mov		r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	cmp		r1, #0x2e
	bhi		_08057b0a
	mov		r0, #0x1
_08057b0a:
	bx		lr

_08057b0c:	.4byte 0x02032B80
_08057b10:	.4byte 0x00000AE6

.incbin "base.gba", 0x57B14, 0x14
	thumb_func_end sub_08057af4

	thumb_func_start sub_08057b28
sub_08057b28:
	push	{ r4, lr }
	ldr		r1, _08057b54
	ldr		r2, _08057b58
	add		r1, r1, r2
	add		r2, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0xb
_08057b36:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	add		r1, #0x1
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08057b46
	mov		r4, #0x1
_08057b46:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057b36
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057b54:	.4byte 0x02032B80
_08057b58:	.4byte 0x00000B8D

.incbin "base.gba", 0x57B5C, 0x24
	thumb_func_end sub_08057b28

	thumb_func_start sub_08057b80
sub_08057b80:
	push	{ r4, lr }
	ldr		r1, _08057bac
	ldr		r2, _08057bb0
	add		r1, r1, r2
	add		r2, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0xf
_08057b8e:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	add		r1, #0x1
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08057b9e
	mov		r4, #0x1
_08057b9e:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057b8e
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057bac:	.4byte 0x02032B80
_08057bb0:	.4byte 0x00000B7D

.incbin "base.gba", 0x57BB4, 0x24
	thumb_func_end sub_08057b80

	thumb_func_start sub_08057bd8
sub_08057bd8:
	push	{ r4, lr }
	ldr		r3, _08057c10
	lsl		r2, r1, #0x1
	add		r2, r2, r1
	lsl		r2, r2, #0x3
	mov		r1, #0xba
	lsl		r1, r1, #0x4
	add		r2, r2, r1
	add		r2, r2, r3
	add		r1, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0x4
_08057bf0:
	ldrb	r0, [r2, #0x0]
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	add		r2, #0x1
	add		r1, #0x1
	cmp		r0, #0x0
	beq		_08057c00
	mov		r4, #0x1
_08057c00:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057bf0
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08057c10:	.4byte 0x02032B80
	thumb_func_end sub_08057bd8

	thumb_func_start sub_08057c14
sub_08057c14:
	ldr		r3, _08057c38
	lsl		r2, r1, #0x1
	add		r2, r2, r1
	lsl		r2, r2, #0x3
	mov		r1, #0xba
	lsl		r1, r1, #0x4
	add		r2, r2, r1
	add		r1, r0, #0x0
	add		r2, r2, r3
	mov		r3, #0x4
_08057c28:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057c28
	bx		lr

_08057c38:	.4byte 0x02032B80
	thumb_func_end sub_08057c14

	thumb_func_start sub_08057c3c
sub_08057c3c:
	push	{ r4, lr }
	ldr		r3, _08057c70
	lsl		r2, r1, #0x1
	add		r2, r2, r1
	lsl		r2, r2, #0x3
	add		r2, r2, r3
	ldr		r1, _08057c74
	add		r2, r2, r1
	add		r1, r0, #0x0
	mov		r4, #0x0
	mov		r3, #0xf
_08057c52:
	ldrb	r0, [r2, #0x0]
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	add		r2, #0x1
	add		r1, #0x1
	cmp		r0, #0x0
	beq		_08057c62
	mov		r4, #0x1
_08057c62:
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057c52
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08057c70:	.4byte 0x02032B80
_08057c74:	.4byte 0x00000BA8
	thumb_func_end sub_08057c3c

	thumb_func_start sub_08057c78
sub_08057c78:
	ldr		r3, _08057c9c
	lsl		r2, r1, #0x1
	add		r2, r2, r1
	lsl		r2, r2, #0x3
	add		r2, r2, r3
	add		r1, r0, #0x0
	ldr		r0, _08057ca0
	add		r2, r2, r0
	mov		r3, #0xf
_08057c8a:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08057c8a
	bx		lr

.align 2, 0
.pool

_08057c9c:	.4byte 0x02032B80
_08057ca0:	.4byte 0x00000BA8
	thumb_func_end sub_08057c78

	thumb_func_start sub_08057ca4
sub_08057ca4:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r2, r1, #0x18
	mov		r0, #0xbf
	lsl		r0, r0, #0x4
	add		r4, r5, r0
	ldrh	r1, [r4, #0x0]
	mov		r7, #0x80
	lsl		r7, r7, #0x8
	add		r0, r7, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	ldr		r0, _08057ce4
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08057cd4
	ldr		r3, _08057ce8
	add		r0, r2, #0x0
	mov		r1, #0x0
	add		r2, r5, #0x0
	bl		sub_08071edc
_08057cd4:
	mov		r0, #0x7
	strh	r0, [r5, #0x8]
	cmp		r6, #0x0
	beq		_08057cec
	ldrh	r1, [r4, #0x0]
	add		r0, r7, #0x0
	orr		r0, r1
	b		_08057cf2

_08057ce4:	.4byte 0x030023C4
_08057ce8:	.4byte 0x00000BF4

_08057cec:
	ldrh	r1, [r4, #0x0]
	ldr		r0, _08057cfc
	and		r0, r1
_08057cf2:
	strh	r0, [r4, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08057cfc:	.4byte 0x00007FFF
	thumb_func_end sub_08057ca4

	thumb_func_start sub_08057d00
sub_08057d00:
	push	{ lr }
	add		r2, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r0, _08057d20
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08057d1c
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r0, r1, #0x0
	mov		r1, #0x0
	bl		sub_08071edc
_08057d1c:
	pop		{ r0 }
	bx		r0

_08057d20:	.4byte 0x030023C4
	thumb_func_end sub_08057d00

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
	bl		sub_08057900
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
	bl		sub_08057930
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08057900
	bl		sub_08057370
	ldr		r1, _08059088
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r6, #0x17]
	ldr		r1, _0805908c
	add		r0, r7, r1
	bl		_MGBLoadUsername
	mov		r0, #0x0
	bl		sub_08057378
	add		r5, r0, #0x0
	add		r4, r5, #0x0
	add		r4, #0x8
	add		r0, #0xc
	bl		_MGBLoadUsername
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
	bl		sub_08057b80
	ldr		r1, _08059098
	add		r0, r6, r1
	bl		sub_08057b28
	ldr		r1, _0805909c
	add		r0, r6, r1
	bl		sub_08057a9c
	mov		r1, #0x82
	lsl		r1, r1, #0x5
	add		r0, r6, r1
	bl		sub_08057a44
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
	bl		sub_08057a24
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
	bl		sub_08057bd8
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
	bl		sub_08057c3c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_080579f4
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
	bl		sub_08060f70
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7bc
	ldr		r1, _0805a7c0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7c4
	mov		r1, #0xc0
	lsl		r1, r1, #0x13
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7c8
	ldr		r1, _0805a7cc
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7d0
	ldr		r1, _0805a7d4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7d8
	ldr		r1, _0805a7dc
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7e0
	ldr		r1, _0805a7e4
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a7e8
	ldr		r1, _0805a7ec
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a81c
	ldr		r1, _0805a820
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a844
	ldr		r1, _0805a848
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a84c
	ldr		r1, _0805a850
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a854
	ldr		r4, _0805a858
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a85c
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a860
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a864
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a868
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a86c
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a87c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a880
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a884
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a888
	add		r1, r4, #0x0
	add		r3, r5, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
	ldr		r0, _0805a88c
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _0805a890
	add		r1, r4, #0x0
	add		r3, r6, #0x0
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060f40
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08060c60
	mov		r8, r0
	add		r0, r5, #0x0
	bl		sub_08060e48
	mov		r10, r0
	add		r0, r5, #0x0
	bl		sub_08060ee8
	str		r0, [sp, #0x40]
	add		r0, r5, #0x0
	bl		sub_08060e84
	str		r0, [sp, #0x44]
	add		r0, r5, #0x0
	bl		sub_08060e1c
	str		r0, [sp, #0x48]
	add		r0, r5, #0x0
	bl		sub_08060d28
	str		r0, [sp, #0x4C]
	add		r0, r5, #0x0
	bl		sub_08060cc4
	str		r0, [sp, #0x50]
	bl		sub_08057370
	add		r7, r0, #0x0
	mov		r6, #0x0
	add		r0, r4, #0x0
	bl		sub_08057900
	cmp		r0, #0x0
	bne		_0805a9a0
	mov		r6, #0x1
	add		r0, r5, #0x0
	bl		sub_08060f60
_0805a9a0:
	mov		r0, r8
	bl		_MGBLoadUsername
	cmp		r0, #0x0
	bne		_0805a9b4
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		_ClearUsername
_0805a9b4:
	ldr		r1, _0805a9d8
	add		r0, r7, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0805a9dc
	mov		r0, r10
	bl		_MGBLoadPassword
	cmp		r0, #0x0
	bne		_0805a9e2
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060e4c
	b		_0805a9e2

_0805a9d4:	.4byte 0x0203EBE0
_0805a9d8:	.4byte 0x00000AE5

_0805a9dc:
	add		r0, r5, #0x0
	bl		sub_08060e4c
_0805a9e2:
	ldr		r0, [sp, #0x40]
	bl		sub_08057b28
	cmp		r0, #0x0
	bne		_0805a9f6
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060efc
_0805a9f6:
	ldr		r0, [sp, #0x44]
	bl		sub_08057a9c
	cmp		r0, #0x0
	bne		_0805aa0a
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060ea4
_0805aa0a:
	ldr		r0, [sp, #0x48]
	bl		sub_08057af4
	cmp		r0, #0x0
	bne		_0805aa1e
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060e30
_0805aa1e:
	ldr		r0, [sp, #0x4C]
	bl		sub_08057a44
	cmp		r0, #0x0
	bne		_0805aa32
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060d48
_0805aa32:
	ldr		r0, [sp, #0x50]
	bl		sub_08057b80
	cmp		r0, #0x0
	bne		_0805aa46
	mov		r0, #0x1
	orr		r6, r0
	add		r0, r5, #0x0
	bl		sub_08060ce4
_0805aa46:
	bl		sub_08059dc8
	cmp		r6, #0x0
	beq		_0805aa78
	ldr		r0, _0805aa68
	ldr		r2, _0805aa6c
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
	bl		sub_08060298
	ldr		r4, _0805b044
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
	ldr		r4, _0805b96c
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory16Bit
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e38
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060c60
	add		r6, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_08060e48
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
	bl		sub_08060c60
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08060e48
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
	ldr		r0, _0805c078
	bl		sub_080579d0
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
	bl		sub_08060c60
	mov		r9, r0
	add		r0, r4, #0x0
	bl		sub_08060e48
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
	bl		_DrawFrameRunAudio
	add		r0, r4, #0x0
	bl		sub_08060f44
	cmp		r0, #0x0
	bne		_0805c226
	add		r0, r4, #0x0
	bl		sub_08060e4c
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_MGBLoadUsername
	ldr		r0, [sp, #0x1E8]
	bl		sub_08057900
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e38
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
	bl		_DrawFrameRunAudio
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
	bl		sub_080579f4
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_08057c14
	ldr		r1, _0805e89c
	add		r0, r7, r1
	add		r1, r6, #0x0
	bl		sub_08057c78
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
	bl		sub_08060e4c
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
	bl		sub_080579f4
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08057c14
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
	bl		sub_08060e4c
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08057c78
	mov		r1, #0x0
	ldrsb	r1, [r7, r1]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	add		r0, r8
	add		r5, r5, r0
	add		r0, r5, #0x0
	bl		sub_08057c14
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e4c
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060f40
	add		r7, r0, #0x0
	cmp		r6, #0x1
	bne		_0805fb48
	add		r0, r4, #0x0
	bl		sub_08060e48
	add		r5, r0, #0x0
	bl		sub_08057370
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	bl		sub_080579d0
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
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
	bl		sub_08060f44
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08060e48
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
	bl		_MGBLoadPassword
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		_DrawFrameRunAudio
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
	bl		sub_08057930
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

	thumb_func_start sub_08060bf4
sub_08060bf4:
	ldr		r1, _08060bfc
	add		r0, r0, r1
	bx		lr

.align 2, 0
.pool

_08060bfc:	.4byte 0x00006960
	thumb_func_end sub_08060bf4

	thumb_func_start sub_08060c00
sub_08060c00:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08060958
	add		r0, r4, #0x0
	bl		sub_08057900
	add		r0, r4, #0x0
	add		r0, #0x10
	bl		_MGBLoadUsername
	mov		r0, #0x0
	str		r0, [r4, #0x18]
	add		r0, r4, #0x0
	add		r0, #0x1c
	bl		_MGBLoadPassword
	bl		sub_08057370
	ldr		r1, _08060c58
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x2d
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x2e
	bl		sub_08057b80
	add		r0, r4, #0x0
	add		r0, #0x3e
	bl		sub_08057b28
	add		r0, r4, #0x0
	add		r0, #0x4a
	bl		sub_08057a9c
	add		r0, r4, #0x0
	add		r0, #0x52
	bl		sub_08057a44
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08060c58:	.4byte 0x00000AE6

.incbin "base.gba", 0x60C5C, 0x4
	thumb_func_end sub_08060c00

	thumb_func_start sub_08060c60
sub_08060c60:
	add		r0, #0x10
	bx		lr

.incbin "base.gba", 0x60C64, 0x1C
	thumb_func_end sub_08060c60

	thumb_func_start _ClearUsername
_ClearUsername: @ 08060c80
	add		r0, #0x10
	mov		r2, #0x0
	mov		r1, #0x4
_08060c86:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060c86
	bx		lr

.incbin "base.gba", 0x60C92, 0x1A
	thumb_func_end _ClearUsername

	thumb_func_start sub_08060cac
sub_08060cac:
	add		r2, r0, #0x0
	add		r2, #0x10
	mov		r3, #0x4
_08060cb2:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08060cb2
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08060cac

	thumb_func_start sub_08060cc4
sub_08060cc4:
	add		r0, #0x2e
	bx		lr

.incbin "base.gba", 0x60CC8, 0x1C
	thumb_func_end sub_08060cc4

	thumb_func_start sub_08060ce4
sub_08060ce4:
	add		r0, #0x2e
	mov		r2, #0x0
	mov		r1, #0xf
_08060cea:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060cea
	bx		lr

.incbin "base.gba", 0x60CF6, 0x1A
	thumb_func_end sub_08060ce4

	thumb_func_start sub_08060d10
sub_08060d10:
	add		r2, r0, #0x0
	add		r2, #0x2e
	mov		r3, #0xf
_08060d16:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08060d16
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08060d10

	thumb_func_start sub_08060d28
sub_08060d28:
	add		r0, #0x52
	bx		lr

.incbin "base.gba", 0x60D2C, 0x1C
	thumb_func_end sub_08060d28

	thumb_func_start sub_08060d48
sub_08060d48:
	add		r0, #0x52
	mov		r2, #0x0
	mov		r1, #0x7f
_08060d4e:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060d4e
	bx		lr

.incbin "base.gba", 0x60D5A, 0x1A
	thumb_func_end sub_08060d48

	thumb_func_start sub_08060d74
sub_08060d74:
	add		r2, r0, #0x0
	add		r2, #0x52
	mov		r3, #0x7f
_08060d7a:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08060d7a
	bx		lr

.incbin "base.gba", 0x60D8A, 0x92
	thumb_func_end sub_08060d74

	thumb_func_start sub_08060e1c
sub_08060e1c:
	add		r0, #0x2d
	bx		lr

.incbin "base.gba", 0x60E20, 0x10
	thumb_func_end sub_08060e1c

	thumb_func_start sub_08060e30
sub_08060e30:
	add		r0, #0x2d
	mov		r1, #0x2f
	strb	r1, [r0, #0x0]
	bx		lr
	thumb_func_end sub_08060e30

	thumb_func_start sub_08060e38
sub_08060e38:
	add		r0, #0x2d
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x60E40, 0x8
	thumb_func_end sub_08060e38

	thumb_func_start sub_08060e48
sub_08060e48:
	add		r0, #0x1c
	bx		lr
	thumb_func_end sub_08060e48

	thumb_func_start sub_08060e4c
sub_08060e4c:
	mov		r1, #0x0
	strb	r1, [r0, #0x1c]
	bx		lr

.incbin "base.gba", 0x60E52, 0x1A
	thumb_func_end sub_08060e4c

	thumb_func_start sub_08060e6c
sub_08060e6c:
	add		r2, r0, #0x0
	add		r2, #0x1c
	mov		r3, #0x10
_08060e72:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08060e72
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08060e6c

	thumb_func_start sub_08060e84
sub_08060e84:
	add		r0, #0x4a
	bx		lr

.incbin "base.gba", 0x60E88, 0x1C
	thumb_func_end sub_08060e84

	thumb_func_start sub_08060ea4
sub_08060ea4:
	add		r0, #0x4a
	mov		r2, #0xf
	mov		r1, #0x7
_08060eaa:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060eaa
	bx		lr

.incbin "base.gba", 0x60EB6, 0x32
	thumb_func_end sub_08060ea4

	thumb_func_start sub_08060ee8
sub_08060ee8:
	add		r0, #0x3e
	bx		lr

.incbin "base.gba", 0x60EEC, 0x10
	thumb_func_end sub_08060ee8

	thumb_func_start sub_08060efc
sub_08060efc:
	add		r0, #0x3e
	mov		r2, #0xf
	mov		r1, #0xb
_08060f02:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060f02
	bx		lr

.incbin "base.gba", 0x60F0E, 0x32
	thumb_func_end sub_08060efc

	thumb_func_start sub_08060f40
sub_08060f40:
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08060f40

	thumb_func_start sub_08060f44
sub_08060f44:
	add		r1, r0, #0x0
	mov		r2, #0x0
_08060f48:
	ldrb	r0, [r1, #0x0]
	add		r1, #0x1
	cmp		r0, #0x0
	beq		_08060f54
	mov		r0, #0x1
	b		_08060f5c
_08060f54:
	add		r2, #0x1
	cmp		r2, #0xf
	ble		_08060f48
	mov		r0, #0x0
_08060f5c:
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08060f44

	thumb_func_start sub_08060f60
sub_08060f60:
	mov		r2, #0x0
	mov		r1, #0xf
_08060f64:
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08060f64
	bx		lr
	thumb_func_end sub_08060f60

	thumb_func_start sub_08060f70
sub_08060f70:
	push	{ r4, lr }
	add		r2, r0, #0x0
	mov		r1, #0x0
	ldr		r4, _08060f90
	mov		r3, #0x0
_08060f7a:
	strb	r3, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	cmp		r1, r4
	bls		_08060f7a
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08060f90:	.4byte 0x00000363
	thumb_func_end sub_08060f70

	thumb_func_start sub_08060f94
sub_08060f94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r9, r0
	mov		r0, #0x4
	mov		r10, r0
	mov		r2, #0x1
	mov		r8, r2
	mov		r6, #0x0
	ldr		r0, _08060fb4
	ldr		r5, [r0, #0x0]
	mov		r7, #0x1
	b		_08060ff4

_08060fb4:	.4byte 0x08115280

_08060fb8:
	lsl		r0, r6, #0x1
	add		r4, r0, r5
	b		_08060fc2
_08060fbe:
	add		r4, #0x2
	add		r6, #0x1
_08060fc2:
	ldrh	r0, [r4, #0x0]
	bl		sub_08013e3c
	mov		r2, sp
	add		r1, r2, r6
	strb	r0, [r1, #0x0]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_08060fbe
	mov		r0, r9
	add		r1, r5, #0x0
	mov		r2, r10
	bl		sub_08057328
	cmp		r0, #0x0
	beq		_08060fe8
	mov		r0, #0x0
	mov		r8, r0
	b		_08060ffa
_08060fe8:
	mov		r6, #0x0
	ldr		r0, _0806100c
	lsl		r1, r7, #0x2
	add		r1, r1, r0
	ldr		r5, [r1, #0x0]
	add		r7, #0x1
_08060ff4:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08060fb8
_08060ffa:
	mov		r0, r8
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806100c:	.4byte 0x08115280
	thumb_func_end sub_08060f94

	thumb_func_start sub_08061010
sub_08061010:
	push	{ r4, r5, r6, lr }
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r2, #0xf
	sub		r4, r2, r1
	mov		r5, #0x1
	lsl		r5, r4
	mov		r2, #0x7
	mov		r3, #0x0
	mov		r6, #0x1
	neg		r6, r6
	add		r1, r0, #0x0
	add		r1, #0xe
_0806102a:
	ldrh	r0, [r1, #0x0]
	and		r0, r5
	asr		r0, r4
	lsl		r0, r2
	orr		r3, r0
	lsl		r0, r3, #0x18
	lsr		r3, r0, #0x18
	sub		r1, #0x2
	sub		r2, #0x1
	cmp		r2, r6
	bne		_0806102a
	add		r0, r3, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08061010

	thumb_func_start sub_08061048
sub_08061048:
	push	{ r4, r5, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	bl		sub_08026f58
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
_08061056:
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	cmp		r4, #0x0
	beq		_08061084
	bl		sub_08026f58
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r0, r1, #0x0
	bic		r0, r5
	and		r0, r4
	cmp		r0, #0x0
	beq		_08061082
	add		r0, r1, #0x0
	and		r0, r4
	cmp		r0, r4
	bne		_08061082
	mov		r0, #0x2
	neg		r0, r0
	b		_080610e2
_08061082:
	add		r5, r1, #0x0
_08061084:
	bl		sub_0807bef0
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	ldr		r2, _080610a0
	ldr		r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_080610a4
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_080610b0
	b		_080610ae

.align 2, 0
.pool

_080610a0:	.4byte 0x0203EF4C

_080610a4:
	mov		r0, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_080610b0
	mov		r0, #0x1
_080610ae:
	str		r0, [r2, #0x0]
_080610b0:
	mov		r0, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080610be
	mov		r0, #0x1
	neg		r0, r0
	b		_080610e2
_080610be:
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_080610d2
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	bne		_08061056
	mov		r0, #0x0
	b		_080610e2
_080610d2:
	mov		r0, sp
	bl		sub_0807bf70
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x8
	mov		r1, sp
	ldrh	r1, [r1, #0x0]
	orr		r0, r1
_080610e2:
	add		sp, #0x4
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08061048

	thumb_func_start sub_080610ec
sub_080610ec:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r7, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r4, #0x0
	ldr		r2, _0806116c
	ldr		r0, _08061170
	mov		r1, #0xc5
	lsl		r1, r1, #0x3
	add		r3, r0, r1
	ldrh	r1, [r3, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_08061126
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_08061126
	mov		r4, #0x1
_08061126:
	cmp		r4, #0x0
	beq		_08061130
	mov		r0, #0xc5
	bl		sub_08070808
_08061130:
	ldr		r2, _0806116c
	ldr		r0, _08061170
	mov		r1, #0x94
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r1, #0xff
	mov		r2, #0x80
	bl		sub_0807169c
	mov		r0, #0xc7
	bl		sub_0807073c
	mov		r0, #0x1
	neg		r0, r0
	cmp		r7, r0
	bne		_08061178
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08061174
	b		_080611a6

_0806116c:	.4byte 0x08124544
_08061170:	.4byte 0x081245c8
_08061174:	.4byte 0x0810fdb0

_08061178:
	mov		r0, #0x2
	neg		r0, r0
	cmp		r7, r0
	bne		_08061190
	ldr		r1, _0806118c
	mov		r0, #0x0
	bl		sub_08013d0c
	b		_0806120e

.align 2, 0
.pool

_0806118c:	.4byte 0x0811456c

_08061190:
	mov		r0, #0x3
	neg		r0, r0
	cmp		r7, r0
	bne		_080611c0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080611bc
_080611a6:
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0x4
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x3
	bl		sub_08013e9c
	b		_0806120e

_080611bc:	.4byte 0x0810fe2c

_080611c0:
	add		r0, r7, #0x0
	bl		sub_08059e68
	add		r5, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r0, #0x4
	str		r0, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r1, #0x3
	add		r2, r5, #0x0
	bl		sub_08013e9c
	add		r0, r7, #0x0
	bl		sub_08058d24
	add		r5, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r6, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x6
	add		r2, r5, #0x0
	bl		sub_08013e9c
_0806120e:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r4, #0x3b
_0806121c:
	bl		_DrawFrameRunAudio
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0806121c
	ldr		r2, _08061250
	ldr		r0, _08061254
	mov		r1, #0x94
	lsl		r1, r1, #0x1
	add		r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	mov		r1, #0xff
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	bl		sub_0807169c
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08061250:	.4byte 0x08124544
_08061254:	.4byte 0x081245c8
	thumb_func_end sub_080610ec

	thumb_func_start sub_08061258
sub_08061258:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r7, r2, #0x0
	add		r5, r3, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _080612f8
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0xc5
	bl		sub_0807073c
	bl		_DrawFrameRunAudio
	ldr		r0, _080612fc
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	ldr		r0, _08061300
	str		r1, [r0, #0x0]
	ldr		r1, _08061304
	cmp		r1, #0x0
	bne		_08061294
	ldr		r1, _08061308
_08061294:
	mov		r0, #0x6
	bl		sub_0807df68
	ldr		r1, _0806130c
	cmp		r1, #0x0
	bne		_080612a2
	ldr		r1, _08061308
_080612a2:
	mov		r0, #0x7
	bl		sub_0807df68
	mov		r0, sp
	bl		sub_08075b64
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08061310
	add		r0, r4, #0x0
	bl		sub_0807bce4
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	bne		_080612ec
	add		r0, r6, #0x0
	bl		sub_0807bd7c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	bne		_080612ec
	add		r0, r7, #0x0
	bl		sub_0807bc4c
	mov		r0, #0x6
	bl		sub_08061048
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_080612ee
_080612ec:
	add		r1, r0, #0x0
_080612ee:
	str		r1, [r5, #0x0]
	cmp		r1, #0x0
	bne		_08061310
	mov		r0, #0x0
	b		_08061314

_080612f8:	.4byte 0x081145ec
_080612fc:	.4byte 0x0203EF4C
_08061300:	.4byte 0x0203EF48
_08061304:	.4byte sub_080749c4
_08061308:	.4byte 0x080270F1
_0806130c:	.4byte sub_080752a8

_08061310:
	mov		r0, #0x1
	neg		r0, r0
_08061314:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08061258

	thumb_func_start sub_0806131c
sub_0806131c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x14
	mov		r8, r1
	ldr		r1, [sp, #0x0+0x30]
	mov		r9, r1
	ldr		r1, _080613b8
	ldr		r6, [r1, #0x0]
	ldr		r4, _080613bc
	add		r4, r4, r6
	mov		r12, r4
	mov		r4, #0x8a
	lsl		r4, r4, #0x6
	ldr		r5, _080613c0
	add		r7, r6, r5
	ldr		r5, _080613c4
	add		r1, r6, r5
	str		r4, [sp, #0x0]
	add		r4, sp, #0x10
	str		r4, [sp, #0x4]
	str		r2, [sp, #0x8]
	str		r3, [sp, #0xC]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	mov		r3, r12
	bl		sub_08079f44
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_0806136c
	cmp		r7, #0x0
	beq		_0806136c
	add		r0, sp, #0x10
	ldrh	r0, [r0, #0x0]
	str		r0, [r7, #0x0]
_0806136c:
	mov		r5, r9
	str		r1, [r5, #0x0]
	cmp		r1, #0x0
	bne		_08061400
	ldr		r1, _080613c0
	add		r0, r6, r1
	ldr		r3, [r0, #0x0]
	mov		r4, r8
	ldr		r5, _080613bc
	add		r1, r6, r5
	cmp		r4, #0x0
	ble		_080613b0
_08061384:
	add		r0, r3, #0x0
	sub		r3, #0x1
	cmp		r0, #0x0
	ble		_080613f8
	ldrb	r2, [r1, #0x0]
	add		r1, #0x1
	cmp		r2, #0xd
	beq		_08061398
	cmp		r2, #0xa
	bne		_08061384
_08061398:
	cmp		r3, #0x0
	ble		_080613aa
	cmp		r2, #0xd
	bne		_080613aa
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0xa
	bne		_080613aa
	sub		r3, #0x1
	add		r1, #0x1
_080613aa:
	sub		r4, #0x1
	cmp		r4, #0x0
	bgt		_08061384
_080613b0:
	mov		r4, #0x0
	ldr		r5, _080613c8
	b		_080613d6

.align 2, 0
.pool

_080613b8:	.4byte 0x0203EBE0
_080613bc:	.4byte 0x0000094C
_080613c0:	.4byte 0x00005F0C
_080613c4:	.4byte 0x0000054C
_080613c8:	.4byte 0x0203ED58

_080613cc:
	add		r0, r4, r5
	strb	r2, [r0, #0x0]
	add		r4, #0x1
	cmp		r4, #0xff
	bgt		_080613ea
_080613d6:
	add		r0, r3, #0x0
	sub		r3, #0x1
	cmp		r0, #0x0
	ble		_080613f8
	ldrb	r2, [r1, #0x0]
	add		r1, #0x1
	cmp		r2, #0xd
	beq		_080613ea
	cmp		r2, #0xa
	bne		_080613cc
_080613ea:
	ldr		r2, _08061410
	add		r1, r4, r2
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	add		r0, r2, #0x0
	cmp		r0, #0x0
	bne		_08061402
_080613f8:
	mov		r0, #0x3
	neg		r0, r0
	mov		r1, r9
	str		r0, [r1, #0x0]
_08061400:
	mov		r0, #0x0
_08061402:
	add		sp, #0x14
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08061410:	.4byte 0x0203ED58
	thumb_func_end sub_0806131c

	thumb_func_start sub_08061414
sub_08061414:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r9, r0
	ldr		r0, _08061434
	ldr		r4, [r0, #0x0]
	cmp		r4, #0x0
	bgt		_08061438
	mov		r0, #0x0
	b		_080615aa

.align 2, 0
.pool

_08061434:	.4byte 0x0203EF48

_08061438:
	add		r0, r4, #0x0
	mov		r1, #0x3c
	bl		sub_0807d80c
	add		r7, r0, #0x0
	add		r0, r4, #0x0
	mov		r1, #0x3c
	bl		sub_0807d8d8
	cmp		r0, #0x0
	ble		_08061450
	add		r7, #0x1
_08061450:
	add		r5, sp, #0x14
	ldr		r4, _080615bc
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x5
	bl		sub_0806927c
	add		r0, sp, #0xc
	add		r1, r4, #0x0
	mov		r2, #0x5
	bl		sub_0806927c
	add		r0, r7, #0x0
	mov		r1, #0x3c
	bl		sub_0807d80c
	add		r1, sp, #0xc
	mov		r8, r1
	add		r4, r0, #0x0
	mov		r6, #0x2
	mov		r0, #0x2
	add		r0, r9
	mov		r10, r0
	mov		r1, r9
	add		r1, #0x4
	str		r1, [sp, #0x1C]
	add		r5, sp, #0x10
_08061486:
	cmp		r6, #0x0
	ble		_080614c2
	sub		r5, #0x2
	sub		r6, #0x1
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x8
	ldr		r1, _080615c0
	add		r0, r0, r1
	strh	r0, [r5, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_08061486
	cmp		r6, #0x0
	ble		_080614c2
	ldr		r0, _080615c4
	add		r1, r0, #0x0
	lsl		r0, r6, #0x1
	add		r0, r8
_080614b8:
	sub		r0, #0x2
	sub		r6, #0x1
	strh	r1, [r0, #0x0]
	cmp		r6, #0x0
	bgt		_080614b8
_080614c2:
	add		r0, r7, #0x0
	mov		r1, #0x3c
	bl		sub_0807d8d8
	add		r7, sp, #0x14
	add		r4, r0, #0x0
	mov		r5, #0x2
	add		r6, sp, #0x18
_080614d2:
	cmp		r5, #0x0
	ble		_0806150e
	sub		r6, #0x2
	sub		r5, #0x1
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x8
	ldr		r1, _080615c0
	add		r0, r0, r1
	strh	r0, [r6, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_080614d2
	cmp		r5, #0x0
	ble		_0806150e
	ldr		r0, _080615c4
	add		r1, r0, #0x0
	lsl		r0, r5, #0x1
	add		r0, r0, r7
_08061504:
	sub		r0, #0x2
	sub		r5, #0x1
	strh	r1, [r0, #0x0]
	cmp		r5, #0x0
	bgt		_08061504
_0806150e:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080615c8
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r1, #0xf
	mov		r8, r1
	str		r1, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, r9
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080615cc
	str		r6, [sp, #0x0]
	mov		r0, r8
	str		r0, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, r10
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0x3
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xd
	mov		r1, r10
	add		r2, sp, #0xc
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x11
	mov		r1, r10
	add		r2, sp, #0x14
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080615d0
	str		r6, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	ldr		r1, [sp, #0x1C]
	bl		sub_08013e9c
	mov		r0, #0x1
_080615aa:
	add		sp, #0x20
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080615bc:	.4byte 0x0810fed0
_080615c0:	.4byte 0x00004F82
_080615c4:	.4byte 0x00004081
_080615c8:	.4byte 0x0810fed8
_080615cc:	.4byte 0x0810fefc
_080615d0:	.4byte 0x0810ff2c
	thumb_func_end sub_08061414

	thumb_func_start sub_080615d4
sub_080615d4:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x78
	add		r2, r0, #0x0
	add		r4, r2, #0x0
	ldr		r3, _080615e0
	b		_080615ee

_080615e0:	.4byte 0x0810fea8 @ "http://gameboy.datacenter.ne.jp/cgb/"

_080615e4:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	add		r3, #0x1
	cmp		r1, r0
	bne		_080616c8
_080615ee:
	ldrb	r1, [r3, #0x0]
	cmp		r1, #0x0
	bne		_080615e4
	b		_080615fe
_080615f6:
	add		r2, #0x1
	cmp		r0, #0x2f
	bne		_080615fe
	add		r4, r2, #0x0
_080615fe:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080615f6
	add		r2, r4, #0x0
	mov		r4, #0x0
_08061608:
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x2f
	ble		_080616c8
	cmp		r1, #0x39
	bgt		_080616c8
	lsl		r0, r4, #0x2
	add		r0, r0, r4
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	add		r4, r0, #0x0
	sub		r4, #0x30
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2e
	bne		_08061608
	cmp		r4, #0x0
	ble		_080616c8
	ldr		r1, _080616bc
	add		r0, sp, #0xc
	mov		r2, #0x6b
	bl		sub_0806927c
	mov		r7, sp
	add		r7, #0x4e
	mov		r5, #0x4
	mov		r6, sp
	add		r6, #0x56
_0806163e:
	cmp		r5, #0x0
	ble		_0806167a
	sub		r6, #0x2
	sub		r5, #0x1
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x8
	ldr		r1, _080616c0
	add		r0, r0, r1
	strh	r0, [r6, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_0806163e
	cmp		r5, #0x0
	ble		_0806167a
	ldr		r0, _080616c4
	add		r1, r0, #0x0
	lsl		r0, r5, #0x1
	add		r0, r0, r7
_08061670:
	sub		r0, #0x2
	sub		r5, #0x1
	strh	r1, [r0, #0x0]
	cmp		r5, #0x0
	bgt		_08061670
_0806167a:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x5
	add		r2, sp, #0xc
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r1, #0xe1
	lsl		r1, r1, #0x4
	mov		r0, #0xd
	bl		sub_080601b8
	cmp		r0, #0x0
	bne		_080616c8
	mov		r0, #0x0
	b		_080616ca

.align 2, 0
.pool

_080616bc:	.4byte 0x0810ff50
_080616c0:	.4byte 0x00004F82
_080616c4:	.4byte 0x00004081

_080616c8:
	mov		r0, #0x1
_080616ca:
	add		sp, #0x78
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_080615d4

	thumb_func_start sub_080616d4
sub_080616d4:
	push	{ r4, lr }
	mov		r4, #0x0
	ldr		r2, _08061744
	ldr		r0, _08061748
	mov		r1, #0xc5
	lsl		r1, r1, #0x3
	add		r3, r0, r1
	ldrh	r1, [r3, #0x4]
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x4]
	cmp		r0, #0x0
	beq		_080616fe
	ldr		r1, [r1, #0x0]
	ldr		r0, [r3, #0x0]
	cmp		r1, r0
	bne		_080616fe
	mov		r4, #0x1
_080616fe:
	cmp		r4, #0x0
	beq		_08061708
	mov		r0, #0xc5
	bl		sub_08070808
_08061708:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _0806174c
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_080757c0
	mov		r0, #0x0
	bl		sub_08061048
	bl		sub_08075768
	ldr		r4, _08061750
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08061744:	.4byte 0x08124544
_08061748:	.4byte 0x081245c8
_0806174c:	.4byte 0x08114758
_08061750:	.4byte 0x080270f1
	thumb_func_end sub_080616d4

	thumb_func_start sub_08061754
sub_08061754:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4c
	str		r0, [sp, #0x1C]
	ldr		r0, [sp, #0xc+0x6c]
	mov		r10, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	str		r1, [sp, #0x20]
	lsl		r2, r2, #0x18
	mov		r8, r2
	mov		r1, r8
	lsr		r1, r1, #0x18
	str		r1, [sp, #0x24]
	lsl		r7, r3, #0x18
	lsr		r2, r7, #0x18
	str		r2, [sp, #0x28]
	ldr		r0, _08061790
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x2C]
	ldr		r0, [sp, #0x1C]
	bl		sub_080615d4
	cmp		r0, #0x0
	bne		_08061794
	mov		r0, #0x0
	b		_08061c1c

_08061790:	.4byte 0x0203EBE0

_08061794:
	ldr		r5, _080617e8
	ldr		r4, [sp, #0x2C]
	add		r4, #0x4a
	ldr		r0, [sp, #0x2C]
	bl		sub_08060bf4
	bl		sub_08060f40
	add		r6, r0, #0x0
	ldrb	r0, [r5, #0x0]
	str		r4, [sp, #0x44]
	ldr		r1, [sp, #0x20]
	lsl		r1, r1, #0x10
	mov		r9, r1
	ldr		r2, [sp, #0x20]
	add		r2, #0x1
	mov		r12, r2
	mov		r1, r8
	lsr		r1, r1, #0x1c
	str		r1, [sp, #0x34]
	lsr		r2, r7, #0x1c
	str		r2, [sp, #0x3C]
	cmp		r0, #0x0
	beq		_080617d0
_080617c4:
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_080617c4
_080617d0:
	ldr		r5, _080617ec
	mov		r8, r5
	mov		r7, #0xf
	mov		r2, #0xf
_080617d8:
	ldrb	r0, [r6, #0x0]
	lsr		r1, r0, #0x4
	and		r1, r7
	cmp		r1, #0x9
	bhi		_080617f0
	mov		r0, #0x30
	orr		r0, r1
	b		_080617f8

_080617e8:	.4byte 0x0810ffbc
_080617ec:	.4byte 0x0810ffc4 @ "&myrecord"

_080617f0:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r7
	add		r0, #0x61
_080617f8:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldrb	r0, [r6, #0x0]
	mov		r3, #0xf
	mov		r5, #0xf
	add		r1, r5, #0x0
	and		r1, r0
	cmp		r1, #0x9
	bhi		_08061812
	and		r1, r5
	add		r0, r1, #0x0
	add		r0, #0x30
	b		_0806181a
_08061812:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r3
	add		r0, #0x61
_0806181a:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	add		r6, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_080617d8
	mov		r5, r8
	b		_08061830
_0806182a:
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
_08061830:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0806182a
	mov		r7, r9
	asr		r0, r7, #0x10
	add		r0, #0x1
	asr		r1, r0, #0xc
	mov		r5, #0xf
	and		r1, r5
	cmp		r1, #0x9
	bhi		_0806184c
	mov		r0, #0x30
	orr		r0, r1
	b		_08061854
_0806184c:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r5
	add		r0, #0x61
_08061854:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, r9
	asr		r0, r1, #0x10
	add		r0, #0x1
	asr		r1, r0, #0x8
	mov		r5, #0xf
	and		r1, r5
	cmp		r1, #0x9
	bhi		_0806186e
	mov		r0, #0x30
	orr		r0, r1
	b		_08061876
_0806186e:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r5
	add		r0, #0x61
_08061876:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r2, r9
	asr		r0, r2, #0x10
	add		r0, #0x1
	asr		r1, r0, #0x4
	mov		r5, #0xf
	and		r1, r5
	cmp		r1, #0x9
	bhi		_08061890
	mov		r0, #0x30
	orr		r0, r1
	b		_08061898
_08061890:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r5
	add		r0, #0x61
_08061898:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r5, #0xf
	mov		r1, r12
	and		r1, r5
	cmp		r1, #0x9
	bhi		_080618ac
	mov		r0, #0x30
	orr		r0, r1
	b		_080618b4
_080618ac:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r5
	add		r0, #0x61
_080618b4:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldr		r5, _080618bc
	b		_080618c6

_080618bc:	.4byte 0x0810ffd0 @ "&pickuprecord"

_080618c0:
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
_080618c6:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_080618c0
	mov		r1, #0xf
	mov		r5, r9
	lsr		r0, r5, #0x1c
	cmp		r0, #0x9
	bhi		_080618dc
	and		r0, r1
	add		r0, #0x30
	b		_080618e4
_080618dc:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_080618e4:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r7, r9
	asr		r0, r7, #0x18
	mov		r1, #0xf
	and		r0, r1
	cmp		r0, #0x9
	bhi		_080618fa
	and		r0, r1
	add		r0, #0x30
	b		_08061902
_080618fa:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061902:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, r9
	asr		r0, r1, #0x14
	mov		r1, #0xf
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061918
	and		r0, r1
	add		r0, #0x30
	b		_08061920
_08061918:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061920:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	ldr		r0, [sp, #0x20]
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061934
	and		r0, r1
	add		r0, #0x30
	b		_0806193c
_08061934:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_0806193c:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldr		r5, _08061944
	b		_0806194e

_08061944:	.4byte 0x0810ffe0 @ "&state"

_08061948:
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
_0806194e:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08061948
	mov		r1, #0xf
	ldr		r2, [sp, #0x34]
	cmp		r2, #0x9
	bhi		_08061962
	mov		r0, #0x30
	orr		r0, r2
	b		_0806196a
_08061962:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_0806196a:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	ldr		r0, [sp, #0x24]
	and		r0, r1
	cmp		r0, #0x9
	bhi		_0806197e
	and		r0, r1
	add		r0, #0x30
	b		_08061986
_0806197e:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061986:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldr		r5, _08061990
	b		_0806199a

.align 2, 0
.pool

_08061990:	.4byte 0x0810ffe8 @ "&driver"

_08061994:
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
_0806199a:
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08061994
	mov		r1, #0xf
	ldr		r3, [sp, #0x3C]
	cmp		r3, #0x9
	bhi		_080619ae
	mov		r0, #0x30
	orr		r0, r3
	b		_080619b6
_080619ae:
	add		r0, r3, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_080619b6:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	ldr		r0, [sp, #0x28]
	and		r0, r1
	cmp		r0, #0x9
	bhi		_080619ca
	and		r0, r1
	add		r0, #0x30
	b		_080619d2
_080619ca:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_080619d2:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldr		r0, _080619f8
	cmp		r10, r0
	bgt		_08061a0c
	mov		r0, #0xfa
	lsl		r0, r0, #0x2
	cmp		r10, r0
	bge		_08061a54
	mov		r2, r10
	cmp		r2, #0x63
	bgt		_080619fc
	cmp		r2, #0x32
	bge		_08061a4c
	cmp		r2, #0x0
	blt		_08061a70
	mov		r3, #0x1
	b		_08061a72

.align 2, 0
.pool

_080619f8:	.4byte 0x00001387

_080619fc:
	ldr		r0, _08061a08
	cmp		r10, r0
	ble		_08061a50
	mov		r3, #0x32
	b		_08061a72

.align 2, 0
.pool

_08061a08:	.4byte 0x000001F3

_08061a0c:
	ldr		r0, _08061a24
	cmp		r10, r0
	bgt		_08061a30
	ldr		r0, _08061a28
	cmp		r10, r0
	bge		_08061a5e
	ldr		r0, _08061a2c
	cmp		r10, r0
	ble		_08061a58
	mov		r3, #0xfa
	lsl		r3, r3, #0x2
	b		_08061a72

_08061a24:	.4byte 0x0001869F
_08061a28:	.4byte 0x0000C350
_08061a2c:	.4byte 0x0000270F

_08061a30:
	ldr		r0, _08061a40
	cmp		r10, r0
	ble		_08061a68
	ldr		r0, _08061a44
	cmp		r10, r0
	bgt		_08061a70
	ldr		r3, _08061a48
	b		_08061a72

_08061a40:	.4byte 0x0007A11F
_08061a44:	.4byte 0x000F423F
_08061a48:	.4byte 0x0000C350

_08061a4c:
	mov		r3, #0x5
	b		_08061a72
_08061a50:
	mov		r3, #0xa
	b		_08061a72
_08061a54:
	mov		r3, #0x64
	b		_08061a72
_08061a58:
	mov		r3, #0xfa
	lsl		r3, r3, #0x1
	b		_08061a72
_08061a5e:
	ldr		r3, _08061a64
	b		_08061a72

.align 2, 0
.pool

_08061a64:	.4byte 0x00001388

_08061a68:
	ldr		r3, _08061a6c
	b		_08061a72

_08061a6c:	.4byte 0x00002710

_08061a70:
	ldr		r3, _08061ac4
_08061a72:
	mov		r12, r3
	mov		r2, #0x0
	mov		r6, #0xf
_08061a78:
	lsl		r0, r2, #0x2
	ldr		r5, _08061ac8
	add		r0, r0, r5
	ldr		r5, [r0, #0x0]
	ldrb	r1, [r5, #0x0]
	add		r2, #0x1
	str		r2, [sp, #0x38]
	asr		r0, r3, #0x1c
	asr		r2, r3, #0x18
	asr		r7, r3, #0x14
	str		r7, [sp, #0x48]
	asr		r7, r3, #0x10
	mov		r8, r7
	asr		r7, r3, #0xc
	mov		r9, r7
	asr		r7, r3, #0x8
	mov		r10, r7
	asr		r7, r3, #0x4
	str		r7, [sp, #0x40]
	mov		r7, r12
	add		r7, r3, r7
	str		r7, [sp, #0x30]
	cmp		r1, #0x0
	beq		_08061ab4
_08061aa8:
	strb	r1, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
	ldrb	r1, [r5, #0x0]
	cmp		r1, #0x0
	bne		_08061aa8
_08061ab4:
	mov		r1, #0xf
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061acc
	and		r0, r6
	add		r0, #0x30
	b		_08061ad2

.align 2, 0
.pool

_08061ac4:	.4byte 0x000186A0
_08061ac8:	.4byte 0x0810fff4

_08061acc:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061ad2:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	add		r0, r1, #0x0
	and		r0, r2
	cmp		r0, #0x9
	bhi		_08061ae6
	and		r0, r6
	add		r0, #0x30
	b		_08061aec
_08061ae6:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061aec:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	ldr		r0, [sp, #0x48]
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061b00
	and		r0, r6
	add		r0, #0x30
	b		_08061b06
_08061b00:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b06:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	mov		r0, r8
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061b1a
	and		r0, r6
	add		r0, #0x30
	b		_08061b20
_08061b1a:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b20:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	mov		r0, r9
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061b34
	and		r0, r6
	add		r0, #0x30
	b		_08061b3a
_08061b34:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b3a:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	mov		r0, r10
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061b4e
	and		r0, r6
	add		r0, #0x30
	b		_08061b54
_08061b4e:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b54:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	ldr		r0, [sp, #0x40]
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061b68
	and		r0, r6
	add		r0, #0x30
	b		_08061b6e
_08061b68:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b6e:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	mov		r1, #0xf
	add		r0, r1, #0x0
	and		r0, r3
	cmp		r0, #0x9
	bhi		_08061b82
	and		r0, r6
	add		r0, #0x30
	b		_08061b88
_08061b82:
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061b88:
	strb	r0, [r4, #0x0]
	add		r4, #0x1
	ldr		r3, [sp, #0x30]
	ldr		r2, [sp, #0x38]
	cmp		r2, #0xa
	bgt		_08061b96
	b		_08061a78
_08061b96:
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	ldr		r3, [sp, #0x44]
	ldr		r0, [sp, #0x2C]
	ldr		r1, _08061c08
	add		r2, r0, r1
	ldr		r5, _08061c0c
	add		r4, r0, r5
	add		r1, r3, #0x0
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_08061bb6
_08061bae:
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061bae
_08061bb6:
	sub		r0, r1, r3
	ldr		r7, _08061c10
	ldr		r1, [r7, #0x0]
	ldr		r5, _08061c14
	add		r1, r1, r5
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r0, #0x8a
	lsl		r0, r0, #0x6
	str		r0, [sp, #0x8]
	add		r7, sp, #0x18
	str		r7, [sp, #0xC]
	ldr		r0, [sp, #0x0+0x6c]
	str		r0, [sp, #0x10]
	ldr		r0, [sp, #0x4+0x6c]
	str		r0, [sp, #0x14]
	ldr		r0, [sp, #0x1C]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08061bfa
	cmp		r4, #0x0
	beq		_08061bfa
	add		r0, sp, #0x18
	ldrh	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_08061bfa:
	ldr		r0, [sp, #0x8+0x6c]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08061c18
	mov		r0, #0x1
	b		_08061c1c

.align 2, 0
.pool

_08061c08:	.4byte 0x0000094C
_08061c0c:	.4byte 0x00005F0C
_08061c10:	.4byte 0x0203EBE0
_08061c14:	.4byte 0x0000054C

_08061c18:
	mov		r0, #0x1
	neg		r0, r0
_08061c1c:
	add		sp, #0x4c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08061754

	thumb_func_start sub_08061c2c
sub_08061c2c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x38
	str		r0, [sp, #0x1C]
	add		r5, r1, #0x0
	str		r2, [sp, #0x20]
	str		r3, [sp, #0x24]
	ldr		r4, _08061c50
	ldr		r7, [r4, #0x0]
	bl		sub_080615d4
	cmp		r0, #0x0
	bne		_08061c54
	mov		r0, #0x0
	b		_08061e90

_08061c50:	.4byte 0x0203EBE0

_08061c54:
	ldr		r1, _08061ca4
	add		r3, r7, #0x0
	add		r3, #0x4a
	ldrb	r2, [r1, #0x0]
	str		r3, [sp, #0x30]
	asr		r0, r5, #0x1c
	asr		r4, r5, #0x18
	asr		r6, r5, #0x14
	str		r6, [sp, #0x34]
	asr		r6, r5, #0x10
	mov		r12, r6
	asr		r6, r5, #0xc
	mov		r8, r6
	asr		r6, r5, #0x8
	mov		r9, r6
	asr		r6, r5, #0x4
	mov		r10, r6
	ldr		r6, [sp, #0x8+0x58]
	asr		r6, r6, #0x4
	str		r6, [sp, #0x28]
	ldr		r6, [sp, #0xc+0x58]
	asr		r6, r6, #0x4
	str		r6, [sp, #0x2C]
	cmp		r2, #0x0
	beq		_08061c92
_08061c86:
	strb	r2, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	ldrb	r2, [r1, #0x0]
	cmp		r2, #0x0
	bne		_08061c86
_08061c92:
	mov		r1, #0xf
	add		r2, r1, #0x0
	and		r2, r0
	cmp		r2, #0x9
	bhi		_08061ca8
	mov		r0, #0x30
	orr		r0, r2
	b		_08061cb0

.align 2, 0
.pool

_08061ca4:	.4byte 0x08110078 @ "ghostrank"

_08061ca8:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061cb0:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	add		r2, r1, #0x0
	and		r2, r4
	cmp		r2, #0x9
	bhi		_08061cc4
	mov		r0, #0x30
	orr		r0, r2
	b		_08061ccc
_08061cc4:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061ccc:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	ldr		r2, [sp, #0x34]
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061ce0
	mov		r0, #0x30
	orr		r0, r2
	b		_08061ce8
_08061ce0:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061ce8:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	mov		r2, r12
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061cfc
	mov		r0, #0x30
	orr		r0, r2
	b		_08061d04
_08061cfc:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061d04:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	mov		r2, r8
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061d18
	mov		r0, #0x30
	orr		r0, r2
	b		_08061d20
_08061d18:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061d20:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	mov		r2, r9
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061d34
	mov		r0, #0x30
	orr		r0, r2
	b		_08061d3c
_08061d34:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061d3c:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	mov		r2, r10
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061d50
	mov		r0, #0x30
	orr		r0, r2
	b		_08061d58
_08061d50:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061d58:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r2, #0xf
	add		r1, r2, #0x0
	and		r1, r5
	cmp		r1, #0x9
	bhi		_08061d6c
	mov		r0, #0x30
	orr		r0, r1
	b		_08061d74
_08061d6c:
	add		r0, r1, #0x0
	sub		r0, #0xa
	and		r0, r2
	add		r0, #0x61
_08061d74:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	ldr		r1, _08061d7c
	b		_08061d86

_08061d7c:	.4byte 0x08110084 @ "&state"

_08061d80:
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
_08061d86:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061d80
	mov		r1, #0xf
	ldr		r2, [sp, #0x28]
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061d9c
	mov		r0, #0x30
	orr		r0, r2
	b		_08061da4
_08061d9c:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061da4:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	ldr		r2, [sp, #0x8+0x58]
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061db8
	mov		r0, #0x30
	orr		r0, r2
	b		_08061dc0
_08061db8:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061dc0:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	ldr		r1, _08061dc8
	b		_08061dd2

_08061dc8:	.4byte 0x0811008c @ "&driver"

_08061dcc:
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
_08061dd2:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061dcc
	mov		r1, #0xf
	ldr		r2, [sp, #0x2C]
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061de8
	mov		r0, #0x30
	orr		r0, r2
	b		_08061df0
_08061de8:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061df0:
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, #0xf
	ldr		r2, [sp, #0xc+0x58]
	and		r2, r1
	cmp		r2, #0x9
	bhi		_08061e04
	mov		r0, #0x30
	orr		r0, r2
	b		_08061e0c
_08061e04:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r1
	add		r0, #0x61
_08061e0c:
	strb	r0, [r3, #0x0]
	mov		r0, #0x0
	strb	r0, [r3, #0x1]
	ldr		r3, [sp, #0x30]
	ldr		r0, _08061e7c
	add		r5, r7, r0
	ldr		r2, _08061e80
	add		r4, r7, r2
	add		r2, r3, #0x0
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_08061e2c
_08061e24:
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08061e24
_08061e2c:
	sub		r0, r2, r3
	ldr		r6, _08061e84
	ldr		r1, [r6, #0x0]
	ldr		r2, _08061e88
	add		r1, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x8a
	lsl		r0, r0, #0x6
	str		r0, [sp, #0x8]
	add		r6, sp, #0x18
	str		r6, [sp, #0xC]
	ldr		r0, [sp, #0x20]
	str		r0, [sp, #0x10]
	ldr		r2, [sp, #0x24]
	str		r2, [sp, #0x14]
	ldr		r0, [sp, #0x1C]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08061e70
	cmp		r4, #0x0
	beq		_08061e70
	add		r0, sp, #0x18
	ldrh	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_08061e70:
	ldr		r0, [sp, #0x0+0x58]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08061e8c
	mov		r0, #0x1
	b		_08061e90

_08061e7c:	.4byte 0x0000094C
_08061e80:	.4byte 0x00005F0C
_08061e84:	.4byte 0x0203EBE0
_08061e88:	.4byte 0x0000054C

_08061e8c:
	mov		r0, #0x1
	neg		r0, r0
_08061e90:
	add		sp, #0x38
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08061c2c

	thumb_func_start sub_08061ea0
sub_08061ea0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x20
	str		r0, [sp, #0x1C]
	mov		r8, r2
	mov		r9, r3
	lsl		r1, r1, #0x10
	lsr		r6, r1, #0x10
	ldr		r4, _08061ec8
	ldr		r5, [r4, #0x0]
	bl		sub_080615d4
	mov		r12, r4
	cmp		r0, #0x0
	bne		_08061ecc
	mov		r0, #0x0
	b		_08062008

_08061ec8:	.4byte 0x0203EBE0

_08061ecc:
	ldr		r1, _08061efc
	add		r2, r5, #0x0
	add		r2, #0x4a
	ldrb	r0, [r1, #0x0]
	add		r4, r2, #0x0
	lsl		r3, r6, #0x10
	ldr		r7, _08061f00
	mov		r10, r7
	cmp		r0, #0x0
	beq		_08061eec
_08061ee0:
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061ee0
_08061eec:
	mov		r1, #0xf
	lsr		r0, r3, #0x1c
	cmp		r0, #0x9
	bhi		_08061f04
	and		r0, r1
	add		r0, #0x30
	b		_08061f0c

.align 2, 0
.pool

_08061efc:	.4byte 0x08110098 @ "ghostscore"
_08061f00:	.4byte 0x081100a4 @ "&state=00"

_08061f04:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061f0c:
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	asr		r0, r3, #0x18
	mov		r1, #0xf
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061f20
	and		r0, r1
	add		r0, #0x30
	b		_08061f28
_08061f20:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061f28:
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	asr		r0, r3, #0x14
	mov		r1, #0xf
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061f3c
	and		r0, r1
	add		r0, #0x30
	b		_08061f44
_08061f3c:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061f44:
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	mov		r1, #0xf
	add		r0, r6, #0x0
	and		r0, r1
	cmp		r0, #0x9
	bhi		_08061f58
	and		r0, r1
	add		r0, #0x30
	b		_08061f60
_08061f58:
	sub		r0, #0xa
	mov		r1, #0xf
	and		r0, r1
	add		r0, #0x61
_08061f60:
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	mov		r1, r10
	b		_08061f6e
_08061f68:
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
_08061f6e:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061f68
	ldr		r1, _08061f78
	b		_08061f82

_08061f78:	.4byte 0x081100b0 @ "&driver=00"

_08061f7c:
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
_08061f82:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061f7c
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	add		r3, r4, #0x0
	ldr		r0, _08061ff8
	add		r2, r5, r0
	ldr		r7, _08061ffc
	add		r4, r5, r7
	add		r1, r3, #0x0
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_08061fa6
_08061f9e:
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08061f9e
_08061fa6:
	sub		r0, r1, r3
	mov		r5, r12
	ldr		r1, [r5, #0x0]
	ldr		r7, _08062000
	add		r1, r1, r7
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r0, #0x8a
	lsl		r0, r0, #0x6
	str		r0, [sp, #0x8]
	add		r0, sp, #0x18
	str		r0, [sp, #0xC]
	mov		r5, r8
	str		r5, [sp, #0x10]
	mov		r7, r9
	str		r7, [sp, #0x14]
	ldr		r0, [sp, #0x1C]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08061fea
	cmp		r4, #0x0
	beq		_08061fea
	add		r0, sp, #0x18
	ldrh	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_08061fea:
	ldr		r0, [sp, #0x0+0x40]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08062004
	mov		r0, #0x1
	b		_08062008

.align 2, 0
.pool

_08061ff8:	.4byte 0x0000094C
_08061ffc:	.4byte 0x00005F0C
_08062000:	.4byte 0x0000054C

_08062004:
	mov		r0, #0x1
	neg		r0, r0
_08062008:
	add		sp, #0x20
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08061ea0

	thumb_func_start sub_08062018
sub_08062018:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x24
	mov		r9, r0
	add		r5, r1, #0x0
	str		r2, [sp, #0x1C]
	str		r3, [sp, #0x20]
	ldr		r4, _08062044
	ldr		r0, [r4, #0x0]
	mov		r8, r0
	mov		r0, r9
	bl		sub_080615d4
	mov		r10, r4
	cmp		r0, #0x0
	bne		_08062048
	mov		r0, #0x0
	b		_0806215c

.align 2, 0
.pool

_08062044:	.4byte 0x0203EBE0

_08062048:
	ldr		r2, _08062078
	mov		r1, r8
	add		r1, #0x4a
	ldrb	r0, [r2, #0x0]
	mov		r12, r1
	cmp		r0, #0x0
	beq		_08062062
_08062056:
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_08062056
_08062062:
	mov		r7, #0xf
	mov		r6, #0xf
_08062066:
	ldrb	r0, [r5, #0x0]
	lsr		r2, r0, #0x4
	and		r2, r7
	cmp		r2, #0x9
	bhi		_0806207c
	mov		r0, #0x30
	orr		r0, r2
	b		_08062084

.align 2, 0
.pool

_08062078:	.4byte 0x081100bc

_0806207c:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r7
	add		r0, #0x61
_08062084:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	ldrb	r0, [r5, #0x0]
	mov		r4, #0xf
	mov		r3, #0xf
	add		r2, r3, #0x0
	and		r2, r0
	add		r5, #0x1
	cmp		r2, #0x9
	bhi		_080620a0
	and		r2, r3
	add		r0, r2, #0x0
	add		r0, #0x30
	b		_080620a8
_080620a0:
	add		r0, r2, #0x0
	sub		r0, #0xa
	and		r0, r4
	add		r0, #0x61
_080620a8:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08062066
	ldr		r2, _080620b8
	b		_080620c2

.align 2, 0
.pool

_080620b8:	.4byte 0x081100c4 @ "&state=00"

_080620bc:
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x1
_080620c2:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080620bc
	ldr		r2, _080620cc
	b		_080620d6

_080620cc:	.4byte 0x081100d0 @ "&driver=00"

_080620d0:
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x1
_080620d6:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080620d0
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	mov		r3, r12
	ldr		r5, _0806214c
	add		r5, r8
	ldr		r4, _08062150
	add		r4, r8
	add		r2, r3, #0x0
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	beq		_080620fa
_080620f2:
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080620f2
_080620fa:
	sub		r0, r2, r3
	mov		r2, r10
	ldr		r1, [r2, #0x0]
	ldr		r2, _08062154
	add		r1, r1, r2
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x8a
	lsl		r0, r0, #0x6
	str		r0, [sp, #0x8]
	add		r0, sp, #0x18
	str		r0, [sp, #0xC]
	ldr		r2, [sp, #0x1C]
	str		r2, [sp, #0x10]
	ldr		r0, [sp, #0x20]
	str		r0, [sp, #0x14]
	mov		r0, r9
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_0806213e
	cmp		r4, #0x0
	beq		_0806213e
	add		r0, sp, #0x18
	ldrh	r0, [r0, #0x0]
	str		r0, [r4, #0x0]
_0806213e:
	ldr		r0, [sp, #0x0+0x44]
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08062158
	mov		r0, #0x1
	b		_0806215c

.align 2, 0
.pool

_0806214c:	.4byte 0x0000094C
_08062150:	.4byte 0x00005F0C
_08062154:	.4byte 0x0000054C

_08062158:
	mov		r0, #0x1
	neg		r0, r0
_0806215c:
	add		sp, #0x24
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08062018

	thumb_func_start sub_0806216c
sub_0806216c:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r4, r2, #0x0
	add		r5, r3, #0x0
	add		r2, r7, #0x0
	mov		r3, #0x0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_080621a4
	cmp		r0, #0xa
	beq		_080621a4
	cmp		r0, #0xd
	beq		_080621a4
	ldr		r6, _080621a8
_08062188:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	add		r3, #0x1
	cmp		r3, r6
	bgt		_080621ec
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_080621a4
	cmp		r0, #0xa
	beq		_080621a4
	cmp		r0, #0xd
	bne		_08062188
_080621a4:
	ldr		r6, _080621a8
	b		_080621b4

_080621a8:	.4byte 0x000003FF

_080621ac:
	strb	r0, [r2, #0x0]
	add		r4, #0x1
	add		r2, #0x1
	add		r3, #0x1
_080621b4:
	cmp		r3, r6
	bgt		_080621ec
	ldrb	r0, [r4, #0x0]
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_080621c8
	cmp		r1, #0xa
	beq		_080621c8
	cmp		r1, #0xd
	bne		_080621ac
_080621c8:
	ldr		r4, _080621cc
	b		_080621d8

_080621cc:	.4byte 0x000003FF

_080621d0:
	strb	r0, [r2, #0x0]
	add		r5, #0x1
	add		r2, #0x1
	add		r3, #0x1
_080621d8:
	cmp		r3, r4
	bgt		_080621ec
	ldrb	r0, [r5, #0x0]
	add		r1, r0, #0x0
	cmp		r1, #0x0
	beq		_080621ec
	cmp		r1, #0xa
	beq		_080621ec
	cmp		r1, #0xd
	bne		_080621d0
_080621ec:
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	ldr		r0, _080621fc
	cmp		r3, r0
	bgt		_08062200
	add		r0, r7, #0x0
	b		_08062202

.align 2, 0
.pool

_080621fc:	.4byte 0x000003FF

_08062200:
	mov		r0, #0x0
_08062202:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806216c

	thumb_func_start sub_08062208
sub_08062208:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x14
	mov		r8, r1
	ldr		r1, [sp, #0x0+0x30]
	mov		r9, r1
	ldr		r1, _080622a4
	ldr		r7, [r1, #0x0]
	ldr		r4, _080622a8
	add		r4, r4, r7
	mov		r12, r4
	mov		r4, #0x8a
	lsl		r4, r4, #0x6
	ldr		r5, _080622ac
	add		r6, r7, r5
	ldr		r5, _080622b0
	add		r1, r7, r5
	str		r4, [sp, #0x0]
	add		r4, sp, #0x10
	str		r4, [sp, #0x4]
	str		r2, [sp, #0x8]
	str		r3, [sp, #0xC]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	mov		r3, r12
	bl		sub_08079f44
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08062258
	cmp		r6, #0x0
	beq		_08062258
	add		r0, sp, #0x10
	ldrh	r0, [r0, #0x0]
	str		r0, [r6, #0x0]
_08062258:
	mov		r5, r9
	str		r1, [r5, #0x0]
	cmp		r1, #0x0
	bne		_08062300
	ldr		r1, _080622ac
	add		r0, r7, r1
	ldr		r4, [r0, #0x0]
	mov		r1, r8
	ldr		r5, _080622a8
	add		r3, r7, r5
	cmp		r1, #0x0
	ble		_0806229c
_08062270:
	add		r0, r4, #0x0
	sub		r4, #0x1
	cmp		r0, #0x0
	ble		_080622f8
	ldrb	r2, [r3, #0x0]
	add		r3, #0x1
	cmp		r2, #0xd
	beq		_08062284
	cmp		r2, #0xa
	bne		_08062270
_08062284:
	cmp		r4, #0x0
	ble		_08062296
	cmp		r2, #0xd
	bne		_08062296
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0xa
	bne		_08062296
	sub		r4, #0x1
	add		r3, #0x1
_08062296:
	sub		r1, #0x1
	cmp		r1, #0x0
	bgt		_08062270
_0806229c:
	mov		r1, #0x0
	ldr		r5, _080622b4
	b		_080622c2

.align 2, 0
.pool

_080622a4:	.4byte 0x0203EBE0
_080622a8:	.4byte 0x0000094C
_080622ac:	.4byte 0x00005F0C
_080622b0:	.4byte 0x0000054C
_080622b4:	.4byte 0x0203ED58

_080622b8:
	add		r0, r1, r5
	strb	r2, [r0, #0x0]
	add		r1, #0x1
	cmp		r1, #0xff
	bgt		_080622d6
_080622c2:
	add		r0, r4, #0x0
	sub		r4, #0x1
	cmp		r0, #0x0
	ble		_080622f8
	ldrb	r2, [r3, #0x0]
	add		r3, #0x1
	cmp		r2, #0xd
	beq		_080622d6
	cmp		r2, #0xa
	bne		_080622b8
_080622d6:
	ldr		r2, _080622f4
	add		r1, r1, r2
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	cmp		r2, #0x0
	beq		_080622f8
	mov		r1, #0xa5
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r1, [sp, #0x4+0x30]
	ldr		r3, [sp, #0x8+0x30]
	bl		sub_0806216c
	b		_08062302

.align 2, 0
.pool

_080622f4:	.4byte 0x0203ED58

_080622f8:
	mov		r0, #0x3
	neg		r0, r0
	mov		r4, r9
	str		r0, [r4, #0x0]
_08062300:
	mov		r0, #0x0
_08062302:
	add		sp, #0x14
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08062208

	thumb_func_start sub_08062310
sub_08062310:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x9c
	str		r0, [sp, #0x88]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	str		r1, [sp, #0x8C]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	str		r2, [sp, #0x90]
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	str		r3, [sp, #0x94]
	ldr		r0, _08062388
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x98]
	bl		sub_08060bf4
	ldr		r1, _0806238c
	mov		r10, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r10
	add		r4, sp, #0x3c
	add		r5, sp, #0x5c
	add		r7, sp, #0x84
	mov		r9, r7
	mov		r3, #0x10
_08062350:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_0806235a
	add		r0, #0x20
_0806235a:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062350
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0x18
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	mov		r3, r9
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08062390
_0806237a:
	bl		sub_080616d4
	ldr		r0, [sp, #0x84]
	bl		sub_08064328
	b		_08062568

.align 2, 0
.pool

_08062388:	.4byte 0x0203EBE0
_0806238c:	.4byte 0x0203EE60

_08062390:
	add		r0, sp, #0x5c
	add		r1, sp, #0x18
	mov		r2, r10
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r6, [sp, #0x84]
	cmp		r6, #0x0
	bne		_0806237a
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _0806246c
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, r9
	str		r0, [sp, #0x0]
	ldr		r0, _08062470
	str		r0, [sp, #0x4]
	ldr		r0, _08062474
	str		r0, [sp, #0x8]
	ldr		r0, _08062478
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x18
	mov		r3, r10
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_0806237a
	add		r1, sp, #0x80
	mov		r8, r1
	ldr		r7, _0806247c
	ldr		r4, [r7, #0x0]
	bl		sub_080615d4
	cmp		r0, #0x0
	beq		_08062454
	add		r3, r4, #0x0
	add		r3, #0x4a
	strb	r6, [r3, #0x0]
	ldr		r2, _08062480
	add		r0, r4, r2
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	ldr		r1, _08062484
	add		r4, r4, r1
	ldr		r1, [r7, #0x0]
	ldr		r7, _08062488
	add		r1, r1, r7
	str		r6, [sp, #0x0]
	str		r0, [sp, #0x4]
	str		r2, [sp, #0x8]
	mov		r0, r8
	str		r0, [sp, #0xC]
	add		r2, sp, #0x18
	str		r2, [sp, #0x10]
	mov		r7, r10
	str		r7, [sp, #0x14]
	add		r0, r5, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08062446
	cmp		r4, #0x0
	beq		_08062446
	mov		r2, r8
	ldrh	r0, [r2, #0x0]
	str		r0, [r4, #0x0]
_08062446:
	str		r1, [sp, #0x84]
	mov		r0, #0x1
	cmp		r1, #0x0
	beq		_08062450
	sub		r0, #0x2
_08062450:
	cmp		r0, #0x0
	blt		_0806237a
_08062454:
	ldr		r0, _0806247c
	ldr		r3, [r0, #0x0]
	ldr		r4, _08062480
	add		r2, r3, r4
	ldr		r7, _08062484
	add		r0, r3, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0806248c
	mov		r4, #0x0
	b		_080624ac

.align 2, 0
.pool

_0806246c:	.4byte 0x081146dc
_08062470:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062474:	.4byte 0x081100dc @ "total.cgb"
_08062478:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_0806247c:	.4byte 0x0203EBE0
_08062480:	.4byte 0x0000094C
_08062484:	.4byte 0x00005F0C
_08062488:	.4byte 0x0000054C

_0806248c:
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	ldr		r1, _08062518
	add		r2, r3, r1
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x10
	add		r0, r0, r1
	ldr		r4, _0806251c
	add		r2, r3, r4
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x8
	ldr		r7, _08062520
	add		r2, r3, r7
	add		r0, r0, r1
	ldrb	r2, [r2, #0x0]
	add		r4, r0, r2
_080624ac:
	mov		r0, r9
	str		r0, [sp, #0x0]
	ldr		r0, _08062524
	str		r0, [sp, #0x4]
	ldr		r0, _08062528
	str		r0, [sp, #0x8]
	ldr		r0, _0806252C
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x18
	mov		r3, r10
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_080624cc
	b		_0806237a
_080624cc:
	ldr		r2, [sp, #0x8C]
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	add		r7, sp, #0x18
	str		r7, [sp, #0x0]
	mov		r0, r10
	str		r0, [sp, #0x4]
	mov		r2, r9
	str		r2, [sp, #0x8]
	str		r4, [sp, #0xC]
	add		r0, r5, #0x0
	ldr		r2, [sp, #0x90]
	ldr		r3, [sp, #0x94]
	bl		sub_08061754
	cmp		r0, #0x0
	bge		_080624f0
	b		_0806237a
_080624f0:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08062530
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08062534
	bl		sub_080616d4
	b		_0806254a

_08062518:	.4byte 0x0000094D
_0806251c:	.4byte 0x0000094E
_08062520:	.4byte 0x0000094F
_08062524:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062528:	.4byte 0x081100e8 @ "query.cgb"
_0806252C:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062530:	.4byte 0x08114758

_08062534:
	bl		sub_08075768
	ldr		r4, _08062560
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_0806254a:
	bl		sub_080646b4
	ldr		r4, [sp, #0x98]
	ldr		r7, _08062564
	add		r0, r4, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08062568
	mov		r0, #0x1
	b		_0806256a

.align 2, 0
.pool

_08062560:	.4byte 0x080270F1
_08062564:	.4byte 0x00005F0C

_08062568:
	mov		r0, #0x0
_0806256a:
	add		sp, #0x9c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062310

	thumb_func_start sub_0806257c
sub_0806257c:
	push	{ r4, lr }
	ldr		r0, _080625d0
	ldr		r2, [r0, #0x0]
	ldr		r1, _080625d4
	add		r0, r2, r1
	ldrb	r1, [r0, #0x0]
	lsl		r1, r1, #0x18
	ldr		r3, _080625d8
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	add		r1, r1, r0
	add		r3, #0x1
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	add		r3, #0x1
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	cmn		r1, r0
	bne		_0806262c
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _080625dc
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_080625e0
	bl		sub_080616d4
	b		_080625f6

_080625d0:	.4byte 0x0203EBE0
_080625d4:	.4byte 0x00000952
_080625d8:	.4byte 0x00000953
_080625dc:	.4byte 0x08114758

_080625e0:
	bl		sub_08075768
	ldr		r4, _08062624
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_080625f6:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08062612
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08062612:
	ldr		r1, _08062628
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x0
	bl		sub_080602f0
	mov		r0, #0x0
	b		_0806262e

_08062624:	.4byte 0x080270F1
_08062628:	.4byte 0x08112918

_0806262c:
	mov		r0, #0x1
_0806262e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806257c

	thumb_func_start sub_08062634
sub_08062634:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	ldr		r0, _0806269c
	ldr		r2, [r0, #0x0]
	ldr		r0, _080626a0
	add		r1, r2, r0
	ldrb	r0, [r1, #0x0]
	lsl		r5, r0, #0x8
	ldr		r3, _080626a4
	add		r1, r2, r3
	ldrb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r1, r2, r3
	cmn		r5, r0
	beq		_08062654
	b		_0806281c
_08062654:
	ldrb	r0, [r1, #0x0]
	lsl		r5, r0, #0x18
	ldr		r0, _080626a8
	add		r1, r2, r0
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	add		r5, r5, r0
	add		r3, #0x2
	add		r1, r2, r3
	ldrb	r0, [r1, #0x0]
	lsl		r0, r0, #0x8
	add		r5, r5, r0
	ldr		r0, _080626ac
	add		r1, r2, r0
	ldrb	r0, [r1, #0x0]
	add		r5, r5, r0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _080626b0
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_080626b4
	bl		sub_080616d4
	b		_080626ca

_0806269c:	.4byte 0x0203EBE0
_080626a0:	.4byte 0x00000956
_080626a4:	.4byte 0x00000957
_080626a8:	.4byte 0x00000959
_080626ac:	.4byte 0x0000095B
_080626b0:	.4byte 0x08114758

_080626b4:
	bl		sub_08075768
	ldr		r4, _08062804
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_080626ca:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_080626e6
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_080626e6:
	ldr		r1, _08062808
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r6, #0xb
	ldr		r0, _0806280c
	cmp		r5, r0
	bls		_08062720
	ldr		r1, _08062810
	add		r0, r5, #0x0
	bl		sub_0807ddf0
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	mov		r6, #0xc
	mov		r0, #0x0
	mov		r1, #0xb
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
_08062720:
	ldr		r0, _08062814
	cmp		r5, r0
	bls		_08062752
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	add		r0, r5, #0x0
	bl		sub_0807ddf0
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
_08062752:
	cmp		r5, #0x63
	bls		_08062780
	add		r0, r5, #0x0
	mov		r1, #0x64
	bl		sub_0807ddf0
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
_08062780:
	cmp		r5, #0x9
	bls		_080627ae
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807ddf0
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
_080627ae:
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r6, #0x0
	add		r6, #0x1
	mov		r0, #0x0
	mov		r2, #0x8
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xf
	bl		sub_0806d16c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08062818
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	add		r0, r6, #0x0
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
	mov		r0, #0x0
	b		_0806281e

_08062804:	.4byte 0x080270F1
_08062808:	.4byte 0x08112988
_0806280c:	.4byte 0x0000270F
_08062810:	.4byte 0x00002710
_08062814:	.4byte 0x000003E7
_08062818:	.4byte 0x081100f4

_0806281c:
	mov		r0, #0x1
_0806281e:
	add		sp, #0xc
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062634

	thumb_func_start sub_08062828
sub_08062828:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x90
	str		r0, [sp, #0x88]
	add		r5, r1, #0x0
	mov		r8, r2
	str		r3, [sp, #0x8C]
	ldr		r0, _0806288c
	ldr		r6, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08060bf4
	mov		r9, r0
	ldr		r0, _08062890
	mov		r10, r0
	add		r4, sp, #0x78
	add		r2, r4, #0x0
	ldr		r1, _08062894
	ldmia	r1!, { r0, r3, r7 }
	stmia	r2!, { r0, r3, r7 }
	mov		r0, r9
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r10
	mov		r3, #0x10
_08062862:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_0806286c
	add		r0, #0x20
_0806286c:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062862
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r1, r8
	cmp		r1, #0x0
	bne		_08062898
	ldr		r0, [sp, #0x88]
	add		r1, r5, #0x0
	bl		sub_08062a80
	b		_08062a6e

_0806288c:	.4byte 0x0203EBE0
_08062890:	.4byte 0x0203EE60
_08062894:	.4byte 0x0811012c @ "0.dlghostid.cgb"

_08062898:
	add		r1, sp, #0x34
	add		r4, sp, #0x54
	add		r7, sp, #0x84
	add		r0, sp, #0x10
	add		r2, r4, #0x0
	add		r3, r7, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_080628b8
_080628ac:
	bl		sub_080616d4
	ldr		r0, [sp, #0x84]
	bl		sub_08064328
	b		_08062a6c
_080628b8:
	mov		r9, r7
	add		r0, r4, #0x0
	add		r1, sp, #0x10
	mov		r2, r10
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x84]
	cmp		r0, #0x0
	bne		_080628ac
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08062a14
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r2, r9
	str		r2, [sp, #0x0]
	ldr		r3, _08062a18
	str		r3, [sp, #0x4]
	mov		r1, r8
	lsl		r0, r1, #0x2
	add		r0, sp
	add		r0, #0x78
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x8]
	ldr		r0, _08062a1C
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x10
	mov		r3, r10
	bl		sub_08062208
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_080628ac
	mov		r2, r9
	str		r2, [sp, #0x0]
	mov		r3, r8
	str		r3, [sp, #0x4]
	ldr		r0, [sp, #0x8C]
	str		r0, [sp, #0x8]
	ldr		r1, [sp, #0x0+0xb0]
	str		r1, [sp, #0xC]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	add		r2, sp, #0x10
	mov		r3, r10
	bl		sub_08061c2c
	cmp		r0, #0x0
	ble		_080628ac
	bl		sub_0806257c
	cmp		r0, #0x0
	bne		_08062948
	b		_08062a6c
_08062948:
	ldr		r2, _08062a20
	add		r0, r6, r2
	ldrb	r1, [r0, #0x0]
	lsl		r1, r1, #0x18
	ldr		r3, _08062a24
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	add		r2, r1, r0
	ldr		r1, _08062a28
	add		r0, r6, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r2, r2, r0
	add		r3, #0x2
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, #0x2
	add		r0, r6, r1
	ldrb	r1, [r0, #0x0]
	lsl		r1, r1, #0x8
	add		r3, #0x2
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	orr		r1, r0
	cmp		r1, #0x0
	bne		_080629a2
	add		r5, r2, #0x0
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r1, r8
	str		r1, [sp, #0x4]
	ldr		r2, [sp, #0x8C]
	str		r2, [sp, #0x8]
	ldr		r3, [sp, #0x0+0xb0]
	str		r3, [sp, #0xC]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	add		r2, sp, #0x10
	mov		r3, r10
	bl		sub_08061c2c
	cmp		r0, #0x0
	ble		_080628ac
_080629a2:
	ldr		r1, _08062a2c
	add		r0, r6, r1
	ldr		r2, _08062a30
	add		r5, r6, r2
	add		r1, r5, #0x0
	mov		r2, #0x10
	bl		sub_08057300
	str		r7, [sp, #0x0]
	ldr		r3, _08062a18
	str		r3, [sp, #0x4]
	ldr		r0, _08062a34
	str		r0, [sp, #0x8]
	ldr		r0, _08062a1C
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x10
	mov		r3, r10
	bl		sub_08062208
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_080629d0
	b		_080628ac
_080629d0:
	str		r7, [sp, #0x0]
	add		r1, r5, #0x0
	add		r2, sp, #0x10
	mov		r3, r10
	bl		sub_08062018
	cmp		r0, #0x0
	bgt		_080629e2
	b		_080628ac
_080629e2:
	bl		sub_08062634
	cmp		r0, #0x0
	beq		_08062a6c
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08062a38
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08062a3c
	bl		sub_080616d4
	b		_08062a52

.align 2, 0
.pool

_08062a14:	.4byte 0x081146dc
_08062a18:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062a1C:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062a20:	.4byte 0x00000952
_08062a24:	.4byte 0x00000953
_08062a28:	.4byte 0x00000954
_08062a2c:	.4byte 0x00000958
_08062a30:	.4byte 0x00006A4E
_08062a34:	.4byte 0x08110138 @ "0.dlghost3.cgb"
_08062a38:	.4byte 0x08114758

_08062a3c:
	bl		sub_08075768
	ldr		r4, _08062a64
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08062a52:
	bl		sub_080646b4
	ldr		r7, _08062a68
	add		r0, r6, r7
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08062a6c
	mov		r0, #0x1
	b		_08062a6e

_08062a64:	.4byte 0x080270F1
_08062a68:	.4byte 0x00005F0C

_08062a6c:
	mov		r0, #0x0
_08062a6e:
	add		sp, #0x90
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062828

	thumb_func_start sub_08062a80
sub_08062a80:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x7c
	mov		r10, r0
	mov		r8, r1
	ldr		r0, _08062ae4
	ldr		r6, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08060bf4
	ldr		r1, _08062ae8
	mov		r9, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r9
	add		r4, sp, #0x34
	add		r5, sp, #0x54
	add		r7, sp, #0x78
	mov		r3, #0x10
_08062aae:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08062ab8
	add		r0, #0x20
_08062ab8:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062aae
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0x10
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	add		r3, r7, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08062aec
_08062ad8:
	bl		sub_080616d4
	ldr		r0, [sp, #0x78]
	bl		sub_08064328
	b		_08062c28

_08062ae4:	.4byte 0x0203EBE0
_08062ae8:	.4byte 0x0203EE60

_08062aec:
	add		r0, sp, #0x54
	add		r1, sp, #0x10
	mov		r2, r9
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x78]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r4, [sp, #0x78]
	cmp		r4, #0x0
	bne		_08062ad8
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08062bdc
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	str		r7, [sp, #0x0]
	ldr		r0, _08062bd0
	str		r0, [sp, #0x4]
	ldr		r0, _08062be4
	str		r0, [sp, #0x8]
	ldr		r0, _08062be8
	mov		r1, r10
	add		r2, sp, #0x10
	mov		r3, r9
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_08062ad8
	str		r7, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r4, [sp, #0x8]
	str		r4, [sp, #0xC]
	mov		r1, r8
	add		r2, sp, #0x10
	mov		r3, r9
	bl		sub_08061c2c
	cmp		r0, #0x0
	ble		_08062ad8
	bl		sub_0806257c
	cmp		r0, #0x0
	beq		_08062c28
	ldr		r2, _08062bec
	add		r0, r6, r2
	ldrb	r1, [r0, #0x0]
	lsl		r1, r1, #0x18
	ldr		r3, _08062bf0
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x10
	add		r1, r1, r0
	add		r2, #0x2
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r1, r1, r0
	add		r3, #0x2
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	add		r1, r1, r0
	add		r2, #0x2
	add		r0, r6, r2
	ldrb	r0, [r0, #0x0]
	lsl		r2, r0, #0x8
	add		r3, #0x2
	add		r0, r6, r3
	ldrb	r0, [r0, #0x0]
	orr		r2, r0
	cmp		r2, #0x0
	bne		_08062bb4
	mov		r8, r1
	str		r7, [sp, #0x0]
	str		r2, [sp, #0x4]
	str		r2, [sp, #0x8]
	str		r2, [sp, #0xC]
	add		r0, r5, #0x0
	add		r2, sp, #0x10
	mov		r3, r9
	bl		sub_08061c2c
	cmp		r0, #0x0
	ble		_08062ad8
_08062bb4:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08062bf4
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08062bf8
	bl		sub_080616d4
	b		_08062c0e

_08062bdc:	.4byte 0x081146dc
_08062bd0:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062be4:	.4byte 0x08110148 @ "0.dlghost.cgb"
_08062be8:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062bec:	.4byte 0x00000952
_08062bf0:	.4byte 0x00000953
_08062bf4:	.4byte 0x08114758

_08062bf8:
	bl		sub_08075768
	ldr		r4, _08062c20
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08062c0e:
	bl		sub_080646b4
	ldr		r1, _08062c24
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08062c28
	mov		r0, #0x1
	b		_08062c2a

_08062c20:	.4byte 0x080270F1
_08062c24:	.4byte 0x00005F0C

_08062c28:
	mov		r0, #0x0
_08062c2a:
	add		sp, #0x7c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062a80

	thumb_func_start sub_08062c3c
sub_08062c3c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x78
	mov		r8, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r9, r1
	ldr		r0, _08062ca4
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	bl		sub_08060bf4
	ldr		r5, _08062ca8
	bl		sub_08060e48
	add		r2, r0, #0x0
	add		r1, r5, #0x0
	add		r6, sp, #0x30
	add		r7, sp, #0x50
	add		r4, sp, #0x74
	mov		r3, #0x10
_08062c6c:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08062c76
	add		r0, #0x20
_08062c76:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062c6c
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0xc
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08062cac
_08062c96:
	bl		sub_080616d4
	ldr		r0, [sp, #0x74]
	bl		sub_08064328
	b		_08062d9c

.align 2, 0
.pool

_08062ca4:	.4byte 0x0203EBE0
_08062ca8:	.4byte 0x0203EE60

_08062cac:
	add		r0, sp, #0x50
	add		r1, sp, #0xc
	add		r2, r5, #0x0
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x74]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x74]
	cmp		r0, #0x0
	bne		_08062c96
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08062d58
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	str		r4, [sp, #0x0]
	ldr		r0, _08062d5c
	str		r0, [sp, #0x4]
	ldr		r0, _08062d60
	str		r0, [sp, #0x8]
	ldr		r0, _08062d64
	mov		r1, r8
	add		r2, sp, #0xc
	add		r3, r5, #0x0
	bl		sub_08062208
	cmp		r0, #0x0
	beq		_08062c96
	mov		r2, r9
	lsl		r1, r2, #0x10
	mov		r2, #0x80
	lsl		r2, r2, #0x9
	add		r1, r1, r2
	asr		r1, r1, #0x10
	str		r4, [sp, #0x0]
	add		r2, sp, #0xc
	add		r3, r5, #0x0
	bl		sub_08061ea0
	cmp		r0, #0x0
	ble		_08062c96
	bl		sub_0806257c
	cmp		r0, #0x0
	beq		_08062d9c
	bl		sub_08062634
	cmp		r0, #0x0
	beq		_08062d9c
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08062d68
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08062d6c
	bl		sub_080616d4
	b		_08062d82

.align 2, 0
.pool

_08062d58:	.4byte 0x081146dc
_08062d5c:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062d60:	.4byte 0x08110158 @ "0.dlghost2.cgb"
_08062d64:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062d68:	.4byte 0x08114758

_08062d6c:
	bl		sub_08075768
	ldr		r4, _08062d94
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08062d82:
	bl		sub_080646b4
	ldr		r0, _08062d98
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08062d9c
	mov		r0, #0x1
	b		_08062d9e

_08062d94:	.4byte 0x080270F1
_08062d98:	.4byte 0x00005F0C

_08062d9c:
	mov		r0, #0x0
_08062d9e:
	add		sp, #0x78
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062c3c

	thumb_func_start sub_08062db0
sub_08062db0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x78
	mov		r8, r0
	mov		r9, r1
	ldr		r0, _08062e14
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	bl		sub_08060bf4
	ldr		r5, _08062e18
	bl		sub_08060e48
	add		r2, r0, #0x0
	add		r1, r5, #0x0
	add		r6, sp, #0x30
	add		r7, sp, #0x50
	add		r4, sp, #0x74
	mov		r3, #0x10
_08062ddc:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08062de6
	add		r0, #0x20
_08062de6:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062ddc
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0xc
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	add		r3, r4, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08062e1c
_08062e06:
	bl		sub_080616d4
	ldr		r0, [sp, #0x74]
	bl		sub_08064328
	b		_08062f00

.align 2, 0
.pool

_08062e14:	.4byte 0x0203EBE0
_08062e18:	.4byte 0x0203EE60

_08062e1c:
	add		r0, sp, #0x50
	add		r1, sp, #0xc
	add		r2, r5, #0x0
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x74]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x74]
	cmp		r0, #0x0
	bne		_08062e06
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08062ebc
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	str		r4, [sp, #0x0]
	ldr		r0, _08062ec0
	str		r0, [sp, #0x4]
	ldr		r0, _08062ec4
	str		r0, [sp, #0x8]
	ldr		r0, _08062ec8
	mov		r1, r8
	add		r2, sp, #0xc
	add		r3, r5, #0x0
	bl		sub_08062208
	cmp		r0, #0x0
	beq		_08062e06
	str		r4, [sp, #0x0]
	mov		r1, r9
	add		r2, sp, #0xc
	add		r3, r5, #0x0
	bl		sub_08062018
	cmp		r0, #0x0
	ble		_08062e06
	bl		sub_0806257c
	cmp		r0, #0x0
	beq		_08062f00
	bl		sub_08062634
	cmp		r0, #0x0
	beq		_08062f00
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08062ecc
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08062ed0
	bl		sub_080616d4
	b		_08062ee6

_08062ebc:	.4byte 0x081146dc
_08062ec0:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08062ec4:	.4byte 0x08110138 @ "0.dlghost3.cgb"
_08062ec8:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062ecc:	.4byte 0x08114758

_08062ed0:
	bl		sub_08075768
	ldr		r4, _08062ef8
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08062ee6:
	bl		sub_080646b4
	ldr		r0, _08062efc
	add		r0, r10
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08062f00
	mov		r0, #0x1
	b		_08062f02

_08062ef8:	.4byte 0x080270F1
_08062efc:	.4byte 0x00005F0C

_08062f00:
	mov		r0, #0x0
_08062f02:
	add		sp, #0x78
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_08062db0

	thumb_func_start sub_08062f14
sub_08062f14:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x88
	add		r7, r0, #0x0
	ldr		r0, _08062f80
	mov		r8, r0
	ldr		r0, _08062f84
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	ldr		r1, _08062f88
	mov		r10, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r10
	add		r5, sp, #0x3c
	add		r6, sp, #0x5c
	add		r4, sp, #0x84
	mov		r3, #0x10
_08062f42:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08062f4c
	add		r0, #0x20
_08062f4c:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08062f42
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_080646fc
	add		r0, sp, #0x18
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	add		r3, r4, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08062f8c
_08062f70:
	bl		sub_080616d4
	ldr		r0, [sp, #0x84]
	bl		sub_08064328
	mov		r0, #0x0
	b		_0806309c

.align 2, 0
.pool

_08062f80:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08062f84:	.4byte 0x0203EBE0
_08062f88:	.4byte 0x0203EE60

_08062f8c:
	add		r0, sp, #0x5c
	add		r1, sp, #0x18
	mov		r2, r10
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r6, [sp, #0x84]
	cmp		r6, #0x0
	bne		_08062f70
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08063064
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	str		r4, [sp, #0x0]
	ldr		r0, _08063068
	str		r0, [sp, #0x4]
	ldr		r0, _0806306c
	str		r0, [sp, #0x8]
	mov		r0, r8
	add		r1, r7, #0x0
	add		r2, sp, #0x18
	mov		r3, r10
	bl		sub_08062208
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08062f70
	add		r7, sp, #0x80
	mov		r0, #0x86
	lsl		r0, r0, #0x5
	mov		r9, r0
	ldr		r5, _08063070
	ldr		r0, [r5, #0x0]
	ldr		r1, _08063074
	add		r1, r1, r0
	mov		r8, r1
	add		r0, r4, #0x0
	bl		sub_080615d4
	cmp		r0, #0x0
	beq		_0806303a
	ldr		r1, [r5, #0x0]
	ldr		r0, _08063078
	add		r1, r1, r0
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r6, [sp, #0x8]
	str		r7, [sp, #0xC]
	add		r0, sp, #0x18
	str		r0, [sp, #0x10]
	mov		r0, r10
	str		r0, [sp, #0x14]
	add		r0, r4, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	mov		r3, r8
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_08063036
	sub		r1, #0x2
_08063036:
	cmp		r1, #0x0
	blt		_08062f70
_0806303a:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _0806307c
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063080
	bl		sub_080616d4
	b		_08063096

.align 2, 0
.pool

_08063064:	.4byte 0x081146dc
_08063068:	.4byte 0x0810fd70 @ "http://gameboy.datacenter.ne.jp/cgb/upload?name=/01/AGB-AMKJ/"
_0806306c:	.4byte 0x08110168 @ "0.entry.cgb"
_08063070:	.4byte 0x0203EBE0
_08063074:	.4byte 0x00004E4C
_08063078:	.4byte 0x0000054C
_0806307c:	.4byte 0x08114758

_08063080:
	bl		sub_08075768
	ldr		r4, _080630ac
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063096:
	bl		sub_080646b4
	mov		r0, #0x1
_0806309c:
	add		sp, #0x88
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080630ac:	.4byte 0x080270F1
	thumb_func_end sub_08062f14

	thumb_func_start sub_080630b0
sub_080630b0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xa0
	str		r0, [sp, #0x88]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	str		r1, [sp, #0x8C]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	str		r2, [sp, #0x90]
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	str		r3, [sp, #0x94]
	ldr		r0, _08063204
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x98]
	bl		sub_08060bf4
	ldr		r1, _08063208
	mov		r9, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r9
	add		r4, sp, #0x3c
	add		r5, sp, #0x5c
	add		r3, sp, #0x84
	mov		r8, r3
	mov		r3, #0x10
_080630f0:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_080630fa
	add		r0, #0x20
_080630fa:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080630f0
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_080646fc
	add		r0, sp, #0x18
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	mov		r3, r8
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08063120
	b		_080632ba
_08063120:
	add		r0, sp, #0x5c
	add		r1, sp, #0x18
	mov		r2, r9
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r7, [sp, #0x84]
	cmp		r7, #0x0
	beq		_08063140
	b		_080632ba
_08063140:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _0806320c
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r4, r8
	str		r4, [sp, #0x0]
	ldr		r0, _08063210
	str		r0, [sp, #0x4]
	ldr		r0, _08063214
	str		r0, [sp, #0x8]
	ldr		r0, _08063218
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x18
	mov		r3, r9
	bl		sub_08062208
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_08063180
	b		_080632ba
_08063180:
	mov		r10, r8
	ldr		r1, _08063204
	ldr		r5, [r1, #0x0]
	str		r1, [sp, #0x9C]
	bl		sub_080615d4
	ldr		r1, [sp, #0x9C]
	cmp		r0, #0x0
	beq		_080631ec
	add		r3, r5, #0x0
	add		r3, #0x4a
	strb	r7, [r3, #0x0]
	ldr		r2, _0806321c
	add		r0, r5, r2
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	ldr		r4, _08063220
	add		r5, r5, r4
	ldr		r1, [r1, #0x0]
	ldr		r4, _08063224
	add		r1, r1, r4
	str		r7, [sp, #0x0]
	str		r0, [sp, #0x4]
	str		r2, [sp, #0x8]
	add		r0, sp, #0x80
	str		r0, [sp, #0xC]
	add		r2, sp, #0x18
	str		r2, [sp, #0x10]
	mov		r4, r9
	str		r4, [sp, #0x14]
	add		r0, r6, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_080631dc
	cmp		r5, #0x0
	beq		_080631dc
	add		r1, sp, #0x80
	ldrh	r0, [r1, #0x0]
	str		r0, [r5, #0x0]
_080631dc:
	mov		r3, r10
	str		r2, [r3, #0x0]
	mov		r1, #0x1
	cmp		r2, #0x0
	beq		_080631e8
	sub		r1, #0x2
_080631e8:
	cmp		r1, #0x0
	blt		_080632ba
_080631ec:
	ldr		r0, _08063204
	ldr		r3, [r0, #0x0]
	ldr		r4, _0806321c
	add		r2, r3, r4
	ldr		r1, _08063220
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08063228
	mov		r5, #0x0
	b		_08063248

.align 2, 0
.pool

_08063204:	.4byte 0x0203EBE0
_08063208:	.4byte 0x0203EE60
_0806320c:	.4byte 0x081146dc
_08063210:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08063214:	.4byte 0x081100dc @ "total.cgb"
_08063218:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_0806321c:	.4byte 0x0000094C
_08063220:	.4byte 0x00005F0C
_08063224:	.4byte 0x0000054C

_08063228:
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	ldr		r4, _080632c8
	add		r2, r3, r4
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x10
	add		r0, r0, r1
	ldr		r1, _080632cc
	add		r2, r3, r1
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x8
	add		r4, #0x2
	add		r2, r3, r4
	add		r0, r0, r1
	ldrb	r2, [r2, #0x0]
	add		r5, r0, r2
_08063248:
	mov		r0, r8
	str		r0, [sp, #0x0]
	ldr		r0, _080632d0
	str		r0, [sp, #0x4]
	ldr		r0, _080632d4
	str		r0, [sp, #0x8]
	ldr		r0, _080632d8
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x18
	mov		r3, r9
	bl		sub_08062208
	add		r6, r0, #0x0
	cmp		r6, #0x0
	beq		_080632ba
	ldr		r2, [sp, #0x8C]
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	add		r3, sp, #0x18
	str		r3, [sp, #0x0]
	mov		r4, r9
	str		r4, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	str		r5, [sp, #0xC]
	add		r0, r6, #0x0
	ldr		r2, [sp, #0x90]
	ldr		r3, [sp, #0x94]
	bl		sub_08061754
	add		r1, r0, #0x0
	cmp		r1, #0x0
	blt		_080632ba
	ldr		r1, [sp, #0x98]
	ldr		r2, _080632dc
	add		r0, r1, r2
	ldr		r3, _080632e0
	add		r1, r1, r3
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	bl		sub_08057300
	mov		r4, r8
	str		r4, [sp, #0x0]
	ldr		r0, _080632e4
	str		r0, [sp, #0x4]
	ldr		r0, _080632e8
	str		r0, [sp, #0x8]
	ldr		r0, _080632d8
	ldr		r1, [sp, #0x88]
	add		r2, sp, #0x18
	mov		r3, r9
	bl		sub_08062208
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_080632ec
_080632ba:
	bl		sub_080616d4
	ldr		r0, [sp, #0x84]
	bl		sub_08064328
	mov		r0, #0x0
	b		_080633a2

_080632c8:	.4byte 0x0000094D
_080632cc:	.4byte 0x0000094E
_080632d0:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_080632d4:	.4byte 0x0081100e8 @ "query.cgb"
_080632d8:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_080632dc:	.4byte 0x0000094C
_080632e0:	.4byte 0x00002BCC
_080632e4:	.4byte 0x0810fd70 @ "http://gameboy.datacenter.ne.jp/cgb/upload?name=/01/AGB-AMKJ/"
_080632e8:	.4byte 0x08110168 @ "0.entry.cgb"

_080632ec:
	mov		r4, #0x86
	lsl		r4, r4, #0x5
	ldr		r5, _08063364
	ldr		r0, [r5, #0x0]
	ldr		r1, _08063368
	add		r7, r0, r1
	add		r0, r6, #0x0
	bl		sub_080615d4
	cmp		r0, #0x0
	beq		_0806333c
	mov		r0, #0x0
	ldr		r1, [r5, #0x0]
	ldr		r2, _0806336c
	add		r1, r1, r2
	str		r4, [sp, #0x0]
	str		r0, [sp, #0x4]
	str		r0, [sp, #0x8]
	add		r3, sp, #0x80
	str		r3, [sp, #0xC]
	add		r4, sp, #0x18
	str		r4, [sp, #0x10]
	mov		r0, r9
	str		r0, [sp, #0x14]
	add		r0, r6, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r3, r7, #0x0
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_08063338
	sub		r1, #0x2
_08063338:
	cmp		r1, #0x0
	blt		_080632ba
_0806333c:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063370
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063374
	bl		sub_080616d4
	b		_0806338a

_08063364:	.4byte 0x0203EBE0
_08063368:	.4byte 0x00004E4C
_0806336c:	.4byte 0x0000054C
_08063370:	.4byte 0x08114758

_08063374:
	bl		sub_08075768
	ldr		r4, _080633b4
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_0806338a:
	bl		sub_080646b4
	ldr		r1, [sp, #0x98]
	ldr		r2, _080633b8
	add		r0, r1, r2
	ldr		r3, _080633bc
	add		r1, r1, r3
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	bl		sub_08057300
	mov		r0, #0x1
_080633a2:
	add		sp, #0xa0
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080633b4:	.4byte 0x080270F1
_080633b8:	.4byte 0x00002BCC
_080633bc:	.4byte 0x0000094C
	thumb_func_end sub_080630b0

	thumb_func_start sub_080633c0
sub_080633c0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x74
	str		r1, [sp, #0x70]
	ldr		r1, _08063424
	ldr		r1, [r1, #0x0]
	mov		r10, r1
	ldr		r7, _08063428
	mov		r1, #0x0
	mov		r9, r1
	sub		r1, #0x1
	mov		r8, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	add		r1, r7, #0x0
	add		r6, sp, #0x28
	add		r5, sp, #0x48
	add		r4, sp, #0x6c
	mov		r3, #0x10
_080633ee:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_080633f8
	add		r0, #0x20
_080633f8:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080633ee
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0x4
	add		r1, r6, #0x0
	add		r2, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_0806342c
_08063418:
	bl		sub_080616d4
	ldr		r0, [sp, #0x6C]
	bl		sub_08064328
	b		_080634ce

_08063424:	.4byte 0x0203EBE0
_08063428:	.4byte 0x0203EE60

_0806342c:
	add		r0, sp, #0x48
	add		r1, sp, #0x4
	add		r2, r7, #0x0
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x6C]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x6C]
	cmp		r0, #0x0
	bne		_08063418
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _080634a8
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _080634ac
	str		r4, [sp, #0x0]
	mov		r1, r9
	add		r2, sp, #0x4
	add		r3, r7, #0x0
	bl		sub_0806131c
	cmp		r0, #0x0
	beq		_08063418
	mov		r0, #0x1
	mov		r8, r0
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _080634b0
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_080634b4
	bl		sub_080616d4
	b		_080634ca

_080634a8:	.4byte 0x081146dc
_080634ac:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_080634b0:	.4byte 0x08114758

_080634b4:
	bl		sub_08075768
	ldr		r4, _080634e4
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_080634ca:
	bl		sub_080646b4
_080634ce:
	mov		r1, r8
	cmp		r1, #0x0
	ble		_080634ec
	ldr		r0, _080634e8
	add		r0, r10
	ldr		r1, [sp, #0x70]
	bl		sub_08059b60
	mov		r0, #0x1
	b		_080634ee

.align 2, 0
.pool

_080634e4:	.4byte 0x080270F1
_080634e8:	.4byte 0x00000552

_080634ec:
	mov		r0, #0x0
_080634ee:
	add		sp, #0x74
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_080633c0

	thumb_func_start sub_08063500
sub_08063500:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x5c
	ldr		r0, _08063564
	mov		r9, r0
	ldr		r0, _08063568
	ldr		r4, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_08060bf4
	ldr		r1, _0806356c
	mov		r8, r1
	ldr		r7, _08063570
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r8
	add		r6, sp, #0x30
	add		r5, sp, #0x58
	mov		r3, #0x10
_0806352c:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08063536
	add		r0, #0x20
_08063536:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_0806352c
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, r7, #0x0
	add		r1, sp, #0x10
	add		r2, r6, #0x0
	add		r3, r5, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08063574
_08063556:
	bl		sub_080616d4
	ldr		r0, [sp, #0x58]
	bl		sub_08064328
	mov		r0, #0x0
	b		_080635f8

_08063564:	.4byte 0x0810fca8 @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/rule.cgb"
_08063568:	.4byte 0x0203EBE0
_0806356c:	.4byte 0x0203EE60
_08063570:	.4byte 0x0203EE78

_08063574:
	add		r0, sp, #0x30
	add		r1, r7, #0x0
	mov		r2, r8
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x58]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x58]
	cmp		r0, #0x0
	bne		_08063556
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08063608
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	add		r5, sp, #0x54
	ldr		r0, _0806360c
	add		r3, r4, r0
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	ldr		r1, _08063610
	add		r4, r4, r1
	ldr		r0, _08063614
	ldr		r1, [r0, #0x0]
	ldr		r0, _08063618
	add		r1, r1, r0
	str		r2, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r7, [sp, #0x8]
	mov		r0, r8
	str		r0, [sp, #0xC]
	mov		r0, r9
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f44
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_080635f0
	cmp		r4, #0x0
	beq		_080635f0
	ldrh	r0, [r5, #0x0]
	str		r0, [r4, #0x0]
_080635f0:
	str		r1, [sp, #0x58]
	cmp		r1, #0x0
	bne		_08063556
	mov		r0, #0x1
_080635f8:
	add		sp, #0x5c
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08063608:	.4byte 0x081146dc
_0806360c:	.4byte 0x0000094C
_08063610:	.4byte 0x00005F0C
_08063614:	.4byte 0x0203EBE0
_08063618:	.4byte 0x0000054C
	thumb_func_end sub_08063500

	thumb_func_start sub_0806361c
sub_0806361c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	ldr		r0, _08063638
	ldr		r0, [r0, #0x0]
	ldr		r1, _0806363c
	add		r7, r0, r1
	ldr		r2, _08063640
	add		r6, r0, r2
	add		r1, r7, #0x0
	b		_0806364a

_08063638:	.4byte 0x0203EBE0
_0806363c:	.4byte 0x00005F14
_08063640:	.4byte 0x0000094C

_08063644:
	strb	r0, [r1, #0x0]
	add		r6, #0x1
	add		r1, #0x1
_0806364a:
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_08063644
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	ldrb	r0, [r6, #0x0]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r1, #0x38
	add		r1, r1, r7
	mov		r8, r1
	mov		r2, #0x39
	add		r2, r2, r7
	mov		r9, r2
	mov		r1, #0x3a
	add		r1, r1, r7
	mov		r10, r1
	add		r2, r7, #0x0
	add		r2, #0x3b
	str		r2, [sp, #0x8]
	add		r1, r7, #0x0
	add		r1, #0x3c
	str		r1, [sp, #0xC]
	add		r2, #0x2
	str		r2, [sp, #0x10]
	add		r1, #0x2
	str		r1, [sp, #0x14]
	cmp		r0, #0x9
	bls		_08063694
_08063686:
	add		r6, #0x1
	ldrb	r0, [r6, #0x0]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_08063686
_08063694:
	add		r0, r6, #0x0
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x18]
	add		r0, r6, #0x0
	add		r0, #0xa
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x1c]
	add		r0, r6, #0x0
	add		r0, #0x14
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x30]
	add		r0, r6, #0x0
	add		r0, #0x1e
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x34]
	add		r6, #0x28
	add		r0, r6, #0x0
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x20]
	add		r0, r6, #0x0
	add		r0, #0xa
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x24]
	add		r0, r6, #0x0
	add		r0, #0x14
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x28]
	add		r0, r6, #0x0
	add		r0, #0x1e
	mov		r1, sp
	bl		sub_08059cb4
	mov		r0, sp
	bl		sub_08059fd4
	str		r0, [r7, #0x2c]
	add		r0, r6, #0x0
	add		r0, #0x28
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x29
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r4, r4, #0x4
	add		r4, r4, r0
	mov		r5, #0x0
	mov		r2, r8
	strb	r4, [r2, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x2a
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x2b
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r4, r4, #0x4
	add		r4, r4, r0
	mov		r0, r9
	strb	r4, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x2c
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x2d
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r4, r4, #0x4
	add		r4, r4, r0
	mov		r1, r10
	strb	r4, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x2e
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x2f
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r4, r4, #0x4
	add		r4, r4, r0
	ldr		r2, [sp, #0x8]
	strb	r4, [r2, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x32
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x33
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldr		r0, [sp, #0xC]
	strb	r1, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x36
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x37
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldr		r2, _08063814
	add		r0, r7, r2
	strb	r1, [r0, #0x0]
	ldr		r1, _08063818
	add		r0, r7, r1
	strb	r5, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x3a
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	add		r4, r0, #0x0
	add		r0, r6, #0x0
	add		r0, #0x3b
	ldrb	r0, [r0, #0x0]
	bl		sub_08059ed8
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	ldr		r2, [sp, #0x10]
	strb	r1, [r2, #0x0]
	add		r4, r6, #0x0
	add		r4, #0x3e
	ldr		r5, [sp, #0x14]
	b		_08063828

.align 2, 0
.pool

_08063814:	.4byte 0x0000035E
_08063818:	.4byte 0x0000035F

_0806381c:
	add		r0, r1, #0x0
	bl		sub_08013e3c
	strb	r0, [r5, #0x0]
	add		r5, #0x1
	add		r4, #0x2
_08063828:
	ldrb	r1, [r4, #0x0]
	ldrb	r0, [r4, #0x1]
	lsl		r0, r0, #0x8
	orr		r1, r0
	cmp		r1, #0x0
	bne		_0806381c
	mov		r0, #0x0
	strb	r0, [r5, #0x0]
	mov		r0, #0x0
	str		r0, [r7, #0x14]
	bl		sub_080281d4
	ldr		r1, _08063864
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063868
	bl		sub_080616d4
	b		_0806387e

.align 2, 0
.pool

_08063864:	.4byte 0x08114758

_08063868:
	bl		sub_08075768
	ldr		r4, _080638ac
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_0806387e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_0806389a
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_0806389a:
	mov		r0, #0x1
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080638ac:	.4byte 0x080270F1
	thumb_func_end sub_0806361c

	thumb_func_start sub_080638b0
sub_080638b0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	ldr		r0, _080638fc
	ldr		r6, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08060bf4
	ldr		r1, _08063900
	add		r7, r6, r1
	ldr		r2, _08063904
	mov		r9, r2
	ldr		r1, _08063908
	mov		r10, r1
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r9
	mov		r3, #0x10
_080638dc:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_080638e6
	add		r0, #0x20
_080638e6:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080638dc
	bl		sub_08063500
	cmp		r0, #0x0
	bne		_0806390c
	mov		r0, #0x0
	b		_08063bbc

_080638fc:	.4byte 0x0203EBE0
_08063900:	.4byte 0x00005F14
_08063904:	.4byte 0x0203EE60
_08063908:	.4byte 0x0203EE78

_0806390c:
	mov		r2, #0xa5
	lsl		r2, r2, #0x1
	add		r5, r6, r2
	ldr		r1, _0806396c
	ldr		r2, _08063970
	ldr		r0, _08063974
	add		r4, r6, r0
	add		r0, r5, #0x0
	add		r3, r4, #0x0
	bl		sub_0806216c
	mov		r8, r5
	ldr		r1, _08063978
	add		r2, r6, r1
	mov		r3, #0x1
_0806392a:
	ldrb	r1, [r4, #0x0]
	cmp		r1, #0xa
	beq		_08063940
	cmp		r1, #0xd
	beq		_08063940
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	add		r4, #0x1
	cmp		r1, r0
	beq		_0806392a
	mov		r3, #0x0
_08063940:
	cmp		r3, #0x0
	bne		_080639ec
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _0806397c
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063980
	bl		sub_080616d4
	b		_08063996

_0806396c:	.4byte 0x0810fcf0 @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/"
_08063970:	.4byte 0x08110174
_08063974:	.4byte 0x0000094C
_08063978:	.4byte 0x00005F14
_0806397c:	.4byte 0x08114758

_08063980:
	bl		sub_08075768
	ldr		r4, _080639e4
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063996:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_080639b2
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_080639b2:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080639e8
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08063b28

.align 2, 0
.pool

_080639e4:	.4byte 0x080270F1
_080639e8:	.4byte 0x08110178

_080639ec:
	ldr		r2, _08063a34
	add		r0, r6, r2
	add		r4, sp, #0x14
	add		r1, r4, #0x0
	bl		sub_08059b60
	add		r0, r4, #0x0
	bl		sub_08059a88
	add		r1, r0, #0x0
	ldr		r0, [r7, #0x20]
	cmp		r1, r0
	blt		_08063a0c
	ldr		r0, [r7, #0x24]
	cmp		r1, r0
	ble		_08063aa8
_08063a0c:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063a38
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063a3c
	bl		sub_080616d4
	b		_08063a52

_08063a34:	.4byte 0x00000552
_08063a38:	.4byte 0x08114758

_08063a3c:
	bl		sub_08075768
	ldr		r4, _08063aa0
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063a52:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063a6e
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063a6e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08063aa4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08063b28

.align 2, 0
.pool

_08063aa0:	.4byte 0x080270F1
_08063aa4:	.4byte 0x08110198

_08063aa8:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063b34
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r0, _08063b38
	add		r3, r6, r0
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	ldr		r1, _08063b3c
	add		r5, r6, r1
	ldr		r0, _08063b40
	ldr		r1, [r0, #0x0]
	ldr		r0, _08063b44
	add		r1, r1, r0
	str		r2, [sp, #0x0]
	add		r2, sp, #0x10
	str		r2, [sp, #0x4]
	mov		r0, r10
	str		r0, [sp, #0x8]
	mov		r2, r9
	str		r2, [sp, #0xC]
	mov		r0, r8
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f44
	mov		r0, #0x6
	bl		sub_08061048
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_08063afe
	cmp		r5, #0x0
	beq		_08063afe
	add		r0, sp, #0x10
	ldrh	r0, [r0, #0x0]
	str		r0, [r5, #0x0]
_08063afe:
	cmp		r4, #0x0
	beq		_08063b48
	bl		sub_080616d4
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063b22
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063b22:
	add		r0, r4, #0x0
	bl		sub_080610ec
_08063b28:
	mov		r0, #0x0
	bl		sub_080602f0
	mov		r0, #0x0
	b		_08063bbc

.align 2, 0
.pool

_08063b34:	.4byte 0x081146dc
_08063b38:	.4byte 0x0000094C
_08063b3c:	.4byte 0x00005F0C
_08063b40:	.4byte 0x0203EBE0
_08063b44:	.4byte 0x0000054C

_08063b48:
	ldr		r1, _08063b7c
	add		r0, r7, r1
	ldrb	r1, [r0, #0x0]
	ldr		r2, _08063b80
	add		r0, r7, r2
	strb	r1, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063b84
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063b88
	bl		sub_080616d4
	b		_08063b9e

_08063b7c:	.4byte 0x0000035E
_08063b80:	.4byte 0x0000035F
_08063b84:	.4byte 0x08114758

_08063b88:
	bl		sub_08075768
	ldr		r4, _08063bcc
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063b9e:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063bba
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063bba:
	mov		r0, #0x1
_08063bbc:
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08063bcc:	.4byte 0x080270F1
	thumb_func_end sub_080638b0

	thumb_func_start sub_08063bd0
sub_08063bd0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x98
	ldr		r0, _08063c64
	mov		r9, r0
	ldr		r0, _08063c68
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x90]
	ldr		r1, _08063c6c
	add		r1, r0, r1
	str		r1, [sp, #0x94]
	bl		sub_08060bf4
	ldr		r2, _08063c70
	mov		r10, r2
	ldr		r2, [sp, #0x94]
	ldr		r1, [r2, #0x14]
	add		r7, r1, #0x0
	add		r7, #0x14
	bl		sub_08060e48
	add		r2, r0, #0x0
	mov		r1, r10
	add		r5, sp, #0x3c
	add		r6, sp, #0x5c
	add		r4, sp, #0x84
	mov		r3, #0x10
_08063c0c:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08063c16
	add		r0, #0x20
_08063c16:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08063c0c
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_080646fc
	add		r0, sp, #0x18
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	add		r3, r4, #0x0
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08063c74
_08063c3a:
	bl		sub_080616d4
	ldr		r4, [sp, #0x84]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063c5c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063c5c:
	add		r0, r4, #0x0
	bl		sub_080610ec
	b		_08063dae

_08063c64:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08063c68:	.4byte 0x0203EBE0
_08063c6c:	.4byte 0x00005F14
_08063c70:	.4byte 0x0203EE60

_08063c74:
	add		r0, sp, #0x5c
	add		r1, sp, #0x18
	mov		r2, r10
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r0, [sp, #0x84]
	mov		r8, r0
	cmp		r0, #0x0
	bne		_08063c3a
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _08063d1c
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	str		r4, [sp, #0x0]
	ldr		r0, _08063d20
	str		r0, [sp, #0x4]
	ldr		r0, _08063d24
	str		r0, [sp, #0x8]
	mov		r0, r9
	add		r1, r7, #0x0
	add		r2, sp, #0x18
	mov		r3, r10
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_08063c3a
	ldr		r1, [sp, #0x90]
	ldr		r2, _08063d28
	add		r0, r1, r2
	add		r4, sp, #0x88
	add		r1, r4, #0x0
	bl		sub_08059b60
	add		r0, r4, #0x0
	bl		sub_08059a88
	add		r1, r0, #0x0
	ldr		r2, [sp, #0x94]
	ldr		r0, [r2, #0x20]
	cmp		r1, r0
	blt		_08063cf4
	ldr		r0, [r2, #0x24]
	cmp		r1, r0
	ble		_08063dc4
_08063cf4:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063d2c
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063d30
	bl		sub_080616d4
	b		_08063d46

_08063d1c:	.4byte 0x081146dc
_08063d20:	.4byte 0x0810fd70 @ "http://gameboy.datacenter.ne.jp/cgb/upload?name=/01/AGB-AMKJ/"
_08063d24:	.4byte 0x08110168 @ "0.entry.cgb"
_08063d28:	.4byte 0x00000552
_08063d2c:	.4byte 0x08114758

_08063d30:
	bl		sub_08075768
	ldr		r4, _08063db8
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063d46:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063d62
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063d62:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08063dbc
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08063dc0
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
_08063dae:
	mov		r0, #0x0
	bl		sub_080602f0
	mov		r0, #0x0
	b		_08063ef6

_08063db8:	.4byte 0x080270F1
_08063dbc:	.4byte 0x081101b8
_08063dc0:	.4byte 0x081101e4

_08063dc4:
	add		r6, sp, #0x80
	mov		r0, #0x86
	lsl		r0, r0, #0x5
	mov		r9, r0
	ldr		r4, _08063e44
	ldr		r0, [r4, #0x0]
	ldr		r1, _08063e48
	add		r7, r0, r1
	add		r0, r5, #0x0
	bl		sub_080615d4
	cmp		r0, #0x0
	beq		_08063e1a
	ldr		r1, [r4, #0x0]
	ldr		r2, _08063e4c
	add		r1, r1, r2
	mov		r0, r9
	str		r0, [sp, #0x0]
	mov		r2, r8
	str		r2, [sp, #0x4]
	str		r2, [sp, #0x8]
	str		r6, [sp, #0xC]
	add		r0, sp, #0x18
	str		r0, [sp, #0x10]
	mov		r2, r10
	str		r2, [sp, #0x14]
	add		r0, r5, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r3, r7, #0x0
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r1, #0x1
	cmp		r0, #0x0
	beq		_08063e14
	sub		r1, #0x2
_08063e14:
	cmp		r1, #0x0
	bge		_08063e1a
	b		_08063c3a
_08063e1a:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08063e50
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08063e54
	bl		sub_080616d4
	b		_08063e6a

.align 2, 0
.pool

_08063e44:	.4byte 0x0203EBE0
_08063e48:	.4byte 0x00004E4C
_08063e4c:	.4byte 0x0000054C
_08063e50:	.4byte 0x08114758

_08063e54:
	bl		sub_08075768
	ldr		r4, _08063f08
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08063e6a:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063e86
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063e86:
	ldr		r0, [sp, #0x94]
	mov		r2, #0xd8
	lsl		r2, r2, #0x2
	add		r1, r0, r2
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	bl		sub_08057370
	ldr		r1, _08063f0c
	add		r0, r0, r1
	ldr		r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x7
	orr		r1, r2
	str		r1, [r0, #0x0]
	ldr		r2, [sp, #0x90]
	ldr		r0, _08063f10
	add		r4, r2, r0
	bl		sub_08057370
	mov		r2, #0xee
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	mov		r2, #0x0
	ldr		r3, _08063f14
_08063eb8:
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	bls		_08063eb8
	bl		sub_08057428
	bl		sub_0805c408
	add		r4, r0, #0x0
	cmp		r4, #0x0
	bne		_08063ef4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08063f18
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	bl		sub_08013e9c
_08063ef4:
	mov		r0, #0x1
_08063ef6:
	add		sp, #0x98
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08063f08:	.4byte 0x080270F1
_08063f0c:	.4byte 0x00000BE8
_08063f10:	.4byte 0x00005F14
_08063f14:	.4byte 0x00000363
_08063f18:	.4byte 0x081101e4
	thumb_func_end sub_08063bd0

	thumb_func_start sub_08063f1c
sub_08063f1c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xa8
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	str		r0, [sp, #0x90]
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	str		r1, [sp, #0x94]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	str		r2, [sp, #0x98]
	ldr		r0, _08063fc0
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x9C]
	ldr		r1, _08063fc4
	add		r1, r0, r1
	str		r1, [sp, #0xA0]
	bl		sub_08060bf4
	ldr		r2, [sp, #0xA0]
	ldr		r1, [r2, #0x14]
	add		r1, #0x14
	str		r1, [sp, #0xA4]
	bl		sub_08060e48
	add		r2, r0, #0x0
	ldr		r1, _08063fc8
	add		r4, sp, #0x3c
	add		r5, sp, #0x5c
	add		r7, sp, #0x84
	mov		r9, r7
	mov		r3, #0x10
_08063f64:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	cmp		r0, #0x0
	beq		_08063f6e
	add		r0, #0x20
_08063f6e:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_08063f64
	mov		r0, #0x0
	bl		sub_080281d4
	add		r0, sp, #0x18
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	mov		r3, r9
	bl		sub_08061258
	cmp		r0, #0x0
	bge		_08063fcc
_08063f8e:
	bl		sub_080616d4
	ldr		r4, [sp, #0x84]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08063fb0
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08063fb0:
	add		r0, r4, #0x0
	bl		sub_080610ec
_08063fb6:
	mov		r0, #0x0
	bl		sub_080602f0
	b		_08064260

.align 2, 0
.pool

_08063fc0:	.4byte 0x0203EBE0
_08063fc4:	.4byte 0x00005F14
_08063fc8:	.4byte 0x0203EE60

_08063fcc:
	add		r0, sp, #0x5c
	add		r1, sp, #0x18
	ldr		r2, _080640ac
	bl		sub_08076448
	mov		r0, #0x6
	bl		sub_08061048
	str		r0, [sp, #0x84]
	mov		r0, #0xc5
	bl		sub_08070808
	ldr		r6, [sp, #0x84]
	cmp		r6, #0x0
	bne		_08063f8e
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	ldr		r1, _080640b0
	mov		r0, #0x0
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	mov		r0, r9
	str		r0, [sp, #0x0]
	ldr		r0, _080640b4
	str		r0, [sp, #0x4]
	ldr		r0, _080640b8
	str		r0, [sp, #0x8]
	ldr		r0, _080640bc
	ldr		r1, [sp, #0xA4]
	add		r2, sp, #0x18
	ldr		r3, _080640ac
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	beq		_08063f8e
	add		r1, sp, #0x80
	mov		r8, r1
	mov		r10, r9
	ldr		r7, _080640c0
	ldr		r4, [r7, #0x0]
	bl		sub_080615d4
	cmp		r0, #0x0
	beq		_08064096
	add		r3, r4, #0x0
	add		r3, #0x4a
	strb	r6, [r3, #0x0]
	ldr		r2, _080640c4
	add		r0, r4, r2
	mov		r2, #0x8a
	lsl		r2, r2, #0x6
	ldr		r1, _080640c8
	add		r4, r4, r1
	ldr		r1, [r7, #0x0]
	ldr		r7, _080640cc
	add		r1, r1, r7
	str		r6, [sp, #0x0]
	str		r0, [sp, #0x4]
	str		r2, [sp, #0x8]
	mov		r0, r8
	str		r0, [sp, #0xC]
	add		r2, sp, #0x18
	str		r2, [sp, #0x10]
	ldr		r7, _080640ac
	str		r7, [sp, #0x14]
	add		r0, r5, #0x0
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	bl		sub_08079f78
	mov		r0, #0x6
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_08064084
	cmp		r4, #0x0
	beq		_08064084
	mov		r2, r8
	ldrh	r0, [r2, #0x0]
	str		r0, [r4, #0x0]
_08064084:
	mov		r4, r10
	str		r1, [r4, #0x0]
	mov		r0, #0x1
	cmp		r1, #0x0
	beq		_08064090
	sub		r0, #0x2
_08064090:
	cmp		r0, #0x0
	bge		_08064096
	b		_08063f8e
_08064096:
	ldr		r0, _080640c0
	ldr		r3, [r0, #0x0]
	ldr		r7, _080640c4
	add		r2, r3, r7
	ldr		r1, _080640c8
	add		r0, r3, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080640d0
	mov		r6, #0x0
	b		_080640f0

_080640ac:	.4byte 0x0203EE60
_080640b0:	.4byte 0x081146dc
_080640b4:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_080640b8:	.4byte 0x081100dc @ "total.cgb"
_080640bc:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_080640c0:	.4byte 0x0203EBE0
_080640c4:	.4byte 0x0000094C
_080640c8:	.4byte 0x00005F0C
_080640cc:	.4byte 0x0000054C

_080640d0:
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	ldr		r4, _0806415c
	add		r2, r3, r4
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x10
	add		r0, r0, r1
	ldr		r7, _08064160
	add		r2, r3, r7
	ldrb	r1, [r2, #0x0]
	lsl		r1, r1, #0x8
	add		r4, #0x2
	add		r2, r3, r4
	add		r0, r0, r1
	ldrb	r2, [r2, #0x0]
	add		r6, r0, r2
_080640f0:
	mov		r7, r9
	str		r7, [sp, #0x0]
	ldr		r0, _08064164
	str		r0, [sp, #0x4]
	ldr		r0, _08064168
	str		r0, [sp, #0x8]
	ldr		r0, _0806416c
	ldr		r1, [sp, #0xA4]
	add		r2, sp, #0x18
	ldr		r3, _08064170
	bl		sub_08062208
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08064110
	b		_08063f8e
_08064110:
	ldr		r1, [sp, #0x9C]
	ldr		r2, _08064174
	add		r0, r1, r2
	add		r4, sp, #0x88
	add		r1, r4, #0x0
	bl		sub_08059b60
	add		r0, r4, #0x0
	bl		sub_08059a88
	add		r1, r0, #0x0
	ldr		r4, [sp, #0xA0]
	ldr		r0, [r4, #0x28]
	cmp		r1, r0
	blt		_08064134
	ldr		r0, [r4, #0x2c]
	cmp		r1, r0
	ble		_080641c0
_08064134:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08064178
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_0806417c
	bl		sub_080616d4
	b		_08064192

_0806415c:	.4byte 0x0000094D
_08064160:	.4byte 0x0000094E
_08064164:	.4byte 0x0810fd30 @ "http://gameboy.datacenter.ne.jp/cgb/ranking?name=/01/AGB-AMKJ/"
_08064168:	.4byte 0x081100e8 @ "query.cgb"
_0806416c:	.4byte 0x0810fc5c @ "http://gameboy.datacenter.ne.jp/cgb/download?name=/01/AGB-AMKJ/index.cgb"
_08064170:	.4byte 0x0203EE60
_08064174:	.4byte 0x00000552
_08064178:	.4byte 0x08114758

_0806417c:
	bl		sub_08075768
	ldr		r4, _080641b8
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_08064192:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_080641ae
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_080641ae:
	ldr		r1, _080641bc
	mov		r0, #0x3
	bl		sub_08013d0c
	b		_08063fb6

_080641b8:	.4byte 0x080270F1
_080641bc:	.4byte 0x08114438

_080641c0:
	ldr		r7, [sp, #0x90]
	lsl		r1, r7, #0x10
	asr		r1, r1, #0x10
	add		r0, sp, #0x18
	str		r0, [sp, #0x0]
	ldr		r2, _0806420c
	str		r2, [sp, #0x4]
	mov		r4, r9
	str		r4, [sp, #0x8]
	str		r6, [sp, #0xC]
	add		r0, r5, #0x0
	ldr		r2, [sp, #0x94]
	ldr		r3, [sp, #0x98]
	bl		sub_08061754
	cmp		r0, #0x0
	bge		_080641e4
	b		_08063f8e
_080641e4:
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _08064210
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_08064214
	bl		sub_080616d4
	b		_0806422a

_0806420c:	.4byte 0x0203EE60
_08064210:	.4byte 0x08114758

_08064214:
	bl		sub_08075768
	ldr		r4, _08064258
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_0806422a:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08064246
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08064246:
	ldr		r7, [sp, #0x9C]
	ldr		r1, _0806425c
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08064260
	mov		r0, #0x1
	b		_08064262

.align 2, 0
.pool

_08064258:	.4byte 0x080270F1
_0806425c:	.4byte 0x00005F0C

_08064260:
	mov		r0, #0x0
_08064262:
	add		sp, #0xa8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x64272, 0x3A
	thumb_func_end sub_08063f1c

	thumb_func_start sub_080642ac
sub_080642ac:
	push	{ r4, lr }
	mov		r0, #0x0
	bl		sub_080281d4
	ldr		r1, _080642d8
	mov		r0, #0x3
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0807734c
	mov		r0, #0x6
	bl		sub_08061048
	cmp		r0, #0x0
	beq		_080642dc
	bl		sub_080616d4
	b		_080642f2

.align 2, 0
.pool

_080642d8:	.4byte 0x08114758

_080642dc:
	bl		sub_08075768
	ldr		r4, _080642f8
	mov		r0, #0x6
	add		r1, r4, #0x0
	bl		sub_0807df68
	mov		r0, #0x7
	add		r1, r4, #0x0
	bl		sub_0807df68
_080642f2:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080642f8:	.4byte 0x080270f1
	thumb_func_end sub_080642ac

	thumb_func_start sub_080642fc
sub_080642fc:
	add		r2, r0, #0x0
	mov		r3, #0x0
_08064300:
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x2f
	ble		_0806430a
	cmp		r1, #0x39
	ble		_08064310
_0806430a:
	mov		r0, #0x1
	neg		r0, r0
	b		_08064326
_08064310:
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	add		r3, r0, #0x0
	sub		r3, #0x30
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2e
	bne		_08064300
	add		r0, r3, #0x0
_08064326:
	bx		lr
	thumb_func_end sub_080642fc

	thumb_func_start sub_08064328
sub_08064328:
	push	{ r4, lr }
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_08064348
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08064348:
	add		r0, r4, #0x0
	bl		sub_080610ec
	mov		r0, #0x0
	bl		sub_080602f0
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x6435A, 0x9A
	thumb_func_end sub_08064328

	thumb_func_start sub_080643f4
sub_080643f4:
	push	{ r4, lr }
	add		r4, r3, #0x0
	bl		sub_08076448
	add		r0, r4, #0x0
	bl		sub_08061048
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080643f4

	thumb_func_start sub_08064408
sub_08064408:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x14
	mov		r12, r1
	add		r7, r3, #0x0
	ldr		r3, [sp, #0x28]
	ldr		r4, [sp, #0x2c]
	ldr		r5, [sp, #0x30]
	ldr		r1, _08064458
	ldr		r1, [r1, #0x0]
	ldr		r6, _0806445c
	add		r1, r1, r6
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	str		r2, [sp, #0x0]
	add		r2, sp, #0x10
	str		r2, [sp, #0x4]
	str		r3, [sp, #0x8]
	str		r4, [sp, #0xc]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	mov		r3, r12
	bl		sub_08079f44
	add		r0, r5, #0x0
	bl		sub_08061048
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_0806444c
	cmp		r7, #0x0
	beq		_0806444c
	add		r0, sp, #0x10
	ldrh	r0, [r0, #0x0]
	str		r0, [r7, #0x0]
_0806444c:
	add		r0, r1, #0x0
	add		sp, #0x14
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08064458:	.4byte 0x0203EBE0
_0806445c:	.4byte 0x0000054C
	thumb_func_end sub_08064408

	thumb_func_start sub_08064460
sub_08064460:
	push	{ r4, r5, lr }
	add		r4, r1, #0x0
	add		r1, r0, #0x0
	cmp		r2, #0x0
	ble		_08064496
_0806446a:
	add		r0, r4, #0x0
	sub		r4, #0x1
	cmp		r0, #0x0
	ble		_080644b2
	ldrb	r3, [r1, #0x0]
	add		r1, #0x1
	cmp		r3, #0xd
	beq		_0806447e
	cmp		r3, #0xa
	bne		_0806446a
_0806447e:
	cmp		r4, #0x0
	ble		_08064490
	cmp		r3, #0xd
	bne		_08064490
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0xa
	bne		_08064490
	sub		r4, #0x1
	add		r1, #0x1
_08064490:
	sub		r2, #0x1
	cmp		r2, #0x0
	bgt		_0806446a
_08064496:
	mov		r2, #0x0
	ldr		r5, _0806449c
	b		_080644a6

_0806449c:	.4byte 0x0203ED58

_080644a0:
	add		r0, r2, r5
	strb	r3, [r0, #0x0]
	add		r2, #0x1
_080644a6:
	cmp		r2, #0xff
	bgt		_080644c2
	add		r0, r4, #0x0
	sub		r4, #0x1
	cmp		r0, #0x0
	bgt		_080644b6
_080644b2:
	mov		r0, #0x0
	b		_080644ca
_080644b6:
	ldrb	r3, [r1, #0x0]
	add		r1, #0x1
	cmp		r3, #0xd
	beq		_080644c2
	cmp		r3, #0xa
	bne		_080644a0
_080644c2:
	ldr		r0, _080644d0
	add		r2, r2, r0
	mov		r1, #0x0
	strb	r1, [r2, #0x0]
_080644ca:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_080644d0:	.4byte 0x0203ED58
	thumb_func_end sub_08064460

	thumb_func_start sub_080644d4
sub_080644d4:
	push	{ r4, lr }
	add		r2, r0, #0x0
	add		r4, r2, #0x0
	ldr		r3, _080644e0
	b		_080644ee

.align 2, 0
.pool

_080644e0:	.4byte 0x0810fea8 @ "http://gameboy.datacenter.ne.jp/cgb/"

_080644e4:
	ldrb	r0, [r2, #0x0]
	add		r2, #0x1
	add		r3, #0x1
	cmp		r1, r0
	bne		_08064512
_080644ee:
	ldrb	r1, [r3, #0x0]
	cmp		r1, #0x0
	bne		_080644e4
	b		_080644fe
_080644f6:
	add		r2, #0x1
	cmp		r0, #0x2f
	bne		_080644fe
	add		r4, r2, #0x0
_080644fe:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080644f6
	add		r2, r4, #0x0
	mov		r3, #0x0
_08064508:
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x2f
	ble		_08064512
	cmp		r1, #0x39
	ble		_08064518
_08064512:
	mov		r0, #0x1
	neg		r0, r0
	b		_0806452e
_08064518:
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	add		r0, r0, r1
	add		r3, r0, #0x0
	sub		r3, #0x30
	add		r2, #0x1
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2e
	bne		_08064508
	add		r0, r3, #0x0
_0806452e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080644d4

	thumb_func_start sub_08064534
sub_08064534:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	add		r4, r2, #0x0
	lsl		r0, r4, #0x1
	add		r6, r0, r7
_08064540:
	cmp		r4, #0x0
	ble		_0806457c
	sub		r6, #0x2
	sub		r4, #0x1
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807de68
	lsl		r0, r0, #0x8
	ldr		r1, _08064584
	add		r0, r0, r1
	strh	r0, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08064540
	cmp		r4, #0x0
	ble		_0806457c
	ldr		r0, _08064588
	add		r1, r0, #0x0
	lsl		r0, r4, #0x1
	add		r0, r0, r7
_08064572:
	sub		r0, #0x2
	sub		r4, #0x1
	strh	r1, [r0, #0x0]
	cmp		r4, #0x0
	bgt		_08064572
_0806457c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08064584:	.4byte 0x00004F82
_08064588:	.4byte 0x00004081
	thumb_func_end sub_08064534

	thumb_func_start sub_0806458c
sub_0806458c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x1c
	mov		r8, r1
	ldr		r5, [sp, #0x34]
	ldr		r6, [sp, #0x38]
	mov		r4, #0x0
	ldr		r1, _080645d4
	ldr		r1, [r1, #0x0]
	ldr		r7, _080645d8
	add		r1, r1, r7
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	str		r2, [sp, #0x0]
	str		r4, [sp, #0x4]
	str		r4, [sp, #0x8]
	add		r2, sp, #0x18
	str		r2, [sp, #0xc]
	str		r3, [sp, #0x10]
	str		r5, [sp, #0x14]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	mov		r3, r8
	bl		sub_08079f78
	add		r0, r6, #0x0
	bl		sub_08061048
	add		sp, #0x1c
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080645d4:	.4byte 0x0203EBE0
_080645d8:	.4byte 0x0000054C
	thumb_func_end sub_0806458c

	thumb_func_start sub_080645dc
sub_080645dc:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_0807734c
	add		r0, r4, #0x0
	bl		sub_08061048
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x645F0, 0xC4
	thumb_func_end sub_080645dc

	thumb_func_start sub_080646b4
sub_080646b4:
	push	{ lr }
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x7
	bl		sub_08061414
	cmp		r0, #0x0
	beq		_080646d2
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_080646d2:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x646D6, 0x26
	thumb_func_end sub_080646b4

	thumb_func_start sub_080646fc
sub_080646fc:
	push	{ r4, r5, r6, r7, lr }
	ldr		r0, _0806473c
	ldr		r0, [r0, #0x0]
	mov		r12, r0
	ldr		r3, _08064740
	add		r3, r12
	mov		r5, #0x0
	mov		r6, #0x0
	mov		r4, #0xf
_0806470e:
	ldrb	r1, [r3, #0x0]
	add		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	sub		r1, r6, r1
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_0806470e
	ldrb	r2, [r3, #0x0]
	add		r0, r5, r2
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08064744
	add		r0, r5, #0x1
	mul		r0, r5
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	add		r0, r6, r2
	b		_0806474e

_0806473c:	.4byte 0x0203EBE0
_08064740:	.4byte 0x00004E4C

_08064744:
	sub		r0, r5, #0x1
	mul		r0, r5
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	sub		r0, r6, r2
_0806474e:
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	add		r3, #0x1
	ldrb	r1, [r3, #0x0]
	add		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	add		r1, r6, r1
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	add		r3, #0x1
	mov		r7, #0x1
	mov		r4, #0x4
_08064768:
	ldrb	r1, [r3, #0x0]
	add		r2, r6, r1
	add		r0, r2, #0x0
	and		r0, r7
	cmp		r0, #0x0
	beq		_08064780
	add		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	sub		r0, r6, r1
	lsl		r0, r0, #0x18
	b		_08064788
_08064780:
	sub		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	lsl		r0, r2, #0x18
_08064788:
	lsr		r6, r0, #0x18
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08064768
	ldrb	r1, [r3, #0x0]
	add		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	add		r1, r6, r1
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	add		r3, #0x3
	ldrb	r0, [r3, #0x0]
	add		r1, r5, r0
	add		r0, r6, r0
	add		r3, #0x1
	ldrb	r2, [r3, #0x0]
	orr		r1, r2
	lsl		r1, r1, #0x18
	lsr		r5, r1, #0x18
	eor		r0, r2
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	add		r3, #0x1
	mov		r4, #0x80
	lsl		r4, r4, #0x5
_080647be:
	ldrb	r0, [r3, #0x0]
	eor		r5, r0
	add		r0, r6, r0
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_080647be
	mov		r4, #0xf
_080647d2:
	ldrb	r1, [r3, #0x0]
	add		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	eor		r6, r1
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080647d2
	mov		r4, #0xb
_080647e6:
	ldrb	r0, [r3, #0x0]
	eor		r5, r0
	sub		r0, r6, r0
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080647e6
	mov		r4, #0x7
_080647fa:
	ldrb	r1, [r3, #0x0]
	sub		r0, r5, r1
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	add		r1, r6, r1
	lsl		r1, r1, #0x18
	lsr		r6, r1, #0x18
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080647fa
	mov		r4, #0x7f
_08064812:
	ldrb	r0, [r3, #0x0]
	eor		r5, r0
	eor		r6, r0
	add		r3, #0x1
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_08064812
	ldr		r0, _08064834
	add		r0, r12
	strb	r5, [r0, #0x0]
	ldr		r0, _08064838
	add		r0, r12
	strb	r6, [r0, #0x0]
	mov		r0, #0x1
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08064834:	.4byte 0x00004E64
_08064838:	.4byte 0x00004E65
	thumb_func_end sub_080646fc

	thumb_func_start sub_0806483c
sub_0806483c:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	ldr		r0, _080648cc
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_08060c60
	add		r5, r0, #0x0
	ldr		r1, _080648d0
	add		r0, r4, #0x0
	bl		sub_08060cac
	add		r0, r5, #0x0
	bl		sub_08057980
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080648d4
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r2, _080648d8
	ldr		r1, [r2, #0x0]
	ldr		r0, _080648dc
	cmp		r1, r0
	bne		_080648c0
	ldr		r5, _080648e0
	add		r4, r2, #0x0
_0806489e:
	bl		_DrawFrameRunAudio
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_080648b8
	str		r5, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r4, #0x8]
_080648b8:
	ldr		r1, [r4, #0x0]
	ldr		r0, _080648dc
	cmp		r1, r0
	beq		_0806489e
_080648c0:
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_080648cc:	.4byte 0x0203EBE0
_080648d0:	.4byte 0x08110214
_080648d4:	.4byte 0x0811021c
_080648d8:	.4byte RunGameLogic_CallBack
_080648dc:	.4byte 0x0806483D
_080648e0:	.4byte 0x080658A5
	thumb_func_end sub_0806483c

	thumb_func_start sub_080648e4
sub_080648e4:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	add		r6, r0, #0x0
	ldr		r0, _0806499c
	ldr		r5, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_08060bf4
	add		r7, r0, #0x0
	add		r0, r6, #0x0
	bl		_MGBLoadUsername
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _080649a0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_DrawFrameRunAudio
	ldr		r4, _080649a4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080649a8
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x15
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _080649ac
	str		r0, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x1
	str		r0, [sp, #0x8]
	str		r4, [sp, #0xC]
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x5
	mov		r3, #0xc
	bl		sub_08064ea4
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08064992
	add		r0, r6, #0x0
	bl		sub_08057980
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		sub_08060cac
_08064992:
	add		r0, r4, #0x0
	add		sp, #0x10
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0806499c:	.4byte 0x0203EBE0
_080649a0:	.4byte 0x08094a9c
_080649a4:	.4byte 0x080951e4
_080649a8:	.4byte 0x08110264
_080649ac:	.4byte sub_080649b0
	thumb_func_end sub_080648e4

	thumb_func_start sub_080649b0
sub_080649b0:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x14
	add		r0, sp, #0xc
	bl		sub_080648e4
	cmp		r0, #0x0
	beq		_08064a82
	add		r0, sp, #0xc
	bl		sub_08057980
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08064a4c
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
	ldr		r2, _08064a50
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
	beq		_08064a58
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08064a54
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r0, #0x7
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_08064a76

_08064a4c:	.4byte 0x08110290
_08064a50:	.4byte 0x081102b4
_08064a54:	.4byte 0x081102d8

_08064a58:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08064a90
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x9
	bl		sub_08013e9c
_08064a76:
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x0
	bl		sub_080602f0
_08064a82:
	bl		sub_08060434
	mov		r0, #0x1
	add		sp, #0x14
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08064a90:	.4byte 0x081102fc
	thumb_func_end sub_080649b0

	thumb_func_start sub_08064a94
sub_08064a94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x10
	ldr		r0, _08064ae8
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	bl		sub_08060e48
	add		r5, r0, #0x0
	mov		r7, #0x0
	mov		r0, #0x14
	mov		r8, r0
	mov		r4, #0x7
	mov		r6, #0xf
_08064ab4:
	ldrb	r0, [r5, #0x0]
	add		r1, sp, #0xc
	strb	r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08064ac2
	mov		r7, #0x1
_08064ac2:
	cmp		r7, #0x0
	bne		_08064aec
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x2
	add		r2, sp, #0xc
	bl		sub_08013ec0
	b		_08064b0e

_08064ae8:	.4byte 0x0203EBE0

_08064aec:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xd
	str		r0, [sp, #0x4]
	mov		r0, r8
	str		r0, [sp, #0x8]
	add		r0, r4, #0x0
	mov		r1, #0x2
	ldr		r2, _08064b24
	bl		sub_08013ec0
_08064b0e:
	add		r4, #0x1
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_08064ab4
	add		sp, #0x10
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08064b24:	.4byte 0x08110660
	thumb_func_end sub_08064a94

	thumb_func_start sub_08064b28
sub_08064b28:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r0, _08064c0c
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x34]
	ldr		r2, _08064c10
	lsl		r0, r0, #0x1b
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08064b44
	add		r0, #0x3f
_08064b44:
	asr		r1, r0, #0x6
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	sub		r0, r0, r1
	ldr		r1, _08064c14
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
	mov		r1, #0x0
	mov		r8, r1
	mov		r7, #0x1f
	mov		r12, r7
	mov		r6, #0x1f
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r1, r1, r0
	mov		r10, r1
_08064b7c:
	ldr		r0, _08064c18
	mov		r7, r8
	lsl		r2, r7, #0x1
	add		r0, r2, r0
	ldrh	r1, [r0, #0x0]
	add		r3, r6, #0x0
	and		r3, r1
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x15
	mov		r0, r12
	and		r4, r0
	lsr		r1, r1, #0x1a
	and		r1, r0
	ldr		r0, _08064c1c
	add		r2, r2, r0
	ldrh	r2, [r2, #0x0]
	add		r0, r6, #0x0
	and		r0, r2
	lsl		r2, r2, #0x10
	lsr		r5, r2, #0x15
	mov		r7, r12
	and		r5, r7
	lsr		r2, r2, #0x1a
	and		r2, r7
	sub		r0, r0, r3
	mov		r7, r9
	mul		r7, r0
	add		r0, r7, #0x0
	asr		r0, r0, #0xf
	add		r3, r3, r0
	lsl		r3, r3, #0x10
	lsr		r3, r3, #0x10
	sub		r5, r5, r4
	mov		r0, r9
	mul		r0, r5
	asr		r0, r0, #0xf
	add		r4, r4, r0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	sub		r2, r2, r1
	mov		r0, r9
	mul		r0, r2
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
	mov		r0, r10
	strh	r3, [r0, #0x0]
	mov		r1, #0x2
	add		r10, r1
	mov		r7, #0x1
	add		r8, r7
	mov		r0, r8
	cmp		r0, #0x1
	ble		_08064b7c
	mov		r0, #0x1
	bl		sub_08028168
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08064c0c:	.4byte 0x0203EBE0
_08064c10:	.4byte 0x08101068
_08064c14:	.4byte 0x000003FF
_08064c18:	.4byte 0x08110662
_08064c1c:	.4byte 0x08110666
	thumb_func_end sub_08064b28

	thumb_func_start sub_08064c20
sub_08064c20:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	mov		r9, r2
	str		r3, [sp, #0xC]
	ldr		r0, [sp, #0x0+0x30]
	mov		r10, r0
	ldr		r0, [sp, #0x4+0x30]
	cmp		r0, #0x1
	bne		_08064c40
	b		_08064d90
_08064c40:
	cmp		r0, #0x1
	bgt		_08064c4a
	cmp		r0, #0x0
	beq		_08064c52
	b		_08064de6
_08064c4a:
	cmp		r0, #0x2
	bne		_08064c50
	b		_08064dcc
_08064c50:
	b		_08064de6
_08064c52:
	add		r0, r7, #0x0
	add		r0, #0x3a
	mov		r1, #0x0
	ldrsb	r1, [r0, r1]
	add		r3, r0, #0x0
	cmp		r1, #0x60
	bge		_08064c78
	ldr		r0, [r7, #0x34]
	mov		r1, #0x2f
	and		r0, r1
	ldr		r2, _08064c70
	cmp		r0, #0xf
	bgt		_08064c86
	ldr		r2, _08064c74
	b		_08064c86

_08064c70:	.4byte 0x080e47b0
_08064c74:	.4byte 0x080e4794

_08064c78:
	ldr		r0, [r7, #0x34]
	mov		r1, #0x2f
	and		r0, r1
	ldr		r2, _08064ccc
	cmp		r0, #0xf
	bgt		_08064c86
	ldr		r2, _08064cd0
_08064c86:
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	lsl		r0, r0, #0x3
	ldr		r1, [sp, #0x10+0x30]
	add		r1, r1, r0
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r0, r2, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	ldr		r0, [sp, #0xc+0x30]
	cmp		r0, #0x0
	beq		_08064cba
	ldr		r0, _08064cd4
	lsl		r1, r5, #0x3
	ldr		r2, _08064cd8
	add		r1, r1, r2
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08064cba:
	mov		r6, #0x0
	add		r1, sp, #0x8
	mov		r8, r1
	mov		r5, #0x0
	ldr		r0, [sp, #0x8+0x30]
	lsl		r0, r0, #0x3
	add		r4, r0, #0x4
	b		_08064d30

.align 2, 0
.pool

_08064ccc:	.4byte 0x080e47e8
_08064cd0:	.4byte 0x080e47cc
_08064cd4:	.4byte 0x080e4804
_08064cd8:	.4byte 0x08110648

_08064cdc:
	ldr		r2, [sp, #0xC]
	mov		r1, r10
	sub		r0, r2, r1
	cmp		r6, r0
	bne		_08064d14
	ldr		r0, [r7, #0x34]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08064d2c
	lsl		r0, r4, #0x10
	lsr		r0, r0, #0x10
	mov		r1, #0xe8
	lsl		r1, r1, #0xd
	orr		r0, r1
	str		r0, [sp, #0x8]
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _08064d10
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	b		_08064d2c

.align 2, 0
.pool

_08064d10:	.4byte 0x080e4820

_08064d14:
	mov		r2, r8
	strh	r4, [r2, #0x0]
	mov		r0, #0x1d
	strh		r0, [r2, #0x2]
	str		r5, [sp, #0x0]
	str		r5, [sp, #0x4]
	ldr		r0, _08064d84
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08064d2c:
	add		r4, #0x8
	add		r6, #0x1
_08064d30:
	mov		r0, r9
	cmp		r0, #0x16
	ble		_08064d38
	mov		r0, #0x16
_08064d38:
	cmp		r6, r0
	blt		_08064cdc
	ldr		r0, [r7, #0x34]
	mov		r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	beq		_08064de6
	mov		r0, r9
	cmp		r0, #0x16
	ble		_08064de6
	mov		r2, r10
	cmp		r2, #0x0
	ble		_08064d6a
	mov		r2, #0x0
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x18
	strh		r0, [r1, #0x2]
	ldr		r0, _08064d88
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_08064d6a:
	mov		r0, r10
	add		r0, #0x16
	cmp		r0, r9
	bge		_08064de6
	mov		r2, #0x0
	mov		r1, #0xe0
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x18
	strh		r0, [r1, #0x2]
	ldr		r0, _08064d8c
	b		_08064db8

_08064d84:	.4byte 0x080e4820
_08064d88:	.4byte 0x080e499c
_08064d8c:	.4byte 0x080e4994

_08064d90:
	ldr		r0, _08064dc4
	add		r1, r7, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x1e
	ble		_08064da2
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_08064da2:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	bgt		_08064de6
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _08064dc8
_08064db8:
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
	b		_08064de6

_08064dc4:	.4byte 0x00006B68
_08064dc8:	.4byte 0x080e478c

_08064dcc:
	mov		r2, #0x0
	mov		r1, #0xd8
	add		r0, sp, #0x8
	strh	r1, [r0, #0x0]
	add		r1, r0, #0x0
	mov		r0, #0x90
	strh		r0, [r1, #0x2]
	ldr		r0, _08064dfc
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r3, #0x0
	bl		sub_0802951c
_08064de6:
	bl		sub_08064b28
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08064dfc:	.4byte 0x080e478c
	thumb_func_end sub_08064c20

	thumb_func_start sub_08064e00
sub_08064e00:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	mov		r12, r2
	mov		r4, r12
	mov		r1, r12
	b		_08064e18
_08064e16:
	sub		r4, #0x1
_08064e18:
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_08064e26
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08064e16
_08064e26:
	mov		r8, r4
	ldr		r0, [sp, #0x0+0x20]
	lsl		r0, r0, #0x5
	add		r0, r3, r0
	lsl		r0, r0, #0x1
	add		r7, r7, r0
	mov		r6, #0x0
	cmp		r6, r12
	bge		_08064e94
	mov		r0, #0x1f
	mov		r10, r0
	ldr		r0, [sp, #0x4+0x20]
	lsl		r4, r0, #0xc
	ldr		r0, _08064e70
	mov		r9, r0
	add		r2, r7, #0x0
	add		r2, #0x40
	add		r3, r7, #0x0
_08064e4a:
	cmp		r6, r8
	bge		_08064e84
	ldr		r7, [sp, #0x8+0x20]
	cmp		r7, #0x0
	bne		_08064e74
	ldrb	r0, [r5, #0x0]
	lsr		r1, r0, #0x5
	lsl		r1, r1, #0x6
	mov		r7, r10
	and		r0, r7
	add		r1, r1, r0
	add		r0, r4, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	add		r1, #0x20
	orr		r1, r4
	strh	r1, [r2, #0x0]
	b		_08064e88

.align 2, 0
.pool

_08064e70:	.4byte 0x0000300A

_08064e74:
	mov		r0, r9
	strh	r0, [r3, #0x0]
	ldr		r7, _08064e80
	strh	r7, [r2, #0x0]
	b		_08064e88

.align 2, 0
.pool

_08064e80:	.4byte 0x0000302A

_08064e84:
	strh	r4, [r3, #0x0]
	strh	r4, [r2, #0x0]
_08064e88:
	add		r5, #0x1
	add		r2, #0x2
	add		r3, #0x2
	add		r6, #0x1
	cmp		r6, r12
	blt		_08064e4a
_08064e94:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_08064e00

	thumb_func_start sub_08064ea4
sub_08064ea4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xb8
	str		r0, [sp, #0x94]
	str		r1, [sp, #0x98]
	add		r7, r2, #0x0
	str		r3, [sp, #0x9C]
	mov		r0, #0x0
	mov		r9, r0
	mov		r1, #0x0
	str		r1, [sp, #0xA4]
	mov		r2, #0x0
	str		r2, [sp, #0xA8]
	ldr		r4, [sp, #0x4+0xd8]
	str		r4, [sp, #0xA0]
	ldr		r5, [sp, #0x94]
	ldr		r1, _08064f20
	add		r0, r5, r1
	ldr		r2, [sp, #0xA4]
	str		r2, [r0, #0x0]
	mov		r2, #0x0
	cmp		r2, r7
	bge		_08064ee8
	mov		r1, #0x0
_08064eda:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, r7
	blt		_08064eda
_08064ee8:
	mov		r2, #0x0
	sub		r6, r7, #0x1
	ldr		r4, [sp, #0x94]
	add		r4, #0x3a
	str		r4, [sp, #0xB4]
	cmp		r2, r7
	bge		_08064f18
	ldr		r5, [sp, #0x98]
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08064f18
	add		r3, r5, #0x0
_08064f00:
	mov		r1, sp
	add		r1, r1, r2
	add		r1, #0x14
	ldrb	r0, [r3, #0x0]
	strb	r0, [r1, #0x0]
	add		r3, #0x1
	add		r2, #0x1
	cmp		r2, r7
	bge		_08064f18
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_08064f00
_08064f18:
	add		r5, r7, #0x0
	add		r2, r6, #0x0
	b		_08064f28

.align 2, 0
.pool

_08064f20:	.4byte 0x00006B68

_08064f24:
	sub		r5, #0x1
	sub		r2, #0x1
_08064f28:
	cmp		r2, #0x0
	blt		_08064f38
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08064f24
_08064f38:
	cmp		r5, r7
	bne		_08064f3e
	add		r5, r6, #0x0
_08064f3e:
	cmp		r5, #0x15
	ble		_08064f4a
	mov		r0, #0x15
	neg		r0, r0
	add		r0, r0, r5
	mov		r9, r0
_08064f4a:
	cmp		r7, #0x16
	bgt		_08064f6c
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	ldr		r1, [sp, #0xc+0xd8]
	str		r1, [sp, #0x8]
	add		r1, sp, #0x14
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
	b		_08064f8c
_08064f6c:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, sp
	add		r1, r9
	add		r1, #0x14
	mov		r2, #0x2
	str		r2, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	ldr		r2, [sp, #0xc+0xd8]
	str		r2, [sp, #0x8]
	mov		r2, #0x16
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
_08064f8c:
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r4, [sp, #0x98]
	ldrb	r0, [r4, #0x0]
	mov		r1, #0x0
	cmp		r0, #0x0
	beq		_08064f9e
	mov		r1, #0x63
_08064f9e:
	ldr		r0, [sp, #0xB4]
	strb	r1, [r0, #0x0]
	mov		r1, sp
	add		r1, r1, r6
	add		r1, #0x14
	mov		r10, r1
_08064faa:
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	ldr		r2, [sp, #0x94]
	ldr		r0, [r2, #0x34]
	add		r0, #0x1
	str		r0, [r2, #0x34]
	ldr		r4, [sp, #0xA0]
	str		r4, [sp, #0xAC]
	ldr		r0, [sp, #0xA4]
	cmp		r0, #0x0
	bne		_08064fe2
	ldr		r1, [sp, #0xB4]
	mov		r4, #0x0
	ldrsb	r4, [r1, r4]
	add		r0, r1, #0x0
	ldr		r1, _08065064
	bl		sub_08059f50
	ldr		r2, [sp, #0xB4]
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	cmp		r4, r0
	beq		_08064fe2
	mov		r0, #0x8d
	bl		sub_0807073c
_08064fe2:
	mov		r4, r9
	str		r4, [sp, #0x0]
	ldr		r0, [sp, #0xA4]
	str		r0, [sp, #0x4]
	ldr		r1, [sp, #0x9C]
	str		r1, [sp, #0x8]
	ldr		r2, [sp, #0x8+0xd8]
	str		r2, [sp, #0xC]
	ldr		r4, _08065064
	str		r4, [sp, #0x10]
	ldr		r0, [sp, #0x94]
	ldr		r1, [sp, #0xA0]
	add		r2, r7, #0x0
	add		r3, r5, #0x0
	bl		sub_08064c20
	ldr		r1, [sp, #0xB4]
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	lsl		r0, r0, #0x3
	add		r0, r0, r4
	mov		r4, #0x0
	ldrsh	r2, [r0, r4]
	sub		r1, r2, #0x4
	cmp		r1, #0x0
	bge		_08065018
	add		r1, r2, #0x3
_08065018:
	asr		r1, r1, #0x3
	mov		r2, #0x2
	ldrsh	r0, [r0, r2]
	sub		r2, r0, #0x4
	cmp		r2, #0x0
	bge		_08065026
	add		r2, r0, #0x3
_08065026:
	asr		r2, r2, #0x3
	mov		r0, #0x0
	bl		sub_080281b0
	ldrh	r1, [r0, #0x0]
	ldr		r4, _08065068
	add		r0, r4, #0x0
	add		r2, r0, #0x0
	and		r2, r1
	str		r2, [sp, #0xB0]
	cmp		r2, #0x0
	bne		_08065042
	mov		r4, #0x7f
	str		r4, [sp, #0xB0]
_08065042:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_0806504e
	b		_08065484
_0806504e:
	ldr		r0, _0806506c
	ldr		r1, [sp, #0xB0]
	cmp		r1, r0
	bne		_08065058
	b		_0806515a
_08065058:
	cmp		r1, r0
	bgt		_08065070
	sub		r0, #0x6
	cmp		r1, r0
	beq		_08065086
	b		_08065396

_08065064:	.4byte 0x08110328
_08065068:	.4byte 0x000003FF
_0806506c:	.4byte 0x00000246

_08065070:
	mov		r0, #0x93
	lsl		r0, r0, #0x2
	ldr		r2, [sp, #0xB0]
	cmp		r2, r0
	bne		_0806507c
	b		_08065218
_0806507c:
	add		r0, #0x6
	cmp		r2, r0
	bne		_08065084
	b		_0806533a
_08065084:
	b		_08065396
_08065086:
	ldr		r4, [sp, #0xc+0xd8]
	cmp		r4, #0x0
	beq		_08065124
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_080650ae
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_080650ae
_0806509e:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_080650ae
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806509e
_080650ae:
	cmp		r2, #0x0
	beq		_08065124
	ldr		r0, [sp, #0xA8]
	cmp		r0, #0x0
	bne		_08065124
	mov		r2, #0x0
	add		r4, sp, #0x14
	mov		r8, r2
	b		_080650cc
_080650c0:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	mov		r1, r8
	strb	r1, [r0, #0x0]
	add		r2, #0x1
_080650cc:
	add		r3, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_080650ec
	mov		r5, r10
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_080650ec
_080650dc:
	sub		r3, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_080650ec
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080650dc
_080650ec:
	cmp		r2, r3
	blt		_080650c0
	mov		r5, #0x0
	mov		r9, r5
	mov		r0, #0x1
	str		r0, [sp, #0xA8]
	cmp		r7, #0x16
	bgt		_0806510e
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	b		_08065308
_0806510e:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r4, #0x2
	str		r4, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	mov		r2, r9
	str		r2, [sp, #0x8]
	add		r1, sp, #0x14
	b		_0806532a
_08065124:
	cmp		r5, r6
	bge		_0806514a
	mov		r0, sp
	add		r0, r0, r5
	add		r0, #0x14
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806514a
	mov		r0, #0xc1
	bl		sub_0807073c
	add		r5, #0x1
	mov		r4, r9
	sub		r0, r5, r4
	cmp		r0, #0x15
	ble		_08065150
	mov		r0, #0x1
	add		r9, r0
	b		_08065150
_0806514a:
	mov		r0, #0x91
	bl		sub_0807073c
_08065150:
	mov		r4, #0x0
	cmp		r7, #0x16
	bgt		_08065158
	b		_080652f8
_08065158:
	b		_08065314
_0806515a:
	ldr		r4, [sp, #0xc+0xd8]
	cmp		r4, #0x0
	beq		_080651f8
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_08065182
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08065182
_08065172:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_08065182
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08065172
_08065182:
	cmp		r2, #0x0
	beq		_080651f8
	ldr		r0, [sp, #0xA8]
	cmp		r0, #0x0
	bne		_080651f8
	mov		r2, #0x0
	add		r4, sp, #0x14
	mov		r8, r2
	b		_080651a0
_08065194:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	mov		r1, r8
	strb	r1, [r0, #0x0]
	add		r2, #0x1
_080651a0:
	add		r3, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_080651c0
	mov		r5, r10
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_080651c0
_080651b0:
	sub		r3, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_080651c0
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080651b0
_080651c0:
	cmp		r2, r3
	blt		_08065194
	mov		r5, #0x0
	mov		r9, r5
	mov		r0, #0x1
	str		r0, [sp, #0xA8]
	cmp		r7, #0x16
	bgt		_080651e2
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r5, [sp, #0x8]
	b		_08065308
_080651e2:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r4, #0x2
	str		r4, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	mov		r2, r9
	str		r2, [sp, #0x8]
	add		r1, sp, #0x14
	b		_0806532a
_080651f8:
	cmp		r5, #0x0
	ble		_0806514a
	mov		r0, #0xc1
	bl		sub_0807073c
	sub		r5, #0x1
	mov		r4, r9
	sub		r0, r5, r4
	cmp		r0, #0x9
	bgt		_08065150
	cmp		r4, #0x0
	ble		_08065150
	mov		r0, #0x1
	neg		r0, r0
	add		r9, r0
	b		_08065150
_08065218:
	ldr		r4, [sp, #0xc+0xd8]
	cmp		r4, #0x0
	beq		_08065266
	ldr		r0, [sp, #0xA8]
	cmp		r0, #0x0
	bne		_08065266
	mov		r2, #0x0
	add		r4, sp, #0x14
	mov		r8, r2
	b		_08065238
_0806522c:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	mov		r1, r8
	strb	r1, [r0, #0x0]
	add		r2, #0x1
_08065238:
	add		r3, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_08065258
	mov		r5, r10
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08065258
_08065248:
	sub		r3, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_08065258
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08065248
_08065258:
	cmp		r2, r3
	blt		_0806522c
	mov		r5, #0x0
	mov		r9, r5
	mov		r0, #0x1
	str		r0, [sp, #0xA8]
	b		_080652e4
_08065266:
	cmp		r5, #0x0
	beq		_080652ec
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_0806528c
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0806528c
_0806527c:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_0806528c
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806527c
_0806528c:
	cmp		r5, r2
	blt		_080652c0
	cmp		r5, r6
	bne		_080652a0
	mov		r0, sp
	add		r0, r0, r5
	add		r0, #0x14
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080652b4
_080652a0:
	sub		r5, #0x1
	mov		r1, r9
	sub		r0, r5, r1
	cmp		r0, #0x9
	bgt		_080652b4
	cmp		r1, #0x0
	ble		_080652b4
	mov		r2, #0x1
	neg		r2, r2
	add		r9, r2
_080652b4:
	mov		r1, sp
	add		r1, r1, r5
	add		r1, #0x14
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	b		_080652e4
_080652c0:
	cmp		r5, #0x0
	ble		_080652ec
	add		r2, r5, #0x0
	add		r3, r6, #0x0
	cmp		r2, r6
	bge		_080652de
	add		r1, r2, #0x0
	add		r1, sp
	add		r1, #0x14
_080652d2:
	ldrb	r0, [r1, #0x1]
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	blt		_080652d2
_080652de:
	mov		r0, #0x0
	mov		r4, r10
	strb	r0, [r4, #0x0]
_080652e4:
	mov		r0, #0xc0
	bl		sub_0807073c
	b		_080652f2
_080652ec:
	mov		r0, #0x91
	bl		sub_0807073c
_080652f2:
	mov		r4, #0x0
	cmp		r7, #0x16
	bgt		_08065314
_080652f8:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
_08065308:
	add		r1, sp, #0x14
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
	b		_08065332
_08065314:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, sp
	add		r1, r9
	add		r1, #0x14
	mov		r2, #0x2
	str		r2, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
_0806532a:
	mov		r2, #0x16
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
_08065332:
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08065484
_0806533a:
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_0806535c
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0806535c
_0806534c:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_0806535c
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806534c
_0806535c:
	cmp		r2, #0x0
	beq		_0806538e
	add		r0, sp, #0x14
	bl		sub_08060f94
	cmp		r0, #0x0
	beq		_0806538e
	ldr		r0, [sp, #0xA4]
	cmp		r0, #0x0
	bne		_08065376
	mov		r0, #0x8e
	bl		sub_0807073c
_08065376:
	ldr		r1, [sp, #0xA4]
	cmp		r1, #0x1
	bne		_08065382
	mov		r0, #0x8f
	bl		sub_0807073c
_08065382:
	ldr		r2, [sp, #0xA4]
	cmp		r2, #0x1
	bgt		_08065484
	add		r2, #0x1
	str		r2, [sp, #0xA4]
	b		_08065484
_0806538e:
	mov		r0, #0x91
	bl		sub_0807073c
	b		_08065484
_08065396:
	ldr		r4, [sp, #0xB0]
	lsl		r4, r4, #0x10
	mov		r8, r4
	ldr		r0, [sp, #0xc+0xd8]
	cmp		r0, #0x0
	beq		_080653e6
	ldr		r1, [sp, #0xA8]
	cmp		r1, #0x0
	bne		_080653e6
	mov		r2, #0x0
	b		_080653b8
_080653ac:
	mov		r1, sp
	add		r1, r1, r2
	add		r1, #0x14
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	add		r2, #0x1
_080653b8:
	add		r4, sp, #0x14
	add		r3, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_080653da
	mov		r5, r10
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_080653da
_080653ca:
	sub		r3, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_080653da
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080653ca
_080653da:
	cmp		r2, r3
	blt		_080653ac
	mov		r5, #0x0
	mov		r9, r5
	mov		r0, #0x1
	str		r0, [sp, #0xA8]
_080653e6:
	mov		r1, r8
	lsr		r0, r1, #0x10
	bl		sub_08013e24
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r8, r0
	mov		r0, #0xbf
	bl		sub_0807073c
	mov		r4, sp
	add		r4, r4, r5
	add		r4, #0x14
	add		r3, r5, #0x1
	cmp		r5, r6
	bge		_0806541e
	add		r2, r6, #0x0
	cmp		r6, r5
	ble		_0806541e
	mov		r0, sp
	add		r0, #0x13
	add		r1, r0, r6
_08065412:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r1, #0x1]
	sub		r1, #0x1
	sub		r2, #0x1
	cmp		r2, r5
	bgt		_08065412
_0806541e:
	mov		r2, r8
	strb	r2, [r4, #0x0]
	add		r5, r3, #0x0
	cmp		r5, r7
	blt		_08065432
	add		r5, r6, #0x0
	mov		r0, #0x63
	ldr		r4, [sp, #0xB4]
	strb	r0, [r4, #0x0]
	b		_0806543e
_08065432:
	mov		r1, r9
	sub		r0, r5, r1
	cmp		r0, #0x15
	ble		_0806543e
	mov		r2, #0x1
	add		r9, r2
_0806543e:
	mov		r4, #0x0
	cmp		r7, #0x16
	bgt		_08065460
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	add		r1, sp, #0x14
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
	b		_0806547e
_08065460:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, sp
	add		r1, r9
	add		r1, #0x14
	mov		r2, #0x2
	str		r2, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r2, #0x16
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
_0806547e:
	mov		r0, #0x1
	bl		sub_080281fc
_08065484:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	bne		_08065490
	b		_08065614
_08065490:
	ldr		r4, [sp, #0xA4]
	cmp		r4, #0x0
	beq		_0806549e
	cmp		r4, #0x1
	bne		_0806549c
	b		_0806560a
_0806549c:
	b		_08065614
_0806549e:
	mov		r0, #0x90
	lsl		r0, r0, #0x2
	ldr		r1, [sp, #0xB0]
	cmp		r1, r0
	beq		_0806555a
	add		r0, #0x6
	cmp		r1, r0
	beq		_0806555a
	add		r0, #0x6
	cmp		r1, r0
	beq		_0806555a
	add		r0, #0x6
	cmp		r1, r0
	beq		_0806555a
	ldr		r2, [sp, #0xc+0xd8]
	cmp		r2, #0x0
	beq		_0806552e
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_080654e2
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_080654e2
_080654d2:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_080654e2
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080654d2
_080654e2:
	cmp		r2, #0x0
	beq		_0806552e
	ldr		r0, [sp, #0xA8]
	cmp		r0, #0x0
	bne		_0806552e
	mov		r2, #0x0
	add		r4, sp, #0x14
	mov		r8, r2
	b		_08065500
_080654f4:
	mov		r0, sp
	add		r0, r0, r2
	add		r0, #0x14
	mov		r1, r8
	strb	r1, [r0, #0x0]
	add		r2, #0x1
_08065500:
	add		r3, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_08065520
	mov		r5, r10
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_08065520
_08065510:
	sub		r3, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_08065520
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08065510
_08065520:
	cmp		r2, r3
	blt		_080654f4
	mov		r5, #0x0
	mov		r9, r5
	mov		r0, #0x1
	str		r0, [sp, #0xA8]
	b		_080655c2
_0806552e:
	add		r3, sp, #0x14
	add		r2, r7, #0x0
	add		r1, r6, #0x0
	cmp		r6, #0x0
	blt		_08065550
	mov		r4, r10
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08065550
_08065540:
	sub		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	blt		_08065550
	add		r0, r3, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08065540
_08065550:
	add		r4, r2, #0x0
	cmp		r4, #0x0
	bne		_08065564
	cmp		r5, #0x0
	bne		_08065564
_0806555a:
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r0, #0x0
	b		_080656a0
_08065564:
	mov		r0, #0xc0
	bl		sub_0807073c
	cmp		r5, #0x0
	beq		_080655a2
	cmp		r5, r4
	blt		_080655a2
	cmp		r5, r6
	bne		_08065582
	mov		r0, sp
	add		r0, r0, r5
	add		r0, #0x14
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08065596
_08065582:
	sub		r5, #0x1
	mov		r1, r9
	sub		r0, r5, r1
	cmp		r0, #0x9
	bgt		_08065596
	cmp		r1, #0x0
	ble		_08065596
	mov		r2, #0x1
	neg		r2, r2
	add		r9, r2
_08065596:
	mov		r1, sp
	add		r1, r1, r5
	add		r1, #0x14
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	b		_080655c2
_080655a2:
	add		r2, r5, #0x0
	add		r3, r6, #0x0
	cmp		r2, r3
	bge		_080655bc
	add		r1, r2, #0x0
	add		r1, sp
	add		r1, #0x14
_080655b0:
	ldrb	r0, [r1, #0x1]
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	add		r2, #0x1
	cmp		r2, r3
	blt		_080655b0
_080655bc:
	mov		r0, #0x0
	mov		r4, r10
	strb	r0, [r4, #0x0]
_080655c2:
	mov		r4, #0x0
	cmp		r7, #0x16
	bgt		_080655e4
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	add		r1, sp, #0x14
	add		r2, r7, #0x0
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
	b		_08065602
_080655e4:
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, sp
	add		r1, r9
	add		r1, #0x14
	mov		r2, #0x2
	str		r2, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r2, #0x16
	ldr		r3, [sp, #0x9C]
	bl		sub_08064e00
_08065602:
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08065614
_0806560a:
	mov		r0, #0x90
	bl		sub_0807073c
	mov		r4, #0x0
	str		r4, [sp, #0xA4]
_08065614:
	mov		r0, #0x8
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_08065624
	mov		r0, #0x63
	ldr		r1, [sp, #0xB4]
	strb	r0, [r1, #0x0]
_08065624:
	ldr		r2, [sp, #0xA4]
	cmp		r2, #0x0
	bne		_08065664
	ldr		r4, [sp, #0x8+0xd8]
	cmp		r4, #0x0
	beq		_08065664
	mov		r0, #0x80
	lsl		r0, r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806564a
	mov		r0, #0x2
	ldr		r1, [sp, #0xA0]
	cmp		r1, #0x0
	beq		_08065648
	add		r0, r1, #0x0
	sub		r0, #0x1
_08065648:
	str		r0, [sp, #0xA0]
_0806564a:
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_08065664
	mov		r0, #0x0
	ldr		r2, [sp, #0xA0]
	cmp		r2, #0x2
	beq		_08065662
	add		r0, r2, #0x0
	add		r0, #0x1
_08065662:
	str		r0, [sp, #0xA0]
_08065664:
	ldr		r4, [sp, #0xAC]
	ldr		r0, [sp, #0xA0]
	cmp		r4, r0
	beq		_0806567c
	mov		r0, #0xbe
	bl		sub_0807073c
	ldr		r1, [sp, #0xA0]
	lsl		r0, r1, #0x18
	lsr		r0, r0, #0x18
	bl		sub_0805a108
_0806567c:
	ldr		r2, [sp, #0xA4]
	cmp		r2, #0x2
	beq		_08065684
	b		_08064faa
_08065684:
	mov		r2, #0x0
	cmp		r2, r7
	bge		_0806569e
_0806568a:
	ldr		r4, [sp, #0x98]
	add		r0, r4, r2
	mov		r1, sp
	add		r1, r1, r2
	add		r1, #0x14
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, r7
	blt		_0806568a
_0806569e:
	mov		r0, #0x1
_080656a0:
	add		sp, #0xb8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08064ea4

	thumb_func_start sub_080656b0
sub_080656b0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x14
	add		r6, r0, #0x0
	mov		r9, r1
	ldr		r0, _08065798
	ldr		r7, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_08060bf4
	mov		r8, r0
	bl		sub_08060e48
	add		r3, r0, #0x0
	mov		r2, #0x0
_080656d2:
	add		r0, r6, r2
	add		r1, r3, r2
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	add		r2, #0x1
	cmp		r2, #0xf
	ble		_080656d2
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	ldr		r4, _0806579c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r5, #0x0
	str		r5, [sp, #0x10]
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x12
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r2, _080657a0
	add		r0, sp, #0x10
	bl		_CallHardwareSetCpuFast
	bl		_DrawFrameRunAudio
	ldr		r4, _080657a4
	mov		r0, #0x1
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080657a8
	str		r5, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r0, #0x14
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x0
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	ldr		r0, _080657ac
	str		r0, [sp, #0x0]
	mov		r0, #0x2
	str		r0, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r0, r9
	str		r0, [sp, #0xC]
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	mov		r2, #0x10
	mov		r3, #0x7
	bl		sub_08064ea4
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08065788
	mov		r0, r8
	add		r1, r6, #0x0
	bl		sub_08060e6c
_08065788:
	add		r0, r4, #0x0
	add		sp, #0x14
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08065798:	.4byte 0x0203EBE0
_0806579c:	.4byte 0x08094f70
_080657a0:	.4byte 0x01000020
_080657a4:	.4byte 0x080951e4
_080657a8:	.4byte 0x0811066c
_080657ac:	.4byte sub_080657b0
	thumb_func_end sub_080656b0

	thumb_func_start sub_080657b0
sub_080657b0:
	push	{ r4, lr }
	sub		sp, #0x10
	ldr		r0, _080657ec
	ldr		r0, [r0, #0x0]
	bl		sub_08060bf4
	add		r4, r0, #0x0
	bl		sub_08057370
	mov		r1, #0x0
	ldr		r2, _080657f0
	add		r0, r0, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080657de
	mov		r0, sp
	bl		_MGBLoadPassword
	add		r0, r4, #0x0
	mov		r1, sp
	bl		sub_08060e6c
	mov		r1, #0x1
_080657de:
	mov		r0, sp
	bl		sub_080656b0
	cmp		r0, #0x0
	beq		_080657f8
	ldr		r1, _080657f4
	b		_080657fe

_080657ec:	.4byte 0x0203EBE0
_080657f0:	.4byte 0x00000AE5
_080657f4:	.4byte 0x0805FA9D

_080657f8:
	bl		sub_08065828
	add		r1, r0, #0x0
_080657fe:
	ldr		r0, _08065818
	str		r1, [r0, #0x0]
	ldrb	r1, [r0, #0x8]
	add		r1, #0x1
	mov		r2, #0x7
	and		r1, r2
	strb	r1, [r0, #0x8]
	mov		r0, #0x1
	add		sp, #0x10
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08065818:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_080657b0

	thumb_func_start sub_0806581c
sub_0806581c:
	ldr		r1, _08065824
	str		r0, [r1, #0x0]
	bx		lr

.align 2, 0
.pool

_08065824:	.4byte 0x0203EF58
	thumb_func_end sub_0806581c

	thumb_func_start sub_08065828
sub_08065828:
	ldr		r0, _08065830
	ldr		r0, [r0, #0x0]
	bx		lr

.align 2, 0
.pool

_08065830:	.4byte 0x0203EF58

.incbin "base.gba", 0x65834, 0x20
	thumb_func_end sub_08065828

	thumb_func_start sub_08065854
sub_08065854:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0xc
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	add		r7, r2, #0x0
	add		r6, r3, #0x0
	cmp		r4, #0x16
	bgt		_08065880
	mov		r0, #0x0
	bl		sub_080281a4
	mov		r1, #0x2
	str		r1, [sp, #0x0]
	mov		r1, #0xf
	str		r1, [sp, #0x4]
	str		r6, [sp, #0x8]
	add		r1, r5, #0x0
	add		r2, r4, #0x0
	add		r3, r7, #0x0
	bl		sub_08064e00
	b		_0806589c
_08065880:
	mov		r0, #0x0
	bl		sub_080281a4
	ldr		r1, [sp, #0x0+0x20]
	add		r1, r5, r1
	mov		r2, #0x2
	str		r2, [sp, #0x0]
	mov		r2, #0xf
	str		r2, [sp, #0x4]
	str		r6, [sp, #0x8]
	mov		r2, #0x16
	add		r3, r7, #0x0
	bl		sub_08064e00
_0806589c:
	add		sp, #0xc
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08065854

	thumb_func_start sub_080658a4
sub_080658a4:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x24
	ldr		r0, _08065914
	ldr		r2, [r0, #0x0]
	ldr		r3, _08065918
	ldr		r1, [r3, #0x0]
	ldr		r0, _0806591c
	cmp		r1, r0
	bne		_0806598c
	add		r5, r2, #0x0
	add		r5, #0x41
	add		r4, r3, #0x0
_080658bc:
	mov		r0, #0x3
	ldr		r1, _08065920
	bl		sub_08013d0c
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x2
	bl		sub_080281fc
_080658d0:
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	mov		r0, #0xf
	str		r0, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	ldr		r1, _08065924
	mov		r3, #0x8
	bl		sub_08058c20
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806592c
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _08065928
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	b		_08065962

.align 2, 0
.pool

_08065914:	.4byte 0x0203EBE0
_08065918:	.4byte RunGameLogic_CallBack
_0806591c:	.4byte 0x080658A5
_08065920:	.4byte 0x081139e8
_08065924:	.4byte 0x08110698
_08065928:	.4byte _TryLoadMGBMainMenu

_0806592c:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_080658d0
	add		r0, sp, #0x8
	ldr		r1, _08065968
	ldmia	r1!, { r2, r3, r6 }
	stmia	r0!, {  r2, r3, r6 }
	ldmia	r1!, { r2, r3, r6 }
	stmia	r0!, {  r2, r3, r6 }
	ldr		r1, [r1, #0x0]
	str		r1, [r0, #0x0]
	mov		r0, #0x8e
	bl		sub_0807073c
	ldr		r0, _0806596c
	bl		sub_080602d4
	mov		r1, #0x0
	ldrsb	r1, [r5, r1]
	cmp		r1, #0x7
	bne		_08065974
	ldr		r0, _08065970
	str		r0, [r4, #0x0]
	ldrb	r0, [r4, #0x8]
	add		r0, #0x1
_08065962:
	and		r0, r1
	strb	r0, [r4, #0x8]
	b		_08065984

_08065968:	.4byte 0x081106d8
_0806596c:	.4byte 0x080658A5
_08065970:	.4byte sub_0805bf18

_08065974:
	mov		r0, #0x0
	ldrsb	r0, [r5, r0]
	lsl		r0, r0, #0x2
	add		r0, sp
	add		r0, #0x8
	ldr		r0, [r0, #0x0]
	bl		sub_0807d7d0
_08065984:
	ldr		r1, [r4, #0x0]
	ldr		r0, _08065998
	cmp		r1, r0
	beq		_080658bc
_0806598c:
	mov		r0, #0x1
	add		sp, #0x24
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08065998:	.4byte 0x080658A5
	thumb_func_end sub_080658a4

	thumb_func_start sub_0806599c
sub_0806599c:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0xc
	ldr		r0, _08065a50
	ldr		r0, [r0, #0x0]
	mov		r8, r0
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065a54
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0xa
	str		r4, [sp, #0x8]
	mov		r0, #0xb
	mov		r1, #0x0
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065a58
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065a5c
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065a60
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0xc
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, r8
	add		r0, #0x3e
	strb	r6, [r0, #0x0]
	mov		r1, r8
	ldrh	r0, [r1, #0x1a]
	ldr		r0, _08065a64
	strh	r0, [r1, #0x1a]
	ldrh	r0, [r1, #0x1c]
	ldr		r0, _08065a68
	strh	r0, [r1, #0x1c]
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08065a50:	.4byte 0x0203EBE0
_08065a54:	.4byte 0x081106f4
_08065a58:	.4byte 0x08110708
_08065a5c:	.4byte 0x0811071c
_08065a60:	.4byte 0x08110734
_08065a64:	.4byte 0x00000844
_08065a68:	.4byte 0x00001008
	thumb_func_end sub_0806599c

	thumb_func_start sub_08065a6c
sub_08065a6c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	ldr		r0, _08065acc
	ldr		r5, [r0, #0x0]
	ldr		r0, _08065ad0
	mov		r8, r0
	add		r0, r5, #0x0
	bl		sub_08060bf4
	mov		r10, r0
	ldr		r1, _08065ad4
	add		r6, r5, r1
	ldr		r0, [r6, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	asr		r4, r4, #0x18
	mvn		r4, r4
	lsr		r4, r4, #0x1f
	mov		r2, #0x0
	mov		r9, r2
	mov		r7, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	cmp		r4, #0x0
	beq		_08065ad8
	mov		r3, r8
	ldrh	r3, [r3, #0x2]
	mov		r9, r3
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	mov		r7, #0x7
	and		r7, r0
	b		_08065af2

_08065acc:	.4byte 0x0203EBE0
_08065ad0:	.4byte 0x02032B30
_08065ad4:	.4byte 0x00006A3C

_08065ad8:
	mov		r4, sp
	add		r4, #0xe
	ldrh	r2, [r6, #0x0]
	add		r0, sp, #0xc
	add		r1, r4, #0x0
	bl		sub_080691c4
	cmp		r0, #0x0
	beq		_08065af2
	ldrh	r4, [r4, #0x0]
	mov		r9, r4
	add		r0, sp, #0xc
	ldrb	r7, [r0, #0x0]
_08065af2:
	ldr		r2, _08065bf0
	add		r2, r2, r5
	mov		r8, r2
	ldr		r0, [r2, #0x0]
	mov		r3, r9
	lsl		r1, r3, #0x10
	asr		r1, r1, #0x10
	ldr		r3, _08065bf4
	add		r2, r5, r3
	ldrb	r2, [r2, #0x0]
	add		r3, r7, #0x0
	bl		sub_08062310
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_08065b14
	b		_08065c78
_08065b14:
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	add		r1, r7, #0x0
	mov		r2, r9
	bl		sub_08059294
	ldr		r6, _08065bf8
	mov		r2, #0xb4
	lsl		r2, r2, #0x8
	add		r6, r6, r2
	mov		r3, r8
	ldr		r0, [r3, #0x0]
	mov		r5, #0x1
	add		r1, r5, #0x0
	lsl		r1, r0
	ldr		r0, [r6, #0x0]
	orr		r0, r1
	str		r0, [r6, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065bfc
	mov		r0, #0x0
	mov		r9, r0
	str		r0, [sp, #0x0]
	mov		r7, #0xf
	str		r7, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x7
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065c00
	mov		r1, r9
	str		r1, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065c04
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xb
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	lsl		r5, r0
	ldr		r0, [r6, #0x0]
	orr		r0, r5
	str		r0, [r6, #0x0]
	ldr		r1, _08065c08
	mov		r0, #0x3
	bl		sub_08013d0c
	bl		sub_08057428
	bl		sub_0805c408
	add		r5, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r5, #0x0
	beq		_08065c14
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065c0c
	mov		r0, r9
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, #0xd
	str		r0, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	ldr		r0, _08065c10
	b		_08065c50

_08065bf0:	.4byte 0x00006A3C
_08065bf4:	.4byte 0x0000698D
_08065bf8:	.4byte 0x02033780
_08065bfc:	.4byte 0x08110748
_08065c00:	.4byte 0x08110768
_08065c04:	.4byte 0x08110784
_08065c08:	.4byte 0x08113468
_08065c0c:	.4byte 0x081107a8
_08065c10:	.4byte 0x0805B7F5

_08065c14:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065c68
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065c6c
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xa
	bl		sub_08013e9c
	ldr		r0, _08065c70
_08065c50:
	ldr		r2, _08065c74
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08065cd0

.align 2, 0
.pool

_08065c68:	.4byte 0x081107d8
_08065c6c:	.4byte 0x081107f4
_08065c70:	.4byte 0x0805AF0D
_08065c74:	.4byte RunGameLogic_CallBack

_08065c78:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065cf0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065cf4
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r0, _08065cf8
	ldr		r2, _08065cfc
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_08065cd0:
	mov		r0, #0x0
	bl		sub_080602f0
	mov		r0, r10
	bl		sub_08060e4c
	mov		r0, #0x1
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08065cf0:	.4byte 0x081107d8
_08065cf4:	.4byte 0x081107f4
_08065cf8:	.4byte 0x0805AF0D
_08065cfc:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08065a6c

	thumb_func_start sub_08065d00
sub_08065d00:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0xc
	ldr		r0, _08065e0c
	ldr		r5, [r0, #0x0]
	bl		sub_08057370
	mov		r8, r0
	ldr		r0, _08065e10
	add		r6, r5, r0
	ldr		r0, [r6, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r5, #0x0
	bl		sub_08060bf4
	mov		r9, r0
	ldr		r1, [r6, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	mov		r1, #0xb2
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	mov		r1, r8
	add		r7, r1, r0
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	lsl		r0, r4, #0x18
	asr		r5, r0, #0x18
	cmp		r5, #0x0
	bge		_08065d5e
	b		_08065e7c
_08065d5e:
	lsr		r0, r0, #0x18
	ldrb	r2, [r6, #0x0]
	mov		r1, #0x0
	bl		sub_08058fdc
	ldr		r0, [r6, #0x0]
	bl		sub_08062f14
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08065e50
	ldr		r2, _08065e14
	add		r2, r8
	add		r0, r5, #0x2
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldrb	r1, [r7, #0xb]
	mov		r0, #0x3
	mov		r6, #0x0
	orr		r0, r1
	strb	r0, [r7, #0xb]
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065e18
	str		r6, [sp, #0x0]
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
	ldr		r2, _08065e1c
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_08065e24
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065e20
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_08065e42

.align 2, 0
.pool

_08065e0c:	.4byte 0x0203EBE0
_08065e10:	.4byte 0x00006A3C
_08065e14:	.4byte 0x00000BE8
_08065e18:	.4byte 0x08110810
_08065e1c:	.4byte 0x08110784
_08065e20:	.4byte 0x08110838

_08065e24:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065e4c
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x9
	bl		sub_08013e9c
_08065e42:
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08065e7c

.align 2, 0
.pool

_08065e4c:	.4byte 0x08110860

_08065e50:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065ea8
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
_08065e7c:
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _08065eac
	ldr		r2, _08065eb0
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, r9
	bl		sub_08060e4c
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08065ea8:	.4byte 0x08110860
_08065eac:	.4byte 0x0805AF0D
_08065eb0:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08065d00

	thumb_func_start sub_08065eb4
sub_08065eb4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	ldr		r0, _08065fa4
	ldr		r4, [r0, #0x0]
	bl		sub_08057370
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	bl		sub_08060bf4
	mov		r8, r0
	ldr		r0, _08065fa8
	add		r4, r4, r0
	ldr		r1, [r4, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	mov		r1, #0xe4
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	add		r6, r5, r0
	mov		r0, #0x0
	bl		sub_080281d4
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	ldr		r2, [r4, #0x0]
	add		r2, #0x14
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r0, #0xc
	mov		r1, #0x0
	bl		sub_08058fdc
	ldr		r0, [r4, #0x0]
	add		r0, #0x14
	bl		sub_08062f14
	add		r4, r0, #0x0
	cmp		r4, #0x0
	beq		_08065fe8
	ldr		r0, _08065fac
	add		r2, r5, r0
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	ldr		r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldrb	r1, [r6, #0xb]
	mov		r0, #0x3
	mov		r7, #0x0
	orr		r0, r1
	strb	r0, [r6, #0xb]
	bl		sub_08057428
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065fb0
	str		r7, [sp, #0x0]
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
	ldr		r2, _08065fb4
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x8
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	bl		sub_0805c408
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r4, #0x0
	beq		_08065fbc
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065fb8
	str		r7, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x6
	mov		r1, #0x9
	bl		sub_08013e9c
	b		_08065fda

.align 2, 0
.pool

_08065fa4:	.4byte 0x0203EBE0
_08065fa8:	.4byte 0x00005F28
_08065fac:	.4byte 0x00000BE8
_08065fb0:	.4byte 0x08110890
_08065fb4:	.4byte 0x08110784
_08065fb8:	.4byte 0x08110838

_08065fbc:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08065fe4
	str		r4, [sp, #0x0]
	str		r5, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x9
	bl		sub_08013e9c
_08065fda:
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08066014

.align 2, 0
.pool

_08065fe4:	.4byte 0x08110860

_08065fe8:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066040
	str		r4, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0x18
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x9
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
_08066014:
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, _08066044
	ldr		r2, _08066048
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, r8
	bl		sub_08060e4c
	mov		r0, #0x1
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08066040:	.4byte 0x08110860
_08066044:	.4byte 0x0805AF0D
_08066048:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_08065eb4

	thumb_func_start sub_0806604c
sub_0806604c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x18
	ldr		r0, _080661a0
	ldr		r5, [r0, #0x0]
	bl		sub_08057370
	str		r0, [sp, #0xC]
	ldr		r0, _080661a4
	add		r7, r5, r0
	ldr		r0, [r7, #0x0]
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r5, #0x0
	bl		sub_08060bf4
	str		r0, [sp, #0x10]
	ldr		r1, [r7, #0x0]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x2
	mov		r1, #0xb2
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r2, [sp, #0xC]
	add		r0, r2, r0
	str		r0, [sp, #0x14]
	ldr		r3, _080661a8
	mov		r10, r3
	mov		r0, #0x0
	mov		r8, r0
	mov		r6, #0x0
	bl		sub_080281d4
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	lsl		r4, r4, #0x18
	asr		r1, r4, #0x18
	mov		r9, r1
	cmp		r1, #0x0
	blt		_0806611c
	ldr		r2, _080661ac
	ldrh	r2, [r2, #0x2]
	mov		r10, r2
	ldr		r3, _080661ac
	ldrb	r0, [r3, #0x0]
	mov		r1, #0x7
	mov		r8, r1
	mov		r2, r8
	and		r2, r0
	mov		r8, r2
	lsr		r0, r4, #0x18
	ldr		r3, _080661b0
	add		r1, r5, r3
	ldr		r2, [r1, #0x0]
	add		r2, #0x14
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r1, #0x0
	bl		sub_08058fdc
	ldr		r0, [r7, #0x0]
	mov		r2, r10
	lsl		r1, r2, #0x10
	asr		r1, r1, #0x10
	ldr		r3, _080661b4
	add		r2, r5, r3
	ldrb	r2, [r2, #0x0]
	mov		r3, r8
	bl		sub_080630b0
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_080660fa
	b		_08066274
_080660fa:
	ldr		r0, [sp, #0xC]
	ldr		r1, _080661b8
	add		r2, r0, r1
	mov		r0, r9
	add		r0, #0x2
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r2, [sp, #0x14]
	ldrb	r1, [r2, #0xb]
	mov		r0, #0x3
	orr		r0, r1
	strb	r0, [r2, #0xb]
	bl		sub_08057428
_0806611c:
	cmp		r6, #0x0
	bne		_08066122
	b		_08066274
_08066122:
	ldrb	r0, [r7, #0x0]
	mov		r1, r8
	mov		r2, r10
	bl		sub_08059294
	ldr		r2, _080661bc
	mov		r3, #0xb4
	lsl		r3, r3, #0x8
	add		r2, r2, r3
	ldr		r0, [r7, #0x0]
	mov		r1, #0x1
	lsl		r1, r0
	ldr		r0, [r2, #0x0]
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r1, _080661c0
	mov		r0, #0x3
	bl		sub_08013d0c
	bl		sub_08057428
	bl		sub_0805c408
	add		r6, r0, #0x0
	mov		r0, #0x0
	bl		sub_080281d4
	cmp		r6, #0x0
	beq		_080661d0
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080661c4
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r4, #0xf
	str		r4, [sp, #0x4]
	mov		r0, #0x12
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _080661c8
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r0, #0x16
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xa
	bl		sub_08013e9c
	ldr		r0, _080661cc
	b		_08066246

_080661a0:	.4byte 0x0203EBE0
_080661a4:	.4byte 0x00006A3C
_080661a8:	.4byte 0x0000FFFF
_080661ac:	.4byte 0x02032B30
_080661b0:	.4byte 0x00005F28
_080661b4:	.4byte 0x0000698D
_080661b8:	.4byte 0x00000BE8
_080661bc:	.4byte 0x02033780
_080661c0:	.4byte 0x08113534
_080661c4:	.4byte 0x08110838
_080661c8:	.4byte 0x081107a8
_080661cc:	.4byte 0x0805B7F5

_080661d0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806625c
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066260
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066264
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066268
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xc
	bl		sub_08013e9c
	ldr		r0, _0806626c
_08066246:
	ldr		r2, _08066270
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
	mov		r0, #0x1
	bl		sub_080281fc
	b		_08066306

_0806625c:	.4byte 0x081108b0
_08066260:	.4byte 0x081108c4
_08066264:	.4byte 0x081107d8
_08066268:	.4byte 0x081107f4
_0806626c:	.4byte 0x0805AF0D
_08066270:	.4byte RunGameLogic_CallBack

_08066274:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066324
	mov		r6, #0x0
	str		r6, [sp, #0x0]
	mov		r5, #0xf
	str		r5, [sp, #0x4]
	mov		r4, #0x16
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x6
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066328
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0x8
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _0806632c
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xa
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08066330
	str		r6, [sp, #0x0]
	str		r5, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x9
	mov		r1, #0xc
	bl		sub_08013e9c
	mov		r0, #0x1
	bl		sub_080281fc
	ldr		r0, _08066334
	ldr		r2, _08066338
	str		r0, [r2, #0x0]
	ldrb	r0, [r2, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r2, #0x8]
_08066306:
	mov		r0, #0x0
	bl		sub_080602f0
	ldr		r0, [sp, #0x10]
	bl		sub_08060e4c
	mov		r0, #0x1
	add		sp, #0x18
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08066324:	.4byte 0x081108b0
_08066328:	.4byte 0x081108c4
_0806632c:	.4byte 0x081107d8
_08066330:	.4byte 0x081107f4
_08066334:	.4byte 0x0805AF0D
_08066338:	.4byte RunGameLogic_CallBack
	thumb_func_end sub_0806604c

	thumb_func_start sub_0806633c
sub_0806633c:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	mov		r1, #0x0
	mov		r5, #0x13
	ldr		r2, _0806641c
	add		r0, r6, r2
_08066348:
	str		r1, [r0, #0x0]
	sub		r0, #0x4
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08066348
	mov		r5, #0x0
_08066354:
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
	beq		_0806639c
	lsl		r1, r5, #0x2
	ldr		r3, _08066420
	add		r0, r6, r3
	add		r0, r0, r1
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	ldr		r2, _08066424
	add		r1, r6, r2
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r2, r5, #0x1
	ldr		r3, _08066428
	add		r1, r6, r3
	add		r1, r1, r2
	strh	r0, [r1, #0x0]
_0806639c:
	add		r5, #0x1
	cmp		r5, #0x13
	ble		_08066354
	mov		r1, #0x0
	mov		r5, #0x1
	ldr		r2, _0806642c
	add		r0, r6, r2
_080663aa:
	str		r1, [r0, #0x0]
	sub		r0, #0x4
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_080663aa
	mov		r5, #0x0
_080663b6:
	lsl		r0, r5, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080575e8
	lsl		r0, r0, #0x18
	asr		r4, r0, #0x18
	mov		r0, #0x1
	neg		r0, r0
	add		r7, r5, #0x1
	cmp		r4, r0
	beq		_08066464
	lsl		r1, r5, #0x2
	ldr		r3, _08066430
	add		r0, r6, r3
	add		r0, r0, r1
	mov		r1, #0x1
	str		r1, [r0, #0x0]
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	ldr		r2, _08066434
	add		r1, r6, r2
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r2, r5, #0x1
	ldr		r3, _08066438
	add		r1, r6, r3
	add		r1, r1, r2
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	bl		sub_080578d8
	ldr		r2, _0806643c
	add		r1, r6, r2
	add		r1, r1, r5
	strb	r0, [r1, #0x0]
	lsl		r1, r5, #0x3
	ldr		r3, _08066440
	add		r1, r1, r3
	add		r1, r6, r1
	add		r0, r4, #0x0
	bl		sub_080578a0
	mov		r4, #0x0
	b		_08066446

.align 2, 0
.pool

_0806641c:	.4byte 0x00006AC4
_08066420:	.4byte 0x00006A78
_08066424:	.4byte 0x00006AC8
_08066428:	.4byte 0x00006ADC
_0806642c:	.4byte 0x00006B08
_08066430:	.4byte 0x00006B04
_08066434:	.4byte 0x00006B0E
_08066438:	.4byte 0x00006B10
_0806643c:	.4byte 0x00006B14
_08066440:	.4byte 0x00006B16

_08066444:
	add		r4, #0x1
_08066446:
	cmp		r4, #0x13
	bgt		_0806645c
	add		r0, r4, #0x0
	bl		sub_0802d690
	ldr		r2, _08066470
	add		r1, r6, r2
	add		r1, r1, r5
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_08066444
_0806645c:
	ldr		r3, _08066474
	add		r0, r6, r3
	add		r0, r0, r5
	strb	r4, [r0, #0x0]
_08066464:
	add		r5, r7, #0x0
	cmp		r5, #0x1
	ble		_080663b6
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08066470:	.4byte 0x00006B14
_08066474:	.4byte 0x00006B0C
	thumb_func_end sub_0806633c

	thumb_func_start sub_08066478
sub_08066478:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	mov		r8, r0
	mov		r7, #0x0
_08066488:
	lsl		r2, r7, #0x1
	mov		r0, #0x1
	mov		r1, #0xd
	bl		sub_080281b0
	str		r0, [sp, #0x0]
	ldr		r0, _080664a4
	add		r0, r8
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	bne		_080664a8
	mov		r0, #0xb0
	lsl		r0, r0, #0x8
	b		_080664c0

_080664a4:	.4byte 0x00006B28

_080664a8:
	ldr		r0, _08066528
	add		r0, r8
	ldr		r1, [r0, #0x0]
	add		r1, r7, r1
	mov		r0, #0x1
	and		r1, r0
	mov		r0, #0xa0
	lsl		r0, r0, #0x7
	cmp		r1, #0x0
	beq		_080664c0
	mov		r0, #0xc0
	lsl		r0, r0, #0x7
_080664c0:
	mov		r10, r0
	mov		r1, #0x0
	ldr		r2, [sp, #0x0]
	add		r2, #0x7e
	str		r2, [sp, #0x4]
	add		r0, r7, #0x1
	str		r0, [sp, #0x8]
_080664ce:
	lsl		r0, r1, #0x6
	add		r1, #0x1
	mov		r9, r1
	add		r0, #0x80
	ldr		r1, [sp, #0x0]
	add		r2, r1, r0
	mov		r3, #0xb
_080664dc:
	ldrh	r1, [r2, #0x0]
	ldr		r0, _0806652c
	and		r0, r1
	mov		r1, r10
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	sub		r3, #0x1
	cmp		r3, #0x0
	bge		_080664dc
	ldr		r0, _08066528
	add		r0, r8
	ldr		r4, [r0, #0x0]
	add		r4, r4, r7
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	bl		sub_08057370
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r0, r0, r1
	ldrb	r1, [r0, #0xb]
	mov		r0, #0x2
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	mov		r5, #0x0
	ldr		r4, [sp, #0x4]
_0806651c:
	cmp		r6, #0x0
	beq		_08066534
	ldr		r1, _08066530
	add		r0, r5, r1
	b		_08066540

.align 2, 0
.pool

_08066528:	.4byte 0x00006B2C
_0806652c:	.4byte 0x00000FFF
_08066530:	.4byte 0x000031E6

_08066534:
	mov		r0, #0x1
	mov		r1, #0xc
	mov		r2, #0x0
	bl		sub_080281b0
	ldrh	r0, [r0, #0x0]
_08066540:
	strh	r0, [r4, #0x0]
	add		r4, #0x40
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_0806651c
	mov		r1, r9
	cmp		r1, #0x1
	ble		_080664ce
	ldr		r7, [sp, #0x8]
	cmp		r7, #0x7
	ble		_08066488
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool
	thumb_func_end sub_08066478

	thumb_func_start sub_08066568
sub_08066568:
	push	{ r4, lr }
	add		r3, r0, #0x0
	mov		r4, #0x0
	ldr		r0, _080665b4
	add		r1, r3, r0
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x7
	ble		_0806658e
	str		r4, [r1, #0x0]
	ldr		r2, _080665b8
	add		r1, r3, r2
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, #0x6
	ble		_0806658e
	str		r4, [r1, #0x0]
_0806658e:
	ldr		r1, _080665bc
	add		r0, r3, r1
	ldr		r2, _080665c0
	add		r1, r3, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	add		r0, r2, r0
	cmp		r0, #0x0
	bge		_080665a2
	add		r0, #0x3
_080665a2:
	asr		r0, r0, #0x2
	cmp		r0, #0x4
	bhi		_08066638
	lsl		r0, r0, #0x2
	ldr		r1, _080665c4
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_080665b4:	.4byte 0x00006B50
_080665b8:	.4byte 0x00006B54
_080665bc:	.4byte 0x00006B28
_080665c0:	.4byte 0x00006B2C
_080665c4:	.4byte 0x080665c8
_080665c8:	.4byte 0x080665dc

.incbin "base.gba", 0x665CC, 0x10
	thumb_func_end sub_08066568


.incbin "base.gba", 0x665DC, 0x5C

_08066638:

.incbin "base.gba", 0x66638, 0x1A
_08066652:

.incbin "base.gba", 0x66652, 0xE
	thumb_func_start sub_08066660
sub_08066660:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	add		r6, r1, #0x0
	add		r7, r2, #0x0
	add		r5, r3, #0x0
	cmp		r5, #0x0
	beq		_080666c0
	lsl		r0, r6, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, _08066750
	ldr		r2, [sp, #0x8]
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r1, [r4, #0x34]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	ldr		r1, _08066754
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_08066694
	add		r0, #0x3f
_08066694:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	asr		r0, r0, #0xf
	add		r0, r7, r0
	lsl		r0, r0, #0x10
	ldr		r1, _08066758
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r0, _0806675c
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_080666c0:
	ldr		r0, [sp, #0x0+0x24]
	sub		r0, #0x1
	mov		r8, r0
	cmp		r5, r8
	beq		_08066706
	mov		r2, #0x0
	add		r0, sp, #0x8
	strh	r6, [r0, #0x0]
	ldr		r1, [r4, #0x34]
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	ldr		r1, _08066754
	lsl		r0, r0, #0x19
	asr		r0, r0, #0x10
	cmp		r0, #0x0
	bge		_080666e2
	add		r0, #0x3f
_080666e2:
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x16
	lsl		r0, r0, #0x2
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x1
	neg		r0, r0
	asr		r0, r0, #0xf
	add		r0, r7, r0
	add		r1, sp, #0x8
	strh		r0, [r1, #0x2]
	ldr		r0, _08066760
	str		r2, [sp, #0x0]
	str		r2, [sp, #0x4]
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08066706:
	mov		r4, #0x0
	add		r0, sp, #0x8
	strh	r6, [r0, #0x0]
	mov		r0, #0x2c
	mul		r0, r5
	mov		r1, r8
	bl		sub_0807d80c
	sub		r0, #0x16
	add		r0, r7, r0
	add		r5, sp, #0x8
	strh		r0, [r5, #0x2]
	ldr		r0, _08066764
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, r5, #0x0
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		r0, sp, #0x8
	strh	r6, [r0, #0x0]
	strh		r7, [r5, #0x2]
	ldr		r0, _08066768
	str		r4, [sp, #0x0]
	str		r4, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08066750:	.4byte 0xffff0000
_08066754:	.4byte 0x08101068
_08066758:	.4byte 0x0000FFFF
_0806675c:	.4byte 0x080e4764
_08066760:	.4byte 0x080e476c
_08066764:	.4byte 0x080e4584
_08066768:	.4byte 0x080e4554
	thumb_func_end sub_08066660

	thumb_func_start sub_0806676c
sub_0806676c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	add		r4, r0, #0x0
	mov		r7, #0x0
	ldr		r0, _08066810
	mov		r10, r0
_08066780:
	ldr		r1, _08066814
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	add		r0, r0, r7
	mov		r8, r0
	lsl		r5, r0, #0x2
	ldr		r2, _08066818
	add		r0, r4, r2
	add		r0, r0, r5
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806688a
	ldr		r2, [sp, #0x8]
	ldr		r0, _0806681c
	and		r2, r0
	mov		r0, #0xd0
	orr		r2, r0
	lsl		r0, r7, #0x14
	mov		r1, #0xc0
	lsl		r1, r1, #0xd
	add		r0, r0, r1
	mov		r1, r10
	and		r2, r1
	orr		r2, r0
	str		r2, [sp, #0x8]
	ldr		r0, _08066820
	add		r1, r4, r0
	add		r0, sp, #0x8
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldr		r1, _0806681c
	and		r1, r2
	orr		r1, r0
	ldr		r0, _08066824
	add		r2, r4, r0
	asr		r0, r1, #0x10
	ldrh	r2, [r2, #0x0]
	add		r0, r0, r2
	lsl		r0, r0, #0x10
	mov		r2, r10
	and		r1, r2
	orr		r1, r0
	str		r1, [sp, #0x8]
	bl		sub_08057370
	mov		r2, r8
	add		r1, r5, r2
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r0, r0, r1
	ldrb	r1, [r0, #0xb]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_08066848
	ldr		r1, _08066828
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_08066834
	ldr		r2, _0806682c
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _08066830
	b		_08066876

.align 2, 0
.pool

_08066810:	.4byte 0x0000FFFF
_08066814:	.4byte 0x00006B2C
_08066818:	.4byte 0x00006A78
_0806681c:	.4byte 0xffff0000
_08066820:	.4byte 0x00006B48
_08066824:	.4byte 0x00006B4A
_08066828:	.4byte 0x00006B28
_0806682c:	.4byte 0x00006B58
_08066830:	.4byte 0x080f4d04

_08066834:
	ldr		r1, _08066840
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _08066844
	b		_08066876

_08066840:	.4byte 0x00006B60
_08066844:	.4byte 0x080f4cf4

_08066848:
	ldr		r2, _08066860
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_0806686c
	ldr		r1, _08066864
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _08066868
	b		_08066876

.align 2, 0
.pool

_08066860:	.4byte 0x00006B28
_08066864:	.4byte 0x00006B58
_08066868:	.4byte 0x080f4c64

_0806686c:
	ldr		r2, _080668dc
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _080668e0
_08066876:
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_0806688a:
	mov		r5, #0x0
	add		r0, r7, #0x1
	mov		r9, r0
	add		r6, sp, #0x8
_08066892:
	lsl		r0, r5, #0x2
	ldr		r2, _080668e4
	add		r1, r4, r2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08066912
	ldr		r1, _080668e8
	add		r0, r4, r1
	add		r0, r0, r5
	ldrb	r0, [r0, #0x0]
	cmp		r0, r8
	bne		_08066912
	lsl		r1, r7, #0x4
	add		r2, #0x44
	add		r0, r4, r2
	ldrh	r0, [r0, #0x0]
	add		r0, #0xe0
	strh	r0, [r6, #0x0]
	add		r2, #0x2
	add		r0, r4, r2
	add		r1, #0x18
	ldrh	r0, [r0, #0x0]
	add		r1, r1, r0
	strh		r1, [r6, #0x2]
	ldr		r1, _080668ec
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	cmp		r7, r0
	beq		_080668f4
	add		r2, #0xe
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _080668f0
	b		_080668fe

.align 2, 0
.pool

_080668dc:	.4byte 0x00006B60
_080668e0:	.4byte 0x080f4c54
_080668e4:	.4byte 0x00006B04
_080668e8:	.4byte 0x00006B0C
_080668ec:	.4byte 0x00006B28
_080668f0:	.4byte 0x080f4cb4

_080668f4:
	ldr		r1, _08066930
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	lsl		r0, r0, #0x3
	ldr		r1, _08066934
_080668fe:
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
_08066912:
	add		r5, #0x1
	cmp		r5, #0x1
	ble		_08066892
	mov		r7, r9
	cmp		r7, #0x7
	bgt		_08066920
	b		_08066780
_08066920:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08066930:	.4byte 0x00006B60
_08066934:	.4byte 0x080f4ca4
	thumb_func_end sub_0806676c

	thumb_func_start sub_08066938
sub_08066938:
	push	{ r4, r5, r6, r7, lr }
	add		r3, r0, #0x0
	ldr		r6, _080669c0
	mov		r4, #0x0
	mov		r5, #0x0
	mov		r2, #0x0
	ldr		r7, _080669c4
	ldr		r0, _080669c8
	add		r1, r3, r0
_0806694a:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08066952
	add		r4, #0x1
_08066952:
	add		r1, #0x4
	add		r2, #0x1
	cmp		r2, #0x13
	bls		_0806694a
	mov		r2, #0x0
	ldr		r0, _080669cc
	add		r1, r3, r0
_08066960:
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08066968
	add		r5, #0x1
_08066968:
	add		r1, #0x4
	add		r2, #0x1
	cmp		r2, #0x1
	bls		_08066960
	add		r0, r7, #0x0
	add		r1, r6, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r7, _080669d0
	ldr		r3, _080669d4
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	bl		sub_08029ee4
	cmp		r4, #0x0
	beq		_0806699e
	bl		sub_08029f34
	add		r1, r4, #0x5
	lsl		r1, r1, #0x5
	add		r1, r6, r1
	ldr		r3, _080669d8
	add		r2, r7, #0x0
	bl		sub_08029ee4
_0806699e:
	cmp		r5, #0x0
	beq		_080669b6
	bl		sub_08029f34
	add		r1, r5, #0x0
	add		r1, #0xf
	lsl		r1, r1, #0x5
	add		r1, r6, r1
	ldr		r2, _080669dc
	ldr		r3, _080669d8
	bl		sub_08029ee4
_080669b6:
	bl		_DrawFrameRunAudio
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080669c0:	.4byte 0x0200C400
_080669c4:	.4byte 0x080cf1f0
_080669c8:	.4byte 0x00006A78
_080669cc:	.4byte 0x00006B04
_080669d0:	.4byte 0x06017400
_080669d4:	.4byte 0x80000060
_080669d8:	.4byte 0x80000010
_080669dc:	.4byte 0x06017460
	thumb_func_end sub_08066938

	thumb_func_start sub_080669e0
sub_080669e0:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	ldr		r1, _08066a40
	add		r0, r5, r1
	ldr		r2, _08066a44
	add		r1, r5, r2
	ldr		r4, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	add		r4, r4, r0
	bl		sub_08057370
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r0, r0, r1
	ldrb	r1, [r0, #0xb]
	mov		r0, #0x2
	and		r0, r1
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	cmp		r6, #0x0
	beq		_08066a54
	ldr		r0, _08066a48
	add		r4, r5, r0
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	ldr		r2, _08066a4c
	ldr		r1, _08066a50
	add		r3, r5, r1
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x3
	add		r1, r1, r2
	ldrh	r1, [r1, #0x4]
	cmp		r0, r1
	ble		_08066a7e
	mov		r1, #0x0
	str		r1, [r4, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0x7
	bls		_08066a7e
	str		r1, [r3, #0x0]
	b		_08066a7e

_08066a40:	.4byte 0x00006B2C
_08066a44:	.4byte 0x00006B28
_08066a48:	.4byte 0x00006B5C
_08066a4c:	.4byte 0x080f4d04
_08066a50:	.4byte 0x00006B58

_08066a54:
	ldr		r2, _08066ab0
	add		r4, r5, r2
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	ldr		r2, _08066ab4
	ldr		r1, _08066ab8
	add		r3, r5, r1
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x3
	add		r1, r1, r2
	ldrh	r1, [r1, #0x4]
	cmp		r0, r1
	ble		_08066a7e
	str		r6, [r4, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0x7
	bls		_08066a7e
	str		r6, [r3, #0x0]
_08066a7e:
	ldr		r2, _08066abc
	add		r4, r5, r2
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	ldr		r2, _08066ac0
	ldr		r1, _08066ac4
	add		r3, r5, r1
	ldr		r1, [r3, #0x0]
	lsl		r1, r1, #0x3
	add		r1, r1, r2
	ldrh	r1, [r1, #0x4]
	cmp		r0, r1
	ble		_08066aaa
	mov		r1, #0x0
	str		r1, [r4, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0x1
	bls		_08066aaa
	str		r1, [r3, #0x0]
_08066aaa:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08066ab0:	.4byte 0x00006B5C
_08066ab4:	.4byte 0x080f4c64
_08066ab8:	.4byte 0x00006B58
_08066abc:	.4byte 0x00006B64
_08066ac0:	.4byte 0x080f4c54
_08066ac4:	.4byte 0x00006B60
	thumb_func_end sub_080669e0

	thumb_func_start sub_08066ac8
sub_08066ac8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	mov		r8, r0
	ldr		r0, _08066b40
	add		r0, r8
	ldr		r1, _08066b44
	add		r1, r8
	ldr		r4, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	add		r4, r4, r0
	bl		sub_08057370
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r7, r0, r1
	ldrb	r0, [r7, #0xb]
	mov		r4, #0x1
	add		r5, r4, #0x0
	and		r5, r0
	cmp		r5, #0x0
	bne		_08066b50
	ldrh	r0, [r7, #0x2]
	cmp		r0, #0x0
	beq		_08066b50
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066b48
	str		r5, [sp, #0x0]
	str		r4, [sp, #0x4]
	mov		r4, #0x14
	str		r4, [sp, #0x8]
	mov		r0, #0x1
	mov		r1, #0x1
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066b4c
	str		r5, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x5
	mov		r1, #0x1
	bl		sub_08013e9c
	b		_08066b6e

.align 2, 0
.pool

_08066b40:	.4byte 0x00006B28
_08066b44:	.4byte 0x00006B2C
_08066b48:	.4byte 0x081108e0
_08066b4c:	.4byte 0x081108ec

_08066b50:
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066c18
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	mov		r0, #0xa
	str		r0, [sp, #0x8]
	mov		r0, #0x1
	mov		r1, #0x1
	bl		sub_08013e9c
_08066b6e:
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066c1c
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	mov		r0, #0x3
	str		r0, [sp, #0x4]
	mov		r4, #0xa
	str		r4, [sp, #0x8]
	mov		r0, #0x1
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066c20
	str		r5, [sp, #0x0]
	mov		r6, #0xf
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0x3
	bl		sub_08013e9c
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	ldr		r2, _08066c24
	str		r5, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x1
	mov		r1, #0x8
	bl		sub_08013e9c
	ldrb	r5, [r7, #0x9]
	ldrh	r4, [r7, #0x0]
	cmp		r4, #0x0
	bne		_08066bca
	mov		r0, #0x10
	orr		r5, r0
_08066bca:
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, #0xb0
	lsl		r0, r0, #0x2
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	add		r0, r5, #0x0
	mov		r2, #0xd8
	lsl		r2, r2, #0x2
	mov		r3, #0xc
	bl		sub_0800e5c0
	cmp		r4, #0x0
	beq		_08066c28
	mov		r0, #0x0
	mov		r1, #0x4
	mov		r2, #0x5
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	mov		r0, #0xc
	add		r0, r0, r7
	mov		r9, r0
	b		_08066c60

_08066c18:	.4byte 0x081108ec
_08066c1c:	.4byte 0x081108f8
_08066c20:	.4byte 0x08110900
_08066c24:	.4byte 0x0811090c

_08066c28:
	mov		r0, #0x0
	mov		r1, #0x4
	mov		r2, #0x5
	bl		sub_080281b0
	mov		r1, #0xc
	add		r1, r1, r7
	mov		r9, r1
	ldr		r2, _08066cd0
	add		r6, r2, #0x0
	ldr		r1, _08066cd4
	add		r5, r1, #0x0
	add		r2, #0x2
	add		r4, r2, #0x0
	add		r1, #0x2
	add		r3, r1, #0x0
	add		r1, r0, #0x0
	add		r1, #0x40
	mov		r2, #0x2
_08066c4e:
	strh	r6, [r0, #0x0]
	strh	r5, [r0, #0x2]
	strh	r4, [r1, #0x0]
	strh	r3, [r1, #0x2]
	add		r1, #0x4
	add		r0, #0x4
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08066c4e
_08066c60:
	ldr		r2, [r7, #0x4]
	mov		r10, r2
	bl		sub_08057370
	ldr		r1, _08066cd8
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	bl		sub_0805a0ec
	add		r6, r0, #0x0
	ldr		r0, _08066cdc
	add		r0, r8
	ldr		r1, _08066ce0
	add		r1, r8
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	add		r5, r2, r0
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
	beq		_08066ce4
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r0, r4, #0x0
	bl		sub_08057850
	lsl		r0, r0, #0x18
	asr		r5, r0, #0x18
	add		r0, r4, #0x0
	bl		sub_08057878
	lsl		r0, r0, #0x10
	asr		r4, r0, #0x10
	mov		r0, #0x0
	bl		sub_080281a4
	add		r3, r0, #0x0
	mov		r0, #0x3
	str		r0, [sp, #0x0]
	str		r6, [sp, #0x4]
	mov		r0, r10
	mov		r1, #0x1
	mov		r2, #0xa
	bl		sub_08067624
	b		_08066d04

.align 2, 0
.pool

_08066cd0:	.4byte 0x0000F2C0
_08066cd4:	.4byte 0x0000F2C1
_08066cd8:	.4byte 0x00000B9A
_08066cdc:	.4byte 0x00006B28
_08066ce0:	.4byte 0x00006B2C

_08066ce4:
	mov		r4, sp
	add		r4, #0xe
	lsl		r2, r5, #0x10
	lsr		r2, r2, #0x10
	add		r0, sp, #0xc
	add		r1, r4, #0x0
	bl		sub_080691c4
	cmp		r0, #0x0
	beq		_08066d00
	ldrh	r4, [r4, #0x0]
	add		r0, sp, #0xc
	ldrh	r5, [r0, #0x0]
	b		_08066d04
_08066d00:
	mov		r5, #0x10
	mov		r4, #0x0
_08066d04:
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0xc
	bl		sub_080281b0
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0xc
	bl		sub_080281b0
	add		r1, r0, #0x0
	mov		r0, #0xb0
	lsl		r0, r0, #0x2
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	mov		r2, #0xd8
	lsl		r2, r2, #0x2
	mov		r3, #0xc
	bl		sub_0800e5c0
	cmp		r4, #0x0
	beq		_08066d52
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	mov		r0, #0x0
	mov		r1, #0x4
	mov		r2, #0xc
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	b		_08066d84
_08066d52:
	mov		r0, #0x0
	mov		r1, #0x4
	mov		r2, #0xc
	bl		sub_080281b0
	ldr		r2, _08066db0
	add		r6, r2, #0x0
	ldr		r1, _08066db4
	add		r5, r1, #0x0
	add		r2, #0x2
	add		r4, r2, #0x0
	add		r1, #0x2
	add		r3, r1, #0x0
	add		r1, r0, #0x0
	add		r1, #0x40
	mov		r2, #0x2
_08066d72:
	strh	r6, [r0, #0x0]
	strh	r5, [r0, #0x2]
	strh	r4, [r1, #0x0]
	strh	r3, [r1, #0x2]
	add		r1, #0x4
	add		r0, #0x4
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_08066d72
_08066d84:
	mov		r2, #0xc
	ldrsh	r0, [r7, r2]
	cmp		r0, #0x0
	beq		_08066da0
	mov		r0, #0x1
	mov		r1, #0xf
	mov		r2, r9
	bl		sub_08069394
	mov		r0, #0x1
	mov		r1, #0x11
	mov		r2, r9
	bl		sub_08069430
_08066da0:
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08066db0:	.4byte 0x0000F2C0
_08066db4:	.4byte 0x0000F2C1
	thumb_func_end sub_08066ac8

	thumb_func_start sub_08066db8
sub_08066db8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x24
	ldr		r0, _08066e98
	ldr		r7, [r0, #0x0]
	ldr		r0, _08066e9c
	add		r2, r7, r0
	mov		r1, #0x0
	ldr		r0, _08066ea0
	strh	r0, [r2, #0x0]
	ldr		r2, _08066ea4
	add		r0, r7, r2
	strh	r1, [r0, #0x0]
	ldr		r3, _08066ea8
	add		r0, r7, r3
	strh	r1, [r0, #0x0]
	add		r2, #0x4
	add		r0, r7, r2
	strh	r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r2, #0xa
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	add		r3, #0x8
	add		r0, r7, r3
	str		r1, [r0, #0x0]
	add		r2, #0x8
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	mov		r4, #0x2
	mov		r3, sp
	add		r3, #0xc
	str		r3, [sp, #0x14]
	mov		r2, #0x0
	ldr		r0, _08066eac
	add		r0, r0, r7
	mov		r10, r0
	mov		r1, #0x4
	ldr		r3, _08066eb0
	add		r0, r7, r3
_08066e1e:
	str		r2, [r0, #0x0]
	sub		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08066e1e
	lsl		r0, r4, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	neg		r1, r0
	orr		r1, r0
	lsr		r1, r1, #0x1f
	ldr		r2, _08066eb0
	add		r0, r7, r2
	str		r1, [r0, #0x0]
	ldr		r3, _08066eb4
	add		r1, r7, r3
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	mov		r4, #0x0
	add		r5, r1, #0x0
	add		r0, r7, #0x0
	add		r0, #0x3d
	str		r0, [sp, #0x18]
	ldr		r1, _08066eb8
	add		r1, r7, r1
	str		r1, [sp, #0x20]
	add		r2, #0xb8
	add		r2, r7, r2
	str		r2, [sp, #0x1C]
_08066e5a:
	lsl		r0, r4, #0x18
	lsr		r0, r0, #0x18
	bl		sub_08057828
	cmp		r0, #0x0
	bne		_08066e68
	str		r0, [r5, #0x0]
_08066e68:
	add		r4, #0x1
	cmp		r4, #0x2
	ble		_08066e5a
	add		r0, r7, #0x0
	bl		sub_0806633c
	ldr		r3, [sp, #0x18]
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	cmp		r0, #0x6
	ble		_08066ee0
	cmp		r0, #0x12
	bgt		_08066ec0
	ldr		r0, _08066ebc
	add		r1, r7, r0
	mov		r0, #0x6
	str		r0, [r1, #0x0]
	ldr		r2, _08066eb8
	add		r1, r7, r2
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	sub		r0, #0x6
	b		_08066ef2

.align 2, 0
.pool

_08066e98:	.4byte 0x0203EBE0
_08066e9c:	.4byte 0x00006B44
_08066ea0:	.4byte 0x0000FF90
_08066ea4:	.4byte 0x00006B46
_08066ea8:	.4byte 0x00006B48
_08066eac:	.4byte 0x00006A60
_08066eb0:	.4byte 0x00006A70
_08066eb4:	.4byte 0x00006A74
_08066eb8:	.4byte 0x00006B2C
_08066ebc:	.4byte 0x00006B28

_08066ec0:
	ldr		r3, _08066ed8
	add		r1, r7, r3
	mov		r0, #0x7
	str		r0, [r1, #0x0]
	ldr		r0, _08066edc
	add		r1, r7, r0
	ldr		r2, [sp, #0x18]
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	sub		r0, #0x7
	b		_08066ef2

.align 2, 0
.pool

_08066ed8:	.4byte 0x00006B28
_08066edc:	.4byte 0x00006B2C

_08066ee0:
	ldr		r3, _08066f8c
	add		r1, r7, r3
	ldr		r2, [sp, #0x18]
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	str		r0, [r1, #0x0]
	add		r3, #0x4
	add		r1, r7, r3
	mov		r0, #0x0
_08066ef2:
	str		r0, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281fc
	mov		r0, #0x2
	bl		sub_080281fc
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	bl		sub_08028130
	add		r4, r0, #0x0
	mov		r0, #0x90
	lsl		r0, r0, #0x1
	add		r4, r4, r0
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	mov		r2, #0xc0
	lsl		r2, r2, #0x1
	add		r1, r1, r2
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	ldr		r1, _08066f90
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _08066f94
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	bl		_DrawFrameRunAudio
	mov		r2, #0x0
_08066f5a:
	lsl		r0, r2, #0x2
	mov		r3, r10
	add		r1, r3, r0
	ldr		r1, [r1, #0x0]
	add		r6, r0, #0x0
	cmp		r1, #0x0
	beq		_08066fa0
	add		r0, r2, #0x1
	mov		r8, r0
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r4, r0, #0x8
	ldr		r6, _08066f98
	mov		r5, #0x3
_08066f76:
	add		r1, r4, r6
	ldr		r0, _08066f9c
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	sub		r5, #0x1
	cmp		r5, #0x0
	bge		_08066f76
	b		_08066fd2

_08066f8c:	.4byte 0x00006B28
_08066f90:	.4byte 0x06001000
_08066f94:	.4byte 0x06002000
_08066f98:	.4byte 0x02025400
_08066f9c:	.4byte 0x080be378

_08066fa0:
	mov		r5, #0x0
	add		r3, r2, #0x1
	mov		r8, r3
	ldr		r0, _080670bc
	mov		r9, r0
	lsl		r0, r2, #0x3
	add		r0, r0, r6
	lsl		r4, r0, #0x8
_08066fb0:
	add		r0, r6, r5
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r9
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r1, _080670c0
	add		r1, r4, r1
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r1, #0xc0
	lsl		r1, r1, #0x2
	add		r4, r4, r1
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_08066fb0
_08066fd2:
	bl		_DrawFrameRunAudio
	mov		r2, r8
	cmp		r2, #0x4
	ble		_08066f5a
	bl		_DrawFrameRunAudio
	mov		r4, #0x0
	ldr		r5, _080670c4
_08066fe4:
	bl		sub_08029f34
	ldr		r3, [sp, #0x20]
	ldr		r2, [r3, #0x0]
	add		r2, r2, r4
	lsl		r1, r2, #0x1
	add		r1, r1, r2
	lsl		r1, r1, #0x8
	ldr		r6, _080670c0
	add		r1, r1, r6
	add		r2, r5, #0x0
	ldr		r3, _080670c8
	bl		sub_08029ee4
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r5, r5, r0
	add		r4, #0x1
	cmp		r4, #0x7
	ble		_08066fe4
	ldr		r1, [sp, #0x20]
	ldr		r4, [r1, #0x0]
	ldr		r2, [sp, #0x1C]
	ldr		r0, [r2, #0x0]
	add		r4, r4, r0
	bl		sub_08029f34
	lsl		r1, r4, #0x1
	add		r1, r1, r4
	lsl		r1, r1, #0x8
	add		r1, r1, r6
	ldr		r2, _080670cc
	ldr		r3, _080670c8
	bl		sub_08029ee4
	bl		_DrawFrameRunAudio
	ldr		r0, _080670d0
	ldr		r1, _080670d4
	mov		r2, #0x10
	bl		_CallHardwareSetCpuFast
	ldr		r4, _080670d8
	mov		r0, #0x1
	mov		r1, #0x1
	mov		r2, #0x0
	bl		sub_080281b0
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	add		r0, r7, #0x0
	bl		sub_08066478
	bl		_DrawFrameRunAudio
	ldr		r0, _080670dc
	ldr		r4, _080670e0
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r0, _080670e4
	ldr		r3, _080670e8
	add		r4, r4, r3
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	ldr		r4, [r7, #0x34]
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	mov		r0, #0xb0
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r0, _080670ec
	add		r1, r0, #0x0
	add		r1, #0x20
	mov		r3, #0x10
	str		r3, [sp, #0x0]
	add		r3, r4, #0x0
	bl		sub_08005ddc
	bl		_DrawFrameRunAudio
	add		r0, r7, #0x0
	bl		sub_08066ac8
	ldr		r1, _080670f0
	add		r0, r7, r1
	ldr		r2, _080670f4
	add		r1, r7, r2
	ldr		r2, [r0, #0x0]
	ldr		r0, [r1, #0x0]
	add		r0, r2, r0
	cmp		r0, #0x0
	bge		_080670aa
	add		r0, #0x3
_080670aa:
	asr		r2, r0, #0x2
	mov		r0, #0x0
	cmp		r2, #0x4
	bhi		_0806714a
	lsl		r0, r2, #0x2
	ldr		r1, _080670f8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080670bc:	.4byte 0x08102bf8
_080670c0:	.4byte 0x02025400
_080670c4:	.4byte 0x06005800
_080670c8:	.4byte 0x80000180
_080670cc:	.4byte 0x0600F000
_080670d0:	.4byte 0x0600C280
_080670d4:	.4byte 0x06007CC0
_080670d8:	.4byte 0x0809538c
_080670dc:	.4byte 0x08095728
_080670e0:	.4byte 0x02005400
_080670e4:	.4byte 0x0809583c
_080670e8:	.4byte 0xFFFFF000
_080670ec:	.4byte 0x080ce084
_080670f0:	.4byte 0x00006B28
_080670f4:	.4byte 0x00006B2C
_080670f8:	.4byte 0x080670fc
_080670fc:	.4byte 0x08067110

.incbin "base.gba", 0x67100, 0x10
	thumb_func_end sub_08066db8


.incbin "base.gba", 0x67110, 0x20

_08067130:

.incbin "base.gba", 0x67130, 0xC
_0806713c:

.incbin "base.gba", 0x6713C, 0xE

_0806714a:

.incbin "base.gba", 0x6714A, 0xA
_08067154:

.incbin "base.gba", 0x67154, 0x22
_08067176:

.incbin "base.gba", 0x67176, 0x28
_0806719e:

.incbin "base.gba", 0x6719E, 0x7E
_0806721c:

.incbin "base.gba", 0x6721C, 0x2A
_08067246:

.incbin "base.gba", 0x67246, 0x1C
_08067262:

.incbin "base.gba", 0x67262, 0xA
_0806726c:

.incbin "base.gba", 0x6726C, 0x6E
_080672da:

.incbin "base.gba", 0x672DA, 0x1A
_080672f4:	.4byte 0x02008400
_080672f8:	.4byte 0x00006A74
_080672fc:	.4byte 0x08098fb8
_08067300:	.4byte 0x06004660
_08067304:	.4byte 0x80000100
_08067308:	.4byte 0x02004400
_0806730c:	.4byte 0x00006B2C
_08067310:	.4byte 0x80000400
_08067314:	.4byte 0x06000800
_08067318:	.4byte 0x00004405
_0806731c:	.4byte 0x000B00D8
_08067320:	.4byte 0x080e4940
_08067324:	.4byte 0x030052C8
_08067328:	.4byte 0x03005220
_0806732c:	.4byte 0x00006B28
_08067330:	.4byte 0x06005800
_08067334:	.4byte 0x02025400
_08067338:	.4byte 0x80000180
_0806733c:	.4byte 0x0600F000
_08067340:	.4byte 0x08067344
_08067344:	.4byte 0x08067358

.incbin "base.gba", 0x67348, 0x32

_0806737a:

.incbin "base.gba", 0x6737A, 0xC
_08067386:

.incbin "base.gba", 0x67386, 0xE
_08067394:

.incbin "base.gba", 0x67394, 0x28
_080673bc:

.incbin "base.gba", 0x673BC, 0xE
_080673ca:

.incbin "base.gba", 0x673CA, 0xC
_080673d6:

.incbin "base.gba", 0x673D6, 0x1C
_080673f2:

.incbin "base.gba", 0x673F2, 0x12
_08067404:

.incbin "base.gba", 0x67404, 0x6
_0806740a:

.incbin "base.gba", 0x6740A, 0x96
_080674a0:	.4byte 0x02008400
_080674a4:	.4byte 0x06000800
_080674a8:	.4byte 0x80000400
_080674ac:	.4byte 0x02004400
_080674b0:	.4byte 0x00006B2C
_080674b4:	.4byte 0x00006B28
_080674b8:	.4byte 0x00006A60
_080674bc:	.4byte 0x080ce084
_080674c0:	.4byte 0x000B00D8
_080674c4:	.4byte 0x080e4940

_080674c8:

.incbin "base.gba", 0x674C8, 0x108
_080675d0:	.4byte 0x02004400
_080675d4:	.4byte 0x01000200
_080675d8:	.4byte 0x80000400
_080675dc:	.4byte 0x06001000
_080675e0:	.4byte 0x06002000
_080675e4:	.4byte 0x08092918
_080675e8:	.4byte 0x080993b8
_080675ec:	.4byte 0x080994bc
_080675f0:	.4byte 0x06000800
_080675f4:	.4byte 0x00004208
_080675f8:	.4byte 0x00004409
_080675fc:	.4byte 0x00000844
_08067600:	.4byte 0x00006A3C
_08067604:	.4byte 0x00006B28
_08067608:	.4byte 0x00006A44

_0806760c:

.incbin "base.gba", 0x6760C, 0x4
_08067610:

.incbin "base.gba", 0x67610, 0x14
	thumb_func_start sub_08067624
sub_08067624:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	str		r0, [sp, #0xC]
	mov		r9, r1
	str		r2, [sp, #0x10]
	mov		r10, r3
	cmp		r0, #0x0
	bne		_0806767c
	mov		r0, r9
	add		r0, #0x2
	lsl		r1, r2, #0x5
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r0, r10
	ldr		r6, _0806766c
	ldr		r5, _08067670
	ldr		r3, _08067674
	ldr		r2, _08067678
	add		r4, r0, #0x0
	add		r4, #0x40
	mov		r1, #0x2
_08067656:
	strh	r6, [r0, #0x0]
	strh	r5, [r0, #0x2]
	strh	r3, [r4, #0x0]
	strh	r2, [r4, #0x2]
	add		r4, #0x4
	add		r0, #0x4
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_08067656
	b		_080678c8

.align 2, 0
.pool

_0806766c:	.4byte 0x0000F2C0
_08067670:	.4byte 0x0000F2C1
_08067674:	.4byte 0x0000F2C2
_08067678:	.4byte 0x0000F2C3

_0806767c:
	ldr		r0, [sp, #0x4+0x34]
	ldr		r1, [sp, #0xC]
	cmp		r1, r0
	bgt		_08067688
	cmp		r1, #0x0
	bge		_080676a8
_08067688:
	mov		r0, r9
	add		r0, #0x2
	ldr		r2, _080676a4
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	ldr		r1, [sp, #0x0+0x34]
	str		r1, [sp, #0x4]
	mov		r1, #0xa
	str		r1, [sp, #0x8]
	ldr		r1, [sp, #0x10]
	mov		r3, r10
	bl		sub_08013e9c
	b		_080678c8

_080676a4:	.4byte 0x08110924

_080676a8:
	ldr		r4, _08067720
	ldr		r0, [sp, #0xC]
	add		r1, r4, #0x0
	bl		sub_0807d80c
	add		r7, r0, #0x0
	mul		r4, r7
	ldr		r2, [sp, #0xC]
	sub		r4, r2, r4
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	add		r0, r4, #0x0
	bl		sub_0807d80c
	add		r6, r0, #0x0
	lsl		r0, r6, #0x5
	sub		r0, r0, r6
	lsl		r0, r0, #0x2
	add		r0, r0, r6
	lsl		r0, r0, #0x3
	sub		r4, r4, r0
	mov		r5, #0x64
	add		r0, r4, #0x0
	mov		r1, #0x64
	bl		sub_0807d80c
	mov		r8, r0
	mov		r0, r8
	mul		r0, r5
	sub		r4, r4, r0
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	mov		r12, r0
	lsl		r0, r0, #0x2
	add		r0, r12
	lsl		r0, r0, #0x1
	sub		r4, r4, r0
	cmp		r7, #0x0
	beq		_08067724
	ldr		r0, [sp, #0x10]
	lsl		r3, r0, #0x5
	mov		r2, r9
	add		r1, r3, r2
	lsl		r1, r1, #0x1
	add		r1, r10
	ldr		r0, [sp, #0x0+0x34]
	lsl		r2, r0, #0xc
	add		r0, r7, #0x0
	add		r0, #0x10
	orr		r0, r2
	strh	r0, [r1, #0x2]
	add		r1, #0x42
	add		r0, r7, #0x0
	add		r0, #0x30
	orr		r0, r2
	strh	r0, [r1, #0x0]
	add		r5, r2, #0x0
	b		_0806773c

_08067720:	.4byte 0x00002710

_08067724:
	ldr		r2, [sp, #0x10]
	lsl		r1, r2, #0x5
	mov		r2, r9
	add		r0, r1, r2
	lsl		r0, r0, #0x1
	add		r0, r10
	strh	r7, [r0, #0x2]
	add		r0, #0x42
	strh	r7, [r0, #0x0]
	add		r3, r1, #0x0
	ldr		r0, [sp, #0x0+0x34]
	lsl		r5, r0, #0xc
_0806773c:
	cmp		r7, #0x0
	bne		_08067744
	cmp		r6, #0x0
	beq		_0806776e
_08067744:
	mov		r2, r9
	add		r1, r3, r2
	lsl		r1, r1, #0x1
	add		r1, r10
	add		r0, r6, #0x0
	add		r0, #0x10
	orr		r0, r5
	strh	r0, [r1, #0x4]
	add		r2, r1, #0x0
	add		r2, #0x44
	add		r0, r6, #0x0
	add		r0, #0x30
	orr		r0, r5
	strh	r0, [r2, #0x0]
	strh	r5, [r1, #0x6]
	add		r1, #0x46
	mov		r2, #0x3b
	add		r0, r5, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x0]
	b		_08067784
_0806776e:
	mov		r1, r9
	add		r0, r3, r1
	lsl		r0, r0, #0x1
	add		r0, r10
	strh	r6, [r0, #0x4]
	add		r1, r0, #0x0
	add		r1, #0x44
	strh	r6, [r1, #0x0]
	strh	r6, [r0, #0x6]
	add		r0, #0x46
	strh	r6, [r0, #0x0]
_08067784:
	cmp		r7, #0x0
	bne		_08067792
	cmp		r6, #0x0
	bne		_08067792
	mov		r2, r8
	cmp		r2, #0x0
	beq		_080677ac
_08067792:
	mov		r1, r9
	add		r0, r3, r1
	lsl		r0, r0, #0x1
	add		r0, r10
	mov		r1, r8
	add		r1, #0x10
	orr		r1, r5
	strh	r1, [r0, #0x8]
	add		r0, #0x48
	mov		r1, r8
	add		r1, #0x30
	orr		r1, r5
	b		_080677ba
_080677ac:
	mov		r2, r9
	add		r0, r3, r2
	lsl		r0, r0, #0x1
	add		r0, r10
	mov		r1, r8
	strh	r1, [r0, #0x8]
	add		r0, #0x48
_080677ba:
	strh	r1, [r0, #0x0]
	cmp		r7, #0x0
	bne		_080677d0
	cmp		r6, #0x0
	bne		_080677d0
	mov		r2, r8
	cmp		r2, #0x0
	bne		_080677d0
	mov		r0, r12
	cmp		r0, #0x0
	beq		_080677ea
_080677d0:
	mov		r1, r9
	add		r0, r3, r1
	lsl		r0, r0, #0x1
	add		r0, r10
	mov		r1, r12
	add		r1, #0x10
	orr		r1, r5
	strh	r1, [r0, #0xa]
	add		r0, #0x4a
	mov		r1, r12
	add		r1, #0x30
	orr		r1, r5
	b		_080677f8
_080677ea:
	mov		r2, r9
	add		r0, r3, r2
	lsl		r0, r0, #0x1
	add		r0, r10
	mov		r1, r12
	strh	r1, [r0, #0xa]
	add		r0, #0x4a
_080677f8:
	strh	r1, [r0, #0x0]
	mov		r2, r9
	add		r0, r3, r2
	lsl		r0, r0, #0x1
	mov		r1, r10
	add		r2, r0, r1
	add		r0, r4, #0x0
	add		r0, #0x10
	orr		r0, r5
	strh	r0, [r2, #0xc]
	add		r1, r2, #0x0
	add		r1, #0x4c
	add		r0, r4, #0x0
	add		r0, #0x30
	orr		r0, r5
	strh	r0, [r1, #0x0]
	ldr		r0, [sp, #0xC]
	cmp		r0, #0x2
	beq		_08067854
	cmp		r0, #0x2
	bgt		_08067828
	cmp		r0, #0x1
	beq		_08067830
	b		_0806789c
_08067828:
	ldr		r1, [sp, #0xC]
	cmp		r1, #0x3
	beq		_08067878
	b		_0806789c
_08067830:
	mov		r1, #0x93
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0xe]
	add		r3, r2, #0x0
	add		r3, #0x4e
	mov		r1, #0xb3
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	mov		r1, #0x94
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x10]
	add		r1, r2, #0x0
	add		r1, #0x50
	mov		r0, #0xb4
	b		_080678c4
_08067854:
	mov		r1, #0x8e
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0xe]
	add		r3, r2, #0x0
	add		r3, #0x4e
	mov		r1, #0xae
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	mov		r1, #0x84
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x10]
	add		r1, r2, #0x0
	add		r1, #0x50
	mov		r0, #0xa4
	b		_080678c4
_08067878:
	mov		r1, #0x92
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0xe]
	add		r3, r2, #0x0
	add		r3, #0x4e
	mov		r1, #0xb2
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x0]
	mov		r1, #0x84
	add		r0, r5, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x10]
	add		r1, r2, #0x0
	add		r1, #0x50
	mov		r0, #0xa4
	b		_080678c4
_0806789c:
	mov		r2, r9
	add		r1, r3, r2
	lsl		r1, r1, #0x1
	add		r1, r10
	mov		r2, #0x94
	add		r0, r5, #0x0
	orr		r0, r2
	strh	r0, [r1, #0xe]
	add		r3, r1, #0x0
	add		r3, #0x4e
	mov		r2, #0xb4
	add		r0, r5, #0x0
	orr		r0, r2
	strh	r0, [r3, #0x0]
	mov		r2, #0x88
	add		r0, r5, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x10]
	add		r1, #0x50
	mov		r0, #0xa8
_080678c4:
	orr		r5, r0
	strh	r5, [r1, #0x0]
_080678c8:
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08067624

	thumb_func_start sub_080678d8
sub_080678d8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	add		r7, r0, #0x0
	mov		r8, r1
	add		r6, r2, #0x0
	add		r5, r3, #0x0
	ldr		r1, [sp, #0xc+0x28]
	mov		r0, #0x3
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r0, r6, #0x0
	mov		r1, #0x2
	mov		r2, r8
	add		r3, r7, #0x0
	bl		sub_08067624
	cmp		r6, #0x0
	bne		_08067908
	mov		r0, #0x10
	orr		r5, r0
_08067908:
	mov		r0, r8
	lsl		r4, r0, #0x6
	add		r1, r4, #0x0
	add		r1, #0x18
	add		r1, r7, r1
	mov		r2, #0xd8
	lsl		r2, r2, #0x2
	mov		r0, #0xb0
	lsl		r0, r0, #0x2
	str		r0, [sp, #0x0]
	mov		r0, #0xf
	mov		r9, r0
	str		r0, [sp, #0x4]
	add		r0, r5, #0x0
	mov		r3, #0x9
	bl		sub_0800e5c0
	mov		r10, r4
	cmp		r6, #0x0
	ble		_08067976
	ldr		r4, [sp, #0x0+0x28]
	mov		r1, r8
	lsl		r0, r1, #0x5
	add		r0, #0xf
	lsl		r0, r0, #0x1
	add		r0, r7, r0
	mov		r5, #0x1f
	mov		r9, r5
	ldr		r1, [sp, #0x8+0x28]
	lsl		r1, r1, #0xc
	mov		r12, r1
	add		r3, r0, #0x0
	add		r3, #0x40
	add		r2, r0, #0x0
	mov		r6, #0x4
_0806794e:
	ldrb	r0, [r4, #0x0]
	lsr		r1, r0, #0x5
	lsl		r1, r1, #0x6
	mov		r5, r9
	and		r0, r5
	add		r1, r1, r0
	mov		r0, r12
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r1, #0x20
	mov		r0, r12
	orr		r1, r0
	strh	r1, [r3, #0x0]
	add		r4, #0x1
	add		r3, #0x2
	add		r2, #0x2
	sub		r6, #0x1
	cmp		r6, #0x0
	bge		_0806794e
	b		_08067992
_08067976:
	mov		r0, #0x10
	orr		r0, r5
	mov		r2, r10
	add		r2, #0x1e
	add		r2, r7, r2
	mov		r1, #0xc8
	lsl		r1, r1, #0x2
	str		r1, [sp, #0x0]
	mov		r1, r9
	str		r1, [sp, #0x4]
	add		r1, r7, #0x0
	mov		r3, #0xc
	bl		sub_0800e620
_08067992:
	ldr		r5, [sp, #0x4+0x28]
	cmp		r5, #0x0
	beq		_080679ae
	lsl		r0, r5, #0x10
	lsr		r0, r0, #0x10
	mov		r1, r10
	add		r1, #0x2a
	add		r1, r7, r1
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	b		_080679d8
_080679ae:
	mov		r1, r8
	lsl		r0, r1, #0x5
	add		r0, #0x15
	lsl		r0, r0, #0x1
	add		r0, r7, r0
	ldr		r6, _080679e8
	ldr		r5, _080679ec
	ldr		r4, _080679f0
	ldr		r3, _080679f4
	add		r1, r0, #0x0
	add		r1, #0x40
	mov		r2, #0x2
_080679c6:
	strh	r6, [r0, #0x0]
	strh	r5, [r0, #0x2]
	strh	r4, [r1, #0x0]
	strh	r3, [r1, #0x2]
	add		r1, #0x4
	add		r0, #0x4
	sub		r2, #0x1
	cmp		r2, #0x0
	bge		_080679c6
_080679d8:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080679e8:	.4byte 0x0000F2C0
_080679ec:	.4byte 0x0000F2C1
_080679f0:	.4byte 0x0000F2C2
_080679f4:	.4byte 0x0000F2C3
	thumb_func_end sub_080678d8

	thumb_func_start sub_080679f8
sub_080679f8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	add		r6, r3, #0x0
	ldr		r0, [sp, #0x0+0x18]
	lsl		r2, r2, #0x5
	add		r1, r1, r2
	lsl		r1, r1, #0x1
	add		r7, r7, r1
	cmp		r0, #0x2
	beq		_08067a16
	cmp		r0, #0x4
	beq		_08067a50
	b		_08067adc
_08067a16:
	add		r0, r6, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	add		r3, r0, #0x0
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r6, r0
	add		r0, r3, #0x0
	add		r0, #0x10
	ldr		r2, _08067a4c
	add		r1, r2, #0x0
	orr		r0, r1
	strh	r0, [r7, #0x0]
	add		r2, r7, #0x0
	add		r2, #0x40
	add		r0, r3, #0x0
	add		r0, #0x30
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x10
	orr		r0, r1
	strh	r0, [r7, #0x2]
	b		_08067ad2

.align 2, 0
.pool

_08067a4c:	.4byte 0xFFFFF000

_08067a50:
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	add		r0, r6, #0x0
	bl		sub_0807d80c
	add		r5, r0, #0x0
	lsl		r4, r5, #0x5
	sub		r4, r4, r5
	lsl		r4, r4, #0x2
	add		r4, r4, r5
	lsl		r4, r4, #0x3
	sub		r4, r6, r4
	mov		r0, #0x64
	mov		r8, r0
	add		r0, r4, #0x0
	mov		r1, #0x64
	bl		sub_0807d80c
	add		r6, r0, #0x0
	mov		r0, r8
	mul		r0, r6
	sub		r4, r4, r0
	add		r0, r4, #0x0
	mov		r1, #0xa
	bl		sub_0807d80c
	add		r3, r0, #0x0
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r4, r4, r0
	add		r0, r5, #0x0
	add		r0, #0x10
	ldr		r2, _08067ae8
	add		r1, r2, #0x0
	orr		r0, r1
	strh	r0, [r7, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x40
	add		r5, #0x30
	orr		r5, r1
	strh	r5, [r0, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x10
	orr		r0, r1
	strh	r0, [r7, #0x2]
	add		r0, r7, #0x0
	add		r0, #0x42
	add		r6, #0x30
	orr		r6, r1
	strh	r6, [r0, #0x0]
	add		r0, r3, #0x0
	add		r0, #0x10
	orr		r0, r1
	strh	r0, [r7, #0x4]
	add		r2, r7, #0x0
	add		r2, #0x44
	add		r0, r3, #0x0
	add		r0, #0x30
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x10
	orr		r0, r1
	strh	r0, [r7, #0x6]
_08067ad2:
	add		r2, #0x2
	add		r0, r4, #0x0
	add		r0, #0x30
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08067adc:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08067ae8:	.4byte 0xFFFFF000
	thumb_func_end sub_080679f8

	thumb_func_start sub_08067aec
sub_08067aec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r8, r0
	mov		r9, r1
	add		r4, r2, #0x0
	add		r5, r3, #0x0
	ldr		r7, [sp, #0x0+0x28]
	mov		r0, #0x0
	bl		sub_080281a4
	add		r6, r0, #0x0
	ldr		r0, _08067bdc
	cmp		r4, r0
	bls		_08067b12
	mov		r4, #0x0
_08067b12:
	cmp		r5, #0x63
	bls		_08067b18
	mov		r5, #0x0
_08067b18:
	cmp		r7, #0x63
	bls		_08067b1e
	mov		r7, #0x0
_08067b1e:
	mov		r0, #0x4
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r1, r8
	mov		r2, r9
	add		r3, r4, #0x0
	bl		sub_080679f8
	mov		r1, r8
	add		r1, #0x5
	mov		r0, #0x2
	mov		r10, r0
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r2, r9
	add		r3, r5, #0x0
	bl		sub_080679f8
	mov		r1, r8
	add		r1, #0x8
	mov		r2, r10
	str		r2, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r2, r9
	add		r3, r7, #0x0
	bl		sub_080679f8
	mov		r4, r9
	lsl		r4, r4, #0x5
	str		r4, [sp, #0x4]
	add		r0, r4, #0x0
	add		r0, r8
	lsl		r0, r0, #0x1
	add		r0, r0, r6
	ldr		r1, _08067be0
	add		r3, r1, #0x0
	strh	r3, [r0, #0x8]
	add		r1, r0, #0x0
	add		r1, #0x48
	ldr		r4, _08067be4
	add		r2, r4, #0x0
	strh	r2, [r1, #0x0]
	strh	r3, [r0, #0xe]
	add		r0, #0x4e
	strh	r2, [r0, #0x0]
	mov		r7, r8
	add		r7, #0xb
	ldr		r4, [sp, #0x4+0x28]
	ldr		r5, [sp, #0x8+0x28]
	mov		r0, #0x0
	bl		sub_080281a4
	add		r6, r0, #0x0
	cmp		r4, #0x63
	bls		_08067b8e
	mov		r4, #0x0
_08067b8e:
	cmp		r5, #0x63
	bls		_08067b94
	mov		r5, #0x0
_08067b94:
	mov		r0, r10
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	add		r1, r7, #0x0
	mov		r2, r9
	add		r3, r4, #0x0
	bl		sub_080679f8
	mov		r1, r8
	add		r1, #0xe
	mov		r2, r10
	str		r2, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r2, r9
	add		r3, r5, #0x0
	bl		sub_080679f8
	ldr		r4, [sp, #0x4]
	add		r0, r4, r7
	lsl		r0, r0, #0x1
	add		r0, r0, r6
	ldr		r2, _08067be8
	add		r1, r2, #0x0
	strh	r1, [r0, #0x4]
	add		r0, #0x44
	ldr		r4, _08067bec
	add		r1, r4, #0x0
	strh	r1, [r0, #0x0]
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08067bdc:	.4byte 0x0000270F
_08067be0:	.4byte 0x0000F00F
_08067be4:	.4byte 0x0000F02F
_08067be8:	.4byte 0x0000F01A
_08067bec:	.4byte 0x0000F03A
	thumb_func_end sub_08067aec

	thumb_func_start sub_08067bf0
sub_08067bf0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x54
	str		r0, [sp, #0x40]
	str		r1, [sp, #0x44]
	mov		r9, r2
	str		r3, [sp, #0x48]
	bl		sub_08057370
	mov		r2, r9
	lsl		r1, r2, #0x2
	add		r1, r9
	lsl		r1, r1, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r1, r1, r3
	add		r0, r0, r1
	mov		r8, r0
	ldr		r0, [sp, #0x40]
	bl		sub_08060bf4
	add		r7, r0, #0x0
	mov		r0, #0x0
	mov		r1, #0x1
	mov		r2, #0x1
	bl		sub_080281b0
	mov		r1, r8
	ldrb	r1, [r1, #0x8]
	str		r1, [sp, #0x4C]
	mov		r3, #0x0
	add		r2, sp, #0x18
	mov		r10, r2
	mov		r1, #0xe0
	lsl		r1, r1, #0x2
	add		r6, r1, #0x0
	ldr		r2, _08067c74
	add		r4, r2, #0x0
	add		r1, #0xc
	add		r5, r1, #0x0
	add		r2, r0, #0x0
	add		r2, #0x40
	add		r1, r0, #0x0
_08067c4c:
	add		r0, r3, r6
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		r0, r3, r5
	orr		r0, r4
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	add		r1, #0x2
	add		r3, #0x1
	cmp		r3, #0xb
	ble		_08067c4c
	ldr		r2, [sp, #0x44]
	cmp		r2, #0x7
	bls		_08067c6a
	b		_08067d5a
_08067c6a:
	lsl		r0, r2, #0x2
	ldr		r1, _08067c78
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08067c74:	.4byte 0xFFFFB000
_08067c78:	.4byte 0x08067c7c
_08067c7c:	.4byte 0x08067c9c

.incbin "base.gba", 0x67C80, 0x1C
	thumb_func_end sub_08067bf0


.incbin "base.gba", 0x67C9C, 0xBE

_08067d5a:

.incbin "base.gba", 0x67D5A, 0x1C
_08067d76:

.incbin "base.gba", 0x67D76, 0x34
_08067daa:

.incbin "base.gba", 0x67DAA, 0x7A
_08067e24:	.4byte 0x081109c0
_08067e28:	.4byte 0x0811090c
_08067e2c:	.4byte 0x081108e0

_08067e30:

.incbin "base.gba", 0x67E30, 0x3E
_08067e6e:

.incbin "base.gba", 0x67E6E, 0x4
_08067e72:

.incbin "base.gba", 0x67E72, 0x1C
_08067e8e:

.incbin "base.gba", 0x67E8E, 0xA
_08067e98:	.4byte 0x00000BE8
_08067e9c:	.4byte 0x0203EBE0
_08067ea0:	.4byte 0x00005F14
_08067ea4:	.4byte 0x00006A3C
_08067ea8:	.4byte 0x081108e0

_08067eac:

.incbin "base.gba", 0x67EAC, 0x22
_08067ece:

.incbin "base.gba", 0x67ECE, 0x4
_08067ed2:

.incbin "base.gba", 0x67ED2, 0x22
_08067ef4:

.incbin "base.gba", 0x67EF4, 0x8
_08067efc:

.incbin "base.gba", 0x67EFC, 0xE
_08067f0a:

.incbin "base.gba", 0x67F0A, 0x8
_08067f12:

.incbin "base.gba", 0x67F12, 0x2E
_08067f40:	.4byte 0x0203EBE0
_08067f44:	.4byte 0x00005F14
_08067f48:	.4byte 0x00006A3C
_08067f4c:	.4byte 0x081109e0
_08067f50:	.4byte 0x02033780
_08067f54:	.4byte 0x000003E7
_08067f58:	.4byte 0x081149ec

_08067f5c:

.incbin "base.gba", 0x67F5C, 0x2
_08067f5e:

.incbin "base.gba", 0x67F5E, 0x7A
_08067fd8:	.4byte 0x0811489c
_08067fdc:	.4byte 0x08112474
_08067fe0:	.4byte 0x08111ea0
_08067fe4:	.4byte 0x08114a2c

_08067fe8:

.incbin "base.gba", 0x67FE8, 0x28
_08068010:	.4byte 0x02033780
_08068014:	.4byte 0x00006A3C
_08068018:	.4byte 0x000003E7

_0806801c:

.incbin "base.gba", 0x6801C, 0xC
_08068028:

.incbin "base.gba", 0x68028, 0xC
_08068034:	.4byte 0x00001388

_08068038:

.incbin "base.gba", 0x68038, 0xC
_08068044:	.4byte 0x00002710

_08068048:

.incbin "base.gba", 0x68048, 0xC
_08068054:	.4byte 0x00004E20

_08068058:

.incbin "base.gba", 0x68058, 0xC
_08068064:	.4byte 0x0000C350

_08068068:

.incbin "base.gba", 0x68068, 0xA
_08068072:

.incbin "base.gba", 0x68072, 0xA
_0806807c:	.4byte 0x0001869F
_08068080:	.4byte 0x081148dc

_08068084:

.incbin "base.gba", 0x68084, 0x10
_08068094:

.incbin "base.gba", 0x68094, 0x68
_080680fc:

.incbin "base.gba", 0x680FC, 0x28
_08068124:

.incbin "base.gba", 0x68124, 0x24
_08068148:

.incbin "base.gba", 0x68148, 0x8
_08068150:

.incbin "base.gba", 0x68150, 0x18
_08068168:	.4byte 0x081148e4
_0806816c:	.4byte 0x08112474
_08068170:	.4byte 0x08111ea0
_08068174:	.4byte 0x08114a2c
_08068178:	.4byte 0x0203EBE0
_0806817c:	.4byte 0x00005F14
_08068180:	.4byte 0x00006A3C
_08068184:	.4byte 0x02033780
_08068188:	.4byte 0x00000774
_0806818c:	.4byte 0x08068190
_08068190:	.4byte 0x080681b0

.incbin "base.gba", 0x68194, 0x68

_080681fc:

.incbin "base.gba", 0x681FC, 0x3E
_0806823a:

.incbin "base.gba", 0x6823A, 0x52
_0806828c:

.incbin "base.gba", 0x6828C, 0x24
_080682b0:

.incbin "base.gba", 0x682B0, 0x10
_080682c0:	.4byte 0x02033780
_080682c4:	.4byte 0x0203EBE0
_080682c8:	.4byte 0x00005F14
_080682cc:	.4byte 0x00006A3C
_080682d0:	.4byte 0x00000774
_080682d4:	.4byte 0x000004DE
_080682d8:	.4byte 0x0000049E
	thumb_func_start sub_080682dc
sub_080682dc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0xc
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	str		r2, [sp, #0x8]
	ldr		r0, _08068364
	ldr		r0, [r0, #0x0]
	mov		r10, r0
	bl		sub_08057370
	add		r2, r0, #0x0
	ldr		r4, _08068368
	add		r4, r10
	ldr		r0, [r4, #0x0]
	lsl		r1, r0, #0x2
	add		r1, r1, r0
	lsl		r1, r1, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r1, r1, r3
	add		r5, r2, r1
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	ldr		r1, _0806836c
	lsr		r0, r0, #0x16
	add		r0, r0, r1
	ldr		r2, [r0, #0x0]
	mov		r0, #0x0
	mov		r8, r0
	mov		r6, #0x0
	mov		r7, #0x0
	mov		r1, #0x1
	mov		r9, r1
	ldr		r1, [r4, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r3, _08068370
	add		r0, r0, r3
	mov		r1, #0xe9
	lsl		r1, r1, #0x3
	add		r0, r0, r1
	ldr		r3, [r0, #0x0]
	ldr		r4, [r5, #0x4]
	ldr		r0, [r2, #0x20]
	ldrh	r2, [r0, #0x6]
	ldr		r0, _08068374
	cmp		r3, r0
	ble		_08068378
	cmp		r4, #0x1
	beq		_08068350
	mov		r0, #0x0
	mov		r9, r0
_08068350:
	ldrh	r1, [r5, #0x2]
	mov		r5, #0x96
	lsl		r5, r5, #0x2
	add		r0, r2, r5
	cmp		r1, r0
	ble		_08068380
	mov		r0, #0x0
	mov		r9, r0
	b		_08068388

.align 2, 0
.pool

_08068364:	.4byte 0x0203EBE0
_08068368:	.4byte 0x00006A3C
_0806836c:	.4byte 0x08102bf8
_08068370:	.4byte 0x02033780
_08068374:	.4byte 0x000003E7

_08068378:
	cmp		r4, #0x1
	beq		_08068380
	mov		r1, #0x0
	mov		r9, r1
_08068380:
	mov		r2, r9
	cmp		r2, #0x0
	beq		_08068388
	b		_0806856a
_08068388:
	cmp		r3, #0x0
	beq		_08068398
	mov		r0, #0x64
	mul		r0, r4
	add		r1, r3, #0x0
	bl		sub_08071b70
	b		_0806839a
_08068398:
	mov		r0, #0x0
_0806839a:
	mov		r1, #0x1
	cmp		r4, #0xa
	ble		_080683a2
	mov		r1, #0x0
_080683a2:
	cmp		r1, #0x0
	beq		_080683ac
	mov		r3, #0x1
	mov		r8, r3
	b		_08068406
_080683ac:
	mov		r1, #0x1
	cmp		r4, #0x64
	ble		_080683b4
	mov		r1, #0x0
_080683b4:
	cmp		r1, #0x0
	beq		_080683bc
	mov		r5, #0x2
	b		_08068404
_080683bc:
	mov		r1, #0x1
	cmp		r0, #0xa
	ble		_080683c4
	mov		r1, #0x0
_080683c4:
	cmp		r1, #0x0
	beq		_080683ce
	mov		r0, #0x3
	mov		r8, r0
	b		_08068406
_080683ce:
	mov		r1, #0x1
	cmp		r0, #0x19
	ble		_080683d6
	mov		r1, #0x0
_080683d6:
	cmp		r1, #0x0
	beq		_080683e0
	mov		r1, #0x4
	mov		r8, r1
	b		_08068406
_080683e0:
	mov		r1, #0x1
	cmp		r0, #0x32
	ble		_080683e8
	mov		r1, #0x0
_080683e8:
	cmp		r1, #0x0
	beq		_080683f2
	mov		r2, #0x5
	mov		r8, r2
	b		_08068406
_080683f2:
	mov		r1, #0x1
	cmp		r0, #0x4b
	ble		_080683fa
	mov		r1, #0x0
_080683fa:
	mov		r3, #0x7
	mov		r8, r3
	cmp		r1, #0x0
	beq		_08068406
	mov		r5, #0x6
_08068404:
	mov		r8, r5
_08068406:
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0806840e
	b		_0806856a
_0806840e:
	ldr		r0, _08068438
	add		r0, r10
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r1, _0806843c
	add		r0, r0, r1
	ldr		r2, _08068440
	add		r1, r0, r2
	ldr		r1, [r1, #0x0]
	ldr		r3, _08068444
	add		r0, r0, r3
	ldr		r4, [r0, #0x0]
	cmp		r1, #0x0
	beq		_08068448
	mov		r0, #0x64
	mul		r0, r4
	bl		sub_08071b70
	b		_0806844a

_08068438:	.4byte 0x00006A3C
_0806843c:	.4byte 0x02033780
_08068440:	.4byte 0x0000074C
_08068444:	.4byte 0x0000076C

_08068448:
	mov		r0, #0x0
_0806844a:
	mov		r1, #0x1
	cmp		r4, #0x1
	ble		_08068452
	mov		r1, #0x0
_08068452:
	cmp		r1, #0x0
	beq		_0806845a
	mov		r6, #0x1
	b		_080684ba
_0806845a:
	mov		r1, #0x1
	cmp		r4, #0xa
	ble		_08068462
	mov		r1, #0x0
_08068462:
	cmp		r1, #0x0
	beq		_0806846a
	mov		r6, #0x2
	b		_080684ba
_0806846a:
	mov		r1, #0x1
	cmp		r4, #0x32
	ble		_08068472
	mov		r1, #0x0
_08068472:
	cmp		r1, #0x0
	beq		_0806847a
	mov		r6, #0x3
	b		_080684ba
_0806847a:
	mov		r1, #0x1
	cmp		r4, #0x64
	ble		_08068482
	mov		r1, #0x0
_08068482:
	cmp		r1, #0x0
	beq		_0806848a
	mov		r6, #0x4
	b		_080684ba
_0806848a:
	mov		r1, #0x1
	cmp		r0, #0xa
	ble		_08068492
	mov		r1, #0x0
_08068492:
	cmp		r1, #0x0
	beq		_0806849a
	mov		r6, #0x5
	b		_080684ba
_0806849a:
	mov		r1, #0x1
	cmp		r0, #0x19
	ble		_080684a2
	mov		r1, #0x0
_080684a2:
	cmp		r1, #0x0
	beq		_080684aa
	mov		r6, #0x6
	b		_080684ba
_080684aa:
	mov		r1, #0x1
	cmp		r0, #0x32
	ble		_080684b2
	mov		r1, #0x0
_080684b2:
	mov		r6, #0x8
	cmp		r1, #0x0
	beq		_080684ba
	mov		r6, #0x7
_080684ba:
	mov		r5, r9
	cmp		r5, #0x0
	bne		_0806856a
	ldr		r0, _080684f0
	add		r0, r10
	ldr		r1, [r0, #0x0]
	lsl		r0, r1, #0x4
	sub		r0, r0, r1
	lsl		r0, r0, #0x7
	ldr		r1, _080684f4
	add		r0, r0, r1
	mov		r2, #0xea
	lsl		r2, r2, #0x3
	add		r1, r0, r2
	ldr		r1, [r1, #0x0]
	mov		r3, #0xee
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	ldr		r4, [r0, #0x0]
	cmp		r1, #0x0
	beq		_080684f8
	mov		r0, #0x64
	mul		r0, r4
	bl		sub_08071b70
	b		_080684fa

.align 2, 0
.pool

_080684f0:	.4byte 0x00006A3C
_080684f4:	.4byte 0x02033780

_080684f8:
	mov		r0, #0x0
_080684fa:
	mov		r1, #0x1
	cmp		r4, #0x1
	ble		_08068502
	mov		r1, #0x0
_08068502:
	cmp		r1, #0x0
	beq		_0806850a
	mov		r7, #0x1
	b		_0806856a
_0806850a:
	mov		r1, #0x1
	cmp		r4, #0x5
	ble		_08068512
	mov		r1, #0x0
_08068512:
	cmp		r1, #0x0
	beq		_0806851a
	mov		r7, #0x2
	b		_0806856a
_0806851a:
	mov		r1, #0x1
	cmp		r4, #0xa
	ble		_08068522
	mov		r1, #0x0
_08068522:
	cmp		r1, #0x0
	beq		_0806852a
	mov		r7, #0x3
	b		_0806856a
_0806852a:
	mov		r1, #0x1
	cmp		r4, #0x32
	ble		_08068532
	mov		r1, #0x0
_08068532:
	cmp		r1, #0x0
	beq		_0806853a
	mov		r7, #0x4
	b		_0806856a
_0806853a:
	mov		r1, #0x1
	cmp		r0, #0xa
	ble		_08068542
	mov		r1, #0x0
_08068542:
	cmp		r1, #0x0
	beq		_0806854a
	mov		r7, #0x5
	b		_0806856a
_0806854a:
	mov		r1, #0x1
	cmp		r0, #0x19
	ble		_08068552
	mov		r1, #0x0
_08068552:
	cmp		r1, #0x0
	beq		_0806855a
	mov		r7, #0x6
	b		_0806856a
_0806855a:
	mov		r1, #0x1
	cmp		r0, #0x32
	ble		_08068562
	mov		r1, #0x0
_08068562:
	mov		r7, #0x8
	cmp		r1, #0x0
	beq		_0806856a
	mov		r7, #0x7
_0806856a:
	mov		r5, r8
	ldr		r0, [sp, #0x0]
	str		r5, [r0, #0x0]
	ldr		r1, [sp, #0x4]
	str		r6, [r1, #0x0]
	cmp		r6, #0x0
	beq		_0806857c
	sub		r0, r6, #0x1
	str		r0, [r1, #0x0]
_0806857c:
	ldr		r2, [sp, #0x8]
	str		r7, [r2, #0x0]
	cmp		r7, #0x0
	beq		_08068588
	sub		r0, r7, #0x1
	str		r0, [r2, #0x0]
_08068588:
	add		sp, #0xc
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080682dc

	thumb_func_start sub_08068598
sub_08068598:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x50
	mov		r9, r0
	str		r1, [sp, #0x20]
	str		r2, [sp, #0x24]
	str		r3, [sp, #0x28]
	ldr		r0, _08068628
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x2C]
	ldr		r0, _0806862c
	mov		r10, r0
	mov		r7, #0x0
	mov		r1, #0x1
	neg		r1, r1
	str		r1, [sp, #0x3C]
	str		r1, [sp, #0x40]
	ldr		r2, [sp, #0x2C]
	ldr		r3, _08068630
	add		r0, r2, r3
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x34]
	ldr		r4, _08068634
	add		r0, r2, r4
	ldr		r4, [r0, #0x0]
	ldr		r5, _08068638
	add		r1, r2, r5
	ldr		r6, _0806863c
	add		r0, r2, r6
	ldrb	r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r1, _08068640
	add		r0, r2, r1
	str		r7, [r0, #0x0]
	bl		sub_08057370
	lsl		r1, r4, #0x2
	add		r1, r1, r4
	lsl		r1, r1, #0x2
	mov		r2, #0xb2
	lsl		r2, r2, #0x3
	add		r1, r1, r2
	add		r0, r0, r1
	str		r0, [sp, #0x30]
	lsl		r0, r4, #0x4
	sub		r0, r0, r4
	lsl		r0, r0, #0x7
	add		r0, r10
	ldr		r3, _08068644
	add		r0, r0, r3
	ldr		r6, [r0, #0x0]
	ldr		r5, [sp, #0x30]
	ldrh	r1, [r5, #0x2]
	neg		r0, r1
	orr		r0, r1
	lsr		r0, r0, #0x1f
	str		r0, [sp, #0x44]
	ldr		r0, [sp, #0x34]
	cmp		r0, #0x2
	bne		_08068648
	mov		r1, #0xa
	mov		r8, r1
	ldr		r2, [sp, #0x44]
	cmp		r2, #0x0
	beq		_0806864c
	mov		r3, #0x9
	mov		r8, r3
	b		_0806864c

.align 2, 0
.pool

_08068628:	.4byte 0x0203EBE0
_0806862c:	.4byte 0x02033780
_08068630:	.4byte 0x00006A38
_08068634:	.4byte 0x00006A3C
_08068638:	.4byte 0x00006B28
_0806863c:	.4byte 0x00006A44
_08068640:	.4byte 0x00006B2C
_08068644:	.4byte 0x00000774

_08068648:
	mov		r5, #0xb
	mov		r8, r5
_0806864c:
	ldr		r0, _080686b4
	ldr		r0, [r0, #0x0]
	ldr		r1, _080686b8
	add		r5, r0, r1
	ldr		r2, _080686bc
	add		r0, r0, r2
	ldr		r0, [r0, #0x0]
	ldr		r3, [sp, #0x30]
	add		r3, #0xc
	str		r3, [sp, #0x48]
	cmp		r0, #0x13
	ble		_08068686
	ldr		r0, [sp, #0x48]
	bl		sub_08059fd4
	ldr		r1, [r5, #0x24]
	mov		r2, #0x1
	cmp		r0, r1
	bgt		_08068674
	mov		r2, #0x0
_08068674:
	cmp		r2, #0x0
	beq		_08068686
	ldr		r5, [sp, #0x44]
	cmp		r5, #0x0
	beq		_08068686
	cmp		r6, #0x0
	bne		_08068686
	mov		r6, #0x0
	str		r6, [sp, #0x44]
_08068686:
	mov		r2, #0xb0
	lsl		r2, r2, #0x1
	mov		r0, r9
	mov		r1, #0x0
	bl		sub_0806983c
	mov		r0, sp
	mov		r1, #0x0
	mov		r2, #0x20
	bl		sub_0806983c
	mov		r5, #0x0
	cmp		r5, r8
	bge		_08068770
_080686a2:
	ldr		r0, [sp, #0x34]
	cmp		r0, #0x7
	bhi		_0806873e
	lsl		r0, r0, #0x2
	ldr		r1, _080686c0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_080686b4:	.4byte 0x0203EBE0
_080686b8:	.4byte 0x00005F14
_080686bc:	.4byte 0x00006A3C
_080686c0:	.4byte 0x080686c4
_080686c4:	.4byte 0x08068730

.incbin "base.gba", 0x686C8, 0x1C
	thumb_func_end sub_08068598


.incbin "base.gba", 0x686E4, 0x5A

_0806873e:

.incbin "base.gba", 0x6873E, 0x2C
_0806876a:

.incbin "base.gba", 0x6876A, 0x6
_08068770:

.incbin "base.gba", 0x68770, 0x8
_08068778:

.incbin "base.gba", 0x68778, 0xC
_08068784:	.4byte 0x000F423F
_08068788:	.4byte 0x0806878c
_0806878c:	.4byte 0x080687ac

.incbin "base.gba", 0x68790, 0x154

_080688e4:

.incbin "base.gba", 0x688E4, 0x10
_080688f4:

.incbin "base.gba", 0x688F4, 0x28
_0806891c:

.incbin "base.gba", 0x6891C, 0x2C
_08068948:	.4byte 0x0203EBE0
_0806894c:	.4byte 0x00005F14
_08068950:	.4byte 0x00006A3C

_08068954:

.incbin "base.gba", 0x68954, 0x2C
_08068980:

.incbin "base.gba", 0x68980, 0x16
_08068996:

.incbin "base.gba", 0x68996, 0x14
_080689aa:

.incbin "base.gba", 0x689AA, 0x8
_080689b2:

.incbin "base.gba", 0x689B2, 0x18
_080689ca:

.incbin "base.gba", 0x689CA, 0xE
_080689d8:

.incbin "base.gba", 0x689D8, 0x8
_080689e0:

.incbin "base.gba", 0x689E0, 0x1A
_080689fa:

.incbin "base.gba", 0x689FA, 0x1A
_08068a14:

.incbin "base.gba", 0x68A14, 0x4
_08068a18:

.incbin "base.gba", 0x68A18, 0x8
_08068a20:

.incbin "base.gba", 0x68A20, 0x30
_08068a50:

.incbin "base.gba", 0x68A50, 0x14
_08068a64:

.incbin "base.gba", 0x68A64, 0x16
_08068a7a:

.incbin "base.gba", 0x68A7A, 0x18
_08068a92:

.incbin "base.gba", 0x68A92, 0x1E
_08068ab0:

.incbin "base.gba", 0x68AB0, 0x2
_08068ab2:

.incbin "base.gba", 0x68AB2, 0x14
_08068ac6:

.incbin "base.gba", 0x68AC6, 0x10
_08068ad6:

.incbin "base.gba", 0x68AD6, 0xC
_08068ae2:

.incbin "base.gba", 0x68AE2, 0x24
_08068b06:

.incbin "base.gba", 0x68B06, 0x14
_08068b1a:

.incbin "base.gba", 0x68B1A, 0xE
_08068b28:

.incbin "base.gba", 0x68B28, 0x1E
_08068b46:

.incbin "base.gba", 0x68B46, 0x10
_08068b56:

.incbin "base.gba", 0x68B56, 0x4
_08068b5a:

.incbin "base.gba", 0x68B5A, 0x6
_08068b60:

.incbin "base.gba", 0x68B60, 0x20
	thumb_func_start sub_08068b80
sub_08068b80:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1a8
	ldr		r0, _08068cac
	ldr		r0, [r0, #0x0]
	mov		r9, r0
	mov		r1, #0x0
	add		r0, sp, #0x194
	str		r1, [r0, #0x0]
	sub		r1, #0x1
	add		r0, sp, #0x198
	str		r1, [r0, #0x0]
	ldr		r0, _08068cb0
	add		r0, r9
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x19C]
	ldr		r0, _08068cb4
	add		r0, r9
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x1A0]
	add		r1, sp, #0x190
	add		r2, sp, #0x194
	add		r3, sp, #0x198
	add		r0, sp, #0x10
	bl		sub_08068598
	ldr		r1, _08068cb8
	mov		r0, #0x0
	bl		sub_080281c4
	ldr		r1, _08068cbc
	mov		r0, #0x1
	bl		sub_080281c4
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_080281d4
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	ldr		r1, _08068cc0
	add		r1, r9
	str		r1, [sp, #0x1A4]
	ldr		r2, _08068cc4
	mov		r10, r2
_08068be6:
	mov		r5, #0x0
	lsl		r6, r0, #0x2
	add		r7, r0, #0x1
	lsl		r0, r0, #0x3
	add		r0, r0, r6
	lsl		r4, r0, #0x8
_08068bf2:
	add		r0, r6, r5
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r10
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	ldr		r3, _08068cc8
	mov		r8, r3
	add		r1, r4, r3
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0xc0
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	add		r5, #0x1
	cmp		r5, #0x3
	ble		_08068bf2
	bl		_DrawFrameRunAudio
	add		r0, r7, #0x0
	cmp		r0, #0x4
	ble		_08068be6
	ldr		r0, _08068cc0
	add		r0, r9
	ldr		r4, [r0, #0x0]
	ldr		r0, _08068ccc
	add		r0, r9
	ldr		r0, [r0, #0x0]
	add		r4, r4, r0
	bl		sub_08029f34
	lsl		r1, r4, #0x1
	add		r1, r1, r4
	lsl		r1, r1, #0x8
	add		r1, r8
	ldr		r2, _08068cd0
	ldr		r3, _08068cd4
	bl		sub_08029ee4
	mov		r2, #0x0
	ldr		r1, _08068cd8
	mov		r0, #0x80
	lsl		r0, r0, #0x3
_08068c4a:
	strh	r2, [r1, #0x0]
	add		r1, #0x2
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_08068c4a
	ldr		r4, _08068cdc
	mov		r0, #0x1
	bl		sub_080281a4
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_DrawFrameRunAudio
	ldr		r0, _08068ce0
	ldr		r1, _08068ce4
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_DrawFrameRunAudio
	add		r0, sp, #0x198
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bne		_08068c80
	add		r0, sp, #0x190
	ldr		r3, [r0, #0x0]
_08068c80:
	mov		r0, r9
	ldr		r1, [sp, #0x19C]
	ldr		r2, [sp, #0x1A0]
	bl		sub_08067bf0
	add		r4, sp, #0x10
	add		r0, sp, #0x194
	ldr		r2, [r0, #0x0]
	cmp		r2, #0x5
	ble		_08068c96
	mov		r2, #0x5
_08068c96:
	ldr		r3, _08068ce8
	mov		r1, #0x0
	ldr		r0, [sp, #0x19C]
	cmp		r0, #0x7
	bhi		_08068d4a
	lsl		r0, r0, #0x2
	ldr		r1, _08068cec
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_08068cac:	.4byte 0x0203EBE0
_08068cb0:	.4byte 0x00006A38
_08068cb4:	.4byte 0x00006A3C
_08068cb8:	.4byte 0x06001000
_08068cbc:	.4byte 0x06002000
_08068cc0:	.4byte 0x00006B28
_08068cc4:	.4byte 0x08102bf8
_08068cc8:	.4byte 0x02025400
_08068ccc:	.4byte 0x00006B2C
_08068cd0:	.4byte 0x0600F000
_08068cd4:	.4byte 0x80000180
_08068cd8:	.4byte 0x02004400
_08068cdc:	.4byte 0x0809594c
_08068ce0:	.4byte 0x08095a74
_08068ce4:	.4byte 0x02008400
_08068ce8:	.4byte 0x02033780
_08068cec:	.4byte 0x08068cf0
_08068cf0:	.4byte 0x08068d10

.incbin "base.gba", 0x68CF4, 0x1C
	thumb_func_end sub_08068b80


.incbin "base.gba", 0x68D10, 0x3A

_08068d4a:

.incbin "base.gba", 0x68D4A, 0x6
_08068d50:

.incbin "base.gba", 0x68D50, 0x12
_08068d62:

.incbin "base.gba", 0x68D62, 0xA
_08068d6c:

.incbin "base.gba", 0x68D6C, 0x22
_08068d8e:

.incbin "base.gba", 0x68D8E, 0x52
_08068de0:	.4byte 0x000FFFFF
_08068de4:	.4byte 0x02004400
_08068de8:	.4byte 0x80000400
_08068dec:	.4byte 0x06000800
_08068df0:	.4byte 0x00004140
_08068df4:	.4byte 0x060008C0
_08068df8:	.4byte 0x80000180

_08068dfc:

.incbin "base.gba", 0x68DFC, 0x10
_08068e0c:

.incbin "base.gba", 0x68E0C, 0x58
_08068e64:	.4byte 0x000040C0
_08068e68:	.4byte 0x060008C0
_08068e6c:	.4byte 0x80000180
_08068e70:	.4byte 0x00004208
_08068e74:	.4byte 0x00004409
_08068e78:	.4byte 0x00006B28

_08068e7c:

.incbin "base.gba", 0x68E7C, 0xC
_08068e88:

.incbin "base.gba", 0x68E88, 0x26
_08068eae:

.incbin "base.gba", 0x68EAE, 0xC
_08068eba:

.incbin "base.gba", 0x68EBA, 0xE
_08068ec8:

.incbin "base.gba", 0x68EC8, 0xE
_08068ed6:

.incbin "base.gba", 0x68ED6, 0xE
_08068ee4:

.incbin "base.gba", 0x68EE4, 0xA
_08068eee:

.incbin "base.gba", 0x68EEE, 0xC
_08068efa:

.incbin "base.gba", 0x68EFA, 0x8
_08068f02:

.incbin "base.gba", 0x68F02, 0x12
_08068f14:

.incbin "base.gba", 0x68F14, 0x14
_08068f28:	.4byte 0x030052C8
_08068f2c:	.4byte 0x00006B28
_08068f30:	.4byte 0x02033780
_08068f34:	.4byte 0x08068f38
_08068f38:	.4byte 0x08068f58

.incbin "base.gba", 0x68F3C, 0x56

_08068f92:

.incbin "base.gba", 0x68F92, 0x6
_08068f98:

.incbin "base.gba", 0x68F98, 0x18
_08068fb0:

.incbin "base.gba", 0x68FB0, 0xA
_08068fba:

.incbin "base.gba", 0x68FBA, 0x22
_08068fdc:

.incbin "base.gba", 0x68FDC, 0x30
_0806900c:	.4byte 0x000FFFFF
_08069010:	.4byte 0x02004400
_08069014:	.4byte 0x80000400
_08069018:	.4byte 0x00004140
_0806901c:	.4byte 0x060008C0
_08069020:	.4byte 0x80000180

_08069024:

.incbin "base.gba", 0x69024, 0x10
_08069034:

.incbin "base.gba", 0x69034, 0x1C
_08069050:

.incbin "base.gba", 0x69050, 0x4E
_0806909e:

.incbin "base.gba", 0x6909E, 0x12
_080690b0:	.4byte 0x000040C0
_080690b4:	.4byte 0x060008C0
_080690b8:	.4byte 0x80000180
_080690bc:	.4byte 0x00006B28
_080690c0:	.4byte 0x080ce084

_080690c4:

.incbin "base.gba", 0x690C4, 0x10
_080690d4:

.incbin "base.gba", 0x690D4, 0xC4
_08069198:	.4byte 0x06001000
_0806919c:	.4byte 0x06002000
_080691a0:	.4byte 0x08092918
_080691a4:	.4byte 0x080993b8
_080691a8:	.4byte 0x02004400
_080691ac:	.4byte 0x080994bc
_080691b0:	.4byte 0x80000400
_080691b4:	.4byte 0x06000800
_080691b8:	.4byte 0x00004208
_080691bc:	.4byte 0x00004409
_080691c0:	.4byte 0x00000844
	thumb_func_start sub_080691c4
sub_080691c4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	lsl		r2, r2, #0x10
	lsr		r0, r2, #0x10
	add		r4, r0, #0x0
	lsr		r2, r2, #0x12
	mov		r10, r2
	mov		r0, #0x3
	mov		r8, r0
	mov		r1, r8
	and		r1, r4
	mov		r8, r1
	mov		r5, #0x10
	mov		r6, #0x0
	mov		r7, #0x0
	bl		sub_08057370
	mov		r9, r0
	cmp		r4, #0x14
	bls		_08069200
	mov		r0, #0x0
	b		_0806926c
_080691fc:
	mov		r7, #0x1
	b		_08069262
_08069200:
	add		r0, r4, #0x0
	bl		sub_0802d690
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_080567ec
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	blt		_08069234
	lsl		r0, r4, #0x2
	add		r0, r0, r4
	lsl		r0, r0, #0x2
	mov		r3, #0xb2
	lsl		r3, r3, #0x3
	add		r0, r0, r3
	add		r0, r9
	ldrb	r5, [r0, #0x8]
	ldrh	r6, [r0, #0x2]
	cmp		r6, #0x0
	ble		_08069234
	mov		r0, #0x10
	and		r0, r5
	cmp		r0, #0x0
	bne		_08069234
	mov		r7, #0x1
_08069234:
	cmp		r7, #0x0
	bne		_08069262
	mov		r2, #0x0
	mov		r0, r8
	lsl		r1, r0, #0x5
	mov		r3, r10
	lsl		r0, r3, #0x7
	add		r0, #0x64
	add		r1, r1, r0
	add		r1, r9
	mov		r3, #0x10
_0806924a:
	ldrb	r5, [r1, #0x0]
	ldrh	r6, [r1, #0x2]
	add		r0, r5, #0x0
	and		r0, r3
	cmp		r0, #0x0
	beq		_080691fc
	add		r1, #0x4
	add		r2, #0x1
	cmp		r2, #0x4
	ble		_0806924a
	cmp		r7, #0x0
	beq		_0806926a
_08069262:
	ldr		r0, [sp, #0x0]
	strh	r5, [r0, #0x0]
	ldr		r1, [sp, #0x4]
	strh	r6, [r1, #0x0]
_0806926a:
	add		r0, r7, #0x0
_0806926c:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080691c4

	thumb_func_start sub_0806927c
sub_0806927c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r3, r5, #0x0
	cmp		r2, #0xf
	bls		_080692c0
	mov		r4, #0x3
	and		r0, r4
	cmp		r0, #0x0
	bne		_080692c0
	add		r0, r1, #0x0
	and		r0, r4
	cmp		r0, #0x0
	bne		_080692c0
_08069296:
	ldr		r0, [r1, #0x0]
	str		r0, [r3, #0x0]
	ldr		r0, [r1, #0x4]
	str		r0, [r3, #0x4]
	ldr		r0, [r1, #0x8]
	str		r0, [r3, #0x8]
	ldr		r0, [r1, #0xc]
	str		r0, [r3, #0xc]
	add		r3, #0x10
	add		r1, #0x10
	sub		r2, #0x10
	cmp		r2, #0xf
	bhi		_08069296
	cmp		r2, #0x3
	bls		_08069302
_080692b4:
	ldmia	r1!, { r0 }
	stmia	r3!, { r0 }
	sub		r2, #0x4
	cmp		r2, #0x3
	bhi		_080692b4
	b		_08069302
_080692c0:
	cmp		r2, #0x7
	bls		_08069302
	mov		r4, #0x1
	add		r0, r3, #0x0
	and		r0, r4
	cmp		r0, #0x0
	bne		_08069302
	add		r0, r1, #0x0
	and		r0, r4
	cmp		r0, #0x0
	bne		_08069302
_080692d6:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	ldrh	r0, [r1, #0x2]
	strh	r0, [r3, #0x2]
	ldrh	r0, [r1, #0x4]
	strh	r0, [r3, #0x4]
	ldrh	r0, [r1, #0x6]
	strh	r0, [r3, #0x6]
	add		r3, #0x8
	add		r1, #0x8
	sub		r2, #0x8
	cmp		r2, #0x7
	bhi		_080692d6
	cmp		r2, #0x1
	bls		_08069302
_080692f4:
	ldrh	r0, [r1, #0x0]
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	add		r1, #0x2
	sub		r2, #0x2
	cmp		r2, #0x1
	bhi		_080692f4
_08069302:
	sub		r2, #0x1
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	beq		_0806931c
	add		r4, r0, #0x0
_0806930e:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, r4
	bne		_0806930e
_0806931c:
	add		r0, r5, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0806927c

	thumb_func_start sub_08069324
sub_08069324:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	mov		r0, #0x0
	add		r1, r3, #0x0
	bl		sub_080281b0
	mov		r2, #0x0
	ldr		r1, _08069360
	add		r4, r1, #0x0
	add		r3, r0, #0x0
	add		r3, #0x40
	add		r1, r0, #0x0
_0806933e:
	mov		r5, #0xe0
	lsl		r5, r5, #0x2
	add		r0, r2, r5
	orr		r0, r4
	strh	r0, [r1, #0x0]
	add		r5, #0xc
	add		r0, r2, r5
	orr		r0, r4
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	add		r1, #0x2
	add		r2, #0x1
	cmp		r2, #0xb
	ble		_0806933e
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08069360:	.4byte 0xFFFFB000
	thumb_func_end sub_08069324

	thumb_func_start sub_08069364
sub_08069364:
	push	{ r4, lr }
	sub		sp, #0x4
	add		r4, r0, #0x0
	mov		r0, #0x0
	bl		sub_08028130
	add		r2, r0, #0x0
	mov		r0, #0xb0
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r0, _08069390
	add		r1, r0, #0x0
	add		r1, #0x20
	mov		r3, #0x10
	str		r3, [sp, #0x0]
	add		r3, r4, #0x0
	bl		sub_08005ddc
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08069390:	.4byte 0x080ce084
	thumb_func_end sub_08069364

	thumb_func_start sub_08069394
sub_08069394:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	mov		r9, r0
	mov		r8, r1
	mov		r0, #0x0
	ldrsh	r4, [r2, r0]
	ldrb	r5, [r2, #0x2]
	ldrb	r7, [r2, #0x3]
	mov		r0, #0x0
	bl		sub_080281a4
	add		r6, r0, #0x0
	ldr		r0, _08069428
	cmp		r4, r0
	bls		_080693ba
	mov		r4, #0x0
_080693ba:
	cmp		r5, #0x63
	bls		_080693c0
	mov		r5, #0x0
_080693c0:
	cmp		r7, #0x63
	bls		_080693c6
	mov		r7, #0x0
_080693c6:
	mov		r0, #0x4
	str		r0, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r1, r9
	mov		r2, r8
	add		r3, r4, #0x0
	bl		sub_080679f8
	mov		r1, r9
	add		r1, #0x5
	mov		r4, #0x2
	str		r4, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r2, r8
	add		r3, r5, #0x0
	bl		sub_080679f8
	mov		r1, r9
	add		r1, #0x8
	str		r4, [sp, #0x0]
	add		r0, r6, #0x0
	mov		r2, r8
	add		r3, r7, #0x0
	bl		sub_080679f8
	mov		r1, r8
	lsl		r0, r1, #0x5
	add		r0, r9
	lsl		r0, r0, #0x1
	add		r0, r0, r6
	ldr		r4, _0806942c
	add		r3, r4, #0x0
	strh	r3, [r0, #0x8]
	add		r1, r0, #0x0
	add		r1, #0x48
	add		r4, #0x20
	add		r2, r4, #0x0
	strh	r2, [r1, #0x0]
	strh	r3, [r0, #0xe]
	add		r0, #0x4e
	strh	r2, [r0, #0x0]
	add		sp, #0x4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08069428:	.4byte 0x0000270F
_0806942c:	.4byte 0x0000F00F
	thumb_func_end sub_08069394

	thumb_func_start sub_08069430
sub_08069430:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x4
	mov		r9, r0
	mov		r8, r1
	ldrb	r5, [r2, #0x5]
	ldrb	r6, [r2, #0x6]
	mov		r0, #0x0
	bl		sub_080281a4
	add		r7, r0, #0x0
	cmp		r5, #0x63
	bls		_08069450
	mov		r5, #0x0
_08069450:
	cmp		r6, #0x63
	bls		_08069456
	mov		r6, #0x0
_08069456:
	mov		r4, #0x2
	str		r4, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r1, r9
	mov		r2, r8
	add		r3, r5, #0x0
	bl		sub_080679f8
	mov		r1, r9
	add		r1, #0x3
	str		r4, [sp, #0x0]
	add		r0, r7, #0x0
	mov		r2, r8
	add		r3, r6, #0x0
	bl		sub_080679f8
	mov		r1, r8
	lsl		r0, r1, #0x5
	add		r0, r9
	lsl		r0, r0, #0x1
	add		r0, r0, r7
	ldr		r2, _0806949c
	add		r1, r2, #0x0
	strh	r1, [r0, #0x4]
	add		r0, #0x44
	add		r2, #0x20
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	add		sp, #0x4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0806949c:	.4byte 0x0000F01A
	thumb_func_end sub_08069430

	thumb_func_start sub_080694a0
sub_080694a0:
	push	{ r4, r5, lr }
	sub		sp, #0xc
	mov		r3, #0x0
	ldrsh	r5, [r2, r3]
	ldrb	r3, [r2, #0x2]
	ldrb	r4, [r2, #0x3]
	str		r4, [sp, #0x0]
	ldrb	r4, [r2, #0x5]
	str		r4, [sp, #0x4]
	ldrb	r2, [r2, #0x6]
	str		r2, [sp, #0x8]
	add		r2, r5, #0x0
	bl		sub_08067aec
	add		sp, #0xc
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080694a0

	thumb_func_start sub_080694c4
sub_080694c4:
	push	{ r4, lr }
	add		r3, r0, #0x0
	add		r2, r1, #0x0
	ldr		r4, _080694dc
	mov		r0, #0x0
	cmp		r3, #0x7
	bhi		_08069534
	lsl		r0, r3, #0x2
	ldr		r1, _080694e0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080694dc:	.4byte 0x02033780
_080694e0:	.4byte 0x080694e4
_080694e4:	.4byte 0x08069504

.incbin "base.gba", 0x694E8, 0x1C
	thumb_func_end sub_080694c4


.incbin "base.gba", 0x69504, 0x30

_08069534:

.incbin "base.gba", 0x69534, 0x6
_0806953a:

.incbin "base.gba", 0x6953A, 0x6
_08069540:	.4byte 0x000FFFFF
	thumb_func_start sub_08069544
sub_08069544:
	push	{ r4, lr }
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	mov		r3, #0x0
	ldrh	r2, [r0, #0xa]
	add		r1, r2, #0x0
	ldrh	r0, [r0, #0x6]
	cmp		r0, #0x80
	bne		_0806955e
	cmp		r2, #0x0
	beq		_0806955e
	cmp		r1, r4
	bls		_08069560
_0806955e:
	mov		r3, #0x1
_08069560:
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08069544

	thumb_func_start sub_08069568
sub_08069568:
	push	{ r4, r5, lr }
	add		r0, r1, #0x0
	add		r5, r2, #0x0
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r5, r5, #0x18
	lsr		r5, r5, #0x18
	ldr		r4, _080695b0
	bl		sub_0802d690
	lsl		r0, r0, #0x2
	add		r0, r0, r4
	ldr		r0, [r0, #0x0]
	ldr		r0, [r0, #0x30]
	lsl		r4, r5, #0x1
	add		r4, r4, r5
	lsl		r4, r4, #0x8
	ldr		r1, _080695b4
	add		r4, r4, r1
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	lsl		r5, r5, #0xa
	ldr		r1, _080695b8
	add		r5, r5, r1
	ldr		r3, _080695bc
	add		r1, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_08029ee4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_080695b0:	.4byte 0x08102bf8
_080695b4:	.4byte 0x02025400
_080695b8:	.4byte 0x0600F000
_080695bc:	.4byte 0x80000180
	thumb_func_end sub_08069568

	thumb_func_start sub_080695c0
sub_080695c0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08029f34
	lsl		r1, r4, #0x1
	add		r1, r1, r4
	lsl		r1, r1, #0x8
	ldr		r2, _080695e0
	add		r1, r1, r2
	ldr		r2, _080695e4
	ldr		r3, _080695e8
	bl		sub_08029ee4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_080695e0:	.4byte 0x02025400
_080695e4:	.4byte 0x0600F000
_080695e8:	.4byte 0x80000180
	thumb_func_end sub_080695c0

	thumb_func_start sub_080695ec
sub_080695ec:
	push	{ r4, lr }
	add		r2, r0, #0x0
	mov		r3, #0x1
	ldrh	r0, [r2, #0x4]
	ldrh	r4, [r1, #0x2]
	cmp		r0, r4
	beq		_080695fc
	mov		r3, #0x0
_080695fc:
	ldrb	r0, [r2, #0xb]
	ldrb	r1, [r1, #0x8]
	cmp		r0, r1
	beq		_08069606
	mov		r3, #0x0
_08069606:
	add		r0, r3, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_080695ec

	thumb_func_start sub_08069610
sub_08069610:
	mov		r0, #0x1
	bx		lr
	thumb_func_end sub_08069610

	thumb_func_start sub_08069614
sub_08069614:
	push	{ lr }
	sub		sp, #0xc
	ldr		r0, _08069634
	str		r0, [sp, #0x8]
	ldr		r0, _08069638
	mov		r1, #0x0
	str		r1, [sp, #0x0]
	str		r1, [sp, #0x4]
	add		r1, sp, #0x8
	mov		r2, #0x0
	mov		r3, #0x0
	bl		sub_0802951c
	add		sp, #0xc
	pop		{ r0 }
	bx		r0

_08069634:	.4byte 0x000B00D8
_08069638:	.4byte 0x080e4940
	thumb_func_end sub_08069614

	thumb_func_start sub_0806963c
sub_0806963c:
	push	{ r4, r5, r6, lr }
	add		r3, r0, #0x0
	add		r5, r1, #0x0
	lsl		r4, r2, #0x18
	lsr		r4, r4, #0x18
	mov		r0, #0x0
	add		r1, r3, #0x0
	add		r2, r5, #0x0
	bl		sub_080281b0
	mov		r5, #0x0
	lsl		r4, r4, #0x5
	ldr		r1, _0806968c
	add		r6, r1, #0x0
	add		r2, r0, #0x0
	add		r2, #0x40
	mov		r1, #0xe0
	lsl		r1, r1, #0x2
	add		r3, r4, r1
	add		r1, r0, #0x0
	mov		r0, #0xe3
	lsl		r0, r0, #0x2
	add		r4, r4, r0
_0806966a:
	add		r0, r3, #0x0
	orr		r0, r6
	strh	r0, [r1, #0x0]
	add		r0, r4, #0x0
	orr		r0, r6
	strh	r0, [r2, #0x0]
	add		r2, #0x2
	add		r3, #0x1
	add		r1, #0x2
	add		r4, #0x1
	add		r5, #0x1
	cmp		r5, #0xb
	ble		_0806966a
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_0806968c:	.4byte 0xFFFFB000
	thumb_func_end sub_0806963c

	thumb_func_start sub_08069690
sub_08069690:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	ldr		r0, [sp, #0x0+0x14]
	lsl		r0, r0, #0x5
	add		r3, r3, r0
	lsl		r3, r3, #0x1
	add		r5, r5, r3
	cmp		r2, #0x0
	ble		_080696d6
	mov		r0, #0x1f
	mov		r12, r0
	ldr		r0, [sp, #0x4+0x14]
	lsl		r6, r0, #0xc
	add		r4, r5, #0x0
	add		r4, #0x40
	add		r3, r5, #0x0
_080696b2:
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
	bne		_080696b2
_080696d6:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08069690

	thumb_func_start sub_080696dc
sub_080696dc:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r2, #0x0
	ldr		r2, [sp, #0x14]
	lsl		r2, r2, #0xc
	lsl		r1, r1, #0x5
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r3, r3, r0
	cmp		r7, #0x0
	ble		_0806972a
	mov		r1, #0xb0
	lsl		r1, r1, #0x2
	add		r0, r1, #0x0
	add		r6, r2, #0x0
	orr		r6, r0
	add		r1, #0x1
	add		r0, r1, #0x0
	add		r5, r2, #0x0
	orr		r5, r0
	add		r1, #0x1
	add		r0, r1, #0x0
	add		r4, r2, #0x0
	orr		r4, r0
	add		r1, #0x1
	add		r0, r1, #0x0
	add		r1, r2, #0x0
	orr		r1, r0
	add		r0, r3, #0x0
	add		r0, #0x40
	add		r2, r7, #0x0
_08069718:
	strh	r6, [r3, #0x0]
	strh	r5, [r3, #0x2]
	strh	r4, [r0, #0x0]
	strh	r1, [r0, #0x2]
	add		r0, #0x4
	add		r3, #0x4
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_08069718
_0806972a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080696dc

	thumb_func_start sub_08069730
sub_08069730:
	push	{ r4, lr }
	ldr		r1, _08069758
	ldr		r1, [r1, #0x0]
	ldr		r2, _0806975c
	add		r4, r1, r2
	add		r2, r0, #0x0
	add		r2, #0xc
	ldr		r0, _08069760
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x13
	ble		_08069764
	add		r0, r2, #0x0
	bl		sub_08059fd4
	ldr		r1, [r4, #0x24]
	cmp		r0, r1
	ble		_08069764
	mov		r0, #0x1
	b		_08069766

_08069758:	.4byte 0x0203EBE0
_0806975c:	.4byte 0x00005F14
_08069760:	.4byte 0x00006A3C

_08069764:
	mov		r0, #0x0
_08069766:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08069730

	thumb_func_start sub_0806976c
sub_0806976c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r10, r0
	mov		r9, r1
	add		r4, r2, #0x0
	add		r6, r3, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x0]
	cmp		r4, #0x0
	blt		_0806978c
	cmp		r4, r9
	blt		_08069794
_0806978c:
	mov		r0, #0x0
	b		_080697fa
_08069790:
	str		r6, [sp, #0x0]
	b		_080697ec
_08069794:
	cmp		r6, #0x0
	beq		_080697ec
	mov		r3, #0x0
	mov		r0, #0xf
	add		r0, r10
	mov		r8, r0
	mov		r5, r10
	b		_080697c4
_080697a4:
	add		r4, #0x1
_080697a6:
	ldrh	r0, [r6, #0x4]
	cmp		r0, r7
	blt		_080697b0
	cmp		r7, #0x0
	bne		_080697b8
_080697b0:
	cmp		r3, r4
	beq		_08069790
	sub		r4, #0x1
	b		_080697ec
_080697b8:
	cmp		r3, r4
	beq		_080697ec
	mov		r0, #0x20
	add		r8, r0
	add		r5, #0x20
	add		r3, #0x1
_080697c4:
	cmp		r3, r9
	bge		_080697ec
	ldrh	r7, [r5, #0x4]
	add		r0, r6, #0x0
	add		r0, #0xf
	mov		r1, r8
	mov		r2, #0x10
	str		r3, [sp, #0x4]
	bl		sub_08057328
	ldr		r3, [sp, #0x4]
	cmp		r0, #0x0
	beq		_080697a6
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_08069610
	ldr		r3, [sp, #0x4]
	cmp		r0, #0x0
	beq		_080697a4
_080697ec:
	ldr		r0, [sp, #0x0]
	cmp		r0, #0x0
	bne		_080697f8
	lsl		r0, r4, #0x5
	add		r0, r10
	str		r0, [sp, #0x0]
_080697f8:
	ldr		r0, [sp, #0x0]
_080697fa:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x6980A, 0x32
	thumb_func_end sub_0806976c

	thumb_func_start sub_0806983c
sub_0806983c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	add		r1, r4, #0x0
	cmp		r2, #0xf
	bls		_080698b2
	mov		r0, #0x3
	and		r0, r4
	cmp		r0, #0x0
	bne		_0806987a
	lsl		r0, r5, #0x18
	lsr		r3, r0, #0x18
	lsl		r0, r3, #0x8
	orr		r3, r0
	lsl		r0, r3, #0x10
	orr		r3, r0
_0806985c:
	str		r3, [r1, #0x0]
	str		r3, [r1, #0x4]
	str		r3, [r1, #0x8]
	str		r3, [r1, #0xc]
	add		r1, #0x10
	sub		r2, #0x10
	cmp		r2, #0xf
	bhi		_0806985c
	cmp		r2, #0x3
	bls		_080698b2
_08069870:
	stmia	r1!, {  r3 }
	sub		r2, #0x4
	cmp		r2, #0x3
	bhi		_08069870
	b		_080698b2
_0806987a:
	mov		r0, #0x1
	and		r0, r4
	cmp		r0, #0x0
	bne		_080698b2
	lsl		r0, r5, #0x18
	lsr		r3, r0, #0x18
	lsl		r0, r3, #0x8
	orr		r3, r0
	lsl		r0, r3, #0x10
	orr		r3, r0
	strh	r3, [r4, #0x0]
	sub		r2, #0x2
	add		r1, r4, #0x2
	cmp		r2, #0xf
	bls		_080698ae
_08069898:
	str		r3, [r1, #0x0]
	str		r3, [r1, #0x4]
	str		r3, [r1, #0x8]
	str		r3, [r1, #0xc]
	add		r1, #0x10
	sub		r2, #0x10
	cmp		r2, #0xf
	bhi		_08069898
	b		_080698ae
_080698aa:
	stmia	r1!, {  r3 }
	sub		r2, #0x4
_080698ae:
	cmp		r2, #0x3
	bhi		_080698aa
_080698b2:
	sub		r2, #0x1
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	beq		_080698c6
_080698bc:
	strb	r5, [r1, #0x0]
	add		r1, #0x1
	sub		r2, #0x1
	cmp		r2, r0
	bne		_080698bc
_080698c6:
	add		r0, r4, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool
	thumb_func_end sub_0806983c

	thumb_func_start sub_080698d0
sub_080698d0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r8, r0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	mov		r1, #0x0
	ldrsh	r0, [r0, r1]
	mov		r1, #0xfa
	lsl		r1, r1, #0x2
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	mov		r7, #0xf0
	lsl		r7, r7, #0x8
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	mov		r2, r8
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x64
	bl		sub_0807d80c
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	mov		r2, r8
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0x64
	bl		sub_0807d8d8
	lsl		r0, r0, #0x10
	asr		r0, r0, #0x10
	mov		r1, #0xa
	bl		sub_0807d80c
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
	mov		r2, r8
	mov		r1, #0x0
	ldrsh	r0, [r2, r1]
	mov		r1, #0xa
	bl		sub_0807d8d8
	add		r4, r0, #0x0
	lsl		r4, r4, #0x10
	asr		r4, r4, #0x10
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
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
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldr		r2, _08069abc
	strh	r2, [r0, #0x0]
	add		r1, r5, #0x0
	add		r5, #0x1
	add		r0, r6, #0x1
	mov		r9, r0
	mov		r0, #0x0
	mov		r2, r9
	bl		sub_080281b0
	ldr		r1, _08069ac0
	mov		r10, r1
	strh	r1, [r0, #0x0]
	mov		r2, r8
	ldrb	r0, [r2, #0x2]
	cmp		r0, #0x9
	bls		_08069a04
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
_08069a04:
	mov		r1, r8
	ldrb	r0, [r1, #0x2]
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
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
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	ldr		r2, _08069abc
	strh	r2, [r0, #0x0]
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	mov		r2, r9
	bl		sub_080281b0
	mov		r1, r10
	strh	r1, [r0, #0x0]
	mov		r2, r8
	ldrb	r0, [r2, #0x3]
	cmp		r0, #0x9
	bls		_08069a7e
	mov		r1, #0xa
	bl		sub_0807ddf0
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
	bl		sub_080281b0
	add		r1, r4, #0x0
	add		r1, #0x10
	orr		r1, r7
	strh	r1, [r0, #0x0]
	add		r0, #0x40
	add		r4, #0x30
	orr		r4, r7
	strh	r4, [r0, #0x0]
_08069a7e:
	mov		r1, r8
	ldrb	r0, [r1, #0x3]
	mov		r1, #0xa
	bl		sub_0807de68
	add		r4, r0, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	add		r1, r5, #0x0
	add		r5, #0x1
	mov		r0, #0x0
	add		r2, r6, #0x0
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
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_08069abc:	.4byte 0x0000F00F
_08069ac0:	.4byte 0x0000F02F
	thumb_func_end sub_080698d0

	thumb_func_start sub_08069ac4
sub_08069ac4:
	push	{ lr }
	sub		sp, #0xc
	cmp		r0, #0x6
	bhi		_08069b84
	lsl		r0, r0, #0x2
	ldr		r1, _08069ad8
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.align 2, 0
.pool

_08069ad8:	.4byte 0x08069adc
_08069adc:	.4byte 0x08069b88

.incbin "base.gba", 0x69AE0, 0x18
	thumb_func_end sub_08069ac4


.incbin "base.gba", 0x69AF8, 0x8C

_08069b84:

.incbin "base.gba", 0x69B84, 0x6

_08069b8a:

.incbin "base.gba", 0x69B8A, 0x6
	thumb_func_start sub_08069b90
sub_08069b90:
	push	{ r4, lr }
	ldr		r0, _08069ba4
	ldr		r4, [r0, #0x0]
	ldr		r1, _08069ba8
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08069bac
	mov		r0, #0x1
	b		_08069bfe

_08069ba4:	.4byte 0x0203EBE0
_08069ba8:	.4byte 0x00005F14

_08069bac:
	bl		sub_08057370
	ldr		r1, _08069bd0
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	beq		_08069bd8
	ldr		r1, _08069bd4
	add		r0, r4, r1
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r0, #0x4
	b		_08069bfe

.align 2, 0
.pool

_08069bd0:	.4byte 0x00000BE8
_08069bd4:	.4byte 0x00006273

_08069bd8:
	ldr		r4, _08069bf8
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_08069bf4
	add		r1, r4, #0x0
	add		r1, #0x8
	ldrh	r0, [r1, #0x2]
	cmp		r0, #0x0
	beq		_08069bf4
	cmp		r0, #0x0
	bne		_08069bfc
_08069bf4:
	mov		r0, #0x5
	b		_08069bfe

_08069bf8:	.4byte 0x02029400

_08069bfc:
	mov		r0, #0x0
_08069bfe:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_08069b90

	thumb_func_start _LoadMGBMobileGPMenu
_LoadMGBMobileGPMenu:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x1c
	ldr		r0, _08069c68
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x10]
	bl		sub_08060bf4
	add		r5, r0, #0x0
	mov		r0, #0x0
	str		r0, [sp, #0x18]
	add		r0, r5, #0x0
	bl		sub_08060c00
	bl		sub_08057370
	mov		r1, #0xee
	lsl		r1, r1, #0x3
	add		r2, r0, r1
	ldr		r3, [sp, #0x10]
	ldr		r0, _08069c6c
	add		r1, r3, r0
	mov		r3, #0x0
	ldr		r4, _08069c70
_08069c3a:
	ldrb	r0, [r2, #0x0]
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r1, #0x1
	add		r3, #0x1
	cmp		r3, r4
	bls		_08069c3a
	add		r0, r5, #0x0
	bl		sub_08060e4c
	add		r1, sp, #0xc
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	ldr		r0, _08069c68
	ldr		r1, [r0, #0x0]
	ldr		r2, _08069c6c
	add		r0, r1, r2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_08069c74
	mov		r1, #0x1
	b		_08069c86

.align 2, 0
.pool

_08069c68:	.4byte 0x0203EBE0
_08069c6c:	.4byte 0x00005F14
_08069c70:	.4byte 0x00000363

_08069c74:
	ldr		r3, _08069df4
	add		r0, r1, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	mov		r1, #0x0
	cmp		r0, #0x0
	bgt		_08069c86
	mov		r1, #0x3
_08069c86:
	add		r0, sp, #0xc
	strb	r1, [r0, #0x1]
	bl		sub_08069b90
	add		r1, sp, #0xc
	strb	r0, [r1, #0x2]
	ldr		r0, _08069df8
	ldr		r0, [r0, #0x0]
	ldr		r1, _08069dfc
	add		r0, r0, r1
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x0
	cmp		r0, #0x0
	bne		_08069ca4
	mov		r1, #0x1
_08069ca4:
	add		r0, sp, #0xc
	strb	r1, [r0, #0x3]
	mov		r2, #0xff
	str		r2, [sp, #0x14]
	ldr		r3, [sp, #0x10]
	ldr		r0, _08069e00
	add		r1, r3, r0
	mov		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r4, _08069e04
	mov		r0, #0x80
	add		r1, r4, #0x0
	bl		sub_080588d0
	cmp		r0, #0x0
	beq		_08069cdc
	add		r1, r4, #0x0
	add		r1, #0x8
	ldrh	r0, [r1, #0x2]
	cmp		r0, #0x0
	beq		_08069cdc
	add		r1, r0, #0x0
	str		r1, [sp, #0x18]
	ldr		r0, _08069e08
	cmp		r1, r0
	bne		_08069cdc
	mov		r1, #0x0
	str		r1, [sp, #0x18]
_08069cdc:
	mov		r0, #0x0
	bl		sub_080281d4
	mov		r0, #0x1
	bl		sub_0806016c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	ldr		r2, _08069e0c
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
	ldr		r2, _08069e10
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
	ldr		r2, _08069e14
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
	ldr		r2, _08069e18
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
	ldr		r2, _08069e1c
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
	ldr		r2, _08069e20
	ldr		r1, [r2, #0x0]
	ldr		r0, _08069e24
	cmp		r1, r0
	beq		_08069da0
	b		_0806a0e0
_08069da0:
	ldr		r3, [sp, #0x10]
	add		r3, #0x3b
	mov		r8, r3
	mov		r7, #0xf
	mov		r9, r5
	add		r6, r2, #0x0
	mov		r0, #0x0
	mov		r10, r0
_08069db0:
	bl		sub_0802983c
	bl		_DrawFrameRunAudio
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r2, r0, #0x0
	str		r7, [sp, #0x0]
	mov		r0, #0x1
	str		r0, [sp, #0x4]
	mov		r0, r8
	ldr		r1, _08069e28
	mov		r3, #0x4
	bl		sub_08058c20
	mov		r1, r8
	mov		r4, #0x0
	ldrsb	r4, [r1, r4]
	ldr		r2, [sp, #0x14]
	cmp		r2, r4
	bne		_08069de2
	b		_0806a032
_08069de2:
	ldrb	r3, [r1, #0x0]
	str		r3, [sp, #0x14]
	cmp		r4, #0x1
	beq		_08069e80
	cmp		r4, #0x1
	bgt		_08069e2c
	cmp		r4, #0x0
	beq		_08069e3a
	b		_0806a02c

_08069df4:	.4byte 0x00006273
_08069df8:	.4byte 0x0203EBE0
_08069dfc:	.4byte 0x00005F14
_08069e00:	.4byte 0x00006B74
_08069e04:	.4byte 0x02029400
_08069e08:	.4byte 0x0000FFFF
_08069e0c:	.4byte 0x08110c38
_08069e10:	.4byte 0x08110c4c
_08069e14:	.4byte 0x08110c60
_08069e18:	.4byte 0x08110c68
_08069e1c:	.4byte 0x08110c78
_08069e20:	.4byte RunGameLogic_CallBack
_08069e24:	.4byte 0x08069C05
_08069e28:	.4byte 0x081109f0

_08069e2c:
	cmp		r4, #0x2
	bne		_08069e32
	b		_08069fa0
_08069e32:
	cmp		r4, #0x3
	bne		_08069e38
	b		_08069fec
_08069e38:
	b		_0806a02c
_08069e3a:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _08069e78
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r4, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _08069e7c
	bl		sub_08013e9c
	b		_0806a02c

_08069e78:	.4byte 0x08110c8c
_08069e7c:	.4byte 0x08110cbc

_08069e80:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r5, #0x0
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r4, #0x18
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _08069f08
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _08069f0c
	bl		sub_08013e9c
	ldr		r2, [sp, #0x10]
	ldr		r3, _08069f10
	add		r0, r2, r3
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x18
	asr		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_08069ee8
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	str		r5, [sp, #0x0]
	str		r7, [sp, #0x4]
	str		r4, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _08069f14
	bl		sub_08013e9c
_08069ee8:
	ldr		r0, [sp, #0x18]
	cmp		r0, #0x0
	beq		_08069f18
	mov		r0, #0x0
	mov		r1, #0xe
	mov		r2, #0xf
	bl		sub_080281b0
	add		r1, r0, #0x0
	ldr		r0, [sp, #0x18]
	mov		r2, #0xc8
	lsl		r2, r2, #0x2
	mov		r3, #0xf
	bl		sub_0800c674
	b		_0806a02c

_08069f08:	.4byte 0x08110cec
_08069f0c:	.4byte 0x08110d1c
_08069f10:	.4byte 0x00006273
_08069f14:	.4byte 0x08110d4c

_08069f18:
	mov		r5, #0x0
_08069f1a:
	add		r4, r5, #0x0
	add		r4, #0xe
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, #0xf
	bl		sub_080281b0
	ldr		r2, _08069f88
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_080281b0
	ldr		r3, _08069f8c
	add		r1, r3, #0x0
	strh	r1, [r0, #0x0]
	add		r5, #0x1
	cmp		r5, #0x6
	ble		_08069f1a
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0xf
	bl		sub_080281b0
	ldr		r2, _08069f90
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0xf
	mov		r2, #0x10
	bl		sub_080281b0
	ldr		r3, _08069f94
	add		r1, r3, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0xf
	bl		sub_080281b0
	ldr		r2, _08069f98
	add		r1, r2, #0x0
	strh	r1, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x12
	mov		r2, #0x10
	bl		sub_080281b0
	ldr		r3, _08069f9c
	add		r1, r3, #0x0
	strh	r1, [r0, #0x0]
	b		_0806a02c

.align 2, 0
.pool

_08069f88:	.4byte 0x0000F33B
_08069f8c:	.4byte 0x0000F35B
_08069f90:	.4byte 0x0000F32A
_08069f94:	.4byte 0x0000F34A
_08069f98:	.4byte 0x0000F32B
_08069f9c:	.4byte 0x0000F34B

_08069fa0:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r10
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _08069fe4
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r2, r10
	str		r2, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r0, r9
	str		r0, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _08069fe8
	bl		sub_08013e9c
	b		_0806a02c

.align 2, 0
.pool

_08069fe4:	.4byte 0x08110d60
_08069fe8:	.4byte 0x08110d90

_08069fec:
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r1, r10
	str		r1, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r2, r9
	str		r2, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xd
	ldr		r2, _0806a048
	bl		sub_08013e9c
	mov		r0, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_080281b0
	add		r3, r0, #0x0
	mov		r0, r10
	str		r0, [sp, #0x0]
	str		r7, [sp, #0x4]
	mov		r1, r9
	str		r1, [sp, #0x8]
	mov		r0, #0x4
	mov		r1, #0xf
	ldr		r2, _0806a04c
	bl		sub_08013e9c
_0806a02c:
	mov		r0, #0x1
	bl		sub_080281fc
_0806a032:
	mov		r0, #0x2
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806a054
	mov		r0, #0x90
	bl		sub_0807073c
	ldr		r0, _0806a050
	b		_0806a0ca

.align 2, 0
.pool

_0806a048:	.4byte 0x08110dc0
_0806a04c:	.4byte 0x08110df0
_0806a050:	.4byte _TryLoadMGBMainMenu + 1

_0806a054:
	mov		r0, #0x1
	bl		sub_08026fec
	cmp		r0, #0x0
	beq		_0806a0d6
	mov		r2, r8
	mov		r0, #0x0
	ldrsb	r0, [r2, r0]
	add		r0, sp
	add		r0, #0xc
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0806a08c
	mov		r0, #0x91
	bl		sub_0807073c
	mov		r3, r8
	mov		r0, #0x0
	ldrsb	r0, [r3, r0]
	add		r0, sp
	add		r0, #0xc
	ldrb	r0, [r0, #0x0]
	bl		sub_08069ac4
	mov		r0, #0x1
	bl		sub_080281fc
	b		_0806a0d6
_0806a08c:
	mov		r0, #0x8e
	bl		sub_0807073c
	mov		r1, r8
	mov		r0, #0x0
	ldrsb	r0, [r1, r0]
	cmp		r0, #0x1
	beq		_0806a0b8
	cmp		r0, #0x1
	bgt		_0806a0a6
	cmp		r0, #0x0
	beq		_0806a0b0
	b		_0806a0d6
_0806a0a6:
	cmp		r0, #0x2
	beq		_0806a0c0
	cmp		r0, #0x3
	beq		_0806a0c8
	b		_0806a0d6
_0806a0b0:
	ldr		r0, _0806a0b4
	b		_0806a0ca

_0806a0b4:	.4byte sub_0806a0fc

_0806a0b8:
	ldr		r0, _0806a0bc
	b		_0806a0ca

_0806a0bc:	.4byte 0x0806ba4d

_0806a0c0:
	ldr		r0, _0806a0c4
	b		_0806a0ca

_0806a0c4:	.4byte sub_0806c358

_0806a0c8:
	ldr		r0, _0806a0f4
_0806a0ca:
	str		r0, [r6, #0x0]
	ldrb	r0, [r6, #0x8]
	add		r0, #0x1
	mov		r1, #0x7
	and		r0, r1
	strb	r0, [r6, #0x8]
_0806a0d6:
	ldr		r1, [r6, #0x0]
	ldr		r0, _0806a0f8
	cmp		r1, r0
	bne		_0806a0e0
	b		_08069db0
_0806a0e0:
	mov		r0, #0x1
	add		sp, #0x1c
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.align 2, 0
.pool

_0806a0f4:	.4byte sub_0806c7d4
_0806a0f8:	.4byte 0x08069C05
	thumb_func_end _LoadMGBMobileGPMenu
