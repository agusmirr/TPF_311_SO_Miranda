#!/bin/bash

# Sysadmin - America
sudo mkdir -p /Continentes/America/Uruguay/{Montevideo,Colonia,Salto}
sudo mkdir -p /Continentes/America/Peru/{Lima,Cusco}
sudo mkdir -p /Continentes/America/Mexico/CDMX

# Archivos para evitar directorios hoja vacíos
sudo touch /Continentes/America/Uruguay/Montevideo/.gitkeep
sudo touch /Continentes/America/Uruguay/Colonia/.gitkeep
sudo touch /Continentes/America/Uruguay/Salto/.gitkeep
sudo touch /Continentes/America/Peru/Lima/.gitkeep
sudo touch /Continentes/America/Peru/Cusco/.gitkeep
sudo touch /Continentes/America/Mexico/CDMX/.gitkeep
