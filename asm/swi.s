	.include "defines.s"
	.include "ram.s"
	.include "macros.s"
    

	thumb_func_start sub_08071b64
sub_08071b64:
	svc		0xa
	bx		lr
	thumb_func_end sub_08071b64

	thumb_func_start _CallHardwareSetCpuFast
_CallHardwareSetCpuFast: @ 8071B68
    swi	    0xc    @ CpuFastSet
	bx		lr
	thumb_func_end _CallHardwareSetCpuFast

	thumb_func_start sub_08071b6c
sub_08071b6c:
	svc		0xb
	bx		lr
	thumb_func_end sub_08071b6c

	thumb_func_start sub_08071b70
sub_08071b70:
	svc		0x6
	bx		lr
	thumb_func_end sub_08071b70

	thumb_func_start sub_08071b74
sub_08071b74:
	svc		0x6
	add		r0, r1, #0x0
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08071b74

	thumb_func_start _CallHardwareLZ77DecompressToMemory16Bit
_CallHardwareLZ77DecompressToMemory16Bit: @ 8071B7C
    swi	    0x12    @ LZ77UnCompReadNormalWrite16Bit
	bx		lr
	thumb_func_end _CallHardwareLZ77DecompressToMemory16Bit

	thumb_func_start _CallHardwareLZ77DecompressToMemory8Bit
_CallHardwareLZ77DecompressToMemory8Bit: @ 8071B80
    swi	    0x11    @ LZ77UnCompReadNormalWrite8Bit
	bx		lr
	thumb_func_end _CallHardwareLZ77DecompressToMemory8Bit

	thumb_func_start sub_08071b84
sub_08071b84:
	mov		r1, #0x1
	svc		0x25
	bx		lr

.align 2, 0
.pool
	thumb_func_end sub_08071b84