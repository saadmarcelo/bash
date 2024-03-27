#!/bin/bash
#

clear
read -p "Informe o nome do arquivo a ser criado: " ARQUIVO
read -p "Informe um conjuto de caracteres que será usado para preencher o arquivo: " CARACTER
read -p "Informe o tamanho final do arquivo (em bytes): " TAMANHO

if [ -f $ARQUIVO ]
then
  rm -rf $ARQUIVO
fi

touch $ARQUIVO
PORC_EXIBIDA=0

while [ $(stat -f %z $ARQUIVO) -le $TAMANHO ]
do
  echo $CARACTER >> $ARQUIVO
  SIZEATUAL=$(stat -f %z $ARQUIVO)
  PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $TAMANHO)

  if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
  then
    echo "Concluído: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL"
    PORC_EXIBIDA=$PORC_ATUAL
  fi
done
