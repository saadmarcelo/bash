#!/bin/bash
#
EMAIL=marcelosaad
LIMITE=15
ARQ_TEMP=/tmp/monitora-particao.tmp
LOG=/var/log/scripts/$(basename $0).log

for loop in $(df -h | grep disk | tr -s " "| tr -s ' ' ':') 
do
    USO=$(echo $loop|cut -d":" -f5| tr -d "%")
    if [ $USO -ge $LIMITE ]
    then
      PARTICAO=$(echo $loop|cut -d":" -f6)
      # Gera e envia o email
      echo "Atencao! A Particao $PARTICAO esta com uso acima do limite configurado" >> $ARQ_TEMP
      echo >> $ARQ_TEMP
      echo "Limite = $LIMITE%" >> $ARQ_TEMP
      echo >> $ARQ_TEMP

      mail -s "[$0] - Verifica particao $PARTICAO" $EMAIL < $ARQ_TEMP

      # Gera log
      echo "$(date "+%d/%m%Y %H:%M") - Particao $PARTICAO - Uso $USO " >> $LOG
      rm -rf $ARQ_TEMP

    fi
done

