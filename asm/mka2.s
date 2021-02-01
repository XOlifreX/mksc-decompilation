	.include "defines.s"
	.include "ram.s"
	.include "macros.s"


	thumb_func_start sub_08026dbc
sub_08026dbc:
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

_08026e14:	.4byte RunGameLogic_CallBack
_08026e18:	.4byte DMA0SourceAddress
_08026e1c:	.4byte 0x0000C5FF
_08026e20:	.4byte 0x00007FFF

	thumb_func_end sub_08026dbc

.incbin "base.gba", 0x26E24, 0x74

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

_08026ef8:	.4byte RunGameLogic_CallBack
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

_08027074:	.4byte GeneralLCDStatus_STAT_LYC_

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
	thumb_func_end sub_080270d0

.incbin "base.gba", 0x270f0, 0x14

	thumb_func_start sub_08027104
sub_08027104:
    ldr     r3, _08027118
    mov     r1, #0x1
    and     r0, r1
    ldrb    r2, [r3, #0x0]
    mov     r1, #0x2
.incbin "base.gba", 0x2710e, 0x2 @ rsb     r1, r1
    and     r1, r2
    orr     r1, r0
    strb    r1, [r3, #0x0]
    bx      lr

_08027118:  .4byte 0x03007FF8
	thumb_func_end sub_08027104
