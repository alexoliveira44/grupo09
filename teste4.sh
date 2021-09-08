#!/bin/bash
uidUsuario=$( id -u $USER)
nomeUsuario=$(whoami)
totalUsuario=$(df -h /home)
ultimologin=$(last $USER)
echo "O UID de $USER é: $uidUsuario"
echo "O nome de usuário é: $nomeUsuario"
echo "O total em uso na pasta /home é:"
echo "$totalUsuario"
echo "O último login feito é: $ultimologin"

