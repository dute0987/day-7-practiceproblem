#!/bin/bash -x

c=0

z[((c++))]=$((RANDOM%100+10))
z[((c++))]=$((RANDOM%200+10))
z[((c++))]=$((RANDOM%300+10))
z[((c++))]=$((RANDOM%400+10))
z[((c++))]=$((RANDOM%500+10))
z[((c++))]=$((RANDOM%600+10))
z[((c++))]=$((RANDOM%700+10))
z[((c++))]=$((RANDOM%800+10))
z[((c++))]=$((RANDOM%900+10))
z[((c++))]=$((RANDOM%950+10))

echo ${z[@]}

#store the value in x

x=(${z[@]})

echo ${x[@]}

#Sorting of an array

for((i=0; i<10; i++))
do

for((j=0; j<10-i-1; j++))
do

if [ ${x[j]} -gt ${x[$((j+1))]} ]
then
    value=${x[j]}

    x[$j]=${x[$((j+1))]}
    x[$((j+1))]=$value

fi

done

done

echo "Array in sort order" ${x[@]}
