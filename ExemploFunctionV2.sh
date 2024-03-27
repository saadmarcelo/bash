#!/bin/bash
#
ler () {
  read -p "Informe o Nome: " NOME
  read -p "Informe o Sobrenome: " SOBRENOME
  return 10
}

ler 
RETURN_CODE=$?
echo $RETURN_CODE
echo $NOME $SOBRENOME
