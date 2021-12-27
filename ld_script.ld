ENTRY(_entryPoint)

SECTIONS {

    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(4)
    {
        gHeap = .;

        . = 0x20000;

        INCLUDE "sym_ewram.ld"

        . = 0x40000;
    }

    . = 0x3000000;

    iwram (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_bss.ld"

        . = 0x8000;
    }

    . = 0x8000000;
    .text :
    ALIGN(4)
    {
	    asm/crt0.o (.text);
	    asm/mka0.o (.text);
        asm/mobile_adapter_gb_intro.o (.text);
	    asm/mka1.o (.text);
	    asm/main.o (.text);
	    asm/mka2.o (.text);
        asm/game.o (.text);
	    asm/mka3.o (.text);
        src/mgb_save_080577f8.o (.text);
        src/mgb_save.o (.text);
        src/mgb_unk1.o (.text);
        asm/mobile_adapter_gb0.o (.text);
        src/mgb_profile.o (.text);
        asm/mobile_adapter_gb1.o (.text);
	    asm/mka4.o (.text);
        asm/swi.o (.text)
	    asm/mka5.o (.text);
	    asm/data.o (.text);
	    asm/mka6.o (.text);
    } =0

    /* Discard everything not specifically mentioned above. */
	/DISCARD/ :
    {
        *(*);
    }
}