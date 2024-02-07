#!/bin/bash

# Movernos a la carpeta de la app y compilar el war
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
chmod +x gradlew
./gradlew war

END="hola2"
mv build/libs/holamundo-0.0.1-plain.war build/libs/$END.war

# Guardar el endpoint en un archivo temporal para validación posterior
IP=$(curl -s https://checkip.amazonaws.com)
echo "http://$IP:8080/$END" > /tmp/endpoint.txt
