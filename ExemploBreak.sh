#!/bin/bash

read -p "Qual o nome do computador: " NOME
for i in  $(cat /etc/hosts)
do
  if [ $i = $NOME ]
  then
      echo "$i é o meu ip"
      break
  fi
  echo "Computador: $i"
done

