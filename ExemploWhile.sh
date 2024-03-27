#!/bin/bash
#

read -p "Informe o Limete de processos: " MAXIMO

while [ $(ps aux|wc -l) -le $MAXIMO ]
do
  echo "Tudo OK"
  echo "Processos Atuais: $(ps aux|wc -l)"
  sleep 3
  echo
done

echo "Limite de processos excedido"
echo "Por favor verifique o sistema"

