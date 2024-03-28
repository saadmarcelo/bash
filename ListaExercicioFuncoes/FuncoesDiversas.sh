#!/bin/bash
#
####################### VARIAVEIS###########
DATA=$(echo $2| tr -d "/")
VAL1=$(echo $DATA| cut -c-2)
VAL2=$(echo $DATA| cut -c3-4)
VAL3=$(echo $DATA| cut -c5-8)


RetornaFormato () {
  echo "-f"
  if [ $VAL1 -le 12 -a $VAL1 -eq $VAL2 ] # Dia = mes = formato BR
  then
    return 0
  elif [ $VAL1 -gt 12 -a $VAL2 -le 12 ] # Formato BR
  then
    return 0
  elif [ $VAL1 -le 12 -a $VAL2 -gt 12 ] # Formato US
  then
    return 1
  elif [ $VAL1 -le 12 -a $VAL2 -le 12 ] # Formato Indefinido
  then
    return 2
  else
    return 3
  fi
 }

InverteDiaMes () {
# Funcao que inverte os valores do dia com o mes e retonra o valor
  echo "-i"
  RetornaFormato $1
  local FORMATO=$?
  if [ $FORMATO - ne 3 ]
  then
    echo $VAL2/$VAL1/$VAL3
  else
    echo "Formato de data invalido"
  fi
}

IncluiBarra () {
  echo "-b"
  RetornaFormato $1
  local FORMATO=$?
  if [ $FORMATO -ne 3 ]
  then
    echo $VAL1/$VAL2/$VAL3
  else
    echo "Formato de data invalido"
  fi
}

DataExtenso () {
 # Funcao que recebe uma data em formato br e exibe a data em formato extenso
  echo "-e"
  RetornaFormato $1
  local RETURN_FORM=$?
  case "$RETURN_FORM" in
    0)
      local DIA=$VAL1
      local MES=$VAL2
      ;;
    1)
      local MES=$VAL1
      local DIA=$VAL
      ;;
    2)
      local $FORMATO=0
      until [ "$FORMATO" = 1 -o "$FORMATO" =2  ] 
      do
        echo
        echo "Impossível determinar o padrao de data"
        echo "1 - BR (DD/MM/YYYY)"
        echo "2 - US (MM/DD/YYYY)"
        reap -p "Informe o formato (1 ou 2 )" FORMATO
        case $FORMATO in
          1)
            local DIA=$VAL1
            local MES=$VAL2
            ;;
          2)
            local DIA=$VAL2
            local MES=$VAL1
            ;;
          *)
            echo "Opção invalida"
            ;;
        esac
      done
      echo
      ;;
    3)
      echo "Formato de data Invalido"
  esac
  
  case $MES in
    01)
      local MESEXT=Janeiro
      ;;

    02)
      local MESEXT=Fevereiro
      ;;

    03)
      local MESEXT=Março
      ;;

    04)
      local MESEXT=Abril
      ;;

    05)
      local MESEXT=Maio
      ;;

    06)
      local MESEXT=Junho
      ;;

    07)
      local MESEXT=Julho
      ;;

    08)
      local MESEXT=Agosto
      ;;

    09)
      local MESEXT=Setembro
      ;;

    10)
      local MESEXT=Outubro
      ;;
    11)
      local MESEXT=Novembro
      ;;
    12)
      local MESEXT=Dezembro
      ;;
  esac

  echo "$DIA de $MESEXT de $VAL3"





}

--help () {
  echo "Uso ./FuncoesDiversas.sh OPÇÃO DATA"
  echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
  echo
  echo "Opções: "
  echo
  echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido -i = Inverte formato BR para US e US para BR. Inclui as Barras"
  echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
  echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de Agosto de 1981"
}
if [ $# -eq 0 ]; then
    --help
    exit 1
fi

case $1 in
  "-f")
    RetornaFormato $2
    echo $?
    ;;
  "-i")
    InverteDiaMes $2
    ;;
  "-b")
    IncluiBarra $2
    ;;
  "-e")
    DataExtenso $2
    ;;
  "--help")
    --help
    ;;
  *)
    echo "Formato indevido"
    ;;
esac


