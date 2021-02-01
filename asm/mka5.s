	.include "defines.s"
	.include "ram.s"
	.include "macros.s"
    

	thumb_func_start sub_08071b8c
sub_08071b8c:
	ldr		r3, _08071b9c
	mov		r2, #0x0
	strb	r2, [r3, #0x0]
	ldr		r1, _08071ba0
	mov		sp, r1
	svc		0x1
	svc		0x0
		
	.2byte	0x0
	
_08071b9c:
	lsl		r0, r1, #0x8
	lsl		r0, r0, #0x10
_08071ba0:
	ldrb	r0, [r0, #0x1c]
	lsl		r0, r0, #0xc
	thumb_func_end sub_08071b8c

	thumb_func_start sub_08071ba4
sub_08071ba4:
	mov		r2, #0x0
	svc		0x5
	bx		lr

.incbin "base.gba", 0x71BAA, 0x2
	thumb_func_end sub_08071ba4

	thumb_func_start sub_08071bac
sub_08071bac:
	push	{ r4, r5, lr }
	sub		sp, #0x44
	mov		r0, sp
	bl		sub_08071df4
	mov		r5, sp
	add		r5, #0x1
	ldr		r2, _08071bd4
	mov		r0, #0xaa
	strb	r0, [r2, #0x0]
	ldr		r1, _08071bd8
	mov		r0, #0x55
	strb	r0, [r1, #0x0]
	mov		r0, #0x90
	strb	r0, [r2, #0x0]
	add		r1, sp, #0x40
	ldr		r2, _08071bdc
	add		r0, r2, #0x0
	b		_08071be4

.incbin "base.gba", 0x71BD2, 0x2

_08071bd4:	.4byte 0x0E005555
_08071bd8:	.4byte 0x0E002AAA
_08071bdc:	.4byte 0x00004E20

_08071be0:
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
_08071be4:
	strh	r0, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08071be0
	ldr		r0, _08071c1c
	bl		sub_0807d7e4
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x10
	mov		r0, #0xe0
	lsl		r0, r0, #0x14
	bl		sub_0807d7e4
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	orr		r4, r0
	ldr		r2, _08071c20
	mov		r0, #0xaa
	strb	r0, [r2, #0x0]
	ldr		r1, _08071c24
	mov		r0, #0x55
	strb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r2, #0x0]
	add		r1, sp, #0x40
	ldr		r2, _08071c28
	add		r0, r2, #0x0
	b		_08071c30

_08071c1c:	.4byte 0x0E000001
_08071c20:	.4byte 0x0E005555
_08071c24:	.4byte 0x0E002AAA
_08071c28:	.4byte 0x00004E20

_08071c2c:
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
_08071c30:
	strh	r0, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08071c2c
	add		r0, r4, #0x0
	add		sp, #0x44
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x71C42, 0x2
	thumb_func_end sub_08071bac

	thumb_func_start sub_08071c44
sub_08071c44:
	push	{ r4, lr }
	ldr		r2, _08071c64
	ldrh	r0, [r2, #0x0]
	ldr		r1, _08071c68
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bl		sub_08071bac
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	ldr		r2, _08071c6c
	mov		r4, #0x1
	b		_08071c72

.incbin "base.gba", 0x71C62, 0x2

_08071c64:	.4byte GamePakWaitstateControl
_08071c68:	.4byte 0x0000FFFC
_08071c6c:	.4byte 0x0820b720

_08071c70:
	add		r2, #0x4
_08071c72:
	ldr		r1, [r2, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x28
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08071c86
	ldrh		r0, [r1, #0x28]
	cmp		r3, r0
	bne		_08071c70
	mov		r4, #0x0
_08071c86:
	ldr		r1, _08071cc0
	ldr		r0, [r2, #0x0]
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldr		r1, _08071cc4
	ldr		r0, [r2, #0x0]
	ldr		r0, [r0, #0x4]
	str		r0, [r1, #0x0]
	ldr		r1, _08071cc8
	ldr		r0, [r2, #0x0]
	ldr		r0, [r0, #0x8]
	str		r0, [r1, #0x0]
	ldr		r1, _08071ccc
	ldr		r0, [r2, #0x0]
	ldr		r0, [r0, #0xC]
	str		r0, [r1, #0x0]
	ldr		r1, _08071cd0
	ldr		r0, [r2, #0x0]
	ldr		r0, [r0, #0x10]
	str		r0, [r1, #0x0]
	ldr		r1, _08071cd4
	ldr		r0, [r2, #0x0]
	add		r0, #0x14
	str		r0, [r1, #0x0]
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x71CBE, 0x2

_08071cc0:	.4byte 0x03006E04
_08071cc4:	.4byte 0x03006E10
_08071cc8:	.4byte 0x03006E14
_08071ccc:	.4byte 0x03006E00
_08071cd0:	.4byte 0x030023C8
_08071cd4:	.4byte 0x03006E08
	ldr		r1, _08071cf4
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08071cf2
	ldrh	r0, [r1, #0x0]
	sub		r0, #0x1
	strh	r0, [r1, #0x0]
	lsl		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_08071cf2
	ldr		r1, _08071cf8
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
_08071cf2:
	bx		lr

_08071cf4:	.4byte 0x030023D2
_08071cf8:	.4byte 0x030023D4
	thumb_func_end sub_08071c44

	thumb_func_start sub_08071cfc
sub_08071cfc:
	add		r2, r1, #0x0
	lsl		r0, r0, #0x18
	lsr		r1, r0, #0x18
	cmp		r1, #0x3
	bhi		_08071d30
	ldr		r0, _08071d20
	strb	r1, [r0, #0x0]
	ldr		r1, _08071d24
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x2
	ldr		r3, _08071d28
	add		r0, r0, r3
	str		r0, [r1, #0x0]
	ldr		r0, _08071d2c
	str		r0, [r2, #0x0]
	mov		r0, #0x0
	b		_08071d32

.incbin "base.gba", 0x71D1E, 0x2

_08071d20:	.4byte 0x030023D0
_08071d24:	.4byte 0x030023D8
_08071d28:	.4byte Timer0Counter_Reload
_08071d2c:	.4byte 0x08071cd9

_08071d30:
	mov		r0, #0x1
_08071d32:
	bx		lr
	thumb_func_end sub_08071cfc

	thumb_func_start sub_08071d34
sub_08071d34:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _08071d8c
	lsl		r2, r0, #0x1
	add		r2, r2, r0
	lsl		r2, r2, #0x1
	ldr		r0, [r1, #0x0]
	add		r2, r2, r0
	ldr		r1, _08071d90
	ldr		r3, _08071d94
	ldrh	r0, [r3, #0x0]
	strh	r0, [r1, #0x0]
	mov		r5, #0x0
	strh	r5, [r3, #0x0]
	ldr		r4, _08071d98
	ldr		r0, _08071d9c
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x8
	lsl		r1, r0
	ldrh	r0, [r4, #0x0]
	orr		r0, r1
	strh	r0, [r4, #0x0]
	mov		r0, #0x1
	strh	r0, [r3, #0x0]
	ldr		r0, _08071da0
	strb	r5, [r0, #0x0]
	ldr		r1, _08071da4
	ldrh	r0, [r2, #0x0]
	strh	r0, [r1, #0x0]
	add		r2, #0x2
	ldr		r3, _08071da8
	ldr		r0, [r3, #0x0]
	ldrh	r1, [r2, #0x0]
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	str		r0, [r3, #0x0]
	ldrh	r1, [r2, #0x2]
	strh	r1, [r0, #0x0]
	sub		r0, #0x2
	str		r0, [r3, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08071d8c:	.4byte 0x030023C8
_08071d90:	.4byte 0x030023DC
_08071d94:	.4byte InterruptMasterEnableRegister
_08071d98:	.4byte InterruptEnableRegister
_08071d9c:	.4byte 0x030023D0
_08071da0:	.4byte 0x030023D4
_08071da4:	.4byte 0x030023D2
_08071da8:	.4byte 0x030023D8
	thumb_func_end sub_08071d34

	thumb_func_start sub_08071dac
sub_08071dac:
	ldr		r1, _08071ddc
	ldr		r0, [r1, #0x0]
	mov		r2, #0x0
	strh	r2, [r0, #0x0]
	add		r0, #0x2
	str		r0, [r1, #0x0]
	strh	r2, [r0, #0x0]
	sub		r0, #0x2
	str		r0, [r1, #0x0]
	ldr		r3, _08071de0
	strh	r2, [r3, #0x0]
	ldr		r2, _08071de4
	ldr		r0, _08071de8
	ldrb	r0, [r0, #0x0]
	mov		r1, #0x8
	lsl		r1, r0
	ldrh	r0, [r2, #0x0]
	bic		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _08071dec
	ldrh	r0, [r0, #0x0]
	strh	r0, [r3, #0x0]
	bx		lr

.incbin "base.gba", 0x71DDA, 0x2

_08071ddc:	.4byte 0x030023D8
_08071de0:	.4byte InterruptMasterEnableRegister
_08071de4:	.4byte InterruptEnableRegister
_08071de8:	.4byte 0x030023D0
_08071dec:	.4byte 0x030023DC

.incbin "base.gba", 0x71Df0, 0x2
	thumb_func_end sub_08071dac


.incbin "base.gba", 0x71DF2, 0x2
	thumb_func_start sub_08071df4
sub_08071df4:
	add		r2, r0, #0x0
	ldr		r1, _08071e0c
	add		r0, r2, #0x1
	str		r0, [r1, #0x0]
	ldr		r3, _08071e10
	mov		r0, #0x1
	eor		r3, r0
	ldr		r0, _08071e14
	ldr		r1, _08071e10
	sub		r0, r0, r1
	lsl		r0, r0, #0xf
	b		_08071e24

_08071e0c:	.4byte 0x030023CC
_08071e10:	.4byte 0x08071DF1
_08071e14:	.4byte 0x08071DF5

_08071e18:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r0, r1, #0x1
	lsl		r0, r0, #0x10
_08071e24:
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_08071e18
	bx		lr
	thumb_func_end sub_08071df4

	thumb_func_start sub_08071e2c
sub_08071e2c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	lsl		r4, r4, #0x18
	lsr		r4, r4, #0x18
	lsl		r2, r2, #0x18
	lsr		r6, r2, #0x18
	mov		r0, #0x0
	mov		r8, r0
	add		r0, r4, #0x0
	bl		sub_08071d34
	ldr		r7, _08071e54
	mov		r0, #0xc0
	lsl		r0, r0, #0x8
	orr		r4, r0
	lsl		r4, r4, #0x10
	b		_08071e7c

_08071e54:	.4byte 0x030023CC

_08071e58:
	ldr		r0, _08071e70
	ldr		r1, [r0, #0x0]
	ldr		r0, _08071e74
	ldrh	r1, [r1, #0x14]
	cmp		r1, r0
	bne		_08071e6a
	ldr		r1, _08071e78
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
_08071e6a:
	lsr		r4, r4, #0x10
	mov		r8, r4
	b		_08071ea4

_08071e70:	.4byte 0x03006E08
_08071e74:	.4byte 0x00001CC2
_08071e78:	.4byte 0x0E005555

_08071e7c:
	ldr		r1, [r7, #0x0]
	add		r0, r5, #0x0
	bl		sub_0807d7d4
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r6
	beq		_08071ea4
	ldr		r0, _08071eb4
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08071e7c
	ldr		r1, [r7, #0x0]
	add		r0, r5, #0x0
	bl		sub_0807d7d4
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, r6
	bne		_08071e58
_08071ea4:
	bl		sub_08071dac
	mov		r0, r8
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08071eb4:	.4byte 0x030023D4

.incbin "base.gba", 0x71eb8, 0x2
	thumb_func_end sub_08071e2c


.incbin "base.gba", 0x71EBA, 0x22
	thumb_func_start sub_08071edc
sub_08071edc:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x80
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	add		r7, r3, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	ldr		r2, _08071f0c
	ldrh	r0, [r2, #0x0]
	ldr		r1, _08071f10
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r3, _08071f14
	mov		r0, #0x1
	eor		r3, r0
	mov		r2, sp
	ldr		r0, _08071f18
	ldr		r1, _08071f14
	sub		r0, r0, r1
	lsl		r0, r0, #0xf
	b		_08071f28

.incbin "base.gba", 0x71F0A, 0x2

_08071f0c:	.4byte GamePakWaitstateControl
_08071f10:	.4byte 0x0000FFFC
_08071f14:	.4byte 0x08071EB9
_08071f18:	.4byte 0x08071EDD

_08071f1c:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r0, r1, #0x1
	lsl		r0, r0, #0x10
_08071f28:
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_08071f1c
	mov		r3, sp
	add		r3, #0x1
	ldr		r0, _08071f54
	ldrb	r0, [r0, #0x1c]
	lsl		r4, r0
	add		r0, r4, #0x0
	mov		r2, #0xe0
	lsl		r2, r2, #0x14
	add		r1, r5, r2
	add		r0, r0, r1
	add		r1, r6, #0x0
	add		r2, r7, #0x0
	bl		sub_0807d7dc
	add		sp, #0x80
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x71F52, 0x2

_08071f54:	.4byte 0x0820b7d4

.incbin "base.gba", 0x71F58, 0x2
	thumb_func_end sub_08071edc


.incbin "base.gba", 0x71F5A, 0x42
	thumb_func_start sub_08071f9c
sub_08071f9c:
	push	{ r4, r5, lr }
	sub		sp, #0x100
	add		r5, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	ldr		r2, _08071fc8
	ldrh	r0, [r2, #0x0]
	ldr		r1, _08071fcc
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r3, _08071fd0
	mov		r0, #0x1
	eor		r3, r0
	mov		r2, sp
	ldr		r0, _08071fd4
	ldr		r1, _08071fd0
	sub		r0, r0, r1
	lsl		r0, r0, #0xf
	b		_08071fe4

.incbin "base.gba", 0x71FC6, 0x2

_08071fc8:	.4byte GamePakWaitstateControl
_08071fcc:	.4byte 0x0000FFFC
_08071fd0:	.4byte 0x08071F59
_08071fd4:	.4byte 0x08071F9D

_08071fd8:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r0, r1, #0x1
	lsl		r0, r0, #0x10
_08071fe4:
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_08071fd8
	mov		r3, sp
	add		r3, #0x1
	ldr		r0, _0807200c
	ldrb	r1, [r0, #0x1c]
	lsl		r4, r1
	add		r1, r4, #0x0
	mov		r2, #0xe0
	lsl		r2, r2, #0x14
	add		r1, r1, r2
	ldrh	r2, [r0, #0x18]
	add		r0, r5, #0x0
	bl		sub_0807d7dc
	add		sp, #0x100
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

_0807200c:	.4byte 0x0820b7d4
	thumb_func_end sub_08071f9c

	thumb_func_start sub_08072010
sub_08072010:
	push	{ r4, r5, r6, lr }
	add		r5, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	mov		r6, #0x0
	b		_08072022
_0807201c:
	add		r0, r6, #0x1
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
_08072022:
	cmp		r6, #0x2
	bhi		_08072048
	ldr		r0, _08072050
	ldr		r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807d7d8
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x0
	bne		_0807201c
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08071f9c
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_0807201c
_08072048:
	add		r0, r2, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08072050:	.4byte 0x03006E04
	thumb_func_end sub_08072010

	thumb_func_start sub_08072054
sub_08072054:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x40
	ldr		r5, _080720b0
	ldrh	r1, [r5, #0x0]
	ldr		r6, _080720b4
	and		r1, r6
	ldr		r0, _080720b8
	ldr		r0, [r0, #0x0]
	ldrh	r0, [r0, #0x10]
	orr		r0, r1
	strh	r0, [r5, #0x0]
	ldr		r1, _080720bc
	mov		r4, #0xaa
	strb	r4, [r1, #0x0]
	ldr		r3, _080720c0
	mov		r2, #0x55
	strb	r2, [r3, #0x0]
	mov		r0, #0x80
	strb	r0, [r1, #0x0]
	strb	r4, [r1, #0x0]
	strb	r2, [r3, #0x0]
	mov		r0, #0x10
	strb	r0, [r1, #0x0]
	mov		r0, sp
	bl		sub_08071df4
	ldr		r0, _080720c4
	mov		r1, #0xe0
	lsl		r1, r1, #0x14
	ldr		r3, [r0, #0x0]
	mov		r0, #0x3
	mov		r2, #0xff
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldrh	r1, [r5, #0x0]
	and		r1, r6
	mov		r2, #0x3
	orr		r1, r2
	strh	r1, [r5, #0x0]
	add		sp, #0x40
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x720AE, 0x2

_080720b0:	.4byte GamePakWaitstateControl
_080720b4:	.4byte 0x0000FFFC
_080720b8:	.4byte 0x03006E08
_080720bc:	.4byte 0x0E005555
_080720c0:	.4byte 0x0E002AAA
_080720c4:	.4byte 0x03006E00
	thumb_func_end sub_08072054

	thumb_func_start sub_080720c8
sub_080720c8:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	sub		sp, #0x40
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0xf
	bhi		_08072150
	ldr		r6, _08072138
	ldrh	r1, [r6, #0x0]
	ldr		r0, _0807213c
	mov		r8, r0
	and		r1, r0
	ldr		r0, _08072140
	ldr		r2, [r0, #0x0]
	ldrh	r0, [r2, #0x10]
	orr		r0, r1
	strh	r0, [r6, #0x0]
	ldrb	r4, [r2, #0x8]
	lsl		r3, r4
	add		r4, r3, #0x0
	mov		r2, #0xe0
	lsl		r2, r2, #0x14
	add		r4, r4, r2
	ldr		r1, _08072144
	mov		r5, #0xaa
	strb	r5, [r1, #0x0]
	ldr		r3, _08072148
	mov		r2, #0x55
	strb	r2, [r3, #0x0]
	mov		r0, #0x80
	strb	r0, [r1, #0x0]
	strb	r5, [r1, #0x0]
	strb	r2, [r3, #0x0]
	mov		r0, #0x30
	strb	r0, [r4, #0x0]
	mov		r0, sp
	bl		sub_08071df4
	ldr		r0, _0807214c
	ldr		r3, [r0, #0x0]
	mov		r0, #0x2
	add		r1, r4, #0x0
	mov		r2, #0xff
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldrh	r1, [r6, #0x0]
	mov		r2, r8
	and		r1, r2
	mov		r2, #0x3
	orr		r1, r2
	strh	r1, [r6, #0x0]
	b		_08072152

.incbin "base.gba", 0x72136, 0x2

_08072138:	.4byte GamePakWaitstateControl
_0807213c:	.4byte 0x0000FFFC
_08072140:	.4byte 0x03006E08
_08072144:	.4byte 0x0E005555
_08072148:	.4byte 0x0E002AAA
_0807214c:	.4byte 0x03006E00

_08072150:
	ldr		r0, _08072160
_08072152:
	add		sp, #0x40
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7215E, 0x2

_08072160:	.4byte 0x000080FF
	thumb_func_end sub_080720c8

	thumb_func_start sub_08072164
sub_08072164:
	push	{ r4, lr }
	ldr		r4, _08072190
	mov		r2, #0xaa
	strb	r2, [r4, #0x0]
	ldr		r3, _08072194
	mov		r2, #0x55
	strb	r2, [r3, #0x0]
	mov		r2, #0xa0
	strb	r2, [r4, #0x0]
	ldrb	r2, [r0, #0x0]
	strb	r2, [r1, #0x0]
	ldr		r3, _08072198
	ldrb	r2, [r0, #0x0]
	ldr		r3, [r3, #0x0]
	mov		r0, #0x1
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_08072190:	.4byte 0x0E005555
_08072194:	.4byte 0x0E002AAA
_08072198:	.4byte 0x03006E00
	thumb_func_end sub_08072164

	thumb_func_start sub_0807219c
sub_0807219c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	sub		sp, #0x60
	mov		r9, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	mov		r8, r0
	cmp		r0, #0xf
	bls		_080721bc
	ldr		r0, _080721b8
	b		_080722aa

.incbin "base.gba", 0x721B6, 0x2

_080721b8:	.4byte 0x000080FF

_080721bc:
	ldr		r0, _080721dc
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x8]
	mov		r7, r8
	lsl		r7, r0
	mov		r0, #0xe0
	lsl		r0, r0, #0x14
	add		r7, r7, r0
	ldr		r1, _080721e0
	mov		r0, #0x1
	add		r3, r1, #0x0
	eor		r3, r0
	mov		r2, sp
	ldr		r0, _080721e4
	sub		r0, r0, r1
	b		_080721f2

_080721dc:	.4byte 0x03006E08
_080721e0:	.4byte 0x080722C1
_080721e4:	.4byte 0x080722E5

_080721e8:
	ldrh	r0, [r3, #0x0]
	strh	r0, [r2, #0x0]
	add		r3, #0x2
	add		r2, #0x2
	sub		r0, r1, #0x2
_080721f2:
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	bne		_080721e8
	mov		r4, #0x0
	b		_08072208
_080721fe:
	add		r0, r4, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	cmp		r4, #0x51
	beq		_080722a8
_08072208:
	mov		r0, r8
	bl		sub_080720c8
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	bne		_080721fe
	add		r0, r7, #0x0
	mov		r1, sp
	add		r1, #0x1
	bl		sub_080722e4
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	bne		_080721fe
	mov		r6, #0x1
	cmp		r4, #0x0
	beq		_08072230
	mov		r6, #0x6
_08072230:
	mov		r4, #0x1
	cmp		r4, r6
	bhi		_08072246
_08072236:
	mov		r0, r8
	bl		sub_080720c8
	add		r0, r4, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	cmp		r4, r6
	bls		_08072236
_08072246:
	mov		r0, sp
	bl		sub_08071df4
	ldr		r3, _08072268
	ldrh	r1, [r3, #0x0]
	ldr		r0, _0807226c
	and		r1, r0
	ldr		r0, _08072270
	ldr		r2, [r0, #0x0]
	ldrh	r0, [r2, #0x10]
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _08072274
	ldr		r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	add		r4, r1, #0x0
	b		_08072284

_08072268:	.4byte GamePakWaitstateControl
_0807226c:	.4byte 0x0000FFFC
_08072270:	.4byte 0x03006E08
_08072274:	.4byte 0x03006E0C

_08072278:
	ldrh	r0, [r4, #0x0]
	sub		r0, #0x1
	strh	r0, [r4, #0x0]
	mov		r0, #0x1
	add		r9, r0
	add		r7, #0x1
_08072284:
	ldrh	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_0807229a
	mov		r0, r9
	add		r1, r7, #0x0
	bl		sub_08072164
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	beq		_08072278
_0807229a:
	ldr		r2, _080722b8
	ldrh	r0, [r2, #0x0]
	ldr		r1, _080722bc
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
_080722a8:
	add		r0, r5, #0x0
_080722aa:
	add		sp, #0x60
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_080722b8:	.4byte GamePakWaitstateControl
_080722bc:	.4byte 0x0000FFFC

.incbin "base.gba", 0x722C0, 0x2
	thumb_func_end sub_0807219c


.incbin "base.gba", 0x722C2, 0x22
	thumb_func_start sub_080722e4
sub_080722e4:
	push	{ lr }
	bl		sub_0807d7d4
	cmp		r0, #0x0
	bne		_080722f2
	mov		r0, #0x0
	b		_080722f4
_080722f2:
	ldr		r0, _080722f8
_080722f4:
	pop		{ r1 }
	bx		r1

_080722f8:	.4byte 0x00008004
	thumb_func_end sub_080722e4

	thumb_func_start sub_080722fc
sub_080722fc:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x40
	add		r7, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0xf
	bls		_08072314
	ldr		r0, _08072310
	b		_08072390

.incbin "base.gba", 0x7230E, 0x2

_08072310:	.4byte 0x000080FF

_08072314:
	add		r0, r4, #0x0
	bl		sub_080720c8
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	bne		_0807238e
	mov		r0, sp
	bl		sub_08071df4
	ldr		r3, _08072350
	ldrh	r1, [r3, #0x0]
	ldr		r0, _08072354
	and		r1, r0
	ldr		r0, _08072358
	ldr		r2, [r0, #0x0]
	ldrh	r0, [r2, #0x10]
	orr		r0, r1
	strh	r0, [r3, #0x0]
	ldr		r1, _0807235c
	ldr		r0, [r2, #0x4]
	strh	r0, [r1, #0x0]
	ldrb	r0, [r2, #0x8]
	lsl		r4, r0
	mov		r0, #0xe0
	lsl		r0, r0, #0x14
	add		r4, r4, r0
	add		r6, r1, #0x0
	b		_0807236a

.incbin "base.gba", 0x7234E, 0x2

_08072350:	.4byte GamePakWaitstateControl
_08072354:	.4byte 0x0000FFFC
_08072358:	.4byte 0x03006E08
_0807235c:	.4byte 0x03006E0C

_08072360:
	ldrh	r0, [r6, #0x0]
	sub		r0, #0x1
	strh	r0, [r6, #0x0]
	add		r7, #0x1
	add		r4, #0x1
_0807236a:
	ldrh	r0, [r6, #0x0]
	cmp		r0, #0x0
	beq		_08072380
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08072164
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r5, #0x0
	beq		_08072360
_08072380:
	ldr		r2, _08072398
	ldrh	r0, [r2, #0x0]
	ldr		r1, _0807239c
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
_0807238e:
	add		r0, r5, #0x0
_08072390:
	add		sp, #0x40
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_08072398:	.4byte GamePakWaitstateControl
_0807239c:	.4byte 0x0000FFFC
	thumb_func_end sub_080722fc

	thumb_func_start sub_080723a0
sub_080723a0:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x40
	mov		r0, sp
	bl		sub_08071df4
	ldr		r5, _080723f8
	ldrh	r0, [r5, #0x0]
	ldr		r6, _080723fc
	and		r0, r6
	ldr		r1, _08072400
	ldrh	r1, [r1, #0x24]
	orr		r0, r1
	strh	r0, [r5, #0x0]
	ldr		r1, _08072404
	mov		r4, #0xaa
	strb	r4, [r1, #0x0]
	ldr		r3, _08072408
	mov		r2, #0x55
	strb	r2, [r3, #0x0]
	mov		r0, #0x80
	strb	r0, [r1, #0x0]
	strb	r4, [r1, #0x0]
	strb	r2, [r3, #0x0]
	mov		r0, #0x10
	strb	r0, [r1, #0x0]
	ldr		r0, _0807240c
	mov		r1, #0xe0
	lsl		r1, r1, #0x14
	ldr		r3, [r0, #0x0]
	mov		r0, #0x3
	mov		r2, #0xff
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	ldrh	r1, [r5, #0x0]
	and		r1, r6
	mov		r2, #0x3
	orr		r1, r2
	strh	r1, [r5, #0x0]
	add		sp, #0x40
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_080723f8:	.4byte GamePakWaitstateControl
_080723fc:	.4byte 0x0000FFFC
_08072400:	.4byte 0x0820b928
_08072404:	.4byte 0x0E005555
_08072408:	.4byte 0x0E002AAA
_0807240c:	.4byte 0x03006E00
	thumb_func_end sub_080723a0

	thumb_func_start sub_08072410
sub_08072410:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x10
	ldr		r3, _08072480
	lsr		r0, r0, #0x10
	add		r4, r0, #0x0
	ldrb	r1, [r3, #0x1c]
	lsl		r4, r1
	mov		r0, #0xe0
	lsl		r0, r0, #0x14
	add		r4, r4, r0
	ldr		r1, _08072484
	ldrh	r0, [r1, #0x0]
	add		r5, r0, #0x0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _08072488
	mov		r0, #0xaa
	strb	r0, [r2, #0x0]
	ldr		r1, _0807248c
	mov		r0, #0x55
	strb	r0, [r1, #0x0]
	mov		r0, #0xa0
	strb	r0, [r2, #0x0]
	ldr		r0, [r3, #0x18]
	cmp		r0, #0x0
	beq		_08072450
	mov		r1, #0xff
_08072446:
	strb	r1, [r4, #0x0]
	add		r4, #0x1
	sub		r0, #0x1
	cmp		r0, #0x0
	bne		_08072446
_08072450:
	sub		r4, #0x1
	ldr		r0, _08072484
	strh	r5, [r0, #0x0]
	ldr		r0, _08072490
	ldr		r3, [r0, #0x0]
	mov		r0, #0x1
	add		r1, r4, #0x0
	mov		r2, #0xff
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	cmp		r1, #0x0
	beq		_08072476
	mov		r0, #0xff
	lsl		r0, r0, #0x8
	and		r1, r0
	mov		r0, #0x2
	orr		r1, r0
_08072476:
	add		r0, r1, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7247E, 0x2

_08072480:	.4byte 0x0820b928
_08072484:	.4byte InterruptMasterEnableRegister
_08072488:	.4byte 0x0E005555
_0807248c:	.4byte 0x0E002AAA
_08072490:	.4byte 0x03006E00
	thumb_func_end sub_08072410

	thumb_func_start sub_08072494
sub_08072494:
	push	{ r4, r5, r6, lr }
	sub		sp, #0x40
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0xf
	bls		_080724a8
	ldr		r0, _080724a4
	b		_08072510

_080724a4:	.4byte 0x000080FF

_080724a8:
	mov		r0, sp
	bl		sub_08071df4
	ldr		r2, _080724c8
	ldrh	r0, [r2, #0x0]
	ldr		r1, _080724cc
	and		r0, r1
	ldr		r1, _080724d0
	ldrh	r1, [r1, #0x24]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	lsl		r0, r4, #0x15
	lsr		r5, r0, #0x10
	mov		r6, #0x0
_080724c4:
	mov		r4, #0x2
	b		_080724de

_080724c8:	.4byte GamePakWaitstateControl
_080724cc:	.4byte 0x0000FFFC
_080724d0:	.4byte 0x0820b928

_080724d4:
	sub		r0, r4, #0x1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_080724ec
_080724de:
	add		r0, r5, #0x0
	bl		sub_08072410
	lsl		r0, r0, #0x10
	lsr		r3, r0, #0x10
	cmp		r3, #0x0
	bne		_080724d4
_080724ec:
	add		r0, r5, #0x1
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
	cmp		r3, #0x0
	bne		_08072500
	add		r0, r6, #0x1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x1f
	bls		_080724c4
_08072500:
	ldr		r2, _08072518
	ldrh	r0, [r2, #0x0]
	ldr		r1, _0807251c
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r3, #0x0
_08072510:
	add		sp, #0x40
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08072518:	.4byte GamePakWaitstateControl
_0807251c:	.4byte 0x0000FFFC
	thumb_func_end sub_08072494

	thumb_func_start sub_08072520
sub_08072520:
	push	{ r4, r5, r6, lr }
	add		r5, r1, #0x0
	lsl		r0, r0, #0x10
	ldr		r3, _08072584
	lsr		r0, r0, #0x10
	add		r4, r0, #0x0
	ldrb	r1, [r3, #0x1c]
	lsl		r4, r1
	mov		r0, #0xe0
	lsl		r0, r0, #0x14
	add		r4, r4, r0
	ldr		r1, _08072588
	ldrh	r0, [r1, #0x0]
	add		r6, r0, #0x0
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _0807258c
	mov		r0, #0xaa
	strb	r0, [r2, #0x0]
	ldr		r1, _08072590
	mov		r0, #0x55
	strb	r0, [r1, #0x0]
	mov		r0, #0xa0
	strb	r0, [r2, #0x0]
	ldr		r1, [r3, #0x18]
	cmp		r1, #0x0
	beq		_08072564
_08072556:
	ldrb	r0, [r5, #0x0]
	strb	r0, [r4, #0x0]
	add		r5, #0x1
	add		r4, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bne		_08072556
_08072564:
	sub		r4, #0x1
	sub		r5, #0x1
	ldr		r0, _08072588
	strh	r6, [r0, #0x0]
	ldr		r0, _08072594
	ldrb	r2, [r5, #0x0]
	ldr		r3, [r0, #0x0]
	mov		r0, #0x1
	add		r1, r4, #0x0
	bl		sub_0807d7dc
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08072584:	.4byte 0x0820b928
_08072588:	.4byte InterruptMasterEnableRegister
_0807258c:	.4byte 0x0E005555
_08072590:	.4byte 0x0E002AAA
_08072594:	.4byte 0x03006E00
	thumb_func_end sub_08072520

	thumb_func_start sub_08072598
sub_08072598:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x40
	add		r7, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0xf
	bls		_080725b4
	ldr		r0, _080725b0
	b		_08072646

.incbin "base.gba", 0x725AE, 0x2

_080725b0:	.4byte 0x000080FF

_080725b4:
	mov		r0, sp
	bl		sub_08071df4
	ldr		r2, _080725dc
	ldrh	r0, [r2, #0x0]
	ldr		r1, _080725e0
	and		r0, r1
	ldr		r1, _080725e4
	ldrh	r1, [r1, #0x24]
	orr		r0, r1
	strh	r0, [r2, #0x0]
	lsl		r0, r4, #0x15
	lsr		r5, r0, #0x10
	ldr		r1, _080725e8
	ldr		r0, _080725ec
	ldr		r0, [r0, #0x18]
	strh	r0, [r1, #0x0]
	add		r0, r1, #0x0
	mov		r8, r0
	b		_08072606

_080725dc:	.4byte GamePakWaitstateControl
_080725e0:	.4byte 0x0000FFFC
_080725e4:	.4byte 0x0820b928
_080725e8:	.4byte 0x03006E0C
_080725ec:	.4byte 0x0820b8fc

_080725f0:
	ldr		r0, _08072614
	ldr		r1, [r0, #0x18]
	mov		r2, r8
	ldrh	r2, [r2, #0x0]
	sub		r0, r2, r1
	mov		r3, r8
	strh	r0, [r3, #0x0]
	add		r7, r7, r1
	add		r0, r5, #0x1
	lsl		r0, r0, #0x10
	lsr		r5, r0, #0x10
_08072606:
	mov		r1, r8
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08072636
	mov		r4, #0x2
	b		_08072622

.incbin "base.gba", 0x72612, 0x2

_08072614:	.4byte 0x0820b928

_08072618:
	sub		r0, r4, #0x1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	beq		_08072632
_08072622:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_08072520
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	cmp		r6, #0x0
	bne		_08072618
_08072632:
	cmp		r6, #0x0
	beq		_080725f0
_08072636:
	ldr		r2, _08072654
	ldrh	r0, [r2, #0x0]
	ldr		r1, _08072658
	and		r0, r1
	mov		r1, #0x3
	orr		r0, r1
	strh	r0, [r2, #0x0]
	add		r0, r6, #0x0
_08072646:
	add		sp, #0x40
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x72652, 0x2

_08072654:	.4byte GamePakWaitstateControl
_08072658:	.4byte 0x0000FFFC
	thumb_func_end sub_08072598

	thumb_func_start sub_0807265c
sub_0807265c:
	push	{ r4, r5, r6, r7, lr }
	ldr		r6, _0807272c
	mov		r5, #0x0
	strh	r5, [r6, #0x0]
	ldr		r3, _08072730
	mov		r4, #0x0
	str		r4, [r3, #0x0]
	ldr		r0, _08072734
	strh	r4, [r0, #0x0]
	ldr		r2, _08072738
	strh	r4, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	ldr		r7, _0807273c
	add		r1, r7, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r0, _08072740
	mov		r2, #0xc0
	strh	r2, [r0, #0x0]
	ldr		r1, _08072744
	ldrh	r0, [r1, #0x0]
	orr		r0, r2
	strh	r0, [r1, #0x0]
	str		r4, [r3, #0x0]
	ldr		r7, _08072748
	ldrh	r0, [r7, #0x2]
	strh	r4, [r7, #0x2]
	mov		r0, #0xff
	strb	r0, [r7, #0x0]
	ldrb	r0, [r7, #0x4]
	strb	r5, [r7, #0x4]
	ldrb	r0, [r7, #0x6]
	mov		r0, #0x1
	neg		r0, r0
	strb	r0, [r7, #0x6]
	mov		r0, #0x0
	bl		sub_08072b58
	mov		r0, #0x0
	bl		sub_08072778
	str		r4, [r7, #0x3c]
	ldrh	r0, [r7, #0xc]
	strh	r4, [r7, #0xc]
	ldrh	r0, [r7, #0xe]
	strh	r4, [r7, #0xe]
	str		r4, [r7, #0x40]
	mov		r1, #0xce
	lsl		r1, r1, #0x2
	add		r0, r7, r1
	str		r4, [r0, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x44
	ldrb	r1, [r0, #0x0]
	strb	r5, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x45
	ldrb	r0, [r1, #0x0]
	strb	r5, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x46
	strh	r4, [r0, #0x0]
	add		r0, #0x2
	ldrb	r1, [r0, #0x0]
	strb	r5, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x49
	ldrb	r0, [r1, #0x0]
	strb	r5, [r1, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x4c
	ldrb	r1, [r0, #0x0]
	strb	r5, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x4d
	ldrb	r0, [r1, #0x0]
	strb	r5, [r1, #0x0]
	mov		r2, #0xcb
	lsl		r2, r2, #0x2
	add		r1, r7, r2
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	mov		r0, #0xcc
	lsl		r0, r0, #0x2
	add		r1, r7, r0
	sub		r2, #0x8
	add		r0, r7, r2
	str		r0, [r1, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r1, r7, r0
	sub		r0, #0xd4
	strh	r0, [r1, #0x0]
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r7, r2
	add		r0, r7, #0x0
	add		r0, #0xd4
	str		r0, [r1, #0x0]
	mov		r0, #0x1
	strh	r0, [r6, #0x0]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0807272c:	.4byte InterruptMasterEnableRegister
_08072730:	.4byte Timer3Counter_Reload
_08072734:	.4byte SIOModeSelect_GeneralPurposeData
_08072738:	.4byte SIOControlRegister
_0807273c:	.4byte 0x00004001
_08072740:	.4byte InterruptRequestFlags_IRQAcknowledge
_08072744:	.4byte InterruptEnableRegister
_08072748:	.4byte 0x03006E20
	thumb_func_end sub_0807265c

	thumb_func_start sub_0807274c
sub_0807274c:
	push	{ r4, lr }
	ldr		r3, _08072774
	mov		r0, #0xcb
	lsl		r0, r0, #0x2
	add		r2, r3, r0
	mov		r0, #0x4
	strh	r0, [r2, #0x0]
	mov		r4, #0xcc
	lsl		r4, r4, #0x2
	add		r1, r3, r4
	sub		r4, #0xc
	add		r0, r3, r4
	str		r0, [r1, #0x0]
	mov		r1, #0xcd
	lsl		r1, r1, #0x2
	add		r0, r3, r1
	str		r2, [r0, #0x0]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08072774:	.4byte 0x03006E20
	thumb_func_end sub_0807274c

	thumb_func_start sub_08072778
sub_08072778:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r0, _080727e4
	ldrb	r1, [r0, #0x6]
	add		r3, r0, #0x0
	cmp		r1, #0x88
	bne		_08072788
	add		r4, #0x5
_08072788:
	ldrb	r0, [r3, #0x10]
	strb	r4, [r3, #0x10]
	ldr		r0, _080727e8
	lsl		r1, r4, #0x1
	add		r0, r1, r0
	ldrh	r0, [r0, #0x0]
	ldrh	r2, [r3, #0x8]
	strh	r0, [r3, #0x8]
	ldr		r0, _080727ec
	add		r1, r1, r0
	ldrh	r0, [r1, #0x0]
	ldrh	r1, [r3, #0xa]
	strh	r0, [r3, #0xa]
	ldr		r0, _080727f0
	lsl		r1, r4, #0x2
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x14]
	ldr		r0, _080727f4
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x18]
	ldr		r0, _080727f8
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x24]
	ldr		r0, _080727fc
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x28]
	ldr		r0, _08072800
	add		r0, r1, r0
	ldr		r4, [r0, #0x0]
	str		r4, [r3, #0x2c]
	ldr		r0, _08072804
	add		r0, r1, r0
	ldr		r2, [r0, #0x0]
	str		r2, [r3, #0x30]
	ldrb	r0, [r3, #0x6]
	cmp		r0, #0x89
	beq		_0807280e
	cmp		r0, #0x89
	bgt		_08072808
	cmp		r0, #0x88
	beq		_08072828
	b		_08072848

_080727e4:	.4byte 0x03006E20
_080727e8:	.4byte 0x0820b97c
_080727ec:	.4byte 0x0820baf8
_080727f0:	.4byte 0x0820b990
_080727f4:	.4byte 0x0820bb0c
_080727f8:	.4byte 0x0820b9b8
_080727fc:	.4byte 0x0820bb34
_08072800:	.4byte 0x0820ba80
_08072804:	.4byte 0x0820bbfc

_08072808:
	cmp		r0, #0x8b
	beq		_0807282e
	b		_08072848
_0807280e:
	ldr		r0, _08072820
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x34]
	ldr		r0, _08072824
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	b		_0807284c

.incbin "base.gba", 0x7281E, 0x2

_08072820:	.4byte 0x0820baa8
_08072824:	.4byte 0x0820bc24

_08072828:
	str		r4, [r3, #0x34]
	str		r2, [r3, #0x38]
	b		_0807284e
_0807282e:
	ldr		r0, _08072840
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	str		r0, [r3, #0x34]
	ldr		r0, _08072844
	add		r0, r1, r0
	ldr		r0, [r0, #0x0]
	b		_0807284c

.incbin "base.gba", 0x7283E, 0x2

_08072840:	.4byte 0x0820bad0
_08072844:	.4byte 0x0820bc4c

_08072848:
	mov		r0, #0x0
	str		r0, [r3, #0x34]
_0807284c:
	str		r0, [r3, #0x38]
_0807284e:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08072778

	thumb_func_start sub_08072854
sub_08072854:
	ldr		r3, _0807287c
	ldr		r2, _08072880
	lsl		r0, r0, #0x2
	add		r2, r0, r2
	ldrb	r1, [r3, #0x10]
	ldr		r2, [r2, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r2
	ldr		r1, [r1, #0x0]
	str		r1, [r3, #0x1c]
	ldr		r1, _08072884
	add		r0, r0, r1
	ldrb	r1, [r3, #0x10]
	ldr		r0, [r0, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	str		r0, [r3, #0x20]
	bx		lr

.incbin "base.gba", 0x7287A, 0x2

_0807287c:	.4byte 0x03006E20
_08072880:	.4byte 0x0820bca4
_08072884:	.4byte 0x0820bcb4

.incbin "base.gba", 0x72888, 0x18
	thumb_func_end sub_08072854

	thumb_func_start sub_080728a0
sub_080728a0:
	ldr		r0, _080728a8
	ldrh	r0, [r0, #0x2]
	bx		lr

.incbin "base.gba", 0x728A6, 0x2

_080728a8:	.4byte 0x03006E20

.incbin "base.gba", 0x728AC, 0x18
	thumb_func_end sub_080728a0

	thumb_func_start sub_080728c4
sub_080728c4:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r6, r0, #0x0
	cmp		r6, #0x10
	bne		_0807295e
	ldr		r5, _080729c0
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _080729c4
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _080729c8
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _080729cc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _080729d0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _080729d4
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
_0807295e:
	ldr		r4, _080729c0
	ldrb	r0, [r4, #0x0]
	mov		r2, #0x0
	strb	r6, [r4, #0x0]
	ldrb	r0, [r4, #0x4]
	strb	r2, [r4, #0x4]
	mov		r1, #0xf4
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	mov		r3, #0x0
	strh	r2, [r0, #0x0]
	mov		r1, #0xfc
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	strh	r2, [r0, #0x0]
	ldrh	r0, [r4, #0x2]
	mov		r1, #0x2
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	orr		r0, r3
	strh	r0, [r4, #0x2]
	ldrh	r1, [r4, #0x2]
	ldr		r0, _080729d8
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	add		r1, r4, #0x0
	add		r1, #0x61
	ldrb	r0, [r1, #0x0]
	strb	r3, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	ldr		r0, _080729dc
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	ldrh	r1, [r4, #0x2]
	ldr		r0, _080729e0
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	mov		r1, #0xce
	lsl		r1, r1, #0x2
	add		r0, r4, r1
	str		r2, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_080729c0:	.4byte 0x03006E20
_080729c4:	.4byte 0xfffffdff
_080729c8:	.4byte 0xfffffbff
_080729cc:	.4byte 0xffffdfff
_080729d0:	.4byte 0x0000FFF7
_080729d4:	.4byte 0x0000FFEF
_080729d8:	.4byte 0x0000FFDF
_080729dc:	.4byte 0x0000FFFE
_080729e0:	.4byte 0x0000FFFB
	thumb_func_end sub_080728c4

	thumb_func_start sub_080729e4
sub_080729e4:
	push	{ r4, lr }
	ldr		r3, _08072a40
	ldrh	r1, [r3, #0x2]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08072a4c
	ldrh	r1, [r3, #0x2]
	mov		r0, #0x2
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	cmp		r4, #0x0
	bne		_08072a4c
	ldrh	r1, [r3, #0x2]
	ldr		r0, _08072a44
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrb	r0, [r3, #0x0]
	mov		r0, #0xff
	strb	r0, [r3, #0x0]
	ldrh	r1, [r3, #0x2]
	ldr		r0, _08072a48
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0xe]
	strh	r4, [r3, #0xe]
	ldr		r0, [r3, #0x40]
	mov		r1, #0x9
	neg		r1, r1
	and		r0, r1
	str		r0, [r3, #0x40]
	str		r4, [r3, #0x3c]
	add		r0, r3, #0x0
	add		r0, #0x44
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	mov		r0, #0x1
	b		_08072a54

.incbin "base.gba", 0x72A3E, 0x2

_08072a40:	.4byte 0x03006E20
_08072a44:	.4byte 0x0000FFFD
_08072a48:	.4byte 0x0000FFBF

_08072a4c:
	mov		r0, #0x21
	bl		sub_080728c4
	mov		r0, #0x0
_08072a54:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x72A5A, 0x2
	thumb_func_end sub_080729e4

	thumb_func_start sub_08072a5c
sub_08072a5c:
	push	{ r4, lr }
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	lsl		r3, r3, #0x10
	lsr		r3, r3, #0x10
	ldrh	r4, [r0, #0x0]
	mov		r4, #0x0
	strh	r3, [r0, #0x0]
	str		r1, [r0, #0x8]
	str		r1, [r0, #0xc]
	ldrh	r1, [r0, #0x2]
	strh	r2, [r0, #0x2]
	ldrh	r1, [r0, #0x4]
	strh	r4, [r0, #0x4]
	ldrh	r1, [r0, #0x6]
	strh	r4, [r0, #0x6]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x72A82, 0x2
	thumb_func_end sub_08072a5c

	thumb_func_start sub_08072a84
sub_08072a84:
	push	{ r4, r5, lr }
	ldr		r1, _08072ae8
	mov		r2, #0xce
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	ldr		r0, [r0, #0x0]
	mov		r12, r1
	cmp		r0, #0x0
	beq		_08072b38
	ldr		r2, _08072aec
	ldrh	r1, [r2, #0x0]
	mov		r0, #0x80
	and		r0, r1
	cmp		r0, #0x0
	beq		_08072aae
	mov		r3, #0x80
_08072aa4:
	ldrh	r1, [r2, #0x0]
	add		r0, r3, #0x0
	and		r0, r1
	cmp		r0, #0x0
	bne		_08072aa4
_08072aae:
	mov		r1, r12
	ldrb	r0, [r1, #0x5]
	cmp		r0, #0x1
	bne		_08072af8
	ldr		r5, _08072af0
	mov		r4, #0xce
	lsl		r4, r4, #0x2
	add		r4, r12
	ldr		r3, [r4, #0x0]
	ldr		r2, [r3, #0x8]
	ldrb	r0, [r2, #0x3]
	ldrb	r1, [r2, #0x2]
	lsl		r1, r1, #0x8
	orr		r1, r0
	ldrb	r0, [r2, #0x1]
	lsl		r0, r0, #0x10
	orr		r1, r0
	ldrb	r0, [r2, #0x0]
	lsl		r0, r0, #0x18
	orr		r1, r0
	str		r1, [r5, #0x0]
	ldr		r0, _08072af4
	str		r1, [r0, #0x0]
	add		r2, #0x4
	str		r2, [r3, #0x8]
	ldr		r1, [r4, #0x0]
	ldrh	r0, [r1, #0x4]
	add		r0, #0x4
	b		_08072b14

_08072ae8:	.4byte 0x03006E20
_08072aec:	.4byte SIOControlRegister
_08072af0:	.4byte 0x030023E0
_08072af4:	.4byte SIOData0_Parent__Multi_PlayerMode_

_08072af8:
	ldr		r2, _08072b40
	mov		r3, #0xce
	lsl		r3, r3, #0x2
	add		r3, r12
	ldr		r1, [r3, #0x0]
	ldr		r0, [r1, #0x8]
	ldrb	r0, [r0, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x8]
	add		r0, #0x1
	str		r0, [r1, #0x8]
	ldr		r1, [r3, #0x0]
	ldrh	r0, [r1, #0x4]
	add		r0, #0x1
_08072b14:
	ldrh	r2, [r1, #0x4]
	strh	r0, [r1, #0x4]
	mov		r1, #0xce
	lsl		r1, r1, #0x2
	add		r1, r12
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	mov		r2, r12
	ldr		r0, [r2, #0x40]
	mov		r1, #0x3
	neg		r1, r1
	and		r0, r1
	str		r0, [r2, #0x40]
	ldr		r2, _08072b44
	ldrh	r0, [r2, #0x0]
	mov		r1, #0x80
	orr		r0, r1
	strh	r0, [r2, #0x0]
_08072b38:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x72B3E, 0x2

_08072b40:	.4byte SIOData_Normal_8bitandUARTMode
_08072b44:	.4byte SIOControlRegister
	thumb_func_end sub_08072a84

	thumb_func_start sub_08072b48
sub_08072b48:
	ldr		r1, _08072b54
	mov		r2, #0xce
	lsl		r2, r2, #0x2
	add		r1, r1, r2
	str		r0, [r1, #0x0]
	bx		lr

_08072b54:	.4byte 0x03006E20
	thumb_func_end sub_08072b48

	thumb_func_start sub_08072b58
sub_08072b58:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, _08072b70
	ldrb	r2, [r1, #0x5]
	strb	r0, [r1, #0x5]
	cmp		r0, #0x0
	bne		_08072b7c
	ldr		r2, _08072b74
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08072b78
	and		r0, r1
	b		_08072b90

_08072b70:	.4byte 0x03006E20
_08072b74:	.4byte SIOControlRegister
_08072b78:	.4byte 0x0000CFFF

_08072b7c:
	ldr		r2, _08072b94
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08072b98
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldrh	r0, [r2, #0x0]
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r1, r3, #0x0
	orr		r0, r1
_08072b90:
	strh	r0, [r2, #0x0]
	bx		lr

_08072b94:	.4byte SIOControlRegister
_08072b98:	.4byte 0x0000CFFF

.incbin "base.gba", 0x72B9C, 0x18
	thumb_func_end sub_08072b58

	thumb_func_start sub_08072bb4
sub_08072bb4:
	lsl		r0, r0, #0x18
	mov		r1, #0xf0
	lsl		r1, r1, #0x18
	and		r1, r0
	lsr		r1, r1, #0x18
	cmp		r1, #0x80
	beq		_08072bc6
	mov		r0, #0x0
	b		_08072bc8
_08072bc6:
	mov		r0, #0x1
_08072bc8:
	bx		lr

.incbin "base.gba", 0x72BCA, 0x2
	thumb_func_end sub_08072bb4

	thumb_func_start sub_08072bcc
sub_08072bcc:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r1, r0, #0x0
	cmp		r0, #0x88
	bne		_08072bda
	mov		r0, #0x0
	b		_08072bf4
_08072bda:
	cmp		r0, #0x89
	bne		_08072be2
	mov		r0, #0x2
	b		_08072bf4
_08072be2:
	add		r0, r1, #0x0
	add		r0, #0x76
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bls		_08072bf2
	mov		r0, #0x3
	b		_08072bf4
_08072bf2:
	mov		r0, #0x1
_08072bf4:
	bx		lr

.incbin "base.gba", 0x72BF6, 0x92
	thumb_func_end sub_08072bcc

	thumb_func_start sub_08072c88
sub_08072c88:
	push	{ r4, r5, lr }
	ldr		r5, _08072cf8
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08072cf0
	bl		sub_0807274c
	ldr		r4, _08072cfc
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	add		r1, r4, #0x0
	add		r1, #0x44
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x10
	strb	r0, [r1, #0x0]
	mov		r1, #0xf4
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r1, _08072d00
	mov		r2, #0x1
	mov		r3, #0x1
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r4, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
	ldrh	r1, [r4, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r5, #0x0]
_08072cf0:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x72CF6, 0x2

_08072cf8:	.4byte Timer3Counter_Reload
_08072cfc:	.4byte 0x03006E20
_08072d00:	.4byte 0x0820bc74
	thumb_func_end sub_08072c88

	thumb_func_start sub_08072d04
sub_08072d04:
	push	{ r4, lr }
	ldr		r1, _08072d54
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r4, _08072d58
	ldrh	r1, [r4, #0x2]
	ldr		r0, _08072d5c
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08072d9a
	bl		sub_0807274c
	ldrh	r0, [r4, #0x2]
	mov		r1, #0x20
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	mov		r1, #0x0
	orr		r0, r1
	strh	r0, [r4, #0x2]
	add		r1, r4, #0x0
	add		r1, #0x44
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x10
	strb	r0, [r1, #0x0]
	ldrb	r0, [r4, #0x5]
	cmp		r0, #0x0
	bne		_08072d64
	mov		r1, #0xf4
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r1, _08072d60
	mov		r2, #0x12
	mov		r3, #0x3
	bl		sub_08072a5c
	b		_08072d74

_08072d54:	.4byte Timer3Counter_Reload
_08072d58:	.4byte 0x03006E20
_08072d5c:	.4byte 0x0000FFDF
_08072d60:	.4byte 0x0820bc78

_08072d64:
	mov		r1, #0xf4
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r1, _08072da0
	mov		r2, #0x14
	mov		r3, #0x3
	bl		sub_08072a5c
_08072d74:
	ldr		r4, _08072da4
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r4, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x0
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08072d9a:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08072da0:	.4byte 0x0820bc78
_08072da4:	.4byte 0x03006E20
	thumb_func_end sub_08072d04

	thumb_func_start sub_08072da8
sub_08072da8:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08072e1c
	ldr		r5, _08072e20
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08072e14
	bl		sub_0807274c
	ldr		r4, _08072e24
	ldr		r0, [r6, #0x0]
	mov		r1, #0x11
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08072e28
	add		r4, r5, r0
	ldr		r2, _08072e2c
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x11
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08072e30
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08072e14:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x72E1A, 0x2

_08072e1c:	.4byte 0x03002424
_08072e20:	.4byte 0x03007038
_08072e24:	.4byte 0x0300242C
_08072e28:	.4byte 0xFFFFFDE8
_08072e2c:	.4byte 0xFFFFFE2C
_08072e30:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08072da8

	thumb_func_start sub_08072e34
sub_08072e34:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r1, #0x0
	lsl		r0, r0, #0x18
	lsr		r7, r0, #0x18
	ldr		r6, _08072ee4
	ldr		r5, _08072ee8
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08072ede
	bl		sub_0807274c
	ldr		r0, _08072eec
	add		r1, r5, r0
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r2, _08072ef0
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x12
	strb	r0, [r1, #0x0]
	ldr		r0, [r6, #0x0]
	strb	r7, [r0, #0x6]
	ldr		r1, _08072ef4
	str		r3, [r1, #0x0]
	ldrb	r2, [r4, #0x0]
	cmp		r2, #0x0
	beq		_08072e8e
	add		r5, r6, #0x0
	add		r3, r1, #0x0
_08072e7a:
	ldr		r0, [r5, #0x0]
	ldr		r1, [r3, #0x0]
	add		r1, #0x1
	add		r0, r0, r1
	strb	r2, [r0, #0x6]
	add		r4, #0x1
	str		r1, [r3, #0x0]
	ldrb	r2, [r4, #0x0]
	cmp		r2, #0x0
	bne		_08072e7a
_08072e8e:
	ldr		r4, _08072ef8
	ldr		r0, _08072ee4
	ldr		r0, [r0, #0x0]
	ldr		r1, _08072ef4
	ldr		r2, [r1, #0x0]
	add		r2, #0x1
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r1, #0x12
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	ldr		r5, _08072efc
	add		r1, r5, #0x0
	add		r1, #0x30
	ldrh	r2, [r4, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08072f00
	add		r4, r5, r0
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08072f04
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x3
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08072ede:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08072ee4:	.4byte 0x03002424
_08072ee8:	.4byte 0x03007038
_08072eec:	.4byte 0xFFFFFDE8
_08072ef0:	.4byte 0xFFFFFE2C
_08072ef4:	.4byte 0x030023E4
_08072ef8:	.4byte 0x0300242C
_08072efc:	.4byte 0x03007008
_08072f00:	.4byte 0xFFFFFE18
_08072f04:	.4byte 0xFFFFFE20
	thumb_func_end sub_08072e34

	thumb_func_start sub_08072f08
sub_08072f08:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08072f7c
	ldr		r5, _08072f80
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08072f74
	bl		sub_0807274c
	ldr		r4, _08072f84
	ldr		r0, [r6, #0x0]
	mov		r1, #0x13
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08072f88
	add		r4, r5, r0
	ldr		r2, _08072f8c
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x13
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08072f90
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08072f74:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x72F7A, 0x2

_08072f7c:	.4byte 0x03002424
_08072f80:	.4byte 0x03007038
_08072f84:	.4byte 0x0300242C
_08072f88:	.4byte 0xFFFFFDE8
_08072f8c:	.4byte 0xFFFFFE2C
_08072f90:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08072f08

	thumb_func_start sub_08072f94
sub_08072f94:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08073008
	ldr		r5, _0807300c
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08073000
	bl		sub_0807274c
	ldr		r4, _08073010
	ldr		r0, [r6, #0x0]
	mov		r1, #0x14
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08073014
	add		r4, r5, r0
	ldr		r2, _08073018
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x14
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _0807301c
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073000:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73006, 0x2

_08073008:	.4byte 0x03002424
_0807300c:	.4byte 0x03007038
_08073010:	.4byte 0x0300242C
_08073014:	.4byte 0xFFFFFDE8
_08073018:	.4byte 0xFFFFFE2C
_0807301c:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08072f94

	thumb_func_start sub_08073020
sub_08073020:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r8, r0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r7, r2, #0x18
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	mov		r9, r3
	ldr		r4, _080730e8
	ldr		r5, _080730ec
	str		r5, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080730dc
	ldr		r0, _080730f0
	add		r1, r5, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	mov		r2, r8
	str		r2, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _080730f4
	add		r1, r5, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x15
	strb	r0, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	mov		r1, r9
	strb	r1, [r0, #0x6]
	ldr		r0, _080730f8
	str		r3, [r0, #0x0]
	ldr		r2, _080730fc
	mov		r8, r2
	add		r2, r7, #0x1
	cmp		r3, r7
	bge		_08073096
	add		r5, r4, #0x0
	add		r3, r0, #0x0
_08073080:
	ldr		r1, [r5, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, r0, r1
	ldrb	r1, [r6, #0x0]
	strb	r1, [r0, #0x7]
	add		r6, #0x1
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, r7
	blt		_08073080
_08073096:
	ldr		r0, [r4, #0x0]
	mov		r1, #0x15
	bl		sub_08073c7c
	mov		r1, r8
	strh	r0, [r1, #0x0]
	ldr		r5, _08073100
	add		r1, r5, #0x0
	add		r1, #0x30
	mov		r0, r8
	ldrh	r2, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r1, _08073104
	add		r4, r5, r1
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073108
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_080730dc:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080730e8:	.4byte 0x03002424
_080730ec:	.4byte 0x03007038
_080730f0:	.4byte 0xFFFFFDE8
_080730f4:	.4byte 0xFFFFFE2C
_080730f8:	.4byte 0x03002430
_080730fc:	.4byte 0x0300242C
_08073100:	.4byte 0x03007008
_08073104:	.4byte 0xFFFFFE18
_08073108:	.4byte 0xFFFFFE20
	thumb_func_end sub_08073020

	thumb_func_start sub_0807310c
sub_0807310c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	add		r6, r1, #0x0
	lsl		r2, r2, #0x18
	lsr		r7, r2, #0x18
	ldr		r4, _080731cc
	ldr		r5, _080731d0
	str		r5, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080731c2
	ldr		r0, _080731d4
	add		r1, r5, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	mov		r2, r8
	str		r2, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _080731d8
	add		r1, r5, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x15
	strb	r0, [r1, #0x0]
	ldr		r1, [r4, #0x0]
	mov		r0, #0xff
	strb	r0, [r1, #0x6]
	ldr		r0, [r4, #0x0]
	strb	r7, [r0, #0x7]
	ldr		r0, _080731dc
	str		r3, [r0, #0x0]
	ldr		r1, _080731e0
	mov		r8, r1
	add		r2, r7, #0x2
	cmp		r3, r7
	bge		_0807317e
	add		r5, r4, #0x0
	add		r3, r0, #0x0
_08073168:
	ldr		r1, [r5, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, r0, r1
	ldrb	r1, [r6, #0x0]
	strb	r1, [r0, #0x8]
	add		r6, #0x1
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, r7
	blt		_08073168
_0807317e:
	ldr		r0, [r4, #0x0]
	mov		r1, #0x15
	bl		sub_08073c7c
	mov		r2, r8
	strh	r0, [r2, #0x0]
	ldr		r5, _080731e4
	add		r1, r5, #0x0
	add		r1, #0x30
	ldrh	r2, [r2, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _080731e8
	add		r4, r5, r0
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _080731ec
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_080731c2:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080731cc:	.4byte 0x03002424
_080731d0:	.4byte 0x03007038
_080731d4:	.4byte 0xFFFFFDE8
_080731d8:	.4byte 0xFFFFFE2C
_080731dc:	.4byte 0x03002430
_080731e0:	.4byte 0x0300242C
_080731e4:	.4byte 0x03007008
_080731e8:	.4byte 0xFFFFFE18
_080731ec:	.4byte 0xFFFFFE20
	thumb_func_end sub_0807310c

	thumb_func_start sub_080731f0
sub_080731f0:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08073264
	ldr		r5, _08073268
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_0807325c
	bl		sub_0807274c
	ldr		r4, _0807326c
	ldr		r0, [r6, #0x0]
	mov		r1, #0x16
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08073270
	add		r4, r5, r0
	ldr		r2, _08073274
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x16
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073278
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_0807325c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73262, 0x2

_08073264:	.4byte 0x03002424
_08073268:	.4byte 0x03007038
_0807326c:	.4byte 0x0300242C
_08073270:	.4byte 0xFFFFFDE8
_08073274:	.4byte 0xFFFFFE2C
_08073278:	.4byte 0xFFFFFDF0
	thumb_func_end sub_080731f0

	thumb_func_start sub_0807327c
sub_0807327c:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r7, _080732f4
	ldr		r6, _080732f8
	str		r6, [r7, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080732ee
	ldr		r0, _080732fc
	add		r4, r6, r0
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	str		r5, [r0, #0x0]
	ldr		r5, _08073300
	ldr		r0, [r7, #0x0]
	mov		r1, #0x17
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r5, #0x0]
	add		r0, r6, #0x0
	sub		r0, #0x30
	ldrh	r2, [r5, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r2, _08073304
	add		r1, r6, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x17
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073308
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
	mov		r0, #0x2
	bl		sub_08072854
_080732ee:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080732f4:	.4byte 0x03002424
_080732f8:	.4byte 0x03007038
_080732fc:	.4byte 0xFFFFFDE8
_08073300:	.4byte 0x0300242C
_08073304:	.4byte 0xFFFFFE2C
_08073308:	.4byte 0xFFFFFDF0
	thumb_func_end sub_0807327c

	thumb_func_start sub_0807330c
sub_0807330c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r1, r0, #0x0
	ldr		r0, _080733a0
	ldr		r6, _080733a4
	str		r6, [r0, #0x0]
	ldr		r0, _080733a8
	add		r5, r6, r0
	ldr		r0, [r5, #0x40]
	mov		r7, #0x1
	and		r0, r7
	cmp		r0, #0x0
	beq		_08073396
	ldr		r0, [r5, #0x40]
	mov		r2, #0x4
	mov		r8, r2
	and		r0, r2
	cmp		r0, #0x0
	bne		_08073396
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r1, [r0, #0x0]
	ldr		r4, _080733ac
	add		r0, r6, #0x0
	mov		r1, #0x17
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r6, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _080733b0
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x17
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r5, #0x2]
	orr		r0, r1
	strh	r0, [r5, #0x2]
	ldrb	r0, [r5, #0x4]
	strb	r7, [r5, #0x4]
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _080733b4
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	strh	r0, [r5, #0xc]
	mov		r0, #0x1
	bl		sub_08072854
	ldr		r0, [r5, #0x40]
	mov		r1, r8
	orr		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r5, #0x40]
_08073396:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080733a0:	.4byte 0x03002424
_080733a4:	.4byte 0x03007038
_080733a8:	.4byte 0xFFFFFDE8
_080733ac:	.4byte 0x0300242C
_080733b0:	.4byte 0xFFFFFE2C
_080733b4:	.4byte 0xFFFFFDF0
	thumb_func_end sub_0807330c

	thumb_func_start sub_080733b8
sub_080733b8:
	push	{ r4, r5, r6, r7, lr }
	lsl		r0, r0, #0x18
	lsr		r5, r0, #0x18
	ldr		r6, _08073434
	ldr		r7, _08073438
	str		r7, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_0807342c
	bl		sub_0807274c
	ldr		r0, _0807343c
	add		r4, r7, r0
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldr		r2, _08073440
	add		r1, r7, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x18
	strb	r0, [r1, #0x0]
	ldr		r0, [r6, #0x0]
	strb	r5, [r0, #0x6]
	ldr		r5, _08073444
	ldr		r0, [r6, #0x0]
	mov		r1, #0x18
	mov		r2, #0x1
	bl		sub_08073c7c
	strh	r0, [r5, #0x0]
	add		r0, r7, #0x0
	sub		r0, #0x30
	ldrh	r2, [r5, #0x0]
	add		r1, r7, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073448
	add		r1, r7, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_0807342c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73432, 0x2

_08073434:	.4byte 0x03002424
_08073438:	.4byte 0x03007038
_0807343c:	.4byte 0xFFFFFDE8
_08073440:	.4byte 0xFFFFFE2C
_08073444:	.4byte 0x0300242C
_08073448:	.4byte 0xFFFFFDF0
	thumb_func_end sub_080733b8

	thumb_func_start sub_0807344c
sub_0807344c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r8, r1
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	mov		r9, r2
	ldr		r7, _080734e8
	ldr		r6, _080734ec
	str		r6, [r7, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080734dc
	ldr		r0, _080734f0
	add		r4, r6, r0
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	str		r5, [r0, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldr		r2, _080734f4
	add		r1, r6, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x19
	strb	r0, [r1, #0x0]
	ldr		r0, [r7, #0x0]
	mov		r1, r8
	strb	r1, [r0, #0x6]
	ldr		r0, [r7, #0x0]
	mov		r2, r9
	strb	r2, [r0, #0x7]
	ldr		r5, _080734f8
	ldr		r0, [r7, #0x0]
	mov		r1, #0x19
	mov		r2, #0x2
	bl		sub_08073c7c
	strh	r0, [r5, #0x0]
	add		r0, r6, #0x0
	sub		r0, #0x30
	ldrh	r2, [r5, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _080734fc
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_080734dc:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080734e8:	.4byte 0x03002424
_080734ec:	.4byte 0x03007038
_080734f0:	.4byte 0xFFFFFDE8
_080734f4:	.4byte 0xFFFFFE2C
_080734f8:	.4byte 0x0300242C
_080734fc:	.4byte 0xFFFFFDF0
	thumb_func_end sub_0807344c

	thumb_func_start sub_08073500
sub_08073500:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r8, r0
	add		r5, r2, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r9, r1
	lsl		r3, r3, #0x18
	lsr		r7, r3, #0x18
	ldr		r4, _080735c8
	ldr		r6, _080735cc
	str		r6, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080735bc
	ldr		r0, _080735d0
	add		r1, r6, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r2, r8
	str		r2, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _080735d4
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x1a
	strb	r0, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	mov		r1, r9
	strb	r1, [r0, #0x6]
	ldr		r0, _080735d8
	str		r3, [r0, #0x0]
	ldr		r2, _080735dc
	mov		r8, r2
	add		r2, r7, #0x1
	cmp		r3, r7
	bge		_08073576
	add		r6, r4, #0x0
	add		r3, r0, #0x0
_08073560:
	ldr		r1, [r6, #0x0]
	ldr		r0, [r3, #0x0]
	add		r0, r0, r1
	ldrb	r1, [r5, #0x0]
	strb	r1, [r0, #0x7]
	add		r5, #0x1
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, r7
	blt		_08073560
_08073576:
	ldr		r0, [r4, #0x0]
	mov		r1, #0x1a
	bl		sub_08073c7c
	mov		r1, r8
	strh	r0, [r1, #0x0]
	ldr		r5, _080735e0
	add		r1, r5, #0x0
	add		r1, #0x30
	mov		r0, r8
	ldrh	r2, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r1, _080735e4
	add		r4, r5, r1
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _080735e8
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_080735bc:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080735c8:	.4byte 0x03002424
_080735cc:	.4byte 0x03007038
_080735d0:	.4byte 0xFFFFFDE8
_080735d4:	.4byte 0xFFFFFE2C
_080735d8:	.4byte 0x03002430
_080735dc:	.4byte 0x0300242C
_080735e0:	.4byte 0x03007008
_080735e4:	.4byte 0xFFFFFE18
_080735e8:	.4byte 0xFFFFFE20
	thumb_func_end sub_08073500

	thumb_func_start sub_080735ec
sub_080735ec:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r10, r0
	add		r4, r1, #0x0
	add		r6, r2, #0x0
	add		r7, r3, #0x0
	ldr		r0, [sp, #0x0+0x20]
	mov		r8, r0
	ldr		r0, _08073750
	ldr		r5, _08073754
	str		r5, [r0, #0x0]
	ldr		r1, _08073758
	mov		r9, r1
	add		r0, r5, #0x6
	str		r0, [r1, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	bne		_0807361a
	b		_08073742
_0807361a:
	ldr		r2, _0807375c
	add		r1, r5, r2
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _08073760
	add		r1, r5, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x21
	strb	r0, [r1, #0x0]
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r2, r10
	str		r2, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c054
	ldr		r5, _08073764
	str		r0, [r5, #0x0]
	add		r0, r6, #0x0
	bl		sub_0807c054
	ldr		r1, _08073768
	str		r0, [r1, #0x0]
	ldr		r2, _0807376c
	ldr		r1, [r5, #0x0]
	add		r0, r1, r0
	add		r0, #0xa
	str		r0, [r2, #0x0]
	mov		r2, r9
	ldr		r0, [r2, #0x0]
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08073684
	mov		r3, r9
	add		r2, r5, #0x0
_0807366e:
	ldr		r1, [r3, #0x0]
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0807366e
_08073684:
	ldr		r3, _08073758
	ldr		r0, [r3, #0x0]
	ldr		r2, _08073768
	ldr		r1, [r2, #0x0]
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	ldr		r5, _08073750
	ldr		r4, _0807376c
	mov		r10, r4
	ldr		r4, _08073770
	ldr		r1, _08073774
	mov		r9, r1
	cmp		r0, #0x0
	beq		_080736ba
_080736a4:
	ldr		r1, [r3, #0x0]
	ldrb	r0, [r6, #0x0]
	strb	r0, [r1, #0x0]
	add		r6, #0x1
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_080736a4
_080736ba:
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	ldr		r3, _08073758
	add		r2, r4, #0x0
_080736c2:
	ldr		r1, [r3, #0x0]
	ldrb	r0, [r7, #0x0]
	strb	r0, [r1, #0x0]
	add		r7, #0x1
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x3
	ble		_080736c2
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	ldr		r3, _08073758
	add		r2, r4, #0x0
_080736e0:
	ldr		r1, [r3, #0x0]
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	mov		r0, #0x1
	add		r8, r0
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x3
	ble		_080736e0
	ldr		r0, [r5, #0x0]
	mov		r1, r10
	ldrh	r2, [r1, #0x0]
	mov		r1, #0x21
	bl		sub_08073c7c
	mov		r2, r9
	strh	r0, [r2, #0x0]
	ldr		r5, _08073778
	add		r1, r5, #0x0
	add		r1, #0x30
	ldrh	r2, [r2, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _0807377c
	add		r4, r5, r0
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073780
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073742:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08073750:	.4byte 0x03002424
_08073754:	.4byte 0x03007038
_08073758:	.4byte 0x030023E8
_0807375c:	.4byte 0xFFFFFDE8
_08073760:	.4byte 0xFFFFFE2C
_08073764:	.4byte 0x030023F0
_08073768:	.4byte 0x030023F4
_0807376c:	.4byte 0x030023EC
_08073770:	.4byte 0x03002430
_08073774:	.4byte 0x0300242C
_08073778:	.4byte 0x03007008
_0807377c:	.4byte 0xFFFFFE18
_08073780:	.4byte 0xFFFFFE20
	thumb_func_end sub_080735ec

	thumb_func_start sub_08073784
sub_08073784:
	push	{ r4, r5, r6, lr }
	ldr		r6, _080737f8
	ldr		r5, _080737fc
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080737f0
	bl		sub_0807274c
	ldr		r4, _08073800
	ldr		r0, [r6, #0x0]
	mov		r1, #0x22
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08073804
	add		r4, r5, r0
	ldr		r2, _08073808
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x22
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _0807380c
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_080737f0:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x737F6, 0x2

_080737f8:	.4byte 0x03002424
_080737fc:	.4byte 0x03007038
_08073800:	.4byte 0x0300242C
_08073804:	.4byte 0xFFFFFDE8
_08073808:	.4byte 0xFFFFFE2C
_0807380c:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08073784

	thumb_func_start sub_08073810
sub_08073810:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, sp
	strh	r2, [r0, #0x0]
	ldr		r4, _080738d0
	ldr		r6, _080738d4
	str		r6, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_080738c8
	ldr		r0, _080738d8
	add		r1, r6, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r7, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _080738dc
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x23
	strb	r0, [r1, #0x0]
	ldr		r0, _080738e0
	str		r3, [r0, #0x0]
	ldr		r7, _080738e4
	add		r3, r4, #0x0
	add		r2, r0, #0x0
_08073856:
	ldr		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	add		r1, r1, r0
	ldrb	r0, [r5, #0x0]
	strb	r0, [r1, #0x6]
	add		r5, #0x1
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x3
	ble		_08073856
	ldr		r1, [r4, #0x0]
	mov		r0, sp
	ldrb	r0, [r0, #0x1]
	strb	r0, [r1, #0xa]
	ldr		r1, [r4, #0x0]
	mov		r0, sp
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0xb]
	ldr		r0, [r4, #0x0]
	mov		r1, #0x23
	mov		r2, #0x6
	bl		sub_08073c7c
	strh	r0, [r7, #0x0]
	ldr		r6, _080738e8
	add		r1, r6, #0x0
	add		r1, #0x30
	ldrh	r2, [r7, #0x0]
	add		r0, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r1, _080738ec
	add		r5, r6, r1
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x1
	strb	r0, [r5, #0x4]
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _080738f0
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r4, #0x0
	strh	r0, [r5, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r1, _080738f4
	add		r0, r6, r1
	strb	r4, [r0, #0x0]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r5, #0x40]
_080738c8:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080738d0:	.4byte 0x03002424
_080738d4:	.4byte 0x03007038
_080738d8:	.4byte 0xFFFFFDE8
_080738dc:	.4byte 0xFFFFFE2C
_080738e0:	.4byte 0x03002430
_080738e4:	.4byte 0x0300242C
_080738e8:	.4byte 0x03007008
_080738ec:	.4byte 0xFFFFFE18
_080738f0:	.4byte 0xFFFFFE20
_080738f4:	.4byte 0xFFFFFE6B
	thumb_func_end sub_08073810

	thumb_func_start sub_080738f8
sub_080738f8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r8, r1
	ldr		r7, _08073984
	ldr		r6, _08073988
	str		r6, [r7, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_0807397a
	ldr		r0, _0807398c
	add		r4, r6, r0
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	str		r5, [r0, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldr		r2, _08073990
	add		r1, r6, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x24
	strb	r0, [r1, #0x0]
	ldr		r0, [r7, #0x0]
	mov		r1, r8
	strb	r1, [r0, #0x6]
	ldr		r5, _08073994
	ldr		r0, [r7, #0x0]
	mov		r1, #0x24
	mov		r2, #0x1
	bl		sub_08073c7c
	strh	r0, [r5, #0x0]
	add		r0, r6, #0x0
	sub		r0, #0x30
	ldrh	r2, [r5, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073998
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_0807397a:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08073984:	.4byte 0x03002424
_08073988:	.4byte 0x03007038
_0807398c:	.4byte 0xFFFFFDE8
_08073990:	.4byte 0xFFFFFE2C
_08073994:	.4byte 0x0300242C
_08073998:	.4byte 0xFFFFFDF0
	thumb_func_end sub_080738f8

	thumb_func_start sub_0807399c
sub_0807399c:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	mov		r0, sp
	strh	r2, [r0, #0x0]
	ldr		r4, _08073a54
	ldr		r6, _08073a58
	str		r6, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08073a4c
	ldr		r0, _08073a5c
	add		r1, r6, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r7, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _08073a60
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x25
	strb	r0, [r1, #0x0]
	ldr		r0, _08073a64
	str		r3, [r0, #0x0]
	ldr		r6, _08073a68
	add		r3, r4, #0x0
	add		r2, r0, #0x0
_080739e2:
	ldr		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	add		r1, r1, r0
	ldrb	r0, [r5, #0x0]
	strb	r0, [r1, #0x6]
	add		r5, #0x1
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x3
	ble		_080739e2
	ldr		r1, [r4, #0x0]
	mov		r0, sp
	ldrb	r0, [r0, #0x1]
	strb	r0, [r1, #0xa]
	ldr		r1, [r4, #0x0]
	mov		r0, sp
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0xb]
	ldr		r0, [r4, #0x0]
	mov		r1, #0x25
	mov		r2, #0x6
	bl		sub_08073c7c
	strh	r0, [r6, #0x0]
	ldr		r5, _08073a6c
	add		r1, r5, #0x0
	add		r1, #0x30
	ldrh	r2, [r6, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r2, _08073a70
	add		r4, r5, r2
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	add		r2, #0x8
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073a4c:
	add		sp, #0x4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08073a54:	.4byte 0x03002424
_08073a58:	.4byte 0x03007038
_08073a5c:	.4byte 0xFFFFFDE8
_08073a60:	.4byte 0xFFFFFE2C
_08073a64:	.4byte 0x03002430
_08073a68:	.4byte 0x0300242C
_08073a6c:	.4byte 0x03007008
_08073a70:	.4byte 0xFFFFFE18
	thumb_func_end sub_0807399c

	thumb_func_start sub_08073a74
sub_08073a74:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	mov		r8, r1
	ldr		r7, _08073b00
	ldr		r6, _08073b04
	str		r6, [r7, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08073af6
	ldr		r0, _08073b08
	add		r4, r6, r0
	mov		r1, #0x8e
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	str		r5, [r0, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldr		r2, _08073b0c
	add		r1, r6, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x26
	strb	r0, [r1, #0x0]
	ldr		r0, [r7, #0x0]
	mov		r1, r8
	strb	r1, [r0, #0x6]
	ldr		r5, _08073b10
	ldr		r0, [r7, #0x0]
	mov		r1, #0x26
	mov		r2, #0x1
	bl		sub_08073c7c
	strh	r0, [r5, #0x0]
	add		r0, r6, #0x0
	sub		r0, #0x30
	ldrh	r2, [r5, #0x0]
	add		r1, r6, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073b14
	add		r1, r6, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073af6:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08073b00:	.4byte 0x03002424
_08073b04:	.4byte 0x03007038
_08073b08:	.4byte 0xFFFFFDE8
_08073b0c:	.4byte 0xFFFFFE2C
_08073b10:	.4byte 0x0300242C
_08073b14:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08073a74

	thumb_func_start sub_08073b18
sub_08073b18:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r7, r0, #0x0
	add		r5, r1, #0x0
	ldr		r4, _08073bcc
	ldr		r6, _08073bd0
	str		r6, [r4, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08073bc0
	ldr		r0, _08073bd4
	add		r1, r6, r0
	mov		r2, #0x8e
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	str		r7, [r0, #0x0]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	mov		r3, #0x0
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, _08073bd8
	add		r1, r6, r0
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x28
	strb	r0, [r1, #0x0]
	ldr		r0, _08073bdc
	str		r3, [r0, #0x0]
	ldrb	r2, [r5, #0x0]
	add		r7, r0, #0x0
	ldr		r1, _08073be0
	mov		r8, r1
	cmp		r2, #0x0
	beq		_08073b7a
	add		r6, r4, #0x0
	add		r3, r7, #0x0
_08073b66:
	ldr		r0, [r6, #0x0]
	ldr		r1, [r3, #0x0]
	add		r0, r0, r1
	strb	r2, [r0, #0x6]
	add		r5, #0x1
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldrb	r2, [r5, #0x0]
	cmp		r2, #0x0
	bne		_08073b66
_08073b7a:
	ldr		r0, [r4, #0x0]
	ldrh	r2, [r7, #0x0]
	mov		r1, #0x28
	bl		sub_08073c7c
	mov		r2, r8
	strh	r0, [r2, #0x0]
	ldr		r5, _08073be4
	add		r1, r5, #0x0
	add		r1, #0x30
	ldrh	r2, [r2, #0x0]
	add		r0, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08073be8
	add		r4, r5, r0
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073bec
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073bc0:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73BCA, 0x2

_08073bcc:	.4byte 0x03002424
_08073bd0:	.4byte 0x03007038
_08073bd4:	.4byte 0xFFFFFDE8
_08073bd8:	.4byte 0xFFFFFE2C
_08073bdc:	.4byte 0x030023F8
_08073be0:	.4byte 0x0300242C
_08073be4:	.4byte 0x03007008
_08073be8:	.4byte 0xFFFFFE18
_08073bec:	.4byte 0xFFFFFE20
	thumb_func_end sub_08073b18

	thumb_func_start sub_08073bf0
sub_08073bf0:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08073c64
	ldr		r5, _08073c68
	str		r5, [r6, #0x0]
	bl		sub_080729e4
	cmp		r0, #0x0
	beq		_08073c5c
	bl		sub_0807274c
	ldr		r4, _08073c6c
	ldr		r0, [r6, #0x0]
	mov		r1, #0x3f
	mov		r2, #0x0
	bl		sub_08073c7c
	strh	r0, [r4, #0x0]
	add		r0, r5, #0x0
	sub		r0, #0x30
	ldrh	r2, [r4, #0x0]
	add		r1, r5, #0x0
	mov		r3, #0x3
	bl		sub_08072a5c
	ldr		r0, _08073c70
	add		r4, r5, r0
	ldr		r2, _08073c74
	add		r1, r5, r2
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3f
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x20
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov		r0, #0x1
	strb	r0, [r4, #0x4]
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	ldr		r2, _08073c78
	add		r1, r5, r2
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	mov		r0, #0x2
	bl		sub_08072854
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
_08073c5c:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73C62, 0x2

_08073c64:	.4byte 0x03002424
_08073c68:	.4byte 0x03007038
_08073c6c:	.4byte 0x0300242C
_08073c70:	.4byte 0xFFFFFDE8
_08073c74:	.4byte 0xFFFFFE2C
_08073c78:	.4byte 0xFFFFFDF0
	thumb_func_end sub_08073bf0

	thumb_func_start sub_08073c7c
sub_08073c7c:
	push	{ lr }
	add		r3, r0, #0x0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	ldr		r0, _08073c98
	ldrb	r0, [r0, #0x5]
	cmp		r0, #0x1
	beq		_08073c9c
	add		r0, r3, #0x0
	bl		sub_08073ca8
	b		_08073ca2

_08073c98:	.4byte 0x03006E20

_08073c9c:
	add		r0, r3, #0x0
	bl		sub_08073d0c
_08073ca2:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x73CA6, 0x2
	thumb_func_end sub_08073c7c

	thumb_func_start sub_08073ca8
sub_08073ca8:
	push	{ r4, r5, r6, lr }
	add		r4, r2, #0x0
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	mov		r6, #0x0
	ldr		r2, _08073d00
	strh	r2, [r0, #0x0]
	strb	r1, [r0, #0x2]
	strb	r6, [r0, #0x3]
	mov		r1, #0xff
	and		r1, r4
	lsl		r1, r1, #0x8
	lsr		r2, r4, #0x8
	orr		r1, r2
	strh	r1, [r0, #0x4]
	ldr		r5, _08073d04
	add		r1, r4, #0x6
	add		r1, r0, r1
	str		r1, [r5, #0x0]
	add		r0, #0x2
	add		r1, r4, #0x4
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08073e2c
	ldr		r2, _08073d08
	strh	r0, [r2, #0x0]
	ldr		r1, [r5, #0x0]
	lsr		r0, r0, #0x8
	strb	r0, [r1, #0x0]
	ldr		r1, [r5, #0x0]
	ldrh	r0, [r2, #0x0]
	strb	r0, [r1, #0x1]
	ldr		r1, [r5, #0x0]
	mov		r0, #0x81
	strb	r0, [r1, #0x2]
	ldr		r0, [r5, #0x0]
	strb	r6, [r0, #0x3]
	add		r4, #0xa
	add		r0, r4, #0x0
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x73CFE, 0x2

_08073d00:	.4byte 0x00006699
_08073d04:	.4byte 0x03002428
_08073d08:	.4byte 0x030023FC
	thumb_func_end sub_08073ca8

	thumb_func_start sub_08073d0c
sub_08073d0c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	add		r4, r0, #0x0
	lsl		r2, r2, #0x10
	lsr		r5, r2, #0x10
	mov		r2, #0x0
	ldr		r0, _08073d50
	strh	r0, [r4, #0x0]
	strb	r1, [r4, #0x2]
	strb	r2, [r4, #0x3]
	mov		r0, #0xff
	and		r0, r5
	lsl		r0, r0, #0x8
	lsr		r1, r5, #0x8
	orr		r0, r1
	strh	r0, [r4, #0x4]
	add		r2, r0, #0x0
	cmp		r2, #0x0
	bne		_08073d5c
	ldr		r0, _08073d54
	str		r2, [r0, #0x0]
	add		r0, r5, #0x6
	mov		r8, r0
	ldr		r6, _08073d58
	add		r1, r4, #0x2
	mov		r9, r1
	add		r2, r5, #0x4
	str		r2, [sp, #0x0]
	b		_08073dc2

.incbin "base.gba", 0x73D4E, 0x2

_08073d50:	.4byte 0x00006699
_08073d54:	.4byte 0x03002404
_08073d58:	.4byte 0x03002428

_08073d5c:
	ldr		r0, _08073d70
	mov		r2, #0x3
	and		r2, r5
	str		r2, [r0, #0x0]
	cmp		r2, #0x0
	bne		_08073d78
	ldr		r0, _08073d74
	str		r2, [r0, #0x0]
	b		_08073d80

.incbin "base.gba", 0x73D6E, 0x2

_08073d70:	.4byte 0x03002408
_08073d74:	.4byte 0x03002404

_08073d78:
	ldr		r1, _08073e18
	mov		r0, #0x4
	sub		r0, r0, r2
	str		r0, [r1, #0x0]
_08073d80:
	ldr		r3, _08073e1c
	add		r1, r5, #0x6
	add		r0, r4, r1
	str		r0, [r3, #0x0]
	ldr		r6, _08073e20
	mov		r10, r6
	mov		r2, #0x0
	str		r2, [r6, #0x0]
	ldr		r7, _08073e18
	ldr		r0, [r7, #0x0]
	mov		r8, r1
	ldr		r6, _08073e24
	add		r1, r4, #0x2
	mov		r9, r1
	add		r7, r5, #0x4
	str		r7, [sp, #0x0]
	cmp		r2, r0
	bge		_08073dc2
	mov		r0, #0x0
	mov		r12, r0
	mov		r2, r10
_08073daa:
	ldr		r0, [r3, #0x0]
	mov		r1, r12
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	ldr		r1, [r2, #0x0]
	add		r1, #0x1
	str		r1, [r2, #0x0]
	ldr		r7, _08073e18
	ldr		r0, [r7, #0x0]
	cmp		r1, r0
	blt		_08073daa
_08073dc2:
	mov		r1, r8
	add		r0, r4, r1
	ldr		r2, _08073e18
	ldr		r1, [r2, #0x0]
	add		r0, r0, r1
	str		r0, [r6, #0x0]
	ldr		r7, [sp, #0x0]
	lsl		r1, r7, #0x10
	lsr		r1, r1, #0x10
	mov		r0, r9
	bl		sub_08073e2c
	ldr		r3, _08073e28
	strh	r0, [r3, #0x0]
	ldr		r1, [r6, #0x0]
	lsr		r0, r0, #0x8
	mov		r2, #0x0
	strb	r0, [r1, #0x0]
	ldr		r1, [r6, #0x0]
	ldrh	r0, [r3, #0x0]
	strb	r0, [r1, #0x1]
	ldr		r1, [r6, #0x0]
	mov		r0, #0x81
	strb	r0, [r1, #0x2]
	ldr		r0, [r6, #0x0]
	strb	r2, [r0, #0x3]
	ldr		r0, [r6, #0x0]
	strb	r2, [r0, #0x4]
	ldr		r0, [r6, #0x0]
	strb	r2, [r0, #0x5]
	ldr		r1, _08073e18
	ldr		r0, [r1, #0x0]
	add		r0, r5, r0
	add		r0, #0xc
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x73E16, 0x2

_08073e18:	.4byte 0x03002404
_08073e1c:	.4byte 0x03002400
_08073e20:	.4byte 0x03002430
_08073e24:	.4byte 0x03002428
_08073e28:	.4byte 0x0300240C
	thumb_func_end sub_08073d0c

	thumb_func_start sub_08073e2c
sub_08073e2c:
	push	{ r4, r5, r6, lr }
	add		r4, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r2, r1, #0x10
	ldr		r1, _08073e60
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	add		r5, r1, #0x0
	cmp		r2, #0x0
	beq		_08073e58
	add		r6, r5, #0x0
	mov		r1, #0x0
_08073e44:
	ldrb	r0, [r4, #0x0]
	add		r3, r1, r0
	add		r1, r3, #0x0
	add		r4, #0x1
	sub		r0, r2, #0x1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x0
	bne		_08073e44
	strh	r3, [r6, #0x0]
_08073e58:
	ldrh	r0, [r5, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

_08073e60:	.4byte 0x0300240E
	thumb_func_end sub_08073e2c

	thumb_func_start sub_08073e64
sub_08073e64:
	ldr		r1, _08073e88
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r1, #0x2]
	orr		r0, r2
	strh	r0, [r1, #0x2]
	ldr		r0, [r1, #0x40]
	mov		r2, #0x80
	lsl		r2, r2, #0x5
	orr		r0, r2
	str		r0, [r1, #0x40]
	ldrh	r0, [r1, #0xc]
	ldr		r0, _08073e8c
	strh	r0, [r1, #0xc]
	ldrb	r0, [r1, #0x4]
	mov		r0, #0x3
	strb	r0, [r1, #0x4]
	bx		lr

_08073e88:	.4byte 0x03006E20
_08073e8c:	.4byte 0x00005FF9
	thumb_func_end sub_08073e64

	thumb_func_start sub_08073e90
sub_08073e90:
	ldr		r2, _08073ebc
	ldrh	r1, [r2, #0x2]
	mov		r0, #0x20
	ldrh	r3, [r2, #0x2]
	mov		r3, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x2]
	ldr		r0, [r2, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	orr		r0, r1
	str		r0, [r2, #0x40]
	ldrh	r0, [r2, #0xc]
	strh	r3, [r2, #0xc]
	ldrb	r0, [r2, #0x4]
	mov		r0, #0x3
	strb	r0, [r2, #0x4]
	ldr		r0, [r2, #0x40]
	ldr		r1, _08073ec0
	and		r0, r1
	str		r0, [r2, #0x40]
	bx		lr

_08073ebc:	.4byte 0x03006E20
_08073ec0:	.4byte 0xffffefff
	thumb_func_end sub_08073e90

	thumb_func_start sub_08073ec4
sub_08073ec4:
	push	{ lr }
	ldr		r0, _08073ed8
	ldr		r1, [r0, #0xc]
	ldrh	r2, [r0, #0x2]
	mov		r3, #0x3
	bl		sub_08072a5c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x73ED6, 0x2

_08073ed8:	.4byte 0x03007008
	thumb_func_end sub_08073ec4

	thumb_func_start sub_08073edc
sub_08073edc:
	push	{ r4, r5, lr }
	ldr		r4, _08073f28
	ldr		r0, _08073f2c
	add		r5, r4, r0
	ldr		r1, [r4, #0xc]
	add		r0, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x1
	bl		sub_08072a5c
	ldr		r1, _08073f30
	add		r0, r4, r1
	mov		r2, #0x0
	strb	r2, [r0, #0x0]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x9
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x2
	strb	r0, [r5, #0x4]
	add		r1, r4, #0x0
	sub		r1, #0x10
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x0
	strh	r2, [r1, #0x0]
	ldr		r1, _08073f34
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r1, _08073f38
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08073f28:	.4byte 0x03007018
_08073f2c:	.4byte 0xFFFFFE08
_08073f30:	.4byte 0xFFFFFE5A
_08073f34:	.4byte 0xFFFFFE58
_08073f38:	.4byte 0xFFFFFE59
	thumb_func_end sub_08073edc

	thumb_func_start sub_08073f3c
sub_08073f3c:
	push	{ r4, r5, lr }
	ldr		r4, _08073f58
	mov		r0, #0xf4
	lsl		r0, r0, #0x1
	add		r5, r4, r0
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x2
	beq		_08073f7c
	cmp		r0, #0x2
	bgt		_08073f5c
	cmp		r0, #0x1
	beq		_08073f62
	b		_08073faa

.incbin "base.gba", 0x73F56, 0x2

_08073f58:	.4byte 0x03006E20

_08073f5c:
	cmp		r0, #0x3
	beq		_08073fa4
	b		_08073faa
_08073f62:
	add		r0, r5, #0x0
	bl		sub_08072b48
	ldrh	r0, [r5, #0x0]
	mov		r0, #0x2
	strh	r0, [r5, #0x0]
	ldrh	r0, [r4, #0xc]
	ldr		r0, _08073f78
	strh	r0, [r4, #0xc]
	b		_08073faa

.incbin "base.gba", 0x73F76, 0x2

_08073f78:	.4byte 0x0000F851

_08073f7c:
	ldr		r1, _08073fa0
	add		r0, r5, #0x0
	mov		r2, #0x12
	mov		r3, #0x3
	bl		sub_08072a5c
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r4, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r4, #0xc]
	strh	r0, [r4, #0xc]
	add		r0, r5, #0x0
	bl		sub_08072b48
	b		_08073faa

_08073fa0:	.4byte 0x0820bc78

_08073fa4:
	add		r0, r5, #0x0
	bl		sub_08072b48
_08073faa:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08073f3c

	thumb_func_start sub_08073fb0
sub_08073fb0:
	push	{ lr }
	ldr		r1, _08073fc8
	mov		r2, #0xfc
	lsl		r2, r2, #0x1
	add		r0, r1, r2
	ldrh	r0, [r0, #0x0]
	cmp		r0, #0x4
	bgt		_08073fcc
	cmp		r0, #0x1
	bge		_08073fd2
	b		_0807401a

.incbin "base.gba", 0x73FC6, 0x2

_08073fc8:	.4byte 0x03006E20

_08073fcc:
	cmp		r0, #0x5
	beq		_08074010
	b		_0807401a
_08073fd2:
	ldrb	r0, [r1, #0x5]
	cmp		r0, #0x0
	bne		_08073ff0
	mov		r2, #0x82
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	ldr		r1, _08073fec
	mov		r2, #0x1
	mov		r3, #0x0
	bl		sub_08072a5c
	b		_08074000

.incbin "base.gba", 0x73FEA, 0x2

_08073fec:	.4byte 0x0820bc74

_08073ff0:
	mov		r2, #0x82
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	ldr		r1, _08074008
	mov		r2, #0x4
	mov		r3, #0x0
	bl		sub_08072a5c
_08074000:
	ldr		r0, _0807400c
	bl		sub_08072b48
	b		_0807401a

_08074008:	.4byte 0x0820bc74
_0807400c:	.4byte 0x03007028

_08074010:
	mov		r2, #0x82
	lsl		r2, r2, #0x2
	add		r0, r1, r2
	bl		sub_08072b48
_0807401a:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7401E, 0x2
	thumb_func_end sub_08073fb0

	thumb_func_start sub_08074020
sub_08074020:
	push	{ r4, r5, lr }
	ldr		r1, _080740bc
	add		r2, r1, #0x0
	add		r2, #0x61
	ldrb	r0, [r2, #0x0]
	add		r4, r1, #0x0
	cmp		r0, #0x0
	beq		_0807403c
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x6
	beq		_0807403c
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x7
	bne		_080740f6
_0807403c:
	ldr		r0, [r4, #0x40]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080740f6
	ldr		r0, [r4, #0x3c]
	add		r0, #0x1
	str		r0, [r4, #0x3c]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080740ce
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807406e
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_080740ce
_0807406e:
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r4, #0x0
	add		r1, #0x24
	add		r0, r0, r1
	ldr		r1, [r4, #0x3c]
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bls		_080740f6
	mov		r5, #0x0
	str		r5, [r4, #0x3c]
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r3, r4, r0
	strh	r5, [r3, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xd4
	str		r0, [r3, #0x4]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	and		r0, r1
	cmp		r0, #0x0
	beq		_080740c0
	ldr		r1, [r4, #0x70]
	ldr		r2, [r4, #0x74]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r3, #0x0
	bl		sub_0807310c
	str		r5, [r4, #0x70]
	str		r5, [r4, #0x74]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	orr		r0, r1
	str		r0, [r4, #0x40]
	b		_080740f6

_080740bc:	.4byte 0x03006E20

_080740c0:
	add		r0, r3, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	mov		r3, #0xff
	bl		sub_08073020
	b		_080740f6
_080740ce:
	ldrb	r0, [r4, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r4, #0x0
	add		r1, #0x14
	add		r0, r0, r1
	ldr		r1, [r4, #0x3c]
	ldr		r0, [r0, #0x0]
	cmp		r1, r0
	bls		_080740f6
	mov		r1, #0x0
	str		r1, [r4, #0x3c]
	mov		r2, #0xcb
	lsl		r2, r2, #0x2
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x54
	str		r1, [r0, #0x4]
	bl		sub_0807330c
_080740f6:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08074020

	thumb_func_start sub_080740fc
sub_080740fc:
	push	{ r4, r5, r6, r7, lr }
	ldr		r5, _08074114
	ldr		r6, [r5, #0x40]
	mov		r0, #0x80
	lsl		r0, r0, #0x5
	and		r6, r0
	cmp		r6, #0x0
	beq		_08074118
	bl		sub_08072d04
	b		_0807425c

.incbin "base.gba", 0x74112, 0x2

_08074114:	.4byte 0x03006E20

_08074118:
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074126
	b		_08074224
_08074126:
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074204
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074208
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	mov		r7, #0x0
	strh	r0, [r5, #0x2]
	ldrb	r0, [r5, #0x4]
	strb	r7, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807414c
	b		_0807425c
_0807414c:
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	strb	r7, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	strh	r0, [r5, #0xc]
	str		r6, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r7, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807420c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074210
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074214
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074218
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807421c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r5, #0x0
	add		r0, #0x61
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1e
	beq		_0807425c
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074220
	and		r0, r1
	str		r0, [r5, #0x40]
	mov		r0, #0x26
	bl		sub_080728c4
	str		r6, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r7, [r5, #0x4]
	b		_0807425c

.incbin "base.gba", 0x74202, 0x2

_08074204:	.4byte 0xFFFFF7FF
_08074208:	.4byte 0x0000FFDF
_0807420c:	.4byte 0xfffffdff
_08074210:	.4byte 0xfffffbff
_08074214:	.4byte 0xffffdfff
_08074218:	.4byte 0x0000FFF7
_0807421c:	.4byte 0x0000FFEF
_08074220:	.4byte 0xffffbfff

_08074224:
	ldr		r2, [r5, #0x40]
	mov		r0, #0x8
	and		r2, r0
	cmp		r2, #0x0
	beq		_0807423a
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x1
	strb	r0, [r5, #0x4]
	bl		sub_08073ec4
	b		_0807425c
_0807423a:
	ldrb	r0, [r5, #0x4]
	strb	r2, [r5, #0x4]
	mov		r1, #0xcd
	lsl		r1, r1, #0x2
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	mov		r3, #0xfd
	lsl		r3, r3, #0x1
	add		r0, r5, r3
	ldrh	r0, [r0, #0x0]
	strh	r0, [r1, #0x0]
	str		r2, [r5, #0x3c]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074274
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
_0807425c:
	ldr		r2, _08074278
	ldrb	r0, [r2, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r2, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r2, #0xc]
	strh	r0, [r2, #0xc]
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08074274:	.4byte 0x0000FFDF
_08074278:	.4byte 0x03006E20
	thumb_func_end sub_080740fc

	thumb_func_start sub_0807427c
sub_0807427c:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r6, #0x0
	cmp		r0, #0x5
	bgt		_080742c4
	cmp		r0, #0x4
	blt		_0807428e
	b		_08074430
_0807428e:
	cmp		r0, #0x1
	ble		_08074294
	b		_0807448e
_08074294:
	cmp		r0, #0x0
	bge		_0807429a
	b		_0807448e
_0807429a:
	ldr		r2, _080742c0
	add		r0, r2, #0x0
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080742a8
	b		_08074430
_080742a8:
	add		r3, r2, #0x0
	ldr		r0, [r3, #0x40]
	mov		r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	beq		_080743a0
	mov		r0, #0x0
	str		r0, [r3, #0x40]
	mov		r0, #0x23
	bl		sub_080728c4
	b		_080743a2

_080742c0:	.4byte 0x03006E20

_080742c4:
	cmp		r0, #0xff
	beq		_080742ca
	b		_0807448e
_080742ca:
	mov		r6, #0x7
	ldr		r2, _080742f0
	add		r0, r2, #0x0
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_080742da
	b		_0807448e
_080742da:
	ldr		r1, [r2, #0x40]
	mov		r0, #0x4
	and		r1, r0
	cmp		r1, #0x0
	beq		_080742f4
	mov		r0, #0x0
	str		r0, [r2, #0x40]
	mov		r0, #0x23
	bl		sub_080728c4
	b		_080742f6

_080742f0:	.4byte 0x03006E20

_080742f4:
	str		r1, [r2, #0x40]
_080742f6:
	ldr		r5, _08074388
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807438c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074390
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074394
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074398
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807439c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	b		_0807448e

.incbin "base.gba", 0x74386, 0x2

_08074388:	.4byte 0x03006E20
_0807438c:	.4byte 0xfffffdff
_08074390:	.4byte 0xfffffbff
_08074394:	.4byte 0xffffdfff
_08074398:	.4byte 0x0000FFF7
_0807439c:	.4byte 0x0000FFEF

_080743a0:
	str		r6, [r2, #0x40]
_080743a2:
	ldr		r5, _08074448
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807444c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074450
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08074454
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074458
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807445c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
_08074430:
	ldr		r0, _08074448
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x3
	cmp		r0, #0x5
	bhi		_0807448e
	lsl		r0, r0, #0x2
	ldr		r1, _08074460
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x74446, 0x2

_08074448:	.4byte 0x03006E20
_0807444c:	.4byte 0xfffffdff
_08074450:	.4byte 0xfffffbff
_08074454:	.4byte 0xffffdfff
_08074458:	.4byte 0x0000FFF7
_0807445c:	.4byte 0x0000FFEF
_08074460:	.4byte 0x08074464
_08074464:	.4byte 0x0807447c

.incbin "base.gba", 0x74468, 0x14
	thumb_func_end sub_0807427c


.incbin "base.gba", 0x7447C, 0x12

_0807448e:

.incbin "base.gba", 0x7448E, 0x46
_080744d4:	.4byte 0x03006E20

.incbin "base.gba", 0x744D8, 0x28
	thumb_func_start sub_08074500
sub_08074500:
	push	{ lr }
	ldr		r1, _0807451c
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x10
	add		r2, r1, #0x0
	cmp		r0, #0x18
	bhi		_080745da
	lsl		r0, r0, #0x2
	ldr		r1, _08074520
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0807451c:	.4byte 0x03006E20
_08074520:	.4byte 0x08074524
_08074524:	.4byte 0x080745d6

.incbin "base.gba", 0x74528, 0x60
	thumb_func_end sub_08074500


.incbin "base.gba", 0x74588, 0x18
_080745a0:	.4byte 0x080745b4

.incbin "base.gba", 0x745A4, 0x36

_080745da:

.incbin "base.gba", 0x745DA, 0x6
	thumb_func_start sub_080745e0
sub_080745e0:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	ldr		r5, _08074614
	mov		r0, #0x1
	str		r0, [r5, #0x0]
	ldr		r2, _08074618
	ldr		r0, _0807461c
	str		r0, [r2, #0x0]
	ldr		r1, _08074620
	add		r3, r0, r1
	ldr		r0, [r3, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074628
	ldr		r0, [r3, #0x40]
	ldr		r1, _08074624
	and		r0, r1
	str		r0, [r3, #0x40]
	bl		sub_08073e90
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	b		_08074988

_08074614:	.4byte 0x03002430
_08074618:	.4byte 0x03002410
_0807461c:	.4byte 0x03007038
_08074620:	.4byte 0xFFFFFDE8
_08074624:	.4byte 0xffffefff

_08074628:
	add		r0, r4, #0x0
	sub		r0, #0x90
	cmp		r0, #0x5e
	bls		_08074632
	b		_08074974
_08074632:
	lsl		r0, r0, #0x2
	ldr		r1, _0807463c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_0807463c:	.4byte 0x08074640
_08074640:	.4byte 0x080747bc

.incbin "base.gba", 0x74644, 0x178
	thumb_func_end sub_080745e0


.incbin "base.gba", 0x747BC, 0x1B8

_08074974:

.incbin "base.gba", 0x74974, 0x14
_08074988:

.incbin "base.gba", 0x74988, 0x24
_080749ac:

.incbin "base.gba", 0x749AC, 0xC
_080749b8:	.4byte 0x03006E20
_080749bc:	.4byte 0x03002430
_080749c0:	.4byte 0x0000FFDF
	thumb_func_start sub_080749c4
sub_080749c4:
	push	{ r4, r5, r6, lr }
	ldr		r4, _08074a20
	ldr		r0, [r4, #0x40]
	mov		r2, #0x80
	orr		r0, r2
	str		r0, [r4, #0x40]
	ldr		r6, _08074a24
	ldrb	r0, [r4, #0x4]
	strb	r0, [r6, #0x0]
	ldr		r5, _08074a28
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	and		r0, r1
	add		r3, r4, #0x0
	cmp		r0, #0x0
	beq		_08074a08
	ldr		r0, [r4, #0x40]
	add		r1, #0xfe
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074a08
	ldr		r0, [r4, #0x40]
	mov		r1, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074a08
	ldr		r0, _08074a2c
	ldrh	r1, [r0, #0x0]
	add		r0, r2, #0x0
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074a30
_08074a08:
	ldr		r2, _08074a28
	ldrh	r1, [r3, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r0, [r3, #0x40]
	mov		r1, #0x81
	neg		r1, r1
	and		r0, r1
	str		r0, [r3, #0x40]
	b		_08074ab2

_08074a20:	.4byte 0x03006E20
_08074a24:	.4byte 0x03002414
_08074a28:	.4byte Timer3Counter_Reload
_08074a2c:	.4byte SIOControlRegister

_08074a30:
	bl		sub_0807be3c
	ldrb	r1, [r4, #0x4]
	ldrb	r0, [r6, #0x0]
	cmp		r0, r1
	bne		_08074a50
	ldr		r0, [r4, #0x40]
	mov		r1, #0x40
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074a66
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	bl		sub_080745e0
_08074a50:
	ldr		r0, [r4, #0x40]
	mov		r1, #0x81
	neg		r1, r1
	and		r0, r1
	str		r0, [r4, #0x40]
	ldrh	r1, [r4, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r5, #0x0]
	b		_08074ab2
_08074a66:
	ldrb	r0, [r4, #0x4]
	cmp		r0, #0x1
	beq		_08074a8c
	cmp		r0, #0x1
	bgt		_08074a76
	cmp		r0, #0x0
	beq		_08074a80
	b		_08074a96
_08074a76:
	cmp		r0, #0x2
	beq		_08074a92
	cmp		r0, #0x3
	beq		_08074a86
	b		_08074a96
_08074a80:
	bl		sub_08074020
	b		_08074a96
_08074a86:
	bl		sub_080740fc
	b		_08074a96
_08074a8c:
	bl		sub_08073f3c
	b		_08074a96
_08074a92:
	bl		sub_08073fb0
_08074a96:
	bl		sub_08072a84
	ldr		r3, _08074ab8
	ldr		r2, _08074abc
	ldrh	r1, [r2, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r3, #0x0]
	ldr		r0, [r2, #0x40]
	mov		r1, #0x81
	neg		r1, r1
	and		r0, r1
	str		r0, [r2, #0x40]
_08074ab2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08074ab8:	.4byte Timer3Counter_Reload
_08074abc:	.4byte 0x03006E20
	thumb_func_end sub_080749c4

	thumb_func_start sub_08074ac0
sub_08074ac0:
	push	{ r4, r5, r6, lr }
	ldr		r6, _08074b10
	ldrb	r0, [r6, #0x4]
	mov		r4, #0x0
	strb	r4, [r6, #0x4]
	mov		r0, #0xf4
	lsl		r0, r0, #0x1
	add		r5, r6, r0
	ldrh	r0, [r5, #0x0]
	strh	r4, [r5, #0x0]
	mov		r1, #0xfc
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	strh	r4, [r0, #0x0]
	mov		r0, #0x10
	bl		sub_080728c4
	ldr		r0, [r6, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r6, #0x40]
	ldrh	r1, [r6, #0x2]
	ldr		r0, _08074b14
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	ldr		r0, [r6, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r6, #0x40]
	ldrh	r0, [r5, #0x0]
	strh	r4, [r5, #0x0]
	ldr		r0, _08074b18
	str		r4, [r0, #0x0]
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08074b10:	.4byte 0x03006E20
_08074b14:	.4byte 0x0000FFDF
_08074b18:	.4byte Timer3Counter_Reload
	thumb_func_end sub_08074ac0

	thumb_func_start sub_08074b1c
sub_08074b1c:
	push	{ r4, r5, r6, lr }
	ldr		r1, _08074b70
	mov		r2, #0xf4
	lsl		r2, r2, #0x1
	add		r0, r1, r2
	ldrh	r0, [r0, #0x0]
	add		r5, r1, #0x0
	cmp		r0, #0x1
	bge		_08074b30
	b		_08074f12
_08074b30:
	cmp		r0, #0x2
	bgt		_08074b36
	b		_08074f12
_08074b36:
	cmp		r0, #0x3
	beq		_08074b3c
	b		_08074f12
_08074b3c:
	ldr		r0, [r5, #0x3c]
	add		r0, #0x1
	str		r0, [r5, #0x3c]
	ldr		r2, [r5, #0x3c]
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x2
	add		r1, #0x1c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	cmp		r2, r0
	bls		_08074b7a
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074b74
	bl		sub_08073e64
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x7
	orr		r0, r1
	str		r0, [r5, #0x40]
	b		_08074f12

.incbin "base.gba", 0x74B6E, 0x2

_08074b70:	.4byte 0x03006E20

_08074b74:
	bl		sub_08073e90
	b		_08074f12
_08074b7a:
	ldr		r2, _08074bac
	mov		r3, #0xf5
	lsl		r3, r3, #0x1
	add		r0, r5, r3
	ldrh	r1, [r0, #0x0]
	add		r3, #0x2
	add		r0, r5, r3
	ldrh	r0, [r0, #0x0]
	sub		r1, r1, r0
	str		r1, [r2, #0x0]
	ldrb	r0, [r5, #0x5]
	cmp		r0, #0x0
	bne		_08074bb4
	cmp		r1, #0x1
	bgt		_08074be4
	mov		r0, #0x1
	sub		r0, r0, r1
	add		r1, r5, #0x0
	add		r1, #0x48
	add		r0, r0, r1
	ldr		r1, _08074bb0
	ldrb	r1, [r1, #0x0]
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		_08074be4

_08074bac:	.4byte 0x03002418
_08074bb0:	.4byte SIOData_Normal_8bitandUARTMode

_08074bb4:
	cmp		r1, #0x0
	bne		_08074be4
	ldr		r0, _08074c14
	ldrb	r1, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x48
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	ldr		r0, _08074c18
	ldrb	r0, [r0, #0x0]
	add		r2, r5, #0x0
	add		r2, #0x49
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r0, _08074c1c
	ldrb	r0, [r0, #0x0]
	add		r2, #0x1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r0, _08074c20
	ldrb	r0, [r0, #0x0]
	add		r2, #0x1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
_08074be4:
	mov		r0, #0xf5
	lsl		r0, r0, #0x1
	add		r1, r5, r0
	mov		r2, #0xf6
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldrh	r1, [r1, #0x0]
	ldrh	r0, [r0, #0x0]
	cmp		r1, r0
	beq		_08074bfa
	b		_08074f12
_08074bfa:
	add		r0, r5, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xff
	bne		_08074c24
	add		r0, r5, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xff
	bne		_08074c24
	mov		r0, #0x10
	b		_08074d26

.incbin "base.gba", 0x74C12, 0x2

_08074c14:	.4byte SIOData1_1stChild__Multi_PlayerMode_+ 0x1
_08074c18:	.4byte SIOData1_1stChild__Multi_PlayerMode_
_08074c1c:	.4byte SIOData0_Parent__Multi_PlayerMode_ + 0x1
_08074c20:	.4byte SIOData0_Parent__Multi_PlayerMode_

_08074c24:
	add		r0, r5, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	bl		sub_08072bb4
	cmp		r0, #0x0
	bne		_08074cec
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074cec
	ldr		r0, [r5, #0x40]
	mov		r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074ca8
	ldrh	r0, [r5, #0xe]
	sub		r0, #0x1
	ldrh	r1, [r5, #0xe]
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0xe]
	add		r6, r0, #0x0
	cmp		r6, #0x0
	bne		_08074cae
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x0
	strb	r0, [r5, #0x4]
	mov		r3, #0xf4
	lsl		r3, r3, #0x1
	add		r4, r5, r3
	ldrh	r0, [r4, #0x0]
	strh	r6, [r4, #0x0]
	mov		r1, #0xfc
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	strh	r6, [r0, #0x0]
	mov		r0, #0x10
	bl		sub_080728c4
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074ca0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r0, [r4, #0x0]
	strh	r6, [r4, #0x0]
	ldr		r0, _08074ca4
	str		r6, [r0, #0x0]
	b		_08074f12

_08074ca0:	.4byte 0x0000FFDF
_08074ca4:	.4byte Timer3Counter_Reload

_08074ca8:
	ldrh	r0, [r5, #0xe]
	mov		r0, #0x2
	strh	r0, [r5, #0xe]
_08074cae:
	ldr		r2, _08074ce0
	add		r0, r2, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r2, #0x7]
	mov		r4, #0x0
	strb	r0, [r2, #0x7]
	ldrh	r0, [r2, #0xc]
	ldr		r0, _08074ce4
	strh	r0, [r2, #0xc]
	ldr		r0, [r2, #0x40]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r2, #0x40]
	ldrb	r0, [r2, #0x4]
	mov		r0, #0x3
	strb	r0, [r2, #0x4]
	ldr		r3, _08074ce8
	str		r4, [r3, #0x0]
	ldrh	r1, [r2, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r3, #0x0]
	b		_08074f12

_08074ce0:	.4byte 0x03006E20
_08074ce4:	.4byte 0x0000F851
_08074ce8:	.4byte Timer3Counter_Reload

_08074cec:
	ldr		r1, _08074d4c
	add		r0, r1, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	add		r2, r0, #0x0
	add		r5, r1, #0x0
	cmp		r2, #0xf2
	bne		_08074d7c
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074d7c
	ldrb	r0, [r5, #0x7]
	strb	r2, [r5, #0x7]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074d54
	ldrh	r0, [r5, #0xe]
	sub		r0, #0x1
	ldrh	r1, [r5, #0xe]
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0xe]
	cmp		r0, #0x0
	bne		_08074d5a
	mov		r0, #0x85
_08074d26:
	bl		sub_080728c4
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08074d50
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	b		_08074f12

.incbin "base.gba", 0x74D4A, 0x2

_08074d4c:	.4byte 0x03006E20
_08074d50:	.4byte 0x0000FFDF

_08074d54:
	ldrh	r0, [r5, #0xe]
	ldr		r0, _08074d78
	strh	r0, [r5, #0xe]
_08074d5a:
	add		r0, r5, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r5, #0x7]
	mov		r3, #0x0
	strb	r0, [r5, #0x7]
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	b		_08074e64

.incbin "base.gba", 0x74D76, 0x2

_08074d78:	.4byte 0x0000FFFE

_08074d7c:
	add		r2, r5, #0x0
	add		r2, #0x49
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0xf0
	beq		_08074d8c
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0xf1
	bne		_08074e0c
_08074d8c:
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074e0c
	ldr		r0, [r5, #0x40]
	mov		r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074df0
	ldrh	r0, [r5, #0xe]
	sub		r0, #0x1
	ldrh	r1, [r5, #0xe]
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0xe]
	cmp		r0, #0x0
	bne		_08074df6
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0xf0
	bne		_08074dbe
	mov		r0, #0x83
	bl		sub_080728c4
	b		_08074dc4
_08074dbe:
	mov		r0, #0x84
	bl		sub_080728c4
_08074dc4:
	ldr		r2, _08074de8
	ldr		r0, [r2, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r2, #0x40]
	ldrh	r1, [r2, #0x2]
	ldr		r0, _08074dec
	and		r0, r1
	ldrh	r1, [r2, #0x2]
	strh	r0, [r2, #0x2]
	ldr		r0, [r2, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r2, #0x40]
	b		_08074f12

.incbin "base.gba", 0x74DE6, 0x2

_08074de8:	.4byte 0x03006E20
_08074dec:	.4byte 0x0000FFDF

_08074df0:
	ldrh	r0, [r5, #0xe]
	mov		r0, #0x2
	strh	r0, [r5, #0xe]
_08074df6:
	add		r0, r5, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r5, #0x7]
	mov		r3, #0x0
	strb	r0, [r5, #0x7]
	ldrh	r0, [r5, #0xc]
	ldr		r0, _08074e08
	b		_08074e64

_08074e08:	.4byte 0x0000BFFD

_08074e0c:
	add		r2, r5, #0x0
	add		r2, #0x49
	ldrb	r1, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x44
	ldrb	r0, [r0, #0x0]
	add		r0, #0x80
	cmp		r1, r0
	beq		_08074e8c
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0xee
	beq		_08074e8c
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x5
	and		r0, r1
	cmp		r0, #0x0
	bne		_08074e8c
	ldr		r0, [r5, #0x40]
	mov		r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08074e4e
	ldrh	r0, [r5, #0xe]
	sub		r0, #0x1
	ldrh	r1, [r5, #0xe]
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0xe]
	cmp		r0, #0x0
	bne		_08074e54
	bl		sub_08074ac0
	b		_08074f12
_08074e4e:
	ldrh	r0, [r5, #0xe]
	mov		r0, #0x2
	strh	r0, [r5, #0xe]
_08074e54:
	add		r0, r5, #0x0
	add		r0, #0x49
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r5, #0x7]
	mov		r3, #0x0
	strb	r0, [r5, #0x7]
	ldrh	r0, [r5, #0xc]
	ldr		r0, _08074e84
_08074e64:
	strh	r0, [r5, #0xc]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x8
	orr		r0, r1
	str		r0, [r5, #0x40]
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x3
	strb	r0, [r5, #0x4]
	ldr		r2, _08074e88
	str		r3, [r2, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r0, #0xc3
	lsl		r0, r0, #0x10
	orr		r0, r1
	str		r0, [r2, #0x0]
	b		_08074f12

_08074e84:	.4byte 0x0000F851
_08074e88:	.4byte Timer3Counter_Reload

_08074e8c:
	add		r0, r5, #0x0
	add		r0, #0x48
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r5, #0x6]
	strb	r0, [r5, #0x6]
	ldrb	r0, [r5, #0x5]
	cmp		r0, #0x0
	bne		_08074eb4
	mov		r2, #0x82
	lsl		r2, r2, #0x2
	add		r0, r5, r2
	ldr		r1, _08074eb0
	mov		r2, #0x1
	mov		r3, #0x0
	bl		sub_08072a5c
	b		_08074ec4

.incbin "base.gba", 0x74EAE, 0x2

_08074eb0:	.4byte 0x0820bc74

_08074eb4:
	mov		r3, #0x82
	lsl		r3, r3, #0x2
	add		r0, r5, r3
	ldr		r1, _08074f18
	mov		r2, #0x4
	mov		r3, #0x0
	bl		sub_08072a5c
_08074ec4:
	ldr		r4, _08074f1c
	ldr		r0, _08074f20
	add		r5, r4, r0
	mov		r1, #0x9e
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldr		r1, [r0, #0x4]
	add		r0, r4, #0x0
	mov		r2, #0x0
	mov		r3, #0x1
	bl		sub_08072a5c
	ldr		r2, _08074f24
	add		r0, r4, r2
	mov		r2, #0x0
	strb	r2, [r0, #0x0]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x9
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrb	r0, [r5, #0x4]
	mov		r0, #0x2
	strb	r0, [r5, #0x4]
	add		r1, r4, #0x0
	sub		r1, #0x10
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x0
	strh	r2, [r1, #0x0]
	str		r2, [r5, #0x3c]
	ldr		r3, _08074f28
	add		r2, r4, r3
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r1, _08074f2c
	add		r2, r4, r1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
_08074f12:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08074f18:	.4byte 0x0820bc74
_08074f1c:	.4byte 0x03007018
_08074f20:	.4byte 0xFFFFFE08
_08074f24:	.4byte 0xFFFFFE5A
_08074f28:	.4byte 0xFFFFFE58
_08074f2c:	.4byte 0xFFFFFE59
	thumb_func_end sub_08074b1c

	thumb_func_start sub_08074f30
sub_08074f30:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	ldr		r1, _08074f48
	ldrb	r0, [r1, #0x5]
	add		r5, r1, #0x0
	cmp		r0, #0x0
	bne		_08074f54
	ldr		r0, _08074f4c
	ldr		r1, _08074f50
	b		_08074f5a

.incbin "base.gba", 0x74F46, 0x2

_08074f48:	.4byte 0x03006E20
_08074f4c:	.4byte 0x0300241C
_08074f50:	.4byte SIOData_Normal_8bitandUARTMode

_08074f54:
	ldr		r0, _08074f7c
	ldr		r1, _08074f80
	sub		r1, r1, r6
_08074f5a:
	ldrb	r1, [r1, #0x0]
	strb	r1, [r0, #0x0]
	add		r4, r0, #0x0
	mov		r1, #0xfc
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldrh	r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r0, #0x4
	bls		_08074f70
	b		_080752a2
_08074f70:
	lsl		r0, r0, #0x2
	ldr		r1, _08074f84
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x74F7A, 0x2

_08074f7c:	.4byte 0x0300241C
_08074f80:	.4byte SIOData1_1stChild__Multi_PlayerMode_+ 0x1
_08074f84:	.4byte 0x08074f88
_08074f88:	.4byte 0x08074f9c

.incbin "base.gba", 0x74F8C, 0x10
	thumb_func_end sub_08074f30


.incbin "base.gba", 0x74F9C, 0x306

_080752a2:

.incbin "base.gba", 0x752A2, 0x6
	thumb_func_start sub_080752a8
sub_080752a8:
	push	{ r4, lr }
	ldr		r2, _080752d0
	ldr		r0, [r2, #0x0]
	ldr		r1, _080752d4
	and		r0, r1
	str		r0, [r2, #0x0]
	ldr		r4, _080752d8
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x1
	orr		r0, r1
	str		r0, [r4, #0x40]
	ldrb	r0, [r4, #0x4]
	add		r1, r0, #0x0
	cmp		r1, #0x1
	beq		_080752dc
	cmp		r1, #0x2
	beq		_080752ea
	b		_08075324

.incbin "base.gba", 0x752CE, 0x2

_080752d0:	.4byte Timer3Counter_Reload
_080752d4:	.4byte 0xffbfffff
_080752d8:	.4byte 0x03006E20

_080752dc:
	bl		sub_08074b1c
	ldr		r0, [r4, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r4, #0x40]
	b		_08075324
_080752ea:
	ldrb	r0, [r4, #0x5]
	cmp		r0, #0x0
	bne		_080752f8
	mov		r0, #0x0
	bl		sub_08074f30
	b		_08075324
_080752f8:
	ldr		r2, _08075348
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	ldrh	r0, [r4, #0x2]
	and		r1, r0
	cmp		r1, #0x0
	bne		_08075324
	add		r4, r2, #0x0
_08075308:
	ldrb	r0, [r4, #0x0]
	bl		sub_08074f30
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r4, #0x0]
	cmp		r0, #0x3
	bgt		_08075324
	ldr		r0, _0807534c
	ldrh	r1, [r0, #0x2]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_08075308
_08075324:
	ldr		r2, _08075350
	ldr		r0, [r2, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	orr		r0, r1
	str		r0, [r2, #0x0]
	ldr		r2, _0807534c
	ldr		r0, [r2, #0x40]
	mov		r1, #0x2
	orr		r0, r1
	str		r0, [r2, #0x40]
	ldr		r0, [r2, #0x40]
	ldr		r1, _08075354
	and		r0, r1
	str		r0, [r2, #0x40]
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_08075348:	.4byte 0x03002430
_0807534c:	.4byte 0x03006E20
_08075350:	.4byte Timer3Counter_Reload
_08075354:	.4byte 0xfffffeff
	thumb_func_end sub_080752a8

	thumb_func_start sub_08075358
sub_08075358:
	ldr		r2, _08075370
	ldrh	r1, [r2, #0x0]
	ldr		r0, _08075374
	and		r0, r1
	strh	r0, [r2, #0x0]
	ldr		r2, _08075378
	ldr		r0, [r2, #0x40]
	mov		r1, #0x20
	orr		r0, r1
	str		r0, [r2, #0x40]
	bx		lr

.incbin "base.gba", 0x7536E, 0x2

_08075370:	.4byte InterruptEnableRegister
_08075374:	.4byte 0x0000FF3F
_08075378:	.4byte 0x03006E20
	thumb_func_end sub_08075358

	thumb_func_start sub_0807537c
sub_0807537c:
	ldr		r2, _08075394
	ldr		r0, [r2, #0x40]
	mov		r1, #0x21
	neg		r1, r1
	and		r0, r1
	str		r0, [r2, #0x40]
	ldr		r2, _08075398
	ldrh	r0, [r2, #0x0]
	mov		r1, #0xc0
	orr		r0, r1
	strh	r0, [r2, #0x0]
	bx		lr

_08075394:	.4byte 0x03006E20
_08075398:	.4byte InterruptEnableRegister
	thumb_func_end sub_0807537c

	thumb_func_start sub_0807539c
sub_0807539c:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	ldr		r2, _080753e4
	mov		r12, r2
	ldrb	r2, [r2, #0x5]
	lsl		r2, r2, #0x1
	mov		r3, r12
	add		r3, #0x8
	add		r2, r2, r3
	ldrh	r2, [r2, #0x0]
	mov		r4, r12
	ldrh	r3, [r4, #0xc]
	strh	r2, [r4, #0xc]
	mov		r3, r12
	add		r3, #0x61
	ldrb	r2, [r3, #0x0]
	strb	r0, [r3, #0x0]
	mov		r2, r12
	add		r2, #0x62
	ldrb	r0, [r2, #0x0]
	strb	r1, [r2, #0x0]
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_080753dc
	ldrh	r0, [r4, #0x2]
	ldr		r1, _080753e8
	and		r1, r0
	ldrh	r0, [r4, #0x2]
	strh	r1, [r4, #0x2]
_080753dc:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x753E2, 0x2

_080753e4:	.4byte 0x03006E20
_080753e8:	.4byte 0x0000FFFE
	thumb_func_end sub_0807539c

	thumb_func_start sub_080753ec
sub_080753ec:
	push	{ r4, lr }
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldr		r3, _08075414
	add		r4, r3, #0x0
	add		r4, #0x60
	ldrb	r2, [r4, #0x0]
	mov		r2, #0x0
	strb	r2, [r4, #0x0]
	add		r3, #0x5e
	ldrh	r2, [r3, #0x0]
	strh	r1, [r3, #0x0]
	bl		sub_080728c4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x75412, 0x2

_08075414:	.4byte 0x03006E20
	thumb_func_end sub_080753ec

	thumb_func_start sub_08075418
sub_08075418:
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r2, _08075434
	mov		r1, #0x1
	str		r1, [r2, #0x0]
	sub		r0, #0x3
	cmp		r0, #0x21
	bls		_0807542a
	b		_080755ba
_0807542a:
	lsl		r0, r0, #0x2
	ldr		r1, _08075438
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_08075434:	.4byte 0x03002434
_08075438:	.4byte 0x0807543c
_0807543c:	.4byte 0x080754c4

.incbin "base.gba", 0x75440, 0x84
	thumb_func_end sub_08075418


.incbin "base.gba", 0x754C4, 0xF6

_080755ba:

.incbin "base.gba", 0x755BA, 0xA
	thumb_func_start sub_080755c4
sub_080755c4:
	push	{ r4, r5, r6, r7, lr }
	lsl		r0, r0, #0x18
	lsr		r6, r0, #0x18
	ldr		r4, _08075624
	ldrb	r0, [r4, #0x0]
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	add		r2, r4, #0x0
	add		r2, #0x5e
	ldrh	r1, [r2, #0x0]
	mov		r7, #0x0
	strh	r0, [r2, #0x0]
	ldr		r1, [r4, #0x58]
	ldr		r0, _08075628
	cmp		r1, r0
	bne		_08075618
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	bne		_08075618
	ldr		r0, [r4, #0x40]
	add		r1, #0x80
	and		r0, r1
	cmp		r0, #0x0
	bne		_08075618
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_08075618
	add		r0, r4, #0x0
	add		r0, #0x61
	ldrb	r0, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08075618
	add		r0, r6, #0x0
	bl		sub_08075418
	cmp		r0, #0x0
	bne		_0807562c
_08075618:
	mov		r0, #0x21
	mov		r1, #0x0
	bl		sub_080753ec
	mov		r0, #0x0
	b		_08075676

_08075624:	.4byte 0x03006E20
_08075628:	.4byte 0x4247414D

_0807562c:
	add		r0, r6, #0x0
	sub		r0, #0x16
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x1
	bls		_08075642
	ldrh	r0, [r4, #0x2]
	ldr		r1, _0807567c
	and		r1, r0
	ldrh	r0, [r4, #0x2]
	strh	r1, [r4, #0x2]
_08075642:
	ldrh	r1, [r4, #0x2]
	ldr		r0, _08075680
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	ldrb	r0, [r4, #0x0]
	mov		r0, #0xff
	strb	r0, [r4, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x66
	strb	r7, [r0, #0x0]
	add		r0, #0x2
	strh	r5, [r0, #0x0]
	ldr		r1, _08075684
	add		r0, r4, r1
	strh	r5, [r0, #0x0]
	add		r1, #0x2
	add		r0, r4, r1
	strh	r5, [r0, #0x0]
	ldrh	r0, [r4, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	orr		r0, r7
	strh	r0, [r4, #0x2]
	mov		r0, #0x1
_08075676:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

_0807567c:	.4byte 0x0000FFBF
_08075680:	.4byte 0x0000FFFD
_08075684:	.4byte 0x00000702
	thumb_func_end sub_080755c4

	thumb_func_start sub_08075688
sub_08075688:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	ldr		r4, _080756b4
	ldr		r0, _080756b8
	add		r1, r4, r0
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	cmp		r6, #0x0
	beq		_080756de
	cmp		r7, #0x0
	beq		_080756de
	cmp		r6, #0x4
	ble		_080756c0
	ldr		r1, _080756bc
	add		r0, r4, r1
	add		r1, r7, #0x0
	mov		r2, #0x5
	bl		sub_0807c304
	b		_080756de

.incbin "base.gba", 0x756B2, 0x2

_080756b4:	.4byte 0x03006E20
_080756b8:	.4byte 0x00000701
_080756bc:	.4byte 0x000006FC

_080756c0:
	ldr		r0, _080756e4
	add		r4, r4, r0
	add		r1, r6, r4
	mov		r5, #0x5
	sub		r5, r5, r6
	add		r0, r4, #0x0
	add		r2, r5, #0x0
	bl		sub_0807c304
	add		r5, r5, r4
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	add		r2, r6, #0x0
	bl		sub_0807c304
_080756de:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_080756e4:	.4byte 0x000006FC
	thumb_func_end sub_08075688

	thumb_func_start sub_080756e8
sub_080756e8:
	push	{ lr }
	ldr		r0, _080756fc
	ldr		r1, _08075700
	bl		sub_0807c238
	cmp		r0, #0x0
	beq		_08075704
	mov		r0, #0x0
	b		_08075706

.incbin "base.gba", 0x756FA, 0x2

_080756fc:	.4byte 0x0300751C
_08075700:	.4byte 0x0820bccc

_08075704:
	mov		r0, #0x1
_08075706:
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7570A, 0x2
	thumb_func_end sub_080756e8

	thumb_func_start sub_0807570c
sub_0807570c:
	ldr		r0, _08075724
	ldr		r2, _08075728
	add		r1, r0, r2
	mov		r2, #0x0
	strb	r2, [r1, #0x0]
	ldr		r3, _0807572c
	add		r1, r0, r3
	mov		r3, #0x0
	strh	r2, [r1, #0x0]
	add		r0, #0x65
	strb	r3, [r0, #0x0]
	bx		lr

_08075724:	.4byte 0x03006E20
_08075728:	.4byte 0x0000047D
_0807572c:	.4byte 0x000006FA
	thumb_func_end sub_0807570c

	thumb_func_start sub_08075730
sub_08075730:
	push	{ r4, r5, lr }
	add		r2, r0, #0x0
	lsl		r4, r1, #0x10
	lsr		r4, r4, #0x10
	ldr		r0, _0807575c
	ldr		r1, _08075760
	add		r5, r0, r1
	ldr		r1, _08075764
	add		r0, r0, r1
	ldrh	r1, [r5, #0x0]
	add		r0, r0, r1
	add		r1, r2, #0x0
	add		r2, r4, #0x0
	bl		sub_0807c304
	ldrh	r0, [r5, #0x0]
	add		r4, r4, r0
	strh	r4, [r5, #0x0]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7575A, 0x2

_0807575c:	.4byte 0x03006E20
_08075760:	.4byte 0x000006FA
_08075764:	.4byte 0x0000047D
	thumb_func_end sub_08075730

	thumb_func_start sub_08075768
sub_08075768:
	push	{ r4, lr }
	sub		sp, #0x4
	ldr		r4, _08075784
	add		r0, r4, #0x0
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	add		r3, r0, #0x0
	cmp		r3, #0x0
	beq		_08075788
	mov		r0, #0x21
	mov		r1, #0x0
	bl		sub_080753ec
	b		_080757a6

_08075784:	.4byte 0x03006E20

_08075788:
	ldr		r0, _080757b0
	str		r3, [r0, #0x0]
	add		r0, #0x1c
	strh	r3, [r0, #0x0]
	ldr		r2, _080757b4
	ldrh	r1, [r2, #0x0]
	ldr		r0, _080757b8
	and		r0, r1
	strh	r0, [r2, #0x0]
	str		r3, [sp, #0x0]
	ldr		r2, _080757bc
	mov		r0, sp
	add		r1, r4, #0x0
	bl		sub_08071b6c
_080757a6:
	add		sp, #0x4
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x757AE, 0x2

_080757b0:	.4byte Timer3Counter_Reload
_080757b4:	.4byte InterruptEnableRegister
_080757b8:	.4byte 0x0000FF3F
_080757bc:	.4byte 0x050001D9
	thumb_func_end sub_08075768

	thumb_func_start sub_080757c0
sub_080757c0:
	push	{ lr }
	bl		sub_08075358
	ldr		r2, _080757dc
	ldr		r1, [r2, #0x58]
	ldr		r0, _080757e0
	cmp		r1, r0
	beq		_080757e4
	mov		r0, #0x21
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08075876

.incbin "base.gba", 0x757DA, 0x2

_080757dc:	.4byte 0x03006E20
_080757e0:	.4byte 0x4247414D

_080757e4:
	ldrh	r1, [r2, #0x2]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_080757fc
	mov		r0, #0x21
	mov		r1, #0x0
	bl		sub_080753ec
_080757f6:
	bl		sub_0807537c
	b		_08075876
_080757fc:
	add		r0, r2, #0x0
	add		r0, #0x61
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1e
	beq		_080757f6
	add		r0, r2, #0x0
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0807581a
	ldrh	r1, [r2, #0x2]
	mov		r0, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_080757f6
_0807581a:
	ldr		r1, _08075858
	ldrh	r2, [r1, #0x2]
	ldr		r0, _0807585c
	and		r0, r2
	ldrh	r2, [r1, #0x2]
	strh	r0, [r1, #0x2]
	ldrh	r2, [r1, #0x2]
	mov		r0, #0x20
	and		r0, r2
	add		r3, r1, #0x0
	cmp		r0, #0x0
	beq		_08075860
	add		r0, r3, #0x0
	add		r0, #0x44
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x12
	bne		_08075860
	ldrh	r0, [r3, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r1, #0x0
	orr		r0, r1
	strh	r0, [r3, #0x2]
	mov		r0, #0x1e
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_08073e64
	b		_080757f6

_08075858:	.4byte 0x03006E20
_0807585c:	.4byte 0x0000FFFB

_08075860:
	ldrh	r0, [r3, #0x2]
	mov		r1, #0x1
	ldrh	r2, [r3, #0x2]
	orr		r1, r0
	strh	r1, [r3, #0x2]
	mov		r0, #0x1e
	mov		r1, #0x1
	bl		sub_0807539c
	bl		sub_0807537c
_08075876:
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7587A, 0x2
	push	{ r4, r5, r6, lr }
	ldr		r6, _08075894
	add		r2, r6, #0x0
	add		r2, #0x62
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1
	beq		_080758a6
	cmp		r0, #0x1
	bgt		_08075898
	cmp		r0, #0x0
	beq		_0807589e
	b		_0807595e

_08075894:	.4byte 0x03006E20

_08075898:
	cmp		r0, #0x2
	beq		_080758bc
	b		_0807595e
_0807589e:
	ldrb	r0, [r2, #0x0]
	add		r0, #0x1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
_080758a6:
	bl		sub_08073e90
	ldr		r0, _080758b8
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		_0807595e

_080758b8:	.4byte 0x03006E20

_080758bc:
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r6, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r6, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r6, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r6, #0xc]
	mov		r5, #0x0
	strh	r0, [r6, #0xc]
	str		r4, [r6, #0x3c]
	ldrb	r0, [r6, #0x4]
	strb	r5, [r6, #0x4]
	ldr		r0, [r6, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r6, #0x40]
	ldr		r0, [r6, #0x40]
	ldr		r1, _08075964
	and		r0, r1
	str		r0, [r6, #0x40]
	ldr		r0, [r6, #0x40]
	ldr		r1, _08075968
	and		r0, r1
	str		r0, [r6, #0x40]
	ldr		r0, [r6, #0x40]
	ldr		r1, _0807596c
	and		r0, r1
	str		r0, [r6, #0x40]
	ldr		r0, [r6, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r6, #0x40]
	ldrh	r1, [r6, #0x2]
	ldr		r0, _08075970
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x2]
	ldr		r0, _08075974
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r6, #0x2]
	and		r4, r0
	ldrh	r0, [r6, #0x2]
	strh	r4, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x2]
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x45
	ldrb	r1, [r0, #0x0]
	strb	r5, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_0807595e:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08075964:	.4byte 0xfffffdff
_08075968:	.4byte 0xfffffbff
_0807596c:	.4byte 0xffffdfff
_08075970:	.4byte 0x0000FFF7
_08075974:	.4byte 0x0000FFEF

.incbin "base.gba", 0x75978, 0xF8
	push	{ r4, lr }
	ldr		r3, _08075a90
	mov		r0, #0x62
	add		r0, r0, r3
	mov		r12, r0
	ldrb	r0, [r0, #0x0]
	add		r2, r0, #0x0
	add		r4, r3, #0x0
	cmp		r2, #0x1
	beq		_08075aaa
	cmp		r2, #0x1
	bgt		_08075a94
	cmp		r2, #0x0
	beq		_08075a9e
	b		_08075b5c

.incbin "base.gba", 0x75A8E, 0x2

_08075a90:	.4byte 0x03006E20

_08075a94:
	cmp		r2, #0x2
	beq		_08075af8
	cmp		r2, #0x3
	beq		_08075b20
	b		_08075b5c
_08075a9e:
	mov		r1, r12
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	ldrb	r1, [r1, #0x0]
	mov		r2, r12
	strb	r0, [r2, #0x0]
_08075aaa:
	ldr		r0, [r4, #0x70]
	cmp		r0, #0x23
	bne		_08075ad6
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	beq		_08075ad6
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x63
	strb	r0, [r1, #0x0]
	sub		r1, #0x1
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	ldrb	r2, [r1, #0x0]
	strb	r0, [r1, #0x0]
	b		_08075af8
_08075ad6:
	add		r0, r4, #0x0
	add		r0, #0xcc
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_08075aec
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0x3
	strb	r1, [r0, #0x0]
	b		_08075b5c
_08075aec:
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
_08075af8:
	ldr		r4, _08075b14
	ldr		r2, _08075b18
	add		r0, r4, r2
	ldrb	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_080738f8
	ldr		r0, _08075b1c
	add		r2, r4, r0
	ldrb	r0, [r2, #0x0]
	add		r0, #0x1
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	b		_08075b5c

_08075b14:	.4byte 0x03007000
_08075b18:	.4byte 0xFFFFFE83
_08075b1c:	.4byte 0xFFFFFE82

_08075b20:
	add		r0, r3, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	sub		r0, #0x87
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08075b5c:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x75B62, 0x2
	thumb_func_end sub_080757c0

	thumb_func_start sub_08075b64
sub_08075b64:
	push	{ lr }
	mov		r1, #0x1
	bl		sub_08075b7c
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x75B70, 0xC
	thumb_func_end sub_08075b64

	thumb_func_start sub_08075b7c
sub_08075b7c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	sub		sp, #0x4
	mov		r8, r0
	add		r5, r1, #0x0
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	ldr		r7, _08075c84
	ldr		r2, _08075c88
	mov		r0, sp
	add		r1, r7, #0x0
	bl		sub_08071b6c
	bl		sub_08075358
	ldr		r0, _08075c8c
	str		r0, [r7, #0x58]
	add		r0, r7, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r7, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r7, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r7, #0xc]
	mov		r6, #0x0
	strh	r0, [r7, #0xc]
	str		r4, [r7, #0x3c]
	ldrb	r0, [r7, #0x4]
	strb	r6, [r7, #0x4]
	ldr		r0, [r7, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	ldr		r1, _08075c90
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	ldr		r1, _08075c94
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	ldr		r1, _08075c98
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x40]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _08075c9c
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _08075ca0
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r7, #0x2]
	and		r4, r0
	ldrh	r0, [r7, #0x2]
	strh	r4, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	bl		sub_0807570c
	bl		sub_0807265c
	add		r0, r7, #0x0
	add		r0, #0x65
	strb	r6, [r0, #0x0]
	mov		r0, r8
	str		r0, [r7, #0x70]
	lsl		r5, r5, #0x18
	lsr		r5, r5, #0x18
	add		r0, r5, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r6
	strh	r0, [r7, #0x2]
	bl		sub_0807537c
	ldr		r2, _08075ca4
	ldr		r0, [r2, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_08075c72
	ldr		r0, [r2, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08075c76
_08075c72:
	bl		sub_0807be3c
_08075c76:
	add		sp, #0x4
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x75C82, 0x2

_08075c84:	.4byte 0x03006E20
_08075c88:	.4byte 0x050001D9
_08075c8c:	.4byte 0x4247414D
_08075c90:	.4byte 0xfffffdff
_08075c94:	.4byte 0xfffffbff
_08075c98:	.4byte 0xffffdfff
_08075c9c:	.4byte 0x0000FFF7
_08075ca0:	.4byte 0x0000FFEF
_08075ca4:	.4byte Timer3Counter_Reload
	thumb_func_end sub_08075b7c

	thumb_func_start sub_08075ca8
sub_08075ca8:
	push	{ r4, r5, lr }
	ldr		r4, _08075ce8
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08075cce
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x11
	beq		_08075cce
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
	strb	r1, [r0, #0x0]
_08075cce:
	ldr		r5, _08075ce8
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x2
	beq		_08075d0e
	cmp		r0, #0x2
	bgt		_08075cec
	cmp		r0, #0x0
	beq		_08075d00
	cmp		r0, #0x1
	beq		_08075d06
	b		_08075e8e

_08075ce8:	.4byte 0x03006E20

_08075cec:
	cmp		r0, #0xfa
	beq		_08075ddc
	cmp		r0, #0xfa
	bgt		_08075cfa
	cmp		r0, #0x3
	beq		_08075d24
	b		_08075e8e
_08075cfa:
	cmp		r0, #0xfb
	beq		_08075dea
	b		_08075e8e
_08075d00:
	bl		sub_08072c88
	b		_08075de0
_08075d06:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
_08075d0e:
	bl		sub_08072da8
	ldr		r0, _08075d20
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		_08075e8e

_08075d20:	.4byte 0x03006E20

_08075d24:
	ldr		r1, [r5, #0x70]
	ldrb	r0, [r5, #0x6]
	add		r0, #0x78
	strb	r0, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075dc8
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075dcc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075dd0
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08075dd4
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08075dd8
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08075e8e

_08075dc8:	.4byte 0xfffffdff
_08075dcc:	.4byte 0xfffffbff
_08075dd0:	.4byte 0xffffdfff
_08075dd4:	.4byte 0x0000FFF7
_08075dd8:	.4byte 0x0000FFEF

_08075ddc:
	bl		sub_08072da8
_08075de0:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08075e8e
_08075dea:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075e94
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075e98
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08075e9c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08075ea0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08075ea4
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08075e8e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08075e94:	.4byte 0xfffffdff
_08075e98:	.4byte 0xfffffbff
_08075e9c:	.4byte 0xffffdfff
_08075ea0:	.4byte 0x0000FFF7
_08075ea4:	.4byte 0x0000FFEF
	thumb_func_end sub_08075ca8

	thumb_func_start sub_08075ea8
sub_08075ea8:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	add		r4, r1, #0x0
	lsl		r2, r2, #0x10
	lsr		r5, r2, #0x10
	bl		sub_08075358
	mov		r0, #0x20
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08075ec6
	bl		sub_0807537c
	b		_08075f18
_08075ec6:
	bl		sub_0807c67c
	cmp		r0, #0x0
	bne		_08075ed2
	mov		r0, #0x21
	b		_08075ef8
_08075ed2:
	bl		sub_0807c65c
	cmp		r0, #0x0
	bne		_08075eec
	ldr		r0, _08075ee8
	add		r1, r4, #0x0
	mov		r2, #0x4
	bl		sub_0807c304
	b		_08075f04

.incbin "base.gba", 0x75EE6, 0x2

_08075ee8:	.4byte 0x03006E8A

_08075eec:
	add		r0, r4, #0x0
	bl		sub_0807c6a4
	cmp		r0, #0x0
	bne		_08075f04
	mov		r0, #0x20
_08075ef8:
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08075f18
_08075f04:
	ldr		r0, _08075f20
	str		r6, [r0, #0x70]
	str		r4, [r0, #0x74]
	str		r5, [r0, #0x78]
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_08075f18:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x75F1E, 0x2

_08075f20:	.4byte 0x03006E20
	thumb_func_end sub_08075ea8

	thumb_func_start sub_08075f24
sub_08075f24:
	push	{ r4, lr }
	ldr		r2, _08075f58
	add		r0, r2, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08075f60
	add		r0, r2, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x23
	bne		_08075f5c
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08075f60

_08075f58:	.4byte 0x03006E20

_08075f5c:
	bl		sub_08074500
_08075f60:
	ldr		r3, _08075f78
	add		r4, r3, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	add		r1, r0, #0x0
	cmp		r1, #0x1
	beq		_08075fa6
	cmp		r1, #0x1
	bgt		_08075f7c
	cmp		r1, #0x0
	beq		_08075f82
	b		_08076000

_08075f78:	.4byte 0x03006E20

_08075f7c:
	cmp		r1, #0xf0
	beq		_08075fc6
	b		_08076000
_08075f82:
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r3, r2
	strh	r1, [r0, #0x0]
	add		r1, r3, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r1, [r3, #0x74]
	ldr		r2, [r3, #0x78]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	bl		sub_08073810
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08076000
_08075fa6:
	ldr		r2, [r3, #0x70]
	mov		r0, #0xf2
	lsl		r0, r0, #0x1
	add		r1, r3, r0
	ldr		r0, [r1, #0x0]
	ldrb	r0, [r0, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r0, [r1, #0x0]
	ldrb	r0, [r0, #0x0]
	bl		sub_0807c5b8
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08076000
_08075fc6:
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	strh	r0, [r3, #0x2]
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r0, r2, #0x0
	ldrh	r2, [r3, #0x2]
	orr		r0, r1
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r3, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08076000:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x76006, 0x5E
	push	{ r4, r5, lr }
	ldr		r1, _08076094
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08076080
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x24
	beq		_08076080
	bl		sub_08074500
_08076080:
	ldr		r4, _08076094
	add		r5, r4, #0x0
	add		r5, #0x62
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_08076098
	cmp		r0, #0x1
	beq		_080760b2
	b		_080760f4

.incbin "base.gba", 0x76092, 0x2

_08076094:	.4byte 0x03006E20

_08076098:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldr		r1, [r4, #0x70]
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	bl		sub_080738f8
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
	b		_080760f4
_080760b2:
	ldr		r0, [r4, #0x70]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_0807c5e8
	add		r1, r4, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	mov		r2, #0x0
	strh	r0, [r4, #0x2]
	ldrh	r0, [r4, #0x2]
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r1, r3, #0x0
	orr		r0, r1
	ldrh	r1, [r4, #0x2]
	orr		r0, r2
	strh	r0, [r4, #0x2]
	add		r0, r4, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_080760f4:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x760FA, 0x82
	push	{ r4, r5, lr }
	ldr		r4, _080761b0
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_080761b8
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_080761b4
	bl		sub_08074500
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	ldr		r0, [r4, #0x70]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_0807c5e8
	b		_080761b8

.incbin "base.gba", 0x761AE, 0x2

_080761b0:	.4byte 0x03006E20

_080761b4:
	bl		sub_08074500
_080761b8:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	cmp		r1, #0x0
	beq		_080761ea
	ldr		r2, _08076200
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x23
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	ldr		r0, [r2, #0x70]
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	bl		sub_0807c5e8
_080761ea:
	ldr		r5, _08076200
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x1
	beq		_0807622c
	cmp		r0, #0x1
	bgt		_08076204
	cmp		r0, #0x0
	beq		_0807620a
	b		_0807626e

_08076200:	.4byte 0x03006E20

_08076204:
	cmp		r0, #0xf0
	beq		_08076256
	b		_0807626e
_0807620a:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r1, [r5, #0x74]
	ldr		r2, [r5, #0x78]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	ldr		r3, [r5, #0x70]
	lsl		r3, r3, #0x18
	lsr		r3, r3, #0x18
	bl		sub_08073020
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_0807626e
_0807622c:
	ldr		r0, [r5, #0x74]
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	sub		r2, #0x4
	add		r4, r5, r2
	ldrh	r2, [r4, #0x0]
	sub		r2, #0x1
	bl		sub_0807c304
	ldr		r1, [r5, #0x7c]
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x1
	strb	r0, [r1, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_0807626e
_08076256:
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_0807626e:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08075f24

	thumb_func_start sub_08076274
sub_08076274:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	bl		sub_08075358
	mov		r0, #0x23
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807628e
	bl		sub_0807537c
	b		_080762b8
_0807628e:
	add		r0, r4, #0x0
	bl		sub_0807c054
	cmp		r0, #0xff
	ble		_080762a6
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_080762b8
_080762a6:
	ldr		r0, _080762c0
	str		r5, [r0, #0x70]
	str		r4, [r0, #0x74]
	mov		r0, #0x23
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_080762b8:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x762BE, 0x2

_080762c0:	.4byte 0x03006E20
	thumb_func_end sub_08076274

	thumb_func_start sub_080762c4
sub_080762c4:
	push	{ r4, lr }
	ldr		r2, _080762f8
	add		r0, r2, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08076300
	add		r0, r2, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x28
	bne		_080762fc
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08076300

_080762f8:	.4byte 0x03006E20

_080762fc:
	bl		sub_08074500
_08076300:
	ldr		r2, _08076318
	add		r4, r2, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	add		r1, r0, #0x0
	cmp		r1, #0x1
	beq		_08076340
	cmp		r1, #0x1
	bgt		_0807631c
	cmp		r1, #0x0
	beq		_08076322
	b		_08076372

_08076318:	.4byte 0x03006E20

_0807631c:
	cmp		r1, #0xf0
	beq		_0807635a
	b		_08076372
_08076322:
	mov		r3, #0xf0
	lsl		r3, r3, #0x1
	add		r0, r2, r3
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r1, [r2, #0x74]
	bl		sub_08073b18
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08076372
_08076340:
	ldr		r0, [r2, #0x70]
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r1, r2, r3
	ldr		r1, [r1, #0x0]
	mov		r2, #0x4
	bl		sub_0807c304
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08076372
_0807635a:
	add		r0, r2, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08076372:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080762c4

	thumb_func_start sub_08076378
sub_08076378:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x24
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08076390
	bl		sub_0807537c
	b		_080763c0
_08076390:
	ldr		r4, _080763c8
	add		r0, r4, #0x0
	add		r0, #0xce
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xcf
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x1]
	add		r0, r4, #0x0
	add		r0, #0xd0
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x2]
	add		r0, r4, #0x0
	add		r0, #0xd1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r5, #0x3]
	bl		sub_0807537c
	ldrh	r1, [r4, #0x2]
	ldr		r0, _080763cc
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
_080763c0:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x763C6, 0x2

_080763c8:	.4byte 0x03006E20
_080763cc:	.4byte 0x0000FFFE
	thumb_func_end sub_08076378

	thumb_func_start sub_080763d0
sub_080763d0:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	ldr		r1, _0807641c
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
	ldr		r2, _08076420
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	add		r6, r1, #0x0
	ldr		r7, _08076424
	add		r4, r6, #0x0
	add		r3, r2, #0x0
_080763e8:
	ldr		r0, [r3, #0x0]
	add		r2, r5, r0
	ldrh	r1, [r4, #0x0]
	ldrb	r2, [r2, #0x0]
	add		r1, r1, r2
	strh	r1, [r4, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0xbd
	ble		_080763e8
	add		r0, r5, #0x0
	add		r0, #0xbe
	ldrb	r0, [r0, #0x0]
	lsl		r0, r0, #0x8
	add		r1, r5, #0x0
	add		r1, #0xbf
	ldrb	r1, [r1, #0x0]
	add		r1, r1, r0
	strh	r1, [r7, #0x0]
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	ldrh	r6, [r6, #0x0]
	cmp		r1, r6
	beq		_08076428
	mov		r0, #0x0
	b		_0807642a

_0807641c:	.4byte 0x0300243A
_08076420:	.4byte 0x0300243C
_08076424:	.4byte 0x03002438

_08076428:
	mov		r0, #0x1
_0807642a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_080763d0

	thumb_func_start sub_08076430
sub_08076430:
	add		r1, r0, #0x0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x4d
	bne		_08076442
	ldrb	r0, [r1, #0x1]
	cmp		r0, #0x41
	bne		_08076442
	mov		r0, #0x1
	b		_08076444
_08076442:
	mov		r0, #0x0
_08076444:
	bx		lr

.incbin "base.gba", 0x76446, 0x2
	thumb_func_end sub_08076430

	thumb_func_start sub_08076448
sub_08076448:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	mov		r8, r2
	bl		sub_08075358
	mov		r0, #0x3
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08076468
	bl		sub_0807537c
	b		_080764f0
_08076468:
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r6, r0, #0x0
	add		r0, r7, #0x0
	bl		sub_0807c054
	add		r4, r0, #0x0
	mov		r0, r8
	bl		sub_0807c054
	cmp		r6, #0x14
	bgt		_080764a0
	cmp		r4, #0x20
	bgt		_080764a0
	cmp		r0, #0x10
	bgt		_080764a0
	cmp		r6, #0x0
	beq		_080764a0
	cmp		r4, #0x0
	beq		_080764a0
	cmp		r0, #0x0
	beq		_080764a0
	add		r0, r5, #0x0
	bl		sub_0807c540
	cmp		r0, #0x0
	bne		_080764ae
_080764a0:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_080764f0
_080764ae:
	ldr		r4, _080764fc
	str		r5, [r4, #0x70]
	str		r7, [r4, #0x74]
	mov		r0, r8
	str		r0, [r4, #0x78]
	ldr		r5, _08076500
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	mov		r0, #0x3
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x1
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	bl		sub_0807537c
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_080764ec
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_080764f0
_080764ec:
	bl		sub_0807be3c
_080764f0:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x764FA, 0x2

_080764fc:	.4byte 0x03006E20
_08076500:	.4byte Timer3Counter_Reload
	thumb_func_end sub_08076448

	thumb_func_start sub_08076504
sub_08076504:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x4
	ldr		r1, _0807652c
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_080765e2
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	sub		r0, #0x11
	cmp		r0, #0x10
	bhi		_080765d4
	lsl		r0, r0, #0x2
	ldr		r1, _08076530
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

.incbin "base.gba", 0x7652A, 0x2

_0807652c:	.4byte 0x03006E20
_08076530:	.4byte 0x08076534

.incbin "base.gba", 0x76534, 0x44
	thumb_func_end sub_08076504


.incbin "base.gba", 0x76578, 0x5C

_080765d4:

.incbin "base.gba", 0x765D4, 0xE
_080765e2:

.incbin "base.gba", 0x765E2, 0xE
_080765f0:

.incbin "base.gba", 0x765F0, 0x18
_08076608:	.4byte 0x03006E20

_0807660c:

.incbin "base.gba", 0x7660C, 0x20
_0807662c:

.incbin "base.gba", 0x7662C, 0x6
_08076632:

.incbin "base.gba", 0x76632, 0xA
_0807663c:

.incbin "base.gba", 0x7663C, 0x6
_08076642:

.incbin "base.gba", 0x76642, 0x2
_08076644:

.incbin "base.gba", 0x76644, 0x6
_0807664a:

.incbin "base.gba", 0x7664A, 0xA
_08076654:

.incbin "base.gba", 0x76654, 0x2
_08076656:

.incbin "base.gba", 0x76656, 0x6
_0807665c:

.incbin "base.gba", 0x7665C, 0x2
_0807665e:

.incbin "base.gba", 0x7665E, 0x6
_08076664:

.incbin "base.gba", 0x76664, 0x10
_08076674:

.incbin "base.gba", 0x76674, 0x16
_0807668a:

.incbin "base.gba", 0x7668A, 0x22
_080766ac:

.incbin "base.gba", 0x766AC, 0x8
_080766b4:

.incbin "base.gba", 0x766B4, 0x16
_080766ca:

.incbin "base.gba", 0x766CA, 0x2E
_080766f8:	.4byte 0x0000047D

_080766fc:

.incbin "base.gba", 0x766FC, 0x28
_08076724:

.incbin "base.gba", 0x76724, 0x10
_08076734:	.4byte 0x000004FD
_08076738:	.4byte 0x0000047D

_0807673c:

.incbin "base.gba", 0x7673C, 0xA
_08076746:

.incbin "base.gba", 0x76746, 0x22
_08076768:	.4byte 0x00000481
_0807676c:	.4byte 0x000004C7

_08076770:

.incbin "base.gba", 0x76770, 0x12
_08076782:

.incbin "base.gba", 0x76782, 0x28
_080767aa:

.incbin "base.gba", 0x767AA, 0x50
_080767fa:

.incbin "base.gba", 0x767FA, 0x6
_08076800:

.incbin "base.gba", 0x76800, 0x4
_08076804:

.incbin "base.gba", 0x76804, 0xA
_0807680e:

.incbin "base.gba", 0x7680E, 0xA4
_080768b2:

.incbin "base.gba", 0x768B2, 0xA
_080768bc:	.4byte 0xfffffdff
_080768c0:	.4byte 0xfffffbff
_080768c4:	.4byte 0xffffdfff
_080768c8:	.4byte 0x0000FFF7
_080768cc:	.4byte 0x0000FFEF
	thumb_func_start sub_080768d0
sub_080768d0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x4
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_080768e8
	bl		sub_0807537c
	b		_08076936
_080768e8:
	add		r0, r4, #0x0
	bl		sub_0807c054
	cmp		r0, #0x14
	bgt		_080768f6
	cmp		r0, #0x0
	bne		_08076904
_080768f6:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08076936
_08076904:
	ldr		r0, _0807693c
	str		r4, [r0, #0x70]
	ldr		r4, _08076940
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	mov		r0, #0x4
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_08076932
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_08076936
_08076932:
	bl		sub_0807be3c
_08076936:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0807693c:	.4byte 0x03006E20
_08076940:	.4byte Timer3Counter_Reload
	thumb_func_end sub_080768d0

	thumb_func_start sub_08076944
sub_08076944:
	push	{ r4, r5, lr }
	ldr		r1, _08076968
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08076996
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x12
	beq		_08076974
	cmp		r0, #0x12
	bgt		_0807696c
	cmp		r0, #0x11
	beq		_08076996
	b		_08076988

.incbin "base.gba", 0x76966, 0x2

_08076968:	.4byte 0x03006E20

_0807696c:
	cmp		r0, #0x19
	bgt		_08076988
	cmp		r0, #0x17
	blt		_08076988
_08076974:
	bl		sub_08074500
	ldr		r0, _08076984
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_08076994

.incbin "base.gba", 0x76982, 0x2

_08076984:	.4byte 0x03006E20

_08076988:
	bl		sub_08074500
	ldr		r0, _080769b4
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_08076994:
	strb	r1, [r0, #0x0]
_08076996:
	ldr		r5, _080769b4
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3
	beq		_080769f8
	cmp		r0, #0x3
	bgt		_080769b8
	cmp		r0, #0x1
	beq		_080769d2
	cmp		r0, #0x1
	bgt		_080769e2
	cmp		r0, #0x0
	beq		_080769cc
	b		_08076b22

_080769b4:	.4byte 0x03006E20

_080769b8:
	cmp		r0, #0xfa
	beq		_08076a70
	cmp		r0, #0xfa
	bgt		_080769c6
	cmp		r0, #0x4
	beq		_08076a30
	b		_08076b22
_080769c6:
	cmp		r0, #0xfb
	beq		_08076a7e
	b		_08076b22
_080769cc:
	bl		sub_08072c88
	b		_08076a74
_080769d2:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_080733b8
	b		_08076b22
_080769e2:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x54
	str		r1, [r0, #0x4]
	bl		sub_0807327c
	b		_08076a74
_080769f8:
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xff
	bne		_08076a1e
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x11
	strb	r0, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	ldrb	r0, [r4, #0x0]
	mov		r0, #0xfa
	strb	r0, [r4, #0x0]
	b		_08076b22
_08076a1e:
	ldrb	r0, [r5, #0x6]
	bl		sub_08072bcc
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	ldr		r1, [r5, #0x70]
	bl		sub_08072e34
	b		_08076a74
_08076a30:
	ldr		r0, [r5, #0x40]
	mov		r2, #0x80
	lsl		r2, r2, #0x2
	orr		r0, r2
	str		r0, [r5, #0x40]
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r3, #0x0
	mov		r0, #0x7
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	orr		r2, r0
	strh	r2, [r5, #0x2]
	str		r3, [r5, #0x70]
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	strh	r3, [r0, #0x0]
	bl		sub_0807570c
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08076b22
_08076a70:
	bl		sub_08072da8
_08076a74:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08076b22
_08076a7e:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076b28
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076b2c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076b30
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076b34
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076b38
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x5e
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08076b22:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_08076b28:	.4byte 0xfffffdff
_08076b2c:	.4byte 0xfffffbff
_08076b30:	.4byte 0xffffdfff
_08076b34:	.4byte 0x0000FFF7
_08076b38:	.4byte 0x0000FFEF

.incbin "base.gba", 0x76B3C, 0x50
	push	{ r4, r5, lr }
	ldr		r4, _08076bb0
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08076bf0
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x14
	beq		_08076bca
	cmp		r0, #0x14
	bgt		_08076bb4
	cmp		r0, #0x11
	beq		_08076bf0
	b		_08076be2

.incbin "base.gba", 0x76BAE, 0x2

_08076bb0:	.4byte 0x03006E20

_08076bb4:
	cmp		r0, #0x19
	bgt		_08076be2
	cmp		r0, #0x18
	blt		_08076be2
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_08076bee
_08076bca:
	add		r0, r4, #0x0
	add		r0, #0x51
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08076bf0
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_08076bee
_08076be2:
	bl		sub_08074500
	ldr		r0, _08076c10
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_08076bee:
	strb	r1, [r0, #0x0]
_08076bf0:
	ldr		r5, _08076c10
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3
	beq		_08076c44
	cmp		r0, #0x3
	bgt		_08076c14
	cmp		r0, #0x1
	beq		_08076c2e
	cmp		r0, #0x1
	bgt		_08076c3e
	cmp		r0, #0x0
	beq		_08076c28
	b		_08076d4c

.incbin "base.gba", 0x76C0E, 0x2

_08076c10:	.4byte 0x03006E20

_08076c14:
	cmp		r0, #0xfa
	beq		_08076c9a
	cmp		r0, #0xfa
	bgt		_08076c22
	cmp		r0, #0x4
	beq		_08076c54
	b		_08076d4c
_08076c22:
	cmp		r0, #0xfb
	beq		_08076ca8
	b		_08076d4c
_08076c28:
	bl		sub_08072c88
	b		_08076c9e
_08076c2e:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_080733b8
	b		_08076d4c
_08076c3e:
	bl		sub_08072f94
	b		_08076c9e
_08076c44:
	add		r0, r5, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x94
	beq		_08076c9e
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x1
	b		_08076ca2
_08076c54:
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	orr		r0, r1
	str		r0, [r5, #0x40]
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r2, #0x0
	mov		r0, #0x8
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r3, #0xc0
	lsl		r3, r3, #0x2
	add		r0, r3, #0x0
	ldrh	r3, [r5, #0x2]
	orr		r0, r1
	strh	r0, [r5, #0x2]
	str		r2, [r5, #0x70]
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	strh	r2, [r0, #0x0]
	bl		sub_0807570c
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08076d4c
_08076c9a:
	bl		sub_08072da8
_08076c9e:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
_08076ca2:
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08076d4c
_08076ca8:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076d54
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076d58
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076d5c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076d60
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076d64
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x5e
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08076d4c:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x76D52, 0x2

_08076d54:	.4byte 0xfffffdff
_08076d58:	.4byte 0xfffffbff
_08076d5c:	.4byte 0xffffdfff
_08076d60:	.4byte 0x0000FFF7
_08076d64:	.4byte 0x0000FFEF
	thumb_func_end sub_08076944

	thumb_func_start sub_08076d68
sub_08076d68:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r5, r2, #0x0
	lsl		r1, r1, #0x18
	lsr		r4, r1, #0x18
	add		r6, r4, #0x0
	bl		sub_08075358
	mov		r0, #0x0
	strb	r0, [r5, #0x0]
	mov		r0, #0x6
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08076d8c
	bl		sub_0807537c
	b		_08076dde
_08076d8c:
	sub		r0, r4, #0x1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_08076da2
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08076dde
_08076da2:
	ldr		r2, _08076dc4
	ldrh	r1, [r2, #0x2]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08076dcc
	mov		r0, #0x1
	strb	r0, [r5, #0x0]
	ldrh	r1, [r2, #0x2]
	ldr		r0, _08076dc8
	and		r0, r1
	ldrh	r1, [r2, #0x2]
	strh	r0, [r2, #0x2]
	bl		sub_0807537c
	b		_08076dde

.incbin "base.gba", 0x76DC2, 0x2

_08076dc4:	.4byte 0x03006E20
_08076dc8:	.4byte 0x0000FFFE

_08076dcc:
	str		r7, [r2, #0x70]
	str		r6, [r2, #0x74]
	ldr		r0, [r2, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x6
	orr		r0, r1
	str		r0, [r2, #0x40]
	bl		sub_0807537c
_08076dde:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08076d68

	thumb_func_start sub_08076de4
sub_08076de4:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	add		r7, r1, #0x0
	bl		sub_08075358
	mov		r0, #0x7
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08076dfe
	bl		sub_0807537c
	b		_08076ec4
_08076dfe:
	ldr		r6, _08076e18
	ldrh	r1, [r6, #0x2]
	mov		r0, #0x8
	and		r0, r1
	cmp		r0, #0x0
	bne		_08076e1c
	mov		r0, #0x21
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08076ec4

_08076e18:	.4byte 0x03006E20

_08076e1c:
	ldr		r0, _08076e9c
	add		r1, r6, r0
	sub		r0, #0x1
	add		r5, r6, r0
	ldrb	r2, [r5, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c304
	ldrb	r0, [r5, #0x0]
	strb	r0, [r7, #0x0]
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r3, #0x0
	ldr		r0, _08076ea0
	add		r1, r6, r0
	ldrh	r0, [r1, #0x0]
	sub		r0, r0, r4
	cmp		r3, r0
	bge		_08076e5c
	add		r6, r1, #0x0
	add		r2, r4, r5
_08076e4a:
	add		r1, r3, r5
	ldrb	r0, [r2, #0x0]
	strb	r0, [r1, #0x0]
	add		r2, #0x1
	add		r3, #0x1
	ldrh	r0, [r6, #0x0]
	sub		r0, r0, r4
	cmp		r3, r0
	blt		_08076e4a
_08076e5c:
	ldr		r1, _08076ea4
	ldr		r0, _08076ea0
	add		r5, r1, r0
	ldrh	r0, [r5, #0x0]
	sub		r0, r0, r4
	strh	r0, [r5, #0x0]
	lsl		r0, r0, #0x10
	add		r2, r1, #0x0
	cmp		r0, #0x0
	beq		_08076eac
	ldr		r0, _08076ea8
	add		r3, r2, r0
	ldrb	r0, [r3, #0x0]
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_08076e82
	mov		r0, #0x80
	strb	r0, [r3, #0x0]
_08076e82:
	ldrh	r1, [r5, #0x0]
	ldrb	r0, [r3, #0x0]
	add		r0, #0x1
	cmp		r1, r0
	blt		_08076eac
	ldrh	r0, [r2, #0x2]
	mov		r1, #0x8
	orr		r0, r1
	ldrh	r1, [r2, #0x2]
	mov		r1, #0x0
	orr		r0, r1
	strh	r0, [r2, #0x2]
	b		_08076eb6

_08076e9c:	.4byte 0x0000047E
_08076ea0:	.4byte 0x000006FA
_08076ea4:	.4byte 0x03006E20
_08076ea8:	.4byte 0x0000047D

_08076eac:
	ldrh	r0, [r2, #0x2]
	ldr		r1, _08076ecc
	and		r1, r0
	ldrh	r0, [r2, #0x2]
	strh	r1, [r2, #0x2]
_08076eb6:
	ldrh	r0, [r2, #0x2]
	ldr		r1, _08076ed0
	and		r1, r0
	ldrh	r0, [r2, #0x2]
	strh	r1, [r2, #0x2]
	bl		sub_0807537c
_08076ec4:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x76ECA, 0x2

_08076ecc:	.4byte 0x0000FFF7
_08076ed0:	.4byte 0x0000FFFE
	thumb_func_end sub_08076de4

	thumb_func_start sub_08076ed4
sub_08076ed4:
	push	{ r4, r5, r6, r7, lr }
	ldr		r2, _08076fb8
	ldr		r0, [r2, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x3
	and		r0, r1
	add		r5, r2, #0x0
	cmp		r0, #0x0
	beq		_08076f00
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076fbc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076fc0
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076fc4
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
_08076f00:
	add		r0, r5, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08076fd4
	add		r0, r5, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08076fd4
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076fc8
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076fbc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08076fc0
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076fcc
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08076fd0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x23
	mov		r1, #0x0
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08077028

_08076fb8:	.4byte 0x03006E20
_08076fbc:	.4byte 0xfffffbff
_08076fc0:	.4byte 0xffffdfff
_08076fc4:	.4byte 0x0000FFFE
_08076fc8:	.4byte 0xfffffdff
_08076fcc:	.4byte 0x0000FFF7
_08076fd0:	.4byte 0x0000FFEF

_08076fd4:
	add		r6, r5, #0x0
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r7, r6, r0
	ldrh	r1, [r7, #0x0]
	cmp		r1, #0x1
	bls		_08077028
	add		r0, #0x4
	add		r4, r6, r0
	ldr		r0, [r4, #0x0]
	add		r0, #0x1
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	strh	r0, [r7, #0x0]
	ldr		r1, _08077030
	add		r4, r6, r1
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bge		_0807700c
	mov		r0, #0x80
	strb	r0, [r4, #0x0]
_0807700c:
	ldr		r1, _08077034
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	cmp		r1, r0
	blt		_08077028
	ldrh	r0, [r5, #0x2]
	mov		r1, #0x8
	orr		r0, r1
	ldrh	r1, [r5, #0x2]
	mov		r1, #0x0
	orr		r0, r1
	strh	r0, [r5, #0x2]
_08077028:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7702E, 0x2

_08077030:	.4byte 0x0000047D
_08077034:	.4byte 0x000006FA

.incbin "base.gba", 0x77038, 0xA8
	push	{ r4, r5, lr }
	ldr		r4, _08077110
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807712c
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x11
	beq		_0807712c
	cmp		r0, #0x17
	bne		_0807711e
	bl		sub_08074500
	ldr		r0, [r4, #0x74]
	cmp		r0, #0x1
	bne		_08077114
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_0807712a

_08077110:	.4byte 0x03006E20

_08077114:
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfc
	b		_0807712a
_0807711e:
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_0807712a:
	strb	r1, [r0, #0x0]
_0807712c:
	ldr		r5, _0807714c
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3
	bne		_0807713a
	b		_08077264
_0807713a:
	cmp		r0, #0x3
	bgt		_08077150
	cmp		r0, #0x1
	beq		_08077174
	cmp		r0, #0x1
	bgt		_0807718a
	cmp		r0, #0x0
	beq		_0807716e
	b		_08077344

_0807714c:	.4byte 0x03006E20

_08077150:
	cmp		r0, #0xfa
	bne		_08077156
	b		_08077264
_08077156:
	cmp		r0, #0xfa
	bgt		_08077160
	cmp		r0, #0x4
	beq		_080771c0
	b		_08077344
_08077160:
	cmp		r0, #0xfb
	bne		_08077166
	b		_08077272
_08077166:
	cmp		r0, #0xfc
	bne		_0807716c
	b		_0807732c
_0807716c:
	b		_08077344
_0807716e:
	bl		sub_08072c88
	b		_08077268
_08077174:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x54
	str		r1, [r0, #0x4]
	bl		sub_0807327c
	b		_08077268
_0807718a:
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	bl		sub_0807427c
	ldr		r1, [r5, #0x70]
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x56
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xef
	bls		_080771b0
	ldr		r0, [r5, #0x70]
	ldrb	r1, [r0, #0x0]
	mov		r2, #0x80
	orr		r1, r2
	strb	r1, [r0, #0x0]
_080771b0:
	ldr		r0, [r5, #0x74]
	cmp		r0, #0x1
	beq		_080771b8
	b		_0807730e
_080771b8:
	ldrb	r0, [r4, #0x0]
	mov		r0, #0x3
	strb	r0, [r4, #0x0]
	b		_08077344
_080771c0:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08077250
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08077254
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08077258
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807725c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08077260
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	b		_0807730e

.incbin "base.gba", 0x7724E, 0x2

_08077250:	.4byte 0xfffffdff
_08077254:	.4byte 0xfffffbff
_08077258:	.4byte 0xffffdfff
_0807725c:	.4byte 0x0000FFF7
_08077260:	.4byte 0x0000FFEF

_08077264:
	bl		sub_08072da8
_08077268:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08077344
_08077272:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08077318
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807731c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _08077320
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08077324
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _08077328
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
_0807730e:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08077344

_08077318:	.4byte 0xfffffdff
_0807731c:	.4byte 0xfffffbff
_08077320:	.4byte 0xffffdfff
_08077324:	.4byte 0x0000FFF7
_08077328:	.4byte 0x0000FFEF

_0807732c:
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_08077344:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7734A, 0x2
	thumb_func_end sub_08076ed4

	thumb_func_start sub_0807734c
sub_0807734c:
	push	{ r4, lr }
	bl		sub_08075358
	ldr		r0, _08077370
	add		r4, r0, #0x0
	add		r4, #0x5c
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	beq		_08077368
	mov		r0, #0xa
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08077374
_08077368:
	bl		sub_0807537c
	b		_080773ac

.incbin "base.gba", 0x7736E, 0x2

_08077370:	.4byte 0x03006E20

_08077374:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x7
	beq		_08077380
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x8
	bne		_0807738a
_08077380:
	mov		r0, #0xa
	mov		r1, #0x1
	bl		sub_0807539c
	b		_080773a8
_0807738a:
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x4
	beq		_08077396
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x5
	bne		_080773a0
_08077396:
	mov		r0, #0xa
	mov		r1, #0x64
	bl		sub_0807539c
	b		_080773a8
_080773a0:
	mov		r0, #0xa
	mov		r1, #0x0
	bl		sub_0807539c
_080773a8:
	bl		sub_0807537c
_080773ac:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x773B2, 0x2
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r1, _080773f8
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	add		r3, r1, #0x0
	cmp		r0, #0xee
	bne		_080773da
	add		r0, r3, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_080773da
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
_080773da:
	add		r7, r3, #0x0
	add		r6, r7, #0x0
	add		r6, #0x62
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x3
	beq		_08077450
	cmp		r0, #0x3
	bgt		_080773fc
	cmp		r0, #0x1
	beq		_08077444
	cmp		r0, #0x1
	bgt		_0807744a
	cmp		r0, #0x0
	beq		_0807741c
	b		_08077610

_080773f8:	.4byte 0x03006E20

_080773fc:
	cmp		r0, #0x65
	bne		_08077402
	b		_08077558
_08077402:
	cmp		r0, #0x65
	bgt		_0807740e
	cmp		r0, #0x64
	bne		_0807740c
	b		_08077514
_0807740c:
	b		_08077610
_0807740e:
	cmp		r0, #0x66
	bne		_08077414
	b		_080775b8
_08077414:
	cmp		r0, #0x67
	bne		_0807741a
	b		_080775dc
_0807741a:
	b		_08077610
_0807741c:
	add		r1, r7, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x7
	beq		_08077430
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x8
	beq		_08077430
	bl		sub_08073784
_08077430:
	ldr		r0, _08077440
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		_08077610

.incbin "base.gba", 0x7743E, 0x2

_08077440:	.4byte 0x03006E20

_08077444:
	bl		sub_08072f08
	b		_080775d2
_0807744a:
	bl		sub_08072da8
	b		_080775d2
_08077450:
	ldrh	r1, [r7, #0x2]
	ldr		r4, _08077500
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	mov		r5, #0x0
	mov		r1, #0x0
	mov		r8, r1
	strh	r0, [r7, #0x2]
	ldr		r0, [r7, #0x40]
	ldr		r6, _08077504
	and		r0, r6
	str		r0, [r7, #0x40]
	add		r0, r7, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	strb	r5, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r7, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r7, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r7, #0xc]
	strh	r0, [r7, #0xc]
	mov		r2, r8
	str		r2, [r7, #0x3c]
	ldrb	r0, [r7, #0x4]
	strb	r5, [r7, #0x4]
	ldr		r0, [r7, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	and		r0, r6
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	ldr		r1, _08077508
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	ldr		r1, _0807750c
	and		r0, r1
	str		r0, [r7, #0x40]
	ldr		r0, [r7, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r7, #0x40]
	ldrh	r0, [r7, #0x2]
	and		r4, r0
	ldrh	r0, [r7, #0x2]
	strh	r4, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _08077510
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r7, #0x2]
	and		r4, r0
	ldrh	r0, [r7, #0x2]
	strh	r4, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	mov		r0, #0x0
	bl		sub_08072b58
	b		_08077610

_08077500:	.4byte 0x0000FFF7
_08077504:	.4byte 0xfffffdff
_08077508:	.4byte 0xfffffbff
_0807750c:	.4byte 0xffffdfff
_08077510:	.4byte 0x0000FFEF

_08077514:
	bl		sub_0807570c
	mov		r4, #0xdc
	lsl		r4, r4, #0x2
	add		r5, r7, r4
	ldr		r1, _08077554
	add		r0, r5, #0x0
	bl		sub_0807c088
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r4, r7, r0
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r7, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_080775d2

.incbin "base.gba", 0x77552, 0x2

_08077554:	.4byte 0x0820bcd4 @ "QUIT"

_08077558:
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r4, r7, r2
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r1, _080775a0
	add		r0, r7, r1
	ldr		r2, _080775a4
	add		r1, r7, r2
	ldrh	r1, [r1, #0x0]
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_080775a8
	strh	r0, [r4, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08077610

.incbin "base.gba", 0x7759E, 0x2

_080775a0:	.4byte 0x0000047D
_080775a4:	.4byte 0x000006FA

_080775a8:
	ldrb	r0, [r7, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r7, #0x0
	add		r1, #0x2c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r7, #0x70]
	b		_080775d2
_080775b8:
	ldr		r0, [r7, #0x70]
	sub		r0, #0x1
	str		r0, [r7, #0x70]
	cmp		r0, #0x0
	bne		_08077610
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r7, r4
	add		r1, r7, #0x0
	add		r1, #0x63
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_080775d2:
	ldrb	r0, [r6, #0x0]
	add		r0, #0x1
	ldrb	r1, [r6, #0x0]
	strb	r0, [r6, #0x0]
	b		_08077610
_080775dc:
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	ldrb	r0, [r6, #0x0]
	strb	r2, [r6, #0x0]
_08077610:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7761A, 0x2
	thumb_func_end sub_0807734c

	thumb_func_start sub_0807761c
sub_0807761c:
	add		r1, r0, #0x0
	ldrb	r0, [r1, #0x0]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_08077646
	ldrb	r0, [r1, #0x1]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_08077646
	ldrb	r0, [r1, #0x2]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_08077646
	mov		r0, #0x0
	b		_08077648
_08077646:
	mov		r0, #0x1
_08077648:
	bx		lr

.incbin "base.gba", 0x7764A, 0x2
	thumb_func_end sub_0807761c

	thumb_func_start sub_0807764c
sub_0807764c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	bl		sub_08075358
	mov		r0, #0xb
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08077664
	bl		sub_0807537c
	b		_0807769a
_08077664:
	add		r0, r5, #0x0
	bl		sub_0807c054
	cmp		r0, #0x1e
	bgt		_08077672
	cmp		r0, #0x0
	bne		_08077680
_08077672:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_0807769a
_08077680:
	ldr		r4, _080776a0
	add		r0, r4, #0x0
	bl		sub_0807be14
	ldr		r0, _080776a4
	add		r4, r4, r0
	str		r5, [r4, #0x70]
	mov		r0, #0xb
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_0807769a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_080776a0:	.4byte 0x03007190
_080776a4:	.4byte 0xFFFFFC90
	thumb_func_end sub_0807764c

	thumb_func_start sub_080776a8
sub_080776a8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r2, _080776d0
	add		r0, r2, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807772a
	add		r0, r2, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x23
	beq		_080776fa
	cmp		r0, #0x23
	bgt		_080776d4
	cmp		r0, #0x15
	beq		_080776de
	b		_0807771c

.incbin "base.gba", 0x776CE, 0x2

_080776d0:	.4byte 0x03006E20

_080776d4:
	cmp		r0, #0x24
	beq		_0807772a
	cmp		r0, #0x28
	beq		_080776fa
	b		_0807771c
_080776de:
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_0807772a
_080776fa:
	ldr		r2, _08077718
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf1
	strb	r0, [r1, #0x0]
	b		_0807772a

_08077718:	.4byte 0x03006E20

_0807771c:
	bl		sub_08074500
	ldr		r0, _08077778
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_0807772a:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r6, r1, #0x10
	cmp		r6, #0x0
	beq		_0807777c
	ldr		r3, _08077778
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x30
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08077a80

.incbin "base.gba", 0x77776, 0x2

_08077778:	.4byte 0x03006E20

_0807777c:
	ldr		r5, _0807779c
	add		r7, r5, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x3
	beq		_08077836
	cmp		r0, #0x3
	bgt		_080777a0
	cmp		r0, #0x1
	beq		_080777d4
	cmp		r0, #0x1
	bgt		_08077800
	cmp		r0, #0x0
	beq		_080777ba
	b		_08077aee

.incbin "base.gba", 0x7779A, 0x2

_0807779c:	.4byte 0x03006E20

_080777a0:
	cmp		r0, #0x5
	bne		_080777a6
	b		_08077a5e
_080777a6:
	cmp		r0, #0x5
	bge		_080777ac
	b		_0807798e
_080777ac:
	cmp		r0, #0xf0
	bne		_080777b2
	b		_08077a8a
_080777b2:
	cmp		r0, #0xf1
	bne		_080777b8
	b		_08077aaa
_080777b8:
	b		_08077aee
_080777ba:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	strh	r6, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r2, #0xdc
	lsl		r2, r2, #0x2
	add		r1, r5, r2
	bl		sub_08073b18
	b		_08077aa0
_080777d4:
	add		r4, r5, #0x0
	add		r4, #0x6a
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0x4
	bl		sub_0807c304
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	strh	r6, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	add		r1, r4, #0x0
	mov		r2, #0x19
	bl		sub_08073810
	b		_08077aa0
_08077800:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	add		r4, r5, #0x0
	add		r4, #0x63
	strb	r0, [r4, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xcc
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	bl		sub_0807570c
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	strh	r6, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldrb	r3, [r4, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08077aa0
_08077836:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r4, r4, r5
	mov		r8, r4
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r0, _0807793c
	add		r4, r5, r0
	ldr		r1, _08077940
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_0807786a
	b		_080779c0
_0807786a:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _08077944
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807787a
	b		_08077a48
_0807787a:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _08077948
	add		r0, r5, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _0807794c
	add		r0, r5, r1
	ldr		r4, _08077950
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, r5, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xdc
	bne		_0807797c
	mov		r1, #0xdc
	lsl		r1, r1, #0x2
	add		r0, r5, r1
	ldr		r1, _08077954
	bl		sub_0807c088
	ldr		r2, _08077958
	ldr		r4, _0807795c
	add		r0, r5, r4
	str		r0, [r2, #0x0]
	ldr		r1, _08077960
	ldr		r0, [r5, #0x70]
	str		r0, [r1, #0x0]
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_080778f0
	cmp		r0, #0x40
	beq		_080778f0
	add		r4, r2, #0x0
	add		r3, r1, #0x0
_080778d6:
	ldr		r2, [r4, #0x0]
	ldr		r1, [r3, #0x0]
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	str		r1, [r3, #0x0]
	add		r2, #0x1
	str		r2, [r4, #0x0]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_080778f0
	cmp		r0, #0x40
	bne		_080778d6
_080778f0:
	ldr		r0, _08077958
	ldr		r1, [r0, #0x0]
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	ldr		r4, _08077964
	ldr		r1, _08077968
	add		r0, r4, #0x0
	bl		sub_0807c160
	bl		sub_0807570c
	ldr		r0, _0807796c
	add		r5, r4, r0
	mov		r0, #0x0
	strh	r0, [r5, #0x0]
	ldr		r1, _08077970
	add		r0, r4, r1
	str		r0, [r5, #0x4]
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	ldr		r1, _08077974
	add		r0, r4, r1
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_08073020
	ldr		r2, _08077978
	add		r4, r4, r2
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08077aee

_0807793c:	.4byte 0x0000047D
_08077940:	.4byte 0x000006FA
_08077944:	.4byte 0x03002448
_08077948:	.4byte 0x0000047E
_0807794c:	.4byte 0x0000047F
_08077950:	.4byte 0x0000FFD0
_08077954:	.4byte 0x0820bcdc @ "HELO"
_08077958:	.4byte 0x03002440
_0807795c:	.4byte 0x00000375
_08077960:	.4byte 0x03002444
_08077964:	.4byte 0x03007190
_08077968:	.4byte 0x0820bce4
_0807796c:	.4byte 0xFFFFFE70
_08077970:	.4byte 0xFFFFFD64
_08077974:	.4byte 0xFFFFFCF3
_08077978:	.4byte 0xFFFFFCF2

_0807797c:
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r0, #0x30
	strb	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	b		_08077a56
_0807798e:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r1, r1, r5
	mov		r8, r1
	ldrh	r1, [r1, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _080779dc
	add		r4, r5, r2
	ldr		r1, _080779e0
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_080779e4
_080779c0:
	mov		r2, r8
	strh	r6, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r2, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	mov		r0, r8
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08077aee

.incbin "base.gba", 0x779DA, 0x2

_080779dc:	.4byte 0x0000047D
_080779e0:	.4byte 0x000006FA

_080779e4:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _08077a38
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08077a48
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _08077a3c
	add		r0, r5, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _08077a40
	add		r0, r5, r1
	ldr		r4, _08077a44
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, r5, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xfa
	beq		_08077aa0
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r0, #0x30
	strb	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	b		_08077a56

_08077a38:	.4byte 0x03002448
_08077a3c:	.4byte 0x0000047E
_08077a40:	.4byte 0x0000047F
_08077a44:	.4byte 0x0000FFD0

_08077a48:
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x30
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r6, [r0, #0x0]
_08077a56:
	ldrb	r0, [r7, #0x0]
	mov		r0, #0xf0
	strb	r0, [r7, #0x0]
	b		_08077aee
_08077a5e:
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x4
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r2, [r5, #0x2]
	orr		r0, r1
	strh	r0, [r5, #0x2]
_08077a80:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08077aee
_08077a8a:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	strh	r6, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_08077aa0:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_08077aee
_08077aaa:
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	mov		r4, #0x0
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r5, #0x2]
	orr		r0, r4
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r5, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08077aee:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_080776a8

	thumb_func_start sub_08077af8
sub_08077af8:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	bl		sub_08075358
	mov		r0, #0xc
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08077b10
	bl		sub_0807537c
	b		_08077b72
_08077b10:
	ldr		r1, [r6, #0x0]
	cmp		r1, #0x0
	beq		_08077b4a
	ldr		r0, [r6, #0x4]
	cmp		r0, #0x0
	beq		_08077b4a
	add		r0, r1, #0x0
	bl		sub_0807c054
	cmp		r0, #0x1e
	bgt		_08077b4a
	cmp		r0, #0x0
	beq		_08077b4a
	mov		r5, #0x1
	ldr		r0, [r6, #0x4]
	cmp		r0, #0x0
	beq		_08077b62
	add		r4, r6, #0x4
_08077b34:
	ldr		r0, [r4, #0x0]
	bl		sub_0807c054
	cmp		r0, #0x0
	beq		_08077b4a
	cmp		r0, #0x7f
	bgt		_08077b4a
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	cmp		r5, r0
	ble		_08077b58
_08077b4a:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08077b72
_08077b58:
	add		r4, #0x4
	add		r5, #0x1
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_08077b34
_08077b62:
	ldr		r0, _08077b78
	str		r6, [r0, #0x70]
	mov		r0, #0xc
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_08077b72:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08077b78:	.4byte 0x03006E20
	thumb_func_end sub_08077af8

	thumb_func_start sub_08077b7c
sub_08077b7c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _08077bb4
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08077bca
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08077bb8
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08077bca

_08077bb4:	.4byte 0x03006E20

_08077bb8:
	cmp		r0, #0x24
	beq		_08077bca
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08077bca:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r8, r1
	cmp		r1, #0x0
	beq		_08077c24
	ldr		r3, _08077c20
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x30
	mov		r1, #0x0
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08077f26

_08077c20:	.4byte 0x03006E20

_08077c24:
	ldr		r6, _08077c48
	add		r7, r6, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x3
	bne		_08077c32
	b		_08077dd4
_08077c32:
	cmp		r0, #0x3
	bgt		_08077c4c
	cmp		r0, #0x1
	beq		_08077cc4
	cmp		r0, #0x1
	ble		_08077c40
	b		_08077d64
_08077c40:
	cmp		r0, #0x0
	beq		_08077c66
	b		_08077f26

.incbin "base.gba", 0x77C46, 0x2

_08077c48:	.4byte 0x03006E20

_08077c4c:
	cmp		r0, #0xf0
	bne		_08077c52
	b		_08077ec0
_08077c52:
	cmp		r0, #0xf0
	bgt		_08077c5e
	cmp		r0, #0x4
	bne		_08077c5c
	b		_08077eac
_08077c5c:
	b		_08077f26
_08077c5e:
	cmp		r0, #0xf1
	bne		_08077c64
	b		_08077ee2
_08077c64:
	b		_08077f26
_08077c66:
	mov		r0, #0xdc
	lsl		r0, r0, #0x2
	add		r5, r6, r0
	ldr		r1, _08077cbc
	add		r0, r5, #0x0
	bl		sub_0807c088
	ldr		r0, [r6, #0x70]
	ldr		r1, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0807c160
	ldr		r1, _08077cc0
	add		r0, r5, #0x0
	bl		sub_0807c160
	ldr		r0, [r6, #0x70]
	add		r0, #0x4
	str		r0, [r6, #0x70]
	bl		sub_0807570c
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	mov		r2, r8
	strh	r2, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_08077ed8

_08077cbc:	.4byte 0x0820bce8 @ "MAIL FROM:<"
_08077cc0:	.4byte 0x0820bcf4

_08077cc4:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r5, r6, r1
	ldrh	r1, [r5, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _08077d4c
	add		r4, r6, r2
	ldr		r1, _08077d50
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08077cf6
	b		_08077e04
_08077cf6:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _08077d54
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_08077d06
	b		_08077e94
_08077d06:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _08077d58
	add		r0, r6, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _08077d5c
	add		r0, r6, r1
	ldr		r4, _08077d60
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, r6, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xfa
	bne		_08077d3c
	b		_08077ed8
_08077d3c:
	add		r2, r6, #0x0
	add		r2, #0x66
	mov		r0, #0x30
	strb	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	b		_08077ea2

_08077d4c:	.4byte 0x0000047D
_08077d50:	.4byte 0x000006FA
_08077d54:	.4byte 0x0300244C
_08077d58:	.4byte 0x0000047E
_08077d5c:	.4byte 0x0000047F
_08077d60:	.4byte 0x0000FFD0

_08077d64:
	ldr		r0, [r6, #0x70]
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_08077dcc
	mov		r2, #0xdc
	lsl		r2, r2, #0x2
	add		r5, r6, r2
	ldr		r1, _08077dc4
	add		r0, r5, #0x0
	bl		sub_0807c088
	ldr		r0, [r6, #0x70]
	ldr		r1, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0807c160
	ldr		r1, _08077dc8
	add		r0, r5, #0x0
	bl		sub_0807c160
	ldr		r0, [r6, #0x70]
	add		r0, #0x4
	str		r0, [r6, #0x70]
	bl		sub_0807570c
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	mov		r1, r8
	strh	r1, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_08077ed8

.incbin "base.gba", 0x77DC2, 0x2

_08077dc4:	.4byte 0x0820bcf8 @ "RCPT_TO<"
_08077dc8:	.4byte 0x0820bcf4

_08077dcc:
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x4
	strb	r0, [r7, #0x0]
	b		_08077f26
_08077dd4:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r5, r6, r4
	ldrh	r1, [r5, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r0, _08077e20
	add		r4, r6, r0
	ldr		r1, _08077e24
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08077e28
_08077e04:
	mov		r2, r8
	strh	r2, [r5, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r5, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08077f26

.incbin "base.gba", 0x77E1E, 0x2

_08077e20:	.4byte 0x0000047D
_08077e24:	.4byte 0x000006FA

_08077e28:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _08077e74
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08077e94
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _08077e78
	add		r0, r6, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _08077e7c
	add		r0, r6, r1
	ldr		r4, _08077e80
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, r6, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xfa
	bne		_08077e84
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x2
	strb	r0, [r7, #0x0]
	b		_08077f26

.incbin "base.gba", 0x77E72, 0x2

_08077e74:	.4byte 0x0300244C
_08077e78:	.4byte 0x0000047E
_08077e7c:	.4byte 0x0000047F
_08077e80:	.4byte 0x0000FFD0

_08077e84:
	add		r2, r6, #0x0
	add		r2, #0x66
	mov		r0, #0x30
	strb	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	b		_08077ea2
_08077e94:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x30
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	mov		r1, r8
_08077ea2:
	strh	r1, [r0, #0x0]
	ldrb	r0, [r7, #0x0]
	mov		r0, #0xf0
	strb	r0, [r7, #0x0]
	b		_08077f26
_08077eac:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0x60
	ldrb	r1, [r0, #0x0]
	mov		r1, #0x1
	strb	r1, [r0, #0x0]
	b		_08077f26
_08077ec0:
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r4, r8
	strh	r4, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_08077ed8:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_08077f26
_08077ee2:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08077f26:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08077b7c

	thumb_func_start sub_08077f30
sub_08077f30:
	push	{ r4, r5, r6, r7, lr }
	add		r6, r0, #0x0
	add		r7, r2, #0x0
	lsl		r1, r1, #0x10
	lsr		r4, r1, #0x10
	add		r5, r4, #0x0
	bl		sub_08075358
	mov		r0, #0xd
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08077f50
	bl		sub_0807537c
	b		_08077f8a
_08077f50:
	cmp		r4, #0x0
	bne		_08077f62
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08077f8a
_08077f62:
	ldr		r1, _08077f90
	add		r0, r1, #0x0
	add		r0, #0x60
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_08077f72
	mov		r0, #0x0
	str		r0, [r1, #0x7c]
_08077f72:
	str		r6, [r1, #0x70]
	str		r5, [r1, #0x74]
	str		r7, [r1, #0x78]
	ldr		r0, [r1, #0x7c]
	add		r0, r0, r5
	str		r0, [r1, #0x7c]
	mov		r0, #0xd
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_08077f8a:
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_08077f90:	.4byte 0x03006E20
	thumb_func_end sub_08077f30

	thumb_func_start sub_08077f94
sub_08077f94:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _08077fcc
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08077fe2
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08077fd0
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08077fe2

_08077fcc:	.4byte 0x03006E20

_08077fd0:
	cmp		r0, #0x24
	beq		_08077fe2
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08077fe2:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r8, r1
	cmp		r1, #0x0
	beq		_08078034
	ldr		r3, _08078030
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x30
	mov		r1, #0x0
	bl		sub_080753ec
	b		_080781dc

_08078030:	.4byte 0x03006E20

_08078034:
	ldr		r6, _08078058
	add		r7, r6, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	add		r4, r6, #0x0
	cmp		r0, #0x32
	bne		_08078044
	b		_080781e6
_08078044:
	cmp		r0, #0x32
	bgt		_08078068
	cmp		r0, #0x1
	beq		_080780ae
	cmp		r0, #0x1
	bgt		_0807805c
	cmp		r0, #0x0
	beq		_0807808e
	b		_080783be

.incbin "base.gba", 0x78056, 0x2

_08078058:	.4byte 0x03006E20

_0807805c:
	cmp		r0, #0x2
	beq		_0807813a
	cmp		r0, #0x3
	bne		_08078066
	b		_080781dc
_08078066:
	b		_080783be
_08078068:
	cmp		r0, #0x65
	bne		_0807806e
	b		_0807827c
_0807806e:
	cmp		r0, #0x65
	bgt		_08078080
	cmp		r0, #0x33
	bne		_08078078
	b		_08078200
_08078078:
	cmp		r0, #0x64
	bne		_0807807e
	b		_08078222
_0807807e:
	b		_080783be
_08078080:
	cmp		r0, #0xf0
	bne		_08078086
	b		_08078358
_08078086:
	cmp		r0, #0xf1
	bne		_0807808c
	b		_0807837a
_0807808c:
	b		_080783be
_0807808e:
	add		r1, r6, #0x0
	add		r1, #0x60
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x1
	bne		_080780a6
	ldrb	r0, [r1, #0x0]
	mov		r0, r8
	strb	r0, [r1, #0x0]
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x64
	strb	r0, [r7, #0x0]
	b		_080783be
_080780a6:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
_080780ae:
	ldr		r0, [r4, #0x74]
	cmp		r0, #0xfe
	bls		_080780ec
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r1, [r4, #0x70]
	add		r2, r4, #0x0
	add		r2, #0x63
	ldrb	r3, [r2, #0x0]
	mov		r2, #0xfe
	bl		sub_08073020
	ldr		r0, [r4, #0x70]
	add		r0, #0xfe
	str		r0, [r4, #0x70]
	ldr		r0, [r4, #0x74]
	sub		r0, #0xfe
	str		r0, [r4, #0x74]
	add		r2, r4, #0x0
	add		r2, #0x84
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	str		r0, [r2, #0x0]
	b		_08078132
_080780ec:
	bl		sub_0807570c
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r1, [r4, #0x70]
	ldr		r2, [r4, #0x74]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r3, r4, #0x0
	add		r3, #0x63
	ldrb	r3, [r3, #0x0]
	bl		sub_08073020
	ldr		r0, [r4, #0x78]
	cmp		r0, #0x1
	bne		_08078128
	add		r2, r4, #0x0
	add		r2, #0x84
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	b		_08078132
_08078128:
	add		r1, r4, #0x0
	add		r1, #0x84
	mov		r0, #0x3
	str		r0, [r1, #0x0]
	sub		r1, #0x22
_08078132:
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x32
	strb	r0, [r1, #0x0]
	b		_080783be
_0807813a:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r5, r6, r1
	ldrh	r1, [r5, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _080781c4
	add		r4, r6, r2
	ldr		r1, _080781c8
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_0807816c
	b		_080782ac
_0807816c:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _080781cc
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807817c
	b		_08078340
_0807817c:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _080781d0
	add		r0, r6, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _080781d4
	add		r0, r6, r1
	ldr		r4, _080781d8
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r1, r6, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	strh	r2, [r1, #0x0]
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0xfa
	bne		_080781b2
	b		_08078370
_080781b2:
	add		r2, r6, #0x0
	add		r2, #0x66
	mov		r0, #0x30
	strb	r0, [r2, #0x0]
	ldrh	r1, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	b		_0807834e

.incbin "base.gba", 0x781C2, 0x2

_080781c4:	.4byte 0x0000047D
_080781c8:	.4byte 0x000006FA
_080781cc:	.4byte 0x03002450
_080781d0:	.4byte 0x0000047E
_080781d4:	.4byte 0x0000047F
_080781d8:	.4byte 0x0000FFD0

_080781dc:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_080783be
_080781e6:
	add		r2, r6, #0x0
	add		r2, #0x80
	ldrb	r0, [r6, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r6, #0x0
	add		r1, #0x34
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r2, #0x0]
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
_08078200:
	add		r0, r4, #0x0
	add		r0, #0x80
	ldr		r1, [r0, #0x0]
	sub		r1, #0x1
	str		r1, [r0, #0x0]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_08078214
	b		_080783be
_08078214:
	add		r0, r4, #0x0
	add		r0, #0x84
	ldr		r1, [r0, #0x0]
	sub		r0, #0x22
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		_080783be
_08078222:
	mov		r2, #0xdc
	lsl		r2, r2, #0x2
	add		r5, r6, r2
	ldr		r1, _08078278
	add		r0, r5, #0x0
	bl		sub_0807c088
	bl		sub_0807570c
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	mov		r1, r8
	strh	r1, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x84
	ldrb	r0, [r7, #0x0]
	str		r0, [r1, #0x0]
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x32
	strb	r0, [r7, #0x0]
	b		_080783be

.incbin "base.gba", 0x78276, 0x2

_08078278:	.4byte 0x0820bd04 @ "DATA"

_0807827c:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r5, r6, r4
	ldrh	r1, [r5, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r0, _080782c8
	add		r4, r6, r0
	ldr		r1, _080782cc
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_080782d0
_080782ac:
	mov		r2, r8
	strh	r2, [r5, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r5, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_080783be

.incbin "base.gba", 0x782C6, 0x2

_080782c8:	.4byte 0x0000047D
_080782cc:	.4byte 0x000006FA

_080782d0:
	add		r0, r4, #0x0
	bl		sub_0807761c
	ldr		r1, _08078320
	str		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08078340
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldr		r4, _08078324
	add		r0, r6, r4
	ldrb	r1, [r0, #0x0]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r1, _08078328
	add		r0, r6, r1
	ldr		r4, _0807832c
	add		r2, r2, r4
	ldrb	r0, [r0, #0x0]
	add		r2, r2, r0
	add		r3, r6, #0x0
	add		r3, #0x5e
	ldrh	r0, [r3, #0x0]
	strh	r2, [r3, #0x0]
	ldrh	r1, [r3, #0x0]
	mov		r0, #0xb1
	lsl		r0, r0, #0x1
	cmp		r1, r0
	bne		_08078330
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x1
	strb	r0, [r7, #0x0]
	b		_080783be

.incbin "base.gba", 0x7831E, 0x2

_08078320:	.4byte 0x03002450
_08078324:	.4byte 0x0000047E
_08078328:	.4byte 0x0000047F
_0807832c:	.4byte 0x0000FFD0

_08078330:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x30
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	b		_0807834e
_08078340:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x30
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	mov		r1, r8
_0807834e:
	strh	r1, [r0, #0x0]
	ldrb	r0, [r7, #0x0]
	mov		r0, #0xf0
	strb	r0, [r7, #0x0]
	b		_080783be
_08078358:
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	mov		r4, r8
	strh	r4, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_08078370:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_080783be
_0807837a:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_080783be:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x783C8, 0x50
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _08078450
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08078466
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08078454
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08078466

_08078450:	.4byte 0x03006E20

_08078454:
	cmp		r0, #0x24
	beq		_08078466
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08078466:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r8, r1
	cmp		r1, #0x0
	beq		_080784c8
	ldr		r0, _0807848c
	add		r0, #0x5c
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x4
	bne		_08078490
	mov		r0, #0x30
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08078498

_0807848c:	.4byte 0x03006E20

_08078490:
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
_08078498:
	ldr		r3, _080784c4
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	b		_080785e0

_080784c4:	.4byte 0x03006E20

_080784c8:
	ldr		r6, _080784e4
	add		r7, r6, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	add		r2, r0, #0x0
	cmp		r2, #0x2
	beq		_080785a4
	cmp		r2, #0x2
	bgt		_080784e8
	cmp		r2, #0x0
	beq		_08078500
	cmp		r2, #0x1
	beq		_08078544
	b		_08078658

_080784e4:	.4byte 0x03006E20

_080784e8:
	cmp		r2, #0xf0
	bne		_080784ee
	b		_080785f2
_080784ee:
	cmp		r2, #0xf0
	bgt		_080784f8
	cmp		r2, #0x3
	beq		_080785ba
	b		_08078658
_080784f8:
	cmp		r2, #0xf1
	bne		_080784fe
	b		_08078614
_080784fe:
	b		_08078658
_08078500:
	bl		sub_0807570c
	mov		r0, #0xdc
	lsl		r0, r0, #0x2
	add		r5, r6, r0
	ldr		r1, _08078540
	add		r0, r5, #0x0
	bl		sub_0807c088
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	mov		r2, r8
	strh	r2, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_0807860a

.incbin "base.gba", 0x7853E, 0x2

_08078540:	.4byte 0x0820bcd4 @ "QUIT"

_08078544:
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r0, r6, r3
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _0807858c
	add		r0, r6, r2
	ldr		r3, _08078590
	add		r1, r6, r3
	ldrh	r1, [r1, #0x0]
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08078594
	mov		r0, r8
	strh	r0, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08078658

_0807858c:	.4byte 0x0000047D
_08078590:	.4byte 0x000006FA

_08078594:
	ldrb	r0, [r6, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r6, #0x0
	add		r1, #0x2c
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r6, #0x70]
	b		_0807860a
_080785a4:
	ldr		r0, [r6, #0x70]
	sub		r0, #0x1
	str		r0, [r6, #0x70]
	cmp		r0, #0x0
	bne		_08078658
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	add		r1, r6, #0x0
	add		r1, #0x63
	b		_08078604
_080785ba:
	add		r0, r6, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r2, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r1, r3, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r2
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
_080785e0:
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08078658
_080785f2:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	mov		r1, r8
	strh	r1, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
_08078604:
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_0807860a:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_08078658
_08078614:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08078658:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x78662, 0x2
	thumb_func_end sub_08077f94

	thumb_func_start sub_08078664
sub_08078664:
	add		r1, r0, #0x0
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x2b
	bne		_0807867c
	ldrb	r0, [r1, #0x1]
	cmp		r0, #0x4f
	bne		_0807867c
	ldrb	r0, [r1, #0x2]
	cmp		r0, #0x4b
	bne		_0807867c
	mov		r0, #0x0
	b		_0807869a
_0807867c:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x2d
	bne		_08078698
	ldrb	r0, [r1, #0x1]
	cmp		r0, #0x45
	bne		_08078698
	ldrb	r0, [r1, #0x2]
	cmp		r0, #0x52
	bne		_08078698
	ldrb	r0, [r1, #0x3]
	cmp		r0, #0x52
	bne		_08078698
	mov		r0, #0x1
	b		_0807869a
_08078698:
	mov		r0, #0x2
_0807869a:
	bx		lr
	thumb_func_end sub_08078664

	thumb_func_start sub_0807869c
sub_0807869c:
	push	{ r4, r5, r6, lr }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	bl		sub_08075358
	mov		r0, #0xf
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_080786b6
	bl		sub_0807537c
	b		_0807875e
_080786b6:
	add		r0, r5, #0x0
	bl		sub_0807c054
	cmp		r0, #0x1e
	bgt		_080786d2
	cmp		r0, #0x0
	beq		_080786d2
	add		r0, r6, #0x0
	bl		sub_0807c054
	cmp		r0, #0x10
	bgt		_080786d2
	cmp		r0, #0x0
	bne		_080786e0
_080786d2:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_0807875e
_080786e0:
	ldr		r4, _08078710
	mov		r1, #0xdc
	lsl		r1, r1, #0x2
	add		r0, r4, r1
	str		r0, [r4, #0x70]
	bl		sub_0807be28
	ldr		r0, [r4, #0x70]
	bl		sub_0807c054
	add		r1, r0, #0x0
	ldr		r0, [r4, #0x70]
	add		r0, r0, r1
	add		r0, #0x1
	str		r0, [r4, #0x74]
	ldr		r1, _08078714
	bl		sub_0807c088
	ldr		r0, [r4, #0x74]
	add		r1, r5, #0x0
	bl		sub_0807c160
	ldr		r2, [r4, #0x74]
	b		_0807871a

_08078710:	.4byte 0x03006E20
_08078714:	.4byte 0x0820bd0c @ "USER"

_08078718:
	add		r2, #0x1
_0807871a:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	beq		_08078724
	cmp		r0, #0x40
	bne		_08078718
_08078724:
	mov		r0, #0xd
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	mov		r0, #0xa
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	ldr		r4, _08078764
	str		r2, [r4, #0x78]
	ldr		r1, _08078768
	add		r0, r2, #0x0
	bl		sub_0807c088
	ldr		r0, [r4, #0x78]
	add		r1, r6, #0x0
	bl		sub_0807c160
	ldr		r0, [r4, #0x78]
	ldr		r1, _0807876c
	bl		sub_0807c160
	mov		r0, #0xf
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_0807875e:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_08078764:	.4byte 0x03006E20
_08078768:	.4byte 0x0820bd14 @ "PASS"
_0807876c:	.4byte 0x0820bce4
	thumb_func_end sub_0807869c

	thumb_func_start sub_08078770
sub_08078770:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r2, _08078798
	add		r0, r2, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_080787f2
	add		r0, r2, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x23
	beq		_080787c2
	cmp		r0, #0x23
	bgt		_0807879c
	cmp		r0, #0x15
	beq		_080787a6
	b		_080787e4

.incbin "base.gba", 0x78796, 0x2

_08078798:	.4byte 0x03006E20

_0807879c:
	cmp		r0, #0x24
	beq		_080787f2
	cmp		r0, #0x28
	beq		_080787c2
	b		_080787e4
_080787a6:
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_080787f2
_080787c2:
	ldr		r2, _080787e0
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf1
	strb	r0, [r1, #0x0]
	b		_080787f2

_080787e0:	.4byte 0x03006E20

_080787e4:
	bl		sub_08074500
	ldr		r0, _08078840
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_080787f2:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r8, r1
	cmp		r1, #0x0
	beq		_08078844
	ldr		r3, _08078840
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08078b22

_08078840:	.4byte 0x03006E20

_08078844:
	ldr		r5, _08078864
	add		r6, r5, #0x0
	add		r6, #0x62
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x4
	bne		_08078852
	b		_080789bc
_08078852:
	cmp		r0, #0x4
	bgt		_08078872
	cmp		r0, #0x1
	beq		_080788a4
	cmp		r0, #0x1
	bgt		_08078868
	cmp		r0, #0x0
	beq		_0807888c
	b		_08078b92

_08078864:	.4byte 0x03006E20

_08078868:
	cmp		r0, #0x2
	beq		_080788d2
	cmp		r0, #0x3
	beq		_0807890a
	b		_08078b92
_08078872:
	cmp		r0, #0x6
	bne		_08078878
	b		_08078b00
_08078878:
	cmp		r0, #0x6
	bge		_0807887e
	b		_08078a6e
_0807887e:
	cmp		r0, #0xf0
	bne		_08078884
	b		_08078b2c
_08078884:
	cmp		r0, #0xf1
	bne		_0807888a
	b		_08078b4e
_0807888a:
	b		_08078b92
_0807888c:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r2, r8
	strh	r2, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r1, [r5, #0x70]
	bl		sub_08073b18
	b		_08078b44
_080788a4:
	add		r4, r5, #0x0
	add		r4, #0x6a
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	ldr		r1, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0x4
	bl		sub_0807c304
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	mov		r1, r8
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	add		r1, r4, #0x0
	mov		r2, #0x6e
	bl		sub_08073810
	b		_08078b44
_080788d2:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	add		r4, r5, #0x0
	add		r4, #0x63
	strb	r0, [r4, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xcc
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	bl		sub_0807570c
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r2, r8
	strh	r2, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldrb	r3, [r4, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08078b44
_0807890a:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r7, r5, r1
	ldrh	r1, [r7, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _0807894c
	add		r4, r5, r2
	ldr		r1, _08078950
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08078954
	mov		r2, r8
	strh	r2, [r7, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r7, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r7, #0x0
	b		_08078aae

_0807894c:	.4byte 0x0000047D
_08078950:	.4byte 0x000006FA

_08078954:
	add		r0, r4, #0x0
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08078990
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08078994
	bl		sub_0807570c
	mov		r4, r8
	strh	r4, [r7, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r7, #0x4]
	ldr		r4, [r5, #0x74]
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r5, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08073020
	b		_08078b44

_08078990:	.4byte 0x03002454

_08078994:
	cmp		r1, #0x1
	bne		_080789aa
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	mov		r1, r8
	strh	r1, [r0, #0x0]
	b		_08078af8
_080789aa:
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x31
	strb	r0, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	b		_08078af8
_080789bc:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r7, r5, r4
	ldrh	r1, [r7, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r0, _08078a00
	add		r4, r5, r0
	ldr		r1, _08078a04
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08078a08
	mov		r2, r8
	strh	r2, [r7, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r7, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r7, #0x0
	b		_08078aae

.incbin "base.gba", 0x789FE, 0x2

_08078a00:	.4byte 0x0000047D
_08078a04:	.4byte 0x000006FA

_08078a08:
	add		r0, r4, #0x0
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08078a44
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08078a48
	bl		sub_0807570c
	mov		r4, r8
	strh	r4, [r7, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r7, #0x4]
	ldr		r4, [r5, #0x78]
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r5, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	bl		sub_08073020
	b		_08078b44

_08078a44:	.4byte 0x03002454

_08078a48:
	cmp		r1, #0x1
	bne		_08078a5c
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x2
	strh	r0, [r1, #0x0]
	b		_08078af8
_08078a5c:
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	mov		r1, r8
	strh	r1, [r0, #0x0]
	b		_08078af8
_08078a6e:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r5, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r5, r1
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _08078ab8
	add		r7, r5, r2
	ldr		r1, _08078abc
	add		r0, r5, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r7, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08078ac0
	mov		r2, r8
	strh	r2, [r4, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
_08078aae:
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08078b92

_08078ab8:	.4byte 0x0000047D
_08078abc:	.4byte 0x000006FA

_08078ac0:
	add		r0, r7, #0x0
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08078ae4
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_08078b44
	cmp		r1, #0x1
	bne		_08078ae8
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x3
	strh	r0, [r1, #0x0]
	b		_08078af8

_08078ae4:	.4byte 0x03002454

_08078ae8:
	add		r1, r5, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	mov		r4, r8
	strh	r4, [r0, #0x0]
_08078af8:
	ldrb	r0, [r6, #0x0]
	mov		r0, #0xf0
	strb	r0, [r6, #0x0]
	b		_08078b92
_08078b00:
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x5
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r2, #0xa0
	lsl		r2, r2, #0x3
	add		r0, r2, #0x0
	ldrh	r2, [r5, #0x2]
	orr		r0, r1
	strh	r0, [r5, #0x2]
_08078b22:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08078b92
_08078b2c:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r5, r4
	mov		r1, r8
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_08078b44:
	ldrb	r0, [r6, #0x0]
	add		r0, #0x1
	ldrb	r1, [r6, #0x0]
	strb	r0, [r6, #0x0]
	b		_08078b92
_08078b4e:
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	mov		r4, #0x0
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r5, #0x2]
	orr		r0, r4
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r5, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08078b92:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08078770

	thumb_func_start sub_08078b9c
sub_08078b9c:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r5, r1, #0x0
	bl		sub_08075358
	mov		r0, #0x10
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08078bb6
	bl		sub_0807537c
	b		_08078bc8
_08078bb6:
	ldr		r0, _08078bd0
	str		r4, [r0, #0x70]
	str		r5, [r0, #0x74]
	mov		r0, #0x10
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_08078bc8:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x78BCE, 0x2

_08078bd0:	.4byte 0x03006E20
	thumb_func_end sub_08078b9c

	thumb_func_start sub_08078bd4
sub_08078bd4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _08078c0c
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08078c22
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08078c10
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08078c22

_08078c0c:	.4byte 0x03006E20

_08078c10:
	cmp		r0, #0x24
	beq		_08078c22
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08078c22:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r7, r1, #0x10
	cmp		r7, #0x0
	beq		_08078c74
	ldr		r3, _08078c70
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08078db4

.incbin "base.gba", 0x78C6E, 0x2

_08078c70:	.4byte 0x03006E20

_08078c74:
	ldr		r6, _08078c94
	mov		r0, #0x62
	add		r0, r0, r6
	mov		r8, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x2
	bne		_08078c84
	b		_08078db4
_08078c84:
	cmp		r0, #0x2
	bgt		_08078c98
	cmp		r0, #0x0
	beq		_08078ca6
	cmp		r0, #0x1
	beq		_08078ce8
	b		_08078e26

.incbin "base.gba", 0x78C92, 0x2

_08078c94:	.4byte 0x03006E20

_08078c98:
	cmp		r0, #0xf0
	bne		_08078c9e
	b		_08078dbe
_08078c9e:
	cmp		r0, #0xf1
	bne		_08078ca4
	b		_08078de2
_08078ca4:
	b		_08078e26
_08078ca6:
	mov		r1, #0xdc
	lsl		r1, r1, #0x2
	add		r5, r6, r1
	ldr		r1, _08078ce4
	add		r0, r5, #0x0
	bl		sub_0807c088
	bl		sub_0807570c
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r4, r6, r2
	strh	r7, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_08078d68

.incbin "base.gba", 0x78CE2, 0x2

_08078ce4:	.4byte 0x0820bd1c @ "STAT"

_08078ce8:
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r4, r6, r2
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r0, _08078d30
	add		r5, r6, r0
	ldr		r1, _08078d34
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	add		r0, r5, #0x0
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08078d38
	strh	r7, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08078e26

_08078d30:	.4byte 0x0000047D
_08078d34:	.4byte 0x000006FA

_08078d38:
	add		r0, r5, #0x0
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08078d74
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08078d80
	ldr		r4, _08078d78
	ldr		r2, _08078d7c
	add		r0, r6, r2
	str		r0, [r4, #0x0]
	bl		sub_0807c424
	ldr		r1, [r6, #0x70]
	strh	r0, [r1, #0x0]
	ldr		r0, [r4, #0x0]
	bl		sub_0807c208
	str		r0, [r4, #0x0]
	bl		sub_0807c424
	ldr		r1, [r6, #0x74]
	str		r0, [r1, #0x0]
_08078d68:
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08078e26

_08078d74:	.4byte 0x0300245C
_08078d78:	.4byte 0x03002458
_08078d7c:	.4byte 0x00000481

_08078d80:
	cmp		r1, #0x1
	bne		_08078d9c
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	strh	r7, [r0, #0x0]
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08078e26
_08078d9c:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	strh	r7, [r0, #0x0]
	mov		r2, r8
	ldrb	r0, [r2, #0x0]
	mov		r0, #0xf0
	strb	r0, [r2, #0x0]
	b		_08078e26
_08078db4:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08078e26
_08078dbe:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	strh	r7, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
	ldrb	r1, [r1, #0x0]
	mov		r2, r8
	strb	r0, [r2, #0x0]
	b		_08078e26
_08078de2:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08078e26:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08078bd4

	thumb_func_start sub_08078e30
sub_08078e30:
	push	{ r4, r5, r6, lr }
	add		r5, r1, #0x0
	lsl		r0, r0, #0x10
	lsr		r4, r0, #0x10
	add		r6, r4, #0x0
	bl		sub_08075358
	mov		r0, #0x11
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08078e4e
	bl		sub_0807537c
	b		_08078e98
_08078e4e:
	cmp		r4, #0x0
	bne		_08078e60
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_08078e98
_08078e60:
	ldr		r4, _08078ea0
	str		r5, [r4, #0x70]
	mov		r0, #0xdc
	lsl		r0, r0, #0x2
	add		r4, r4, r0
	ldr		r1, _08078ea4
	add		r0, r4, #0x0
	bl		sub_0807c088
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r1, r0, #0x0
	add		r1, r1, r4
	add		r0, r6, #0x0
	mov		r2, #0xa
	bl		sub_0807c3fc
	ldr		r1, _08078ea8
	add		r0, r4, #0x0
	bl		sub_0807c160
	mov		r0, #0x11
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
_08078e98:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x78E9E, 0x2

_08078ea0:	.4byte 0x03006E20
_08078ea4:	.4byte 0x0820bd24 @ "LIST"
_08078ea8:	.4byte 0x0820bce4
	thumb_func_end sub_08078e30

	thumb_func_start sub_08078eac
sub_08078eac:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _08078ee4
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08078efa
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08078ee8
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08078efa

_08078ee4:	.4byte 0x03006E20

_08078ee8:
	cmp		r0, #0x24
	beq		_08078efa
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08078efa:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r5, r1, #0x10
	cmp		r5, #0x0
	beq		_08078f4c
	ldr		r3, _08078f48
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08079062

.incbin "base.gba", 0x78F46, 0x2

_08078f48:	.4byte 0x03006E20

_08078f4c:
	ldr		r6, _08078f68
	add		r7, r6, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x64
	bne		_08078f5a
	b		_08079062
_08078f5a:
	cmp		r0, #0x64
	bgt		_08078f6c
	cmp		r0, #0x0
	beq		_08078f7a
	cmp		r0, #0x1
	beq		_08078fae
	b		_080790d0

_08078f68:	.4byte 0x03006E20

_08078f6c:
	cmp		r0, #0xf0
	bne		_08078f72
	b		_0807906c
_08078f72:
	cmp		r0, #0xf1
	bne		_08078f78
	b		_0807908c
_08078f78:
	b		_080790d0
_08078f7a:
	bl		sub_0807570c
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	strh	r5, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	mov		r1, #0xdc
	lsl		r1, r1, #0x2
	add		r5, r6, r1
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_08079082
_08078fae:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _08078ff8
	add		r2, r2, r6
	mov		r8, r2
	ldr		r1, _08078ffc
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, r8
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_08079000
	strh	r5, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_080790d0

_08078ff8:	.4byte 0x0000047D
_08078ffc:	.4byte 0x000006FA

_08079000:
	mov		r0, r8
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _0807902c
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08079038
	ldr		r4, _08079030
	ldr		r2, _08079034
	add		r0, r6, r2
	bl		sub_0807c208
	str		r0, [r4, #0x0]
	bl		sub_0807c424
	ldr		r1, [r6, #0x70]
	str		r0, [r1, #0x0]
	ldrb	r0, [r7, #0x0]
	mov		r0, #0x64
	strb	r0, [r7, #0x0]
	b		_080790d0

_0807902c:	.4byte 0x03002464
_08079030:	.4byte 0x03002460
_08079034:	.4byte 0x00000481

_08079038:
	cmp		r1, #0x1
	bne		_0807904c
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	b		_0807905a
_0807904c:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	strh	r5, [r0, #0x0]
_0807905a:
	ldrb	r0, [r7, #0x0]
	mov		r0, #0xf0
	strb	r0, [r7, #0x0]
	b		_080790d0
_08079062:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_080790d0
_0807906c:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r6, r4
	strh	r5, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_08079082:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_080790d0
_0807908c:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_080790d0:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x790DA, 0x17E
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r4, _08079294
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_080792aa
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08079298
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_080792aa

_08079294:	.4byte 0x03006E20

_08079298:
	cmp		r0, #0x24
	beq		_080792aa
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_080792aa:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r9, r1
	cmp		r1, #0x0
	beq		_080792fc
	ldr		r3, _080792f8
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_080795b0

_080792f8:	.4byte 0x03006E20

_080792fc:
	ldr		r6, _08079320
	mov		r0, #0x62
	add		r0, r0, r6
	mov		r8, r0
	ldrb	r0, [r0, #0x0]
	add		r4, r0, #0x0
	add		r7, r6, #0x0
	cmp		r4, #0x64
	bne		_08079310
	b		_080795b0
_08079310:
	cmp		r4, #0x64
	bgt		_08079324
	cmp		r4, #0x0
	beq		_08079332
	cmp		r4, #0x1
	beq		_08079372
	b		_08079622

.incbin "base.gba", 0x7931E, 0x2

_08079320:	.4byte 0x03006E20

_08079324:
	cmp		r4, #0xf0
	bne		_0807932a
	b		_080795ba
_0807932a:
	cmp		r4, #0xf1
	bne		_08079330
	b		_080795de
_08079330:
	b		_08079622
_08079332:
	bl		sub_0807570c
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	mov		r2, r9
	strh	r2, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	mov		r3, #0xdc
	lsl		r3, r3, #0x2
	add		r5, r6, r3
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08079622
_08079372:
	ldr		r2, _080793e0
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r0, r0, r6
	mov		r10, r0
	ldrh	r0, [r0, #0x0]
	sub		r3, r0, #0x1
	str		r3, [r2, #0x0]
	ldr		r0, [r6, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08079390
	b		_08079524
_08079390:
	ldr		r0, [r6, #0x70]
	cmp		r0, #0x0
	bne		_08079398
	b		_0807952c
_08079398:
	cmp		r3, #0x1
	bgt		_0807939e
	b		_0807952c
_0807939e:
	ldr		r1, _080793e4
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0807946e
	ldr		r7, _080793e8
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r5, r6, r2
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	add		r1, r3, #0x0
	bl		sub_0807c138
	add		r1, r0, #0x0
	str		r1, [r7, #0x0]
	cmp		r1, #0x0
	bne		_080793ec
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	ldr		r3, _080793e0
	ldrh	r1, [r3, #0x0]
	bl		sub_08075730
	mov		r0, r9
	mov		r4, r10
	strh	r0, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	mov		r0, r10
	b		_0807959a

_080793e0:	.4byte 0x0300246C
_080793e4:	.4byte 0x03006EAC
_080793e8:	.4byte 0x03002468

_080793ec:
	ldr		r2, [r5, #0x0]
	add		r0, r2, #0x1
	sub		r1, #0x1
	sub		r1, r1, r2
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r1, _08079428
	add		r0, r6, r1
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _0807942c
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08079438
	ldr		r2, [r7, #0x0]
	sub		r2, #0x1
	ldr		r1, [r5, #0x0]
	sub		r1, r2, r1
	ldr		r3, _08079430
	ldr		r0, [r3, #0x0]
	sub		r0, r0, r1
	str		r0, [r3, #0x0]
	str		r2, [r5, #0x0]
	ldr		r0, _08079434
	str		r4, [r0, #0x0]
	add		r7, r6, #0x0
	b		_0807946e

_08079428:	.4byte 0x0000047D
_0807942c:	.4byte 0x03002470
_08079430:	.4byte 0x0300246C
_08079434:	.4byte 0x03006EAC

_08079438:
	cmp		r1, #0x1
	bne		_08079454
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08079622
_08079454:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	mov		r2, r9
	strh	r2, [r0, #0x0]
	mov		r3, r8
	ldrb	r0, [r3, #0x0]
	mov		r0, #0xf0
	strb	r0, [r3, #0x0]
	b		_08079622
_0807946e:
	ldr		r3, [r7, #0x74]
	ldr		r4, _080794ac
	ldr		r2, [r4, #0x0]
	cmp		r3, r2
	bcc		_080794b4
	ldr		r0, [r7, #0x70]
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r1, r7, r3
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	bl		sub_0807c304
	ldr		r0, [r7, #0x70]
	ldr		r2, [r4, #0x0]
	add		r0, r0, r2
	str		r0, [r7, #0x70]
	ldr		r0, [r7, #0x74]
	sub		r0, r0, r2
	str		r0, [r7, #0x74]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _080794b0
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldr		r1, [r7, #0x78]
	ldrh	r0, [r1, #0x0]
	add		r0, r0, r2
	strh	r0, [r1, #0x0]
	b		_0807952c

.incbin "base.gba", 0x794AA, 0x2

_080794ac:	.4byte 0x0300246C
_080794b0:	.4byte 0x0000FFFB

_080794b4:
	ldr		r0, [r7, #0x70]
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r4, r7, r1
	ldr		r1, [r4, #0x0]
	add		r1, #0x1
	add		r2, r3, #0x0
	bl		sub_0807c304
	ldr		r2, _08079518
	ldr		r1, [r2, #0x0]
	ldr		r0, [r7, #0x74]
	sub		r1, r1, r0
	ldr		r0, _0807951c
	add		r3, r7, r0
	mov		r6, #0x0
	mov		r5, #0x0
	strh	r1, [r3, #0x0]
	ldr		r1, _08079520
	add		r0, r7, r1
	ldr		r2, [r7, #0x74]
	add		r2, #0x1
	ldr		r1, [r4, #0x0]
	add		r1, r1, r2
	ldrh	r2, [r3, #0x0]
	bl		sub_0807c304
	ldr		r2, [r7, #0x78]
	ldr		r1, [r7, #0x74]
	ldrh	r0, [r2, #0x0]
	add		r0, r0, r1
	strh	r0, [r2, #0x0]
	str		r5, [r7, #0x74]
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x4
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r6
	strh	r0, [r7, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r6
	strh	r0, [r7, #0x2]
	b		_08079622

_08079518:	.4byte 0x0300246C
_0807951c:	.4byte 0x000006FA
_08079520:	.4byte 0x0000047D

_08079524:
	ldr		r0, [r6, #0x40]
	ldr		r1, _08079550
	and		r0, r1
	str		r0, [r6, #0x40]
_0807952c:
	ldr		r0, _08079554
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x4
	ble		_0807955c
	ldr		r4, _08079558
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, r0, r1
	sub		r0, #0x5
	mov		r1, #0x5
	b		_0807956c

.incbin "base.gba", 0x7954E, 0x2

_08079550:	.4byte 0xFFFF7FFF
_08079554:	.4byte 0x0300246C
_08079558:	.4byte 0x03006E20

_0807955c:
	cmp		r1, #0x0
	beq		_08079588
	ldr		r4, _08079584
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
_0807956c:
	bl		sub_08075688
	bl		sub_080756e8
	cmp		r0, #0x1
	bne		_08079588
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0x64
	strb	r1, [r0, #0x0]
	b		_08079622

_08079584:	.4byte 0x03006E20

_08079588:
	ldr		r0, _080795a4
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r3, _080795a8
	add		r1, r0, r3
	str		r1, [r0, #0x4]
	ldr		r4, _080795ac
	add		r1, r0, r4
	ldrb	r3, [r1, #0x0]
_0807959a:
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08079622

_080795a4:	.4byte 0x03007000
_080795a8:	.4byte 0xFFFFFEF4
_080795ac:	.4byte 0xFFFFFE83

_080795b0:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08079622
_080795ba:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r2, r9
	strh	r2, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
	mov		r3, r8
	ldrb	r0, [r3, #0x0]
	add		r0, #0x1
	ldrb	r1, [r3, #0x0]
	strb	r0, [r3, #0x0]
	b		_08079622
_080795de:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08079622:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x79630, 0x5C
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	ldr		r4, _080796c4
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_080796da
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_080796c8
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_080796da

_080796c4:	.4byte 0x03006E20

_080796c8:
	cmp		r0, #0x24
	beq		_080796da
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_080796da:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r5, r1, #0x10
	cmp		r5, #0x0
	beq		_0807972c
	ldr		r3, _08079728
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_0807981a

.incbin "base.gba", 0x79726, 0x2

_08079728:	.4byte 0x03006E20

_0807972c:
	ldr		r6, _08079748
	add		r7, r6, #0x0
	add		r7, #0x62
	ldrb	r0, [r7, #0x0]
	cmp		r0, #0x2
	beq		_0807981a
	cmp		r0, #0x2
	bgt		_0807974c
	cmp		r0, #0x0
	beq		_08079756
	cmp		r0, #0x1
	beq		_0807978a
	b		_08079888

.incbin "base.gba", 0x79746, 0x2

_08079748:	.4byte 0x03006E20

_0807974c:
	cmp		r0, #0xf0
	beq		_08079824
	cmp		r0, #0xf1
	beq		_08079844
	b		_08079888
_08079756:
	bl		sub_0807570c
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r4, r6, r0
	strh	r5, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	mov		r1, #0xdc
	lsl		r1, r1, #0x2
	add		r5, r6, r1
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	b		_0807983a
_0807978a:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	ldrh	r1, [r4, #0x0]
	sub		r1, #0x1
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r2, _080797d4
	add		r2, r2, r6
	mov		r8, r2
	ldr		r1, _080797d8
	add		r0, r6, r1
	ldrh	r1, [r0, #0x0]
	mov		r0, r8
	bl		sub_0807c594
	cmp		r0, #0x0
	bne		_080797dc
	strh	r5, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08079888

_080797d4:	.4byte 0x0000047D
_080797d8:	.4byte 0x000006FA

_080797dc:
	mov		r0, r8
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08079800
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0807983a
	cmp		r1, #0x1
	bne		_08079804
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	b		_08079812

_08079800:	.4byte 0x03002474

_08079804:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	strh	r5, [r0, #0x0]
_08079812:
	ldrb	r0, [r7, #0x0]
	mov		r0, #0xf0
	strb	r0, [r7, #0x0]
	b		_08079888
_0807981a:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08079888
_08079824:
	mov		r2, #0xf0
	lsl		r2, r2, #0x1
	add		r0, r6, r2
	strh	r5, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
_0807983a:
	ldrb	r0, [r7, #0x0]
	add		r0, #0x1
	ldrb	r1, [r7, #0x0]
	strb	r0, [r7, #0x0]
	b		_08079888
_08079844:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08079888:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x79892, 0x172
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r4, _08079a40
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_08079a56
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_08079a44
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08079a56

_08079a40:	.4byte 0x03006E20

_08079a44:
	cmp		r0, #0x24
	beq		_08079a56
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_08079a56:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	mov		r9, r1
	cmp		r1, #0x0
	beq		_08079aa8
	ldr		r3, _08079aa4
	add		r1, r3, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r3, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r3, #0x2]
	mov		r2, #0x0
	strh	r0, [r3, #0x2]
	ldrh	r0, [r3, #0x2]
	mov		r4, #0x80
	lsl		r4, r4, #0x1
	add		r1, r4, #0x0
	orr		r0, r1
	ldrh	r1, [r3, #0x2]
	orr		r0, r2
	strh	r0, [r3, #0x2]
	add		r0, r3, #0x0
	add		r0, #0x63
	strb	r2, [r0, #0x0]
	add		r0, #0x69
	strb	r2, [r0, #0x0]
	mov		r0, #0x31
	mov		r1, #0x0
	bl		sub_080753ec
	b		_08079d5c

_08079aa4:	.4byte 0x03006E20

_08079aa8:
	ldr		r6, _08079acc
	mov		r0, #0x62
	add		r0, r0, r6
	mov		r8, r0
	ldrb	r0, [r0, #0x0]
	add		r4, r0, #0x0
	add		r7, r6, #0x0
	cmp		r4, #0x64
	bne		_08079abc
	b		_08079d5c
_08079abc:
	cmp		r4, #0x64
	bgt		_08079ad0
	cmp		r4, #0x0
	beq		_08079ade
	cmp		r4, #0x1
	beq		_08079b1e
	b		_08079dce

.incbin "base.gba", 0x79ACA, 0x2

_08079acc:	.4byte 0x03006E20

_08079ad0:
	cmp		r4, #0xf0
	bne		_08079ad6
	b		_08079d66
_08079ad6:
	cmp		r4, #0xf1
	bne		_08079adc
	b		_08079d8a
_08079adc:
	b		_08079dce
_08079ade:
	bl		sub_0807570c
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r4, r6, r1
	mov		r2, r9
	strh	r2, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	mov		r3, #0xdc
	lsl		r3, r3, #0x2
	add		r5, r6, r3
	add		r0, r5, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r6, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_08073020
	mov		r4, r8
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_08079dce
_08079b1e:
	ldr		r2, _08079b8c
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r0, r0, r6
	mov		r10, r0
	ldrh	r0, [r0, #0x0]
	sub		r3, r0, #0x1
	str		r3, [r2, #0x0]
	ldr		r0, [r6, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	and		r0, r1
	cmp		r0, #0x0
	beq		_08079b3c
	b		_08079cd0
_08079b3c:
	ldr		r0, [r6, #0x70]
	cmp		r0, #0x0
	bne		_08079b44
	b		_08079cd8
_08079b44:
	cmp		r3, #0x1
	bgt		_08079b4a
	b		_08079cd8
_08079b4a:
	ldr		r1, _08079b90
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_08079c1a
	ldr		r7, _08079b94
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r5, r6, r2
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	add		r1, r3, #0x0
	bl		sub_0807c138
	add		r1, r0, #0x0
	str		r1, [r7, #0x0]
	cmp		r1, #0x0
	bne		_08079b98
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	ldr		r3, _08079b8c
	ldrh	r1, [r3, #0x0]
	bl		sub_08075730
	mov		r0, r9
	mov		r4, r10
	strh	r0, [r4, #0x0]
	add		r0, r6, #0x0
	add		r0, #0xd4
	str		r0, [r4, #0x4]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	mov		r0, r10
	b		_08079d46

_08079b8c:	.4byte 0x0300247C
_08079b90:	.4byte 0x03006EAC
_08079b94:	.4byte 0x03002478

_08079b98:
	ldr		r2, [r5, #0x0]
	add		r0, r2, #0x1
	sub		r1, #0x1
	sub		r1, r1, r2
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	bl		sub_08075730
	ldr		r1, _08079bd4
	add		r0, r6, r1
	bl		sub_08078664
	add		r1, r0, #0x0
	ldr		r0, _08079bd8
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_08079be4
	ldr		r2, [r7, #0x0]
	sub		r2, #0x1
	ldr		r1, [r5, #0x0]
	sub		r1, r2, r1
	ldr		r3, _08079bdc
	ldr		r0, [r3, #0x0]
	sub		r0, r0, r1
	str		r0, [r3, #0x0]
	str		r2, [r5, #0x0]
	ldr		r0, _08079be0
	str		r4, [r0, #0x0]
	add		r7, r6, #0x0
	b		_08079c1a

_08079bd4:	.4byte 0x0000047D
_08079bd8:	.4byte 0x03002480
_08079bdc:	.4byte 0x0300247C
_08079be0:	.4byte 0x03006EAC

_08079be4:
	cmp		r1, #0x1
	bne		_08079c00
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r1, #0x2
	mov		r0, #0x4
	strh	r0, [r1, #0x0]
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_08079dce
_08079c00:
	add		r1, r6, #0x0
	add		r1, #0x66
	mov		r0, #0x31
	strb	r0, [r1, #0x0]
	add		r0, r6, #0x0
	add		r0, #0x68
	mov		r2, r9
	strh	r2, [r0, #0x0]
	mov		r3, r8
	ldrb	r0, [r3, #0x0]
	mov		r0, #0xf0
	strb	r0, [r3, #0x0]
	b		_08079dce
_08079c1a:
	ldr		r3, [r7, #0x74]
	ldr		r4, _08079c58
	ldr		r2, [r4, #0x0]
	cmp		r3, r2
	bcc		_08079c60
	ldr		r0, [r7, #0x70]
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r1, r7, r3
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	bl		sub_0807c304
	ldr		r0, [r7, #0x70]
	ldr		r2, [r4, #0x0]
	add		r0, r0, r2
	str		r0, [r7, #0x70]
	ldr		r0, [r7, #0x74]
	sub		r0, r0, r2
	str		r0, [r7, #0x74]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _08079c5c
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	ldr		r1, [r7, #0x78]
	ldrh	r0, [r1, #0x0]
	add		r0, r0, r2
	strh	r0, [r1, #0x0]
	b		_08079cd8

.incbin "base.gba", 0x79C56, 0x2

_08079c58:	.4byte 0x0300247C
_08079c5c:	.4byte 0x0000FFFB

_08079c60:
	ldr		r0, [r7, #0x70]
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r4, r7, r1
	ldr		r1, [r4, #0x0]
	add		r1, #0x1
	add		r2, r3, #0x0
	bl		sub_0807c304
	ldr		r2, _08079cc4
	ldr		r1, [r2, #0x0]
	ldr		r0, [r7, #0x74]
	sub		r1, r1, r0
	ldr		r0, _08079cc8
	add		r3, r7, r0
	mov		r6, #0x0
	mov		r5, #0x0
	strh	r1, [r3, #0x0]
	ldr		r1, _08079ccc
	add		r0, r7, r1
	ldr		r2, [r7, #0x74]
	add		r2, #0x1
	ldr		r1, [r4, #0x0]
	add		r1, r1, r2
	ldrh	r2, [r3, #0x0]
	bl		sub_0807c304
	ldr		r2, [r7, #0x78]
	ldr		r1, [r7, #0x74]
	ldrh	r0, [r2, #0x0]
	add		r0, r0, r1
	strh	r0, [r2, #0x0]
	str		r5, [r7, #0x74]
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x4
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r6
	strh	r0, [r7, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r6
	strh	r0, [r7, #0x2]
	b		_08079dce

_08079cc4:	.4byte 0x0300247C
_08079cc8:	.4byte 0x000006FA
_08079ccc:	.4byte 0x0000047D

_08079cd0:
	ldr		r0, [r6, #0x40]
	ldr		r1, _08079cfc
	and		r0, r1
	str		r0, [r6, #0x40]
_08079cd8:
	ldr		r0, _08079d00
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x4
	ble		_08079d08
	ldr		r4, _08079d04
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r2, r4, r3
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r4, r1
	ldrh	r1, [r0, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, r0, r1
	sub		r0, #0x5
	mov		r1, #0x5
	b		_08079d18

.incbin "base.gba", 0x79CFA, 0x2

_08079cfc:	.4byte 0xFFFF7FFF
_08079d00:	.4byte 0x0300247C
_08079d04:	.4byte 0x03006E20

_08079d08:
	cmp		r1, #0x0
	beq		_08079d34
	ldr		r4, _08079d30
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
_08079d18:
	bl		sub_08075688
	bl		sub_080756e8
	cmp		r0, #0x1
	bne		_08079d34
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0x64
	strb	r1, [r0, #0x0]
	b		_08079dce

_08079d30:	.4byte 0x03006E20

_08079d34:
	ldr		r0, _08079d50
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r3, _08079d54
	add		r1, r0, r3
	str		r1, [r0, #0x4]
	ldr		r4, _08079d58
	add		r1, r0, r4
	ldrb	r3, [r1, #0x0]
_08079d46:
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		_08079dce

_08079d50:	.4byte 0x03007000
_08079d54:	.4byte 0xFFFFFEF4
_08079d58:	.4byte 0xFFFFFE83

_08079d5c:
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_08079dce
_08079d66:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r6, r1
	mov		r2, r9
	strh	r2, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
	mov		r3, r8
	ldrb	r0, [r3, #0x0]
	add		r0, #0x1
	ldrb	r1, [r3, #0x0]
	strb	r0, [r3, #0x0]
	b		_08079dce
_08079d8a:
	add		r1, r6, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r6, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r6, #0x2]
	mov		r4, #0x0
	strh	r0, [r6, #0x2]
	ldrh	r0, [r6, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r6, #0x2]
	orr		r0, r4
	strh	r0, [r6, #0x2]
	add		r0, r6, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r6, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
_08079dce:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08078eac

	thumb_func_start sub_08079ddc
sub_08079ddc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r6, r0, #0x0
	add		r4, r1, #0x0
	add		r7, r2, #0x0
	mov		r9, r3
	ldr		r1, _08079e24
	add		r0, r4, #0x0
	mov		r2, #0x7
	bl		sub_0807c2a4
	cmp		r0, #0x0
	bne		_08079dfc
	add		r4, #0x7
_08079dfc:
	add		r0, r4, #0x0
	mov		r1, #0x2f
	bl		sub_0807c180
	add		r5, r0, #0x0
	ldr		r0, _08079e28
	str		r5, [r0, #0x0]
	cmp		r5, #0x0
	bne		_08079e38
	add		r0, r4, #0x0
	mov		r1, #0x0
	bl		sub_0807c180
	sub		r0, r0, r4
	cmp		r0, #0xff
	ble		_08079e2c
	strb	r5, [r6, #0x0]
	mov		r0, #0x0
	b		_08079f2a

.incbin "base.gba", 0x79E22, 0x2

_08079e24:	.4byte 0x0820bde8 @ "http://"
_08079e28:	.4byte 0x03002484

_08079e2c:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0807c088
_08079e34:
	strb	r5, [r7, #0x0]
	b		_08079f26
_08079e38:
	ldr		r0, _08079e4c
	mov		r8, r0
	sub		r2, r5, r4
	str		r2, [r0, #0x0]
	cmp		r2, #0xff
	ble		_08079e50
	mov		r0, #0x0
	strb	r0, [r6, #0x0]
	mov		r0, #0x0
	b		_08079f2a

_08079e4c:	.4byte 0x0300248C

_08079e50:
	add		r0, r6, #0x0
	add		r1, r4, #0x0
	bl		sub_0807c304
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	add		r0, r6, r0
	mov		r6, #0x0
	strb	r6, [r0, #0x0]
	ldr		r1, _08079e94
	add		r0, r4, #0x0
	mov		r2, #0x25
	bl		sub_0807c2a4
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08079e9c
	mov		r6, #0x1
	mov		r0, r9
	strb	r6, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x2f
	bl		sub_0807c1b0
	ldr		r2, _08079e98
	add		r1, r0, #0x1
	str		r1, [r2, #0x0]
	ldrb	r0, [r0, #0x1]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bls		_08079f24
	b		_08079e34

_08079e94:	.4byte 0x0820bd4c @ "gameboy.datacenter.ne.jp/cgb/download"
_08079e98:	.4byte 0x03002488

_08079e9c:
	ldr		r1, _08079ed0
	add		r0, r4, #0x0
	mov		r2, #0x23
	bl		sub_0807c2a4
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08079ed8
	mov		r6, #0x2
	mov		r1, r9
	strb	r6, [r1, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x2f
	bl		sub_0807c1b0
	ldr		r2, _08079ed4
	add		r1, r0, #0x1
	str		r1, [r2, #0x0]
	ldrb	r0, [r0, #0x1]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bls		_08079f24
	b		_08079e34

.incbin "base.gba", 0x79ECE, 0x2

_08079ed0:	.4byte 0x0820bd74 @ "gameboy.datacenter.ne.jp/cgb/upload"
_08079ed4:	.4byte 0x03002488

_08079ed8:
	ldr		r1, _08079ef0
	add		r0, r4, #0x0
	mov		r2, #0x24
	bl		sub_0807c2a4
	cmp		r0, #0x0
	bne		_08079ef4
	mov		r0, #0x3
	mov		r1, r9
	strb	r0, [r1, #0x0]
	strb	r0, [r7, #0x0]
	b		_08079f26

_08079ef0:	.4byte 0x0820bd98 @ "gameboy.datacenter.ne.jp/cgb/utility"

_08079ef4:
	ldr		r1, _08079f38
	add		r0, r4, #0x0
	mov		r2, #0x24
	bl		sub_0807c2a4
	add		r5, r0, #0x0
	cmp		r5, #0x0
	bne		_08079f24
	mov		r6, #0x4
	mov		r0, r9
	strb	r6, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r1, #0x2f
	bl		sub_0807c1b0
	ldr		r2, _08079f3c
	add		r1, r0, #0x1
	str		r1, [r2, #0x0]
	ldrb	r0, [r0, #0x1]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_08079e34
_08079f24:
	strb	r6, [r7, #0x0]
_08079f26:
	ldr		r0, _08079f40
	ldr		r0, [r0, #0x0]
_08079f2a:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x79F36, 0x2

_08079f38:	.4byte 0x0820bdc0 @ "gameboy.datacenter.ne.jp/cgb/ranking"
_08079f3c:	.4byte 0x03002488
_08079f40:	.4byte 0x03002484
	thumb_func_end sub_08079ddc

	thumb_func_start sub_08079f44
sub_08079f44:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x1c
	ldr		r5, [sp, #0x0+0x30]
	ldr		r6, [sp, #0x4+0x30]
	ldr		r7, [sp, #0x8+0x30]
	ldr		r4, [sp, #0xc+0x30]
	str		r4, [sp, #0x14]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	mov		r4, #0x0
	str		r4, [sp, #0x0]
	str		r3, [sp, #0x4]
	str		r5, [sp, #0x8]
	str		r6, [sp, #0xC]
	str		r7, [sp, #0x10]
	mov		r3, #0x16
	str		r3, [sp, #0x18]
	mov		r3, #0x0
	bl		sub_08079fb0
	add		sp, #0x1c
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08079f44

	thumb_func_start sub_08079f78
sub_08079f78:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x1c
	ldr		r4, [sp, #0x0+0x30]
	ldr		r6, [sp, #0x4+0x30]
	ldr		r5, [sp, #0x8+0x30]
	ldr		r7, [sp, #0xc+0x30]
	str		r7, [sp, #0xC]
	ldr		r7, [sp, #0x10+0x30]
	str		r7, [sp, #0x10]
	ldr		r7, [sp, #0x14+0x30]
	str		r7, [sp, #0x14]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	lsl		r4, r4, #0x10
	lsr		r4, r4, #0x10
	lsl		r5, r5, #0x10
	lsr		r5, r5, #0x10
	str		r4, [sp, #0x0]
	str		r6, [sp, #0x4]
	str		r5, [sp, #0x8]
	mov		r4, #0x17
	str		r4, [sp, #0x18]
	bl		sub_08079fb0
	add		sp, #0x1c
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08079f78

	thumb_func_start sub_08079fb0
sub_08079fb0:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x14
	str		r0, [sp, #0x4]
	str		r1, [sp, #0x8]
	str		r3, [sp, #0xC]
	ldr		r1, [sp, #0x0+0x34]
	ldr		r7, [sp, #0x4+0x34]
	ldr		r3, [sp, #0x8+0x34]
	ldr		r0, [sp, #0xc+0x34]
	mov		r9, r0
	ldr		r0, [sp, #0x4c]
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	mov		r10, r2
	lsl		r1, r1, #0x10
	lsr		r5, r1, #0x10
	lsl		r3, r3, #0x10
	lsr		r6, r3, #0x10
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	mov		r8, r0
	mov		r1, r8
	str		r1, [sp, #0x10]
	bl		sub_08075358
	mov		r0, r8
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_08079ffa
	bl		sub_0807537c
	b		_0807a308
_08079ffa:
	ldr		r4, _0807a050
	mov		r2, r8
	str		r2, [r4, #0x70]
	str		r7, [r4, #0x78]
	str		r6, [r4, #0x7c]
	mov		r0, r9
	ldr		r1, _0807a054
	str		r0, [r1, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x84
	ldr		r2, [sp, #0xC]
	str		r2, [r0, #0x0]
	add		r0, #0x4
	str		r5, [r0, #0x0]
	add		r0, #0x2c
	ldr		r1, [sp, #0x10+0x34]
	str		r1, [r0, #0x0]
	add		r0, #0x4
	ldr		r2, [sp, #0x48]
	str		r2, [r0, #0x0]
	sub		r0, #0x1c
	mov		r1, r10
	str		r1, [r0, #0x0]
	add		r0, #0xc
	ldr		r2, [sp, #0x8]
	str		r2, [r0, #0x0]
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x4
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	add		r5, r4, #0x0
	cmp		r0, #0x0
	beq		_0807a040
	b		_0807a216
_0807a040:
	cmp		r6, #0x0
	bne		_0807a058
	str		r6, [r4, #0x78]
	mov		r0, r9
	cmp		r0, #0x0
	beq		_0807a062
	strh	r6, [r0, #0x0]
	b		_0807a062

_0807a050:	.4byte 0x03006E20
_0807a054:	.4byte 0x03006EA0

_0807a058:
	cmp		r7, #0x0
	bne		_0807a05e
	b		_0807a254
_0807a05e:
	mov		r1, r9
	strh	r0, [r1, #0x0]
_0807a062:
	add		r0, r5, #0x0
	add		r0, #0x9c
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0807a07a
	add		r0, r5, #0x0
	add		r0, #0xa8
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0807a07a
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
_0807a07a:
	ldr		r0, [sp, #0x4]
	bl		sub_0807c054
	add		r1, r0, #0x0
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	cmp		r1, r0
	ble		_0807a08c
	b		_0807a254
_0807a08c:
	cmp		r1, #0x0
	bne		_0807a092
	b		_0807a254
_0807a092:
	mov		r4, sp
	add		r4, #0x1
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	ldr		r5, _0807a0d4
	add		r0, r5, #0x0
	ldr		r1, [sp, #0x4]
	mov		r2, sp
	add		r3, r4, #0x0
	bl		sub_08079ddc
	add		r7, r0, #0x0
	ldrb	r0, [r5, #0x0]
	cmp		r0, #0x0
	bne		_0807a0b2
	b		_0807a254
_0807a0b2:
	ldr		r2, _0807a0d8
	add		r1, r5, r2
	mov		r0, sp
	ldrb	r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0807a0e4
	ldr		r1, _0807a0dc
	add		r0, r5, r1
	ldr		r1, _0807a0e0
	str		r1, [r0, #0x0]
	add		r2, #0x18
	add		r0, r5, r2
	str		r1, [r0, #0x0]
	b		_0807a100

.incbin "base.gba", 0x7A0D2, 0x2

_0807a0d4:	.4byte 0x03007190
_0807a0d8:	.4byte 0xFFFFFD30
_0807a0dc:	.4byte 0xFFFFFD44
_0807a0e0:	.4byte 0x0820bec8

_0807a0e4:
	ldr		r0, [sp, #0x10+0x34]
	bl		sub_0807c054
	add		r1, r0, #0x0
	cmp		r1, #0x10
	ble		_0807a0f2
	b		_0807a254
_0807a0f2:
	ldr		r0, [sp, #0x48]
	bl		sub_0807c054
	add		r1, r0, #0x0
	cmp		r1, #0x10
	ble		_0807a100
	b		_0807a254
_0807a100:
	ldrb	r4, [r4, #0x0]
	ldr		r5, _0807a154
	cmp		r4, #0x1
	bne		_0807a110
	ldr		r0, [r5, #0x70]
	cmp		r0, #0x17
	bne		_0807a110
	b		_0807a254
_0807a110:
	cmp		r4, #0x2
	bne		_0807a11c
	ldr		r0, [r5, #0x70]
	cmp		r0, #0x16
	bne		_0807a11c
	b		_0807a254
_0807a11c:
	cmp		r4, #0x3
	bne		_0807a128
	ldr		r0, [r5, #0x70]
	cmp		r0, #0x17
	bne		_0807a128
	b		_0807a254
_0807a128:
	cmp		r4, #0x4
	bne		_0807a134
	ldr		r0, [r5, #0x70]
	cmp		r0, #0x16
	bne		_0807a134
	b		_0807a254
_0807a134:
	mov		r1, #0xdb
	lsl		r1, r1, #0x2
	add		r0, r5, r1
	ldr		r0, [r0, #0x0]
	mov		r6, #0x0
	cmp		r0, #0x0
	bne		_0807a144
	mov		r6, #0x1
_0807a144:
	cmp		r6, #0x1
	bne		_0807a168
	cmp		r7, #0x0
	beq		_0807a158
	add		r0, r5, #0x0
	add		r0, #0x8c
	str		r7, [r0, #0x0]
	b		_0807a170

_0807a154:	.4byte 0x03006E20

_0807a158:
	add		r1, r5, #0x0
	add		r1, #0x8c
	ldr		r0, _0807a164
	str		r0, [r1, #0x0]
	b		_0807a170

.incbin "base.gba", 0x7A162, 0x2

_0807a164:	.4byte 0x0820bec4

_0807a168:
	add		r0, r5, #0x0
	add		r0, #0x8c
	ldr		r2, [sp, #0x4]
	str		r2, [r0, #0x0]
_0807a170:
	add		r4, r5, #0x0
	add		r4, #0x8c
	ldr		r0, [r4, #0x0]
	bl		sub_0807c054
	add		r1, r5, #0x0
	add		r1, #0x90
	str		r0, [r1, #0x0]
	add		r2, r5, #0x0
	add		r2, #0x94
	ldr		r1, [r4, #0x0]
	str		r1, [r2, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x98
	str		r0, [r1, #0x0]
	mov		r0, #0x7
	str		r0, [r5, #0x74]
	bl		sub_0807570c
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807a1f8
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	mov		r3, #0x0
	mov		r2, #0x0
	strh	r0, [r5, #0x2]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807a1fc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r1, _0807a200
	add		r0, r5, r1
	strh	r2, [r0, #0x0]
	sub		r1, #0x2
	add		r0, r5, r1
	strh	r2, [r0, #0x0]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807a204
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r1, _0807a208
	add		r0, r5, r1
	strb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	add		r0, #0xa4
	str		r2, [r0, #0x0]
	add		r0, #0x18
	str		r2, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x6
	strb	r0, [r1, #0x0]
	cmp		r6, #0x0
	bne		_0807a20c
	add		r0, r5, #0x0
	add		r0, #0x6a
	mov		r2, #0xdb
	lsl		r2, r2, #0x2
	add		r1, r5, r2
	mov		r2, #0x4
	bl		sub_0807c304
	ldr		r0, [sp, #0x10]
	mov		r1, #0x2
	bl		sub_0807539c
	b		_0807a304

_0807a1f8:	.4byte 0x0000FFFB
_0807a1fc:	.4byte 0xFFFF7FFF
_0807a200:	.4byte 0x00000704
_0807a204:	.4byte 0xfffeffff
_0807a208:	.4byte 0x00000706

_0807a20c:
	ldr		r0, [sp, #0x10]
	mov		r1, #0x0
	bl		sub_0807539c
	b		_0807a304
_0807a216:
	ldrh	r1, [r4, #0x2]
	ldr		r0, _0807a248
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	mov		r1, #0x0
	mov		r10, r1
	strh	r0, [r4, #0x2]
	ldr		r0, [r4, #0x40]
	ldr		r1, _0807a24c
	and		r0, r1
	str		r0, [r4, #0x40]
	cmp		r6, #0x0
	bne		_0807a250
	str		r6, [r4, #0x78]
	mov		r2, r9
	cmp		r2, #0x0
	beq		_0807a23a
	strh	r6, [r2, #0x0]
_0807a23a:
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	orr		r0, r1
	str		r0, [r4, #0x40]
	mov		r0, r8
	b		_0807a2ac

_0807a248:	.4byte 0x0000FFFB
_0807a24c:	.4byte 0xFFFF7FFF

_0807a250:
	cmp		r7, #0x0
	bne		_0807a262
_0807a254:
	mov		r0, #0x20
	mov		r1, #0x0
	bl		sub_080753ec
	bl		sub_0807537c
	b		_0807a308
_0807a262:
	mov		r1, r10
	mov		r0, r9
	strh	r1, [r0, #0x0]
	ldr		r2, _0807a2b4
	add		r5, r4, r2
	ldrh	r0, [r5, #0x0]
	cmp		r0, #0x0
	beq		_0807a2c0
	cmp		r0, r6
	bhi		_0807a2c0
	ldr		r0, _0807a2b8
	add		r1, r4, r0
	ldrh	r2, [r5, #0x0]
	add		r0, r7, #0x0
	bl		sub_0807c304
	ldrh	r1, [r5, #0x0]
	add		r7, r7, r1
	sub		r0, r6, r1
	lsl		r0, r0, #0x10
	lsr		r6, r0, #0x10
	mov		r2, r9
	ldrh	r0, [r2, #0x0]
	add		r0, r0, r1
	strh	r0, [r2, #0x0]
	mov		r0, r10
	strh	r0, [r5, #0x0]
	str		r7, [r4, #0x78]
	str		r6, [r4, #0x7c]
	ldr		r1, _0807a2bc
	str		r2, [r1, #0x0]
	ldr		r0, [r4, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x8
	orr		r0, r1
	str		r0, [r4, #0x40]
	ldr		r0, [sp, #0x10]
_0807a2ac:
	mov		r1, #0x6e
	bl		sub_0807539c
	b		_0807a304

_0807a2b4:	.4byte 0x000006FA
_0807a2b8:	.4byte 0x0000047D
_0807a2bc:	.4byte 0x03006EA0

_0807a2c0:
	ldr		r4, _0807a2f8
	add		r0, r7, #0x0
	add		r1, r4, #0x0
	add		r2, r6, #0x0
	bl		sub_0807c304
	ldr		r2, _0807a2fc
	add		r5, r4, r2
	ldr		r0, _0807a300
	add		r2, r4, r0
	ldrh	r0, [r2, #0x0]
	sub		r0, r0, r6
	strh	r0, [r2, #0x0]
	add		r1, r6, r4
	ldrh	r2, [r2, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807c304
	mov		r1, r9
	strh	r6, [r1, #0x0]
	ldrh	r1, [r5, #0x2]
	mov		r0, #0x4
	ldrh	r2, [r5, #0x2]
	orr		r0, r1
	strh	r0, [r5, #0x2]
	bl		sub_0807537c
	b		_0807a308

_0807a2f8:	.4byte 0x0300729D
_0807a2fc:	.4byte 0xFFFFFB83
_0807a300:	.4byte 0x0000027D

_0807a304:
	bl		sub_0807537c
_0807a308:
	add		sp, #0x14
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_08079fb0

	thumb_func_start sub_0807a318
sub_0807a318:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	bl		sub_0807c054
	ldr		r1, _0807a340
	str		r0, [r1, #0x0]
	ldr		r2, _0807a344
	add		r4, r4, r0
	str		r4, [r2, #0x0]
	ldr		r0, _0807a348
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x0
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x5e
	bls		_0807a34c
	mov		r0, #0x30
	strb	r0, [r4, #0x0]
	b		_0807a34e

_0807a340:	.4byte 0x03002490
_0807a344:	.4byte 0x03002494
_0807a348:	.4byte 0x080000ac

_0807a34c:
	strb	r1, [r4, #0x0]
_0807a34e:
	add		r0, r4, #0x1
	str		r0, [r2, #0x0]
	ldr		r0, _0807a374
	ldrb	r2, [r0, #0x0]
	add		r0, r2, #0x0
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x5e
	bls		_0807a37c
	ldr		r0, _0807a378
	ldr		r1, [r0, #0x0]
	mov		r2, #0x30
	strb	r2, [r1, #0x0]
	add		r1, #0x1
	str		r1, [r0, #0x0]
	add		r5, r0, #0x0
	b		_0807a388

.incbin "base.gba", 0x7A372, 0x2

_0807a374:	.4byte 0x080000ad
_0807a378:	.4byte 0x03002494

_0807a37c:
	ldr		r1, _0807a3a0
	ldr		r0, [r1, #0x0]
	strb	r2, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	add		r5, r1, #0x0
_0807a388:
	ldr		r0, _0807a3a4
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x0
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x5e
	bls		_0807a3a8
	ldr		r0, [r5, #0x0]
	mov		r1, #0x30
	b		_0807a3aa

.incbin "base.gba", 0x7A39E, 0x2

_0807a3a0:	.4byte 0x03002494
_0807a3a4:	.4byte 0x080000ae

_0807a3a8:
	ldr		r0, [r5, #0x0]
_0807a3aa:
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r5, #0x0]
	ldr		r0, _0807a3c8
	ldrb	r1, [r0, #0x0]
	add		r0, r1, #0x0
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x5e
	bls		_0807a3cc
	ldr		r0, [r5, #0x0]
	mov		r1, #0x30
	b		_0807a3ce

.incbin "base.gba", 0x7A3C6, 0x2

_0807a3c8:	.4byte 0x080000af

_0807a3cc:
	ldr		r0, [r5, #0x0]
_0807a3ce:
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r5, #0x0]
	ldr		r1, [r5, #0x0]
	mov		r0, #0x2d
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	str		r1, [r5, #0x0]
	ldr		r2, _0807a42c
	ldr		r0, _0807a430
	ldrb	r0, [r0, #0x0]
	strb	r0, [r2, #0x0]
	ldr		r4, _0807a434
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1c
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0x0]
	add		r3, r1, #0x1
	str		r3, [r5, #0x0]
	ldrb	r2, [r2, #0x0]
	mov		r0, #0xf
	and		r0, r2
	add		r0, r0, r4
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0x1]
	add		r0, r3, #0x1
	str		r0, [r5, #0x0]
	mov		r4, #0xd
	strb	r4, [r3, #0x1]
	add		r1, r0, #0x1
	str		r1, [r5, #0x0]
	mov		r2, #0xa
	strb	r2, [r0, #0x1]
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	strb	r4, [r1, #0x1]
	add		r1, r0, #0x1
	str		r1, [r5, #0x0]
	strb	r2, [r0, #0x1]
	add		r0, r1, #0x1
	str		r0, [r5, #0x0]
	mov		r0, #0x0
	strb	r0, [r1, #0x1]
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807a42c:	.4byte 0x03002498
_0807a430:	.4byte 0x080000bc
_0807a434:	.4byte 0x0820becc @ "0123456789ABCDEF"
	thumb_func_end sub_0807a318

	thumb_func_start sub_0807a438
sub_0807a438:
	ldr		r1, _0807a44c
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r2, _0807a450
	ldr		r0, [r2, #0x70]
	cmp		r0, #0x16
	beq		_0807a454
	cmp		r0, #0x17
	beq		_0807a46e
	b		_0807a4aa

_0807a44c:	.4byte 0x0300249C
_0807a450:	.4byte 0x03006E20

_0807a454:
	add		r0, r2, #0x0
	add		r0, #0xa0
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x1
	bne		_0807a4aa
	add		r0, #0x4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_0807a4aa
	cmp		r0, #0x2
	bne		_0807a4aa
	str		r3, [r1, #0x0]
	b		_0807a4aa
_0807a46e:
	add		r0, r2, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0807a488
	cmp		r0, #0x2
	bhi		_0807a482
	cmp		r0, #0x0
	beq		_0807a4a6
	b		_0807a4aa
_0807a482:
	cmp		r0, #0x4
	beq		_0807a498
	b		_0807a4aa
_0807a488:
	add		r0, r2, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_0807a4aa
	cmp		r0, #0x2
	bne		_0807a4aa
	b		_0807a4a6
_0807a498:
	add		r0, r2, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0807a4aa
	cmp		r0, #0x2
	bhi		_0807a4aa
_0807a4a6:
	mov		r0, #0x1
	str		r0, [r1, #0x0]
_0807a4aa:
	ldr		r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x7A4AE, 0x2
	thumb_func_end sub_0807a438

	thumb_func_start sub_0807a4b0
sub_0807a4b0:
	push	{ r4, r5, lr }
	ldr		r2, _0807a4d4
	mov		r1, #0x0
	strb	r1, [r2, #0x0]
	ldr		r0, _0807a4d8
	strb	r1, [r0, #0x0]
	ldr		r4, _0807a4dc
	strb	r1, [r4, #0x0]
	ldr		r5, _0807a4e0
	strb	r1, [r5, #0x0]
	ldr		r1, _0807a4e4
	ldr		r0, [r1, #0x70]
	cmp		r0, #0x16
	beq		_0807a4e8
	cmp		r0, #0x17
	beq		_0807a522
	b		_0807a578

.incbin "base.gba", 0x7A4D2, 0x2

_0807a4d4:	.4byte 0x030024A4
_0807a4d8:	.4byte 0x030024A5
_0807a4dc:	.4byte 0x030024A6
_0807a4e0:	.4byte 0x030024A7
_0807a4e4:	.4byte 0x03006E20

_0807a4e8:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x1
	beq		_0807a506
	cmp		r3, #0x1
	bcc		_0807a578
	cmp		r3, #0x3
	bne		_0807a578
	add		r0, #0x4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807a578
_0807a502:
	strb	r0, [r4, #0x0]
	b		_0807a578
_0807a506:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a51a
	cmp		r0, #0x1
	bcc		_0807a578
	cmp		r0, #0x2
	beq		_0807a51e
	b		_0807a578
_0807a51a:
	strb	r3, [r4, #0x0]
	b		_0807a578
_0807a51e:
	strb	r3, [r5, #0x0]
	b		_0807a578
_0807a522:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0807a542
	cmp		r0, #0x2
	bhi		_0807a536
	cmp		r0, #0x0
	beq		_0807a53c
	b		_0807a578
_0807a536:
	cmp		r0, #0x4
	beq		_0807a55c
	b		_0807a578
_0807a53c:
	mov		r0, #0x1
	strb	r0, [r2, #0x0]
	b		_0807a578
_0807a542:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a502
	cmp		r0, #0x1
	bcc		_0807a578
	cmp		r0, #0x2
	bne		_0807a578
	mov		r0, #0x1
	strb	r0, [r5, #0x0]
	strb	r0, [r2, #0x0]
	b		_0807a578
_0807a55c:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a570
	cmp		r0, #0x1
	bcc		_0807a578
	cmp		r0, #0x2
	beq		_0807a574
	b		_0807a578
_0807a570:
	strb	r0, [r2, #0x0]
	b		_0807a502
_0807a574:
	mov		r0, #0x1
	strb	r0, [r5, #0x0]
_0807a578:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1
	bne		_0807a5b4
	ldr		r4, _0807a62c
	ldr		r1, _0807a630
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r1, _0807a634
	add		r0, r4, #0x0
	bl		sub_0807c160
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r1, r0, #0x0
	ldr		r0, _0807a638
	str		r1, [r0, #0x0]
	ldr		r2, _0807a63c
	add		r0, r4, r2
	ldr		r0, [r0, #0x0]
	sub		r2, r4, #0x3
	add		r1, r1, r2
	mov		r2, #0xa
	bl		sub_0807c3fc
	ldr		r1, _0807a640
	add		r0, r4, #0x0
	bl		sub_0807c160
_0807a5b4:
	ldr		r0, _0807a644
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807a5ce
	ldr		r4, _0807a62c
	ldr		r1, _0807a630
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r1, _0807a634
	add		r0, r4, #0x0
	bl		sub_0807c160
_0807a5ce:
	ldr		r0, _0807a648
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807a5f2
	ldr		r4, _0807a62c
	ldr		r1, _0807a64c
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r0, _0807a650
	add		r1, r4, r0
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r1, _0807a654
	add		r0, r4, #0x0
	bl		sub_0807c160
_0807a5f2:
	ldr		r0, _0807a658
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807a616
	ldr		r4, _0807a62c
	ldr		r1, _0807a65c
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r2, _0807a650
	add		r1, r4, r2
	add		r0, r4, #0x0
	bl		sub_0807c160
	ldr		r1, _0807a640
	add		r0, r4, #0x0
	bl		sub_0807c160
_0807a616:
	ldr		r4, _0807a62c
	ldr		r1, _0807a660
	add		r0, r4, #0x0
	bl		sub_0807c160
	add		r0, r4, #0x0
	bl		sub_0807a318
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807a62c:	.4byte 0x03007190
_0807a630:	.4byte 0x0820be5c @ "Content-Type: application/x-cgb\r\n"
_0807a634:	.4byte 0x0820be0c @ "Content-Length: 0\r\n"
_0807a638:	.4byte 0x030024A0
_0807a63c:	.4byte 0xFFFFFD18
_0807a640:	.4byte 0x0820bce4
_0807a644:	.4byte 0x030024A5
_0807a648:	.4byte 0x030024A6
_0807a64c:	.4byte 0x0820be40 @ "Authorization: GB00 name=\""                                           @
_0807a650:	.4byte 0x00000396
_0807a654:	.4byte 0x0820bee0
_0807a658:	.4byte 0x030024A7
_0807a65c:	.4byte 0x0820be8c @ "Gb-Auth-ID: "
_0807a660:	.4byte 0x0820beb0 @ "User-Agent: AGB-"
	thumb_func_end sub_0807a4b0

	thumb_func_start sub_0807a664
sub_0807a664:
	add		r2, r0, #0x0
	cmp		r2, #0x1
	beq		_0807a704
	cmp		r2, #0x1
	bgt		_0807a674
	cmp		r2, #0x0
	beq		_0807a67c
	b		_0807a806
_0807a674:
	cmp		r2, #0x2
	bne		_0807a67a
	b		_0807a784
_0807a67a:
	b		_0807a806
_0807a67c:
	ldr		r1, _0807a68c
	ldr		r0, [r1, #0x70]
	cmp		r0, #0x16
	beq		_0807a690
	cmp		r0, #0x17
	beq		_0807a6a6
	b		_0807a806

.incbin "base.gba", 0x7A68A, 0x2

_0807a68c:	.4byte 0x03006E20

_0807a690:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a6f8
	cmp		r0, #0x1
	bcc		_0807a6f8
	cmp		r0, #0x3
	beq		_0807a6a4
	b		_0807a806
_0807a6a4:
	b		_0807a6f8
_0807a6a6:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0807a6c0
	cmp		r0, #0x2
	bhi		_0807a6ba
	cmp		r0, #0x0
	beq		_0807a6ea
	b		_0807a806
_0807a6ba:
	cmp		r0, #0x4
	beq		_0807a6d6
	b		_0807a806
_0807a6c0:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a6f8
	cmp		r0, #0x1
	bcc		_0807a6f8
	cmp		r0, #0x2
	beq		_0807a6d4
	b		_0807a806
_0807a6d4:
	b		_0807a6ea
_0807a6d6:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a6ea
	cmp		r0, #0x1
	bcc		_0807a6f8
	cmp		r0, #0x2
	beq		_0807a6f8
	b		_0807a806
_0807a6ea:
	ldr		r1, _0807a6f4
	mov		r0, #0x64
	str		r0, [r1, #0x0]
	b		_0807a806

.incbin "base.gba", 0x7A6F2, 0x2

_0807a6f4:	.4byte 0x030024A8

_0807a6f8:
	ldr		r1, _0807a700
	mov		r0, #0x8
	str		r0, [r1, #0x0]
	b		_0807a806

_0807a700:	.4byte 0x030024A8

_0807a704:
	ldr		r1, _0807a714
	ldr		r0, [r1, #0x70]
	cmp		r0, #0x16
	beq		_0807a718
	cmp		r0, #0x17
	beq		_0807a750
	b		_0807a806

.incbin "base.gba", 0x7A712, 0x2

_0807a714:	.4byte 0x03006E20

_0807a718:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a740
	cmp		r0, #0x1
	bcc		_0807a778
	cmp		r0, #0x3
	bne		_0807a806
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bhi		_0807a806
	mov		r0, #0x6e
	ldr		r1, _0807a73c
	str		r0, [r1, #0x0]
	b		_0807a806

_0807a73c:	.4byte 0x030024A8

_0807a740:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_0807a778
_0807a74a:
	cmp		r0, #0x2
	bne		_0807a806
	b		_0807a7d0
_0807a750:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0807a740
	cmp		r0, #0x2
	bhi		_0807a764
	cmp		r0, #0x0
	beq		_0807a778
	b		_0807a806
_0807a764:
	cmp		r0, #0x4
	bne		_0807a806
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bls		_0807a778
	cmp		r0, #0x2
	beq		_0807a7d0
	b		_0807a806
_0807a778:
	ldr		r1, _0807a780
	mov		r0, #0x6e
	str		r0, [r1, #0x0]
	b		_0807a806

_0807a780:	.4byte 0x030024A8

_0807a784:
	ldr		r1, _0807a794
	ldr		r0, [r1, #0x70]
	cmp		r0, #0x16
	beq		_0807a798
	cmp		r0, #0x17
	beq		_0807a7b6
	b		_0807a806

.incbin "base.gba", 0x7A792, 0x2

_0807a794:	.4byte 0x03006E20

_0807a798:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a7f4
	cmp		r0, #0x1
	bcc		_0807a7d0
	cmp		r0, #0x3
	bne		_0807a806
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807a802
	b		_0807a74a
_0807a7b6:
	add		r0, r1, #0x0
	add		r0, #0xa0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	beq		_0807a7dc
	cmp		r0, #0x2
	bhi		_0807a7ca
	cmp		r0, #0x0
	beq		_0807a7d0
	b		_0807a806
_0807a7ca:
	cmp		r0, #0x4
	beq		_0807a7f4
	b		_0807a806
_0807a7d0:
	ldr		r1, _0807a7d8
	mov		r0, #0xff
	str		r0, [r1, #0x0]
	b		_0807a806

_0807a7d8:	.4byte 0x030024A8

_0807a7dc:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	bhi		_0807a806
	cmp		r0, #0x1
	bcc		_0807a806
	ldr		r1, _0807a7f0
	str		r2, [r1, #0x0]
	b		_0807a806

_0807a7f0:	.4byte 0x030024A8

_0807a7f4:
	add		r0, r1, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x2
	bhi		_0807a806
	cmp		r0, #0x1
	bcc		_0807a806
_0807a802:
	ldr		r0, _0807a80c
	str		r2, [r0, #0x0]
_0807a806:
	ldr		r1, _0807a80c
	ldr		r0, [r1, #0x0]
	bx		lr

_0807a80c:	.4byte 0x030024A8
	thumb_func_end sub_0807a664

	thumb_func_start sub_0807a810
sub_0807a810:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	ldr		r2, _0807a854
	ldr		r1, _0807a858
	ldr		r0, _0807a85c
	mov		r3, #0x0
	str		r3, [r0, #0x0]
	str		r3, [r1, #0x0]
	str		r3, [r2, #0x0]
	ldr		r2, _0807a860
	ldr		r1, _0807a864
	ldr		r0, _0807a868
	str		r3, [r0, #0x0]
	str		r3, [r1, #0x0]
	str		r3, [r2, #0x0]
	ldr		r1, _0807a86c
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807a8c2
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x23
	beq		_0807a892
	cmp		r0, #0x23
	bgt		_0807a870
	cmp		r0, #0x15
	beq		_0807a87a
	b		_0807a8b4

_0807a854:	.4byte 0x030024AC
_0807a858:	.4byte 0x030024B0
_0807a85c:	.4byte 0x030024B4
_0807a860:	.4byte 0x030024B8
_0807a864:	.4byte 0x030024BC
_0807a868:	.4byte 0x030024C0
_0807a86c:	.4byte 0x03006E20

_0807a870:
	cmp		r0, #0x24
	beq		_0807a8c2
	cmp		r0, #0x28
	beq		_0807a892
	b		_0807a8b4
_0807a87a:
	add		r2, r1, #0x0
	add		r2, #0x66
	mov		r0, #0x24
	strb	r0, [r2, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x68
	strh	r3, [r0, #0x0]
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		_0807a8c2
_0807a892:
	ldr		r2, _0807a8b0
	add		r3, r2, #0x0
	add		r3, #0x66
	mov		r1, #0x0
	mov		r0, #0x24
	strb	r0, [r3, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf1
	strb	r0, [r1, #0x0]
	b		_0807a8c2

_0807a8b0:	.4byte 0x03006E20

_0807a8b4:
	bl		sub_08074500
	ldr		r0, _0807a8f4
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf1
	strb	r1, [r0, #0x0]
_0807a8c2:
	ldr		r7, _0807a8f4
	add		r5, r7, #0x0
	add		r5, #0x62
	ldrb	r0, [r5, #0x0]
	add		r2, r0, #0x0
	add		r3, r7, #0x0
	cmp		r2, #0x7
	bne		_0807a8d4
	b		_0807ab1c
_0807a8d4:
	cmp		r2, #0x7
	bgt		_0807a906
	cmp		r2, #0x3
	bne		_0807a8de
	b		_0807a9e4
_0807a8de:
	cmp		r2, #0x3
	bgt		_0807a8f8
	cmp		r2, #0x1
	beq		_0807a976
	cmp		r2, #0x1
	bgt		_0807a990
	cmp		r2, #0x0
	beq		_0807a95a
	bl		sub_0807b332
		
	.2byte	0x0
	
_0807a8f4:
	ldr		r0, [r4, #0x60]
	lsl		r0, r0, #0xc
_0807a8f8:
	cmp		r2, #0x5
	bne		_0807a8fe
	b		_0807aa60
_0807a8fe:
	cmp		r2, #0x5
	ble		_0807a904
	b		_0807aa7e
_0807a904:
	b		_0807aa02
_0807a906:
	cmp		r2, #0x64
	bne		_0807a90c
	b		_0807b0a4
_0807a90c:
	cmp		r2, #0x64
	bgt		_0807a92e
	cmp		r2, #0x32
	bne		_0807a916
	b		_0807b068
_0807a916:
	cmp		r2, #0x32
	bgt		_0807a924
	cmp		r2, #0x8
	bne		_0807a920
	b		_0807ab8c
_0807a920:
	bl		sub_0807b332
_0807a924:
	cmp		r2, #0x33
	bne		_0807a92a
	b		_0807b082
_0807a92a:
	bl		sub_0807b332
_0807a92e:
	cmp		r2, #0xf0
	bne		_0807a936
	bl		sub_0807b270
_0807a936:
	cmp		r2, #0xf0
	bgt		_0807a946
	cmp		r2, #0x6e
	bne		_0807a942
	bl		sub_0807b130
_0807a942:
	bl		sub_0807b332
_0807a946:
	cmp		r2, #0xf1
	bne		_0807a94e
	bl		sub_0807b292
_0807a94e:
	cmp		r2, #0xff
	bne		_0807a956
	bl		sub_0807b2de
_0807a956:
	bl		sub_0807b332
_0807a95a:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	strh	r2, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r2, #0xdc
	lsl		r2, r2, #0x2
	add		r1, r7, r2
	bl		sub_08073b18
	bl		sub_0807b288
_0807a976:
	add		r0, r7, #0x0
	add		r0, #0x6a
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r1, r7, r3
	ldr		r1, [r1, #0x0]
	mov		r2, #0x4
	bl		sub_0807c304
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
_0807a990:
	ldr		r2, _0807a9b8
	mov		r0, #0x0
	strh	r0, [r2, #0x0]
	ldr		r4, _0807a9bc
	add		r0, r2, r4
	str		r0, [r2, #0x4]
	mov		r1, #0xc6
	lsl		r1, r1, #0x1
	add		r0, r2, r1
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0807a9c4
	ldr		r3, _0807a9c0
	add		r1, r2, r3
	add		r0, r2, #0x0
	mov		r2, #0x50
	bl		sub_08073810
	b		_0807a9d0

.incbin "base.gba", 0x7A9B6, 0x2

_0807a9b8:	.4byte 0x03007000
_0807a9bc:	.4byte 0xFFFFFEF4
_0807a9c0:	.4byte 0xFFFFFE8A

_0807a9c4:
	ldr		r4, _0807a9dc
	add		r1, r2, r4
	add		r0, r2, #0x0
	mov		r2, #0x50
	bl		sub_08073810
_0807a9d0:
	ldr		r0, _0807a9e0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	add		r1, #0x1
	b		_0807b09e

.incbin "base.gba", 0x7A9DA, 0x2

_0807a9dc:	.4byte 0xFFFFFE8A
_0807a9e0:	.4byte 0x03006E20

_0807a9e4:
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r0, [r0, #0x0]
	ldrb	r0, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x63
	strb	r0, [r1, #0x0]
	add		r1, #0x69
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
_0807aa02:
	ldr		r4, _0807aa28
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	ldr		r2, _0807aa2c
	add		r0, r4, r2
	str		r0, [r4, #0x4]
	bl		sub_0807a438
	cmp		r0, #0x0
	bne		_0807aa38
	ldr		r1, _0807aa30
	ldr		r3, _0807aa34
	add		r0, r4, r3
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0x4
	bl		sub_08073020
	b		_0807aa48

_0807aa28:	.4byte 0x03007000
_0807aa2c:	.4byte 0xFFFFFEF4
_0807aa30:	.4byte 0x0820bdf0
_0807aa34:	.4byte 0xFFFFFE83

_0807aa38:
	ldr		r1, _0807aa54
	ldr		r2, _0807aa58
	add		r0, r4, r2
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0x5
	bl		sub_08073020
_0807aa48:
	ldr		r1, _0807aa5c
	add		r2, r1, #0x0
	add		r2, #0xc8
	add		r1, #0x62
	b		_0807aafa

.incbin "base.gba", 0x7AA52, 0x2

_0807aa54:	.4byte 0x0820bdf8 @ "POST"
_0807aa58:	.4byte 0xFFFFFE83
_0807aa5c:	.4byte 0x03006E20

_0807aa60:
	add		r1, r7, #0x0
	add		r1, #0x8c
	add		r0, r7, #0x0
	add		r0, #0x94
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	add		r1, #0x4
	add		r0, r7, #0x0
	add		r0, #0x98
	ldr		r0, [r0, #0x0]
	str		r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
_0807aa7e:
	ldr		r4, _0807aac0
	mov		r0, #0x0
	strh	r0, [r4, #0x0]
	ldr		r3, _0807aac4
	add		r0, r4, r3
	str		r0, [r4, #0x4]
	ldr		r0, _0807aac8
	add		r6, r4, r0
	ldr		r2, [r6, #0x0]
	cmp		r2, #0xfe
	bls		_0807aadc
	ldr		r1, _0807aacc
	add		r5, r4, r1
	ldr		r1, [r5, #0x0]
	ldr		r2, _0807aad0
	add		r0, r4, r2
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	mov		r2, #0xfe
	bl		sub_08073020
	ldr		r0, [r5, #0x0]
	add		r0, #0xfe
	str		r0, [r5, #0x0]
	ldr		r0, [r6, #0x0]
	sub		r0, #0xfe
	str		r0, [r6, #0x0]
	ldr		r3, _0807aad4
	add		r2, r4, r3
	ldr		r0, _0807aad8
	add		r1, r4, r0
	ldrb	r0, [r1, #0x0]
	b		_0807aafe

_0807aac0:	.4byte 0x03007000
_0807aac4:	.4byte 0xFFFFFEF4
_0807aac8:	.4byte 0xFFFFFEB0
_0807aacc:	.4byte 0xfffffeac
_0807aad0:	.4byte 0xFFFFFE83
_0807aad4:	.4byte 0xFFFFFEE8
_0807aad8:	.4byte 0xFFFFFE82

_0807aadc:
	ldr		r1, _0807ab0c
	add		r0, r4, r1
	ldr		r1, [r0, #0x0]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	ldr		r3, _0807ab10
	add		r0, r4, r3
	ldrb	r3, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_08073020
	ldr		r0, _0807ab14
	add		r2, r4, r0
	ldr		r3, _0807ab18
	add		r1, r4, r3
_0807aafa:
	ldrb	r0, [r1, #0x0]
	add		r0, #0x1
_0807aafe:
	str		r0, [r2, #0x0]
	ldrb	r0, [r1, #0x0]
	mov		r0, #0x32
	strb	r0, [r1, #0x0]
	bl		sub_0807b332
	
	.2byte	0x0
	
_0807ab0c:
.incbin "base.gba", 0x7AB0C, 0x4
_0807ab10:
.incbin "base.gba", 0x7AB10, 0x4
_0807ab14:
.incbin "base.gba", 0x7AB14, 0x4
_0807ab18:
.incbin "base.gba", 0x7AB18, 0x4
_0807ab1c:
	mov		r4, #0xdc
	lsl		r4, r4, #0x2
	add		r6, r7, r4
	ldr		r1, _0807ab80
	add		r0, r6, #0x0
	bl		sub_0807c088
	bl		sub_0807a4b0
	bl		sub_0807570c
	add		r0, r7, #0x0
	add		r0, #0xac
	mov		r4, #0x0
	str		r4, [r0, #0x0]
	add		r0, #0x4
	str		r4, [r0, #0x0]
	add		r0, #0x10
	str		r4, [r0, #0x0]
	ldr		r1, _0807ab84
	ldr		r0, _0807ab88
	str		r4, [r0, #0x0]
	str		r4, [r1, #0x0]
	mov		r0, #0x0
	bl		sub_0807a664
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r5, r7, r0
	strh	r4, [r5, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xd4
	str		r0, [r5, #0x4]
	add		r0, r6, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	add		r0, r7, #0x0
	add		r0, #0x63
	ldrb	r3, [r0, #0x0]
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	bl		sub_08073020
	b		sub_0807b332

.incbin "base.gba", 0x7AB7E, 0x2

_0807ab80:	.4byte 0x0820be00 @ " HTTP/1.0\r\n"
_0807ab84:	.4byte 0x030024AC 
_0807ab88:	.4byte 0x030024B0

_0807ab8c:
	add		r0, r7, #0x0
	add		r0, #0xac
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807abc4
	add		r0, r7, #0x0
	add		r0, #0xc0
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0807abda
	add		r0, r7, #0x0
	add		r0, #0xb0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	beq		_0807abe8
	mov		r0, #0x1
	bl		sub_0807a664
	add		r2, r7, #0x0
	add		r2, #0x62
	ldrb	r1, [r2, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xa4
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	b		sub_0807b332
_0807abc4:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	cmp		r1, #0x0
	beq		_0807ac22
	add		r0, r7, #0x0
	add		r0, #0xc0
	ldr		r1, [r0, #0x0]
	cmp		r1, #0x0
	bne		_0807abf0
_0807abda:
	add		r2, r7, #0x0
	add		r2, #0x66
	mov		r0, #0x32
	strb	r0, [r2, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
_0807abe8:
	ldrb	r0, [r5, #0x0]
	mov		r0, #0xf0
	strb	r0, [r5, #0x0]
	b		sub_0807b332
_0807abf0:
	add		r0, r7, #0x0
	add		r0, #0xb0
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807ac06
	add		r0, r7, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xf0
	strb	r1, [r0, #0x0]
	b		sub_0807b332
_0807ac06:
	add		r2, r7, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x32
	strb	r0, [r2, #0x0]
	add		r0, r7, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xf0
	strb	r0, [r1, #0x0]
	b		sub_0807b332
_0807ac22:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r2, r7, r1
	ldrh	r0, [r2, #0x0]
	cmp		r0, #0x1
	bne		_0807ac30
	b		_0807aff4
_0807ac30:
	ldr		r6, _0807ac68
	sub		r0, #0x1
	str		r0, [r6, #0x0]
	ldr		r1, _0807ac6c
	mov		r3, #0xf2
	lsl		r3, r3, #0x1
	add		r0, r7, r3
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	ldr		r3, _0807ac70
	ldr		r4, _0807ac74
	add		r5, r7, r4
	str		r5, [r3, #0x0]
	ldr		r0, _0807ac78
	add		r4, r7, r0
	ldrh	r0, [r4, #0x0]
	mov		r8, r1
	cmp		r0, #0x0
	beq		_0807ac5c
	add		r0, r0, r5
	str		r0, [r3, #0x0]
_0807ac5c:
	mov		r9, r3
	mov		r10, r6
	add		r6, r7, #0x0
	add		r7, #0x66
	b		_0807afd8

.incbin "base.gba", 0x7AC66, 0x2

_0807ac68:	.4byte 0x030024B8
_0807ac6c:	.4byte 0x030024AC
_0807ac70:	.4byte 0x030024B4
_0807ac74:	.4byte 0x0000047D
_0807ac78:	.4byte 0x000006FA

_0807ac7c:
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	sub		r0, r1, r0
	mov		r3, r10
	ldr		r1, [r3, #0x0]
	sub		r1, r1, r0
	str		r1, [r3, #0x0]
	ldr		r4, _0807ad38
	ldr		r0, _0807ad3c
	add		r1, r4, r0
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807aca2
	ldr		r2, _0807ad40
	add		r0, r4, r2
	mov		r3, r9
	str		r0, [r3, #0x0]
	mov		r0, #0x0
	strh	r0, [r1, #0x0]
_0807aca2:
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	ldr		r1, _0807ad44
	mov		r2, #0x4
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807ada0
	mov		r2, r9
	ldr		r3, [r2, #0x0]
	ldrb	r0, [r3, #0x9]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_0807ad88
	ldrb	r0, [r3, #0xa]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_0807ad88
	ldrb	r0, [r3, #0xb]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bhi		_0807ad88
	ldrb	r0, [r3, #0x9]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldrb	r1, [r3, #0xa]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r0, _0807ad48
	add		r2, r2, r0
	ldrb	r3, [r3, #0xb]
	add		r2, r2, r3
	ldr		r1, _0807ad4c
	add		r0, r4, r1
	strh	r2, [r0, #0x0]
	add		r0, r4, #0x0
	add		r0, #0xc0
	mov		r3, #0x1
	str		r3, [r0, #0x0]
	sub		r0, #0x20
	ldr		r0, [r0, #0x0]
	sub		r0, #0x1
	cmp		r0, #0x3
	bhi		_0807ad5c
	add		r0, r4, #0x0
	add		r0, #0xa4
	ldr		r3, [r0, #0x0]
	cmp		r3, #0x0
	bne		_0807ad5c
	lsl		r0, r2, #0x10
	lsr		r1, r0, #0x10
	ldr		r0, _0807ad50
	cmp		r1, r0
	bne		_0807ad26
	b		_0807af40
_0807ad26:
	mov		r0, #0x32
	strb	r0, [r7, #0x0]
	cmp		r1, #0xc8
	bne		_0807ad54
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r3, [r0, #0x0]
	b		_0807ad94

.incbin "base.gba", 0x7AD36, 0x2

_0807ad38:	.4byte 0x03006E20
_0807ad3c:	.4byte 0x000006FA
_0807ad40:	.4byte 0x0000047D
_0807ad44:	.4byte 0x0820bee4
_0807ad48:	.4byte 0x0000FFD0
_0807ad4c:	.4byte 0x00000702
_0807ad50:	.4byte 0x00000191

_0807ad54:
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r2, [r0, #0x0]
	b		_0807ad94
_0807ad5c:
	ldr		r2, _0807ad7c
	ldr		r1, _0807ad80
	add		r0, r2, r1
	ldrh	r1, [r0, #0x0]
	cmp		r1, #0xc8
	bne		_0807ad6a
	b		_0807af40
_0807ad6a:
	mov		r0, #0x32
	strb	r0, [r7, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	mov		r2, #0x1
	ldr		r3, _0807ad84
	str		r2, [r3, #0x0]
	b		_0807af40

_0807ad7c:	.4byte 0x03006E20
_0807ad80:	.4byte 0x00000702
_0807ad84:	.4byte 0x03006ED0

_0807ad88:
	mov		r0, #0x0
	mov		r1, #0x32
	strb	r1, [r7, #0x0]
	add		r1, r6, #0x0
	add		r1, #0x68
	strh	r0, [r1, #0x0]
_0807ad94:
	mov		r4, #0x1
	ldr		r0, _0807ad9c
	str		r4, [r0, #0x0]
	b		_0807af40

_0807ad9c:	.4byte 0x03006ED0

_0807ada0:
	add		r0, r4, #0x0
	add		r0, #0xa4
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0807ae78
	mov		r1, r9
	ldr		r0, [r1, #0x0]
	ldr		r1, _0807ae04
	mov		r2, #0x6
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807adc8
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	mov		r2, #0x1
	and		r0, r2
	cmp		r0, #0x0
	beq		_0807ade6
_0807adc8:
	mov		r3, r9
	ldr		r0, [r3, #0x0]
	ldr		r1, _0807ae08
	mov		r2, #0xa
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807ae78
	add		r0, r4, #0x0
	add		r0, #0xbc
	ldr		r0, [r0, #0x0]
	mov		r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807ae78
_0807ade6:
	ldr		r4, _0807ae0c
	ldr		r0, [r4, #0x0]
	ldr		r1, _0807ae04
	mov		r2, #0x6
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807ae10
	add		r1, r6, #0x0
	add		r1, #0xbc
	ldr		r0, [r1, #0x0]
	mov		r4, #0x1
	orr		r0, r4
	str		r0, [r1, #0x0]
	b		_0807ae2a

_0807ae04:	.4byte 0x0820be9c @ "Date: "
_0807ae08:	.4byte 0x0820bea4 @ "Location: "
_0807ae0c:	.4byte 0x030024B4

_0807ae10:
	ldr		r0, [r4, #0x0]
	ldr		r1, _0807ae6c
	mov		r2, #0xa
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807ae2a
	add		r0, r6, #0x0
	add		r0, #0xbc
	ldr		r1, [r0, #0x0]
	mov		r2, #0x2
	orr		r1, r2
	str		r1, [r0, #0x0]
_0807ae2a:
	ldr		r1, _0807ae70
	add		r5, r1, #0x0
	add		r5, #0x9c
	ldr		r2, [r5, #0x0]
	cmp		r2, #0x0
	bne		_0807ae38
	b		_0807af40
_0807ae38:
	add		r4, r1, #0x0
	add		r4, #0xa8
	ldr		r0, [r4, #0x0]
	cmp		r0, #0x0
	bne		_0807ae44
	b		_0807af40
_0807ae44:
	mov		r3, r9
	ldr		r1, [r3, #0x0]
	bl		sub_0807c0b4
	ldr		r1, _0807ae74
	str		r0, [r1, #0x0]
	ldr		r1, [r5, #0x0]
	sub		r2, r1, r0
	str		r2, [r5, #0x0]
	ldr		r1, [r4, #0x0]
	add		r1, r1, r0
	str		r1, [r4, #0x0]
	sub		r0, r1, #0x1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0807af40
	cmp		r2, #0x0
	beq		_0807af40
	strb	r0, [r1, #0x0]
	b		_0807af40

_0807ae6c:	.4byte 0x0820bea4 @ "Location: "
_0807ae70:	.4byte 0x03006E20
_0807ae74:	.4byte 0x030024C0

_0807ae78:
	ldr		r4, _0807aea4
	ldr		r0, [r4, #0x0]
	ldr		r1, _0807aea8
	mov		r2, #0x1d
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807aeb0
	ldr		r0, [r4, #0x0]
	add		r0, #0x1d
	add		r1, r6, #0x0
	add		r1, #0xb4
	ldr		r1, [r1, #0x0]
	add		r2, r6, #0x0
	add		r2, #0xb8
	ldr		r2, [r2, #0x0]
	ldr		r4, _0807aeac
	add		r3, r6, r4
	bl		sub_0807c714
	b		_0807af40

.incbin "base.gba", 0x7AEA2, 0x2

_0807aea4:	.4byte 0x030024B4
_0807aea8:	.4byte 0x0820be20 @ "WWW-Authenticate: GB00 name=\""                                        @
_0807aeac:	.4byte 0x00000706

_0807aeb0:
	ldr		r0, [r4, #0x0]
	ldr		r1, _0807aefc
	mov		r2, #0xb
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807af28
	ldr		r5, _0807af00
	ldr		r3, [r4, #0x0]
	ldrb	r0, [r3, #0xb]
	sub		r0, #0x30
	mov		r1, #0x64
	add		r2, r0, #0x0
	mul		r2, r1
	ldrb	r1, [r3, #0xc]
	sub		r1, #0x30
	lsl		r0, r1, #0x2
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	add		r2, r2, r0
	ldr		r0, _0807af04
	add		r2, r2, r0
	ldrb	r3, [r3, #0xd]
	add		r1, r2, r3
	ldr		r2, _0807af08
	add		r0, r5, r2
	strh	r1, [r0, #0x0]
	lsl		r0, r1, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x65
	bne		_0807af0c
	ldr		r0, [r5, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	orr		r0, r1
	str		r0, [r5, #0x40]
	b		_0807af40

.incbin "base.gba", 0x7AEFA, 0x2

_0807aefc:	.4byte 0x0820be80 @ "Gb-Status: "
_0807af00:	.4byte 0x03006E20
_0807af04:	.4byte 0x0000FFD0
_0807af08:	.4byte 0x00000704

_0807af0c:
	cmp		r0, #0x0
	beq		_0807af40
	mov		r0, #0x33
	strb	r0, [r7, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	mov		r3, #0x1
	ldr		r4, _0807af24
	str		r3, [r4, #0x0]
	b		_0807af40

.incbin "base.gba", 0x7AF22, 0x2

_0807af24:	.4byte 0x03006ED0

_0807af28:
	ldr		r0, [r4, #0x0]
	ldr		r1, _0807af68
	mov		r2, #0xc
	bl		sub_0807c278
	cmp		r0, #0x0
	bne		_0807af40
	ldr		r1, [r4, #0x0]
	add		r1, #0xc
	ldr		r0, _0807af6c
	bl		sub_0807c088
_0807af40:
	ldr		r0, _0807af70
	ldr		r2, [r0, #0x0]
	ldrb	r3, [r2, #0x0]
	add		r1, r0, #0x0
	cmp		r3, #0xd
	bne		_0807af52
	ldrb	r0, [r2, #0x1]
	cmp		r0, #0xa
	beq		_0807af56
_0807af52:
	cmp		r3, #0xa
	bne		_0807afcc
_0807af56:
	ldr		r0, [r1, #0x0]
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xd
	bne		_0807af74
	mov		r2, r10
	ldr		r0, [r2, #0x0]
	sub		r0, #0x2
	str		r0, [r2, #0x0]
	b		_0807af7c

_0807af68:	.4byte 0x0820be8c @ "Gb-Auth-ID: "
_0807af6c:	.4byte 0x03007526
_0807af70:	.4byte 0x030024B0

_0807af74:
	mov		r3, r10
	ldr		r0, [r3, #0x0]
	sub		r0, #0x1
	str		r0, [r3, #0x0]
_0807af7c:
	ldr		r3, _0807afa8
	add		r0, r3, #0x0
	add		r0, #0xac
	mov		r4, #0x1
	str		r4, [r0, #0x0]
	mov		r0, r10
	ldr		r2, [r0, #0x0]
	cmp		r2, #0x0
	beq		_0807aff4
	ldr		r1, [r1, #0x0]
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0xd
	bne		_0807afac
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r3, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x2
	bl		sub_0807c304
	b		_0807afbc

_0807afa8:	.4byte 0x03006E20

_0807afac:
	mov		r4, #0xf2
	lsl		r4, r4, #0x1
	add		r0, r3, r4
	ldr		r0, [r0, #0x0]
	add		r0, #0x1
	add		r1, #0x1
	bl		sub_0807c304
_0807afbc:
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	ldr		r2, _0807afc8
	strh	r0, [r2, #0x0]
	b		_0807aff4

_0807afc8:	.4byte 0x03007000

_0807afcc:
	ldr		r1, _0807b040
	str		r2, [r1, #0x0]
	ldr		r0, _0807b044
	mov		r3, r9
	str		r0, [r3, #0x0]
	mov		r8, r1
_0807afd8:
	mov		r4, r9
	ldr		r0, [r4, #0x0]
	mov		r2, r8
	ldr		r1, [r2, #0x0]
	mov		r3, r10
	ldr		r2, [r3, #0x0]
	bl		sub_0807c0f4
	add		r1, r0, #0x0
	ldr		r0, _0807b048
	str		r1, [r0, #0x0]
	cmp		r1, #0x0
	beq		_0807aff4
	b		_0807ac7c
_0807aff4:
	ldr		r4, _0807b04c
	add		r6, r4, #0x0
	add		r6, #0xac
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x0
	bne		_0807b022
	ldr		r5, _0807b050
	ldr		r2, [r5, #0x0]
	cmp		r2, #0x0
	beq		_0807b01c
	ldr		r1, _0807b054
	add		r0, r4, r1
	ldr		r1, _0807b040
	ldr		r1, [r1, #0x0]
	bl		sub_0807c304
	ldr		r1, [r5, #0x0]
	ldr		r2, _0807b058
	add		r0, r4, r2
	strh	r1, [r0, #0x0]
_0807b01c:
	ldr		r0, [r6, #0x0]
	cmp		r0, #0x0
	beq		_0807b02c
_0807b022:
	ldr		r0, _0807b050
	ldr		r0, [r0, #0x0]
	cmp		r0, #0x0
	beq		_0807b02c
	b		sub_0807b332
_0807b02c:
	ldr		r0, _0807b05c
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	ldr		r3, _0807b060
	add		r1, r0, r3
	str		r1, [r0, #0x4]
	ldr		r4, _0807b064
	add		r1, r0, r4
	b		_0807b256

.incbin "base.gba", 0x7B03E, 0x2

_0807b040:	.4byte 0x030024AC
_0807b044:	.4byte 0x0300729D
_0807b048:	.4byte 0x030024B0
_0807b04c:	.4byte 0x03006E20
_0807b050:	.4byte 0x030024B8
_0807b054:	.4byte 0x0000047D
_0807b058:	.4byte 0x000006FA
_0807b05c:	.4byte 0x03007000
_0807b060:	.4byte 0xFFFFFEF4
_0807b064:	.4byte 0xFFFFFE83

_0807b068:
	add		r2, r7, #0x0
	add		r2, #0xc4
	ldrb	r0, [r7, #0x5]
	lsl		r0, r0, #0x2
	add		r1, r7, #0x0
	add		r1, #0x34
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	str		r0, [r2, #0x0]
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
_0807b082:
	add		r0, r3, #0x0
	add		r0, #0xc4
	ldr		r1, [r0, #0x0]
	sub		r1, #0x1
	str		r1, [r0, #0x0]
	mov		r0, #0x1
	neg		r0, r0
	cmp		r1, r0
	beq		_0807b096
	b		sub_0807b332
_0807b096:
	add		r0, r3, #0x0
	add		r0, #0xc8
	ldr		r1, [r0, #0x0]
	sub		r0, #0x66
_0807b09e:
	ldrb	r2, [r0, #0x0]
	strb	r1, [r0, #0x0]
	b		sub_0807b332
_0807b0a4:
	mov		r0, #0xf0
	lsl		r0, r0, #0x1
	add		r6, r7, r0
	mov		r4, #0x0
	strh	r4, [r6, #0x0]
	add		r0, r7, #0x0
	add		r0, #0xd4
	str		r0, [r6, #0x4]
	mov		r1, #0x88
	add		r1, r1, r7
	mov		r8, r1
	ldr		r2, [r1, #0x0]
	cmp		r2, #0xfe
	bls		_0807b0e8
	add		r4, r7, #0x0
	add		r4, #0x84
	ldr		r1, [r4, #0x0]
	sub		r0, #0x71
	ldrb	r3, [r0, #0x0]
	add		r0, r6, #0x0
	mov		r2, #0xfe
	bl		sub_08073020
	ldr		r0, [r4, #0x0]
	add		r0, #0xfe
	str		r0, [r4, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	sub		r0, #0xfe
	str		r0, [r2, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xc8
	ldrb	r0, [r5, #0x0]
	b		_0807b11c
_0807b0e8:
	add		r0, r7, #0x0
	add		r0, #0x84
	ldr		r1, [r0, #0x0]
	lsl		r2, r2, #0x18
	lsr		r2, r2, #0x18
	sub		r0, #0x21
	ldrb	r3, [r0, #0x0]
	add		r0, r6, #0x0
	bl		sub_08073020
	add		r0, r7, #0x0
	add		r0, #0xac
	str		r4, [r0, #0x0]
	add		r0, #0x4
	str		r4, [r0, #0x0]
	add		r0, #0x10
	str		r4, [r0, #0x0]
	ldr		r1, _0807b128
	ldr		r0, _0807b12c
	str		r4, [r0, #0x0]
	str		r4, [r1, #0x0]
	bl		sub_0807570c
	add		r1, r7, #0x0
	add		r1, #0xc8
	mov		r0, #0x8
_0807b11c:
	str		r0, [r1, #0x0]
	ldrb	r0, [r5, #0x0]
	mov		r0, #0x32
	strb	r0, [r5, #0x0]
	b		sub_0807b332

.incbin "base.gba", 0x7B126, 0x2

_0807b128:	.4byte 0x030024AC
_0807b12c:	.4byte 0x030024B0
	thumb_func_end sub_0807a810

	thumb_func_start sub_0807b130
sub_0807b130:
	ldr		r6, [r7, #0x40]
	mov		r0, #0x80
	lsl		r0, r0, #0x8
	and		r6, r0
	cmp		r6, #0x0
	bne		_0807b208
	ldr		r5, [r7, #0x78]
	cmp		r5, #0x0
	beq		_0807b210
	mov		r3, #0xf0
	lsl		r3, r3, #0x1
	add		r1, r7, r3
	ldrh	r0, [r1, #0x0]
	cmp		r0, #0x1
	bls		_0807b210
	ldr		r4, _0807b194
	mov		r8, r4
	sub		r2, r0, #0x1
	str		r2, [r4, #0x0]
	ldr		r3, [r7, #0x7c]
	cmp		r3, r2
	bcc		_0807b19c
	mov		r1, #0xf2
	lsl		r1, r1, #0x1
	add		r0, r7, r1
	ldr		r1, [r0, #0x0]
	add		r1, #0x1
	add		r0, r5, #0x0
	bl		sub_0807c304
	ldr		r0, [r7, #0x78]
	ldr		r2, [r4, #0x0]
	add		r0, r0, r2
	str		r0, [r7, #0x78]
	ldr		r0, [r7, #0x7c]
	sub		r0, r0, r2
	str		r0, [r7, #0x7c]
	ldrh	r1, [r7, #0x2]
	ldr		r0, _0807b198
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	strh	r0, [r7, #0x2]
	add		r0, r7, #0x0
	add		r0, #0x80
	ldr		r1, [r0, #0x0]
	ldrh	r0, [r1, #0x0]
	add		r0, r0, r2
	strh	r0, [r1, #0x0]
	b		_0807b210

.incbin "base.gba", 0x7B192, 0x2

_0807b194:	.4byte 0x030024BC
_0807b198:	.4byte 0x0000FFFB

_0807b19c:
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r4, r7, r2
	ldr		r1, [r4, #0x0]
	add		r1, #0x1
	add		r0, r5, #0x0
	add		r2, r3, #0x0
	bl		sub_0807c304
	mov		r3, r8
	ldr		r0, [r3, #0x0]
	ldr		r2, [r7, #0x7c]
	sub		r0, r0, r2
	ldr		r1, _0807b200
	add		r3, r7, r1
	mov		r5, #0x0
	strh	r0, [r3, #0x0]
	ldr		r1, _0807b204
	add		r0, r7, r1
	add		r2, #0x1
	ldr		r1, [r4, #0x0]
	add		r1, r1, r2
	ldrh	r2, [r3, #0x0]
	bl		sub_0807c304
	add		r0, r7, #0x0
	add		r0, #0x80
	ldr		r2, [r0, #0x0]
	ldr		r1, [r7, #0x7c]
	ldrh	r0, [r2, #0x0]
	add		r0, r0, r1
	strh	r0, [r2, #0x0]
	str		r6, [r7, #0x7c]
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x4
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r5
	strh	r0, [r7, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r0, [r7, #0x2]
	mov		r1, #0x1
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r5
	strh	r0, [r7, #0x2]
	b		sub_0807b332

_0807b200:	.4byte 0x000006FA
_0807b204:	.4byte 0x0000047D

_0807b208:
	ldr		r0, [r7, #0x40]
	ldr		r1, _0807b23c
	and		r0, r1
	str		r0, [r7, #0x40]
_0807b210:
	bl		sub_080728a0
	mov		r1, #0x40
	and		r1, r0
	lsl		r1, r1, #0x10
	lsr		r1, r1, #0x10
	cmp		r1, #0x0
	beq		_0807b248
	ldr		r4, _0807b240
	ldrh	r1, [r4, #0x2]
	ldr		r0, _0807b244
	and		r0, r1
	ldrh	r1, [r4, #0x2]
	strh	r0, [r4, #0x2]
	mov		r0, #0x2
	bl		sub_0807a664
	add		r4, #0x62
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		sub_0807b332

.incbin "base.gba", 0x7B23A, 0x2

_0807b23c:	.4byte 0xFFFF7FFF
_0807b240:	.4byte 0x03006E20
_0807b244:	.4byte 0x0000FFFB

_0807b248:
	ldr		r0, _0807b264
	strh	r1, [r0, #0x0]
	ldr		r2, _0807b268
	add		r1, r0, r2
	str		r1, [r0, #0x4]
	ldr		r3, _0807b26c
	add		r1, r0, r3
_0807b256:
	ldrb	r3, [r1, #0x0]
	mov		r1, #0x0
	mov		r2, #0x0
	bl		sub_08073020
	b		sub_0807b332

.incbin "base.gba", 0x7B262, 0x2

_0807b264:	.4byte 0x03007000
_0807b268:	.4byte 0xFFFFFEF4
_0807b26c:	.4byte 0xFFFFFE83
	thumb_func_end sub_0807b130

	thumb_func_start sub_0807b270
sub_0807b270:
	mov		r4, #0xf0
	lsl		r4, r4, #0x1
	add		r0, r7, r4
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	sub		r1, #0x71
	ldrb	r1, [r1, #0x0]
	bl		sub_080738f8
	thumb_func_end sub_0807b270

	thumb_func_start sub_0807b288
sub_0807b288:
	ldrb	r0, [r5, #0x0]
	add		r0, #0x1
	ldrb	r1, [r5, #0x0]
	strb	r0, [r5, #0x0]
	b		sub_0807b332
	thumb_func_end sub_0807b288

	non_word_aligned_thumb_func_start sub_0807b292
sub_0807b292:
	add		r1, r7, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r5, #0x0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r1, [r7, #0x2]
	mov		r0, #0xff
	and		r0, r1
	ldrh	r1, [r7, #0x2]
	mov		r4, #0x0
	strh	r0, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	mov		r2, #0x80
	lsl		r2, r2, #0x1
	add		r1, r2, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r4
	strh	r0, [r7, #0x2]
	add		r0, r7, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r7, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r7, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
	sub		r0, #0x10
	str		r5, [r0, #0x0]
	b		sub_0807b332
	thumb_func_end sub_0807b292

	non_word_aligned_thumb_func_start sub_0807b2de
sub_0807b2de:
	add		r1, r7, #0x0
	add		r1, #0x5c
	ldrb	r0, [r1, #0x0]
	mov		r5, #0x0
	mov		r0, #0x3
	strb	r0, [r1, #0x0]
	ldrh	r0, [r7, #0x2]
	and		r2, r0
	ldrh	r0, [r7, #0x2]
	mov		r4, #0x0
	strh	r2, [r7, #0x2]
	ldrh	r0, [r7, #0x2]
	mov		r3, #0x80
	lsl		r3, r3, #0x1
	add		r1, r3, #0x0
	orr		r0, r1
	ldrh	r1, [r7, #0x2]
	orr		r0, r4
	strh	r0, [r7, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	add		r0, r7, #0x0
	add		r0, #0xcc
	strb	r4, [r0, #0x0]
	sub		r0, #0x10
	str		r5, [r0, #0x0]
	ldr		r0, [r7, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x9
	and		r0, r1
	cmp		r0, #0x0
	beq		sub_0807b332
	mov		r0, #0x33
	mov		r1, #0x65
	bl		sub_080753ec
	ldr		r0, [r7, #0x40]
	ldr		r1, _0807b340
	and		r0, r1
	str		r0, [r7, #0x40]
	thumb_func_end sub_0807b2de

	non_word_aligned_thumb_func_start sub_0807b332
sub_0807b332:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.align 2, 0
_0807b340:	.4byte 0xfffeffff
	thumb_func_end sub_0807b332

	thumb_func_start sub_0807b344
sub_0807b344:
	push	{ r4, r5, lr }
	add		r3, r0, #0x0
	add		r4, r1, #0x0
	ldr		r0, _0807b38c
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	add		r5, r0, #0x0
	cmp		r1, r2
	bge		_0807b37c
	ldrb	r0, [r4, #0x0]
	strb	r0, [r3, #0x0]
	lsl		r0, r0, #0x18
	add		r3, #0x1
	cmp		r0, #0x0
	beq		_0807b37c
	add		r1, r5, #0x0
_0807b364:
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
	cmp		r0, r2
	bge		_0807b37c
	add		r0, r4, r0
	ldrb	r0, [r0, #0x0]
	strb	r0, [r3, #0x0]
	lsl		r0, r0, #0x18
	add		r3, #0x1
	cmp		r0, #0x0
	bne		_0807b364
_0807b37c:
	ldr		r0, [r5, #0x0]
	cmp		r0, r2
	bne		_0807b386
	mov		r0, #0x0
	strb	r0, [r3, #0x0]
_0807b386:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807b38c:	.4byte 0x030024C4
	thumb_func_end sub_0807b344

	thumb_func_start sub_0807b390
sub_0807b390:
	push	{ r4, r5, lr }
	add		r5, r1, #0x0
	cmp		r0, #0x19
	beq		_0807b3c8
	cmp		r0, #0x19
	bgt		_0807b3a2
	cmp		r0, #0x18
	beq		_0807b3a8
	b		_0807b3e2
_0807b3a2:
	cmp		r0, #0x1a
	beq		_0807b3d8
	b		_0807b3e2
_0807b3a8:
	ldr		r4, _0807b3c4
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	bl		sub_0807c4a4
	add		r0, r5, #0x0
	add		r0, #0x11
	add		r4, #0x8
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_0807b344
	b		_0807b3e2

.incbin "base.gba", 0x7B3C2, 0x2

_0807b3c4:	.4byte 0x03007313

_0807b3c8:
	ldr		r1, _0807b3d4
	add		r0, r5, #0x0
	mov		r2, #0x20
	bl		sub_0807b344
	b		_0807b3e2

_0807b3d4:	.4byte 0x030072A9

_0807b3d8:
	ldr		r1, _0807b3e8
	add		r0, r5, #0x0
	mov		r2, #0x1e
	bl		sub_0807b344
_0807b3e2:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807b3e8:	.4byte 0x030072C9
	thumb_func_end sub_0807b390

	thumb_func_start sub_0807b3ec
sub_0807b3ec:
	push	{ r4, r5, lr }
	ldr		r4, _0807b410
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807b452
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x18
	beq		_0807b41a
	cmp		r0, #0x18
	bgt		_0807b414
	cmp		r0, #0x11
	beq		_0807b452
	b		_0807b444

.incbin "base.gba", 0x7B40E, 0x2

_0807b410:	.4byte 0x03006E20

_0807b414:
	cmp		r0, #0x19
	beq		_0807b428
	b		_0807b444
_0807b41a:
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_0807b450
_0807b428:
	add		r2, r4, #0x0
	add		r2, #0x66
	mov		r1, #0x0
	mov		r0, #0x14
	strb	r0, [r2, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	add		r1, r4, #0x0
	add		r1, #0x62
	ldrb	r0, [r1, #0x0]
	mov		r0, #0xfa
	strb	r0, [r1, #0x0]
	b		_0807b452
_0807b444:
	bl		sub_08074500
	ldr		r0, _0807b470
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_0807b450:
	strb	r1, [r0, #0x0]
_0807b452:
	ldr		r5, _0807b470
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x4
	beq		_0807b50c
	cmp		r0, #0x4
	bgt		_0807b47e
	cmp		r0, #0x1
	beq		_0807b49a
	cmp		r0, #0x1
	bgt		_0807b474
	cmp		r0, #0x0
	beq		_0807b494
	b		_0807b6c2

_0807b470:	.4byte 0x03006E20

_0807b474:
	cmp		r0, #0x2
	beq		_0807b4aa
	cmp		r0, #0x3
	beq		_0807b4c4
	b		_0807b6c2
_0807b47e:
	cmp		r0, #0x6
	beq		_0807b560
	cmp		r0, #0x6
	blt		_0807b556
	cmp		r0, #0xfa
	bne		_0807b48c
	b		_0807b610
_0807b48c:
	cmp		r0, #0xfb
	bne		_0807b492
	b		_0807b61e
_0807b492:
	b		_0807b6c2
_0807b494:
	bl		sub_08072c88
	b		_0807b614
_0807b49a:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_080733b8
	b		_0807b6c2
_0807b4aa:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r1, #0x0
	mov		r2, #0x80
	bl		sub_0807344c
	b		_0807b614
_0807b4c4:
	add		r0, r5, #0x0
	add		r0, #0xd5
	bl		sub_08076430
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_0807b4da
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r0, #0x25
	b		_0807b534
_0807b4da:
	ldr		r2, _0807b508
	add		r0, r5, r2
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	mov		r2, #0x80
	bl		sub_0807c304
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r1, #0x80
	mov		r2, #0x40
	bl		sub_0807344c
	b		_0807b614

_0807b508:	.4byte 0x0000047D

_0807b50c:
	ldr		r2, _0807b544
	add		r0, r5, r2
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	mov		r2, #0x40
	bl		sub_0807c304
	ldr		r1, _0807b548
	add		r0, r5, r1
	bl		sub_080763d0
	add		r1, r0, #0x0
	cmp		r1, #0x0
	bne		_0807b54c
	add		r2, r5, #0x0
	add		r2, #0x66
	mov		r0, #0x14
_0807b534:
	strb	r0, [r2, #0x0]
	add		r0, r5, #0x0
	add		r0, #0x68
	strh	r1, [r0, #0x0]
	ldrb	r0, [r4, #0x0]
	mov		r0, #0xfa
	strb	r0, [r4, #0x0]
	b		_0807b6c2

_0807b544:	.4byte 0x000004FD
_0807b548:	.4byte 0x0000047D

_0807b54c:
	add		r1, r5, #0x0
	add		r1, #0x65
	mov		r0, #0x1
	strb	r0, [r1, #0x0]
	b		_0807b610
_0807b556:
	ldr		r0, [r5, #0x70]
	ldr		r1, [r5, #0x74]
	bl		sub_0807b390
	b		_0807b614
_0807b560:
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b5fc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b600
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b604
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b608
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b60c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_0807b6c2

_0807b5fc:	.4byte 0xfffffdff
_0807b600:	.4byte 0xfffffbff
_0807b604:	.4byte 0xffffdfff
_0807b608:	.4byte 0x0000FFF7
_0807b60c:	.4byte 0x0000FFEF

_0807b610:
	bl		sub_08072da8
_0807b614:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_0807b6c2
_0807b61e:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b6c8
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b6cc
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b6d0
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b6d4
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b6d8
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x5e
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_0807b6c2:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807b6c8:	.4byte 0xfffffdff
_0807b6cc:	.4byte 0xfffffbff
_0807b6d0:	.4byte 0xffffdfff
_0807b6d4:	.4byte 0x0000FFF7
_0807b6d8:	.4byte 0x0000FFEF
	thumb_func_end sub_0807b3ec

	thumb_func_start sub_0807b6dc
sub_0807b6dc:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x1c
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807b6f4
	bl		sub_0807537c
	b		_0807b726
_0807b6f4:
	ldr		r0, _0807b72c
	str		r4, [r0, #0x70]
	ldr		r4, _0807b730
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	mov		r0, #0x1c
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807b722
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807b726
_0807b722:
	bl		sub_0807be3c
_0807b726:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0807b72c:	.4byte 0x03006E20
_0807b730:	.4byte Timer3Counter_Reload
	thumb_func_end sub_0807b6dc

	thumb_func_start sub_0807b734
sub_0807b734:
	push	{ r4, r5, lr }
	ldr		r4, _0807b768
	add		r0, r4, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807b77a
	add		r0, r4, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x11
	beq		_0807b77a
	cmp		r0, #0x11
	blt		_0807b76c
	cmp		r0, #0x19
	bgt		_0807b76c
	cmp		r0, #0x18
	blt		_0807b76c
	bl		sub_08074500
	add		r0, r4, #0x0
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_0807b778

.incbin "base.gba", 0x7B766, 0x2

_0807b768:	.4byte 0x03006E20

_0807b76c:
	bl		sub_08074500
	ldr		r0, _0807b798
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_0807b778:
	strb	r1, [r0, #0x0]
_0807b77a:
	ldr		r5, _0807b798
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3
	beq		_0807b7e2
	cmp		r0, #0x3
	bgt		_0807b79c
	cmp		r0, #0x1
	beq		_0807b7b8
	cmp		r0, #0x1
	bgt		_0807b7c8
	cmp		r0, #0x0
	beq		_0807b7b2
	b		_0807b986

_0807b798:	.4byte 0x03006E20

_0807b79c:
	cmp		r0, #0x5
	beq		_0807b824
	cmp		r0, #0x5
	blt		_0807b80e
	cmp		r0, #0xfa
	bne		_0807b7aa
	b		_0807b8d4
_0807b7aa:
	cmp		r0, #0xfb
	bne		_0807b7b0
	b		_0807b8e2
_0807b7b0:
	b		_0807b986
_0807b7b2:
	bl		sub_08072c88
	b		_0807b8d8
_0807b7b8:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_080733b8
	b		_0807b986
_0807b7c8:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r1, #0x0
	mov		r2, #0x80
	bl		sub_0807344c
	b		_0807b8d8
_0807b7e2:
	ldr		r0, [r5, #0x70]
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	mov		r2, #0x80
	bl		sub_0807c304
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	mov		r1, #0x80
	mov		r2, #0x40
	bl		sub_0807344c
	b		_0807b8d8
_0807b80e:
	ldr		r0, [r5, #0x70]
	add		r0, #0x80
	mov		r2, #0xf2
	lsl		r2, r2, #0x1
	add		r1, r5, r2
	ldr		r1, [r1, #0x0]
	add		r1, #0x1
	mov		r2, #0x40
	bl		sub_0807c304
	b		_0807b8d4
_0807b824:
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b8c0
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b8c4
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b8c8
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b8cc
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b8d0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_0807b986

_0807b8c0:	.4byte 0xfffffdff
_0807b8c4:	.4byte 0xfffffbff
_0807b8c8:	.4byte 0xffffdfff
_0807b8cc:	.4byte 0x0000FFF7
_0807b8d0:	.4byte 0x0000FFEF

_0807b8d4:
	bl		sub_08072da8
_0807b8d8:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_0807b986
_0807b8e2:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b98c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b990
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807b994
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b998
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807b99c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_0807b986:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807b98c:	.4byte 0xfffffdff
_0807b990:	.4byte 0xfffffbff
_0807b994:	.4byte 0xffffdfff
_0807b998:	.4byte 0x0000FFF7
_0807b99c:	.4byte 0x0000FFEF
	thumb_func_end sub_0807b734

	thumb_func_start sub_0807b9a0
sub_0807b9a0:
	push	{ r4, lr }
	add		r4, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x1d
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807b9b8
	bl		sub_0807537c
	b		_0807b9ea
_0807b9b8:
	ldr		r0, _0807b9f0
	str		r4, [r0, #0x70]
	ldr		r4, _0807b9f4
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	mov		r0, #0x1d
	mov		r1, #0x0
	bl		sub_0807539c
	bl		sub_0807537c
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807b9e6
	ldr		r0, [r4, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807b9ea
_0807b9e6:
	bl		sub_0807be3c
_0807b9ea:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0

_0807b9f0:	.4byte 0x03006E20
_0807b9f4:	.4byte Timer3Counter_Reload
	thumb_func_end sub_0807b9a0

	thumb_func_start sub_0807b9f8
sub_0807b9f8:
	push	{ r4, r5, lr }
	ldr		r1, _0807ba1c
	add		r0, r1, #0x0
	add		r0, #0x45
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xee
	bne		_0807ba46
	add		r0, r1, #0x0
	add		r0, #0x50
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x18
	beq		_0807ba24
	cmp		r0, #0x18
	bgt		_0807ba20
	cmp		r0, #0x11
	beq		_0807ba46
	b		_0807ba38

.incbin "base.gba", 0x7BA1A, 0x2

_0807ba1c:	.4byte 0x03006E20

_0807ba20:
	cmp		r0, #0x1a
	bne		_0807ba38
_0807ba24:
	bl		sub_08074500
	ldr		r0, _0807ba34
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfa
	b		_0807ba44

.incbin "base.gba", 0x7BA32, 0x2

_0807ba34:	.4byte 0x03006E20

_0807ba38:
	bl		sub_08074500
	ldr		r0, _0807ba64
	add		r0, #0x62
	ldrb	r1, [r0, #0x0]
	mov		r1, #0xfb
_0807ba44:
	strb	r1, [r0, #0x0]
_0807ba46:
	ldr		r5, _0807ba64
	add		r4, r5, #0x0
	add		r4, #0x62
	ldrb	r0, [r4, #0x0]
	cmp		r0, #0x3
	beq		_0807bab2
	cmp		r0, #0x3
	bgt		_0807ba68
	cmp		r0, #0x1
	beq		_0807ba86
	cmp		r0, #0x1
	bgt		_0807ba96
	cmp		r0, #0x0
	beq		_0807ba80
	b		_0807bc32

_0807ba64:	.4byte 0x03006E20

_0807ba68:
	cmp		r0, #0x5
	beq		_0807bad0
	cmp		r0, #0x5
	bge		_0807ba72
	b		_0807bb80
_0807ba72:
	cmp		r0, #0xfa
	bne		_0807ba78
	b		_0807bb80
_0807ba78:
	cmp		r0, #0xfb
	bne		_0807ba7e
	b		_0807bb8e
_0807ba7e:
	b		_0807bc32
_0807ba80:
	bl		sub_08072c88
	b		_0807bb84
_0807ba86:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	mov		r0, #0x1
	bl		sub_080733b8
	b		_0807bc32
_0807ba96:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r2, [r5, #0x70]
	mov		r1, #0x0
	mov		r3, #0x80
	bl		sub_08073500
	b		_0807bb84
_0807bab2:
	mov		r1, #0xf0
	lsl		r1, r1, #0x1
	add		r0, r5, r1
	mov		r1, #0x0
	strh	r1, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0xd4
	str		r1, [r0, #0x4]
	ldr		r2, [r5, #0x70]
	add		r2, #0x80
	mov		r1, #0x80
	mov		r3, #0x40
	bl		sub_08073500
	b		_0807bb84
_0807bad0:
	mov		r0, #0x0
	bl		sub_08072b58
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bb6c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bb70
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bb74
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807bb78
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807bb7c
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
	b		_0807bc32

_0807bb6c:	.4byte 0xfffffdff
_0807bb70:	.4byte 0xfffffbff
_0807bb74:	.4byte 0xffffdfff
_0807bb78:	.4byte 0x0000FFF7
_0807bb7c:	.4byte 0x0000FFEF

_0807bb80:
	bl		sub_08072da8
_0807bb84:
	ldrb	r0, [r4, #0x0]
	add		r0, #0x1
	ldrb	r1, [r4, #0x0]
	strb	r0, [r4, #0x0]
	b		_0807bc32
_0807bb8e:
	add		r0, r5, #0x0
	add		r0, #0x5c
	ldrb	r1, [r0, #0x0]
	mov		r4, #0x0
	strb	r4, [r0, #0x0]
	mov		r0, #0x0
	bl		sub_08072b58
	ldrb	r0, [r5, #0x5]
	lsl		r0, r0, #0x1
	add		r1, r5, #0x0
	add		r1, #0x8
	add		r0, r0, r1
	ldrh	r0, [r0, #0x0]
	ldrh	r1, [r5, #0xc]
	mov		r1, #0x0
	strh	r0, [r5, #0xc]
	str		r4, [r5, #0x3c]
	ldrb	r0, [r5, #0x4]
	strb	r1, [r5, #0x4]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x2
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bc38
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bc3c
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	ldr		r1, _0807bc40
	and		r0, r1
	str		r0, [r5, #0x40]
	ldr		r0, [r5, #0x40]
	mov		r1, #0x5
	neg		r1, r1
	and		r0, r1
	str		r0, [r5, #0x40]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807bc44
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	ldr		r0, _0807bc48
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	mov		r4, #0xff
	add		r0, r4, #0x0
	and		r0, r1
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	bl		sub_0807c6e4
	ldrh	r0, [r5, #0x2]
	and		r4, r0
	ldrh	r0, [r5, #0x2]
	strh	r4, [r5, #0x2]
	ldrh	r0, [r5, #0x2]
	ldrh	r1, [r5, #0x2]
	strh	r0, [r5, #0x2]
	add		r0, r5, #0x0
	add		r0, #0x66
	ldrb	r0, [r0, #0x0]
	add		r1, r5, #0x0
	add		r1, #0x68
	ldrh	r1, [r1, #0x0]
	bl		sub_080753ec
	mov		r0, #0x0
	mov		r1, #0x0
	bl		sub_0807539c
_0807bc32:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807bc38:	.4byte 0xfffffdff
_0807bc3c:	.4byte 0xfffffbff
_0807bc40:	.4byte 0xffffdfff
_0807bc44:	.4byte 0x0000FFF7
_0807bc48:	.4byte 0x0000FFEF
	thumb_func_end sub_0807b9f8

	thumb_func_start sub_0807bc4c
sub_0807bc4c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x18
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807bc64
	bl		sub_0807537c
	b		_0807bcda
_0807bc64:
	add		r0, r5, #0x0
	mov		r1, #0x24
	mov		r2, #0x0
	bl		sub_0807c328
	ldr		r4, _0807bc94
	add		r0, r4, #0x0
	add		r0, #0x65
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807bc9c
	mov		r0, #0x18
	add		r1, r5, #0x0
	bl		sub_0807b390
	bl		sub_0807537c
	ldrh	r0, [r4, #0x2]
	ldr		r1, _0807bc98
	and		r1, r0
	ldrh	r0, [r4, #0x2]
	strh	r1, [r4, #0x2]
	b		_0807bcda

.incbin "base.gba", 0x7BC92, 0x2

_0807bc94:	.4byte 0x03006E20
_0807bc98:	.4byte 0x0000FFFE

_0807bc9c:
	mov		r0, #0x18
	str		r0, [r4, #0x70]
	str		r5, [r4, #0x74]
	ldr		r5, _0807bce0
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	mov		r0, #0x1b
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x1
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	bl		sub_0807537c
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807bcd6
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807bcda
_0807bcd6:
	bl		sub_0807be3c
_0807bcda:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807bce0:	.4byte Timer3Counter_Reload
	thumb_func_end sub_0807bc4c

	thumb_func_start sub_0807bce4
sub_0807bce4:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x19
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807bcfc
	bl		sub_0807537c
	b		_0807bd70
_0807bcfc:
	ldr		r4, _0807bd20
	add		r0, r4, #0x0
	add		r0, #0x65
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807bd28
	mov		r0, #0x19
	add		r1, r5, #0x0
	bl		sub_0807b390
	bl		sub_0807537c
	ldrh	r0, [r4, #0x2]
	ldr		r1, _0807bd24
	and		r1, r0
	ldrh	r0, [r4, #0x2]
	strh	r1, [r4, #0x2]
	b		_0807bd70

_0807bd20:	.4byte 0x03006E20
_0807bd24:	.4byte 0x0000FFFE

_0807bd28:
	add		r0, r5, #0x0
	mov		r1, #0x21
	mov		r2, #0x0
	bl		sub_0807c328
	mov		r0, #0x19
	str		r0, [r4, #0x70]
	str		r5, [r4, #0x74]
	ldr		r5, _0807bd78
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	mov		r0, #0x1b
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x1
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	bl		sub_0807537c
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807bd6c
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807bd70
_0807bd6c:
	bl		sub_0807be3c
_0807bd70:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7BD76, 0x2

_0807bd78:	.4byte Timer3Counter_Reload
	thumb_func_end sub_0807bce4

	thumb_func_start sub_0807bd7c
sub_0807bd7c:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	bl		sub_08075358
	mov		r0, #0x1a
	bl		sub_080755c4
	cmp		r0, #0x0
	bne		_0807bd94
	bl		sub_0807537c
	b		_0807be0a
_0807bd94:
	add		r0, r5, #0x0
	mov		r1, #0x1f
	mov		r2, #0x0
	bl		sub_0807c328
	ldr		r4, _0807bdc4
	add		r0, r4, #0x0
	add		r0, #0x65
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807bdcc
	mov		r0, #0x1a
	add		r1, r5, #0x0
	bl		sub_0807b390
	bl		sub_0807537c
	ldrh	r0, [r4, #0x2]
	ldr		r1, _0807bdc8
	and		r1, r0
	ldrh	r0, [r4, #0x2]
	strh	r1, [r4, #0x2]
	b		_0807be0a

.incbin "base.gba", 0x7BDC2, 0x2

_0807bdc4:	.4byte 0x03006E20
_0807bdc8:	.4byte 0x0000FFFE

_0807bdcc:
	mov		r0, #0x1a
	str		r0, [r4, #0x70]
	str		r5, [r4, #0x74]
	ldr		r5, _0807be10
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	mov		r0, #0x1b
	mov		r1, #0x0
	bl		sub_0807539c
	ldrh	r1, [r4, #0x2]
	mov		r0, #0x1
	ldrh	r2, [r4, #0x2]
	orr		r0, r1
	strh	r0, [r4, #0x2]
	bl		sub_0807537c
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0xf
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807be06
	ldr		r0, [r5, #0x0]
	mov		r1, #0x80
	lsl		r1, r1, #0x10
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807be0a
_0807be06:
	bl		sub_0807be3c
_0807be0a:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807be10:	.4byte Timer3Counter_Reload
	thumb_func_end sub_0807bd7c

	thumb_func_start sub_0807be14
sub_0807be14:
	push	{ lr }
	ldr		r1, _0807be24
	mov		r2, #0x14
	bl		sub_0807b344
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7BE22, 0x2

_0807be24:	.4byte 0x03007164
	thumb_func_end sub_0807be14

	thumb_func_start sub_0807be28
sub_0807be28:
	push	{ lr }
	ldr		r1, _0807be38
	mov		r2, #0x14
	bl		sub_0807b344
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7BE36, 0x2

_0807be38:	.4byte 0x03007178
	thumb_func_end sub_0807be28

	thumb_func_start sub_0807be3c
sub_0807be3c:
	push	{ lr }
	ldr		r0, _0807bee8
	add		r2, r0, #0x0
	add		r2, #0x61
	ldrb	r1, [r2, #0x0]
	add		r3, r0, #0x0
	cmp		r1, #0x1
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x2
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x3
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x4
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x8
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x9
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x5
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1b
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1c
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1d
	beq		_0807be92
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x1e
	beq		_0807be92
	ldr		r0, [r3, #0x40]
	mov		r1, #0x1
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807bee4
_0807be92:
	ldr		r0, [r3, #0x40]
	mov		r1, #0x4
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807bee4
	ldrh	r1, [r3, #0x2]
	mov		r0, #0x2
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807bee4
	ldrh	r1, [r3, #0x2]
	mov		r0, #0x20
	and		r0, r1
	cmp		r0, #0x0
	bne		_0807bee4
	ldr		r0, [r3, #0x40]
	mov		r1, #0x80
	lsl		r1, r1, #0x2
	and		r0, r1
	cmp		r0, #0x0
	beq		_0807beca
	add		r0, r3, #0x0
	add		r0, #0x44
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x15
	bne		_0807beca
	bl		sub_08076ed4
_0807beca:
	ldr		r0, _0807bee8
	add		r1, r0, #0x0
	add		r1, #0x61
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807bee4
	ldr		r0, _0807beec
	ldrb	r1, [r1, #0x0]
	lsl		r1, r1, #0x2
	add		r1, r1, r0
	ldr		r0, [r1, #0x0]
	bl		sub_0807d7d0
_0807bee4:
	pop		{ r0 }
	bx		r0

_0807bee8:	.4byte 0x03006E20
_0807beec:	.4byte 0x0820beec
	thumb_func_end sub_0807be3c

	thumb_func_start sub_0807bef0
sub_0807bef0:
	ldr		r0, _0807bef8
	ldrh	r0, [r0, #0x2]
	bx		lr

.incbin "base.gba", 0x7BEF6, 0x2

_0807bef8:	.4byte 0x03006E20
	thumb_func_end sub_0807bef0

	thumb_func_start sub_0807befc
sub_0807befc:
	push	{ r4, r5, lr }
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	mov		r2, #0x0
	ldr		r0, _0807bf44
	cmp		r1, r0
	bls		_0807bf26
	ldr		r3, _0807bf48
	add		r5, r3, #0x0
	mov		r3, #0x80
	lsl		r3, r3, #0x5
	add		r4, r3, #0x0
	add		r3, r0, #0x0
_0807bf16:
	add		r0, r1, r5
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r0, r2, r4
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r1, r3
	bhi		_0807bf16
_0807bf26:
	cmp		r1, #0x63
	bls		_0807bf5c
	mov		r0, #0x80
	lsl		r0, r0, #0x1
	add		r3, r0, #0x0
_0807bf30:
	add		r0, r1, #0x0
	sub		r0, #0x64
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r0, r2, r3
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r1, #0x63
	bhi		_0807bf30
	b		_0807bf5c

_0807bf44:	.4byte 0x000003E7
_0807bf48:	.4byte 0xFFFFFC18

_0807bf4c:
	add		r0, r1, #0x0
	sub		r0, #0xa
	lsl		r0, r0, #0x10
	lsr		r1, r0, #0x10
	add		r0, r2, #0x0
	add		r0, #0x10
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
_0807bf5c:
	cmp		r1, #0x9
	bhi		_0807bf4c
	add		r0, r2, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	add		r0, r2, #0x0
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7BF6E, 0x2
	thumb_func_end sub_0807befc

	thumb_func_start sub_0807bf70
sub_0807bf70:
	push	{ r4, lr }
	add		r4, r0, #0x0
	ldr		r2, _0807bf8c
	ldrh	r1, [r2, #0x2]
	mov		r3, #0x2
	add		r0, r3, #0x0
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	cmp		r0, #0x0
	bne		_0807bf90
	strh	r0, [r4, #0x0]
	mov		r0, #0x0
	b		_0807c04a

_0807bf8c:	.4byte 0x03006E20

_0807bf90:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x84
	beq		_0807bfbc
	cmp		r0, #0x84
	bgt		_0807bfa0
	cmp		r0, #0x83
	beq		_0807bfaa
	b		_0807bfec
_0807bfa0:
	cmp		r0, #0x85
	beq		_0807bfdc
	cmp		r0, #0x87
	beq		_0807bfcc
	b		_0807bfec
_0807bfaa:
	ldrb	r0, [r2, #0x0]
	mov		r1, #0x0
	mov		r0, #0x15
	strb	r0, [r2, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x5e
	ldrh	r2, [r0, #0x0]
	strh	r1, [r0, #0x0]
	b		_0807bfec
_0807bfbc:
	ldrb	r0, [r2, #0x0]
	mov		r0, #0x15
	strb	r0, [r2, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x1
	b		_0807bfea
_0807bfcc:
	ldrb	r0, [r2, #0x0]
	mov		r0, #0x15
	strb	r0, [r2, #0x0]
	add		r0, r2, #0x0
	add		r0, #0x5e
	ldrh	r1, [r0, #0x0]
	strh	r3, [r0, #0x0]
	b		_0807bfec
_0807bfdc:
	ldrb	r0, [r2, #0x0]
	mov		r0, #0x15
	strb	r0, [r2, #0x0]
	add		r1, r2, #0x0
	add		r1, #0x5e
	ldrh	r0, [r1, #0x0]
	mov		r0, #0x3
_0807bfea:
	strh	r0, [r1, #0x0]
_0807bfec:
	ldr		r2, _0807c01c
	ldrh	r0, [r2, #0x2]
	ldr		r1, _0807c020
	and		r1, r0
	ldrh	r0, [r2, #0x2]
	strh	r1, [r2, #0x2]
	cmp		r4, #0x0
	beq		_0807c028
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x15
	beq		_0807c00e
	cmp		r0, #0x15
	blt		_0807c024
	cmp		r0, #0x33
	bgt		_0807c024
	cmp		r0, #0x30
	blt		_0807c024
_0807c00e:
	add		r0, r2, #0x0
	add		r0, #0x5e
	ldrh	r0, [r0, #0x0]
	bl		sub_0807befc
	b		_0807c026

.incbin "base.gba", 0x7C01A, 0x2

_0807c01c:	.4byte 0x03006E20
_0807c020:	.4byte 0x0000FFFD

_0807c024:
	mov		r0, #0x0
_0807c026:
	strh	r0, [r4, #0x0]
_0807c028:
	ldr		r3, _0807c050
	ldrh	r1, [r3, #0x2]
	mov		r0, #0x20
	and		r0, r1
	lsl		r0, r0, #0x10
	lsr		r2, r0, #0x10
	cmp		r2, #0x0
	bne		_0807c048
	add		r0, r3, #0x0
	add		r0, #0x44
	ldrb	r1, [r0, #0x0]
	strb	r2, [r0, #0x0]
	add		r1, r3, #0x0
	add		r1, #0x45
	ldrb	r0, [r1, #0x0]
	strb	r2, [r1, #0x0]
_0807c048:
	ldrb	r0, [r3, #0x0]
_0807c04a:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0807c050:	.4byte 0x03006E20
	thumb_func_end sub_0807bf70

	thumb_func_start sub_0807c054
sub_0807c054:
	push	{ r4, lr }
	add		r3, r0, #0x0
	ldr		r0, _0807c084
	ldrb	r2, [r3, #0x0]
	add		r1, r3, #0x1
	str		r1, [r0, #0x0]
	add		r4, r0, #0x0
	cmp		r2, #0x0
	beq		_0807c074
	add		r2, r4, #0x0
_0807c068:
	ldr		r0, [r2, #0x0]
	ldrb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r1, #0x0
	bne		_0807c068
_0807c074:
	ldr		r0, [r4, #0x0]
	sub		r0, r0, r3
	sub		r0, #0x1
	lsl		r0, r0, #0x10
	lsr		r0, r0, #0x10
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

_0807c084:	.4byte 0x030024C8
	thumb_func_end sub_0807c054

	thumb_func_start sub_0807c088
sub_0807c088:
	add		r2, r0, #0x0
	ldr		r3, _0807c0b0
	str		r1, [r3, #0x0]
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	beq		_0807c0ac
_0807c09a:
	ldr		r1, [r3, #0x0]
	add		r0, r1, #0x1
	str		r0, [r3, #0x0]
	ldrb	r0, [r1, #0x1]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	ldrb	r0, [r1, #0x1]
	cmp		r0, #0x0
	bne		_0807c09a
_0807c0ac:
	bx		lr

.incbin "base.gba", 0x7C0AE, 0x2

_0807c0b0:	.4byte 0x030024CC
	thumb_func_end sub_0807c088

	thumb_func_start sub_0807c0b4
sub_0807c0b4:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	ldr		r1, _0807c0c4
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r5, r1, #0x0
	b		_0807c0d4

_0807c0c4:	.4byte 0x030024D0

_0807c0c8:
	add		r4, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	ldr		r0, [r1, #0x0]
	add		r0, #0x1
	str		r0, [r1, #0x0]
_0807c0d4:
	cmp		r2, #0x0
	beq		_0807c0ec
	ldrb	r0, [r3, #0x0]
	strb	r0, [r4, #0x0]
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0807c0c8
	cmp		r2, #0x0
	beq		_0807c0ec
	ldr		r0, [r5, #0x0]
	add		r0, #0x1
	str		r0, [r5, #0x0]
_0807c0ec:
	ldr		r0, [r5, #0x0]
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0807c0b4

	thumb_func_start sub_0807c0f4
sub_0807c0f4:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	cmp		r2, #0x0
	bne		_0807c10e
	b		_0807c12e
_0807c0fe:
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	add		r0, r1, #0x2
	b		_0807c130
_0807c106:
	mov		r0, #0x0
	strb	r0, [r4, #0x0]
	add		r0, r1, #0x1
	b		_0807c130
_0807c10e:
	ldrb	r5, [r1, #0x0]
	add		r3, r5, #0x0
	cmp		r3, #0xd
	bne		_0807c11c
	ldrb	r0, [r1, #0x1]
	cmp		r0, #0xa
	beq		_0807c0fe
_0807c11c:
	cmp		r3, #0xa
	beq		_0807c106
	strb	r5, [r4, #0x0]
	add		r1, #0x1
	add		r4, #0x1
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0807c10e
	strb	r2, [r4, #0x0]
_0807c12e:
	mov		r0, #0x0
_0807c130:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7C136, 0x2
	thumb_func_end sub_0807c0f4

	thumb_func_start sub_0807c138
sub_0807c138:
	add		r2, r0, #0x0
	cmp		r1, #0x1
	bgt		_0807c148
	b		_0807c15c
_0807c140:
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	add		r0, r2, #0x2
	b		_0807c15e
_0807c148:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0xd
	bne		_0807c154
	ldrb	r0, [r2, #0x1]
	cmp		r0, #0xa
	beq		_0807c140
_0807c154:
	add		r2, #0x1
	sub		r1, #0x1
	cmp		r1, #0x1
	bne		_0807c148
_0807c15c:
	mov		r0, #0x0
_0807c15e:
	bx		lr
	thumb_func_end sub_0807c138

	thumb_func_start sub_0807c160
sub_0807c160:
	add		r2, r0, #0x0
	b		_0807c166
_0807c164:
	add		r2, #0x1
_0807c166:
	ldrb	r0, [r2, #0x0]
	cmp		r0, #0x0
	bne		_0807c164
	b		_0807c170
_0807c16e:
	add		r1, #0x1
_0807c170:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	lsl		r0, r0, #0x18
	cmp		r0, #0x0
	bne		_0807c16e
	bx		lr

.incbin "base.gba", 0x7C17E, 0x2
	thumb_func_end sub_0807c160

	thumb_func_start sub_0807c180
sub_0807c180:
	add		r2, r0, #0x0
	add		r3, r1, #0x0
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x0
	beq		_0807c19e
	lsl		r0, r3, #0x18
	lsr		r0, r0, #0x18
	cmp		r1, r0
	beq		_0807c1ac
_0807c192:
	add		r2, #0x1
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x0
	beq		_0807c19e
	cmp		r1, r0
	bne		_0807c192
_0807c19e:
	ldrb	r1, [r2, #0x0]
	lsl		r0, r3, #0x18
	lsr		r0, r0, #0x18
	cmp		r1, r0
	beq		_0807c1ac
	mov		r0, #0x0
	b		_0807c1ae
_0807c1ac:
	add		r0, r2, #0x0
_0807c1ae:
	bx		lr
	thumb_func_end sub_0807c180

	thumb_func_start sub_0807c1b0
sub_0807c1b0:
	push	{ r4, r5, lr }
	add		r3, r1, #0x0
	ldr		r2, _0807c1bc
	ldr		r1, _0807c1c0
	str		r0, [r1, #0x0]
	b		_0807c1c6

_0807c1bc:	.4byte 0x030024D8
_0807c1c0:	.4byte 0x030024D4

_0807c1c4:
	ldr		r0, [r2, #0x0]
_0807c1c6:
	ldrb	r1, [r0, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r1, #0x0
	bne		_0807c1c4
	lsl		r5, r3, #0x18
	ldr		r1, _0807c1f8
	ldr		r0, _0807c1fc
	ldr		r4, [r0, #0x0]
	lsr		r3, r5, #0x18
_0807c1da:
	ldr		r0, [r1, #0x0]
	sub		r2, r0, #0x1
	str		r2, [r1, #0x0]
	cmp		r2, r4
	beq		_0807c1ea
	ldrb	r0, [r2, #0x0]
	cmp		r0, r3
	bne		_0807c1da
_0807c1ea:
	ldrb	r1, [r2, #0x0]
	lsr		r0, r5, #0x18
	cmp		r1, r0
	beq		_0807c200
	mov		r0, #0x0
	b		_0807c202

.incbin "base.gba", 0x7C1F6, 0x2

_0807c1f8:	.4byte 0x030024D8
_0807c1fc:	.4byte 0x030024D4

_0807c200:
	add		r0, r2, #0x0
_0807c202:
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0807c1b0

	thumb_func_start sub_0807c208
sub_0807c208:
	add		r1, r0, #0x0
	b		_0807c20e
_0807c20c:
	add		r1, #0x1
_0807c20e:
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807c232
	cmp		r0, #0x20
	bne		_0807c20c
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807c232
	b		_0807c224
_0807c220:
	add		r1, #0x1
	ldrb	r0, [r1, #0x0]
_0807c224:
	cmp		r0, #0x20
	beq		_0807c220
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	beq		_0807c232
	add		r0, r1, #0x0
	b		_0807c234
_0807c232:
	mov		r0, #0x0
_0807c234:
	bx		lr

.incbin "base.gba", 0x7C236, 0x2
	thumb_func_end sub_0807c208

	thumb_func_start sub_0807c238
sub_0807c238:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	ldr		r2, _0807c254
	mov		r0, #0x0
	str		r0, [r2, #0x0]
	ldrb	r0, [r4, #0x0]
	ldrb	r1, [r3, #0x0]
	sub		r0, r0, r1
	str		r0, [r2, #0x0]
	add		r5, r2, #0x0
	cmp		r0, #0x0
	bne		_0807c26e
	b		_0807c268

_0807c254:	.4byte 0x030024DC

_0807c258:
	add		r4, #0x1
	add		r3, #0x1
	ldrb	r1, [r4, #0x0]
	ldrb	r0, [r3, #0x0]
	sub		r1, r1, r0
	str		r1, [r2, #0x0]
	cmp		r1, #0x0
	bne		_0807c26e
_0807c268:
	ldrb	r0, [r3, #0x0]
	cmp		r0, #0x0
	bne		_0807c258
_0807c26e:
	ldr		r0, [r5, #0x0]
	pop		{ r4, r5 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7C276, 0x2
	thumb_func_end sub_0807c238

	thumb_func_start sub_0807c278
sub_0807c278:
	push	{ r4, lr }
	cmp		r2, #0x0
	bne		_0807c286
	mov		r0, #0x0
	b		_0807c29e
_0807c282:
	add		r0, #0x1
	add		r1, #0x1
_0807c286:
	sub		r2, #0x1
	cmp		r2, #0x0
	beq		_0807c298
	ldrb	r3, [r0, #0x0]
	cmp		r3, #0x0
	beq		_0807c298
	ldrb	r4, [r1, #0x0]
	cmp		r3, r4
	beq		_0807c282
_0807c298:
	ldrb	r0, [r0, #0x0]
	ldrb	r1, [r1, #0x0]
	sub		r0, r0, r1
_0807c29e:
	pop		{ r4 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0807c278

	thumb_func_start sub_0807c2a4
sub_0807c2a4:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	cmp		r2, #0x0
	beq		_0807c2fa
	ldr		r4, _0807c2b4
	ldr		r1, _0807c2b8
	b		_0807c2c8

_0807c2b4:	.4byte 0x030024E0
_0807c2b8:	.4byte 0x030024E4

_0807c2bc:
	ldr		r3, [r4, #0x0]
	cmp		r3, #0x0
	beq		_0807c2f2
	ldr		r0, [r1, #0x0]
	cmp		r3, r0
	bne		_0807c2f2
_0807c2c8:
	ldrb	r0, [r6, #0x0]
	str		r0, [r4, #0x0]
	add		r6, #0x1
	cmp		r0, #0x40
	ble		_0807c2da
	cmp		r0, #0x5a
	bgt		_0807c2da
	add		r0, #0x20
	str		r0, [r4, #0x0]
_0807c2da:
	ldrb	r0, [r5, #0x0]
	str		r0, [r1, #0x0]
	add		r5, #0x1
	cmp		r0, #0x40
	ble		_0807c2ec
	cmp		r0, #0x5a
	bgt		_0807c2ec
	add		r0, #0x20
	str		r0, [r1, #0x0]
_0807c2ec:
	sub		r2, #0x1
	cmp		r2, #0x0
	bne		_0807c2bc
_0807c2f2:
	ldr		r0, [r4, #0x0]
	ldr		r1, [r1, #0x0]
	sub		r0, r0, r1
	b		_0807c2fc
_0807c2fa:
	mov		r0, #0x0
_0807c2fc:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7C302, 0x2
	thumb_func_end sub_0807c2a4

	thumb_func_start sub_0807c304
sub_0807c304:
	push	{ r4, lr }
	add		r3, r0, #0x0
	sub		r2, #0x1
	mov		r0, #0x1
	neg		r0, r0
	cmp		r2, r0
	beq		_0807c322
	add		r4, r0, #0x0
_0807c314:
	ldrb	r0, [r1, #0x0]
	strb	r0, [r3, #0x0]
	add		r1, #0x1
	add		r3, #0x1
	sub		r2, #0x1
	cmp		r2, r4
	bne		_0807c314
_0807c322:
	pop		{ r4 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0807c304

	thumb_func_start sub_0807c328
sub_0807c328:
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	sub		r2, #0x1
	mov		r3, #0x1
	neg		r3, r3
	cmp		r2, r3
	beq		_0807c340
_0807c336:
	strb	r1, [r0, #0x0]
	add		r0, #0x1
	sub		r2, #0x1
	cmp		r2, r3
	bne		_0807c336
_0807c340:
	bx		lr

.incbin "base.gba", 0x7C342, 0x2
	thumb_func_end sub_0807c328

	thumb_func_start sub_0807c344
sub_0807c344:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	add		r5, r0, #0x0
	add		r7, r2, #0x0
	ldr		r0, _0807c398
	str		r1, [r0, #0x0]
	mov		r8, r0
	cmp		r3, #0x0
	beq		_0807c366
	mov		r0, #0x2d
	strb	r0, [r1, #0x0]
	add		r0, r1, #0x1
	mov		r1, r8
	str		r0, [r1, #0x0]
	neg		r5, r5
_0807c366:
	ldr		r1, _0807c39c
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	str		r0, [r1, #0x0]
	ldr		r0, _0807c3a0
	mov		r9, r0
	mov		r6, r8
_0807c374:
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_0807de68
	add		r4, r0, #0x0
	mov		r1, r9
	str		r4, [r1, #0x0]
	add		r0, r5, #0x0
	add		r1, r7, #0x0
	bl		sub_0807ddf0
	add		r5, r0, #0x0
	cmp		r4, #0x9
	bls		_0807c3a4
	ldr		r1, [r6, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x57
	b		_0807c3aa

_0807c398:	.4byte 0x030024E8
_0807c39c:	.4byte 0x030024EC
_0807c3a0:	.4byte 0x030024F4

_0807c3a4:
	ldr		r1, [r6, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x30
_0807c3aa:
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	str		r1, [r6, #0x0]
	cmp		r5, #0x0
	bne		_0807c374
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	strb	r5, [r0, #0x0]
	sub		r0, #0x1
	str		r0, [r2, #0x0]
	ldr		r4, _0807c3f4
	mov		r3, r8
	ldr		r2, _0807c3f8
_0807c3c4:
	ldr		r1, [r3, #0x0]
	ldrb	r0, [r1, #0x0]
	strb	r0, [r4, #0x0]
	ldr		r0, [r2, #0x0]
	ldrb	r0, [r0, #0x0]
	strb	r0, [r1, #0x0]
	ldr		r1, [r2, #0x0]
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	ldr		r1, [r3, #0x0]
	sub		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, r1
	bcc		_0807c3c4
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7C3F2, 0x2

_0807c3f4:	.4byte 0x030024F0
_0807c3f8:	.4byte 0x030024EC
	thumb_func_end sub_0807c344

	thumb_func_start sub_0807c3fc
sub_0807c3fc:
	push	{ r4, lr }
	add		r4, r1, #0x0
	cmp		r2, #0xa
	bne		_0807c412
	cmp		r0, #0x0
	bge		_0807c412
	mov		r2, #0xa
	mov		r3, #0x1
	bl		sub_0807c344
	b		_0807c41a
_0807c412:
	add		r1, r4, #0x0
	mov		r3, #0x0
	bl		sub_0807c344
_0807c41a:
	add		r0, r4, #0x0
	pop		{ r4 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7C422, 0x2
	thumb_func_end sub_0807c3fc

	thumb_func_start sub_0807c424
sub_0807c424:
	push	{ r4, r5, r6, r7, lr }
	add		r4, r0, #0x0
	ldr		r0, _0807c48c
	ldrb	r1, [r4, #0x0]
	strb	r1, [r0, #0x0]
	add		r4, #0x1
	ldr		r2, _0807c490
	strb	r1, [r2, #0x0]
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x18
	add		r3, r0, #0x0
	add		r6, r2, #0x0
	cmp		r1, #0x2d
	beq		_0807c444
	cmp		r1, #0x2b
	bne		_0807c44a
_0807c444:
	ldrb	r0, [r4, #0x0]
	strb	r0, [r3, #0x0]
	add		r4, #0x1
_0807c44a:
	ldr		r1, _0807c494
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldrb	r0, [r3, #0x0]
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	add		r2, r1, #0x0
	cmp		r0, #0x9
	bhi		_0807c482
	add		r5, r2, #0x0
	add		r1, r3, #0x0
	mov		r3, #0x0
_0807c464:
	lsl		r0, r3, #0x2
	add		r0, r0, r3
	lsl		r0, r0, #0x1
	sub		r0, #0x30
	ldrb	r7, [r1, #0x0]
	add		r3, r0, r7
	ldrb	r0, [r4, #0x0]
	strb	r0, [r1, #0x0]
	add		r4, #0x1
	sub		r0, #0x30
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x9
	bls		_0807c464
	str		r3, [r5, #0x0]
_0807c482:
	ldrb	r0, [r6, #0x0]
	cmp		r0, #0x2d
	beq		_0807c498
	ldr		r0, [r2, #0x0]
	b		_0807c49c

_0807c48c:	.4byte 0x030024F8
_0807c490:	.4byte 0x030024F9
_0807c494:	.4byte 0x030024FC

_0807c498:
	ldr		r0, [r2, #0x0]
	neg		r0, r0
_0807c49c:
	pop		{ r4, r5, r6, r7 }
	pop		{ r1 }
	bx		r1

.incbin "base.gba", 0x7C4A2, 0x2
	thumb_func_end sub_0807c424

	thumb_func_start sub_0807c4a4
sub_0807c4a4:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	add		r4, r0, #0x0
	add		r3, r1, #0x0
	ldr		r1, _0807c4fc
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r0, _0807c500
	mov		r9, r0
	ldr		r1, _0807c504
	mov		r8, r1
	mov		r10, r9
	mov		r7, r8
	mov		r0, #0x0
	mov		r12, r0
	ldr		r6, _0807c4fc
	ldr		r5, _0807c508
_0807c4cc:
	ldrb	r0, [r4, #0x0]
	lsr		r2, r0, #0x4
	mov		r1, r10
	strb	r2, [r1, #0x0]
	mov		r1, #0xf
	and		r1, r0
	strb	r1, [r7, #0x0]
	add		r4, #0x1
	cmp		r2, #0xf
	beq		_0807c4f4
	mov		r1, r9
	ldrb	r0, [r1, #0x0]
	add		r0, r0, r5
	ldrb	r0, [r0, #0x0]
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	mov		r1, r8
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0xf
	bne		_0807c50c
_0807c4f4:
	mov		r0, r12
	strb	r0, [r3, #0x0]
	b		_0807c520

.incbin "base.gba", 0x7C4FA, 0x2

_0807c4fc:	.4byte 0x03002500
_0807c500:	.4byte 0x03002504
_0807c504:	.4byte 0x03002505
_0807c508:	.4byte 0x0820bf80

_0807c50c:
	ldrb	r0, [r7, #0x0]
	add		r0, r0, r5
	ldrb	r0, [r0, #0x0]
	strb	r0, [r3, #0x0]
	add		r3, #0x1
	ldr		r0, [r6, #0x0]
	add		r0, #0x1
	str		r0, [r6, #0x0]
	cmp		r0, #0x7
	ble		_0807c4cc
_0807c520:
	ldr		r1, _0807c53c
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x8
	bne		_0807c52c
	mov		r0, #0x0
	strb	r0, [r3, #0x0]
_0807c52c:
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7C53A, 0x2

_0807c53c:	.4byte 0x03002500
	thumb_func_end sub_0807c4a4

	thumb_func_start sub_0807c540
sub_0807c540:
	push	{ r4, r5, r6, lr }
	add		r2, r0, #0x0
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x0
	beq		_0807c58c
	ldr		r5, _0807c57c
	ldr		r0, _0807c580
	ldrb	r6, [r0, #0x0]
_0807c550:
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	cmp		r1, r6
	beq		_0807c570
	ldr		r3, _0807c57c
	ldr		r4, _0807c580
_0807c55c:
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0xc
	bhi		_0807c570
	add		r1, r0, r4
	ldrb	r0, [r2, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0807c55c
_0807c570:
	ldr		r0, [r5, #0x0]
	cmp		r0, #0xd
	bne		_0807c584
	mov		r0, #0x0
	b		_0807c58e

.incbin "base.gba", 0x7C57A, 0x2

_0807c57c:	.4byte 0x03002508
_0807c580:	.4byte 0x0820bf80

_0807c584:
	add		r2, #0x1
	ldrb	r1, [r2, #0x0]
	cmp		r1, #0x0
	bne		_0807c550
_0807c58c:
	mov		r0, #0x1
_0807c58e:
	pop		{ r4, r5, r6 }
	pop		{ r1 }
	bx		r1
	thumb_func_end sub_0807c540

	thumb_func_start sub_0807c594
sub_0807c594:
	add		r2, r0, #0x0
	lsl		r1, r1, #0x10
	lsr		r0, r1, #0x10
	cmp		r0, #0x2
	bls		_0807c5b4
	add		r1, r0, r2
	sub		r0, r1, #0x2
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xd
	bne		_0807c5b4
	sub		r0, r1, #0x1
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0xa
	bne		_0807c5b4
	mov		r0, #0x1
	b		_0807c5b6
_0807c5b4:
	mov		r0, #0x0
_0807c5b6:
	bx		lr
	thumb_func_end sub_0807c594

	thumb_func_start sub_0807c5b8
sub_0807c5b8:
	push	{ r4, r5, r6, lr }
	lsl		r0, r0, #0x18
	lsr		r4, r0, #0x18
	mov		r2, #0x0
	ldr		r3, _0807c5d8
	mov		r5, #0x1
	add		r6, r3, #0x0
	sub		r6, #0x69
_0807c5c8:
	add		r1, r2, r3
	ldrb	r0, [r1, #0x0]
	cmp		r0, #0x0
	bne		_0807c5dc
	strb	r5, [r1, #0x0]
	add		r0, r2, r6
	strb	r4, [r0, #0x0]
	b		_0807c5e2

_0807c5d8:	.4byte 0x03006EEC

_0807c5dc:
	add		r2, #0x1
	cmp		r2, #0x1
	ble		_0807c5c8
_0807c5e2:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0
	thumb_func_end sub_0807c5b8

	thumb_func_start sub_0807c5e8
sub_0807c5e8:
	lsl		r0, r0, #0x18
	lsr		r3, r0, #0x18
	mov		r2, #0x0
	ldr		r1, _0807c604
	add		r0, r1, #0x0
	add		r0, #0x63
	ldrb	r0, [r0, #0x0]
	cmp		r0, r3
	bne		_0807c608
	add		r0, r1, #0x0
	add		r0, #0xcc
	strb	r2, [r0, #0x0]
	b		_0807c624

.incbin "base.gba", 0x7C602, 0x2

_0807c604:	.4byte 0x03006E20

_0807c608:
	add		r2, #0x1
	cmp		r2, #0x1
	bgt		_0807c624
	add		r0, r1, #0x0
	add		r0, #0x63
	add		r0, r2, r0
	ldrb	r0, [r0, #0x0]
	cmp		r0, r3
	bne		_0807c608
	add		r0, r1, #0x0
	add		r0, #0xcc
	add		r0, r2, r0
	mov		r1, #0x0
	strb	r1, [r0, #0x0]
_0807c624:
	bx		lr

.incbin "base.gba", 0x7C626, 0x36
	thumb_func_end sub_0807c5e8

	thumb_func_start sub_0807c65c
sub_0807c65c:
	mov		r2, #0x0
	mov		r1, #0x0
	ldr		r3, _0807c678
_0807c662:
	add		r0, r1, r3
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x1
	bne		_0807c66c
	add		r2, #0x1
_0807c66c:
	add		r1, #0x1
	cmp		r1, #0x1
	ble		_0807c662
	add		r0, r2, #0x0
	bx		lr

.incbin "base.gba", 0x7C676, 0x2

_0807c678:	.4byte 0x03006EEC
	thumb_func_end sub_0807c65c

	thumb_func_start sub_0807c67c
sub_0807c67c:
	mov		r3, #0x0
	mov		r1, #0x0
	ldr		r2, _0807c688
	add		r0, r2, #0x0
	add		r0, #0xcc
	b		_0807c698

_0807c688:	.4byte 0x03006E20

_0807c68c:
	add		r1, #0x1
	cmp		r1, #0x1
	bgt		_0807c6a0
	add		r0, r2, #0x0
	add		r0, #0xcc
	add		r0, r1, r0
_0807c698:
	ldrb	r0, [r0, #0x0]
	cmp		r0, #0x0
	bne		_0807c68c
	mov		r3, #0x1
_0807c6a0:
	add		r0, r3, #0x0
	bx		lr
	thumb_func_end sub_0807c67c

	thumb_func_start sub_0807c6a4
sub_0807c6a4:
	add		r3, r0, #0x0
	ldr		r2, _0807c6dc
	add		r1, r2, #0x0
	add		r1, #0x6a
	ldrb	r0, [r3, #0x0]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0807c6e0
	add		r1, r2, #0x0
	add		r1, #0x6b
	ldrb	r0, [r3, #0x1]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0807c6e0
	add		r1, r2, #0x0
	add		r1, #0x6c
	ldrb	r0, [r3, #0x2]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0807c6e0
	add		r1, r2, #0x0
	add		r1, #0x6d
	ldrb	r0, [r3, #0x3]
	ldrb	r1, [r1, #0x0]
	cmp		r0, r1
	bne		_0807c6e0
	mov		r0, #0x1
	b		_0807c6e2

_0807c6dc:	.4byte 0x03006E20

_0807c6e0:
	mov		r0, #0x0
_0807c6e2:
	bx		lr
	thumb_func_end sub_0807c6a4

	thumb_func_start sub_0807c6e4
sub_0807c6e4:
	ldr		r2, _0807c710
	mov		r3, #0x0
	mov		r1, #0x1
	add		r0, r2, #0x0
	add		r0, #0xcd
_0807c6ee:
	strb	r3, [r0, #0x0]
	sub		r0, #0x1
	sub		r1, #0x1
	cmp		r1, #0x0
	bge		_0807c6ee
	add		r1, r2, #0x0
	add		r1, #0x6a
	mov		r0, #0x0
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	strb	r0, [r1, #0x0]
	add		r1, #0x1
	strb	r0, [r1, #0x0]
	bx		lr

.incbin "base.gba", 0x7C70E, 0x2

_0807c710:	.4byte 0x03006E20
	thumb_func_end sub_0807c6e4

	thumb_func_start sub_0807c714
sub_0807c714:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	add		r6, r0, #0x0
	add		r5, r3, #0x0
	ldr		r0, _0807c784
	mov		r9, r0
	mov		r0, #0x0
	mov		r3, r9
	strb	r0, [r3, #0x0]
	ldr		r3, _0807c788
	mov		r8, r3
	strb	r0, [r3, #0x0]
	strb	r0, [r5, #0x0]
	ldr		r4, _0807c78c
	add		r0, r6, #0x0
	add		r3, r4, #0x0
	bl		sub_0807c794
	mov		r0, #0x30
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_0807c808
	mov		r0, #0x24
	add		r1, r4, #0x0
	mov		r2, r9
	bl		sub_0807ca84
	ldr		r4, _0807c790
	mov		r0, #0x30
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_0807cb64
	mov		r0, #0x20
	add		r1, r4, #0x0
	mov		r2, r8
	bl		sub_0807ca84
	add		r0, r5, #0x0
	mov		r1, r8
	bl		sub_0807c088
	add		r5, #0x2c
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_0807c088
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0807c784:	.4byte 0x03002538
_0807c788:	.4byte 0x03002598
_0807c78c:	.4byte 0x03002510
_0807c790:	.4byte 0x03002570
	thumb_func_end sub_0807c714

	thumb_func_start sub_0807c794
sub_0807c794:
	push	{ r4, r5, r6, lr }
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6 }
	mov		r9, r0
	add		r6, r1, #0x0
	mov		r8, r2
	add		r5, r3, #0x0
	ldr		r4, _0807c800
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x11
	bl		sub_0807c328
	add		r0, r4, #0x0
	mov		r1, r9
	mov		r2, r8
	bl		sub_0807c850
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_0807c304
	add		r4, r5, #0x0
	add		r4, #0x10
	add		r0, r6, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	add		r0, r4, #0x0
	add		r1, r6, #0x0
	bl		sub_0807c304
	ldr		r4, _0807c804
	add		r0, r6, #0x0
	bl		sub_0807c054
	add		r0, #0x10
	str		r0, [r4, #0x0]
	add		r5, r5, r0
	mov		r2, #0x24
	sub		r2, r2, r0
	add		r0, r5, #0x0
	mov		r1, #0xff
	bl		sub_0807c328
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7C7FE, 0x2

_0807c800:	.4byte 0x030025C8
_0807c804:	.4byte 0x030025DC
	thumb_func_end sub_0807c794

	thumb_func_start sub_0807c808
sub_0807c808:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r8, r2
	ldr		r4, _0807c848
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x25
	bl		sub_0807c328
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	add		r2, r4, #0x0
	bl		sub_0807cb64
	ldr		r5, _0807c84c
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	bl		sub_0807c8ac
	mov		r0, r8
	add		r1, r5, #0x0
	bl		sub_0807c9ec
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7C846, 0x2

_0807c848:	.4byte 0x030025E0
_0807c84c:	.4byte 0x03002608
	thumb_func_end sub_0807c808

	thumb_func_start sub_0807c850
sub_0807c850:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	mov		r8, r0
	add		r5, r1, #0x0
	add		r6, r2, #0x0
	ldr		r4, _0807c8a4
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x64
	bl		sub_0807c328
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	mov		r2, #0x30
	bl		sub_0807c304
	add		r0, r6, #0x0
	bl		sub_0807c054
	add		r2, r0, #0x0
	ldr		r5, _0807c8a8
	str		r2, [r5, #0x0]
	add		r0, r4, #0x0
	add		r0, #0x30
	add		r1, r6, #0x0
	bl		sub_0807c304
	add		r0, r4, #0x0
	bl		sub_0807c054
	add		r1, r0, #0x0
	str		r1, [r5, #0x0]
	add		r0, r4, #0x0
	mov		r2, r8
	bl		sub_0807ca44
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0807c8a4:	.4byte 0x03002630
_0807c8a8:	.4byte 0x03002714
	thumb_func_end sub_0807c850

	thumb_func_start sub_0807c8ac
sub_0807c8ac:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x8
	mov		r9, r0
	str		r1, [sp, #0x0]
	mov		r1, #0x0
	mov		r2, #0x25
	bl		sub_0807c328
	ldr		r1, _0807c9e0
	mov		r0, #0x12
	str		r0, [r1, #0x0]
	ldr		r1, _0807c9e4
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r6, r1, #0x0
	mov		r0, #0x40
	mov		r10, r0
	mov		r1, #0x10
	mov		r8, r1
	mov		r0, #0x4
	mov		r12, r0
	mov		r7, #0x1
_0807c8e0:
	ldr		r4, [r6, #0x0]
	lsl		r3, r4, #0x1
	ldr		r1, _0807c9e8
	str		r3, [r1, #0x0]
	mov		r0, r9
	add		r5, r0, r4
	ldr		r1, [sp, #0x0]
	add		r3, r1, r3
	ldrb	r2, [r3, #0x0]
	mov		r1, r10
	and		r1, r2
	lsl		r1, r1, #0x1
	ldrb	r0, [r5, #0x0]
	orr		r1, r0
	mov		r0, r8
	and		r0, r2
	lsl		r0, r0, #0x2
	orr		r1, r0
	mov		r0, r12
	and		r0, r2
	lsl		r0, r0, #0x3
	orr		r1, r0
	add		r0, r7, #0x0
	and		r0, r2
	lsl		r0, r0, #0x4
	orr		r1, r0
	ldrb	r2, [r3, #0x1]
	mov		r0, r10
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1b
	orr		r1, r0
	mov		r0, r8
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1a
	orr		r1, r0
	mov		r0, r12
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x19
	orr		r1, r0
	add		r0, r7, #0x0
	and		r0, r2
	orr		r1, r0
	strb	r1, [r5, #0x0]
	add		r4, #0x1
	str		r4, [r6, #0x0]
	cmp		r4, #0x12
	blt		_0807c8e0
	ldr		r1, _0807c9e4
	ldr		r0, [r1, #0x0]
	cmp		r0, #0x23
	bgt		_0807c9ce
	mov		r12, r1
	ldr		r0, _0807c9e0
	ldr		r0, [r0, #0x0]
	str		r0, [sp, #0x4]
	mov		r0, #0x80
	mov		r10, r0
	mov		r1, #0x20
	mov		r8, r1
	mov		r7, #0x8
	mov		r6, #0x2
_0807c960:
	mov		r0, r12
	ldr		r4, [r0, #0x0]
	ldr		r1, [sp, #0x4]
	sub		r2, r4, r1
	lsl		r2, r2, #0x1
	ldr		r0, _0807c9e8
	str		r2, [r0, #0x0]
	mov		r1, r9
	add		r5, r1, r4
	ldr		r0, [sp, #0x0]
	add		r2, r0, r2
	ldrb	r3, [r2, #0x0]
	mov		r1, r10
	and		r1, r3
	ldrb	r0, [r5, #0x0]
	orr		r1, r0
	mov		r0, r8
	and		r0, r3
	lsl		r0, r0, #0x1
	orr		r1, r0
	add		r0, r7, #0x0
	and		r0, r3
	lsl		r0, r0, #0x2
	orr		r1, r0
	add		r0, r6, #0x0
	and		r0, r3
	lsl		r0, r0, #0x3
	orr		r1, r0
	ldrb	r2, [r2, #0x1]
	mov		r0, r10
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1c
	orr		r1, r0
	mov		r0, r8
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1b
	orr		r1, r0
	add		r0, r7, #0x0
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x1a
	orr		r1, r0
	add		r0, r6, #0x0
	and		r0, r2
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x19
	orr		r1, r0
	strb	r1, [r5, #0x0]
	add		r4, #0x1
	mov		r1, r12
	str		r4, [r1, #0x0]
	cmp		r4, #0x23
	ble		_0807c960
_0807c9ce:
	add		sp, #0x8
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7C9DE, 0x2

_0807c9e0:	.4byte 0x03002694
_0807c9e4:	.4byte 0x03002708
_0807c9e8:	.4byte 0x0300270C
	thumb_func_end sub_0807c8ac

	thumb_func_start sub_0807c9ec
sub_0807c9ec:
	push	{ r4, r5, r6, r7, lr }
	add		r7, r0, #0x0
	add		r6, r1, #0x0
	ldr		r1, _0807ca3c
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r5, r1, #0x0
	ldr		r0, _0807ca40
	mov		r12, r0
_0807c9fe:
	ldr		r3, [r5, #0x0]
	add		r4, r7, r3
	add		r0, r6, r3
	ldrb	r1, [r4, #0x0]
	ldrb	r0, [r0, #0x0]
	eor		r1, r0
	mov		r2, #0xb6
	and		r2, r1
	mov		r0, #0x8
	and		r0, r1
	lsl		r0, r0, #0x3
	orr		r2, r0
	mov		r0, #0x1
	and		r0, r1
	lsl		r0, r0, #0x3
	orr		r2, r0
	mov		r0, #0x40
	and		r1, r0
	lsl		r1, r1, #0x18
	lsr		r1, r1, #0x1e
	orr		r2, r1
	mov		r0, r12
	strb	r2, [r0, #0x0]
	strb	r2, [r4, #0x0]
	add		r3, #0x1
	str		r3, [r5, #0x0]
	cmp		r3, #0x23
	ble		_0807c9fe
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0807ca3c:	.4byte 0x03002708
_0807ca40:	.4byte 0x03002698
	thumb_func_end sub_0807c9ec

	thumb_func_start sub_0807ca44
sub_0807ca44:
	push	{ r4, r5, r6, lr }
	mov		r6, r8
	push	{ r6 }
	add		r5, r0, #0x0
	add		r6, r1, #0x0
	mov		r8, r2
	ldr		r4, _0807ca80
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x58
	bl		sub_0807c328
	add		r0, r4, #0x0
	bl		sub_0807cc68
	add		r0, r4, #0x0
	add		r1, r5, #0x0
	add		r2, r6, #0x0
	bl		sub_0807cc90
	mov		r0, r8
	add		r1, r4, #0x0
	bl		sub_0807cd40
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7CA7E, 0x2

_0807ca80:	.4byte 0x030026A0
	thumb_func_end sub_0807ca44

	thumb_func_start sub_0807ca84
sub_0807ca84:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	mov		r12, r0
	add		r4, r1, #0x0
	ldr		r0, _0807cac0
	mov		r1, #0x0
	str		r1, [r0, #0x0]
	cmp		r1, r12
	bge		_0807cb4c
	ldr		r5, _0807cac4
	ldr		r6, _0807cac8
_0807caa0:
	mov		r0, #0x0
	str		r0, [r5, #0x0]
	str		r0, [r6, #0x0]
_0807caa6:
	ldr		r1, _0807cac0
	ldr		r3, [r1, #0x0]
	cmp		r3, r12
	blt		_0807cacc
	ldr		r0, [r6, #0x0]
	mov		r1, #0x3
	sub		r1, r1, r0
	lsl		r1, r1, #0x3
	ldr		r0, [r5, #0x0]
	lsl		r0, r1
	str		r0, [r5, #0x0]
	b		_0807cae8

.incbin "base.gba", 0x7CABE, 0x2

_0807cac0:	.4byte 0x03002714
_0807cac4:	.4byte 0x030026F8
_0807cac8:	.4byte 0x03002708

_0807cacc:
	ldr		r0, [r5, #0x0]
	lsl		r0, r0, #0x8
	ldrb	r1, [r4, #0x0]
	orr		r0, r1
	str		r0, [r5, #0x0]
	add		r4, #0x1
	add		r0, r3, #0x1
	ldr		r7, _0807cb20
	str		r0, [r7, #0x0]
	ldr		r0, [r6, #0x0]
	add		r0, #0x1
	str		r0, [r6, #0x0]
	cmp		r0, #0x2
	ble		_0807caa6
_0807cae8:
	mov		r0, #0x0
	ldr		r1, _0807cb24
	str		r0, [r1, #0x0]
	add		r3, r1, #0x0
	ldr		r7, _0807cb28
	mov		r10, r7
	ldr		r0, _0807cb2c
	mov		r9, r0
	ldr		r1, _0807cb30
	mov		r8, r1
_0807cafc:
	ldr		r1, [r3, #0x0]
	mov		r7, r10
	ldr		r0, [r7, #0x0]
	cmp		r1, r0
	bgt		_0807cb34
	mov		r7, #0x3
	sub		r0, r7, r1
	lsl		r1, r0, #0x1
	add		r1, r1, r0
	lsl		r1, r1, #0x1
	mov		r7, r8
	ldr		r0, [r7, #0x0]
	lsr		r0, r1
	mov		r1, #0x3f
	and		r0, r1
	add		r0, r9
	ldrb	r0, [r0, #0x0]
	b		_0807cb36

_0807cb20:	.4byte 0x03002714
_0807cb24:	.4byte 0x03002710
_0807cb28:	.4byte 0x03002708
_0807cb2c:	.4byte 0x0820bf90 @ "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
_0807cb30:	.4byte 0x030026F8

_0807cb34:
	mov		r0, #0x3d
_0807cb36:
	strb	r0, [r2, #0x0]
	add		r2, #0x1
	ldr		r0, [r3, #0x0]
	add		r0, #0x1
	str		r0, [r3, #0x0]
	cmp		r0, #0x3
	ble		_0807cafc
	ldr		r1, _0807cb60
	ldr		r0, [r1, #0x0]
	cmp		r0, r12
	blt		_0807caa0
_0807cb4c:
	mov		r0, #0x0
	strb	r0, [r2, #0x0]
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7CB5E, 0x2

_0807cb60:	.4byte 0x03002714
	thumb_func_end sub_0807ca84

	thumb_func_start sub_0807cb64
sub_0807cb64:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x4
	str		r0, [sp, #0x0]
	add		r4, r1, #0x0
	add		r5, r2, #0x0
	ldr		r1, _0807cbb4
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	ldr		r2, [sp, #0x0]
	cmp		r0, r2
	bge		_0807cc4a
	ldr		r7, _0807cbb8
	ldr		r6, _0807cbbc
	mov		r8, r6
	ldr		r0, _0807cbc0
	mov		r9, r0
	mov		r10, r1
_0807cb8e:
	mov		r1, #0x0
	str		r1, [r7, #0x0]
	mov		r2, r8
	str		r1, [r2, #0x0]
_0807cb96:
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x20
	lsl		r0, r0, #0x18
	lsr		r0, r0, #0x18
	cmp		r0, #0x5f
	bhi		_0807cbc8
	ldrb	r0, [r4, #0x0]
	sub		r0, #0x20
	ldr		r6, _0807cbc4
	add		r0, r0, r6
	ldrb	r0, [r0, #0x0]
	mov		r1, r9
	str		r0, [r1, #0x0]
	b		_0807cbce

.incbin "base.gba", 0x7CBB2, 0x2

_0807cbb4:	.4byte 0x03002704
_0807cbb8:	.4byte 0x030026FC
_0807cbbc:	.4byte 0x03002708
_0807cbc0:	.4byte 0x03002700
_0807cbc4:	.4byte 0x0820bfd1

_0807cbc8:
	mov		r0, #0xff
	mov		r2, r9
	str		r0, [r2, #0x0]
_0807cbce:
	add		r4, #0x1
	mov		r6, r10
	ldr		r0, [r6, #0x0]
	add		r0, #0x1
	str		r0, [r6, #0x0]
	mov		r0, r9
	ldr		r1, [r0, #0x0]
	cmp		r1, #0xff
	bne		_0807cbf6
	mov		r1, r8
	ldr		r0, [r1, #0x0]
	mov		r1, #0x4
	sub		r1, r1, r0
	lsl		r0, r1, #0x1
	add		r0, r0, r1
	lsl		r0, r0, #0x1
	ldr		r1, [r7, #0x0]
	lsl		r1, r0
	str		r1, [r7, #0x0]
	b		_0807cc0a
_0807cbf6:
	ldr		r0, [r7, #0x0]
	lsl		r0, r0, #0x6
	orr		r0, r1
	str		r0, [r7, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	add		r0, #0x1
	str		r0, [r2, #0x0]
	cmp		r0, #0x3
	ble		_0807cb96
_0807cc0a:
	mov		r6, #0x0
	ldr		r0, _0807cc60
	str		r6, [r0, #0x0]
	mov		r2, r8
	ldr		r0, [r2, #0x0]
	sub		r0, #0x1
	cmp		r6, r0
	bge		_0807cc40
	ldr		r1, _0807cc64
	mov		r12, r1
	ldr		r3, _0807cc60
_0807cc20:
	ldr		r0, [r3, #0x0]
	mov		r6, #0x2
	sub		r0, r6, r0
	lsl		r0, r0, #0x3
	mov		r6, r12
	ldr		r1, [r6, #0x0]
	lsr		r1, r0
	strb	r1, [r5, #0x0]
	add		r5, #0x1
	ldr		r1, [r3, #0x0]
	add		r1, #0x1
	str		r1, [r3, #0x0]
	ldr		r0, [r2, #0x0]
	sub		r0, #0x1
	cmp		r1, r0
	blt		_0807cc20
_0807cc40:
	mov		r1, r10
	ldr		r0, [r1, #0x0]
	ldr		r2, [sp, #0x0]
	cmp		r0, r2
	blt		_0807cb8e
_0807cc4a:
	mov		r0, #0x0
	strb	r0, [r5, #0x0]
	add		sp, #0x4
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7CC5E, 0x2

_0807cc60:	.4byte 0x03002710
_0807cc64:	.4byte 0x030026FC
	thumb_func_end sub_0807cb64

	thumb_func_start sub_0807cc68
sub_0807cc68:
	mov		r1, #0x0
	str		r1, [r0, #0x14]
	str		r1, [r0, #0x10]
	ldr		r1, _0807cc80
	str		r1, [r0, #0x0]
	ldr		r1, _0807cc84
	str		r1, [r0, #0x4]
	ldr		r1, _0807cc88
	str		r1, [r0, #0x8]
	ldr		r1, _0807cc8c
	str		r1, [r0, #0xc]
	bx		lr

_0807cc80:	.4byte 0x67452301
_0807cc84:	.4byte 0xEFCDAB89
_0807cc88:	.4byte 0x98BADCFE
_0807cc8c:	.4byte 0x10325476
	thumb_func_end sub_0807cc68

	thumb_func_start sub_0807cc90
sub_0807cc90:
	push	{ r4, r5, r6, r7, lr }
	add		r5, r0, #0x0
	add		r7, r1, #0x0
	add		r6, r2, #0x0
	ldr		r3, _0807cd14
	ldr		r2, [r5, #0x10]
	lsr		r0, r2, #0x3
	mov		r1, #0x3f
	and		r0, r1
	str		r0, [r3, #0x0]
	lsl		r0, r6, #0x3
	add		r2, r2, r0
	str		r2, [r5, #0x10]
	cmp		r2, r0
	bcs		_0807ccb4
	ldr		r0, [r5, #0x14]
	add		r0, #0x1
	str		r0, [r5, #0x14]
_0807ccb4:
	lsr		r0, r6, #0x1d
	ldr		r1, [r5, #0x14]
	add		r1, r1, r0
	str		r1, [r5, #0x14]
	ldr		r4, _0807cd18
	ldr		r1, [r3, #0x0]
	mov		r0, #0x40
	sub		r2, r0, r1
	str		r2, [r4, #0x0]
	cmp		r6, r2
	bcc		_0807cd20
	add		r0, r1, #0x0
	add		r0, #0x18
	add		r0, r5, r0
	add		r1, r7, #0x0
	bl		sub_0807d744
	add		r1, r5, #0x0
	add		r1, #0x18
	add		r0, r5, #0x0
	bl		sub_0807cdb8
	ldr		r1, _0807cd1c
	ldr		r0, [r4, #0x0]
	str		r0, [r1, #0x0]
	add		r0, #0x3f
	cmp		r0, r6
	bcs		_0807cd06
	add		r4, r1, #0x0
_0807ccee:
	ldr		r1, [r4, #0x0]
	add		r1, r7, r1
	add		r0, r5, #0x0
	bl		sub_0807cdb8
	ldr		r1, [r4, #0x0]
	add		r0, r1, #0x0
	add		r0, #0x40
	str		r0, [r4, #0x0]
	add		r1, #0x7f
	cmp		r1, r6
	bcc		_0807ccee
_0807cd06:
	ldr		r1, _0807cd14
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	add		r3, r1, #0x0
	ldr		r1, _0807cd1c
	b		_0807cd26

.incbin "base.gba", 0x7CD12, 0x2

_0807cd14:	.4byte 0x03002718
_0807cd18:	.4byte 0x0300271C
_0807cd1c:	.4byte 0x03002780

_0807cd20:
	ldr		r1, _0807cd3c
	mov		r0, #0x0
	str		r0, [r1, #0x0]
_0807cd26:
	ldr		r0, [r3, #0x0]
	add		r0, #0x18
	add		r0, r5, r0
	ldr		r2, [r1, #0x0]
	add		r1, r7, r2
	sub		r2, r6, r2
	bl		sub_0807d744
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0807cd3c:	.4byte 0x03002780
	thumb_func_end sub_0807cc90

	thumb_func_start sub_0807cd40
sub_0807cd40:
	push	{ r4, r5, lr }
	add		r5, r0, #0x0
	add		r4, r1, #0x0
	ldr		r0, _0807cd68
	add		r1, #0x10
	mov		r2, #0x8
	bl		sub_0807d684
	ldr		r1, _0807cd6c
	ldr		r0, [r4, #0x10]
	lsr		r2, r0, #0x3
	mov		r0, #0x3f
	and		r2, r0
	str		r2, [r1, #0x0]
	ldr		r1, _0807cd70
	cmp		r2, #0x37
	bhi		_0807cd74
	mov		r0, #0x38
	b		_0807cd76

.incbin "base.gba", 0x7CD66, 0x2

_0807cd68:	.4byte 0x03002720
_0807cd6c:	.4byte 0x03002728
_0807cd70:	.4byte 0x0300272C

_0807cd74:
	mov		r0, #0x78
_0807cd76:
	sub		r0, r0, r2
	str		r0, [r1, #0x0]
	ldr		r1, _0807cdac
	ldr		r0, _0807cdb0
	ldr		r2, [r0, #0x0]
	add		r0, r4, #0x0
	bl		sub_0807cc90
	ldr		r1, _0807cdb4
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		sub_0807cc90
	add		r0, r5, #0x0
	add		r1, r4, #0x0
	mov		r2, #0x10
	bl		sub_0807d684
	add		r0, r4, #0x0
	mov		r1, #0x0
	mov		r2, #0x58
	bl		sub_0807d774
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7CDAA, 0x2

_0807cdac:	.4byte 0x0820c034
_0807cdb0:	.4byte 0x0300272C
_0807cdb4:	.4byte 0x03002720
	thumb_func_end sub_0807cd40

	thumb_func_start sub_0807cdb8
sub_0807cdb8:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x10
	add		r7, r0, #0x0
	ldr		r0, [r7, #0x0]
	ldr		r2, _0807d1b4
	str		r0, [r2, #0x0]
	ldr		r0, [r7, #0x4]
	ldr		r3, _0807d1b8
	str		r0, [r3, #0x0]
	ldr		r0, [r7, #0x8]
	ldr		r4, _0807d1bc
	str		r0, [r4, #0x0]
	ldr		r0, [r7, #0xc]
	ldr		r5, _0807d1c0
	str		r0, [r5, #0x0]
	ldr		r6, _0807d1c4
	mov		r9, r6
	mov		r0, r9
	mov		r2, #0x40
	bl		sub_0807d6dc
	ldr		r0, _0807d1b4
	ldr		r2, [r0, #0x0]
	ldr		r1, _0807d1c8
	add		r2, r2, r1
	ldr		r4, _0807d1b8
	ldr		r3, [r4, #0x0]
	ldr		r5, _0807d1bc
	ldr		r4, [r5, #0x0]
	add		r1, r3, #0x0
	and		r1, r4
	ldr		r6, _0807d1c0
	ldr		r5, [r6, #0x0]
	add		r0, r5, #0x0
	bic		r0, r3
	orr		r1, r0
	mov		r0, r9
	ldr		r0, [r0, #0x0]
	add		r1, r1, r0
	add		r2, r2, r1
	mov		r1, #0x19
	mov		r8, r1
	ror		r2, r1
	add		r2, r2, r3
	ldr		r6, _0807d1cc
	add		r5, r5, r6
	add		r1, r2, #0x0
	and		r1, r3
	add		r0, r4, #0x0
	bic		r0, r2
	orr		r1, r0
	mov		r0, r9
	ldr		r0, [r0, #0x4]
	add		r1, r1, r0
	add		r5, r5, r1
	mov		r6, #0x14
	ror		r5, r6
	add		r5, r5, r2
	ldr		r1, _0807d1d0
	add		r1, r1, r4
	mov		r10, r1
	add		r1, r5, #0x0
	and		r1, r2
	add		r0, r3, #0x0
	bic		r0, r5
	orr		r1, r0
	mov		r4, r9
	ldr		r4, [r4, #0x8]
	add		r1, r1, r4
	mov		r0, r10
	add		r4, r0, r1
	mov		r1, #0xf
	mov		r10, r1
	ror		r4, r1
	add		r4, r4, r5
	ldr		r0, _0807d1d4
	add		r0, r0, r3
	mov		r12, r0
	add		r1, r4, #0x0
	and		r1, r5
	add		r0, r2, #0x0
	bic		r0, r4
	orr		r1, r0
	mov		r3, r9
	ldr		r3, [r3, #0xc]
	add		r1, r1, r3
	mov		r0, r12
	add		r3, r0, r1
	mov		r1, #0xa
	mov		r12, r1
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d1d8
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r1, r3, #0x0
	and		r1, r4
	add		r0, r5, #0x0
	bic		r0, r3
	orr		r1, r0
	mov		r2, r9
	ldr		r2, [r2, #0x10]
	add		r1, r1, r2
	ldr		r0, [sp, #0x0]
	add		r2, r0, r1
	mov		r1, r8
	ror		r2, r1
	add		r2, r2, r3
	ldr		r0, _0807d1dc
	add		r0, r5, r0
	str		r0, [sp, #0x4]
	add		r1, r2, #0x0
	and		r1, r3
	add		r0, r4, #0x0
	bic		r0, r2
	orr		r1, r0
	mov		r5, r9
	ldr		r5, [r5, #0x14]
	add		r1, r1, r5
	ldr		r0, [sp, #0x4]
	add		r5, r0, r1
	ror		r5, r6
	add		r5, r5, r2
	ldr		r1, _0807d1e0
	add		r1, r4, r1
	str		r1, [sp, #0x8]
	add		r1, r5, #0x0
	and		r1, r2
	add		r0, r3, #0x0
	bic		r0, r5
	orr		r1, r0
	mov		r4, r9
	ldr		r4, [r4, #0x18]
	add		r1, r1, r4
	ldr		r0, [sp, #0x8]
	add		r4, r0, r1
	mov		r1, r10
	ror		r4, r1
	add		r4, r4, r5
	ldr		r0, _0807d1e4
	add		r0, r3, r0
	str		r0, [sp, #0xC]
	add		r1, r4, #0x0
	and		r1, r5
	add		r0, r2, #0x0
	bic		r0, r4
	orr		r1, r0
	mov		r3, r9
	ldr		r3, [r3, #0x1c]
	add		r1, r1, r3
	ldr		r0, [sp, #0xC]
	add		r3, r0, r1
	mov		r1, r12
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d1e8
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r1, r3, #0x0
	and		r1, r4
	add		r0, r5, #0x0
	bic		r0, r3
	orr		r1, r0
	mov		r2, r9
	ldr		r2, [r2, #0x20]
	add		r1, r1, r2
	ldr		r0, [sp, #0x0]
	add		r2, r0, r1
	mov		r1, r8
	ror		r2, r1
	add		r2, r2, r3
	ldr		r0, _0807d1ec
	add		r0, r5, r0
	str		r0, [sp, #0x4]
	add		r1, r2, #0x0
	and		r1, r3
	add		r0, r4, #0x0
	bic		r0, r2
	orr		r1, r0
	mov		r5, r9
	ldr		r5, [r5, #0x24]
	add		r1, r1, r5
	ldr		r0, [sp, #0x4]
	add		r5, r0, r1
	ror		r5, r6
	add		r5, r5, r2
	ldr		r1, _0807d1f0
	add		r1, r4, r1
	str		r1, [sp, #0x8]
	add		r1, r5, #0x0
	and		r1, r2
	add		r0, r3, #0x0
	bic		r0, r5
	orr		r1, r0
	mov		r4, r9
	ldr		r4, [r4, #0x28]
	add		r1, r1, r4
	ldr		r0, [sp, #0x8]
	add		r4, r0, r1
	mov		r1, r10
	ror		r4, r1
	add		r4, r4, r5
	ldr		r0, _0807d1f4
	add		r0, r3, r0
	str		r0, [sp, #0xC]
	add		r1, r4, #0x0
	and		r1, r5
	add		r0, r2, #0x0
	bic		r0, r4
	orr		r1, r0
	mov		r3, r9
	ldr		r3, [r3, #0x2c]
	add		r1, r1, r3
	ldr		r0, [sp, #0xC]
	add		r3, r0, r1
	mov		r1, r12
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d1f8
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r1, r3, #0x0
	and		r1, r4
	add		r0, r5, #0x0
	bic		r0, r3
	orr		r1, r0
	mov		r2, r9
	ldr		r2, [r2, #0x30]
	add		r1, r1, r2
	ldr		r0, [sp, #0x0]
	add		r2, r0, r1
	mov		r1, r8
	ror		r2, r1
	add		r2, r2, r3
	ldr		r0, _0807d1fc
	add		r0, r0, r5
	mov		r8, r0
	add		r1, r2, #0x0
	and		r1, r3
	add		r0, r4, #0x0
	bic		r0, r2
	orr		r1, r0
	mov		r5, r9
	ldr		r5, [r5, #0x34]
	add		r1, r1, r5
	mov		r0, r8
	add		r5, r0, r1
	ror		r5, r6
	add		r5, r5, r2
	ldr		r1, _0807d200
	add		r4, r4, r1
	add		r1, r5, #0x0
	and		r1, r2
	mvn		r6, r5
	mov		r8, r6
	mov		r0, r8
	and		r0, r3
	orr		r1, r0
	mov		r0, r9
	ldr		r0, [r0, #0x38]
	add		r1, r1, r0
	add		r4, r4, r1
	mov		r1, r10
	ror		r4, r1
	add		r4, r4, r5
	ldr		r6, _0807d204
	add		r6, r6, r3
	mov		r10, r6
	add		r1, r4, #0x0
	and		r1, r5
	mvn		r6, r4
	add		r0, r6, #0x0
	and		r0, r2
	orr		r1, r0
	mov		r0, r9
	ldr		r0, [r0, #0x3c]
	add		r1, r1, r0
	mov		r0, r10
	add		r3, r0, r1
	mov		r1, r12
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d208
	add		r0, r0, r2
	mov		r10, r0
	add		r0, r3, #0x0
	and		r0, r5
	mov		r1, r8
	and		r1, r4
	orr		r0, r1
	mov		r2, r9
	ldr		r2, [r2, #0x4]
	add		r0, r0, r2
	mov		r1, r10
	add		r2, r1, r0
	mov		r0, #0x1b
	mov		r10, r0
	ror		r2, r0
	add		r2, r2, r3
	ldr		r1, _0807d20c
	add		r5, r5, r1
	add		r0, r2, #0x0
	and		r0, r4
	and		r6, r3
	orr		r0, r6
	mov		r6, r9
	ldr		r6, [r6, #0x18]
	add		r0, r0, r6
	add		r5, r5, r0
	mov		r0, #0x17
	mov		r12, r0
	ror		r5, r0
	add		r5, r5, r2
	ldr		r1, _0807d210
	add		r4, r4, r1
	add		r0, r5, #0x0
	and		r0, r3
	add		r1, r2, #0x0
	bic		r1, r3
	orr		r0, r1
	mov		r6, r9
	ldr		r6, [r6, #0x2c]
	add		r0, r0, r6
	add		r4, r4, r0
	mov		r0, #0x12
	mov		r8, r0
	ror		r4, r0
	add		r4, r4, r5
	ldr		r1, _0807d214
	add		r3, r3, r1
	add		r0, r4, #0x0
	and		r0, r2
	add		r1, r5, #0x0
	bic		r1, r2
	orr		r0, r1
	mov		r6, r9
	ldr		r6, [r6, #0x0]
	add		r0, r0, r6
	add		r3, r3, r0
	mov		r6, #0xc
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d218
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	add		r1, r4, #0x0
	bic		r1, r5
	orr		r0, r1
	mov		r1, r9
	ldr		r1, [r1, #0x14]
	add		r0, r0, r1
	ldr		r1, [sp, #0x0]
	add		r2, r1, r0
	mov		r0, r10
	ror		r2, r0
	add		r2, r2, r3
	ldr		r1, _0807d21c
	add		r1, r5, r1
	str		r1, [sp, #0x4]
	add		r0, r2, #0x0
	and		r0, r4
	add		r1, r3, #0x0
	bic		r1, r4
	orr		r0, r1
	mov		r5, r9
	ldr		r5, [r5, #0x28]
	add		r0, r0, r5
	ldr		r1, [sp, #0x4]
	add		r5, r1, r0
	mov		r0, r12
	ror		r5, r0
	add		r5, r5, r2
	ldr		r1, _0807d220
	add		r1, r4, r1
	str		r1, [sp, #0x8]
	add		r0, r5, #0x0
	and		r0, r3
	add		r1, r2, #0x0
	bic		r1, r3
	orr		r0, r1
	mov		r4, r9
	ldr		r4, [r4, #0x3c]
	add		r0, r0, r4
	ldr		r1, [sp, #0x8]
	add		r4, r1, r0
	mov		r0, r8
	ror		r4, r0
	add		r4, r4, r5
	ldr		r1, _0807d224
	add		r1, r3, r1
	str		r1, [sp, #0xC]
	add		r0, r4, #0x0
	and		r0, r2
	add		r1, r5, #0x0
	bic		r1, r2
	orr		r0, r1
	mov		r3, r9
	ldr		r3, [r3, #0x10]
	add		r0, r0, r3
	ldr		r1, [sp, #0xC]
	add		r3, r1, r0
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d228
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	add		r1, r4, #0x0
	bic		r1, r5
	orr		r0, r1
	mov		r1, r9
	ldr		r1, [r1, #0x24]
	add		r0, r0, r1
	ldr		r1, [sp, #0x0]
	add		r2, r1, r0
	mov		r0, r10
	ror		r2, r0
	add		r2, r2, r3
	ldr		r1, _0807d22c
	add		r1, r5, r1
	str		r1, [sp, #0x4]
	add		r0, r2, #0x0
	and		r0, r4
	add		r1, r3, #0x0
	bic		r1, r4
	orr		r0, r1
	mov		r5, r9
	ldr		r5, [r5, #0x38]
	add		r0, r0, r5
	ldr		r1, [sp, #0x4]
	add		r5, r1, r0
	mov		r0, r12
	ror		r5, r0
	add		r5, r5, r2
	ldr		r1, _0807d230
	add		r1, r4, r1
	str		r1, [sp, #0x8]
	add		r0, r5, #0x0
	and		r0, r3
	add		r1, r2, #0x0
	bic		r1, r3
	orr		r0, r1
	mov		r4, r9
	ldr		r4, [r4, #0xc]
	add		r0, r0, r4
	ldr		r1, [sp, #0x8]
	add		r4, r1, r0
	mov		r0, r8
	ror		r4, r0
	add		r4, r4, r5
	ldr		r1, _0807d234
	add		r1, r3, r1
	str		r1, [sp, #0xC]
	add		r0, r4, #0x0
	and		r0, r2
	add		r1, r5, #0x0
	bic		r1, r2
	orr		r0, r1
	mov		r3, r9
	ldr		r3, [r3, #0x20]
	add		r0, r0, r3
	ldr		r1, [sp, #0xC]
	add		r3, r1, r0
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d238
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r0, r3, #0x0
	and		r0, r5
	add		r1, r4, #0x0
	bic		r1, r5
	orr		r0, r1
	mov		r1, r9
	ldr		r1, [r1, #0x34]
	add		r0, r0, r1
	ldr		r1, [sp, #0x0]
	add		r2, r1, r0
	mov		r0, r10
	ror		r2, r0
	add		r2, r2, r3
	ldr		r1, _0807d23c
	add		r1, r1, r5
	mov		r10, r1
	add		r0, r2, #0x0
	and		r0, r4
	add		r1, r3, #0x0
	bic		r1, r4
	orr		r0, r1
	mov		r5, r9
	ldr		r5, [r5, #0x8]
	add		r0, r0, r5
	mov		r1, r10
	add		r5, r1, r0
	mov		r0, r12
	ror		r5, r0
	add		r5, r5, r2
	ldr		r1, _0807d240
	add		r1, r1, r4
	mov		r10, r1
	add		r0, r5, #0x0
	b		_0807d244

.incbin "base.gba", 0x7D1B2, 0x2

_0807d1b4:	.4byte 0x03002730
_0807d1b8:	.4byte 0x03002734
_0807d1bc:	.4byte 0x03002738
_0807d1c0:	.4byte 0x0300273C
_0807d1c4:	.4byte 0x03002740
_0807d1c8:	.4byte 0xD76AA478
_0807d1cc:	.4byte 0xE8C7B756
_0807d1d0:	.4byte 0x242070DB
_0807d1d4:	.4byte 0xC1BDCEEE
_0807d1d8:	.4byte 0xF57C0FAF
_0807d1dc:	.4byte 0x4787C62A
_0807d1e0:	.4byte 0xA8304613
_0807d1e4:	.4byte 0xFD469501
_0807d1e8:	.4byte 0x698098D8
_0807d1ec:	.4byte 0x8B44F7AF
_0807d1f0:	.4byte 0xFFFF5BB1
_0807d1f4:	.4byte 0x895CD7BE
_0807d1f8:	.4byte 0x6B901122
_0807d1fc:	.4byte 0xFD987193
_0807d200:	.4byte 0xA679438E
_0807d204:	.4byte 0x49B40821
_0807d208:	.4byte 0xF61E2562
_0807d20c:	.4byte 0xC040B340
_0807d210:	.4byte 0x265E5A51
_0807d214:	.4byte 0xE9B6C7AA
_0807d218:	.4byte 0xD62F105D
_0807d21c:	.4byte 0x02441453
_0807d220:	.4byte 0xD8A1E681
_0807d224:	.4byte 0xE7D3FBC8
_0807d228:	.4byte 0x21E1CDE6
_0807d22c:	.4byte 0xC33707D6
_0807d230:	.4byte 0xF4D50D87
_0807d234:	.4byte 0x455A14ED
_0807d238:	.4byte 0xA9E3E905
_0807d23c:	.4byte 0xFCEFA3F8
_0807d240:	.4byte 0x676F02D9

_0807d244:
	and		r0, r3
	add		r1, r2, #0x0
	bic		r1, r3
	orr		r0, r1
	mov		r4, r9
	ldr		r4, [r4, #0x1c]
	add		r0, r0, r4
	mov		r1, r10
	add		r4, r1, r0
	mov		r0, r8
	ror		r4, r0
	add		r4, r4, r5
	ldr		r1, _0807d5f0
	add		r1, r1, r3
	mov		r8, r1
	add		r0, r4, #0x0
	and		r0, r2
	add		r1, r5, #0x0
	bic		r1, r2
	orr		r0, r1
	mov		r3, r9
	ldr		r3, [r3, #0x30]
	add		r0, r0, r3
	mov		r1, r8
	add		r3, r1, r0
	ror		r3, r6
	add		r3, r3, r4
	ldr		r6, _0807d5f4
	add		r2, r2, r6
	add		r0, r3, #0x0
	eor		r0, r4
	eor		r0, r5
	mov		r1, r9
	ldr		r1, [r1, #0x14]
	add		r0, r0, r1
	add		r2, r2, r0
	mov		r6, #0x1c
	mov		r10, r6
	ror		r2, r6
	add		r2, r2, r3
	ldr		r0, _0807d5f8
	add		r5, r5, r0
	add		r0, r2, #0x0
	eor		r0, r3
	eor		r0, r4
	mov		r1, r9
	ldr		r1, [r1, #0x20]
	add		r0, r0, r1
	add		r5, r5, r0
	mov		r6, #0x15
	mov		r8, r6
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d5fc
	add		r4, r4, r0
	add		r0, r5, #0x0
	eor		r0, r2
	eor		r0, r3
	mov		r1, r9
	ldr		r1, [r1, #0x2c]
	add		r0, r0, r1
	add		r4, r4, r0
	mov		r6, #0x10
	mov		r12, r6
	ror		r4, r6
	add		r4, r4, r5
	ldr		r0, _0807d600
	add		r0, r3, r0
	str		r0, [sp, #0xC]
	add		r0, r4, #0x0
	eor		r0, r5
	eor		r0, r2
	mov		r1, r9
	ldr		r1, [r1, #0x38]
	add		r0, r0, r1
	ldr		r6, [sp, #0xC]
	add		r3, r6, r0
	mov		r1, #0x9
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d604
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r0, r3, #0x0
	eor		r0, r4
	eor		r0, r5
	mov		r2, r9
	ldr		r2, [r2, #0x4]
	add		r0, r0, r2
	ldr		r6, [sp, #0x0]
	add		r2, r6, r0
	mov		r0, r10
	ror		r2, r0
	add		r2, r2, r3
	ldr		r6, _0807d608
	add		r6, r5, r6
	add		r0, r2, #0x0
	eor		r0, r3
	eor		r0, r4
	mov		r5, r9
	ldr		r5, [r5, #0x10]
	add		r0, r0, r5
	add		r5, r6, r0
	mov		r6, r8
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d60c
	add		r0, r4, r0
	str		r0, [sp, #0x8]
	add		r0, r5, #0x0
	eor		r0, r2
	eor		r0, r3
	mov		r4, r9
	ldr		r4, [r4, #0x1c]
	add		r0, r0, r4
	ldr		r6, [sp, #0x8]
	add		r4, r6, r0
	mov		r0, r12
	ror		r4, r0
	add		r4, r4, r5
	ldr		r6, _0807d610
	add		r6, r3, r6
	add		r0, r4, #0x0
	eor		r0, r5
	eor		r0, r2
	mov		r3, r9
	ldr		r3, [r3, #0x28]
	add		r0, r0, r3
	add		r3, r6, r0
	ror		r3, r1
	add		r3, r3, r4
	ldr		r6, _0807d614
	add		r6, r2, r6
	add		r0, r3, #0x0
	eor		r0, r4
	eor		r0, r5
	mov		r2, r9
	ldr		r2, [r2, #0x34]
	add		r0, r0, r2
	add		r2, r6, r0
	mov		r6, r10
	ror		r2, r6
	add		r2, r2, r3
	ldr		r0, _0807d618
	add		r0, r5, r0
	str		r0, [sp, #0x4]
	add		r0, r2, #0x0
	eor		r0, r3
	eor		r0, r4
	mov		r5, r9
	ldr		r5, [r5, #0x0]
	add		r0, r0, r5
	ldr		r6, [sp, #0x4]
	add		r5, r6, r0
	mov		r0, r8
	ror		r5, r0
	add		r5, r5, r2
	ldr		r6, _0807d61c
	add		r6, r4, r6
	add		r0, r5, #0x0
	eor		r0, r2
	eor		r0, r3
	mov		r4, r9
	ldr		r4, [r4, #0xc]
	add		r0, r0, r4
	add		r4, r6, r0
	mov		r6, r12
	ror		r4, r6
	add		r4, r4, r5
	ldr		r0, _0807d620
	add		r0, r3, r0
	str		r0, [sp, #0xC]
	add		r0, r4, #0x0
	eor		r0, r5
	eor		r0, r2
	mov		r3, r9
	ldr		r3, [r3, #0x18]
	add		r0, r0, r3
	ldr		r6, [sp, #0xC]
	add		r3, r6, r0
	ror		r3, r1
	add		r3, r3, r4
	ldr		r0, _0807d624
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	add		r0, r3, #0x0
	eor		r0, r4
	eor		r0, r5
	mov		r2, r9
	ldr		r2, [r2, #0x24]
	add		r0, r0, r2
	ldr		r6, [sp, #0x0]
	add		r2, r6, r0
	mov		r0, r10
	ror		r2, r0
	add		r2, r2, r3
	ldr		r6, _0807d628
	add		r6, r6, r5
	add		r0, r2, #0x0
	eor		r0, r3
	eor		r0, r4
	mov		r5, r9
	ldr		r5, [r5, #0x30]
	add		r0, r0, r5
	add		r5, r6, r0
	mov		r6, r8
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d62c
	add		r0, r0, r4
	mov		r8, r0
	add		r0, r5, #0x0
	eor		r0, r2
	eor		r0, r3
	mov		r4, r9
	ldr		r4, [r4, #0x3c]
	add		r0, r0, r4
	mov		r6, r8
	add		r4, r6, r0
	mov		r0, r12
	ror		r4, r0
	add		r4, r4, r5
	ldr		r6, _0807d630
	add		r6, r6, r3
	add		r0, r4, #0x0
	eor		r0, r5
	eor		r0, r2
	mov		r3, r9
	ldr		r3, [r3, #0x8]
	add		r0, r0, r3
	add		r3, r6, r0
	ror		r3, r1
	add		r3, r3, r4
	ldr		r6, _0807d634
	add		r2, r2, r6
	mvn		r0, r5
	orr		r0, r3
	eor		r0, r4
	mov		r1, r9
	ldr		r1, [r1, #0x0]
	add		r0, r0, r1
	add		r2, r2, r0
	mov		r1, #0x1a
	ror		r2, r1
	add		r2, r2, r3
	ldr		r6, _0807d638
	add		r6, r6, r5
	mvn		r0, r4
	orr		r0, r2
	eor		r0, r3
	mov		r5, r9
	ldr		r5, [r5, #0x1c]
	add		r0, r0, r5
	add		r5, r6, r0
	mov		r6, #0x16
	mov		r12, r6
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d63c
	add		r0, r0, r4
	mov		r8, r0
	mvn		r0, r3
	orr		r0, r5
	eor		r0, r2
	mov		r4, r9
	ldr		r4, [r4, #0x38]
	add		r0, r0, r4
	mov		r6, r8
	add		r4, r6, r0
	mov		r0, #0x11
	mov		r8, r0
	ror		r4, r0
	add		r4, r4, r5
	ldr		r6, _0807d640
	add		r6, r6, r3
	mvn		r0, r2
	orr		r0, r4
	eor		r0, r5
	mov		r3, r9
	ldr		r3, [r3, #0x14]
	add		r0, r0, r3
	add		r3, r6, r0
	mov		r6, #0xb
	mov		r10, r6
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d644
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	mvn		r0, r5
	orr		r0, r3
	eor		r0, r4
	mov		r2, r9
	ldr		r2, [r2, #0x30]
	add		r0, r0, r2
	ldr		r6, [sp, #0x0]
	add		r2, r6, r0
	ror		r2, r1
	add		r2, r2, r3
	ldr		r0, _0807d648
	add		r0, r5, r0
	str		r0, [sp, #0x4]
	mvn		r0, r4
	orr		r0, r2
	eor		r0, r3
	mov		r5, r9
	ldr		r5, [r5, #0xc]
	add		r0, r0, r5
	ldr		r6, [sp, #0x4]
	add		r5, r6, r0
	mov		r0, r12
	ror		r5, r0
	add		r5, r5, r2
	ldr		r6, _0807d64c
	add		r6, r4, r6
	mvn		r0, r3
	orr		r0, r5
	eor		r0, r2
	mov		r4, r9
	ldr		r4, [r4, #0x28]
	add		r0, r0, r4
	add		r4, r6, r0
	mov		r6, r8
	ror		r4, r6
	add		r4, r4, r5
	ldr		r0, _0807d650
	add		r0, r3, r0
	str		r0, [sp, #0xC]
	mvn		r0, r2
	orr		r0, r4
	eor		r0, r5
	mov		r3, r9
	ldr		r3, [r3, #0x4]
	add		r0, r0, r3
	ldr		r6, [sp, #0xC]
	add		r3, r6, r0
	mov		r0, r10
	ror		r3, r0
	add		r3, r3, r4
	ldr		r6, _0807d654
	add		r6, r2, r6
	mvn		r0, r5
	orr		r0, r3
	eor		r0, r4
	mov		r2, r9
	ldr		r2, [r2, #0x20]
	add		r0, r0, r2
	add		r2, r6, r0
	ror		r2, r1
	add		r2, r2, r3
	ldr		r6, _0807d658
	add		r6, r5, r6
	mvn		r0, r4
	orr		r0, r2
	eor		r0, r3
	mov		r5, r9
	ldr		r5, [r5, #0x3c]
	add		r0, r0, r5
	add		r5, r6, r0
	mov		r6, r12
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d65c
	add		r0, r4, r0
	str		r0, [sp, #0x8]
	mvn		r0, r3
	orr		r0, r5
	eor		r0, r2
	mov		r4, r9
	ldr		r4, [r4, #0x18]
	add		r0, r0, r4
	ldr		r6, [sp, #0x8]
	add		r4, r6, r0
	mov		r0, r8
	ror		r4, r0
	add		r4, r4, r5
	ldr		r6, _0807d660
	add		r6, r3, r6
	mvn		r0, r2
	orr		r0, r4
	eor		r0, r5
	mov		r3, r9
	ldr		r3, [r3, #0x34]
	add		r0, r0, r3
	add		r3, r6, r0
	mov		r6, r10
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d664
	add		r0, r2, r0
	str		r0, [sp, #0x0]
	mvn		r0, r5
	orr		r0, r3
	eor		r0, r4
	mov		r2, r9
	ldr		r2, [r2, #0x10]
	add		r0, r0, r2
	ldr		r6, [sp, #0x0]
	add		r2, r6, r0
	ror		r2, r1
	add		r2, r2, r3
	ldr		r0, _0807d668
	str		r2, [r0, #0x0]
	ldr		r1, _0807d66c
	add		r1, r5, r1
	mvn		r0, r4
	orr		r0, r2
	eor		r0, r3
	mov		r5, r9
	ldr		r5, [r5, #0x2c]
	add		r0, r0, r5
	add		r5, r1, r0
	mov		r6, r12
	ror		r5, r6
	add		r5, r5, r2
	ldr		r0, _0807d670
	str		r5, [r0, #0x0]
	ldr		r1, _0807d674
	add		r4, r4, r1
	mvn		r0, r3
	orr		r0, r5
	eor		r0, r2
	mov		r6, r9
	ldr		r6, [r6, #0x8]
	add		r0, r0, r6
	add		r4, r4, r0
	mov		r0, r8
	ror		r4, r0
	add		r4, r4, r5
	ldr		r1, _0807d678
	str		r4, [r1, #0x0]
	ldr		r6, _0807d67c
	add		r3, r3, r6
	mvn		r0, r2
	orr		r0, r4
	eor		r0, r5
	mov		r1, r9
	ldr		r1, [r1, #0x24]
	add		r0, r0, r1
	add		r3, r3, r0
	mov		r6, r10
	ror		r3, r6
	add		r3, r3, r4
	ldr		r0, _0807d680
	str		r3, [r0, #0x0]
	ldr		r0, [r7, #0x0]
	add		r0, r0, r2
	str		r0, [r7, #0x0]
	ldr		r0, [r7, #0x4]
	add		r0, r0, r3
	str		r0, [r7, #0x4]
	ldr		r0, [r7, #0x8]
	add		r0, r0, r4
	str		r0, [r7, #0x8]
	ldr		r0, [r7, #0xc]
	add		r0, r0, r5
	str		r0, [r7, #0xc]
	mov		r0, r9
	mov		r1, #0x0
	mov		r2, #0x40
	bl		sub_0807d774
	add		sp, #0x10
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0807d5f0:	.4byte 0x8D2A4C8A
_0807d5f4:	.4byte 0xFFFA3942
_0807d5f8:	.4byte 0x8771F681
_0807d5fc:	.4byte 0x6D9D6122
_0807d600:	.4byte 0xFDE5380C
_0807d604:	.4byte 0xA4BEEA44
_0807d608:	.4byte 0x4BDECFA9
_0807d60c:	.4byte 0xF6BB4B60
_0807d610:	.4byte 0xBEBFBC70
_0807d614:	.4byte 0x289B7EC6
_0807d618:	.4byte 0xEAA127FA
_0807d61c:	.4byte 0xD4EF3085
_0807d620:	.4byte 0x04881D05
_0807d624:	.4byte 0xD9D4D039
_0807d628:	.4byte 0xE6DB99E5
_0807d62c:	.4byte 0x1FA27CF8
_0807d630:	.4byte 0xC4AC5665
_0807d634:	.4byte 0xF4292244
_0807d638:	.4byte 0x432AFF97
_0807d63c:	.4byte 0xAB9423A7
_0807d640:	.4byte 0xFC93A039
_0807d644:	.4byte 0x655B59C3
_0807d648:	.4byte 0x8F0CCC92
_0807d64c:	.4byte 0xFFEFF47D
_0807d650:	.4byte 0x85845DD1
_0807d654:	.4byte 0x6FA87E4F
_0807d658:	.4byte 0xFE2CE6E0
_0807d65c:	.4byte 0xA3014314
_0807d660:	.4byte 0x4E0811A1
_0807d664:	.4byte 0xF7537E82
_0807d668:	.4byte 0x03002730
_0807d66c:	.4byte 0xBD3AF235
_0807d670:	.4byte 0x0300273C
_0807d674:	.4byte 0x2AD7D2BB
_0807d678:	.4byte 0x03002738
_0807d67c:	.4byte 0xEB86D391
_0807d680:	.4byte 0x03002734
	thumb_func_end sub_0807cdb8

	thumb_func_start sub_0807d684
sub_0807d684:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	mov		r8, r0
	mov		r12, r1
	add		r5, r2, #0x0
	ldr		r3, _0807d6d4
	mov		r0, #0x0
	str		r0, [r3, #0x0]
	ldr		r4, _0807d6d8
	str		r0, [r4, #0x0]
	cmp		r0, r5
	bcs		_0807d6ca
	add		r7, r4, #0x0
	add		r6, r3, #0x0
_0807d6a2:
	ldr		r4, [r7, #0x0]
	mov		r0, r8
	add		r2, r0, r4
	ldr		r3, [r6, #0x0]
	lsl		r0, r3, #0x2
	add		r0, r12
	ldr		r1, [r0, #0x0]
	strb	r1, [r2, #0x0]
	lsr		r0, r1, #0x8
	strb	r0, [r2, #0x1]
	lsr		r0, r1, #0x10
	strb	r0, [r2, #0x2]
	lsr		r1, r1, #0x18
	strb	r1, [r2, #0x3]
	add		r3, #0x1
	str		r3, [r6, #0x0]
	add		r4, #0x4
	str		r4, [r7, #0x0]
	cmp		r4, r5
	bcc		_0807d6a2
_0807d6ca:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

_0807d6d4:	.4byte 0x03002780
_0807d6d8:	.4byte 0x03002784
	thumb_func_end sub_0807d684

	thumb_func_start sub_0807d6dc
sub_0807d6dc:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r9
	mov		r6, r8
	push	{ r6, r7 }
	mov		r9, r0
	mov		r8, r1
	add		r6, r2, #0x0
	ldr		r4, _0807d73c
	mov		r0, #0x0
	str		r0, [r4, #0x0]
	ldr		r3, _0807d740
	str		r0, [r3, #0x0]
	cmp		r0, r6
	bcs		_0807d72e
	mov		r12, r4
	add		r7, r3, #0x0
_0807d6fc:
	mov		r0, r12
	ldr		r4, [r0, #0x0]
	lsl		r5, r4, #0x2
	add		r5, r9
	ldr		r3, [r7, #0x0]
	mov		r0, r8
	add		r2, r0, r3
	ldrb	r1, [r2, #0x0]
	ldrb	r0, [r2, #0x1]
	lsl		r0, r0, #0x8
	orr		r1, r0
	ldrb	r0, [r2, #0x2]
	lsl		r0, r0, #0x10
	orr		r1, r0
	ldrb	r0, [r2, #0x3]
	lsl		r0, r0, #0x18
	orr		r1, r0
	str		r1, [r5, #0x0]
	add		r4, #0x1
	mov		r0, r12
	str		r4, [r0, #0x0]
	add		r3, #0x4
	str		r3, [r7, #0x0]
	cmp		r3, r6
	bcc		_0807d6fc
_0807d72e:
	pop		{ r3, r4 }
	mov		r8, r3
	mov		r9, r4
	pop		{ r4, r5, r6, r7 }
	pop		{ r0 }
	bx		r0

.incbin "base.gba", 0x7D73A, 0x2

_0807d73c:	.4byte 0x03002780
_0807d740:	.4byte 0x03002784
	thumb_func_end sub_0807d6dc

	thumb_func_start sub_0807d744
sub_0807d744:
	push	{ r4, r5, r6, lr }
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	add		r3, r2, #0x0
	ldr		r1, _0807d770
	mov		r0, #0x0
	str		r0, [r1, #0x0]
	cmp		r0, r3
	bcs		_0807d76a
	add		r4, r1, #0x0
_0807d758:
	ldr		r1, [r4, #0x0]
	add		r2, r6, r1
	add		r0, r5, r1
	ldrb	r0, [r0, #0x0]
	strb	r0, [r2, #0x0]
	add		r1, #0x1
	str		r1, [r4, #0x0]
	cmp		r1, r3
	bcc		_0807d758
_0807d76a:
	pop		{ r4, r5, r6 }
	pop		{ r0 }
	bx		r0

_0807d770:	.4byte 0x03002780
	thumb_func_end sub_0807d744

	thumb_func_start sub_0807d774
sub_0807d774:
	push	{ r4, r5, lr }
	add		r4, r0, #0x0
	ldr		r3, _0807d798
	mov		r0, #0x0
	str		r0, [r3, #0x0]
	cmp		r0, r2
	bcs		_0807d792
	add		r5, r3, #0x0
	mov		r3, #0x0
_0807d786:
	add		r0, r4, r3
	strb	r1, [r0, #0x0]
	add		r3, #0x1
	cmp		r3, r2
	bcc		_0807d786
	str		r3, [r5, #0x0]
_0807d792:
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

_0807d798:	.4byte 0x03002780
	thumb_func_end sub_0807d774

	thumb_func_start sub_0807d79c
sub_0807d79c:
	push	{ r4, r5, r6, lr }
	add		r6, r1, #0x0
	add		r5, r0, #0x0
	cmp		r2, #0x0
	beq		_0807d7cc
	mov		r0, #0x20
	sub		r0, r0, r2
	cmp		r0, #0x0
	bgt		_0807d7b8
	mov		r3, #0x0
	neg		r0, r0
	add		r4, r5, #0x0
	lsl		r4, r0
	b		_0807d7c8
_0807d7b8:
	add		r1, r5, #0x0
	lsr		r1, r0
	add		r3, r5, #0x0
	lsl		r3, r2
	add		r0, r6, #0x0
	lsl		r0, r2
	add		r4, r0, #0x0
	orr		r4, r1
_0807d7c8:
	add		r1, r4, #0x0
	add		r0, r3, #0x0
_0807d7cc:
	pop		{ r4, r5, r6, pc }

.incbin "base.gba", 0x7D7CE, 0x2
	thumb_func_end sub_0807d79c

	thumb_func_start sub_0807d7d0
sub_0807d7d0:
	bx		r0

.incbin "base.gba", 0x7D7D2, 0x2
	thumb_func_end sub_0807d7d0

	thumb_func_start sub_0807d7d4
sub_0807d7d4:
	bx		r1

.incbin "base.gba", 0x7D7D6, 0x2
	thumb_func_end sub_0807d7d4

	thumb_func_start sub_0807d7d8
sub_0807d7d8:
	bx		r2

.incbin "base.gba", 0x7D7DA, 0x2
	thumb_func_end sub_0807d7d8

	thumb_func_start sub_0807d7dc
sub_0807d7dc:
	bx		r3

.incbin "base.gba", 0x7D7DE, 0x2
	thumb_func_end sub_0807d7dc

	thumb_func_start sub_0807d7e0
sub_0807d7e0:
	bx		r4

.incbin "base.gba", 0x7D7E2, 0x2
	thumb_func_end sub_0807d7e0

	thumb_func_start sub_0807d7e4
sub_0807d7e4:
	bx		r5

.incbin "base.gba", 0x7D7E6, 0x6
	thumb_func_end sub_0807d7e4

	thumb_func_start sub_0807d7ec
sub_0807d7ec:
	bx		r7

.incbin "base.gba", 0x7D7EE, 0x2
	thumb_func_end sub_0807d7ec

	thumb_func_start sub_0807d7f0
sub_0807d7f0:
	bx		r8

.incbin "base.gba", 0x7D7F2, 0x6
	thumb_func_end sub_0807d7f0

	thumb_func_start sub_0807d7f8
sub_0807d7f8:
	bx		r10

.incbin "base.gba", 0x7D7FA, 0x12
	thumb_func_end sub_0807d7f8

	thumb_func_start sub_0807d80c
sub_0807d80c:
	cmp		r1, #0x0
	beq		_0807d894
	push	{ r4 }
	add		r4, r0, #0x0
	eor		r4, r1
	mov		r12, r4
	mov		r3, #0x1
	mov		r2, #0x0
	cmp		r1, #0x0
	bpl		_0807d822
	neg		r1, r1
_0807d822:
	cmp		r0, #0x0
	bpl		_0807d828
	neg		r0, r0
_0807d828:
	cmp		r0, r1
	bcc		_0807d886
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_0807d830:
	cmp		r1, r4
	bcs		_0807d83e
	cmp		r1, r0
	bcs		_0807d83e
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_0807d830
_0807d83e:
	lsl		r4, r4, #0x3
_0807d840:
	cmp		r1, r4
	bcs		_0807d84e
	cmp		r1, r0
	bcs		_0807d84e
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_0807d840
_0807d84e:
	cmp		r0, r1
	bcc		_0807d856
	sub		r0, r0, r1
	orr		r2, r3
_0807d856:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0807d862
	sub		r0, r0, r4
	lsr		r4, r3, #0x1
	orr		r2, r4
_0807d862:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_0807d86e
	sub		r0, r0, r4
	lsr		r4, r3, #0x2
	orr		r2, r4
_0807d86e:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_0807d87a
	sub		r0, r0, r4
	lsr		r4, r3, #0x3
	orr		r2, r4
_0807d87a:
	cmp		r0, #0x0
	beq		_0807d886
	lsr		r3, r3, #0x4
	beq		_0807d886
	lsr		r1, r1, #0x4
	b		_0807d84e
_0807d886:
	add		r0, r2, #0x0
	mov		r4, r12
	cmp		r4, #0x0
	bpl		_0807d890
	neg		r0, r0
_0807d890:
	pop		{ r4 }
	mov		pc, lr
_0807d894:
	push	{ lr }
	bl		sub_0807d8a0
	mov		r0, #0x0
	pop		{ pc }

.incbin "base.gba", 0x7D89E, 0x2
	thumb_func_end sub_0807d80c

	thumb_func_start sub_0807d8a0
sub_0807d8a0:
	mov		pc, lr

.incbin "base.gba", 0x7D8A2, 0x2
	thumb_func_end sub_0807d8a0

	thumb_func_start sub_0807d8a4
sub_0807d8a4:
	push	{ r4, r5, r6, lr }
	add		r6, r1, #0x0
	add		r5, r0, #0x0
	cmp		r2, #0x0
	beq		_0807d8d4
	mov		r0, #0x20
	sub		r0, r0, r2
	cmp		r0, #0x0
	bgt		_0807d8c0
	mov		r4, #0x0
	neg		r0, r0
	add		r3, r6, #0x0
	lsr		r3, r0
	b		_0807d8d0
_0807d8c0:
	add		r1, r6, #0x0
	lsl		r1, r0
	add		r4, r6, #0x0
	lsr		r4, r2
	add		r0, r5, #0x0
	lsr		r0, r2
	add		r3, r0, #0x0
	orr		r3, r1
_0807d8d0:
	add		r1, r4, #0x0
	add		r0, r3, #0x0
_0807d8d4:
	pop		{ r4, r5, r6, pc }

.incbin "base.gba", 0x7D8D6, 0x2
	thumb_func_end sub_0807d8a4

	thumb_func_start sub_0807d8d8
sub_0807d8d8:
	mov		r3, #0x1
	cmp		r1, #0x0
	beq		_0807d99c
	bpl		_0807d8e2
	neg		r1, r1
_0807d8e2:
	push	{ r4 }
	push	{ r0 }
	cmp		r0, #0x0
	bpl		_0807d8ec
	neg		r0, r0
_0807d8ec:
	cmp		r0, r1
	bcc		_0807d990
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_0807d8f4:
	cmp		r1, r4
	bcs		_0807d902
	cmp		r1, r0
	bcs		_0807d902
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_0807d8f4
_0807d902:
	lsl		r4, r4, #0x3
_0807d904:
	cmp		r1, r4
	bcs		_0807d912
	cmp		r1, r0
	bcs		_0807d912
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_0807d904
_0807d912:
	mov		r2, #0x0
	cmp		r0, r1
	bcc		_0807d91a
	sub		r0, r0, r1
_0807d91a:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0807d92c
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x1
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807d92c:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_0807d93e
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x2
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807d93e:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_0807d950
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x3
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807d950:
	mov		r12, r3
	cmp		r0, #0x0
	beq		_0807d95e
	lsr		r3, r3, #0x4
	beq		_0807d95e
	lsr		r1, r1, #0x4
	b		_0807d912
_0807d95e:
	mov		r4, #0xe
	lsl		r4, r4, #0x1c
	and		r2, r4
	beq		_0807d990
	mov		r3, r12
	mov		r4, #0x3
	ror		r3, r4
	tst		r2, r3
	beq		_0807d974
	lsr		r4, r1, #0x3
	add		r0, r0, r4
_0807d974:
	mov		r3, r12
	mov		r4, #0x2
	ror		r3, r4
	tst		r2, r3
	beq		_0807d982
	lsr		r4, r1, #0x2
	add		r0, r0, r4
_0807d982:
	mov		r3, r12
	mov		r4, #0x1
	ror		r3, r4
	tst		r2, r3
	beq		_0807d990
	lsr		r4, r1, #0x1
	add		r0, r0, r4
_0807d990:
	pop		{ r4 }
	cmp		r4, #0x0
	bpl		_0807d998
	neg		r0, r0
_0807d998:
	pop		{ r4 }
	mov		pc, lr
_0807d99c:
	push	{ lr }
	bl		sub_0807d8a0
	mov		r0, #0x0
	pop		{ pc }

.incbin "base.gba", 0x7D9A6, 0x2
	thumb_func_end sub_0807d8d8

	thumb_func_start sub_0807d9a8
sub_0807d9a8:
	push	{ r4, r5, r6, r7, lr }
	sub		sp, #0x10
	str		r0, [sp, #0x0]
	str		r1, [sp, #0x4]
	str		r2, [sp, #0x8]
	str		r3, [sp, #0xC]
	ldr		r3, [sp, #0x0]
	ldr		r0, _0807da14
	mov		r12, r0
	add		r2, r3, #0x0
	and		r2, r0
	lsr		r3, r3, #0x10
	ldr		r1, [sp, #0x8]
	add		r0, r1, #0x0
	mov		r4, r12
	and		r0, r4
	lsr		r1, r1, #0x10
	add		r5, r2, #0x0
	mul		r5, r0
	add		r4, r2, #0x0
	mul		r4, r1
	add		r2, r3, #0x0
	mul		r2, r0
	mul		r3, r1
	lsr		r0, r5, #0x10
	add		r4, r4, r0
	add		r4, r4, r2
	cmp		r4, r2
	bcs		_0807d9e8
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	add		r3, r3, r0
_0807d9e8:
	lsr		r0, r4, #0x10
	add		r7, r3, r0
	mov		r1, r12
	and		r4, r1
	lsl		r0, r4, #0x10
	and		r5, r1
	add		r6, r0, #0x0
	orr		r6, r5
	add		r1, r7, #0x0
	add		r0, r6, #0x0
	ldr		r3, [sp, #0x0]
	ldr		r4, [sp, #0xC]
	add		r2, r3, #0x0
	mul		r2, r4
	ldr		r5, [sp, #0x4]
	ldr		r4, [sp, #0x8]
	add		r3, r5, #0x0
	mul		r3, r4
	add		r2, r2, r3
	add		r1, r7, r2
	add		sp, #0x10
	pop		{ r4, r5, r6, r7, pc }

_0807da14:	.4byte 0x0000FFFF
	thumb_func_end sub_0807d9a8

	thumb_func_start sub_0807da18
sub_0807da18:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r10
	mov		r6, r9
	mov		r5, r8
	push	{ r5, r6, r7 }
	sub		sp, #0x20
	add		r7, r2, #0x0
	add		r6, r3, #0x0
	mov		r10, r0
	mov		r8, r1
	cmp		r6, #0x0
	beq		_0807da32
	b		_0807dc80
_0807da32:
	cmp		r7, r8
	bls		_0807db0c
	ldr		r0, _0807da48
	cmp		r7, r0
	bhi		_0807da4c
	mov		r1, #0x0
	cmp		r7, #0xff
	bls		_0807da56
	mov		r1, #0x8
	b		_0807da56

.incbin "base.gba", 0x7DA46, 0x2

_0807da48:	.4byte 0x0000FFFF

_0807da4c:
	ldr		r0, _0807db00
	mov		r1, #0x18
	cmp		r7, r0
	bhi		_0807da56
	mov		r1, #0x10
_0807da56:
	ldr		r0, _0807db04
	lsr		r2, r1
	add		r0, r2, r0
	ldrb	r0, [r0, #0x0]
	add		r0, r0, r1
	mov		r1, #0x20
	sub		r2, r1, r0
	cmp		r2, #0x0
	beq		_0807da82
	lsl		r7, r2
	mov		r0, r8
	lsl		r0, r2
	mov		r8, r0
	sub		r1, r1, r2
	mov		r0, r10
	lsr		r0, r1
	mov		r1, r8
	orr		r1, r0
	mov		r8, r1
	mov		r3, r10
	lsl		r3, r2
	mov		r10, r3
_0807da82:
	lsr		r4, r7, #0x10
	mov		r9, r4
	ldr		r0, _0807db08
	and		r0, r7
	str		r0, [sp, #0x0]
	mov		r0, r8
	mov		r1, r9
	bl		sub_0807de68
	add		r4, r0, #0x0
	mov		r0, r8
	mov		r1, r9
	bl		sub_0807ddf0
	add		r6, r0, #0x0
	ldr		r1, [sp, #0x0]
	add		r2, r6, #0x0
	mul		r2, r1
	lsl		r4, r4, #0x10
	mov		r3, r10
	lsr		r0, r3, #0x10
	orr		r4, r0
	cmp		r4, r2
	bcs		_0807dac2
	sub		r6, #0x1
	add		r4, r4, r7
	cmp		r4, r7
	bcc		_0807dac2
	cmp		r4, r2
	bcs		_0807dac2
	sub		r6, #0x1
	add		r4, r4, r7
_0807dac2:
	sub		r4, r4, r2
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807de68
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r1, r0, #0x0
	ldr		r4, [sp, #0x0]
	add		r2, r1, #0x0
	mul		r2, r4
	lsl		r5, r5, #0x10
	ldr		r0, _0807db08
	mov		r3, r10
	and		r3, r0
	orr		r5, r3
	cmp		r5, r2
	bcs		_0807dafa
	sub		r1, #0x1
	add		r5, r5, r7
	cmp		r5, r7
	bcc		_0807dafa
	cmp		r5, r2
	bcs		_0807dafa
	sub		r1, #0x1
_0807dafa:
	lsl		r6, r6, #0x10
	orr		r6, r1
	b		_0807dc86

_0807db00:	.4byte 0x00FFFFFF
_0807db04:	.4byte 0x0820c074
_0807db08:	.4byte 0x0000FFFF

_0807db0c:
	cmp		r2, #0x0
	bne		_0807db1a
	mov		r0, #0x1
	mov		r1, #0x0
	bl		sub_0807ddf0
	add		r7, r0, #0x0
_0807db1a:
	add		r1, r7, #0x0
	ldr		r0, _0807db2c
	cmp		r7, r0
	bhi		_0807db30
	mov		r2, #0x0
	cmp		r7, #0xff
	bls		_0807db3a
	mov		r2, #0x8
	b		_0807db3a

_0807db2c:	.4byte 0x0000FFFF

_0807db30:
	ldr		r0, _0807db58
	mov		r2, #0x18
	cmp		r7, r0
	bhi		_0807db3a
	mov		r2, #0x10
_0807db3a:
	ldr		r0, _0807db5c
	lsr		r1, r2
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	add		r0, r0, r2
	mov		r1, #0x20
	sub		r2, r1, r0
	cmp		r2, #0x0
	bne		_0807db60
	mov		r0, r8
	sub		r0, r0, r7
	mov		r8, r0
	mov		r1, #0x1
	str		r1, [sp, #0x4]
	b		_0807dbfe

_0807db58:	.4byte 0x00FFFFFF
_0807db5c:	.4byte 0x0820c074

_0807db60:
	sub		r1, r1, r2
	lsl		r7, r2
	mov		r5, r8
	lsr		r5, r1
	mov		r3, r8
	lsl		r3, r2
	mov		r0, r10
	lsr		r0, r1
	orr		r3, r0
	mov		r8, r3
	mov		r4, r10
	lsl		r4, r2
	mov		r10, r4
	lsr		r0, r7, #0x10
	mov		r9, r0
	ldr		r1, _0807dc7c
	and		r1, r7
	str		r1, [sp, #0x8]
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_0807de68
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r6, r0, #0x0
	ldr		r2, [sp, #0x8]
	add		r1, r6, #0x0
	mul		r1, r2
	lsl		r4, r4, #0x10
	mov		r3, r8
	lsr		r0, r3, #0x10
	orr		r4, r0
	cmp		r4, r1
	bcs		_0807dbba
	sub		r6, #0x1
	add		r4, r4, r7
	cmp		r4, r7
	bcc		_0807dbba
	cmp		r4, r1
	bcs		_0807dbba
	sub		r6, #0x1
	add		r4, r4, r7
_0807dbba:
	sub		r4, r4, r1
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807de68
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r2, r0, #0x0
	ldr		r4, [sp, #0x8]
	add		r1, r2, #0x0
	mul		r1, r4
	lsl		r5, r5, #0x10
	ldr		r0, _0807dc7c
	mov		r3, r8
	and		r3, r0
	orr		r5, r3
	cmp		r5, r1
	bcs		_0807dbf4
	sub		r2, #0x1
	add		r5, r5, r7
	cmp		r5, r7
	bcc		_0807dbf4
	cmp		r5, r1
	bcs		_0807dbf4
	sub		r2, #0x1
	add		r5, r5, r7
_0807dbf4:
	lsl		r6, r6, #0x10
	orr		r6, r2
	str		r6, [sp, #0x4]
	sub		r1, r5, r1
	mov		r8, r1
_0807dbfe:
	lsr		r4, r7, #0x10
	mov		r9, r4
	ldr		r0, _0807dc7c
	and		r0, r7
	str		r0, [sp, #0xC]
	mov		r0, r8
	mov		r1, r9
	bl		sub_0807de68
	add		r4, r0, #0x0
	mov		r0, r8
	mov		r1, r9
	bl		sub_0807ddf0
	add		r6, r0, #0x0
	ldr		r1, [sp, #0xC]
	add		r2, r6, #0x0
	mul		r2, r1
	lsl		r4, r4, #0x10
	mov		r3, r10
	lsr		r0, r3, #0x10
	orr		r4, r0
	cmp		r4, r2
	bcs		_0807dc3e
	sub		r6, #0x1
	add		r4, r4, r7
	cmp		r4, r7
	bcc		_0807dc3e
	cmp		r4, r2
	bcs		_0807dc3e
	sub		r6, #0x1
	add		r4, r4, r7
_0807dc3e:
	sub		r4, r4, r2
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807de68
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r1, r0, #0x0
	ldr		r4, [sp, #0xC]
	add		r2, r1, #0x0
	mul		r2, r4
	lsl		r5, r5, #0x10
	ldr		r0, _0807dc7c
	mov		r3, r10
	and		r3, r0
	orr		r5, r3
	cmp		r5, r2
	bcs		_0807dc76
	sub		r1, #0x1
	add		r5, r5, r7
	cmp		r5, r7
	bcc		_0807dc76
	cmp		r5, r2
	bcs		_0807dc76
	sub		r1, #0x1
_0807dc76:
	lsl		r6, r6, #0x10
	orr		r6, r1
	b		_0807ddd6

_0807dc7c:	.4byte 0x0000FFFF

_0807dc80:
	cmp		r6, r8
	bls		_0807dc8c
	mov		r6, #0x0
_0807dc86:
	mov		r4, #0x0
	str		r4, [sp, #0x4]
	b		_0807ddd6
_0807dc8c:
	add		r1, r6, #0x0
	ldr		r0, _0807dca0
	cmp		r6, r0
	bhi		_0807dca4
	mov		r2, #0x0
	cmp		r6, #0xff
	bls		_0807dcae
	mov		r2, #0x8
	b		_0807dcae

.incbin "base.gba", 0x7DC9E, 0x2

_0807dca0:	.4byte 0x0000FFFF

_0807dca4:
	ldr		r0, _0807dcd0
	mov		r2, #0x18
	cmp		r6, r0
	bhi		_0807dcae
	mov		r2, #0x10
_0807dcae:
	ldr		r0, _0807dcd4
	lsr		r1, r2
	add		r0, r1, r0
	ldrb	r0, [r0, #0x0]
	add		r0, r0, r2
	mov		r1, #0x20
	sub		r2, r1, r0
	cmp		r2, #0x0
	bne		_0807dcdc
	cmp		r8, r6
	bhi		_0807dcc8
	cmp		r10, r7
	bcc		_0807dcd8
_0807dcc8:
	mov		r6, #0x1
	mov		r1, r10
	b		_0807ddd0

.incbin "base.gba", 0x7DCCE, 0x2

_0807dcd0:	.4byte 0x00FFFFFF
_0807dcd4:	.4byte 0x0820c074

_0807dcd8:
	mov		r6, #0x0
	b		_0807ddd2
_0807dcdc:
	sub		r1, r1, r2
	lsl		r6, r2
	add		r0, r7, #0x0
	lsr		r0, r1
	orr		r6, r0
	lsl		r7, r2
	mov		r5, r8
	lsr		r5, r1
	mov		r3, r8
	lsl		r3, r2
	mov		r0, r10
	lsr		r0, r1
	orr		r3, r0
	mov		r8, r3
	mov		r4, r10
	lsl		r4, r2
	mov		r10, r4
	lsr		r0, r6, #0x10
	mov		r9, r0
	ldr		r1, _0807ddec
	and		r1, r6
	str		r1, [sp, #0x10]
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_0807de68
	add		r4, r0, #0x0
	add		r0, r5, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r3, r0, #0x0
	ldr		r2, [sp, #0x10]
	add		r1, r3, #0x0
	mul		r1, r2
	lsl		r4, r4, #0x10
	mov		r2, r8
	lsr		r0, r2, #0x10
	orr		r4, r0
	cmp		r4, r1
	bcs		_0807dd3e
	sub		r3, #0x1
	add		r4, r4, r6
	cmp		r4, r6
	bcc		_0807dd3e
	cmp		r4, r1
	bcs		_0807dd3e
	sub		r3, #0x1
	add		r4, r4, r6
_0807dd3e:
	sub		r4, r4, r1
	add		r0, r4, #0x0
	mov		r1, r9
	str		r3, [sp, #0x1C]
	bl		sub_0807de68
	add		r5, r0, #0x0
	add		r0, r4, #0x0
	mov		r1, r9
	bl		sub_0807ddf0
	add		r2, r0, #0x0
	ldr		r4, [sp, #0x10]
	add		r1, r2, #0x0
	mul		r1, r4
	lsl		r5, r5, #0x10
	ldr		r0, _0807ddec
	mov		r4, r8
	and		r4, r0
	orr		r5, r4
	ldr		r3, [sp, #0x1C]
	cmp		r5, r1
	bcs		_0807dd7c
	sub		r2, #0x1
	add		r5, r5, r6
	cmp		r5, r6
	bcc		_0807dd7c
	cmp		r5, r1
	bcs		_0807dd7c
	sub		r2, #0x1
	add		r5, r5, r6
_0807dd7c:
	lsl		r6, r3, #0x10
	orr		r6, r2
	sub		r1, r5, r1
	mov		r8, r1
	ldr		r0, _0807ddec
	mov		r9, r0
	add		r1, r6, #0x0
	and		r1, r0
	lsr		r3, r6, #0x10
	add		r0, r7, #0x0
	mov		r2, r9
	and		r0, r2
	lsr		r2, r7, #0x10
	add		r5, r1, #0x0
	mul		r5, r0
	add		r4, r1, #0x0
	mul		r4, r2
	add		r1, r3, #0x0
	mul		r1, r0
	mul		r3, r2
	lsr		r0, r5, #0x10
	add		r4, r4, r0
	add		r4, r4, r1
	cmp		r4, r1
	bcs		_0807ddb4
	mov		r0, #0x80
	lsl		r0, r0, #0x9
	add		r3, r3, r0
_0807ddb4:
	lsr		r0, r4, #0x10
	add		r3, r3, r0
	mov		r1, r9
	and		r4, r1
	lsl		r0, r4, #0x10
	and		r5, r1
	add		r1, r0, r5
	cmp		r3, r8
	bhi		_0807ddce
	cmp		r3, r8
	bne		_0807ddd2
	cmp		r1, r10
	bls		_0807ddd2
_0807ddce:
	sub		r6, #0x1
_0807ddd0:
	sub		r0, r1, r7
_0807ddd2:
	mov		r2, #0x0
	str		r2, [sp, #0x4]
_0807ddd6:
	str		r6, [sp, #0x14]
	ldr		r3, [sp, #0x4]
	str		r3, [sp, #0x18]
	ldr		r0, [sp, #0x14]
	ldr		r1, [sp, #0x18]
	add		sp, #0x20
	pop		{ r3, r4, r5 }
	mov		r8, r3
	mov		r9, r4
	mov		r10, r5
	pop		{ r4, r5, r6, r7, pc }

_0807ddec:	.4byte 0x0000FFFF
	thumb_func_end sub_0807da18

	thumb_func_start sub_0807ddf0
sub_0807ddf0:
	cmp		r1, #0x0
	beq		_0807de5e
	mov		r3, #0x1
	mov		r2, #0x0
	push	{ r4 }
	cmp		r0, r1
	bcc		_0807de58
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_0807de02:
	cmp		r1, r4
	bcs		_0807de10
	cmp		r1, r0
	bcs		_0807de10
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_0807de02
_0807de10:
	lsl		r4, r4, #0x3
_0807de12:
	cmp		r1, r4
	bcs		_0807de20
	cmp		r1, r0
	bcs		_0807de20
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_0807de12
_0807de20:
	cmp		r0, r1
	bcc		_0807de28
	sub		r0, r0, r1
	orr		r2, r3
_0807de28:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0807de34
	sub		r0, r0, r4
	lsr		r4, r3, #0x1
	orr		r2, r4
_0807de34:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_0807de40
	sub		r0, r0, r4
	lsr		r4, r3, #0x2
	orr		r2, r4
_0807de40:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_0807de4c
	sub		r0, r0, r4
	lsr		r4, r3, #0x3
	orr		r2, r4
_0807de4c:
	cmp		r0, #0x0
	beq		_0807de58
	lsr		r3, r3, #0x4
	beq		_0807de58
	lsr		r1, r1, #0x4
	b		_0807de20
_0807de58:
	add		r0, r2, #0x0
	pop		{ r4 }
	mov		pc, lr
_0807de5e:
	push	{ lr }
	bl		sub_0807d8a0
	mov		r0, #0x0
	pop		{ pc }
	thumb_func_end sub_0807ddf0

	thumb_func_start sub_0807de68
sub_0807de68:
	cmp		r1, #0x0
	beq		_0807df1e
	mov		r3, #0x1
	cmp		r0, r1
	bcs		_0807de74
	mov		pc, lr
_0807de74:
	push	{ r4 }
	mov		r4, #0x1
	lsl		r4, r4, #0x1c
_0807de7a:
	cmp		r1, r4
	bcs		_0807de88
	cmp		r1, r0
	bcs		_0807de88
	lsl		r1, r1, #0x4
	lsl		r3, r3, #0x4
	b		_0807de7a
_0807de88:
	lsl		r4, r4, #0x3
_0807de8a:
	cmp		r1, r4
	bcs		_0807de98
	cmp		r1, r0
	bcs		_0807de98
	lsl		r1, r1, #0x1
	lsl		r3, r3, #0x1
	b		_0807de8a
_0807de98:
	mov		r2, #0x0
	cmp		r0, r1
	bcc		_0807dea0
	sub		r0, r0, r1
_0807dea0:
	lsr		r4, r1, #0x1
	cmp		r0, r4
	bcc		_0807deb2
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x1
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807deb2:
	lsr		r4, r1, #0x2
	cmp		r0, r4
	bcc		_0807dec4
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x2
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807dec4:
	lsr		r4, r1, #0x3
	cmp		r0, r4
	bcc		_0807ded6
	sub		r0, r0, r4
	mov		r12, r3
	mov		r4, #0x3
	ror		r3, r4
	orr		r2, r3
	mov		r3, r12
_0807ded6:
	mov		r12, r3
	cmp		r0, #0x0
	beq		_0807dee4
	lsr		r3, r3, #0x4
	beq		_0807dee4
	lsr		r1, r1, #0x4
	b		_0807de98
_0807dee4:
	mov		r4, #0xe
	lsl		r4, r4, #0x1c
	and		r2, r4
	bne		_0807def0
	pop		{ r4 }
	mov		pc, lr
_0807def0:
	mov		r3, r12
	mov		r4, #0x3
	ror		r3, r4
	tst		r2, r3
	beq		_0807defe
	lsr		r4, r1, #0x3
	add		r0, r0, r4
_0807defe:
	mov		r3, r12
	mov		r4, #0x2
	ror		r3, r4
	tst		r2, r3
	beq		_0807df0c
	lsr		r4, r1, #0x2
	add		r0, r0, r4
_0807df0c:
	mov		r3, r12
	mov		r4, #0x1
	ror		r3, r4
	tst		r2, r3
	beq		_0807df1a
	lsr		r4, r1, #0x1
	add		r0, r0, r4
_0807df1a:
	pop		{ r4 }
	mov		pc, lr
_0807df1e:
	push	{ lr }
	bl		sub_0807d8a0
	mov		r0, #0x0
	pop		{ pc }
	bx		lr

.incbin "base.gba", 0x7DF2A, 0x3E
	thumb_func_end sub_0807de68

	thumb_func_start sub_0807df68
sub_0807df68:
	ldr		r2, _0807df74
	lsl		r0, r0, #0x2
	add		r0, r0, r2
	str		r1, [r0, #0x0]
	bx		lr

.incbin "base.gba", 0x7DF72, 0x2

_0807df74:	.4byte 0x03005300
	thumb_func_end sub_0807df68

	thumb_func_start sub_0807df78
sub_0807df78:
	add		r2, r1, #0x0
	cmp		r0, #0x1
	beq		_0807dfa8
	cmp		r0, #0x1
	bgt		_0807df90
	cmp		r0, #0x0
	beq		_0807df9c
	ldr		r1, _0807df8c
	b		_0807dfbc

.align 2, 0
.pool

_0807df8c:	.4byte 0x03002788

_0807df90:
	cmp		r0, #0x2
	beq		_0807dfb4
	ldr		r1, _0807df98
	b		_0807dfbc

_0807df98:	.4byte 0x03002788

_0807df9c:
	ldr		r0, _0807dfa4
	str		r2, [r0, #0x0]
	add		r1, r0, #0x0
	b		_0807dfbc

_0807dfa4:	.4byte 0x03002788

_0807dfa8:
	ldr		r1, _0807dfb0
	ldr		r0, [r1, #0x0]
	and		r0, r2
	b		_0807dfba

_0807dfb0:	.4byte 0x03002788

_0807dfb4:
	ldr		r1, _0807dfd4
	ldr		r0, [r1, #0x0]
	orr		r0, r2
_0807dfba:
	str		r0, [r1, #0x0]
_0807dfbc:
	ldr		r0, _0807dfd8
	ldr		r1, [r1, #0x0]
	strh	r1, [r0, #0x0]
	mov		r2, #0x80
	lsl		r2, r2, #0x9
	and		r2, r1
	cmp		r2, #0x0
	beq		_0807dfe0
	ldr		r1, _0807dfdc
	mov		r0, #0x1
	strh	r0, [r1, #0x0]
	b		_0807dfe4

_0807dfd4:	.4byte 0x03002788
_0807dfd8:	.4byte InterruptEnableRegister
_0807dfdc:	.4byte InterruptMasterEnableRegister

_0807dfe0:
	ldr		r0, _0807dfe8
	strh	r2, [r0, #0x0]
_0807dfe4:
	bx		lr

.align 2, 0
.pool

_0807dfe8:	.4byte InterruptMasterEnableRegister
	thumb_func_end sub_0807df78

	thumb_func_start sub_0807dfec
sub_0807dfec:
	lsl		r2, r2, #0x10
	lsr		r2, r2, #0x10
	ldr		r3, _0807e014
	strh	r0, [r3, #0x0]
	add		r3, #0x2
	asr		r0, r0, #0x10
	strh	r0, [r3, #0x0]
	ldr		r0, _0807e018
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	asr		r1, r1, #0x10
	strh	r1, [r0, #0x0]
	add		r0, #0x2
	strh	r2, [r0, #0x0]
	ldr		r1, _0807e01c
	mov		r2, #0x80
	lsl		r2, r2, #0x8
	add		r0, r2, #0x0
	strh	r0, [r1, #0x0]
	bx		lr

_0807e014:	.4byte DMA3SourceAddress
_0807e018:	.4byte DMA3DestinationAddress
_0807e01c:	.4byte DMA3Control

.incbin "base.gba", 0x7E020, 0x30
	thumb_func_end sub_0807dfec

	thumb_func_start sub_0807e050
sub_0807e050:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	cmp		r3, #0x0
	ble		_0807e086
	lsl		r0, r0, #0x5
	mov		r4, #0xc0
	lsl		r4, r4, #0x13
	add		r6, r0, r4
	add		r5, r1, #0x0
	lsl		r0, r2, #0x14
	mov		r8, r0
	lsl		r7, r2, #0x5
	add		r4, r3, #0x0
_0807e06c:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r3, r8
	asr		r2, r3, #0x10
	bl		sub_0807dfec
	mov		r0, #0x80
	lsl		r0, r0, #0x3
	add		r6, r6, r0
	add		r5, r5, r7
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0807e06c
_0807e086:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7, pc }
	thumb_func_end sub_0807e050

	thumb_func_start sub_0807e08c
sub_0807e08c:
	push	{ r4, lr }
	mov		r4, #0x80
	lsl		r4, r4, #0x4
	add		r0, r0, r4
	bl		sub_0807e050
	pop		{ r4, pc }

.incbin "base.gba", 0x7E09A, 0x2
	thumb_func_end sub_0807e08c

	thumb_func_start sub_0807e09c
sub_0807e09c:
	push	{ r4, r5, r6, r7, lr }
	mov		r7, r8
	push	{ r7 }
	cmp		r3, #0x0
	ble		_0807e0c8
	add		r6, r0, #0x0
	add		r5, r1, #0x0
	lsl		r0, r2, #0x10
	mov		r8, r0
	lsl		r7, r2, #0x1
	add		r4, r3, #0x0
_0807e0b2:
	add		r0, r5, #0x0
	add		r1, r6, #0x0
	mov		r3, r8
	asr		r2, r3, #0x10
	bl		sub_0807dfec
	add		r6, #0x40
	add		r5, r5, r7
	sub		r4, #0x1
	cmp		r4, #0x0
	bne		_0807e0b2
_0807e0c8:
	pop		{ r3 }
	mov		r8, r3
	pop		{ r4, r5, r6, r7, pc }

.incbin "base.gba", 0x7E0CE, 0x2
	thumb_func_end sub_0807e09c
