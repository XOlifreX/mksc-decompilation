	.include "defines.s"
	.include "ram.s"
	.include "macros.s"


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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		getMgbNicknameFromMGBStruct
	add		r5, r0, #0x0
	ldr		r1, _080648d0
	add		r0, r4, #0x0
	bl		setMgbNickname
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
	bl		_UpdateGame
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
	bl		getMgbNicknameFromSave
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
	bl		_UpdateGame
	ldr		r4, _080649a4
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
	bl		setMgbNickname
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		_UpdateGame
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
	bl		getMgbPasswordFromMGBStruct
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
	bl		_UpdateGame
	ldr		r4, _080657a4
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
	bl		setMgbPassword
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
	bl		setMgbPassword
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
	bl		_UpdateGame
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
	bl		clearMgbPassword
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
	bl		_UpdateGame
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
	bl		clearMgbPassword
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
	bl		_UpdateGame
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
	bl		clearMgbPassword
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
	bl		_UpdateGame
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
	bl		clearMgbPassword
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
	mov		r2, r8
	cmp		r2, #0x4
	ble		_08066f5a
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
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
	bl		_UpdateGame
	ldr		r0, _08068ce0
	ldr		r1, _08068ce4
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		_UpdateGame
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
	bl		clearMgbPassword
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
	bl		_UpdateGame
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
