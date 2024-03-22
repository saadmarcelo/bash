#!/bin/bash

if [ -d $HOME/Backup ]
then 
  echo "Diretorio Backup existe"
else
  mkdir $HOME/backup
  echo "Criando diretorio Backup"
fi

NAME=$(date +'%Y%m%d%H%M')
echo "$NAME"

find $HOME/backup/ -type f -ctime +7 
  if [ $? -eq 0 ]
  then
    echo ""
