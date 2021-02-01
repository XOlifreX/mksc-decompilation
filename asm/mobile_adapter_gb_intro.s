	.include "defines.s"
	.include "ram.s"
	.include "macros.s"

	thumb_func_start _ShowMGBIntro
_ShowMGBIntro:
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
	bl		_UpdateGame
	ldr		r0, _08001a30
	ldr		r4, _08001a34
	add		r1, r4, #0x0
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	bl		sub_08029f34
	ldr		r2, _08001a38
	ldr		r3, _08001a3c
	add		r1, r4, #0x0
	bl		sub_08029ee4
	bl		_UpdateGame
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
	bl		_CallHardwareLZ77DecompressToMemory8Bit
	mov		r0, #0x1
	bl		sub_080281fc
	bl		_UpdateGame
	ldr		r4, _08001a44
	mov		r0, #0x0
	bl		sub_08028130
	add		r1, r0, #0x0
	add		r0, r4, #0x0
	mov		r2, #0x8
	bl		_CallHardwareSetCpuFast
	mov		r0, #0x1
	bl		sub_08028168
	bl		_UpdateGame
	mov		r4, #0x0
	mov		r6, #0x10
_080019bc:
	bl		_UpdateGame
	sub		r0, r6, r4
	ldrh	r1, [r5, #0x4]
	strh	r0, [r5, #0x4]
	add		r4, #0x1
	cmp		r4, #0xf
	ble		_080019bc
	mov		r4, #0x3b
_080019ce:
	bl		_UpdateGame
	sub		r4, #0x1
	cmp		r4, #0x0
	bge		_080019ce
	mov		r4, #0x0
_080019da:
	bl		_UpdateGame
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

	.2byte	0x0
	
_08001a18:	.4byte RunGameLogic_CallBack
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
	thumb_func_end _ShowMGBIntro
