#!/bin/bash
#
#
#Faça um script que imprima quantos processo estão atualmente em execução na sua máquina. Use os comandos wc e ps para isso
#

total=$(($( ps aux | wc -l) -1))
echo "Total de processos em execução $total"
