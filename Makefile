TOOLCHAIN ?= $(DEVKITARM)
PREFIX ?= arm-none-eabi-

export PATH := $(TOOLCHAIN)/bin:$(PATH)

CPP 		:= $(PREFIX)cpp$(EXE)
AS 			:= $(PREFIX)as$(EXE)
LD 			:= $(PREFIX)ld$(EXE)
OBJCOPY 	:= $(PREFIX)objcopy$(EXE)

ASFLAGS 	:= -mcpu=arm7tdmi -Iasm

SHA1 		:= sha1sum -c

# Clear the default suffixes.
.SUFFIXES:

# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

.PRECIOUS: %.1bpp %.4bpp %.8bpp %.gbapal %.lz

.PHONY: rom tools gbagfx scaninc clean compare

gfx     	:= @tools/gbagfx/gbagfx
scaninc 	:= tools/scaninc/scaninc

objs 		:= asm/mka.o
LDSCRIPT	:= ld_script.txt
rom 		:= mka.gba
elf 		:= $(rom:.gba=.elf)


$(foreach obj, $(objs), \
	$(eval $(obj)_deps := $(shell $(scaninc) $(obj:.o=.s))) \
)

rom: $(rom)

tools: 		gbagfx scaninc

gbagfx:
	cd tools/gbagfx && make

scaninc:
	cd tools/scaninc && make

# For contributors to make sure a change didn't affect the contents of the ROM.
compare: $(rom)
	@$(SHA1) mka.sha1

clean:
	$(RM) $(rom) $(elf) $(objs)
	find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +

include graphics_file_rules.mk

%.png: ;
%.pal: ;
%.1bpp: %.png  ; $(gfx) $< $@
%.4bpp: %.png  ; $(gfx) $< $@
%.8bpp: %.png  ; $(gfx) $< $@
%.gbapal: %.pal ; $(gfx) $< $@
%.lz: % ; $(gfx) $< $@

%.o: %.s $$($$@_deps)
	$(AS) $(ASFLAGS) -o $@ $<

# Link objects to produce the ROM.
$(rom): $(objs)
	$(LD) -T $(LDSCRIPT) -o $(elf) $(objs)
	$(OBJCOPY) -O binary $(elf) $(rom)