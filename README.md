# arm-vsc-boilerplate

arm-none-eabi-as -ggdb empty.s -o empty.o 

arm-none-eabi-ld empty.o -T memmap -o empty.elf

#arm-none-eabi-objdump -D empty.elf > empty.list

arm-none-eabi-objcopy empty.elf -O binary empty.bin 

#qemu-system-arm -machine raspi2 --gdb tcp::1234 -d unimp,guest_errors --semihosting-config enable=on,target=native -drive file=empty,format=raw

qemu-system-arm -singlestep --gdb tcp::1234 -M versatilepb -m 8M -nographic -kernel empty.bin


arm-none-eabi-gdb

file empty

break _start

target remote localhost:1234


info register r0 r1 r2


continue

stepi


---------------------------------------

Resources:

https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads

https://www.qemu.org/download/#windows


http://doppioandante.github.io/2015/07/10/Simple-ARM-programming-on-linux.html

https://stackoverflow.com/questions/15802748/arm-assembly-using-qemu

https://medium.com/@tp4460/c-code-arm-assembly-emulating-execution-using-qemu-f2d63a3f40ca

https://stackoverflow.com/questions/20590155/how-to-single-step-arm-assembly-in-gdb-on-qemu



http://www.bravegnu.org/gnu-eprog/arm-lab.html

http://umanovskis.se/files/arm-baremetal-ebook.pdf


https://github.com/victor-yacovlev/mipt-diht-caos/tree/master/practice/arm
