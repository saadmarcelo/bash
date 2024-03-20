#!/bin/bash

####################################################
#
# PrimeiroScript.sh - Script de Exemplo do Curso
#
# Autor: Marcelo Saad
# Data: 20/03/2024
#
# Descrição: Script de exemplo que le data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./PrimeiroScript.sh
#
# Alterações
# 	Dia x - Inclusao de funcao de ordenação
#
# limpa a tela

# Função de leitura de data e hora
clear
echo "======================== Meu Primeiro Script=================="
echo ""
echo -n "Exibir data e hora atual:"
date

# Area de leitura do arquivo hosts
echo "=============================================================="
echo "Lista: "
sort /etc/hosts
