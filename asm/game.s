	.include "defines.s"
	.include "ram.s"
	.include "macros.s"
	

	thumb_func_start _UpdateGame
_UpdateGame: @ 0802711c
	push	{ r4, r5, lr }
	ldr		r5, _08027144
	mov		r4, #0x0
_08027122:
	str		r4, [r5, #0x0]
	bl		sub_08071ba4
	bl		sub_08070730
	bl		sub_0802732c
	cmp		r0, #0x0
	bne		_08027122
	bl		sub_08026e98
	bl		sub_0802a0a4
	pop		{ r4, r5 }
	pop		{ r0 }
	bx		r0

.align 2, 0
.pool

_08027144:	.4byte 0x030001A4
	thumb_func_end _UpdateGame
