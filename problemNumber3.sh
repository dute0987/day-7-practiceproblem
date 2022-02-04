#!/bin/bash -x

read -p "Enter the number to find factors:" number

declare a primeFactors
counter=0
primeFactorsOf=$number

for (( i=2 ; i<= $number ; i++ ))
do
        while (($number%$i == 0 ))
        do
                primeFactors[((counter++))]=$i
                number=$((number/i))
        done
done

echo "Prime factors of $primeFactorsOf is ${primeFactors[@]}"
