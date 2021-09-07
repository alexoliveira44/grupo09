#!/bin/bash
clear

#echo "$num1 + $num2 é: `echo "$num1 + $num2" | bc -l` "
nomeMaquina=`hostname`
data=`date`
ligado=`uptime | cut -d, -f1`
vkernel=`uname -man | cut -d# -f1`

qtdecpu=`lscpu | grep -m 1 'CPU(s)' | cut -d: -f2`
ncore=`lscpu | grep -m 1 'Core(s) per socket' | cut -d: -f2`
modelName=`lscpu | grep -m 1 'Model name' | cut -d: -f2`
memoriaLivre=`free -h | grep -m 1 "Mem:" | cut -d'i' -f3`

echo "Nome da maquina: $nomeMaquina"
echo "Data e hora atual: $data"
echo "Maquina ligada desde: $ligado"
echo "Versao do kernel: $vkernel"
echo "qtde de cpu: $qtdecpu"
echo "qtde de core: $ncore"
echo "Modelo CPU: $modelName"
echo "Qtde Memoria Disponivel: $memoriaLivre"
