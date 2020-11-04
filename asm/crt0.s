    arm_func_start Init
Init: @ 080000C0
    mov     r0, PSR_IRQ_MODE                                  
    msr     cpsr_fc, r0                              
    ldr     r13, sp_irq                      
    mov     r0, PSR_SYS_MODE                                  
    msr     cpsr_fc, r0                              
    ldr     r13, sp_sys                       
    ldr     r1, _INTR_VECTOR                        
    adr     r0, InterruptMain                        
    str     r0, [r1]                                 
    ldr     r1, _AgbMain_Ref                      
    mov     r14, r15                                 
    bx      r1                                      
    b       Init

	.align 2, 0                   
sp_sys: .4byte (IWRAM_END - 0x500)                       
sp_irq: .4byte (IWRAM_END - 0x60)   

	.pool
    
	arm_func_end Init

	arm_func_start InterruptMain
InterruptMain: @ 080000FC
    mov     r3, LCDControl                        
    add     r3, r3, 0x200                           
    ldr     r2, [r3]                                
    and     r1, r2, r2, lsr 0x10                    
    ands    r0, r1, 0x2000                          
    beq     _8000120                            
    mov     r0, 0xFF                                 
    swi     0x10000
_800011C:                 
    b       _800011C  
_8000120:                          
    mov     r2, 0x0                                   
    ands    r0, r1, INTR_FLAG_VBLANK                                
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_HBLANK                                
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_VCOUNT                                
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_TIMER0                                
    bne     _80001B8                            
    add     r2, r2, 0x4                               
    ands    r0, r1, INTR_FLAG_TIMER1                               
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_TIMER2                               
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_TIMER3                               
    bne     _80001B8                            
    add     r2, r2, 0x4                               
    ands    r0, r1, INTR_FLAG_SERIAL                               
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_DMA0                              
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_DMA1                              
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_DMA2                              
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_DMA3                              
    bne     _80001B8                            
    add     r2, r2, 0x4                                
    ands    r0, r1, INTR_FLAG_KEYPAD
_80001B8:                             
    strh    r0, [r3, 0x2]                              
    ldr     r1, _03005300                        
    add     r1, r1, r2                                
    ldr     r0, [r1]                                 
    bx      r0  
              
_INTR_VECTOR: .4byte INTR_VECTOR                       
_AgbMain_Ref: .4byte (_AgbMain + 1)                        
_03005300: .4byte 0x3005300

	.pool

	arm_func_end InterruptMain
