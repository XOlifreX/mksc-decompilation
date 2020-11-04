arm-none-eabi-as -mcpu=arm7tdmi asm/mka.s -Iasm
arm-none-eabi-ld -T ld_script.txt -o mka.o a.out
arm-none-eabi-objcopy -O binary mka.o mka.gba
fc /b base.gba mka.gba