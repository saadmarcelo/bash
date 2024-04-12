#!/bin/bash
#
#(a) Faça um bash shell script chamado mywho que aceita um string como parâmetro. O script deverá indicar se existe um utilizador actual do sistema cujo username contêm o string. Se for o caso o script deverá executar o comando finger filtrando o output pelo valor do string.
#

echo "Entre com o Nome: "
read NOME

echo "Procurando Nome $NOME"

who | grep $NOME

if [ $? -eq 0 ]
then
  echo "$NOME foi encontrado"
else
  echo "$NOME NÃO foi encontrado"
fi

