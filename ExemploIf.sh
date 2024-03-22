#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)
#if grep "$1" /etc/passwd > /dev/null
if test $# -gt 0
then

  if [ -n "$USUARIO" ]
  then
    echo "O usuário existe"
    if [ "$1" = ubuntu  ]
    then
      echo "ok"
    fi
  else
    echo "o Usuário não existe"
  fi
else
  echo "Informe o nome do usuário como parametro!"
fi
