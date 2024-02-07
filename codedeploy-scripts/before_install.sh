#!/bin/bash

# Movernos a la carpeta de la app y compilar el war
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
chmod +x gradlew
./gradlew war

END="hola2"
mv build/libs/holamundo-0.0.1-plain.war build/libs/$END.war

# Guardar el endpoint en SSM para validacion posterior en el script de validacion
ENDPOINT="http://localhost:8080/$END"
aws ssm put-parameter --name "endpoint" --value $ENDPOINT --type "String" --overwrite