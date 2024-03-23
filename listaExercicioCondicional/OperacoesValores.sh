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
      ;;
  2)
      echo "subtração"
      ;;
  3)
    echo "Multi"
    ;;
  4)
    echo "Div"
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
echo "Resultado = "
