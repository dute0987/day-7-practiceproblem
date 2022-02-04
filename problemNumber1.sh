#!/bin/bash -x

c=0

z[((c++))]=$(($RANDOM%100+199))
z[((c++))]=$(($RANDOM%200+299))
z[((c++))]=$(($RANDOM%300+39))
z[((c++))]=$(($RANDOM%400+49))
z[((c++))]=$(($RANDOM%500+59))
z[((c++))]=$(($RANDOM%600+69))
z[((c++))]=$(($RANDOM%700+79))
z[((c++))]=$(($RANDOM%800+89))
z[((c++))]=$(($RANDOM%900+90))
z[((c++))]=$(($RANDOM%1000))

echo ${z[@]}

#store in array

store=${z[@]}
echo ${store[@]}

max=0
min=999

for value in $store
do
	if [ $value -gt $max ]
	then
	   max=$value
	fi

	if [ $value -lt $min ]
	then
	   min=$value
	fi
done

echo  ${z[@]}
echo  ${z[@]}
