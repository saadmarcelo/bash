#!/bin/bash
#
DATAHOTA=$(date +%H:%M)
ARQALUNOS="/etc/hosts"
ADMIN=marcelosaad

#Funcao de leitura de data e hora
#
echo "$(date): Iniciando o s Script " >> /tmp/msg_temp

clear

echo "=====Meu primeiro scritp=========="
echo
echo "Exibir data e hora atual: $DATAHOTA"
sleep 5

# Area de leitura da lista de alunos
echo "========================="
echo "Listagem de alunos: "
sort $ARQALUNOS

DATAHOTA=$(date +%H)
echo "==========================="
echo "Nova Hora Atual: $DATAHOTA"

echo "$(date): Script Finalizado" >> /tmp/msg_temp

mail -s "Relatorio de Execução do $0 " $ADMIN < /tmp/msg_temp

rm -f /tmp/msg_temp
