#!/bin/bash

###################################################
#
# BuscaAluno.sh  - Procura o nome completo do aluno
#
# Autor: Marcelo Saad
# Data Criação: 21-03-2024
#
# Descrição: Scritp de exemplo do comando read
# 		Apartir de uma entrada do usuário
#
# Exemplo de uso: ./BuscaAluno.sh
#

ARQALUNOS="/etc/hosts"

clear
echo "====== Scritp de busco alunos ========"
echo ""
echo -n  "Por favor, informe o nome do aluno:"
read ALUNO

#read -p "Por favor, informe o nome do aluno: " ALUNO



echo ""
echo "O nome completo do aluno é: $(grep "$ALUNO" $ARQALUNOS)"
echo ""
echo "Fim do Script"
