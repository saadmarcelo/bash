#!/bin/bash

clear
echo
echo -n "Informe o Valor 1: "
read VAL1
echo -n "Informe o Valor 2: "
read VAL2

if [ ! $VAL1 ] || [ ! $VAL2 ]
then
  echo "Nenhum dos valores pode ser nulo"
  exit 1
fi
echo
echo "Escolha uma Operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"

echo
read -p "Opção: " OPCAO

case "$OPCAO" in
  1)
    echo "soma"
    OP="+"
      ;;
  2)
    echo "subtração"
    OP="-"
      ;;
  3)
    if [ $VAL1 -eq 0 -o $VAL2 -eq 0 ]
    then
      echo "Um valor 0 não pode ser utilizado em uma multiplicação"
      exit 1
    fi
    echo "Multi"
    OP="*"
    ;;
  4)
    if [ $VAL1 -eq 0 -o $VAL2 -eq 0 ]
    then
      echo "Um valor 0 não pode ser utilizado em uma divisão"
      exit 1
    fi
    if [ $(expr $VAL1 % $VAL2) -ne 0 ]
    then
      echo "Divisão com Resto = $(expr $VAL1 % VAL2)"
    else
      echo "Divisão exata"
    fi 
    echo

    echo "Div"
    OP="/"
    ;;
  Q | q)
    echo sair
    exit 1
    ;;
  *)
    echo "Opção invalida"
    exit 2
    ;;
esac
echo "Resultado $VAL1 $OP $VAL2 = $(expr $VAL1 "$OP" $VAL2)"
