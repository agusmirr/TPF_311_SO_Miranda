#!/bin/bash

# Sysadmin - estructura individual
mkdir -p ~/sysadmin/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# Archivos .gitkeep para evitar directorios hoja vacíos
touch ~/sysadmin/Servicios/Web/.gitkeep
touch ~/sysadmin/Servicios/Base_de_Datos/.gitkeep
touch ~/sysadmin/Servicios/Cache/.gitkeep
touch ~/sysadmin/Monitoreo/Logs/.gitkeep
touch ~/sysadmin/Monitoreo/Alertas/.gitkeep
touch ~/sysadmin/Monitoreo/Metricas/.gitkeep

# Manager - estructura individual
mkdir -p ~/manager/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# Archivos .gitkeep para evitar directorios hoja vacíos
touch ~/manager/Servicios/Web/.gitkeep
touch ~/manager/Servicios/Base_de_Datos/.gitkeep
touch ~/manager/Servicios/Cache/.gitkeep
touch ~/manager/Monitoreo/Logs/.gitkeep
touch ~/manager/Monitoreo/Alertas/.gitkeep
touch ~/manager/Monitoreo/Metricas/.gitkeep
