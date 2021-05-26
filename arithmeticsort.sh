#!/bin/bash
echo "Welocome to Arithmetic Computation & Sorting Problem"
declare -A dict
read -p "Enter the 1st value: " a
read -p "Enter the 2nd value: " b
read -p "Enter the 3rd value: " c
echo -e "User inputs are\na=$a\nb=$b\nc=$c\nComputing Operations:"
dict[a+b*c]=$(($a+$b*$c))
dict[a*b+c]=$(($a*$b+$c))
dict[a+b/c]=$(perl -e "{ print ($a+$b/$c) }")
dict[a%b+c]=$(($a%$b+$c))
for key in ${!dict[@]}
do
echo $key=${dict[$key]}
done
