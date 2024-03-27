#!/bin/bash
#

-f () {
  echo "-f"

}

-i () {
  echo "-i"
}

-b () {
  echo "-b"
}

-e () {
  echo "-e"
}

--help () {
  echo "-help"
}

if [ ! $1 ] || [ ! $2 ]
then

  echo "Erro !!! parametros nao passados"
  echo "./FuncoesDiversas.sh <PARAMETRO> <DATA>"
  exit 1
fi

case $1 in
  -f)
    -f
    ;;
  -i)
    -i
    ;;
  -b)
    -b
    ;;
  -e)
    -e
    ;;
  --help)
    --help
    ;;
esac


