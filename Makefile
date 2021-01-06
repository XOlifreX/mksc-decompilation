ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif


TOOLCHAIN ?= $(DEVKITARM)
PREFIX ?= arm-none-eabi-

export PATH := $(TOOLCHAIN)/bin:$(PATH)

CPP 		:= $(PREFIX)cpp$(EXE)
AS 			:= $(PREFIX)as$(EXE)
LD 			:= $(PREFIX)ld$(EXE)
OBJCOPY 	:= $(PREFIX)objcopy$(EXE)

GBAGFX     	:= tools/gbagfx/gbagfx$(EXE)
SCANINC 	:= tools/scaninc/scaninc$(EXE)

ASFLAGS 	:= -mcpu=arm7tdmi -Iasm

SHA1 		:= sha1sum -c

mka 		:= asm/mka.s
objs 		:= asm/mka.o
LDSCRIPT	:= ld_script.txt
rom 		:= mka.gba
elf 		:= $(rom:.gba=.elf)

.PHONY: all clean compare

all: gfx_clean gfx_build compare rom_clean

# GFX
include graphics_file_rules.mk

# Compare
compare: $(rom)
	$(SHA1) mka.sha1

# Build
%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(rom): $(objs)
	$(LD) -T $(LDSCRIPT) -o $(elf) $(objs)
	$(OBJCOPY) -O binary $(elf) $(rom)

# Clean
rom_clean:
	@$(RM) $(ROM) $(elf) $(objs)