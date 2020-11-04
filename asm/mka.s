	.include "defines.s"
	.include "macros.s"

	.syntax unified

	.global RomBase

	.text

	.arm

RomBase:
    .include "rom_header.s"
	.include "crt0.s"

	.thumb
	thumb_func_start _entryPoint
_entryPoint: @ 80001D8
	push {r4-r6, lr}
	add  sp, -0x0C
	adds r6, r0, 0x0
	movs r5, 0x0
	lsls r0, r5, 0x2
	adds  r0, r0, r5
	lsls  r0, r0, 0x2
	adds r0, 0x38
	adds r4, r6, r0
	ldr  r0, [r4, 0x0C]
	cmp  r0, 0x7
	bls  0x80001F2
	b 	 0x80002E0
	thumb_func_end _entryPoint

.incbin "base.gba", 0x1F2, (0x26BDC - 0x1F2)

	thumb_func_start _AgbMain
_AgbMain: @ 8026BDC
	push  {r4-r5, lr}                      
    add   sp, -0x8                         
    ldr   r5, _030031A0             
	movs   r0, 0x1                          
    ldr   r1, _FFFEFFFF                
	bl    0x807DF78 @ sub_807DF78                       
	movs   r2, 0x80                         
	lsls   r2, r2, 0x13                      
	ldrh  r0, [r2]                        
	movs   r1, 0x80                         
	orrs   r0, r1                          
	strh  r0, [r2]                        
	ldr   r1, _GamePakWaitstateControl                    
	ldr   r2, _00004494                      
	adds   r0, r2, 0x0                          
	strh  r0, [r1]                        
	movs   r4, 0x0                          
	str   r4, [sp]                        
	ldr   r1, _DMA3SourceAddress              
	mov   r0, r13                         
	str   r0, [r1]                        
	movs   r0, 0x80                         
	lsls   r0, r0, 0x12                     
	str   r0, [r1, 0x4]                     
	ldr   r0, _85010000                  
	str   r0, [r1, 0x8]                     
	ldr   r0, [r1, 0x8]                     
	str   r4, [sp]                        
	mov   r2, r13                         
	str   r2, [r1]                        
	movs   r0, 0xC0                        
	lsls   r0, r0, 0x12                      
	str   r0, [r1, 0x4]                     
	ldr   r0, _85001F80                  
	str   r0, [r1, 0x8]                     
	ldr   r0, [r1, 0x8]                     
	add   r2, sp, 0x4                       
	strh  r4, [r2]                        
	str   r2, [r1]                        
	movs   r0, 0xC0                        
	lsls   r0, r0, 0x13                      
	str   r0, [r1, 0x4]                     
	ldr   r0, _8100C000                     
	str   r0, [r1, 0x8]                  
	ldr   r0, [r1, 0x8]                     
	str   r4, [sp]                        
	mov   r0, r13                         
	str   r0, [r1]                        
	movs   r0, 0xE0                        
	lsls   r0, r0, 0x13                      
	str   r0, [r1, 0x4]                     
	ldr   r0, _85000100                  
	str   r0, [r1, 0x8]                     
	ldr   r0, [r1, 0x8]                     
	strh  r4, [r2]                        
	str   r2, [r1]                        
	movs   r0, 0xA0                        
	lsls   r0, r0, 0x13                      
	str   r0, [r1, 0x4]                     
	ldr   r0, _81000200                  
	str   r0, [r1, 0x8]                     
	ldr   r0, [r1, 0x8]                     
	ldr   r2, _0820C1B0                   
	str   r2, [r1]                        
	ldr   r0, _0203EE9C                   
	str   r0, [r1, 0x4]                     
	ldr   r0, _0820C270                   
	subs   r0, r0, r2                       
	lsrs   r2, r0, 0x1F                      
	adds   r0, r0, r2                       
	asrs   r0, r0, 0x1                       
	movs   r2, 0x80                         
	lsls   r2, r2, 0x18                      
	orrs   r0, r2                          
	str   r0, [r1, 0x8]                     
	ldr   r0, [r1, 0x8]                     
	movs   r0, 0x0                          
	movs   r1, 0x0                          
	bl    0x802703C @ sub_802703C                       
	str   r4, [r5, 0x14]                    
	bl    0x8026E30 @ sub_8026E30                       
	ldr   r0, _Timer0Counter_Reload                   
	str   r4, [r0]                        
	ldr   r1, _DMA1SourceAddress                   
	ldrh  r2, [r1, 0xA]                    
	ldr   r0, _0000C5FF                     
	ands   r0, r2                          
	strh  r0, [r1, 0xA]                    
	ldrh  r2, [r1, 0xA]                    
	ldr   r0, _00007FFF                      
	ands   r0, r2                          
	strh  r0, [r1, 0xA]                    
	ldrh  r0, [r1, 0xA]                    
	bl    0x80706B8 @ sub_80706B8                       
	bl    0x807DF2C @ sub_807DF2C                       
	ldr   r0, _InterruptEnableRegister                   
	strh  r4, [r0]                        
	ldr   r1, _InterruptRequestFlags_IRQAcknowledge                   
	ldr   r2, _0000FFFF                     
	adds   r0, r2, 0x0                          
	strh  r0, [r1]                        
	ldr   r1, _GeneralLCDStatus_STAT_LYC_                   
	movs   r0, 0x18                         
	strh  r0, [r1]                        
	ldr   r1, _00010001                     
	movs   r0, 0x0                          
	bl    0x807DF78 @ sub_807DF78                        
	movs   r1, 0x90                         
	lsls   r1, r1, 0x9                       
	movs   r0, 0x2                          
	bl    0x807DF78 @ sub_807DF78                       
	ldr   r1, _08026DBD                   
	cmp   r1, 0x0                          
	bne   0x8026CD0                       
	ldr   r1, _080270F1                   
	movs   r0, 0x0                          
	bl    0x807DF68 @ sub_807DF68                       
	ldr   r1, _0802A061                   
	cmp   r1, 0x0                          
	bne   0x8026CDE @ sub_8026CDE                       
	ldr   r1, _080270F1                   
	movs   r0, 0x2                          
	bl    0x807DF68 @ sub_807DF68                       
	bl    0x8029F34 @ sub_8029F34                       
	bl    0x8029E9C @ sub_8029E9C                       
	bl    0x8029F58 @ sub_8029F58                       
	ldr   r0, _03003000                   
	strh  r4, [r0, 0x16]                    
	bl    0x8027744 @ sub_8027744                       
	movs   r0, 0x2                          
	movs   r1, 0x80                         
	lsls   r1, r1, 0x9                      
	bl    0x807DF78 @ sub_807DF78                       
	ldr   r0, _08001901 @ [pc, 0xA4]                  
	str   r0, [r5]                        
	movs   r0, 0x1                          
	strb  r0, [r5, 0x8]                     
	bl    0x80588B4 @ sub_80588B4                       
	bl    0x8056254 @ sub_8056254                       
	bl    0x803D0EC @ sub_803D0EC                       
	bl    0x8001B24 @ sub_8001B24                       
	bl    0x8001AD0 @ sub_8001AD0
_MainGameLoop:                       
	ldr	  r0, _030031A0 @ [pc, 0x20]                  
	ldr   r0, [r0]                        
	cmp   r0, 0x0                         
	beq   0x8026DAC                       
	bl    0x807D7D0 @ sub_807D7D0 "Run_Game"                       
	cmp   r0, 0x0                          
	beq   0x8026DAC                      
	bl    0x8029F98 @ sub_8029F98                      
	bl    0x8029F34 @ sub_8029F34                       
	bl    0x8029EC0 @ sub_8029EC0                       
	bl    0x802711C @ sub_802711C                       
	b     _MainGameLoop            
	
_030031A0: 								.4byte 0x30031A0
_FFFEFFFF: 								.4byte 0xFFFEFFFF
_GamePakWaitstateControl: 				.4byte GamePakWaitstateControl
_00004494: 								.4byte 0x0004494
_DMA3SourceAddress:						.4byte DMA3SourceAddress
_85010000: 								.4byte 0x85010000
_85001F80:								.4byte 0x85001F80
_8100C000:								.4byte 0x8100C000
_85000100:								.4byte 0x85000100
_81000200:								.4byte 0x81000200
_0820C1B0:								.4byte 0x820C1B0
_0203EE9C:								.4byte 0x203EE9C
_0820C270:								.4byte 0x820C270
_Timer0Counter_Reload:					.4byte Timer0Counter_Reload
_DMA1SourceAddress:						.4byte DMA1SourceAddress
_0000C5FF:								.4byte 0x000C5FF
_00007FFF:								.4byte 0x0007FFF
_InterruptEnableRegister:				.4byte InterruptEnableRegister
_InterruptRequestFlags_IRQAcknowledge:	.4byte InterruptRequestFlags_IRQAcknowledge
_0000FFFF:								.4byte 0x000FFFF
_GeneralLCDStatus_STAT_LYC_:			.4byte GeneralLCDStatus_STAT_LYC_	
_00010001:								.4byte 0x0010001	
_08026DBD:								.4byte 0x8026DBD	
_080270F1:								.4byte 0x80270F1
_0802A061:								.4byte 0x802A061
_03003000:								.4byte 0x3003000
_08001901:								.4byte 0x8001901

	movs   r0, 0xFF                        
	bl    0x8071B8C @ sub_8071B8Ch                       
	add   sp, 0x8                          
	pop   {r4, r5}                          
	pop   {r0}                              
	bx    r0                              
	thumb_func_end _AgbMain

.incbin "base.gba", 0x26DBA
