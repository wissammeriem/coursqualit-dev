#!/bin/bash
echo "Calculatrice simple"
read -p "Premier nombre: " num1
read -p "Deuxième nombre: " num2
echo "$num1 + $num2 = $(($num1 + $num2))"
echo "$num1 - $num2 = $(($num1 - $num2))"
echo "$num1 * $num2 = $(($num1 * $num2))"
