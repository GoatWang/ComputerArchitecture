main: main.c
	arm-none-eabi-gcc -O1 -S -o main.s main.c
	
cmp: main.c
	arm-none-eabi-gcc -g -O1 -c main.c
	arm-none-eabi-objdump -S main.o > main.s

clean: 
	rm compile/*

# runtest: tst
# 	qemu-arm -singlestep -g 1234 ./compile/tst &

# ps -e | grep qemu
# arm-none-eabi-gdb
# (gdb) file compile/tst # tell GBD which file we are going to use
# (gdb) target remote localhost:1234 # tell GDB where the program is running

# arm-none-eabi-objdump
