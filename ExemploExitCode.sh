#!/bin/bash

ls /tmp/teste

RETURN_CODE=$?
echo "O codigo de retorno do ls foi $RETURN_CODE"
exit 10

echo "Script Executado"
