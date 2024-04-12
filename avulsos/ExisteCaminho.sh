#!/bin/bash
#
#Escreva um pequeno script que irá testar se determinado arquivo existe ou não. O nome do arquivo será passado via linha
#de comando.
#
if [ $# -eq 0 ]
then
  echo "Sintaxe: $0 nome_do_arquivo"
  exit 1
fi
if [ -f $1 ]
then
  echo "$1 Existe e é um arquivo"
else

  echo "$1 não é um arquivo"
fi
