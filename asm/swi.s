    	thumb_func_start _CallHardwareSetCpuFast
_CallHardwareSetCpuFast: @ 8071B68
    swi	    0x0C    @ CpuFastSet
    bx      lr
    thumb_func_end _CallHardwareSetCpuFast
 
 .incbin "base.gba", 0x71B6C, 0x71B7C - 0x71B6C

   	thumb_func_start _CallHardwareLZ77DecompressToMemory16Bit
_CallHardwareLZ77DecompressToMemory16Bit: @ 8071B7C
    swi	    0x12    @ LZ77UnCompReadNormalWrite16Bit
    bx      lr
    thumb_func_end _CallHardwareLZ77DecompressToMemory16Bit

   	thumb_func_start _CallHardwareLZ77DecompressToMemory8Bit
_CallHardwareLZ77DecompressToMemory8Bit: @ 8071B80
    swi	    0x11    @ LZ77UnCompReadNormalWrite8Bit
    bx      lr
    thumb_func_end _CallHardwareLZ77DecompressToMemory8Bit
