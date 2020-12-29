arm-none-eabi-as -mcpu=arm7tdmi asm/mka.s -Iasm -o mka.o
arm-none-eabi-ld -T ld_script.txt -o mka.elf mka.o
arm-none-eabi-objcopy -O binary mka.elf mka.gba
fc /b base.gba mka.gba