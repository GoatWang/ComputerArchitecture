#!/bin/bash

if [ "$#" != "2" ]
then
    echo provide filename to assemble and port
    exit 1
fi

if arm-none-eabi-as -o "$1".o -g "$1".s
then
    if arm-none-eabi-ld -o "$1" "$1".o
    then
        if qemu-arm -singlestep -g "$2" "$1" &
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

