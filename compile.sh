arm-none-eabi-as z5.s -o z5.o
arm-none-eabi-gcc -specs=rdimon.specs z5.o
qemu-arm ./a.out
