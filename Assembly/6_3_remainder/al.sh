#!/bin/bash
mkdir -p compile

if [ "$#" != "2" ]
then
    echo provide filename to assemble and port
    exit 1
fi

if arm-none-eabi-as -o compile/"$1".o -g "$1".s
then
    if arm-none-eabi-ld -o compile/"$1" compile/"$1".o
    then
        if qemu-arm -singlestep -g "$2" compile/"$1" &
        then
            if scl enable devtoolset-11 'gdb'
            then
                echo success   
            fi
        fi
    fi
else
    echo failure
    exit 1
fi

