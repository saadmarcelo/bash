#!/bin/bash

#######################################
#
# Crie um script que gere um relatório de algumas informações da máquina atual:
# Nome da Máquina
# Data e Hora Atual
# Desde quando a máquina está ativa
# Versão do Kernel
# Quantidade de CPUs/Cores
# Modelo da CPU
# Total de Memória RAM Disponível
# Partições
# Abaixo um exemplo de saída, mas faça como achar melhor, desde que cumpra os requisitos acima.
#########################################################

CPUINFO=$(cat /proc/cpuinfo |grep "model name"|wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meninfo |grep MenTotal|tr -d ' '|cut -d: -f2|tr -d bk) / 1024)



echo "Nome da maquina: $HOSTNAME"
echo "Hora atual: $(date)"
echo "A maquina esta ligada desde $(uptime -s)"
echo "versão do Kernel: $(uname -r)"
echo "Quantidade de CPUs/Cores: $CPUINFO"
echo








