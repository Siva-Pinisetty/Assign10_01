#!/bin/bash
echo "Welocome to Arithmetic Computation & Sorting Problem"
declare -A dict
read -p "Enter the 1st value: " a
read -p "Enter the 2nd value: " b
read -p "Enter the 3rd value: " c
echo -e "User inputs are\na=$a\nb=$b\nc=$c\nComputing Operations:"
dict[a+b*c]=$(($a+$b*$c))
dict[a*b+c]=$(($a*$b+$c))
dict[a+b/c]=$(($a+$b/$c))
dict[a%b+c]=$(($a%$b+$c))
i=0
for key in ${!dict[@]}
do
echo $key=${dict[$key]}
array[i++]=${dict[$key]}
done
echo ${array[@]}
for ((i=1; i<4; i++))
do
  for ((j=0; j<i; j++))
  do
    if [ ${array[$i]} -gt ${array[$j]} ]
    then
	temp=${array[$j]}
	array[$j]=${array[$i]}
	array[$i]=$temp
    fi
  done
done
echo -e "Descending order of values\n${array[@]}"
