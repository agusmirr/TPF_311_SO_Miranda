#!/bin/bash

ROL=$1

if [ -z "$ROL" ]; then
    echo "Uso: $0 <rol>"
    echo "Ejemplo: $0 sysadmin"
    exit 1
fi

BASE="/home/vagrant/${ROL}"

PART_SERVICIOS="/dev/sdc1"
PART_MONITOREO="/dev/sdc2"
PART_WEB="/dev/sdc5"
PART_CACHE="/dev/sdc6"
PART_LOGS="/dev/sdc7"

echo "Configurando montaje persistente para el rol: ${ROL}"

echo "Creando puntos de montaje principales..."
mkdir -p ${BASE}/Servicios
mkdir -p ${BASE}/Monitoreo

echo "Montando particiones primarias..."
sudo mount ${PART_SERVICIOS} ${BASE}/Servicios
sudo mount ${PART_MONITOREO} ${BASE}/Monitoreo

echo "Creando puntos de montaje internos..."
sudo mkdir -p ${BASE}/Servicios/Web
sudo mkdir -p ${BASE}/Servicios/Base_de_Datos
sudo mkdir -p ${BASE}/Servicios/Cache
sudo mkdir -p ${BASE}/Monitoreo/Logs
sudo mkdir -p ${BASE}/Monitoreo/Alertas
sudo mkdir -p ${BASE}/Monitoreo/Metricas

echo "Montando particiones logicas..."
sudo mount ${PART_WEB} ${BASE}/Servicios/Web
sudo mount ${PART_CACHE} ${BASE}/Servicios/Cache
sudo mount ${PART_LOGS} ${BASE}/Monitoreo/Logs

echo "Obteniendo UUID de las particiones..."
UUID_SERVICIOS=$(sudo blkid -s UUID -o value ${PART_SERVICIOS})
UUID_MONITOREO=$(sudo blkid -s UUID -o value ${PART_MONITOREO})
UUID_WEB=$(sudo blkid -s UUID -o value ${PART_WEB})
UUID_CACHE=$(sudo blkid -s UUID -o value ${PART_CACHE})
UUID_LOGS=$(sudo blkid -s UUID -o value ${PART_LOGS})

echo "Creando backup de /etc/fstab..."
sudo cp /etc/fstab /etc/fstab.bkp_punto_b_${ROL}

echo "Eliminando configuraciones anteriores del Punto B para este rol, si existen..."
sudo sed -i "/# INICIO_PUNTO_B_${ROL}/,/# FIN_PUNTO_B_${ROL}/d" /etc/fstab

echo "Agregando montajes persistentes en /etc/fstab..."
sudo tee -a /etc/fstab > /dev/null << EOF

# INICIO_PUNTO_B_${ROL}
UUID=${UUID_SERVICIOS} ${BASE}/Servicios ext4 defaults 0 2
UUID=${UUID_MONITOREO} ${BASE}/Monitoreo ext4 defaults 0 2
UUID=${UUID_WEB} ${BASE}/Servicios/Web ext4 defaults 0 2
UUID=${UUID_CACHE} ${BASE}/Servicios/Cache ext4 defaults 0 2
UUID=${UUID_LOGS} ${BASE}/Monitoreo/Logs ext4 defaults 0 2
# FIN_PUNTO_B_${ROL}
EOF

echo "Validando /etc/fstab con mount -a..."
sudo mount -a

echo "Ajustando permisos..."
sudo chown -R vagrant:vagrant ${BASE}

echo "Montaje persistente finalizado."
df -h
