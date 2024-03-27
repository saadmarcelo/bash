#!/bin/bash
#
########################################
#
#Author: Marcelo Saad
#Desc: Inpeciona o diretorio /Users/ de todos usuarios em busca de arquivos com as extensoes .mp3, .mp4 e .jpg
#
#
########################################


for i in /Users/*
do
  COUNT_JPG=0
  COUNT_MP4=0
  COUNT_MP3=0
  OLDIFS=$IFS
  IFS=$'\n'
  for FILES in $(find $i -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3')
  do
    case $FILES in
      *.mp4)
        COUNT_MP4=$(expr $COUNT_MP4 + 1)
        ;;
      *.mp3)
        COUNT_MP3=$(expr $COUNT_MP3 + 1)
        ;;
      *.jpg)
        COUNT_JPG=$(expr $COUNT_JPG + 1)
        ;;
      esac # fim do case
  done  # fim do find 

  echo "Usuario: $(basename $i)"
  echo "Arquivos JPG: $COUNT_MP4"
  echo "Arquivos MP3: $COUNT_MP3"
  echo "Arquivos MP4: $COUNT_MP4"

done #Fim do For no /home

IFS=$OLDIFS
