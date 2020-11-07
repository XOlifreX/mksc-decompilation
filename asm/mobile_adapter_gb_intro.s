       	thumb_func_start _ShowMGBIntro
_ShowMGBIntro: @ 8001900
    push	{r4-r6, lr}
    ldr	    r6, _08001A18 @ [pc, #276]	@ (0x1a18)
    ldr	    r0, _08001A1C @ [pc, #276]	@ (0x1a1c)
    adds	r4, r6, r0
    ldr	    r1, _08001A20 @ [pc, #276]	@ (0x1a20)
    movs	r2, #128	@ 0x80
    lsls	r2, r2, #8
    adds	r0, r4, #0
    bl	    0x8027188
    ldr	    r5, _08001A24 @ [pc, #268]	@ (0x1a24)
    adds	r0, r4, #0
    movs	r1, #1
    movs	r2, #12
    bl	    0x80271b8
    str	    r0, [r5, #0]
    adds	r5, r0, #0
    ldrh	r0, [r5, #8]
    movs	r0, #4
    strh	r0, [r5, #8]
    ldrh	r0, [r5, #6]
    movs	r0, #128	@ 0x80
    lsls	r0, r0, #1
    strh	r0, [r5, #6]
    ldrh	r0, [r5, #0]
    movs	r0, #191	@ 0xbf
    strh	r0, [r5, #0]
    ldrh	r0, [r5, #4]
    movs	r0, #16
    strh	r0, [r5, #4]
    ldr	    r4, [pc, #232]	@ (0x1a28)
    movs	r0, #1
    movs	r1, #2
    negs	r1, r1
    bl	    0x807df78
    str	    r4, [r6, #12]
    movs	r0, #2
    ldr	    r1, _08001A2C @ [pc, #220]	@ (0x1a2c)
    bl	    0x807df78
    bl	    _DrawFrameRunAudio
    ldr	    r0, _08001A30 @[pc, #212]	@ (0x1a30)
    ldr	    r4, _08001A34 @ [pc, #216]	@ (0x1a34)
    adds	r1, r4, #0
    bl	    0x8071b80
    bl	    0x8029f34
    ldr	    r2, _08001A38 @ [pc, #208]	@ (0x1a38)
    ldr	    r3, _08001A3C @ [pc, #208]	@ (0x1a3c)
    adds	r1, r4, #0
    bl	    0x8029ee4
    bl	    _DrawFrameRunAudio
    movs	r1, #192	@ 0xc0
    lsls	r1, r1, #19
    movs	r0, #0
    bl	    0x80281c4
    ldr	    r4, _08001A40 @[pc, #192]	@ (0x1a40)
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r1, r0, #0
    adds	r0, r4, #0
    bl	    0x8071b80
    movs	r0, #1
    bl	    0x80281fc
    bl	    _DrawFrameRunAudio
    ldr	    r4, _08001A44 @ [pc, #164]	@ (0x1a44)
    movs	r0, #0
    bl	    0x8028130
    adds	r1, r0, #0
    adds	r0, r4, #0
    movs	r2, #8
    bl	    0x8071b68
    movs	r0, #1
    bl	    0x8028168
    bl	    _DrawFrameRunAudio
    movs	r4, #0
    movs	r6, #16
_80019BC:
    bl	    _DrawFrameRunAudio
    subs	r0, r6, r4
    ldrh	r1, [r5, #4]
    strh	r0, [r5, #4]
    adds	r4, #1
    cmp	    r4, #15
    ble 	_80019BC
    movs	r4, #59	@ 0x3b
_80019CE:
    bl	    _DrawFrameRunAudio
    subs	r4, #1
    cmp	    r4, #0
    bge 	_80019CE
    movs	r4, #0
_80019DA:
    bl	    _DrawFrameRunAudio
    ldrh	r0, [r5, #4]
    strh	r4, [r5, #4]
    adds	r4, #1
    cmp	    r4, #15
    ble 	_80019DA
    movs	r5, #0
    ldr	    r4, _08001A18 @ [pc, #44]	@ (0x1a18)
    movs	r0, #1
    movs	r1, #2
    negs	r1, r1
    bl	    0x807df78
    str	    r5, [r4, #12]
    movs	r0, #2
    ldr	    r1, _08001A2C @ [pc, #48]	@ (0x1a2c)
    bl	    0x807df78
    ldr	    r0, _08001A48 @[pc, #68]	@ (0x1a48)
    str	    r0, [r4, #0]
    ldrb	r0, [r4, #8]
    adds	r0, #1
    movs	r1, #7
    ands	r0, r1
    strb	r0, [r4, #8]
    movs	r0, #1
    pop	    {r4, r5, r6}
    pop	    {r1}
    bx	    r1

			.2byte 0x0
_08001A18: 	.4byte RunGameLogic_CallBack
_08001A1C: 	.4byte 0x704
_08001A20: 	.4byte 0x202A400
_08001A24: 	.4byte 0x3000004
_08001A28: 	.4byte 0x8001A4D
_08001A2C: 	.4byte 0x10001
_08001A30: 	.4byte 0x80F3958
_08001A34: 	.4byte 0x2010400
_08001A38: 	.4byte 0x6004000
_08001A3C: 	.4byte 0x80000600
_08001A40: 	.4byte 0x80F4000
_08001A44: 	.4byte 0x80F3938
_08001A48: 	.4byte 0x8000E79

    thumb_func_end _ShowMGBIntro
