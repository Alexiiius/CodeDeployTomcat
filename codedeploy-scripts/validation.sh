#!/bin/bash

# Obtener el endpoint de SSM
ENDPOINT=$(cat /tmp/endpoint.txt)

# Esperar 30 segundos
sleep 30

# Probar el endpoint
if wget --spider -q "$ENDPOINT"; then
    echo "Endpoint is working"
    exit 0
else
    echo "Endpoint is not working"
    exit 1
fi