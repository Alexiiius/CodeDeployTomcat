#!/bin/bash

# Obtener el endpoint de SSM
ENDPOINT=$(cat /tmp/endpoint.txt)

# Probar el endpoint
if curl -s --head  --request GET $ENDPOINT | grep "200 OK" > /dev/null; then
    echo "Endpoint is working"
    exit 0
else
    echo "Endpoint is not working"
    exit 1
fi