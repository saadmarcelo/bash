#!/bin/bash

FOLDER=$HOME/Backup

if [ ! -d $FOLDER ]
then 
  echo "Criando Diretorio $FOLDER"
  mkdir -p $FOLDER
fi

DAYS7=$(find $FOLDER -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]  # Testa se a variavel é nula
then
  echo "Já foi gerado um backup do diretorio $FOLDER nos ultimos 7 dias."
  echo -n "Deseja continuar? (N/s): "
  read -n1 CONT
  echo
  if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
  then
    echo "Backup Abordado!"
    exit 1
  elif [ $CONT = S -o $CONT = s ]
  then
    echo "Será criado mais um backup para a mesma semana"
  else
      echo "Opção Inválida"
      exit 2
  fi
fi

echo "Criando Backup"
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $FOLDER/$ARQ --absolute-names --exclude="$FOLDER" "$HOME"/* > /dev/null

echo
echo "O backup de nome \""$ARQ"\" foi criado em $FOLDER"
echo
echo "Backup Concluido!"

