# Assembly Code
## Installation
1. ARM emulator
```
sudo apt update && sudo apt upgrade
sudo apt install qemu
```

2. cross-compilation environment
```
# sudo apt-get install gdb-arm-none-eabi # Debian
sudo apt install binutils-arm-none-eabi gcc-arm-none-eabi
sudo apt install gdb-multiarch
sudo apt install qemu-user
```

3. Debug Tool: gef
```
sudo apt install curl
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
bash -c "$(curl -fsSL http://gef.blah.cat/sh)"
```

## Execution
1. Compile
```
arm-none-eabi-as -o tst.o -g tst.s
arm-none-eabi-ld -o tst tst.o
```

2. run script on server
```
qemu-arm -singlestep -g 1234 tst &
```

3. debug tool: gdb
```
gdb # or arm-none-eabi-gdb
```

4. debug tool: gef
```
# scl enable devtoolset-11 'gdb' # Debian 
gdb-multiarch -q # Ubuntu
```

5. debug commands
    1. `until <linenum>`: runs the code until the PC reaches the address in memory corresponding to the line number specified by `<linenum>`.
    2. `break <linenum>`: sets a breakpoint at the line number specified by `<linenum>`. This breakpoint will make the execution stop when it reaches this line.
    3. `break <label>`: sets a breakpoint at the label. For example, you might want to stop the code when it reaches _end in the code above.
    4. `step <N>`:  steps N instructions forward.

6. internals of the hardware commands
    1. `print <registers>`: will print the content of the register.
    2. `info reg`: will print the content of all integer registers.
    3. `list`: will show 10 lines of code close to what we are currently executing. 
    4. `list <linenum>`: will list the code around the line number.
    5. `x <address>`: will display the content of memory address.


