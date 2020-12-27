	thumb_func_start _entryPoint
_entryPoint: @ 80001D8
	push    {r4-r6, lr}
	add     sp, -0x0C
	adds    r6, r0, 0x0
	movs    r5, 0x0
	lsls    r0, r5, 0x2
	adds    r0, r0, r5
	lsls    r0, r0, 0x2
	adds    r0, 0x38
	adds    r4, r6, r0
	ldr     r0, [r4, 0x0C]
	cmp     r0, 0x7
	bls     0x80001F2
	b 	    0x80002E0
	thumb_func_end _entryPoint

    .incbin "base.gba", 0x1F2, (0x1900 - 0x1F2)

    .include "mobile_adapter_gb_intro.s"

    .incbin "base.gba", 0x1A4C, (0x26BDC - 0x1A4C)

	thumb_func_start _AgbMain
_AgbMain: @ 8026BDC
	push    {r4-r5, lr}                      
    add     sp, -0x8                         
    ldr     r5, _08026D40             
	movs    r0, 0x1                          
    ldr     r1, _08026D44                
	bl      sub_0807df78                      
	movs    r2, 0x80                         
	lsls    r2, r2, 0x13                      
	ldrh    r0, [r2]                        
	movs    r1, 0x80                         
	orrs    r0, r1                          
	strh    r0, [r2]                        
	ldr     r1, _08026D48                    
	ldr     r2, _08026D4C                      
	adds    r0, r2, 0x0                          
	strh    r0, [r1]                        
	movs    r4, 0x0                          
	str     r4, [sp]                        
	ldr     r1, _08026D50              
	mov     r0, r13                         
	str     r0, [r1]                        
	movs    r0, 0x80                         
	lsls    r0, r0, 0x12                     
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D54                  
	str     r0, [r1, 0x8]                     
	ldr     r0, [r1, 0x8]                     
	str     r4, [sp]                        
	mov     r2, r13                         
	str     r2, [r1]                        
	movs    r0, 0xC0                        
	lsls    r0, r0, 0x12                      
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D58                  
	str     r0, [r1, 0x8]                     
	ldr     r0, [r1, 0x8]                     
	add     r2, sp, 0x4                       
	strh    r4, [r2]                        
	str     r2, [r1]                        
	movs    r0, 0xC0                        
	lsls    r0, r0, 0x13                      
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D5C                     
	str     r0, [r1, 0x8]                  
	ldr     r0, [r1, 0x8]                     
	str     r4, [sp]                        
	mov     r0, r13                         
	str     r0, [r1]                        
	movs    r0, 0xE0                        
	lsls    r0, r0, 0x13                      
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D60                  
	str     r0, [r1, 0x8]                     
	ldr     r0, [r1, 0x8]                     
	strh    r4, [r2]                        
	str     r2, [r1]                        
	movs    r0, 0xA0                        
	lsls    r0, r0, 0x13                      
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D64                  
	str     r0, [r1, 0x8]                     
	ldr     r0, [r1, 0x8]                     
	ldr     r2, _08026D68                   
	str     r2, [r1]                        
	ldr     r0, _08026D6C                   
	str     r0, [r1, 0x4]                     
	ldr     r0, _08026D70                   
	subs    r0, r0, r2                       
	lsrs    r2, r0, 0x1F                      
	adds    r0, r0, r2                       
	asrs    r0, r0, 0x1                       
	movs    r2, 0x80                         
	lsls    r2, r2, 0x18                      
	orrs    r0, r2                          
	str     r0, [r1, 0x8]                     
	ldr     r0, [r1, 0x8]                     
	movs    r0, 0x0                          
	movs    r1, 0x0                          
	bl      0x802703C @ sub_802703C                       
	str     r4, [r5, 0x14]                    
	bl      0x8026E30 @ sub_8026E30                       
	ldr     r0, _08026D74                   
	str     r4, [r0]                        
	ldr     r1, _08026D78                   
	ldrh    r2, [r1, 0xA]                    
	ldr     r0, _08026D7C                     
	ands    r0, r2                          
	strh    r0, [r1, 0xA]                    
	ldrh    r2, [r1, 0xA]                    
	ldr     r0, _08026D80                      
	ands    r0, r2                          
	strh    r0, [r1, 0xA]                    
	ldrh    r0, [r1, 0xA]                    
	bl      0x80706B8 @ sub_80706B8                       
	bl      0x807DF2C @ sub_807DF2C                       
	ldr     r0, _08026D84                   
	strh    r4, [r0]                        
	ldr     r1, _08026D88                   
	ldr     r2, _08026D8C                     
	adds    r0, r2, 0x0                          
	strh    r0, [r1]                        
	ldr     r1, _08026D90                   
	movs    r0, 0x18                         
	strh    r0, [r1]                        
	ldr     r1, _08026D94                     
	movs    r0, 0x0                          
	bl      sub_0807df78                     
	movs    r1, 0x90                         
	lsls    r1, r1, 0x9                       
	movs    r0, 0x2                          
	bl      sub_0807df78                   
	ldr     r1, _08026D98                   
	cmp     r1, 0x0                          
	bne     0x8026CD0                       
	ldr     r1, _08026D9C                   
	movs    r0, 0x0                          
	bl      0x807DF68 @ sub_807DF68                       
	ldr     r1, _08026DA0                   
	cmp     r1, 0x0                          
	bne     0x8026CDE @ sub_8026CDE                       
	ldr     r1, _08026D9C                   
	movs    r0, 0x2                          
	bl      0x807DF68 @ sub_807DF68                       
	bl      0x8029F34 @ sub_8029F34                       
	bl      0x8029E9C @ sub_8029E9C                       
	bl      0x8029F58 @ sub_8029F58                       
	ldr     r0, _08026DA4                   
	strh    r4, [r0, 0x16]                    
	bl      0x8027744 @ sub_8027744                       
	movs    r0, 0x2                          
	movs    r1, 0x80                         
	lsls    r1, r1, 0x9                      
	bl      sub_0807df78                       
	ldr     r0, _08026DA8 @ _ShowMGBIntro     [pc, 0xA4]                  
	str     r0, [r5]                        
	movs    r0, 0x1                          
	strb    r0, [r5, 0x8]                     
	bl      0x80588B4 @ sub_80588B4                       
	bl      0x8056254 @ sub_8056254                       
	bl      0x803D0EC @ sub_803D0EC                       
	bl      0x8001B24 @ sub_8001B24                       
	bl      0x8001AD0 @ sub_8001AD0
_MainGameLoop:                       
	ldr	    r0, _08026D40 @ RunGameLogic_CallBack		[pc, 0x20]                  
	ldr     r0, [r0]                        
	cmp     r0, 0x0                         
	beq     _8026DAC                       
	bl      0x807D7D0 @ sub_807D7D0 "Run_Game"                       
	cmp     r0, 0x0                          
	beq     _8026DAC                      
	bl      0x8029F98 @ sub_8029F98                      
	bl      0x8029F34 @ sub_8029F34                       
	bl      0x8029EC0 @ sub_8029EC0                       
	bl      _DrawFrameRunAudio                 
	b       _MainGameLoop            
	
_08026D40: 	.4byte RunGameLogic_CallBack
_08026D44: 	.4byte 0xFFFEFFFF
_08026D48: 	.4byte GamePakWaitstateControl
_08026D4C: 	.4byte 0x0004494
_08026D50:	.4byte DMA3SourceAddress
_08026D54: 	.4byte 0x85010000
_08026D58:	.4byte 0x85001F80
_08026D5C:	.4byte 0x8100C000
_08026D60:	.4byte 0x85000100
_08026D64:	.4byte 0x81000200
_08026D68:	.4byte 0x820C1B0
_08026D6C:	.4byte 0x203EE9C
_08026D70:	.4byte 0x820C270
_08026D74:	.4byte Timer0Counter_Reload
_08026D78:	.4byte DMA1SourceAddress
_08026D7C:	.4byte 0x000C5FF
_08026D80:	.4byte 0x0007FFF
_08026D84:	.4byte InterruptEnableRegister
_08026D88:	.4byte InterruptRequestFlags_IRQAcknowledge
_08026D8C:	.4byte 0x000FFFF
_08026D90:	.4byte GeneralLCDStatus_STAT_LYC_	
_08026D94:	.4byte 0x0010001	
_08026D98:	.4byte 0x8026DBD	
_08026D9C:	.4byte 0x80270F1
_08026DA0:	.4byte 0x802A061
_08026DA4:	.4byte 0x3003000
_08026DA8:	.4byte _ShowMGBIntro + 1

_8026DAC:
	movs    r0, 0xFF                        
	bl      0x8071B8C @ sub_8071B8Ch                       
	add     sp, 0x8                          
	pop     {r4, r5}                          
	pop     {r0}                              
	bx      r0 
                                 
	thumb_func_end _AgbMain
