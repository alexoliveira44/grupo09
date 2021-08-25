#!/bin/bash
clear
echo "soma entre dois numeros:"
echo ""
echo ""

$num1
$num2
read -p "Digite o primeiro numero: " num1
read -p "Digite o segundo numero: " num2

echo "$num1 + $num2 é: `echo "$num1 + $num2" | bc -l` "

