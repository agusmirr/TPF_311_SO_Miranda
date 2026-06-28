#!/bin/bash
# Punto A - Parte Grupal: estructura de Continentes
# Cada rol crea su continente con un unico comando de llaves

# Rol: sysadmin - Continente: America
mkdir -p /Grupal/Continentes/America/{Mexico/{Guadalajara,Monterrey},Colombia/Medellin,Peru/{Cusco,Arequipa,Trujillo}}
touch /Grupal/Continentes/America/{Mexico/{Guadalajara,Monterrey},Colombia/Medellin,Peru/{Cusco,Arequipa,Trujillo}}/.gitkeep

# Rol: manager - Continente: Europa
mkdir -p /Grupal/Continentes/Europa/{Francia/{Lyon,Marsella},Croacia/Dubrovnik,España/{Sevilla,Valencia,Bilbao}}
touch /Grupal/Continentes/Europa/{Francia/{Lyon,Marsella},Croacia/Dubrovnik,España/{Sevilla,Valencia,Bilbao}}/.gitkeep

# Rol: dev - Continente: Asia
mkdir -p /Grupal/Continentes/Asia/{Japon/{Osaka,Kioto},India/Mumbai,Tailandia/{Chiang_Mai,Phuket,Pattaya}}
touch /Grupal/Continentes/Asia/{Japon/{Osaka,Kioto},India/Mumbai,Tailandia/{Chiang_Mai,Phuket,Pattaya}}/.gitkeep
