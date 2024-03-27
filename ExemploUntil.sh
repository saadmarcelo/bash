#!/bin/bash

clear
until ps aux |grep firefox |grep -v grep > /dev/null
do
  echo "Incie o Firefox"
  sleep 3
  echo

done

echo "Firefox Iniciado."
echo PID: $(pgrep firefox)
