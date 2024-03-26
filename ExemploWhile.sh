#!/bin/bash

clear
read -p "Informe o limite de processos: " MAXIMO

while [ $(ps aux |wc -l) -le $MAXIMO ]
do 
    echo "Tudo OK"
    echo "Processos atuais: $(ps aux|wc -l)"
    sleep 3
    echo
done

echo "Limite de processos excedido"
