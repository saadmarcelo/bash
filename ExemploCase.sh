#!/bin/bash

 case "$1" in
   [0-9])
      echo "O parametro é um numero"
      ;;
    [A-Z])
      echo "O parametro é uma letra maiuscula"
      ;;
    [a-z])
      echo "o parametro é uma letra minuscula"
      ;;
    *)
      echo "o parametro é um caracter especial"
      ;;
esac
