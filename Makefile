ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif


TOOLCHAIN ?= $(DEVKITARM)/bin/
PREFIX ?= arm-none-eabi-

CPP 		:= $(TOOLCHAIN)$(PREFIX)cpp$(EXE)
AS 			:= $(TOOLCHAIN)$(PREFIX)as$(EXE)
LD 			:= $(TOOLCHAIN)$(PREFIX)ld$(EXE)
OBJCOPY 	:= $(TOOLCHAIN)$(PREFIX)objcopy$(EXE)

GBAGFX     	:= tools/gbagfx/gbagfx$(EXE)
SCANINC 	:= tools/scaninc/scaninc$(EXE)
RAMSCRGEN 	:= tools/ramscrgen/ramscrgen$(EXE)

SHA1SUM 		:= sha1sum -c

ASFLAGS 	:= -mcpu=arm7tdmi -Iasm

CC1             := tools/agbcc/bin/old_agbcc$(EXE)
override CFLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm

CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc

ASFILE := $(wildcard asm/*.s)
CFILE := $(wildcard src/*.c)
ASOBJFILE := $(ASFILE:.s=.o)
COBJFILE := $(CFILE:.c=.o)

NAME 				:= mka
ROM 				:= $(NAME).gba
ELF 				:= $(NAME).elf
LDSCRIPT			:= ld_script.ld
EWRAM_FILENAME		:= sym_ewram
EWRAM_SECTIONNAME	:= ewram_data
EWRAM_LDSCRIPT		:= $(EWRAM_FILENAME).ld
EWRAM_TXTSCRIPT		:= $(EWRAM_FILENAME).txt

.PHONY: graphics rom

graphics: gfx_clean gfx_build rom

rom: $(ROM) clean compare

# GFX
include graphics_file_rules.mk

# Compare
compare: $(ROM)
	$(SHA1SUM) mka.sha1

# Clean
clean:
	@$(RM) $(ELF) $(ASOBJFILE) $(COBJFILE) $(EWRAM_LDSCRIPT)

# Build
$(EWRAM_LDSCRIPT): $(EWRAM_TXTSCRIPT)
	$(RAMSCRGEN) $(EWRAM_SECTIONNAME) $(EWRAM_TXTSCRIPT) ENGLISH >$(EWRAM_LDSCRIPT)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@

$(ELF): %.elf: $(ASOBJFILE) $(COBJFILE) $(LDSCRIPT) $(EWRAM_LDSCRIPT)
	$(LD) -T $(LDSCRIPT) -Map $*.map -o $@ $(ASOBJFILE) $(COBJFILE) -L tools/agbcc/lib -lgcc -lc

$(COBJFILE): %.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CFLAGS) | $(AS) $(ASFLAGS) -o $@ 

$(ASOBJFILE): %.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
