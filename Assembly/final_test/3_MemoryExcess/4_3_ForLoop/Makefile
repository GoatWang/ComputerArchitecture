run: 
	mkdir -p compile
	arm-none-eabi-gcc -O1 -g -c c_code.c -o compile/c_code.o
	arm-none-eabi-objdump -S compile/c_code.o > compile/c_code_map.s
	arm-none-eabi-gcc -S -o compile/c_code_ori_O0.s c_code.c
	arm-none-eabi-gcc -S -O1 -o compile/c_code_ori_O1.s c_code.c
	arm-none-eabi-gcc -S -O2 -o compile/c_code_ori_O2.s c_code.c
	arm-none-eabi-gcc -S -O3 -o compile/c_code_ori_O3.s c_code.c

# `-g`option: debug, https://www.rapidtables.com/code/linux/gcc/gcc-g.html
# `-c`option:  Compile and assemble, but do not link.
# arm-none-eabi-gcc -O1 -c c_code.c -o compile/c_code.o

# output .s file directly from .c file

clean: 
	rm compile/*

runtest: tst
	qemu-arm -singlestep -g 1234 ./compile/tst &

# ps -e | grep qemu
# scl enable devtoolset-11 'gdb'

# arm-none-eabi-gdb
# (gdb) file compile/tst # tell GBD which file we are going to use
# (gdb) target remote localhost:1234 # tell GDB where the program is running

# arm-none-eabi-objdump
