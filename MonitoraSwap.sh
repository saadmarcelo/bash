#!/bin/bash
#

EMAIL=marcelosaad
LIMITE_LOG=50
LIMITE_EMAIL=80
ARQ_TEMP=/tmp/monitora-swap.tmp

USO=$(free -m | grep Swap | tr -s " " | cut -d " " -f3)
TOTAL=$(free -m |grep Swap | tr -s " " | cut -d " " -f2)
PERC=70
if [ $PERC -GE $LIMITE_LOG ]
then
  logger -p local7.warn -t [MonitoraSwap] "Uso de Swap = $PERC%"
  if [ $PERC -ge $LIMITE_EMAIL ]
  then
    echo -e "Atençao. O uso de Swap esta acima do limite.\n ">> $ARQ_TEMP
    echo "Limite = $LIMITE_EMAIL%" >> $ARQ_TEMP
    echo -e "Valor Atual = $PERC%\n" >> $ARQ_TEMP
    free -m >> $ARQ_TEMP
    mail -s "[ basename $0 ] Uso de Swap aceima de $LIMITE_EMAIL%" $EMAIL < $ARQ_TEMP
  fi

fi
rm -f $ARQ_TEMP
