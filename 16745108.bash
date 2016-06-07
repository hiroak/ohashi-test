#!/bin/bash

a="$2"
b="$1"
c=1

if [ "$1" -eq 0 ]; then
set '$1'=null
fi
if [ "$2" -eq 0 ]; then
set '$2'=null
fi

[ "$2" -gt "$1" ];

if [ "$?" -eq 2 ]; then
        echo 'natural number shall be input for variable!'
        exit 1
fi

if [ "$?" -eq 0 ]; then
        while [ "$b" -gt 0 ]; do
        ((c=a%b))
        a="$b"
        b="$c"
        done
        echo "$a"
fi

if [ "$?" -eq 1 ]; then
        while [ "$a" -gt 0 ]; do
        ((c=b%a))
        b="$a"
        a="$c"
        done
        echo"$b"
fi
