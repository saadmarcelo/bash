#!/bin/bash
#
#Faça um bash shell script, enquanto, que faça uma contagem a partir do valor do seu primeiro argumento até o valor do segundo
#
#

cont=$1
final=$2

while [ $cont -lt $final ]
do
  echo $cont
  cont=$(expr "$cont" + 1)  
done
