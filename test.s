.include "asm/macros.s"

.global Start
.text
.thumb

Start:
.incbin "base.gba", 0x0, 0x1D8
	thumb_func_start sub_080001d8
sub_080001d8:
	push	{ r4, r5, r6, lr }
	sub		sp, #0xc
	add		r6, r0, #0x0
	mov		r5, #0x0
_080001e0:
	lsl		r0, r5, #0x2
	add		r0, r0, r5
	lsl		r0, r0, #0x2
	add		r0, #0x38
	add		r4, r6, r0
	ldr		r0, [r4, #0xc]
	cmp		r0, #0x7
	bls		_080001f2
	b		_080002e0
_080001f2:
	lsl		r0, r0, #0x2
	ldr		r1, _080001fc
	add		r0, r0, r1
	ldr		r0, [r0, #0x0]
	mov		pc, r0

_080001fc:	.4byte 0x08000200
_08000200:	.4byte 0x080002e0

.incbin "base.gba", 0x204, 0x1C
	thumb_func_end sub_080001d8


.incbin "base.gba", 0x220, 0xC0

_080002e0:

.incbin "base.gba", 0x2E0, 0x8
