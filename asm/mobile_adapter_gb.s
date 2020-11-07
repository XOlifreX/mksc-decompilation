	thumb_func_start _OnSelectMGBMenu
_OnSelectMGBMenu: @ 0x805A3FC
   	push	{r4, r5, r6, r7, lr}
   	mov		r7, r8
   	push	{r7}
   	sub		sp, #4
   	ldr		r2, _0805A55C @ [pc, #340]	@ (0x5a55c)
   	ldrh	r1, [r2, #22]
   	movs	r0, #128	@ 0x80
   	lsls	r0, r0, #8
   	mov		r8, r0
   	ands	r0, r1
   	cmp		r0, #0
   	beq		_0805A41C
   	movs	r0, #0
   	strh	r0, [r2, #22]
   	bl		0x8027744
_0805A41C:
   	mov		r0, sp
   	movs	r4, #0
   	strh	r4, [r0, #0]
   	ldr		r1, _0805A560 @ [pc, #316]	@ (0x5a560)
   	str		r0, [r1, #0]
   	movs	r0, #192	@ 0xc0
   	lsls	r0, r0, #19
   	str		r0, [r1, #4]
   	ldr		r0, _0805A564 @ [pc, #308]	@ (0x5a564)
   	str		r0, [r1, #8]
   	ldr		r0, [r1, #8]
   	ldr		r1, _0805A568 @ [pc, #308]	@ (0x5a568)
   	movs	r0, #0
   	bl		0x80281C4
   	ldr		r1, _0805A56C @ [pc, #304]	@ (0x5a56c)
   	movs	r0, #1
   	bl		0x80281C4
   	ldr		r6, _0805A570 @ RunGameLogic_CallBack 	[pc, #300]	@ (0x5a570)
   	ldr		r1, _0805A574 @ [pc, #300]	@ (0x5a574)
   	adds	r5, r6, r1
   	ldr		r1, _0805A578 @ [pc, #300]	@ (0x5a578)
   	adds	r0, r5, #0
   	mov		r2, r8
   	bl		0x8027188
   	ldr		r2, _0805A57C @ [pc, #296]	@ (0x5a57c)
   	adds	r0, r5, #0
   	movs	r1, #1
   	bl		0x80271B8
   	adds	r7, r0, #0
   	ldr		r0, _0805A580 @ [pc, #288]	@ (0x5a580)
   	str		r7, [r0, #0]
   	bl		0x80297C8
   	bl		0x8057FA8
   	ldr		r1, _0805A584 @ [pc, #280]	@ (0x5a584)
   	adds	r0, r7, r1
   	bl		0x8060F70
   	adds	r0, r7, #0
   	adds	r0, #57	@ 0x39
   	movs	r5, #0
   	strb	r4, [r0, #0]
   	subs	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, #2
   	strb	r4, [r0, #0]
   	adds	r0, #3
   	strb	r4, [r0, #0]
   	adds	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, #1
   	strb	r4, [r0, #0]
   	adds	r0, r7, #0
   	bl		0x8060BF4
   	bl		0x8060E4C
   	ldr		r1, _0805A588 @ [pc, #224]	@ (0x5a588)
   	adds	r0, r7, r1
   	str		r5, [r0, #0]
   	adds	r1, #4
   	adds	r0, r7, r1
   	str		r5, [r0, #0]
   	subs	r1, #240	@ 0xf0
   	adds	r0, r7, r1
   	str		r5, [r0, #0]
   	adds	r1, #11
   	adds	r0, r7, r1
   	strb	r4, [r0, #0]
   	ldrh	r0, [r7, #2]
   	ldr		r0, _0805A58C @ [pc, #204]	@ (0x5a58c)
   	strh	r0, [r7, #2]
   	ldrh	r0, [r7, #8]
   	ldr		r0, _0805A590 @ [pc, #200]	@ (0x5a590)
   	strh	r0, [r7, #8]
   	ldrh	r0, [r7, #14]
   	movs	r0, #6
   	strh	r0, [r7, #14]
   	ldrh	r0, [r7, #20]
   	movs	r0, #131	@ 0x83
   	lsls	r0, r0, #1
   	strh	r0, [r7, #20]
   	ldrh	r0, [r7, #0]
   	movs	r0, #250	@ 0xfa
   	lsls	r0, r0, #5
   	strh	r0, [r7, #0]
   	ldrh	r0, [r7, #26]
   	movs	r0, #191	@ 0xbf
   	strh	r0, [r7, #26]
   	ldrh	r0, [r7, #30]
   	movs	r0, #16
   	strh	r0, [r7, #30]
   	ldrh	r0, [r7, #6]
   	strh	r5, [r7, #6]
   	ldrh	r0, [r7, #6]
   	ldrh	r1, [r7, #4]
   	strh	r0, [r7, #4]
   	ldrh	r0, [r7, #12]
   	strh	r5, [r7, #12]
   	ldrh	r0, [r7, #12]
   	ldrh	r1, [r7, #10]
   	strh	r0, [r7, #10]
   	ldrh	r0, [r7, #18]
   	strh	r5, [r7, #18]
   	ldrh	r0, [r7, #18]
   	ldrh	r1, [r7, #16]
   	strh	r0, [r7, #16]
   	ldrh	r0, [r7, #24]
   	strh	r5, [r7, #24]
   	ldrh	r0, [r7, #24]
   	ldrh	r1, [r7, #22]
   	strh	r0, [r7, #22]
   	str		r5, [r7, #44]	@ 0x2c
   	movs	r0, #2
   	str		r0, [r7, #48]	@ 0x30
   	ldrh	r0, [r7, #42]	@ 0x2a
   	ldr		r0, _0805A594 @ [pc, #120]	@ (0x5a594)
   	strh	r0, [r7, #42]	@ 0x2a
   	ldrh	r1, [r7, #0]
   	mov		r0, r8
   	orrs	r0, r1
   	ldrh	r1, [r7, #0]
   	strh	r0, [r7, #0]
   	ldr		r4, _0805A598 @ [pc, #108]	@ (0x5a598)
   	movs	r0, #1
   	movs	r1, #2
   	negs	r1, r1
   	bl		0x807DF78
   	str		r4, [r6, #12]
   	movs	r0, #2
   	ldr		r1, _0805A59C @ [pc, #96]	@ (0x5a59c)
   	bl		0x807DF78
   	ldr		r0, _0805A5A0 @ [pc, #96]	@ (0x5a5a0)
   	str		r0, [r6, #0]
   	ldrb	r0, [r6, #8]
   	adds	r0, #1
   	movs	r1, #7
   	ands	r0, r1
   	strb	r0, [r6, #8]
   	movs	r0, #1
   	add		sp, #4
   	pop		{r3}
   	mov		r8, r3
   	pop		{r4, r5, r6, r7}
   	pop		{r1}
   	bx		r1
	
			.2byte 0x0
_0805A55C: 	.4byte 0x3003000
_0805A560: 	.4byte 0x40000D4
_0805A564:	.4byte 0x8100c000
_0805A568:	.4byte 0x6001000
_0805A56C:	.4byte 0x6002000
_0805A570:	.4byte RunGameLogic_CallBack
_0805A574:	.4byte 0x704
_0805A578: 	.4byte 0x202A400
_0805A57C:	.4byte 0x7EA0
_0805A580: 	.4byte 0x203EBE0	
_0805A584:	.4byte 0x5F14
_0805A588:	.4byte 0x6B28
_0805A58C:	.4byte 0x4208
_0805A590:	.4byte 0x4409
_0805A594:	.4byte 0x303F
_0805A598:	.4byte 0x805A28D
_0805A59C:	.4byte 0x10001
_0805A5A0:	.4byte 0x805a5a5

	thumb_func_end _OnSelectMGBMenu

	thumb_func_start _PrepareMGBMenu
_PrepareMGBMenu: @ 805A5A4
   	push	{r4, r5, r6, lr}
   	movs	r0, #0
   	bl		0x80281d4
   	movs	r0, #1
   	bl		0x80281d4
   	ldr		r4, _0805A7B0 @ [pc, #508]	@ (0x5a7b0)
   	movs	r0, #0
   	bl		0x8028130
   	adds	r1, r0, #0
   	adds	r0, r4, #0
   	bl		0x8071b80
   	ldr		r4, _0805A7B4 @ [pc, #496]	@ (0x5a7b4)
   	movs	r0, #1
   	bl		0x8028130
   	adds	r1, r0, #0
   	adds	r0, r4, #0
   	bl		0x8071b80
   	ldr		r4, _0805A7B8 @ [pc, #484]	@ (0x5a7b8)
   	movs	r0, #0
   	bl		0x8028130
   	adds	r1, r0, #0
   	adds	r1, #224	@ 0xe0
   	adds	r0, r4, #0
   	movs	r2, #16
   	bl		0x8071b68
   	movs	r0, #0
   	bl		0x8028130
   	movs	r1, #0
   	strh	r1, [r0, #0]
   	movs	r0, #1
   	bl		0x8028168
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7BC @ [pc, #448]	@ (0x5a7bc)
   	ldr		r1, _0805A7C0 @ [pc, #448]	@ (0x5a7c0)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7C4 @ [pc, #444]	@ (0x5a7c4)
   	movs	r1, #192	@ 0xc0
   	lsls	r1, r1, #19
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7C8 @ [pc, #432]	@ (0x5a7c8)
   	ldr		r1, _0805A7CC @ [pc, #436]	@ (0x5a7cc)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7D0 @ [pc, #428]	@ (0x5a7d0)
   	ldr		r1, _0805A7D4 @ [pc, #432]	@ (0x5a7d4)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7D8 @ [pc, #424]	@ (0x5a7d8)
   	ldr		r1, _0805A7DC @ [pc, #428]	@ (0x5a7dc)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7E0 @ [pc, #420]	@ (0x5a7e0)
   	ldr		r1, _0805A7E4 @ [pc, #424]	@ (0x5a7e4)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A7E8 @ [pc, #416]	@ (0x5a7e8)
   	ldr		r1, _0805A7EC @ [pc, #420]	@ (0x5a7ec)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	movs	r0, #1
   	bl		0x806016c
   	bl		0x8029f34
   	ldr		r1, _0805A7F0 @ [pc, #404]	@ (0x5a7f0)
   	ldr		r2, _0805A7F4 @ [pc, #404]	@ (0x5a7f4)
   	ldr		r3, _0805A7F8 @ [pc, #408]	@ (0x5a7f8)
   	bl		0x8029ee4
   	bl		0x8029f34
   	ldr		r1, _0805A7FC @ [pc, #400]	@ (0x5a7fc)
   	ldr		r2, _0805A800 @ [pc, #404]	@ (0x5a800)
   	ldr		r5, _0805A804 @ [pc, #404]	@ (0x5a804)
   	adds	r3, r5, #0
   	bl		0x8029ee4
   	bl		0x8029f34
   	ldr		r1, _0805A808 @ [pc, #396]	@ (0x5a808)
   	ldr		r2, _0805A80C @ [pc, #400]	@ (0x5a80c)
   	ldr		r6, _0805A810 @ [pc, #400]	@ (0x5a810)
   	adds	r3, r6, #0
   	bl		0x8029ee4
   	ldr		r0, _0805A814 @ [pc, #396]	@ (0x5a814)
   	ldr		r1, _0805A818 @ [pc, #400]	@ (0x5a818)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A81C @ [pc, #392]	@ (0x5a81c)
   	ldr		r1, _0805A820 @ [pc, #396]	@ (0x5a820)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A824 @ [pc, #388]	@ (0x5a824)
   	ldr		r1, _0805A828 @ [pc, #392]	@ (0x5a828)
   	bl		0x8071b7c
   	ldr		r0, _0805A82C @ [pc, #388]	@ (0x5a82c)
   	ldr		r1, _0805A830 @ [pc, #392]	@ (0x5a830)
   	bl		0x8071b7c
   	ldr		r0, _0805A834 @ [pc, #388]	@ (0x5a834)
   	ldr		r1, _0805A838 @ [pc, #392]	@ (0x5a838)
   	bl		0x8071b7c
   	ldr		r0, _0805A83C @ [pc, #388]	@ (0x5a83c)
   	ldr		r1, _0805A840 @ [pc, #392]	@ (0x5a840)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A844 @ [pc, #384]	@ (0x5a844)
   	ldr		r1, _0805A848 @ [pc, #388]	@ (0x5a848)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A84C @ [pc, #380]	@ (0x5a84c)
   	ldr		r1, _0805A850 @ [pc, #384]	@ (0x5a850)
   	bl		0x8071b7c
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A854 @ [pc, #376]	@ (0x5a854)
   	ldr		r4, _0805A858 @ [pc, #380]	@ (0x5a858)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A85C @ [pc, #372]	@ (0x5a85c)
   	adds	r1, r4, #0
   	adds	r3, r5, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A860 @ [pc, #360]	@ (0x5a860)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A864 @ [pc, #352]	@ (0x5a864)
   	adds	r1, r4, #0
   	adds	r3, r6, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A868 @ [pc, #344]	@ (0x5a868)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A86C @ [pc, #336]	@ (0x5a86c)
   	adds	r1, r4, #0
   	adds	r3, r6, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A870 @ [pc, #324]	@ (0x5a870)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	movs	r2, #128	@ 0x80
   	lsls	r2, r2, #2
   	adds	r1, r4, r2
   	ldr		r2, _0805A874 @ [pc, #312]	@ (0x5a874)
   	ldr		r5, _0805A878 @ [pc, #312]	@ (0x5a878)
   	adds	r3, r5, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A87C @ [pc, #304]	@ (0x5a87c)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A880 @ [pc, #296]	@ (0x5a880)
   	adds	r1, r4, #0
   	adds	r3, r6, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A884 @ [pc, #288]	@ (0x5a884)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A888 @ [pc, #280]	@ (0x5a888)
   	adds	r1, r4, #0
   	adds	r3, r5, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A88C @ [pc, #268]	@ (0x5a88c)
   	adds	r1, r4, #0
   	bl		0x8071b80
   	bl		0x8029f34
   	ldr		r2, _0805A890 @ [pc, #260]	@ (0x5a890)
   	adds	r1, r4, #0
   	adds	r3, r6, #0
   	bl		0x8029ee4
   	bl		_DrawFrameRunAudio
   	ldr		r0, _0805A894 @ [pc, #252]	@ (0x5a894)
   	ldr		r2, _0805A898 @ RunGameLogic_CallBack	// [pc, #252]	@ (0x5a898) 
   	str		r0, [r2, #0]
   	ldrb	r0, [r2, #8]
   	adds	r0, #1
   	movs	r1, #7
   	ands	r0, r1
   	strb	r0, [r2, #8]
   	movs	r0, #1
   	pop		{r4, r5, r6}
   	pop		{r1}
   	bx		r1

			.2byte 0x0
_0805A7B0: 	.4byte 0x8092918
_0805A7B4: 	.4byte 0x80CDD3C
_0805A7B8:	.4byte 0x809866C
_0805A7BC:	.4byte 0x8098B0C
_0805A7C0:	.4byte 0x6004000
_0805A7C4:	.4byte 0x80993B8
_0805A7C8:	.4byte 0x80994BC
_0805A7CC: 	.4byte 0x6000800
_0805A7D0:	.4byte 0x80C558C
_0805A7D4: 	.4byte 0x6008000	
_0805A7D8:	.4byte 0x80C5BC0
_0805A7DC:	.4byte 0x6009800
_0805A7E0:	.4byte 0x80C6300
_0805A7E4:	.4byte 0x600B000
_0805A7E8:	.4byte 0x8092AA8
_0805A7EC:	.4byte 0x600C000
_0805A7F0:	.4byte 0x80C87CC
_0805A7F4:	.4byte 0x600D800
_0805A7F8:	.4byte 0x80000600
_0805A7FC:	.4byte 0x80C7BCC
_0805A800:	.4byte 0x600E400
_0805A804:	.4byte 0x80000400
_0805A808:	.4byte 0x807F190 
_0805A80C:	.4byte 0x600EC00
_0805A810:	.4byte 0x80000200
_0805A814:	.4byte 0x809301C
_0805A818:	.4byte 0x600F400
_0805A81C:	.4byte 0x80CF5D0
_0805A820:	.4byte 0x6007C00
_0805A824:	.4byte 0x8094580
_0805A828:	.4byte 0x6011000
_0805A82C:	.4byte 0x80CEC7C
_0805A830:	.4byte 0x6014C00
_0805A834:	.4byte 0x80CF4C0
_0805A838:	.4byte 0x60153C0
_0805A83C:	.4byte 0x80CF428
_0805A840:	.4byte 0x6014CE0
_0805A844:	.4byte 0x80CF4DC
_0805A848:	.4byte 0x6014A00
_0805A84C:	.4byte 0x80CF3DC
_0805A850:	.4byte 0x6014F60
_0805A854:	.4byte 0x80CE26C
_0805A858:	.4byte 0x2010400
_0805A85C:	.4byte 0x6015C00
_0805A860:	.4byte 0x80CE43C
_0805A864:	.4byte 0x6016400
_0805A868:	.4byte 0x80CE524
_0805A86C:	.4byte 0x6016C00
_0805A870:	.4byte 0x80D4200
_0805A874:	.4byte 0x6014800
_0805A878:	.4byte 0x80000100
_0805A87C:	.4byte 0x80CE690
_0805A880:	.4byte 0x6017000
_0805A884:	.4byte 0x80CE8A8
_0805A888:	.4byte 0x6017800
_0805A88C:	.4byte 0x80CE918
_0805A890:	.4byte 0x6017C00
_0805A894:	.4byte 0x805A89D
_0805A898:	.4byte RunGameLogic_CallBack

	thumb_func_end _PrepareMGBMenu

	thumb_func_start _LoadMGBBackGround
_LoadMGBBackGround: @ 805A89C
    push	{r4, r5, r6, r7, lr}
    mov	    r7, r9
    mov	    r6, r8
    push	{r6, r7}
    ldr	    r0, _0805A8E0 @ [pc, #56]	@ (0x5a8e0)
    ldr	    r4, [r0, #0]
    movs	r6, #0
    ldr	    r2, _0805A8E4 @ RunGameLogic_CallBack   [pc, #56]	@ (0x5a8e4)
    ldr	    r1, [r2, #0]
    ldr	    r0, _0805A8E8 @ [pc, #56]	@ (0x5a8e8)
    cmp	    r1, r0
    bne	    _805A91C
    ldr	    r0, _0805A8EC @ [pc, #52]	@ (0x5a8ec)
    mov	    r8, r0
    adds	r5, r2, #0
    ldr	    r7, _0805A8F0 @ [pc, #52]	@ (0x5a8f0)
_805A8BC:
    bl	    _DrawFrameRunAudio
    adds	r6, #1
    cmp	    r6, #16
    bgt	    _805A8F4
    ldrh	r0, [r4, #26]
    movs	r0, #191	@ 0xbf
    strh	r0, [r4, #26]
    lsls	r0, r6, #4
    negs	r0, r0
    cmp	    r0, #0
    bge	    _805A8D6
    adds	r0, #15
_805A8D6:
    asrs	r0, r0, #4
    adds	r0, #16
    ldrh	r1, [r4, #30]
    strh	r0, [r4, #30]
    b 	    _805A912

_0805A8E0:  .4byte 0x203EBE0
_0805A8E4:  .4byte RunGameLogic_CallBack
_0805A8E8:  .4byte 0x805A89D
_0805A8EC:  .4byte _TryLoadMGBMainMenu + 1
_0805A8F0:  .4byte 0x844

    _805A8F4:
    ldrh	r0, [r4, #26]
    strh	r7, [r4, #26]
    ldrh	r0, [r4, #28]
    ldr	    r0, _0805A928 @ [pc, #44]	@ (0x5a928)
    strh	r0, [r4, #28]
    movs	r0, #37	@ 0x25
    bl	    0x807073c
    mov	    r0, r8
    str	    r0, [r5, #0]
    ldrb	r0, [r5, #8]
    adds	r0, #1
    movs	r1, #7
    ands	r0, r1
    strb	r0, [r5, #8]
    _805A912:
    ldr	    r1, [r5, #0]
    ldr	    r0, _0805A92C @ [pc, #20]	@ (0x5a92c)
    cmp	    r1, r0
    beq	    _805A8BC
    _805A91C:
    movs	r0, #1
    pop	    {r3, r4}
    mov	    r8, r3
    mov	    r9, r4
    pop	    {r4, r5, r6, r7}
    pop	    {r1}
    bx	    r1

_0805A928:  .4byte 0x1008
_0805A92C:  .4byte 0x805A89D

    thumb_func_end _LoadMGBBackGround

	thumb_func_start _TryLoadMGBMainMenu
_TryLoadMGBMainMenu: @ 0805a92c
    push	{r4-r7, lr}
    mov	    r7, sl
    mov	    r6, r9
    mov	    r5, r8
    push	{r5-r7}
    sub	    sp, #84	@ 0x54
    ldr	    r0, _0805A9D4 @ [pc, #148]	@ (0x5a9d4)
    ldr	    r0, [r0, #0]
    mov	    r9, r0
    bl	    0x8060bf4
    adds	r5, r0, #0
    bl	    0x8060f40
    adds	r4, r0, #0
    adds	r0, r5, #0
    bl	    0x8060c60
    mov	    r8, r0
    adds	r0, r5, #0
    bl	    0x8060e48
    mov	    sl, r0
    adds	r0, r5, #0
    bl	    0x8060ee8
    str	    r0, [sp, #64]	@ 0x40
    adds	r0, r5, #0
    bl	    0x8060e84
    str	    r0, [sp, #68]	@ 0x44
    adds	r0, r5, #0
    bl	    0x8060e1c
    str	    r0, [sp, #72]	@ 0x48
    adds	r0, r5, #0
    bl	    0x8060d28
    str	    r0, [sp, #76]	@ 0x4c
    adds	r0, r5, #0
    bl	    0x8060cc4
    str	    r0, [sp, #80]	@ 0x50
    bl	    0x8057370
    adds	r7, r0, #0
    movs	r6, #0
    adds	r0, r4, #0
    bl	    0x8057900
    cmp	    r0, #0
    bne	    _805A9A0
    movs	r6, #1
    adds	r0, r5, #0
    bl	    0x8060f60
_805A9A0:
    mov	    r0, r8
    bl	    0x8057950
    cmp	    r0, #0
    bne 	_805A9B4
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060c80
_805A9B4:
    ldr	    r1, _0805A9D8 @ [pc, #32]	@ (0x5a9d8)
    adds	r0, r7, r1
    ldrb	r0, [r0, #0]
    cmp	    r0, #0
    beq 	_805A9DC
    mov	    r0, sl
    bl	    0x80579a0
    cmp	    r0, #0
    bne 	_805A9E2
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060e4c
    b  	    _805A9E2

_0805A9D4:  .4byte 0x203EBE0
_0805A9D8:  .4byte 0xAE5

_805A9DC:
    adds	r0, r5, #0
    bl	    0x8060e4c
_805A9E2:
    ldr	    r0, [sp, #64]	@ 0x40
    bl	    0x8057b28
    cmp	    r0, #0
    bne 	_805A9F6
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060efc
_805A9F6:
    ldr	    r0, [sp, #68]	@ 0x44
    bl	    0x8057a9c
    cmp	    r0, #0
    bne 	_805AA0A
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060ea4
_805AA0A:
    ldr	    r0, [sp, #72]	@ 0x48
    bl	    0x8057af4
    cmp	    r0, #0
    bne 	_805AA1E
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060e30
_805AA1E:
    ldr	    r0, [sp, #76]	@ 0x4c
    bl	    0x8057a44
    cmp	    r0, #0
    bne 	_805AA32
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060d48
_805AA32:
    ldr	    r0, [sp, #80]	@ 0x50
    bl	    0x8057b80
    cmp	    r0, #0
    bne 	_805AA46
    movs	r0, #1
    orrs	r6, r0
    adds	r0, r5, #0
    bl	    0x8060ce4
_805AA46:
    bl	    0x8059dc8
    cmp	    r6, #0
    beq 	_805AA78
    ldr	    r0, _0805AA68 @ _LoadMGBRegistrationMenu    [pc, #24]	@ (0x5aa68)
    ldr	    r2, _0805AA6C @ RunGameLogic_CallBack       [pc, #24]	@ (0x5aa6c)
    str	    r0, [r2, #0]
    ldrb	r0, [r2, #8]
    adds	r0, #1
    movs	r1, #7
    ands	r0, r1
    strb	r0, [r2, #8]
    ldr	    r1, _0805AA70 @ [pc, #16]	@ (0x5aa70)
    ldr	    r0, _0805AA74 @ [pc, #16]	@ (0x5aa74)
    str	    r1, [r0, #0]
    b	    _805ADDC

            .2byte 0x0
_0805AA68:  .4byte _LoadMGBRegistrationMenu
_0805AA6C:  .4byte RunGameLogic_CallBack
_0805AA70:  .4byte _TryLoadMGBMainMenu + 1
_0805AA74:  .4byte 0x203ED50

_805AA78:
    adds	r0, r5, #0
    bl	    0x8060e4c
    ldr	    r1, _0805AB70 @ [pc, #240]	@ (0x5ab70)
    add	    r1, r9
    movs	r0, #1
    str	    r0, [r1, #0]
    mov	    r5, r9
    adds	r5, #73	@ 0x49
    strb	r6, [r5, #0]
    ldr	    r4, _0805AB74 @ [pc, #228]	@ (0x5ab74)
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r1, r0, #0
    adds	r0, r4, #0
    bl	    0x8071b7c
    bl	    _DrawFrameRunAudio
    ldr	    r1, _0805AB78 @ [pc, #212]	@ (0x5ab78)
    movs	r0, #3
    bl	    0x8013d0c
    movs	r0, #0
    movs	r1, #3
    movs	r2, #12
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805AB7C @ [pc, #196]	@ (0x5ab7c)
    adds	r0, r2, #0
    strh	r0, [r3, #0]
    ldr	    r4, _0805AB80 @ [pc, #192]	@ (0x5ab80)
    adds	r0, r4, #0
    strh	r0, [r3, #46]	@ 0x2e
    movs	r0, #160	@ 0xa0
    lsls	r0, r0, #1
    adds	r1, r3, r0
    ldr	    r2, _0805AB84 @ [pc, #184]	@ (0x5ab84)
    adds	r0, r2, #0
    strh	r0, [r1, #0]
    movs	r4, #183	@ 0xb7
    lsls	r4, r4, #1
    adds	r1, r3, r4
    ldr	    r2, _0805AB88 @ [pc, #176]	@ (0x5ab88)
    adds	r0, r2, #0
    strh	r0, [r1, #0]
    mov	    sl, r5
    ldr	    r0, _0805AB8C @ [pc, #172]	@ (0x5ab8c)
    adds	r4, r0, #0
    movs	r2, #161	@ 0xa1
    lsls	r2, r2, #1
    adds	r1, r3, r2
    adds	r0, r3, #2
    movs	r2, #21
_805AAEA:
    strh	r4, [r0, #0]
    strh	r4, [r1, #0]
    adds	r1, #2
    adds	r0, #2
    subs	r2, #1
    cmp	    r2, #0
    bge     _805AAEA
    ldr	    r4, _0805AB90 @ [pc, #148]	@ (0x5ab90)
    adds	r1, r4, #0
    adds	r0, r3, #0
    adds	r0, #64	@ 0x40
    movs	r2, #3
_805AB02:
    strh	r1, [r0, #0]
    strh	r1, [r0, #46]	@ 0x2e
    adds	r0, #64	@ 0x40
    subs	r2, #1
    cmp	    r2, #0
    bge 	_805AB02
    movs	r0, #2
    bl	    0x80281fc
    ldr	    r0, _0805AB94 @ [pc, #124]	@ (0x5ab94)
    ldr	    r1, _0805AB98 @ [pc, #128]	@ (0x5ab98)
    str	    r0, [r1, #0]
    ldr	    r2, _0805AB9C @ RunGameLogic_CallBack     [pc, #128]	@ (0x5ab9c)
    ldr	    r1, [r2, #0]
    cmp	    r1, r0
    beq 	_805AB24
    b	    _805ADDC
_805AB24:
    movs	r0, #57	@ 0x39
    add	    r9, r0
    movs	r1, #15
    mov	    r8, r1
    movs	r7, #0
    adds	r6, r2, #0
_805AB30:
    bl	    0x802983c
    bl	    _DrawFrameRunAudio   @ Run_MGBMainMenu
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r2, r0, #0
    mov	    r3, r8
    str	    r3, [sp, #0]
    str	    r7, [sp, #4]
    mov	    r0, r9
    ldr	    r1, _0805ABA0 @ [pc, #80]	@ (0x5aba0)
    movs	r3, #4
    bl	    0x8058c20
    movs	r0, #2
    bl	    0x8026fec
    cmp	    r0, #0
    beq 	_805ABE8
    ldr	    r0, _0805ABA4 @ [pc, #68]	@ (0x5aba4)
    movs	r4, #180	@ 0xb4
    lsls	r4, r4, #8
    adds	r0, r0, r4
    ldr	    r0, [r0, #0]
    cmp	    r0, #0
    beq 	_805ABAC
    ldr	    r5, _0805ABA8 @ [pc, #56]	@ (0x5aba8)
    b	    _805ABAE

_0805AB70:  .4byte 0x6B74
_0805AB74:  .4byte 0x8094994
_0805AB78:  .4byte 0x8112540
_0805AB7C:  .4byte 0xF20D
_0805AB80:  .4byte 0xF60D
_0805AB84:  .4byte 0xFA0D
_0805AB88:  .4byte 0xFE0D
_0805AB8C:  .4byte 0xF20E
_0805AB90:  .4byte 0xF22D
_0805AB94:  .4byte _TryLoadMGBMainMenu + 1
_0805AB98:  .4byte 0x203ED54
_0805AB9C:  .4byte RunGameLogic_CallBack
_0805ABA0:  .4byte 0x810F08C
_0805ABA4:  .4byte 0x2033780
_0805ABA8:  .4byte 0x810F074

_805ABAC:
    ldr	    r5, _0805ABE0 @ [pc, #48]	@ (0x5abe0)
_805ABAE:
    ldr	    r0, [r5, #8]
    movs	r4, #1
    negs	r4, r4
    cmp	    r0, r4
    beq 	_0805ABC0
    lsls	r0, r0, #16
    lsrs	r0, r0, #16
    bl	    0x807073c
_0805ABC0:
    ldr	    r1, [r5, #0]
    cmp	    r1, r4
    beq 	_0805ABCA
    ldr	    r0, _0805ABE4 @ [pc, #28]	@ (0x5abe4)
    str	    r1, [r0, #0]
_0805ABCA:
    ldr	    r0, [r5, #4]
    cmp	    r0, r4
    beq 	_0805AC58
    str	    r0, [r6, #0]
    ldrb	r0, [r6, #8]
    adds	r0, #1
    movs	r1, #7
    ands	r0, r1
    strb	r0, [r6, #8]
    b	    _0805AC58
   
            .2byte 0x0
_0805ABE0:  .4byte 0x810F080
_0805ABE4:  .4byte 0x203ED50

_805ABE8:
    movs	r0, #1
    bl	    0x8026fec
    cmp	    r0, #0
    beq 	_0805AC58
    add	    r1, sp, #12
    ldr	    r0, _0805AC98 @ [pc, #160]	@ (0x5ac98)
    ldmia	r0!, {r2, r3, r4}
    stmia	r1!, {r2, r3, r4}
    ldmia	r0!, {r2, r3, r4}
    stmia	r1!, {r2, r3, r4}
    ldmia	r0!, {r2, r3, r4}
    stmia	r1!, {r2, r3, r4}
    ldmia	r0!, {r2, r3, r4}
    stmia	r1!, {r2, r3, r4}
    mov	    r0, r9
    movs	r1, #0
    ldrsb	r1, [r0, r1]
    lsls	r0, r1, #1
    adds	r0, r0, r1
    lsls	r0, r0, #2
    adds	r4, r0, #0
    add	    r4, sp
    adds	r4, #12
    ldr	    r0, [r4, #8]
    movs	r5, #1
    negs	r5, r5
    cmp	    r0, r5
    beq 	_0805AC2A
    lsls	r0, r0, #16
    lsrs	r0, r0, #16
    bl	    0x807073c
_0805AC2A:
    ldr	    r1, [r4, #0]
    cmp	    r1, r5
    beq 	_0805AC34
    ldr	    r0, _0805AC9C @ [pc, #104]	@ (0x5ac9c)
    str	    r1, [r0, #0]
_0805AC34:
    ldr	    r0, [r4, #4]
    cmp	    r0, r5
    beq 	_0805AC46
    str	    r0, [r6, #0]
    ldrb	r0, [r6, #8]
    adds	r0, #1
    movs	r1, #7
    ands	r0, r1
    strb	r0, [r6, #8]
_0805AC46:
    movs	r1, #0
    mov	    r2, r9
    movs	r0, #0
    ldrsb	r0, [r2, r0]
    cmp	    r0, #2
    bne 	_0805AC54
    movs	r1, #1
_0805AC54:
    mov	    r3, sl
    strb	r1, [r3, #0]
_0805AC58:
    movs	r0, #0
    movs	r1, #3
    movs	r2, #12
    bl	    0x80281b0
    adds	r3, r0, #0
    movs	r0, #1
    add	    r5, sp, #60	@ 0x3c
    movs	r4, #0
_0805AC6A:
    adds	r2, r0, #1
    lsls	r0, r0, #1
    adds	r0, r0, r3
    adds	r0, #64	@ 0x40
    movs	r1, #3
_0805AC74:
    strh	r4, [r0, #0]
    adds	r0, #64	@ 0x40
    subs	r1, #1
    cmp	    r1, #0
    bge 	_0805AC74
    adds	r0, r2, #0
    cmp	    r0, #23
    blt 	_0805AC6A
    mov	    r0, r9
    movs	r4, #0
    ldrsb	r4, [r0, r4]
    cmp	    r4, #1
    beq 	_0805ACE4
    cmp	    r4, #1
    bgt 	_0805ACA0
    cmp	    r4, #0
    beq 	_0805ACAA
    b  	    _0805ADB8

_0805AC98:  .4byte 0x810F0AC
_0805AC9C:  .4byte 0x203ED50

_0805ACA0:
    cmp	    r4, #2
    beq 	_0805AD2C
    cmp	    r4, #3
    beq 	_0805AD78
    b	    _0805ADB8
_0805ACAA:
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r4, [sp, #0]
    mov	    r1, r8
    str	    r1, [sp, #4]
    movs	r0, #22
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #13
    ldr	    r2, _0805ACE0 @ [pc, #24]	@ (0x5ace0)
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r4, [sp, #0]
    mov	    r2, r8
    str	    r2, [sp, #4]
    b	    _0805AD14

            .2byte 0x0
_0805ACE0:  .4byte 0x810F0DC

_0805ACE4:
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    mov	    r4, r8
    str	    r4, [sp, #4]
    movs	r0, #22
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #13
    ldr	    r2, _0805AD24 @ [pc, #36]	@ (0x5ad24)
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    str	    r4, [sp, #4]
    _0805AD14:
    movs	r0, #24
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #15
    ldr	    r2, _0805AD28 @ [pc, #8]	@ (0x5ad28)
    bl	    0x8013e9c
    b	    _0805ADB8
   
   _0805AD24:  .4byte 0x810F13C
   _0805AD28:  .4byte 0x810F10C

_0805AD2C:
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    mov	    r0, r8
    str	    r0, [sp, #4]
    movs	r0, #22
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #13
    ldr	    r2, _0805AD70 @ [pc, #40]	@ (0x5ad70)
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    mov	    r1, r8
    str	    r1, [sp, #4]
    movs	r0, #24
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #15
    ldr	    r2, _0805AD74 @ [pc, #12]	@ (0x5ad74)
    bl	    0x8013e9c
    b	    _0805ADB8

            .2byte 0x0
_0805AD70:  .4byte 0x810F16C
_0805AD74:  .4byte 0x810F19C

_0805AD78:
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    mov	    r2, r8
    str	    r2, [sp, #4]
    movs	r0, #22
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #13
    ldr	    r2, _0805ADF0 @ [pc, #92]	@ (0x5adf0)
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    str	    r7, [sp, #0]
    mov	    r4, r8
    str	    r4, [sp, #4]
    movs	r0, #24
    str	    r0, [sp, #8]
    movs	r0, #4
    movs	r1, #15
    ldr	    r2, _0805ADF4 @ [pc, #64]	@ (0x5adf4)
    bl	    0x8013e9c
_0805ADB8:
    movs	r0, #1
    bl	    0x80281fc
    ldr	    r0, _0805ADF8 @ [pc, #56]	@ (0x5adf8)
    str	    r0, [sp, #60]	@ 0x3c
    str	    r7, [sp, #0]
    str	    r7, [sp, #4]
    ldr	    r0, _0805ADFC @ [pc, #52]	@ (0x5adfc)
    adds	r1, r5, #0
    movs	r2, #0
    movs	r3, #0
    bl	    0x802951c
    ldr	    r1, [r6, #0]
    ldr	    r0, _0805AE00 @ [pc, #40]	@ (0x5ae00)
    cmp	    r1, r0
    bne 	_805ADDC
    b 	    _805AB30
_805ADDC:
    movs	r0, #1
    add	    sp, #84	@ 0x54
    pop	    {r3, r4, r5}
    mov	    r8, r3
    mov	    r9, r4
    mov	    sl, r5
    pop	    {r4-r6, r7}
    pop	    {r1}
    bx	    r1

            .2byte 0x0
_0805ADF0:  .4byte 0x810F1CC
_0805ADF4:  .4byte 0x810F10C
_0805ADF8:  .4byte 0x140050
_0805ADFC:  .4byte 0x8098498
_0805AE00:  .4byte _TryLoadMGBMainMenu + 1

    thumb_func_end _TryLoadMGBMainMenu
        
.incbin "base.gba ", 0x5AE04, 0x5F8B4 - 0x5AE04

    thumb_func_start _LoadMGBRegistrationMenu
_LoadMGBRegistrationMenu: @ 0805F8B4
    push	{r4-r6, lr}
    mov	    r6, r8
    push	{r6}
    sub	    sp, #12
    ldr	    r4, _0805FA3C @ [pc, #380]	@ (0x5fa3c)
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r1, r0, #0
    adds	r0, r4, #0
    bl	    0x8071b7c
    movs	r0, #0
    bl	    0x80281d4
    ldr	    r4, _0805FA40 @ [pc, #360]	@ (0x5fa40)
    movs	r0, #1
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r1, r0, #0
    adds	r0, r4, #0
    bl	    0x8071b7c
    bl	    _DrawFrameRunAudio
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA44 @ [pc, #328]	@ (0x5fa44)
    movs	r4, #0
    str	    r4, [sp, #0]
    movs	r0, #4
    str	    r0, [sp, #4]
    movs	r5, #20
    str	    r5, [sp, #8]
    movs	r0, #9
    movs	r1, #3
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA48 @ [pc, #296]	@ (0x5fa48)
    str	    r4, [sp, #0]
    movs	r0, #15
    mov	    r8, r0
    str	    r0, [sp, #4]
    movs	r0, #21
    str	    r0, [sp, #8]
    movs	r0, #5
    movs	r1, #6
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA4C @ [pc, #268]	@ (0x5fa4c)
    str	    r4, [sp, #0]
    movs	r6, #3
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #17
    movs	r1, #6
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA50 @ [pc, #240]	@ (0x5fa50)
    str	    r4, [sp, #0]
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #5
    movs	r1, #8
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA54 @ [pc, #216]	@ (0x5fa54)
    str	    r4, [sp, #0]
    mov	    r0, r8
    str	    r0, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #5
    movs	r1, #10
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA58 @ [pc, #192]	@ (0x5fa58)
    str	    r4, [sp, #0]
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #14
    movs	r1, #10
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA5C @ [pc, #168]	@ (0x5fa5c)
    str	    r4, [sp, #0]
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #5
    movs	r1, #12
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA60 @ [pc, #144]	@ (0x5fa60)
    str	    r4, [sp, #0]
    mov	    r0, r8
    str	    r0, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #5
    movs	r1, #14
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA64 @ [pc, #116]	@ (0x5fa64)
    str	    r4, [sp, #0]
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #11
    movs	r1, #14
    bl	    0x8013e9c
    movs	r0, #0
    movs	r1, #0
    movs	r2, #0
    bl	    0x80281b0
    adds	r3, r0, #0
    ldr	    r2, _0805FA68 @ [pc, #92]	@ (0x5fa68)
    str	    r4, [sp, #0]
    str	    r6, [sp, #4]
    str	    r5, [sp, #8]
    movs	r0, #5
    movs	r1, #16
    bl	    0x8013e9c
    movs	r0, #1
    bl	    0x80281fc
    movs	r0, #2
    bl	    0x80281fc
    bl	    0x806f970
    lsls	r0, r0, #24
    lsrs	r0, r0, #24
    cmp	    r0, #1
    bne 	_805FA70
    movs	r0, #142	@ 0x8e
    bl	    0x807073c
    ldr	    r1, _0805FA6C @ [pc, #52]	@ (0x5fa6c)
    b   	_805FA78

            .2byte 0x0
_0805FA3C:  .4byte 0x80952E0
_0805FA40:  .4byte 0x80948B0
_0805FA44:  .4byte 0x810FA78
_0805FA48:  .4byte 0x810FA94
_0805FA4C:  .4byte 0x810FAE8
_0805FA50:  .4byte 0x810FAFC
_0805FA54:  .4byte 0x810FB14
_0805FA58:  .4byte 0x810FB5C
_0805FA5C:  .4byte 0x810FB6C
_0805FA60:  .4byte 0x810FB7C
_0805FA64:  .4byte 0x810FBCC
_0805FA68:  .4byte 0x810FBD8
_0805FA6C:  .4byte 0x8060755

_805FA70:
    movs	r0, #144	@ 0x90
    bl	    0x807073c
    ldr	    r1, _0805FA94 @ [pc, #28]	@ (0x5fa94)
_805FA78:
    ldr	    r0, _0805FA98 @ RunGameLogic_CallBack    [pc, #28]	@ (0x5fa98)
    str	    r1, [r0, #0]
    ldrb	r1, [r0, #8]
    adds	r1, #1
    movs	r2, #7
    ands	r1, r2
    strb	r1, [r0, #8]
    movs	r0, #1
    add	    sp, #12
    pop	    {r3}
    mov	    r8, r3
    pop	    {r4-r6}
    pop	    {r1}
    bx	    r1

_0805FA94:  .4byte 0x805AE79
_0805FA98:  .4byte RunGameLogic_CallBack

    thumb_func_end _LoadMGBRegistrationMenu

