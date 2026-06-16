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

# Manager - Europa
sudo mkdir -p /Continentes/Europa/España/{Madrid,Barcelona,Toledo}
sudo mkdir -p /Continentes/Europa/Italia/{Turin,Napoles}
sudo mkdir -p /Continentes/Europa/Francia/Marsella

# Archivos para evitar directorios hoja vacíos
sudo touch /Continentes/Europa/España/Madrid/.gitkeep
sudo touch /Continentes/Europa/España/Barcelona/.gitkeep
sudo touch /Continentes/Europa/España/Toledo/.gitkeep
sudo touch /Continentes/Europa/Italia/Turin/.gitkeep
sudo touch /Continentes/Europa/Italia/Napoles/.gitkeep
sudo touch /Continentes/Europa/Francia/Marsella/.gitkeep
