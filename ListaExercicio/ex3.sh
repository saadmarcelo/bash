#!/bin/bash

#####################################################################
#
#
# Autor: Marcelo Saad
# Descrição: Scritp recebe nome de usuario e lista informacoes sobre
#
# execução: ./ex3.sh marcelosaad
#
####################################################################

ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

USUARIO=$1
ID=$(egrep $1  /etc/passwd| cut -d: -f3)
NOMECOMPLETO=$(egrep $1 /etc/passwd| cut -d: -f5)
USOHOME=$(du -sh /home/$1|cut -f1)


clear
echo "======================================================"
echo "Relatório do Usuário: $USUARIO"
echo ""
echo "UID: $ID"
echo "Nome ou Descrição: $NOMECOMPLETO"
echo ""
echo "Total Usado no /home/$1: $USOHOME"
echo
echo "Ultimo Login:"
lastlog -u $1
echo "====================================================="
exit 0

