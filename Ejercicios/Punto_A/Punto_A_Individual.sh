#!/bin/bash

ROL=$1

if [ -z "$ROL" ]; then
    echo "Uso: $0 <sysadmin|manager|dev>"
    exit 1
fi

mkdir -p Individual/"$ROL"/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

touch Individual/"$ROL"/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}/.gitkeep

echo "Estructura individual creada para el rol: $ROL"
tree -a Individual/"$ROL"
