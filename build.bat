rd /s /q build
mkdir build
arm-none-eabi-as -ggdb %1 -o build/program.o 
arm-none-eabi-ld build/program.o -T memmap -o build/program.elf
arm-none-eabi-objcopy build/program.elf -O binary build/program.bin 

qemu-system-arm --gdb tcp::1234 -M raspi2 -nographic -kernel ./build/program.bin
