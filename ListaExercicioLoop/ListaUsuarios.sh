#!/bin/bash

##################################
#
# Author: Marcelo Saad
# Desc: LIsta os usuários humanos seguidos de seu UID, Diretorio Home e Nome/descricao
#
# ################################

clear

#UIDs utilizados para usuários comuns
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)

#Cabeçalho saida padrao
echo -e 'USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO'

OLDIFS=$IFS
IFS=$'\n'


for i in $(cat /etc/passwd)
do
	USERID=$(echo $i | cut -d":" -f3)
	if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
	then
		USER=$(echo $i |cut -d":" -f1)
		USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d":" -f6)
		echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
	fi
done
IFS=$OLDIFS
