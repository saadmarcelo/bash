#!/bin/bash

HORA=$(date +'%l:%M %p')
HORA1=$(date +%H)

if [ $HORA1 -ge 6 -a $HORA1 -lt 12 ]
then
  echo "Bom dia"
elif [ $HORA1 -ge 12 -a $HORA1 -lt 18 ] 
then
  echo "Boa tarde"
else
  echo "Boa noite"
fi
    echo "A hora atual é: $HORA"
  
