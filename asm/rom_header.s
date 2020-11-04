    b Init

CartridgeHeaderNintendoLogo:
	.incbin "base.gba", 0x4, 0xA0 - 0x4

CartridgeHeaderGameTitle:
	.ascii "MARIO KART"

CartridgeHeaderGameTitlePadding:
	.rept 2
	.byte 0
	.endr

CartridgeHeaderGameCode:
	.ascii "AMKJ"

CartridgeHeaderMakerCode:
	.ascii "01"

CartridgeHeaderMagic:
	.byte 0x96

CartridgeHeaderMainUnitCode:
	.byte 0

CartridgeHeaderDeviceType:
	.byte 0

CartridgeHeaderReserved1:
	.rept 7
	.byte 0
	.endr

CartridgeHeaderSoftwareVersion:
	.byte 0

CartridgeHeaderChecksum:
	.byte 0x03

CartridgeHeaderReserved2:
	.rept 2
	.byte 0
	.endr
	