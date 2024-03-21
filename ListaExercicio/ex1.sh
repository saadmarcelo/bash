#!/bin/bash

##########################################################
#
#Crie um Script que após executado solicite dois valores como entrada. Esses
#valores devem ser somados e o resultado exibido para o usuário.

##########################################################
#


echo "Entre com o 1 valor: "
read VALOR1

echo "Entre com o 2 valor: "
read VALOR2

SOMA=$(expr $VALOR1 + $VALOR2)

echo "A soma dos valores é: $SOMA"

