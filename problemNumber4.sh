#!/bin/bash -x

a=-6
b=-4
c=10

add=$(($a+$b+$c))

ZERO=${add[@]}

echo ${ZERO[@]}
