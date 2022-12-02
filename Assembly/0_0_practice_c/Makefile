main: main.c
	arm-none-eabi-gcc -S -o main.s main.c
	
clean: 
	rm compile/*

# runtest: tst
# 	qemu-arm -singlestep -g 1234 ./compile/tst &

# ps -e | grep qemu
# arm-none-eabi-gdb
# (gdb) file compile/tst # tell GBD which file we are going to use
# (gdb) target remote localhost:1234 # tell GDB where the program is running

# arm-none-eabi-objdump
