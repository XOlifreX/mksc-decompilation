   	thumb_func_start _DrawFrameRunAudio
_DrawFrameRunAudio: @ 802711C
    push	{r4, r5, lr}
    ldr 	r5, _08027146 @ [pc, #36]	@ (0x27144)
    movs	r4, #0
_8027122:
    str	    r4, [r5, #0]
    bl	    0x8071ba4
    bl	    0x8070730
    bl	    0x802732c
    cmp	    r0, #0
    bne     _8027122
    bl	    0x8026e98
    bl	    0x802a0a4
    pop	    {r4, r5}
    pop	    {r0}
    bx	    r0
   
            .2byte 0x0
_08027146:  .4byte 0x30001A4

    thumb_func_end _DrawFrameRunAudio
