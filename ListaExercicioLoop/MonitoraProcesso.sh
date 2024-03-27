#!/bin/bash
#
#####################################################
#
#Author Marcelo Saad
#
#Desc: scritp que recebe um processo como argumento e constantemente fica verficiando se o processo esta em execucao
#
######################################################

if [ $# -eq 0 ]
then
  echo "Favor informar um processo como argumento"
  echo "./MonitoraProcesso.sh <processo>"
  exit 1
fi


PROCESSO=$1;
while true
do

  if ps axu |grep "$PROCESSO" |egrep -v grep| grep -v $0 > /dev/null
  then
    sleep 5
  else
    echo "ATENÇÃO!!!!!!! O processo $PROCESSO NÃO está em execução!"
    sleep 3
  fi

done
