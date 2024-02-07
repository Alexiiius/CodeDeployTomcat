#!/bin/bash

# Obtener el endpoint de SSM
ENDPOINT=$(cat /tmp/endpoint.txt)

# Probar el endpoint
if wget --spider -q "$ENDPOINT"; then
    echo "Endpoint is working"
    exit 0
else
    echo "Endpoint is not working"
    exit 1
fi