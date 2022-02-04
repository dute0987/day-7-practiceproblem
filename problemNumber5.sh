#!/bin/bash -x

#to print repeated value from 0-100

for (( i=1; i<=9; i++ ))
{
	num=$((11*$i))
}
echo $num

value=${num[@]}
