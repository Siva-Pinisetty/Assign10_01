#!/bin/bash
echo "Welocome to Arithmetic Computation & Sorting Problem"

read -p "Enter the 1st value: " a
read -p "Enter the 2nd value: " b
read -p "Enter the 3rd value: " c

echo -e "User inputs are\na=$a\nb=$b\nc=$c\ncomputing a+b/c"

Result=$( perl -e "{ print ($a+$b/$c)}")
echo "Result=$Result"
