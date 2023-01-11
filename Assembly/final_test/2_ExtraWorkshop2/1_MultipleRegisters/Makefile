tst: tst.s
	mkdir -p compile
	arm-none-eabi-as -o compile/tst.o -g tst.s
	arm-none-eabi-ld -o compile/tst compile/tst.o

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
