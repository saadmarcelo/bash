#!/bin/bash

clear
read -p "Informe o inicio da sequencia: " INICIO
read -p "Informe o final da sequencia: " FINAL

for i in $(seq "$INICIO" "$FINAL")
do
  echo "Exibindo o valor $i"
  sleep 1
done

