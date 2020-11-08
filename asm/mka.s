	.include "defines.s"
	.include "ram.s"
	.include "macros.s"

	.syntax unified

	.global RomBase

	.text

	.arm

RomBase:
    .include "rom_header.s"
	.include "crt0.s"

/* TEXT */
	.thumb
	.include "main.s"
	.incbin "base.gba", 0x26DBA, 0x2711c - 0x26DBA
	.include "game.s"
	.incbin "base.gba", 0x27148, 0x5A3FC - 0x27148
	.include "mobile_adapter_gb.s"
	.incbin "base.gba ", 0x5FA9C, 0xF3938 - 0x5FA9C

/* DATA */
	.include "data.s"
	.incbin "base.gba ", 0xF48E4
