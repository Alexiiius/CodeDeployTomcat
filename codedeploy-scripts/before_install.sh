#!/bin/bash

# Movernos a la carpeta de la app
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
chmod +x gradlew
./gradlew war

#mv build/libs/HOLAMUNDO-0.0.1 tmp/patata/hola2.war
mv build/libs/ build/libs/hola2.war