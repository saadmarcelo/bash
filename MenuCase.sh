#!/bin/bash
#

# Exibição menu
clear
echo "Escolha uma Opção do Menu: "
echo
echo "1 - Adicionar"
echo "2 - Remover"
echo "3 - Alterar"
echo "q - Sair"
echo 
read -p "Opção: " OPCAO
echo

# Rotinas das Opções

case "$OPCAO" in
  1)
      echo "Opção 1 escolhida"
      echo "Inicar operação de inclusão"
      sleep 3
      ;;
  2)
      echo "Opção 2 escolhida"
      echo "Inicar operação de remoção"
      sleep 3
      ;;
  3)
      echo "Opção 4 escolhida"
      echo "Inicar operação de Alteração"
      sleep 3
      ;;
  q)
      echo "Opção 4 escolhida"
      echo "Saindo ..."
      sleep 3
      exit 0
      ;;
  *)
    echo "Opção invalida"
    exit 2
    ;;
esac
